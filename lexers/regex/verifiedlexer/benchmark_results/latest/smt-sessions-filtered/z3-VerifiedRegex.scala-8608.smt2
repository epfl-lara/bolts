; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!458760 () Bool)

(assert start!458760)

(declare-fun res!1923064 () Bool)

(declare-fun e!2867839 () Bool)

(assert (=> start!458760 (=> (not res!1923064) (not e!2867839))))

(declare-datatypes ((K!12445 0))(
  ( (K!12446 (val!18227 Int)) )
))
(declare-datatypes ((V!12691 0))(
  ( (V!12692 (val!18228 Int)) )
))
(declare-datatypes ((tuple2!51722 0))(
  ( (tuple2!51723 (_1!29155 K!12445) (_2!29155 V!12691)) )
))
(declare-datatypes ((List!51202 0))(
  ( (Nil!51078) (Cons!51078 (h!57042 tuple2!51722) (t!358196 List!51202)) )
))
(declare-datatypes ((tuple2!51724 0))(
  ( (tuple2!51725 (_1!29156 (_ BitVec 64)) (_2!29156 List!51202)) )
))
(declare-datatypes ((List!51203 0))(
  ( (Nil!51079) (Cons!51079 (h!57043 tuple2!51724) (t!358197 List!51203)) )
))
(declare-datatypes ((ListLongMap!3283 0))(
  ( (ListLongMap!3284 (toList!4651 List!51203)) )
))
(declare-fun lm!1477 () ListLongMap!3283)

(declare-fun lambda!186082 () Int)

(declare-fun forall!10598 (List!51203 Int) Bool)

(assert (=> start!458760 (= res!1923064 (forall!10598 (toList!4651 lm!1477) lambda!186082))))

(assert (=> start!458760 e!2867839))

(assert (=> start!458760 true))

(declare-fun e!2867836 () Bool)

(declare-fun inv!66629 (ListLongMap!3283) Bool)

(assert (=> start!458760 (and (inv!66629 lm!1477) e!2867836)))

(declare-fun tp_is_empty!28565 () Bool)

(assert (=> start!458760 tp_is_empty!28565))

(declare-fun e!2867841 () Bool)

(assert (=> start!458760 e!2867841))

(declare-fun b!4597749 () Bool)

(declare-fun e!2867840 () Bool)

(assert (=> b!4597749 (= e!2867840 false)))

(declare-fun lt!1757703 () ListLongMap!3283)

(declare-fun lt!1757708 () (_ BitVec 64))

(declare-fun contains!14025 (ListLongMap!3283 (_ BitVec 64)) Bool)

(assert (=> b!4597749 (contains!14025 lt!1757703 lt!1757708)))

(declare-datatypes ((Hashable!5717 0))(
  ( (HashableExt!5716 (__x!31420 Int)) )
))
(declare-fun hashF!1107 () Hashable!5717)

(declare-fun key!3287 () K!12445)

(declare-datatypes ((Unit!108077 0))(
  ( (Unit!108078) )
))
(declare-fun lt!1757707 () Unit!108077)

(declare-fun lemmaInGenMapThenLongMapContainsHash!392 (ListLongMap!3283 K!12445 Hashable!5717) Unit!108077)

(assert (=> b!4597749 (= lt!1757707 (lemmaInGenMapThenLongMapContainsHash!392 lt!1757703 key!3287 hashF!1107))))

(declare-fun b!4597750 () Bool)

(declare-fun e!2867832 () Unit!108077)

(declare-fun Unit!108079 () Unit!108077)

(assert (=> b!4597750 (= e!2867832 Unit!108079)))

(declare-fun b!4597751 () Bool)

(declare-fun res!1923074 () Bool)

(declare-fun e!2867837 () Bool)

(assert (=> b!4597751 (=> res!1923074 e!2867837)))

(declare-fun newBucket!178 () List!51202)

(declare-fun noDuplicateKeys!1318 (List!51202) Bool)

(assert (=> b!4597751 (= res!1923074 (not (noDuplicateKeys!1318 newBucket!178)))))

(declare-fun b!4597752 () Bool)

(declare-fun res!1923067 () Bool)

(assert (=> b!4597752 (=> res!1923067 e!2867837)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4597752 (= res!1923067 (or ((_ is Nil!51079) (toList!4651 lm!1477)) (not (= (_1!29156 (h!57043 (toList!4651 lm!1477))) hash!344))))))

(declare-fun b!4597753 () Bool)

(declare-fun res!1923066 () Bool)

(assert (=> b!4597753 (=> (not res!1923066) (not e!2867839))))

(declare-fun allKeysSameHashInMap!1429 (ListLongMap!3283 Hashable!5717) Bool)

(assert (=> b!4597753 (= res!1923066 (allKeysSameHashInMap!1429 lm!1477 hashF!1107))))

(declare-fun b!4597754 () Bool)

(declare-fun e!2867838 () Bool)

(assert (=> b!4597754 (= e!2867837 e!2867838)))

(declare-fun res!1923068 () Bool)

(assert (=> b!4597754 (=> res!1923068 e!2867838)))

(declare-fun lt!1757706 () Bool)

(assert (=> b!4597754 (= res!1923068 lt!1757706)))

(declare-fun lt!1757695 () Unit!108077)

(assert (=> b!4597754 (= lt!1757695 e!2867832)))

(declare-fun c!787444 () Bool)

(assert (=> b!4597754 (= c!787444 lt!1757706)))

(declare-fun containsKey!2154 (List!51202 K!12445) Bool)

(assert (=> b!4597754 (= lt!1757706 (not (containsKey!2154 (_2!29156 (h!57043 (toList!4651 lm!1477))) key!3287)))))

(declare-fun b!4597755 () Bool)

(declare-fun e!2867842 () Bool)

(declare-fun e!2867834 () Bool)

(assert (=> b!4597755 (= e!2867842 e!2867834)))

(declare-fun res!1923073 () Bool)

(assert (=> b!4597755 (=> res!1923073 e!2867834)))

(declare-fun lt!1757696 () tuple2!51724)

(declare-fun lt!1757698 () ListLongMap!3283)

(declare-fun +!1744 (ListLongMap!3283 tuple2!51724) ListLongMap!3283)

(assert (=> b!4597755 (= res!1923073 (not (= lt!1757698 (+!1744 lt!1757703 lt!1757696))))))

(declare-fun tail!7944 (ListLongMap!3283) ListLongMap!3283)

(assert (=> b!4597755 (= lt!1757703 (tail!7944 lm!1477))))

(declare-fun b!4597756 () Bool)

(declare-fun res!1923061 () Bool)

(declare-fun e!2867833 () Bool)

(assert (=> b!4597756 (=> (not res!1923061) (not e!2867833))))

(declare-fun allKeysSameHash!1174 (List!51202 (_ BitVec 64) Hashable!5717) Bool)

(assert (=> b!4597756 (= res!1923061 (allKeysSameHash!1174 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4597757 () Bool)

(declare-fun e!2867835 () Bool)

(assert (=> b!4597757 (= e!2867838 e!2867835)))

(declare-fun res!1923071 () Bool)

(assert (=> b!4597757 (=> res!1923071 e!2867835)))

(declare-fun lt!1757705 () List!51203)

(declare-fun containsKeyBiggerList!274 (List!51203 K!12445) Bool)

(assert (=> b!4597757 (= res!1923071 (not (containsKeyBiggerList!274 lt!1757705 key!3287)))))

(assert (=> b!4597757 (= lt!1757705 (Cons!51079 (h!57043 (toList!4651 lm!1477)) Nil!51079))))

(declare-fun b!4597758 () Bool)

(assert (=> b!4597758 (= e!2867833 (not e!2867837))))

(declare-fun res!1923070 () Bool)

(assert (=> b!4597758 (=> res!1923070 e!2867837)))

(declare-fun lt!1757702 () List!51202)

(declare-fun removePairForKey!943 (List!51202 K!12445) List!51202)

(assert (=> b!4597758 (= res!1923070 (not (= newBucket!178 (removePairForKey!943 lt!1757702 key!3287))))))

(declare-fun lt!1757709 () Unit!108077)

(declare-fun lt!1757699 () tuple2!51724)

(declare-fun forallContained!2851 (List!51203 Int tuple2!51724) Unit!108077)

(assert (=> b!4597758 (= lt!1757709 (forallContained!2851 (toList!4651 lm!1477) lambda!186082 lt!1757699))))

(declare-fun contains!14026 (List!51203 tuple2!51724) Bool)

(assert (=> b!4597758 (contains!14026 (toList!4651 lm!1477) lt!1757699)))

(assert (=> b!4597758 (= lt!1757699 (tuple2!51725 hash!344 lt!1757702))))

(declare-fun lt!1757701 () Unit!108077)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!828 (List!51203 (_ BitVec 64) List!51202) Unit!108077)

(assert (=> b!4597758 (= lt!1757701 (lemmaGetValueByKeyImpliesContainsTuple!828 (toList!4651 lm!1477) hash!344 lt!1757702))))

(declare-fun apply!12055 (ListLongMap!3283 (_ BitVec 64)) List!51202)

(assert (=> b!4597758 (= lt!1757702 (apply!12055 lm!1477 hash!344))))

(assert (=> b!4597758 (contains!14025 lm!1477 lt!1757708)))

(declare-fun lt!1757694 () Unit!108077)

(assert (=> b!4597758 (= lt!1757694 (lemmaInGenMapThenLongMapContainsHash!392 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4597759 () Bool)

(declare-fun Unit!108080 () Unit!108077)

(assert (=> b!4597759 (= e!2867832 Unit!108080)))

(declare-fun lt!1757700 () Unit!108077)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!288 (ListLongMap!3283 K!12445 Hashable!5717) Unit!108077)

(assert (=> b!4597759 (= lt!1757700 (lemmaNotInItsHashBucketThenNotInMap!288 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4597759 false))

(declare-fun b!4597760 () Bool)

(declare-fun tp!1340417 () Bool)

(assert (=> b!4597760 (= e!2867836 tp!1340417)))

(declare-fun b!4597761 () Bool)

(assert (=> b!4597761 (= e!2867839 e!2867833)))

(declare-fun res!1923062 () Bool)

(assert (=> b!4597761 (=> (not res!1923062) (not e!2867833))))

(assert (=> b!4597761 (= res!1923062 (= lt!1757708 hash!344))))

(declare-fun hash!3213 (Hashable!5717 K!12445) (_ BitVec 64))

(assert (=> b!4597761 (= lt!1757708 (hash!3213 hashF!1107 key!3287))))

(declare-fun b!4597762 () Bool)

(declare-fun res!1923072 () Bool)

(assert (=> b!4597762 (=> (not res!1923072) (not e!2867839))))

(declare-datatypes ((ListMap!3913 0))(
  ( (ListMap!3914 (toList!4652 List!51202)) )
))
(declare-fun contains!14027 (ListMap!3913 K!12445) Bool)

(declare-fun extractMap!1378 (List!51203) ListMap!3913)

(assert (=> b!4597762 (= res!1923072 (contains!14027 (extractMap!1378 (toList!4651 lm!1477)) key!3287))))

(declare-fun b!4597763 () Bool)

(assert (=> b!4597763 (= e!2867835 e!2867842)))

(declare-fun res!1923065 () Bool)

(assert (=> b!4597763 (=> res!1923065 e!2867842)))

(declare-fun tail!7945 (List!51203) List!51203)

(assert (=> b!4597763 (= res!1923065 (not (= (t!358197 (toList!4651 lm!1477)) (tail!7945 (toList!4651 lt!1757698)))))))

(assert (=> b!4597763 (= lt!1757698 (+!1744 lm!1477 lt!1757696))))

(declare-fun eq!725 (ListMap!3913 ListMap!3913) Bool)

(declare-fun -!494 (ListMap!3913 K!12445) ListMap!3913)

(assert (=> b!4597763 (eq!725 (extractMap!1378 (Cons!51079 lt!1757696 Nil!51079)) (-!494 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)) key!3287))))

(assert (=> b!4597763 (= lt!1757696 (tuple2!51725 hash!344 newBucket!178))))

(declare-fun lt!1757697 () Unit!108077)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!84 ((_ BitVec 64) List!51202 List!51202 K!12445 Hashable!5717) Unit!108077)

(assert (=> b!4597763 (= lt!1757697 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!84 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> b!4597763 (contains!14027 (extractMap!1378 lt!1757705) key!3287)))

(declare-fun lt!1757704 () Unit!108077)

(declare-fun lemmaListContainsThenExtractedMapContains!252 (ListLongMap!3283 K!12445 Hashable!5717) Unit!108077)

(assert (=> b!4597763 (= lt!1757704 (lemmaListContainsThenExtractedMapContains!252 (ListLongMap!3284 lt!1757705) key!3287 hashF!1107))))

(declare-fun b!4597764 () Bool)

(declare-fun tp!1340416 () Bool)

(declare-fun tp_is_empty!28567 () Bool)

(assert (=> b!4597764 (= e!2867841 (and tp_is_empty!28565 tp_is_empty!28567 tp!1340416))))

(declare-fun b!4597765 () Bool)

(assert (=> b!4597765 (= e!2867834 e!2867840)))

(declare-fun res!1923063 () Bool)

(assert (=> b!4597765 (=> res!1923063 e!2867840)))

(declare-fun lt!1757693 () ListMap!3913)

(assert (=> b!4597765 (= res!1923063 (not (= lt!1757693 (extractMap!1378 (t!358197 (toList!4651 lm!1477))))))))

(assert (=> b!4597765 (= lt!1757693 (extractMap!1378 (toList!4651 lt!1757703)))))

(declare-fun b!4597766 () Bool)

(declare-fun res!1923069 () Bool)

(assert (=> b!4597766 (=> res!1923069 e!2867840)))

(assert (=> b!4597766 (= res!1923069 (not (contains!14027 lt!1757693 key!3287)))))

(assert (= (and start!458760 res!1923064) b!4597753))

(assert (= (and b!4597753 res!1923066) b!4597762))

(assert (= (and b!4597762 res!1923072) b!4597761))

(assert (= (and b!4597761 res!1923062) b!4597756))

(assert (= (and b!4597756 res!1923061) b!4597758))

(assert (= (and b!4597758 (not res!1923070)) b!4597751))

(assert (= (and b!4597751 (not res!1923074)) b!4597752))

(assert (= (and b!4597752 (not res!1923067)) b!4597754))

(assert (= (and b!4597754 c!787444) b!4597759))

(assert (= (and b!4597754 (not c!787444)) b!4597750))

(assert (= (and b!4597754 (not res!1923068)) b!4597757))

(assert (= (and b!4597757 (not res!1923071)) b!4597763))

(assert (= (and b!4597763 (not res!1923065)) b!4597755))

(assert (= (and b!4597755 (not res!1923073)) b!4597765))

(assert (= (and b!4597765 (not res!1923063)) b!4597766))

(assert (= (and b!4597766 (not res!1923069)) b!4597749))

(assert (= start!458760 b!4597760))

(assert (= (and start!458760 ((_ is Cons!51078) newBucket!178)) b!4597764))

(declare-fun m!5423497 () Bool)

(assert (=> b!4597758 m!5423497))

(declare-fun m!5423499 () Bool)

(assert (=> b!4597758 m!5423499))

(declare-fun m!5423501 () Bool)

(assert (=> b!4597758 m!5423501))

(declare-fun m!5423503 () Bool)

(assert (=> b!4597758 m!5423503))

(declare-fun m!5423505 () Bool)

(assert (=> b!4597758 m!5423505))

(declare-fun m!5423507 () Bool)

(assert (=> b!4597758 m!5423507))

(declare-fun m!5423509 () Bool)

(assert (=> b!4597758 m!5423509))

(declare-fun m!5423511 () Bool)

(assert (=> start!458760 m!5423511))

(declare-fun m!5423513 () Bool)

(assert (=> start!458760 m!5423513))

(declare-fun m!5423515 () Bool)

(assert (=> b!4597756 m!5423515))

(declare-fun m!5423517 () Bool)

(assert (=> b!4597751 m!5423517))

(declare-fun m!5423519 () Bool)

(assert (=> b!4597759 m!5423519))

(declare-fun m!5423521 () Bool)

(assert (=> b!4597749 m!5423521))

(declare-fun m!5423523 () Bool)

(assert (=> b!4597749 m!5423523))

(declare-fun m!5423525 () Bool)

(assert (=> b!4597753 m!5423525))

(declare-fun m!5423527 () Bool)

(assert (=> b!4597766 m!5423527))

(declare-fun m!5423529 () Bool)

(assert (=> b!4597755 m!5423529))

(declare-fun m!5423531 () Bool)

(assert (=> b!4597755 m!5423531))

(declare-fun m!5423533 () Bool)

(assert (=> b!4597754 m!5423533))

(declare-fun m!5423535 () Bool)

(assert (=> b!4597765 m!5423535))

(declare-fun m!5423537 () Bool)

(assert (=> b!4597765 m!5423537))

(declare-fun m!5423539 () Bool)

(assert (=> b!4597763 m!5423539))

(declare-fun m!5423541 () Bool)

(assert (=> b!4597763 m!5423541))

(declare-fun m!5423543 () Bool)

(assert (=> b!4597763 m!5423543))

(declare-fun m!5423545 () Bool)

(assert (=> b!4597763 m!5423545))

(declare-fun m!5423547 () Bool)

(assert (=> b!4597763 m!5423547))

(declare-fun m!5423549 () Bool)

(assert (=> b!4597763 m!5423549))

(assert (=> b!4597763 m!5423543))

(assert (=> b!4597763 m!5423539))

(declare-fun m!5423551 () Bool)

(assert (=> b!4597763 m!5423551))

(declare-fun m!5423553 () Bool)

(assert (=> b!4597763 m!5423553))

(declare-fun m!5423555 () Bool)

(assert (=> b!4597763 m!5423555))

(assert (=> b!4597763 m!5423551))

(assert (=> b!4597763 m!5423545))

(declare-fun m!5423557 () Bool)

(assert (=> b!4597763 m!5423557))

(declare-fun m!5423559 () Bool)

(assert (=> b!4597757 m!5423559))

(declare-fun m!5423561 () Bool)

(assert (=> b!4597762 m!5423561))

(assert (=> b!4597762 m!5423561))

(declare-fun m!5423563 () Bool)

(assert (=> b!4597762 m!5423563))

(declare-fun m!5423565 () Bool)

(assert (=> b!4597761 m!5423565))

(check-sat (not start!458760) (not b!4597763) (not b!4597755) (not b!4597757) (not b!4597760) (not b!4597759) (not b!4597751) (not b!4597749) (not b!4597753) (not b!4597758) (not b!4597754) (not b!4597766) (not b!4597762) (not b!4597756) (not b!4597764) tp_is_empty!28565 (not b!4597765) (not b!4597761) tp_is_empty!28567)
(check-sat)
(get-model)

(declare-fun bs!1010467 () Bool)

(declare-fun d!1447443 () Bool)

(assert (= bs!1010467 (and d!1447443 start!458760)))

(declare-fun lambda!186085 () Int)

(assert (=> bs!1010467 (= lambda!186085 lambda!186082)))

(assert (=> d!1447443 (contains!14025 lm!1477 (hash!3213 hashF!1107 key!3287))))

(declare-fun lt!1757736 () Unit!108077)

(declare-fun choose!30804 (ListLongMap!3283 K!12445 Hashable!5717) Unit!108077)

(assert (=> d!1447443 (= lt!1757736 (choose!30804 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1447443 (forall!10598 (toList!4651 lm!1477) lambda!186085)))

(assert (=> d!1447443 (= (lemmaInGenMapThenLongMapContainsHash!392 lm!1477 key!3287 hashF!1107) lt!1757736)))

(declare-fun bs!1010468 () Bool)

(assert (= bs!1010468 d!1447443))

(assert (=> bs!1010468 m!5423565))

(assert (=> bs!1010468 m!5423565))

(declare-fun m!5423593 () Bool)

(assert (=> bs!1010468 m!5423593))

(declare-fun m!5423595 () Bool)

(assert (=> bs!1010468 m!5423595))

(declare-fun m!5423597 () Bool)

(assert (=> bs!1010468 m!5423597))

(assert (=> b!4597758 d!1447443))

(declare-fun d!1447451 () Bool)

(declare-datatypes ((Option!11390 0))(
  ( (None!11389) (Some!11389 (v!45367 List!51202)) )
))
(declare-fun get!16881 (Option!11390) List!51202)

(declare-fun getValueByKey!1310 (List!51203 (_ BitVec 64)) Option!11390)

(assert (=> d!1447451 (= (apply!12055 lm!1477 hash!344) (get!16881 (getValueByKey!1310 (toList!4651 lm!1477) hash!344)))))

(declare-fun bs!1010469 () Bool)

(assert (= bs!1010469 d!1447451))

(declare-fun m!5423605 () Bool)

(assert (=> bs!1010469 m!5423605))

(assert (=> bs!1010469 m!5423605))

(declare-fun m!5423607 () Bool)

(assert (=> bs!1010469 m!5423607))

(assert (=> b!4597758 d!1447451))

(declare-fun d!1447455 () Bool)

(declare-fun e!2867893 () Bool)

(assert (=> d!1447455 e!2867893))

(declare-fun res!1923104 () Bool)

(assert (=> d!1447455 (=> res!1923104 e!2867893)))

(declare-fun lt!1757766 () Bool)

(assert (=> d!1447455 (= res!1923104 (not lt!1757766))))

(declare-fun lt!1757768 () Bool)

(assert (=> d!1447455 (= lt!1757766 lt!1757768)))

(declare-fun lt!1757767 () Unit!108077)

(declare-fun e!2867892 () Unit!108077)

(assert (=> d!1447455 (= lt!1757767 e!2867892)))

(declare-fun c!787465 () Bool)

(assert (=> d!1447455 (= c!787465 lt!1757768)))

(declare-fun containsKey!2157 (List!51203 (_ BitVec 64)) Bool)

(assert (=> d!1447455 (= lt!1757768 (containsKey!2157 (toList!4651 lm!1477) lt!1757708))))

(assert (=> d!1447455 (= (contains!14025 lm!1477 lt!1757708) lt!1757766)))

(declare-fun b!4597836 () Bool)

(declare-fun lt!1757769 () Unit!108077)

(assert (=> b!4597836 (= e!2867892 lt!1757769)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1214 (List!51203 (_ BitVec 64)) Unit!108077)

(assert (=> b!4597836 (= lt!1757769 (lemmaContainsKeyImpliesGetValueByKeyDefined!1214 (toList!4651 lm!1477) lt!1757708))))

(declare-fun isDefined!8658 (Option!11390) Bool)

(assert (=> b!4597836 (isDefined!8658 (getValueByKey!1310 (toList!4651 lm!1477) lt!1757708))))

(declare-fun b!4597837 () Bool)

(declare-fun Unit!108089 () Unit!108077)

(assert (=> b!4597837 (= e!2867892 Unit!108089)))

(declare-fun b!4597838 () Bool)

(assert (=> b!4597838 (= e!2867893 (isDefined!8658 (getValueByKey!1310 (toList!4651 lm!1477) lt!1757708)))))

(assert (= (and d!1447455 c!787465) b!4597836))

(assert (= (and d!1447455 (not c!787465)) b!4597837))

(assert (= (and d!1447455 (not res!1923104)) b!4597838))

(declare-fun m!5423631 () Bool)

(assert (=> d!1447455 m!5423631))

(declare-fun m!5423633 () Bool)

(assert (=> b!4597836 m!5423633))

(declare-fun m!5423635 () Bool)

(assert (=> b!4597836 m!5423635))

(assert (=> b!4597836 m!5423635))

(declare-fun m!5423637 () Bool)

(assert (=> b!4597836 m!5423637))

(assert (=> b!4597838 m!5423635))

(assert (=> b!4597838 m!5423635))

(assert (=> b!4597838 m!5423637))

(assert (=> b!4597758 d!1447455))

(declare-fun d!1447465 () Bool)

(assert (=> d!1447465 (contains!14026 (toList!4651 lm!1477) (tuple2!51725 hash!344 lt!1757702))))

(declare-fun lt!1757786 () Unit!108077)

(declare-fun choose!30806 (List!51203 (_ BitVec 64) List!51202) Unit!108077)

(assert (=> d!1447465 (= lt!1757786 (choose!30806 (toList!4651 lm!1477) hash!344 lt!1757702))))

(declare-fun e!2867914 () Bool)

(assert (=> d!1447465 e!2867914))

(declare-fun res!1923122 () Bool)

(assert (=> d!1447465 (=> (not res!1923122) (not e!2867914))))

(declare-fun isStrictlySorted!540 (List!51203) Bool)

(assert (=> d!1447465 (= res!1923122 (isStrictlySorted!540 (toList!4651 lm!1477)))))

(assert (=> d!1447465 (= (lemmaGetValueByKeyImpliesContainsTuple!828 (toList!4651 lm!1477) hash!344 lt!1757702) lt!1757786)))

(declare-fun b!4597862 () Bool)

(assert (=> b!4597862 (= e!2867914 (= (getValueByKey!1310 (toList!4651 lm!1477) hash!344) (Some!11389 lt!1757702)))))

(assert (= (and d!1447465 res!1923122) b!4597862))

(declare-fun m!5423655 () Bool)

(assert (=> d!1447465 m!5423655))

(declare-fun m!5423657 () Bool)

(assert (=> d!1447465 m!5423657))

(declare-fun m!5423659 () Bool)

(assert (=> d!1447465 m!5423659))

(assert (=> b!4597862 m!5423605))

(assert (=> b!4597758 d!1447465))

(declare-fun d!1447473 () Bool)

(declare-fun dynLambda!21396 (Int tuple2!51724) Bool)

(assert (=> d!1447473 (dynLambda!21396 lambda!186082 lt!1757699)))

(declare-fun lt!1757789 () Unit!108077)

(declare-fun choose!30807 (List!51203 Int tuple2!51724) Unit!108077)

(assert (=> d!1447473 (= lt!1757789 (choose!30807 (toList!4651 lm!1477) lambda!186082 lt!1757699))))

(declare-fun e!2867917 () Bool)

(assert (=> d!1447473 e!2867917))

(declare-fun res!1923125 () Bool)

(assert (=> d!1447473 (=> (not res!1923125) (not e!2867917))))

(assert (=> d!1447473 (= res!1923125 (forall!10598 (toList!4651 lm!1477) lambda!186082))))

(assert (=> d!1447473 (= (forallContained!2851 (toList!4651 lm!1477) lambda!186082 lt!1757699) lt!1757789)))

(declare-fun b!4597865 () Bool)

(assert (=> b!4597865 (= e!2867917 (contains!14026 (toList!4651 lm!1477) lt!1757699))))

(assert (= (and d!1447473 res!1923125) b!4597865))

(declare-fun b_lambda!169311 () Bool)

(assert (=> (not b_lambda!169311) (not d!1447473)))

(declare-fun m!5423681 () Bool)

(assert (=> d!1447473 m!5423681))

(declare-fun m!5423683 () Bool)

(assert (=> d!1447473 m!5423683))

(assert (=> d!1447473 m!5423511))

(assert (=> b!4597865 m!5423507))

(assert (=> b!4597758 d!1447473))

(declare-fun d!1447477 () Bool)

(declare-fun lt!1757795 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8646 (List!51203) (InoxSet tuple2!51724))

(assert (=> d!1447477 (= lt!1757795 (select (content!8646 (toList!4651 lm!1477)) lt!1757699))))

(declare-fun e!2867926 () Bool)

(assert (=> d!1447477 (= lt!1757795 e!2867926)))

(declare-fun res!1923130 () Bool)

(assert (=> d!1447477 (=> (not res!1923130) (not e!2867926))))

(assert (=> d!1447477 (= res!1923130 ((_ is Cons!51079) (toList!4651 lm!1477)))))

(assert (=> d!1447477 (= (contains!14026 (toList!4651 lm!1477) lt!1757699) lt!1757795)))

(declare-fun b!4597876 () Bool)

(declare-fun e!2867925 () Bool)

(assert (=> b!4597876 (= e!2867926 e!2867925)))

(declare-fun res!1923131 () Bool)

(assert (=> b!4597876 (=> res!1923131 e!2867925)))

(assert (=> b!4597876 (= res!1923131 (= (h!57043 (toList!4651 lm!1477)) lt!1757699))))

(declare-fun b!4597877 () Bool)

(assert (=> b!4597877 (= e!2867925 (contains!14026 (t!358197 (toList!4651 lm!1477)) lt!1757699))))

(assert (= (and d!1447477 res!1923130) b!4597876))

(assert (= (and b!4597876 (not res!1923131)) b!4597877))

(declare-fun m!5423691 () Bool)

(assert (=> d!1447477 m!5423691))

(declare-fun m!5423693 () Bool)

(assert (=> d!1447477 m!5423693))

(declare-fun m!5423695 () Bool)

(assert (=> b!4597877 m!5423695))

(assert (=> b!4597758 d!1447477))

(declare-fun b!4597893 () Bool)

(declare-fun e!2867934 () List!51202)

(declare-fun e!2867933 () List!51202)

(assert (=> b!4597893 (= e!2867934 e!2867933)))

(declare-fun c!787478 () Bool)

(assert (=> b!4597893 (= c!787478 ((_ is Cons!51078) lt!1757702))))

(declare-fun b!4597895 () Bool)

(assert (=> b!4597895 (= e!2867933 Nil!51078)))

(declare-fun d!1447481 () Bool)

(declare-fun lt!1757800 () List!51202)

(assert (=> d!1447481 (not (containsKey!2154 lt!1757800 key!3287))))

(assert (=> d!1447481 (= lt!1757800 e!2867934)))

(declare-fun c!787479 () Bool)

(assert (=> d!1447481 (= c!787479 (and ((_ is Cons!51078) lt!1757702) (= (_1!29155 (h!57042 lt!1757702)) key!3287)))))

(assert (=> d!1447481 (noDuplicateKeys!1318 lt!1757702)))

(assert (=> d!1447481 (= (removePairForKey!943 lt!1757702 key!3287) lt!1757800)))

(declare-fun b!4597894 () Bool)

(assert (=> b!4597894 (= e!2867933 (Cons!51078 (h!57042 lt!1757702) (removePairForKey!943 (t!358196 lt!1757702) key!3287)))))

(declare-fun b!4597892 () Bool)

(assert (=> b!4597892 (= e!2867934 (t!358196 lt!1757702))))

(assert (= (and d!1447481 c!787479) b!4597892))

(assert (= (and d!1447481 (not c!787479)) b!4597893))

(assert (= (and b!4597893 c!787478) b!4597894))

(assert (= (and b!4597893 (not c!787478)) b!4597895))

(declare-fun m!5423715 () Bool)

(assert (=> d!1447481 m!5423715))

(declare-fun m!5423717 () Bool)

(assert (=> d!1447481 m!5423717))

(declare-fun m!5423719 () Bool)

(assert (=> b!4597894 m!5423719))

(assert (=> b!4597758 d!1447481))

(declare-fun d!1447491 () Bool)

(assert (=> d!1447491 true))

(assert (=> d!1447491 true))

(declare-fun lambda!186099 () Int)

(declare-fun forall!10600 (List!51202 Int) Bool)

(assert (=> d!1447491 (= (allKeysSameHash!1174 newBucket!178 hash!344 hashF!1107) (forall!10600 newBucket!178 lambda!186099))))

(declare-fun bs!1010488 () Bool)

(assert (= bs!1010488 d!1447491))

(declare-fun m!5423735 () Bool)

(assert (=> bs!1010488 m!5423735))

(assert (=> b!4597756 d!1447491))

(declare-fun d!1447495 () Bool)

(declare-fun res!1923149 () Bool)

(declare-fun e!2867949 () Bool)

(assert (=> d!1447495 (=> res!1923149 e!2867949)))

(declare-fun e!2867951 () Bool)

(assert (=> d!1447495 (= res!1923149 e!2867951)))

(declare-fun res!1923147 () Bool)

(assert (=> d!1447495 (=> (not res!1923147) (not e!2867951))))

(assert (=> d!1447495 (= res!1923147 ((_ is Cons!51079) lt!1757705))))

(assert (=> d!1447495 (= (containsKeyBiggerList!274 lt!1757705 key!3287) e!2867949)))

(declare-fun b!4597915 () Bool)

(assert (=> b!4597915 (= e!2867951 (containsKey!2154 (_2!29156 (h!57043 lt!1757705)) key!3287))))

(declare-fun b!4597916 () Bool)

(declare-fun e!2867947 () Bool)

(assert (=> b!4597916 (= e!2867949 e!2867947)))

(declare-fun res!1923150 () Bool)

(assert (=> b!4597916 (=> (not res!1923150) (not e!2867947))))

(assert (=> b!4597916 (= res!1923150 ((_ is Cons!51079) lt!1757705))))

(declare-fun b!4597917 () Bool)

(assert (=> b!4597917 (= e!2867947 (containsKeyBiggerList!274 (t!358197 lt!1757705) key!3287))))

(assert (= (and d!1447495 res!1923147) b!4597915))

(assert (= (and d!1447495 (not res!1923149)) b!4597916))

(assert (= (and b!4597916 res!1923150) b!4597917))

(declare-fun m!5423749 () Bool)

(assert (=> b!4597915 m!5423749))

(declare-fun m!5423751 () Bool)

(assert (=> b!4597917 m!5423751))

(assert (=> b!4597757 d!1447495))

(declare-fun d!1447499 () Bool)

(declare-fun hash!3217 (Hashable!5717 K!12445) (_ BitVec 64))

(assert (=> d!1447499 (= (hash!3213 hashF!1107 key!3287) (hash!3217 hashF!1107 key!3287))))

(declare-fun bs!1010489 () Bool)

(assert (= bs!1010489 d!1447499))

(declare-fun m!5423773 () Bool)

(assert (=> bs!1010489 m!5423773))

(assert (=> b!4597761 d!1447499))

(declare-fun bs!1010500 () Bool)

(declare-fun d!1447503 () Bool)

(assert (= bs!1010500 (and d!1447503 start!458760)))

(declare-fun lambda!186105 () Int)

(assert (=> bs!1010500 (= lambda!186105 lambda!186082)))

(declare-fun bs!1010504 () Bool)

(assert (= bs!1010504 (and d!1447503 d!1447443)))

(assert (=> bs!1010504 (= lambda!186105 lambda!186085)))

(assert (=> d!1447503 (not (contains!14027 (extractMap!1378 (toList!4651 lm!1477)) key!3287))))

(declare-fun lt!1757832 () Unit!108077)

(declare-fun choose!30808 (ListLongMap!3283 K!12445 Hashable!5717) Unit!108077)

(assert (=> d!1447503 (= lt!1757832 (choose!30808 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1447503 (forall!10598 (toList!4651 lm!1477) lambda!186105)))

(assert (=> d!1447503 (= (lemmaNotInItsHashBucketThenNotInMap!288 lm!1477 key!3287 hashF!1107) lt!1757832)))

(declare-fun bs!1010508 () Bool)

(assert (= bs!1010508 d!1447503))

(assert (=> bs!1010508 m!5423561))

(assert (=> bs!1010508 m!5423561))

(assert (=> bs!1010508 m!5423563))

(declare-fun m!5423803 () Bool)

(assert (=> bs!1010508 m!5423803))

(declare-fun m!5423805 () Bool)

(assert (=> bs!1010508 m!5423805))

(assert (=> b!4597759 d!1447503))

(declare-fun d!1447513 () Bool)

(declare-fun e!2867960 () Bool)

(assert (=> d!1447513 e!2867960))

(declare-fun res!1923154 () Bool)

(assert (=> d!1447513 (=> res!1923154 e!2867960)))

(declare-fun lt!1757838 () Bool)

(assert (=> d!1447513 (= res!1923154 (not lt!1757838))))

(declare-fun lt!1757840 () Bool)

(assert (=> d!1447513 (= lt!1757838 lt!1757840)))

(declare-fun lt!1757839 () Unit!108077)

(declare-fun e!2867959 () Unit!108077)

(assert (=> d!1447513 (= lt!1757839 e!2867959)))

(declare-fun c!787485 () Bool)

(assert (=> d!1447513 (= c!787485 lt!1757840)))

(assert (=> d!1447513 (= lt!1757840 (containsKey!2157 (toList!4651 lt!1757703) lt!1757708))))

(assert (=> d!1447513 (= (contains!14025 lt!1757703 lt!1757708) lt!1757838)))

(declare-fun b!4597932 () Bool)

(declare-fun lt!1757841 () Unit!108077)

(assert (=> b!4597932 (= e!2867959 lt!1757841)))

(assert (=> b!4597932 (= lt!1757841 (lemmaContainsKeyImpliesGetValueByKeyDefined!1214 (toList!4651 lt!1757703) lt!1757708))))

(assert (=> b!4597932 (isDefined!8658 (getValueByKey!1310 (toList!4651 lt!1757703) lt!1757708))))

(declare-fun b!4597933 () Bool)

(declare-fun Unit!108090 () Unit!108077)

(assert (=> b!4597933 (= e!2867959 Unit!108090)))

(declare-fun b!4597934 () Bool)

(assert (=> b!4597934 (= e!2867960 (isDefined!8658 (getValueByKey!1310 (toList!4651 lt!1757703) lt!1757708)))))

(assert (= (and d!1447513 c!787485) b!4597932))

(assert (= (and d!1447513 (not c!787485)) b!4597933))

(assert (= (and d!1447513 (not res!1923154)) b!4597934))

(declare-fun m!5423815 () Bool)

(assert (=> d!1447513 m!5423815))

(declare-fun m!5423817 () Bool)

(assert (=> b!4597932 m!5423817))

(declare-fun m!5423819 () Bool)

(assert (=> b!4597932 m!5423819))

(assert (=> b!4597932 m!5423819))

(declare-fun m!5423821 () Bool)

(assert (=> b!4597932 m!5423821))

(assert (=> b!4597934 m!5423819))

(assert (=> b!4597934 m!5423819))

(assert (=> b!4597934 m!5423821))

(assert (=> b!4597749 d!1447513))

(declare-fun bs!1010519 () Bool)

(declare-fun d!1447517 () Bool)

(assert (= bs!1010519 (and d!1447517 start!458760)))

(declare-fun lambda!186109 () Int)

(assert (=> bs!1010519 (= lambda!186109 lambda!186082)))

(declare-fun bs!1010523 () Bool)

(assert (= bs!1010523 (and d!1447517 d!1447443)))

(assert (=> bs!1010523 (= lambda!186109 lambda!186085)))

(declare-fun bs!1010527 () Bool)

(assert (= bs!1010527 (and d!1447517 d!1447503)))

(assert (=> bs!1010527 (= lambda!186109 lambda!186105)))

(assert (=> d!1447517 (contains!14025 lt!1757703 (hash!3213 hashF!1107 key!3287))))

(declare-fun lt!1757843 () Unit!108077)

(assert (=> d!1447517 (= lt!1757843 (choose!30804 lt!1757703 key!3287 hashF!1107))))

(assert (=> d!1447517 (forall!10598 (toList!4651 lt!1757703) lambda!186109)))

(assert (=> d!1447517 (= (lemmaInGenMapThenLongMapContainsHash!392 lt!1757703 key!3287 hashF!1107) lt!1757843)))

(declare-fun bs!1010530 () Bool)

(assert (= bs!1010530 d!1447517))

(assert (=> bs!1010530 m!5423565))

(assert (=> bs!1010530 m!5423565))

(declare-fun m!5423837 () Bool)

(assert (=> bs!1010530 m!5423837))

(declare-fun m!5423839 () Bool)

(assert (=> bs!1010530 m!5423839))

(declare-fun m!5423841 () Bool)

(assert (=> bs!1010530 m!5423841))

(assert (=> b!4597749 d!1447517))

(declare-fun bm!320854 () Bool)

(declare-fun call!320859 () Bool)

(declare-datatypes ((List!51205 0))(
  ( (Nil!51081) (Cons!51081 (h!57047 K!12445) (t!358199 List!51205)) )
))
(declare-fun e!2867996 () List!51205)

(declare-fun contains!14029 (List!51205 K!12445) Bool)

(assert (=> bm!320854 (= call!320859 (contains!14029 e!2867996 key!3287))))

(declare-fun c!787496 () Bool)

(declare-fun c!787494 () Bool)

(assert (=> bm!320854 (= c!787496 c!787494)))

(declare-fun b!4597985 () Bool)

(declare-fun e!2867999 () Unit!108077)

(declare-fun Unit!108091 () Unit!108077)

(assert (=> b!4597985 (= e!2867999 Unit!108091)))

(declare-fun d!1447523 () Bool)

(declare-fun e!2867994 () Bool)

(assert (=> d!1447523 e!2867994))

(declare-fun res!1923175 () Bool)

(assert (=> d!1447523 (=> res!1923175 e!2867994)))

(declare-fun e!2867995 () Bool)

(assert (=> d!1447523 (= res!1923175 e!2867995)))

(declare-fun res!1923177 () Bool)

(assert (=> d!1447523 (=> (not res!1923177) (not e!2867995))))

(declare-fun lt!1757872 () Bool)

(assert (=> d!1447523 (= res!1923177 (not lt!1757872))))

(declare-fun lt!1757874 () Bool)

(assert (=> d!1447523 (= lt!1757872 lt!1757874)))

(declare-fun lt!1757876 () Unit!108077)

(declare-fun e!2867997 () Unit!108077)

(assert (=> d!1447523 (= lt!1757876 e!2867997)))

(assert (=> d!1447523 (= c!787494 lt!1757874)))

(declare-fun containsKey!2158 (List!51202 K!12445) Bool)

(assert (=> d!1447523 (= lt!1757874 (containsKey!2158 (toList!4652 (extractMap!1378 lt!1757705)) key!3287))))

(assert (=> d!1447523 (= (contains!14027 (extractMap!1378 lt!1757705) key!3287) lt!1757872)))

(declare-fun b!4597986 () Bool)

(declare-fun e!2867998 () Bool)

(declare-fun keys!17884 (ListMap!3913) List!51205)

(assert (=> b!4597986 (= e!2867998 (contains!14029 (keys!17884 (extractMap!1378 lt!1757705)) key!3287))))

(declare-fun b!4597987 () Bool)

(assert (=> b!4597987 (= e!2867997 e!2867999)))

(declare-fun c!787495 () Bool)

(assert (=> b!4597987 (= c!787495 call!320859)))

(declare-fun b!4597988 () Bool)

(declare-fun getKeysList!573 (List!51202) List!51205)

(assert (=> b!4597988 (= e!2867996 (getKeysList!573 (toList!4652 (extractMap!1378 lt!1757705))))))

(declare-fun b!4597989 () Bool)

(assert (=> b!4597989 (= e!2867994 e!2867998)))

(declare-fun res!1923176 () Bool)

(assert (=> b!4597989 (=> (not res!1923176) (not e!2867998))))

(declare-datatypes ((Option!11391 0))(
  ( (None!11390) (Some!11390 (v!45368 V!12691)) )
))
(declare-fun isDefined!8659 (Option!11391) Bool)

(declare-fun getValueByKey!1311 (List!51202 K!12445) Option!11391)

(assert (=> b!4597989 (= res!1923176 (isDefined!8659 (getValueByKey!1311 (toList!4652 (extractMap!1378 lt!1757705)) key!3287)))))

(declare-fun b!4597990 () Bool)

(assert (=> b!4597990 (= e!2867995 (not (contains!14029 (keys!17884 (extractMap!1378 lt!1757705)) key!3287)))))

(declare-fun b!4597991 () Bool)

(assert (=> b!4597991 (= e!2867996 (keys!17884 (extractMap!1378 lt!1757705)))))

(declare-fun b!4597992 () Bool)

(declare-fun lt!1757870 () Unit!108077)

(assert (=> b!4597992 (= e!2867997 lt!1757870)))

(declare-fun lt!1757873 () Unit!108077)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1215 (List!51202 K!12445) Unit!108077)

(assert (=> b!4597992 (= lt!1757873 (lemmaContainsKeyImpliesGetValueByKeyDefined!1215 (toList!4652 (extractMap!1378 lt!1757705)) key!3287))))

(assert (=> b!4597992 (isDefined!8659 (getValueByKey!1311 (toList!4652 (extractMap!1378 lt!1757705)) key!3287))))

(declare-fun lt!1757869 () Unit!108077)

(assert (=> b!4597992 (= lt!1757869 lt!1757873)))

(declare-fun lemmaInListThenGetKeysListContains!569 (List!51202 K!12445) Unit!108077)

(assert (=> b!4597992 (= lt!1757870 (lemmaInListThenGetKeysListContains!569 (toList!4652 (extractMap!1378 lt!1757705)) key!3287))))

(assert (=> b!4597992 call!320859))

(declare-fun b!4597993 () Bool)

(assert (=> b!4597993 false))

(declare-fun lt!1757875 () Unit!108077)

(declare-fun lt!1757871 () Unit!108077)

(assert (=> b!4597993 (= lt!1757875 lt!1757871)))

(assert (=> b!4597993 (containsKey!2158 (toList!4652 (extractMap!1378 lt!1757705)) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!572 (List!51202 K!12445) Unit!108077)

(assert (=> b!4597993 (= lt!1757871 (lemmaInGetKeysListThenContainsKey!572 (toList!4652 (extractMap!1378 lt!1757705)) key!3287))))

(declare-fun Unit!108092 () Unit!108077)

(assert (=> b!4597993 (= e!2867999 Unit!108092)))

(assert (= (and d!1447523 c!787494) b!4597992))

(assert (= (and d!1447523 (not c!787494)) b!4597987))

(assert (= (and b!4597987 c!787495) b!4597993))

(assert (= (and b!4597987 (not c!787495)) b!4597985))

(assert (= (or b!4597992 b!4597987) bm!320854))

(assert (= (and bm!320854 c!787496) b!4597988))

(assert (= (and bm!320854 (not c!787496)) b!4597991))

(assert (= (and d!1447523 res!1923177) b!4597990))

(assert (= (and d!1447523 (not res!1923175)) b!4597989))

(assert (= (and b!4597989 res!1923176) b!4597986))

(assert (=> b!4597991 m!5423539))

(declare-fun m!5423879 () Bool)

(assert (=> b!4597991 m!5423879))

(assert (=> b!4597986 m!5423539))

(assert (=> b!4597986 m!5423879))

(assert (=> b!4597986 m!5423879))

(declare-fun m!5423881 () Bool)

(assert (=> b!4597986 m!5423881))

(declare-fun m!5423883 () Bool)

(assert (=> bm!320854 m!5423883))

(declare-fun m!5423885 () Bool)

(assert (=> b!4597992 m!5423885))

(declare-fun m!5423887 () Bool)

(assert (=> b!4597992 m!5423887))

(assert (=> b!4597992 m!5423887))

(declare-fun m!5423889 () Bool)

(assert (=> b!4597992 m!5423889))

(declare-fun m!5423891 () Bool)

(assert (=> b!4597992 m!5423891))

(declare-fun m!5423893 () Bool)

(assert (=> d!1447523 m!5423893))

(assert (=> b!4597993 m!5423893))

(declare-fun m!5423895 () Bool)

(assert (=> b!4597993 m!5423895))

(assert (=> b!4597989 m!5423887))

(assert (=> b!4597989 m!5423887))

(assert (=> b!4597989 m!5423889))

(declare-fun m!5423897 () Bool)

(assert (=> b!4597988 m!5423897))

(assert (=> b!4597990 m!5423539))

(assert (=> b!4597990 m!5423879))

(assert (=> b!4597990 m!5423879))

(assert (=> b!4597990 m!5423881))

(assert (=> b!4597763 d!1447523))

(declare-fun bs!1010558 () Bool)

(declare-fun d!1447543 () Bool)

(assert (= bs!1010558 (and d!1447543 start!458760)))

(declare-fun lambda!186119 () Int)

(assert (=> bs!1010558 (= lambda!186119 lambda!186082)))

(declare-fun bs!1010559 () Bool)

(assert (= bs!1010559 (and d!1447543 d!1447443)))

(assert (=> bs!1010559 (= lambda!186119 lambda!186085)))

(declare-fun bs!1010560 () Bool)

(assert (= bs!1010560 (and d!1447543 d!1447503)))

(assert (=> bs!1010560 (= lambda!186119 lambda!186105)))

(declare-fun bs!1010561 () Bool)

(assert (= bs!1010561 (and d!1447543 d!1447517)))

(assert (=> bs!1010561 (= lambda!186119 lambda!186109)))

(declare-fun lt!1757879 () ListMap!3913)

(declare-fun invariantList!1124 (List!51202) Bool)

(assert (=> d!1447543 (invariantList!1124 (toList!4652 lt!1757879))))

(declare-fun e!2868002 () ListMap!3913)

(assert (=> d!1447543 (= lt!1757879 e!2868002)))

(declare-fun c!787499 () Bool)

(assert (=> d!1447543 (= c!787499 ((_ is Cons!51079) (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))))

(assert (=> d!1447543 (forall!10598 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079) lambda!186119)))

(assert (=> d!1447543 (= (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)) lt!1757879)))

(declare-fun b!4597998 () Bool)

(declare-fun addToMapMapFromBucket!814 (List!51202 ListMap!3913) ListMap!3913)

(assert (=> b!4597998 (= e!2868002 (addToMapMapFromBucket!814 (_2!29156 (h!57043 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))))))

(declare-fun b!4597999 () Bool)

(assert (=> b!4597999 (= e!2868002 (ListMap!3914 Nil!51078))))

(assert (= (and d!1447543 c!787499) b!4597998))

(assert (= (and d!1447543 (not c!787499)) b!4597999))

(declare-fun m!5423899 () Bool)

(assert (=> d!1447543 m!5423899))

(declare-fun m!5423901 () Bool)

(assert (=> d!1447543 m!5423901))

(declare-fun m!5423903 () Bool)

(assert (=> b!4597998 m!5423903))

(assert (=> b!4597998 m!5423903))

(declare-fun m!5423905 () Bool)

(assert (=> b!4597998 m!5423905))

(assert (=> b!4597763 d!1447543))

(declare-fun d!1447545 () Bool)

(declare-fun e!2868005 () Bool)

(assert (=> d!1447545 e!2868005))

(declare-fun res!1923180 () Bool)

(assert (=> d!1447545 (=> (not res!1923180) (not e!2868005))))

(declare-fun lt!1757882 () ListMap!3913)

(assert (=> d!1447545 (= res!1923180 (not (contains!14027 lt!1757882 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!221 (List!51202 K!12445) List!51202)

(assert (=> d!1447545 (= lt!1757882 (ListMap!3914 (removePresrvNoDuplicatedKeys!221 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) key!3287)))))

(assert (=> d!1447545 (= (-!494 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)) key!3287) lt!1757882)))

(declare-fun b!4598002 () Bool)

(declare-fun content!8647 (List!51205) (InoxSet K!12445))

(assert (=> b!4598002 (= e!2868005 (= ((_ map and) (content!8647 (keys!17884 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) ((_ map not) (store ((as const (Array K!12445 Bool)) false) key!3287 true))) (content!8647 (keys!17884 lt!1757882))))))

(assert (= (and d!1447545 res!1923180) b!4598002))

(declare-fun m!5423907 () Bool)

(assert (=> d!1447545 m!5423907))

(declare-fun m!5423909 () Bool)

(assert (=> d!1447545 m!5423909))

(declare-fun m!5423911 () Bool)

(assert (=> b!4598002 m!5423911))

(declare-fun m!5423913 () Bool)

(assert (=> b!4598002 m!5423913))

(declare-fun m!5423915 () Bool)

(assert (=> b!4598002 m!5423915))

(assert (=> b!4598002 m!5423913))

(declare-fun m!5423917 () Bool)

(assert (=> b!4598002 m!5423917))

(declare-fun m!5423919 () Bool)

(assert (=> b!4598002 m!5423919))

(assert (=> b!4598002 m!5423543))

(assert (=> b!4598002 m!5423917))

(assert (=> b!4597763 d!1447545))

(declare-fun bs!1010562 () Bool)

(declare-fun d!1447547 () Bool)

(assert (= bs!1010562 (and d!1447547 d!1447443)))

(declare-fun lambda!186120 () Int)

(assert (=> bs!1010562 (= lambda!186120 lambda!186085)))

(declare-fun bs!1010563 () Bool)

(assert (= bs!1010563 (and d!1447547 start!458760)))

(assert (=> bs!1010563 (= lambda!186120 lambda!186082)))

(declare-fun bs!1010564 () Bool)

(assert (= bs!1010564 (and d!1447547 d!1447517)))

(assert (=> bs!1010564 (= lambda!186120 lambda!186109)))

(declare-fun bs!1010565 () Bool)

(assert (= bs!1010565 (and d!1447547 d!1447503)))

(assert (=> bs!1010565 (= lambda!186120 lambda!186105)))

(declare-fun bs!1010566 () Bool)

(assert (= bs!1010566 (and d!1447547 d!1447543)))

(assert (=> bs!1010566 (= lambda!186120 lambda!186119)))

(declare-fun lt!1757883 () ListMap!3913)

(assert (=> d!1447547 (invariantList!1124 (toList!4652 lt!1757883))))

(declare-fun e!2868006 () ListMap!3913)

(assert (=> d!1447547 (= lt!1757883 e!2868006)))

(declare-fun c!787500 () Bool)

(assert (=> d!1447547 (= c!787500 ((_ is Cons!51079) lt!1757705))))

(assert (=> d!1447547 (forall!10598 lt!1757705 lambda!186120)))

(assert (=> d!1447547 (= (extractMap!1378 lt!1757705) lt!1757883)))

(declare-fun b!4598003 () Bool)

(assert (=> b!4598003 (= e!2868006 (addToMapMapFromBucket!814 (_2!29156 (h!57043 lt!1757705)) (extractMap!1378 (t!358197 lt!1757705))))))

(declare-fun b!4598004 () Bool)

(assert (=> b!4598004 (= e!2868006 (ListMap!3914 Nil!51078))))

(assert (= (and d!1447547 c!787500) b!4598003))

(assert (= (and d!1447547 (not c!787500)) b!4598004))

(declare-fun m!5423921 () Bool)

(assert (=> d!1447547 m!5423921))

(declare-fun m!5423923 () Bool)

(assert (=> d!1447547 m!5423923))

(declare-fun m!5423925 () Bool)

(assert (=> b!4598003 m!5423925))

(assert (=> b!4598003 m!5423925))

(declare-fun m!5423927 () Bool)

(assert (=> b!4598003 m!5423927))

(assert (=> b!4597763 d!1447547))

(declare-fun d!1447549 () Bool)

(assert (=> d!1447549 (= (tail!7945 (toList!4651 lt!1757698)) (t!358197 (toList!4651 lt!1757698)))))

(assert (=> b!4597763 d!1447549))

(declare-fun d!1447551 () Bool)

(assert (=> d!1447551 (eq!725 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 newBucket!178) Nil!51079)) (-!494 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)) key!3287))))

(declare-fun lt!1757886 () Unit!108077)

(declare-fun choose!30809 ((_ BitVec 64) List!51202 List!51202 K!12445 Hashable!5717) Unit!108077)

(assert (=> d!1447551 (= lt!1757886 (choose!30809 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1447551 (noDuplicateKeys!1318 (_2!29156 (h!57043 (toList!4651 lm!1477))))))

(assert (=> d!1447551 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!84 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1757886)))

(declare-fun bs!1010567 () Bool)

(assert (= bs!1010567 d!1447551))

(declare-fun m!5423929 () Bool)

(assert (=> bs!1010567 m!5423929))

(declare-fun m!5423931 () Bool)

(assert (=> bs!1010567 m!5423931))

(declare-fun m!5423933 () Bool)

(assert (=> bs!1010567 m!5423933))

(assert (=> bs!1010567 m!5423545))

(declare-fun m!5423935 () Bool)

(assert (=> bs!1010567 m!5423935))

(assert (=> bs!1010567 m!5423933))

(assert (=> bs!1010567 m!5423543))

(assert (=> bs!1010567 m!5423545))

(assert (=> bs!1010567 m!5423543))

(assert (=> b!4597763 d!1447551))

(declare-fun d!1447553 () Bool)

(declare-fun e!2868009 () Bool)

(assert (=> d!1447553 e!2868009))

(declare-fun res!1923186 () Bool)

(assert (=> d!1447553 (=> (not res!1923186) (not e!2868009))))

(declare-fun lt!1757898 () ListLongMap!3283)

(assert (=> d!1447553 (= res!1923186 (contains!14025 lt!1757898 (_1!29156 lt!1757696)))))

(declare-fun lt!1757895 () List!51203)

(assert (=> d!1447553 (= lt!1757898 (ListLongMap!3284 lt!1757895))))

(declare-fun lt!1757897 () Unit!108077)

(declare-fun lt!1757896 () Unit!108077)

(assert (=> d!1447553 (= lt!1757897 lt!1757896)))

(assert (=> d!1447553 (= (getValueByKey!1310 lt!1757895 (_1!29156 lt!1757696)) (Some!11389 (_2!29156 lt!1757696)))))

(declare-fun lemmaContainsTupThenGetReturnValue!796 (List!51203 (_ BitVec 64) List!51202) Unit!108077)

(assert (=> d!1447553 (= lt!1757896 (lemmaContainsTupThenGetReturnValue!796 lt!1757895 (_1!29156 lt!1757696) (_2!29156 lt!1757696)))))

(declare-fun insertStrictlySorted!488 (List!51203 (_ BitVec 64) List!51202) List!51203)

(assert (=> d!1447553 (= lt!1757895 (insertStrictlySorted!488 (toList!4651 lm!1477) (_1!29156 lt!1757696) (_2!29156 lt!1757696)))))

(assert (=> d!1447553 (= (+!1744 lm!1477 lt!1757696) lt!1757898)))

(declare-fun b!4598009 () Bool)

(declare-fun res!1923185 () Bool)

(assert (=> b!4598009 (=> (not res!1923185) (not e!2868009))))

(assert (=> b!4598009 (= res!1923185 (= (getValueByKey!1310 (toList!4651 lt!1757898) (_1!29156 lt!1757696)) (Some!11389 (_2!29156 lt!1757696))))))

(declare-fun b!4598010 () Bool)

(assert (=> b!4598010 (= e!2868009 (contains!14026 (toList!4651 lt!1757898) lt!1757696))))

(assert (= (and d!1447553 res!1923186) b!4598009))

(assert (= (and b!4598009 res!1923185) b!4598010))

(declare-fun m!5423937 () Bool)

(assert (=> d!1447553 m!5423937))

(declare-fun m!5423939 () Bool)

(assert (=> d!1447553 m!5423939))

(declare-fun m!5423941 () Bool)

(assert (=> d!1447553 m!5423941))

(declare-fun m!5423943 () Bool)

(assert (=> d!1447553 m!5423943))

(declare-fun m!5423945 () Bool)

(assert (=> b!4598009 m!5423945))

(declare-fun m!5423947 () Bool)

(assert (=> b!4598010 m!5423947))

(assert (=> b!4597763 d!1447553))

(declare-fun d!1447555 () Bool)

(declare-fun content!8648 (List!51202) (InoxSet tuple2!51722))

(assert (=> d!1447555 (= (eq!725 (extractMap!1378 (Cons!51079 lt!1757696 Nil!51079)) (-!494 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)) key!3287)) (= (content!8648 (toList!4652 (extractMap!1378 (Cons!51079 lt!1757696 Nil!51079)))) (content!8648 (toList!4652 (-!494 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)) key!3287)))))))

(declare-fun bs!1010568 () Bool)

(assert (= bs!1010568 d!1447555))

(declare-fun m!5423949 () Bool)

(assert (=> bs!1010568 m!5423949))

(declare-fun m!5423951 () Bool)

(assert (=> bs!1010568 m!5423951))

(assert (=> b!4597763 d!1447555))

(declare-fun bs!1010569 () Bool)

(declare-fun d!1447557 () Bool)

(assert (= bs!1010569 (and d!1447557 d!1447443)))

(declare-fun lambda!186123 () Int)

(assert (=> bs!1010569 (= lambda!186123 lambda!186085)))

(declare-fun bs!1010570 () Bool)

(assert (= bs!1010570 (and d!1447557 start!458760)))

(assert (=> bs!1010570 (= lambda!186123 lambda!186082)))

(declare-fun bs!1010571 () Bool)

(assert (= bs!1010571 (and d!1447557 d!1447517)))

(assert (=> bs!1010571 (= lambda!186123 lambda!186109)))

(declare-fun bs!1010572 () Bool)

(assert (= bs!1010572 (and d!1447557 d!1447547)))

(assert (=> bs!1010572 (= lambda!186123 lambda!186120)))

(declare-fun bs!1010573 () Bool)

(assert (= bs!1010573 (and d!1447557 d!1447503)))

(assert (=> bs!1010573 (= lambda!186123 lambda!186105)))

(declare-fun bs!1010574 () Bool)

(assert (= bs!1010574 (and d!1447557 d!1447543)))

(assert (=> bs!1010574 (= lambda!186123 lambda!186119)))

(assert (=> d!1447557 (contains!14027 (extractMap!1378 (toList!4651 (ListLongMap!3284 lt!1757705))) key!3287)))

(declare-fun lt!1757901 () Unit!108077)

(declare-fun choose!30810 (ListLongMap!3283 K!12445 Hashable!5717) Unit!108077)

(assert (=> d!1447557 (= lt!1757901 (choose!30810 (ListLongMap!3284 lt!1757705) key!3287 hashF!1107))))

(assert (=> d!1447557 (forall!10598 (toList!4651 (ListLongMap!3284 lt!1757705)) lambda!186123)))

(assert (=> d!1447557 (= (lemmaListContainsThenExtractedMapContains!252 (ListLongMap!3284 lt!1757705) key!3287 hashF!1107) lt!1757901)))

(declare-fun bs!1010575 () Bool)

(assert (= bs!1010575 d!1447557))

(declare-fun m!5423953 () Bool)

(assert (=> bs!1010575 m!5423953))

(assert (=> bs!1010575 m!5423953))

(declare-fun m!5423955 () Bool)

(assert (=> bs!1010575 m!5423955))

(declare-fun m!5423957 () Bool)

(assert (=> bs!1010575 m!5423957))

(declare-fun m!5423959 () Bool)

(assert (=> bs!1010575 m!5423959))

(assert (=> b!4597763 d!1447557))

(declare-fun bs!1010576 () Bool)

(declare-fun d!1447559 () Bool)

(assert (= bs!1010576 (and d!1447559 d!1447443)))

(declare-fun lambda!186124 () Int)

(assert (=> bs!1010576 (= lambda!186124 lambda!186085)))

(declare-fun bs!1010577 () Bool)

(assert (= bs!1010577 (and d!1447559 d!1447557)))

(assert (=> bs!1010577 (= lambda!186124 lambda!186123)))

(declare-fun bs!1010578 () Bool)

(assert (= bs!1010578 (and d!1447559 start!458760)))

(assert (=> bs!1010578 (= lambda!186124 lambda!186082)))

(declare-fun bs!1010579 () Bool)

(assert (= bs!1010579 (and d!1447559 d!1447517)))

(assert (=> bs!1010579 (= lambda!186124 lambda!186109)))

(declare-fun bs!1010580 () Bool)

(assert (= bs!1010580 (and d!1447559 d!1447547)))

(assert (=> bs!1010580 (= lambda!186124 lambda!186120)))

(declare-fun bs!1010581 () Bool)

(assert (= bs!1010581 (and d!1447559 d!1447503)))

(assert (=> bs!1010581 (= lambda!186124 lambda!186105)))

(declare-fun bs!1010582 () Bool)

(assert (= bs!1010582 (and d!1447559 d!1447543)))

(assert (=> bs!1010582 (= lambda!186124 lambda!186119)))

(declare-fun lt!1757902 () ListMap!3913)

(assert (=> d!1447559 (invariantList!1124 (toList!4652 lt!1757902))))

(declare-fun e!2868010 () ListMap!3913)

(assert (=> d!1447559 (= lt!1757902 e!2868010)))

(declare-fun c!787501 () Bool)

(assert (=> d!1447559 (= c!787501 ((_ is Cons!51079) (Cons!51079 lt!1757696 Nil!51079)))))

(assert (=> d!1447559 (forall!10598 (Cons!51079 lt!1757696 Nil!51079) lambda!186124)))

(assert (=> d!1447559 (= (extractMap!1378 (Cons!51079 lt!1757696 Nil!51079)) lt!1757902)))

(declare-fun b!4598011 () Bool)

(assert (=> b!4598011 (= e!2868010 (addToMapMapFromBucket!814 (_2!29156 (h!57043 (Cons!51079 lt!1757696 Nil!51079))) (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))))))

(declare-fun b!4598012 () Bool)

(assert (=> b!4598012 (= e!2868010 (ListMap!3914 Nil!51078))))

(assert (= (and d!1447559 c!787501) b!4598011))

(assert (= (and d!1447559 (not c!787501)) b!4598012))

(declare-fun m!5423961 () Bool)

(assert (=> d!1447559 m!5423961))

(declare-fun m!5423963 () Bool)

(assert (=> d!1447559 m!5423963))

(declare-fun m!5423965 () Bool)

(assert (=> b!4598011 m!5423965))

(assert (=> b!4598011 m!5423965))

(declare-fun m!5423967 () Bool)

(assert (=> b!4598011 m!5423967))

(assert (=> b!4597763 d!1447559))

(declare-fun d!1447561 () Bool)

(declare-fun res!1923191 () Bool)

(declare-fun e!2868015 () Bool)

(assert (=> d!1447561 (=> res!1923191 e!2868015)))

(assert (=> d!1447561 (= res!1923191 ((_ is Nil!51079) (toList!4651 lm!1477)))))

(assert (=> d!1447561 (= (forall!10598 (toList!4651 lm!1477) lambda!186082) e!2868015)))

(declare-fun b!4598017 () Bool)

(declare-fun e!2868016 () Bool)

(assert (=> b!4598017 (= e!2868015 e!2868016)))

(declare-fun res!1923192 () Bool)

(assert (=> b!4598017 (=> (not res!1923192) (not e!2868016))))

(assert (=> b!4598017 (= res!1923192 (dynLambda!21396 lambda!186082 (h!57043 (toList!4651 lm!1477))))))

(declare-fun b!4598018 () Bool)

(assert (=> b!4598018 (= e!2868016 (forall!10598 (t!358197 (toList!4651 lm!1477)) lambda!186082))))

(assert (= (and d!1447561 (not res!1923191)) b!4598017))

(assert (= (and b!4598017 res!1923192) b!4598018))

(declare-fun b_lambda!169319 () Bool)

(assert (=> (not b_lambda!169319) (not b!4598017)))

(declare-fun m!5423969 () Bool)

(assert (=> b!4598017 m!5423969))

(declare-fun m!5423971 () Bool)

(assert (=> b!4598018 m!5423971))

(assert (=> start!458760 d!1447561))

(declare-fun d!1447563 () Bool)

(assert (=> d!1447563 (= (inv!66629 lm!1477) (isStrictlySorted!540 (toList!4651 lm!1477)))))

(declare-fun bs!1010583 () Bool)

(assert (= bs!1010583 d!1447563))

(assert (=> bs!1010583 m!5423659))

(assert (=> start!458760 d!1447563))

(declare-fun bs!1010584 () Bool)

(declare-fun d!1447565 () Bool)

(assert (= bs!1010584 (and d!1447565 d!1447443)))

(declare-fun lambda!186127 () Int)

(assert (=> bs!1010584 (not (= lambda!186127 lambda!186085))))

(declare-fun bs!1010585 () Bool)

(assert (= bs!1010585 (and d!1447565 d!1447559)))

(assert (=> bs!1010585 (not (= lambda!186127 lambda!186124))))

(declare-fun bs!1010586 () Bool)

(assert (= bs!1010586 (and d!1447565 d!1447557)))

(assert (=> bs!1010586 (not (= lambda!186127 lambda!186123))))

(declare-fun bs!1010587 () Bool)

(assert (= bs!1010587 (and d!1447565 start!458760)))

(assert (=> bs!1010587 (not (= lambda!186127 lambda!186082))))

(declare-fun bs!1010588 () Bool)

(assert (= bs!1010588 (and d!1447565 d!1447517)))

(assert (=> bs!1010588 (not (= lambda!186127 lambda!186109))))

(declare-fun bs!1010589 () Bool)

(assert (= bs!1010589 (and d!1447565 d!1447547)))

(assert (=> bs!1010589 (not (= lambda!186127 lambda!186120))))

(declare-fun bs!1010590 () Bool)

(assert (= bs!1010590 (and d!1447565 d!1447503)))

(assert (=> bs!1010590 (not (= lambda!186127 lambda!186105))))

(declare-fun bs!1010591 () Bool)

(assert (= bs!1010591 (and d!1447565 d!1447543)))

(assert (=> bs!1010591 (not (= lambda!186127 lambda!186119))))

(assert (=> d!1447565 true))

(assert (=> d!1447565 (= (allKeysSameHashInMap!1429 lm!1477 hashF!1107) (forall!10598 (toList!4651 lm!1477) lambda!186127))))

(declare-fun bs!1010592 () Bool)

(assert (= bs!1010592 d!1447565))

(declare-fun m!5423973 () Bool)

(assert (=> bs!1010592 m!5423973))

(assert (=> b!4597753 d!1447565))

(declare-fun d!1447567 () Bool)

(declare-fun res!1923197 () Bool)

(declare-fun e!2868021 () Bool)

(assert (=> d!1447567 (=> res!1923197 e!2868021)))

(assert (=> d!1447567 (= res!1923197 (not ((_ is Cons!51078) newBucket!178)))))

(assert (=> d!1447567 (= (noDuplicateKeys!1318 newBucket!178) e!2868021)))

(declare-fun b!4598025 () Bool)

(declare-fun e!2868022 () Bool)

(assert (=> b!4598025 (= e!2868021 e!2868022)))

(declare-fun res!1923198 () Bool)

(assert (=> b!4598025 (=> (not res!1923198) (not e!2868022))))

(assert (=> b!4598025 (= res!1923198 (not (containsKey!2154 (t!358196 newBucket!178) (_1!29155 (h!57042 newBucket!178)))))))

(declare-fun b!4598026 () Bool)

(assert (=> b!4598026 (= e!2868022 (noDuplicateKeys!1318 (t!358196 newBucket!178)))))

(assert (= (and d!1447567 (not res!1923197)) b!4598025))

(assert (= (and b!4598025 res!1923198) b!4598026))

(declare-fun m!5423975 () Bool)

(assert (=> b!4598025 m!5423975))

(declare-fun m!5423977 () Bool)

(assert (=> b!4598026 m!5423977))

(assert (=> b!4597751 d!1447567))

(declare-fun bm!320855 () Bool)

(declare-fun call!320860 () Bool)

(declare-fun e!2868025 () List!51205)

(assert (=> bm!320855 (= call!320860 (contains!14029 e!2868025 key!3287))))

(declare-fun c!787504 () Bool)

(declare-fun c!787502 () Bool)

(assert (=> bm!320855 (= c!787504 c!787502)))

(declare-fun b!4598027 () Bool)

(declare-fun e!2868028 () Unit!108077)

(declare-fun Unit!108093 () Unit!108077)

(assert (=> b!4598027 (= e!2868028 Unit!108093)))

(declare-fun d!1447569 () Bool)

(declare-fun e!2868023 () Bool)

(assert (=> d!1447569 e!2868023))

(declare-fun res!1923199 () Bool)

(assert (=> d!1447569 (=> res!1923199 e!2868023)))

(declare-fun e!2868024 () Bool)

(assert (=> d!1447569 (= res!1923199 e!2868024)))

(declare-fun res!1923201 () Bool)

(assert (=> d!1447569 (=> (not res!1923201) (not e!2868024))))

(declare-fun lt!1757906 () Bool)

(assert (=> d!1447569 (= res!1923201 (not lt!1757906))))

(declare-fun lt!1757908 () Bool)

(assert (=> d!1447569 (= lt!1757906 lt!1757908)))

(declare-fun lt!1757910 () Unit!108077)

(declare-fun e!2868026 () Unit!108077)

(assert (=> d!1447569 (= lt!1757910 e!2868026)))

(assert (=> d!1447569 (= c!787502 lt!1757908)))

(assert (=> d!1447569 (= lt!1757908 (containsKey!2158 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) key!3287))))

(assert (=> d!1447569 (= (contains!14027 (extractMap!1378 (toList!4651 lm!1477)) key!3287) lt!1757906)))

(declare-fun b!4598028 () Bool)

(declare-fun e!2868027 () Bool)

(assert (=> b!4598028 (= e!2868027 (contains!14029 (keys!17884 (extractMap!1378 (toList!4651 lm!1477))) key!3287))))

(declare-fun b!4598029 () Bool)

(assert (=> b!4598029 (= e!2868026 e!2868028)))

(declare-fun c!787503 () Bool)

(assert (=> b!4598029 (= c!787503 call!320860)))

(declare-fun b!4598030 () Bool)

(assert (=> b!4598030 (= e!2868025 (getKeysList!573 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))))))

(declare-fun b!4598031 () Bool)

(assert (=> b!4598031 (= e!2868023 e!2868027)))

(declare-fun res!1923200 () Bool)

(assert (=> b!4598031 (=> (not res!1923200) (not e!2868027))))

(assert (=> b!4598031 (= res!1923200 (isDefined!8659 (getValueByKey!1311 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) key!3287)))))

(declare-fun b!4598032 () Bool)

(assert (=> b!4598032 (= e!2868024 (not (contains!14029 (keys!17884 (extractMap!1378 (toList!4651 lm!1477))) key!3287)))))

(declare-fun b!4598033 () Bool)

(assert (=> b!4598033 (= e!2868025 (keys!17884 (extractMap!1378 (toList!4651 lm!1477))))))

(declare-fun b!4598034 () Bool)

(declare-fun lt!1757904 () Unit!108077)

(assert (=> b!4598034 (= e!2868026 lt!1757904)))

(declare-fun lt!1757907 () Unit!108077)

(assert (=> b!4598034 (= lt!1757907 (lemmaContainsKeyImpliesGetValueByKeyDefined!1215 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) key!3287))))

(assert (=> b!4598034 (isDefined!8659 (getValueByKey!1311 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) key!3287))))

(declare-fun lt!1757903 () Unit!108077)

(assert (=> b!4598034 (= lt!1757903 lt!1757907)))

(assert (=> b!4598034 (= lt!1757904 (lemmaInListThenGetKeysListContains!569 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) key!3287))))

(assert (=> b!4598034 call!320860))

(declare-fun b!4598035 () Bool)

(assert (=> b!4598035 false))

(declare-fun lt!1757909 () Unit!108077)

(declare-fun lt!1757905 () Unit!108077)

(assert (=> b!4598035 (= lt!1757909 lt!1757905)))

(assert (=> b!4598035 (containsKey!2158 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) key!3287)))

(assert (=> b!4598035 (= lt!1757905 (lemmaInGetKeysListThenContainsKey!572 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) key!3287))))

(declare-fun Unit!108094 () Unit!108077)

(assert (=> b!4598035 (= e!2868028 Unit!108094)))

(assert (= (and d!1447569 c!787502) b!4598034))

(assert (= (and d!1447569 (not c!787502)) b!4598029))

(assert (= (and b!4598029 c!787503) b!4598035))

(assert (= (and b!4598029 (not c!787503)) b!4598027))

(assert (= (or b!4598034 b!4598029) bm!320855))

(assert (= (and bm!320855 c!787504) b!4598030))

(assert (= (and bm!320855 (not c!787504)) b!4598033))

(assert (= (and d!1447569 res!1923201) b!4598032))

(assert (= (and d!1447569 (not res!1923199)) b!4598031))

(assert (= (and b!4598031 res!1923200) b!4598028))

(assert (=> b!4598033 m!5423561))

(declare-fun m!5423979 () Bool)

(assert (=> b!4598033 m!5423979))

(assert (=> b!4598028 m!5423561))

(assert (=> b!4598028 m!5423979))

(assert (=> b!4598028 m!5423979))

(declare-fun m!5423981 () Bool)

(assert (=> b!4598028 m!5423981))

(declare-fun m!5423983 () Bool)

(assert (=> bm!320855 m!5423983))

(declare-fun m!5423985 () Bool)

(assert (=> b!4598034 m!5423985))

(declare-fun m!5423987 () Bool)

(assert (=> b!4598034 m!5423987))

(assert (=> b!4598034 m!5423987))

(declare-fun m!5423989 () Bool)

(assert (=> b!4598034 m!5423989))

(declare-fun m!5423991 () Bool)

(assert (=> b!4598034 m!5423991))

(declare-fun m!5423993 () Bool)

(assert (=> d!1447569 m!5423993))

(assert (=> b!4598035 m!5423993))

(declare-fun m!5423995 () Bool)

(assert (=> b!4598035 m!5423995))

(assert (=> b!4598031 m!5423987))

(assert (=> b!4598031 m!5423987))

(assert (=> b!4598031 m!5423989))

(declare-fun m!5423997 () Bool)

(assert (=> b!4598030 m!5423997))

(assert (=> b!4598032 m!5423561))

(assert (=> b!4598032 m!5423979))

(assert (=> b!4598032 m!5423979))

(assert (=> b!4598032 m!5423981))

(assert (=> b!4597762 d!1447569))

(declare-fun bs!1010593 () Bool)

(declare-fun d!1447571 () Bool)

(assert (= bs!1010593 (and d!1447571 d!1447443)))

(declare-fun lambda!186128 () Int)

(assert (=> bs!1010593 (= lambda!186128 lambda!186085)))

(declare-fun bs!1010594 () Bool)

(assert (= bs!1010594 (and d!1447571 d!1447559)))

(assert (=> bs!1010594 (= lambda!186128 lambda!186124)))

(declare-fun bs!1010595 () Bool)

(assert (= bs!1010595 (and d!1447571 start!458760)))

(assert (=> bs!1010595 (= lambda!186128 lambda!186082)))

(declare-fun bs!1010596 () Bool)

(assert (= bs!1010596 (and d!1447571 d!1447517)))

(assert (=> bs!1010596 (= lambda!186128 lambda!186109)))

(declare-fun bs!1010597 () Bool)

(assert (= bs!1010597 (and d!1447571 d!1447547)))

(assert (=> bs!1010597 (= lambda!186128 lambda!186120)))

(declare-fun bs!1010598 () Bool)

(assert (= bs!1010598 (and d!1447571 d!1447503)))

(assert (=> bs!1010598 (= lambda!186128 lambda!186105)))

(declare-fun bs!1010599 () Bool)

(assert (= bs!1010599 (and d!1447571 d!1447543)))

(assert (=> bs!1010599 (= lambda!186128 lambda!186119)))

(declare-fun bs!1010600 () Bool)

(assert (= bs!1010600 (and d!1447571 d!1447557)))

(assert (=> bs!1010600 (= lambda!186128 lambda!186123)))

(declare-fun bs!1010601 () Bool)

(assert (= bs!1010601 (and d!1447571 d!1447565)))

(assert (=> bs!1010601 (not (= lambda!186128 lambda!186127))))

(declare-fun lt!1757911 () ListMap!3913)

(assert (=> d!1447571 (invariantList!1124 (toList!4652 lt!1757911))))

(declare-fun e!2868029 () ListMap!3913)

(assert (=> d!1447571 (= lt!1757911 e!2868029)))

(declare-fun c!787505 () Bool)

(assert (=> d!1447571 (= c!787505 ((_ is Cons!51079) (toList!4651 lm!1477)))))

(assert (=> d!1447571 (forall!10598 (toList!4651 lm!1477) lambda!186128)))

(assert (=> d!1447571 (= (extractMap!1378 (toList!4651 lm!1477)) lt!1757911)))

(declare-fun b!4598036 () Bool)

(assert (=> b!4598036 (= e!2868029 (addToMapMapFromBucket!814 (_2!29156 (h!57043 (toList!4651 lm!1477))) (extractMap!1378 (t!358197 (toList!4651 lm!1477)))))))

(declare-fun b!4598037 () Bool)

(assert (=> b!4598037 (= e!2868029 (ListMap!3914 Nil!51078))))

(assert (= (and d!1447571 c!787505) b!4598036))

(assert (= (and d!1447571 (not c!787505)) b!4598037))

(declare-fun m!5423999 () Bool)

(assert (=> d!1447571 m!5423999))

(declare-fun m!5424001 () Bool)

(assert (=> d!1447571 m!5424001))

(assert (=> b!4598036 m!5423535))

(assert (=> b!4598036 m!5423535))

(declare-fun m!5424003 () Bool)

(assert (=> b!4598036 m!5424003))

(assert (=> b!4597762 d!1447571))

(declare-fun d!1447573 () Bool)

(declare-fun e!2868030 () Bool)

(assert (=> d!1447573 e!2868030))

(declare-fun res!1923203 () Bool)

(assert (=> d!1447573 (=> (not res!1923203) (not e!2868030))))

(declare-fun lt!1757915 () ListLongMap!3283)

(assert (=> d!1447573 (= res!1923203 (contains!14025 lt!1757915 (_1!29156 lt!1757696)))))

(declare-fun lt!1757912 () List!51203)

(assert (=> d!1447573 (= lt!1757915 (ListLongMap!3284 lt!1757912))))

(declare-fun lt!1757914 () Unit!108077)

(declare-fun lt!1757913 () Unit!108077)

(assert (=> d!1447573 (= lt!1757914 lt!1757913)))

(assert (=> d!1447573 (= (getValueByKey!1310 lt!1757912 (_1!29156 lt!1757696)) (Some!11389 (_2!29156 lt!1757696)))))

(assert (=> d!1447573 (= lt!1757913 (lemmaContainsTupThenGetReturnValue!796 lt!1757912 (_1!29156 lt!1757696) (_2!29156 lt!1757696)))))

(assert (=> d!1447573 (= lt!1757912 (insertStrictlySorted!488 (toList!4651 lt!1757703) (_1!29156 lt!1757696) (_2!29156 lt!1757696)))))

(assert (=> d!1447573 (= (+!1744 lt!1757703 lt!1757696) lt!1757915)))

(declare-fun b!4598038 () Bool)

(declare-fun res!1923202 () Bool)

(assert (=> b!4598038 (=> (not res!1923202) (not e!2868030))))

(assert (=> b!4598038 (= res!1923202 (= (getValueByKey!1310 (toList!4651 lt!1757915) (_1!29156 lt!1757696)) (Some!11389 (_2!29156 lt!1757696))))))

(declare-fun b!4598039 () Bool)

(assert (=> b!4598039 (= e!2868030 (contains!14026 (toList!4651 lt!1757915) lt!1757696))))

(assert (= (and d!1447573 res!1923203) b!4598038))

(assert (= (and b!4598038 res!1923202) b!4598039))

(declare-fun m!5424005 () Bool)

(assert (=> d!1447573 m!5424005))

(declare-fun m!5424007 () Bool)

(assert (=> d!1447573 m!5424007))

(declare-fun m!5424009 () Bool)

(assert (=> d!1447573 m!5424009))

(declare-fun m!5424011 () Bool)

(assert (=> d!1447573 m!5424011))

(declare-fun m!5424013 () Bool)

(assert (=> b!4598038 m!5424013))

(declare-fun m!5424015 () Bool)

(assert (=> b!4598039 m!5424015))

(assert (=> b!4597755 d!1447573))

(declare-fun d!1447575 () Bool)

(assert (=> d!1447575 (= (tail!7944 lm!1477) (ListLongMap!3284 (tail!7945 (toList!4651 lm!1477))))))

(declare-fun bs!1010602 () Bool)

(assert (= bs!1010602 d!1447575))

(declare-fun m!5424017 () Bool)

(assert (=> bs!1010602 m!5424017))

(assert (=> b!4597755 d!1447575))

(declare-fun bm!320856 () Bool)

(declare-fun call!320861 () Bool)

(declare-fun e!2868033 () List!51205)

(assert (=> bm!320856 (= call!320861 (contains!14029 e!2868033 key!3287))))

(declare-fun c!787508 () Bool)

(declare-fun c!787506 () Bool)

(assert (=> bm!320856 (= c!787508 c!787506)))

(declare-fun b!4598040 () Bool)

(declare-fun e!2868036 () Unit!108077)

(declare-fun Unit!108095 () Unit!108077)

(assert (=> b!4598040 (= e!2868036 Unit!108095)))

(declare-fun d!1447577 () Bool)

(declare-fun e!2868031 () Bool)

(assert (=> d!1447577 e!2868031))

(declare-fun res!1923204 () Bool)

(assert (=> d!1447577 (=> res!1923204 e!2868031)))

(declare-fun e!2868032 () Bool)

(assert (=> d!1447577 (= res!1923204 e!2868032)))

(declare-fun res!1923206 () Bool)

(assert (=> d!1447577 (=> (not res!1923206) (not e!2868032))))

(declare-fun lt!1757919 () Bool)

(assert (=> d!1447577 (= res!1923206 (not lt!1757919))))

(declare-fun lt!1757921 () Bool)

(assert (=> d!1447577 (= lt!1757919 lt!1757921)))

(declare-fun lt!1757923 () Unit!108077)

(declare-fun e!2868034 () Unit!108077)

(assert (=> d!1447577 (= lt!1757923 e!2868034)))

(assert (=> d!1447577 (= c!787506 lt!1757921)))

(assert (=> d!1447577 (= lt!1757921 (containsKey!2158 (toList!4652 lt!1757693) key!3287))))

(assert (=> d!1447577 (= (contains!14027 lt!1757693 key!3287) lt!1757919)))

(declare-fun b!4598041 () Bool)

(declare-fun e!2868035 () Bool)

(assert (=> b!4598041 (= e!2868035 (contains!14029 (keys!17884 lt!1757693) key!3287))))

(declare-fun b!4598042 () Bool)

(assert (=> b!4598042 (= e!2868034 e!2868036)))

(declare-fun c!787507 () Bool)

(assert (=> b!4598042 (= c!787507 call!320861)))

(declare-fun b!4598043 () Bool)

(assert (=> b!4598043 (= e!2868033 (getKeysList!573 (toList!4652 lt!1757693)))))

(declare-fun b!4598044 () Bool)

(assert (=> b!4598044 (= e!2868031 e!2868035)))

(declare-fun res!1923205 () Bool)

(assert (=> b!4598044 (=> (not res!1923205) (not e!2868035))))

(assert (=> b!4598044 (= res!1923205 (isDefined!8659 (getValueByKey!1311 (toList!4652 lt!1757693) key!3287)))))

(declare-fun b!4598045 () Bool)

(assert (=> b!4598045 (= e!2868032 (not (contains!14029 (keys!17884 lt!1757693) key!3287)))))

(declare-fun b!4598046 () Bool)

(assert (=> b!4598046 (= e!2868033 (keys!17884 lt!1757693))))

(declare-fun b!4598047 () Bool)

(declare-fun lt!1757917 () Unit!108077)

(assert (=> b!4598047 (= e!2868034 lt!1757917)))

(declare-fun lt!1757920 () Unit!108077)

(assert (=> b!4598047 (= lt!1757920 (lemmaContainsKeyImpliesGetValueByKeyDefined!1215 (toList!4652 lt!1757693) key!3287))))

(assert (=> b!4598047 (isDefined!8659 (getValueByKey!1311 (toList!4652 lt!1757693) key!3287))))

(declare-fun lt!1757916 () Unit!108077)

(assert (=> b!4598047 (= lt!1757916 lt!1757920)))

(assert (=> b!4598047 (= lt!1757917 (lemmaInListThenGetKeysListContains!569 (toList!4652 lt!1757693) key!3287))))

(assert (=> b!4598047 call!320861))

(declare-fun b!4598048 () Bool)

(assert (=> b!4598048 false))

(declare-fun lt!1757922 () Unit!108077)

(declare-fun lt!1757918 () Unit!108077)

(assert (=> b!4598048 (= lt!1757922 lt!1757918)))

(assert (=> b!4598048 (containsKey!2158 (toList!4652 lt!1757693) key!3287)))

(assert (=> b!4598048 (= lt!1757918 (lemmaInGetKeysListThenContainsKey!572 (toList!4652 lt!1757693) key!3287))))

(declare-fun Unit!108096 () Unit!108077)

(assert (=> b!4598048 (= e!2868036 Unit!108096)))

(assert (= (and d!1447577 c!787506) b!4598047))

(assert (= (and d!1447577 (not c!787506)) b!4598042))

(assert (= (and b!4598042 c!787507) b!4598048))

(assert (= (and b!4598042 (not c!787507)) b!4598040))

(assert (= (or b!4598047 b!4598042) bm!320856))

(assert (= (and bm!320856 c!787508) b!4598043))

(assert (= (and bm!320856 (not c!787508)) b!4598046))

(assert (= (and d!1447577 res!1923206) b!4598045))

(assert (= (and d!1447577 (not res!1923204)) b!4598044))

(assert (= (and b!4598044 res!1923205) b!4598041))

(declare-fun m!5424019 () Bool)

(assert (=> b!4598046 m!5424019))

(assert (=> b!4598041 m!5424019))

(assert (=> b!4598041 m!5424019))

(declare-fun m!5424021 () Bool)

(assert (=> b!4598041 m!5424021))

(declare-fun m!5424023 () Bool)

(assert (=> bm!320856 m!5424023))

(declare-fun m!5424025 () Bool)

(assert (=> b!4598047 m!5424025))

(declare-fun m!5424027 () Bool)

(assert (=> b!4598047 m!5424027))

(assert (=> b!4598047 m!5424027))

(declare-fun m!5424029 () Bool)

(assert (=> b!4598047 m!5424029))

(declare-fun m!5424031 () Bool)

(assert (=> b!4598047 m!5424031))

(declare-fun m!5424033 () Bool)

(assert (=> d!1447577 m!5424033))

(assert (=> b!4598048 m!5424033))

(declare-fun m!5424035 () Bool)

(assert (=> b!4598048 m!5424035))

(assert (=> b!4598044 m!5424027))

(assert (=> b!4598044 m!5424027))

(assert (=> b!4598044 m!5424029))

(declare-fun m!5424037 () Bool)

(assert (=> b!4598043 m!5424037))

(assert (=> b!4598045 m!5424019))

(assert (=> b!4598045 m!5424019))

(assert (=> b!4598045 m!5424021))

(assert (=> b!4597766 d!1447577))

(declare-fun bs!1010603 () Bool)

(declare-fun d!1447579 () Bool)

(assert (= bs!1010603 (and d!1447579 d!1447571)))

(declare-fun lambda!186129 () Int)

(assert (=> bs!1010603 (= lambda!186129 lambda!186128)))

(declare-fun bs!1010604 () Bool)

(assert (= bs!1010604 (and d!1447579 d!1447443)))

(assert (=> bs!1010604 (= lambda!186129 lambda!186085)))

(declare-fun bs!1010605 () Bool)

(assert (= bs!1010605 (and d!1447579 d!1447559)))

(assert (=> bs!1010605 (= lambda!186129 lambda!186124)))

(declare-fun bs!1010606 () Bool)

(assert (= bs!1010606 (and d!1447579 start!458760)))

(assert (=> bs!1010606 (= lambda!186129 lambda!186082)))

(declare-fun bs!1010607 () Bool)

(assert (= bs!1010607 (and d!1447579 d!1447517)))

(assert (=> bs!1010607 (= lambda!186129 lambda!186109)))

(declare-fun bs!1010608 () Bool)

(assert (= bs!1010608 (and d!1447579 d!1447547)))

(assert (=> bs!1010608 (= lambda!186129 lambda!186120)))

(declare-fun bs!1010609 () Bool)

(assert (= bs!1010609 (and d!1447579 d!1447503)))

(assert (=> bs!1010609 (= lambda!186129 lambda!186105)))

(declare-fun bs!1010610 () Bool)

(assert (= bs!1010610 (and d!1447579 d!1447543)))

(assert (=> bs!1010610 (= lambda!186129 lambda!186119)))

(declare-fun bs!1010611 () Bool)

(assert (= bs!1010611 (and d!1447579 d!1447557)))

(assert (=> bs!1010611 (= lambda!186129 lambda!186123)))

(declare-fun bs!1010612 () Bool)

(assert (= bs!1010612 (and d!1447579 d!1447565)))

(assert (=> bs!1010612 (not (= lambda!186129 lambda!186127))))

(declare-fun lt!1757924 () ListMap!3913)

(assert (=> d!1447579 (invariantList!1124 (toList!4652 lt!1757924))))

(declare-fun e!2868037 () ListMap!3913)

(assert (=> d!1447579 (= lt!1757924 e!2868037)))

(declare-fun c!787509 () Bool)

(assert (=> d!1447579 (= c!787509 ((_ is Cons!51079) (t!358197 (toList!4651 lm!1477))))))

(assert (=> d!1447579 (forall!10598 (t!358197 (toList!4651 lm!1477)) lambda!186129)))

(assert (=> d!1447579 (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) lt!1757924)))

(declare-fun b!4598049 () Bool)

(assert (=> b!4598049 (= e!2868037 (addToMapMapFromBucket!814 (_2!29156 (h!57043 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477))))))))

(declare-fun b!4598050 () Bool)

(assert (=> b!4598050 (= e!2868037 (ListMap!3914 Nil!51078))))

(assert (= (and d!1447579 c!787509) b!4598049))

(assert (= (and d!1447579 (not c!787509)) b!4598050))

(declare-fun m!5424039 () Bool)

(assert (=> d!1447579 m!5424039))

(declare-fun m!5424041 () Bool)

(assert (=> d!1447579 m!5424041))

(declare-fun m!5424043 () Bool)

(assert (=> b!4598049 m!5424043))

(assert (=> b!4598049 m!5424043))

(declare-fun m!5424045 () Bool)

(assert (=> b!4598049 m!5424045))

(assert (=> b!4597765 d!1447579))

(declare-fun bs!1010613 () Bool)

(declare-fun d!1447581 () Bool)

(assert (= bs!1010613 (and d!1447581 d!1447571)))

(declare-fun lambda!186130 () Int)

(assert (=> bs!1010613 (= lambda!186130 lambda!186128)))

(declare-fun bs!1010614 () Bool)

(assert (= bs!1010614 (and d!1447581 d!1447443)))

(assert (=> bs!1010614 (= lambda!186130 lambda!186085)))

(declare-fun bs!1010615 () Bool)

(assert (= bs!1010615 (and d!1447581 d!1447559)))

(assert (=> bs!1010615 (= lambda!186130 lambda!186124)))

(declare-fun bs!1010616 () Bool)

(assert (= bs!1010616 (and d!1447581 start!458760)))

(assert (=> bs!1010616 (= lambda!186130 lambda!186082)))

(declare-fun bs!1010617 () Bool)

(assert (= bs!1010617 (and d!1447581 d!1447517)))

(assert (=> bs!1010617 (= lambda!186130 lambda!186109)))

(declare-fun bs!1010618 () Bool)

(assert (= bs!1010618 (and d!1447581 d!1447547)))

(assert (=> bs!1010618 (= lambda!186130 lambda!186120)))

(declare-fun bs!1010619 () Bool)

(assert (= bs!1010619 (and d!1447581 d!1447579)))

(assert (=> bs!1010619 (= lambda!186130 lambda!186129)))

(declare-fun bs!1010620 () Bool)

(assert (= bs!1010620 (and d!1447581 d!1447503)))

(assert (=> bs!1010620 (= lambda!186130 lambda!186105)))

(declare-fun bs!1010621 () Bool)

(assert (= bs!1010621 (and d!1447581 d!1447543)))

(assert (=> bs!1010621 (= lambda!186130 lambda!186119)))

(declare-fun bs!1010622 () Bool)

(assert (= bs!1010622 (and d!1447581 d!1447557)))

(assert (=> bs!1010622 (= lambda!186130 lambda!186123)))

(declare-fun bs!1010623 () Bool)

(assert (= bs!1010623 (and d!1447581 d!1447565)))

(assert (=> bs!1010623 (not (= lambda!186130 lambda!186127))))

(declare-fun lt!1757925 () ListMap!3913)

(assert (=> d!1447581 (invariantList!1124 (toList!4652 lt!1757925))))

(declare-fun e!2868038 () ListMap!3913)

(assert (=> d!1447581 (= lt!1757925 e!2868038)))

(declare-fun c!787510 () Bool)

(assert (=> d!1447581 (= c!787510 ((_ is Cons!51079) (toList!4651 lt!1757703)))))

(assert (=> d!1447581 (forall!10598 (toList!4651 lt!1757703) lambda!186130)))

(assert (=> d!1447581 (= (extractMap!1378 (toList!4651 lt!1757703)) lt!1757925)))

(declare-fun b!4598051 () Bool)

(assert (=> b!4598051 (= e!2868038 (addToMapMapFromBucket!814 (_2!29156 (h!57043 (toList!4651 lt!1757703))) (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))))))

(declare-fun b!4598052 () Bool)

(assert (=> b!4598052 (= e!2868038 (ListMap!3914 Nil!51078))))

(assert (= (and d!1447581 c!787510) b!4598051))

(assert (= (and d!1447581 (not c!787510)) b!4598052))

(declare-fun m!5424047 () Bool)

(assert (=> d!1447581 m!5424047))

(declare-fun m!5424049 () Bool)

(assert (=> d!1447581 m!5424049))

(declare-fun m!5424051 () Bool)

(assert (=> b!4598051 m!5424051))

(assert (=> b!4598051 m!5424051))

(declare-fun m!5424053 () Bool)

(assert (=> b!4598051 m!5424053))

(assert (=> b!4597765 d!1447581))

(declare-fun d!1447583 () Bool)

(declare-fun res!1923211 () Bool)

(declare-fun e!2868043 () Bool)

(assert (=> d!1447583 (=> res!1923211 e!2868043)))

(assert (=> d!1447583 (= res!1923211 (and ((_ is Cons!51078) (_2!29156 (h!57043 (toList!4651 lm!1477)))) (= (_1!29155 (h!57042 (_2!29156 (h!57043 (toList!4651 lm!1477))))) key!3287)))))

(assert (=> d!1447583 (= (containsKey!2154 (_2!29156 (h!57043 (toList!4651 lm!1477))) key!3287) e!2868043)))

(declare-fun b!4598057 () Bool)

(declare-fun e!2868044 () Bool)

(assert (=> b!4598057 (= e!2868043 e!2868044)))

(declare-fun res!1923212 () Bool)

(assert (=> b!4598057 (=> (not res!1923212) (not e!2868044))))

(assert (=> b!4598057 (= res!1923212 ((_ is Cons!51078) (_2!29156 (h!57043 (toList!4651 lm!1477)))))))

(declare-fun b!4598058 () Bool)

(assert (=> b!4598058 (= e!2868044 (containsKey!2154 (t!358196 (_2!29156 (h!57043 (toList!4651 lm!1477)))) key!3287))))

(assert (= (and d!1447583 (not res!1923211)) b!4598057))

(assert (= (and b!4598057 res!1923212) b!4598058))

(declare-fun m!5424055 () Bool)

(assert (=> b!4598058 m!5424055))

(assert (=> b!4597754 d!1447583))

(declare-fun b!4598063 () Bool)

(declare-fun e!2868047 () Bool)

(declare-fun tp!1340431 () Bool)

(declare-fun tp!1340432 () Bool)

(assert (=> b!4598063 (= e!2868047 (and tp!1340431 tp!1340432))))

(assert (=> b!4597760 (= tp!1340417 e!2868047)))

(assert (= (and b!4597760 ((_ is Cons!51079) (toList!4651 lm!1477))) b!4598063))

(declare-fun e!2868050 () Bool)

(declare-fun tp!1340435 () Bool)

(declare-fun b!4598068 () Bool)

(assert (=> b!4598068 (= e!2868050 (and tp_is_empty!28565 tp_is_empty!28567 tp!1340435))))

(assert (=> b!4597764 (= tp!1340416 e!2868050)))

(assert (= (and b!4597764 ((_ is Cons!51078) (t!358196 newBucket!178))) b!4598068))

(declare-fun b_lambda!169321 () Bool)

(assert (= b_lambda!169311 (or start!458760 b_lambda!169321)))

(declare-fun bs!1010624 () Bool)

(declare-fun d!1447585 () Bool)

(assert (= bs!1010624 (and d!1447585 start!458760)))

(assert (=> bs!1010624 (= (dynLambda!21396 lambda!186082 lt!1757699) (noDuplicateKeys!1318 (_2!29156 lt!1757699)))))

(declare-fun m!5424057 () Bool)

(assert (=> bs!1010624 m!5424057))

(assert (=> d!1447473 d!1447585))

(declare-fun b_lambda!169323 () Bool)

(assert (= b_lambda!169319 (or start!458760 b_lambda!169323)))

(declare-fun bs!1010625 () Bool)

(declare-fun d!1447587 () Bool)

(assert (= bs!1010625 (and d!1447587 start!458760)))

(assert (=> bs!1010625 (= (dynLambda!21396 lambda!186082 (h!57043 (toList!4651 lm!1477))) (noDuplicateKeys!1318 (_2!29156 (h!57043 (toList!4651 lm!1477)))))))

(assert (=> bs!1010625 m!5423931))

(assert (=> b!4598017 d!1447587))

(check-sat (not d!1447551) (not b!4598044) (not b!4598003) (not b!4598033) (not b!4597917) (not b!4597992) (not d!1447455) (not b!4597998) (not d!1447571) (not d!1447481) (not b!4597990) (not b!4598028) (not d!1447573) (not b!4597934) (not bm!320855) (not b!4598036) (not b!4597986) (not d!1447465) (not d!1447577) (not d!1447559) (not b!4598011) (not b!4598058) (not b!4598063) (not d!1447581) (not b!4598039) (not b!4598045) (not b!4598034) (not d!1447569) (not b!4598018) (not b!4598002) (not b!4597993) (not b!4598048) (not d!1447547) (not d!1447563) (not b!4598051) (not b!4598025) (not bs!1010625) (not b!4598032) (not b!4598038) (not d!1447499) (not d!1447575) (not b!4597865) (not bm!320854) (not b!4597894) (not b!4597836) (not b!4597862) (not d!1447523) (not b!4597988) (not b!4598041) (not b!4598047) (not d!1447477) (not d!1447517) (not b!4597877) (not bs!1010624) (not b!4597932) (not d!1447451) tp_is_empty!28565 (not b!4597991) (not b!4598031) (not d!1447473) (not b!4598046) (not d!1447503) (not b!4598010) (not b!4598030) (not b!4597838) (not d!1447545) (not b_lambda!169321) (not b!4598068) (not d!1447543) (not b!4598043) (not b!4597915) (not b_lambda!169323) (not d!1447443) (not b!4597989) (not d!1447565) (not d!1447579) (not d!1447553) (not d!1447491) (not d!1447557) (not b!4598035) (not b!4598049) (not b!4598009) (not d!1447513) (not b!4598026) (not d!1447555) tp_is_empty!28567 (not bm!320856))
(check-sat)
(get-model)

(declare-fun b!4598393 () Bool)

(assert (=> b!4598393 true))

(declare-fun bs!1010998 () Bool)

(declare-fun b!4598390 () Bool)

(assert (= bs!1010998 (and b!4598390 b!4598393)))

(declare-fun lambda!186229 () Int)

(declare-fun lambda!186228 () Int)

(assert (=> bs!1010998 (= (= (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 lt!1757705))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705)))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705)))) (= lambda!186229 lambda!186228))))

(assert (=> b!4598390 true))

(declare-fun bs!1010999 () Bool)

(declare-fun b!4598395 () Bool)

(assert (= bs!1010999 (and b!4598395 b!4598393)))

(declare-fun lambda!186230 () Int)

(assert (=> bs!1010999 (= (= (toList!4652 (extractMap!1378 lt!1757705)) (t!358196 (toList!4652 (extractMap!1378 lt!1757705)))) (= lambda!186230 lambda!186228))))

(declare-fun bs!1011000 () Bool)

(assert (= bs!1011000 (and b!4598395 b!4598390)))

(assert (=> bs!1011000 (= (= (toList!4652 (extractMap!1378 lt!1757705)) (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 lt!1757705))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705))))) (= lambda!186230 lambda!186229))))

(assert (=> b!4598395 true))

(declare-fun b!4598388 () Bool)

(declare-fun e!2868245 () Unit!108077)

(declare-fun Unit!108152 () Unit!108077)

(assert (=> b!4598388 (= e!2868245 Unit!108152)))

(declare-fun b!4598389 () Bool)

(assert (=> b!4598389 false))

(declare-fun Unit!108153 () Unit!108077)

(assert (=> b!4598389 (= e!2868245 Unit!108153)))

(declare-fun e!2868246 () List!51205)

(assert (=> b!4598390 (= e!2868246 (Cons!51081 (_1!29155 (h!57042 (toList!4652 (extractMap!1378 lt!1757705)))) (getKeysList!573 (t!358196 (toList!4652 (extractMap!1378 lt!1757705))))))))

(declare-fun c!787593 () Bool)

(assert (=> b!4598390 (= c!787593 (containsKey!2158 (t!358196 (toList!4652 (extractMap!1378 lt!1757705))) (_1!29155 (h!57042 (toList!4652 (extractMap!1378 lt!1757705))))))))

(declare-fun lt!1758200 () Unit!108077)

(assert (=> b!4598390 (= lt!1758200 e!2868245)))

(declare-fun c!787592 () Bool)

(assert (=> b!4598390 (= c!787592 (contains!14029 (getKeysList!573 (t!358196 (toList!4652 (extractMap!1378 lt!1757705)))) (_1!29155 (h!57042 (toList!4652 (extractMap!1378 lt!1757705))))))))

(declare-fun lt!1758198 () Unit!108077)

(declare-fun e!2868244 () Unit!108077)

(assert (=> b!4598390 (= lt!1758198 e!2868244)))

(declare-fun lt!1758202 () List!51205)

(assert (=> b!4598390 (= lt!1758202 (getKeysList!573 (t!358196 (toList!4652 (extractMap!1378 lt!1757705)))))))

(declare-fun lt!1758199 () Unit!108077)

(declare-fun lemmaForallContainsAddHeadPreserves!232 (List!51202 List!51205 tuple2!51722) Unit!108077)

(assert (=> b!4598390 (= lt!1758199 (lemmaForallContainsAddHeadPreserves!232 (t!358196 (toList!4652 (extractMap!1378 lt!1757705))) lt!1758202 (h!57042 (toList!4652 (extractMap!1378 lt!1757705)))))))

(declare-fun forall!10602 (List!51205 Int) Bool)

(assert (=> b!4598390 (forall!10602 lt!1758202 lambda!186229)))

(declare-fun lt!1758203 () Unit!108077)

(assert (=> b!4598390 (= lt!1758203 lt!1758199)))

(declare-fun d!1447729 () Bool)

(declare-fun e!2868247 () Bool)

(assert (=> d!1447729 e!2868247))

(declare-fun res!1923367 () Bool)

(assert (=> d!1447729 (=> (not res!1923367) (not e!2868247))))

(declare-fun lt!1758201 () List!51205)

(declare-fun noDuplicate!812 (List!51205) Bool)

(assert (=> d!1447729 (= res!1923367 (noDuplicate!812 lt!1758201))))

(assert (=> d!1447729 (= lt!1758201 e!2868246)))

(declare-fun c!787591 () Bool)

(assert (=> d!1447729 (= c!787591 ((_ is Cons!51078) (toList!4652 (extractMap!1378 lt!1757705))))))

(assert (=> d!1447729 (invariantList!1124 (toList!4652 (extractMap!1378 lt!1757705)))))

(assert (=> d!1447729 (= (getKeysList!573 (toList!4652 (extractMap!1378 lt!1757705))) lt!1758201)))

(declare-fun b!4598391 () Bool)

(declare-fun Unit!108154 () Unit!108077)

(assert (=> b!4598391 (= e!2868244 Unit!108154)))

(declare-fun b!4598392 () Bool)

(declare-fun lambda!186231 () Int)

(declare-fun map!11284 (List!51202 Int) List!51205)

(assert (=> b!4598392 (= e!2868247 (= (content!8647 lt!1758201) (content!8647 (map!11284 (toList!4652 (extractMap!1378 lt!1757705)) lambda!186231))))))

(assert (=> b!4598393 false))

(declare-fun lt!1758197 () Unit!108077)

(declare-fun forallContained!2854 (List!51205 Int K!12445) Unit!108077)

(assert (=> b!4598393 (= lt!1758197 (forallContained!2854 (getKeysList!573 (t!358196 (toList!4652 (extractMap!1378 lt!1757705)))) lambda!186228 (_1!29155 (h!57042 (toList!4652 (extractMap!1378 lt!1757705))))))))

(declare-fun Unit!108155 () Unit!108077)

(assert (=> b!4598393 (= e!2868244 Unit!108155)))

(declare-fun b!4598394 () Bool)

(declare-fun res!1923366 () Bool)

(assert (=> b!4598394 (=> (not res!1923366) (not e!2868247))))

(declare-fun length!480 (List!51205) Int)

(declare-fun length!481 (List!51202) Int)

(assert (=> b!4598394 (= res!1923366 (= (length!480 lt!1758201) (length!481 (toList!4652 (extractMap!1378 lt!1757705)))))))

(declare-fun res!1923368 () Bool)

(assert (=> b!4598395 (=> (not res!1923368) (not e!2868247))))

(assert (=> b!4598395 (= res!1923368 (forall!10602 lt!1758201 lambda!186230))))

(declare-fun b!4598396 () Bool)

(assert (=> b!4598396 (= e!2868246 Nil!51081)))

(assert (= (and d!1447729 c!787591) b!4598390))

(assert (= (and d!1447729 (not c!787591)) b!4598396))

(assert (= (and b!4598390 c!787593) b!4598389))

(assert (= (and b!4598390 (not c!787593)) b!4598388))

(assert (= (and b!4598390 c!787592) b!4598393))

(assert (= (and b!4598390 (not c!787592)) b!4598391))

(assert (= (and d!1447729 res!1923367) b!4598394))

(assert (= (and b!4598394 res!1923366) b!4598395))

(assert (= (and b!4598395 res!1923368) b!4598392))

(declare-fun m!5424687 () Bool)

(assert (=> b!4598393 m!5424687))

(assert (=> b!4598393 m!5424687))

(declare-fun m!5424689 () Bool)

(assert (=> b!4598393 m!5424689))

(declare-fun m!5424691 () Bool)

(assert (=> d!1447729 m!5424691))

(declare-fun m!5424693 () Bool)

(assert (=> d!1447729 m!5424693))

(declare-fun m!5424695 () Bool)

(assert (=> b!4598392 m!5424695))

(declare-fun m!5424697 () Bool)

(assert (=> b!4598392 m!5424697))

(assert (=> b!4598392 m!5424697))

(declare-fun m!5424699 () Bool)

(assert (=> b!4598392 m!5424699))

(declare-fun m!5424701 () Bool)

(assert (=> b!4598390 m!5424701))

(declare-fun m!5424703 () Bool)

(assert (=> b!4598390 m!5424703))

(assert (=> b!4598390 m!5424687))

(assert (=> b!4598390 m!5424687))

(declare-fun m!5424705 () Bool)

(assert (=> b!4598390 m!5424705))

(declare-fun m!5424707 () Bool)

(assert (=> b!4598390 m!5424707))

(declare-fun m!5424709 () Bool)

(assert (=> b!4598395 m!5424709))

(declare-fun m!5424711 () Bool)

(assert (=> b!4598394 m!5424711))

(declare-fun m!5424713 () Bool)

(assert (=> b!4598394 m!5424713))

(assert (=> b!4597988 d!1447729))

(declare-fun bs!1011002 () Bool)

(declare-fun b!4598436 () Bool)

(assert (= bs!1011002 (and b!4598436 b!4598393)))

(declare-fun lambda!186236 () Int)

(assert (=> bs!1011002 (= (= (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705)))) (= lambda!186236 lambda!186228))))

(declare-fun bs!1011003 () Bool)

(assert (= bs!1011003 (and b!4598436 b!4598390)))

(assert (=> bs!1011003 (= (= (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 lt!1757705))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705))))) (= lambda!186236 lambda!186229))))

(declare-fun bs!1011004 () Bool)

(assert (= bs!1011004 (and b!4598436 b!4598395)))

(assert (=> bs!1011004 (= (= (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) (toList!4652 (extractMap!1378 lt!1757705))) (= lambda!186236 lambda!186230))))

(assert (=> b!4598436 true))

(declare-fun bs!1011005 () Bool)

(declare-fun b!4598437 () Bool)

(assert (= bs!1011005 (and b!4598437 b!4598392)))

(declare-fun lambda!186237 () Int)

(assert (=> bs!1011005 (= lambda!186237 lambda!186231)))

(declare-fun d!1447771 () Bool)

(declare-fun e!2868270 () Bool)

(assert (=> d!1447771 e!2868270))

(declare-fun res!1923385 () Bool)

(assert (=> d!1447771 (=> (not res!1923385) (not e!2868270))))

(declare-fun lt!1758215 () List!51205)

(assert (=> d!1447771 (= res!1923385 (noDuplicate!812 lt!1758215))))

(assert (=> d!1447771 (= lt!1758215 (getKeysList!573 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))))))

(assert (=> d!1447771 (= (keys!17884 (extractMap!1378 (toList!4651 lm!1477))) lt!1758215)))

(declare-fun b!4598435 () Bool)

(declare-fun res!1923386 () Bool)

(assert (=> b!4598435 (=> (not res!1923386) (not e!2868270))))

(assert (=> b!4598435 (= res!1923386 (= (length!480 lt!1758215) (length!481 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))))))

(declare-fun res!1923387 () Bool)

(assert (=> b!4598436 (=> (not res!1923387) (not e!2868270))))

(assert (=> b!4598436 (= res!1923387 (forall!10602 lt!1758215 lambda!186236))))

(assert (=> b!4598437 (= e!2868270 (= (content!8647 lt!1758215) (content!8647 (map!11284 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) lambda!186237))))))

(assert (= (and d!1447771 res!1923385) b!4598435))

(assert (= (and b!4598435 res!1923386) b!4598436))

(assert (= (and b!4598436 res!1923387) b!4598437))

(declare-fun m!5424741 () Bool)

(assert (=> d!1447771 m!5424741))

(assert (=> d!1447771 m!5423997))

(declare-fun m!5424743 () Bool)

(assert (=> b!4598435 m!5424743))

(declare-fun m!5424745 () Bool)

(assert (=> b!4598435 m!5424745))

(declare-fun m!5424747 () Bool)

(assert (=> b!4598436 m!5424747))

(declare-fun m!5424749 () Bool)

(assert (=> b!4598437 m!5424749))

(declare-fun m!5424751 () Bool)

(assert (=> b!4598437 m!5424751))

(assert (=> b!4598437 m!5424751))

(declare-fun m!5424753 () Bool)

(assert (=> b!4598437 m!5424753))

(assert (=> b!4598033 d!1447771))

(declare-fun d!1447783 () Bool)

(declare-fun c!787606 () Bool)

(assert (=> d!1447783 (= c!787606 ((_ is Nil!51079) (toList!4651 lm!1477)))))

(declare-fun e!2868273 () (InoxSet tuple2!51724))

(assert (=> d!1447783 (= (content!8646 (toList!4651 lm!1477)) e!2868273)))

(declare-fun b!4598444 () Bool)

(assert (=> b!4598444 (= e!2868273 ((as const (Array tuple2!51724 Bool)) false))))

(declare-fun b!4598445 () Bool)

(assert (=> b!4598445 (= e!2868273 ((_ map or) (store ((as const (Array tuple2!51724 Bool)) false) (h!57043 (toList!4651 lm!1477)) true) (content!8646 (t!358197 (toList!4651 lm!1477)))))))

(assert (= (and d!1447783 c!787606) b!4598444))

(assert (= (and d!1447783 (not c!787606)) b!4598445))

(declare-fun m!5424755 () Bool)

(assert (=> b!4598445 m!5424755))

(declare-fun m!5424757 () Bool)

(assert (=> b!4598445 m!5424757))

(assert (=> d!1447477 d!1447783))

(declare-fun bs!1011006 () Bool)

(declare-fun b!4598447 () Bool)

(assert (= bs!1011006 (and b!4598447 b!4598393)))

(declare-fun lambda!186238 () Int)

(assert (=> bs!1011006 (= (= (toList!4652 lt!1757693) (t!358196 (toList!4652 (extractMap!1378 lt!1757705)))) (= lambda!186238 lambda!186228))))

(declare-fun bs!1011007 () Bool)

(assert (= bs!1011007 (and b!4598447 b!4598390)))

(assert (=> bs!1011007 (= (= (toList!4652 lt!1757693) (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 lt!1757705))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705))))) (= lambda!186238 lambda!186229))))

(declare-fun bs!1011008 () Bool)

(assert (= bs!1011008 (and b!4598447 b!4598395)))

(assert (=> bs!1011008 (= (= (toList!4652 lt!1757693) (toList!4652 (extractMap!1378 lt!1757705))) (= lambda!186238 lambda!186230))))

(declare-fun bs!1011009 () Bool)

(assert (= bs!1011009 (and b!4598447 b!4598436)))

(assert (=> bs!1011009 (= (= (toList!4652 lt!1757693) (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (= lambda!186238 lambda!186236))))

(assert (=> b!4598447 true))

(declare-fun bs!1011010 () Bool)

(declare-fun b!4598448 () Bool)

(assert (= bs!1011010 (and b!4598448 b!4598392)))

(declare-fun lambda!186239 () Int)

(assert (=> bs!1011010 (= lambda!186239 lambda!186231)))

(declare-fun bs!1011011 () Bool)

(assert (= bs!1011011 (and b!4598448 b!4598437)))

(assert (=> bs!1011011 (= lambda!186239 lambda!186237)))

(declare-fun d!1447785 () Bool)

(declare-fun e!2868274 () Bool)

(assert (=> d!1447785 e!2868274))

(declare-fun res!1923388 () Bool)

(assert (=> d!1447785 (=> (not res!1923388) (not e!2868274))))

(declare-fun lt!1758216 () List!51205)

(assert (=> d!1447785 (= res!1923388 (noDuplicate!812 lt!1758216))))

(assert (=> d!1447785 (= lt!1758216 (getKeysList!573 (toList!4652 lt!1757693)))))

(assert (=> d!1447785 (= (keys!17884 lt!1757693) lt!1758216)))

(declare-fun b!4598446 () Bool)

(declare-fun res!1923389 () Bool)

(assert (=> b!4598446 (=> (not res!1923389) (not e!2868274))))

(assert (=> b!4598446 (= res!1923389 (= (length!480 lt!1758216) (length!481 (toList!4652 lt!1757693))))))

(declare-fun res!1923390 () Bool)

(assert (=> b!4598447 (=> (not res!1923390) (not e!2868274))))

(assert (=> b!4598447 (= res!1923390 (forall!10602 lt!1758216 lambda!186238))))

(assert (=> b!4598448 (= e!2868274 (= (content!8647 lt!1758216) (content!8647 (map!11284 (toList!4652 lt!1757693) lambda!186239))))))

(assert (= (and d!1447785 res!1923388) b!4598446))

(assert (= (and b!4598446 res!1923389) b!4598447))

(assert (= (and b!4598447 res!1923390) b!4598448))

(declare-fun m!5424759 () Bool)

(assert (=> d!1447785 m!5424759))

(assert (=> d!1447785 m!5424037))

(declare-fun m!5424761 () Bool)

(assert (=> b!4598446 m!5424761))

(declare-fun m!5424763 () Bool)

(assert (=> b!4598446 m!5424763))

(declare-fun m!5424765 () Bool)

(assert (=> b!4598447 m!5424765))

(declare-fun m!5424767 () Bool)

(assert (=> b!4598448 m!5424767))

(declare-fun m!5424769 () Bool)

(assert (=> b!4598448 m!5424769))

(assert (=> b!4598448 m!5424769))

(declare-fun m!5424771 () Bool)

(assert (=> b!4598448 m!5424771))

(assert (=> b!4598046 d!1447785))

(declare-fun d!1447787 () Bool)

(declare-fun c!787609 () Bool)

(assert (=> d!1447787 (= c!787609 ((_ is Nil!51078) (toList!4652 (extractMap!1378 (Cons!51079 lt!1757696 Nil!51079)))))))

(declare-fun e!2868277 () (InoxSet tuple2!51722))

(assert (=> d!1447787 (= (content!8648 (toList!4652 (extractMap!1378 (Cons!51079 lt!1757696 Nil!51079)))) e!2868277)))

(declare-fun b!4598453 () Bool)

(assert (=> b!4598453 (= e!2868277 ((as const (Array tuple2!51722 Bool)) false))))

(declare-fun b!4598454 () Bool)

(assert (=> b!4598454 (= e!2868277 ((_ map or) (store ((as const (Array tuple2!51722 Bool)) false) (h!57042 (toList!4652 (extractMap!1378 (Cons!51079 lt!1757696 Nil!51079)))) true) (content!8648 (t!358196 (toList!4652 (extractMap!1378 (Cons!51079 lt!1757696 Nil!51079)))))))))

(assert (= (and d!1447787 c!787609) b!4598453))

(assert (= (and d!1447787 (not c!787609)) b!4598454))

(declare-fun m!5424773 () Bool)

(assert (=> b!4598454 m!5424773))

(declare-fun m!5424775 () Bool)

(assert (=> b!4598454 m!5424775))

(assert (=> d!1447555 d!1447787))

(declare-fun c!787610 () Bool)

(declare-fun d!1447789 () Bool)

(assert (=> d!1447789 (= c!787610 ((_ is Nil!51078) (toList!4652 (-!494 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)) key!3287))))))

(declare-fun e!2868278 () (InoxSet tuple2!51722))

(assert (=> d!1447789 (= (content!8648 (toList!4652 (-!494 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)) key!3287))) e!2868278)))

(declare-fun b!4598455 () Bool)

(assert (=> b!4598455 (= e!2868278 ((as const (Array tuple2!51722 Bool)) false))))

(declare-fun b!4598456 () Bool)

(assert (=> b!4598456 (= e!2868278 ((_ map or) (store ((as const (Array tuple2!51722 Bool)) false) (h!57042 (toList!4652 (-!494 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)) key!3287))) true) (content!8648 (t!358196 (toList!4652 (-!494 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)) key!3287))))))))

(assert (= (and d!1447789 c!787610) b!4598455))

(assert (= (and d!1447789 (not c!787610)) b!4598456))

(declare-fun m!5424777 () Bool)

(assert (=> b!4598456 m!5424777))

(declare-fun m!5424779 () Bool)

(assert (=> b!4598456 m!5424779))

(assert (=> d!1447555 d!1447789))

(declare-fun d!1447791 () Bool)

(declare-fun res!1923395 () Bool)

(declare-fun e!2868283 () Bool)

(assert (=> d!1447791 (=> res!1923395 e!2868283)))

(assert (=> d!1447791 (= res!1923395 (and ((_ is Cons!51078) (toList!4652 lt!1757693)) (= (_1!29155 (h!57042 (toList!4652 lt!1757693))) key!3287)))))

(assert (=> d!1447791 (= (containsKey!2158 (toList!4652 lt!1757693) key!3287) e!2868283)))

(declare-fun b!4598461 () Bool)

(declare-fun e!2868284 () Bool)

(assert (=> b!4598461 (= e!2868283 e!2868284)))

(declare-fun res!1923396 () Bool)

(assert (=> b!4598461 (=> (not res!1923396) (not e!2868284))))

(assert (=> b!4598461 (= res!1923396 ((_ is Cons!51078) (toList!4652 lt!1757693)))))

(declare-fun b!4598462 () Bool)

(assert (=> b!4598462 (= e!2868284 (containsKey!2158 (t!358196 (toList!4652 lt!1757693)) key!3287))))

(assert (= (and d!1447791 (not res!1923395)) b!4598461))

(assert (= (and b!4598461 res!1923396) b!4598462))

(declare-fun m!5424781 () Bool)

(assert (=> b!4598462 m!5424781))

(assert (=> b!4598048 d!1447791))

(declare-fun d!1447793 () Bool)

(assert (=> d!1447793 (containsKey!2158 (toList!4652 lt!1757693) key!3287)))

(declare-fun lt!1758219 () Unit!108077)

(declare-fun choose!30817 (List!51202 K!12445) Unit!108077)

(assert (=> d!1447793 (= lt!1758219 (choose!30817 (toList!4652 lt!1757693) key!3287))))

(assert (=> d!1447793 (invariantList!1124 (toList!4652 lt!1757693))))

(assert (=> d!1447793 (= (lemmaInGetKeysListThenContainsKey!572 (toList!4652 lt!1757693) key!3287) lt!1758219)))

(declare-fun bs!1011012 () Bool)

(assert (= bs!1011012 d!1447793))

(assert (=> bs!1011012 m!5424033))

(declare-fun m!5424783 () Bool)

(assert (=> bs!1011012 m!5424783))

(declare-fun m!5424785 () Bool)

(assert (=> bs!1011012 m!5424785))

(assert (=> b!4598048 d!1447793))

(declare-fun d!1447795 () Bool)

(declare-fun res!1923397 () Bool)

(declare-fun e!2868285 () Bool)

(assert (=> d!1447795 (=> res!1923397 e!2868285)))

(assert (=> d!1447795 (= res!1923397 (and ((_ is Cons!51078) (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (= (_1!29155 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) key!3287)))))

(assert (=> d!1447795 (= (containsKey!2158 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) key!3287) e!2868285)))

(declare-fun b!4598463 () Bool)

(declare-fun e!2868286 () Bool)

(assert (=> b!4598463 (= e!2868285 e!2868286)))

(declare-fun res!1923398 () Bool)

(assert (=> b!4598463 (=> (not res!1923398) (not e!2868286))))

(assert (=> b!4598463 (= res!1923398 ((_ is Cons!51078) (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))))))

(declare-fun b!4598464 () Bool)

(assert (=> b!4598464 (= e!2868286 (containsKey!2158 (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) key!3287))))

(assert (= (and d!1447795 (not res!1923397)) b!4598463))

(assert (= (and b!4598463 res!1923398) b!4598464))

(declare-fun m!5424787 () Bool)

(assert (=> b!4598464 m!5424787))

(assert (=> b!4598035 d!1447795))

(declare-fun d!1447797 () Bool)

(assert (=> d!1447797 (containsKey!2158 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) key!3287)))

(declare-fun lt!1758220 () Unit!108077)

(assert (=> d!1447797 (= lt!1758220 (choose!30817 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) key!3287))))

(assert (=> d!1447797 (invariantList!1124 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))))

(assert (=> d!1447797 (= (lemmaInGetKeysListThenContainsKey!572 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) key!3287) lt!1758220)))

(declare-fun bs!1011013 () Bool)

(assert (= bs!1011013 d!1447797))

(assert (=> bs!1011013 m!5423993))

(declare-fun m!5424789 () Bool)

(assert (=> bs!1011013 m!5424789))

(declare-fun m!5424791 () Bool)

(assert (=> bs!1011013 m!5424791))

(assert (=> b!4598035 d!1447797))

(declare-fun d!1447799 () Bool)

(declare-fun lt!1758223 () Bool)

(assert (=> d!1447799 (= lt!1758223 (select (content!8647 (keys!17884 (extractMap!1378 lt!1757705))) key!3287))))

(declare-fun e!2868292 () Bool)

(assert (=> d!1447799 (= lt!1758223 e!2868292)))

(declare-fun res!1923403 () Bool)

(assert (=> d!1447799 (=> (not res!1923403) (not e!2868292))))

(assert (=> d!1447799 (= res!1923403 ((_ is Cons!51081) (keys!17884 (extractMap!1378 lt!1757705))))))

(assert (=> d!1447799 (= (contains!14029 (keys!17884 (extractMap!1378 lt!1757705)) key!3287) lt!1758223)))

(declare-fun b!4598469 () Bool)

(declare-fun e!2868291 () Bool)

(assert (=> b!4598469 (= e!2868292 e!2868291)))

(declare-fun res!1923404 () Bool)

(assert (=> b!4598469 (=> res!1923404 e!2868291)))

(assert (=> b!4598469 (= res!1923404 (= (h!57047 (keys!17884 (extractMap!1378 lt!1757705))) key!3287))))

(declare-fun b!4598470 () Bool)

(assert (=> b!4598470 (= e!2868291 (contains!14029 (t!358199 (keys!17884 (extractMap!1378 lt!1757705))) key!3287))))

(assert (= (and d!1447799 res!1923403) b!4598469))

(assert (= (and b!4598469 (not res!1923404)) b!4598470))

(assert (=> d!1447799 m!5423879))

(declare-fun m!5424793 () Bool)

(assert (=> d!1447799 m!5424793))

(declare-fun m!5424795 () Bool)

(assert (=> d!1447799 m!5424795))

(declare-fun m!5424797 () Bool)

(assert (=> b!4598470 m!5424797))

(assert (=> b!4597990 d!1447799))

(declare-fun bs!1011014 () Bool)

(declare-fun b!4598472 () Bool)

(assert (= bs!1011014 (and b!4598472 b!4598390)))

(declare-fun lambda!186240 () Int)

(assert (=> bs!1011014 (= (= (toList!4652 (extractMap!1378 lt!1757705)) (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 lt!1757705))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705))))) (= lambda!186240 lambda!186229))))

(declare-fun bs!1011015 () Bool)

(assert (= bs!1011015 (and b!4598472 b!4598395)))

(assert (=> bs!1011015 (= lambda!186240 lambda!186230)))

(declare-fun bs!1011016 () Bool)

(assert (= bs!1011016 (and b!4598472 b!4598447)))

(assert (=> bs!1011016 (= (= (toList!4652 (extractMap!1378 lt!1757705)) (toList!4652 lt!1757693)) (= lambda!186240 lambda!186238))))

(declare-fun bs!1011017 () Bool)

(assert (= bs!1011017 (and b!4598472 b!4598436)))

(assert (=> bs!1011017 (= (= (toList!4652 (extractMap!1378 lt!1757705)) (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (= lambda!186240 lambda!186236))))

(declare-fun bs!1011018 () Bool)

(assert (= bs!1011018 (and b!4598472 b!4598393)))

(assert (=> bs!1011018 (= (= (toList!4652 (extractMap!1378 lt!1757705)) (t!358196 (toList!4652 (extractMap!1378 lt!1757705)))) (= lambda!186240 lambda!186228))))

(assert (=> b!4598472 true))

(declare-fun bs!1011019 () Bool)

(declare-fun b!4598473 () Bool)

(assert (= bs!1011019 (and b!4598473 b!4598392)))

(declare-fun lambda!186241 () Int)

(assert (=> bs!1011019 (= lambda!186241 lambda!186231)))

(declare-fun bs!1011020 () Bool)

(assert (= bs!1011020 (and b!4598473 b!4598437)))

(assert (=> bs!1011020 (= lambda!186241 lambda!186237)))

(declare-fun bs!1011021 () Bool)

(assert (= bs!1011021 (and b!4598473 b!4598448)))

(assert (=> bs!1011021 (= lambda!186241 lambda!186239)))

(declare-fun d!1447801 () Bool)

(declare-fun e!2868293 () Bool)

(assert (=> d!1447801 e!2868293))

(declare-fun res!1923405 () Bool)

(assert (=> d!1447801 (=> (not res!1923405) (not e!2868293))))

(declare-fun lt!1758224 () List!51205)

(assert (=> d!1447801 (= res!1923405 (noDuplicate!812 lt!1758224))))

(assert (=> d!1447801 (= lt!1758224 (getKeysList!573 (toList!4652 (extractMap!1378 lt!1757705))))))

(assert (=> d!1447801 (= (keys!17884 (extractMap!1378 lt!1757705)) lt!1758224)))

(declare-fun b!4598471 () Bool)

(declare-fun res!1923406 () Bool)

(assert (=> b!4598471 (=> (not res!1923406) (not e!2868293))))

(assert (=> b!4598471 (= res!1923406 (= (length!480 lt!1758224) (length!481 (toList!4652 (extractMap!1378 lt!1757705)))))))

(declare-fun res!1923407 () Bool)

(assert (=> b!4598472 (=> (not res!1923407) (not e!2868293))))

(assert (=> b!4598472 (= res!1923407 (forall!10602 lt!1758224 lambda!186240))))

(assert (=> b!4598473 (= e!2868293 (= (content!8647 lt!1758224) (content!8647 (map!11284 (toList!4652 (extractMap!1378 lt!1757705)) lambda!186241))))))

(assert (= (and d!1447801 res!1923405) b!4598471))

(assert (= (and b!4598471 res!1923406) b!4598472))

(assert (= (and b!4598472 res!1923407) b!4598473))

(declare-fun m!5424799 () Bool)

(assert (=> d!1447801 m!5424799))

(assert (=> d!1447801 m!5423897))

(declare-fun m!5424801 () Bool)

(assert (=> b!4598471 m!5424801))

(assert (=> b!4598471 m!5424713))

(declare-fun m!5424803 () Bool)

(assert (=> b!4598472 m!5424803))

(declare-fun m!5424805 () Bool)

(assert (=> b!4598473 m!5424805))

(declare-fun m!5424807 () Bool)

(assert (=> b!4598473 m!5424807))

(assert (=> b!4598473 m!5424807))

(declare-fun m!5424809 () Bool)

(assert (=> b!4598473 m!5424809))

(assert (=> b!4597990 d!1447801))

(declare-fun d!1447803 () Bool)

(declare-fun lt!1758225 () Bool)

(assert (=> d!1447803 (= lt!1758225 (select (content!8646 (t!358197 (toList!4651 lm!1477))) lt!1757699))))

(declare-fun e!2868295 () Bool)

(assert (=> d!1447803 (= lt!1758225 e!2868295)))

(declare-fun res!1923408 () Bool)

(assert (=> d!1447803 (=> (not res!1923408) (not e!2868295))))

(assert (=> d!1447803 (= res!1923408 ((_ is Cons!51079) (t!358197 (toList!4651 lm!1477))))))

(assert (=> d!1447803 (= (contains!14026 (t!358197 (toList!4651 lm!1477)) lt!1757699) lt!1758225)))

(declare-fun b!4598474 () Bool)

(declare-fun e!2868294 () Bool)

(assert (=> b!4598474 (= e!2868295 e!2868294)))

(declare-fun res!1923409 () Bool)

(assert (=> b!4598474 (=> res!1923409 e!2868294)))

(assert (=> b!4598474 (= res!1923409 (= (h!57043 (t!358197 (toList!4651 lm!1477))) lt!1757699))))

(declare-fun b!4598475 () Bool)

(assert (=> b!4598475 (= e!2868294 (contains!14026 (t!358197 (t!358197 (toList!4651 lm!1477))) lt!1757699))))

(assert (= (and d!1447803 res!1923408) b!4598474))

(assert (= (and b!4598474 (not res!1923409)) b!4598475))

(assert (=> d!1447803 m!5424757))

(declare-fun m!5424811 () Bool)

(assert (=> d!1447803 m!5424811))

(declare-fun m!5424813 () Bool)

(assert (=> b!4598475 m!5424813))

(assert (=> b!4597877 d!1447803))

(declare-fun bs!1011086 () Bool)

(declare-fun b!4598603 () Bool)

(assert (= bs!1011086 (and b!4598603 d!1447491)))

(declare-fun lambda!186274 () Int)

(assert (=> bs!1011086 (not (= lambda!186274 lambda!186099))))

(assert (=> b!4598603 true))

(declare-fun bs!1011087 () Bool)

(declare-fun b!4598604 () Bool)

(assert (= bs!1011087 (and b!4598604 d!1447491)))

(declare-fun lambda!186275 () Int)

(assert (=> bs!1011087 (not (= lambda!186275 lambda!186099))))

(declare-fun bs!1011088 () Bool)

(assert (= bs!1011088 (and b!4598604 b!4598603)))

(assert (=> bs!1011088 (= lambda!186275 lambda!186274)))

(assert (=> b!4598604 true))

(declare-fun lambda!186276 () Int)

(assert (=> bs!1011087 (not (= lambda!186276 lambda!186099))))

(declare-fun lt!1758365 () ListMap!3913)

(assert (=> bs!1011088 (= (= lt!1758365 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186276 lambda!186274))))

(assert (=> b!4598604 (= (= lt!1758365 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186276 lambda!186275))))

(assert (=> b!4598604 true))

(declare-fun bs!1011089 () Bool)

(declare-fun d!1447805 () Bool)

(assert (= bs!1011089 (and d!1447805 d!1447491)))

(declare-fun lambda!186277 () Int)

(assert (=> bs!1011089 (not (= lambda!186277 lambda!186099))))

(declare-fun bs!1011090 () Bool)

(assert (= bs!1011090 (and d!1447805 b!4598603)))

(declare-fun lt!1758359 () ListMap!3913)

(assert (=> bs!1011090 (= (= lt!1758359 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186277 lambda!186274))))

(declare-fun bs!1011091 () Bool)

(assert (= bs!1011091 (and d!1447805 b!4598604)))

(assert (=> bs!1011091 (= (= lt!1758359 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186277 lambda!186275))))

(assert (=> bs!1011091 (= (= lt!1758359 lt!1758365) (= lambda!186277 lambda!186276))))

(assert (=> d!1447805 true))

(declare-fun b!4598602 () Bool)

(declare-fun e!2868373 () Bool)

(assert (=> b!4598602 (= e!2868373 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 lt!1757705))) lambda!186276))))

(declare-fun e!2868375 () ListMap!3913)

(assert (=> b!4598603 (= e!2868375 (extractMap!1378 (t!358197 lt!1757705)))))

(declare-fun lt!1758361 () Unit!108077)

(declare-fun call!320924 () Unit!108077)

(assert (=> b!4598603 (= lt!1758361 call!320924)))

(declare-fun call!320925 () Bool)

(assert (=> b!4598603 call!320925))

(declare-fun lt!1758348 () Unit!108077)

(assert (=> b!4598603 (= lt!1758348 lt!1758361)))

(declare-fun call!320926 () Bool)

(assert (=> b!4598603 call!320926))

(declare-fun lt!1758363 () Unit!108077)

(declare-fun Unit!108156 () Unit!108077)

(assert (=> b!4598603 (= lt!1758363 Unit!108156)))

(declare-fun e!2868374 () Bool)

(assert (=> d!1447805 e!2868374))

(declare-fun res!1923455 () Bool)

(assert (=> d!1447805 (=> (not res!1923455) (not e!2868374))))

(assert (=> d!1447805 (= res!1923455 (forall!10600 (_2!29156 (h!57043 lt!1757705)) lambda!186277))))

(assert (=> d!1447805 (= lt!1758359 e!2868375)))

(declare-fun c!787650 () Bool)

(assert (=> d!1447805 (= c!787650 ((_ is Nil!51078) (_2!29156 (h!57043 lt!1757705))))))

(assert (=> d!1447805 (noDuplicateKeys!1318 (_2!29156 (h!57043 lt!1757705)))))

(assert (=> d!1447805 (= (addToMapMapFromBucket!814 (_2!29156 (h!57043 lt!1757705)) (extractMap!1378 (t!358197 lt!1757705))) lt!1758359)))

(assert (=> b!4598604 (= e!2868375 lt!1758365)))

(declare-fun lt!1758362 () ListMap!3913)

(declare-fun +!1746 (ListMap!3913 tuple2!51722) ListMap!3913)

(assert (=> b!4598604 (= lt!1758362 (+!1746 (extractMap!1378 (t!358197 lt!1757705)) (h!57042 (_2!29156 (h!57043 lt!1757705)))))))

(assert (=> b!4598604 (= lt!1758365 (addToMapMapFromBucket!814 (t!358196 (_2!29156 (h!57043 lt!1757705))) (+!1746 (extractMap!1378 (t!358197 lt!1757705)) (h!57042 (_2!29156 (h!57043 lt!1757705))))))))

(declare-fun lt!1758358 () Unit!108077)

(assert (=> b!4598604 (= lt!1758358 call!320924)))

(assert (=> b!4598604 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 lt!1757705))) lambda!186275)))

(declare-fun lt!1758356 () Unit!108077)

(assert (=> b!4598604 (= lt!1758356 lt!1758358)))

(assert (=> b!4598604 (forall!10600 (toList!4652 lt!1758362) lambda!186276)))

(declare-fun lt!1758364 () Unit!108077)

(declare-fun Unit!108157 () Unit!108077)

(assert (=> b!4598604 (= lt!1758364 Unit!108157)))

(assert (=> b!4598604 (forall!10600 (t!358196 (_2!29156 (h!57043 lt!1757705))) lambda!186276)))

(declare-fun lt!1758347 () Unit!108077)

(declare-fun Unit!108158 () Unit!108077)

(assert (=> b!4598604 (= lt!1758347 Unit!108158)))

(declare-fun lt!1758360 () Unit!108077)

(declare-fun Unit!108159 () Unit!108077)

(assert (=> b!4598604 (= lt!1758360 Unit!108159)))

(declare-fun lt!1758352 () Unit!108077)

(declare-fun forallContained!2855 (List!51202 Int tuple2!51722) Unit!108077)

(assert (=> b!4598604 (= lt!1758352 (forallContained!2855 (toList!4652 lt!1758362) lambda!186276 (h!57042 (_2!29156 (h!57043 lt!1757705)))))))

(assert (=> b!4598604 (contains!14027 lt!1758362 (_1!29155 (h!57042 (_2!29156 (h!57043 lt!1757705)))))))

(declare-fun lt!1758354 () Unit!108077)

(declare-fun Unit!108160 () Unit!108077)

(assert (=> b!4598604 (= lt!1758354 Unit!108160)))

(assert (=> b!4598604 (contains!14027 lt!1758365 (_1!29155 (h!57042 (_2!29156 (h!57043 lt!1757705)))))))

(declare-fun lt!1758351 () Unit!108077)

(declare-fun Unit!108161 () Unit!108077)

(assert (=> b!4598604 (= lt!1758351 Unit!108161)))

(assert (=> b!4598604 (forall!10600 (_2!29156 (h!57043 lt!1757705)) lambda!186276)))

(declare-fun lt!1758346 () Unit!108077)

(declare-fun Unit!108162 () Unit!108077)

(assert (=> b!4598604 (= lt!1758346 Unit!108162)))

(assert (=> b!4598604 (forall!10600 (toList!4652 lt!1758362) lambda!186276)))

(declare-fun lt!1758355 () Unit!108077)

(declare-fun Unit!108163 () Unit!108077)

(assert (=> b!4598604 (= lt!1758355 Unit!108163)))

(declare-fun lt!1758357 () Unit!108077)

(declare-fun Unit!108164 () Unit!108077)

(assert (=> b!4598604 (= lt!1758357 Unit!108164)))

(declare-fun lt!1758350 () Unit!108077)

(declare-fun addForallContainsKeyThenBeforeAdding!436 (ListMap!3913 ListMap!3913 K!12445 V!12691) Unit!108077)

(assert (=> b!4598604 (= lt!1758350 (addForallContainsKeyThenBeforeAdding!436 (extractMap!1378 (t!358197 lt!1757705)) lt!1758365 (_1!29155 (h!57042 (_2!29156 (h!57043 lt!1757705)))) (_2!29155 (h!57042 (_2!29156 (h!57043 lt!1757705))))))))

(assert (=> b!4598604 call!320925))

(declare-fun lt!1758345 () Unit!108077)

(assert (=> b!4598604 (= lt!1758345 lt!1758350)))

(assert (=> b!4598604 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 lt!1757705))) lambda!186276)))

(declare-fun lt!1758349 () Unit!108077)

(declare-fun Unit!108165 () Unit!108077)

(assert (=> b!4598604 (= lt!1758349 Unit!108165)))

(declare-fun res!1923457 () Bool)

(assert (=> b!4598604 (= res!1923457 call!320926)))

(assert (=> b!4598604 (=> (not res!1923457) (not e!2868373))))

(assert (=> b!4598604 e!2868373))

(declare-fun lt!1758353 () Unit!108077)

(declare-fun Unit!108166 () Unit!108077)

(assert (=> b!4598604 (= lt!1758353 Unit!108166)))

(declare-fun b!4598605 () Bool)

(declare-fun res!1923456 () Bool)

(assert (=> b!4598605 (=> (not res!1923456) (not e!2868374))))

(assert (=> b!4598605 (= res!1923456 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 lt!1757705))) lambda!186277))))

(declare-fun bm!320919 () Bool)

(assert (=> bm!320919 (= call!320925 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 lt!1757705))) (ite c!787650 lambda!186274 lambda!186276)))))

(declare-fun bm!320920 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!436 (ListMap!3913) Unit!108077)

(assert (=> bm!320920 (= call!320924 (lemmaContainsAllItsOwnKeys!436 (extractMap!1378 (t!358197 lt!1757705))))))

(declare-fun b!4598606 () Bool)

(assert (=> b!4598606 (= e!2868374 (invariantList!1124 (toList!4652 lt!1758359)))))

(declare-fun bm!320921 () Bool)

(assert (=> bm!320921 (= call!320926 (forall!10600 (ite c!787650 (toList!4652 (extractMap!1378 (t!358197 lt!1757705))) (_2!29156 (h!57043 lt!1757705))) (ite c!787650 lambda!186274 lambda!186276)))))

(assert (= (and d!1447805 c!787650) b!4598603))

(assert (= (and d!1447805 (not c!787650)) b!4598604))

(assert (= (and b!4598604 res!1923457) b!4598602))

(assert (= (or b!4598603 b!4598604) bm!320919))

(assert (= (or b!4598603 b!4598604) bm!320921))

(assert (= (or b!4598603 b!4598604) bm!320920))

(assert (= (and d!1447805 res!1923455) b!4598605))

(assert (= (and b!4598605 res!1923456) b!4598606))

(declare-fun m!5424979 () Bool)

(assert (=> b!4598604 m!5424979))

(declare-fun m!5424981 () Bool)

(assert (=> b!4598604 m!5424981))

(assert (=> b!4598604 m!5423925))

(declare-fun m!5424983 () Bool)

(assert (=> b!4598604 m!5424983))

(assert (=> b!4598604 m!5424979))

(declare-fun m!5424985 () Bool)

(assert (=> b!4598604 m!5424985))

(assert (=> b!4598604 m!5423925))

(declare-fun m!5424987 () Bool)

(assert (=> b!4598604 m!5424987))

(declare-fun m!5424989 () Bool)

(assert (=> b!4598604 m!5424989))

(declare-fun m!5424991 () Bool)

(assert (=> b!4598604 m!5424991))

(assert (=> b!4598604 m!5424987))

(declare-fun m!5424993 () Bool)

(assert (=> b!4598604 m!5424993))

(declare-fun m!5424995 () Bool)

(assert (=> b!4598604 m!5424995))

(declare-fun m!5424997 () Bool)

(assert (=> b!4598604 m!5424997))

(declare-fun m!5424999 () Bool)

(assert (=> b!4598604 m!5424999))

(declare-fun m!5425001 () Bool)

(assert (=> b!4598606 m!5425001))

(declare-fun m!5425003 () Bool)

(assert (=> bm!320919 m!5425003))

(declare-fun m!5425005 () Bool)

(assert (=> d!1447805 m!5425005))

(declare-fun m!5425007 () Bool)

(assert (=> d!1447805 m!5425007))

(assert (=> b!4598602 m!5424995))

(assert (=> bm!320920 m!5423925))

(declare-fun m!5425009 () Bool)

(assert (=> bm!320920 m!5425009))

(declare-fun m!5425011 () Bool)

(assert (=> bm!320921 m!5425011))

(declare-fun m!5425013 () Bool)

(assert (=> b!4598605 m!5425013))

(assert (=> b!4598003 d!1447805))

(declare-fun bs!1011092 () Bool)

(declare-fun d!1447881 () Bool)

(assert (= bs!1011092 (and d!1447881 d!1447571)))

(declare-fun lambda!186278 () Int)

(assert (=> bs!1011092 (= lambda!186278 lambda!186128)))

(declare-fun bs!1011093 () Bool)

(assert (= bs!1011093 (and d!1447881 d!1447443)))

(assert (=> bs!1011093 (= lambda!186278 lambda!186085)))

(declare-fun bs!1011094 () Bool)

(assert (= bs!1011094 (and d!1447881 d!1447559)))

(assert (=> bs!1011094 (= lambda!186278 lambda!186124)))

(declare-fun bs!1011095 () Bool)

(assert (= bs!1011095 (and d!1447881 start!458760)))

(assert (=> bs!1011095 (= lambda!186278 lambda!186082)))

(declare-fun bs!1011096 () Bool)

(assert (= bs!1011096 (and d!1447881 d!1447517)))

(assert (=> bs!1011096 (= lambda!186278 lambda!186109)))

(declare-fun bs!1011097 () Bool)

(assert (= bs!1011097 (and d!1447881 d!1447547)))

(assert (=> bs!1011097 (= lambda!186278 lambda!186120)))

(declare-fun bs!1011098 () Bool)

(assert (= bs!1011098 (and d!1447881 d!1447503)))

(assert (=> bs!1011098 (= lambda!186278 lambda!186105)))

(declare-fun bs!1011099 () Bool)

(assert (= bs!1011099 (and d!1447881 d!1447543)))

(assert (=> bs!1011099 (= lambda!186278 lambda!186119)))

(declare-fun bs!1011100 () Bool)

(assert (= bs!1011100 (and d!1447881 d!1447557)))

(assert (=> bs!1011100 (= lambda!186278 lambda!186123)))

(declare-fun bs!1011101 () Bool)

(assert (= bs!1011101 (and d!1447881 d!1447565)))

(assert (=> bs!1011101 (not (= lambda!186278 lambda!186127))))

(declare-fun bs!1011102 () Bool)

(assert (= bs!1011102 (and d!1447881 d!1447581)))

(assert (=> bs!1011102 (= lambda!186278 lambda!186130)))

(declare-fun bs!1011103 () Bool)

(assert (= bs!1011103 (and d!1447881 d!1447579)))

(assert (=> bs!1011103 (= lambda!186278 lambda!186129)))

(declare-fun lt!1758366 () ListMap!3913)

(assert (=> d!1447881 (invariantList!1124 (toList!4652 lt!1758366))))

(declare-fun e!2868376 () ListMap!3913)

(assert (=> d!1447881 (= lt!1758366 e!2868376)))

(declare-fun c!787651 () Bool)

(assert (=> d!1447881 (= c!787651 ((_ is Cons!51079) (t!358197 lt!1757705)))))

(assert (=> d!1447881 (forall!10598 (t!358197 lt!1757705) lambda!186278)))

(assert (=> d!1447881 (= (extractMap!1378 (t!358197 lt!1757705)) lt!1758366)))

(declare-fun b!4598609 () Bool)

(assert (=> b!4598609 (= e!2868376 (addToMapMapFromBucket!814 (_2!29156 (h!57043 (t!358197 lt!1757705))) (extractMap!1378 (t!358197 (t!358197 lt!1757705)))))))

(declare-fun b!4598610 () Bool)

(assert (=> b!4598610 (= e!2868376 (ListMap!3914 Nil!51078))))

(assert (= (and d!1447881 c!787651) b!4598609))

(assert (= (and d!1447881 (not c!787651)) b!4598610))

(declare-fun m!5425015 () Bool)

(assert (=> d!1447881 m!5425015))

(declare-fun m!5425017 () Bool)

(assert (=> d!1447881 m!5425017))

(declare-fun m!5425019 () Bool)

(assert (=> b!4598609 m!5425019))

(assert (=> b!4598609 m!5425019))

(declare-fun m!5425021 () Bool)

(assert (=> b!4598609 m!5425021))

(assert (=> b!4598003 d!1447881))

(declare-fun d!1447883 () Bool)

(declare-fun e!2868378 () Bool)

(assert (=> d!1447883 e!2868378))

(declare-fun res!1923458 () Bool)

(assert (=> d!1447883 (=> res!1923458 e!2868378)))

(declare-fun lt!1758367 () Bool)

(assert (=> d!1447883 (= res!1923458 (not lt!1758367))))

(declare-fun lt!1758369 () Bool)

(assert (=> d!1447883 (= lt!1758367 lt!1758369)))

(declare-fun lt!1758368 () Unit!108077)

(declare-fun e!2868377 () Unit!108077)

(assert (=> d!1447883 (= lt!1758368 e!2868377)))

(declare-fun c!787652 () Bool)

(assert (=> d!1447883 (= c!787652 lt!1758369)))

(assert (=> d!1447883 (= lt!1758369 (containsKey!2157 (toList!4651 lm!1477) (hash!3213 hashF!1107 key!3287)))))

(assert (=> d!1447883 (= (contains!14025 lm!1477 (hash!3213 hashF!1107 key!3287)) lt!1758367)))

(declare-fun b!4598611 () Bool)

(declare-fun lt!1758370 () Unit!108077)

(assert (=> b!4598611 (= e!2868377 lt!1758370)))

(assert (=> b!4598611 (= lt!1758370 (lemmaContainsKeyImpliesGetValueByKeyDefined!1214 (toList!4651 lm!1477) (hash!3213 hashF!1107 key!3287)))))

(assert (=> b!4598611 (isDefined!8658 (getValueByKey!1310 (toList!4651 lm!1477) (hash!3213 hashF!1107 key!3287)))))

(declare-fun b!4598612 () Bool)

(declare-fun Unit!108168 () Unit!108077)

(assert (=> b!4598612 (= e!2868377 Unit!108168)))

(declare-fun b!4598613 () Bool)

(assert (=> b!4598613 (= e!2868378 (isDefined!8658 (getValueByKey!1310 (toList!4651 lm!1477) (hash!3213 hashF!1107 key!3287))))))

(assert (= (and d!1447883 c!787652) b!4598611))

(assert (= (and d!1447883 (not c!787652)) b!4598612))

(assert (= (and d!1447883 (not res!1923458)) b!4598613))

(assert (=> d!1447883 m!5423565))

(declare-fun m!5425023 () Bool)

(assert (=> d!1447883 m!5425023))

(assert (=> b!4598611 m!5423565))

(declare-fun m!5425025 () Bool)

(assert (=> b!4598611 m!5425025))

(assert (=> b!4598611 m!5423565))

(declare-fun m!5425027 () Bool)

(assert (=> b!4598611 m!5425027))

(assert (=> b!4598611 m!5425027))

(declare-fun m!5425029 () Bool)

(assert (=> b!4598611 m!5425029))

(assert (=> b!4598613 m!5423565))

(assert (=> b!4598613 m!5425027))

(assert (=> b!4598613 m!5425027))

(assert (=> b!4598613 m!5425029))

(assert (=> d!1447443 d!1447883))

(assert (=> d!1447443 d!1447499))

(declare-fun d!1447885 () Bool)

(assert (=> d!1447885 (contains!14025 lm!1477 (hash!3213 hashF!1107 key!3287))))

(assert (=> d!1447885 true))

(declare-fun _$27!1433 () Unit!108077)

(assert (=> d!1447885 (= (choose!30804 lm!1477 key!3287 hashF!1107) _$27!1433)))

(declare-fun bs!1011104 () Bool)

(assert (= bs!1011104 d!1447885))

(assert (=> bs!1011104 m!5423565))

(assert (=> bs!1011104 m!5423565))

(assert (=> bs!1011104 m!5423593))

(assert (=> d!1447443 d!1447885))

(declare-fun d!1447887 () Bool)

(declare-fun res!1923459 () Bool)

(declare-fun e!2868379 () Bool)

(assert (=> d!1447887 (=> res!1923459 e!2868379)))

(assert (=> d!1447887 (= res!1923459 ((_ is Nil!51079) (toList!4651 lm!1477)))))

(assert (=> d!1447887 (= (forall!10598 (toList!4651 lm!1477) lambda!186085) e!2868379)))

(declare-fun b!4598614 () Bool)

(declare-fun e!2868380 () Bool)

(assert (=> b!4598614 (= e!2868379 e!2868380)))

(declare-fun res!1923460 () Bool)

(assert (=> b!4598614 (=> (not res!1923460) (not e!2868380))))

(assert (=> b!4598614 (= res!1923460 (dynLambda!21396 lambda!186085 (h!57043 (toList!4651 lm!1477))))))

(declare-fun b!4598615 () Bool)

(assert (=> b!4598615 (= e!2868380 (forall!10598 (t!358197 (toList!4651 lm!1477)) lambda!186085))))

(assert (= (and d!1447887 (not res!1923459)) b!4598614))

(assert (= (and b!4598614 res!1923460) b!4598615))

(declare-fun b_lambda!169381 () Bool)

(assert (=> (not b_lambda!169381) (not b!4598614)))

(declare-fun m!5425031 () Bool)

(assert (=> b!4598614 m!5425031))

(declare-fun m!5425033 () Bool)

(assert (=> b!4598615 m!5425033))

(assert (=> d!1447443 d!1447887))

(declare-fun d!1447889 () Bool)

(assert (=> d!1447889 (isDefined!8658 (getValueByKey!1310 (toList!4651 lm!1477) lt!1757708))))

(declare-fun lt!1758373 () Unit!108077)

(declare-fun choose!30818 (List!51203 (_ BitVec 64)) Unit!108077)

(assert (=> d!1447889 (= lt!1758373 (choose!30818 (toList!4651 lm!1477) lt!1757708))))

(declare-fun e!2868383 () Bool)

(assert (=> d!1447889 e!2868383))

(declare-fun res!1923463 () Bool)

(assert (=> d!1447889 (=> (not res!1923463) (not e!2868383))))

(assert (=> d!1447889 (= res!1923463 (isStrictlySorted!540 (toList!4651 lm!1477)))))

(assert (=> d!1447889 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1214 (toList!4651 lm!1477) lt!1757708) lt!1758373)))

(declare-fun b!4598618 () Bool)

(assert (=> b!4598618 (= e!2868383 (containsKey!2157 (toList!4651 lm!1477) lt!1757708))))

(assert (= (and d!1447889 res!1923463) b!4598618))

(assert (=> d!1447889 m!5423635))

(assert (=> d!1447889 m!5423635))

(assert (=> d!1447889 m!5423637))

(declare-fun m!5425035 () Bool)

(assert (=> d!1447889 m!5425035))

(assert (=> d!1447889 m!5423659))

(assert (=> b!4598618 m!5423631))

(assert (=> b!4597836 d!1447889))

(declare-fun d!1447891 () Bool)

(declare-fun isEmpty!28865 (Option!11390) Bool)

(assert (=> d!1447891 (= (isDefined!8658 (getValueByKey!1310 (toList!4651 lm!1477) lt!1757708)) (not (isEmpty!28865 (getValueByKey!1310 (toList!4651 lm!1477) lt!1757708))))))

(declare-fun bs!1011105 () Bool)

(assert (= bs!1011105 d!1447891))

(assert (=> bs!1011105 m!5423635))

(declare-fun m!5425037 () Bool)

(assert (=> bs!1011105 m!5425037))

(assert (=> b!4597836 d!1447891))

(declare-fun b!4598630 () Bool)

(declare-fun e!2868389 () Option!11390)

(assert (=> b!4598630 (= e!2868389 None!11389)))

(declare-fun b!4598629 () Bool)

(assert (=> b!4598629 (= e!2868389 (getValueByKey!1310 (t!358197 (toList!4651 lm!1477)) lt!1757708))))

(declare-fun b!4598627 () Bool)

(declare-fun e!2868388 () Option!11390)

(assert (=> b!4598627 (= e!2868388 (Some!11389 (_2!29156 (h!57043 (toList!4651 lm!1477)))))))

(declare-fun d!1447893 () Bool)

(declare-fun c!787657 () Bool)

(assert (=> d!1447893 (= c!787657 (and ((_ is Cons!51079) (toList!4651 lm!1477)) (= (_1!29156 (h!57043 (toList!4651 lm!1477))) lt!1757708)))))

(assert (=> d!1447893 (= (getValueByKey!1310 (toList!4651 lm!1477) lt!1757708) e!2868388)))

(declare-fun b!4598628 () Bool)

(assert (=> b!4598628 (= e!2868388 e!2868389)))

(declare-fun c!787658 () Bool)

(assert (=> b!4598628 (= c!787658 (and ((_ is Cons!51079) (toList!4651 lm!1477)) (not (= (_1!29156 (h!57043 (toList!4651 lm!1477))) lt!1757708))))))

(assert (= (and d!1447893 c!787657) b!4598627))

(assert (= (and d!1447893 (not c!787657)) b!4598628))

(assert (= (and b!4598628 c!787658) b!4598629))

(assert (= (and b!4598628 (not c!787658)) b!4598630))

(declare-fun m!5425039 () Bool)

(assert (=> b!4598629 m!5425039))

(assert (=> b!4597836 d!1447893))

(assert (=> b!4597986 d!1447799))

(assert (=> b!4597986 d!1447801))

(declare-fun d!1447895 () Bool)

(declare-fun lt!1758374 () Bool)

(assert (=> d!1447895 (= lt!1758374 (select (content!8647 e!2867996) key!3287))))

(declare-fun e!2868391 () Bool)

(assert (=> d!1447895 (= lt!1758374 e!2868391)))

(declare-fun res!1923464 () Bool)

(assert (=> d!1447895 (=> (not res!1923464) (not e!2868391))))

(assert (=> d!1447895 (= res!1923464 ((_ is Cons!51081) e!2867996))))

(assert (=> d!1447895 (= (contains!14029 e!2867996 key!3287) lt!1758374)))

(declare-fun b!4598631 () Bool)

(declare-fun e!2868390 () Bool)

(assert (=> b!4598631 (= e!2868391 e!2868390)))

(declare-fun res!1923465 () Bool)

(assert (=> b!4598631 (=> res!1923465 e!2868390)))

(assert (=> b!4598631 (= res!1923465 (= (h!57047 e!2867996) key!3287))))

(declare-fun b!4598632 () Bool)

(assert (=> b!4598632 (= e!2868390 (contains!14029 (t!358199 e!2867996) key!3287))))

(assert (= (and d!1447895 res!1923464) b!4598631))

(assert (= (and b!4598631 (not res!1923465)) b!4598632))

(declare-fun m!5425041 () Bool)

(assert (=> d!1447895 m!5425041))

(declare-fun m!5425043 () Bool)

(assert (=> d!1447895 m!5425043))

(declare-fun m!5425045 () Bool)

(assert (=> b!4598632 m!5425045))

(assert (=> bm!320854 d!1447895))

(declare-fun d!1447897 () Bool)

(declare-fun isEmpty!28866 (Option!11391) Bool)

(assert (=> d!1447897 (= (isDefined!8659 (getValueByKey!1311 (toList!4652 lt!1757693) key!3287)) (not (isEmpty!28866 (getValueByKey!1311 (toList!4652 lt!1757693) key!3287))))))

(declare-fun bs!1011106 () Bool)

(assert (= bs!1011106 d!1447897))

(assert (=> bs!1011106 m!5424027))

(declare-fun m!5425047 () Bool)

(assert (=> bs!1011106 m!5425047))

(assert (=> b!4598044 d!1447897))

(declare-fun b!4598642 () Bool)

(declare-fun e!2868396 () Option!11391)

(declare-fun e!2868397 () Option!11391)

(assert (=> b!4598642 (= e!2868396 e!2868397)))

(declare-fun c!787664 () Bool)

(assert (=> b!4598642 (= c!787664 (and ((_ is Cons!51078) (toList!4652 lt!1757693)) (not (= (_1!29155 (h!57042 (toList!4652 lt!1757693))) key!3287))))))

(declare-fun b!4598641 () Bool)

(assert (=> b!4598641 (= e!2868396 (Some!11390 (_2!29155 (h!57042 (toList!4652 lt!1757693)))))))

(declare-fun b!4598643 () Bool)

(assert (=> b!4598643 (= e!2868397 (getValueByKey!1311 (t!358196 (toList!4652 lt!1757693)) key!3287))))

(declare-fun b!4598644 () Bool)

(assert (=> b!4598644 (= e!2868397 None!11390)))

(declare-fun d!1447899 () Bool)

(declare-fun c!787663 () Bool)

(assert (=> d!1447899 (= c!787663 (and ((_ is Cons!51078) (toList!4652 lt!1757693)) (= (_1!29155 (h!57042 (toList!4652 lt!1757693))) key!3287)))))

(assert (=> d!1447899 (= (getValueByKey!1311 (toList!4652 lt!1757693) key!3287) e!2868396)))

(assert (= (and d!1447899 c!787663) b!4598641))

(assert (= (and d!1447899 (not c!787663)) b!4598642))

(assert (= (and b!4598642 c!787664) b!4598643))

(assert (= (and b!4598642 (not c!787664)) b!4598644))

(declare-fun m!5425049 () Bool)

(assert (=> b!4598643 m!5425049))

(assert (=> b!4598044 d!1447899))

(declare-fun bm!320922 () Bool)

(declare-fun call!320927 () Bool)

(declare-fun e!2868400 () List!51205)

(assert (=> bm!320922 (= call!320927 (contains!14029 e!2868400 key!3287))))

(declare-fun c!787667 () Bool)

(declare-fun c!787665 () Bool)

(assert (=> bm!320922 (= c!787667 c!787665)))

(declare-fun b!4598645 () Bool)

(declare-fun e!2868403 () Unit!108077)

(declare-fun Unit!108169 () Unit!108077)

(assert (=> b!4598645 (= e!2868403 Unit!108169)))

(declare-fun d!1447901 () Bool)

(declare-fun e!2868398 () Bool)

(assert (=> d!1447901 e!2868398))

(declare-fun res!1923466 () Bool)

(assert (=> d!1447901 (=> res!1923466 e!2868398)))

(declare-fun e!2868399 () Bool)

(assert (=> d!1447901 (= res!1923466 e!2868399)))

(declare-fun res!1923468 () Bool)

(assert (=> d!1447901 (=> (not res!1923468) (not e!2868399))))

(declare-fun lt!1758378 () Bool)

(assert (=> d!1447901 (= res!1923468 (not lt!1758378))))

(declare-fun lt!1758380 () Bool)

(assert (=> d!1447901 (= lt!1758378 lt!1758380)))

(declare-fun lt!1758382 () Unit!108077)

(declare-fun e!2868401 () Unit!108077)

(assert (=> d!1447901 (= lt!1758382 e!2868401)))

(assert (=> d!1447901 (= c!787665 lt!1758380)))

(assert (=> d!1447901 (= lt!1758380 (containsKey!2158 (toList!4652 lt!1757882) key!3287))))

(assert (=> d!1447901 (= (contains!14027 lt!1757882 key!3287) lt!1758378)))

(declare-fun b!4598646 () Bool)

(declare-fun e!2868402 () Bool)

(assert (=> b!4598646 (= e!2868402 (contains!14029 (keys!17884 lt!1757882) key!3287))))

(declare-fun b!4598647 () Bool)

(assert (=> b!4598647 (= e!2868401 e!2868403)))

(declare-fun c!787666 () Bool)

(assert (=> b!4598647 (= c!787666 call!320927)))

(declare-fun b!4598648 () Bool)

(assert (=> b!4598648 (= e!2868400 (getKeysList!573 (toList!4652 lt!1757882)))))

(declare-fun b!4598649 () Bool)

(assert (=> b!4598649 (= e!2868398 e!2868402)))

(declare-fun res!1923467 () Bool)

(assert (=> b!4598649 (=> (not res!1923467) (not e!2868402))))

(assert (=> b!4598649 (= res!1923467 (isDefined!8659 (getValueByKey!1311 (toList!4652 lt!1757882) key!3287)))))

(declare-fun b!4598650 () Bool)

(assert (=> b!4598650 (= e!2868399 (not (contains!14029 (keys!17884 lt!1757882) key!3287)))))

(declare-fun b!4598651 () Bool)

(assert (=> b!4598651 (= e!2868400 (keys!17884 lt!1757882))))

(declare-fun b!4598652 () Bool)

(declare-fun lt!1758376 () Unit!108077)

(assert (=> b!4598652 (= e!2868401 lt!1758376)))

(declare-fun lt!1758379 () Unit!108077)

(assert (=> b!4598652 (= lt!1758379 (lemmaContainsKeyImpliesGetValueByKeyDefined!1215 (toList!4652 lt!1757882) key!3287))))

(assert (=> b!4598652 (isDefined!8659 (getValueByKey!1311 (toList!4652 lt!1757882) key!3287))))

(declare-fun lt!1758375 () Unit!108077)

(assert (=> b!4598652 (= lt!1758375 lt!1758379)))

(assert (=> b!4598652 (= lt!1758376 (lemmaInListThenGetKeysListContains!569 (toList!4652 lt!1757882) key!3287))))

(assert (=> b!4598652 call!320927))

(declare-fun b!4598653 () Bool)

(assert (=> b!4598653 false))

(declare-fun lt!1758381 () Unit!108077)

(declare-fun lt!1758377 () Unit!108077)

(assert (=> b!4598653 (= lt!1758381 lt!1758377)))

(assert (=> b!4598653 (containsKey!2158 (toList!4652 lt!1757882) key!3287)))

(assert (=> b!4598653 (= lt!1758377 (lemmaInGetKeysListThenContainsKey!572 (toList!4652 lt!1757882) key!3287))))

(declare-fun Unit!108170 () Unit!108077)

(assert (=> b!4598653 (= e!2868403 Unit!108170)))

(assert (= (and d!1447901 c!787665) b!4598652))

(assert (= (and d!1447901 (not c!787665)) b!4598647))

(assert (= (and b!4598647 c!787666) b!4598653))

(assert (= (and b!4598647 (not c!787666)) b!4598645))

(assert (= (or b!4598652 b!4598647) bm!320922))

(assert (= (and bm!320922 c!787667) b!4598648))

(assert (= (and bm!320922 (not c!787667)) b!4598651))

(assert (= (and d!1447901 res!1923468) b!4598650))

(assert (= (and d!1447901 (not res!1923466)) b!4598649))

(assert (= (and b!4598649 res!1923467) b!4598646))

(assert (=> b!4598651 m!5423913))

(assert (=> b!4598646 m!5423913))

(assert (=> b!4598646 m!5423913))

(declare-fun m!5425051 () Bool)

(assert (=> b!4598646 m!5425051))

(declare-fun m!5425053 () Bool)

(assert (=> bm!320922 m!5425053))

(declare-fun m!5425055 () Bool)

(assert (=> b!4598652 m!5425055))

(declare-fun m!5425057 () Bool)

(assert (=> b!4598652 m!5425057))

(assert (=> b!4598652 m!5425057))

(declare-fun m!5425059 () Bool)

(assert (=> b!4598652 m!5425059))

(declare-fun m!5425061 () Bool)

(assert (=> b!4598652 m!5425061))

(declare-fun m!5425063 () Bool)

(assert (=> d!1447901 m!5425063))

(assert (=> b!4598653 m!5425063))

(declare-fun m!5425065 () Bool)

(assert (=> b!4598653 m!5425065))

(assert (=> b!4598649 m!5425057))

(assert (=> b!4598649 m!5425057))

(assert (=> b!4598649 m!5425059))

(declare-fun m!5425067 () Bool)

(assert (=> b!4598648 m!5425067))

(assert (=> b!4598650 m!5423913))

(assert (=> b!4598650 m!5423913))

(assert (=> b!4598650 m!5425051))

(assert (=> d!1447545 d!1447901))

(declare-fun b!4598692 () Bool)

(declare-fun lt!1758422 () Unit!108077)

(declare-fun e!2868431 () Unit!108077)

(assert (=> b!4598692 (= lt!1758422 e!2868431)))

(declare-fun c!787688 () Bool)

(declare-fun call!320944 () Bool)

(assert (=> b!4598692 (= c!787688 call!320944)))

(declare-fun lt!1758420 () Unit!108077)

(declare-fun e!2868430 () Unit!108077)

(assert (=> b!4598692 (= lt!1758420 e!2868430)))

(declare-fun c!787686 () Bool)

(assert (=> b!4598692 (= c!787686 (contains!14029 (getKeysList!573 (t!358196 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))) (_1!29155 (h!57042 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))))))))

(declare-fun lt!1758424 () List!51202)

(declare-fun $colon$colon!1040 (List!51202 tuple2!51722) List!51202)

(assert (=> b!4598692 (= lt!1758424 ($colon$colon!1040 (removePresrvNoDuplicatedKeys!221 (t!358196 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) key!3287) (h!57042 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))))))

(declare-fun e!2868429 () List!51202)

(assert (=> b!4598692 (= e!2868429 lt!1758424)))

(declare-fun b!4598693 () Bool)

(declare-fun call!320941 () (InoxSet tuple2!51722))

(declare-fun call!320942 () (InoxSet tuple2!51722))

(assert (=> b!4598693 (= call!320941 call!320942)))

(declare-fun e!2868428 () Unit!108077)

(declare-fun Unit!108177 () Unit!108077)

(assert (=> b!4598693 (= e!2868428 Unit!108177)))

(declare-fun b!4598694 () Bool)

(declare-fun res!1923475 () Bool)

(declare-fun e!2868424 () Bool)

(assert (=> b!4598694 (=> (not res!1923475) (not e!2868424))))

(declare-fun lt!1758419 () List!51202)

(assert (=> b!4598694 (= res!1923475 (= (content!8647 (getKeysList!573 lt!1758419)) ((_ map and) (content!8647 (getKeysList!573 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))) ((_ map not) (store ((as const (Array K!12445 Bool)) false) key!3287 true)))))))

(declare-fun b!4598695 () Bool)

(declare-fun Unit!108180 () Unit!108077)

(assert (=> b!4598695 (= e!2868430 Unit!108180)))

(declare-fun lt!1758436 () Unit!108077)

(assert (=> b!4598695 (= lt!1758436 (lemmaInGetKeysListThenContainsKey!572 (t!358196 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (_1!29155 (h!57042 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))))))))

(declare-fun call!320943 () Bool)

(assert (=> b!4598695 call!320943))

(declare-fun lt!1758426 () Unit!108077)

(assert (=> b!4598695 (= lt!1758426 lt!1758436)))

(assert (=> b!4598695 false))

(declare-fun bm!320936 () Bool)

(assert (=> bm!320936 (= call!320942 (content!8648 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))))))

(declare-fun bm!320937 () Bool)

(declare-fun call!320940 () (InoxSet tuple2!51722))

(assert (=> bm!320937 (= call!320940 (content!8648 lt!1758419))))

(declare-fun b!4598696 () Bool)

(declare-fun e!2868425 () Bool)

(declare-fun call!320945 () (InoxSet tuple2!51722))

(assert (=> b!4598696 (= e!2868425 (= call!320940 call!320945))))

(declare-fun b!4598697 () Bool)

(declare-fun Unit!108183 () Unit!108077)

(assert (=> b!4598697 (= e!2868430 Unit!108183)))

(declare-fun b!4598698 () Bool)

(assert (=> b!4598698 (= e!2868424 e!2868425)))

(declare-fun c!787690 () Bool)

(assert (=> b!4598698 (= c!787690 (containsKey!2158 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) key!3287))))

(declare-fun d!1447903 () Bool)

(assert (=> d!1447903 e!2868424))

(declare-fun res!1923477 () Bool)

(assert (=> d!1447903 (=> (not res!1923477) (not e!2868424))))

(assert (=> d!1447903 (= res!1923477 (invariantList!1124 lt!1758419))))

(declare-fun e!2868432 () List!51202)

(assert (=> d!1447903 (= lt!1758419 e!2868432)))

(declare-fun c!787691 () Bool)

(assert (=> d!1447903 (= c!787691 (and ((_ is Cons!51078) (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= (_1!29155 (h!57042 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))) key!3287)))))

(assert (=> d!1447903 (invariantList!1124 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))))

(assert (=> d!1447903 (= (removePresrvNoDuplicatedKeys!221 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) key!3287) lt!1758419)))

(declare-fun bm!320935 () Bool)

(assert (=> bm!320935 (= call!320945 (content!8648 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))))))

(declare-fun b!4598699 () Bool)

(declare-fun Unit!108185 () Unit!108077)

(assert (=> b!4598699 (= e!2868431 Unit!108185)))

(declare-fun lt!1758427 () List!51202)

(assert (=> b!4598699 (= lt!1758427 (removePresrvNoDuplicatedKeys!221 (t!358196 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) key!3287))))

(declare-fun lt!1758431 () Unit!108077)

(assert (=> b!4598699 (= lt!1758431 (lemmaInListThenGetKeysListContains!569 lt!1758427 (_1!29155 (h!57042 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))))))))

(assert (=> b!4598699 (contains!14029 (getKeysList!573 lt!1758427) (_1!29155 (h!57042 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))))))

(declare-fun lt!1758429 () Unit!108077)

(assert (=> b!4598699 (= lt!1758429 lt!1758431)))

(assert (=> b!4598699 false))

(declare-fun b!4598700 () Bool)

(declare-fun e!2868426 () List!51202)

(assert (=> b!4598700 (= e!2868426 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))))

(declare-fun b!4598701 () Bool)

(declare-fun e!2868427 () Unit!108077)

(declare-fun Unit!108186 () Unit!108077)

(assert (=> b!4598701 (= e!2868427 Unit!108186)))

(declare-fun lt!1758428 () V!12691)

(declare-fun get!16882 (Option!11391) V!12691)

(assert (=> b!4598701 (= lt!1758428 (get!16882 (getValueByKey!1311 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) key!3287)))))

(declare-fun lt!1758433 () K!12445)

(assert (=> b!4598701 (= lt!1758433 key!3287)))

(declare-fun lt!1758430 () K!12445)

(assert (=> b!4598701 (= lt!1758430 key!3287)))

(declare-fun lt!1758423 () Unit!108077)

(declare-fun lemmaContainsTupleThenContainsKey!104 (List!51202 K!12445 V!12691) Unit!108077)

(assert (=> b!4598701 (= lt!1758423 (lemmaContainsTupleThenContainsKey!104 (t!358196 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) lt!1758433 (get!16882 (getValueByKey!1311 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) key!3287))))))

(assert (=> b!4598701 call!320943))

(declare-fun lt!1758425 () Unit!108077)

(assert (=> b!4598701 (= lt!1758425 lt!1758423)))

(assert (=> b!4598701 false))

(declare-fun b!4598702 () Bool)

(assert (=> b!4598702 (= e!2868429 Nil!51078)))

(declare-fun bm!320938 () Bool)

(assert (=> bm!320938 (= call!320944 (containsKey!2158 e!2868426 (ite c!787691 key!3287 (_1!29155 (h!57042 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))))))))

(declare-fun c!787685 () Bool)

(assert (=> bm!320938 (= c!787685 c!787691)))

(declare-fun b!4598703 () Bool)

(assert (=> b!4598703 (= e!2868432 (t!358196 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))))))

(declare-fun c!787687 () Bool)

(assert (=> b!4598703 (= c!787687 call!320944)))

(declare-fun lt!1758432 () Unit!108077)

(assert (=> b!4598703 (= lt!1758432 e!2868428)))

(declare-fun b!4598704 () Bool)

(declare-fun Unit!108187 () Unit!108077)

(assert (=> b!4598704 (= e!2868431 Unit!108187)))

(declare-fun bm!320939 () Bool)

(assert (=> bm!320939 (= call!320943 (containsKey!2158 (t!358196 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (ite c!787691 lt!1758433 (_1!29155 (h!57042 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))))))))

(declare-fun b!4598705 () Bool)

(assert (=> b!4598705 (= e!2868425 (= call!320940 ((_ map and) call!320945 ((_ map not) (store ((as const (Array tuple2!51722 Bool)) false) (tuple2!51723 key!3287 (get!16882 (getValueByKey!1311 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) key!3287))) true)))))))

(assert (=> b!4598705 (containsKey!2158 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) key!3287)))

(declare-fun lt!1758435 () Unit!108077)

(assert (=> b!4598705 (= lt!1758435 (lemmaContainsKeyImpliesGetValueByKeyDefined!1215 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) key!3287))))

(assert (=> b!4598705 (isDefined!8659 (getValueByKey!1311 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) key!3287))))

(declare-fun lt!1758434 () Unit!108077)

(assert (=> b!4598705 (= lt!1758434 lt!1758435)))

(declare-fun b!4598706 () Bool)

(assert (=> b!4598706 (= e!2868426 (removePresrvNoDuplicatedKeys!221 (t!358196 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) key!3287))))

(declare-fun b!4598707 () Bool)

(assert (=> b!4598707 (= e!2868432 e!2868429)))

(declare-fun c!787689 () Bool)

(assert (=> b!4598707 (= c!787689 (and ((_ is Cons!51078) (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (not (= (_1!29155 (h!57042 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))) key!3287))))))

(declare-fun b!4598708 () Bool)

(declare-fun res!1923476 () Bool)

(assert (=> b!4598708 (=> (not res!1923476) (not e!2868424))))

(assert (=> b!4598708 (= res!1923476 (not (containsKey!2158 lt!1758419 key!3287)))))

(declare-fun bm!320940 () Bool)

(assert (=> bm!320940 (= call!320941 (content!8648 (t!358196 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))))))

(declare-fun b!4598709 () Bool)

(declare-fun Unit!108188 () Unit!108077)

(assert (=> b!4598709 (= e!2868427 Unit!108188)))

(declare-fun b!4598710 () Bool)

(assert (=> b!4598710 (= call!320941 ((_ map and) call!320942 ((_ map not) (store ((as const (Array tuple2!51722 Bool)) false) (tuple2!51723 key!3287 (get!16882 (getValueByKey!1311 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) key!3287))) true))))))

(declare-fun lt!1758421 () Unit!108077)

(assert (=> b!4598710 (= lt!1758421 e!2868427)))

(declare-fun c!787684 () Bool)

(declare-fun contains!14030 (List!51202 tuple2!51722) Bool)

(assert (=> b!4598710 (= c!787684 (contains!14030 (t!358196 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (tuple2!51723 key!3287 (get!16882 (getValueByKey!1311 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) key!3287)))))))

(declare-fun Unit!108189 () Unit!108077)

(assert (=> b!4598710 (= e!2868428 Unit!108189)))

(assert (= (and d!1447903 c!787691) b!4598703))

(assert (= (and d!1447903 (not c!787691)) b!4598707))

(assert (= (and b!4598703 c!787687) b!4598710))

(assert (= (and b!4598703 (not c!787687)) b!4598693))

(assert (= (and b!4598710 c!787684) b!4598701))

(assert (= (and b!4598710 (not c!787684)) b!4598709))

(assert (= (or b!4598710 b!4598693) bm!320940))

(assert (= (or b!4598710 b!4598693) bm!320936))

(assert (= (and b!4598707 c!787689) b!4598692))

(assert (= (and b!4598707 (not c!787689)) b!4598702))

(assert (= (and b!4598692 c!787686) b!4598695))

(assert (= (and b!4598692 (not c!787686)) b!4598697))

(assert (= (and b!4598692 c!787688) b!4598699))

(assert (= (and b!4598692 (not c!787688)) b!4598704))

(assert (= (or b!4598701 b!4598695) bm!320939))

(assert (= (or b!4598703 b!4598692) bm!320938))

(assert (= (and bm!320938 c!787685) b!4598700))

(assert (= (and bm!320938 (not c!787685)) b!4598706))

(assert (= (and d!1447903 res!1923477) b!4598708))

(assert (= (and b!4598708 res!1923476) b!4598694))

(assert (= (and b!4598694 res!1923475) b!4598698))

(assert (= (and b!4598698 c!787690) b!4598705))

(assert (= (and b!4598698 (not c!787690)) b!4598696))

(assert (= (or b!4598705 b!4598696) bm!320937))

(assert (= (or b!4598705 b!4598696) bm!320935))

(declare-fun m!5425069 () Bool)

(assert (=> b!4598698 m!5425069))

(declare-fun m!5425071 () Bool)

(assert (=> b!4598710 m!5425071))

(assert (=> b!4598710 m!5425071))

(declare-fun m!5425073 () Bool)

(assert (=> b!4598710 m!5425073))

(declare-fun m!5425075 () Bool)

(assert (=> b!4598710 m!5425075))

(declare-fun m!5425077 () Bool)

(assert (=> b!4598710 m!5425077))

(declare-fun m!5425079 () Bool)

(assert (=> bm!320936 m!5425079))

(declare-fun m!5425081 () Bool)

(assert (=> b!4598706 m!5425081))

(declare-fun m!5425083 () Bool)

(assert (=> b!4598708 m!5425083))

(declare-fun m!5425085 () Bool)

(assert (=> d!1447903 m!5425085))

(declare-fun m!5425087 () Bool)

(assert (=> d!1447903 m!5425087))

(declare-fun m!5425089 () Bool)

(assert (=> bm!320938 m!5425089))

(declare-fun m!5425091 () Bool)

(assert (=> bm!320940 m!5425091))

(declare-fun m!5425093 () Bool)

(assert (=> b!4598694 m!5425093))

(assert (=> b!4598694 m!5423911))

(declare-fun m!5425095 () Bool)

(assert (=> b!4598694 m!5425095))

(assert (=> b!4598694 m!5425093))

(declare-fun m!5425097 () Bool)

(assert (=> b!4598694 m!5425097))

(assert (=> b!4598694 m!5425095))

(declare-fun m!5425099 () Bool)

(assert (=> b!4598694 m!5425099))

(assert (=> b!4598701 m!5425071))

(assert (=> b!4598701 m!5425071))

(assert (=> b!4598701 m!5425073))

(assert (=> b!4598701 m!5425073))

(declare-fun m!5425101 () Bool)

(assert (=> b!4598701 m!5425101))

(assert (=> bm!320935 m!5425079))

(declare-fun m!5425103 () Bool)

(assert (=> b!4598695 m!5425103))

(assert (=> b!4598705 m!5425071))

(declare-fun m!5425105 () Bool)

(assert (=> b!4598705 m!5425105))

(assert (=> b!4598705 m!5425075))

(assert (=> b!4598705 m!5425071))

(declare-fun m!5425107 () Bool)

(assert (=> b!4598705 m!5425107))

(assert (=> b!4598705 m!5425069))

(assert (=> b!4598705 m!5425071))

(assert (=> b!4598705 m!5425073))

(assert (=> b!4598699 m!5425081))

(declare-fun m!5425109 () Bool)

(assert (=> b!4598699 m!5425109))

(declare-fun m!5425111 () Bool)

(assert (=> b!4598699 m!5425111))

(assert (=> b!4598699 m!5425111))

(declare-fun m!5425113 () Bool)

(assert (=> b!4598699 m!5425113))

(declare-fun m!5425115 () Bool)

(assert (=> bm!320937 m!5425115))

(declare-fun m!5425117 () Bool)

(assert (=> bm!320939 m!5425117))

(declare-fun m!5425119 () Bool)

(assert (=> b!4598692 m!5425119))

(assert (=> b!4598692 m!5425119))

(declare-fun m!5425121 () Bool)

(assert (=> b!4598692 m!5425121))

(assert (=> b!4598692 m!5425081))

(assert (=> b!4598692 m!5425081))

(declare-fun m!5425123 () Bool)

(assert (=> b!4598692 m!5425123))

(assert (=> d!1447545 d!1447903))

(declare-fun d!1447905 () Bool)

(assert (=> d!1447905 (= (isDefined!8659 (getValueByKey!1311 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) key!3287)) (not (isEmpty!28866 (getValueByKey!1311 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) key!3287))))))

(declare-fun bs!1011107 () Bool)

(assert (= bs!1011107 d!1447905))

(assert (=> bs!1011107 m!5423987))

(declare-fun m!5425125 () Bool)

(assert (=> bs!1011107 m!5425125))

(assert (=> b!4598031 d!1447905))

(declare-fun b!4598712 () Bool)

(declare-fun e!2868433 () Option!11391)

(declare-fun e!2868434 () Option!11391)

(assert (=> b!4598712 (= e!2868433 e!2868434)))

(declare-fun c!787693 () Bool)

(assert (=> b!4598712 (= c!787693 (and ((_ is Cons!51078) (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (not (= (_1!29155 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) key!3287))))))

(declare-fun b!4598711 () Bool)

(assert (=> b!4598711 (= e!2868433 (Some!11390 (_2!29155 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))))))))

(declare-fun b!4598713 () Bool)

(assert (=> b!4598713 (= e!2868434 (getValueByKey!1311 (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) key!3287))))

(declare-fun b!4598714 () Bool)

(assert (=> b!4598714 (= e!2868434 None!11390)))

(declare-fun d!1447907 () Bool)

(declare-fun c!787692 () Bool)

(assert (=> d!1447907 (= c!787692 (and ((_ is Cons!51078) (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (= (_1!29155 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) key!3287)))))

(assert (=> d!1447907 (= (getValueByKey!1311 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) key!3287) e!2868433)))

(assert (= (and d!1447907 c!787692) b!4598711))

(assert (= (and d!1447907 (not c!787692)) b!4598712))

(assert (= (and b!4598712 c!787693) b!4598713))

(assert (= (and b!4598712 (not c!787693)) b!4598714))

(declare-fun m!5425127 () Bool)

(assert (=> b!4598713 m!5425127))

(assert (=> b!4598031 d!1447907))

(declare-fun d!1447909 () Bool)

(declare-fun res!1923478 () Bool)

(declare-fun e!2868435 () Bool)

(assert (=> d!1447909 (=> res!1923478 e!2868435)))

(assert (=> d!1447909 (= res!1923478 (and ((_ is Cons!51078) (toList!4652 (extractMap!1378 lt!1757705))) (= (_1!29155 (h!57042 (toList!4652 (extractMap!1378 lt!1757705)))) key!3287)))))

(assert (=> d!1447909 (= (containsKey!2158 (toList!4652 (extractMap!1378 lt!1757705)) key!3287) e!2868435)))

(declare-fun b!4598715 () Bool)

(declare-fun e!2868436 () Bool)

(assert (=> b!4598715 (= e!2868435 e!2868436)))

(declare-fun res!1923479 () Bool)

(assert (=> b!4598715 (=> (not res!1923479) (not e!2868436))))

(assert (=> b!4598715 (= res!1923479 ((_ is Cons!51078) (toList!4652 (extractMap!1378 lt!1757705))))))

(declare-fun b!4598716 () Bool)

(assert (=> b!4598716 (= e!2868436 (containsKey!2158 (t!358196 (toList!4652 (extractMap!1378 lt!1757705))) key!3287))))

(assert (= (and d!1447909 (not res!1923478)) b!4598715))

(assert (= (and b!4598715 res!1923479) b!4598716))

(declare-fun m!5425129 () Bool)

(assert (=> b!4598716 m!5425129))

(assert (=> d!1447523 d!1447909))

(declare-fun b!4598720 () Bool)

(declare-fun e!2868438 () Option!11390)

(assert (=> b!4598720 (= e!2868438 None!11389)))

(declare-fun b!4598719 () Bool)

(assert (=> b!4598719 (= e!2868438 (getValueByKey!1310 (t!358197 (toList!4651 lm!1477)) hash!344))))

(declare-fun b!4598717 () Bool)

(declare-fun e!2868437 () Option!11390)

(assert (=> b!4598717 (= e!2868437 (Some!11389 (_2!29156 (h!57043 (toList!4651 lm!1477)))))))

(declare-fun d!1447911 () Bool)

(declare-fun c!787694 () Bool)

(assert (=> d!1447911 (= c!787694 (and ((_ is Cons!51079) (toList!4651 lm!1477)) (= (_1!29156 (h!57043 (toList!4651 lm!1477))) hash!344)))))

(assert (=> d!1447911 (= (getValueByKey!1310 (toList!4651 lm!1477) hash!344) e!2868437)))

(declare-fun b!4598718 () Bool)

(assert (=> b!4598718 (= e!2868437 e!2868438)))

(declare-fun c!787695 () Bool)

(assert (=> b!4598718 (= c!787695 (and ((_ is Cons!51079) (toList!4651 lm!1477)) (not (= (_1!29156 (h!57043 (toList!4651 lm!1477))) hash!344))))))

(assert (= (and d!1447911 c!787694) b!4598717))

(assert (= (and d!1447911 (not c!787694)) b!4598718))

(assert (= (and b!4598718 c!787695) b!4598719))

(assert (= (and b!4598718 (not c!787695)) b!4598720))

(declare-fun m!5425131 () Bool)

(assert (=> b!4598719 m!5425131))

(assert (=> b!4597862 d!1447911))

(declare-fun d!1447913 () Bool)

(declare-fun res!1923480 () Bool)

(declare-fun e!2868439 () Bool)

(assert (=> d!1447913 (=> res!1923480 e!2868439)))

(assert (=> d!1447913 (= res!1923480 (and ((_ is Cons!51078) (_2!29156 (h!57043 lt!1757705))) (= (_1!29155 (h!57042 (_2!29156 (h!57043 lt!1757705)))) key!3287)))))

(assert (=> d!1447913 (= (containsKey!2154 (_2!29156 (h!57043 lt!1757705)) key!3287) e!2868439)))

(declare-fun b!4598721 () Bool)

(declare-fun e!2868440 () Bool)

(assert (=> b!4598721 (= e!2868439 e!2868440)))

(declare-fun res!1923481 () Bool)

(assert (=> b!4598721 (=> (not res!1923481) (not e!2868440))))

(assert (=> b!4598721 (= res!1923481 ((_ is Cons!51078) (_2!29156 (h!57043 lt!1757705))))))

(declare-fun b!4598722 () Bool)

(assert (=> b!4598722 (= e!2868440 (containsKey!2154 (t!358196 (_2!29156 (h!57043 lt!1757705))) key!3287))))

(assert (= (and d!1447913 (not res!1923480)) b!4598721))

(assert (= (and b!4598721 res!1923481) b!4598722))

(declare-fun m!5425133 () Bool)

(assert (=> b!4598722 m!5425133))

(assert (=> b!4597915 d!1447913))

(declare-fun bs!1011108 () Bool)

(declare-fun b!4598724 () Bool)

(assert (= bs!1011108 (and b!4598724 b!4598604)))

(declare-fun lambda!186279 () Int)

(assert (=> bs!1011108 (= (= (extractMap!1378 (t!358197 (toList!4651 lt!1757703))) lt!1758365) (= lambda!186279 lambda!186276))))

(declare-fun bs!1011109 () Bool)

(assert (= bs!1011109 (and b!4598724 b!4598603)))

(assert (=> bs!1011109 (= (= (extractMap!1378 (t!358197 (toList!4651 lt!1757703))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186279 lambda!186274))))

(declare-fun bs!1011110 () Bool)

(assert (= bs!1011110 (and b!4598724 d!1447491)))

(assert (=> bs!1011110 (not (= lambda!186279 lambda!186099))))

(declare-fun bs!1011111 () Bool)

(assert (= bs!1011111 (and b!4598724 d!1447805)))

(assert (=> bs!1011111 (= (= (extractMap!1378 (t!358197 (toList!4651 lt!1757703))) lt!1758359) (= lambda!186279 lambda!186277))))

(assert (=> bs!1011108 (= (= (extractMap!1378 (t!358197 (toList!4651 lt!1757703))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186279 lambda!186275))))

(assert (=> b!4598724 true))

(declare-fun bs!1011112 () Bool)

(declare-fun b!4598725 () Bool)

(assert (= bs!1011112 (and b!4598725 b!4598604)))

(declare-fun lambda!186280 () Int)

(assert (=> bs!1011112 (= (= (extractMap!1378 (t!358197 (toList!4651 lt!1757703))) lt!1758365) (= lambda!186280 lambda!186276))))

(declare-fun bs!1011113 () Bool)

(assert (= bs!1011113 (and b!4598725 b!4598603)))

(assert (=> bs!1011113 (= (= (extractMap!1378 (t!358197 (toList!4651 lt!1757703))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186280 lambda!186274))))

(declare-fun bs!1011114 () Bool)

(assert (= bs!1011114 (and b!4598725 d!1447491)))

(assert (=> bs!1011114 (not (= lambda!186280 lambda!186099))))

(declare-fun bs!1011115 () Bool)

(assert (= bs!1011115 (and b!4598725 d!1447805)))

(assert (=> bs!1011115 (= (= (extractMap!1378 (t!358197 (toList!4651 lt!1757703))) lt!1758359) (= lambda!186280 lambda!186277))))

(assert (=> bs!1011112 (= (= (extractMap!1378 (t!358197 (toList!4651 lt!1757703))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186280 lambda!186275))))

(declare-fun bs!1011116 () Bool)

(assert (= bs!1011116 (and b!4598725 b!4598724)))

(assert (=> bs!1011116 (= lambda!186280 lambda!186279)))

(assert (=> b!4598725 true))

(declare-fun lambda!186281 () Int)

(declare-fun lt!1758457 () ListMap!3913)

(assert (=> bs!1011112 (= (= lt!1758457 lt!1758365) (= lambda!186281 lambda!186276))))

(assert (=> bs!1011113 (= (= lt!1758457 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186281 lambda!186274))))

(assert (=> bs!1011114 (not (= lambda!186281 lambda!186099))))

(assert (=> bs!1011115 (= (= lt!1758457 lt!1758359) (= lambda!186281 lambda!186277))))

(assert (=> bs!1011112 (= (= lt!1758457 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186281 lambda!186275))))

(assert (=> bs!1011116 (= (= lt!1758457 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186281 lambda!186279))))

(assert (=> b!4598725 (= (= lt!1758457 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186281 lambda!186280))))

(assert (=> b!4598725 true))

(declare-fun bs!1011117 () Bool)

(declare-fun d!1447915 () Bool)

(assert (= bs!1011117 (and d!1447915 b!4598604)))

(declare-fun lt!1758451 () ListMap!3913)

(declare-fun lambda!186282 () Int)

(assert (=> bs!1011117 (= (= lt!1758451 lt!1758365) (= lambda!186282 lambda!186276))))

(declare-fun bs!1011118 () Bool)

(assert (= bs!1011118 (and d!1447915 b!4598725)))

(assert (=> bs!1011118 (= (= lt!1758451 lt!1758457) (= lambda!186282 lambda!186281))))

(declare-fun bs!1011119 () Bool)

(assert (= bs!1011119 (and d!1447915 b!4598603)))

(assert (=> bs!1011119 (= (= lt!1758451 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186282 lambda!186274))))

(declare-fun bs!1011120 () Bool)

(assert (= bs!1011120 (and d!1447915 d!1447491)))

(assert (=> bs!1011120 (not (= lambda!186282 lambda!186099))))

(declare-fun bs!1011121 () Bool)

(assert (= bs!1011121 (and d!1447915 d!1447805)))

(assert (=> bs!1011121 (= (= lt!1758451 lt!1758359) (= lambda!186282 lambda!186277))))

(assert (=> bs!1011117 (= (= lt!1758451 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186282 lambda!186275))))

(declare-fun bs!1011122 () Bool)

(assert (= bs!1011122 (and d!1447915 b!4598724)))

(assert (=> bs!1011122 (= (= lt!1758451 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186282 lambda!186279))))

(assert (=> bs!1011118 (= (= lt!1758451 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186282 lambda!186280))))

(assert (=> d!1447915 true))

(declare-fun b!4598723 () Bool)

(declare-fun e!2868441 () Bool)

(assert (=> b!4598723 (= e!2868441 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) lambda!186281))))

(declare-fun e!2868443 () ListMap!3913)

(assert (=> b!4598724 (= e!2868443 (extractMap!1378 (t!358197 (toList!4651 lt!1757703))))))

(declare-fun lt!1758453 () Unit!108077)

(declare-fun call!320946 () Unit!108077)

(assert (=> b!4598724 (= lt!1758453 call!320946)))

(declare-fun call!320947 () Bool)

(assert (=> b!4598724 call!320947))

(declare-fun lt!1758440 () Unit!108077)

(assert (=> b!4598724 (= lt!1758440 lt!1758453)))

(declare-fun call!320948 () Bool)

(assert (=> b!4598724 call!320948))

(declare-fun lt!1758455 () Unit!108077)

(declare-fun Unit!108190 () Unit!108077)

(assert (=> b!4598724 (= lt!1758455 Unit!108190)))

(declare-fun e!2868442 () Bool)

(assert (=> d!1447915 e!2868442))

(declare-fun res!1923482 () Bool)

(assert (=> d!1447915 (=> (not res!1923482) (not e!2868442))))

(assert (=> d!1447915 (= res!1923482 (forall!10600 (_2!29156 (h!57043 (toList!4651 lt!1757703))) lambda!186282))))

(assert (=> d!1447915 (= lt!1758451 e!2868443)))

(declare-fun c!787696 () Bool)

(assert (=> d!1447915 (= c!787696 ((_ is Nil!51078) (_2!29156 (h!57043 (toList!4651 lt!1757703)))))))

(assert (=> d!1447915 (noDuplicateKeys!1318 (_2!29156 (h!57043 (toList!4651 lt!1757703))))))

(assert (=> d!1447915 (= (addToMapMapFromBucket!814 (_2!29156 (h!57043 (toList!4651 lt!1757703))) (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) lt!1758451)))

(assert (=> b!4598725 (= e!2868443 lt!1758457)))

(declare-fun lt!1758454 () ListMap!3913)

(assert (=> b!4598725 (= lt!1758454 (+!1746 (extractMap!1378 (t!358197 (toList!4651 lt!1757703))) (h!57042 (_2!29156 (h!57043 (toList!4651 lt!1757703))))))))

(assert (=> b!4598725 (= lt!1758457 (addToMapMapFromBucket!814 (t!358196 (_2!29156 (h!57043 (toList!4651 lt!1757703)))) (+!1746 (extractMap!1378 (t!358197 (toList!4651 lt!1757703))) (h!57042 (_2!29156 (h!57043 (toList!4651 lt!1757703)))))))))

(declare-fun lt!1758450 () Unit!108077)

(assert (=> b!4598725 (= lt!1758450 call!320946)))

(assert (=> b!4598725 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) lambda!186280)))

(declare-fun lt!1758448 () Unit!108077)

(assert (=> b!4598725 (= lt!1758448 lt!1758450)))

(assert (=> b!4598725 (forall!10600 (toList!4652 lt!1758454) lambda!186281)))

(declare-fun lt!1758456 () Unit!108077)

(declare-fun Unit!108191 () Unit!108077)

(assert (=> b!4598725 (= lt!1758456 Unit!108191)))

(assert (=> b!4598725 (forall!10600 (t!358196 (_2!29156 (h!57043 (toList!4651 lt!1757703)))) lambda!186281)))

(declare-fun lt!1758439 () Unit!108077)

(declare-fun Unit!108192 () Unit!108077)

(assert (=> b!4598725 (= lt!1758439 Unit!108192)))

(declare-fun lt!1758452 () Unit!108077)

(declare-fun Unit!108193 () Unit!108077)

(assert (=> b!4598725 (= lt!1758452 Unit!108193)))

(declare-fun lt!1758444 () Unit!108077)

(assert (=> b!4598725 (= lt!1758444 (forallContained!2855 (toList!4652 lt!1758454) lambda!186281 (h!57042 (_2!29156 (h!57043 (toList!4651 lt!1757703))))))))

(assert (=> b!4598725 (contains!14027 lt!1758454 (_1!29155 (h!57042 (_2!29156 (h!57043 (toList!4651 lt!1757703))))))))

(declare-fun lt!1758446 () Unit!108077)

(declare-fun Unit!108194 () Unit!108077)

(assert (=> b!4598725 (= lt!1758446 Unit!108194)))

(assert (=> b!4598725 (contains!14027 lt!1758457 (_1!29155 (h!57042 (_2!29156 (h!57043 (toList!4651 lt!1757703))))))))

(declare-fun lt!1758443 () Unit!108077)

(declare-fun Unit!108195 () Unit!108077)

(assert (=> b!4598725 (= lt!1758443 Unit!108195)))

(assert (=> b!4598725 (forall!10600 (_2!29156 (h!57043 (toList!4651 lt!1757703))) lambda!186281)))

(declare-fun lt!1758438 () Unit!108077)

(declare-fun Unit!108196 () Unit!108077)

(assert (=> b!4598725 (= lt!1758438 Unit!108196)))

(assert (=> b!4598725 (forall!10600 (toList!4652 lt!1758454) lambda!186281)))

(declare-fun lt!1758447 () Unit!108077)

(declare-fun Unit!108197 () Unit!108077)

(assert (=> b!4598725 (= lt!1758447 Unit!108197)))

(declare-fun lt!1758449 () Unit!108077)

(declare-fun Unit!108198 () Unit!108077)

(assert (=> b!4598725 (= lt!1758449 Unit!108198)))

(declare-fun lt!1758442 () Unit!108077)

(assert (=> b!4598725 (= lt!1758442 (addForallContainsKeyThenBeforeAdding!436 (extractMap!1378 (t!358197 (toList!4651 lt!1757703))) lt!1758457 (_1!29155 (h!57042 (_2!29156 (h!57043 (toList!4651 lt!1757703))))) (_2!29155 (h!57042 (_2!29156 (h!57043 (toList!4651 lt!1757703)))))))))

(assert (=> b!4598725 call!320947))

(declare-fun lt!1758437 () Unit!108077)

(assert (=> b!4598725 (= lt!1758437 lt!1758442)))

(assert (=> b!4598725 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) lambda!186281)))

(declare-fun lt!1758441 () Unit!108077)

(declare-fun Unit!108199 () Unit!108077)

(assert (=> b!4598725 (= lt!1758441 Unit!108199)))

(declare-fun res!1923484 () Bool)

(assert (=> b!4598725 (= res!1923484 call!320948)))

(assert (=> b!4598725 (=> (not res!1923484) (not e!2868441))))

(assert (=> b!4598725 e!2868441))

(declare-fun lt!1758445 () Unit!108077)

(declare-fun Unit!108200 () Unit!108077)

(assert (=> b!4598725 (= lt!1758445 Unit!108200)))

(declare-fun b!4598726 () Bool)

(declare-fun res!1923483 () Bool)

(assert (=> b!4598726 (=> (not res!1923483) (not e!2868442))))

(assert (=> b!4598726 (= res!1923483 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) lambda!186282))))

(declare-fun bm!320941 () Bool)

(assert (=> bm!320941 (= call!320947 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (ite c!787696 lambda!186279 lambda!186281)))))

(declare-fun bm!320942 () Bool)

(assert (=> bm!320942 (= call!320946 (lemmaContainsAllItsOwnKeys!436 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))))))

(declare-fun b!4598727 () Bool)

(assert (=> b!4598727 (= e!2868442 (invariantList!1124 (toList!4652 lt!1758451)))))

(declare-fun bm!320943 () Bool)

(assert (=> bm!320943 (= call!320948 (forall!10600 (ite c!787696 (toList!4652 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (_2!29156 (h!57043 (toList!4651 lt!1757703)))) (ite c!787696 lambda!186279 lambda!186281)))))

(assert (= (and d!1447915 c!787696) b!4598724))

(assert (= (and d!1447915 (not c!787696)) b!4598725))

(assert (= (and b!4598725 res!1923484) b!4598723))

(assert (= (or b!4598724 b!4598725) bm!320941))

(assert (= (or b!4598724 b!4598725) bm!320943))

(assert (= (or b!4598724 b!4598725) bm!320942))

(assert (= (and d!1447915 res!1923482) b!4598726))

(assert (= (and b!4598726 res!1923483) b!4598727))

(declare-fun m!5425135 () Bool)

(assert (=> b!4598725 m!5425135))

(declare-fun m!5425137 () Bool)

(assert (=> b!4598725 m!5425137))

(assert (=> b!4598725 m!5424051))

(declare-fun m!5425139 () Bool)

(assert (=> b!4598725 m!5425139))

(assert (=> b!4598725 m!5425135))

(declare-fun m!5425141 () Bool)

(assert (=> b!4598725 m!5425141))

(assert (=> b!4598725 m!5424051))

(declare-fun m!5425143 () Bool)

(assert (=> b!4598725 m!5425143))

(declare-fun m!5425145 () Bool)

(assert (=> b!4598725 m!5425145))

(declare-fun m!5425147 () Bool)

(assert (=> b!4598725 m!5425147))

(assert (=> b!4598725 m!5425143))

(declare-fun m!5425149 () Bool)

(assert (=> b!4598725 m!5425149))

(declare-fun m!5425151 () Bool)

(assert (=> b!4598725 m!5425151))

(declare-fun m!5425153 () Bool)

(assert (=> b!4598725 m!5425153))

(declare-fun m!5425155 () Bool)

(assert (=> b!4598725 m!5425155))

(declare-fun m!5425157 () Bool)

(assert (=> b!4598727 m!5425157))

(declare-fun m!5425159 () Bool)

(assert (=> bm!320941 m!5425159))

(declare-fun m!5425161 () Bool)

(assert (=> d!1447915 m!5425161))

(declare-fun m!5425163 () Bool)

(assert (=> d!1447915 m!5425163))

(assert (=> b!4598723 m!5425151))

(assert (=> bm!320942 m!5424051))

(declare-fun m!5425165 () Bool)

(assert (=> bm!320942 m!5425165))

(declare-fun m!5425167 () Bool)

(assert (=> bm!320943 m!5425167))

(declare-fun m!5425169 () Bool)

(assert (=> b!4598726 m!5425169))

(assert (=> b!4598051 d!1447915))

(declare-fun bs!1011123 () Bool)

(declare-fun d!1447917 () Bool)

(assert (= bs!1011123 (and d!1447917 d!1447571)))

(declare-fun lambda!186283 () Int)

(assert (=> bs!1011123 (= lambda!186283 lambda!186128)))

(declare-fun bs!1011124 () Bool)

(assert (= bs!1011124 (and d!1447917 d!1447443)))

(assert (=> bs!1011124 (= lambda!186283 lambda!186085)))

(declare-fun bs!1011125 () Bool)

(assert (= bs!1011125 (and d!1447917 d!1447559)))

(assert (=> bs!1011125 (= lambda!186283 lambda!186124)))

(declare-fun bs!1011126 () Bool)

(assert (= bs!1011126 (and d!1447917 d!1447881)))

(assert (=> bs!1011126 (= lambda!186283 lambda!186278)))

(declare-fun bs!1011127 () Bool)

(assert (= bs!1011127 (and d!1447917 start!458760)))

(assert (=> bs!1011127 (= lambda!186283 lambda!186082)))

(declare-fun bs!1011128 () Bool)

(assert (= bs!1011128 (and d!1447917 d!1447517)))

(assert (=> bs!1011128 (= lambda!186283 lambda!186109)))

(declare-fun bs!1011129 () Bool)

(assert (= bs!1011129 (and d!1447917 d!1447547)))

(assert (=> bs!1011129 (= lambda!186283 lambda!186120)))

(declare-fun bs!1011130 () Bool)

(assert (= bs!1011130 (and d!1447917 d!1447503)))

(assert (=> bs!1011130 (= lambda!186283 lambda!186105)))

(declare-fun bs!1011131 () Bool)

(assert (= bs!1011131 (and d!1447917 d!1447543)))

(assert (=> bs!1011131 (= lambda!186283 lambda!186119)))

(declare-fun bs!1011132 () Bool)

(assert (= bs!1011132 (and d!1447917 d!1447557)))

(assert (=> bs!1011132 (= lambda!186283 lambda!186123)))

(declare-fun bs!1011133 () Bool)

(assert (= bs!1011133 (and d!1447917 d!1447565)))

(assert (=> bs!1011133 (not (= lambda!186283 lambda!186127))))

(declare-fun bs!1011134 () Bool)

(assert (= bs!1011134 (and d!1447917 d!1447581)))

(assert (=> bs!1011134 (= lambda!186283 lambda!186130)))

(declare-fun bs!1011135 () Bool)

(assert (= bs!1011135 (and d!1447917 d!1447579)))

(assert (=> bs!1011135 (= lambda!186283 lambda!186129)))

(declare-fun lt!1758458 () ListMap!3913)

(assert (=> d!1447917 (invariantList!1124 (toList!4652 lt!1758458))))

(declare-fun e!2868444 () ListMap!3913)

(assert (=> d!1447917 (= lt!1758458 e!2868444)))

(declare-fun c!787697 () Bool)

(assert (=> d!1447917 (= c!787697 ((_ is Cons!51079) (t!358197 (toList!4651 lt!1757703))))))

(assert (=> d!1447917 (forall!10598 (t!358197 (toList!4651 lt!1757703)) lambda!186283)))

(assert (=> d!1447917 (= (extractMap!1378 (t!358197 (toList!4651 lt!1757703))) lt!1758458)))

(declare-fun b!4598728 () Bool)

(assert (=> b!4598728 (= e!2868444 (addToMapMapFromBucket!814 (_2!29156 (h!57043 (t!358197 (toList!4651 lt!1757703)))) (extractMap!1378 (t!358197 (t!358197 (toList!4651 lt!1757703))))))))

(declare-fun b!4598729 () Bool)

(assert (=> b!4598729 (= e!2868444 (ListMap!3914 Nil!51078))))

(assert (= (and d!1447917 c!787697) b!4598728))

(assert (= (and d!1447917 (not c!787697)) b!4598729))

(declare-fun m!5425171 () Bool)

(assert (=> d!1447917 m!5425171))

(declare-fun m!5425173 () Bool)

(assert (=> d!1447917 m!5425173))

(declare-fun m!5425175 () Bool)

(assert (=> b!4598728 m!5425175))

(assert (=> b!4598728 m!5425175))

(declare-fun m!5425177 () Bool)

(assert (=> b!4598728 m!5425177))

(assert (=> b!4598051 d!1447917))

(declare-fun d!1447919 () Bool)

(declare-fun res!1923489 () Bool)

(declare-fun e!2868449 () Bool)

(assert (=> d!1447919 (=> res!1923489 e!2868449)))

(assert (=> d!1447919 (= res!1923489 ((_ is Nil!51078) newBucket!178))))

(assert (=> d!1447919 (= (forall!10600 newBucket!178 lambda!186099) e!2868449)))

(declare-fun b!4598734 () Bool)

(declare-fun e!2868450 () Bool)

(assert (=> b!4598734 (= e!2868449 e!2868450)))

(declare-fun res!1923490 () Bool)

(assert (=> b!4598734 (=> (not res!1923490) (not e!2868450))))

(declare-fun dynLambda!21397 (Int tuple2!51722) Bool)

(assert (=> b!4598734 (= res!1923490 (dynLambda!21397 lambda!186099 (h!57042 newBucket!178)))))

(declare-fun b!4598735 () Bool)

(assert (=> b!4598735 (= e!2868450 (forall!10600 (t!358196 newBucket!178) lambda!186099))))

(assert (= (and d!1447919 (not res!1923489)) b!4598734))

(assert (= (and b!4598734 res!1923490) b!4598735))

(declare-fun b_lambda!169383 () Bool)

(assert (=> (not b_lambda!169383) (not b!4598734)))

(declare-fun m!5425179 () Bool)

(assert (=> b!4598734 m!5425179))

(declare-fun m!5425181 () Bool)

(assert (=> b!4598735 m!5425181))

(assert (=> d!1447491 d!1447919))

(declare-fun d!1447921 () Bool)

(declare-fun lt!1758459 () Bool)

(assert (=> d!1447921 (= lt!1758459 (select (content!8646 (toList!4651 lt!1757915)) lt!1757696))))

(declare-fun e!2868452 () Bool)

(assert (=> d!1447921 (= lt!1758459 e!2868452)))

(declare-fun res!1923491 () Bool)

(assert (=> d!1447921 (=> (not res!1923491) (not e!2868452))))

(assert (=> d!1447921 (= res!1923491 ((_ is Cons!51079) (toList!4651 lt!1757915)))))

(assert (=> d!1447921 (= (contains!14026 (toList!4651 lt!1757915) lt!1757696) lt!1758459)))

(declare-fun b!4598736 () Bool)

(declare-fun e!2868451 () Bool)

(assert (=> b!4598736 (= e!2868452 e!2868451)))

(declare-fun res!1923492 () Bool)

(assert (=> b!4598736 (=> res!1923492 e!2868451)))

(assert (=> b!4598736 (= res!1923492 (= (h!57043 (toList!4651 lt!1757915)) lt!1757696))))

(declare-fun b!4598737 () Bool)

(assert (=> b!4598737 (= e!2868451 (contains!14026 (t!358197 (toList!4651 lt!1757915)) lt!1757696))))

(assert (= (and d!1447921 res!1923491) b!4598736))

(assert (= (and b!4598736 (not res!1923492)) b!4598737))

(declare-fun m!5425183 () Bool)

(assert (=> d!1447921 m!5425183))

(declare-fun m!5425185 () Bool)

(assert (=> d!1447921 m!5425185))

(declare-fun m!5425187 () Bool)

(assert (=> b!4598737 m!5425187))

(assert (=> b!4598039 d!1447921))

(declare-fun d!1447923 () Bool)

(declare-fun res!1923494 () Bool)

(declare-fun e!2868454 () Bool)

(assert (=> d!1447923 (=> res!1923494 e!2868454)))

(declare-fun e!2868455 () Bool)

(assert (=> d!1447923 (= res!1923494 e!2868455)))

(declare-fun res!1923493 () Bool)

(assert (=> d!1447923 (=> (not res!1923493) (not e!2868455))))

(assert (=> d!1447923 (= res!1923493 ((_ is Cons!51079) (t!358197 lt!1757705)))))

(assert (=> d!1447923 (= (containsKeyBiggerList!274 (t!358197 lt!1757705) key!3287) e!2868454)))

(declare-fun b!4598738 () Bool)

(assert (=> b!4598738 (= e!2868455 (containsKey!2154 (_2!29156 (h!57043 (t!358197 lt!1757705))) key!3287))))

(declare-fun b!4598739 () Bool)

(declare-fun e!2868453 () Bool)

(assert (=> b!4598739 (= e!2868454 e!2868453)))

(declare-fun res!1923495 () Bool)

(assert (=> b!4598739 (=> (not res!1923495) (not e!2868453))))

(assert (=> b!4598739 (= res!1923495 ((_ is Cons!51079) (t!358197 lt!1757705)))))

(declare-fun b!4598740 () Bool)

(assert (=> b!4598740 (= e!2868453 (containsKeyBiggerList!274 (t!358197 (t!358197 lt!1757705)) key!3287))))

(assert (= (and d!1447923 res!1923493) b!4598738))

(assert (= (and d!1447923 (not res!1923494)) b!4598739))

(assert (= (and b!4598739 res!1923495) b!4598740))

(declare-fun m!5425189 () Bool)

(assert (=> b!4598738 m!5425189))

(declare-fun m!5425191 () Bool)

(assert (=> b!4598740 m!5425191))

(assert (=> b!4597917 d!1447923))

(declare-fun d!1447925 () Bool)

(declare-fun res!1923500 () Bool)

(declare-fun e!2868460 () Bool)

(assert (=> d!1447925 (=> res!1923500 e!2868460)))

(assert (=> d!1447925 (= res!1923500 (and ((_ is Cons!51079) (toList!4651 lm!1477)) (= (_1!29156 (h!57043 (toList!4651 lm!1477))) lt!1757708)))))

(assert (=> d!1447925 (= (containsKey!2157 (toList!4651 lm!1477) lt!1757708) e!2868460)))

(declare-fun b!4598745 () Bool)

(declare-fun e!2868461 () Bool)

(assert (=> b!4598745 (= e!2868460 e!2868461)))

(declare-fun res!1923501 () Bool)

(assert (=> b!4598745 (=> (not res!1923501) (not e!2868461))))

(assert (=> b!4598745 (= res!1923501 (and (or (not ((_ is Cons!51079) (toList!4651 lm!1477))) (bvsle (_1!29156 (h!57043 (toList!4651 lm!1477))) lt!1757708)) ((_ is Cons!51079) (toList!4651 lm!1477)) (bvslt (_1!29156 (h!57043 (toList!4651 lm!1477))) lt!1757708)))))

(declare-fun b!4598746 () Bool)

(assert (=> b!4598746 (= e!2868461 (containsKey!2157 (t!358197 (toList!4651 lm!1477)) lt!1757708))))

(assert (= (and d!1447925 (not res!1923500)) b!4598745))

(assert (= (and b!4598745 res!1923501) b!4598746))

(declare-fun m!5425193 () Bool)

(assert (=> b!4598746 m!5425193))

(assert (=> d!1447455 d!1447925))

(declare-fun d!1447927 () Bool)

(declare-fun lt!1758460 () Bool)

(assert (=> d!1447927 (= lt!1758460 (select (content!8647 e!2868033) key!3287))))

(declare-fun e!2868463 () Bool)

(assert (=> d!1447927 (= lt!1758460 e!2868463)))

(declare-fun res!1923502 () Bool)

(assert (=> d!1447927 (=> (not res!1923502) (not e!2868463))))

(assert (=> d!1447927 (= res!1923502 ((_ is Cons!51081) e!2868033))))

(assert (=> d!1447927 (= (contains!14029 e!2868033 key!3287) lt!1758460)))

(declare-fun b!4598747 () Bool)

(declare-fun e!2868462 () Bool)

(assert (=> b!4598747 (= e!2868463 e!2868462)))

(declare-fun res!1923503 () Bool)

(assert (=> b!4598747 (=> res!1923503 e!2868462)))

(assert (=> b!4598747 (= res!1923503 (= (h!57047 e!2868033) key!3287))))

(declare-fun b!4598748 () Bool)

(assert (=> b!4598748 (= e!2868462 (contains!14029 (t!358199 e!2868033) key!3287))))

(assert (= (and d!1447927 res!1923502) b!4598747))

(assert (= (and b!4598747 (not res!1923503)) b!4598748))

(declare-fun m!5425195 () Bool)

(assert (=> d!1447927 m!5425195))

(declare-fun m!5425197 () Bool)

(assert (=> d!1447927 m!5425197))

(declare-fun m!5425199 () Bool)

(assert (=> b!4598748 m!5425199))

(assert (=> bm!320856 d!1447927))

(declare-fun d!1447929 () Bool)

(declare-fun lt!1758461 () Bool)

(assert (=> d!1447929 (= lt!1758461 (select (content!8647 e!2868025) key!3287))))

(declare-fun e!2868465 () Bool)

(assert (=> d!1447929 (= lt!1758461 e!2868465)))

(declare-fun res!1923504 () Bool)

(assert (=> d!1447929 (=> (not res!1923504) (not e!2868465))))

(assert (=> d!1447929 (= res!1923504 ((_ is Cons!51081) e!2868025))))

(assert (=> d!1447929 (= (contains!14029 e!2868025 key!3287) lt!1758461)))

(declare-fun b!4598749 () Bool)

(declare-fun e!2868464 () Bool)

(assert (=> b!4598749 (= e!2868465 e!2868464)))

(declare-fun res!1923505 () Bool)

(assert (=> b!4598749 (=> res!1923505 e!2868464)))

(assert (=> b!4598749 (= res!1923505 (= (h!57047 e!2868025) key!3287))))

(declare-fun b!4598750 () Bool)

(assert (=> b!4598750 (= e!2868464 (contains!14029 (t!358199 e!2868025) key!3287))))

(assert (= (and d!1447929 res!1923504) b!4598749))

(assert (= (and b!4598749 (not res!1923505)) b!4598750))

(declare-fun m!5425201 () Bool)

(assert (=> d!1447929 m!5425201))

(declare-fun m!5425203 () Bool)

(assert (=> d!1447929 m!5425203))

(declare-fun m!5425205 () Bool)

(assert (=> b!4598750 m!5425205))

(assert (=> bm!320855 d!1447929))

(declare-fun d!1447931 () Bool)

(assert (=> d!1447931 (isDefined!8658 (getValueByKey!1310 (toList!4651 lt!1757703) lt!1757708))))

(declare-fun lt!1758462 () Unit!108077)

(assert (=> d!1447931 (= lt!1758462 (choose!30818 (toList!4651 lt!1757703) lt!1757708))))

(declare-fun e!2868466 () Bool)

(assert (=> d!1447931 e!2868466))

(declare-fun res!1923506 () Bool)

(assert (=> d!1447931 (=> (not res!1923506) (not e!2868466))))

(assert (=> d!1447931 (= res!1923506 (isStrictlySorted!540 (toList!4651 lt!1757703)))))

(assert (=> d!1447931 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1214 (toList!4651 lt!1757703) lt!1757708) lt!1758462)))

(declare-fun b!4598751 () Bool)

(assert (=> b!4598751 (= e!2868466 (containsKey!2157 (toList!4651 lt!1757703) lt!1757708))))

(assert (= (and d!1447931 res!1923506) b!4598751))

(assert (=> d!1447931 m!5423819))

(assert (=> d!1447931 m!5423819))

(assert (=> d!1447931 m!5423821))

(declare-fun m!5425207 () Bool)

(assert (=> d!1447931 m!5425207))

(declare-fun m!5425209 () Bool)

(assert (=> d!1447931 m!5425209))

(assert (=> b!4598751 m!5423815))

(assert (=> b!4597932 d!1447931))

(declare-fun d!1447933 () Bool)

(assert (=> d!1447933 (= (isDefined!8658 (getValueByKey!1310 (toList!4651 lt!1757703) lt!1757708)) (not (isEmpty!28865 (getValueByKey!1310 (toList!4651 lt!1757703) lt!1757708))))))

(declare-fun bs!1011136 () Bool)

(assert (= bs!1011136 d!1447933))

(assert (=> bs!1011136 m!5423819))

(declare-fun m!5425211 () Bool)

(assert (=> bs!1011136 m!5425211))

(assert (=> b!4597932 d!1447933))

(declare-fun b!4598755 () Bool)

(declare-fun e!2868468 () Option!11390)

(assert (=> b!4598755 (= e!2868468 None!11389)))

(declare-fun b!4598754 () Bool)

(assert (=> b!4598754 (= e!2868468 (getValueByKey!1310 (t!358197 (toList!4651 lt!1757703)) lt!1757708))))

(declare-fun b!4598752 () Bool)

(declare-fun e!2868467 () Option!11390)

(assert (=> b!4598752 (= e!2868467 (Some!11389 (_2!29156 (h!57043 (toList!4651 lt!1757703)))))))

(declare-fun d!1447935 () Bool)

(declare-fun c!787698 () Bool)

(assert (=> d!1447935 (= c!787698 (and ((_ is Cons!51079) (toList!4651 lt!1757703)) (= (_1!29156 (h!57043 (toList!4651 lt!1757703))) lt!1757708)))))

(assert (=> d!1447935 (= (getValueByKey!1310 (toList!4651 lt!1757703) lt!1757708) e!2868467)))

(declare-fun b!4598753 () Bool)

(assert (=> b!4598753 (= e!2868467 e!2868468)))

(declare-fun c!787699 () Bool)

(assert (=> b!4598753 (= c!787699 (and ((_ is Cons!51079) (toList!4651 lt!1757703)) (not (= (_1!29156 (h!57043 (toList!4651 lt!1757703))) lt!1757708))))))

(assert (= (and d!1447935 c!787698) b!4598752))

(assert (= (and d!1447935 (not c!787698)) b!4598753))

(assert (= (and b!4598753 c!787699) b!4598754))

(assert (= (and b!4598753 (not c!787699)) b!4598755))

(declare-fun m!5425213 () Bool)

(assert (=> b!4598754 m!5425213))

(assert (=> b!4597932 d!1447935))

(declare-fun d!1447937 () Bool)

(declare-fun noDuplicatedKeys!326 (List!51202) Bool)

(assert (=> d!1447937 (= (invariantList!1124 (toList!4652 lt!1757902)) (noDuplicatedKeys!326 (toList!4652 lt!1757902)))))

(declare-fun bs!1011137 () Bool)

(assert (= bs!1011137 d!1447937))

(declare-fun m!5425215 () Bool)

(assert (=> bs!1011137 m!5425215))

(assert (=> d!1447559 d!1447937))

(declare-fun d!1447939 () Bool)

(declare-fun res!1923507 () Bool)

(declare-fun e!2868469 () Bool)

(assert (=> d!1447939 (=> res!1923507 e!2868469)))

(assert (=> d!1447939 (= res!1923507 ((_ is Nil!51079) (Cons!51079 lt!1757696 Nil!51079)))))

(assert (=> d!1447939 (= (forall!10598 (Cons!51079 lt!1757696 Nil!51079) lambda!186124) e!2868469)))

(declare-fun b!4598756 () Bool)

(declare-fun e!2868470 () Bool)

(assert (=> b!4598756 (= e!2868469 e!2868470)))

(declare-fun res!1923508 () Bool)

(assert (=> b!4598756 (=> (not res!1923508) (not e!2868470))))

(assert (=> b!4598756 (= res!1923508 (dynLambda!21396 lambda!186124 (h!57043 (Cons!51079 lt!1757696 Nil!51079))))))

(declare-fun b!4598757 () Bool)

(assert (=> b!4598757 (= e!2868470 (forall!10598 (t!358197 (Cons!51079 lt!1757696 Nil!51079)) lambda!186124))))

(assert (= (and d!1447939 (not res!1923507)) b!4598756))

(assert (= (and b!4598756 res!1923508) b!4598757))

(declare-fun b_lambda!169385 () Bool)

(assert (=> (not b_lambda!169385) (not b!4598756)))

(declare-fun m!5425217 () Bool)

(assert (=> b!4598756 m!5425217))

(declare-fun m!5425219 () Bool)

(assert (=> b!4598757 m!5425219))

(assert (=> d!1447559 d!1447939))

(declare-fun d!1447941 () Bool)

(assert (=> d!1447941 (isDefined!8659 (getValueByKey!1311 (toList!4652 (extractMap!1378 lt!1757705)) key!3287))))

(declare-fun lt!1758465 () Unit!108077)

(declare-fun choose!30819 (List!51202 K!12445) Unit!108077)

(assert (=> d!1447941 (= lt!1758465 (choose!30819 (toList!4652 (extractMap!1378 lt!1757705)) key!3287))))

(assert (=> d!1447941 (invariantList!1124 (toList!4652 (extractMap!1378 lt!1757705)))))

(assert (=> d!1447941 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1215 (toList!4652 (extractMap!1378 lt!1757705)) key!3287) lt!1758465)))

(declare-fun bs!1011138 () Bool)

(assert (= bs!1011138 d!1447941))

(assert (=> bs!1011138 m!5423887))

(assert (=> bs!1011138 m!5423887))

(assert (=> bs!1011138 m!5423889))

(declare-fun m!5425221 () Bool)

(assert (=> bs!1011138 m!5425221))

(assert (=> bs!1011138 m!5424693))

(assert (=> b!4597992 d!1447941))

(declare-fun d!1447943 () Bool)

(assert (=> d!1447943 (= (isDefined!8659 (getValueByKey!1311 (toList!4652 (extractMap!1378 lt!1757705)) key!3287)) (not (isEmpty!28866 (getValueByKey!1311 (toList!4652 (extractMap!1378 lt!1757705)) key!3287))))))

(declare-fun bs!1011139 () Bool)

(assert (= bs!1011139 d!1447943))

(assert (=> bs!1011139 m!5423887))

(declare-fun m!5425223 () Bool)

(assert (=> bs!1011139 m!5425223))

(assert (=> b!4597992 d!1447943))

(declare-fun b!4598759 () Bool)

(declare-fun e!2868471 () Option!11391)

(declare-fun e!2868472 () Option!11391)

(assert (=> b!4598759 (= e!2868471 e!2868472)))

(declare-fun c!787701 () Bool)

(assert (=> b!4598759 (= c!787701 (and ((_ is Cons!51078) (toList!4652 (extractMap!1378 lt!1757705))) (not (= (_1!29155 (h!57042 (toList!4652 (extractMap!1378 lt!1757705)))) key!3287))))))

(declare-fun b!4598758 () Bool)

(assert (=> b!4598758 (= e!2868471 (Some!11390 (_2!29155 (h!57042 (toList!4652 (extractMap!1378 lt!1757705))))))))

(declare-fun b!4598760 () Bool)

(assert (=> b!4598760 (= e!2868472 (getValueByKey!1311 (t!358196 (toList!4652 (extractMap!1378 lt!1757705))) key!3287))))

(declare-fun b!4598761 () Bool)

(assert (=> b!4598761 (= e!2868472 None!11390)))

(declare-fun d!1447945 () Bool)

(declare-fun c!787700 () Bool)

(assert (=> d!1447945 (= c!787700 (and ((_ is Cons!51078) (toList!4652 (extractMap!1378 lt!1757705))) (= (_1!29155 (h!57042 (toList!4652 (extractMap!1378 lt!1757705)))) key!3287)))))

(assert (=> d!1447945 (= (getValueByKey!1311 (toList!4652 (extractMap!1378 lt!1757705)) key!3287) e!2868471)))

(assert (= (and d!1447945 c!787700) b!4598758))

(assert (= (and d!1447945 (not c!787700)) b!4598759))

(assert (= (and b!4598759 c!787701) b!4598760))

(assert (= (and b!4598759 (not c!787701)) b!4598761))

(declare-fun m!5425225 () Bool)

(assert (=> b!4598760 m!5425225))

(assert (=> b!4597992 d!1447945))

(declare-fun d!1447947 () Bool)

(assert (=> d!1447947 (contains!14029 (getKeysList!573 (toList!4652 (extractMap!1378 lt!1757705))) key!3287)))

(declare-fun lt!1758468 () Unit!108077)

(declare-fun choose!30820 (List!51202 K!12445) Unit!108077)

(assert (=> d!1447947 (= lt!1758468 (choose!30820 (toList!4652 (extractMap!1378 lt!1757705)) key!3287))))

(assert (=> d!1447947 (invariantList!1124 (toList!4652 (extractMap!1378 lt!1757705)))))

(assert (=> d!1447947 (= (lemmaInListThenGetKeysListContains!569 (toList!4652 (extractMap!1378 lt!1757705)) key!3287) lt!1758468)))

(declare-fun bs!1011140 () Bool)

(assert (= bs!1011140 d!1447947))

(assert (=> bs!1011140 m!5423897))

(assert (=> bs!1011140 m!5423897))

(declare-fun m!5425227 () Bool)

(assert (=> bs!1011140 m!5425227))

(declare-fun m!5425229 () Bool)

(assert (=> bs!1011140 m!5425229))

(assert (=> bs!1011140 m!5424693))

(assert (=> b!4597992 d!1447947))

(declare-fun d!1447949 () Bool)

(declare-fun res!1923509 () Bool)

(declare-fun e!2868473 () Bool)

(assert (=> d!1447949 (=> res!1923509 e!2868473)))

(assert (=> d!1447949 (= res!1923509 (and ((_ is Cons!51078) (t!358196 newBucket!178)) (= (_1!29155 (h!57042 (t!358196 newBucket!178))) (_1!29155 (h!57042 newBucket!178)))))))

(assert (=> d!1447949 (= (containsKey!2154 (t!358196 newBucket!178) (_1!29155 (h!57042 newBucket!178))) e!2868473)))

(declare-fun b!4598762 () Bool)

(declare-fun e!2868474 () Bool)

(assert (=> b!4598762 (= e!2868473 e!2868474)))

(declare-fun res!1923510 () Bool)

(assert (=> b!4598762 (=> (not res!1923510) (not e!2868474))))

(assert (=> b!4598762 (= res!1923510 ((_ is Cons!51078) (t!358196 newBucket!178)))))

(declare-fun b!4598763 () Bool)

(assert (=> b!4598763 (= e!2868474 (containsKey!2154 (t!358196 (t!358196 newBucket!178)) (_1!29155 (h!57042 newBucket!178))))))

(assert (= (and d!1447949 (not res!1923509)) b!4598762))

(assert (= (and b!4598762 res!1923510) b!4598763))

(declare-fun m!5425231 () Bool)

(assert (=> b!4598763 m!5425231))

(assert (=> b!4598025 d!1447949))

(declare-fun d!1447951 () Bool)

(assert (=> d!1447951 (= (get!16881 (getValueByKey!1310 (toList!4651 lm!1477) hash!344)) (v!45367 (getValueByKey!1310 (toList!4651 lm!1477) hash!344)))))

(assert (=> d!1447451 d!1447951))

(assert (=> d!1447451 d!1447911))

(declare-fun bs!1011141 () Bool)

(declare-fun b!4598765 () Bool)

(assert (= bs!1011141 (and b!4598765 b!4598604)))

(declare-fun lambda!186284 () Int)

(assert (=> bs!1011141 (= (= (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) lt!1758365) (= lambda!186284 lambda!186276))))

(declare-fun bs!1011142 () Bool)

(assert (= bs!1011142 (and b!4598765 b!4598725)))

(assert (=> bs!1011142 (= (= (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) lt!1758457) (= lambda!186284 lambda!186281))))

(declare-fun bs!1011143 () Bool)

(assert (= bs!1011143 (and b!4598765 d!1447915)))

(assert (=> bs!1011143 (= (= (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) lt!1758451) (= lambda!186284 lambda!186282))))

(declare-fun bs!1011144 () Bool)

(assert (= bs!1011144 (and b!4598765 b!4598603)))

(assert (=> bs!1011144 (= (= (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186284 lambda!186274))))

(declare-fun bs!1011145 () Bool)

(assert (= bs!1011145 (and b!4598765 d!1447491)))

(assert (=> bs!1011145 (not (= lambda!186284 lambda!186099))))

(declare-fun bs!1011146 () Bool)

(assert (= bs!1011146 (and b!4598765 d!1447805)))

(assert (=> bs!1011146 (= (= (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) lt!1758359) (= lambda!186284 lambda!186277))))

(assert (=> bs!1011141 (= (= (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186284 lambda!186275))))

(declare-fun bs!1011147 () Bool)

(assert (= bs!1011147 (and b!4598765 b!4598724)))

(assert (=> bs!1011147 (= (= (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186284 lambda!186279))))

(assert (=> bs!1011142 (= (= (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186284 lambda!186280))))

(assert (=> b!4598765 true))

(declare-fun bs!1011148 () Bool)

(declare-fun b!4598766 () Bool)

(assert (= bs!1011148 (and b!4598766 b!4598604)))

(declare-fun lambda!186285 () Int)

(assert (=> bs!1011148 (= (= (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) lt!1758365) (= lambda!186285 lambda!186276))))

(declare-fun bs!1011149 () Bool)

(assert (= bs!1011149 (and b!4598766 b!4598725)))

(assert (=> bs!1011149 (= (= (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) lt!1758457) (= lambda!186285 lambda!186281))))

(declare-fun bs!1011150 () Bool)

(assert (= bs!1011150 (and b!4598766 b!4598603)))

(assert (=> bs!1011150 (= (= (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186285 lambda!186274))))

(declare-fun bs!1011151 () Bool)

(assert (= bs!1011151 (and b!4598766 d!1447491)))

(assert (=> bs!1011151 (not (= lambda!186285 lambda!186099))))

(declare-fun bs!1011152 () Bool)

(assert (= bs!1011152 (and b!4598766 d!1447805)))

(assert (=> bs!1011152 (= (= (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) lt!1758359) (= lambda!186285 lambda!186277))))

(assert (=> bs!1011148 (= (= (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186285 lambda!186275))))

(declare-fun bs!1011153 () Bool)

(assert (= bs!1011153 (and b!4598766 b!4598765)))

(assert (=> bs!1011153 (= lambda!186285 lambda!186284)))

(declare-fun bs!1011154 () Bool)

(assert (= bs!1011154 (and b!4598766 d!1447915)))

(assert (=> bs!1011154 (= (= (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) lt!1758451) (= lambda!186285 lambda!186282))))

(declare-fun bs!1011155 () Bool)

(assert (= bs!1011155 (and b!4598766 b!4598724)))

(assert (=> bs!1011155 (= (= (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186285 lambda!186279))))

(assert (=> bs!1011149 (= (= (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186285 lambda!186280))))

(assert (=> b!4598766 true))

(declare-fun lambda!186286 () Int)

(declare-fun lt!1758489 () ListMap!3913)

(assert (=> bs!1011148 (= (= lt!1758489 lt!1758365) (= lambda!186286 lambda!186276))))

(assert (=> bs!1011149 (= (= lt!1758489 lt!1758457) (= lambda!186286 lambda!186281))))

(assert (=> bs!1011150 (= (= lt!1758489 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186286 lambda!186274))))

(assert (=> bs!1011151 (not (= lambda!186286 lambda!186099))))

(assert (=> bs!1011152 (= (= lt!1758489 lt!1758359) (= lambda!186286 lambda!186277))))

(assert (=> b!4598766 (= (= lt!1758489 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186286 lambda!186285))))

(assert (=> bs!1011148 (= (= lt!1758489 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186286 lambda!186275))))

(assert (=> bs!1011153 (= (= lt!1758489 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186286 lambda!186284))))

(assert (=> bs!1011154 (= (= lt!1758489 lt!1758451) (= lambda!186286 lambda!186282))))

(assert (=> bs!1011155 (= (= lt!1758489 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186286 lambda!186279))))

(assert (=> bs!1011149 (= (= lt!1758489 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186286 lambda!186280))))

(assert (=> b!4598766 true))

(declare-fun bs!1011156 () Bool)

(declare-fun d!1447953 () Bool)

(assert (= bs!1011156 (and d!1447953 b!4598604)))

(declare-fun lt!1758483 () ListMap!3913)

(declare-fun lambda!186287 () Int)

(assert (=> bs!1011156 (= (= lt!1758483 lt!1758365) (= lambda!186287 lambda!186276))))

(declare-fun bs!1011157 () Bool)

(assert (= bs!1011157 (and d!1447953 b!4598725)))

(assert (=> bs!1011157 (= (= lt!1758483 lt!1758457) (= lambda!186287 lambda!186281))))

(declare-fun bs!1011158 () Bool)

(assert (= bs!1011158 (and d!1447953 b!4598603)))

(assert (=> bs!1011158 (= (= lt!1758483 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186287 lambda!186274))))

(declare-fun bs!1011159 () Bool)

(assert (= bs!1011159 (and d!1447953 d!1447491)))

(assert (=> bs!1011159 (not (= lambda!186287 lambda!186099))))

(declare-fun bs!1011160 () Bool)

(assert (= bs!1011160 (and d!1447953 b!4598766)))

(assert (=> bs!1011160 (= (= lt!1758483 lt!1758489) (= lambda!186287 lambda!186286))))

(declare-fun bs!1011161 () Bool)

(assert (= bs!1011161 (and d!1447953 d!1447805)))

(assert (=> bs!1011161 (= (= lt!1758483 lt!1758359) (= lambda!186287 lambda!186277))))

(assert (=> bs!1011160 (= (= lt!1758483 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186287 lambda!186285))))

(assert (=> bs!1011156 (= (= lt!1758483 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186287 lambda!186275))))

(declare-fun bs!1011162 () Bool)

(assert (= bs!1011162 (and d!1447953 b!4598765)))

(assert (=> bs!1011162 (= (= lt!1758483 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186287 lambda!186284))))

(declare-fun bs!1011163 () Bool)

(assert (= bs!1011163 (and d!1447953 d!1447915)))

(assert (=> bs!1011163 (= (= lt!1758483 lt!1758451) (= lambda!186287 lambda!186282))))

(declare-fun bs!1011164 () Bool)

(assert (= bs!1011164 (and d!1447953 b!4598724)))

(assert (=> bs!1011164 (= (= lt!1758483 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186287 lambda!186279))))

(assert (=> bs!1011157 (= (= lt!1758483 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186287 lambda!186280))))

(assert (=> d!1447953 true))

(declare-fun b!4598764 () Bool)

(declare-fun e!2868475 () Bool)

(assert (=> b!4598764 (= e!2868475 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) lambda!186286))))

(declare-fun e!2868477 () ListMap!3913)

(assert (=> b!4598765 (= e!2868477 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))))))

(declare-fun lt!1758485 () Unit!108077)

(declare-fun call!320949 () Unit!108077)

(assert (=> b!4598765 (= lt!1758485 call!320949)))

(declare-fun call!320950 () Bool)

(assert (=> b!4598765 call!320950))

(declare-fun lt!1758472 () Unit!108077)

(assert (=> b!4598765 (= lt!1758472 lt!1758485)))

(declare-fun call!320951 () Bool)

(assert (=> b!4598765 call!320951))

(declare-fun lt!1758487 () Unit!108077)

(declare-fun Unit!108212 () Unit!108077)

(assert (=> b!4598765 (= lt!1758487 Unit!108212)))

(declare-fun e!2868476 () Bool)

(assert (=> d!1447953 e!2868476))

(declare-fun res!1923511 () Bool)

(assert (=> d!1447953 (=> (not res!1923511) (not e!2868476))))

(assert (=> d!1447953 (= res!1923511 (forall!10600 (_2!29156 (h!57043 (Cons!51079 lt!1757696 Nil!51079))) lambda!186287))))

(assert (=> d!1447953 (= lt!1758483 e!2868477)))

(declare-fun c!787702 () Bool)

(assert (=> d!1447953 (= c!787702 ((_ is Nil!51078) (_2!29156 (h!57043 (Cons!51079 lt!1757696 Nil!51079)))))))

(assert (=> d!1447953 (noDuplicateKeys!1318 (_2!29156 (h!57043 (Cons!51079 lt!1757696 Nil!51079))))))

(assert (=> d!1447953 (= (addToMapMapFromBucket!814 (_2!29156 (h!57043 (Cons!51079 lt!1757696 Nil!51079))) (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) lt!1758483)))

(assert (=> b!4598766 (= e!2868477 lt!1758489)))

(declare-fun lt!1758486 () ListMap!3913)

(assert (=> b!4598766 (= lt!1758486 (+!1746 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) (h!57042 (_2!29156 (h!57043 (Cons!51079 lt!1757696 Nil!51079))))))))

(assert (=> b!4598766 (= lt!1758489 (addToMapMapFromBucket!814 (t!358196 (_2!29156 (h!57043 (Cons!51079 lt!1757696 Nil!51079)))) (+!1746 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) (h!57042 (_2!29156 (h!57043 (Cons!51079 lt!1757696 Nil!51079)))))))))

(declare-fun lt!1758482 () Unit!108077)

(assert (=> b!4598766 (= lt!1758482 call!320949)))

(assert (=> b!4598766 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) lambda!186285)))

(declare-fun lt!1758480 () Unit!108077)

(assert (=> b!4598766 (= lt!1758480 lt!1758482)))

(assert (=> b!4598766 (forall!10600 (toList!4652 lt!1758486) lambda!186286)))

(declare-fun lt!1758488 () Unit!108077)

(declare-fun Unit!108213 () Unit!108077)

(assert (=> b!4598766 (= lt!1758488 Unit!108213)))

(assert (=> b!4598766 (forall!10600 (t!358196 (_2!29156 (h!57043 (Cons!51079 lt!1757696 Nil!51079)))) lambda!186286)))

(declare-fun lt!1758471 () Unit!108077)

(declare-fun Unit!108214 () Unit!108077)

(assert (=> b!4598766 (= lt!1758471 Unit!108214)))

(declare-fun lt!1758484 () Unit!108077)

(declare-fun Unit!108215 () Unit!108077)

(assert (=> b!4598766 (= lt!1758484 Unit!108215)))

(declare-fun lt!1758476 () Unit!108077)

(assert (=> b!4598766 (= lt!1758476 (forallContained!2855 (toList!4652 lt!1758486) lambda!186286 (h!57042 (_2!29156 (h!57043 (Cons!51079 lt!1757696 Nil!51079))))))))

(assert (=> b!4598766 (contains!14027 lt!1758486 (_1!29155 (h!57042 (_2!29156 (h!57043 (Cons!51079 lt!1757696 Nil!51079))))))))

(declare-fun lt!1758478 () Unit!108077)

(declare-fun Unit!108216 () Unit!108077)

(assert (=> b!4598766 (= lt!1758478 Unit!108216)))

(assert (=> b!4598766 (contains!14027 lt!1758489 (_1!29155 (h!57042 (_2!29156 (h!57043 (Cons!51079 lt!1757696 Nil!51079))))))))

(declare-fun lt!1758475 () Unit!108077)

(declare-fun Unit!108217 () Unit!108077)

(assert (=> b!4598766 (= lt!1758475 Unit!108217)))

(assert (=> b!4598766 (forall!10600 (_2!29156 (h!57043 (Cons!51079 lt!1757696 Nil!51079))) lambda!186286)))

(declare-fun lt!1758470 () Unit!108077)

(declare-fun Unit!108218 () Unit!108077)

(assert (=> b!4598766 (= lt!1758470 Unit!108218)))

(assert (=> b!4598766 (forall!10600 (toList!4652 lt!1758486) lambda!186286)))

(declare-fun lt!1758479 () Unit!108077)

(declare-fun Unit!108219 () Unit!108077)

(assert (=> b!4598766 (= lt!1758479 Unit!108219)))

(declare-fun lt!1758481 () Unit!108077)

(declare-fun Unit!108220 () Unit!108077)

(assert (=> b!4598766 (= lt!1758481 Unit!108220)))

(declare-fun lt!1758474 () Unit!108077)

(assert (=> b!4598766 (= lt!1758474 (addForallContainsKeyThenBeforeAdding!436 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) lt!1758489 (_1!29155 (h!57042 (_2!29156 (h!57043 (Cons!51079 lt!1757696 Nil!51079))))) (_2!29155 (h!57042 (_2!29156 (h!57043 (Cons!51079 lt!1757696 Nil!51079)))))))))

(assert (=> b!4598766 call!320950))

(declare-fun lt!1758469 () Unit!108077)

(assert (=> b!4598766 (= lt!1758469 lt!1758474)))

(assert (=> b!4598766 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) lambda!186286)))

(declare-fun lt!1758473 () Unit!108077)

(declare-fun Unit!108221 () Unit!108077)

(assert (=> b!4598766 (= lt!1758473 Unit!108221)))

(declare-fun res!1923513 () Bool)

(assert (=> b!4598766 (= res!1923513 call!320951)))

(assert (=> b!4598766 (=> (not res!1923513) (not e!2868475))))

(assert (=> b!4598766 e!2868475))

(declare-fun lt!1758477 () Unit!108077)

(declare-fun Unit!108222 () Unit!108077)

(assert (=> b!4598766 (= lt!1758477 Unit!108222)))

(declare-fun b!4598767 () Bool)

(declare-fun res!1923512 () Bool)

(assert (=> b!4598767 (=> (not res!1923512) (not e!2868476))))

(assert (=> b!4598767 (= res!1923512 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) lambda!186287))))

(declare-fun bm!320944 () Bool)

(assert (=> bm!320944 (= call!320950 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (ite c!787702 lambda!186284 lambda!186286)))))

(declare-fun bm!320945 () Bool)

(assert (=> bm!320945 (= call!320949 (lemmaContainsAllItsOwnKeys!436 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))))))

(declare-fun b!4598768 () Bool)

(assert (=> b!4598768 (= e!2868476 (invariantList!1124 (toList!4652 lt!1758483)))))

(declare-fun bm!320946 () Bool)

(assert (=> bm!320946 (= call!320951 (forall!10600 (ite c!787702 (toList!4652 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (_2!29156 (h!57043 (Cons!51079 lt!1757696 Nil!51079)))) (ite c!787702 lambda!186284 lambda!186286)))))

(assert (= (and d!1447953 c!787702) b!4598765))

(assert (= (and d!1447953 (not c!787702)) b!4598766))

(assert (= (and b!4598766 res!1923513) b!4598764))

(assert (= (or b!4598765 b!4598766) bm!320944))

(assert (= (or b!4598765 b!4598766) bm!320946))

(assert (= (or b!4598765 b!4598766) bm!320945))

(assert (= (and d!1447953 res!1923511) b!4598767))

(assert (= (and b!4598767 res!1923512) b!4598768))

(declare-fun m!5425233 () Bool)

(assert (=> b!4598766 m!5425233))

(declare-fun m!5425235 () Bool)

(assert (=> b!4598766 m!5425235))

(assert (=> b!4598766 m!5423965))

(declare-fun m!5425237 () Bool)

(assert (=> b!4598766 m!5425237))

(assert (=> b!4598766 m!5425233))

(declare-fun m!5425239 () Bool)

(assert (=> b!4598766 m!5425239))

(assert (=> b!4598766 m!5423965))

(declare-fun m!5425241 () Bool)

(assert (=> b!4598766 m!5425241))

(declare-fun m!5425243 () Bool)

(assert (=> b!4598766 m!5425243))

(declare-fun m!5425245 () Bool)

(assert (=> b!4598766 m!5425245))

(assert (=> b!4598766 m!5425241))

(declare-fun m!5425247 () Bool)

(assert (=> b!4598766 m!5425247))

(declare-fun m!5425249 () Bool)

(assert (=> b!4598766 m!5425249))

(declare-fun m!5425251 () Bool)

(assert (=> b!4598766 m!5425251))

(declare-fun m!5425253 () Bool)

(assert (=> b!4598766 m!5425253))

(declare-fun m!5425255 () Bool)

(assert (=> b!4598768 m!5425255))

(declare-fun m!5425257 () Bool)

(assert (=> bm!320944 m!5425257))

(declare-fun m!5425259 () Bool)

(assert (=> d!1447953 m!5425259))

(declare-fun m!5425261 () Bool)

(assert (=> d!1447953 m!5425261))

(assert (=> b!4598764 m!5425249))

(assert (=> bm!320945 m!5423965))

(declare-fun m!5425263 () Bool)

(assert (=> bm!320945 m!5425263))

(declare-fun m!5425265 () Bool)

(assert (=> bm!320946 m!5425265))

(declare-fun m!5425267 () Bool)

(assert (=> b!4598767 m!5425267))

(assert (=> b!4598011 d!1447953))

(declare-fun bs!1011165 () Bool)

(declare-fun d!1447955 () Bool)

(assert (= bs!1011165 (and d!1447955 d!1447571)))

(declare-fun lambda!186288 () Int)

(assert (=> bs!1011165 (= lambda!186288 lambda!186128)))

(declare-fun bs!1011166 () Bool)

(assert (= bs!1011166 (and d!1447955 d!1447443)))

(assert (=> bs!1011166 (= lambda!186288 lambda!186085)))

(declare-fun bs!1011167 () Bool)

(assert (= bs!1011167 (and d!1447955 d!1447917)))

(assert (=> bs!1011167 (= lambda!186288 lambda!186283)))

(declare-fun bs!1011168 () Bool)

(assert (= bs!1011168 (and d!1447955 d!1447559)))

(assert (=> bs!1011168 (= lambda!186288 lambda!186124)))

(declare-fun bs!1011169 () Bool)

(assert (= bs!1011169 (and d!1447955 d!1447881)))

(assert (=> bs!1011169 (= lambda!186288 lambda!186278)))

(declare-fun bs!1011170 () Bool)

(assert (= bs!1011170 (and d!1447955 start!458760)))

(assert (=> bs!1011170 (= lambda!186288 lambda!186082)))

(declare-fun bs!1011171 () Bool)

(assert (= bs!1011171 (and d!1447955 d!1447517)))

(assert (=> bs!1011171 (= lambda!186288 lambda!186109)))

(declare-fun bs!1011172 () Bool)

(assert (= bs!1011172 (and d!1447955 d!1447547)))

(assert (=> bs!1011172 (= lambda!186288 lambda!186120)))

(declare-fun bs!1011173 () Bool)

(assert (= bs!1011173 (and d!1447955 d!1447503)))

(assert (=> bs!1011173 (= lambda!186288 lambda!186105)))

(declare-fun bs!1011174 () Bool)

(assert (= bs!1011174 (and d!1447955 d!1447543)))

(assert (=> bs!1011174 (= lambda!186288 lambda!186119)))

(declare-fun bs!1011175 () Bool)

(assert (= bs!1011175 (and d!1447955 d!1447557)))

(assert (=> bs!1011175 (= lambda!186288 lambda!186123)))

(declare-fun bs!1011176 () Bool)

(assert (= bs!1011176 (and d!1447955 d!1447565)))

(assert (=> bs!1011176 (not (= lambda!186288 lambda!186127))))

(declare-fun bs!1011177 () Bool)

(assert (= bs!1011177 (and d!1447955 d!1447581)))

(assert (=> bs!1011177 (= lambda!186288 lambda!186130)))

(declare-fun bs!1011178 () Bool)

(assert (= bs!1011178 (and d!1447955 d!1447579)))

(assert (=> bs!1011178 (= lambda!186288 lambda!186129)))

(declare-fun lt!1758490 () ListMap!3913)

(assert (=> d!1447955 (invariantList!1124 (toList!4652 lt!1758490))))

(declare-fun e!2868478 () ListMap!3913)

(assert (=> d!1447955 (= lt!1758490 e!2868478)))

(declare-fun c!787703 () Bool)

(assert (=> d!1447955 (= c!787703 ((_ is Cons!51079) (t!358197 (Cons!51079 lt!1757696 Nil!51079))))))

(assert (=> d!1447955 (forall!10598 (t!358197 (Cons!51079 lt!1757696 Nil!51079)) lambda!186288)))

(assert (=> d!1447955 (= (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079))) lt!1758490)))

(declare-fun b!4598769 () Bool)

(assert (=> b!4598769 (= e!2868478 (addToMapMapFromBucket!814 (_2!29156 (h!57043 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (extractMap!1378 (t!358197 (t!358197 (Cons!51079 lt!1757696 Nil!51079))))))))

(declare-fun b!4598770 () Bool)

(assert (=> b!4598770 (= e!2868478 (ListMap!3914 Nil!51078))))

(assert (= (and d!1447955 c!787703) b!4598769))

(assert (= (and d!1447955 (not c!787703)) b!4598770))

(declare-fun m!5425269 () Bool)

(assert (=> d!1447955 m!5425269))

(declare-fun m!5425271 () Bool)

(assert (=> d!1447955 m!5425271))

(declare-fun m!5425273 () Bool)

(assert (=> b!4598769 m!5425273))

(assert (=> b!4598769 m!5425273))

(declare-fun m!5425275 () Bool)

(assert (=> b!4598769 m!5425275))

(assert (=> b!4598011 d!1447955))

(declare-fun d!1447957 () Bool)

(declare-fun res!1923514 () Bool)

(declare-fun e!2868479 () Bool)

(assert (=> d!1447957 (=> res!1923514 e!2868479)))

(assert (=> d!1447957 (= res!1923514 ((_ is Nil!51079) (t!358197 (toList!4651 lm!1477))))))

(assert (=> d!1447957 (= (forall!10598 (t!358197 (toList!4651 lm!1477)) lambda!186082) e!2868479)))

(declare-fun b!4598771 () Bool)

(declare-fun e!2868480 () Bool)

(assert (=> b!4598771 (= e!2868479 e!2868480)))

(declare-fun res!1923515 () Bool)

(assert (=> b!4598771 (=> (not res!1923515) (not e!2868480))))

(assert (=> b!4598771 (= res!1923515 (dynLambda!21396 lambda!186082 (h!57043 (t!358197 (toList!4651 lm!1477)))))))

(declare-fun b!4598772 () Bool)

(assert (=> b!4598772 (= e!2868480 (forall!10598 (t!358197 (t!358197 (toList!4651 lm!1477))) lambda!186082))))

(assert (= (and d!1447957 (not res!1923514)) b!4598771))

(assert (= (and b!4598771 res!1923515) b!4598772))

(declare-fun b_lambda!169387 () Bool)

(assert (=> (not b_lambda!169387) (not b!4598771)))

(declare-fun m!5425277 () Bool)

(assert (=> b!4598771 m!5425277))

(declare-fun m!5425279 () Bool)

(assert (=> b!4598772 m!5425279))

(assert (=> b!4598018 d!1447957))

(declare-fun d!1447959 () Bool)

(assert (=> d!1447959 (= (invariantList!1124 (toList!4652 lt!1757925)) (noDuplicatedKeys!326 (toList!4652 lt!1757925)))))

(declare-fun bs!1011179 () Bool)

(assert (= bs!1011179 d!1447959))

(declare-fun m!5425281 () Bool)

(assert (=> bs!1011179 m!5425281))

(assert (=> d!1447581 d!1447959))

(declare-fun d!1447961 () Bool)

(declare-fun res!1923516 () Bool)

(declare-fun e!2868481 () Bool)

(assert (=> d!1447961 (=> res!1923516 e!2868481)))

(assert (=> d!1447961 (= res!1923516 ((_ is Nil!51079) (toList!4651 lt!1757703)))))

(assert (=> d!1447961 (= (forall!10598 (toList!4651 lt!1757703) lambda!186130) e!2868481)))

(declare-fun b!4598773 () Bool)

(declare-fun e!2868482 () Bool)

(assert (=> b!4598773 (= e!2868481 e!2868482)))

(declare-fun res!1923517 () Bool)

(assert (=> b!4598773 (=> (not res!1923517) (not e!2868482))))

(assert (=> b!4598773 (= res!1923517 (dynLambda!21396 lambda!186130 (h!57043 (toList!4651 lt!1757703))))))

(declare-fun b!4598774 () Bool)

(assert (=> b!4598774 (= e!2868482 (forall!10598 (t!358197 (toList!4651 lt!1757703)) lambda!186130))))

(assert (= (and d!1447961 (not res!1923516)) b!4598773))

(assert (= (and b!4598773 res!1923517) b!4598774))

(declare-fun b_lambda!169389 () Bool)

(assert (=> (not b_lambda!169389) (not b!4598773)))

(declare-fun m!5425283 () Bool)

(assert (=> b!4598773 m!5425283))

(declare-fun m!5425285 () Bool)

(assert (=> b!4598774 m!5425285))

(assert (=> d!1447581 d!1447961))

(declare-fun b!4598778 () Bool)

(declare-fun e!2868484 () Option!11390)

(assert (=> b!4598778 (= e!2868484 None!11389)))

(declare-fun b!4598777 () Bool)

(assert (=> b!4598777 (= e!2868484 (getValueByKey!1310 (t!358197 (toList!4651 lt!1757898)) (_1!29156 lt!1757696)))))

(declare-fun b!4598775 () Bool)

(declare-fun e!2868483 () Option!11390)

(assert (=> b!4598775 (= e!2868483 (Some!11389 (_2!29156 (h!57043 (toList!4651 lt!1757898)))))))

(declare-fun d!1447963 () Bool)

(declare-fun c!787704 () Bool)

(assert (=> d!1447963 (= c!787704 (and ((_ is Cons!51079) (toList!4651 lt!1757898)) (= (_1!29156 (h!57043 (toList!4651 lt!1757898))) (_1!29156 lt!1757696))))))

(assert (=> d!1447963 (= (getValueByKey!1310 (toList!4651 lt!1757898) (_1!29156 lt!1757696)) e!2868483)))

(declare-fun b!4598776 () Bool)

(assert (=> b!4598776 (= e!2868483 e!2868484)))

(declare-fun c!787705 () Bool)

(assert (=> b!4598776 (= c!787705 (and ((_ is Cons!51079) (toList!4651 lt!1757898)) (not (= (_1!29156 (h!57043 (toList!4651 lt!1757898))) (_1!29156 lt!1757696)))))))

(assert (= (and d!1447963 c!787704) b!4598775))

(assert (= (and d!1447963 (not c!787704)) b!4598776))

(assert (= (and b!4598776 c!787705) b!4598777))

(assert (= (and b!4598776 (not c!787705)) b!4598778))

(declare-fun m!5425287 () Bool)

(assert (=> b!4598777 m!5425287))

(assert (=> b!4598009 d!1447963))

(declare-fun d!1447965 () Bool)

(declare-fun res!1923518 () Bool)

(declare-fun e!2868485 () Bool)

(assert (=> d!1447965 (=> res!1923518 e!2868485)))

(assert (=> d!1447965 (= res!1923518 (and ((_ is Cons!51078) lt!1757800) (= (_1!29155 (h!57042 lt!1757800)) key!3287)))))

(assert (=> d!1447965 (= (containsKey!2154 lt!1757800 key!3287) e!2868485)))

(declare-fun b!4598779 () Bool)

(declare-fun e!2868486 () Bool)

(assert (=> b!4598779 (= e!2868485 e!2868486)))

(declare-fun res!1923519 () Bool)

(assert (=> b!4598779 (=> (not res!1923519) (not e!2868486))))

(assert (=> b!4598779 (= res!1923519 ((_ is Cons!51078) lt!1757800))))

(declare-fun b!4598780 () Bool)

(assert (=> b!4598780 (= e!2868486 (containsKey!2154 (t!358196 lt!1757800) key!3287))))

(assert (= (and d!1447965 (not res!1923518)) b!4598779))

(assert (= (and b!4598779 res!1923519) b!4598780))

(declare-fun m!5425289 () Bool)

(assert (=> b!4598780 m!5425289))

(assert (=> d!1447481 d!1447965))

(declare-fun d!1447967 () Bool)

(declare-fun res!1923520 () Bool)

(declare-fun e!2868487 () Bool)

(assert (=> d!1447967 (=> res!1923520 e!2868487)))

(assert (=> d!1447967 (= res!1923520 (not ((_ is Cons!51078) lt!1757702)))))

(assert (=> d!1447967 (= (noDuplicateKeys!1318 lt!1757702) e!2868487)))

(declare-fun b!4598781 () Bool)

(declare-fun e!2868488 () Bool)

(assert (=> b!4598781 (= e!2868487 e!2868488)))

(declare-fun res!1923521 () Bool)

(assert (=> b!4598781 (=> (not res!1923521) (not e!2868488))))

(assert (=> b!4598781 (= res!1923521 (not (containsKey!2154 (t!358196 lt!1757702) (_1!29155 (h!57042 lt!1757702)))))))

(declare-fun b!4598782 () Bool)

(assert (=> b!4598782 (= e!2868488 (noDuplicateKeys!1318 (t!358196 lt!1757702)))))

(assert (= (and d!1447967 (not res!1923520)) b!4598781))

(assert (= (and b!4598781 res!1923521) b!4598782))

(declare-fun m!5425291 () Bool)

(assert (=> b!4598781 m!5425291))

(declare-fun m!5425293 () Bool)

(assert (=> b!4598782 m!5425293))

(assert (=> d!1447481 d!1447967))

(declare-fun d!1447969 () Bool)

(declare-fun choose!30821 (Hashable!5717 K!12445) (_ BitVec 64))

(assert (=> d!1447969 (= (hash!3217 hashF!1107 key!3287) (choose!30821 hashF!1107 key!3287))))

(declare-fun bs!1011180 () Bool)

(assert (= bs!1011180 d!1447969))

(declare-fun m!5425295 () Bool)

(assert (=> bs!1011180 m!5425295))

(assert (=> d!1447499 d!1447969))

(declare-fun d!1447971 () Bool)

(declare-fun lt!1758491 () Bool)

(assert (=> d!1447971 (= lt!1758491 (select (content!8647 (keys!17884 lt!1757693)) key!3287))))

(declare-fun e!2868490 () Bool)

(assert (=> d!1447971 (= lt!1758491 e!2868490)))

(declare-fun res!1923522 () Bool)

(assert (=> d!1447971 (=> (not res!1923522) (not e!2868490))))

(assert (=> d!1447971 (= res!1923522 ((_ is Cons!51081) (keys!17884 lt!1757693)))))

(assert (=> d!1447971 (= (contains!14029 (keys!17884 lt!1757693) key!3287) lt!1758491)))

(declare-fun b!4598783 () Bool)

(declare-fun e!2868489 () Bool)

(assert (=> b!4598783 (= e!2868490 e!2868489)))

(declare-fun res!1923523 () Bool)

(assert (=> b!4598783 (=> res!1923523 e!2868489)))

(assert (=> b!4598783 (= res!1923523 (= (h!57047 (keys!17884 lt!1757693)) key!3287))))

(declare-fun b!4598784 () Bool)

(assert (=> b!4598784 (= e!2868489 (contains!14029 (t!358199 (keys!17884 lt!1757693)) key!3287))))

(assert (= (and d!1447971 res!1923522) b!4598783))

(assert (= (and b!4598783 (not res!1923523)) b!4598784))

(assert (=> d!1447971 m!5424019))

(declare-fun m!5425297 () Bool)

(assert (=> d!1447971 m!5425297))

(declare-fun m!5425299 () Bool)

(assert (=> d!1447971 m!5425299))

(declare-fun m!5425301 () Bool)

(assert (=> b!4598784 m!5425301))

(assert (=> b!4598045 d!1447971))

(assert (=> b!4598045 d!1447785))

(declare-fun b!4598786 () Bool)

(declare-fun e!2868492 () List!51202)

(declare-fun e!2868491 () List!51202)

(assert (=> b!4598786 (= e!2868492 e!2868491)))

(declare-fun c!787706 () Bool)

(assert (=> b!4598786 (= c!787706 ((_ is Cons!51078) (t!358196 lt!1757702)))))

(declare-fun b!4598788 () Bool)

(assert (=> b!4598788 (= e!2868491 Nil!51078)))

(declare-fun d!1447973 () Bool)

(declare-fun lt!1758492 () List!51202)

(assert (=> d!1447973 (not (containsKey!2154 lt!1758492 key!3287))))

(assert (=> d!1447973 (= lt!1758492 e!2868492)))

(declare-fun c!787707 () Bool)

(assert (=> d!1447973 (= c!787707 (and ((_ is Cons!51078) (t!358196 lt!1757702)) (= (_1!29155 (h!57042 (t!358196 lt!1757702))) key!3287)))))

(assert (=> d!1447973 (noDuplicateKeys!1318 (t!358196 lt!1757702))))

(assert (=> d!1447973 (= (removePairForKey!943 (t!358196 lt!1757702) key!3287) lt!1758492)))

(declare-fun b!4598787 () Bool)

(assert (=> b!4598787 (= e!2868491 (Cons!51078 (h!57042 (t!358196 lt!1757702)) (removePairForKey!943 (t!358196 (t!358196 lt!1757702)) key!3287)))))

(declare-fun b!4598785 () Bool)

(assert (=> b!4598785 (= e!2868492 (t!358196 (t!358196 lt!1757702)))))

(assert (= (and d!1447973 c!787707) b!4598785))

(assert (= (and d!1447973 (not c!787707)) b!4598786))

(assert (= (and b!4598786 c!787706) b!4598787))

(assert (= (and b!4598786 (not c!787706)) b!4598788))

(declare-fun m!5425303 () Bool)

(assert (=> d!1447973 m!5425303))

(assert (=> d!1447973 m!5425293))

(declare-fun m!5425305 () Bool)

(assert (=> b!4598787 m!5425305))

(assert (=> b!4597894 d!1447973))

(assert (=> b!4597989 d!1447943))

(assert (=> b!4597989 d!1447945))

(declare-fun d!1447975 () Bool)

(declare-fun lt!1758493 () Bool)

(assert (=> d!1447975 (= lt!1758493 (select (content!8647 (keys!17884 (extractMap!1378 (toList!4651 lm!1477)))) key!3287))))

(declare-fun e!2868494 () Bool)

(assert (=> d!1447975 (= lt!1758493 e!2868494)))

(declare-fun res!1923524 () Bool)

(assert (=> d!1447975 (=> (not res!1923524) (not e!2868494))))

(assert (=> d!1447975 (= res!1923524 ((_ is Cons!51081) (keys!17884 (extractMap!1378 (toList!4651 lm!1477)))))))

(assert (=> d!1447975 (= (contains!14029 (keys!17884 (extractMap!1378 (toList!4651 lm!1477))) key!3287) lt!1758493)))

(declare-fun b!4598789 () Bool)

(declare-fun e!2868493 () Bool)

(assert (=> b!4598789 (= e!2868494 e!2868493)))

(declare-fun res!1923525 () Bool)

(assert (=> b!4598789 (=> res!1923525 e!2868493)))

(assert (=> b!4598789 (= res!1923525 (= (h!57047 (keys!17884 (extractMap!1378 (toList!4651 lm!1477)))) key!3287))))

(declare-fun b!4598790 () Bool)

(assert (=> b!4598790 (= e!2868493 (contains!14029 (t!358199 (keys!17884 (extractMap!1378 (toList!4651 lm!1477)))) key!3287))))

(assert (= (and d!1447975 res!1923524) b!4598789))

(assert (= (and b!4598789 (not res!1923525)) b!4598790))

(assert (=> d!1447975 m!5423979))

(declare-fun m!5425307 () Bool)

(assert (=> d!1447975 m!5425307))

(declare-fun m!5425309 () Bool)

(assert (=> d!1447975 m!5425309))

(declare-fun m!5425311 () Bool)

(assert (=> b!4598790 m!5425311))

(assert (=> b!4598032 d!1447975))

(assert (=> b!4598032 d!1447771))

(declare-fun d!1447977 () Bool)

(assert (=> d!1447977 (isDefined!8659 (getValueByKey!1311 (toList!4652 lt!1757693) key!3287))))

(declare-fun lt!1758494 () Unit!108077)

(assert (=> d!1447977 (= lt!1758494 (choose!30819 (toList!4652 lt!1757693) key!3287))))

(assert (=> d!1447977 (invariantList!1124 (toList!4652 lt!1757693))))

(assert (=> d!1447977 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1215 (toList!4652 lt!1757693) key!3287) lt!1758494)))

(declare-fun bs!1011181 () Bool)

(assert (= bs!1011181 d!1447977))

(assert (=> bs!1011181 m!5424027))

(assert (=> bs!1011181 m!5424027))

(assert (=> bs!1011181 m!5424029))

(declare-fun m!5425313 () Bool)

(assert (=> bs!1011181 m!5425313))

(assert (=> bs!1011181 m!5424785))

(assert (=> b!4598047 d!1447977))

(assert (=> b!4598047 d!1447897))

(assert (=> b!4598047 d!1447899))

(declare-fun d!1447979 () Bool)

(assert (=> d!1447979 (contains!14029 (getKeysList!573 (toList!4652 lt!1757693)) key!3287)))

(declare-fun lt!1758495 () Unit!108077)

(assert (=> d!1447979 (= lt!1758495 (choose!30820 (toList!4652 lt!1757693) key!3287))))

(assert (=> d!1447979 (invariantList!1124 (toList!4652 lt!1757693))))

(assert (=> d!1447979 (= (lemmaInListThenGetKeysListContains!569 (toList!4652 lt!1757693) key!3287) lt!1758495)))

(declare-fun bs!1011182 () Bool)

(assert (= bs!1011182 d!1447979))

(assert (=> bs!1011182 m!5424037))

(assert (=> bs!1011182 m!5424037))

(declare-fun m!5425315 () Bool)

(assert (=> bs!1011182 m!5425315))

(declare-fun m!5425317 () Bool)

(assert (=> bs!1011182 m!5425317))

(assert (=> bs!1011182 m!5424785))

(assert (=> b!4598047 d!1447979))

(declare-fun d!1447981 () Bool)

(declare-fun e!2868496 () Bool)

(assert (=> d!1447981 e!2868496))

(declare-fun res!1923526 () Bool)

(assert (=> d!1447981 (=> res!1923526 e!2868496)))

(declare-fun lt!1758496 () Bool)

(assert (=> d!1447981 (= res!1923526 (not lt!1758496))))

(declare-fun lt!1758498 () Bool)

(assert (=> d!1447981 (= lt!1758496 lt!1758498)))

(declare-fun lt!1758497 () Unit!108077)

(declare-fun e!2868495 () Unit!108077)

(assert (=> d!1447981 (= lt!1758497 e!2868495)))

(declare-fun c!787708 () Bool)

(assert (=> d!1447981 (= c!787708 lt!1758498)))

(assert (=> d!1447981 (= lt!1758498 (containsKey!2157 (toList!4651 lt!1757703) (hash!3213 hashF!1107 key!3287)))))

(assert (=> d!1447981 (= (contains!14025 lt!1757703 (hash!3213 hashF!1107 key!3287)) lt!1758496)))

(declare-fun b!4598791 () Bool)

(declare-fun lt!1758499 () Unit!108077)

(assert (=> b!4598791 (= e!2868495 lt!1758499)))

(assert (=> b!4598791 (= lt!1758499 (lemmaContainsKeyImpliesGetValueByKeyDefined!1214 (toList!4651 lt!1757703) (hash!3213 hashF!1107 key!3287)))))

(assert (=> b!4598791 (isDefined!8658 (getValueByKey!1310 (toList!4651 lt!1757703) (hash!3213 hashF!1107 key!3287)))))

(declare-fun b!4598792 () Bool)

(declare-fun Unit!108232 () Unit!108077)

(assert (=> b!4598792 (= e!2868495 Unit!108232)))

(declare-fun b!4598793 () Bool)

(assert (=> b!4598793 (= e!2868496 (isDefined!8658 (getValueByKey!1310 (toList!4651 lt!1757703) (hash!3213 hashF!1107 key!3287))))))

(assert (= (and d!1447981 c!787708) b!4598791))

(assert (= (and d!1447981 (not c!787708)) b!4598792))

(assert (= (and d!1447981 (not res!1923526)) b!4598793))

(assert (=> d!1447981 m!5423565))

(declare-fun m!5425319 () Bool)

(assert (=> d!1447981 m!5425319))

(assert (=> b!4598791 m!5423565))

(declare-fun m!5425321 () Bool)

(assert (=> b!4598791 m!5425321))

(assert (=> b!4598791 m!5423565))

(declare-fun m!5425323 () Bool)

(assert (=> b!4598791 m!5425323))

(assert (=> b!4598791 m!5425323))

(declare-fun m!5425325 () Bool)

(assert (=> b!4598791 m!5425325))

(assert (=> b!4598793 m!5423565))

(assert (=> b!4598793 m!5425323))

(assert (=> b!4598793 m!5425323))

(assert (=> b!4598793 m!5425325))

(assert (=> d!1447517 d!1447981))

(assert (=> d!1447517 d!1447499))

(declare-fun d!1447983 () Bool)

(assert (=> d!1447983 (contains!14025 lt!1757703 (hash!3213 hashF!1107 key!3287))))

(assert (=> d!1447983 true))

(declare-fun _$27!1434 () Unit!108077)

(assert (=> d!1447983 (= (choose!30804 lt!1757703 key!3287 hashF!1107) _$27!1434)))

(declare-fun bs!1011183 () Bool)

(assert (= bs!1011183 d!1447983))

(assert (=> bs!1011183 m!5423565))

(assert (=> bs!1011183 m!5423565))

(assert (=> bs!1011183 m!5423837))

(assert (=> d!1447517 d!1447983))

(declare-fun d!1447985 () Bool)

(declare-fun res!1923527 () Bool)

(declare-fun e!2868497 () Bool)

(assert (=> d!1447985 (=> res!1923527 e!2868497)))

(assert (=> d!1447985 (= res!1923527 ((_ is Nil!51079) (toList!4651 lt!1757703)))))

(assert (=> d!1447985 (= (forall!10598 (toList!4651 lt!1757703) lambda!186109) e!2868497)))

(declare-fun b!4598794 () Bool)

(declare-fun e!2868498 () Bool)

(assert (=> b!4598794 (= e!2868497 e!2868498)))

(declare-fun res!1923528 () Bool)

(assert (=> b!4598794 (=> (not res!1923528) (not e!2868498))))

(assert (=> b!4598794 (= res!1923528 (dynLambda!21396 lambda!186109 (h!57043 (toList!4651 lt!1757703))))))

(declare-fun b!4598795 () Bool)

(assert (=> b!4598795 (= e!2868498 (forall!10598 (t!358197 (toList!4651 lt!1757703)) lambda!186109))))

(assert (= (and d!1447985 (not res!1923527)) b!4598794))

(assert (= (and b!4598794 res!1923528) b!4598795))

(declare-fun b_lambda!169391 () Bool)

(assert (=> (not b_lambda!169391) (not b!4598794)))

(declare-fun m!5425327 () Bool)

(assert (=> b!4598794 m!5425327))

(declare-fun m!5425329 () Bool)

(assert (=> b!4598795 m!5425329))

(assert (=> d!1447517 d!1447985))

(declare-fun d!1447987 () Bool)

(assert (=> d!1447987 (isDefined!8659 (getValueByKey!1311 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) key!3287))))

(declare-fun lt!1758500 () Unit!108077)

(assert (=> d!1447987 (= lt!1758500 (choose!30819 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) key!3287))))

(assert (=> d!1447987 (invariantList!1124 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))))

(assert (=> d!1447987 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1215 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) key!3287) lt!1758500)))

(declare-fun bs!1011184 () Bool)

(assert (= bs!1011184 d!1447987))

(assert (=> bs!1011184 m!5423987))

(assert (=> bs!1011184 m!5423987))

(assert (=> bs!1011184 m!5423989))

(declare-fun m!5425331 () Bool)

(assert (=> bs!1011184 m!5425331))

(assert (=> bs!1011184 m!5424791))

(assert (=> b!4598034 d!1447987))

(assert (=> b!4598034 d!1447905))

(assert (=> b!4598034 d!1447907))

(declare-fun d!1447989 () Bool)

(assert (=> d!1447989 (contains!14029 (getKeysList!573 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) key!3287)))

(declare-fun lt!1758501 () Unit!108077)

(assert (=> d!1447989 (= lt!1758501 (choose!30820 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) key!3287))))

(assert (=> d!1447989 (invariantList!1124 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))))

(assert (=> d!1447989 (= (lemmaInListThenGetKeysListContains!569 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) key!3287) lt!1758501)))

(declare-fun bs!1011185 () Bool)

(assert (= bs!1011185 d!1447989))

(assert (=> bs!1011185 m!5423997))

(assert (=> bs!1011185 m!5423997))

(declare-fun m!5425333 () Bool)

(assert (=> bs!1011185 m!5425333))

(declare-fun m!5425335 () Bool)

(assert (=> bs!1011185 m!5425335))

(assert (=> bs!1011185 m!5424791))

(assert (=> b!4598034 d!1447989))

(declare-fun d!1447991 () Bool)

(declare-fun res!1923529 () Bool)

(declare-fun e!2868499 () Bool)

(assert (=> d!1447991 (=> res!1923529 e!2868499)))

(assert (=> d!1447991 (= res!1923529 (and ((_ is Cons!51079) (toList!4651 lt!1757703)) (= (_1!29156 (h!57043 (toList!4651 lt!1757703))) lt!1757708)))))

(assert (=> d!1447991 (= (containsKey!2157 (toList!4651 lt!1757703) lt!1757708) e!2868499)))

(declare-fun b!4598796 () Bool)

(declare-fun e!2868500 () Bool)

(assert (=> b!4598796 (= e!2868499 e!2868500)))

(declare-fun res!1923530 () Bool)

(assert (=> b!4598796 (=> (not res!1923530) (not e!2868500))))

(assert (=> b!4598796 (= res!1923530 (and (or (not ((_ is Cons!51079) (toList!4651 lt!1757703))) (bvsle (_1!29156 (h!57043 (toList!4651 lt!1757703))) lt!1757708)) ((_ is Cons!51079) (toList!4651 lt!1757703)) (bvslt (_1!29156 (h!57043 (toList!4651 lt!1757703))) lt!1757708)))))

(declare-fun b!4598797 () Bool)

(assert (=> b!4598797 (= e!2868500 (containsKey!2157 (t!358197 (toList!4651 lt!1757703)) lt!1757708))))

(assert (= (and d!1447991 (not res!1923529)) b!4598796))

(assert (= (and b!4598796 res!1923530) b!4598797))

(declare-fun m!5425337 () Bool)

(assert (=> b!4598797 m!5425337))

(assert (=> d!1447513 d!1447991))

(declare-fun d!1447993 () Bool)

(declare-fun res!1923531 () Bool)

(declare-fun e!2868501 () Bool)

(assert (=> d!1447993 (=> res!1923531 e!2868501)))

(assert (=> d!1447993 (= res!1923531 ((_ is Nil!51079) (toList!4651 lm!1477)))))

(assert (=> d!1447993 (= (forall!10598 (toList!4651 lm!1477) lambda!186127) e!2868501)))

(declare-fun b!4598798 () Bool)

(declare-fun e!2868502 () Bool)

(assert (=> b!4598798 (= e!2868501 e!2868502)))

(declare-fun res!1923532 () Bool)

(assert (=> b!4598798 (=> (not res!1923532) (not e!2868502))))

(assert (=> b!4598798 (= res!1923532 (dynLambda!21396 lambda!186127 (h!57043 (toList!4651 lm!1477))))))

(declare-fun b!4598799 () Bool)

(assert (=> b!4598799 (= e!2868502 (forall!10598 (t!358197 (toList!4651 lm!1477)) lambda!186127))))

(assert (= (and d!1447993 (not res!1923531)) b!4598798))

(assert (= (and b!4598798 res!1923532) b!4598799))

(declare-fun b_lambda!169393 () Bool)

(assert (=> (not b_lambda!169393) (not b!4598798)))

(declare-fun m!5425339 () Bool)

(assert (=> b!4598798 m!5425339))

(declare-fun m!5425341 () Bool)

(assert (=> b!4598799 m!5425341))

(assert (=> d!1447565 d!1447993))

(declare-fun d!1447995 () Bool)

(assert (=> d!1447995 (= (invariantList!1124 (toList!4652 lt!1757911)) (noDuplicatedKeys!326 (toList!4652 lt!1757911)))))

(declare-fun bs!1011186 () Bool)

(assert (= bs!1011186 d!1447995))

(declare-fun m!5425343 () Bool)

(assert (=> bs!1011186 m!5425343))

(assert (=> d!1447571 d!1447995))

(declare-fun d!1447997 () Bool)

(declare-fun res!1923533 () Bool)

(declare-fun e!2868503 () Bool)

(assert (=> d!1447997 (=> res!1923533 e!2868503)))

(assert (=> d!1447997 (= res!1923533 ((_ is Nil!51079) (toList!4651 lm!1477)))))

(assert (=> d!1447997 (= (forall!10598 (toList!4651 lm!1477) lambda!186128) e!2868503)))

(declare-fun b!4598800 () Bool)

(declare-fun e!2868504 () Bool)

(assert (=> b!4598800 (= e!2868503 e!2868504)))

(declare-fun res!1923534 () Bool)

(assert (=> b!4598800 (=> (not res!1923534) (not e!2868504))))

(assert (=> b!4598800 (= res!1923534 (dynLambda!21396 lambda!186128 (h!57043 (toList!4651 lm!1477))))))

(declare-fun b!4598801 () Bool)

(assert (=> b!4598801 (= e!2868504 (forall!10598 (t!358197 (toList!4651 lm!1477)) lambda!186128))))

(assert (= (and d!1447997 (not res!1923533)) b!4598800))

(assert (= (and b!4598800 res!1923534) b!4598801))

(declare-fun b_lambda!169395 () Bool)

(assert (=> (not b_lambda!169395) (not b!4598800)))

(declare-fun m!5425345 () Bool)

(assert (=> b!4598800 m!5425345))

(declare-fun m!5425347 () Bool)

(assert (=> b!4598801 m!5425347))

(assert (=> d!1447571 d!1447997))

(assert (=> b!4597838 d!1447891))

(assert (=> b!4597838 d!1447893))

(assert (=> b!4597991 d!1447801))

(declare-fun bs!1011187 () Bool)

(declare-fun b!4598803 () Bool)

(assert (= bs!1011187 (and b!4598803 b!4598725)))

(declare-fun lambda!186289 () Int)

(assert (=> bs!1011187 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) lt!1758457) (= lambda!186289 lambda!186281))))

(declare-fun bs!1011188 () Bool)

(assert (= bs!1011188 (and b!4598803 b!4598603)))

(assert (=> bs!1011188 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186289 lambda!186274))))

(declare-fun bs!1011189 () Bool)

(assert (= bs!1011189 (and b!4598803 d!1447491)))

(assert (=> bs!1011189 (not (= lambda!186289 lambda!186099))))

(declare-fun bs!1011190 () Bool)

(assert (= bs!1011190 (and b!4598803 b!4598766)))

(assert (=> bs!1011190 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) lt!1758489) (= lambda!186289 lambda!186286))))

(declare-fun bs!1011191 () Bool)

(assert (= bs!1011191 (and b!4598803 d!1447805)))

(assert (=> bs!1011191 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) lt!1758359) (= lambda!186289 lambda!186277))))

(assert (=> bs!1011190 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186289 lambda!186285))))

(declare-fun bs!1011192 () Bool)

(assert (= bs!1011192 (and b!4598803 b!4598604)))

(assert (=> bs!1011192 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186289 lambda!186275))))

(declare-fun bs!1011193 () Bool)

(assert (= bs!1011193 (and b!4598803 d!1447953)))

(assert (=> bs!1011193 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) lt!1758483) (= lambda!186289 lambda!186287))))

(assert (=> bs!1011192 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) lt!1758365) (= lambda!186289 lambda!186276))))

(declare-fun bs!1011194 () Bool)

(assert (= bs!1011194 (and b!4598803 b!4598765)))

(assert (=> bs!1011194 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186289 lambda!186284))))

(declare-fun bs!1011195 () Bool)

(assert (= bs!1011195 (and b!4598803 d!1447915)))

(assert (=> bs!1011195 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) lt!1758451) (= lambda!186289 lambda!186282))))

(declare-fun bs!1011196 () Bool)

(assert (= bs!1011196 (and b!4598803 b!4598724)))

(assert (=> bs!1011196 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186289 lambda!186279))))

(assert (=> bs!1011187 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186289 lambda!186280))))

(assert (=> b!4598803 true))

(declare-fun bs!1011197 () Bool)

(declare-fun b!4598804 () Bool)

(assert (= bs!1011197 (and b!4598804 b!4598725)))

(declare-fun lambda!186290 () Int)

(assert (=> bs!1011197 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) lt!1758457) (= lambda!186290 lambda!186281))))

(declare-fun bs!1011198 () Bool)

(assert (= bs!1011198 (and b!4598804 b!4598803)))

(assert (=> bs!1011198 (= lambda!186290 lambda!186289)))

(declare-fun bs!1011199 () Bool)

(assert (= bs!1011199 (and b!4598804 b!4598603)))

(assert (=> bs!1011199 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186290 lambda!186274))))

(declare-fun bs!1011200 () Bool)

(assert (= bs!1011200 (and b!4598804 d!1447491)))

(assert (=> bs!1011200 (not (= lambda!186290 lambda!186099))))

(declare-fun bs!1011201 () Bool)

(assert (= bs!1011201 (and b!4598804 b!4598766)))

(assert (=> bs!1011201 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) lt!1758489) (= lambda!186290 lambda!186286))))

(declare-fun bs!1011202 () Bool)

(assert (= bs!1011202 (and b!4598804 d!1447805)))

(assert (=> bs!1011202 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) lt!1758359) (= lambda!186290 lambda!186277))))

(assert (=> bs!1011201 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186290 lambda!186285))))

(declare-fun bs!1011203 () Bool)

(assert (= bs!1011203 (and b!4598804 b!4598604)))

(assert (=> bs!1011203 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186290 lambda!186275))))

(declare-fun bs!1011204 () Bool)

(assert (= bs!1011204 (and b!4598804 d!1447953)))

(assert (=> bs!1011204 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) lt!1758483) (= lambda!186290 lambda!186287))))

(assert (=> bs!1011203 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) lt!1758365) (= lambda!186290 lambda!186276))))

(declare-fun bs!1011205 () Bool)

(assert (= bs!1011205 (and b!4598804 b!4598765)))

(assert (=> bs!1011205 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186290 lambda!186284))))

(declare-fun bs!1011206 () Bool)

(assert (= bs!1011206 (and b!4598804 d!1447915)))

(assert (=> bs!1011206 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) lt!1758451) (= lambda!186290 lambda!186282))))

(declare-fun bs!1011207 () Bool)

(assert (= bs!1011207 (and b!4598804 b!4598724)))

(assert (=> bs!1011207 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186290 lambda!186279))))

(assert (=> bs!1011197 (= (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186290 lambda!186280))))

(assert (=> b!4598804 true))

(declare-fun lt!1758522 () ListMap!3913)

(declare-fun lambda!186291 () Int)

(assert (=> bs!1011197 (= (= lt!1758522 lt!1758457) (= lambda!186291 lambda!186281))))

(assert (=> bs!1011198 (= (= lt!1758522 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186291 lambda!186289))))

(assert (=> bs!1011199 (= (= lt!1758522 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186291 lambda!186274))))

(assert (=> bs!1011201 (= (= lt!1758522 lt!1758489) (= lambda!186291 lambda!186286))))

(assert (=> bs!1011202 (= (= lt!1758522 lt!1758359) (= lambda!186291 lambda!186277))))

(assert (=> bs!1011201 (= (= lt!1758522 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186291 lambda!186285))))

(assert (=> bs!1011203 (= (= lt!1758522 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186291 lambda!186275))))

(assert (=> bs!1011204 (= (= lt!1758522 lt!1758483) (= lambda!186291 lambda!186287))))

(assert (=> bs!1011203 (= (= lt!1758522 lt!1758365) (= lambda!186291 lambda!186276))))

(assert (=> bs!1011205 (= (= lt!1758522 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186291 lambda!186284))))

(assert (=> bs!1011206 (= (= lt!1758522 lt!1758451) (= lambda!186291 lambda!186282))))

(assert (=> b!4598804 (= (= lt!1758522 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186291 lambda!186290))))

(assert (=> bs!1011200 (not (= lambda!186291 lambda!186099))))

(assert (=> bs!1011207 (= (= lt!1758522 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186291 lambda!186279))))

(assert (=> bs!1011197 (= (= lt!1758522 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186291 lambda!186280))))

(assert (=> b!4598804 true))

(declare-fun bs!1011208 () Bool)

(declare-fun d!1447999 () Bool)

(assert (= bs!1011208 (and d!1447999 b!4598725)))

(declare-fun lt!1758516 () ListMap!3913)

(declare-fun lambda!186292 () Int)

(assert (=> bs!1011208 (= (= lt!1758516 lt!1758457) (= lambda!186292 lambda!186281))))

(declare-fun bs!1011209 () Bool)

(assert (= bs!1011209 (and d!1447999 b!4598804)))

(assert (=> bs!1011209 (= (= lt!1758516 lt!1758522) (= lambda!186292 lambda!186291))))

(declare-fun bs!1011210 () Bool)

(assert (= bs!1011210 (and d!1447999 b!4598803)))

(assert (=> bs!1011210 (= (= lt!1758516 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186292 lambda!186289))))

(declare-fun bs!1011211 () Bool)

(assert (= bs!1011211 (and d!1447999 b!4598603)))

(assert (=> bs!1011211 (= (= lt!1758516 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186292 lambda!186274))))

(declare-fun bs!1011212 () Bool)

(assert (= bs!1011212 (and d!1447999 b!4598766)))

(assert (=> bs!1011212 (= (= lt!1758516 lt!1758489) (= lambda!186292 lambda!186286))))

(declare-fun bs!1011213 () Bool)

(assert (= bs!1011213 (and d!1447999 d!1447805)))

(assert (=> bs!1011213 (= (= lt!1758516 lt!1758359) (= lambda!186292 lambda!186277))))

(assert (=> bs!1011212 (= (= lt!1758516 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186292 lambda!186285))))

(declare-fun bs!1011214 () Bool)

(assert (= bs!1011214 (and d!1447999 b!4598604)))

(assert (=> bs!1011214 (= (= lt!1758516 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186292 lambda!186275))))

(declare-fun bs!1011215 () Bool)

(assert (= bs!1011215 (and d!1447999 d!1447953)))

(assert (=> bs!1011215 (= (= lt!1758516 lt!1758483) (= lambda!186292 lambda!186287))))

(assert (=> bs!1011214 (= (= lt!1758516 lt!1758365) (= lambda!186292 lambda!186276))))

(declare-fun bs!1011216 () Bool)

(assert (= bs!1011216 (and d!1447999 b!4598765)))

(assert (=> bs!1011216 (= (= lt!1758516 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186292 lambda!186284))))

(declare-fun bs!1011217 () Bool)

(assert (= bs!1011217 (and d!1447999 d!1447915)))

(assert (=> bs!1011217 (= (= lt!1758516 lt!1758451) (= lambda!186292 lambda!186282))))

(assert (=> bs!1011209 (= (= lt!1758516 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186292 lambda!186290))))

(declare-fun bs!1011218 () Bool)

(assert (= bs!1011218 (and d!1447999 d!1447491)))

(assert (=> bs!1011218 (not (= lambda!186292 lambda!186099))))

(declare-fun bs!1011219 () Bool)

(assert (= bs!1011219 (and d!1447999 b!4598724)))

(assert (=> bs!1011219 (= (= lt!1758516 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186292 lambda!186279))))

(assert (=> bs!1011208 (= (= lt!1758516 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186292 lambda!186280))))

(assert (=> d!1447999 true))

(declare-fun e!2868505 () Bool)

(declare-fun b!4598802 () Bool)

(assert (=> b!4598802 (= e!2868505 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) lambda!186291))))

(declare-fun e!2868507 () ListMap!3913)

(assert (=> b!4598803 (= e!2868507 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))))

(declare-fun lt!1758518 () Unit!108077)

(declare-fun call!320952 () Unit!108077)

(assert (=> b!4598803 (= lt!1758518 call!320952)))

(declare-fun call!320953 () Bool)

(assert (=> b!4598803 call!320953))

(declare-fun lt!1758505 () Unit!108077)

(assert (=> b!4598803 (= lt!1758505 lt!1758518)))

(declare-fun call!320954 () Bool)

(assert (=> b!4598803 call!320954))

(declare-fun lt!1758520 () Unit!108077)

(declare-fun Unit!108234 () Unit!108077)

(assert (=> b!4598803 (= lt!1758520 Unit!108234)))

(declare-fun e!2868506 () Bool)

(assert (=> d!1447999 e!2868506))

(declare-fun res!1923535 () Bool)

(assert (=> d!1447999 (=> (not res!1923535) (not e!2868506))))

(assert (=> d!1447999 (= res!1923535 (forall!10600 (_2!29156 (h!57043 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) lambda!186292))))

(assert (=> d!1447999 (= lt!1758516 e!2868507)))

(declare-fun c!787709 () Bool)

(assert (=> d!1447999 (= c!787709 ((_ is Nil!51078) (_2!29156 (h!57043 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))))))

(assert (=> d!1447999 (noDuplicateKeys!1318 (_2!29156 (h!57043 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))))

(assert (=> d!1447999 (= (addToMapMapFromBucket!814 (_2!29156 (h!57043 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) lt!1758516)))

(assert (=> b!4598804 (= e!2868507 lt!1758522)))

(declare-fun lt!1758519 () ListMap!3913)

(assert (=> b!4598804 (= lt!1758519 (+!1746 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (h!57042 (_2!29156 (h!57043 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))))))

(assert (=> b!4598804 (= lt!1758522 (addToMapMapFromBucket!814 (t!358196 (_2!29156 (h!57043 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (+!1746 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (h!57042 (_2!29156 (h!57043 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))))))))

(declare-fun lt!1758515 () Unit!108077)

(assert (=> b!4598804 (= lt!1758515 call!320952)))

(assert (=> b!4598804 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) lambda!186290)))

(declare-fun lt!1758513 () Unit!108077)

(assert (=> b!4598804 (= lt!1758513 lt!1758515)))

(assert (=> b!4598804 (forall!10600 (toList!4652 lt!1758519) lambda!186291)))

(declare-fun lt!1758521 () Unit!108077)

(declare-fun Unit!108236 () Unit!108077)

(assert (=> b!4598804 (= lt!1758521 Unit!108236)))

(assert (=> b!4598804 (forall!10600 (t!358196 (_2!29156 (h!57043 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) lambda!186291)))

(declare-fun lt!1758504 () Unit!108077)

(declare-fun Unit!108238 () Unit!108077)

(assert (=> b!4598804 (= lt!1758504 Unit!108238)))

(declare-fun lt!1758517 () Unit!108077)

(declare-fun Unit!108239 () Unit!108077)

(assert (=> b!4598804 (= lt!1758517 Unit!108239)))

(declare-fun lt!1758509 () Unit!108077)

(assert (=> b!4598804 (= lt!1758509 (forallContained!2855 (toList!4652 lt!1758519) lambda!186291 (h!57042 (_2!29156 (h!57043 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))))))

(assert (=> b!4598804 (contains!14027 lt!1758519 (_1!29155 (h!57042 (_2!29156 (h!57043 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))))))

(declare-fun lt!1758511 () Unit!108077)

(declare-fun Unit!108242 () Unit!108077)

(assert (=> b!4598804 (= lt!1758511 Unit!108242)))

(assert (=> b!4598804 (contains!14027 lt!1758522 (_1!29155 (h!57042 (_2!29156 (h!57043 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))))))

(declare-fun lt!1758508 () Unit!108077)

(declare-fun Unit!108243 () Unit!108077)

(assert (=> b!4598804 (= lt!1758508 Unit!108243)))

(assert (=> b!4598804 (forall!10600 (_2!29156 (h!57043 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) lambda!186291)))

(declare-fun lt!1758503 () Unit!108077)

(declare-fun Unit!108244 () Unit!108077)

(assert (=> b!4598804 (= lt!1758503 Unit!108244)))

(assert (=> b!4598804 (forall!10600 (toList!4652 lt!1758519) lambda!186291)))

(declare-fun lt!1758512 () Unit!108077)

(declare-fun Unit!108245 () Unit!108077)

(assert (=> b!4598804 (= lt!1758512 Unit!108245)))

(declare-fun lt!1758514 () Unit!108077)

(declare-fun Unit!108246 () Unit!108077)

(assert (=> b!4598804 (= lt!1758514 Unit!108246)))

(declare-fun lt!1758507 () Unit!108077)

(assert (=> b!4598804 (= lt!1758507 (addForallContainsKeyThenBeforeAdding!436 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) lt!1758522 (_1!29155 (h!57042 (_2!29156 (h!57043 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))) (_2!29155 (h!57042 (_2!29156 (h!57043 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))))))))

(assert (=> b!4598804 call!320953))

(declare-fun lt!1758502 () Unit!108077)

(assert (=> b!4598804 (= lt!1758502 lt!1758507)))

(assert (=> b!4598804 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) lambda!186291)))

(declare-fun lt!1758506 () Unit!108077)

(declare-fun Unit!108247 () Unit!108077)

(assert (=> b!4598804 (= lt!1758506 Unit!108247)))

(declare-fun res!1923537 () Bool)

(assert (=> b!4598804 (= res!1923537 call!320954)))

(assert (=> b!4598804 (=> (not res!1923537) (not e!2868505))))

(assert (=> b!4598804 e!2868505))

(declare-fun lt!1758510 () Unit!108077)

(declare-fun Unit!108248 () Unit!108077)

(assert (=> b!4598804 (= lt!1758510 Unit!108248)))

(declare-fun b!4598805 () Bool)

(declare-fun res!1923536 () Bool)

(assert (=> b!4598805 (=> (not res!1923536) (not e!2868506))))

(assert (=> b!4598805 (= res!1923536 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) lambda!186292))))

(declare-fun bm!320947 () Bool)

(assert (=> bm!320947 (= call!320953 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (ite c!787709 lambda!186289 lambda!186291)))))

(declare-fun bm!320948 () Bool)

(assert (=> bm!320948 (= call!320952 (lemmaContainsAllItsOwnKeys!436 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))))))

(declare-fun b!4598806 () Bool)

(assert (=> b!4598806 (= e!2868506 (invariantList!1124 (toList!4652 lt!1758516)))))

(declare-fun bm!320949 () Bool)

(assert (=> bm!320949 (= call!320954 (forall!10600 (ite c!787709 (toList!4652 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (_2!29156 (h!57043 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (ite c!787709 lambda!186289 lambda!186291)))))

(assert (= (and d!1447999 c!787709) b!4598803))

(assert (= (and d!1447999 (not c!787709)) b!4598804))

(assert (= (and b!4598804 res!1923537) b!4598802))

(assert (= (or b!4598803 b!4598804) bm!320947))

(assert (= (or b!4598803 b!4598804) bm!320949))

(assert (= (or b!4598803 b!4598804) bm!320948))

(assert (= (and d!1447999 res!1923535) b!4598805))

(assert (= (and b!4598805 res!1923536) b!4598806))

(declare-fun m!5425349 () Bool)

(assert (=> b!4598804 m!5425349))

(declare-fun m!5425351 () Bool)

(assert (=> b!4598804 m!5425351))

(assert (=> b!4598804 m!5423903))

(declare-fun m!5425353 () Bool)

(assert (=> b!4598804 m!5425353))

(assert (=> b!4598804 m!5425349))

(declare-fun m!5425355 () Bool)

(assert (=> b!4598804 m!5425355))

(assert (=> b!4598804 m!5423903))

(declare-fun m!5425357 () Bool)

(assert (=> b!4598804 m!5425357))

(declare-fun m!5425359 () Bool)

(assert (=> b!4598804 m!5425359))

(declare-fun m!5425361 () Bool)

(assert (=> b!4598804 m!5425361))

(assert (=> b!4598804 m!5425357))

(declare-fun m!5425363 () Bool)

(assert (=> b!4598804 m!5425363))

(declare-fun m!5425365 () Bool)

(assert (=> b!4598804 m!5425365))

(declare-fun m!5425367 () Bool)

(assert (=> b!4598804 m!5425367))

(declare-fun m!5425369 () Bool)

(assert (=> b!4598804 m!5425369))

(declare-fun m!5425371 () Bool)

(assert (=> b!4598806 m!5425371))

(declare-fun m!5425373 () Bool)

(assert (=> bm!320947 m!5425373))

(declare-fun m!5425375 () Bool)

(assert (=> d!1447999 m!5425375))

(declare-fun m!5425377 () Bool)

(assert (=> d!1447999 m!5425377))

(assert (=> b!4598802 m!5425365))

(assert (=> bm!320948 m!5423903))

(declare-fun m!5425379 () Bool)

(assert (=> bm!320948 m!5425379))

(declare-fun m!5425381 () Bool)

(assert (=> bm!320949 m!5425381))

(declare-fun m!5425383 () Bool)

(assert (=> b!4598805 m!5425383))

(assert (=> b!4597998 d!1447999))

(declare-fun bs!1011220 () Bool)

(declare-fun d!1448001 () Bool)

(assert (= bs!1011220 (and d!1448001 d!1447571)))

(declare-fun lambda!186293 () Int)

(assert (=> bs!1011220 (= lambda!186293 lambda!186128)))

(declare-fun bs!1011221 () Bool)

(assert (= bs!1011221 (and d!1448001 d!1447443)))

(assert (=> bs!1011221 (= lambda!186293 lambda!186085)))

(declare-fun bs!1011222 () Bool)

(assert (= bs!1011222 (and d!1448001 d!1447917)))

(assert (=> bs!1011222 (= lambda!186293 lambda!186283)))

(declare-fun bs!1011223 () Bool)

(assert (= bs!1011223 (and d!1448001 d!1447559)))

(assert (=> bs!1011223 (= lambda!186293 lambda!186124)))

(declare-fun bs!1011224 () Bool)

(assert (= bs!1011224 (and d!1448001 d!1447881)))

(assert (=> bs!1011224 (= lambda!186293 lambda!186278)))

(declare-fun bs!1011225 () Bool)

(assert (= bs!1011225 (and d!1448001 start!458760)))

(assert (=> bs!1011225 (= lambda!186293 lambda!186082)))

(declare-fun bs!1011226 () Bool)

(assert (= bs!1011226 (and d!1448001 d!1447517)))

(assert (=> bs!1011226 (= lambda!186293 lambda!186109)))

(declare-fun bs!1011227 () Bool)

(assert (= bs!1011227 (and d!1448001 d!1447547)))

(assert (=> bs!1011227 (= lambda!186293 lambda!186120)))

(declare-fun bs!1011228 () Bool)

(assert (= bs!1011228 (and d!1448001 d!1447955)))

(assert (=> bs!1011228 (= lambda!186293 lambda!186288)))

(declare-fun bs!1011229 () Bool)

(assert (= bs!1011229 (and d!1448001 d!1447503)))

(assert (=> bs!1011229 (= lambda!186293 lambda!186105)))

(declare-fun bs!1011230 () Bool)

(assert (= bs!1011230 (and d!1448001 d!1447543)))

(assert (=> bs!1011230 (= lambda!186293 lambda!186119)))

(declare-fun bs!1011231 () Bool)

(assert (= bs!1011231 (and d!1448001 d!1447557)))

(assert (=> bs!1011231 (= lambda!186293 lambda!186123)))

(declare-fun bs!1011232 () Bool)

(assert (= bs!1011232 (and d!1448001 d!1447565)))

(assert (=> bs!1011232 (not (= lambda!186293 lambda!186127))))

(declare-fun bs!1011233 () Bool)

(assert (= bs!1011233 (and d!1448001 d!1447581)))

(assert (=> bs!1011233 (= lambda!186293 lambda!186130)))

(declare-fun bs!1011234 () Bool)

(assert (= bs!1011234 (and d!1448001 d!1447579)))

(assert (=> bs!1011234 (= lambda!186293 lambda!186129)))

(declare-fun lt!1758523 () ListMap!3913)

(assert (=> d!1448001 (invariantList!1124 (toList!4652 lt!1758523))))

(declare-fun e!2868508 () ListMap!3913)

(assert (=> d!1448001 (= lt!1758523 e!2868508)))

(declare-fun c!787710 () Bool)

(assert (=> d!1448001 (= c!787710 ((_ is Cons!51079) (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))))

(assert (=> d!1448001 (forall!10598 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)) lambda!186293)))

(assert (=> d!1448001 (= (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) lt!1758523)))

(declare-fun b!4598807 () Bool)

(assert (=> b!4598807 (= e!2868508 (addToMapMapFromBucket!814 (_2!29156 (h!57043 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (extractMap!1378 (t!358197 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))))))

(declare-fun b!4598808 () Bool)

(assert (=> b!4598808 (= e!2868508 (ListMap!3914 Nil!51078))))

(assert (= (and d!1448001 c!787710) b!4598807))

(assert (= (and d!1448001 (not c!787710)) b!4598808))

(declare-fun m!5425385 () Bool)

(assert (=> d!1448001 m!5425385))

(declare-fun m!5425387 () Bool)

(assert (=> d!1448001 m!5425387))

(declare-fun m!5425389 () Bool)

(assert (=> b!4598807 m!5425389))

(assert (=> b!4598807 m!5425389))

(declare-fun m!5425391 () Bool)

(assert (=> b!4598807 m!5425391))

(assert (=> b!4597998 d!1448001))

(declare-fun d!1448003 () Bool)

(assert (=> d!1448003 (= (invariantList!1124 (toList!4652 lt!1757924)) (noDuplicatedKeys!326 (toList!4652 lt!1757924)))))

(declare-fun bs!1011235 () Bool)

(assert (= bs!1011235 d!1448003))

(declare-fun m!5425393 () Bool)

(assert (=> bs!1011235 m!5425393))

(assert (=> d!1447579 d!1448003))

(declare-fun d!1448005 () Bool)

(declare-fun res!1923538 () Bool)

(declare-fun e!2868509 () Bool)

(assert (=> d!1448005 (=> res!1923538 e!2868509)))

(assert (=> d!1448005 (= res!1923538 ((_ is Nil!51079) (t!358197 (toList!4651 lm!1477))))))

(assert (=> d!1448005 (= (forall!10598 (t!358197 (toList!4651 lm!1477)) lambda!186129) e!2868509)))

(declare-fun b!4598809 () Bool)

(declare-fun e!2868510 () Bool)

(assert (=> b!4598809 (= e!2868509 e!2868510)))

(declare-fun res!1923539 () Bool)

(assert (=> b!4598809 (=> (not res!1923539) (not e!2868510))))

(assert (=> b!4598809 (= res!1923539 (dynLambda!21396 lambda!186129 (h!57043 (t!358197 (toList!4651 lm!1477)))))))

(declare-fun b!4598810 () Bool)

(assert (=> b!4598810 (= e!2868510 (forall!10598 (t!358197 (t!358197 (toList!4651 lm!1477))) lambda!186129))))

(assert (= (and d!1448005 (not res!1923538)) b!4598809))

(assert (= (and b!4598809 res!1923539) b!4598810))

(declare-fun b_lambda!169397 () Bool)

(assert (=> (not b_lambda!169397) (not b!4598809)))

(declare-fun m!5425395 () Bool)

(assert (=> b!4598809 m!5425395))

(declare-fun m!5425397 () Bool)

(assert (=> b!4598810 m!5425397))

(assert (=> d!1447579 d!1448005))

(assert (=> d!1447551 d!1447543))

(declare-fun d!1448007 () Bool)

(assert (=> d!1448007 (eq!725 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 newBucket!178) Nil!51079)) (-!494 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)) key!3287))))

(assert (=> d!1448007 true))

(declare-fun _$18!264 () Unit!108077)

(assert (=> d!1448007 (= (choose!30809 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477))) newBucket!178 key!3287 hashF!1107) _$18!264)))

(declare-fun bs!1011236 () Bool)

(assert (= bs!1011236 d!1448007))

(assert (=> bs!1011236 m!5423933))

(assert (=> bs!1011236 m!5423543))

(assert (=> bs!1011236 m!5423543))

(assert (=> bs!1011236 m!5423545))

(assert (=> bs!1011236 m!5423933))

(assert (=> bs!1011236 m!5423545))

(assert (=> bs!1011236 m!5423935))

(assert (=> d!1447551 d!1448007))

(assert (=> d!1447551 d!1447545))

(declare-fun d!1448009 () Bool)

(declare-fun res!1923540 () Bool)

(declare-fun e!2868511 () Bool)

(assert (=> d!1448009 (=> res!1923540 e!2868511)))

(assert (=> d!1448009 (= res!1923540 (not ((_ is Cons!51078) (_2!29156 (h!57043 (toList!4651 lm!1477))))))))

(assert (=> d!1448009 (= (noDuplicateKeys!1318 (_2!29156 (h!57043 (toList!4651 lm!1477)))) e!2868511)))

(declare-fun b!4598811 () Bool)

(declare-fun e!2868512 () Bool)

(assert (=> b!4598811 (= e!2868511 e!2868512)))

(declare-fun res!1923541 () Bool)

(assert (=> b!4598811 (=> (not res!1923541) (not e!2868512))))

(assert (=> b!4598811 (= res!1923541 (not (containsKey!2154 (t!358196 (_2!29156 (h!57043 (toList!4651 lm!1477)))) (_1!29155 (h!57042 (_2!29156 (h!57043 (toList!4651 lm!1477))))))))))

(declare-fun b!4598812 () Bool)

(assert (=> b!4598812 (= e!2868512 (noDuplicateKeys!1318 (t!358196 (_2!29156 (h!57043 (toList!4651 lm!1477))))))))

(assert (= (and d!1448009 (not res!1923540)) b!4598811))

(assert (= (and b!4598811 res!1923541) b!4598812))

(declare-fun m!5425399 () Bool)

(assert (=> b!4598811 m!5425399))

(declare-fun m!5425401 () Bool)

(assert (=> b!4598812 m!5425401))

(assert (=> d!1447551 d!1448009))

(declare-fun bs!1011237 () Bool)

(declare-fun d!1448011 () Bool)

(assert (= bs!1011237 (and d!1448011 d!1447571)))

(declare-fun lambda!186294 () Int)

(assert (=> bs!1011237 (= lambda!186294 lambda!186128)))

(declare-fun bs!1011238 () Bool)

(assert (= bs!1011238 (and d!1448011 d!1447443)))

(assert (=> bs!1011238 (= lambda!186294 lambda!186085)))

(declare-fun bs!1011239 () Bool)

(assert (= bs!1011239 (and d!1448011 d!1447917)))

(assert (=> bs!1011239 (= lambda!186294 lambda!186283)))

(declare-fun bs!1011240 () Bool)

(assert (= bs!1011240 (and d!1448011 d!1447559)))

(assert (=> bs!1011240 (= lambda!186294 lambda!186124)))

(declare-fun bs!1011241 () Bool)

(assert (= bs!1011241 (and d!1448011 d!1447881)))

(assert (=> bs!1011241 (= lambda!186294 lambda!186278)))

(declare-fun bs!1011242 () Bool)

(assert (= bs!1011242 (and d!1448011 start!458760)))

(assert (=> bs!1011242 (= lambda!186294 lambda!186082)))

(declare-fun bs!1011243 () Bool)

(assert (= bs!1011243 (and d!1448011 d!1448001)))

(assert (=> bs!1011243 (= lambda!186294 lambda!186293)))

(declare-fun bs!1011244 () Bool)

(assert (= bs!1011244 (and d!1448011 d!1447517)))

(assert (=> bs!1011244 (= lambda!186294 lambda!186109)))

(declare-fun bs!1011245 () Bool)

(assert (= bs!1011245 (and d!1448011 d!1447547)))

(assert (=> bs!1011245 (= lambda!186294 lambda!186120)))

(declare-fun bs!1011246 () Bool)

(assert (= bs!1011246 (and d!1448011 d!1447955)))

(assert (=> bs!1011246 (= lambda!186294 lambda!186288)))

(declare-fun bs!1011247 () Bool)

(assert (= bs!1011247 (and d!1448011 d!1447503)))

(assert (=> bs!1011247 (= lambda!186294 lambda!186105)))

(declare-fun bs!1011248 () Bool)

(assert (= bs!1011248 (and d!1448011 d!1447543)))

(assert (=> bs!1011248 (= lambda!186294 lambda!186119)))

(declare-fun bs!1011249 () Bool)

(assert (= bs!1011249 (and d!1448011 d!1447557)))

(assert (=> bs!1011249 (= lambda!186294 lambda!186123)))

(declare-fun bs!1011250 () Bool)

(assert (= bs!1011250 (and d!1448011 d!1447565)))

(assert (=> bs!1011250 (not (= lambda!186294 lambda!186127))))

(declare-fun bs!1011251 () Bool)

(assert (= bs!1011251 (and d!1448011 d!1447581)))

(assert (=> bs!1011251 (= lambda!186294 lambda!186130)))

(declare-fun bs!1011252 () Bool)

(assert (= bs!1011252 (and d!1448011 d!1447579)))

(assert (=> bs!1011252 (= lambda!186294 lambda!186129)))

(declare-fun lt!1758524 () ListMap!3913)

(assert (=> d!1448011 (invariantList!1124 (toList!4652 lt!1758524))))

(declare-fun e!2868513 () ListMap!3913)

(assert (=> d!1448011 (= lt!1758524 e!2868513)))

(declare-fun c!787711 () Bool)

(assert (=> d!1448011 (= c!787711 ((_ is Cons!51079) (Cons!51079 (tuple2!51725 hash!344 newBucket!178) Nil!51079)))))

(assert (=> d!1448011 (forall!10598 (Cons!51079 (tuple2!51725 hash!344 newBucket!178) Nil!51079) lambda!186294)))

(assert (=> d!1448011 (= (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 newBucket!178) Nil!51079)) lt!1758524)))

(declare-fun b!4598813 () Bool)

(assert (=> b!4598813 (= e!2868513 (addToMapMapFromBucket!814 (_2!29156 (h!57043 (Cons!51079 (tuple2!51725 hash!344 newBucket!178) Nil!51079))) (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 newBucket!178) Nil!51079)))))))

(declare-fun b!4598814 () Bool)

(assert (=> b!4598814 (= e!2868513 (ListMap!3914 Nil!51078))))

(assert (= (and d!1448011 c!787711) b!4598813))

(assert (= (and d!1448011 (not c!787711)) b!4598814))

(declare-fun m!5425403 () Bool)

(assert (=> d!1448011 m!5425403))

(declare-fun m!5425405 () Bool)

(assert (=> d!1448011 m!5425405))

(declare-fun m!5425407 () Bool)

(assert (=> b!4598813 m!5425407))

(assert (=> b!4598813 m!5425407))

(declare-fun m!5425409 () Bool)

(assert (=> b!4598813 m!5425409))

(assert (=> d!1447551 d!1448011))

(declare-fun d!1448013 () Bool)

(assert (=> d!1448013 (= (eq!725 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 newBucket!178) Nil!51079)) (-!494 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)) key!3287)) (= (content!8648 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 newBucket!178) Nil!51079)))) (content!8648 (toList!4652 (-!494 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)) key!3287)))))))

(declare-fun bs!1011253 () Bool)

(assert (= bs!1011253 d!1448013))

(declare-fun m!5425411 () Bool)

(assert (=> bs!1011253 m!5425411))

(assert (=> bs!1011253 m!5423951))

(assert (=> d!1447551 d!1448013))

(declare-fun d!1448015 () Bool)

(declare-fun res!1923546 () Bool)

(declare-fun e!2868518 () Bool)

(assert (=> d!1448015 (=> res!1923546 e!2868518)))

(assert (=> d!1448015 (= res!1923546 (or ((_ is Nil!51079) (toList!4651 lm!1477)) ((_ is Nil!51079) (t!358197 (toList!4651 lm!1477)))))))

(assert (=> d!1448015 (= (isStrictlySorted!540 (toList!4651 lm!1477)) e!2868518)))

(declare-fun b!4598819 () Bool)

(declare-fun e!2868519 () Bool)

(assert (=> b!4598819 (= e!2868518 e!2868519)))

(declare-fun res!1923547 () Bool)

(assert (=> b!4598819 (=> (not res!1923547) (not e!2868519))))

(assert (=> b!4598819 (= res!1923547 (bvslt (_1!29156 (h!57043 (toList!4651 lm!1477))) (_1!29156 (h!57043 (t!358197 (toList!4651 lm!1477))))))))

(declare-fun b!4598820 () Bool)

(assert (=> b!4598820 (= e!2868519 (isStrictlySorted!540 (t!358197 (toList!4651 lm!1477))))))

(assert (= (and d!1448015 (not res!1923546)) b!4598819))

(assert (= (and b!4598819 res!1923547) b!4598820))

(declare-fun m!5425413 () Bool)

(assert (=> b!4598820 m!5425413))

(assert (=> d!1447563 d!1448015))

(declare-fun d!1448017 () Bool)

(declare-fun c!787714 () Bool)

(assert (=> d!1448017 (= c!787714 ((_ is Nil!51081) (keys!17884 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))))))

(declare-fun e!2868522 () (InoxSet K!12445))

(assert (=> d!1448017 (= (content!8647 (keys!17884 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) e!2868522)))

(declare-fun b!4598825 () Bool)

(assert (=> b!4598825 (= e!2868522 ((as const (Array K!12445 Bool)) false))))

(declare-fun b!4598826 () Bool)

(assert (=> b!4598826 (= e!2868522 ((_ map or) (store ((as const (Array K!12445 Bool)) false) (h!57047 (keys!17884 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) true) (content!8647 (t!358199 (keys!17884 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))))))))

(assert (= (and d!1448017 c!787714) b!4598825))

(assert (= (and d!1448017 (not c!787714)) b!4598826))

(declare-fun m!5425415 () Bool)

(assert (=> b!4598826 m!5425415))

(declare-fun m!5425417 () Bool)

(assert (=> b!4598826 m!5425417))

(assert (=> b!4598002 d!1448017))

(declare-fun bs!1011254 () Bool)

(declare-fun b!4598828 () Bool)

(assert (= bs!1011254 (and b!4598828 b!4598390)))

(declare-fun lambda!186295 () Int)

(assert (=> bs!1011254 (= (= (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 lt!1757705))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705))))) (= lambda!186295 lambda!186229))))

(declare-fun bs!1011255 () Bool)

(assert (= bs!1011255 (and b!4598828 b!4598395)))

(assert (=> bs!1011255 (= (= (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (toList!4652 (extractMap!1378 lt!1757705))) (= lambda!186295 lambda!186230))))

(declare-fun bs!1011256 () Bool)

(assert (= bs!1011256 (and b!4598828 b!4598472)))

(assert (=> bs!1011256 (= (= (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (toList!4652 (extractMap!1378 lt!1757705))) (= lambda!186295 lambda!186240))))

(declare-fun bs!1011257 () Bool)

(assert (= bs!1011257 (and b!4598828 b!4598447)))

(assert (=> bs!1011257 (= (= (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (toList!4652 lt!1757693)) (= lambda!186295 lambda!186238))))

(declare-fun bs!1011258 () Bool)

(assert (= bs!1011258 (and b!4598828 b!4598436)))

(assert (=> bs!1011258 (= (= (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (= lambda!186295 lambda!186236))))

(declare-fun bs!1011259 () Bool)

(assert (= bs!1011259 (and b!4598828 b!4598393)))

(assert (=> bs!1011259 (= (= (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705)))) (= lambda!186295 lambda!186228))))

(assert (=> b!4598828 true))

(declare-fun bs!1011260 () Bool)

(declare-fun b!4598829 () Bool)

(assert (= bs!1011260 (and b!4598829 b!4598392)))

(declare-fun lambda!186296 () Int)

(assert (=> bs!1011260 (= lambda!186296 lambda!186231)))

(declare-fun bs!1011261 () Bool)

(assert (= bs!1011261 (and b!4598829 b!4598437)))

(assert (=> bs!1011261 (= lambda!186296 lambda!186237)))

(declare-fun bs!1011262 () Bool)

(assert (= bs!1011262 (and b!4598829 b!4598448)))

(assert (=> bs!1011262 (= lambda!186296 lambda!186239)))

(declare-fun bs!1011263 () Bool)

(assert (= bs!1011263 (and b!4598829 b!4598473)))

(assert (=> bs!1011263 (= lambda!186296 lambda!186241)))

(declare-fun d!1448019 () Bool)

(declare-fun e!2868523 () Bool)

(assert (=> d!1448019 e!2868523))

(declare-fun res!1923548 () Bool)

(assert (=> d!1448019 (=> (not res!1923548) (not e!2868523))))

(declare-fun lt!1758525 () List!51205)

(assert (=> d!1448019 (= res!1923548 (noDuplicate!812 lt!1758525))))

(assert (=> d!1448019 (= lt!1758525 (getKeysList!573 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))))))

(assert (=> d!1448019 (= (keys!17884 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) lt!1758525)))

(declare-fun b!4598827 () Bool)

(declare-fun res!1923549 () Bool)

(assert (=> b!4598827 (=> (not res!1923549) (not e!2868523))))

(assert (=> b!4598827 (= res!1923549 (= (length!480 lt!1758525) (length!481 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))))))

(declare-fun res!1923550 () Bool)

(assert (=> b!4598828 (=> (not res!1923550) (not e!2868523))))

(assert (=> b!4598828 (= res!1923550 (forall!10602 lt!1758525 lambda!186295))))

(assert (=> b!4598829 (= e!2868523 (= (content!8647 lt!1758525) (content!8647 (map!11284 (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) lambda!186296))))))

(assert (= (and d!1448019 res!1923548) b!4598827))

(assert (= (and b!4598827 res!1923549) b!4598828))

(assert (= (and b!4598828 res!1923550) b!4598829))

(declare-fun m!5425419 () Bool)

(assert (=> d!1448019 m!5425419))

(assert (=> d!1448019 m!5425095))

(declare-fun m!5425421 () Bool)

(assert (=> b!4598827 m!5425421))

(declare-fun m!5425423 () Bool)

(assert (=> b!4598827 m!5425423))

(declare-fun m!5425425 () Bool)

(assert (=> b!4598828 m!5425425))

(declare-fun m!5425427 () Bool)

(assert (=> b!4598829 m!5425427))

(declare-fun m!5425429 () Bool)

(assert (=> b!4598829 m!5425429))

(assert (=> b!4598829 m!5425429))

(declare-fun m!5425431 () Bool)

(assert (=> b!4598829 m!5425431))

(assert (=> b!4598002 d!1448019))

(declare-fun d!1448021 () Bool)

(declare-fun c!787715 () Bool)

(assert (=> d!1448021 (= c!787715 ((_ is Nil!51081) (keys!17884 lt!1757882)))))

(declare-fun e!2868524 () (InoxSet K!12445))

(assert (=> d!1448021 (= (content!8647 (keys!17884 lt!1757882)) e!2868524)))

(declare-fun b!4598830 () Bool)

(assert (=> b!4598830 (= e!2868524 ((as const (Array K!12445 Bool)) false))))

(declare-fun b!4598831 () Bool)

(assert (=> b!4598831 (= e!2868524 ((_ map or) (store ((as const (Array K!12445 Bool)) false) (h!57047 (keys!17884 lt!1757882)) true) (content!8647 (t!358199 (keys!17884 lt!1757882)))))))

(assert (= (and d!1448021 c!787715) b!4598830))

(assert (= (and d!1448021 (not c!787715)) b!4598831))

(declare-fun m!5425433 () Bool)

(assert (=> b!4598831 m!5425433))

(declare-fun m!5425435 () Bool)

(assert (=> b!4598831 m!5425435))

(assert (=> b!4598002 d!1448021))

(declare-fun bs!1011264 () Bool)

(declare-fun b!4598833 () Bool)

(assert (= bs!1011264 (and b!4598833 b!4598390)))

(declare-fun lambda!186297 () Int)

(assert (=> bs!1011264 (= (= (toList!4652 lt!1757882) (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 lt!1757705))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705))))) (= lambda!186297 lambda!186229))))

(declare-fun bs!1011265 () Bool)

(assert (= bs!1011265 (and b!4598833 b!4598828)))

(assert (=> bs!1011265 (= (= (toList!4652 lt!1757882) (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186297 lambda!186295))))

(declare-fun bs!1011266 () Bool)

(assert (= bs!1011266 (and b!4598833 b!4598395)))

(assert (=> bs!1011266 (= (= (toList!4652 lt!1757882) (toList!4652 (extractMap!1378 lt!1757705))) (= lambda!186297 lambda!186230))))

(declare-fun bs!1011267 () Bool)

(assert (= bs!1011267 (and b!4598833 b!4598472)))

(assert (=> bs!1011267 (= (= (toList!4652 lt!1757882) (toList!4652 (extractMap!1378 lt!1757705))) (= lambda!186297 lambda!186240))))

(declare-fun bs!1011268 () Bool)

(assert (= bs!1011268 (and b!4598833 b!4598447)))

(assert (=> bs!1011268 (= (= (toList!4652 lt!1757882) (toList!4652 lt!1757693)) (= lambda!186297 lambda!186238))))

(declare-fun bs!1011269 () Bool)

(assert (= bs!1011269 (and b!4598833 b!4598436)))

(assert (=> bs!1011269 (= (= (toList!4652 lt!1757882) (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (= lambda!186297 lambda!186236))))

(declare-fun bs!1011270 () Bool)

(assert (= bs!1011270 (and b!4598833 b!4598393)))

(assert (=> bs!1011270 (= (= (toList!4652 lt!1757882) (t!358196 (toList!4652 (extractMap!1378 lt!1757705)))) (= lambda!186297 lambda!186228))))

(assert (=> b!4598833 true))

(declare-fun bs!1011271 () Bool)

(declare-fun b!4598834 () Bool)

(assert (= bs!1011271 (and b!4598834 b!4598437)))

(declare-fun lambda!186298 () Int)

(assert (=> bs!1011271 (= lambda!186298 lambda!186237)))

(declare-fun bs!1011272 () Bool)

(assert (= bs!1011272 (and b!4598834 b!4598829)))

(assert (=> bs!1011272 (= lambda!186298 lambda!186296)))

(declare-fun bs!1011273 () Bool)

(assert (= bs!1011273 (and b!4598834 b!4598448)))

(assert (=> bs!1011273 (= lambda!186298 lambda!186239)))

(declare-fun bs!1011274 () Bool)

(assert (= bs!1011274 (and b!4598834 b!4598392)))

(assert (=> bs!1011274 (= lambda!186298 lambda!186231)))

(declare-fun bs!1011275 () Bool)

(assert (= bs!1011275 (and b!4598834 b!4598473)))

(assert (=> bs!1011275 (= lambda!186298 lambda!186241)))

(declare-fun d!1448023 () Bool)

(declare-fun e!2868525 () Bool)

(assert (=> d!1448023 e!2868525))

(declare-fun res!1923551 () Bool)

(assert (=> d!1448023 (=> (not res!1923551) (not e!2868525))))

(declare-fun lt!1758526 () List!51205)

(assert (=> d!1448023 (= res!1923551 (noDuplicate!812 lt!1758526))))

(assert (=> d!1448023 (= lt!1758526 (getKeysList!573 (toList!4652 lt!1757882)))))

(assert (=> d!1448023 (= (keys!17884 lt!1757882) lt!1758526)))

(declare-fun b!4598832 () Bool)

(declare-fun res!1923552 () Bool)

(assert (=> b!4598832 (=> (not res!1923552) (not e!2868525))))

(assert (=> b!4598832 (= res!1923552 (= (length!480 lt!1758526) (length!481 (toList!4652 lt!1757882))))))

(declare-fun res!1923553 () Bool)

(assert (=> b!4598833 (=> (not res!1923553) (not e!2868525))))

(assert (=> b!4598833 (= res!1923553 (forall!10602 lt!1758526 lambda!186297))))

(assert (=> b!4598834 (= e!2868525 (= (content!8647 lt!1758526) (content!8647 (map!11284 (toList!4652 lt!1757882) lambda!186298))))))

(assert (= (and d!1448023 res!1923551) b!4598832))

(assert (= (and b!4598832 res!1923552) b!4598833))

(assert (= (and b!4598833 res!1923553) b!4598834))

(declare-fun m!5425437 () Bool)

(assert (=> d!1448023 m!5425437))

(assert (=> d!1448023 m!5425067))

(declare-fun m!5425439 () Bool)

(assert (=> b!4598832 m!5425439))

(declare-fun m!5425441 () Bool)

(assert (=> b!4598832 m!5425441))

(declare-fun m!5425443 () Bool)

(assert (=> b!4598833 m!5425443))

(declare-fun m!5425445 () Bool)

(assert (=> b!4598834 m!5425445))

(declare-fun m!5425447 () Bool)

(assert (=> b!4598834 m!5425447))

(assert (=> b!4598834 m!5425447))

(declare-fun m!5425449 () Bool)

(assert (=> b!4598834 m!5425449))

(assert (=> b!4598002 d!1448023))

(assert (=> b!4597934 d!1447933))

(assert (=> b!4597934 d!1447935))

(assert (=> b!4598041 d!1447971))

(assert (=> b!4598041 d!1447785))

(assert (=> b!4598028 d!1447975))

(assert (=> b!4598028 d!1447771))

(declare-fun bs!1011276 () Bool)

(declare-fun b!4598840 () Bool)

(assert (= bs!1011276 (and b!4598840 b!4598390)))

(declare-fun lambda!186299 () Int)

(assert (=> bs!1011276 (= (= (t!358196 (toList!4652 lt!1757693)) (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 lt!1757705))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705))))) (= lambda!186299 lambda!186229))))

(declare-fun bs!1011277 () Bool)

(assert (= bs!1011277 (and b!4598840 b!4598828)))

(assert (=> bs!1011277 (= (= (t!358196 (toList!4652 lt!1757693)) (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186299 lambda!186295))))

(declare-fun bs!1011278 () Bool)

(assert (= bs!1011278 (and b!4598840 b!4598395)))

(assert (=> bs!1011278 (= (= (t!358196 (toList!4652 lt!1757693)) (toList!4652 (extractMap!1378 lt!1757705))) (= lambda!186299 lambda!186230))))

(declare-fun bs!1011279 () Bool)

(assert (= bs!1011279 (and b!4598840 b!4598833)))

(assert (=> bs!1011279 (= (= (t!358196 (toList!4652 lt!1757693)) (toList!4652 lt!1757882)) (= lambda!186299 lambda!186297))))

(declare-fun bs!1011280 () Bool)

(assert (= bs!1011280 (and b!4598840 b!4598472)))

(assert (=> bs!1011280 (= (= (t!358196 (toList!4652 lt!1757693)) (toList!4652 (extractMap!1378 lt!1757705))) (= lambda!186299 lambda!186240))))

(declare-fun bs!1011281 () Bool)

(assert (= bs!1011281 (and b!4598840 b!4598447)))

(assert (=> bs!1011281 (= (= (t!358196 (toList!4652 lt!1757693)) (toList!4652 lt!1757693)) (= lambda!186299 lambda!186238))))

(declare-fun bs!1011282 () Bool)

(assert (= bs!1011282 (and b!4598840 b!4598436)))

(assert (=> bs!1011282 (= (= (t!358196 (toList!4652 lt!1757693)) (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (= lambda!186299 lambda!186236))))

(declare-fun bs!1011283 () Bool)

(assert (= bs!1011283 (and b!4598840 b!4598393)))

(assert (=> bs!1011283 (= (= (t!358196 (toList!4652 lt!1757693)) (t!358196 (toList!4652 (extractMap!1378 lt!1757705)))) (= lambda!186299 lambda!186228))))

(assert (=> b!4598840 true))

(declare-fun bs!1011284 () Bool)

(declare-fun b!4598837 () Bool)

(assert (= bs!1011284 (and b!4598837 b!4598390)))

(declare-fun lambda!186300 () Int)

(assert (=> bs!1011284 (= (= (Cons!51078 (h!57042 (toList!4652 lt!1757693)) (t!358196 (toList!4652 lt!1757693))) (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 lt!1757705))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705))))) (= lambda!186300 lambda!186229))))

(declare-fun bs!1011285 () Bool)

(assert (= bs!1011285 (and b!4598837 b!4598828)))

(assert (=> bs!1011285 (= (= (Cons!51078 (h!57042 (toList!4652 lt!1757693)) (t!358196 (toList!4652 lt!1757693))) (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186300 lambda!186295))))

(declare-fun bs!1011286 () Bool)

(assert (= bs!1011286 (and b!4598837 b!4598395)))

(assert (=> bs!1011286 (= (= (Cons!51078 (h!57042 (toList!4652 lt!1757693)) (t!358196 (toList!4652 lt!1757693))) (toList!4652 (extractMap!1378 lt!1757705))) (= lambda!186300 lambda!186230))))

(declare-fun bs!1011287 () Bool)

(assert (= bs!1011287 (and b!4598837 b!4598833)))

(assert (=> bs!1011287 (= (= (Cons!51078 (h!57042 (toList!4652 lt!1757693)) (t!358196 (toList!4652 lt!1757693))) (toList!4652 lt!1757882)) (= lambda!186300 lambda!186297))))

(declare-fun bs!1011288 () Bool)

(assert (= bs!1011288 (and b!4598837 b!4598840)))

(assert (=> bs!1011288 (= (= (Cons!51078 (h!57042 (toList!4652 lt!1757693)) (t!358196 (toList!4652 lt!1757693))) (t!358196 (toList!4652 lt!1757693))) (= lambda!186300 lambda!186299))))

(declare-fun bs!1011289 () Bool)

(assert (= bs!1011289 (and b!4598837 b!4598472)))

(assert (=> bs!1011289 (= (= (Cons!51078 (h!57042 (toList!4652 lt!1757693)) (t!358196 (toList!4652 lt!1757693))) (toList!4652 (extractMap!1378 lt!1757705))) (= lambda!186300 lambda!186240))))

(declare-fun bs!1011290 () Bool)

(assert (= bs!1011290 (and b!4598837 b!4598447)))

(assert (=> bs!1011290 (= (= (Cons!51078 (h!57042 (toList!4652 lt!1757693)) (t!358196 (toList!4652 lt!1757693))) (toList!4652 lt!1757693)) (= lambda!186300 lambda!186238))))

(declare-fun bs!1011291 () Bool)

(assert (= bs!1011291 (and b!4598837 b!4598436)))

(assert (=> bs!1011291 (= (= (Cons!51078 (h!57042 (toList!4652 lt!1757693)) (t!358196 (toList!4652 lt!1757693))) (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (= lambda!186300 lambda!186236))))

(declare-fun bs!1011292 () Bool)

(assert (= bs!1011292 (and b!4598837 b!4598393)))

(assert (=> bs!1011292 (= (= (Cons!51078 (h!57042 (toList!4652 lt!1757693)) (t!358196 (toList!4652 lt!1757693))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705)))) (= lambda!186300 lambda!186228))))

(assert (=> b!4598837 true))

(declare-fun bs!1011293 () Bool)

(declare-fun b!4598842 () Bool)

(assert (= bs!1011293 (and b!4598842 b!4598390)))

(declare-fun lambda!186301 () Int)

(assert (=> bs!1011293 (= (= (toList!4652 lt!1757693) (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 lt!1757705))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705))))) (= lambda!186301 lambda!186229))))

(declare-fun bs!1011294 () Bool)

(assert (= bs!1011294 (and b!4598842 b!4598828)))

(assert (=> bs!1011294 (= (= (toList!4652 lt!1757693) (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186301 lambda!186295))))

(declare-fun bs!1011295 () Bool)

(assert (= bs!1011295 (and b!4598842 b!4598395)))

(assert (=> bs!1011295 (= (= (toList!4652 lt!1757693) (toList!4652 (extractMap!1378 lt!1757705))) (= lambda!186301 lambda!186230))))

(declare-fun bs!1011296 () Bool)

(assert (= bs!1011296 (and b!4598842 b!4598833)))

(assert (=> bs!1011296 (= (= (toList!4652 lt!1757693) (toList!4652 lt!1757882)) (= lambda!186301 lambda!186297))))

(declare-fun bs!1011297 () Bool)

(assert (= bs!1011297 (and b!4598842 b!4598840)))

(assert (=> bs!1011297 (= (= (toList!4652 lt!1757693) (t!358196 (toList!4652 lt!1757693))) (= lambda!186301 lambda!186299))))

(declare-fun bs!1011298 () Bool)

(assert (= bs!1011298 (and b!4598842 b!4598837)))

(assert (=> bs!1011298 (= (= (toList!4652 lt!1757693) (Cons!51078 (h!57042 (toList!4652 lt!1757693)) (t!358196 (toList!4652 lt!1757693)))) (= lambda!186301 lambda!186300))))

(declare-fun bs!1011299 () Bool)

(assert (= bs!1011299 (and b!4598842 b!4598472)))

(assert (=> bs!1011299 (= (= (toList!4652 lt!1757693) (toList!4652 (extractMap!1378 lt!1757705))) (= lambda!186301 lambda!186240))))

(declare-fun bs!1011300 () Bool)

(assert (= bs!1011300 (and b!4598842 b!4598447)))

(assert (=> bs!1011300 (= lambda!186301 lambda!186238)))

(declare-fun bs!1011301 () Bool)

(assert (= bs!1011301 (and b!4598842 b!4598436)))

(assert (=> bs!1011301 (= (= (toList!4652 lt!1757693) (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (= lambda!186301 lambda!186236))))

(declare-fun bs!1011302 () Bool)

(assert (= bs!1011302 (and b!4598842 b!4598393)))

(assert (=> bs!1011302 (= (= (toList!4652 lt!1757693) (t!358196 (toList!4652 (extractMap!1378 lt!1757705)))) (= lambda!186301 lambda!186228))))

(assert (=> b!4598842 true))

(declare-fun bs!1011303 () Bool)

(declare-fun b!4598839 () Bool)

(assert (= bs!1011303 (and b!4598839 b!4598437)))

(declare-fun lambda!186302 () Int)

(assert (=> bs!1011303 (= lambda!186302 lambda!186237)))

(declare-fun bs!1011304 () Bool)

(assert (= bs!1011304 (and b!4598839 b!4598829)))

(assert (=> bs!1011304 (= lambda!186302 lambda!186296)))

(declare-fun bs!1011305 () Bool)

(assert (= bs!1011305 (and b!4598839 b!4598448)))

(assert (=> bs!1011305 (= lambda!186302 lambda!186239)))

(declare-fun bs!1011306 () Bool)

(assert (= bs!1011306 (and b!4598839 b!4598392)))

(assert (=> bs!1011306 (= lambda!186302 lambda!186231)))

(declare-fun bs!1011307 () Bool)

(assert (= bs!1011307 (and b!4598839 b!4598834)))

(assert (=> bs!1011307 (= lambda!186302 lambda!186298)))

(declare-fun bs!1011308 () Bool)

(assert (= bs!1011308 (and b!4598839 b!4598473)))

(assert (=> bs!1011308 (= lambda!186302 lambda!186241)))

(declare-fun b!4598835 () Bool)

(declare-fun e!2868527 () Unit!108077)

(declare-fun Unit!108251 () Unit!108077)

(assert (=> b!4598835 (= e!2868527 Unit!108251)))

(declare-fun b!4598836 () Bool)

(assert (=> b!4598836 false))

(declare-fun Unit!108252 () Unit!108077)

(assert (=> b!4598836 (= e!2868527 Unit!108252)))

(declare-fun e!2868528 () List!51205)

(assert (=> b!4598837 (= e!2868528 (Cons!51081 (_1!29155 (h!57042 (toList!4652 lt!1757693))) (getKeysList!573 (t!358196 (toList!4652 lt!1757693)))))))

(declare-fun c!787718 () Bool)

(assert (=> b!4598837 (= c!787718 (containsKey!2158 (t!358196 (toList!4652 lt!1757693)) (_1!29155 (h!57042 (toList!4652 lt!1757693)))))))

(declare-fun lt!1758530 () Unit!108077)

(assert (=> b!4598837 (= lt!1758530 e!2868527)))

(declare-fun c!787717 () Bool)

(assert (=> b!4598837 (= c!787717 (contains!14029 (getKeysList!573 (t!358196 (toList!4652 lt!1757693))) (_1!29155 (h!57042 (toList!4652 lt!1757693)))))))

(declare-fun lt!1758528 () Unit!108077)

(declare-fun e!2868526 () Unit!108077)

(assert (=> b!4598837 (= lt!1758528 e!2868526)))

(declare-fun lt!1758532 () List!51205)

(assert (=> b!4598837 (= lt!1758532 (getKeysList!573 (t!358196 (toList!4652 lt!1757693))))))

(declare-fun lt!1758529 () Unit!108077)

(assert (=> b!4598837 (= lt!1758529 (lemmaForallContainsAddHeadPreserves!232 (t!358196 (toList!4652 lt!1757693)) lt!1758532 (h!57042 (toList!4652 lt!1757693))))))

(assert (=> b!4598837 (forall!10602 lt!1758532 lambda!186300)))

(declare-fun lt!1758533 () Unit!108077)

(assert (=> b!4598837 (= lt!1758533 lt!1758529)))

(declare-fun d!1448025 () Bool)

(declare-fun e!2868529 () Bool)

(assert (=> d!1448025 e!2868529))

(declare-fun res!1923555 () Bool)

(assert (=> d!1448025 (=> (not res!1923555) (not e!2868529))))

(declare-fun lt!1758531 () List!51205)

(assert (=> d!1448025 (= res!1923555 (noDuplicate!812 lt!1758531))))

(assert (=> d!1448025 (= lt!1758531 e!2868528)))

(declare-fun c!787716 () Bool)

(assert (=> d!1448025 (= c!787716 ((_ is Cons!51078) (toList!4652 lt!1757693)))))

(assert (=> d!1448025 (invariantList!1124 (toList!4652 lt!1757693))))

(assert (=> d!1448025 (= (getKeysList!573 (toList!4652 lt!1757693)) lt!1758531)))

(declare-fun b!4598838 () Bool)

(declare-fun Unit!108253 () Unit!108077)

(assert (=> b!4598838 (= e!2868526 Unit!108253)))

(assert (=> b!4598839 (= e!2868529 (= (content!8647 lt!1758531) (content!8647 (map!11284 (toList!4652 lt!1757693) lambda!186302))))))

(assert (=> b!4598840 false))

(declare-fun lt!1758527 () Unit!108077)

(assert (=> b!4598840 (= lt!1758527 (forallContained!2854 (getKeysList!573 (t!358196 (toList!4652 lt!1757693))) lambda!186299 (_1!29155 (h!57042 (toList!4652 lt!1757693)))))))

(declare-fun Unit!108254 () Unit!108077)

(assert (=> b!4598840 (= e!2868526 Unit!108254)))

(declare-fun b!4598841 () Bool)

(declare-fun res!1923554 () Bool)

(assert (=> b!4598841 (=> (not res!1923554) (not e!2868529))))

(assert (=> b!4598841 (= res!1923554 (= (length!480 lt!1758531) (length!481 (toList!4652 lt!1757693))))))

(declare-fun res!1923556 () Bool)

(assert (=> b!4598842 (=> (not res!1923556) (not e!2868529))))

(assert (=> b!4598842 (= res!1923556 (forall!10602 lt!1758531 lambda!186301))))

(declare-fun b!4598843 () Bool)

(assert (=> b!4598843 (= e!2868528 Nil!51081)))

(assert (= (and d!1448025 c!787716) b!4598837))

(assert (= (and d!1448025 (not c!787716)) b!4598843))

(assert (= (and b!4598837 c!787718) b!4598836))

(assert (= (and b!4598837 (not c!787718)) b!4598835))

(assert (= (and b!4598837 c!787717) b!4598840))

(assert (= (and b!4598837 (not c!787717)) b!4598838))

(assert (= (and d!1448025 res!1923555) b!4598841))

(assert (= (and b!4598841 res!1923554) b!4598842))

(assert (= (and b!4598842 res!1923556) b!4598839))

(declare-fun m!5425451 () Bool)

(assert (=> b!4598840 m!5425451))

(assert (=> b!4598840 m!5425451))

(declare-fun m!5425453 () Bool)

(assert (=> b!4598840 m!5425453))

(declare-fun m!5425455 () Bool)

(assert (=> d!1448025 m!5425455))

(assert (=> d!1448025 m!5424785))

(declare-fun m!5425457 () Bool)

(assert (=> b!4598839 m!5425457))

(declare-fun m!5425459 () Bool)

(assert (=> b!4598839 m!5425459))

(assert (=> b!4598839 m!5425459))

(declare-fun m!5425461 () Bool)

(assert (=> b!4598839 m!5425461))

(declare-fun m!5425463 () Bool)

(assert (=> b!4598837 m!5425463))

(declare-fun m!5425465 () Bool)

(assert (=> b!4598837 m!5425465))

(assert (=> b!4598837 m!5425451))

(assert (=> b!4598837 m!5425451))

(declare-fun m!5425467 () Bool)

(assert (=> b!4598837 m!5425467))

(declare-fun m!5425469 () Bool)

(assert (=> b!4598837 m!5425469))

(declare-fun m!5425471 () Bool)

(assert (=> b!4598842 m!5425471))

(declare-fun m!5425473 () Bool)

(assert (=> b!4598841 m!5425473))

(assert (=> b!4598841 m!5424763))

(assert (=> b!4598043 d!1448025))

(assert (=> bs!1010625 d!1448009))

(declare-fun bs!1011309 () Bool)

(declare-fun b!4598849 () Bool)

(assert (= bs!1011309 (and b!4598849 b!4598390)))

(declare-fun lambda!186303 () Int)

(assert (=> bs!1011309 (= (= (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 lt!1757705))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705))))) (= lambda!186303 lambda!186229))))

(declare-fun bs!1011310 () Bool)

(assert (= bs!1011310 (and b!4598849 b!4598828)))

(assert (=> bs!1011310 (= (= (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186303 lambda!186295))))

(declare-fun bs!1011311 () Bool)

(assert (= bs!1011311 (and b!4598849 b!4598395)))

(assert (=> bs!1011311 (= (= (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (toList!4652 (extractMap!1378 lt!1757705))) (= lambda!186303 lambda!186230))))

(declare-fun bs!1011312 () Bool)

(assert (= bs!1011312 (and b!4598849 b!4598840)))

(assert (=> bs!1011312 (= (= (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (t!358196 (toList!4652 lt!1757693))) (= lambda!186303 lambda!186299))))

(declare-fun bs!1011313 () Bool)

(assert (= bs!1011313 (and b!4598849 b!4598837)))

(assert (=> bs!1011313 (= (= (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (Cons!51078 (h!57042 (toList!4652 lt!1757693)) (t!358196 (toList!4652 lt!1757693)))) (= lambda!186303 lambda!186300))))

(declare-fun bs!1011314 () Bool)

(assert (= bs!1011314 (and b!4598849 b!4598472)))

(assert (=> bs!1011314 (= (= (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (toList!4652 (extractMap!1378 lt!1757705))) (= lambda!186303 lambda!186240))))

(declare-fun bs!1011315 () Bool)

(assert (= bs!1011315 (and b!4598849 b!4598447)))

(assert (=> bs!1011315 (= (= (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (toList!4652 lt!1757693)) (= lambda!186303 lambda!186238))))

(declare-fun bs!1011316 () Bool)

(assert (= bs!1011316 (and b!4598849 b!4598842)))

(assert (=> bs!1011316 (= (= (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (toList!4652 lt!1757693)) (= lambda!186303 lambda!186301))))

(declare-fun bs!1011317 () Bool)

(assert (= bs!1011317 (and b!4598849 b!4598833)))

(assert (=> bs!1011317 (= (= (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (toList!4652 lt!1757882)) (= lambda!186303 lambda!186297))))

(declare-fun bs!1011318 () Bool)

(assert (= bs!1011318 (and b!4598849 b!4598436)))

(assert (=> bs!1011318 (= (= (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (= lambda!186303 lambda!186236))))

(declare-fun bs!1011319 () Bool)

(assert (= bs!1011319 (and b!4598849 b!4598393)))

(assert (=> bs!1011319 (= (= (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705)))) (= lambda!186303 lambda!186228))))

(assert (=> b!4598849 true))

(declare-fun bs!1011320 () Bool)

(declare-fun b!4598846 () Bool)

(assert (= bs!1011320 (and b!4598846 b!4598390)))

(declare-fun lambda!186304 () Int)

(assert (=> bs!1011320 (= (= (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 lt!1757705))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705))))) (= lambda!186304 lambda!186229))))

(declare-fun bs!1011321 () Bool)

(assert (= bs!1011321 (and b!4598846 b!4598828)))

(assert (=> bs!1011321 (= (= (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186304 lambda!186295))))

(declare-fun bs!1011322 () Bool)

(assert (= bs!1011322 (and b!4598846 b!4598395)))

(assert (=> bs!1011322 (= (= (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) (toList!4652 (extractMap!1378 lt!1757705))) (= lambda!186304 lambda!186230))))

(declare-fun bs!1011323 () Bool)

(assert (= bs!1011323 (and b!4598846 b!4598840)))

(assert (=> bs!1011323 (= (= (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) (t!358196 (toList!4652 lt!1757693))) (= lambda!186304 lambda!186299))))

(declare-fun bs!1011324 () Bool)

(assert (= bs!1011324 (and b!4598846 b!4598849)))

(assert (=> bs!1011324 (= (= (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) (= lambda!186304 lambda!186303))))

(declare-fun bs!1011325 () Bool)

(assert (= bs!1011325 (and b!4598846 b!4598837)))

(assert (=> bs!1011325 (= (= (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) (Cons!51078 (h!57042 (toList!4652 lt!1757693)) (t!358196 (toList!4652 lt!1757693)))) (= lambda!186304 lambda!186300))))

(declare-fun bs!1011326 () Bool)

(assert (= bs!1011326 (and b!4598846 b!4598472)))

(assert (=> bs!1011326 (= (= (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) (toList!4652 (extractMap!1378 lt!1757705))) (= lambda!186304 lambda!186240))))

(declare-fun bs!1011327 () Bool)

(assert (= bs!1011327 (and b!4598846 b!4598447)))

(assert (=> bs!1011327 (= (= (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) (toList!4652 lt!1757693)) (= lambda!186304 lambda!186238))))

(declare-fun bs!1011328 () Bool)

(assert (= bs!1011328 (and b!4598846 b!4598842)))

(assert (=> bs!1011328 (= (= (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) (toList!4652 lt!1757693)) (= lambda!186304 lambda!186301))))

(declare-fun bs!1011329 () Bool)

(assert (= bs!1011329 (and b!4598846 b!4598833)))

(assert (=> bs!1011329 (= (= (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) (toList!4652 lt!1757882)) (= lambda!186304 lambda!186297))))

(declare-fun bs!1011330 () Bool)

(assert (= bs!1011330 (and b!4598846 b!4598436)))

(assert (=> bs!1011330 (= (= (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (= lambda!186304 lambda!186236))))

(declare-fun bs!1011331 () Bool)

(assert (= bs!1011331 (and b!4598846 b!4598393)))

(assert (=> bs!1011331 (= (= (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705)))) (= lambda!186304 lambda!186228))))

(assert (=> b!4598846 true))

(declare-fun bs!1011332 () Bool)

(declare-fun b!4598851 () Bool)

(assert (= bs!1011332 (and b!4598851 b!4598390)))

(declare-fun lambda!186305 () Int)

(assert (=> bs!1011332 (= (= (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 lt!1757705))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705))))) (= lambda!186305 lambda!186229))))

(declare-fun bs!1011333 () Bool)

(assert (= bs!1011333 (and b!4598851 b!4598828)))

(assert (=> bs!1011333 (= (= (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) (toList!4652 (extractMap!1378 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186305 lambda!186295))))

(declare-fun bs!1011334 () Bool)

(assert (= bs!1011334 (and b!4598851 b!4598395)))

(assert (=> bs!1011334 (= (= (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) (toList!4652 (extractMap!1378 lt!1757705))) (= lambda!186305 lambda!186230))))

(declare-fun bs!1011335 () Bool)

(assert (= bs!1011335 (and b!4598851 b!4598840)))

(assert (=> bs!1011335 (= (= (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) (t!358196 (toList!4652 lt!1757693))) (= lambda!186305 lambda!186299))))

(declare-fun bs!1011336 () Bool)

(assert (= bs!1011336 (and b!4598851 b!4598849)))

(assert (=> bs!1011336 (= (= (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) (= lambda!186305 lambda!186303))))

(declare-fun bs!1011337 () Bool)

(assert (= bs!1011337 (and b!4598851 b!4598837)))

(assert (=> bs!1011337 (= (= (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) (Cons!51078 (h!57042 (toList!4652 lt!1757693)) (t!358196 (toList!4652 lt!1757693)))) (= lambda!186305 lambda!186300))))

(declare-fun bs!1011338 () Bool)

(assert (= bs!1011338 (and b!4598851 b!4598846)))

(assert (=> bs!1011338 (= (= (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) (Cons!51078 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))))) (= lambda!186305 lambda!186304))))

(declare-fun bs!1011339 () Bool)

(assert (= bs!1011339 (and b!4598851 b!4598472)))

(assert (=> bs!1011339 (= (= (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) (toList!4652 (extractMap!1378 lt!1757705))) (= lambda!186305 lambda!186240))))

(declare-fun bs!1011340 () Bool)

(assert (= bs!1011340 (and b!4598851 b!4598447)))

(assert (=> bs!1011340 (= (= (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) (toList!4652 lt!1757693)) (= lambda!186305 lambda!186238))))

(declare-fun bs!1011341 () Bool)

(assert (= bs!1011341 (and b!4598851 b!4598842)))

(assert (=> bs!1011341 (= (= (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) (toList!4652 lt!1757693)) (= lambda!186305 lambda!186301))))

(declare-fun bs!1011342 () Bool)

(assert (= bs!1011342 (and b!4598851 b!4598833)))

(assert (=> bs!1011342 (= (= (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) (toList!4652 lt!1757882)) (= lambda!186305 lambda!186297))))

(declare-fun bs!1011343 () Bool)

(assert (= bs!1011343 (and b!4598851 b!4598436)))

(assert (=> bs!1011343 (= lambda!186305 lambda!186236)))

(declare-fun bs!1011344 () Bool)

(assert (= bs!1011344 (and b!4598851 b!4598393)))

(assert (=> bs!1011344 (= (= (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) (t!358196 (toList!4652 (extractMap!1378 lt!1757705)))) (= lambda!186305 lambda!186228))))

(assert (=> b!4598851 true))

(declare-fun bs!1011345 () Bool)

(declare-fun b!4598848 () Bool)

(assert (= bs!1011345 (and b!4598848 b!4598437)))

(declare-fun lambda!186306 () Int)

(assert (=> bs!1011345 (= lambda!186306 lambda!186237)))

(declare-fun bs!1011346 () Bool)

(assert (= bs!1011346 (and b!4598848 b!4598829)))

(assert (=> bs!1011346 (= lambda!186306 lambda!186296)))

(declare-fun bs!1011347 () Bool)

(assert (= bs!1011347 (and b!4598848 b!4598448)))

(assert (=> bs!1011347 (= lambda!186306 lambda!186239)))

(declare-fun bs!1011348 () Bool)

(assert (= bs!1011348 (and b!4598848 b!4598392)))

(assert (=> bs!1011348 (= lambda!186306 lambda!186231)))

(declare-fun bs!1011349 () Bool)

(assert (= bs!1011349 (and b!4598848 b!4598839)))

(assert (=> bs!1011349 (= lambda!186306 lambda!186302)))

(declare-fun bs!1011350 () Bool)

(assert (= bs!1011350 (and b!4598848 b!4598834)))

(assert (=> bs!1011350 (= lambda!186306 lambda!186298)))

(declare-fun bs!1011351 () Bool)

(assert (= bs!1011351 (and b!4598848 b!4598473)))

(assert (=> bs!1011351 (= lambda!186306 lambda!186241)))

(declare-fun b!4598844 () Bool)

(declare-fun e!2868531 () Unit!108077)

(declare-fun Unit!108255 () Unit!108077)

(assert (=> b!4598844 (= e!2868531 Unit!108255)))

(declare-fun b!4598845 () Bool)

(assert (=> b!4598845 false))

(declare-fun Unit!108256 () Unit!108077)

(assert (=> b!4598845 (= e!2868531 Unit!108256)))

(declare-fun e!2868532 () List!51205)

(assert (=> b!4598846 (= e!2868532 (Cons!51081 (_1!29155 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) (getKeysList!573 (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))))))))

(declare-fun c!787721 () Bool)

(assert (=> b!4598846 (= c!787721 (containsKey!2158 (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) (_1!29155 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))))))))

(declare-fun lt!1758537 () Unit!108077)

(assert (=> b!4598846 (= lt!1758537 e!2868531)))

(declare-fun c!787720 () Bool)

(assert (=> b!4598846 (= c!787720 (contains!14029 (getKeysList!573 (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) (_1!29155 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))))))))

(declare-fun lt!1758535 () Unit!108077)

(declare-fun e!2868530 () Unit!108077)

(assert (=> b!4598846 (= lt!1758535 e!2868530)))

(declare-fun lt!1758539 () List!51205)

(assert (=> b!4598846 (= lt!1758539 (getKeysList!573 (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))))))

(declare-fun lt!1758536 () Unit!108077)

(assert (=> b!4598846 (= lt!1758536 (lemmaForallContainsAddHeadPreserves!232 (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) lt!1758539 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))))))

(assert (=> b!4598846 (forall!10602 lt!1758539 lambda!186304)))

(declare-fun lt!1758540 () Unit!108077)

(assert (=> b!4598846 (= lt!1758540 lt!1758536)))

(declare-fun d!1448027 () Bool)

(declare-fun e!2868533 () Bool)

(assert (=> d!1448027 e!2868533))

(declare-fun res!1923558 () Bool)

(assert (=> d!1448027 (=> (not res!1923558) (not e!2868533))))

(declare-fun lt!1758538 () List!51205)

(assert (=> d!1448027 (= res!1923558 (noDuplicate!812 lt!1758538))))

(assert (=> d!1448027 (= lt!1758538 e!2868532)))

(declare-fun c!787719 () Bool)

(assert (=> d!1448027 (= c!787719 ((_ is Cons!51078) (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))))))

(assert (=> d!1448027 (invariantList!1124 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))))

(assert (=> d!1448027 (= (getKeysList!573 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))) lt!1758538)))

(declare-fun b!4598847 () Bool)

(declare-fun Unit!108257 () Unit!108077)

(assert (=> b!4598847 (= e!2868530 Unit!108257)))

(assert (=> b!4598848 (= e!2868533 (= (content!8647 lt!1758538) (content!8647 (map!11284 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))) lambda!186306))))))

(assert (=> b!4598849 false))

(declare-fun lt!1758534 () Unit!108077)

(assert (=> b!4598849 (= lt!1758534 (forallContained!2854 (getKeysList!573 (t!358196 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))) lambda!186303 (_1!29155 (h!57042 (toList!4652 (extractMap!1378 (toList!4651 lm!1477)))))))))

(declare-fun Unit!108258 () Unit!108077)

(assert (=> b!4598849 (= e!2868530 Unit!108258)))

(declare-fun b!4598850 () Bool)

(declare-fun res!1923557 () Bool)

(assert (=> b!4598850 (=> (not res!1923557) (not e!2868533))))

(assert (=> b!4598850 (= res!1923557 (= (length!480 lt!1758538) (length!481 (toList!4652 (extractMap!1378 (toList!4651 lm!1477))))))))

(declare-fun res!1923559 () Bool)

(assert (=> b!4598851 (=> (not res!1923559) (not e!2868533))))

(assert (=> b!4598851 (= res!1923559 (forall!10602 lt!1758538 lambda!186305))))

(declare-fun b!4598852 () Bool)

(assert (=> b!4598852 (= e!2868532 Nil!51081)))

(assert (= (and d!1448027 c!787719) b!4598846))

(assert (= (and d!1448027 (not c!787719)) b!4598852))

(assert (= (and b!4598846 c!787721) b!4598845))

(assert (= (and b!4598846 (not c!787721)) b!4598844))

(assert (= (and b!4598846 c!787720) b!4598849))

(assert (= (and b!4598846 (not c!787720)) b!4598847))

(assert (= (and d!1448027 res!1923558) b!4598850))

(assert (= (and b!4598850 res!1923557) b!4598851))

(assert (= (and b!4598851 res!1923559) b!4598848))

(declare-fun m!5425475 () Bool)

(assert (=> b!4598849 m!5425475))

(assert (=> b!4598849 m!5425475))

(declare-fun m!5425477 () Bool)

(assert (=> b!4598849 m!5425477))

(declare-fun m!5425479 () Bool)

(assert (=> d!1448027 m!5425479))

(assert (=> d!1448027 m!5424791))

(declare-fun m!5425481 () Bool)

(assert (=> b!4598848 m!5425481))

(declare-fun m!5425483 () Bool)

(assert (=> b!4598848 m!5425483))

(assert (=> b!4598848 m!5425483))

(declare-fun m!5425485 () Bool)

(assert (=> b!4598848 m!5425485))

(declare-fun m!5425487 () Bool)

(assert (=> b!4598846 m!5425487))

(declare-fun m!5425489 () Bool)

(assert (=> b!4598846 m!5425489))

(assert (=> b!4598846 m!5425475))

(assert (=> b!4598846 m!5425475))

(declare-fun m!5425491 () Bool)

(assert (=> b!4598846 m!5425491))

(declare-fun m!5425493 () Bool)

(assert (=> b!4598846 m!5425493))

(declare-fun m!5425495 () Bool)

(assert (=> b!4598851 m!5425495))

(declare-fun m!5425497 () Bool)

(assert (=> b!4598850 m!5425497))

(assert (=> b!4598850 m!5424745))

(assert (=> b!4598030 d!1448027))

(declare-fun d!1448029 () Bool)

(declare-fun e!2868535 () Bool)

(assert (=> d!1448029 e!2868535))

(declare-fun res!1923560 () Bool)

(assert (=> d!1448029 (=> res!1923560 e!2868535)))

(declare-fun lt!1758541 () Bool)

(assert (=> d!1448029 (= res!1923560 (not lt!1758541))))

(declare-fun lt!1758543 () Bool)

(assert (=> d!1448029 (= lt!1758541 lt!1758543)))

(declare-fun lt!1758542 () Unit!108077)

(declare-fun e!2868534 () Unit!108077)

(assert (=> d!1448029 (= lt!1758542 e!2868534)))

(declare-fun c!787722 () Bool)

(assert (=> d!1448029 (= c!787722 lt!1758543)))

(assert (=> d!1448029 (= lt!1758543 (containsKey!2157 (toList!4651 lt!1757898) (_1!29156 lt!1757696)))))

(assert (=> d!1448029 (= (contains!14025 lt!1757898 (_1!29156 lt!1757696)) lt!1758541)))

(declare-fun b!4598853 () Bool)

(declare-fun lt!1758544 () Unit!108077)

(assert (=> b!4598853 (= e!2868534 lt!1758544)))

(assert (=> b!4598853 (= lt!1758544 (lemmaContainsKeyImpliesGetValueByKeyDefined!1214 (toList!4651 lt!1757898) (_1!29156 lt!1757696)))))

(assert (=> b!4598853 (isDefined!8658 (getValueByKey!1310 (toList!4651 lt!1757898) (_1!29156 lt!1757696)))))

(declare-fun b!4598854 () Bool)

(declare-fun Unit!108259 () Unit!108077)

(assert (=> b!4598854 (= e!2868534 Unit!108259)))

(declare-fun b!4598855 () Bool)

(assert (=> b!4598855 (= e!2868535 (isDefined!8658 (getValueByKey!1310 (toList!4651 lt!1757898) (_1!29156 lt!1757696))))))

(assert (= (and d!1448029 c!787722) b!4598853))

(assert (= (and d!1448029 (not c!787722)) b!4598854))

(assert (= (and d!1448029 (not res!1923560)) b!4598855))

(declare-fun m!5425499 () Bool)

(assert (=> d!1448029 m!5425499))

(declare-fun m!5425501 () Bool)

(assert (=> b!4598853 m!5425501))

(assert (=> b!4598853 m!5423945))

(assert (=> b!4598853 m!5423945))

(declare-fun m!5425503 () Bool)

(assert (=> b!4598853 m!5425503))

(assert (=> b!4598855 m!5423945))

(assert (=> b!4598855 m!5423945))

(assert (=> b!4598855 m!5425503))

(assert (=> d!1447553 d!1448029))

(declare-fun b!4598859 () Bool)

(declare-fun e!2868537 () Option!11390)

(assert (=> b!4598859 (= e!2868537 None!11389)))

(declare-fun b!4598858 () Bool)

(assert (=> b!4598858 (= e!2868537 (getValueByKey!1310 (t!358197 lt!1757895) (_1!29156 lt!1757696)))))

(declare-fun b!4598856 () Bool)

(declare-fun e!2868536 () Option!11390)

(assert (=> b!4598856 (= e!2868536 (Some!11389 (_2!29156 (h!57043 lt!1757895))))))

(declare-fun d!1448031 () Bool)

(declare-fun c!787723 () Bool)

(assert (=> d!1448031 (= c!787723 (and ((_ is Cons!51079) lt!1757895) (= (_1!29156 (h!57043 lt!1757895)) (_1!29156 lt!1757696))))))

(assert (=> d!1448031 (= (getValueByKey!1310 lt!1757895 (_1!29156 lt!1757696)) e!2868536)))

(declare-fun b!4598857 () Bool)

(assert (=> b!4598857 (= e!2868536 e!2868537)))

(declare-fun c!787724 () Bool)

(assert (=> b!4598857 (= c!787724 (and ((_ is Cons!51079) lt!1757895) (not (= (_1!29156 (h!57043 lt!1757895)) (_1!29156 lt!1757696)))))))

(assert (= (and d!1448031 c!787723) b!4598856))

(assert (= (and d!1448031 (not c!787723)) b!4598857))

(assert (= (and b!4598857 c!787724) b!4598858))

(assert (= (and b!4598857 (not c!787724)) b!4598859))

(declare-fun m!5425505 () Bool)

(assert (=> b!4598858 m!5425505))

(assert (=> d!1447553 d!1448031))

(declare-fun d!1448033 () Bool)

(assert (=> d!1448033 (= (getValueByKey!1310 lt!1757895 (_1!29156 lt!1757696)) (Some!11389 (_2!29156 lt!1757696)))))

(declare-fun lt!1758547 () Unit!108077)

(declare-fun choose!30822 (List!51203 (_ BitVec 64) List!51202) Unit!108077)

(assert (=> d!1448033 (= lt!1758547 (choose!30822 lt!1757895 (_1!29156 lt!1757696) (_2!29156 lt!1757696)))))

(declare-fun e!2868540 () Bool)

(assert (=> d!1448033 e!2868540))

(declare-fun res!1923565 () Bool)

(assert (=> d!1448033 (=> (not res!1923565) (not e!2868540))))

(assert (=> d!1448033 (= res!1923565 (isStrictlySorted!540 lt!1757895))))

(assert (=> d!1448033 (= (lemmaContainsTupThenGetReturnValue!796 lt!1757895 (_1!29156 lt!1757696) (_2!29156 lt!1757696)) lt!1758547)))

(declare-fun b!4598864 () Bool)

(declare-fun res!1923566 () Bool)

(assert (=> b!4598864 (=> (not res!1923566) (not e!2868540))))

(assert (=> b!4598864 (= res!1923566 (containsKey!2157 lt!1757895 (_1!29156 lt!1757696)))))

(declare-fun b!4598865 () Bool)

(assert (=> b!4598865 (= e!2868540 (contains!14026 lt!1757895 (tuple2!51725 (_1!29156 lt!1757696) (_2!29156 lt!1757696))))))

(assert (= (and d!1448033 res!1923565) b!4598864))

(assert (= (and b!4598864 res!1923566) b!4598865))

(assert (=> d!1448033 m!5423939))

(declare-fun m!5425507 () Bool)

(assert (=> d!1448033 m!5425507))

(declare-fun m!5425509 () Bool)

(assert (=> d!1448033 m!5425509))

(declare-fun m!5425511 () Bool)

(assert (=> b!4598864 m!5425511))

(declare-fun m!5425513 () Bool)

(assert (=> b!4598865 m!5425513))

(assert (=> d!1447553 d!1448033))

(declare-fun bm!320956 () Bool)

(declare-fun call!320961 () List!51203)

(declare-fun call!320963 () List!51203)

(assert (=> bm!320956 (= call!320961 call!320963)))

(declare-fun d!1448035 () Bool)

(declare-fun e!2868552 () Bool)

(assert (=> d!1448035 e!2868552))

(declare-fun res!1923572 () Bool)

(assert (=> d!1448035 (=> (not res!1923572) (not e!2868552))))

(declare-fun lt!1758550 () List!51203)

(assert (=> d!1448035 (= res!1923572 (isStrictlySorted!540 lt!1758550))))

(declare-fun e!2868555 () List!51203)

(assert (=> d!1448035 (= lt!1758550 e!2868555)))

(declare-fun c!787736 () Bool)

(assert (=> d!1448035 (= c!787736 (and ((_ is Cons!51079) (toList!4651 lm!1477)) (bvslt (_1!29156 (h!57043 (toList!4651 lm!1477))) (_1!29156 lt!1757696))))))

(assert (=> d!1448035 (isStrictlySorted!540 (toList!4651 lm!1477))))

(assert (=> d!1448035 (= (insertStrictlySorted!488 (toList!4651 lm!1477) (_1!29156 lt!1757696) (_2!29156 lt!1757696)) lt!1758550)))

(declare-fun b!4598886 () Bool)

(declare-fun e!2868551 () List!51203)

(assert (=> b!4598886 (= e!2868551 (insertStrictlySorted!488 (t!358197 (toList!4651 lm!1477)) (_1!29156 lt!1757696) (_2!29156 lt!1757696)))))

(declare-fun b!4598887 () Bool)

(assert (=> b!4598887 (= e!2868555 call!320963)))

(declare-fun b!4598888 () Bool)

(declare-fun c!787735 () Bool)

(assert (=> b!4598888 (= c!787735 (and ((_ is Cons!51079) (toList!4651 lm!1477)) (bvsgt (_1!29156 (h!57043 (toList!4651 lm!1477))) (_1!29156 lt!1757696))))))

(declare-fun e!2868553 () List!51203)

(declare-fun e!2868554 () List!51203)

(assert (=> b!4598888 (= e!2868553 e!2868554)))

(declare-fun b!4598889 () Bool)

(declare-fun call!320962 () List!51203)

(assert (=> b!4598889 (= e!2868554 call!320962)))

(declare-fun b!4598890 () Bool)

(assert (=> b!4598890 (= e!2868555 e!2868553)))

(declare-fun c!787734 () Bool)

(assert (=> b!4598890 (= c!787734 (and ((_ is Cons!51079) (toList!4651 lm!1477)) (= (_1!29156 (h!57043 (toList!4651 lm!1477))) (_1!29156 lt!1757696))))))

(declare-fun bm!320957 () Bool)

(assert (=> bm!320957 (= call!320962 call!320961)))

(declare-fun b!4598891 () Bool)

(declare-fun res!1923571 () Bool)

(assert (=> b!4598891 (=> (not res!1923571) (not e!2868552))))

(assert (=> b!4598891 (= res!1923571 (containsKey!2157 lt!1758550 (_1!29156 lt!1757696)))))

(declare-fun b!4598892 () Bool)

(assert (=> b!4598892 (= e!2868553 call!320961)))

(declare-fun bm!320958 () Bool)

(declare-fun $colon$colon!1042 (List!51203 tuple2!51724) List!51203)

(assert (=> bm!320958 (= call!320963 ($colon$colon!1042 e!2868551 (ite c!787736 (h!57043 (toList!4651 lm!1477)) (tuple2!51725 (_1!29156 lt!1757696) (_2!29156 lt!1757696)))))))

(declare-fun c!787733 () Bool)

(assert (=> bm!320958 (= c!787733 c!787736)))

(declare-fun b!4598893 () Bool)

(assert (=> b!4598893 (= e!2868552 (contains!14026 lt!1758550 (tuple2!51725 (_1!29156 lt!1757696) (_2!29156 lt!1757696))))))

(declare-fun b!4598894 () Bool)

(assert (=> b!4598894 (= e!2868551 (ite c!787734 (t!358197 (toList!4651 lm!1477)) (ite c!787735 (Cons!51079 (h!57043 (toList!4651 lm!1477)) (t!358197 (toList!4651 lm!1477))) Nil!51079)))))

(declare-fun b!4598895 () Bool)

(assert (=> b!4598895 (= e!2868554 call!320962)))

(assert (= (and d!1448035 c!787736) b!4598887))

(assert (= (and d!1448035 (not c!787736)) b!4598890))

(assert (= (and b!4598890 c!787734) b!4598892))

(assert (= (and b!4598890 (not c!787734)) b!4598888))

(assert (= (and b!4598888 c!787735) b!4598889))

(assert (= (and b!4598888 (not c!787735)) b!4598895))

(assert (= (or b!4598889 b!4598895) bm!320957))

(assert (= (or b!4598892 bm!320957) bm!320956))

(assert (= (or b!4598887 bm!320956) bm!320958))

(assert (= (and bm!320958 c!787733) b!4598886))

(assert (= (and bm!320958 (not c!787733)) b!4598894))

(assert (= (and d!1448035 res!1923572) b!4598891))

(assert (= (and b!4598891 res!1923571) b!4598893))

(declare-fun m!5425515 () Bool)

(assert (=> b!4598893 m!5425515))

(declare-fun m!5425517 () Bool)

(assert (=> b!4598891 m!5425517))

(declare-fun m!5425519 () Bool)

(assert (=> bm!320958 m!5425519))

(declare-fun m!5425521 () Bool)

(assert (=> d!1448035 m!5425521))

(assert (=> d!1448035 m!5423659))

(declare-fun m!5425523 () Bool)

(assert (=> b!4598886 m!5425523))

(assert (=> d!1447553 d!1448035))

(declare-fun d!1448037 () Bool)

(assert (=> d!1448037 (= (invariantList!1124 (toList!4652 lt!1757883)) (noDuplicatedKeys!326 (toList!4652 lt!1757883)))))

(declare-fun bs!1011352 () Bool)

(assert (= bs!1011352 d!1448037))

(declare-fun m!5425525 () Bool)

(assert (=> bs!1011352 m!5425525))

(assert (=> d!1447547 d!1448037))

(declare-fun d!1448039 () Bool)

(declare-fun res!1923573 () Bool)

(declare-fun e!2868556 () Bool)

(assert (=> d!1448039 (=> res!1923573 e!2868556)))

(assert (=> d!1448039 (= res!1923573 ((_ is Nil!51079) lt!1757705))))

(assert (=> d!1448039 (= (forall!10598 lt!1757705 lambda!186120) e!2868556)))

(declare-fun b!4598896 () Bool)

(declare-fun e!2868557 () Bool)

(assert (=> b!4598896 (= e!2868556 e!2868557)))

(declare-fun res!1923574 () Bool)

(assert (=> b!4598896 (=> (not res!1923574) (not e!2868557))))

(assert (=> b!4598896 (= res!1923574 (dynLambda!21396 lambda!186120 (h!57043 lt!1757705)))))

(declare-fun b!4598897 () Bool)

(assert (=> b!4598897 (= e!2868557 (forall!10598 (t!358197 lt!1757705) lambda!186120))))

(assert (= (and d!1448039 (not res!1923573)) b!4598896))

(assert (= (and b!4598896 res!1923574) b!4598897))

(declare-fun b_lambda!169399 () Bool)

(assert (=> (not b_lambda!169399) (not b!4598896)))

(declare-fun m!5425527 () Bool)

(assert (=> b!4598896 m!5425527))

(declare-fun m!5425529 () Bool)

(assert (=> b!4598897 m!5425529))

(assert (=> d!1447547 d!1448039))

(assert (=> d!1447503 d!1447569))

(assert (=> d!1447503 d!1447571))

(declare-fun d!1448041 () Bool)

(assert (=> d!1448041 (not (contains!14027 (extractMap!1378 (toList!4651 lm!1477)) key!3287))))

(assert (=> d!1448041 true))

(declare-fun _$26!545 () Unit!108077)

(assert (=> d!1448041 (= (choose!30808 lm!1477 key!3287 hashF!1107) _$26!545)))

(declare-fun bs!1011353 () Bool)

(assert (= bs!1011353 d!1448041))

(assert (=> bs!1011353 m!5423561))

(assert (=> bs!1011353 m!5423561))

(assert (=> bs!1011353 m!5423563))

(assert (=> d!1447503 d!1448041))

(declare-fun d!1448043 () Bool)

(declare-fun res!1923575 () Bool)

(declare-fun e!2868558 () Bool)

(assert (=> d!1448043 (=> res!1923575 e!2868558)))

(assert (=> d!1448043 (= res!1923575 ((_ is Nil!51079) (toList!4651 lm!1477)))))

(assert (=> d!1448043 (= (forall!10598 (toList!4651 lm!1477) lambda!186105) e!2868558)))

(declare-fun b!4598898 () Bool)

(declare-fun e!2868559 () Bool)

(assert (=> b!4598898 (= e!2868558 e!2868559)))

(declare-fun res!1923576 () Bool)

(assert (=> b!4598898 (=> (not res!1923576) (not e!2868559))))

(assert (=> b!4598898 (= res!1923576 (dynLambda!21396 lambda!186105 (h!57043 (toList!4651 lm!1477))))))

(declare-fun b!4598899 () Bool)

(assert (=> b!4598899 (= e!2868559 (forall!10598 (t!358197 (toList!4651 lm!1477)) lambda!186105))))

(assert (= (and d!1448043 (not res!1923575)) b!4598898))

(assert (= (and b!4598898 res!1923576) b!4598899))

(declare-fun b_lambda!169401 () Bool)

(assert (=> (not b_lambda!169401) (not b!4598898)))

(declare-fun m!5425531 () Bool)

(assert (=> b!4598898 m!5425531))

(declare-fun m!5425533 () Bool)

(assert (=> b!4598899 m!5425533))

(assert (=> d!1447503 d!1448043))

(declare-fun d!1448045 () Bool)

(declare-fun lt!1758551 () Bool)

(assert (=> d!1448045 (= lt!1758551 (select (content!8646 (toList!4651 lt!1757898)) lt!1757696))))

(declare-fun e!2868561 () Bool)

(assert (=> d!1448045 (= lt!1758551 e!2868561)))

(declare-fun res!1923577 () Bool)

(assert (=> d!1448045 (=> (not res!1923577) (not e!2868561))))

(assert (=> d!1448045 (= res!1923577 ((_ is Cons!51079) (toList!4651 lt!1757898)))))

(assert (=> d!1448045 (= (contains!14026 (toList!4651 lt!1757898) lt!1757696) lt!1758551)))

(declare-fun b!4598900 () Bool)

(declare-fun e!2868560 () Bool)

(assert (=> b!4598900 (= e!2868561 e!2868560)))

(declare-fun res!1923578 () Bool)

(assert (=> b!4598900 (=> res!1923578 e!2868560)))

(assert (=> b!4598900 (= res!1923578 (= (h!57043 (toList!4651 lt!1757898)) lt!1757696))))

(declare-fun b!4598901 () Bool)

(assert (=> b!4598901 (= e!2868560 (contains!14026 (t!358197 (toList!4651 lt!1757898)) lt!1757696))))

(assert (= (and d!1448045 res!1923577) b!4598900))

(assert (= (and b!4598900 (not res!1923578)) b!4598901))

(declare-fun m!5425535 () Bool)

(assert (=> d!1448045 m!5425535))

(declare-fun m!5425537 () Bool)

(assert (=> d!1448045 m!5425537))

(declare-fun m!5425539 () Bool)

(assert (=> b!4598901 m!5425539))

(assert (=> b!4598010 d!1448045))

(declare-fun d!1448047 () Bool)

(declare-fun res!1923579 () Bool)

(declare-fun e!2868562 () Bool)

(assert (=> d!1448047 (=> res!1923579 e!2868562)))

(assert (=> d!1448047 (= res!1923579 (not ((_ is Cons!51078) (_2!29156 lt!1757699))))))

(assert (=> d!1448047 (= (noDuplicateKeys!1318 (_2!29156 lt!1757699)) e!2868562)))

(declare-fun b!4598902 () Bool)

(declare-fun e!2868563 () Bool)

(assert (=> b!4598902 (= e!2868562 e!2868563)))

(declare-fun res!1923580 () Bool)

(assert (=> b!4598902 (=> (not res!1923580) (not e!2868563))))

(assert (=> b!4598902 (= res!1923580 (not (containsKey!2154 (t!358196 (_2!29156 lt!1757699)) (_1!29155 (h!57042 (_2!29156 lt!1757699))))))))

(declare-fun b!4598903 () Bool)

(assert (=> b!4598903 (= e!2868563 (noDuplicateKeys!1318 (t!358196 (_2!29156 lt!1757699))))))

(assert (= (and d!1448047 (not res!1923579)) b!4598902))

(assert (= (and b!4598902 res!1923580) b!4598903))

(declare-fun m!5425541 () Bool)

(assert (=> b!4598902 m!5425541))

(declare-fun m!5425543 () Bool)

(assert (=> b!4598903 m!5425543))

(assert (=> bs!1010624 d!1448047))

(declare-fun bm!320959 () Bool)

(declare-fun call!320964 () Bool)

(declare-fun e!2868566 () List!51205)

(assert (=> bm!320959 (= call!320964 (contains!14029 e!2868566 key!3287))))

(declare-fun c!787739 () Bool)

(declare-fun c!787737 () Bool)

(assert (=> bm!320959 (= c!787739 c!787737)))

(declare-fun b!4598904 () Bool)

(declare-fun e!2868569 () Unit!108077)

(declare-fun Unit!108260 () Unit!108077)

(assert (=> b!4598904 (= e!2868569 Unit!108260)))

(declare-fun d!1448049 () Bool)

(declare-fun e!2868564 () Bool)

(assert (=> d!1448049 e!2868564))

(declare-fun res!1923581 () Bool)

(assert (=> d!1448049 (=> res!1923581 e!2868564)))

(declare-fun e!2868565 () Bool)

(assert (=> d!1448049 (= res!1923581 e!2868565)))

(declare-fun res!1923583 () Bool)

(assert (=> d!1448049 (=> (not res!1923583) (not e!2868565))))

(declare-fun lt!1758555 () Bool)

(assert (=> d!1448049 (= res!1923583 (not lt!1758555))))

(declare-fun lt!1758557 () Bool)

(assert (=> d!1448049 (= lt!1758555 lt!1758557)))

(declare-fun lt!1758559 () Unit!108077)

(declare-fun e!2868567 () Unit!108077)

(assert (=> d!1448049 (= lt!1758559 e!2868567)))

(assert (=> d!1448049 (= c!787737 lt!1758557)))

(assert (=> d!1448049 (= lt!1758557 (containsKey!2158 (toList!4652 (extractMap!1378 (toList!4651 (ListLongMap!3284 lt!1757705)))) key!3287))))

(assert (=> d!1448049 (= (contains!14027 (extractMap!1378 (toList!4651 (ListLongMap!3284 lt!1757705))) key!3287) lt!1758555)))

(declare-fun b!4598905 () Bool)

(declare-fun e!2868568 () Bool)

(assert (=> b!4598905 (= e!2868568 (contains!14029 (keys!17884 (extractMap!1378 (toList!4651 (ListLongMap!3284 lt!1757705)))) key!3287))))

(declare-fun b!4598906 () Bool)

(assert (=> b!4598906 (= e!2868567 e!2868569)))

(declare-fun c!787738 () Bool)

(assert (=> b!4598906 (= c!787738 call!320964)))

(declare-fun b!4598907 () Bool)

(assert (=> b!4598907 (= e!2868566 (getKeysList!573 (toList!4652 (extractMap!1378 (toList!4651 (ListLongMap!3284 lt!1757705))))))))

(declare-fun b!4598908 () Bool)

(assert (=> b!4598908 (= e!2868564 e!2868568)))

(declare-fun res!1923582 () Bool)

(assert (=> b!4598908 (=> (not res!1923582) (not e!2868568))))

(assert (=> b!4598908 (= res!1923582 (isDefined!8659 (getValueByKey!1311 (toList!4652 (extractMap!1378 (toList!4651 (ListLongMap!3284 lt!1757705)))) key!3287)))))

(declare-fun b!4598909 () Bool)

(assert (=> b!4598909 (= e!2868565 (not (contains!14029 (keys!17884 (extractMap!1378 (toList!4651 (ListLongMap!3284 lt!1757705)))) key!3287)))))

(declare-fun b!4598910 () Bool)

(assert (=> b!4598910 (= e!2868566 (keys!17884 (extractMap!1378 (toList!4651 (ListLongMap!3284 lt!1757705)))))))

(declare-fun b!4598911 () Bool)

(declare-fun lt!1758553 () Unit!108077)

(assert (=> b!4598911 (= e!2868567 lt!1758553)))

(declare-fun lt!1758556 () Unit!108077)

(assert (=> b!4598911 (= lt!1758556 (lemmaContainsKeyImpliesGetValueByKeyDefined!1215 (toList!4652 (extractMap!1378 (toList!4651 (ListLongMap!3284 lt!1757705)))) key!3287))))

(assert (=> b!4598911 (isDefined!8659 (getValueByKey!1311 (toList!4652 (extractMap!1378 (toList!4651 (ListLongMap!3284 lt!1757705)))) key!3287))))

(declare-fun lt!1758552 () Unit!108077)

(assert (=> b!4598911 (= lt!1758552 lt!1758556)))

(assert (=> b!4598911 (= lt!1758553 (lemmaInListThenGetKeysListContains!569 (toList!4652 (extractMap!1378 (toList!4651 (ListLongMap!3284 lt!1757705)))) key!3287))))

(assert (=> b!4598911 call!320964))

(declare-fun b!4598912 () Bool)

(assert (=> b!4598912 false))

(declare-fun lt!1758558 () Unit!108077)

(declare-fun lt!1758554 () Unit!108077)

(assert (=> b!4598912 (= lt!1758558 lt!1758554)))

(assert (=> b!4598912 (containsKey!2158 (toList!4652 (extractMap!1378 (toList!4651 (ListLongMap!3284 lt!1757705)))) key!3287)))

(assert (=> b!4598912 (= lt!1758554 (lemmaInGetKeysListThenContainsKey!572 (toList!4652 (extractMap!1378 (toList!4651 (ListLongMap!3284 lt!1757705)))) key!3287))))

(declare-fun Unit!108261 () Unit!108077)

(assert (=> b!4598912 (= e!2868569 Unit!108261)))

(assert (= (and d!1448049 c!787737) b!4598911))

(assert (= (and d!1448049 (not c!787737)) b!4598906))

(assert (= (and b!4598906 c!787738) b!4598912))

(assert (= (and b!4598906 (not c!787738)) b!4598904))

(assert (= (or b!4598911 b!4598906) bm!320959))

(assert (= (and bm!320959 c!787739) b!4598907))

(assert (= (and bm!320959 (not c!787739)) b!4598910))

(assert (= (and d!1448049 res!1923583) b!4598909))

(assert (= (and d!1448049 (not res!1923581)) b!4598908))

(assert (= (and b!4598908 res!1923582) b!4598905))

(assert (=> b!4598910 m!5423953))

(declare-fun m!5425545 () Bool)

(assert (=> b!4598910 m!5425545))

(assert (=> b!4598905 m!5423953))

(assert (=> b!4598905 m!5425545))

(assert (=> b!4598905 m!5425545))

(declare-fun m!5425547 () Bool)

(assert (=> b!4598905 m!5425547))

(declare-fun m!5425549 () Bool)

(assert (=> bm!320959 m!5425549))

(declare-fun m!5425551 () Bool)

(assert (=> b!4598911 m!5425551))

(declare-fun m!5425553 () Bool)

(assert (=> b!4598911 m!5425553))

(assert (=> b!4598911 m!5425553))

(declare-fun m!5425555 () Bool)

(assert (=> b!4598911 m!5425555))

(declare-fun m!5425557 () Bool)

(assert (=> b!4598911 m!5425557))

(declare-fun m!5425559 () Bool)

(assert (=> d!1448049 m!5425559))

(assert (=> b!4598912 m!5425559))

(declare-fun m!5425561 () Bool)

(assert (=> b!4598912 m!5425561))

(assert (=> b!4598908 m!5425553))

(assert (=> b!4598908 m!5425553))

(assert (=> b!4598908 m!5425555))

(declare-fun m!5425563 () Bool)

(assert (=> b!4598907 m!5425563))

(assert (=> b!4598909 m!5423953))

(assert (=> b!4598909 m!5425545))

(assert (=> b!4598909 m!5425545))

(assert (=> b!4598909 m!5425547))

(assert (=> d!1447557 d!1448049))

(declare-fun bs!1011354 () Bool)

(declare-fun d!1448051 () Bool)

(assert (= bs!1011354 (and d!1448051 d!1447571)))

(declare-fun lambda!186307 () Int)

(assert (=> bs!1011354 (= lambda!186307 lambda!186128)))

(declare-fun bs!1011355 () Bool)

(assert (= bs!1011355 (and d!1448051 d!1447443)))

(assert (=> bs!1011355 (= lambda!186307 lambda!186085)))

(declare-fun bs!1011356 () Bool)

(assert (= bs!1011356 (and d!1448051 d!1447917)))

(assert (=> bs!1011356 (= lambda!186307 lambda!186283)))

(declare-fun bs!1011357 () Bool)

(assert (= bs!1011357 (and d!1448051 d!1447559)))

(assert (=> bs!1011357 (= lambda!186307 lambda!186124)))

(declare-fun bs!1011358 () Bool)

(assert (= bs!1011358 (and d!1448051 d!1447881)))

(assert (=> bs!1011358 (= lambda!186307 lambda!186278)))

(declare-fun bs!1011359 () Bool)

(assert (= bs!1011359 (and d!1448051 start!458760)))

(assert (=> bs!1011359 (= lambda!186307 lambda!186082)))

(declare-fun bs!1011360 () Bool)

(assert (= bs!1011360 (and d!1448051 d!1448001)))

(assert (=> bs!1011360 (= lambda!186307 lambda!186293)))

(declare-fun bs!1011361 () Bool)

(assert (= bs!1011361 (and d!1448051 d!1448011)))

(assert (=> bs!1011361 (= lambda!186307 lambda!186294)))

(declare-fun bs!1011362 () Bool)

(assert (= bs!1011362 (and d!1448051 d!1447517)))

(assert (=> bs!1011362 (= lambda!186307 lambda!186109)))

(declare-fun bs!1011363 () Bool)

(assert (= bs!1011363 (and d!1448051 d!1447547)))

(assert (=> bs!1011363 (= lambda!186307 lambda!186120)))

(declare-fun bs!1011364 () Bool)

(assert (= bs!1011364 (and d!1448051 d!1447955)))

(assert (=> bs!1011364 (= lambda!186307 lambda!186288)))

(declare-fun bs!1011365 () Bool)

(assert (= bs!1011365 (and d!1448051 d!1447503)))

(assert (=> bs!1011365 (= lambda!186307 lambda!186105)))

(declare-fun bs!1011366 () Bool)

(assert (= bs!1011366 (and d!1448051 d!1447543)))

(assert (=> bs!1011366 (= lambda!186307 lambda!186119)))

(declare-fun bs!1011367 () Bool)

(assert (= bs!1011367 (and d!1448051 d!1447557)))

(assert (=> bs!1011367 (= lambda!186307 lambda!186123)))

(declare-fun bs!1011368 () Bool)

(assert (= bs!1011368 (and d!1448051 d!1447565)))

(assert (=> bs!1011368 (not (= lambda!186307 lambda!186127))))

(declare-fun bs!1011369 () Bool)

(assert (= bs!1011369 (and d!1448051 d!1447581)))

(assert (=> bs!1011369 (= lambda!186307 lambda!186130)))

(declare-fun bs!1011370 () Bool)

(assert (= bs!1011370 (and d!1448051 d!1447579)))

(assert (=> bs!1011370 (= lambda!186307 lambda!186129)))

(declare-fun lt!1758560 () ListMap!3913)

(assert (=> d!1448051 (invariantList!1124 (toList!4652 lt!1758560))))

(declare-fun e!2868570 () ListMap!3913)

(assert (=> d!1448051 (= lt!1758560 e!2868570)))

(declare-fun c!787740 () Bool)

(assert (=> d!1448051 (= c!787740 ((_ is Cons!51079) (toList!4651 (ListLongMap!3284 lt!1757705))))))

(assert (=> d!1448051 (forall!10598 (toList!4651 (ListLongMap!3284 lt!1757705)) lambda!186307)))

(assert (=> d!1448051 (= (extractMap!1378 (toList!4651 (ListLongMap!3284 lt!1757705))) lt!1758560)))

(declare-fun b!4598913 () Bool)

(assert (=> b!4598913 (= e!2868570 (addToMapMapFromBucket!814 (_2!29156 (h!57043 (toList!4651 (ListLongMap!3284 lt!1757705)))) (extractMap!1378 (t!358197 (toList!4651 (ListLongMap!3284 lt!1757705))))))))

(declare-fun b!4598914 () Bool)

(assert (=> b!4598914 (= e!2868570 (ListMap!3914 Nil!51078))))

(assert (= (and d!1448051 c!787740) b!4598913))

(assert (= (and d!1448051 (not c!787740)) b!4598914))

(declare-fun m!5425565 () Bool)

(assert (=> d!1448051 m!5425565))

(declare-fun m!5425567 () Bool)

(assert (=> d!1448051 m!5425567))

(declare-fun m!5425569 () Bool)

(assert (=> b!4598913 m!5425569))

(assert (=> b!4598913 m!5425569))

(declare-fun m!5425571 () Bool)

(assert (=> b!4598913 m!5425571))

(assert (=> d!1447557 d!1448051))

(declare-fun d!1448053 () Bool)

(assert (=> d!1448053 (contains!14027 (extractMap!1378 (toList!4651 (ListLongMap!3284 lt!1757705))) key!3287)))

(assert (=> d!1448053 true))

(declare-fun _$34!826 () Unit!108077)

(assert (=> d!1448053 (= (choose!30810 (ListLongMap!3284 lt!1757705) key!3287 hashF!1107) _$34!826)))

(declare-fun bs!1011371 () Bool)

(assert (= bs!1011371 d!1448053))

(assert (=> bs!1011371 m!5423953))

(assert (=> bs!1011371 m!5423953))

(assert (=> bs!1011371 m!5423955))

(assert (=> d!1447557 d!1448053))

(declare-fun d!1448055 () Bool)

(declare-fun res!1923584 () Bool)

(declare-fun e!2868571 () Bool)

(assert (=> d!1448055 (=> res!1923584 e!2868571)))

(assert (=> d!1448055 (= res!1923584 ((_ is Nil!51079) (toList!4651 (ListLongMap!3284 lt!1757705))))))

(assert (=> d!1448055 (= (forall!10598 (toList!4651 (ListLongMap!3284 lt!1757705)) lambda!186123) e!2868571)))

(declare-fun b!4598915 () Bool)

(declare-fun e!2868572 () Bool)

(assert (=> b!4598915 (= e!2868571 e!2868572)))

(declare-fun res!1923585 () Bool)

(assert (=> b!4598915 (=> (not res!1923585) (not e!2868572))))

(assert (=> b!4598915 (= res!1923585 (dynLambda!21396 lambda!186123 (h!57043 (toList!4651 (ListLongMap!3284 lt!1757705)))))))

(declare-fun b!4598916 () Bool)

(assert (=> b!4598916 (= e!2868572 (forall!10598 (t!358197 (toList!4651 (ListLongMap!3284 lt!1757705))) lambda!186123))))

(assert (= (and d!1448055 (not res!1923584)) b!4598915))

(assert (= (and b!4598915 res!1923585) b!4598916))

(declare-fun b_lambda!169403 () Bool)

(assert (=> (not b_lambda!169403) (not b!4598915)))

(declare-fun m!5425573 () Bool)

(assert (=> b!4598915 m!5425573))

(declare-fun m!5425575 () Bool)

(assert (=> b!4598916 m!5425575))

(assert (=> d!1447557 d!1448055))

(assert (=> b!4597865 d!1447477))

(declare-fun b!4598920 () Bool)

(declare-fun e!2868574 () Option!11390)

(assert (=> b!4598920 (= e!2868574 None!11389)))

(declare-fun b!4598919 () Bool)

(assert (=> b!4598919 (= e!2868574 (getValueByKey!1310 (t!358197 (toList!4651 lt!1757915)) (_1!29156 lt!1757696)))))

(declare-fun b!4598917 () Bool)

(declare-fun e!2868573 () Option!11390)

(assert (=> b!4598917 (= e!2868573 (Some!11389 (_2!29156 (h!57043 (toList!4651 lt!1757915)))))))

(declare-fun d!1448057 () Bool)

(declare-fun c!787741 () Bool)

(assert (=> d!1448057 (= c!787741 (and ((_ is Cons!51079) (toList!4651 lt!1757915)) (= (_1!29156 (h!57043 (toList!4651 lt!1757915))) (_1!29156 lt!1757696))))))

(assert (=> d!1448057 (= (getValueByKey!1310 (toList!4651 lt!1757915) (_1!29156 lt!1757696)) e!2868573)))

(declare-fun b!4598918 () Bool)

(assert (=> b!4598918 (= e!2868573 e!2868574)))

(declare-fun c!787742 () Bool)

(assert (=> b!4598918 (= c!787742 (and ((_ is Cons!51079) (toList!4651 lt!1757915)) (not (= (_1!29156 (h!57043 (toList!4651 lt!1757915))) (_1!29156 lt!1757696)))))))

(assert (= (and d!1448057 c!787741) b!4598917))

(assert (= (and d!1448057 (not c!787741)) b!4598918))

(assert (= (and b!4598918 c!787742) b!4598919))

(assert (= (and b!4598918 (not c!787742)) b!4598920))

(declare-fun m!5425577 () Bool)

(assert (=> b!4598919 m!5425577))

(assert (=> b!4598038 d!1448057))

(declare-fun d!1448059 () Bool)

(declare-fun res!1923586 () Bool)

(declare-fun e!2868575 () Bool)

(assert (=> d!1448059 (=> res!1923586 e!2868575)))

(assert (=> d!1448059 (= res!1923586 (and ((_ is Cons!51078) (t!358196 (_2!29156 (h!57043 (toList!4651 lm!1477))))) (= (_1!29155 (h!57042 (t!358196 (_2!29156 (h!57043 (toList!4651 lm!1477)))))) key!3287)))))

(assert (=> d!1448059 (= (containsKey!2154 (t!358196 (_2!29156 (h!57043 (toList!4651 lm!1477)))) key!3287) e!2868575)))

(declare-fun b!4598921 () Bool)

(declare-fun e!2868576 () Bool)

(assert (=> b!4598921 (= e!2868575 e!2868576)))

(declare-fun res!1923587 () Bool)

(assert (=> b!4598921 (=> (not res!1923587) (not e!2868576))))

(assert (=> b!4598921 (= res!1923587 ((_ is Cons!51078) (t!358196 (_2!29156 (h!57043 (toList!4651 lm!1477))))))))

(declare-fun b!4598922 () Bool)

(assert (=> b!4598922 (= e!2868576 (containsKey!2154 (t!358196 (t!358196 (_2!29156 (h!57043 (toList!4651 lm!1477))))) key!3287))))

(assert (= (and d!1448059 (not res!1923586)) b!4598921))

(assert (= (and b!4598921 res!1923587) b!4598922))

(declare-fun m!5425579 () Bool)

(assert (=> b!4598922 m!5425579))

(assert (=> b!4598058 d!1448059))

(assert (=> d!1447577 d!1447791))

(assert (=> d!1447569 d!1447795))

(declare-fun lt!1758561 () Bool)

(declare-fun d!1448061 () Bool)

(assert (=> d!1448061 (= lt!1758561 (select (content!8646 (toList!4651 lm!1477)) (tuple2!51725 hash!344 lt!1757702)))))

(declare-fun e!2868578 () Bool)

(assert (=> d!1448061 (= lt!1758561 e!2868578)))

(declare-fun res!1923588 () Bool)

(assert (=> d!1448061 (=> (not res!1923588) (not e!2868578))))

(assert (=> d!1448061 (= res!1923588 ((_ is Cons!51079) (toList!4651 lm!1477)))))

(assert (=> d!1448061 (= (contains!14026 (toList!4651 lm!1477) (tuple2!51725 hash!344 lt!1757702)) lt!1758561)))

(declare-fun b!4598923 () Bool)

(declare-fun e!2868577 () Bool)

(assert (=> b!4598923 (= e!2868578 e!2868577)))

(declare-fun res!1923589 () Bool)

(assert (=> b!4598923 (=> res!1923589 e!2868577)))

(assert (=> b!4598923 (= res!1923589 (= (h!57043 (toList!4651 lm!1477)) (tuple2!51725 hash!344 lt!1757702)))))

(declare-fun b!4598924 () Bool)

(assert (=> b!4598924 (= e!2868577 (contains!14026 (t!358197 (toList!4651 lm!1477)) (tuple2!51725 hash!344 lt!1757702)))))

(assert (= (and d!1448061 res!1923588) b!4598923))

(assert (= (and b!4598923 (not res!1923589)) b!4598924))

(assert (=> d!1448061 m!5423691))

(declare-fun m!5425581 () Bool)

(assert (=> d!1448061 m!5425581))

(declare-fun m!5425583 () Bool)

(assert (=> b!4598924 m!5425583))

(assert (=> d!1447465 d!1448061))

(declare-fun d!1448063 () Bool)

(assert (=> d!1448063 (contains!14026 (toList!4651 lm!1477) (tuple2!51725 hash!344 lt!1757702))))

(assert (=> d!1448063 true))

(declare-fun _$14!1476 () Unit!108077)

(assert (=> d!1448063 (= (choose!30806 (toList!4651 lm!1477) hash!344 lt!1757702) _$14!1476)))

(declare-fun bs!1011372 () Bool)

(assert (= bs!1011372 d!1448063))

(assert (=> bs!1011372 m!5423655))

(assert (=> d!1447465 d!1448063))

(assert (=> d!1447465 d!1448015))

(declare-fun d!1448065 () Bool)

(declare-fun e!2868580 () Bool)

(assert (=> d!1448065 e!2868580))

(declare-fun res!1923590 () Bool)

(assert (=> d!1448065 (=> res!1923590 e!2868580)))

(declare-fun lt!1758562 () Bool)

(assert (=> d!1448065 (= res!1923590 (not lt!1758562))))

(declare-fun lt!1758564 () Bool)

(assert (=> d!1448065 (= lt!1758562 lt!1758564)))

(declare-fun lt!1758563 () Unit!108077)

(declare-fun e!2868579 () Unit!108077)

(assert (=> d!1448065 (= lt!1758563 e!2868579)))

(declare-fun c!787743 () Bool)

(assert (=> d!1448065 (= c!787743 lt!1758564)))

(assert (=> d!1448065 (= lt!1758564 (containsKey!2157 (toList!4651 lt!1757915) (_1!29156 lt!1757696)))))

(assert (=> d!1448065 (= (contains!14025 lt!1757915 (_1!29156 lt!1757696)) lt!1758562)))

(declare-fun b!4598925 () Bool)

(declare-fun lt!1758565 () Unit!108077)

(assert (=> b!4598925 (= e!2868579 lt!1758565)))

(assert (=> b!4598925 (= lt!1758565 (lemmaContainsKeyImpliesGetValueByKeyDefined!1214 (toList!4651 lt!1757915) (_1!29156 lt!1757696)))))

(assert (=> b!4598925 (isDefined!8658 (getValueByKey!1310 (toList!4651 lt!1757915) (_1!29156 lt!1757696)))))

(declare-fun b!4598926 () Bool)

(declare-fun Unit!108262 () Unit!108077)

(assert (=> b!4598926 (= e!2868579 Unit!108262)))

(declare-fun b!4598927 () Bool)

(assert (=> b!4598927 (= e!2868580 (isDefined!8658 (getValueByKey!1310 (toList!4651 lt!1757915) (_1!29156 lt!1757696))))))

(assert (= (and d!1448065 c!787743) b!4598925))

(assert (= (and d!1448065 (not c!787743)) b!4598926))

(assert (= (and d!1448065 (not res!1923590)) b!4598927))

(declare-fun m!5425585 () Bool)

(assert (=> d!1448065 m!5425585))

(declare-fun m!5425587 () Bool)

(assert (=> b!4598925 m!5425587))

(assert (=> b!4598925 m!5424013))

(assert (=> b!4598925 m!5424013))

(declare-fun m!5425589 () Bool)

(assert (=> b!4598925 m!5425589))

(assert (=> b!4598927 m!5424013))

(assert (=> b!4598927 m!5424013))

(assert (=> b!4598927 m!5425589))

(assert (=> d!1447573 d!1448065))

(declare-fun b!4598931 () Bool)

(declare-fun e!2868582 () Option!11390)

(assert (=> b!4598931 (= e!2868582 None!11389)))

(declare-fun b!4598930 () Bool)

(assert (=> b!4598930 (= e!2868582 (getValueByKey!1310 (t!358197 lt!1757912) (_1!29156 lt!1757696)))))

(declare-fun b!4598928 () Bool)

(declare-fun e!2868581 () Option!11390)

(assert (=> b!4598928 (= e!2868581 (Some!11389 (_2!29156 (h!57043 lt!1757912))))))

(declare-fun d!1448067 () Bool)

(declare-fun c!787744 () Bool)

(assert (=> d!1448067 (= c!787744 (and ((_ is Cons!51079) lt!1757912) (= (_1!29156 (h!57043 lt!1757912)) (_1!29156 lt!1757696))))))

(assert (=> d!1448067 (= (getValueByKey!1310 lt!1757912 (_1!29156 lt!1757696)) e!2868581)))

(declare-fun b!4598929 () Bool)

(assert (=> b!4598929 (= e!2868581 e!2868582)))

(declare-fun c!787745 () Bool)

(assert (=> b!4598929 (= c!787745 (and ((_ is Cons!51079) lt!1757912) (not (= (_1!29156 (h!57043 lt!1757912)) (_1!29156 lt!1757696)))))))

(assert (= (and d!1448067 c!787744) b!4598928))

(assert (= (and d!1448067 (not c!787744)) b!4598929))

(assert (= (and b!4598929 c!787745) b!4598930))

(assert (= (and b!4598929 (not c!787745)) b!4598931))

(declare-fun m!5425591 () Bool)

(assert (=> b!4598930 m!5425591))

(assert (=> d!1447573 d!1448067))

(declare-fun d!1448069 () Bool)

(assert (=> d!1448069 (= (getValueByKey!1310 lt!1757912 (_1!29156 lt!1757696)) (Some!11389 (_2!29156 lt!1757696)))))

(declare-fun lt!1758566 () Unit!108077)

(assert (=> d!1448069 (= lt!1758566 (choose!30822 lt!1757912 (_1!29156 lt!1757696) (_2!29156 lt!1757696)))))

(declare-fun e!2868583 () Bool)

(assert (=> d!1448069 e!2868583))

(declare-fun res!1923591 () Bool)

(assert (=> d!1448069 (=> (not res!1923591) (not e!2868583))))

(assert (=> d!1448069 (= res!1923591 (isStrictlySorted!540 lt!1757912))))

(assert (=> d!1448069 (= (lemmaContainsTupThenGetReturnValue!796 lt!1757912 (_1!29156 lt!1757696) (_2!29156 lt!1757696)) lt!1758566)))

(declare-fun b!4598932 () Bool)

(declare-fun res!1923592 () Bool)

(assert (=> b!4598932 (=> (not res!1923592) (not e!2868583))))

(assert (=> b!4598932 (= res!1923592 (containsKey!2157 lt!1757912 (_1!29156 lt!1757696)))))

(declare-fun b!4598933 () Bool)

(assert (=> b!4598933 (= e!2868583 (contains!14026 lt!1757912 (tuple2!51725 (_1!29156 lt!1757696) (_2!29156 lt!1757696))))))

(assert (= (and d!1448069 res!1923591) b!4598932))

(assert (= (and b!4598932 res!1923592) b!4598933))

(assert (=> d!1448069 m!5424007))

(declare-fun m!5425593 () Bool)

(assert (=> d!1448069 m!5425593))

(declare-fun m!5425595 () Bool)

(assert (=> d!1448069 m!5425595))

(declare-fun m!5425597 () Bool)

(assert (=> b!4598932 m!5425597))

(declare-fun m!5425599 () Bool)

(assert (=> b!4598933 m!5425599))

(assert (=> d!1447573 d!1448069))

(declare-fun bm!320960 () Bool)

(declare-fun call!320965 () List!51203)

(declare-fun call!320967 () List!51203)

(assert (=> bm!320960 (= call!320965 call!320967)))

(declare-fun d!1448071 () Bool)

(declare-fun e!2868585 () Bool)

(assert (=> d!1448071 e!2868585))

(declare-fun res!1923594 () Bool)

(assert (=> d!1448071 (=> (not res!1923594) (not e!2868585))))

(declare-fun lt!1758567 () List!51203)

(assert (=> d!1448071 (= res!1923594 (isStrictlySorted!540 lt!1758567))))

(declare-fun e!2868588 () List!51203)

(assert (=> d!1448071 (= lt!1758567 e!2868588)))

(declare-fun c!787749 () Bool)

(assert (=> d!1448071 (= c!787749 (and ((_ is Cons!51079) (toList!4651 lt!1757703)) (bvslt (_1!29156 (h!57043 (toList!4651 lt!1757703))) (_1!29156 lt!1757696))))))

(assert (=> d!1448071 (isStrictlySorted!540 (toList!4651 lt!1757703))))

(assert (=> d!1448071 (= (insertStrictlySorted!488 (toList!4651 lt!1757703) (_1!29156 lt!1757696) (_2!29156 lt!1757696)) lt!1758567)))

(declare-fun b!4598934 () Bool)

(declare-fun e!2868584 () List!51203)

(assert (=> b!4598934 (= e!2868584 (insertStrictlySorted!488 (t!358197 (toList!4651 lt!1757703)) (_1!29156 lt!1757696) (_2!29156 lt!1757696)))))

(declare-fun b!4598935 () Bool)

(assert (=> b!4598935 (= e!2868588 call!320967)))

(declare-fun b!4598936 () Bool)

(declare-fun c!787748 () Bool)

(assert (=> b!4598936 (= c!787748 (and ((_ is Cons!51079) (toList!4651 lt!1757703)) (bvsgt (_1!29156 (h!57043 (toList!4651 lt!1757703))) (_1!29156 lt!1757696))))))

(declare-fun e!2868586 () List!51203)

(declare-fun e!2868587 () List!51203)

(assert (=> b!4598936 (= e!2868586 e!2868587)))

(declare-fun b!4598937 () Bool)

(declare-fun call!320966 () List!51203)

(assert (=> b!4598937 (= e!2868587 call!320966)))

(declare-fun b!4598938 () Bool)

(assert (=> b!4598938 (= e!2868588 e!2868586)))

(declare-fun c!787747 () Bool)

(assert (=> b!4598938 (= c!787747 (and ((_ is Cons!51079) (toList!4651 lt!1757703)) (= (_1!29156 (h!57043 (toList!4651 lt!1757703))) (_1!29156 lt!1757696))))))

(declare-fun bm!320961 () Bool)

(assert (=> bm!320961 (= call!320966 call!320965)))

(declare-fun b!4598939 () Bool)

(declare-fun res!1923593 () Bool)

(assert (=> b!4598939 (=> (not res!1923593) (not e!2868585))))

(assert (=> b!4598939 (= res!1923593 (containsKey!2157 lt!1758567 (_1!29156 lt!1757696)))))

(declare-fun b!4598940 () Bool)

(assert (=> b!4598940 (= e!2868586 call!320965)))

(declare-fun bm!320962 () Bool)

(assert (=> bm!320962 (= call!320967 ($colon$colon!1042 e!2868584 (ite c!787749 (h!57043 (toList!4651 lt!1757703)) (tuple2!51725 (_1!29156 lt!1757696) (_2!29156 lt!1757696)))))))

(declare-fun c!787746 () Bool)

(assert (=> bm!320962 (= c!787746 c!787749)))

(declare-fun b!4598941 () Bool)

(assert (=> b!4598941 (= e!2868585 (contains!14026 lt!1758567 (tuple2!51725 (_1!29156 lt!1757696) (_2!29156 lt!1757696))))))

(declare-fun b!4598942 () Bool)

(assert (=> b!4598942 (= e!2868584 (ite c!787747 (t!358197 (toList!4651 lt!1757703)) (ite c!787748 (Cons!51079 (h!57043 (toList!4651 lt!1757703)) (t!358197 (toList!4651 lt!1757703))) Nil!51079)))))

(declare-fun b!4598943 () Bool)

(assert (=> b!4598943 (= e!2868587 call!320966)))

(assert (= (and d!1448071 c!787749) b!4598935))

(assert (= (and d!1448071 (not c!787749)) b!4598938))

(assert (= (and b!4598938 c!787747) b!4598940))

(assert (= (and b!4598938 (not c!787747)) b!4598936))

(assert (= (and b!4598936 c!787748) b!4598937))

(assert (= (and b!4598936 (not c!787748)) b!4598943))

(assert (= (or b!4598937 b!4598943) bm!320961))

(assert (= (or b!4598940 bm!320961) bm!320960))

(assert (= (or b!4598935 bm!320960) bm!320962))

(assert (= (and bm!320962 c!787746) b!4598934))

(assert (= (and bm!320962 (not c!787746)) b!4598942))

(assert (= (and d!1448071 res!1923594) b!4598939))

(assert (= (and b!4598939 res!1923593) b!4598941))

(declare-fun m!5425601 () Bool)

(assert (=> b!4598941 m!5425601))

(declare-fun m!5425603 () Bool)

(assert (=> b!4598939 m!5425603))

(declare-fun m!5425605 () Bool)

(assert (=> bm!320962 m!5425605))

(declare-fun m!5425607 () Bool)

(assert (=> d!1448071 m!5425607))

(assert (=> d!1448071 m!5425209))

(declare-fun m!5425609 () Bool)

(assert (=> b!4598934 m!5425609))

(assert (=> d!1447573 d!1448071))

(declare-fun d!1448073 () Bool)

(assert (=> d!1448073 (dynLambda!21396 lambda!186082 lt!1757699)))

(assert (=> d!1448073 true))

(declare-fun _$7!2135 () Unit!108077)

(assert (=> d!1448073 (= (choose!30807 (toList!4651 lm!1477) lambda!186082 lt!1757699) _$7!2135)))

(declare-fun b_lambda!169405 () Bool)

(assert (=> (not b_lambda!169405) (not d!1448073)))

(declare-fun bs!1011373 () Bool)

(assert (= bs!1011373 d!1448073))

(assert (=> bs!1011373 m!5423681))

(assert (=> d!1447473 d!1448073))

(assert (=> d!1447473 d!1447561))

(declare-fun bs!1011374 () Bool)

(declare-fun b!4598945 () Bool)

(assert (= bs!1011374 (and b!4598945 d!1447999)))

(declare-fun lambda!186308 () Int)

(assert (=> bs!1011374 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) lt!1758516) (= lambda!186308 lambda!186292))))

(declare-fun bs!1011375 () Bool)

(assert (= bs!1011375 (and b!4598945 b!4598725)))

(assert (=> bs!1011375 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) lt!1758457) (= lambda!186308 lambda!186281))))

(declare-fun bs!1011376 () Bool)

(assert (= bs!1011376 (and b!4598945 b!4598804)))

(assert (=> bs!1011376 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) lt!1758522) (= lambda!186308 lambda!186291))))

(declare-fun bs!1011377 () Bool)

(assert (= bs!1011377 (and b!4598945 b!4598803)))

(assert (=> bs!1011377 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186308 lambda!186289))))

(declare-fun bs!1011378 () Bool)

(assert (= bs!1011378 (and b!4598945 b!4598603)))

(assert (=> bs!1011378 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186308 lambda!186274))))

(declare-fun bs!1011379 () Bool)

(assert (= bs!1011379 (and b!4598945 b!4598766)))

(assert (=> bs!1011379 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) lt!1758489) (= lambda!186308 lambda!186286))))

(declare-fun bs!1011380 () Bool)

(assert (= bs!1011380 (and b!4598945 d!1447805)))

(assert (=> bs!1011380 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) lt!1758359) (= lambda!186308 lambda!186277))))

(assert (=> bs!1011379 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186308 lambda!186285))))

(declare-fun bs!1011381 () Bool)

(assert (= bs!1011381 (and b!4598945 b!4598604)))

(assert (=> bs!1011381 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186308 lambda!186275))))

(declare-fun bs!1011382 () Bool)

(assert (= bs!1011382 (and b!4598945 d!1447953)))

(assert (=> bs!1011382 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) lt!1758483) (= lambda!186308 lambda!186287))))

(assert (=> bs!1011381 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) lt!1758365) (= lambda!186308 lambda!186276))))

(declare-fun bs!1011383 () Bool)

(assert (= bs!1011383 (and b!4598945 b!4598765)))

(assert (=> bs!1011383 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186308 lambda!186284))))

(declare-fun bs!1011384 () Bool)

(assert (= bs!1011384 (and b!4598945 d!1447915)))

(assert (=> bs!1011384 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) lt!1758451) (= lambda!186308 lambda!186282))))

(assert (=> bs!1011376 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186308 lambda!186290))))

(declare-fun bs!1011385 () Bool)

(assert (= bs!1011385 (and b!4598945 d!1447491)))

(assert (=> bs!1011385 (not (= lambda!186308 lambda!186099))))

(declare-fun bs!1011386 () Bool)

(assert (= bs!1011386 (and b!4598945 b!4598724)))

(assert (=> bs!1011386 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186308 lambda!186279))))

(assert (=> bs!1011375 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186308 lambda!186280))))

(assert (=> b!4598945 true))

(declare-fun bs!1011387 () Bool)

(declare-fun b!4598946 () Bool)

(assert (= bs!1011387 (and b!4598946 d!1447999)))

(declare-fun lambda!186309 () Int)

(assert (=> bs!1011387 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) lt!1758516) (= lambda!186309 lambda!186292))))

(declare-fun bs!1011388 () Bool)

(assert (= bs!1011388 (and b!4598946 b!4598725)))

(assert (=> bs!1011388 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) lt!1758457) (= lambda!186309 lambda!186281))))

(declare-fun bs!1011389 () Bool)

(assert (= bs!1011389 (and b!4598946 b!4598804)))

(assert (=> bs!1011389 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) lt!1758522) (= lambda!186309 lambda!186291))))

(declare-fun bs!1011390 () Bool)

(assert (= bs!1011390 (and b!4598946 b!4598803)))

(assert (=> bs!1011390 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186309 lambda!186289))))

(declare-fun bs!1011391 () Bool)

(assert (= bs!1011391 (and b!4598946 b!4598603)))

(assert (=> bs!1011391 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186309 lambda!186274))))

(declare-fun bs!1011392 () Bool)

(assert (= bs!1011392 (and b!4598946 b!4598766)))

(assert (=> bs!1011392 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) lt!1758489) (= lambda!186309 lambda!186286))))

(declare-fun bs!1011393 () Bool)

(assert (= bs!1011393 (and b!4598946 b!4598945)))

(assert (=> bs!1011393 (= lambda!186309 lambda!186308)))

(declare-fun bs!1011394 () Bool)

(assert (= bs!1011394 (and b!4598946 d!1447805)))

(assert (=> bs!1011394 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) lt!1758359) (= lambda!186309 lambda!186277))))

(assert (=> bs!1011392 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186309 lambda!186285))))

(declare-fun bs!1011395 () Bool)

(assert (= bs!1011395 (and b!4598946 b!4598604)))

(assert (=> bs!1011395 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186309 lambda!186275))))

(declare-fun bs!1011396 () Bool)

(assert (= bs!1011396 (and b!4598946 d!1447953)))

(assert (=> bs!1011396 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) lt!1758483) (= lambda!186309 lambda!186287))))

(assert (=> bs!1011395 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) lt!1758365) (= lambda!186309 lambda!186276))))

(declare-fun bs!1011397 () Bool)

(assert (= bs!1011397 (and b!4598946 b!4598765)))

(assert (=> bs!1011397 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186309 lambda!186284))))

(declare-fun bs!1011398 () Bool)

(assert (= bs!1011398 (and b!4598946 d!1447915)))

(assert (=> bs!1011398 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) lt!1758451) (= lambda!186309 lambda!186282))))

(assert (=> bs!1011389 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186309 lambda!186290))))

(declare-fun bs!1011399 () Bool)

(assert (= bs!1011399 (and b!4598946 d!1447491)))

(assert (=> bs!1011399 (not (= lambda!186309 lambda!186099))))

(declare-fun bs!1011400 () Bool)

(assert (= bs!1011400 (and b!4598946 b!4598724)))

(assert (=> bs!1011400 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186309 lambda!186279))))

(assert (=> bs!1011388 (= (= (extractMap!1378 (t!358197 (toList!4651 lm!1477))) (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186309 lambda!186280))))

(assert (=> b!4598946 true))

(declare-fun lt!1758588 () ListMap!3913)

(declare-fun lambda!186310 () Int)

(assert (=> bs!1011387 (= (= lt!1758588 lt!1758516) (= lambda!186310 lambda!186292))))

(assert (=> bs!1011388 (= (= lt!1758588 lt!1758457) (= lambda!186310 lambda!186281))))

(assert (=> bs!1011389 (= (= lt!1758588 lt!1758522) (= lambda!186310 lambda!186291))))

(assert (=> bs!1011390 (= (= lt!1758588 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186310 lambda!186289))))

(assert (=> bs!1011391 (= (= lt!1758588 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186310 lambda!186274))))

(assert (=> bs!1011392 (= (= lt!1758588 lt!1758489) (= lambda!186310 lambda!186286))))

(assert (=> bs!1011393 (= (= lt!1758588 (extractMap!1378 (t!358197 (toList!4651 lm!1477)))) (= lambda!186310 lambda!186308))))

(assert (=> b!4598946 (= (= lt!1758588 (extractMap!1378 (t!358197 (toList!4651 lm!1477)))) (= lambda!186310 lambda!186309))))

(assert (=> bs!1011394 (= (= lt!1758588 lt!1758359) (= lambda!186310 lambda!186277))))

(assert (=> bs!1011392 (= (= lt!1758588 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186310 lambda!186285))))

(assert (=> bs!1011395 (= (= lt!1758588 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186310 lambda!186275))))

(assert (=> bs!1011396 (= (= lt!1758588 lt!1758483) (= lambda!186310 lambda!186287))))

(assert (=> bs!1011395 (= (= lt!1758588 lt!1758365) (= lambda!186310 lambda!186276))))

(assert (=> bs!1011397 (= (= lt!1758588 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186310 lambda!186284))))

(assert (=> bs!1011398 (= (= lt!1758588 lt!1758451) (= lambda!186310 lambda!186282))))

(assert (=> bs!1011389 (= (= lt!1758588 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186310 lambda!186290))))

(assert (=> bs!1011399 (not (= lambda!186310 lambda!186099))))

(assert (=> bs!1011400 (= (= lt!1758588 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186310 lambda!186279))))

(assert (=> bs!1011388 (= (= lt!1758588 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186310 lambda!186280))))

(assert (=> b!4598946 true))

(declare-fun bs!1011401 () Bool)

(declare-fun d!1448075 () Bool)

(assert (= bs!1011401 (and d!1448075 d!1447999)))

(declare-fun lambda!186311 () Int)

(declare-fun lt!1758582 () ListMap!3913)

(assert (=> bs!1011401 (= (= lt!1758582 lt!1758516) (= lambda!186311 lambda!186292))))

(declare-fun bs!1011402 () Bool)

(assert (= bs!1011402 (and d!1448075 b!4598725)))

(assert (=> bs!1011402 (= (= lt!1758582 lt!1758457) (= lambda!186311 lambda!186281))))

(declare-fun bs!1011403 () Bool)

(assert (= bs!1011403 (and d!1448075 b!4598804)))

(assert (=> bs!1011403 (= (= lt!1758582 lt!1758522) (= lambda!186311 lambda!186291))))

(declare-fun bs!1011404 () Bool)

(assert (= bs!1011404 (and d!1448075 b!4598803)))

(assert (=> bs!1011404 (= (= lt!1758582 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186311 lambda!186289))))

(declare-fun bs!1011405 () Bool)

(assert (= bs!1011405 (and d!1448075 b!4598603)))

(assert (=> bs!1011405 (= (= lt!1758582 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186311 lambda!186274))))

(declare-fun bs!1011406 () Bool)

(assert (= bs!1011406 (and d!1448075 b!4598766)))

(assert (=> bs!1011406 (= (= lt!1758582 lt!1758489) (= lambda!186311 lambda!186286))))

(declare-fun bs!1011407 () Bool)

(assert (= bs!1011407 (and d!1448075 b!4598945)))

(assert (=> bs!1011407 (= (= lt!1758582 (extractMap!1378 (t!358197 (toList!4651 lm!1477)))) (= lambda!186311 lambda!186308))))

(declare-fun bs!1011408 () Bool)

(assert (= bs!1011408 (and d!1448075 b!4598946)))

(assert (=> bs!1011408 (= (= lt!1758582 (extractMap!1378 (t!358197 (toList!4651 lm!1477)))) (= lambda!186311 lambda!186309))))

(declare-fun bs!1011409 () Bool)

(assert (= bs!1011409 (and d!1448075 d!1447805)))

(assert (=> bs!1011409 (= (= lt!1758582 lt!1758359) (= lambda!186311 lambda!186277))))

(assert (=> bs!1011406 (= (= lt!1758582 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186311 lambda!186285))))

(declare-fun bs!1011410 () Bool)

(assert (= bs!1011410 (and d!1448075 b!4598604)))

(assert (=> bs!1011410 (= (= lt!1758582 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186311 lambda!186275))))

(assert (=> bs!1011408 (= (= lt!1758582 lt!1758588) (= lambda!186311 lambda!186310))))

(declare-fun bs!1011411 () Bool)

(assert (= bs!1011411 (and d!1448075 d!1447953)))

(assert (=> bs!1011411 (= (= lt!1758582 lt!1758483) (= lambda!186311 lambda!186287))))

(assert (=> bs!1011410 (= (= lt!1758582 lt!1758365) (= lambda!186311 lambda!186276))))

(declare-fun bs!1011412 () Bool)

(assert (= bs!1011412 (and d!1448075 b!4598765)))

(assert (=> bs!1011412 (= (= lt!1758582 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186311 lambda!186284))))

(declare-fun bs!1011413 () Bool)

(assert (= bs!1011413 (and d!1448075 d!1447915)))

(assert (=> bs!1011413 (= (= lt!1758582 lt!1758451) (= lambda!186311 lambda!186282))))

(assert (=> bs!1011403 (= (= lt!1758582 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186311 lambda!186290))))

(declare-fun bs!1011414 () Bool)

(assert (= bs!1011414 (and d!1448075 d!1447491)))

(assert (=> bs!1011414 (not (= lambda!186311 lambda!186099))))

(declare-fun bs!1011415 () Bool)

(assert (= bs!1011415 (and d!1448075 b!4598724)))

(assert (=> bs!1011415 (= (= lt!1758582 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186311 lambda!186279))))

(assert (=> bs!1011402 (= (= lt!1758582 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186311 lambda!186280))))

(assert (=> d!1448075 true))

(declare-fun b!4598944 () Bool)

(declare-fun e!2868589 () Bool)

(assert (=> b!4598944 (= e!2868589 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (toList!4651 lm!1477)))) lambda!186310))))

(declare-fun e!2868591 () ListMap!3913)

(assert (=> b!4598945 (= e!2868591 (extractMap!1378 (t!358197 (toList!4651 lm!1477))))))

(declare-fun lt!1758584 () Unit!108077)

(declare-fun call!320968 () Unit!108077)

(assert (=> b!4598945 (= lt!1758584 call!320968)))

(declare-fun call!320969 () Bool)

(assert (=> b!4598945 call!320969))

(declare-fun lt!1758571 () Unit!108077)

(assert (=> b!4598945 (= lt!1758571 lt!1758584)))

(declare-fun call!320970 () Bool)

(assert (=> b!4598945 call!320970))

(declare-fun lt!1758586 () Unit!108077)

(declare-fun Unit!108263 () Unit!108077)

(assert (=> b!4598945 (= lt!1758586 Unit!108263)))

(declare-fun e!2868590 () Bool)

(assert (=> d!1448075 e!2868590))

(declare-fun res!1923595 () Bool)

(assert (=> d!1448075 (=> (not res!1923595) (not e!2868590))))

(assert (=> d!1448075 (= res!1923595 (forall!10600 (_2!29156 (h!57043 (toList!4651 lm!1477))) lambda!186311))))

(assert (=> d!1448075 (= lt!1758582 e!2868591)))

(declare-fun c!787750 () Bool)

(assert (=> d!1448075 (= c!787750 ((_ is Nil!51078) (_2!29156 (h!57043 (toList!4651 lm!1477)))))))

(assert (=> d!1448075 (noDuplicateKeys!1318 (_2!29156 (h!57043 (toList!4651 lm!1477))))))

(assert (=> d!1448075 (= (addToMapMapFromBucket!814 (_2!29156 (h!57043 (toList!4651 lm!1477))) (extractMap!1378 (t!358197 (toList!4651 lm!1477)))) lt!1758582)))

(assert (=> b!4598946 (= e!2868591 lt!1758588)))

(declare-fun lt!1758585 () ListMap!3913)

(assert (=> b!4598946 (= lt!1758585 (+!1746 (extractMap!1378 (t!358197 (toList!4651 lm!1477))) (h!57042 (_2!29156 (h!57043 (toList!4651 lm!1477))))))))

(assert (=> b!4598946 (= lt!1758588 (addToMapMapFromBucket!814 (t!358196 (_2!29156 (h!57043 (toList!4651 lm!1477)))) (+!1746 (extractMap!1378 (t!358197 (toList!4651 lm!1477))) (h!57042 (_2!29156 (h!57043 (toList!4651 lm!1477)))))))))

(declare-fun lt!1758581 () Unit!108077)

(assert (=> b!4598946 (= lt!1758581 call!320968)))

(assert (=> b!4598946 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (toList!4651 lm!1477)))) lambda!186309)))

(declare-fun lt!1758579 () Unit!108077)

(assert (=> b!4598946 (= lt!1758579 lt!1758581)))

(assert (=> b!4598946 (forall!10600 (toList!4652 lt!1758585) lambda!186310)))

(declare-fun lt!1758587 () Unit!108077)

(declare-fun Unit!108264 () Unit!108077)

(assert (=> b!4598946 (= lt!1758587 Unit!108264)))

(assert (=> b!4598946 (forall!10600 (t!358196 (_2!29156 (h!57043 (toList!4651 lm!1477)))) lambda!186310)))

(declare-fun lt!1758570 () Unit!108077)

(declare-fun Unit!108265 () Unit!108077)

(assert (=> b!4598946 (= lt!1758570 Unit!108265)))

(declare-fun lt!1758583 () Unit!108077)

(declare-fun Unit!108266 () Unit!108077)

(assert (=> b!4598946 (= lt!1758583 Unit!108266)))

(declare-fun lt!1758575 () Unit!108077)

(assert (=> b!4598946 (= lt!1758575 (forallContained!2855 (toList!4652 lt!1758585) lambda!186310 (h!57042 (_2!29156 (h!57043 (toList!4651 lm!1477))))))))

(assert (=> b!4598946 (contains!14027 lt!1758585 (_1!29155 (h!57042 (_2!29156 (h!57043 (toList!4651 lm!1477))))))))

(declare-fun lt!1758577 () Unit!108077)

(declare-fun Unit!108267 () Unit!108077)

(assert (=> b!4598946 (= lt!1758577 Unit!108267)))

(assert (=> b!4598946 (contains!14027 lt!1758588 (_1!29155 (h!57042 (_2!29156 (h!57043 (toList!4651 lm!1477))))))))

(declare-fun lt!1758574 () Unit!108077)

(declare-fun Unit!108268 () Unit!108077)

(assert (=> b!4598946 (= lt!1758574 Unit!108268)))

(assert (=> b!4598946 (forall!10600 (_2!29156 (h!57043 (toList!4651 lm!1477))) lambda!186310)))

(declare-fun lt!1758569 () Unit!108077)

(declare-fun Unit!108269 () Unit!108077)

(assert (=> b!4598946 (= lt!1758569 Unit!108269)))

(assert (=> b!4598946 (forall!10600 (toList!4652 lt!1758585) lambda!186310)))

(declare-fun lt!1758578 () Unit!108077)

(declare-fun Unit!108270 () Unit!108077)

(assert (=> b!4598946 (= lt!1758578 Unit!108270)))

(declare-fun lt!1758580 () Unit!108077)

(declare-fun Unit!108271 () Unit!108077)

(assert (=> b!4598946 (= lt!1758580 Unit!108271)))

(declare-fun lt!1758573 () Unit!108077)

(assert (=> b!4598946 (= lt!1758573 (addForallContainsKeyThenBeforeAdding!436 (extractMap!1378 (t!358197 (toList!4651 lm!1477))) lt!1758588 (_1!29155 (h!57042 (_2!29156 (h!57043 (toList!4651 lm!1477))))) (_2!29155 (h!57042 (_2!29156 (h!57043 (toList!4651 lm!1477)))))))))

(assert (=> b!4598946 call!320969))

(declare-fun lt!1758568 () Unit!108077)

(assert (=> b!4598946 (= lt!1758568 lt!1758573)))

(assert (=> b!4598946 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (toList!4651 lm!1477)))) lambda!186310)))

(declare-fun lt!1758572 () Unit!108077)

(declare-fun Unit!108272 () Unit!108077)

(assert (=> b!4598946 (= lt!1758572 Unit!108272)))

(declare-fun res!1923597 () Bool)

(assert (=> b!4598946 (= res!1923597 call!320970)))

(assert (=> b!4598946 (=> (not res!1923597) (not e!2868589))))

(assert (=> b!4598946 e!2868589))

(declare-fun lt!1758576 () Unit!108077)

(declare-fun Unit!108273 () Unit!108077)

(assert (=> b!4598946 (= lt!1758576 Unit!108273)))

(declare-fun b!4598947 () Bool)

(declare-fun res!1923596 () Bool)

(assert (=> b!4598947 (=> (not res!1923596) (not e!2868590))))

(assert (=> b!4598947 (= res!1923596 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (toList!4651 lm!1477)))) lambda!186311))))

(declare-fun bm!320963 () Bool)

(assert (=> bm!320963 (= call!320969 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (toList!4651 lm!1477)))) (ite c!787750 lambda!186308 lambda!186310)))))

(declare-fun bm!320964 () Bool)

(assert (=> bm!320964 (= call!320968 (lemmaContainsAllItsOwnKeys!436 (extractMap!1378 (t!358197 (toList!4651 lm!1477)))))))

(declare-fun b!4598948 () Bool)

(assert (=> b!4598948 (= e!2868590 (invariantList!1124 (toList!4652 lt!1758582)))))

(declare-fun bm!320965 () Bool)

(assert (=> bm!320965 (= call!320970 (forall!10600 (ite c!787750 (toList!4652 (extractMap!1378 (t!358197 (toList!4651 lm!1477)))) (_2!29156 (h!57043 (toList!4651 lm!1477)))) (ite c!787750 lambda!186308 lambda!186310)))))

(assert (= (and d!1448075 c!787750) b!4598945))

(assert (= (and d!1448075 (not c!787750)) b!4598946))

(assert (= (and b!4598946 res!1923597) b!4598944))

(assert (= (or b!4598945 b!4598946) bm!320963))

(assert (= (or b!4598945 b!4598946) bm!320965))

(assert (= (or b!4598945 b!4598946) bm!320964))

(assert (= (and d!1448075 res!1923595) b!4598947))

(assert (= (and b!4598947 res!1923596) b!4598948))

(declare-fun m!5425611 () Bool)

(assert (=> b!4598946 m!5425611))

(declare-fun m!5425613 () Bool)

(assert (=> b!4598946 m!5425613))

(assert (=> b!4598946 m!5423535))

(declare-fun m!5425615 () Bool)

(assert (=> b!4598946 m!5425615))

(assert (=> b!4598946 m!5425611))

(declare-fun m!5425617 () Bool)

(assert (=> b!4598946 m!5425617))

(assert (=> b!4598946 m!5423535))

(declare-fun m!5425619 () Bool)

(assert (=> b!4598946 m!5425619))

(declare-fun m!5425621 () Bool)

(assert (=> b!4598946 m!5425621))

(declare-fun m!5425623 () Bool)

(assert (=> b!4598946 m!5425623))

(assert (=> b!4598946 m!5425619))

(declare-fun m!5425625 () Bool)

(assert (=> b!4598946 m!5425625))

(declare-fun m!5425627 () Bool)

(assert (=> b!4598946 m!5425627))

(declare-fun m!5425629 () Bool)

(assert (=> b!4598946 m!5425629))

(declare-fun m!5425631 () Bool)

(assert (=> b!4598946 m!5425631))

(declare-fun m!5425633 () Bool)

(assert (=> b!4598948 m!5425633))

(declare-fun m!5425635 () Bool)

(assert (=> bm!320963 m!5425635))

(declare-fun m!5425637 () Bool)

(assert (=> d!1448075 m!5425637))

(assert (=> d!1448075 m!5423931))

(assert (=> b!4598944 m!5425627))

(assert (=> bm!320964 m!5423535))

(declare-fun m!5425639 () Bool)

(assert (=> bm!320964 m!5425639))

(declare-fun m!5425641 () Bool)

(assert (=> bm!320965 m!5425641))

(declare-fun m!5425643 () Bool)

(assert (=> b!4598947 m!5425643))

(assert (=> b!4598036 d!1448075))

(assert (=> b!4598036 d!1447579))

(declare-fun d!1448077 () Bool)

(assert (=> d!1448077 (= (tail!7945 (toList!4651 lm!1477)) (t!358197 (toList!4651 lm!1477)))))

(assert (=> d!1447575 d!1448077))

(assert (=> b!4597993 d!1447909))

(declare-fun d!1448079 () Bool)

(assert (=> d!1448079 (containsKey!2158 (toList!4652 (extractMap!1378 lt!1757705)) key!3287)))

(declare-fun lt!1758589 () Unit!108077)

(assert (=> d!1448079 (= lt!1758589 (choose!30817 (toList!4652 (extractMap!1378 lt!1757705)) key!3287))))

(assert (=> d!1448079 (invariantList!1124 (toList!4652 (extractMap!1378 lt!1757705)))))

(assert (=> d!1448079 (= (lemmaInGetKeysListThenContainsKey!572 (toList!4652 (extractMap!1378 lt!1757705)) key!3287) lt!1758589)))

(declare-fun bs!1011416 () Bool)

(assert (= bs!1011416 d!1448079))

(assert (=> bs!1011416 m!5423893))

(declare-fun m!5425645 () Bool)

(assert (=> bs!1011416 m!5425645))

(assert (=> bs!1011416 m!5424693))

(assert (=> b!4597993 d!1448079))

(declare-fun d!1448081 () Bool)

(declare-fun res!1923598 () Bool)

(declare-fun e!2868592 () Bool)

(assert (=> d!1448081 (=> res!1923598 e!2868592)))

(assert (=> d!1448081 (= res!1923598 (not ((_ is Cons!51078) (t!358196 newBucket!178))))))

(assert (=> d!1448081 (= (noDuplicateKeys!1318 (t!358196 newBucket!178)) e!2868592)))

(declare-fun b!4598949 () Bool)

(declare-fun e!2868593 () Bool)

(assert (=> b!4598949 (= e!2868592 e!2868593)))

(declare-fun res!1923599 () Bool)

(assert (=> b!4598949 (=> (not res!1923599) (not e!2868593))))

(assert (=> b!4598949 (= res!1923599 (not (containsKey!2154 (t!358196 (t!358196 newBucket!178)) (_1!29155 (h!57042 (t!358196 newBucket!178))))))))

(declare-fun b!4598950 () Bool)

(assert (=> b!4598950 (= e!2868593 (noDuplicateKeys!1318 (t!358196 (t!358196 newBucket!178))))))

(assert (= (and d!1448081 (not res!1923598)) b!4598949))

(assert (= (and b!4598949 res!1923599) b!4598950))

(declare-fun m!5425647 () Bool)

(assert (=> b!4598949 m!5425647))

(declare-fun m!5425649 () Bool)

(assert (=> b!4598950 m!5425649))

(assert (=> b!4598026 d!1448081))

(declare-fun bs!1011417 () Bool)

(declare-fun b!4598952 () Bool)

(assert (= bs!1011417 (and b!4598952 d!1447999)))

(declare-fun lambda!186312 () Int)

(assert (=> bs!1011417 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758516) (= lambda!186312 lambda!186292))))

(declare-fun bs!1011418 () Bool)

(assert (= bs!1011418 (and b!4598952 b!4598725)))

(assert (=> bs!1011418 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758457) (= lambda!186312 lambda!186281))))

(declare-fun bs!1011419 () Bool)

(assert (= bs!1011419 (and b!4598952 b!4598804)))

(assert (=> bs!1011419 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758522) (= lambda!186312 lambda!186291))))

(declare-fun bs!1011420 () Bool)

(assert (= bs!1011420 (and b!4598952 b!4598803)))

(assert (=> bs!1011420 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186312 lambda!186289))))

(declare-fun bs!1011421 () Bool)

(assert (= bs!1011421 (and b!4598952 b!4598603)))

(assert (=> bs!1011421 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186312 lambda!186274))))

(declare-fun bs!1011422 () Bool)

(assert (= bs!1011422 (and b!4598952 b!4598766)))

(assert (=> bs!1011422 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758489) (= lambda!186312 lambda!186286))))

(declare-fun bs!1011423 () Bool)

(assert (= bs!1011423 (and b!4598952 b!4598945)))

(assert (=> bs!1011423 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 (toList!4651 lm!1477)))) (= lambda!186312 lambda!186308))))

(declare-fun bs!1011424 () Bool)

(assert (= bs!1011424 (and b!4598952 b!4598946)))

(assert (=> bs!1011424 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 (toList!4651 lm!1477)))) (= lambda!186312 lambda!186309))))

(declare-fun bs!1011425 () Bool)

(assert (= bs!1011425 (and b!4598952 d!1448075)))

(assert (=> bs!1011425 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758582) (= lambda!186312 lambda!186311))))

(declare-fun bs!1011426 () Bool)

(assert (= bs!1011426 (and b!4598952 d!1447805)))

(assert (=> bs!1011426 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758359) (= lambda!186312 lambda!186277))))

(assert (=> bs!1011422 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186312 lambda!186285))))

(declare-fun bs!1011427 () Bool)

(assert (= bs!1011427 (and b!4598952 b!4598604)))

(assert (=> bs!1011427 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186312 lambda!186275))))

(assert (=> bs!1011424 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758588) (= lambda!186312 lambda!186310))))

(declare-fun bs!1011428 () Bool)

(assert (= bs!1011428 (and b!4598952 d!1447953)))

(assert (=> bs!1011428 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758483) (= lambda!186312 lambda!186287))))

(assert (=> bs!1011427 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758365) (= lambda!186312 lambda!186276))))

(declare-fun bs!1011429 () Bool)

(assert (= bs!1011429 (and b!4598952 b!4598765)))

(assert (=> bs!1011429 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186312 lambda!186284))))

(declare-fun bs!1011430 () Bool)

(assert (= bs!1011430 (and b!4598952 d!1447915)))

(assert (=> bs!1011430 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758451) (= lambda!186312 lambda!186282))))

(assert (=> bs!1011419 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186312 lambda!186290))))

(declare-fun bs!1011431 () Bool)

(assert (= bs!1011431 (and b!4598952 d!1447491)))

(assert (=> bs!1011431 (not (= lambda!186312 lambda!186099))))

(declare-fun bs!1011432 () Bool)

(assert (= bs!1011432 (and b!4598952 b!4598724)))

(assert (=> bs!1011432 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186312 lambda!186279))))

(assert (=> bs!1011418 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186312 lambda!186280))))

(assert (=> b!4598952 true))

(declare-fun bs!1011433 () Bool)

(declare-fun b!4598953 () Bool)

(assert (= bs!1011433 (and b!4598953 d!1447999)))

(declare-fun lambda!186313 () Int)

(assert (=> bs!1011433 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758516) (= lambda!186313 lambda!186292))))

(declare-fun bs!1011434 () Bool)

(assert (= bs!1011434 (and b!4598953 b!4598725)))

(assert (=> bs!1011434 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758457) (= lambda!186313 lambda!186281))))

(declare-fun bs!1011435 () Bool)

(assert (= bs!1011435 (and b!4598953 b!4598804)))

(assert (=> bs!1011435 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758522) (= lambda!186313 lambda!186291))))

(declare-fun bs!1011436 () Bool)

(assert (= bs!1011436 (and b!4598953 b!4598803)))

(assert (=> bs!1011436 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186313 lambda!186289))))

(declare-fun bs!1011437 () Bool)

(assert (= bs!1011437 (and b!4598953 b!4598952)))

(assert (=> bs!1011437 (= lambda!186313 lambda!186312)))

(declare-fun bs!1011438 () Bool)

(assert (= bs!1011438 (and b!4598953 b!4598603)))

(assert (=> bs!1011438 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186313 lambda!186274))))

(declare-fun bs!1011439 () Bool)

(assert (= bs!1011439 (and b!4598953 b!4598766)))

(assert (=> bs!1011439 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758489) (= lambda!186313 lambda!186286))))

(declare-fun bs!1011440 () Bool)

(assert (= bs!1011440 (and b!4598953 b!4598945)))

(assert (=> bs!1011440 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 (toList!4651 lm!1477)))) (= lambda!186313 lambda!186308))))

(declare-fun bs!1011441 () Bool)

(assert (= bs!1011441 (and b!4598953 b!4598946)))

(assert (=> bs!1011441 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 (toList!4651 lm!1477)))) (= lambda!186313 lambda!186309))))

(declare-fun bs!1011442 () Bool)

(assert (= bs!1011442 (and b!4598953 d!1448075)))

(assert (=> bs!1011442 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758582) (= lambda!186313 lambda!186311))))

(declare-fun bs!1011443 () Bool)

(assert (= bs!1011443 (and b!4598953 d!1447805)))

(assert (=> bs!1011443 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758359) (= lambda!186313 lambda!186277))))

(assert (=> bs!1011439 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186313 lambda!186285))))

(declare-fun bs!1011444 () Bool)

(assert (= bs!1011444 (and b!4598953 b!4598604)))

(assert (=> bs!1011444 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186313 lambda!186275))))

(assert (=> bs!1011441 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758588) (= lambda!186313 lambda!186310))))

(declare-fun bs!1011445 () Bool)

(assert (= bs!1011445 (and b!4598953 d!1447953)))

(assert (=> bs!1011445 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758483) (= lambda!186313 lambda!186287))))

(assert (=> bs!1011444 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758365) (= lambda!186313 lambda!186276))))

(declare-fun bs!1011446 () Bool)

(assert (= bs!1011446 (and b!4598953 b!4598765)))

(assert (=> bs!1011446 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186313 lambda!186284))))

(declare-fun bs!1011447 () Bool)

(assert (= bs!1011447 (and b!4598953 d!1447915)))

(assert (=> bs!1011447 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758451) (= lambda!186313 lambda!186282))))

(assert (=> bs!1011435 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186313 lambda!186290))))

(declare-fun bs!1011448 () Bool)

(assert (= bs!1011448 (and b!4598953 d!1447491)))

(assert (=> bs!1011448 (not (= lambda!186313 lambda!186099))))

(declare-fun bs!1011449 () Bool)

(assert (= bs!1011449 (and b!4598953 b!4598724)))

(assert (=> bs!1011449 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186313 lambda!186279))))

(assert (=> bs!1011434 (= (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186313 lambda!186280))))

(assert (=> b!4598953 true))

(declare-fun lambda!186314 () Int)

(declare-fun lt!1758610 () ListMap!3913)

(assert (=> bs!1011433 (= (= lt!1758610 lt!1758516) (= lambda!186314 lambda!186292))))

(assert (=> bs!1011434 (= (= lt!1758610 lt!1758457) (= lambda!186314 lambda!186281))))

(assert (=> bs!1011435 (= (= lt!1758610 lt!1758522) (= lambda!186314 lambda!186291))))

(assert (=> bs!1011437 (= (= lt!1758610 (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477))))) (= lambda!186314 lambda!186312))))

(assert (=> bs!1011438 (= (= lt!1758610 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186314 lambda!186274))))

(assert (=> bs!1011439 (= (= lt!1758610 lt!1758489) (= lambda!186314 lambda!186286))))

(assert (=> bs!1011440 (= (= lt!1758610 (extractMap!1378 (t!358197 (toList!4651 lm!1477)))) (= lambda!186314 lambda!186308))))

(assert (=> bs!1011441 (= (= lt!1758610 (extractMap!1378 (t!358197 (toList!4651 lm!1477)))) (= lambda!186314 lambda!186309))))

(assert (=> bs!1011442 (= (= lt!1758610 lt!1758582) (= lambda!186314 lambda!186311))))

(assert (=> bs!1011443 (= (= lt!1758610 lt!1758359) (= lambda!186314 lambda!186277))))

(assert (=> bs!1011439 (= (= lt!1758610 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186314 lambda!186285))))

(assert (=> bs!1011444 (= (= lt!1758610 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186314 lambda!186275))))

(assert (=> bs!1011441 (= (= lt!1758610 lt!1758588) (= lambda!186314 lambda!186310))))

(assert (=> bs!1011445 (= (= lt!1758610 lt!1758483) (= lambda!186314 lambda!186287))))

(assert (=> bs!1011444 (= (= lt!1758610 lt!1758365) (= lambda!186314 lambda!186276))))

(assert (=> bs!1011446 (= (= lt!1758610 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186314 lambda!186284))))

(assert (=> bs!1011447 (= (= lt!1758610 lt!1758451) (= lambda!186314 lambda!186282))))

(assert (=> bs!1011436 (= (= lt!1758610 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186314 lambda!186289))))

(assert (=> b!4598953 (= (= lt!1758610 (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477))))) (= lambda!186314 lambda!186313))))

(assert (=> bs!1011435 (= (= lt!1758610 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186314 lambda!186290))))

(assert (=> bs!1011448 (not (= lambda!186314 lambda!186099))))

(assert (=> bs!1011449 (= (= lt!1758610 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186314 lambda!186279))))

(assert (=> bs!1011434 (= (= lt!1758610 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186314 lambda!186280))))

(assert (=> b!4598953 true))

(declare-fun bs!1011450 () Bool)

(declare-fun d!1448083 () Bool)

(assert (= bs!1011450 (and d!1448083 d!1447999)))

(declare-fun lt!1758604 () ListMap!3913)

(declare-fun lambda!186315 () Int)

(assert (=> bs!1011450 (= (= lt!1758604 lt!1758516) (= lambda!186315 lambda!186292))))

(declare-fun bs!1011451 () Bool)

(assert (= bs!1011451 (and d!1448083 b!4598725)))

(assert (=> bs!1011451 (= (= lt!1758604 lt!1758457) (= lambda!186315 lambda!186281))))

(declare-fun bs!1011452 () Bool)

(assert (= bs!1011452 (and d!1448083 b!4598804)))

(assert (=> bs!1011452 (= (= lt!1758604 lt!1758522) (= lambda!186315 lambda!186291))))

(declare-fun bs!1011453 () Bool)

(assert (= bs!1011453 (and d!1448083 b!4598952)))

(assert (=> bs!1011453 (= (= lt!1758604 (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477))))) (= lambda!186315 lambda!186312))))

(declare-fun bs!1011454 () Bool)

(assert (= bs!1011454 (and d!1448083 b!4598766)))

(assert (=> bs!1011454 (= (= lt!1758604 lt!1758489) (= lambda!186315 lambda!186286))))

(declare-fun bs!1011455 () Bool)

(assert (= bs!1011455 (and d!1448083 b!4598945)))

(assert (=> bs!1011455 (= (= lt!1758604 (extractMap!1378 (t!358197 (toList!4651 lm!1477)))) (= lambda!186315 lambda!186308))))

(declare-fun bs!1011456 () Bool)

(assert (= bs!1011456 (and d!1448083 b!4598946)))

(assert (=> bs!1011456 (= (= lt!1758604 (extractMap!1378 (t!358197 (toList!4651 lm!1477)))) (= lambda!186315 lambda!186309))))

(declare-fun bs!1011457 () Bool)

(assert (= bs!1011457 (and d!1448083 d!1448075)))

(assert (=> bs!1011457 (= (= lt!1758604 lt!1758582) (= lambda!186315 lambda!186311))))

(declare-fun bs!1011458 () Bool)

(assert (= bs!1011458 (and d!1448083 d!1447805)))

(assert (=> bs!1011458 (= (= lt!1758604 lt!1758359) (= lambda!186315 lambda!186277))))

(assert (=> bs!1011454 (= (= lt!1758604 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186315 lambda!186285))))

(declare-fun bs!1011459 () Bool)

(assert (= bs!1011459 (and d!1448083 b!4598604)))

(assert (=> bs!1011459 (= (= lt!1758604 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186315 lambda!186275))))

(assert (=> bs!1011456 (= (= lt!1758604 lt!1758588) (= lambda!186315 lambda!186310))))

(declare-fun bs!1011460 () Bool)

(assert (= bs!1011460 (and d!1448083 d!1447953)))

(assert (=> bs!1011460 (= (= lt!1758604 lt!1758483) (= lambda!186315 lambda!186287))))

(assert (=> bs!1011459 (= (= lt!1758604 lt!1758365) (= lambda!186315 lambda!186276))))

(declare-fun bs!1011461 () Bool)

(assert (= bs!1011461 (and d!1448083 b!4598765)))

(assert (=> bs!1011461 (= (= lt!1758604 (extractMap!1378 (t!358197 (Cons!51079 lt!1757696 Nil!51079)))) (= lambda!186315 lambda!186284))))

(declare-fun bs!1011462 () Bool)

(assert (= bs!1011462 (and d!1448083 d!1447915)))

(assert (=> bs!1011462 (= (= lt!1758604 lt!1758451) (= lambda!186315 lambda!186282))))

(declare-fun bs!1011463 () Bool)

(assert (= bs!1011463 (and d!1448083 b!4598803)))

(assert (=> bs!1011463 (= (= lt!1758604 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186315 lambda!186289))))

(declare-fun bs!1011464 () Bool)

(assert (= bs!1011464 (and d!1448083 b!4598953)))

(assert (=> bs!1011464 (= (= lt!1758604 (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477))))) (= lambda!186315 lambda!186313))))

(declare-fun bs!1011465 () Bool)

(assert (= bs!1011465 (and d!1448083 b!4598603)))

(assert (=> bs!1011465 (= (= lt!1758604 (extractMap!1378 (t!358197 lt!1757705))) (= lambda!186315 lambda!186274))))

(assert (=> bs!1011464 (= (= lt!1758604 lt!1758610) (= lambda!186315 lambda!186314))))

(assert (=> bs!1011452 (= (= lt!1758604 (extractMap!1378 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))) (= lambda!186315 lambda!186290))))

(declare-fun bs!1011466 () Bool)

(assert (= bs!1011466 (and d!1448083 d!1447491)))

(assert (=> bs!1011466 (not (= lambda!186315 lambda!186099))))

(declare-fun bs!1011467 () Bool)

(assert (= bs!1011467 (and d!1448083 b!4598724)))

(assert (=> bs!1011467 (= (= lt!1758604 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186315 lambda!186279))))

(assert (=> bs!1011451 (= (= lt!1758604 (extractMap!1378 (t!358197 (toList!4651 lt!1757703)))) (= lambda!186315 lambda!186280))))

(assert (=> d!1448083 true))

(declare-fun b!4598951 () Bool)

(declare-fun e!2868594 () Bool)

(assert (=> b!4598951 (= e!2868594 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477))))) lambda!186314))))

(declare-fun e!2868596 () ListMap!3913)

(assert (=> b!4598952 (= e!2868596 (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))))))

(declare-fun lt!1758606 () Unit!108077)

(declare-fun call!320971 () Unit!108077)

(assert (=> b!4598952 (= lt!1758606 call!320971)))

(declare-fun call!320972 () Bool)

(assert (=> b!4598952 call!320972))

(declare-fun lt!1758593 () Unit!108077)

(assert (=> b!4598952 (= lt!1758593 lt!1758606)))

(declare-fun call!320973 () Bool)

(assert (=> b!4598952 call!320973))

(declare-fun lt!1758608 () Unit!108077)

(declare-fun Unit!108274 () Unit!108077)

(assert (=> b!4598952 (= lt!1758608 Unit!108274)))

(declare-fun e!2868595 () Bool)

(assert (=> d!1448083 e!2868595))

(declare-fun res!1923600 () Bool)

(assert (=> d!1448083 (=> (not res!1923600) (not e!2868595))))

(assert (=> d!1448083 (= res!1923600 (forall!10600 (_2!29156 (h!57043 (t!358197 (toList!4651 lm!1477)))) lambda!186315))))

(assert (=> d!1448083 (= lt!1758604 e!2868596)))

(declare-fun c!787751 () Bool)

(assert (=> d!1448083 (= c!787751 ((_ is Nil!51078) (_2!29156 (h!57043 (t!358197 (toList!4651 lm!1477))))))))

(assert (=> d!1448083 (noDuplicateKeys!1318 (_2!29156 (h!57043 (t!358197 (toList!4651 lm!1477)))))))

(assert (=> d!1448083 (= (addToMapMapFromBucket!814 (_2!29156 (h!57043 (t!358197 (toList!4651 lm!1477)))) (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477))))) lt!1758604)))

(assert (=> b!4598953 (= e!2868596 lt!1758610)))

(declare-fun lt!1758607 () ListMap!3913)

(assert (=> b!4598953 (= lt!1758607 (+!1746 (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (h!57042 (_2!29156 (h!57043 (t!358197 (toList!4651 lm!1477)))))))))

(assert (=> b!4598953 (= lt!1758610 (addToMapMapFromBucket!814 (t!358196 (_2!29156 (h!57043 (t!358197 (toList!4651 lm!1477))))) (+!1746 (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) (h!57042 (_2!29156 (h!57043 (t!358197 (toList!4651 lm!1477))))))))))

(declare-fun lt!1758603 () Unit!108077)

(assert (=> b!4598953 (= lt!1758603 call!320971)))

(assert (=> b!4598953 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477))))) lambda!186313)))

(declare-fun lt!1758601 () Unit!108077)

(assert (=> b!4598953 (= lt!1758601 lt!1758603)))

(assert (=> b!4598953 (forall!10600 (toList!4652 lt!1758607) lambda!186314)))

(declare-fun lt!1758609 () Unit!108077)

(declare-fun Unit!108275 () Unit!108077)

(assert (=> b!4598953 (= lt!1758609 Unit!108275)))

(assert (=> b!4598953 (forall!10600 (t!358196 (_2!29156 (h!57043 (t!358197 (toList!4651 lm!1477))))) lambda!186314)))

(declare-fun lt!1758592 () Unit!108077)

(declare-fun Unit!108276 () Unit!108077)

(assert (=> b!4598953 (= lt!1758592 Unit!108276)))

(declare-fun lt!1758605 () Unit!108077)

(declare-fun Unit!108277 () Unit!108077)

(assert (=> b!4598953 (= lt!1758605 Unit!108277)))

(declare-fun lt!1758597 () Unit!108077)

(assert (=> b!4598953 (= lt!1758597 (forallContained!2855 (toList!4652 lt!1758607) lambda!186314 (h!57042 (_2!29156 (h!57043 (t!358197 (toList!4651 lm!1477)))))))))

(assert (=> b!4598953 (contains!14027 lt!1758607 (_1!29155 (h!57042 (_2!29156 (h!57043 (t!358197 (toList!4651 lm!1477)))))))))

(declare-fun lt!1758599 () Unit!108077)

(declare-fun Unit!108278 () Unit!108077)

(assert (=> b!4598953 (= lt!1758599 Unit!108278)))

(assert (=> b!4598953 (contains!14027 lt!1758610 (_1!29155 (h!57042 (_2!29156 (h!57043 (t!358197 (toList!4651 lm!1477)))))))))

(declare-fun lt!1758596 () Unit!108077)

(declare-fun Unit!108279 () Unit!108077)

(assert (=> b!4598953 (= lt!1758596 Unit!108279)))

(assert (=> b!4598953 (forall!10600 (_2!29156 (h!57043 (t!358197 (toList!4651 lm!1477)))) lambda!186314)))

(declare-fun lt!1758591 () Unit!108077)

(declare-fun Unit!108280 () Unit!108077)

(assert (=> b!4598953 (= lt!1758591 Unit!108280)))

(assert (=> b!4598953 (forall!10600 (toList!4652 lt!1758607) lambda!186314)))

(declare-fun lt!1758600 () Unit!108077)

(declare-fun Unit!108281 () Unit!108077)

(assert (=> b!4598953 (= lt!1758600 Unit!108281)))

(declare-fun lt!1758602 () Unit!108077)

(declare-fun Unit!108282 () Unit!108077)

(assert (=> b!4598953 (= lt!1758602 Unit!108282)))

(declare-fun lt!1758595 () Unit!108077)

(assert (=> b!4598953 (= lt!1758595 (addForallContainsKeyThenBeforeAdding!436 (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758610 (_1!29155 (h!57042 (_2!29156 (h!57043 (t!358197 (toList!4651 lm!1477)))))) (_2!29155 (h!57042 (_2!29156 (h!57043 (t!358197 (toList!4651 lm!1477))))))))))

(assert (=> b!4598953 call!320972))

(declare-fun lt!1758590 () Unit!108077)

(assert (=> b!4598953 (= lt!1758590 lt!1758595)))

(assert (=> b!4598953 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477))))) lambda!186314)))

(declare-fun lt!1758594 () Unit!108077)

(declare-fun Unit!108283 () Unit!108077)

(assert (=> b!4598953 (= lt!1758594 Unit!108283)))

(declare-fun res!1923602 () Bool)

(assert (=> b!4598953 (= res!1923602 call!320973)))

(assert (=> b!4598953 (=> (not res!1923602) (not e!2868594))))

(assert (=> b!4598953 e!2868594))

(declare-fun lt!1758598 () Unit!108077)

(declare-fun Unit!108284 () Unit!108077)

(assert (=> b!4598953 (= lt!1758598 Unit!108284)))

(declare-fun b!4598954 () Bool)

(declare-fun res!1923601 () Bool)

(assert (=> b!4598954 (=> (not res!1923601) (not e!2868595))))

(assert (=> b!4598954 (= res!1923601 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477))))) lambda!186315))))

(declare-fun bm!320966 () Bool)

(assert (=> bm!320966 (= call!320972 (forall!10600 (toList!4652 (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477))))) (ite c!787751 lambda!186312 lambda!186314)))))

(declare-fun bm!320967 () Bool)

(assert (=> bm!320967 (= call!320971 (lemmaContainsAllItsOwnKeys!436 (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477))))))))

(declare-fun b!4598955 () Bool)

(assert (=> b!4598955 (= e!2868595 (invariantList!1124 (toList!4652 lt!1758604)))))

(declare-fun bm!320968 () Bool)

(assert (=> bm!320968 (= call!320973 (forall!10600 (ite c!787751 (toList!4652 (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477))))) (_2!29156 (h!57043 (t!358197 (toList!4651 lm!1477))))) (ite c!787751 lambda!186312 lambda!186314)))))

(assert (= (and d!1448083 c!787751) b!4598952))

(assert (= (and d!1448083 (not c!787751)) b!4598953))

(assert (= (and b!4598953 res!1923602) b!4598951))

(assert (= (or b!4598952 b!4598953) bm!320966))

(assert (= (or b!4598952 b!4598953) bm!320968))

(assert (= (or b!4598952 b!4598953) bm!320967))

(assert (= (and d!1448083 res!1923600) b!4598954))

(assert (= (and b!4598954 res!1923601) b!4598955))

(declare-fun m!5425651 () Bool)

(assert (=> b!4598953 m!5425651))

(declare-fun m!5425653 () Bool)

(assert (=> b!4598953 m!5425653))

(assert (=> b!4598953 m!5424043))

(declare-fun m!5425655 () Bool)

(assert (=> b!4598953 m!5425655))

(assert (=> b!4598953 m!5425651))

(declare-fun m!5425657 () Bool)

(assert (=> b!4598953 m!5425657))

(assert (=> b!4598953 m!5424043))

(declare-fun m!5425659 () Bool)

(assert (=> b!4598953 m!5425659))

(declare-fun m!5425661 () Bool)

(assert (=> b!4598953 m!5425661))

(declare-fun m!5425663 () Bool)

(assert (=> b!4598953 m!5425663))

(assert (=> b!4598953 m!5425659))

(declare-fun m!5425665 () Bool)

(assert (=> b!4598953 m!5425665))

(declare-fun m!5425667 () Bool)

(assert (=> b!4598953 m!5425667))

(declare-fun m!5425669 () Bool)

(assert (=> b!4598953 m!5425669))

(declare-fun m!5425671 () Bool)

(assert (=> b!4598953 m!5425671))

(declare-fun m!5425673 () Bool)

(assert (=> b!4598955 m!5425673))

(declare-fun m!5425675 () Bool)

(assert (=> bm!320966 m!5425675))

(declare-fun m!5425677 () Bool)

(assert (=> d!1448083 m!5425677))

(declare-fun m!5425679 () Bool)

(assert (=> d!1448083 m!5425679))

(assert (=> b!4598951 m!5425667))

(assert (=> bm!320967 m!5424043))

(declare-fun m!5425681 () Bool)

(assert (=> bm!320967 m!5425681))

(declare-fun m!5425683 () Bool)

(assert (=> bm!320968 m!5425683))

(declare-fun m!5425685 () Bool)

(assert (=> b!4598954 m!5425685))

(assert (=> b!4598049 d!1448083))

(declare-fun bs!1011468 () Bool)

(declare-fun d!1448085 () Bool)

(assert (= bs!1011468 (and d!1448085 d!1447571)))

(declare-fun lambda!186316 () Int)

(assert (=> bs!1011468 (= lambda!186316 lambda!186128)))

(declare-fun bs!1011469 () Bool)

(assert (= bs!1011469 (and d!1448085 d!1447443)))

(assert (=> bs!1011469 (= lambda!186316 lambda!186085)))

(declare-fun bs!1011470 () Bool)

(assert (= bs!1011470 (and d!1448085 d!1447917)))

(assert (=> bs!1011470 (= lambda!186316 lambda!186283)))

(declare-fun bs!1011471 () Bool)

(assert (= bs!1011471 (and d!1448085 d!1447559)))

(assert (=> bs!1011471 (= lambda!186316 lambda!186124)))

(declare-fun bs!1011472 () Bool)

(assert (= bs!1011472 (and d!1448085 d!1447881)))

(assert (=> bs!1011472 (= lambda!186316 lambda!186278)))

(declare-fun bs!1011473 () Bool)

(assert (= bs!1011473 (and d!1448085 start!458760)))

(assert (=> bs!1011473 (= lambda!186316 lambda!186082)))

(declare-fun bs!1011474 () Bool)

(assert (= bs!1011474 (and d!1448085 d!1448001)))

(assert (=> bs!1011474 (= lambda!186316 lambda!186293)))

(declare-fun bs!1011475 () Bool)

(assert (= bs!1011475 (and d!1448085 d!1448011)))

(assert (=> bs!1011475 (= lambda!186316 lambda!186294)))

(declare-fun bs!1011476 () Bool)

(assert (= bs!1011476 (and d!1448085 d!1447517)))

(assert (=> bs!1011476 (= lambda!186316 lambda!186109)))

(declare-fun bs!1011477 () Bool)

(assert (= bs!1011477 (and d!1448085 d!1447547)))

(assert (=> bs!1011477 (= lambda!186316 lambda!186120)))

(declare-fun bs!1011478 () Bool)

(assert (= bs!1011478 (and d!1448085 d!1448051)))

(assert (=> bs!1011478 (= lambda!186316 lambda!186307)))

(declare-fun bs!1011479 () Bool)

(assert (= bs!1011479 (and d!1448085 d!1447955)))

(assert (=> bs!1011479 (= lambda!186316 lambda!186288)))

(declare-fun bs!1011480 () Bool)

(assert (= bs!1011480 (and d!1448085 d!1447503)))

(assert (=> bs!1011480 (= lambda!186316 lambda!186105)))

(declare-fun bs!1011481 () Bool)

(assert (= bs!1011481 (and d!1448085 d!1447543)))

(assert (=> bs!1011481 (= lambda!186316 lambda!186119)))

(declare-fun bs!1011482 () Bool)

(assert (= bs!1011482 (and d!1448085 d!1447557)))

(assert (=> bs!1011482 (= lambda!186316 lambda!186123)))

(declare-fun bs!1011483 () Bool)

(assert (= bs!1011483 (and d!1448085 d!1447565)))

(assert (=> bs!1011483 (not (= lambda!186316 lambda!186127))))

(declare-fun bs!1011484 () Bool)

(assert (= bs!1011484 (and d!1448085 d!1447581)))

(assert (=> bs!1011484 (= lambda!186316 lambda!186130)))

(declare-fun bs!1011485 () Bool)

(assert (= bs!1011485 (and d!1448085 d!1447579)))

(assert (=> bs!1011485 (= lambda!186316 lambda!186129)))

(declare-fun lt!1758611 () ListMap!3913)

(assert (=> d!1448085 (invariantList!1124 (toList!4652 lt!1758611))))

(declare-fun e!2868597 () ListMap!3913)

(assert (=> d!1448085 (= lt!1758611 e!2868597)))

(declare-fun c!787752 () Bool)

(assert (=> d!1448085 (= c!787752 ((_ is Cons!51079) (t!358197 (t!358197 (toList!4651 lm!1477)))))))

(assert (=> d!1448085 (forall!10598 (t!358197 (t!358197 (toList!4651 lm!1477))) lambda!186316)))

(assert (=> d!1448085 (= (extractMap!1378 (t!358197 (t!358197 (toList!4651 lm!1477)))) lt!1758611)))

(declare-fun b!4598956 () Bool)

(assert (=> b!4598956 (= e!2868597 (addToMapMapFromBucket!814 (_2!29156 (h!57043 (t!358197 (t!358197 (toList!4651 lm!1477))))) (extractMap!1378 (t!358197 (t!358197 (t!358197 (toList!4651 lm!1477)))))))))

(declare-fun b!4598957 () Bool)

(assert (=> b!4598957 (= e!2868597 (ListMap!3914 Nil!51078))))

(assert (= (and d!1448085 c!787752) b!4598956))

(assert (= (and d!1448085 (not c!787752)) b!4598957))

(declare-fun m!5425687 () Bool)

(assert (=> d!1448085 m!5425687))

(declare-fun m!5425689 () Bool)

(assert (=> d!1448085 m!5425689))

(declare-fun m!5425691 () Bool)

(assert (=> b!4598956 m!5425691))

(assert (=> b!4598956 m!5425691))

(declare-fun m!5425693 () Bool)

(assert (=> b!4598956 m!5425693))

(assert (=> b!4598049 d!1448085))

(declare-fun d!1448087 () Bool)

(assert (=> d!1448087 (= (invariantList!1124 (toList!4652 lt!1757879)) (noDuplicatedKeys!326 (toList!4652 lt!1757879)))))

(declare-fun bs!1011486 () Bool)

(assert (= bs!1011486 d!1448087))

(declare-fun m!5425695 () Bool)

(assert (=> bs!1011486 m!5425695))

(assert (=> d!1447543 d!1448087))

(declare-fun d!1448089 () Bool)

(declare-fun res!1923603 () Bool)

(declare-fun e!2868598 () Bool)

(assert (=> d!1448089 (=> res!1923603 e!2868598)))

(assert (=> d!1448089 (= res!1923603 ((_ is Nil!51079) (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))))

(assert (=> d!1448089 (= (forall!10598 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079) lambda!186119) e!2868598)))

(declare-fun b!4598958 () Bool)

(declare-fun e!2868599 () Bool)

(assert (=> b!4598958 (= e!2868598 e!2868599)))

(declare-fun res!1923604 () Bool)

(assert (=> b!4598958 (=> (not res!1923604) (not e!2868599))))

(assert (=> b!4598958 (= res!1923604 (dynLambda!21396 lambda!186119 (h!57043 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))))))

(declare-fun b!4598959 () Bool)

(assert (=> b!4598959 (= e!2868599 (forall!10598 (t!358197 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)) lambda!186119))))

(assert (= (and d!1448089 (not res!1923603)) b!4598958))

(assert (= (and b!4598958 res!1923604) b!4598959))

(declare-fun b_lambda!169407 () Bool)

(assert (=> (not b_lambda!169407) (not b!4598958)))

(declare-fun m!5425697 () Bool)

(assert (=> b!4598958 m!5425697))

(declare-fun m!5425699 () Bool)

(assert (=> b!4598959 m!5425699))

(assert (=> d!1447543 d!1448089))

(declare-fun b!4598960 () Bool)

(declare-fun e!2868600 () Bool)

(declare-fun tp!1340440 () Bool)

(assert (=> b!4598960 (= e!2868600 (and tp_is_empty!28565 tp_is_empty!28567 tp!1340440))))

(assert (=> b!4598068 (= tp!1340435 e!2868600)))

(assert (= (and b!4598068 ((_ is Cons!51078) (t!358196 (t!358196 newBucket!178)))) b!4598960))

(declare-fun tp!1340441 () Bool)

(declare-fun b!4598961 () Bool)

(declare-fun e!2868601 () Bool)

(assert (=> b!4598961 (= e!2868601 (and tp_is_empty!28565 tp_is_empty!28567 tp!1340441))))

(assert (=> b!4598063 (= tp!1340431 e!2868601)))

(assert (= (and b!4598063 ((_ is Cons!51078) (_2!29156 (h!57043 (toList!4651 lm!1477))))) b!4598961))

(declare-fun b!4598962 () Bool)

(declare-fun e!2868602 () Bool)

(declare-fun tp!1340442 () Bool)

(declare-fun tp!1340443 () Bool)

(assert (=> b!4598962 (= e!2868602 (and tp!1340442 tp!1340443))))

(assert (=> b!4598063 (= tp!1340432 e!2868602)))

(assert (= (and b!4598063 ((_ is Cons!51079) (t!358197 (toList!4651 lm!1477)))) b!4598962))

(declare-fun b_lambda!169409 () Bool)

(assert (= b_lambda!169381 (or d!1447443 b_lambda!169409)))

(declare-fun bs!1011487 () Bool)

(declare-fun d!1448091 () Bool)

(assert (= bs!1011487 (and d!1448091 d!1447443)))

(assert (=> bs!1011487 (= (dynLambda!21396 lambda!186085 (h!57043 (toList!4651 lm!1477))) (noDuplicateKeys!1318 (_2!29156 (h!57043 (toList!4651 lm!1477)))))))

(assert (=> bs!1011487 m!5423931))

(assert (=> b!4598614 d!1448091))

(declare-fun b_lambda!169411 () Bool)

(assert (= b_lambda!169397 (or d!1447579 b_lambda!169411)))

(declare-fun bs!1011488 () Bool)

(declare-fun d!1448093 () Bool)

(assert (= bs!1011488 (and d!1448093 d!1447579)))

(assert (=> bs!1011488 (= (dynLambda!21396 lambda!186129 (h!57043 (t!358197 (toList!4651 lm!1477)))) (noDuplicateKeys!1318 (_2!29156 (h!57043 (t!358197 (toList!4651 lm!1477))))))))

(assert (=> bs!1011488 m!5425679))

(assert (=> b!4598809 d!1448093))

(declare-fun b_lambda!169413 () Bool)

(assert (= b_lambda!169387 (or start!458760 b_lambda!169413)))

(declare-fun bs!1011489 () Bool)

(declare-fun d!1448095 () Bool)

(assert (= bs!1011489 (and d!1448095 start!458760)))

(assert (=> bs!1011489 (= (dynLambda!21396 lambda!186082 (h!57043 (t!358197 (toList!4651 lm!1477)))) (noDuplicateKeys!1318 (_2!29156 (h!57043 (t!358197 (toList!4651 lm!1477))))))))

(assert (=> bs!1011489 m!5425679))

(assert (=> b!4598771 d!1448095))

(declare-fun b_lambda!169415 () Bool)

(assert (= b_lambda!169399 (or d!1447547 b_lambda!169415)))

(declare-fun bs!1011490 () Bool)

(declare-fun d!1448097 () Bool)

(assert (= bs!1011490 (and d!1448097 d!1447547)))

(assert (=> bs!1011490 (= (dynLambda!21396 lambda!186120 (h!57043 lt!1757705)) (noDuplicateKeys!1318 (_2!29156 (h!57043 lt!1757705))))))

(assert (=> bs!1011490 m!5425007))

(assert (=> b!4598896 d!1448097))

(declare-fun b_lambda!169417 () Bool)

(assert (= b_lambda!169383 (or d!1447491 b_lambda!169417)))

(declare-fun bs!1011491 () Bool)

(declare-fun d!1448099 () Bool)

(assert (= bs!1011491 (and d!1448099 d!1447491)))

(assert (=> bs!1011491 (= (dynLambda!21397 lambda!186099 (h!57042 newBucket!178)) (= (hash!3213 hashF!1107 (_1!29155 (h!57042 newBucket!178))) hash!344))))

(declare-fun m!5425701 () Bool)

(assert (=> bs!1011491 m!5425701))

(assert (=> b!4598734 d!1448099))

(declare-fun b_lambda!169419 () Bool)

(assert (= b_lambda!169405 (or start!458760 b_lambda!169419)))

(assert (=> d!1448073 d!1447585))

(declare-fun b_lambda!169421 () Bool)

(assert (= b_lambda!169395 (or d!1447571 b_lambda!169421)))

(declare-fun bs!1011492 () Bool)

(declare-fun d!1448101 () Bool)

(assert (= bs!1011492 (and d!1448101 d!1447571)))

(assert (=> bs!1011492 (= (dynLambda!21396 lambda!186128 (h!57043 (toList!4651 lm!1477))) (noDuplicateKeys!1318 (_2!29156 (h!57043 (toList!4651 lm!1477)))))))

(assert (=> bs!1011492 m!5423931))

(assert (=> b!4598800 d!1448101))

(declare-fun b_lambda!169423 () Bool)

(assert (= b_lambda!169407 (or d!1447543 b_lambda!169423)))

(declare-fun bs!1011493 () Bool)

(declare-fun d!1448103 () Bool)

(assert (= bs!1011493 (and d!1448103 d!1447543)))

(assert (=> bs!1011493 (= (dynLambda!21396 lambda!186119 (h!57043 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079))) (noDuplicateKeys!1318 (_2!29156 (h!57043 (Cons!51079 (tuple2!51725 hash!344 (_2!29156 (h!57043 (toList!4651 lm!1477)))) Nil!51079)))))))

(assert (=> bs!1011493 m!5425377))

(assert (=> b!4598958 d!1448103))

(declare-fun b_lambda!169425 () Bool)

(assert (= b_lambda!169393 (or d!1447565 b_lambda!169425)))

(declare-fun bs!1011494 () Bool)

(declare-fun d!1448105 () Bool)

(assert (= bs!1011494 (and d!1448105 d!1447565)))

(assert (=> bs!1011494 (= (dynLambda!21396 lambda!186127 (h!57043 (toList!4651 lm!1477))) (allKeysSameHash!1174 (_2!29156 (h!57043 (toList!4651 lm!1477))) (_1!29156 (h!57043 (toList!4651 lm!1477))) hashF!1107))))

(declare-fun m!5425703 () Bool)

(assert (=> bs!1011494 m!5425703))

(assert (=> b!4598798 d!1448105))

(declare-fun b_lambda!169427 () Bool)

(assert (= b_lambda!169401 (or d!1447503 b_lambda!169427)))

(declare-fun bs!1011495 () Bool)

(declare-fun d!1448107 () Bool)

(assert (= bs!1011495 (and d!1448107 d!1447503)))

(assert (=> bs!1011495 (= (dynLambda!21396 lambda!186105 (h!57043 (toList!4651 lm!1477))) (noDuplicateKeys!1318 (_2!29156 (h!57043 (toList!4651 lm!1477)))))))

(assert (=> bs!1011495 m!5423931))

(assert (=> b!4598898 d!1448107))

(declare-fun b_lambda!169429 () Bool)

(assert (= b_lambda!169403 (or d!1447557 b_lambda!169429)))

(declare-fun bs!1011496 () Bool)

(declare-fun d!1448109 () Bool)

(assert (= bs!1011496 (and d!1448109 d!1447557)))

(assert (=> bs!1011496 (= (dynLambda!21396 lambda!186123 (h!57043 (toList!4651 (ListLongMap!3284 lt!1757705)))) (noDuplicateKeys!1318 (_2!29156 (h!57043 (toList!4651 (ListLongMap!3284 lt!1757705))))))))

(declare-fun m!5425705 () Bool)

(assert (=> bs!1011496 m!5425705))

(assert (=> b!4598915 d!1448109))

(declare-fun b_lambda!169431 () Bool)

(assert (= b_lambda!169391 (or d!1447517 b_lambda!169431)))

(declare-fun bs!1011497 () Bool)

(declare-fun d!1448111 () Bool)

(assert (= bs!1011497 (and d!1448111 d!1447517)))

(assert (=> bs!1011497 (= (dynLambda!21396 lambda!186109 (h!57043 (toList!4651 lt!1757703))) (noDuplicateKeys!1318 (_2!29156 (h!57043 (toList!4651 lt!1757703)))))))

(assert (=> bs!1011497 m!5425163))

(assert (=> b!4598794 d!1448111))

(declare-fun b_lambda!169433 () Bool)

(assert (= b_lambda!169389 (or d!1447581 b_lambda!169433)))

(declare-fun bs!1011498 () Bool)

(declare-fun d!1448113 () Bool)

(assert (= bs!1011498 (and d!1448113 d!1447581)))

(assert (=> bs!1011498 (= (dynLambda!21396 lambda!186130 (h!57043 (toList!4651 lt!1757703))) (noDuplicateKeys!1318 (_2!29156 (h!57043 (toList!4651 lt!1757703)))))))

(assert (=> bs!1011498 m!5425163))

(assert (=> b!4598773 d!1448113))

(declare-fun b_lambda!169435 () Bool)

(assert (= b_lambda!169385 (or d!1447559 b_lambda!169435)))

(declare-fun bs!1011499 () Bool)

(declare-fun d!1448115 () Bool)

(assert (= bs!1011499 (and d!1448115 d!1447559)))

(assert (=> bs!1011499 (= (dynLambda!21396 lambda!186124 (h!57043 (Cons!51079 lt!1757696 Nil!51079))) (noDuplicateKeys!1318 (_2!29156 (h!57043 (Cons!51079 lt!1757696 Nil!51079)))))))

(assert (=> bs!1011499 m!5425261))

(assert (=> b!4598756 d!1448115))

(check-sat (not d!1447979) (not b!4598953) (not b!4598629) (not bm!320948) (not b_lambda!169435) (not b!4598772) (not bm!320922) (not bm!320936) (not b!4598448) (not b!4598705) (not d!1448083) (not bs!1011495) (not b!4598464) (not b!4598768) (not b!4598795) (not d!1447903) (not b!4598782) (not d!1448085) (not b!4598924) (not bm!320942) (not b!4598447) (not bs!1011489) (not d!1447995) (not b!4598751) (not bm!320963) (not d!1448063) (not d!1448023) (not b!4598829) (not d!1447803) (not d!1447987) (not bm!320944) (not bs!1011490) (not b!4598909) (not b!4598606) (not b_lambda!169433) (not d!1447999) (not b!4598394) (not b!4598710) (not d!1448019) (not b!4598932) (not b!4598962) (not b!4598462) (not b!4598902) (not d!1448041) (not d!1448029) (not b!4598799) (not bm!320958) (not b_lambda!169429) (not d!1447891) (not b!4598392) (not b!4598784) (not b!4598827) (not b!4598604) (not b!4598802) (not b!4598727) (not b!4598899) (not b!4598891) (not b!4598716) (not b!4598846) (not bs!1011499) (not b!4598602) (not b!4598746) (not b!4598797) (not b!4598454) (not b!4598905) (not d!1447941) (not b_lambda!169419) (not b_lambda!169427) (not b!4598851) (not b!4598960) (not bs!1011491) (not b!4598790) (not b!4598694) (not b!4598837) (not d!1447953) (not b!4598850) (not b!4598436) (not d!1447901) (not b!4598955) (not d!1448007) (not b!4598726) (not b!4598813) (not bs!1011496) (not b!4598615) (not d!1447915) (not d!1447895) (not b!4598763) (not bs!1011492) (not b!4598833) (not b!4598470) (not d!1448065) (not b!4598437) (not d!1447981) (not d!1447771) (not b!4598757) (not d!1447947) (not b!4598791) (not d!1447885) (not d!1447977) (not bm!320964) (not b!4598719) (not bm!320941) (not d!1448027) (not d!1447917) (not d!1447969) (not b!4598698) (not b!4598828) (not b!4598708) (not d!1448079) (not b!4598735) (not b_lambda!169425) (not b!4598826) (not bm!320949) (not b!4598908) (not b!4598769) (not b!4598723) (not bm!320966) (not b!4598611) (not b!4598820) (not b!4598472) (not b!4598913) (not b!4598919) (not b!4598853) (not b!4598910) (not bm!320968) (not d!1447943) (not b!4598650) (not b!4598925) (not b!4598806) (not d!1447883) (not bm!320939) (not b!4598738) (not bs!1011494) (not bm!320959) (not b!4598950) (not b!4598848) (not d!1447937) (not b!4598949) (not bs!1011488) (not bs!1011498) (not b!4598961) (not d!1447989) (not b!4598849) (not d!1447785) (not b!4598901) (not bm!320943) (not b!4598649) (not b!4598886) (not b!4598446) (not b!4598939) (not b!4598632) (not d!1447975) (not b!4598812) (not b_lambda!169417) (not b!4598805) (not b!4598774) (not d!1447799) (not d!1448013) (not d!1447933) (not d!1447959) (not b!4598781) (not b!4598395) (not b!4598912) (not d!1447973) (not bs!1011487) (not d!1448037) (not b!4598903) (not d!1448025) (not b!4598804) (not b!4598728) (not b!4598646) (not b!4598471) (not bm!320940) (not b!4598643) (not d!1447889) (not d!1448011) (not b_lambda!169415) (not b!4598807) (not b!4598933) (not b!4598941) (not b!4598893) (not b!4598750) (not d!1448071) (not d!1447897) (not d!1448049) (not b!4598613) (not b!4598605) (not b!4598959) (not b!4598699) (not b!4598793) (not b!4598944) (not b!4598648) (not b!4598855) (not d!1448069) (not b!4598473) (not d!1447905) (not b!4598695) (not b!4598916) (not b_lambda!169421) tp_is_empty!28565 (not b!4598954) (not d!1448033) (not bm!320947) (not b!4598767) (not d!1448053) (not b!4598760) (not b!4598927) (not d!1447921) (not bm!320921) (not bm!320919) (not b!4598692) (not d!1448061) (not d!1447971) (not bm!320945) (not b!4598810) (not b_lambda!169409) (not d!1447729) (not d!1447929) (not b!4598865) (not b!4598858) (not d!1448087) (not d!1447797) (not b_lambda!169423) (not b!4598841) (not b!4598754) (not b!4598722) (not b!4598832) (not b!4598839) (not b!4598946) (not b!4598951) (not b!4598701) (not b_lambda!169321) (not b!4598393) (not b!4598748) (not d!1447931) (not b!4598956) (not b!4598456) (not b!4598609) (not b!4598780) (not b!4598618) (not b!4598864) (not bm!320920) (not b!4598475) (not d!1447927) (not b!4598948) (not bm!320946) (not d!1448075) (not d!1447881) (not b!4598706) (not b!4598652) (not d!1448045) (not b!4598907) (not b!4598445) (not b!4598653) (not bm!320962) (not b!4598651) (not b!4598435) (not b!4598390) (not b!4598934) (not b!4598911) (not d!1447801) (not b_lambda!169323) (not b_lambda!169431) (not bs!1011493) (not b!4598930) (not b!4598897) (not b!4598777) (not d!1447805) (not b!4598766) (not bm!320965) (not bm!320935) (not b!4598713) (not bm!320937) (not b!4598922) (not d!1447793) (not b!4598842) (not d!1448035) (not bm!320938) (not b_lambda!169413) (not b!4598801) (not bs!1011497) (not d!1448001) (not b_lambda!169411) (not d!1447955) (not b!4598834) (not b!4598764) (not b!4598740) (not b!4598725) (not b!4598840) (not b!4598831) (not bm!320967) (not b!4598947) (not b!4598737) (not d!1448051) (not d!1448003) (not d!1447983) (not b!4598787) tp_is_empty!28567 (not b!4598811))
(check-sat)
