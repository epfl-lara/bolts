; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!430626 () Bool)

(assert start!430626)

(declare-fun b!4419730 () Bool)

(declare-fun e!2751975 () Bool)

(declare-datatypes ((V!11129 0))(
  ( (V!11130 (val!16977 Int)) )
))
(declare-datatypes ((K!10883 0))(
  ( (K!10884 (val!16978 Int)) )
))
(declare-datatypes ((tuple2!49274 0))(
  ( (tuple2!49275 (_1!27931 K!10883) (_2!27931 V!11129)) )
))
(declare-datatypes ((List!49640 0))(
  ( (Nil!49516) (Cons!49516 (h!55185 tuple2!49274) (t!356578 List!49640)) )
))
(declare-datatypes ((tuple2!49276 0))(
  ( (tuple2!49277 (_1!27932 (_ BitVec 64)) (_2!27932 List!49640)) )
))
(declare-datatypes ((List!49641 0))(
  ( (Nil!49517) (Cons!49517 (h!55186 tuple2!49276) (t!356579 List!49641)) )
))
(declare-datatypes ((ListLongMap!2085 0))(
  ( (ListLongMap!2086 (toList!3435 List!49641)) )
))
(declare-fun lt!1620254 () ListLongMap!2085)

(declare-fun lambda!152759 () Int)

(declare-fun forall!9518 (List!49641 Int) Bool)

(assert (=> b!4419730 (= e!2751975 (forall!9518 (toList!3435 lt!1620254) lambda!152759))))

(declare-fun newValue!93 () V!11129)

(declare-fun key!3717 () K!10883)

(declare-fun lt!1620261 () ListLongMap!2085)

(declare-datatypes ((ListMap!2679 0))(
  ( (ListMap!2680 (toList!3436 List!49640)) )
))
(declare-fun eq!382 (ListMap!2679 ListMap!2679) Bool)

(declare-fun extractMap!785 (List!49641) ListMap!2679)

(declare-fun +!1032 (ListMap!2679 tuple2!49274) ListMap!2679)

(assert (=> b!4419730 (eq!382 (extractMap!785 (toList!3435 lt!1620254)) (+!1032 (extractMap!785 (toList!3435 lt!1620261)) (tuple2!49275 key!3717 newValue!93)))))

(declare-fun lt!1620262 () tuple2!49276)

(declare-fun +!1033 (ListLongMap!2085 tuple2!49276) ListLongMap!2085)

(assert (=> b!4419730 (= lt!1620254 (+!1033 lt!1620261 lt!1620262))))

(declare-fun newBucket!194 () List!49640)

(declare-datatypes ((Unit!81254 0))(
  ( (Unit!81255) )
))
(declare-fun lt!1620259 () Unit!81254)

(declare-datatypes ((Hashable!5118 0))(
  ( (HashableExt!5117 (__x!30821 Int)) )
))
(declare-fun hashF!1220 () Hashable!5118)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!98 (ListLongMap!2085 (_ BitVec 64) List!49640 K!10883 V!11129 Hashable!5118) Unit!81254)

(assert (=> b!4419730 (= lt!1620259 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!98 lt!1620261 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun lm!1616 () ListLongMap!2085)

(declare-fun tail!7220 (ListLongMap!2085) ListLongMap!2085)

(assert (=> b!4419730 (= lt!1620261 (tail!7220 lm!1616))))

(declare-fun lt!1620258 () Unit!81254)

(declare-fun e!2751972 () Unit!81254)

(assert (=> b!4419730 (= lt!1620258 e!2751972)))

(declare-fun c!752306 () Bool)

(declare-fun contains!11985 (ListMap!2679 K!10883) Bool)

(declare-fun tail!7221 (List!49641) List!49641)

(assert (=> b!4419730 (= c!752306 (contains!11985 (extractMap!785 (tail!7221 (toList!3435 lm!1616))) key!3717))))

(declare-fun b!4419732 () Bool)

(declare-fun e!2751974 () Bool)

(assert (=> b!4419732 (= e!2751974 (not e!2751975))))

(declare-fun res!1826417 () Bool)

(assert (=> b!4419732 (=> res!1826417 e!2751975)))

(declare-fun lt!1620260 () ListLongMap!2085)

(assert (=> b!4419732 (= res!1826417 (not (forall!9518 (toList!3435 lt!1620260) lambda!152759)))))

(assert (=> b!4419732 (forall!9518 (toList!3435 lt!1620260) lambda!152759)))

(assert (=> b!4419732 (= lt!1620260 (+!1033 lm!1616 lt!1620262))))

(assert (=> b!4419732 (= lt!1620262 (tuple2!49277 hash!366 newBucket!194))))

(declare-fun lt!1620256 () Unit!81254)

(declare-fun addValidProp!368 (ListLongMap!2085 Int (_ BitVec 64) List!49640) Unit!81254)

(assert (=> b!4419732 (= lt!1620256 (addValidProp!368 lm!1616 lambda!152759 hash!366 newBucket!194))))

(declare-fun b!4419733 () Bool)

(declare-fun tp!1332875 () Bool)

(declare-fun tp_is_empty!26141 () Bool)

(declare-fun tp_is_empty!26143 () Bool)

(declare-fun e!2751977 () Bool)

(assert (=> b!4419733 (= e!2751977 (and tp_is_empty!26143 tp_is_empty!26141 tp!1332875))))

(declare-fun b!4419734 () Bool)

(declare-fun e!2751978 () Bool)

(declare-fun tp!1332876 () Bool)

(assert (=> b!4419734 (= e!2751978 tp!1332876)))

(declare-fun b!4419735 () Bool)

(declare-fun res!1826426 () Bool)

(declare-fun e!2751973 () Bool)

(assert (=> b!4419735 (=> (not res!1826426) (not e!2751973))))

(declare-fun hash!2050 (Hashable!5118 K!10883) (_ BitVec 64))

(assert (=> b!4419735 (= res!1826426 (= (hash!2050 hashF!1220 key!3717) hash!366))))

(declare-fun b!4419736 () Bool)

(declare-fun Unit!81256 () Unit!81254)

(assert (=> b!4419736 (= e!2751972 Unit!81256)))

(declare-fun b!4419737 () Bool)

(declare-fun res!1826425 () Bool)

(assert (=> b!4419737 (=> (not res!1826425) (not e!2751974))))

(declare-fun noDuplicateKeys!724 (List!49640) Bool)

(assert (=> b!4419737 (= res!1826425 (noDuplicateKeys!724 newBucket!194))))

(declare-fun res!1826418 () Bool)

(assert (=> start!430626 (=> (not res!1826418) (not e!2751973))))

(assert (=> start!430626 (= res!1826418 (forall!9518 (toList!3435 lm!1616) lambda!152759))))

(assert (=> start!430626 e!2751973))

(assert (=> start!430626 tp_is_empty!26141))

(assert (=> start!430626 tp_is_empty!26143))

(assert (=> start!430626 e!2751977))

(declare-fun inv!65070 (ListLongMap!2085) Bool)

(assert (=> start!430626 (and (inv!65070 lm!1616) e!2751978)))

(assert (=> start!430626 true))

(declare-fun b!4419731 () Bool)

(declare-fun res!1826423 () Bool)

(assert (=> b!4419731 (=> res!1826423 e!2751975)))

(assert (=> b!4419731 (= res!1826423 (or (and (is-Cons!49517 (toList!3435 lm!1616)) (= (_1!27932 (h!55186 (toList!3435 lm!1616))) hash!366)) (not (is-Cons!49517 (toList!3435 lm!1616))) (= (_1!27932 (h!55186 (toList!3435 lm!1616))) hash!366)))))

(declare-fun b!4419738 () Bool)

(declare-fun res!1826422 () Bool)

(assert (=> b!4419738 (=> (not res!1826422) (not e!2751974))))

(assert (=> b!4419738 (= res!1826422 (forall!9518 (toList!3435 lm!1616) lambda!152759))))

(declare-fun b!4419739 () Bool)

(declare-fun res!1826427 () Bool)

(assert (=> b!4419739 (=> (not res!1826427) (not e!2751973))))

(declare-fun allKeysSameHashInMap!830 (ListLongMap!2085 Hashable!5118) Bool)

(assert (=> b!4419739 (= res!1826427 (allKeysSameHashInMap!830 lm!1616 hashF!1220))))

(declare-fun b!4419740 () Bool)

(declare-fun res!1826419 () Bool)

(assert (=> b!4419740 (=> (not res!1826419) (not e!2751973))))

(declare-fun allKeysSameHash!684 (List!49640 (_ BitVec 64) Hashable!5118) Bool)

(assert (=> b!4419740 (= res!1826419 (allKeysSameHash!684 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4419741 () Bool)

(declare-fun e!2751976 () Bool)

(declare-fun apply!11576 (ListLongMap!2085 (_ BitVec 64)) List!49640)

(assert (=> b!4419741 (= e!2751976 (= newBucket!194 (Cons!49516 (tuple2!49275 key!3717 newValue!93) (apply!11576 lm!1616 hash!366))))))

(declare-fun b!4419742 () Bool)

(assert (=> b!4419742 (= e!2751973 e!2751974)))

(declare-fun res!1826421 () Bool)

(assert (=> b!4419742 (=> (not res!1826421) (not e!2751974))))

(declare-fun e!2751971 () Bool)

(assert (=> b!4419742 (= res!1826421 e!2751971)))

(declare-fun res!1826420 () Bool)

(assert (=> b!4419742 (=> res!1826420 e!2751971)))

(assert (=> b!4419742 (= res!1826420 e!2751976)))

(declare-fun res!1826416 () Bool)

(assert (=> b!4419742 (=> (not res!1826416) (not e!2751976))))

(declare-fun lt!1620255 () Bool)

(assert (=> b!4419742 (= res!1826416 lt!1620255)))

(declare-fun contains!11986 (ListLongMap!2085 (_ BitVec 64)) Bool)

(assert (=> b!4419742 (= lt!1620255 (contains!11986 lm!1616 hash!366))))

(declare-fun b!4419743 () Bool)

(declare-fun Unit!81257 () Unit!81254)

(assert (=> b!4419743 (= e!2751972 Unit!81257)))

(declare-fun lt!1620257 () Unit!81254)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!11 (ListLongMap!2085 K!10883 Hashable!5118) Unit!81254)

(assert (=> b!4419743 (= lt!1620257 (lemmaExtractTailMapContainsThenExtractMapDoes!11 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4419743 false))

(declare-fun b!4419744 () Bool)

(assert (=> b!4419744 (= e!2751971 (and (not lt!1620255) (= newBucket!194 (Cons!49516 (tuple2!49275 key!3717 newValue!93) Nil!49516))))))

(declare-fun b!4419745 () Bool)

(declare-fun res!1826424 () Bool)

(assert (=> b!4419745 (=> (not res!1826424) (not e!2751973))))

(assert (=> b!4419745 (= res!1826424 (not (contains!11985 (extractMap!785 (toList!3435 lm!1616)) key!3717)))))

(assert (= (and start!430626 res!1826418) b!4419739))

(assert (= (and b!4419739 res!1826427) b!4419735))

(assert (= (and b!4419735 res!1826426) b!4419740))

(assert (= (and b!4419740 res!1826419) b!4419745))

(assert (= (and b!4419745 res!1826424) b!4419742))

(assert (= (and b!4419742 res!1826416) b!4419741))

(assert (= (and b!4419742 (not res!1826420)) b!4419744))

(assert (= (and b!4419742 res!1826421) b!4419737))

(assert (= (and b!4419737 res!1826425) b!4419738))

(assert (= (and b!4419738 res!1826422) b!4419732))

(assert (= (and b!4419732 (not res!1826417)) b!4419731))

(assert (= (and b!4419731 (not res!1826423)) b!4419730))

(assert (= (and b!4419730 c!752306) b!4419743))

(assert (= (and b!4419730 (not c!752306)) b!4419736))

(assert (= (and start!430626 (is-Cons!49516 newBucket!194)) b!4419733))

(assert (= start!430626 b!4419734))

(declare-fun m!5096671 () Bool)

(assert (=> b!4419732 m!5096671))

(assert (=> b!4419732 m!5096671))

(declare-fun m!5096673 () Bool)

(assert (=> b!4419732 m!5096673))

(declare-fun m!5096675 () Bool)

(assert (=> b!4419732 m!5096675))

(declare-fun m!5096677 () Bool)

(assert (=> start!430626 m!5096677))

(declare-fun m!5096679 () Bool)

(assert (=> start!430626 m!5096679))

(declare-fun m!5096681 () Bool)

(assert (=> b!4419735 m!5096681))

(declare-fun m!5096683 () Bool)

(assert (=> b!4419742 m!5096683))

(declare-fun m!5096685 () Bool)

(assert (=> b!4419743 m!5096685))

(assert (=> b!4419738 m!5096677))

(declare-fun m!5096687 () Bool)

(assert (=> b!4419739 m!5096687))

(declare-fun m!5096689 () Bool)

(assert (=> b!4419730 m!5096689))

(declare-fun m!5096691 () Bool)

(assert (=> b!4419730 m!5096691))

(declare-fun m!5096693 () Bool)

(assert (=> b!4419730 m!5096693))

(declare-fun m!5096695 () Bool)

(assert (=> b!4419730 m!5096695))

(assert (=> b!4419730 m!5096689))

(declare-fun m!5096697 () Bool)

(assert (=> b!4419730 m!5096697))

(declare-fun m!5096699 () Bool)

(assert (=> b!4419730 m!5096699))

(declare-fun m!5096701 () Bool)

(assert (=> b!4419730 m!5096701))

(declare-fun m!5096703 () Bool)

(assert (=> b!4419730 m!5096703))

(declare-fun m!5096705 () Bool)

(assert (=> b!4419730 m!5096705))

(declare-fun m!5096707 () Bool)

(assert (=> b!4419730 m!5096707))

(assert (=> b!4419730 m!5096691))

(declare-fun m!5096709 () Bool)

(assert (=> b!4419730 m!5096709))

(assert (=> b!4419730 m!5096697))

(assert (=> b!4419730 m!5096701))

(assert (=> b!4419730 m!5096707))

(declare-fun m!5096711 () Bool)

(assert (=> b!4419737 m!5096711))

(declare-fun m!5096713 () Bool)

(assert (=> b!4419745 m!5096713))

(assert (=> b!4419745 m!5096713))

(declare-fun m!5096715 () Bool)

(assert (=> b!4419745 m!5096715))

(declare-fun m!5096717 () Bool)

(assert (=> b!4419741 m!5096717))

(declare-fun m!5096719 () Bool)

(assert (=> b!4419740 m!5096719))

(push 1)

(assert (not b!4419735))

(assert (not b!4419739))

(assert (not b!4419743))

(assert (not b!4419745))

(assert tp_is_empty!26141)

(assert (not b!4419730))

(assert (not b!4419734))

(assert (not b!4419737))

(assert (not b!4419742))

(assert (not b!4419732))

(assert (not start!430626))

(assert (not b!4419738))

(assert (not b!4419733))

(assert (not b!4419740))

(assert (not b!4419741))

(assert tp_is_empty!26143)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4419824 () Bool)

(declare-datatypes ((List!49644 0))(
  ( (Nil!49520) (Cons!49520 (h!55190 K!10883) (t!356582 List!49644)) )
))
(declare-fun e!2752029 () List!49644)

(declare-fun keys!16888 (ListMap!2679) List!49644)

(assert (=> b!4419824 (= e!2752029 (keys!16888 (extractMap!785 (toList!3435 lm!1616))))))

(declare-fun b!4419825 () Bool)

(declare-fun e!2752028 () Unit!81254)

(declare-fun e!2752031 () Unit!81254)

(assert (=> b!4419825 (= e!2752028 e!2752031)))

(declare-fun c!752317 () Bool)

(declare-fun call!307525 () Bool)

(assert (=> b!4419825 (= c!752317 call!307525)))

(declare-fun bm!307520 () Bool)

(declare-fun contains!11989 (List!49644 K!10883) Bool)

(assert (=> bm!307520 (= call!307525 (contains!11989 e!2752029 key!3717))))

(declare-fun c!752316 () Bool)

(declare-fun c!752318 () Bool)

(assert (=> bm!307520 (= c!752316 c!752318)))

(declare-fun b!4419826 () Bool)

(declare-fun getKeysList!236 (List!49640) List!49644)

(assert (=> b!4419826 (= e!2752029 (getKeysList!236 (toList!3436 (extractMap!785 (toList!3435 lm!1616)))))))

(declare-fun b!4419827 () Bool)

(declare-fun Unit!81262 () Unit!81254)

(assert (=> b!4419827 (= e!2752031 Unit!81262)))

(declare-fun d!1339035 () Bool)

(declare-fun e!2752030 () Bool)

(assert (=> d!1339035 e!2752030))

(declare-fun res!1826483 () Bool)

(assert (=> d!1339035 (=> res!1826483 e!2752030)))

(declare-fun e!2752032 () Bool)

(assert (=> d!1339035 (= res!1826483 e!2752032)))

(declare-fun res!1826482 () Bool)

(assert (=> d!1339035 (=> (not res!1826482) (not e!2752032))))

(declare-fun lt!1620308 () Bool)

(assert (=> d!1339035 (= res!1826482 (not lt!1620308))))

(declare-fun lt!1620312 () Bool)

(assert (=> d!1339035 (= lt!1620308 lt!1620312)))

(declare-fun lt!1620311 () Unit!81254)

(assert (=> d!1339035 (= lt!1620311 e!2752028)))

(assert (=> d!1339035 (= c!752318 lt!1620312)))

(declare-fun containsKey!1063 (List!49640 K!10883) Bool)

(assert (=> d!1339035 (= lt!1620312 (containsKey!1063 (toList!3436 (extractMap!785 (toList!3435 lm!1616))) key!3717))))

(assert (=> d!1339035 (= (contains!11985 (extractMap!785 (toList!3435 lm!1616)) key!3717) lt!1620308)))

(declare-fun b!4419828 () Bool)

(declare-fun e!2752027 () Bool)

(assert (=> b!4419828 (= e!2752027 (contains!11989 (keys!16888 (extractMap!785 (toList!3435 lm!1616))) key!3717))))

(declare-fun b!4419829 () Bool)

(assert (=> b!4419829 (= e!2752032 (not (contains!11989 (keys!16888 (extractMap!785 (toList!3435 lm!1616))) key!3717)))))

(declare-fun b!4419830 () Bool)

(assert (=> b!4419830 false))

(declare-fun lt!1620306 () Unit!81254)

(declare-fun lt!1620309 () Unit!81254)

(assert (=> b!4419830 (= lt!1620306 lt!1620309)))

(assert (=> b!4419830 (containsKey!1063 (toList!3436 (extractMap!785 (toList!3435 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!234 (List!49640 K!10883) Unit!81254)

(assert (=> b!4419830 (= lt!1620309 (lemmaInGetKeysListThenContainsKey!234 (toList!3436 (extractMap!785 (toList!3435 lm!1616))) key!3717))))

(declare-fun Unit!81263 () Unit!81254)

(assert (=> b!4419830 (= e!2752031 Unit!81263)))

(declare-fun b!4419831 () Bool)

(assert (=> b!4419831 (= e!2752030 e!2752027)))

(declare-fun res!1826484 () Bool)

(assert (=> b!4419831 (=> (not res!1826484) (not e!2752027))))

(declare-datatypes ((Option!10691 0))(
  ( (None!10690) (Some!10690 (v!43860 V!11129)) )
))
(declare-fun isDefined!7984 (Option!10691) Bool)

(declare-fun getValueByKey!677 (List!49640 K!10883) Option!10691)

(assert (=> b!4419831 (= res!1826484 (isDefined!7984 (getValueByKey!677 (toList!3436 (extractMap!785 (toList!3435 lm!1616))) key!3717)))))

(declare-fun b!4419832 () Bool)

(declare-fun lt!1620313 () Unit!81254)

(assert (=> b!4419832 (= e!2752028 lt!1620313)))

(declare-fun lt!1620307 () Unit!81254)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!587 (List!49640 K!10883) Unit!81254)

(assert (=> b!4419832 (= lt!1620307 (lemmaContainsKeyImpliesGetValueByKeyDefined!587 (toList!3436 (extractMap!785 (toList!3435 lm!1616))) key!3717))))

(assert (=> b!4419832 (isDefined!7984 (getValueByKey!677 (toList!3436 (extractMap!785 (toList!3435 lm!1616))) key!3717))))

(declare-fun lt!1620310 () Unit!81254)

(assert (=> b!4419832 (= lt!1620310 lt!1620307)))

(declare-fun lemmaInListThenGetKeysListContains!233 (List!49640 K!10883) Unit!81254)

(assert (=> b!4419832 (= lt!1620313 (lemmaInListThenGetKeysListContains!233 (toList!3436 (extractMap!785 (toList!3435 lm!1616))) key!3717))))

(assert (=> b!4419832 call!307525))

(assert (= (and d!1339035 c!752318) b!4419832))

(assert (= (and d!1339035 (not c!752318)) b!4419825))

(assert (= (and b!4419825 c!752317) b!4419830))

(assert (= (and b!4419825 (not c!752317)) b!4419827))

(assert (= (or b!4419832 b!4419825) bm!307520))

(assert (= (and bm!307520 c!752316) b!4419826))

(assert (= (and bm!307520 (not c!752316)) b!4419824))

(assert (= (and d!1339035 res!1826482) b!4419829))

(assert (= (and d!1339035 (not res!1826483)) b!4419831))

(assert (= (and b!4419831 res!1826484) b!4419828))

(declare-fun m!5096781 () Bool)

(assert (=> b!4419831 m!5096781))

(assert (=> b!4419831 m!5096781))

(declare-fun m!5096783 () Bool)

(assert (=> b!4419831 m!5096783))

(declare-fun m!5096785 () Bool)

(assert (=> d!1339035 m!5096785))

(assert (=> b!4419829 m!5096713))

(declare-fun m!5096787 () Bool)

(assert (=> b!4419829 m!5096787))

(assert (=> b!4419829 m!5096787))

(declare-fun m!5096789 () Bool)

(assert (=> b!4419829 m!5096789))

(assert (=> b!4419830 m!5096785))

(declare-fun m!5096791 () Bool)

(assert (=> b!4419830 m!5096791))

(declare-fun m!5096793 () Bool)

(assert (=> b!4419832 m!5096793))

(assert (=> b!4419832 m!5096781))

(assert (=> b!4419832 m!5096781))

(assert (=> b!4419832 m!5096783))

(declare-fun m!5096795 () Bool)

(assert (=> b!4419832 m!5096795))

(assert (=> b!4419828 m!5096713))

(assert (=> b!4419828 m!5096787))

(assert (=> b!4419828 m!5096787))

(assert (=> b!4419828 m!5096789))

(declare-fun m!5096797 () Bool)

(assert (=> b!4419826 m!5096797))

(declare-fun m!5096799 () Bool)

(assert (=> bm!307520 m!5096799))

(assert (=> b!4419824 m!5096713))

(assert (=> b!4419824 m!5096787))

(assert (=> b!4419745 d!1339035))

(declare-fun bs!754416 () Bool)

(declare-fun d!1339045 () Bool)

(assert (= bs!754416 (and d!1339045 start!430626)))

(declare-fun lambda!152776 () Int)

(assert (=> bs!754416 (= lambda!152776 lambda!152759)))

(declare-fun lt!1620316 () ListMap!2679)

(declare-fun invariantList!788 (List!49640) Bool)

(assert (=> d!1339045 (invariantList!788 (toList!3436 lt!1620316))))

(declare-fun e!2752035 () ListMap!2679)

(assert (=> d!1339045 (= lt!1620316 e!2752035)))

(declare-fun c!752321 () Bool)

(assert (=> d!1339045 (= c!752321 (is-Cons!49517 (toList!3435 lm!1616)))))

(assert (=> d!1339045 (forall!9518 (toList!3435 lm!1616) lambda!152776)))

(assert (=> d!1339045 (= (extractMap!785 (toList!3435 lm!1616)) lt!1620316)))

(declare-fun b!4419839 () Bool)

(declare-fun addToMapMapFromBucket!363 (List!49640 ListMap!2679) ListMap!2679)

(assert (=> b!4419839 (= e!2752035 (addToMapMapFromBucket!363 (_2!27932 (h!55186 (toList!3435 lm!1616))) (extractMap!785 (t!356579 (toList!3435 lm!1616)))))))

(declare-fun b!4419840 () Bool)

(assert (=> b!4419840 (= e!2752035 (ListMap!2680 Nil!49516))))

(assert (= (and d!1339045 c!752321) b!4419839))

(assert (= (and d!1339045 (not c!752321)) b!4419840))

(declare-fun m!5096803 () Bool)

(assert (=> d!1339045 m!5096803))

(declare-fun m!5096805 () Bool)

(assert (=> d!1339045 m!5096805))

(declare-fun m!5096807 () Bool)

(assert (=> b!4419839 m!5096807))

(assert (=> b!4419839 m!5096807))

(declare-fun m!5096809 () Bool)

(assert (=> b!4419839 m!5096809))

(assert (=> b!4419745 d!1339045))

(declare-fun d!1339049 () Bool)

(declare-fun hash!2053 (Hashable!5118 K!10883) (_ BitVec 64))

(assert (=> d!1339049 (= (hash!2050 hashF!1220 key!3717) (hash!2053 hashF!1220 key!3717))))

(declare-fun bs!754417 () Bool)

(assert (= bs!754417 d!1339049))

(declare-fun m!5096811 () Bool)

(assert (=> bs!754417 m!5096811))

(assert (=> b!4419735 d!1339049))

(declare-fun d!1339051 () Bool)

(declare-fun res!1826489 () Bool)

(declare-fun e!2752040 () Bool)

(assert (=> d!1339051 (=> res!1826489 e!2752040)))

(assert (=> d!1339051 (= res!1826489 (is-Nil!49517 (toList!3435 lm!1616)))))

(assert (=> d!1339051 (= (forall!9518 (toList!3435 lm!1616) lambda!152759) e!2752040)))

(declare-fun b!4419845 () Bool)

(declare-fun e!2752041 () Bool)

(assert (=> b!4419845 (= e!2752040 e!2752041)))

(declare-fun res!1826490 () Bool)

(assert (=> b!4419845 (=> (not res!1826490) (not e!2752041))))

(declare-fun dynLambda!20823 (Int tuple2!49276) Bool)

(assert (=> b!4419845 (= res!1826490 (dynLambda!20823 lambda!152759 (h!55186 (toList!3435 lm!1616))))))

(declare-fun b!4419846 () Bool)

(assert (=> b!4419846 (= e!2752041 (forall!9518 (t!356579 (toList!3435 lm!1616)) lambda!152759))))

(assert (= (and d!1339051 (not res!1826489)) b!4419845))

(assert (= (and b!4419845 res!1826490) b!4419846))

(declare-fun b_lambda!142465 () Bool)

(assert (=> (not b_lambda!142465) (not b!4419845)))

(declare-fun m!5096813 () Bool)

(assert (=> b!4419845 m!5096813))

(declare-fun m!5096815 () Bool)

(assert (=> b!4419846 m!5096815))

(assert (=> start!430626 d!1339051))

(declare-fun d!1339053 () Bool)

(declare-fun isStrictlySorted!215 (List!49641) Bool)

(assert (=> d!1339053 (= (inv!65070 lm!1616) (isStrictlySorted!215 (toList!3435 lm!1616)))))

(declare-fun bs!754418 () Bool)

(assert (= bs!754418 d!1339053))

(declare-fun m!5096817 () Bool)

(assert (=> bs!754418 m!5096817))

(assert (=> start!430626 d!1339053))

(declare-fun d!1339055 () Bool)

(declare-fun res!1826491 () Bool)

(declare-fun e!2752042 () Bool)

(assert (=> d!1339055 (=> res!1826491 e!2752042)))

(assert (=> d!1339055 (= res!1826491 (is-Nil!49517 (toList!3435 lt!1620260)))))

(assert (=> d!1339055 (= (forall!9518 (toList!3435 lt!1620260) lambda!152759) e!2752042)))

(declare-fun b!4419847 () Bool)

(declare-fun e!2752043 () Bool)

(assert (=> b!4419847 (= e!2752042 e!2752043)))

(declare-fun res!1826492 () Bool)

(assert (=> b!4419847 (=> (not res!1826492) (not e!2752043))))

(assert (=> b!4419847 (= res!1826492 (dynLambda!20823 lambda!152759 (h!55186 (toList!3435 lt!1620260))))))

(declare-fun b!4419848 () Bool)

(assert (=> b!4419848 (= e!2752043 (forall!9518 (t!356579 (toList!3435 lt!1620260)) lambda!152759))))

(assert (= (and d!1339055 (not res!1826491)) b!4419847))

(assert (= (and b!4419847 res!1826492) b!4419848))

(declare-fun b_lambda!142467 () Bool)

(assert (=> (not b_lambda!142467) (not b!4419847)))

(declare-fun m!5096819 () Bool)

(assert (=> b!4419847 m!5096819))

(declare-fun m!5096821 () Bool)

(assert (=> b!4419848 m!5096821))

(assert (=> b!4419732 d!1339055))

(declare-fun d!1339057 () Bool)

(declare-fun e!2752046 () Bool)

(assert (=> d!1339057 e!2752046))

(declare-fun res!1826497 () Bool)

(assert (=> d!1339057 (=> (not res!1826497) (not e!2752046))))

(declare-fun lt!1620327 () ListLongMap!2085)

(assert (=> d!1339057 (= res!1826497 (contains!11986 lt!1620327 (_1!27932 lt!1620262)))))

(declare-fun lt!1620325 () List!49641)

(assert (=> d!1339057 (= lt!1620327 (ListLongMap!2086 lt!1620325))))

(declare-fun lt!1620326 () Unit!81254)

(declare-fun lt!1620328 () Unit!81254)

(assert (=> d!1339057 (= lt!1620326 lt!1620328)))

(declare-datatypes ((Option!10692 0))(
  ( (None!10691) (Some!10691 (v!43861 List!49640)) )
))
(declare-fun getValueByKey!678 (List!49641 (_ BitVec 64)) Option!10692)

(assert (=> d!1339057 (= (getValueByKey!678 lt!1620325 (_1!27932 lt!1620262)) (Some!10691 (_2!27932 lt!1620262)))))

(declare-fun lemmaContainsTupThenGetReturnValue!412 (List!49641 (_ BitVec 64) List!49640) Unit!81254)

(assert (=> d!1339057 (= lt!1620328 (lemmaContainsTupThenGetReturnValue!412 lt!1620325 (_1!27932 lt!1620262) (_2!27932 lt!1620262)))))

(declare-fun insertStrictlySorted!243 (List!49641 (_ BitVec 64) List!49640) List!49641)

(assert (=> d!1339057 (= lt!1620325 (insertStrictlySorted!243 (toList!3435 lm!1616) (_1!27932 lt!1620262) (_2!27932 lt!1620262)))))

(assert (=> d!1339057 (= (+!1033 lm!1616 lt!1620262) lt!1620327)))

(declare-fun b!4419853 () Bool)

(declare-fun res!1826498 () Bool)

(assert (=> b!4419853 (=> (not res!1826498) (not e!2752046))))

(assert (=> b!4419853 (= res!1826498 (= (getValueByKey!678 (toList!3435 lt!1620327) (_1!27932 lt!1620262)) (Some!10691 (_2!27932 lt!1620262))))))

(declare-fun b!4419854 () Bool)

(declare-fun contains!11990 (List!49641 tuple2!49276) Bool)

(assert (=> b!4419854 (= e!2752046 (contains!11990 (toList!3435 lt!1620327) lt!1620262))))

(assert (= (and d!1339057 res!1826497) b!4419853))

(assert (= (and b!4419853 res!1826498) b!4419854))

(declare-fun m!5096823 () Bool)

(assert (=> d!1339057 m!5096823))

(declare-fun m!5096825 () Bool)

(assert (=> d!1339057 m!5096825))

(declare-fun m!5096827 () Bool)

(assert (=> d!1339057 m!5096827))

(declare-fun m!5096829 () Bool)

(assert (=> d!1339057 m!5096829))

(declare-fun m!5096831 () Bool)

(assert (=> b!4419853 m!5096831))

(declare-fun m!5096833 () Bool)

(assert (=> b!4419854 m!5096833))

(assert (=> b!4419732 d!1339057))

(declare-fun d!1339059 () Bool)

(assert (=> d!1339059 (forall!9518 (toList!3435 (+!1033 lm!1616 (tuple2!49277 hash!366 newBucket!194))) lambda!152759)))

(declare-fun lt!1620334 () Unit!81254)

(declare-fun choose!27834 (ListLongMap!2085 Int (_ BitVec 64) List!49640) Unit!81254)

(assert (=> d!1339059 (= lt!1620334 (choose!27834 lm!1616 lambda!152759 hash!366 newBucket!194))))

(declare-fun e!2752049 () Bool)

(assert (=> d!1339059 e!2752049))

(declare-fun res!1826501 () Bool)

(assert (=> d!1339059 (=> (not res!1826501) (not e!2752049))))

(assert (=> d!1339059 (= res!1826501 (forall!9518 (toList!3435 lm!1616) lambda!152759))))

(assert (=> d!1339059 (= (addValidProp!368 lm!1616 lambda!152759 hash!366 newBucket!194) lt!1620334)))

(declare-fun b!4419858 () Bool)

(assert (=> b!4419858 (= e!2752049 (dynLambda!20823 lambda!152759 (tuple2!49277 hash!366 newBucket!194)))))

(assert (= (and d!1339059 res!1826501) b!4419858))

(declare-fun b_lambda!142469 () Bool)

(assert (=> (not b_lambda!142469) (not b!4419858)))

(declare-fun m!5096839 () Bool)

(assert (=> d!1339059 m!5096839))

(declare-fun m!5096841 () Bool)

(assert (=> d!1339059 m!5096841))

(declare-fun m!5096843 () Bool)

(assert (=> d!1339059 m!5096843))

(assert (=> d!1339059 m!5096677))

(declare-fun m!5096845 () Bool)

(assert (=> b!4419858 m!5096845))

(assert (=> b!4419732 d!1339059))

(declare-fun bs!754422 () Bool)

(declare-fun d!1339063 () Bool)

(assert (= bs!754422 (and d!1339063 start!430626)))

(declare-fun lambda!152782 () Int)

(assert (=> bs!754422 (= lambda!152782 lambda!152759)))

(declare-fun bs!754423 () Bool)

(assert (= bs!754423 (and d!1339063 d!1339045)))

(assert (=> bs!754423 (= lambda!152782 lambda!152776)))

(assert (=> d!1339063 (contains!11985 (extractMap!785 (toList!3435 lm!1616)) key!3717)))

(declare-fun lt!1620337 () Unit!81254)

(declare-fun choose!27835 (ListLongMap!2085 K!10883 Hashable!5118) Unit!81254)

(assert (=> d!1339063 (= lt!1620337 (choose!27835 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1339063 (forall!9518 (toList!3435 lm!1616) lambda!152782)))

(assert (=> d!1339063 (= (lemmaExtractTailMapContainsThenExtractMapDoes!11 lm!1616 key!3717 hashF!1220) lt!1620337)))

(declare-fun bs!754424 () Bool)

(assert (= bs!754424 d!1339063))

(assert (=> bs!754424 m!5096713))

(assert (=> bs!754424 m!5096713))

(assert (=> bs!754424 m!5096715))

(declare-fun m!5096847 () Bool)

(assert (=> bs!754424 m!5096847))

(declare-fun m!5096849 () Bool)

(assert (=> bs!754424 m!5096849))

(assert (=> b!4419743 d!1339063))

(declare-fun d!1339065 () Bool)

(declare-fun get!16131 (Option!10692) List!49640)

(assert (=> d!1339065 (= (apply!11576 lm!1616 hash!366) (get!16131 (getValueByKey!678 (toList!3435 lm!1616) hash!366)))))

(declare-fun bs!754425 () Bool)

(assert (= bs!754425 d!1339065))

(declare-fun m!5096851 () Bool)

(assert (=> bs!754425 m!5096851))

(assert (=> bs!754425 m!5096851))

(declare-fun m!5096853 () Bool)

(assert (=> bs!754425 m!5096853))

(assert (=> b!4419741 d!1339065))

(declare-fun d!1339067 () Bool)

(declare-fun e!2752054 () Bool)

(assert (=> d!1339067 e!2752054))

(declare-fun res!1826504 () Bool)

(assert (=> d!1339067 (=> res!1826504 e!2752054)))

(declare-fun lt!1620349 () Bool)

(assert (=> d!1339067 (= res!1826504 (not lt!1620349))))

(declare-fun lt!1620347 () Bool)

(assert (=> d!1339067 (= lt!1620349 lt!1620347)))

(declare-fun lt!1620348 () Unit!81254)

(declare-fun e!2752055 () Unit!81254)

(assert (=> d!1339067 (= lt!1620348 e!2752055)))

(declare-fun c!752324 () Bool)

(assert (=> d!1339067 (= c!752324 lt!1620347)))

(declare-fun containsKey!1064 (List!49641 (_ BitVec 64)) Bool)

(assert (=> d!1339067 (= lt!1620347 (containsKey!1064 (toList!3435 lm!1616) hash!366))))

(assert (=> d!1339067 (= (contains!11986 lm!1616 hash!366) lt!1620349)))

(declare-fun b!4419865 () Bool)

(declare-fun lt!1620346 () Unit!81254)

(assert (=> b!4419865 (= e!2752055 lt!1620346)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!588 (List!49641 (_ BitVec 64)) Unit!81254)

(assert (=> b!4419865 (= lt!1620346 (lemmaContainsKeyImpliesGetValueByKeyDefined!588 (toList!3435 lm!1616) hash!366))))

(declare-fun isDefined!7985 (Option!10692) Bool)

(assert (=> b!4419865 (isDefined!7985 (getValueByKey!678 (toList!3435 lm!1616) hash!366))))

(declare-fun b!4419866 () Bool)

(declare-fun Unit!81264 () Unit!81254)

(assert (=> b!4419866 (= e!2752055 Unit!81264)))

(declare-fun b!4419867 () Bool)

(assert (=> b!4419867 (= e!2752054 (isDefined!7985 (getValueByKey!678 (toList!3435 lm!1616) hash!366)))))

(assert (= (and d!1339067 c!752324) b!4419865))

(assert (= (and d!1339067 (not c!752324)) b!4419866))

(assert (= (and d!1339067 (not res!1826504)) b!4419867))

(declare-fun m!5096855 () Bool)

(assert (=> d!1339067 m!5096855))

(declare-fun m!5096857 () Bool)

(assert (=> b!4419865 m!5096857))

(assert (=> b!4419865 m!5096851))

(assert (=> b!4419865 m!5096851))

(declare-fun m!5096859 () Bool)

(assert (=> b!4419865 m!5096859))

(assert (=> b!4419867 m!5096851))

(assert (=> b!4419867 m!5096851))

(assert (=> b!4419867 m!5096859))

(assert (=> b!4419742 d!1339067))

(declare-fun d!1339069 () Bool)

(assert (=> d!1339069 true))

(assert (=> d!1339069 true))

(declare-fun lambda!152785 () Int)

(declare-fun forall!9520 (List!49640 Int) Bool)

(assert (=> d!1339069 (= (allKeysSameHash!684 newBucket!194 hash!366 hashF!1220) (forall!9520 newBucket!194 lambda!152785))))

(declare-fun bs!754426 () Bool)

(assert (= bs!754426 d!1339069))

(declare-fun m!5096861 () Bool)

(assert (=> bs!754426 m!5096861))

(assert (=> b!4419740 d!1339069))

(declare-fun bs!754427 () Bool)

(declare-fun d!1339071 () Bool)

(assert (= bs!754427 (and d!1339071 start!430626)))

(declare-fun lambda!152786 () Int)

(assert (=> bs!754427 (= lambda!152786 lambda!152759)))

(declare-fun bs!754428 () Bool)

(assert (= bs!754428 (and d!1339071 d!1339045)))

(assert (=> bs!754428 (= lambda!152786 lambda!152776)))

(declare-fun bs!754429 () Bool)

(assert (= bs!754429 (and d!1339071 d!1339063)))

(assert (=> bs!754429 (= lambda!152786 lambda!152782)))

(declare-fun lt!1620350 () ListMap!2679)

(assert (=> d!1339071 (invariantList!788 (toList!3436 lt!1620350))))

(declare-fun e!2752056 () ListMap!2679)

(assert (=> d!1339071 (= lt!1620350 e!2752056)))

(declare-fun c!752325 () Bool)

(assert (=> d!1339071 (= c!752325 (is-Cons!49517 (toList!3435 lt!1620261)))))

(assert (=> d!1339071 (forall!9518 (toList!3435 lt!1620261) lambda!152786)))

(assert (=> d!1339071 (= (extractMap!785 (toList!3435 lt!1620261)) lt!1620350)))

(declare-fun b!4419872 () Bool)

(assert (=> b!4419872 (= e!2752056 (addToMapMapFromBucket!363 (_2!27932 (h!55186 (toList!3435 lt!1620261))) (extractMap!785 (t!356579 (toList!3435 lt!1620261)))))))

(declare-fun b!4419873 () Bool)

(assert (=> b!4419873 (= e!2752056 (ListMap!2680 Nil!49516))))

(assert (= (and d!1339071 c!752325) b!4419872))

(assert (= (and d!1339071 (not c!752325)) b!4419873))

(declare-fun m!5096863 () Bool)

(assert (=> d!1339071 m!5096863))

(declare-fun m!5096865 () Bool)

(assert (=> d!1339071 m!5096865))

(declare-fun m!5096867 () Bool)

(assert (=> b!4419872 m!5096867))

(assert (=> b!4419872 m!5096867))

(declare-fun m!5096869 () Bool)

(assert (=> b!4419872 m!5096869))

(assert (=> b!4419730 d!1339071))

(declare-fun d!1339073 () Bool)

(declare-fun e!2752057 () Bool)

(assert (=> d!1339073 e!2752057))

(declare-fun res!1826505 () Bool)

(assert (=> d!1339073 (=> (not res!1826505) (not e!2752057))))

(declare-fun lt!1620353 () ListLongMap!2085)

(assert (=> d!1339073 (= res!1826505 (contains!11986 lt!1620353 (_1!27932 lt!1620262)))))

(declare-fun lt!1620351 () List!49641)

(assert (=> d!1339073 (= lt!1620353 (ListLongMap!2086 lt!1620351))))

(declare-fun lt!1620352 () Unit!81254)

(declare-fun lt!1620354 () Unit!81254)

(assert (=> d!1339073 (= lt!1620352 lt!1620354)))

(assert (=> d!1339073 (= (getValueByKey!678 lt!1620351 (_1!27932 lt!1620262)) (Some!10691 (_2!27932 lt!1620262)))))

(assert (=> d!1339073 (= lt!1620354 (lemmaContainsTupThenGetReturnValue!412 lt!1620351 (_1!27932 lt!1620262) (_2!27932 lt!1620262)))))

(assert (=> d!1339073 (= lt!1620351 (insertStrictlySorted!243 (toList!3435 lt!1620261) (_1!27932 lt!1620262) (_2!27932 lt!1620262)))))

(assert (=> d!1339073 (= (+!1033 lt!1620261 lt!1620262) lt!1620353)))

(declare-fun b!4419874 () Bool)

(declare-fun res!1826506 () Bool)

(assert (=> b!4419874 (=> (not res!1826506) (not e!2752057))))

(assert (=> b!4419874 (= res!1826506 (= (getValueByKey!678 (toList!3435 lt!1620353) (_1!27932 lt!1620262)) (Some!10691 (_2!27932 lt!1620262))))))

(declare-fun b!4419875 () Bool)

(assert (=> b!4419875 (= e!2752057 (contains!11990 (toList!3435 lt!1620353) lt!1620262))))

(assert (= (and d!1339073 res!1826505) b!4419874))

(assert (= (and b!4419874 res!1826506) b!4419875))

(declare-fun m!5096871 () Bool)

(assert (=> d!1339073 m!5096871))

(declare-fun m!5096873 () Bool)

(assert (=> d!1339073 m!5096873))

(declare-fun m!5096875 () Bool)

(assert (=> d!1339073 m!5096875))

(declare-fun m!5096877 () Bool)

(assert (=> d!1339073 m!5096877))

(declare-fun m!5096879 () Bool)

(assert (=> b!4419874 m!5096879))

(declare-fun m!5096881 () Bool)

(assert (=> b!4419875 m!5096881))

(assert (=> b!4419730 d!1339073))

(declare-fun bs!754430 () Bool)

(declare-fun d!1339075 () Bool)

(assert (= bs!754430 (and d!1339075 start!430626)))

(declare-fun lambda!152787 () Int)

(assert (=> bs!754430 (= lambda!152787 lambda!152759)))

(declare-fun bs!754431 () Bool)

(assert (= bs!754431 (and d!1339075 d!1339045)))

(assert (=> bs!754431 (= lambda!152787 lambda!152776)))

(declare-fun bs!754432 () Bool)

(assert (= bs!754432 (and d!1339075 d!1339063)))

(assert (=> bs!754432 (= lambda!152787 lambda!152782)))

(declare-fun bs!754433 () Bool)

(assert (= bs!754433 (and d!1339075 d!1339071)))

(assert (=> bs!754433 (= lambda!152787 lambda!152786)))

(declare-fun lt!1620355 () ListMap!2679)

(assert (=> d!1339075 (invariantList!788 (toList!3436 lt!1620355))))

(declare-fun e!2752058 () ListMap!2679)

(assert (=> d!1339075 (= lt!1620355 e!2752058)))

(declare-fun c!752326 () Bool)

(assert (=> d!1339075 (= c!752326 (is-Cons!49517 (toList!3435 lt!1620254)))))

(assert (=> d!1339075 (forall!9518 (toList!3435 lt!1620254) lambda!152787)))

(assert (=> d!1339075 (= (extractMap!785 (toList!3435 lt!1620254)) lt!1620355)))

(declare-fun b!4419876 () Bool)

(assert (=> b!4419876 (= e!2752058 (addToMapMapFromBucket!363 (_2!27932 (h!55186 (toList!3435 lt!1620254))) (extractMap!785 (t!356579 (toList!3435 lt!1620254)))))))

(declare-fun b!4419877 () Bool)

(assert (=> b!4419877 (= e!2752058 (ListMap!2680 Nil!49516))))

(assert (= (and d!1339075 c!752326) b!4419876))

(assert (= (and d!1339075 (not c!752326)) b!4419877))

(declare-fun m!5096883 () Bool)

(assert (=> d!1339075 m!5096883))

(declare-fun m!5096885 () Bool)

(assert (=> d!1339075 m!5096885))

(declare-fun m!5096887 () Bool)

(assert (=> b!4419876 m!5096887))

(assert (=> b!4419876 m!5096887))

(declare-fun m!5096889 () Bool)

(assert (=> b!4419876 m!5096889))

(assert (=> b!4419730 d!1339075))

(declare-fun d!1339077 () Bool)

(declare-fun res!1826507 () Bool)

(declare-fun e!2752059 () Bool)

(assert (=> d!1339077 (=> res!1826507 e!2752059)))

(assert (=> d!1339077 (= res!1826507 (is-Nil!49517 (toList!3435 lt!1620254)))))

(assert (=> d!1339077 (= (forall!9518 (toList!3435 lt!1620254) lambda!152759) e!2752059)))

(declare-fun b!4419878 () Bool)

(declare-fun e!2752060 () Bool)

(assert (=> b!4419878 (= e!2752059 e!2752060)))

(declare-fun res!1826508 () Bool)

(assert (=> b!4419878 (=> (not res!1826508) (not e!2752060))))

(assert (=> b!4419878 (= res!1826508 (dynLambda!20823 lambda!152759 (h!55186 (toList!3435 lt!1620254))))))

(declare-fun b!4419879 () Bool)

(assert (=> b!4419879 (= e!2752060 (forall!9518 (t!356579 (toList!3435 lt!1620254)) lambda!152759))))

(assert (= (and d!1339077 (not res!1826507)) b!4419878))

(assert (= (and b!4419878 res!1826508) b!4419879))

(declare-fun b_lambda!142471 () Bool)

(assert (=> (not b_lambda!142471) (not b!4419878)))

(declare-fun m!5096891 () Bool)

(assert (=> b!4419878 m!5096891))

(declare-fun m!5096893 () Bool)

(assert (=> b!4419879 m!5096893))

(assert (=> b!4419730 d!1339077))

(declare-fun bs!754434 () Bool)

(declare-fun d!1339079 () Bool)

(assert (= bs!754434 (and d!1339079 d!1339063)))

(declare-fun lambda!152790 () Int)

(assert (=> bs!754434 (= lambda!152790 lambda!152782)))

(declare-fun bs!754435 () Bool)

(assert (= bs!754435 (and d!1339079 d!1339075)))

(assert (=> bs!754435 (= lambda!152790 lambda!152787)))

(declare-fun bs!754436 () Bool)

(assert (= bs!754436 (and d!1339079 d!1339071)))

(assert (=> bs!754436 (= lambda!152790 lambda!152786)))

(declare-fun bs!754437 () Bool)

(assert (= bs!754437 (and d!1339079 d!1339045)))

(assert (=> bs!754437 (= lambda!152790 lambda!152776)))

(declare-fun bs!754438 () Bool)

(assert (= bs!754438 (and d!1339079 start!430626)))

(assert (=> bs!754438 (= lambda!152790 lambda!152759)))

(assert (=> d!1339079 (eq!382 (extractMap!785 (toList!3435 (+!1033 lt!1620261 (tuple2!49277 hash!366 newBucket!194)))) (+!1032 (extractMap!785 (toList!3435 lt!1620261)) (tuple2!49275 key!3717 newValue!93)))))

(declare-fun lt!1620374 () Unit!81254)

(declare-fun choose!27836 (ListLongMap!2085 (_ BitVec 64) List!49640 K!10883 V!11129 Hashable!5118) Unit!81254)

(assert (=> d!1339079 (= lt!1620374 (choose!27836 lt!1620261 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1339079 (forall!9518 (toList!3435 lt!1620261) lambda!152790)))

(assert (=> d!1339079 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!98 lt!1620261 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1620374)))

(declare-fun bs!754439 () Bool)

(assert (= bs!754439 d!1339079))

(declare-fun m!5096895 () Bool)

(assert (=> bs!754439 m!5096895))

(assert (=> bs!754439 m!5096691))

(declare-fun m!5096897 () Bool)

(assert (=> bs!754439 m!5096897))

(assert (=> bs!754439 m!5096689))

(assert (=> bs!754439 m!5096691))

(assert (=> bs!754439 m!5096689))

(assert (=> bs!754439 m!5096895))

(declare-fun m!5096899 () Bool)

(assert (=> bs!754439 m!5096899))

(declare-fun m!5096901 () Bool)

(assert (=> bs!754439 m!5096901))

(declare-fun m!5096903 () Bool)

(assert (=> bs!754439 m!5096903))

(assert (=> b!4419730 d!1339079))

(declare-fun d!1339081 () Bool)

(declare-fun content!7929 (List!49640) (Set tuple2!49274))

(assert (=> d!1339081 (= (eq!382 (extractMap!785 (toList!3435 lt!1620254)) (+!1032 (extractMap!785 (toList!3435 lt!1620261)) (tuple2!49275 key!3717 newValue!93))) (= (content!7929 (toList!3436 (extractMap!785 (toList!3435 lt!1620254)))) (content!7929 (toList!3436 (+!1032 (extractMap!785 (toList!3435 lt!1620261)) (tuple2!49275 key!3717 newValue!93))))))))

(declare-fun bs!754440 () Bool)

(assert (= bs!754440 d!1339081))

(declare-fun m!5096905 () Bool)

(assert (=> bs!754440 m!5096905))

(declare-fun m!5096907 () Bool)

(assert (=> bs!754440 m!5096907))

(assert (=> b!4419730 d!1339081))

(declare-fun d!1339083 () Bool)

(declare-fun e!2752081 () Bool)

(assert (=> d!1339083 e!2752081))

(declare-fun res!1826523 () Bool)

(assert (=> d!1339083 (=> (not res!1826523) (not e!2752081))))

(declare-fun lt!1620394 () ListMap!2679)

(assert (=> d!1339083 (= res!1826523 (contains!11985 lt!1620394 (_1!27931 (tuple2!49275 key!3717 newValue!93))))))

(declare-fun lt!1620391 () List!49640)

(assert (=> d!1339083 (= lt!1620394 (ListMap!2680 lt!1620391))))

(declare-fun lt!1620392 () Unit!81254)

(declare-fun lt!1620393 () Unit!81254)

(assert (=> d!1339083 (= lt!1620392 lt!1620393)))

(assert (=> d!1339083 (= (getValueByKey!677 lt!1620391 (_1!27931 (tuple2!49275 key!3717 newValue!93))) (Some!10690 (_2!27931 (tuple2!49275 key!3717 newValue!93))))))

(declare-fun lemmaContainsTupThenGetReturnValue!413 (List!49640 K!10883 V!11129) Unit!81254)

(assert (=> d!1339083 (= lt!1620393 (lemmaContainsTupThenGetReturnValue!413 lt!1620391 (_1!27931 (tuple2!49275 key!3717 newValue!93)) (_2!27931 (tuple2!49275 key!3717 newValue!93))))))

(declare-fun insertNoDuplicatedKeys!178 (List!49640 K!10883 V!11129) List!49640)

(assert (=> d!1339083 (= lt!1620391 (insertNoDuplicatedKeys!178 (toList!3436 (extractMap!785 (toList!3435 lt!1620261))) (_1!27931 (tuple2!49275 key!3717 newValue!93)) (_2!27931 (tuple2!49275 key!3717 newValue!93))))))

(assert (=> d!1339083 (= (+!1032 (extractMap!785 (toList!3435 lt!1620261)) (tuple2!49275 key!3717 newValue!93)) lt!1620394)))

(declare-fun b!4419911 () Bool)

(declare-fun res!1826522 () Bool)

(assert (=> b!4419911 (=> (not res!1826522) (not e!2752081))))

(assert (=> b!4419911 (= res!1826522 (= (getValueByKey!677 (toList!3436 lt!1620394) (_1!27931 (tuple2!49275 key!3717 newValue!93))) (Some!10690 (_2!27931 (tuple2!49275 key!3717 newValue!93)))))))

(declare-fun b!4419912 () Bool)

(declare-fun contains!11991 (List!49640 tuple2!49274) Bool)

(assert (=> b!4419912 (= e!2752081 (contains!11991 (toList!3436 lt!1620394) (tuple2!49275 key!3717 newValue!93)))))

(assert (= (and d!1339083 res!1826523) b!4419911))

(assert (= (and b!4419911 res!1826522) b!4419912))

(declare-fun m!5096929 () Bool)

(assert (=> d!1339083 m!5096929))

(declare-fun m!5096931 () Bool)

(assert (=> d!1339083 m!5096931))

(declare-fun m!5096933 () Bool)

(assert (=> d!1339083 m!5096933))

(declare-fun m!5096935 () Bool)

(assert (=> d!1339083 m!5096935))

(declare-fun m!5096937 () Bool)

(assert (=> b!4419911 m!5096937))

(declare-fun m!5096939 () Bool)

(assert (=> b!4419912 m!5096939))

(assert (=> b!4419730 d!1339083))

(declare-fun d!1339087 () Bool)

(assert (=> d!1339087 (= (tail!7220 lm!1616) (ListLongMap!2086 (tail!7221 (toList!3435 lm!1616))))))

(declare-fun bs!754441 () Bool)

(assert (= bs!754441 d!1339087))

(assert (=> bs!754441 m!5096697))

(assert (=> b!4419730 d!1339087))

(declare-fun bs!754442 () Bool)

(declare-fun d!1339089 () Bool)

(assert (= bs!754442 (and d!1339089 d!1339063)))

(declare-fun lambda!152791 () Int)

(assert (=> bs!754442 (= lambda!152791 lambda!152782)))

(declare-fun bs!754443 () Bool)

(assert (= bs!754443 (and d!1339089 d!1339075)))

(assert (=> bs!754443 (= lambda!152791 lambda!152787)))

(declare-fun bs!754444 () Bool)

(assert (= bs!754444 (and d!1339089 d!1339071)))

(assert (=> bs!754444 (= lambda!152791 lambda!152786)))

(declare-fun bs!754445 () Bool)

(assert (= bs!754445 (and d!1339089 d!1339079)))

(assert (=> bs!754445 (= lambda!152791 lambda!152790)))

(declare-fun bs!754446 () Bool)

(assert (= bs!754446 (and d!1339089 d!1339045)))

(assert (=> bs!754446 (= lambda!152791 lambda!152776)))

(declare-fun bs!754447 () Bool)

(assert (= bs!754447 (and d!1339089 start!430626)))

(assert (=> bs!754447 (= lambda!152791 lambda!152759)))

(declare-fun lt!1620395 () ListMap!2679)

(assert (=> d!1339089 (invariantList!788 (toList!3436 lt!1620395))))

(declare-fun e!2752082 () ListMap!2679)

(assert (=> d!1339089 (= lt!1620395 e!2752082)))

(declare-fun c!752336 () Bool)

(assert (=> d!1339089 (= c!752336 (is-Cons!49517 (tail!7221 (toList!3435 lm!1616))))))

(assert (=> d!1339089 (forall!9518 (tail!7221 (toList!3435 lm!1616)) lambda!152791)))

(assert (=> d!1339089 (= (extractMap!785 (tail!7221 (toList!3435 lm!1616))) lt!1620395)))

(declare-fun b!4419913 () Bool)

(assert (=> b!4419913 (= e!2752082 (addToMapMapFromBucket!363 (_2!27932 (h!55186 (tail!7221 (toList!3435 lm!1616)))) (extractMap!785 (t!356579 (tail!7221 (toList!3435 lm!1616))))))))

(declare-fun b!4419914 () Bool)

(assert (=> b!4419914 (= e!2752082 (ListMap!2680 Nil!49516))))

(assert (= (and d!1339089 c!752336) b!4419913))

(assert (= (and d!1339089 (not c!752336)) b!4419914))

(declare-fun m!5096941 () Bool)

(assert (=> d!1339089 m!5096941))

(assert (=> d!1339089 m!5096697))

(declare-fun m!5096943 () Bool)

(assert (=> d!1339089 m!5096943))

(declare-fun m!5096945 () Bool)

(assert (=> b!4419913 m!5096945))

(assert (=> b!4419913 m!5096945))

(declare-fun m!5096947 () Bool)

(assert (=> b!4419913 m!5096947))

(assert (=> b!4419730 d!1339089))

(declare-fun d!1339091 () Bool)

(assert (=> d!1339091 (= (tail!7221 (toList!3435 lm!1616)) (t!356579 (toList!3435 lm!1616)))))

(assert (=> b!4419730 d!1339091))

(declare-fun b!4419915 () Bool)

(declare-fun e!2752085 () List!49644)

(assert (=> b!4419915 (= e!2752085 (keys!16888 (extractMap!785 (tail!7221 (toList!3435 lm!1616)))))))

(declare-fun b!4419916 () Bool)

(declare-fun e!2752084 () Unit!81254)

(declare-fun e!2752087 () Unit!81254)

(assert (=> b!4419916 (= e!2752084 e!2752087)))

(declare-fun c!752338 () Bool)

(declare-fun call!307529 () Bool)

(assert (=> b!4419916 (= c!752338 call!307529)))

(declare-fun bm!307524 () Bool)

(assert (=> bm!307524 (= call!307529 (contains!11989 e!2752085 key!3717))))

(declare-fun c!752337 () Bool)

(declare-fun c!752339 () Bool)

(assert (=> bm!307524 (= c!752337 c!752339)))

(declare-fun b!4419917 () Bool)

(assert (=> b!4419917 (= e!2752085 (getKeysList!236 (toList!3436 (extractMap!785 (tail!7221 (toList!3435 lm!1616))))))))

(declare-fun b!4419918 () Bool)

(declare-fun Unit!81265 () Unit!81254)

(assert (=> b!4419918 (= e!2752087 Unit!81265)))

(declare-fun d!1339093 () Bool)

(declare-fun e!2752086 () Bool)

(assert (=> d!1339093 e!2752086))

(declare-fun res!1826525 () Bool)

(assert (=> d!1339093 (=> res!1826525 e!2752086)))

(declare-fun e!2752088 () Bool)

(assert (=> d!1339093 (= res!1826525 e!2752088)))

(declare-fun res!1826524 () Bool)

(assert (=> d!1339093 (=> (not res!1826524) (not e!2752088))))

(declare-fun lt!1620398 () Bool)

(assert (=> d!1339093 (= res!1826524 (not lt!1620398))))

(declare-fun lt!1620402 () Bool)

(assert (=> d!1339093 (= lt!1620398 lt!1620402)))

(declare-fun lt!1620401 () Unit!81254)

(assert (=> d!1339093 (= lt!1620401 e!2752084)))

(assert (=> d!1339093 (= c!752339 lt!1620402)))

(assert (=> d!1339093 (= lt!1620402 (containsKey!1063 (toList!3436 (extractMap!785 (tail!7221 (toList!3435 lm!1616)))) key!3717))))

(assert (=> d!1339093 (= (contains!11985 (extractMap!785 (tail!7221 (toList!3435 lm!1616))) key!3717) lt!1620398)))

(declare-fun b!4419919 () Bool)

(declare-fun e!2752083 () Bool)

(assert (=> b!4419919 (= e!2752083 (contains!11989 (keys!16888 (extractMap!785 (tail!7221 (toList!3435 lm!1616)))) key!3717))))

(declare-fun b!4419920 () Bool)

(assert (=> b!4419920 (= e!2752088 (not (contains!11989 (keys!16888 (extractMap!785 (tail!7221 (toList!3435 lm!1616)))) key!3717)))))

(declare-fun b!4419921 () Bool)

(assert (=> b!4419921 false))

(declare-fun lt!1620396 () Unit!81254)

(declare-fun lt!1620399 () Unit!81254)

(assert (=> b!4419921 (= lt!1620396 lt!1620399)))

(assert (=> b!4419921 (containsKey!1063 (toList!3436 (extractMap!785 (tail!7221 (toList!3435 lm!1616)))) key!3717)))

(assert (=> b!4419921 (= lt!1620399 (lemmaInGetKeysListThenContainsKey!234 (toList!3436 (extractMap!785 (tail!7221 (toList!3435 lm!1616)))) key!3717))))

(declare-fun Unit!81266 () Unit!81254)

(assert (=> b!4419921 (= e!2752087 Unit!81266)))

(declare-fun b!4419922 () Bool)

(assert (=> b!4419922 (= e!2752086 e!2752083)))

(declare-fun res!1826526 () Bool)

(assert (=> b!4419922 (=> (not res!1826526) (not e!2752083))))

(assert (=> b!4419922 (= res!1826526 (isDefined!7984 (getValueByKey!677 (toList!3436 (extractMap!785 (tail!7221 (toList!3435 lm!1616)))) key!3717)))))

(declare-fun b!4419923 () Bool)

(declare-fun lt!1620403 () Unit!81254)

(assert (=> b!4419923 (= e!2752084 lt!1620403)))

(declare-fun lt!1620397 () Unit!81254)

(assert (=> b!4419923 (= lt!1620397 (lemmaContainsKeyImpliesGetValueByKeyDefined!587 (toList!3436 (extractMap!785 (tail!7221 (toList!3435 lm!1616)))) key!3717))))

(assert (=> b!4419923 (isDefined!7984 (getValueByKey!677 (toList!3436 (extractMap!785 (tail!7221 (toList!3435 lm!1616)))) key!3717))))

(declare-fun lt!1620400 () Unit!81254)

(assert (=> b!4419923 (= lt!1620400 lt!1620397)))

(assert (=> b!4419923 (= lt!1620403 (lemmaInListThenGetKeysListContains!233 (toList!3436 (extractMap!785 (tail!7221 (toList!3435 lm!1616)))) key!3717))))

(assert (=> b!4419923 call!307529))

(assert (= (and d!1339093 c!752339) b!4419923))

(assert (= (and d!1339093 (not c!752339)) b!4419916))

(assert (= (and b!4419916 c!752338) b!4419921))

(assert (= (and b!4419916 (not c!752338)) b!4419918))

(assert (= (or b!4419923 b!4419916) bm!307524))

(assert (= (and bm!307524 c!752337) b!4419917))

(assert (= (and bm!307524 (not c!752337)) b!4419915))

(assert (= (and d!1339093 res!1826524) b!4419920))

(assert (= (and d!1339093 (not res!1826525)) b!4419922))

(assert (= (and b!4419922 res!1826526) b!4419919))

(declare-fun m!5096949 () Bool)

(assert (=> b!4419922 m!5096949))

(assert (=> b!4419922 m!5096949))

(declare-fun m!5096951 () Bool)

(assert (=> b!4419922 m!5096951))

(declare-fun m!5096953 () Bool)

(assert (=> d!1339093 m!5096953))

(assert (=> b!4419920 m!5096701))

(declare-fun m!5096955 () Bool)

(assert (=> b!4419920 m!5096955))

(assert (=> b!4419920 m!5096955))

(declare-fun m!5096957 () Bool)

(assert (=> b!4419920 m!5096957))

(assert (=> b!4419921 m!5096953))

(declare-fun m!5096959 () Bool)

(assert (=> b!4419921 m!5096959))

(declare-fun m!5096961 () Bool)

(assert (=> b!4419923 m!5096961))

(assert (=> b!4419923 m!5096949))

(assert (=> b!4419923 m!5096949))

(assert (=> b!4419923 m!5096951))

(declare-fun m!5096963 () Bool)

(assert (=> b!4419923 m!5096963))

(assert (=> b!4419919 m!5096701))

(assert (=> b!4419919 m!5096955))

(assert (=> b!4419919 m!5096955))

(assert (=> b!4419919 m!5096957))

(declare-fun m!5096965 () Bool)

(assert (=> b!4419917 m!5096965))

(declare-fun m!5096967 () Bool)

(assert (=> bm!307524 m!5096967))

(assert (=> b!4419915 m!5096701))

(assert (=> b!4419915 m!5096955))

(assert (=> b!4419730 d!1339093))

(declare-fun bs!754448 () Bool)

(declare-fun d!1339095 () Bool)

(assert (= bs!754448 (and d!1339095 d!1339089)))

(declare-fun lambda!152794 () Int)

(assert (=> bs!754448 (not (= lambda!152794 lambda!152791))))

(declare-fun bs!754449 () Bool)

(assert (= bs!754449 (and d!1339095 d!1339063)))

(assert (=> bs!754449 (not (= lambda!152794 lambda!152782))))

(declare-fun bs!754450 () Bool)

(assert (= bs!754450 (and d!1339095 d!1339075)))

(assert (=> bs!754450 (not (= lambda!152794 lambda!152787))))

(declare-fun bs!754451 () Bool)

(assert (= bs!754451 (and d!1339095 d!1339071)))

(assert (=> bs!754451 (not (= lambda!152794 lambda!152786))))

(declare-fun bs!754452 () Bool)

(assert (= bs!754452 (and d!1339095 d!1339079)))

(assert (=> bs!754452 (not (= lambda!152794 lambda!152790))))

(declare-fun bs!754453 () Bool)

(assert (= bs!754453 (and d!1339095 d!1339045)))

(assert (=> bs!754453 (not (= lambda!152794 lambda!152776))))

(declare-fun bs!754454 () Bool)

(assert (= bs!754454 (and d!1339095 start!430626)))

(assert (=> bs!754454 (not (= lambda!152794 lambda!152759))))

(assert (=> d!1339095 true))

(assert (=> d!1339095 (= (allKeysSameHashInMap!830 lm!1616 hashF!1220) (forall!9518 (toList!3435 lm!1616) lambda!152794))))

(declare-fun bs!754455 () Bool)

(assert (= bs!754455 d!1339095))

(declare-fun m!5096969 () Bool)

(assert (=> bs!754455 m!5096969))

(assert (=> b!4419739 d!1339095))

(declare-fun d!1339097 () Bool)

(declare-fun res!1826531 () Bool)

(declare-fun e!2752093 () Bool)

(assert (=> d!1339097 (=> res!1826531 e!2752093)))

(assert (=> d!1339097 (= res!1826531 (not (is-Cons!49516 newBucket!194)))))

(assert (=> d!1339097 (= (noDuplicateKeys!724 newBucket!194) e!2752093)))

(declare-fun b!4419930 () Bool)

(declare-fun e!2752094 () Bool)

(assert (=> b!4419930 (= e!2752093 e!2752094)))

(declare-fun res!1826532 () Bool)

(assert (=> b!4419930 (=> (not res!1826532) (not e!2752094))))

(declare-fun containsKey!1066 (List!49640 K!10883) Bool)

(assert (=> b!4419930 (= res!1826532 (not (containsKey!1066 (t!356578 newBucket!194) (_1!27931 (h!55185 newBucket!194)))))))

(declare-fun b!4419931 () Bool)

(assert (=> b!4419931 (= e!2752094 (noDuplicateKeys!724 (t!356578 newBucket!194)))))

(assert (= (and d!1339097 (not res!1826531)) b!4419930))

(assert (= (and b!4419930 res!1826532) b!4419931))

(declare-fun m!5096971 () Bool)

(assert (=> b!4419930 m!5096971))

(declare-fun m!5096973 () Bool)

(assert (=> b!4419931 m!5096973))

(assert (=> b!4419737 d!1339097))

(assert (=> b!4419738 d!1339051))

(declare-fun e!2752097 () Bool)

(declare-fun tp!1332885 () Bool)

(declare-fun b!4419936 () Bool)

(assert (=> b!4419936 (= e!2752097 (and tp_is_empty!26143 tp_is_empty!26141 tp!1332885))))

(assert (=> b!4419733 (= tp!1332875 e!2752097)))

(assert (= (and b!4419733 (is-Cons!49516 (t!356578 newBucket!194))) b!4419936))

(declare-fun b!4419941 () Bool)

(declare-fun e!2752100 () Bool)

(declare-fun tp!1332890 () Bool)

(declare-fun tp!1332891 () Bool)

(assert (=> b!4419941 (= e!2752100 (and tp!1332890 tp!1332891))))

(assert (=> b!4419734 (= tp!1332876 e!2752100)))

(assert (= (and b!4419734 (is-Cons!49517 (toList!3435 lm!1616))) b!4419941))

(declare-fun b_lambda!142473 () Bool)

(assert (= b_lambda!142467 (or start!430626 b_lambda!142473)))

(declare-fun bs!754456 () Bool)

(declare-fun d!1339099 () Bool)

(assert (= bs!754456 (and d!1339099 start!430626)))

(assert (=> bs!754456 (= (dynLambda!20823 lambda!152759 (h!55186 (toList!3435 lt!1620260))) (noDuplicateKeys!724 (_2!27932 (h!55186 (toList!3435 lt!1620260)))))))

(declare-fun m!5096975 () Bool)

(assert (=> bs!754456 m!5096975))

(assert (=> b!4419847 d!1339099))

(declare-fun b_lambda!142475 () Bool)

(assert (= b_lambda!142471 (or start!430626 b_lambda!142475)))

(declare-fun bs!754457 () Bool)

(declare-fun d!1339101 () Bool)

(assert (= bs!754457 (and d!1339101 start!430626)))

(assert (=> bs!754457 (= (dynLambda!20823 lambda!152759 (h!55186 (toList!3435 lt!1620254))) (noDuplicateKeys!724 (_2!27932 (h!55186 (toList!3435 lt!1620254)))))))

(declare-fun m!5096977 () Bool)

(assert (=> bs!754457 m!5096977))

(assert (=> b!4419878 d!1339101))

(declare-fun b_lambda!142477 () Bool)

(assert (= b_lambda!142469 (or start!430626 b_lambda!142477)))

(declare-fun bs!754458 () Bool)

(declare-fun d!1339103 () Bool)

(assert (= bs!754458 (and d!1339103 start!430626)))

(assert (=> bs!754458 (= (dynLambda!20823 lambda!152759 (tuple2!49277 hash!366 newBucket!194)) (noDuplicateKeys!724 (_2!27932 (tuple2!49277 hash!366 newBucket!194))))))

(declare-fun m!5096979 () Bool)

(assert (=> bs!754458 m!5096979))

(assert (=> b!4419858 d!1339103))

(declare-fun b_lambda!142479 () Bool)

(assert (= b_lambda!142465 (or start!430626 b_lambda!142479)))

(declare-fun bs!754459 () Bool)

(declare-fun d!1339105 () Bool)

(assert (= bs!754459 (and d!1339105 start!430626)))

(assert (=> bs!754459 (= (dynLambda!20823 lambda!152759 (h!55186 (toList!3435 lm!1616))) (noDuplicateKeys!724 (_2!27932 (h!55186 (toList!3435 lm!1616)))))))

(declare-fun m!5096981 () Bool)

(assert (=> bs!754459 m!5096981))

(assert (=> b!4419845 d!1339105))

(push 1)

(assert (not b!4419915))

(assert (not d!1339071))

(assert (not d!1339069))

(assert (not b!4419913))

(assert (not bs!754459))

(assert (not b!4419936))

(assert (not b!4419839))

(assert (not d!1339093))

(assert tp_is_empty!26143)

(assert (not b!4419921))

(assert (not d!1339089))

(assert (not d!1339079))

(assert (not b!4419848))

(assert (not b!4419920))

(assert (not b!4419830))

(assert (not b!4419872))

(assert (not d!1339065))

(assert (not b!4419826))

(assert (not b!4419876))

(assert (not b!4419875))

(assert (not b!4419911))

(assert (not bs!754458))

(assert (not b!4419879))

(assert (not d!1339045))

(assert (not b!4419829))

(assert (not bs!754456))

(assert (not b!4419867))

(assert (not b_lambda!142477))

(assert (not d!1339059))

(assert (not b!4419832))

(assert (not b!4419922))

(assert (not b!4419912))

(assert (not d!1339073))

(assert (not b!4419865))

(assert (not b!4419917))

(assert (not b!4419923))

(assert (not d!1339063))

(assert (not bs!754457))

(assert (not b!4419846))

(assert (not d!1339057))

(assert (not bm!307520))

(assert tp_is_empty!26141)

(assert (not d!1339081))

(assert (not b!4419828))

(assert (not d!1339053))

(assert (not d!1339035))

(assert (not b_lambda!142475))

(assert (not d!1339075))

(assert (not b!4419853))

(assert (not b!4419854))

(assert (not b_lambda!142479))

(assert (not d!1339095))

(assert (not d!1339049))

(assert (not d!1339067))

(assert (not b!4419930))

(assert (not b_lambda!142473))

(assert (not b!4419931))

(assert (not b!4419831))

(assert (not b!4419941))

(assert (not d!1339083))

(assert (not d!1339087))

(assert (not b!4419919))

(assert (not b!4419874))

(assert (not bm!307524))

(assert (not b!4419824))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

