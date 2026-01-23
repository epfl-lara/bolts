; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!460042 () Bool)

(assert start!460042)

(declare-fun b!4604985 () Bool)

(declare-fun res!1926955 () Bool)

(declare-fun e!2872389 () Bool)

(assert (=> b!4604985 (=> res!1926955 e!2872389)))

(declare-datatypes ((K!12523 0))(
  ( (K!12524 (val!18289 Int)) )
))
(declare-datatypes ((V!12769 0))(
  ( (V!12770 (val!18290 Int)) )
))
(declare-datatypes ((tuple2!51846 0))(
  ( (tuple2!51847 (_1!29217 K!12523) (_2!29217 V!12769)) )
))
(declare-datatypes ((List!51278 0))(
  ( (Nil!51154) (Cons!51154 (h!57132 tuple2!51846) (t!358272 List!51278)) )
))
(declare-datatypes ((tuple2!51848 0))(
  ( (tuple2!51849 (_1!29218 (_ BitVec 64)) (_2!29218 List!51278)) )
))
(declare-datatypes ((List!51279 0))(
  ( (Nil!51155) (Cons!51155 (h!57133 tuple2!51848) (t!358273 List!51279)) )
))
(declare-datatypes ((ListLongMap!3345 0))(
  ( (ListLongMap!3346 (toList!4713 List!51279)) )
))
(declare-fun lm!1477 () ListLongMap!3345)

(declare-fun lt!1762909 () tuple2!51848)

(declare-fun contains!14138 (List!51279 tuple2!51848) Bool)

(assert (=> b!4604985 (= res!1926955 (not (contains!14138 (t!358273 (toList!4713 lm!1477)) lt!1762909)))))

(declare-fun b!4604986 () Bool)

(declare-fun e!2872387 () Bool)

(declare-fun tp!1340768 () Bool)

(assert (=> b!4604986 (= e!2872387 tp!1340768)))

(declare-fun b!4604987 () Bool)

(declare-fun res!1926957 () Bool)

(assert (=> b!4604987 (=> res!1926957 e!2872389)))

(declare-fun lt!1762914 () ListLongMap!3345)

(declare-fun lt!1762913 () List!51278)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun apply!12086 (ListLongMap!3345 (_ BitVec 64)) List!51278)

(assert (=> b!4604987 (= res!1926957 (not (= (apply!12086 lt!1762914 hash!344) lt!1762913)))))

(declare-fun e!2872388 () Bool)

(declare-fun tp_is_empty!28689 () Bool)

(declare-fun tp_is_empty!28691 () Bool)

(declare-fun b!4604988 () Bool)

(declare-fun tp!1340769 () Bool)

(assert (=> b!4604988 (= e!2872388 (and tp_is_empty!28689 tp_is_empty!28691 tp!1340769))))

(declare-fun b!4604989 () Bool)

(declare-fun e!2872392 () Bool)

(declare-fun e!2872390 () Bool)

(assert (=> b!4604989 (= e!2872392 (not e!2872390))))

(declare-fun res!1926956 () Bool)

(assert (=> b!4604989 (=> res!1926956 e!2872390)))

(declare-fun key!3287 () K!12523)

(declare-fun newBucket!178 () List!51278)

(declare-fun removePairForKey!974 (List!51278 K!12523) List!51278)

(assert (=> b!4604989 (= res!1926956 (not (= newBucket!178 (removePairForKey!974 lt!1762913 key!3287))))))

(declare-datatypes ((Unit!108925 0))(
  ( (Unit!108926) )
))
(declare-fun lt!1762918 () Unit!108925)

(declare-fun lambda!187357 () Int)

(declare-fun forallContained!2902 (List!51279 Int tuple2!51848) Unit!108925)

(assert (=> b!4604989 (= lt!1762918 (forallContained!2902 (toList!4713 lm!1477) lambda!187357 lt!1762909))))

(assert (=> b!4604989 (contains!14138 (toList!4713 lm!1477) lt!1762909)))

(assert (=> b!4604989 (= lt!1762909 (tuple2!51849 hash!344 lt!1762913))))

(declare-fun lt!1762911 () Unit!108925)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!859 (List!51279 (_ BitVec 64) List!51278) Unit!108925)

(assert (=> b!4604989 (= lt!1762911 (lemmaGetValueByKeyImpliesContainsTuple!859 (toList!4713 lm!1477) hash!344 lt!1762913))))

(assert (=> b!4604989 (= lt!1762913 (apply!12086 lm!1477 hash!344))))

(declare-fun lt!1762916 () (_ BitVec 64))

(declare-fun contains!14139 (ListLongMap!3345 (_ BitVec 64)) Bool)

(assert (=> b!4604989 (contains!14139 lm!1477 lt!1762916)))

(declare-datatypes ((Hashable!5748 0))(
  ( (HashableExt!5747 (__x!31451 Int)) )
))
(declare-fun hashF!1107 () Hashable!5748)

(declare-fun lt!1762912 () Unit!108925)

(declare-fun lemmaInGenMapThenLongMapContainsHash!423 (ListLongMap!3345 K!12523 Hashable!5748) Unit!108925)

(assert (=> b!4604989 (= lt!1762912 (lemmaInGenMapThenLongMapContainsHash!423 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4604990 () Bool)

(declare-fun e!2872393 () Bool)

(declare-fun lt!1762921 () List!51278)

(declare-datatypes ((Option!11416 0))(
  ( (None!11415) (Some!11415 (v!45437 tuple2!51846)) )
))
(declare-fun isDefined!8684 (Option!11416) Bool)

(declare-fun getPair!239 (List!51278 K!12523) Option!11416)

(assert (=> b!4604990 (= e!2872393 (isDefined!8684 (getPair!239 lt!1762921 key!3287)))))

(declare-fun lt!1762919 () Unit!108925)

(declare-fun lt!1762920 () tuple2!51848)

(assert (=> b!4604990 (= lt!1762919 (forallContained!2902 (toList!4713 lt!1762914) lambda!187357 lt!1762920))))

(assert (=> b!4604990 (contains!14138 (toList!4713 lt!1762914) lt!1762920)))

(assert (=> b!4604990 (= lt!1762920 (tuple2!51849 lt!1762916 lt!1762921))))

(declare-fun lt!1762915 () Unit!108925)

(declare-fun lemmaGetValueImpliesTupleContained!48 (ListLongMap!3345 (_ BitVec 64) List!51278) Unit!108925)

(assert (=> b!4604990 (= lt!1762915 (lemmaGetValueImpliesTupleContained!48 lt!1762914 lt!1762916 lt!1762921))))

(assert (=> b!4604990 (= lt!1762921 (apply!12086 lt!1762914 lt!1762916))))

(declare-fun b!4604991 () Bool)

(declare-fun e!2872394 () Unit!108925)

(declare-fun Unit!108927 () Unit!108925)

(assert (=> b!4604991 (= e!2872394 Unit!108927)))

(declare-fun lt!1762917 () Unit!108925)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!313 (ListLongMap!3345 K!12523 Hashable!5748) Unit!108925)

(assert (=> b!4604991 (= lt!1762917 (lemmaNotInItsHashBucketThenNotInMap!313 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4604991 false))

(declare-fun b!4604992 () Bool)

(declare-fun res!1926959 () Bool)

(assert (=> b!4604992 (=> res!1926959 e!2872390)))

(declare-fun noDuplicateKeys!1349 (List!51278) Bool)

(assert (=> b!4604992 (= res!1926959 (not (noDuplicateKeys!1349 newBucket!178)))))

(declare-fun b!4604993 () Bool)

(declare-fun e!2872391 () Bool)

(assert (=> b!4604993 (= e!2872391 e!2872392)))

(declare-fun res!1926960 () Bool)

(assert (=> b!4604993 (=> (not res!1926960) (not e!2872392))))

(assert (=> b!4604993 (= res!1926960 (= lt!1762916 hash!344))))

(declare-fun hash!3274 (Hashable!5748 K!12523) (_ BitVec 64))

(assert (=> b!4604993 (= lt!1762916 (hash!3274 hashF!1107 key!3287))))

(declare-fun b!4604994 () Bool)

(assert (=> b!4604994 (= e!2872390 e!2872389)))

(declare-fun res!1926948 () Bool)

(assert (=> b!4604994 (=> res!1926948 e!2872389)))

(assert (=> b!4604994 (= res!1926948 (not (contains!14139 lt!1762914 hash!344)))))

(declare-fun tail!7996 (ListLongMap!3345) ListLongMap!3345)

(assert (=> b!4604994 (= lt!1762914 (tail!7996 lm!1477))))

(declare-fun b!4604995 () Bool)

(declare-fun Unit!108928 () Unit!108925)

(assert (=> b!4604995 (= e!2872394 Unit!108928)))

(declare-fun res!1926949 () Bool)

(assert (=> start!460042 (=> (not res!1926949) (not e!2872391))))

(declare-fun forall!10653 (List!51279 Int) Bool)

(assert (=> start!460042 (= res!1926949 (forall!10653 (toList!4713 lm!1477) lambda!187357))))

(assert (=> start!460042 e!2872391))

(assert (=> start!460042 true))

(declare-fun inv!66708 (ListLongMap!3345) Bool)

(assert (=> start!460042 (and (inv!66708 lm!1477) e!2872387)))

(assert (=> start!460042 tp_is_empty!28689))

(assert (=> start!460042 e!2872388))

(declare-fun b!4604996 () Bool)

(declare-fun res!1926953 () Bool)

(assert (=> b!4604996 (=> res!1926953 e!2872390)))

(assert (=> b!4604996 (= res!1926953 (or (is-Nil!51155 (toList!4713 lm!1477)) (= (_1!29218 (h!57133 (toList!4713 lm!1477))) hash!344)))))

(declare-fun b!4604997 () Bool)

(declare-fun res!1926961 () Bool)

(assert (=> b!4604997 (=> res!1926961 e!2872393)))

(assert (=> b!4604997 (= res!1926961 (not (contains!14139 lt!1762914 lt!1762916)))))

(declare-fun b!4604998 () Bool)

(declare-fun res!1926951 () Bool)

(assert (=> b!4604998 (=> res!1926951 e!2872393)))

(declare-fun allKeysSameHashInMap!1460 (ListLongMap!3345 Hashable!5748) Bool)

(assert (=> b!4604998 (= res!1926951 (not (allKeysSameHashInMap!1460 lt!1762914 hashF!1107)))))

(declare-fun b!4604999 () Bool)

(declare-fun res!1926954 () Bool)

(assert (=> b!4604999 (=> (not res!1926954) (not e!2872392))))

(declare-fun allKeysSameHash!1205 (List!51278 (_ BitVec 64) Hashable!5748) Bool)

(assert (=> b!4604999 (= res!1926954 (allKeysSameHash!1205 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4605000 () Bool)

(declare-fun res!1926958 () Bool)

(assert (=> b!4605000 (=> res!1926958 e!2872393)))

(assert (=> b!4605000 (= res!1926958 (not (forall!10653 (toList!4713 lt!1762914) lambda!187357)))))

(declare-fun b!4605001 () Bool)

(declare-fun res!1926947 () Bool)

(assert (=> b!4605001 (=> (not res!1926947) (not e!2872391))))

(declare-datatypes ((ListMap!3975 0))(
  ( (ListMap!3976 (toList!4714 List!51278)) )
))
(declare-fun contains!14140 (ListMap!3975 K!12523) Bool)

(declare-fun extractMap!1409 (List!51279) ListMap!3975)

(assert (=> b!4605001 (= res!1926947 (contains!14140 (extractMap!1409 (toList!4713 lm!1477)) key!3287))))

(declare-fun b!4605002 () Bool)

(assert (=> b!4605002 (= e!2872389 e!2872393)))

(declare-fun res!1926950 () Bool)

(assert (=> b!4605002 (=> res!1926950 e!2872393)))

(declare-fun lt!1762908 () Bool)

(assert (=> b!4605002 (= res!1926950 lt!1762908)))

(declare-fun lt!1762910 () Unit!108925)

(assert (=> b!4605002 (= lt!1762910 e!2872394)))

(declare-fun c!788869 () Bool)

(assert (=> b!4605002 (= c!788869 lt!1762908)))

(declare-fun containsKey!2213 (List!51278 K!12523) Bool)

(assert (=> b!4605002 (= lt!1762908 (not (containsKey!2213 lt!1762913 key!3287)))))

(declare-fun b!4605003 () Bool)

(declare-fun res!1926952 () Bool)

(assert (=> b!4605003 (=> (not res!1926952) (not e!2872391))))

(assert (=> b!4605003 (= res!1926952 (allKeysSameHashInMap!1460 lm!1477 hashF!1107))))

(assert (= (and start!460042 res!1926949) b!4605003))

(assert (= (and b!4605003 res!1926952) b!4605001))

(assert (= (and b!4605001 res!1926947) b!4604993))

(assert (= (and b!4604993 res!1926960) b!4604999))

(assert (= (and b!4604999 res!1926954) b!4604989))

(assert (= (and b!4604989 (not res!1926956)) b!4604992))

(assert (= (and b!4604992 (not res!1926959)) b!4604996))

(assert (= (and b!4604996 (not res!1926953)) b!4604994))

(assert (= (and b!4604994 (not res!1926948)) b!4604987))

(assert (= (and b!4604987 (not res!1926957)) b!4604985))

(assert (= (and b!4604985 (not res!1926955)) b!4605002))

(assert (= (and b!4605002 c!788869) b!4604991))

(assert (= (and b!4605002 (not c!788869)) b!4604995))

(assert (= (and b!4605002 (not res!1926950)) b!4605000))

(assert (= (and b!4605000 (not res!1926958)) b!4604998))

(assert (= (and b!4604998 (not res!1926951)) b!4604997))

(assert (= (and b!4604997 (not res!1926961)) b!4604990))

(assert (= start!460042 b!4604986))

(assert (= (and start!460042 (is-Cons!51154 newBucket!178)) b!4604988))

(declare-fun m!5434261 () Bool)

(assert (=> b!4605001 m!5434261))

(assert (=> b!4605001 m!5434261))

(declare-fun m!5434263 () Bool)

(assert (=> b!4605001 m!5434263))

(declare-fun m!5434265 () Bool)

(assert (=> b!4605002 m!5434265))

(declare-fun m!5434267 () Bool)

(assert (=> b!4604989 m!5434267))

(declare-fun m!5434269 () Bool)

(assert (=> b!4604989 m!5434269))

(declare-fun m!5434271 () Bool)

(assert (=> b!4604989 m!5434271))

(declare-fun m!5434273 () Bool)

(assert (=> b!4604989 m!5434273))

(declare-fun m!5434275 () Bool)

(assert (=> b!4604989 m!5434275))

(declare-fun m!5434277 () Bool)

(assert (=> b!4604989 m!5434277))

(declare-fun m!5434279 () Bool)

(assert (=> b!4604989 m!5434279))

(declare-fun m!5434281 () Bool)

(assert (=> b!4605003 m!5434281))

(declare-fun m!5434283 () Bool)

(assert (=> b!4604997 m!5434283))

(declare-fun m!5434285 () Bool)

(assert (=> b!4604994 m!5434285))

(declare-fun m!5434287 () Bool)

(assert (=> b!4604994 m!5434287))

(declare-fun m!5434289 () Bool)

(assert (=> b!4604990 m!5434289))

(declare-fun m!5434291 () Bool)

(assert (=> b!4604990 m!5434291))

(declare-fun m!5434293 () Bool)

(assert (=> b!4604990 m!5434293))

(assert (=> b!4604990 m!5434289))

(declare-fun m!5434295 () Bool)

(assert (=> b!4604990 m!5434295))

(declare-fun m!5434297 () Bool)

(assert (=> b!4604990 m!5434297))

(declare-fun m!5434299 () Bool)

(assert (=> b!4604990 m!5434299))

(declare-fun m!5434301 () Bool)

(assert (=> start!460042 m!5434301))

(declare-fun m!5434303 () Bool)

(assert (=> start!460042 m!5434303))

(declare-fun m!5434305 () Bool)

(assert (=> b!4604992 m!5434305))

(declare-fun m!5434307 () Bool)

(assert (=> b!4604999 m!5434307))

(declare-fun m!5434309 () Bool)

(assert (=> b!4604998 m!5434309))

(declare-fun m!5434311 () Bool)

(assert (=> b!4604985 m!5434311))

(declare-fun m!5434313 () Bool)

(assert (=> b!4604993 m!5434313))

(declare-fun m!5434315 () Bool)

(assert (=> b!4604991 m!5434315))

(declare-fun m!5434317 () Bool)

(assert (=> b!4605000 m!5434317))

(declare-fun m!5434319 () Bool)

(assert (=> b!4604987 m!5434319))

(push 1)

(assert (not b!4604998))

(assert (not b!4604989))

(assert (not b!4605000))

(assert (not b!4604991))

(assert (not b!4604987))

(assert tp_is_empty!28691)

(assert (not b!4604988))

(assert (not b!4604992))

(assert (not start!460042))

(assert (not b!4605003))

(assert (not b!4604990))

(assert (not b!4604985))

(assert tp_is_empty!28689)

(assert (not b!4605001))

(assert (not b!4605002))

(assert (not b!4604997))

(assert (not b!4604993))

(assert (not b!4604994))

(assert (not b!4604999))

(assert (not b!4604986))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1450541 () Bool)

(declare-datatypes ((Option!11418 0))(
  ( (None!11417) (Some!11417 (v!45442 List!51278)) )
))
(declare-fun get!16916 (Option!11418) List!51278)

(declare-fun getValueByKey!1336 (List!51279 (_ BitVec 64)) Option!11418)

(assert (=> d!1450541 (= (apply!12086 lt!1762914 hash!344) (get!16916 (getValueByKey!1336 (toList!4713 lt!1762914) hash!344)))))

(declare-fun bs!1014218 () Bool)

(assert (= bs!1014218 d!1450541))

(declare-fun m!5434385 () Bool)

(assert (=> bs!1014218 m!5434385))

(assert (=> bs!1014218 m!5434385))

(declare-fun m!5434387 () Bool)

(assert (=> bs!1014218 m!5434387))

(assert (=> b!4604987 d!1450541))

(declare-fun bs!1014219 () Bool)

(declare-fun d!1450543 () Bool)

(assert (= bs!1014219 (and d!1450543 start!460042)))

(declare-fun lambda!187369 () Int)

(assert (=> bs!1014219 (not (= lambda!187369 lambda!187357))))

(assert (=> d!1450543 true))

(assert (=> d!1450543 (= (allKeysSameHashInMap!1460 lt!1762914 hashF!1107) (forall!10653 (toList!4713 lt!1762914) lambda!187369))))

(declare-fun bs!1014220 () Bool)

(assert (= bs!1014220 d!1450543))

(declare-fun m!5434389 () Bool)

(assert (=> bs!1014220 m!5434389))

(assert (=> b!4604998 d!1450543))

(declare-fun d!1450545 () Bool)

(declare-fun e!2872432 () Bool)

(assert (=> d!1450545 e!2872432))

(declare-fun res!1927018 () Bool)

(assert (=> d!1450545 (=> res!1927018 e!2872432)))

(declare-fun lt!1762981 () Bool)

(assert (=> d!1450545 (= res!1927018 (not lt!1762981))))

(declare-fun lt!1762979 () Bool)

(assert (=> d!1450545 (= lt!1762981 lt!1762979)))

(declare-fun lt!1762980 () Unit!108925)

(declare-fun e!2872433 () Unit!108925)

(assert (=> d!1450545 (= lt!1762980 e!2872433)))

(declare-fun c!788875 () Bool)

(assert (=> d!1450545 (= c!788875 lt!1762979)))

(declare-fun containsKey!2215 (List!51279 (_ BitVec 64)) Bool)

(assert (=> d!1450545 (= lt!1762979 (containsKey!2215 (toList!4713 lt!1762914) lt!1762916))))

(assert (=> d!1450545 (= (contains!14139 lt!1762914 lt!1762916) lt!1762981)))

(declare-fun b!4605079 () Bool)

(declare-fun lt!1762978 () Unit!108925)

(assert (=> b!4605079 (= e!2872433 lt!1762978)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1240 (List!51279 (_ BitVec 64)) Unit!108925)

(assert (=> b!4605079 (= lt!1762978 (lemmaContainsKeyImpliesGetValueByKeyDefined!1240 (toList!4713 lt!1762914) lt!1762916))))

(declare-fun isDefined!8686 (Option!11418) Bool)

(assert (=> b!4605079 (isDefined!8686 (getValueByKey!1336 (toList!4713 lt!1762914) lt!1762916))))

(declare-fun b!4605080 () Bool)

(declare-fun Unit!108933 () Unit!108925)

(assert (=> b!4605080 (= e!2872433 Unit!108933)))

(declare-fun b!4605081 () Bool)

(assert (=> b!4605081 (= e!2872432 (isDefined!8686 (getValueByKey!1336 (toList!4713 lt!1762914) lt!1762916)))))

(assert (= (and d!1450545 c!788875) b!4605079))

(assert (= (and d!1450545 (not c!788875)) b!4605080))

(assert (= (and d!1450545 (not res!1927018)) b!4605081))

(declare-fun m!5434395 () Bool)

(assert (=> d!1450545 m!5434395))

(declare-fun m!5434397 () Bool)

(assert (=> b!4605079 m!5434397))

(declare-fun m!5434399 () Bool)

(assert (=> b!4605079 m!5434399))

(assert (=> b!4605079 m!5434399))

(declare-fun m!5434401 () Bool)

(assert (=> b!4605079 m!5434401))

(assert (=> b!4605081 m!5434399))

(assert (=> b!4605081 m!5434399))

(assert (=> b!4605081 m!5434401))

(assert (=> b!4604997 d!1450545))

(declare-fun d!1450549 () Bool)

(declare-fun res!1927023 () Bool)

(declare-fun e!2872438 () Bool)

(assert (=> d!1450549 (=> res!1927023 e!2872438)))

(assert (=> d!1450549 (= res!1927023 (is-Nil!51155 (toList!4713 lt!1762914)))))

(assert (=> d!1450549 (= (forall!10653 (toList!4713 lt!1762914) lambda!187357) e!2872438)))

(declare-fun b!4605086 () Bool)

(declare-fun e!2872439 () Bool)

(assert (=> b!4605086 (= e!2872438 e!2872439)))

(declare-fun res!1927024 () Bool)

(assert (=> b!4605086 (=> (not res!1927024) (not e!2872439))))

(declare-fun dynLambda!21419 (Int tuple2!51848) Bool)

(assert (=> b!4605086 (= res!1927024 (dynLambda!21419 lambda!187357 (h!57133 (toList!4713 lt!1762914))))))

(declare-fun b!4605087 () Bool)

(assert (=> b!4605087 (= e!2872439 (forall!10653 (t!358273 (toList!4713 lt!1762914)) lambda!187357))))

(assert (= (and d!1450549 (not res!1927023)) b!4605086))

(assert (= (and b!4605086 res!1927024) b!4605087))

(declare-fun b_lambda!169921 () Bool)

(assert (=> (not b_lambda!169921) (not b!4605086)))

(declare-fun m!5434407 () Bool)

(assert (=> b!4605086 m!5434407))

(declare-fun m!5434409 () Bool)

(assert (=> b!4605087 m!5434409))

(assert (=> b!4605000 d!1450549))

(declare-fun d!1450553 () Bool)

(assert (=> d!1450553 (contains!14138 (toList!4713 lt!1762914) (tuple2!51849 lt!1762916 lt!1762921))))

(declare-fun lt!1762986 () Unit!108925)

(declare-fun choose!30931 (ListLongMap!3345 (_ BitVec 64) List!51278) Unit!108925)

(assert (=> d!1450553 (= lt!1762986 (choose!30931 lt!1762914 lt!1762916 lt!1762921))))

(assert (=> d!1450553 (contains!14139 lt!1762914 lt!1762916)))

(assert (=> d!1450553 (= (lemmaGetValueImpliesTupleContained!48 lt!1762914 lt!1762916 lt!1762921) lt!1762986)))

(declare-fun bs!1014222 () Bool)

(assert (= bs!1014222 d!1450553))

(declare-fun m!5434411 () Bool)

(assert (=> bs!1014222 m!5434411))

(declare-fun m!5434413 () Bool)

(assert (=> bs!1014222 m!5434413))

(assert (=> bs!1014222 m!5434283))

(assert (=> b!4604990 d!1450553))

(declare-fun d!1450555 () Bool)

(assert (=> d!1450555 (dynLambda!21419 lambda!187357 lt!1762920)))

(declare-fun lt!1762990 () Unit!108925)

(declare-fun choose!30932 (List!51279 Int tuple2!51848) Unit!108925)

(assert (=> d!1450555 (= lt!1762990 (choose!30932 (toList!4713 lt!1762914) lambda!187357 lt!1762920))))

(declare-fun e!2872448 () Bool)

(assert (=> d!1450555 e!2872448))

(declare-fun res!1927033 () Bool)

(assert (=> d!1450555 (=> (not res!1927033) (not e!2872448))))

(assert (=> d!1450555 (= res!1927033 (forall!10653 (toList!4713 lt!1762914) lambda!187357))))

(assert (=> d!1450555 (= (forallContained!2902 (toList!4713 lt!1762914) lambda!187357 lt!1762920) lt!1762990)))

(declare-fun b!4605097 () Bool)

(assert (=> b!4605097 (= e!2872448 (contains!14138 (toList!4713 lt!1762914) lt!1762920))))

(assert (= (and d!1450555 res!1927033) b!4605097))

(declare-fun b_lambda!169923 () Bool)

(assert (=> (not b_lambda!169923) (not d!1450555)))

(declare-fun m!5434421 () Bool)

(assert (=> d!1450555 m!5434421))

(declare-fun m!5434423 () Bool)

(assert (=> d!1450555 m!5434423))

(assert (=> d!1450555 m!5434317))

(assert (=> b!4605097 m!5434299))

(assert (=> b!4604990 d!1450555))

(declare-fun d!1450559 () Bool)

(assert (=> d!1450559 (= (apply!12086 lt!1762914 lt!1762916) (get!16916 (getValueByKey!1336 (toList!4713 lt!1762914) lt!1762916)))))

(declare-fun bs!1014223 () Bool)

(assert (= bs!1014223 d!1450559))

(assert (=> bs!1014223 m!5434399))

(assert (=> bs!1014223 m!5434399))

(declare-fun m!5434425 () Bool)

(assert (=> bs!1014223 m!5434425))

(assert (=> b!4604990 d!1450559))

(declare-fun d!1450561 () Bool)

(declare-fun isEmpty!28883 (Option!11416) Bool)

(assert (=> d!1450561 (= (isDefined!8684 (getPair!239 lt!1762921 key!3287)) (not (isEmpty!28883 (getPair!239 lt!1762921 key!3287))))))

(declare-fun bs!1014224 () Bool)

(assert (= bs!1014224 d!1450561))

(assert (=> bs!1014224 m!5434289))

(declare-fun m!5434427 () Bool)

(assert (=> bs!1014224 m!5434427))

(assert (=> b!4604990 d!1450561))

(declare-fun d!1450563 () Bool)

(declare-fun lt!1762993 () Bool)

(declare-fun content!8679 (List!51279) (Set tuple2!51848))

(assert (=> d!1450563 (= lt!1762993 (set.member lt!1762920 (content!8679 (toList!4713 lt!1762914))))))

(declare-fun e!2872454 () Bool)

(assert (=> d!1450563 (= lt!1762993 e!2872454)))

(declare-fun res!1927038 () Bool)

(assert (=> d!1450563 (=> (not res!1927038) (not e!2872454))))

(assert (=> d!1450563 (= res!1927038 (is-Cons!51155 (toList!4713 lt!1762914)))))

(assert (=> d!1450563 (= (contains!14138 (toList!4713 lt!1762914) lt!1762920) lt!1762993)))

(declare-fun b!4605102 () Bool)

(declare-fun e!2872453 () Bool)

(assert (=> b!4605102 (= e!2872454 e!2872453)))

(declare-fun res!1927039 () Bool)

(assert (=> b!4605102 (=> res!1927039 e!2872453)))

(assert (=> b!4605102 (= res!1927039 (= (h!57133 (toList!4713 lt!1762914)) lt!1762920))))

(declare-fun b!4605103 () Bool)

(assert (=> b!4605103 (= e!2872453 (contains!14138 (t!358273 (toList!4713 lt!1762914)) lt!1762920))))

(assert (= (and d!1450563 res!1927038) b!4605102))

(assert (= (and b!4605102 (not res!1927039)) b!4605103))

(declare-fun m!5434433 () Bool)

(assert (=> d!1450563 m!5434433))

(declare-fun m!5434435 () Bool)

(assert (=> d!1450563 m!5434435))

(declare-fun m!5434437 () Bool)

(assert (=> b!4605103 m!5434437))

(assert (=> b!4604990 d!1450563))

(declare-fun d!1450567 () Bool)

(declare-fun e!2872467 () Bool)

(assert (=> d!1450567 e!2872467))

(declare-fun res!1927051 () Bool)

(assert (=> d!1450567 (=> res!1927051 e!2872467)))

(declare-fun e!2872468 () Bool)

(assert (=> d!1450567 (= res!1927051 e!2872468)))

(declare-fun res!1927048 () Bool)

(assert (=> d!1450567 (=> (not res!1927048) (not e!2872468))))

(declare-fun lt!1762996 () Option!11416)

(assert (=> d!1450567 (= res!1927048 (isEmpty!28883 lt!1762996))))

(declare-fun e!2872469 () Option!11416)

(assert (=> d!1450567 (= lt!1762996 e!2872469)))

(declare-fun c!788881 () Bool)

(assert (=> d!1450567 (= c!788881 (and (is-Cons!51154 lt!1762921) (= (_1!29217 (h!57132 lt!1762921)) key!3287)))))

(assert (=> d!1450567 (noDuplicateKeys!1349 lt!1762921)))

(assert (=> d!1450567 (= (getPair!239 lt!1762921 key!3287) lt!1762996)))

(declare-fun b!4605120 () Bool)

(assert (=> b!4605120 (= e!2872469 (Some!11415 (h!57132 lt!1762921)))))

(declare-fun b!4605121 () Bool)

(declare-fun e!2872466 () Bool)

(assert (=> b!4605121 (= e!2872467 e!2872466)))

(declare-fun res!1927050 () Bool)

(assert (=> b!4605121 (=> (not res!1927050) (not e!2872466))))

(assert (=> b!4605121 (= res!1927050 (isDefined!8684 lt!1762996))))

(declare-fun b!4605122 () Bool)

(declare-fun e!2872465 () Option!11416)

(assert (=> b!4605122 (= e!2872465 None!11415)))

(declare-fun b!4605123 () Bool)

(declare-fun contains!14144 (List!51278 tuple2!51846) Bool)

(declare-fun get!16917 (Option!11416) tuple2!51846)

(assert (=> b!4605123 (= e!2872466 (contains!14144 lt!1762921 (get!16917 lt!1762996)))))

(declare-fun b!4605124 () Bool)

(assert (=> b!4605124 (= e!2872465 (getPair!239 (t!358272 lt!1762921) key!3287))))

(declare-fun b!4605125 () Bool)

(assert (=> b!4605125 (= e!2872469 e!2872465)))

(declare-fun c!788880 () Bool)

(assert (=> b!4605125 (= c!788880 (is-Cons!51154 lt!1762921))))

(declare-fun b!4605126 () Bool)

(assert (=> b!4605126 (= e!2872468 (not (containsKey!2213 lt!1762921 key!3287)))))

(declare-fun b!4605127 () Bool)

(declare-fun res!1927049 () Bool)

(assert (=> b!4605127 (=> (not res!1927049) (not e!2872466))))

(assert (=> b!4605127 (= res!1927049 (= (_1!29217 (get!16917 lt!1762996)) key!3287))))

(assert (= (and d!1450567 c!788881) b!4605120))

(assert (= (and d!1450567 (not c!788881)) b!4605125))

(assert (= (and b!4605125 c!788880) b!4605124))

(assert (= (and b!4605125 (not c!788880)) b!4605122))

(assert (= (and d!1450567 res!1927048) b!4605126))

(assert (= (and d!1450567 (not res!1927051)) b!4605121))

(assert (= (and b!4605121 res!1927050) b!4605127))

(assert (= (and b!4605127 res!1927049) b!4605123))

(declare-fun m!5434441 () Bool)

(assert (=> b!4605121 m!5434441))

(declare-fun m!5434443 () Bool)

(assert (=> d!1450567 m!5434443))

(declare-fun m!5434445 () Bool)

(assert (=> d!1450567 m!5434445))

(declare-fun m!5434447 () Bool)

(assert (=> b!4605124 m!5434447))

(declare-fun m!5434449 () Bool)

(assert (=> b!4605127 m!5434449))

(assert (=> b!4605123 m!5434449))

(assert (=> b!4605123 m!5434449))

(declare-fun m!5434451 () Bool)

(assert (=> b!4605123 m!5434451))

(declare-fun m!5434453 () Bool)

(assert (=> b!4605126 m!5434453))

(assert (=> b!4604990 d!1450567))

(declare-fun b!4605170 () Bool)

(declare-datatypes ((List!51282 0))(
  ( (Nil!51158) (Cons!51158 (h!57138 K!12523) (t!358276 List!51282)) )
))
(declare-fun e!2872499 () List!51282)

(declare-fun keys!17929 (ListMap!3975) List!51282)

(assert (=> b!4605170 (= e!2872499 (keys!17929 (extractMap!1409 (toList!4713 lm!1477))))))

(declare-fun b!4605171 () Bool)

(assert (=> b!4605171 false))

(declare-fun lt!1763018 () Unit!108925)

(declare-fun lt!1763017 () Unit!108925)

(assert (=> b!4605171 (= lt!1763018 lt!1763017)))

(declare-fun containsKey!2216 (List!51278 K!12523) Bool)

(assert (=> b!4605171 (containsKey!2216 (toList!4714 (extractMap!1409 (toList!4713 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!585 (List!51278 K!12523) Unit!108925)

(assert (=> b!4605171 (= lt!1763017 (lemmaInGetKeysListThenContainsKey!585 (toList!4714 (extractMap!1409 (toList!4713 lm!1477))) key!3287))))

(declare-fun e!2872500 () Unit!108925)

(declare-fun Unit!108934 () Unit!108925)

(assert (=> b!4605171 (= e!2872500 Unit!108934)))

(declare-fun b!4605172 () Bool)

(declare-fun e!2872501 () Bool)

(declare-fun contains!14145 (List!51282 K!12523) Bool)

(assert (=> b!4605172 (= e!2872501 (not (contains!14145 (keys!17929 (extractMap!1409 (toList!4713 lm!1477))) key!3287)))))

(declare-fun b!4605173 () Bool)

(declare-fun e!2872497 () Bool)

(assert (=> b!4605173 (= e!2872497 (contains!14145 (keys!17929 (extractMap!1409 (toList!4713 lm!1477))) key!3287))))

(declare-fun d!1450571 () Bool)

(declare-fun e!2872502 () Bool)

(assert (=> d!1450571 e!2872502))

(declare-fun res!1927070 () Bool)

(assert (=> d!1450571 (=> res!1927070 e!2872502)))

(assert (=> d!1450571 (= res!1927070 e!2872501)))

(declare-fun res!1927071 () Bool)

(assert (=> d!1450571 (=> (not res!1927071) (not e!2872501))))

(declare-fun lt!1763020 () Bool)

(assert (=> d!1450571 (= res!1927071 (not lt!1763020))))

(declare-fun lt!1763023 () Bool)

(assert (=> d!1450571 (= lt!1763020 lt!1763023)))

(declare-fun lt!1763016 () Unit!108925)

(declare-fun e!2872498 () Unit!108925)

(assert (=> d!1450571 (= lt!1763016 e!2872498)))

(declare-fun c!788896 () Bool)

(assert (=> d!1450571 (= c!788896 lt!1763023)))

(assert (=> d!1450571 (= lt!1763023 (containsKey!2216 (toList!4714 (extractMap!1409 (toList!4713 lm!1477))) key!3287))))

(assert (=> d!1450571 (= (contains!14140 (extractMap!1409 (toList!4713 lm!1477)) key!3287) lt!1763020)))

(declare-fun b!4605174 () Bool)

(assert (=> b!4605174 (= e!2872502 e!2872497)))

(declare-fun res!1927072 () Bool)

(assert (=> b!4605174 (=> (not res!1927072) (not e!2872497))))

(declare-datatypes ((Option!11419 0))(
  ( (None!11418) (Some!11418 (v!45444 V!12769)) )
))
(declare-fun isDefined!8687 (Option!11419) Bool)

(declare-fun getValueByKey!1337 (List!51278 K!12523) Option!11419)

(assert (=> b!4605174 (= res!1927072 (isDefined!8687 (getValueByKey!1337 (toList!4714 (extractMap!1409 (toList!4713 lm!1477))) key!3287)))))

(declare-fun bm!321283 () Bool)

(declare-fun call!321288 () Bool)

(assert (=> bm!321283 (= call!321288 (contains!14145 e!2872499 key!3287))))

(declare-fun c!788895 () Bool)

(assert (=> bm!321283 (= c!788895 c!788896)))

(declare-fun b!4605175 () Bool)

(declare-fun getKeysList!586 (List!51278) List!51282)

(assert (=> b!4605175 (= e!2872499 (getKeysList!586 (toList!4714 (extractMap!1409 (toList!4713 lm!1477)))))))

(declare-fun b!4605176 () Bool)

(declare-fun lt!1763021 () Unit!108925)

(assert (=> b!4605176 (= e!2872498 lt!1763021)))

(declare-fun lt!1763019 () Unit!108925)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1241 (List!51278 K!12523) Unit!108925)

(assert (=> b!4605176 (= lt!1763019 (lemmaContainsKeyImpliesGetValueByKeyDefined!1241 (toList!4714 (extractMap!1409 (toList!4713 lm!1477))) key!3287))))

(assert (=> b!4605176 (isDefined!8687 (getValueByKey!1337 (toList!4714 (extractMap!1409 (toList!4713 lm!1477))) key!3287))))

(declare-fun lt!1763022 () Unit!108925)

(assert (=> b!4605176 (= lt!1763022 lt!1763019)))

(declare-fun lemmaInListThenGetKeysListContains!582 (List!51278 K!12523) Unit!108925)

(assert (=> b!4605176 (= lt!1763021 (lemmaInListThenGetKeysListContains!582 (toList!4714 (extractMap!1409 (toList!4713 lm!1477))) key!3287))))

(assert (=> b!4605176 call!321288))

(declare-fun b!4605177 () Bool)

(assert (=> b!4605177 (= e!2872498 e!2872500)))

(declare-fun c!788894 () Bool)

(assert (=> b!4605177 (= c!788894 call!321288)))

(declare-fun b!4605178 () Bool)

(declare-fun Unit!108935 () Unit!108925)

(assert (=> b!4605178 (= e!2872500 Unit!108935)))

(assert (= (and d!1450571 c!788896) b!4605176))

(assert (= (and d!1450571 (not c!788896)) b!4605177))

(assert (= (and b!4605177 c!788894) b!4605171))

(assert (= (and b!4605177 (not c!788894)) b!4605178))

(assert (= (or b!4605176 b!4605177) bm!321283))

(assert (= (and bm!321283 c!788895) b!4605175))

(assert (= (and bm!321283 (not c!788895)) b!4605170))

(assert (= (and d!1450571 res!1927071) b!4605172))

(assert (= (and d!1450571 (not res!1927070)) b!4605174))

(assert (= (and b!4605174 res!1927072) b!4605173))

(declare-fun m!5434469 () Bool)

(assert (=> b!4605171 m!5434469))

(declare-fun m!5434471 () Bool)

(assert (=> b!4605171 m!5434471))

(declare-fun m!5434473 () Bool)

(assert (=> b!4605174 m!5434473))

(assert (=> b!4605174 m!5434473))

(declare-fun m!5434475 () Bool)

(assert (=> b!4605174 m!5434475))

(assert (=> d!1450571 m!5434469))

(declare-fun m!5434477 () Bool)

(assert (=> b!4605176 m!5434477))

(assert (=> b!4605176 m!5434473))

(assert (=> b!4605176 m!5434473))

(assert (=> b!4605176 m!5434475))

(declare-fun m!5434479 () Bool)

(assert (=> b!4605176 m!5434479))

(declare-fun m!5434481 () Bool)

(assert (=> bm!321283 m!5434481))

(assert (=> b!4605172 m!5434261))

(declare-fun m!5434483 () Bool)

(assert (=> b!4605172 m!5434483))

(assert (=> b!4605172 m!5434483))

(declare-fun m!5434485 () Bool)

(assert (=> b!4605172 m!5434485))

(assert (=> b!4605170 m!5434261))

(assert (=> b!4605170 m!5434483))

(assert (=> b!4605173 m!5434261))

(assert (=> b!4605173 m!5434483))

(assert (=> b!4605173 m!5434483))

(assert (=> b!4605173 m!5434485))

(declare-fun m!5434487 () Bool)

(assert (=> b!4605175 m!5434487))

(assert (=> b!4605001 d!1450571))

(declare-fun bs!1014227 () Bool)

(declare-fun d!1450575 () Bool)

(assert (= bs!1014227 (and d!1450575 start!460042)))

(declare-fun lambda!187374 () Int)

(assert (=> bs!1014227 (= lambda!187374 lambda!187357)))

(declare-fun bs!1014228 () Bool)

(assert (= bs!1014228 (and d!1450575 d!1450543)))

(assert (=> bs!1014228 (not (= lambda!187374 lambda!187369))))

(declare-fun lt!1763038 () ListMap!3975)

(declare-fun invariantList!1137 (List!51278) Bool)

(assert (=> d!1450575 (invariantList!1137 (toList!4714 lt!1763038))))

(declare-fun e!2872511 () ListMap!3975)

(assert (=> d!1450575 (= lt!1763038 e!2872511)))

(declare-fun c!788902 () Bool)

(assert (=> d!1450575 (= c!788902 (is-Cons!51155 (toList!4713 lm!1477)))))

(assert (=> d!1450575 (forall!10653 (toList!4713 lm!1477) lambda!187374)))

(assert (=> d!1450575 (= (extractMap!1409 (toList!4713 lm!1477)) lt!1763038)))

(declare-fun b!4605192 () Bool)

(declare-fun addToMapMapFromBucket!829 (List!51278 ListMap!3975) ListMap!3975)

(assert (=> b!4605192 (= e!2872511 (addToMapMapFromBucket!829 (_2!29218 (h!57133 (toList!4713 lm!1477))) (extractMap!1409 (t!358273 (toList!4713 lm!1477)))))))

(declare-fun b!4605193 () Bool)

(assert (=> b!4605193 (= e!2872511 (ListMap!3976 Nil!51154))))

(assert (= (and d!1450575 c!788902) b!4605192))

(assert (= (and d!1450575 (not c!788902)) b!4605193))

(declare-fun m!5434495 () Bool)

(assert (=> d!1450575 m!5434495))

(declare-fun m!5434497 () Bool)

(assert (=> d!1450575 m!5434497))

(declare-fun m!5434499 () Bool)

(assert (=> b!4605192 m!5434499))

(assert (=> b!4605192 m!5434499))

(declare-fun m!5434501 () Bool)

(assert (=> b!4605192 m!5434501))

(assert (=> b!4605001 d!1450575))

(declare-fun d!1450579 () Bool)

(assert (=> d!1450579 true))

(assert (=> d!1450579 true))

(declare-fun lambda!187378 () Int)

(declare-fun forall!10655 (List!51278 Int) Bool)

(assert (=> d!1450579 (= (allKeysSameHash!1205 newBucket!178 hash!344 hashF!1107) (forall!10655 newBucket!178 lambda!187378))))

(declare-fun bs!1014231 () Bool)

(assert (= bs!1014231 d!1450579))

(declare-fun m!5434505 () Bool)

(assert (=> bs!1014231 m!5434505))

(assert (=> b!4604999 d!1450579))

(declare-fun bs!1014236 () Bool)

(declare-fun d!1450583 () Bool)

(assert (= bs!1014236 (and d!1450583 start!460042)))

(declare-fun lambda!187382 () Int)

(assert (=> bs!1014236 (= lambda!187382 lambda!187357)))

(declare-fun bs!1014237 () Bool)

(assert (= bs!1014237 (and d!1450583 d!1450543)))

(assert (=> bs!1014237 (not (= lambda!187382 lambda!187369))))

(declare-fun bs!1014238 () Bool)

(assert (= bs!1014238 (and d!1450583 d!1450575)))

(assert (=> bs!1014238 (= lambda!187382 lambda!187374)))

(assert (=> d!1450583 (contains!14139 lm!1477 (hash!3274 hashF!1107 key!3287))))

(declare-fun lt!1763041 () Unit!108925)

(declare-fun choose!30933 (ListLongMap!3345 K!12523 Hashable!5748) Unit!108925)

(assert (=> d!1450583 (= lt!1763041 (choose!30933 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1450583 (forall!10653 (toList!4713 lm!1477) lambda!187382)))

(assert (=> d!1450583 (= (lemmaInGenMapThenLongMapContainsHash!423 lm!1477 key!3287 hashF!1107) lt!1763041)))

(declare-fun bs!1014239 () Bool)

(assert (= bs!1014239 d!1450583))

(assert (=> bs!1014239 m!5434313))

(assert (=> bs!1014239 m!5434313))

(declare-fun m!5434515 () Bool)

(assert (=> bs!1014239 m!5434515))

(declare-fun m!5434517 () Bool)

(assert (=> bs!1014239 m!5434517))

(declare-fun m!5434519 () Bool)

(assert (=> bs!1014239 m!5434519))

(assert (=> b!4604989 d!1450583))

(declare-fun d!1450591 () Bool)

(declare-fun lt!1763042 () Bool)

(assert (=> d!1450591 (= lt!1763042 (set.member lt!1762909 (content!8679 (toList!4713 lm!1477))))))

(declare-fun e!2872515 () Bool)

(assert (=> d!1450591 (= lt!1763042 e!2872515)))

(declare-fun res!1927078 () Bool)

(assert (=> d!1450591 (=> (not res!1927078) (not e!2872515))))

(assert (=> d!1450591 (= res!1927078 (is-Cons!51155 (toList!4713 lm!1477)))))

(assert (=> d!1450591 (= (contains!14138 (toList!4713 lm!1477) lt!1762909) lt!1763042)))

(declare-fun b!4605202 () Bool)

(declare-fun e!2872514 () Bool)

(assert (=> b!4605202 (= e!2872515 e!2872514)))

(declare-fun res!1927079 () Bool)

(assert (=> b!4605202 (=> res!1927079 e!2872514)))

(assert (=> b!4605202 (= res!1927079 (= (h!57133 (toList!4713 lm!1477)) lt!1762909))))

(declare-fun b!4605203 () Bool)

(assert (=> b!4605203 (= e!2872514 (contains!14138 (t!358273 (toList!4713 lm!1477)) lt!1762909))))

(assert (= (and d!1450591 res!1927078) b!4605202))

(assert (= (and b!4605202 (not res!1927079)) b!4605203))

(declare-fun m!5434521 () Bool)

(assert (=> d!1450591 m!5434521))

(declare-fun m!5434523 () Bool)

(assert (=> d!1450591 m!5434523))

(assert (=> b!4605203 m!5434311))

(assert (=> b!4604989 d!1450591))

(declare-fun d!1450593 () Bool)

(assert (=> d!1450593 (= (apply!12086 lm!1477 hash!344) (get!16916 (getValueByKey!1336 (toList!4713 lm!1477) hash!344)))))

(declare-fun bs!1014240 () Bool)

(assert (= bs!1014240 d!1450593))

(declare-fun m!5434525 () Bool)

(assert (=> bs!1014240 m!5434525))

(assert (=> bs!1014240 m!5434525))

(declare-fun m!5434527 () Bool)

(assert (=> bs!1014240 m!5434527))

(assert (=> b!4604989 d!1450593))

(declare-fun d!1450595 () Bool)

(assert (=> d!1450595 (dynLambda!21419 lambda!187357 lt!1762909)))

(declare-fun lt!1763043 () Unit!108925)

(assert (=> d!1450595 (= lt!1763043 (choose!30932 (toList!4713 lm!1477) lambda!187357 lt!1762909))))

(declare-fun e!2872516 () Bool)

(assert (=> d!1450595 e!2872516))

(declare-fun res!1927080 () Bool)

(assert (=> d!1450595 (=> (not res!1927080) (not e!2872516))))

(assert (=> d!1450595 (= res!1927080 (forall!10653 (toList!4713 lm!1477) lambda!187357))))

(assert (=> d!1450595 (= (forallContained!2902 (toList!4713 lm!1477) lambda!187357 lt!1762909) lt!1763043)))

(declare-fun b!4605204 () Bool)

(assert (=> b!4605204 (= e!2872516 (contains!14138 (toList!4713 lm!1477) lt!1762909))))

(assert (= (and d!1450595 res!1927080) b!4605204))

(declare-fun b_lambda!169927 () Bool)

(assert (=> (not b_lambda!169927) (not d!1450595)))

(declare-fun m!5434529 () Bool)

(assert (=> d!1450595 m!5434529))

(declare-fun m!5434531 () Bool)

(assert (=> d!1450595 m!5434531))

(assert (=> d!1450595 m!5434301))

(assert (=> b!4605204 m!5434269))

(assert (=> b!4604989 d!1450595))

(declare-fun d!1450597 () Bool)

(declare-fun e!2872521 () Bool)

(assert (=> d!1450597 e!2872521))

(declare-fun res!1927085 () Bool)

(assert (=> d!1450597 (=> res!1927085 e!2872521)))

(declare-fun lt!1763047 () Bool)

(assert (=> d!1450597 (= res!1927085 (not lt!1763047))))

(declare-fun lt!1763045 () Bool)

(assert (=> d!1450597 (= lt!1763047 lt!1763045)))

(declare-fun lt!1763046 () Unit!108925)

(declare-fun e!2872522 () Unit!108925)

(assert (=> d!1450597 (= lt!1763046 e!2872522)))

(declare-fun c!788903 () Bool)

(assert (=> d!1450597 (= c!788903 lt!1763045)))

(assert (=> d!1450597 (= lt!1763045 (containsKey!2215 (toList!4713 lm!1477) lt!1762916))))

(assert (=> d!1450597 (= (contains!14139 lm!1477 lt!1762916) lt!1763047)))

(declare-fun b!4605209 () Bool)

(declare-fun lt!1763044 () Unit!108925)

(assert (=> b!4605209 (= e!2872522 lt!1763044)))

(assert (=> b!4605209 (= lt!1763044 (lemmaContainsKeyImpliesGetValueByKeyDefined!1240 (toList!4713 lm!1477) lt!1762916))))

(assert (=> b!4605209 (isDefined!8686 (getValueByKey!1336 (toList!4713 lm!1477) lt!1762916))))

(declare-fun b!4605210 () Bool)

(declare-fun Unit!108936 () Unit!108925)

(assert (=> b!4605210 (= e!2872522 Unit!108936)))

(declare-fun b!4605211 () Bool)

(assert (=> b!4605211 (= e!2872521 (isDefined!8686 (getValueByKey!1336 (toList!4713 lm!1477) lt!1762916)))))

(assert (= (and d!1450597 c!788903) b!4605209))

(assert (= (and d!1450597 (not c!788903)) b!4605210))

(assert (= (and d!1450597 (not res!1927085)) b!4605211))

(declare-fun m!5434533 () Bool)

(assert (=> d!1450597 m!5434533))

(declare-fun m!5434535 () Bool)

(assert (=> b!4605209 m!5434535))

(declare-fun m!5434537 () Bool)

(assert (=> b!4605209 m!5434537))

(assert (=> b!4605209 m!5434537))

(declare-fun m!5434539 () Bool)

(assert (=> b!4605209 m!5434539))

(assert (=> b!4605211 m!5434537))

(assert (=> b!4605211 m!5434537))

(assert (=> b!4605211 m!5434539))

(assert (=> b!4604989 d!1450597))

(declare-fun d!1450599 () Bool)

(assert (=> d!1450599 (contains!14138 (toList!4713 lm!1477) (tuple2!51849 hash!344 lt!1762913))))

(declare-fun lt!1763050 () Unit!108925)

(declare-fun choose!30934 (List!51279 (_ BitVec 64) List!51278) Unit!108925)

(assert (=> d!1450599 (= lt!1763050 (choose!30934 (toList!4713 lm!1477) hash!344 lt!1762913))))

(declare-fun e!2872527 () Bool)

(assert (=> d!1450599 e!2872527))

(declare-fun res!1927090 () Bool)

(assert (=> d!1450599 (=> (not res!1927090) (not e!2872527))))

(declare-fun isStrictlySorted!553 (List!51279) Bool)

(assert (=> d!1450599 (= res!1927090 (isStrictlySorted!553 (toList!4713 lm!1477)))))

(assert (=> d!1450599 (= (lemmaGetValueByKeyImpliesContainsTuple!859 (toList!4713 lm!1477) hash!344 lt!1762913) lt!1763050)))

(declare-fun b!4605216 () Bool)

(assert (=> b!4605216 (= e!2872527 (= (getValueByKey!1336 (toList!4713 lm!1477) hash!344) (Some!11417 lt!1762913)))))

(assert (= (and d!1450599 res!1927090) b!4605216))

(declare-fun m!5434543 () Bool)

(assert (=> d!1450599 m!5434543))

(declare-fun m!5434545 () Bool)

(assert (=> d!1450599 m!5434545))

(declare-fun m!5434547 () Bool)

(assert (=> d!1450599 m!5434547))

(assert (=> b!4605216 m!5434525))

(assert (=> b!4604989 d!1450599))

(declare-fun d!1450603 () Bool)

(declare-fun lt!1763053 () List!51278)

(assert (=> d!1450603 (not (containsKey!2213 lt!1763053 key!3287))))

(declare-fun e!2872538 () List!51278)

(assert (=> d!1450603 (= lt!1763053 e!2872538)))

(declare-fun c!788908 () Bool)

(assert (=> d!1450603 (= c!788908 (and (is-Cons!51154 lt!1762913) (= (_1!29217 (h!57132 lt!1762913)) key!3287)))))

(assert (=> d!1450603 (noDuplicateKeys!1349 lt!1762913)))

(assert (=> d!1450603 (= (removePairForKey!974 lt!1762913 key!3287) lt!1763053)))

(declare-fun b!4605232 () Bool)

(declare-fun e!2872539 () List!51278)

(assert (=> b!4605232 (= e!2872538 e!2872539)))

(declare-fun c!788909 () Bool)

(assert (=> b!4605232 (= c!788909 (is-Cons!51154 lt!1762913))))

(declare-fun b!4605233 () Bool)

(assert (=> b!4605233 (= e!2872539 (Cons!51154 (h!57132 lt!1762913) (removePairForKey!974 (t!358272 lt!1762913) key!3287)))))

(declare-fun b!4605234 () Bool)

(assert (=> b!4605234 (= e!2872539 Nil!51154)))

(declare-fun b!4605231 () Bool)

(assert (=> b!4605231 (= e!2872538 (t!358272 lt!1762913))))

(assert (= (and d!1450603 c!788908) b!4605231))

(assert (= (and d!1450603 (not c!788908)) b!4605232))

(assert (= (and b!4605232 c!788909) b!4605233))

(assert (= (and b!4605232 (not c!788909)) b!4605234))

(declare-fun m!5434553 () Bool)

(assert (=> d!1450603 m!5434553))

(declare-fun m!5434555 () Bool)

(assert (=> d!1450603 m!5434555))

(declare-fun m!5434557 () Bool)

(assert (=> b!4605233 m!5434557))

(assert (=> b!4604989 d!1450603))

(declare-fun d!1450607 () Bool)

(declare-fun res!1927101 () Bool)

(declare-fun e!2872544 () Bool)

(assert (=> d!1450607 (=> res!1927101 e!2872544)))

(assert (=> d!1450607 (= res!1927101 (not (is-Cons!51154 newBucket!178)))))

(assert (=> d!1450607 (= (noDuplicateKeys!1349 newBucket!178) e!2872544)))

(declare-fun b!4605239 () Bool)

(declare-fun e!2872545 () Bool)

(assert (=> b!4605239 (= e!2872544 e!2872545)))

(declare-fun res!1927102 () Bool)

(assert (=> b!4605239 (=> (not res!1927102) (not e!2872545))))

(assert (=> b!4605239 (= res!1927102 (not (containsKey!2213 (t!358272 newBucket!178) (_1!29217 (h!57132 newBucket!178)))))))

(declare-fun b!4605240 () Bool)

(assert (=> b!4605240 (= e!2872545 (noDuplicateKeys!1349 (t!358272 newBucket!178)))))

(assert (= (and d!1450607 (not res!1927101)) b!4605239))

(assert (= (and b!4605239 res!1927102) b!4605240))

(declare-fun m!5434559 () Bool)

(assert (=> b!4605239 m!5434559))

(declare-fun m!5434561 () Bool)

(assert (=> b!4605240 m!5434561))

(assert (=> b!4604992 d!1450607))

(declare-fun bs!1014241 () Bool)

(declare-fun d!1450609 () Bool)

(assert (= bs!1014241 (and d!1450609 start!460042)))

(declare-fun lambda!187385 () Int)

(assert (=> bs!1014241 (not (= lambda!187385 lambda!187357))))

(declare-fun bs!1014242 () Bool)

(assert (= bs!1014242 (and d!1450609 d!1450543)))

(assert (=> bs!1014242 (= lambda!187385 lambda!187369)))

(declare-fun bs!1014243 () Bool)

(assert (= bs!1014243 (and d!1450609 d!1450575)))

(assert (=> bs!1014243 (not (= lambda!187385 lambda!187374))))

(declare-fun bs!1014244 () Bool)

(assert (= bs!1014244 (and d!1450609 d!1450583)))

(assert (=> bs!1014244 (not (= lambda!187385 lambda!187382))))

(assert (=> d!1450609 true))

(assert (=> d!1450609 (= (allKeysSameHashInMap!1460 lm!1477 hashF!1107) (forall!10653 (toList!4713 lm!1477) lambda!187385))))

(declare-fun bs!1014245 () Bool)

(assert (= bs!1014245 d!1450609))

(declare-fun m!5434563 () Bool)

(assert (=> bs!1014245 m!5434563))

(assert (=> b!4605003 d!1450609))

(declare-fun d!1450611 () Bool)

(declare-fun hash!3276 (Hashable!5748 K!12523) (_ BitVec 64))

(assert (=> d!1450611 (= (hash!3274 hashF!1107 key!3287) (hash!3276 hashF!1107 key!3287))))

(declare-fun bs!1014247 () Bool)

(assert (= bs!1014247 d!1450611))

(declare-fun m!5434567 () Bool)

(assert (=> bs!1014247 m!5434567))

(assert (=> b!4604993 d!1450611))

(declare-fun bs!1014250 () Bool)

(declare-fun d!1450613 () Bool)

(assert (= bs!1014250 (and d!1450613 start!460042)))

(declare-fun lambda!187389 () Int)

(assert (=> bs!1014250 (= lambda!187389 lambda!187357)))

(declare-fun bs!1014251 () Bool)

(assert (= bs!1014251 (and d!1450613 d!1450609)))

(assert (=> bs!1014251 (not (= lambda!187389 lambda!187385))))

(declare-fun bs!1014252 () Bool)

(assert (= bs!1014252 (and d!1450613 d!1450575)))

(assert (=> bs!1014252 (= lambda!187389 lambda!187374)))

(declare-fun bs!1014253 () Bool)

(assert (= bs!1014253 (and d!1450613 d!1450583)))

(assert (=> bs!1014253 (= lambda!187389 lambda!187382)))

(declare-fun bs!1014254 () Bool)

(assert (= bs!1014254 (and d!1450613 d!1450543)))

(assert (=> bs!1014254 (not (= lambda!187389 lambda!187369))))

(assert (=> d!1450613 (not (contains!14140 (extractMap!1409 (toList!4713 lm!1477)) key!3287))))

(declare-fun lt!1763062 () Unit!108925)

(declare-fun choose!30935 (ListLongMap!3345 K!12523 Hashable!5748) Unit!108925)

(assert (=> d!1450613 (= lt!1763062 (choose!30935 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1450613 (forall!10653 (toList!4713 lm!1477) lambda!187389)))

(assert (=> d!1450613 (= (lemmaNotInItsHashBucketThenNotInMap!313 lm!1477 key!3287 hashF!1107) lt!1763062)))

(declare-fun bs!1014255 () Bool)

(assert (= bs!1014255 d!1450613))

(assert (=> bs!1014255 m!5434261))

(assert (=> bs!1014255 m!5434261))

(assert (=> bs!1014255 m!5434263))

(declare-fun m!5434581 () Bool)

(assert (=> bs!1014255 m!5434581))

(declare-fun m!5434583 () Bool)

(assert (=> bs!1014255 m!5434583))

(assert (=> b!4604991 d!1450613))

(declare-fun d!1450623 () Bool)

(declare-fun res!1927108 () Bool)

(declare-fun e!2872558 () Bool)

(assert (=> d!1450623 (=> res!1927108 e!2872558)))

(assert (=> d!1450623 (= res!1927108 (and (is-Cons!51154 lt!1762913) (= (_1!29217 (h!57132 lt!1762913)) key!3287)))))

(assert (=> d!1450623 (= (containsKey!2213 lt!1762913 key!3287) e!2872558)))

(declare-fun b!4605264 () Bool)

(declare-fun e!2872559 () Bool)

(assert (=> b!4605264 (= e!2872558 e!2872559)))

(declare-fun res!1927109 () Bool)

(assert (=> b!4605264 (=> (not res!1927109) (not e!2872559))))

(assert (=> b!4605264 (= res!1927109 (is-Cons!51154 lt!1762913))))

(declare-fun b!4605265 () Bool)

(assert (=> b!4605265 (= e!2872559 (containsKey!2213 (t!358272 lt!1762913) key!3287))))

(assert (= (and d!1450623 (not res!1927108)) b!4605264))

(assert (= (and b!4605264 res!1927109) b!4605265))

(declare-fun m!5434591 () Bool)

(assert (=> b!4605265 m!5434591))

(assert (=> b!4605002 d!1450623))

(declare-fun d!1450627 () Bool)

(declare-fun lt!1763064 () Bool)

(assert (=> d!1450627 (= lt!1763064 (set.member lt!1762909 (content!8679 (t!358273 (toList!4713 lm!1477)))))))

(declare-fun e!2872561 () Bool)

(assert (=> d!1450627 (= lt!1763064 e!2872561)))

(declare-fun res!1927110 () Bool)

(assert (=> d!1450627 (=> (not res!1927110) (not e!2872561))))

(assert (=> d!1450627 (= res!1927110 (is-Cons!51155 (t!358273 (toList!4713 lm!1477))))))

(assert (=> d!1450627 (= (contains!14138 (t!358273 (toList!4713 lm!1477)) lt!1762909) lt!1763064)))

(declare-fun b!4605266 () Bool)

(declare-fun e!2872560 () Bool)

(assert (=> b!4605266 (= e!2872561 e!2872560)))

(declare-fun res!1927111 () Bool)

(assert (=> b!4605266 (=> res!1927111 e!2872560)))

(assert (=> b!4605266 (= res!1927111 (= (h!57133 (t!358273 (toList!4713 lm!1477))) lt!1762909))))

(declare-fun b!4605267 () Bool)

(assert (=> b!4605267 (= e!2872560 (contains!14138 (t!358273 (t!358273 (toList!4713 lm!1477))) lt!1762909))))

(assert (= (and d!1450627 res!1927110) b!4605266))

(assert (= (and b!4605266 (not res!1927111)) b!4605267))

(declare-fun m!5434593 () Bool)

(assert (=> d!1450627 m!5434593))

(declare-fun m!5434595 () Bool)

(assert (=> d!1450627 m!5434595))

(declare-fun m!5434597 () Bool)

(assert (=> b!4605267 m!5434597))

(assert (=> b!4604985 d!1450627))

(declare-fun d!1450629 () Bool)

(declare-fun e!2872562 () Bool)

(assert (=> d!1450629 e!2872562))

(declare-fun res!1927112 () Bool)

(assert (=> d!1450629 (=> res!1927112 e!2872562)))

(declare-fun lt!1763068 () Bool)

(assert (=> d!1450629 (= res!1927112 (not lt!1763068))))

(declare-fun lt!1763066 () Bool)

(assert (=> d!1450629 (= lt!1763068 lt!1763066)))

(declare-fun lt!1763067 () Unit!108925)

(declare-fun e!2872563 () Unit!108925)

(assert (=> d!1450629 (= lt!1763067 e!2872563)))

(declare-fun c!788917 () Bool)

(assert (=> d!1450629 (= c!788917 lt!1763066)))

(assert (=> d!1450629 (= lt!1763066 (containsKey!2215 (toList!4713 lt!1762914) hash!344))))

(assert (=> d!1450629 (= (contains!14139 lt!1762914 hash!344) lt!1763068)))

(declare-fun b!4605268 () Bool)

(declare-fun lt!1763065 () Unit!108925)

(assert (=> b!4605268 (= e!2872563 lt!1763065)))

(assert (=> b!4605268 (= lt!1763065 (lemmaContainsKeyImpliesGetValueByKeyDefined!1240 (toList!4713 lt!1762914) hash!344))))

(assert (=> b!4605268 (isDefined!8686 (getValueByKey!1336 (toList!4713 lt!1762914) hash!344))))

(declare-fun b!4605269 () Bool)

(declare-fun Unit!108937 () Unit!108925)

(assert (=> b!4605269 (= e!2872563 Unit!108937)))

(declare-fun b!4605270 () Bool)

(assert (=> b!4605270 (= e!2872562 (isDefined!8686 (getValueByKey!1336 (toList!4713 lt!1762914) hash!344)))))

(assert (= (and d!1450629 c!788917) b!4605268))

(assert (= (and d!1450629 (not c!788917)) b!4605269))

(assert (= (and d!1450629 (not res!1927112)) b!4605270))

(declare-fun m!5434599 () Bool)

(assert (=> d!1450629 m!5434599))

(declare-fun m!5434601 () Bool)

(assert (=> b!4605268 m!5434601))

(assert (=> b!4605268 m!5434385))

(assert (=> b!4605268 m!5434385))

(declare-fun m!5434603 () Bool)

(assert (=> b!4605268 m!5434603))

(assert (=> b!4605270 m!5434385))

(assert (=> b!4605270 m!5434385))

(assert (=> b!4605270 m!5434603))

(assert (=> b!4604994 d!1450629))

(declare-fun d!1450631 () Bool)

(declare-fun tail!7998 (List!51279) List!51279)

(assert (=> d!1450631 (= (tail!7996 lm!1477) (ListLongMap!3346 (tail!7998 (toList!4713 lm!1477))))))

(declare-fun bs!1014256 () Bool)

(assert (= bs!1014256 d!1450631))

(declare-fun m!5434605 () Bool)

(assert (=> bs!1014256 m!5434605))

(assert (=> b!4604994 d!1450631))

(declare-fun d!1450633 () Bool)

(declare-fun res!1927113 () Bool)

(declare-fun e!2872564 () Bool)

(assert (=> d!1450633 (=> res!1927113 e!2872564)))

(assert (=> d!1450633 (= res!1927113 (is-Nil!51155 (toList!4713 lm!1477)))))

(assert (=> d!1450633 (= (forall!10653 (toList!4713 lm!1477) lambda!187357) e!2872564)))

(declare-fun b!4605271 () Bool)

(declare-fun e!2872565 () Bool)

(assert (=> b!4605271 (= e!2872564 e!2872565)))

(declare-fun res!1927114 () Bool)

(assert (=> b!4605271 (=> (not res!1927114) (not e!2872565))))

(assert (=> b!4605271 (= res!1927114 (dynLambda!21419 lambda!187357 (h!57133 (toList!4713 lm!1477))))))

(declare-fun b!4605272 () Bool)

(assert (=> b!4605272 (= e!2872565 (forall!10653 (t!358273 (toList!4713 lm!1477)) lambda!187357))))

(assert (= (and d!1450633 (not res!1927113)) b!4605271))

(assert (= (and b!4605271 res!1927114) b!4605272))

(declare-fun b_lambda!169929 () Bool)

(assert (=> (not b_lambda!169929) (not b!4605271)))

(declare-fun m!5434607 () Bool)

(assert (=> b!4605271 m!5434607))

(declare-fun m!5434609 () Bool)

(assert (=> b!4605272 m!5434609))

(assert (=> start!460042 d!1450633))

(declare-fun d!1450635 () Bool)

(assert (=> d!1450635 (= (inv!66708 lm!1477) (isStrictlySorted!553 (toList!4713 lm!1477)))))

(declare-fun bs!1014257 () Bool)

(assert (= bs!1014257 d!1450635))

(assert (=> bs!1014257 m!5434547))

(assert (=> start!460042 d!1450635))

(declare-fun b!4605277 () Bool)

(declare-fun e!2872568 () Bool)

(declare-fun tp!1340780 () Bool)

(declare-fun tp!1340781 () Bool)

(assert (=> b!4605277 (= e!2872568 (and tp!1340780 tp!1340781))))

(assert (=> b!4604986 (= tp!1340768 e!2872568)))

(assert (= (and b!4604986 (is-Cons!51155 (toList!4713 lm!1477))) b!4605277))

(declare-fun tp!1340784 () Bool)

(declare-fun b!4605282 () Bool)

(declare-fun e!2872571 () Bool)

(assert (=> b!4605282 (= e!2872571 (and tp_is_empty!28689 tp_is_empty!28691 tp!1340784))))

(assert (=> b!4604988 (= tp!1340769 e!2872571)))

(assert (= (and b!4604988 (is-Cons!51154 (t!358272 newBucket!178))) b!4605282))

(declare-fun b_lambda!169931 () Bool)

(assert (= b_lambda!169923 (or start!460042 b_lambda!169931)))

(declare-fun bs!1014258 () Bool)

(declare-fun d!1450637 () Bool)

(assert (= bs!1014258 (and d!1450637 start!460042)))

(assert (=> bs!1014258 (= (dynLambda!21419 lambda!187357 lt!1762920) (noDuplicateKeys!1349 (_2!29218 lt!1762920)))))

(declare-fun m!5434611 () Bool)

(assert (=> bs!1014258 m!5434611))

(assert (=> d!1450555 d!1450637))

(declare-fun b_lambda!169933 () Bool)

(assert (= b_lambda!169927 (or start!460042 b_lambda!169933)))

(declare-fun bs!1014259 () Bool)

(declare-fun d!1450639 () Bool)

(assert (= bs!1014259 (and d!1450639 start!460042)))

(assert (=> bs!1014259 (= (dynLambda!21419 lambda!187357 lt!1762909) (noDuplicateKeys!1349 (_2!29218 lt!1762909)))))

(declare-fun m!5434613 () Bool)

(assert (=> bs!1014259 m!5434613))

(assert (=> d!1450595 d!1450639))

(declare-fun b_lambda!169935 () Bool)

(assert (= b_lambda!169929 (or start!460042 b_lambda!169935)))

(declare-fun bs!1014260 () Bool)

(declare-fun d!1450641 () Bool)

(assert (= bs!1014260 (and d!1450641 start!460042)))

(assert (=> bs!1014260 (= (dynLambda!21419 lambda!187357 (h!57133 (toList!4713 lm!1477))) (noDuplicateKeys!1349 (_2!29218 (h!57133 (toList!4713 lm!1477)))))))

(declare-fun m!5434615 () Bool)

(assert (=> bs!1014260 m!5434615))

(assert (=> b!4605271 d!1450641))

(declare-fun b_lambda!169937 () Bool)

(assert (= b_lambda!169921 (or start!460042 b_lambda!169937)))

(declare-fun bs!1014261 () Bool)

(declare-fun d!1450643 () Bool)

(assert (= bs!1014261 (and d!1450643 start!460042)))

(assert (=> bs!1014261 (= (dynLambda!21419 lambda!187357 (h!57133 (toList!4713 lt!1762914))) (noDuplicateKeys!1349 (_2!29218 (h!57133 (toList!4713 lt!1762914)))))))

(declare-fun m!5434617 () Bool)

(assert (=> bs!1014261 m!5434617))

(assert (=> b!4605086 d!1450643))

(push 1)

(assert (not d!1450599))

(assert (not b!4605265))

(assert tp_is_empty!28691)

(assert (not b!4605277))

(assert (not d!1450567))

(assert (not b!4605216))

(assert (not b!4605081))

(assert (not b!4605170))

(assert (not d!1450543))

(assert (not b!4605097))

(assert (not bs!1014258))

(assert (not bs!1014259))

(assert (not b!4605121))

(assert (not d!1450597))

(assert (not d!1450553))

(assert (not d!1450593))

(assert (not d!1450545))

(assert (not b!4605087))

(assert (not d!1450635))

(assert (not b!4605171))

(assert (not b!4605240))

(assert (not b!4605172))

(assert (not b_lambda!169933))

(assert (not b!4605282))

(assert tp_is_empty!28689)

(assert (not b!4605270))

(assert (not d!1450555))

(assert (not b!4605272))

(assert (not b!4605268))

(assert (not b!4605211))

(assert (not d!1450571))

(assert (not d!1450627))

(assert (not b_lambda!169937))

(assert (not b!4605267))

(assert (not b!4605174))

(assert (not b!4605176))

(assert (not bs!1014260))

(assert (not b_lambda!169931))

(assert (not b!4605203))

(assert (not b_lambda!169935))

(assert (not b!4605127))

(assert (not bs!1014261))

(assert (not b!4605239))

(assert (not b!4605175))

(assert (not bm!321283))

(assert (not b!4605103))

(assert (not d!1450613))

(assert (not b!4605192))

(assert (not b!4605126))

(assert (not d!1450541))

(assert (not d!1450579))

(assert (not b!4605233))

(assert (not b!4605209))

(assert (not d!1450603))

(assert (not d!1450561))

(assert (not d!1450583))

(assert (not d!1450595))

(assert (not b!4605124))

(assert (not d!1450629))

(assert (not d!1450559))

(assert (not d!1450563))

(assert (not d!1450591))

(assert (not b!4605173))

(assert (not d!1450611))

(assert (not d!1450631))

(assert (not b!4605079))

(assert (not b!4605123))

(assert (not d!1450575))

(assert (not b!4605204))

(assert (not d!1450609))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

