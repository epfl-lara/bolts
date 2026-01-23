; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498408 () Bool)

(assert start!498408)

(declare-fun b!4816324 () Bool)

(declare-fun res!2048845 () Bool)

(declare-fun e!3009122 () Bool)

(assert (=> b!4816324 (=> res!2048845 e!3009122)))

(declare-datatypes ((K!16422 0))(
  ( (K!16423 (val!21443 Int)) )
))
(declare-datatypes ((V!16668 0))(
  ( (V!16669 (val!21444 Int)) )
))
(declare-datatypes ((tuple2!57822 0))(
  ( (tuple2!57823 (_1!32205 K!16422) (_2!32205 V!16668)) )
))
(declare-datatypes ((List!54888 0))(
  ( (Nil!54764) (Cons!54764 (h!61196 tuple2!57822) (t!362384 List!54888)) )
))
(declare-datatypes ((tuple2!57824 0))(
  ( (tuple2!57825 (_1!32206 (_ BitVec 64)) (_2!32206 List!54888)) )
))
(declare-datatypes ((List!54889 0))(
  ( (Nil!54765) (Cons!54765 (h!61197 tuple2!57824) (t!362385 List!54889)) )
))
(declare-datatypes ((ListLongMap!5809 0))(
  ( (ListLongMap!5810 (toList!7329 List!54889)) )
))
(declare-fun lm!2251 () ListLongMap!5809)

(declare-fun lambda!234595 () Int)

(declare-fun forall!12479 (List!54889 Int) Bool)

(assert (=> b!4816324 (= res!2048845 (not (forall!12479 (toList!7329 lm!2251) lambda!234595)))))

(declare-fun b!4816325 () Bool)

(declare-fun e!3009123 () Bool)

(declare-fun tp!1361924 () Bool)

(assert (=> b!4816325 (= e!3009123 tp!1361924)))

(declare-fun b!4816326 () Bool)

(declare-fun lt!1967030 () List!54888)

(declare-fun key!5322 () K!16422)

(declare-fun containsKey!4242 (List!54888 K!16422) Bool)

(assert (=> b!4816326 (= e!3009122 (not (containsKey!4242 lt!1967030 key!5322)))))

(declare-fun res!2048843 () Bool)

(declare-fun e!3009124 () Bool)

(assert (=> start!498408 (=> (not res!2048843) (not e!3009124))))

(assert (=> start!498408 (= res!2048843 (forall!12479 (toList!7329 lm!2251) lambda!234595))))

(assert (=> start!498408 e!3009124))

(declare-fun inv!70323 (ListLongMap!5809) Bool)

(assert (=> start!498408 (and (inv!70323 lm!2251) e!3009123)))

(assert (=> start!498408 true))

(declare-fun tp_is_empty!34219 () Bool)

(assert (=> start!498408 tp_is_empty!34219))

(declare-fun b!4816327 () Bool)

(declare-fun res!2048846 () Bool)

(assert (=> b!4816327 (=> (not res!2048846) (not e!3009124))))

(declare-datatypes ((Hashable!7173 0))(
  ( (HashableExt!7172 (__x!33448 Int)) )
))
(declare-fun hashF!1486 () Hashable!7173)

(declare-fun allKeysSameHashInMap!2489 (ListLongMap!5809 Hashable!7173) Bool)

(assert (=> b!4816327 (= res!2048846 (allKeysSameHashInMap!2489 lm!2251 hashF!1486))))

(declare-fun b!4816328 () Bool)

(assert (=> b!4816328 (= e!3009124 (not e!3009122))))

(declare-fun res!2048842 () Bool)

(assert (=> b!4816328 (=> res!2048842 e!3009122)))

(declare-datatypes ((Option!13426 0))(
  ( (None!13425) (Some!13425 (v!49078 tuple2!57822)) )
))
(declare-fun isEmpty!29593 (Option!13426) Bool)

(declare-fun getPair!1011 (List!54888 K!16422) Option!13426)

(assert (=> b!4816328 (= res!2048842 (not (isEmpty!29593 (getPair!1011 lt!1967030 key!5322))))))

(declare-fun lt!1967026 () tuple2!57824)

(declare-datatypes ((Unit!141967 0))(
  ( (Unit!141968) )
))
(declare-fun lt!1967028 () Unit!141967)

(declare-fun forallContained!4339 (List!54889 Int tuple2!57824) Unit!141967)

(assert (=> b!4816328 (= lt!1967028 (forallContained!4339 (toList!7329 lm!2251) lambda!234595 lt!1967026))))

(declare-fun contains!18583 (List!54889 tuple2!57824) Bool)

(assert (=> b!4816328 (contains!18583 (toList!7329 lm!2251) lt!1967026)))

(declare-fun lt!1967027 () (_ BitVec 64))

(assert (=> b!4816328 (= lt!1967026 (tuple2!57825 lt!1967027 lt!1967030))))

(declare-fun lt!1967025 () Unit!141967)

(declare-fun lemmaGetValueImpliesTupleContained!682 (ListLongMap!5809 (_ BitVec 64) List!54888) Unit!141967)

(assert (=> b!4816328 (= lt!1967025 (lemmaGetValueImpliesTupleContained!682 lm!2251 lt!1967027 lt!1967030))))

(declare-fun apply!13276 (ListLongMap!5809 (_ BitVec 64)) List!54888)

(assert (=> b!4816328 (= lt!1967030 (apply!13276 lm!2251 lt!1967027))))

(declare-fun contains!18584 (ListLongMap!5809 (_ BitVec 64)) Bool)

(assert (=> b!4816328 (contains!18584 lm!2251 lt!1967027)))

(declare-fun hash!5244 (Hashable!7173 K!16422) (_ BitVec 64))

(assert (=> b!4816328 (= lt!1967027 (hash!5244 hashF!1486 key!5322))))

(declare-fun lt!1967029 () Unit!141967)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1109 (ListLongMap!5809 K!16422 Hashable!7173) Unit!141967)

(assert (=> b!4816328 (= lt!1967029 (lemmaInGenMapThenLongMapContainsHash!1109 lm!2251 key!5322 hashF!1486))))

(declare-fun b!4816329 () Bool)

(declare-fun res!2048844 () Bool)

(assert (=> b!4816329 (=> (not res!2048844) (not e!3009124))))

(declare-datatypes ((ListMap!6743 0))(
  ( (ListMap!6744 (toList!7330 List!54888)) )
))
(declare-fun contains!18585 (ListMap!6743 K!16422) Bool)

(declare-fun extractMap!2623 (List!54889) ListMap!6743)

(assert (=> b!4816329 (= res!2048844 (contains!18585 (extractMap!2623 (toList!7329 lm!2251)) key!5322))))

(assert (= (and start!498408 res!2048843) b!4816327))

(assert (= (and b!4816327 res!2048846) b!4816329))

(assert (= (and b!4816329 res!2048844) b!4816328))

(assert (= (and b!4816328 (not res!2048842)) b!4816324))

(assert (= (and b!4816324 (not res!2048845)) b!4816326))

(assert (= start!498408 b!4816325))

(declare-fun m!5802638 () Bool)

(assert (=> b!4816328 m!5802638))

(declare-fun m!5802640 () Bool)

(assert (=> b!4816328 m!5802640))

(declare-fun m!5802642 () Bool)

(assert (=> b!4816328 m!5802642))

(declare-fun m!5802644 () Bool)

(assert (=> b!4816328 m!5802644))

(declare-fun m!5802646 () Bool)

(assert (=> b!4816328 m!5802646))

(assert (=> b!4816328 m!5802638))

(declare-fun m!5802648 () Bool)

(assert (=> b!4816328 m!5802648))

(declare-fun m!5802650 () Bool)

(assert (=> b!4816328 m!5802650))

(declare-fun m!5802652 () Bool)

(assert (=> b!4816328 m!5802652))

(declare-fun m!5802654 () Bool)

(assert (=> b!4816328 m!5802654))

(declare-fun m!5802656 () Bool)

(assert (=> b!4816324 m!5802656))

(declare-fun m!5802658 () Bool)

(assert (=> b!4816326 m!5802658))

(assert (=> start!498408 m!5802656))

(declare-fun m!5802660 () Bool)

(assert (=> start!498408 m!5802660))

(declare-fun m!5802662 () Bool)

(assert (=> b!4816327 m!5802662))

(declare-fun m!5802664 () Bool)

(assert (=> b!4816329 m!5802664))

(assert (=> b!4816329 m!5802664))

(declare-fun m!5802666 () Bool)

(assert (=> b!4816329 m!5802666))

(push 1)

(assert (not b!4816324))

(assert (not b!4816325))

(assert (not start!498408))

(assert (not b!4816327))

(assert (not b!4816329))

(assert (not b!4816326))

(assert (not b!4816328))

(assert tp_is_empty!34219)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1541456 () Bool)

(declare-fun res!2048866 () Bool)

(declare-fun e!3009138 () Bool)

(assert (=> d!1541456 (=> res!2048866 e!3009138)))

(assert (=> d!1541456 (= res!2048866 (is-Nil!54765 (toList!7329 lm!2251)))))

(assert (=> d!1541456 (= (forall!12479 (toList!7329 lm!2251) lambda!234595) e!3009138)))

(declare-fun b!4816352 () Bool)

(declare-fun e!3009139 () Bool)

(assert (=> b!4816352 (= e!3009138 e!3009139)))

(declare-fun res!2048867 () Bool)

(assert (=> b!4816352 (=> (not res!2048867) (not e!3009139))))

(declare-fun dynLambda!22163 (Int tuple2!57824) Bool)

(assert (=> b!4816352 (= res!2048867 (dynLambda!22163 lambda!234595 (h!61197 (toList!7329 lm!2251))))))

(declare-fun b!4816353 () Bool)

(assert (=> b!4816353 (= e!3009139 (forall!12479 (t!362385 (toList!7329 lm!2251)) lambda!234595))))

(assert (= (and d!1541456 (not res!2048866)) b!4816352))

(assert (= (and b!4816352 res!2048867) b!4816353))

(declare-fun b_lambda!188449 () Bool)

(assert (=> (not b_lambda!188449) (not b!4816352)))

(declare-fun m!5802698 () Bool)

(assert (=> b!4816352 m!5802698))

(declare-fun m!5802700 () Bool)

(assert (=> b!4816353 m!5802700))

(assert (=> b!4816324 d!1541456))

(declare-fun b!4816378 () Bool)

(declare-fun e!3009162 () Unit!141967)

(declare-fun lt!1967072 () Unit!141967)

(assert (=> b!4816378 (= e!3009162 lt!1967072)))

(declare-fun lt!1967070 () Unit!141967)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2349 (List!54888 K!16422) Unit!141967)

(assert (=> b!4816378 (= lt!1967070 (lemmaContainsKeyImpliesGetValueByKeyDefined!2349 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) key!5322))))

(declare-datatypes ((Option!13428 0))(
  ( (None!13427) (Some!13427 (v!49082 V!16668)) )
))
(declare-fun isDefined!10546 (Option!13428) Bool)

(declare-fun getValueByKey!2563 (List!54888 K!16422) Option!13428)

(assert (=> b!4816378 (isDefined!10546 (getValueByKey!2563 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) key!5322))))

(declare-fun lt!1967075 () Unit!141967)

(assert (=> b!4816378 (= lt!1967075 lt!1967070)))

(declare-fun lemmaInListThenGetKeysListContains!1132 (List!54888 K!16422) Unit!141967)

(assert (=> b!4816378 (= lt!1967072 (lemmaInListThenGetKeysListContains!1132 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) key!5322))))

(declare-fun call!335977 () Bool)

(assert (=> b!4816378 call!335977))

(declare-fun b!4816379 () Bool)

(declare-datatypes ((List!54892 0))(
  ( (Nil!54768) (Cons!54768 (h!61200 K!16422) (t!362388 List!54892)) )
))
(declare-fun e!3009158 () List!54892)

(declare-fun keys!20110 (ListMap!6743) List!54892)

(assert (=> b!4816379 (= e!3009158 (keys!20110 (extractMap!2623 (toList!7329 lm!2251))))))

(declare-fun bm!335972 () Bool)

(declare-fun contains!18589 (List!54892 K!16422) Bool)

(assert (=> bm!335972 (= call!335977 (contains!18589 e!3009158 key!5322))))

(declare-fun c!820879 () Bool)

(declare-fun c!820877 () Bool)

(assert (=> bm!335972 (= c!820879 c!820877)))

(declare-fun d!1541458 () Bool)

(declare-fun e!3009161 () Bool)

(assert (=> d!1541458 e!3009161))

(declare-fun res!2048880 () Bool)

(assert (=> d!1541458 (=> res!2048880 e!3009161)))

(declare-fun e!3009163 () Bool)

(assert (=> d!1541458 (= res!2048880 e!3009163)))

(declare-fun res!2048882 () Bool)

(assert (=> d!1541458 (=> (not res!2048882) (not e!3009163))))

(declare-fun lt!1967068 () Bool)

(assert (=> d!1541458 (= res!2048882 (not lt!1967068))))

(declare-fun lt!1967069 () Bool)

(assert (=> d!1541458 (= lt!1967068 lt!1967069)))

(declare-fun lt!1967074 () Unit!141967)

(assert (=> d!1541458 (= lt!1967074 e!3009162)))

(assert (=> d!1541458 (= c!820877 lt!1967069)))

(declare-fun containsKey!4244 (List!54888 K!16422) Bool)

(assert (=> d!1541458 (= lt!1967069 (containsKey!4244 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) key!5322))))

(assert (=> d!1541458 (= (contains!18585 (extractMap!2623 (toList!7329 lm!2251)) key!5322) lt!1967068)))

(declare-fun b!4816380 () Bool)

(assert (=> b!4816380 (= e!3009163 (not (contains!18589 (keys!20110 (extractMap!2623 (toList!7329 lm!2251))) key!5322)))))

(declare-fun b!4816381 () Bool)

(assert (=> b!4816381 false))

(declare-fun lt!1967073 () Unit!141967)

(declare-fun lt!1967071 () Unit!141967)

(assert (=> b!4816381 (= lt!1967073 lt!1967071)))

(assert (=> b!4816381 (containsKey!4244 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) key!5322)))

(declare-fun lemmaInGetKeysListThenContainsKey!1137 (List!54888 K!16422) Unit!141967)

(assert (=> b!4816381 (= lt!1967071 (lemmaInGetKeysListThenContainsKey!1137 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) key!5322))))

(declare-fun e!3009159 () Unit!141967)

(declare-fun Unit!141971 () Unit!141967)

(assert (=> b!4816381 (= e!3009159 Unit!141971)))

(declare-fun b!4816382 () Bool)

(declare-fun e!3009160 () Bool)

(assert (=> b!4816382 (= e!3009161 e!3009160)))

(declare-fun res!2048881 () Bool)

(assert (=> b!4816382 (=> (not res!2048881) (not e!3009160))))

(assert (=> b!4816382 (= res!2048881 (isDefined!10546 (getValueByKey!2563 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) key!5322)))))

(declare-fun b!4816383 () Bool)

(assert (=> b!4816383 (= e!3009162 e!3009159)))

(declare-fun c!820878 () Bool)

(assert (=> b!4816383 (= c!820878 call!335977)))

(declare-fun b!4816384 () Bool)

(assert (=> b!4816384 (= e!3009160 (contains!18589 (keys!20110 (extractMap!2623 (toList!7329 lm!2251))) key!5322))))

(declare-fun b!4816385 () Bool)

(declare-fun getKeysList!1137 (List!54888) List!54892)

(assert (=> b!4816385 (= e!3009158 (getKeysList!1137 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))))))

(declare-fun b!4816386 () Bool)

(declare-fun Unit!141972 () Unit!141967)

(assert (=> b!4816386 (= e!3009159 Unit!141972)))

(assert (= (and d!1541458 c!820877) b!4816378))

(assert (= (and d!1541458 (not c!820877)) b!4816383))

(assert (= (and b!4816383 c!820878) b!4816381))

(assert (= (and b!4816383 (not c!820878)) b!4816386))

(assert (= (or b!4816378 b!4816383) bm!335972))

(assert (= (and bm!335972 c!820879) b!4816385))

(assert (= (and bm!335972 (not c!820879)) b!4816379))

(assert (= (and d!1541458 res!2048882) b!4816380))

(assert (= (and d!1541458 (not res!2048880)) b!4816382))

(assert (= (and b!4816382 res!2048881) b!4816384))

(declare-fun m!5802710 () Bool)

(assert (=> b!4816378 m!5802710))

(declare-fun m!5802712 () Bool)

(assert (=> b!4816378 m!5802712))

(assert (=> b!4816378 m!5802712))

(declare-fun m!5802714 () Bool)

(assert (=> b!4816378 m!5802714))

(declare-fun m!5802716 () Bool)

(assert (=> b!4816378 m!5802716))

(declare-fun m!5802718 () Bool)

(assert (=> b!4816385 m!5802718))

(declare-fun m!5802720 () Bool)

(assert (=> b!4816381 m!5802720))

(declare-fun m!5802722 () Bool)

(assert (=> b!4816381 m!5802722))

(declare-fun m!5802724 () Bool)

(assert (=> bm!335972 m!5802724))

(assert (=> b!4816382 m!5802712))

(assert (=> b!4816382 m!5802712))

(assert (=> b!4816382 m!5802714))

(assert (=> b!4816384 m!5802664))

(declare-fun m!5802726 () Bool)

(assert (=> b!4816384 m!5802726))

(assert (=> b!4816384 m!5802726))

(declare-fun m!5802728 () Bool)

(assert (=> b!4816384 m!5802728))

(assert (=> d!1541458 m!5802720))

(assert (=> b!4816380 m!5802664))

(assert (=> b!4816380 m!5802726))

(assert (=> b!4816380 m!5802726))

(assert (=> b!4816380 m!5802728))

(assert (=> b!4816379 m!5802664))

(assert (=> b!4816379 m!5802726))

(assert (=> b!4816329 d!1541458))

(declare-fun bs!1160608 () Bool)

(declare-fun d!1541468 () Bool)

(assert (= bs!1160608 (and d!1541468 start!498408)))

(declare-fun lambda!234608 () Int)

(assert (=> bs!1160608 (= lambda!234608 lambda!234595)))

(declare-fun lt!1967081 () ListMap!6743)

(declare-fun invariantList!1790 (List!54888) Bool)

(assert (=> d!1541468 (invariantList!1790 (toList!7330 lt!1967081))))

(declare-fun e!3009166 () ListMap!6743)

(assert (=> d!1541468 (= lt!1967081 e!3009166)))

(declare-fun c!820882 () Bool)

(assert (=> d!1541468 (= c!820882 (is-Cons!54765 (toList!7329 lm!2251)))))

(assert (=> d!1541468 (forall!12479 (toList!7329 lm!2251) lambda!234608)))

(assert (=> d!1541468 (= (extractMap!2623 (toList!7329 lm!2251)) lt!1967081)))

(declare-fun b!4816391 () Bool)

(declare-fun addToMapMapFromBucket!1767 (List!54888 ListMap!6743) ListMap!6743)

(assert (=> b!4816391 (= e!3009166 (addToMapMapFromBucket!1767 (_2!32206 (h!61197 (toList!7329 lm!2251))) (extractMap!2623 (t!362385 (toList!7329 lm!2251)))))))

(declare-fun b!4816392 () Bool)

(assert (=> b!4816392 (= e!3009166 (ListMap!6744 Nil!54764))))

(assert (= (and d!1541468 c!820882) b!4816391))

(assert (= (and d!1541468 (not c!820882)) b!4816392))

(declare-fun m!5802734 () Bool)

(assert (=> d!1541468 m!5802734))

(declare-fun m!5802736 () Bool)

(assert (=> d!1541468 m!5802736))

(declare-fun m!5802738 () Bool)

(assert (=> b!4816391 m!5802738))

(assert (=> b!4816391 m!5802738))

(declare-fun m!5802740 () Bool)

(assert (=> b!4816391 m!5802740))

(assert (=> b!4816329 d!1541468))

(declare-fun d!1541472 () Bool)

(assert (=> d!1541472 (= (isEmpty!29593 (getPair!1011 lt!1967030 key!5322)) (not (is-Some!13425 (getPair!1011 lt!1967030 key!5322))))))

(assert (=> b!4816328 d!1541472))

(declare-fun d!1541476 () Bool)

(declare-fun hash!5246 (Hashable!7173 K!16422) (_ BitVec 64))

(assert (=> d!1541476 (= (hash!5244 hashF!1486 key!5322) (hash!5246 hashF!1486 key!5322))))

(declare-fun bs!1160610 () Bool)

(assert (= bs!1160610 d!1541476))

(declare-fun m!5802748 () Bool)

(assert (=> bs!1160610 m!5802748))

(assert (=> b!4816328 d!1541476))

(declare-fun d!1541478 () Bool)

(declare-fun lt!1967084 () Bool)

(declare-fun content!9793 (List!54889) (Set tuple2!57824))

(assert (=> d!1541478 (= lt!1967084 (set.member lt!1967026 (content!9793 (toList!7329 lm!2251))))))

(declare-fun e!3009172 () Bool)

(assert (=> d!1541478 (= lt!1967084 e!3009172)))

(declare-fun res!2048888 () Bool)

(assert (=> d!1541478 (=> (not res!2048888) (not e!3009172))))

(assert (=> d!1541478 (= res!2048888 (is-Cons!54765 (toList!7329 lm!2251)))))

(assert (=> d!1541478 (= (contains!18583 (toList!7329 lm!2251) lt!1967026) lt!1967084)))

(declare-fun b!4816397 () Bool)

(declare-fun e!3009171 () Bool)

(assert (=> b!4816397 (= e!3009172 e!3009171)))

(declare-fun res!2048887 () Bool)

(assert (=> b!4816397 (=> res!2048887 e!3009171)))

(assert (=> b!4816397 (= res!2048887 (= (h!61197 (toList!7329 lm!2251)) lt!1967026))))

(declare-fun b!4816398 () Bool)

(assert (=> b!4816398 (= e!3009171 (contains!18583 (t!362385 (toList!7329 lm!2251)) lt!1967026))))

(assert (= (and d!1541478 res!2048888) b!4816397))

(assert (= (and b!4816397 (not res!2048887)) b!4816398))

(declare-fun m!5802750 () Bool)

(assert (=> d!1541478 m!5802750))

(declare-fun m!5802752 () Bool)

(assert (=> d!1541478 m!5802752))

(declare-fun m!5802754 () Bool)

(assert (=> b!4816398 m!5802754))

(assert (=> b!4816328 d!1541478))

(declare-fun d!1541480 () Bool)

(assert (=> d!1541480 (dynLambda!22163 lambda!234595 lt!1967026)))

(declare-fun lt!1967090 () Unit!141967)

(declare-fun choose!34924 (List!54889 Int tuple2!57824) Unit!141967)

(assert (=> d!1541480 (= lt!1967090 (choose!34924 (toList!7329 lm!2251) lambda!234595 lt!1967026))))

(declare-fun e!3009178 () Bool)

(assert (=> d!1541480 e!3009178))

(declare-fun res!2048894 () Bool)

(assert (=> d!1541480 (=> (not res!2048894) (not e!3009178))))

(assert (=> d!1541480 (= res!2048894 (forall!12479 (toList!7329 lm!2251) lambda!234595))))

(assert (=> d!1541480 (= (forallContained!4339 (toList!7329 lm!2251) lambda!234595 lt!1967026) lt!1967090)))

(declare-fun b!4816404 () Bool)

(assert (=> b!4816404 (= e!3009178 (contains!18583 (toList!7329 lm!2251) lt!1967026))))

(assert (= (and d!1541480 res!2048894) b!4816404))

(declare-fun b_lambda!188453 () Bool)

(assert (=> (not b_lambda!188453) (not d!1541480)))

(declare-fun m!5802758 () Bool)

(assert (=> d!1541480 m!5802758))

(declare-fun m!5802762 () Bool)

(assert (=> d!1541480 m!5802762))

(assert (=> d!1541480 m!5802656))

(assert (=> b!4816404 m!5802640))

(assert (=> b!4816328 d!1541480))

(declare-fun d!1541482 () Bool)

(declare-fun e!3009184 () Bool)

(assert (=> d!1541482 e!3009184))

(declare-fun res!2048897 () Bool)

(assert (=> d!1541482 (=> res!2048897 e!3009184)))

(declare-fun lt!1967101 () Bool)

(assert (=> d!1541482 (= res!2048897 (not lt!1967101))))

(declare-fun lt!1967102 () Bool)

(assert (=> d!1541482 (= lt!1967101 lt!1967102)))

(declare-fun lt!1967099 () Unit!141967)

(declare-fun e!3009183 () Unit!141967)

(assert (=> d!1541482 (= lt!1967099 e!3009183)))

(declare-fun c!820885 () Bool)

(assert (=> d!1541482 (= c!820885 lt!1967102)))

(declare-fun containsKey!4245 (List!54889 (_ BitVec 64)) Bool)

(assert (=> d!1541482 (= lt!1967102 (containsKey!4245 (toList!7329 lm!2251) lt!1967027))))

(assert (=> d!1541482 (= (contains!18584 lm!2251 lt!1967027) lt!1967101)))

(declare-fun b!4816411 () Bool)

(declare-fun lt!1967100 () Unit!141967)

(assert (=> b!4816411 (= e!3009183 lt!1967100)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2350 (List!54889 (_ BitVec 64)) Unit!141967)

(assert (=> b!4816411 (= lt!1967100 (lemmaContainsKeyImpliesGetValueByKeyDefined!2350 (toList!7329 lm!2251) lt!1967027))))

(declare-datatypes ((Option!13429 0))(
  ( (None!13428) (Some!13428 (v!49083 List!54888)) )
))
(declare-fun isDefined!10547 (Option!13429) Bool)

(declare-fun getValueByKey!2564 (List!54889 (_ BitVec 64)) Option!13429)

(assert (=> b!4816411 (isDefined!10547 (getValueByKey!2564 (toList!7329 lm!2251) lt!1967027))))

(declare-fun b!4816412 () Bool)

(declare-fun Unit!141973 () Unit!141967)

(assert (=> b!4816412 (= e!3009183 Unit!141973)))

(declare-fun b!4816413 () Bool)

(assert (=> b!4816413 (= e!3009184 (isDefined!10547 (getValueByKey!2564 (toList!7329 lm!2251) lt!1967027)))))

(assert (= (and d!1541482 c!820885) b!4816411))

(assert (= (and d!1541482 (not c!820885)) b!4816412))

(assert (= (and d!1541482 (not res!2048897)) b!4816413))

(declare-fun m!5802764 () Bool)

(assert (=> d!1541482 m!5802764))

(declare-fun m!5802766 () Bool)

(assert (=> b!4816411 m!5802766))

(declare-fun m!5802768 () Bool)

(assert (=> b!4816411 m!5802768))

(assert (=> b!4816411 m!5802768))

(declare-fun m!5802770 () Bool)

(assert (=> b!4816411 m!5802770))

(assert (=> b!4816413 m!5802768))

(assert (=> b!4816413 m!5802768))

(assert (=> b!4816413 m!5802770))

(assert (=> b!4816328 d!1541482))

(declare-fun d!1541486 () Bool)

(assert (=> d!1541486 (contains!18583 (toList!7329 lm!2251) (tuple2!57825 lt!1967027 lt!1967030))))

(declare-fun lt!1967107 () Unit!141967)

(declare-fun choose!34925 (ListLongMap!5809 (_ BitVec 64) List!54888) Unit!141967)

(assert (=> d!1541486 (= lt!1967107 (choose!34925 lm!2251 lt!1967027 lt!1967030))))

(assert (=> d!1541486 (contains!18584 lm!2251 lt!1967027)))

(assert (=> d!1541486 (= (lemmaGetValueImpliesTupleContained!682 lm!2251 lt!1967027 lt!1967030) lt!1967107)))

(declare-fun bs!1160611 () Bool)

(assert (= bs!1160611 d!1541486))

(declare-fun m!5802772 () Bool)

(assert (=> bs!1160611 m!5802772))

(declare-fun m!5802774 () Bool)

(assert (=> bs!1160611 m!5802774))

(assert (=> bs!1160611 m!5802650))

(assert (=> b!4816328 d!1541486))

(declare-fun d!1541488 () Bool)

(declare-fun e!3009213 () Bool)

(assert (=> d!1541488 e!3009213))

(declare-fun res!2048919 () Bool)

(assert (=> d!1541488 (=> res!2048919 e!3009213)))

(declare-fun e!3009212 () Bool)

(assert (=> d!1541488 (= res!2048919 e!3009212)))

(declare-fun res!2048921 () Bool)

(assert (=> d!1541488 (=> (not res!2048921) (not e!3009212))))

(declare-fun lt!1967111 () Option!13426)

(assert (=> d!1541488 (= res!2048921 (isEmpty!29593 lt!1967111))))

(declare-fun e!3009211 () Option!13426)

(assert (=> d!1541488 (= lt!1967111 e!3009211)))

(declare-fun c!820897 () Bool)

(assert (=> d!1541488 (= c!820897 (and (is-Cons!54764 lt!1967030) (= (_1!32205 (h!61196 lt!1967030)) key!5322)))))

(declare-fun noDuplicateKeys!2409 (List!54888) Bool)

(assert (=> d!1541488 (noDuplicateKeys!2409 lt!1967030)))

(assert (=> d!1541488 (= (getPair!1011 lt!1967030 key!5322) lt!1967111)))

(declare-fun b!4816455 () Bool)

(assert (=> b!4816455 (= e!3009212 (not (containsKey!4242 lt!1967030 key!5322)))))

(declare-fun b!4816456 () Bool)

(declare-fun e!3009210 () Option!13426)

(assert (=> b!4816456 (= e!3009210 None!13425)))

(declare-fun b!4816457 () Bool)

(assert (=> b!4816457 (= e!3009210 (getPair!1011 (t!362384 lt!1967030) key!5322))))

(declare-fun b!4816458 () Bool)

(declare-fun e!3009214 () Bool)

(assert (=> b!4816458 (= e!3009213 e!3009214)))

(declare-fun res!2048920 () Bool)

(assert (=> b!4816458 (=> (not res!2048920) (not e!3009214))))

(declare-fun isDefined!10548 (Option!13426) Bool)

(assert (=> b!4816458 (= res!2048920 (isDefined!10548 lt!1967111))))

(declare-fun b!4816459 () Bool)

(assert (=> b!4816459 (= e!3009211 e!3009210)))

(declare-fun c!820896 () Bool)

(assert (=> b!4816459 (= c!820896 (is-Cons!54764 lt!1967030))))

(declare-fun b!4816460 () Bool)

(assert (=> b!4816460 (= e!3009211 (Some!13425 (h!61196 lt!1967030)))))

(declare-fun b!4816461 () Bool)

(declare-fun contains!18590 (List!54888 tuple2!57822) Bool)

(declare-fun get!18736 (Option!13426) tuple2!57822)

(assert (=> b!4816461 (= e!3009214 (contains!18590 lt!1967030 (get!18736 lt!1967111)))))

(declare-fun b!4816462 () Bool)

(declare-fun res!2048918 () Bool)

(assert (=> b!4816462 (=> (not res!2048918) (not e!3009214))))

(assert (=> b!4816462 (= res!2048918 (= (_1!32205 (get!18736 lt!1967111)) key!5322))))

(assert (= (and d!1541488 c!820897) b!4816460))

(assert (= (and d!1541488 (not c!820897)) b!4816459))

(assert (= (and b!4816459 c!820896) b!4816457))

(assert (= (and b!4816459 (not c!820896)) b!4816456))

(assert (= (and d!1541488 res!2048921) b!4816455))

(assert (= (and d!1541488 (not res!2048919)) b!4816458))

(assert (= (and b!4816458 res!2048920) b!4816462))

(assert (= (and b!4816462 res!2048918) b!4816461))

(declare-fun m!5802788 () Bool)

(assert (=> b!4816458 m!5802788))

(declare-fun m!5802790 () Bool)

(assert (=> b!4816457 m!5802790))

(declare-fun m!5802792 () Bool)

(assert (=> d!1541488 m!5802792))

(declare-fun m!5802794 () Bool)

(assert (=> d!1541488 m!5802794))

(declare-fun m!5802796 () Bool)

(assert (=> b!4816462 m!5802796))

(assert (=> b!4816461 m!5802796))

(assert (=> b!4816461 m!5802796))

(declare-fun m!5802798 () Bool)

(assert (=> b!4816461 m!5802798))

(assert (=> b!4816455 m!5802658))

(assert (=> b!4816328 d!1541488))

(declare-fun d!1541492 () Bool)

(declare-fun get!18737 (Option!13429) List!54888)

(assert (=> d!1541492 (= (apply!13276 lm!2251 lt!1967027) (get!18737 (getValueByKey!2564 (toList!7329 lm!2251) lt!1967027)))))

(declare-fun bs!1160612 () Bool)

(assert (= bs!1160612 d!1541492))

(assert (=> bs!1160612 m!5802768))

(assert (=> bs!1160612 m!5802768))

(declare-fun m!5802800 () Bool)

(assert (=> bs!1160612 m!5802800))

(assert (=> b!4816328 d!1541492))

(declare-fun bs!1160613 () Bool)

(declare-fun d!1541494 () Bool)

(assert (= bs!1160613 (and d!1541494 start!498408)))

(declare-fun lambda!234611 () Int)

(assert (=> bs!1160613 (= lambda!234611 lambda!234595)))

(declare-fun bs!1160614 () Bool)

(assert (= bs!1160614 (and d!1541494 d!1541468)))

(assert (=> bs!1160614 (= lambda!234611 lambda!234608)))

(assert (=> d!1541494 (contains!18584 lm!2251 (hash!5244 hashF!1486 key!5322))))

(declare-fun lt!1967114 () Unit!141967)

(declare-fun choose!34926 (ListLongMap!5809 K!16422 Hashable!7173) Unit!141967)

(assert (=> d!1541494 (= lt!1967114 (choose!34926 lm!2251 key!5322 hashF!1486))))

(assert (=> d!1541494 (forall!12479 (toList!7329 lm!2251) lambda!234611)))

(assert (=> d!1541494 (= (lemmaInGenMapThenLongMapContainsHash!1109 lm!2251 key!5322 hashF!1486) lt!1967114)))

(declare-fun bs!1160615 () Bool)

(assert (= bs!1160615 d!1541494))

(assert (=> bs!1160615 m!5802652))

(assert (=> bs!1160615 m!5802652))

(declare-fun m!5802802 () Bool)

(assert (=> bs!1160615 m!5802802))

(declare-fun m!5802804 () Bool)

(assert (=> bs!1160615 m!5802804))

(declare-fun m!5802806 () Bool)

(assert (=> bs!1160615 m!5802806))

(assert (=> b!4816328 d!1541494))

(assert (=> start!498408 d!1541456))

(declare-fun d!1541496 () Bool)

(declare-fun isStrictlySorted!951 (List!54889) Bool)

(assert (=> d!1541496 (= (inv!70323 lm!2251) (isStrictlySorted!951 (toList!7329 lm!2251)))))

(declare-fun bs!1160616 () Bool)

(assert (= bs!1160616 d!1541496))

(declare-fun m!5802808 () Bool)

(assert (=> bs!1160616 m!5802808))

(assert (=> start!498408 d!1541496))

(declare-fun bs!1160617 () Bool)

(declare-fun d!1541498 () Bool)

(assert (= bs!1160617 (and d!1541498 start!498408)))

(declare-fun lambda!234614 () Int)

(assert (=> bs!1160617 (not (= lambda!234614 lambda!234595))))

(declare-fun bs!1160618 () Bool)

(assert (= bs!1160618 (and d!1541498 d!1541468)))

(assert (=> bs!1160618 (not (= lambda!234614 lambda!234608))))

(declare-fun bs!1160619 () Bool)

(assert (= bs!1160619 (and d!1541498 d!1541494)))

(assert (=> bs!1160619 (not (= lambda!234614 lambda!234611))))

(assert (=> d!1541498 true))

(assert (=> d!1541498 (= (allKeysSameHashInMap!2489 lm!2251 hashF!1486) (forall!12479 (toList!7329 lm!2251) lambda!234614))))

(declare-fun bs!1160620 () Bool)

(assert (= bs!1160620 d!1541498))

(declare-fun m!5802810 () Bool)

(assert (=> bs!1160620 m!5802810))

(assert (=> b!4816327 d!1541498))

(declare-fun d!1541500 () Bool)

(declare-fun res!2048928 () Bool)

(declare-fun e!3009223 () Bool)

(assert (=> d!1541500 (=> res!2048928 e!3009223)))

(assert (=> d!1541500 (= res!2048928 (and (is-Cons!54764 lt!1967030) (= (_1!32205 (h!61196 lt!1967030)) key!5322)))))

(assert (=> d!1541500 (= (containsKey!4242 lt!1967030 key!5322) e!3009223)))

(declare-fun b!4816475 () Bool)

(declare-fun e!3009224 () Bool)

(assert (=> b!4816475 (= e!3009223 e!3009224)))

(declare-fun res!2048929 () Bool)

(assert (=> b!4816475 (=> (not res!2048929) (not e!3009224))))

(assert (=> b!4816475 (= res!2048929 (is-Cons!54764 lt!1967030))))

(declare-fun b!4816476 () Bool)

(assert (=> b!4816476 (= e!3009224 (containsKey!4242 (t!362384 lt!1967030) key!5322))))

(assert (= (and d!1541500 (not res!2048928)) b!4816475))

(assert (= (and b!4816475 res!2048929) b!4816476))

(declare-fun m!5802812 () Bool)

(assert (=> b!4816476 m!5802812))

(assert (=> b!4816326 d!1541500))

(declare-fun b!4816481 () Bool)

(declare-fun e!3009227 () Bool)

(declare-fun tp!1361932 () Bool)

(declare-fun tp!1361933 () Bool)

(assert (=> b!4816481 (= e!3009227 (and tp!1361932 tp!1361933))))

(assert (=> b!4816325 (= tp!1361924 e!3009227)))

(assert (= (and b!4816325 (is-Cons!54765 (toList!7329 lm!2251))) b!4816481))

(declare-fun b_lambda!188455 () Bool)

(assert (= b_lambda!188449 (or start!498408 b_lambda!188455)))

(declare-fun bs!1160621 () Bool)

(declare-fun d!1541502 () Bool)

(assert (= bs!1160621 (and d!1541502 start!498408)))

(assert (=> bs!1160621 (= (dynLambda!22163 lambda!234595 (h!61197 (toList!7329 lm!2251))) (noDuplicateKeys!2409 (_2!32206 (h!61197 (toList!7329 lm!2251)))))))

(declare-fun m!5802814 () Bool)

(assert (=> bs!1160621 m!5802814))

(assert (=> b!4816352 d!1541502))

(declare-fun b_lambda!188457 () Bool)

(assert (= b_lambda!188453 (or start!498408 b_lambda!188457)))

(declare-fun bs!1160622 () Bool)

(declare-fun d!1541504 () Bool)

(assert (= bs!1160622 (and d!1541504 start!498408)))

(assert (=> bs!1160622 (= (dynLambda!22163 lambda!234595 lt!1967026) (noDuplicateKeys!2409 (_2!32206 lt!1967026)))))

(declare-fun m!5802816 () Bool)

(assert (=> bs!1160622 m!5802816))

(assert (=> d!1541480 d!1541504))

(push 1)

(assert (not b!4816476))

(assert (not bs!1160622))

(assert (not d!1541458))

(assert (not d!1541480))

(assert (not b!4816391))

(assert (not b!4816462))

(assert (not b!4816481))

(assert (not b!4816385))

(assert (not b!4816457))

(assert (not d!1541492))

(assert (not b!4816411))

(assert (not b_lambda!188455))

(assert (not d!1541486))

(assert (not b!4816378))

(assert (not b!4816384))

(assert (not b!4816379))

(assert (not d!1541498))

(assert (not b!4816461))

(assert (not d!1541488))

(assert (not b!4816382))

(assert (not b!4816398))

(assert (not d!1541468))

(assert tp_is_empty!34219)

(assert (not d!1541496))

(assert (not b!4816353))

(assert (not b!4816404))

(assert (not d!1541476))

(assert (not b!4816413))

(assert (not b_lambda!188457))

(assert (not d!1541482))

(assert (not bm!335972))

(assert (not b!4816455))

(assert (not b!4816458))

(assert (not d!1541478))

(assert (not d!1541494))

(assert (not b!4816381))

(assert (not bs!1160621))

(assert (not b!4816380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4816548 () Bool)

(assert (=> b!4816548 true))

(declare-fun bs!1160633 () Bool)

(declare-fun b!4816551 () Bool)

(assert (= bs!1160633 (and b!4816551 b!4816548)))

(declare-fun lambda!234650 () Int)

(declare-fun lambda!234649 () Int)

(assert (=> bs!1160633 (= lambda!234650 lambda!234649)))

(assert (=> b!4816551 true))

(declare-fun lambda!234651 () Int)

(declare-fun lt!1967203 () ListMap!6743)

(assert (=> bs!1160633 (= (= lt!1967203 (extractMap!2623 (t!362385 (toList!7329 lm!2251)))) (= lambda!234651 lambda!234649))))

(assert (=> b!4816551 (= (= lt!1967203 (extractMap!2623 (t!362385 (toList!7329 lm!2251)))) (= lambda!234651 lambda!234650))))

(assert (=> b!4816551 true))

(declare-fun bs!1160634 () Bool)

(declare-fun d!1541524 () Bool)

(assert (= bs!1160634 (and d!1541524 b!4816548)))

(declare-fun lambda!234652 () Int)

(declare-fun lt!1967210 () ListMap!6743)

(assert (=> bs!1160634 (= (= lt!1967210 (extractMap!2623 (t!362385 (toList!7329 lm!2251)))) (= lambda!234652 lambda!234649))))

(declare-fun bs!1160635 () Bool)

(assert (= bs!1160635 (and d!1541524 b!4816551)))

(assert (=> bs!1160635 (= (= lt!1967210 (extractMap!2623 (t!362385 (toList!7329 lm!2251)))) (= lambda!234652 lambda!234650))))

(assert (=> bs!1160635 (= (= lt!1967210 lt!1967203) (= lambda!234652 lambda!234651))))

(assert (=> d!1541524 true))

(declare-fun e!3009272 () ListMap!6743)

(assert (=> b!4816548 (= e!3009272 (extractMap!2623 (t!362385 (toList!7329 lm!2251))))))

(declare-fun lt!1967217 () Unit!141967)

(declare-fun call!335987 () Unit!141967)

(assert (=> b!4816548 (= lt!1967217 call!335987)))

(declare-fun call!335988 () Bool)

(assert (=> b!4816548 call!335988))

(declare-fun lt!1967213 () Unit!141967)

(assert (=> b!4816548 (= lt!1967213 lt!1967217)))

(declare-fun call!335989 () Bool)

(assert (=> b!4816548 call!335989))

(declare-fun lt!1967216 () Unit!141967)

(declare-fun Unit!141977 () Unit!141967)

(assert (=> b!4816548 (= lt!1967216 Unit!141977)))

(declare-fun b!4816549 () Bool)

(declare-fun res!2048960 () Bool)

(declare-fun e!3009273 () Bool)

(assert (=> b!4816549 (=> (not res!2048960) (not e!3009273))))

(declare-fun forall!12481 (List!54888 Int) Bool)

(assert (=> b!4816549 (= res!2048960 (forall!12481 (toList!7330 (extractMap!2623 (t!362385 (toList!7329 lm!2251)))) lambda!234652))))

(declare-fun c!820915 () Bool)

(declare-fun lt!1967218 () ListMap!6743)

(declare-fun bm!335982 () Bool)

(assert (=> bm!335982 (= call!335988 (forall!12481 (ite c!820915 (toList!7330 (extractMap!2623 (t!362385 (toList!7329 lm!2251)))) (toList!7330 lt!1967218)) (ite c!820915 lambda!234649 lambda!234651)))))

(declare-fun b!4816550 () Bool)

(assert (=> b!4816550 (= e!3009273 (invariantList!1790 (toList!7330 lt!1967210)))))

(assert (=> b!4816551 (= e!3009272 lt!1967203)))

(declare-fun +!2518 (ListMap!6743 tuple2!57822) ListMap!6743)

(assert (=> b!4816551 (= lt!1967218 (+!2518 (extractMap!2623 (t!362385 (toList!7329 lm!2251))) (h!61196 (_2!32206 (h!61197 (toList!7329 lm!2251))))))))

(assert (=> b!4816551 (= lt!1967203 (addToMapMapFromBucket!1767 (t!362384 (_2!32206 (h!61197 (toList!7329 lm!2251)))) (+!2518 (extractMap!2623 (t!362385 (toList!7329 lm!2251))) (h!61196 (_2!32206 (h!61197 (toList!7329 lm!2251)))))))))

(declare-fun lt!1967215 () Unit!141967)

(assert (=> b!4816551 (= lt!1967215 call!335987)))

(assert (=> b!4816551 (forall!12481 (toList!7330 (extractMap!2623 (t!362385 (toList!7329 lm!2251)))) lambda!234650)))

(declare-fun lt!1967202 () Unit!141967)

(assert (=> b!4816551 (= lt!1967202 lt!1967215)))

(assert (=> b!4816551 call!335988))

(declare-fun lt!1967205 () Unit!141967)

(declare-fun Unit!141978 () Unit!141967)

(assert (=> b!4816551 (= lt!1967205 Unit!141978)))

(assert (=> b!4816551 (forall!12481 (t!362384 (_2!32206 (h!61197 (toList!7329 lm!2251)))) lambda!234651)))

(declare-fun lt!1967211 () Unit!141967)

(declare-fun Unit!141979 () Unit!141967)

(assert (=> b!4816551 (= lt!1967211 Unit!141979)))

(declare-fun lt!1967209 () Unit!141967)

(declare-fun Unit!141980 () Unit!141967)

(assert (=> b!4816551 (= lt!1967209 Unit!141980)))

(declare-fun lt!1967207 () Unit!141967)

(declare-fun forallContained!4341 (List!54888 Int tuple2!57822) Unit!141967)

(assert (=> b!4816551 (= lt!1967207 (forallContained!4341 (toList!7330 lt!1967218) lambda!234651 (h!61196 (_2!32206 (h!61197 (toList!7329 lm!2251))))))))

(assert (=> b!4816551 (contains!18585 lt!1967218 (_1!32205 (h!61196 (_2!32206 (h!61197 (toList!7329 lm!2251))))))))

(declare-fun lt!1967219 () Unit!141967)

(declare-fun Unit!141981 () Unit!141967)

(assert (=> b!4816551 (= lt!1967219 Unit!141981)))

(assert (=> b!4816551 (contains!18585 lt!1967203 (_1!32205 (h!61196 (_2!32206 (h!61197 (toList!7329 lm!2251))))))))

(declare-fun lt!1967199 () Unit!141967)

(declare-fun Unit!141982 () Unit!141967)

(assert (=> b!4816551 (= lt!1967199 Unit!141982)))

(assert (=> b!4816551 (forall!12481 (_2!32206 (h!61197 (toList!7329 lm!2251))) lambda!234651)))

(declare-fun lt!1967201 () Unit!141967)

(declare-fun Unit!141983 () Unit!141967)

(assert (=> b!4816551 (= lt!1967201 Unit!141983)))

(assert (=> b!4816551 (forall!12481 (toList!7330 lt!1967218) lambda!234651)))

(declare-fun lt!1967200 () Unit!141967)

(declare-fun Unit!141984 () Unit!141967)

(assert (=> b!4816551 (= lt!1967200 Unit!141984)))

(declare-fun lt!1967208 () Unit!141967)

(declare-fun Unit!141985 () Unit!141967)

(assert (=> b!4816551 (= lt!1967208 Unit!141985)))

(declare-fun lt!1967206 () Unit!141967)

(declare-fun addForallContainsKeyThenBeforeAdding!972 (ListMap!6743 ListMap!6743 K!16422 V!16668) Unit!141967)

(assert (=> b!4816551 (= lt!1967206 (addForallContainsKeyThenBeforeAdding!972 (extractMap!2623 (t!362385 (toList!7329 lm!2251))) lt!1967203 (_1!32205 (h!61196 (_2!32206 (h!61197 (toList!7329 lm!2251))))) (_2!32205 (h!61196 (_2!32206 (h!61197 (toList!7329 lm!2251)))))))))

(assert (=> b!4816551 (forall!12481 (toList!7330 (extractMap!2623 (t!362385 (toList!7329 lm!2251)))) lambda!234651)))

(declare-fun lt!1967212 () Unit!141967)

(assert (=> b!4816551 (= lt!1967212 lt!1967206)))

(assert (=> b!4816551 (forall!12481 (toList!7330 (extractMap!2623 (t!362385 (toList!7329 lm!2251)))) lambda!234651)))

(declare-fun lt!1967214 () Unit!141967)

(declare-fun Unit!141986 () Unit!141967)

(assert (=> b!4816551 (= lt!1967214 Unit!141986)))

(declare-fun res!2048959 () Bool)

(assert (=> b!4816551 (= res!2048959 call!335989)))

(declare-fun e!3009274 () Bool)

(assert (=> b!4816551 (=> (not res!2048959) (not e!3009274))))

(assert (=> b!4816551 e!3009274))

(declare-fun lt!1967204 () Unit!141967)

(declare-fun Unit!141987 () Unit!141967)

(assert (=> b!4816551 (= lt!1967204 Unit!141987)))

(declare-fun bm!335983 () Bool)

(assert (=> bm!335983 (= call!335989 (forall!12481 (ite c!820915 (toList!7330 (extractMap!2623 (t!362385 (toList!7329 lm!2251)))) (_2!32206 (h!61197 (toList!7329 lm!2251)))) (ite c!820915 lambda!234649 lambda!234651)))))

(declare-fun bm!335984 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!973 (ListMap!6743) Unit!141967)

(assert (=> bm!335984 (= call!335987 (lemmaContainsAllItsOwnKeys!973 (extractMap!2623 (t!362385 (toList!7329 lm!2251)))))))

(declare-fun b!4816552 () Bool)

(assert (=> b!4816552 (= e!3009274 (forall!12481 (toList!7330 (extractMap!2623 (t!362385 (toList!7329 lm!2251)))) lambda!234651))))

(assert (=> d!1541524 e!3009273))

(declare-fun res!2048958 () Bool)

(assert (=> d!1541524 (=> (not res!2048958) (not e!3009273))))

(assert (=> d!1541524 (= res!2048958 (forall!12481 (_2!32206 (h!61197 (toList!7329 lm!2251))) lambda!234652))))

(assert (=> d!1541524 (= lt!1967210 e!3009272)))

(assert (=> d!1541524 (= c!820915 (is-Nil!54764 (_2!32206 (h!61197 (toList!7329 lm!2251)))))))

(assert (=> d!1541524 (noDuplicateKeys!2409 (_2!32206 (h!61197 (toList!7329 lm!2251))))))

(assert (=> d!1541524 (= (addToMapMapFromBucket!1767 (_2!32206 (h!61197 (toList!7329 lm!2251))) (extractMap!2623 (t!362385 (toList!7329 lm!2251)))) lt!1967210)))

(assert (= (and d!1541524 c!820915) b!4816548))

(assert (= (and d!1541524 (not c!820915)) b!4816551))

(assert (= (and b!4816551 res!2048959) b!4816552))

(assert (= (or b!4816548 b!4816551) bm!335984))

(assert (= (or b!4816548 b!4816551) bm!335982))

(assert (= (or b!4816548 b!4816551) bm!335983))

(assert (= (and d!1541524 res!2048958) b!4816549))

(assert (= (and b!4816549 res!2048960) b!4816550))

(assert (=> b!4816551 m!5802738))

(declare-fun m!5802870 () Bool)

(assert (=> b!4816551 m!5802870))

(declare-fun m!5802872 () Bool)

(assert (=> b!4816551 m!5802872))

(declare-fun m!5802874 () Bool)

(assert (=> b!4816551 m!5802874))

(assert (=> b!4816551 m!5802738))

(declare-fun m!5802876 () Bool)

(assert (=> b!4816551 m!5802876))

(assert (=> b!4816551 m!5802870))

(declare-fun m!5802878 () Bool)

(assert (=> b!4816551 m!5802878))

(declare-fun m!5802880 () Bool)

(assert (=> b!4816551 m!5802880))

(declare-fun m!5802882 () Bool)

(assert (=> b!4816551 m!5802882))

(declare-fun m!5802884 () Bool)

(assert (=> b!4816551 m!5802884))

(declare-fun m!5802886 () Bool)

(assert (=> b!4816551 m!5802886))

(declare-fun m!5802888 () Bool)

(assert (=> b!4816551 m!5802888))

(assert (=> b!4816551 m!5802882))

(declare-fun m!5802890 () Bool)

(assert (=> b!4816551 m!5802890))

(assert (=> bm!335984 m!5802738))

(declare-fun m!5802892 () Bool)

(assert (=> bm!335984 m!5802892))

(declare-fun m!5802894 () Bool)

(assert (=> b!4816550 m!5802894))

(declare-fun m!5802896 () Bool)

(assert (=> b!4816549 m!5802896))

(assert (=> b!4816552 m!5802882))

(declare-fun m!5802898 () Bool)

(assert (=> d!1541524 m!5802898))

(assert (=> d!1541524 m!5802814))

(declare-fun m!5802900 () Bool)

(assert (=> bm!335982 m!5802900))

(declare-fun m!5802902 () Bool)

(assert (=> bm!335983 m!5802902))

(assert (=> b!4816391 d!1541524))

(declare-fun bs!1160636 () Bool)

(declare-fun d!1541526 () Bool)

(assert (= bs!1160636 (and d!1541526 start!498408)))

(declare-fun lambda!234653 () Int)

(assert (=> bs!1160636 (= lambda!234653 lambda!234595)))

(declare-fun bs!1160637 () Bool)

(assert (= bs!1160637 (and d!1541526 d!1541468)))

(assert (=> bs!1160637 (= lambda!234653 lambda!234608)))

(declare-fun bs!1160638 () Bool)

(assert (= bs!1160638 (and d!1541526 d!1541494)))

(assert (=> bs!1160638 (= lambda!234653 lambda!234611)))

(declare-fun bs!1160639 () Bool)

(assert (= bs!1160639 (and d!1541526 d!1541498)))

(assert (=> bs!1160639 (not (= lambda!234653 lambda!234614))))

(declare-fun lt!1967220 () ListMap!6743)

(assert (=> d!1541526 (invariantList!1790 (toList!7330 lt!1967220))))

(declare-fun e!3009275 () ListMap!6743)

(assert (=> d!1541526 (= lt!1967220 e!3009275)))

(declare-fun c!820916 () Bool)

(assert (=> d!1541526 (= c!820916 (is-Cons!54765 (t!362385 (toList!7329 lm!2251))))))

(assert (=> d!1541526 (forall!12479 (t!362385 (toList!7329 lm!2251)) lambda!234653)))

(assert (=> d!1541526 (= (extractMap!2623 (t!362385 (toList!7329 lm!2251))) lt!1967220)))

(declare-fun b!4816555 () Bool)

(assert (=> b!4816555 (= e!3009275 (addToMapMapFromBucket!1767 (_2!32206 (h!61197 (t!362385 (toList!7329 lm!2251)))) (extractMap!2623 (t!362385 (t!362385 (toList!7329 lm!2251))))))))

(declare-fun b!4816556 () Bool)

(assert (=> b!4816556 (= e!3009275 (ListMap!6744 Nil!54764))))

(assert (= (and d!1541526 c!820916) b!4816555))

(assert (= (and d!1541526 (not c!820916)) b!4816556))

(declare-fun m!5802904 () Bool)

(assert (=> d!1541526 m!5802904))

(declare-fun m!5802906 () Bool)

(assert (=> d!1541526 m!5802906))

(declare-fun m!5802908 () Bool)

(assert (=> b!4816555 m!5802908))

(assert (=> b!4816555 m!5802908))

(declare-fun m!5802910 () Bool)

(assert (=> b!4816555 m!5802910))

(assert (=> b!4816391 d!1541526))

(declare-fun d!1541528 () Bool)

(assert (=> d!1541528 (dynLambda!22163 lambda!234595 lt!1967026)))

(assert (=> d!1541528 true))

(declare-fun _$7!2431 () Unit!141967)

(assert (=> d!1541528 (= (choose!34924 (toList!7329 lm!2251) lambda!234595 lt!1967026) _$7!2431)))

(declare-fun b_lambda!188465 () Bool)

(assert (=> (not b_lambda!188465) (not d!1541528)))

(declare-fun bs!1160640 () Bool)

(assert (= bs!1160640 d!1541528))

(assert (=> bs!1160640 m!5802758))

(assert (=> d!1541480 d!1541528))

(assert (=> d!1541480 d!1541456))

(assert (=> b!4816404 d!1541478))

(declare-fun d!1541530 () Bool)

(declare-fun noDuplicatedKeys!461 (List!54888) Bool)

(assert (=> d!1541530 (= (invariantList!1790 (toList!7330 lt!1967081)) (noDuplicatedKeys!461 (toList!7330 lt!1967081)))))

(declare-fun bs!1160641 () Bool)

(assert (= bs!1160641 d!1541530))

(declare-fun m!5802912 () Bool)

(assert (=> bs!1160641 m!5802912))

(assert (=> d!1541468 d!1541530))

(declare-fun d!1541532 () Bool)

(declare-fun res!2048961 () Bool)

(declare-fun e!3009276 () Bool)

(assert (=> d!1541532 (=> res!2048961 e!3009276)))

(assert (=> d!1541532 (= res!2048961 (is-Nil!54765 (toList!7329 lm!2251)))))

(assert (=> d!1541532 (= (forall!12479 (toList!7329 lm!2251) lambda!234608) e!3009276)))

(declare-fun b!4816557 () Bool)

(declare-fun e!3009277 () Bool)

(assert (=> b!4816557 (= e!3009276 e!3009277)))

(declare-fun res!2048962 () Bool)

(assert (=> b!4816557 (=> (not res!2048962) (not e!3009277))))

(assert (=> b!4816557 (= res!2048962 (dynLambda!22163 lambda!234608 (h!61197 (toList!7329 lm!2251))))))

(declare-fun b!4816558 () Bool)

(assert (=> b!4816558 (= e!3009277 (forall!12479 (t!362385 (toList!7329 lm!2251)) lambda!234608))))

(assert (= (and d!1541532 (not res!2048961)) b!4816557))

(assert (= (and b!4816557 res!2048962) b!4816558))

(declare-fun b_lambda!188467 () Bool)

(assert (=> (not b_lambda!188467) (not b!4816557)))

(declare-fun m!5802914 () Bool)

(assert (=> b!4816557 m!5802914))

(declare-fun m!5802916 () Bool)

(assert (=> b!4816558 m!5802916))

(assert (=> d!1541468 d!1541532))

(declare-fun d!1541534 () Bool)

(declare-fun res!2048967 () Bool)

(declare-fun e!3009282 () Bool)

(assert (=> d!1541534 (=> res!2048967 e!3009282)))

(assert (=> d!1541534 (= res!2048967 (not (is-Cons!54764 (_2!32206 lt!1967026))))))

(assert (=> d!1541534 (= (noDuplicateKeys!2409 (_2!32206 lt!1967026)) e!3009282)))

(declare-fun b!4816563 () Bool)

(declare-fun e!3009283 () Bool)

(assert (=> b!4816563 (= e!3009282 e!3009283)))

(declare-fun res!2048968 () Bool)

(assert (=> b!4816563 (=> (not res!2048968) (not e!3009283))))

(assert (=> b!4816563 (= res!2048968 (not (containsKey!4242 (t!362384 (_2!32206 lt!1967026)) (_1!32205 (h!61196 (_2!32206 lt!1967026))))))))

(declare-fun b!4816564 () Bool)

(assert (=> b!4816564 (= e!3009283 (noDuplicateKeys!2409 (t!362384 (_2!32206 lt!1967026))))))

(assert (= (and d!1541534 (not res!2048967)) b!4816563))

(assert (= (and b!4816563 res!2048968) b!4816564))

(declare-fun m!5802918 () Bool)

(assert (=> b!4816563 m!5802918))

(declare-fun m!5802920 () Bool)

(assert (=> b!4816564 m!5802920))

(assert (=> bs!1160622 d!1541534))

(declare-fun lt!1967221 () Bool)

(declare-fun d!1541536 () Bool)

(assert (=> d!1541536 (= lt!1967221 (set.member (tuple2!57825 lt!1967027 lt!1967030) (content!9793 (toList!7329 lm!2251))))))

(declare-fun e!3009285 () Bool)

(assert (=> d!1541536 (= lt!1967221 e!3009285)))

(declare-fun res!2048970 () Bool)

(assert (=> d!1541536 (=> (not res!2048970) (not e!3009285))))

(assert (=> d!1541536 (= res!2048970 (is-Cons!54765 (toList!7329 lm!2251)))))

(assert (=> d!1541536 (= (contains!18583 (toList!7329 lm!2251) (tuple2!57825 lt!1967027 lt!1967030)) lt!1967221)))

(declare-fun b!4816565 () Bool)

(declare-fun e!3009284 () Bool)

(assert (=> b!4816565 (= e!3009285 e!3009284)))

(declare-fun res!2048969 () Bool)

(assert (=> b!4816565 (=> res!2048969 e!3009284)))

(assert (=> b!4816565 (= res!2048969 (= (h!61197 (toList!7329 lm!2251)) (tuple2!57825 lt!1967027 lt!1967030)))))

(declare-fun b!4816566 () Bool)

(assert (=> b!4816566 (= e!3009284 (contains!18583 (t!362385 (toList!7329 lm!2251)) (tuple2!57825 lt!1967027 lt!1967030)))))

(assert (= (and d!1541536 res!2048970) b!4816565))

(assert (= (and b!4816565 (not res!2048969)) b!4816566))

(assert (=> d!1541536 m!5802750))

(declare-fun m!5802922 () Bool)

(assert (=> d!1541536 m!5802922))

(declare-fun m!5802924 () Bool)

(assert (=> b!4816566 m!5802924))

(assert (=> d!1541486 d!1541536))

(declare-fun d!1541540 () Bool)

(assert (=> d!1541540 (contains!18583 (toList!7329 lm!2251) (tuple2!57825 lt!1967027 lt!1967030))))

(assert (=> d!1541540 true))

(declare-fun _$41!513 () Unit!141967)

(assert (=> d!1541540 (= (choose!34925 lm!2251 lt!1967027 lt!1967030) _$41!513)))

(declare-fun bs!1160642 () Bool)

(assert (= bs!1160642 d!1541540))

(assert (=> bs!1160642 m!5802772))

(assert (=> d!1541486 d!1541540))

(assert (=> d!1541486 d!1541482))

(declare-fun d!1541542 () Bool)

(assert (=> d!1541542 (= (get!18737 (getValueByKey!2564 (toList!7329 lm!2251) lt!1967027)) (v!49083 (getValueByKey!2564 (toList!7329 lm!2251) lt!1967027)))))

(assert (=> d!1541492 d!1541542))

(declare-fun d!1541546 () Bool)

(declare-fun c!820921 () Bool)

(assert (=> d!1541546 (= c!820921 (and (is-Cons!54765 (toList!7329 lm!2251)) (= (_1!32206 (h!61197 (toList!7329 lm!2251))) lt!1967027)))))

(declare-fun e!3009290 () Option!13429)

(assert (=> d!1541546 (= (getValueByKey!2564 (toList!7329 lm!2251) lt!1967027) e!3009290)))

(declare-fun b!4816577 () Bool)

(declare-fun e!3009291 () Option!13429)

(assert (=> b!4816577 (= e!3009290 e!3009291)))

(declare-fun c!820922 () Bool)

(assert (=> b!4816577 (= c!820922 (and (is-Cons!54765 (toList!7329 lm!2251)) (not (= (_1!32206 (h!61197 (toList!7329 lm!2251))) lt!1967027))))))

(declare-fun b!4816578 () Bool)

(assert (=> b!4816578 (= e!3009291 (getValueByKey!2564 (t!362385 (toList!7329 lm!2251)) lt!1967027))))

(declare-fun b!4816576 () Bool)

(assert (=> b!4816576 (= e!3009290 (Some!13428 (_2!32206 (h!61197 (toList!7329 lm!2251)))))))

(declare-fun b!4816579 () Bool)

(assert (=> b!4816579 (= e!3009291 None!13428)))

(assert (= (and d!1541546 c!820921) b!4816576))

(assert (= (and d!1541546 (not c!820921)) b!4816577))

(assert (= (and b!4816577 c!820922) b!4816578))

(assert (= (and b!4816577 (not c!820922)) b!4816579))

(declare-fun m!5802928 () Bool)

(assert (=> b!4816578 m!5802928))

(assert (=> d!1541492 d!1541546))

(declare-fun d!1541550 () Bool)

(declare-fun res!2048975 () Bool)

(declare-fun e!3009296 () Bool)

(assert (=> d!1541550 (=> res!2048975 e!3009296)))

(assert (=> d!1541550 (= res!2048975 (and (is-Cons!54764 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))) (= (_1!32205 (h!61196 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))))) key!5322)))))

(assert (=> d!1541550 (= (containsKey!4244 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) key!5322) e!3009296)))

(declare-fun b!4816584 () Bool)

(declare-fun e!3009297 () Bool)

(assert (=> b!4816584 (= e!3009296 e!3009297)))

(declare-fun res!2048976 () Bool)

(assert (=> b!4816584 (=> (not res!2048976) (not e!3009297))))

(assert (=> b!4816584 (= res!2048976 (is-Cons!54764 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))))))

(declare-fun b!4816585 () Bool)

(assert (=> b!4816585 (= e!3009297 (containsKey!4244 (t!362384 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))) key!5322))))

(assert (= (and d!1541550 (not res!2048975)) b!4816584))

(assert (= (and b!4816584 res!2048976) b!4816585))

(declare-fun m!5802930 () Bool)

(assert (=> b!4816585 m!5802930))

(assert (=> d!1541458 d!1541550))

(declare-fun d!1541552 () Bool)

(declare-fun res!2048977 () Bool)

(declare-fun e!3009298 () Bool)

(assert (=> d!1541552 (=> res!2048977 e!3009298)))

(assert (=> d!1541552 (= res!2048977 (is-Nil!54765 (toList!7329 lm!2251)))))

(assert (=> d!1541552 (= (forall!12479 (toList!7329 lm!2251) lambda!234614) e!3009298)))

(declare-fun b!4816586 () Bool)

(declare-fun e!3009299 () Bool)

(assert (=> b!4816586 (= e!3009298 e!3009299)))

(declare-fun res!2048978 () Bool)

(assert (=> b!4816586 (=> (not res!2048978) (not e!3009299))))

(assert (=> b!4816586 (= res!2048978 (dynLambda!22163 lambda!234614 (h!61197 (toList!7329 lm!2251))))))

(declare-fun b!4816587 () Bool)

(assert (=> b!4816587 (= e!3009299 (forall!12479 (t!362385 (toList!7329 lm!2251)) lambda!234614))))

(assert (= (and d!1541552 (not res!2048977)) b!4816586))

(assert (= (and b!4816586 res!2048978) b!4816587))

(declare-fun b_lambda!188471 () Bool)

(assert (=> (not b_lambda!188471) (not b!4816586)))

(declare-fun m!5802932 () Bool)

(assert (=> b!4816586 m!5802932))

(declare-fun m!5802934 () Bool)

(assert (=> b!4816587 m!5802934))

(assert (=> d!1541498 d!1541552))

(declare-fun b!4816613 () Bool)

(assert (=> b!4816613 true))

(declare-fun bs!1160645 () Bool)

(declare-fun b!4816606 () Bool)

(assert (= bs!1160645 (and b!4816606 b!4816613)))

(declare-fun lambda!234663 () Int)

(declare-fun lambda!234662 () Int)

(assert (=> bs!1160645 (= (= (Cons!54764 (h!61196 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))) (t!362384 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))))) (t!362384 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))))) (= lambda!234663 lambda!234662))))

(assert (=> b!4816606 true))

(declare-fun bs!1160646 () Bool)

(declare-fun b!4816607 () Bool)

(assert (= bs!1160646 (and b!4816607 b!4816613)))

(declare-fun lambda!234664 () Int)

(assert (=> bs!1160646 (= (= (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) (t!362384 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))))) (= lambda!234664 lambda!234662))))

(declare-fun bs!1160647 () Bool)

(assert (= bs!1160647 (and b!4816607 b!4816606)))

(assert (=> bs!1160647 (= (= (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) (Cons!54764 (h!61196 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))) (t!362384 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))))) (= lambda!234664 lambda!234663))))

(assert (=> b!4816607 true))

(declare-fun e!3009308 () List!54892)

(assert (=> b!4816606 (= e!3009308 (Cons!54768 (_1!32205 (h!61196 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))))) (getKeysList!1137 (t!362384 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))))))))

(declare-fun c!820929 () Bool)

(assert (=> b!4816606 (= c!820929 (containsKey!4244 (t!362384 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))) (_1!32205 (h!61196 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))))))))

(declare-fun lt!1967240 () Unit!141967)

(declare-fun e!3009310 () Unit!141967)

(assert (=> b!4816606 (= lt!1967240 e!3009310)))

(declare-fun c!820930 () Bool)

(assert (=> b!4816606 (= c!820930 (contains!18589 (getKeysList!1137 (t!362384 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))))) (_1!32205 (h!61196 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))))))))

(declare-fun lt!1967241 () Unit!141967)

(declare-fun e!3009311 () Unit!141967)

(assert (=> b!4816606 (= lt!1967241 e!3009311)))

(declare-fun lt!1967237 () List!54892)

(assert (=> b!4816606 (= lt!1967237 (getKeysList!1137 (t!362384 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))))))))

(declare-fun lt!1967239 () Unit!141967)

(declare-fun lemmaForallContainsAddHeadPreserves!358 (List!54888 List!54892 tuple2!57822) Unit!141967)

(assert (=> b!4816606 (= lt!1967239 (lemmaForallContainsAddHeadPreserves!358 (t!362384 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))) lt!1967237 (h!61196 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))))))))

(declare-fun forall!12482 (List!54892 Int) Bool)

(assert (=> b!4816606 (forall!12482 lt!1967237 lambda!234663)))

(declare-fun lt!1967236 () Unit!141967)

(assert (=> b!4816606 (= lt!1967236 lt!1967239)))

(declare-fun d!1541554 () Bool)

(declare-fun e!3009309 () Bool)

(assert (=> d!1541554 e!3009309))

(declare-fun res!2048986 () Bool)

(assert (=> d!1541554 (=> (not res!2048986) (not e!3009309))))

(declare-fun lt!1967242 () List!54892)

(declare-fun noDuplicate!943 (List!54892) Bool)

(assert (=> d!1541554 (= res!2048986 (noDuplicate!943 lt!1967242))))

(assert (=> d!1541554 (= lt!1967242 e!3009308)))

(declare-fun c!820931 () Bool)

(assert (=> d!1541554 (= c!820931 (is-Cons!54764 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))))))

(assert (=> d!1541554 (invariantList!1790 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))))))

(assert (=> d!1541554 (= (getKeysList!1137 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))) lt!1967242)))

(declare-fun res!2048985 () Bool)

(assert (=> b!4816607 (=> (not res!2048985) (not e!3009309))))

(assert (=> b!4816607 (= res!2048985 (forall!12482 lt!1967242 lambda!234664))))

(declare-fun b!4816608 () Bool)

(declare-fun Unit!141988 () Unit!141967)

(assert (=> b!4816608 (= e!3009310 Unit!141988)))

(declare-fun b!4816609 () Bool)

(assert (=> b!4816609 (= e!3009308 Nil!54768)))

(declare-fun b!4816610 () Bool)

(declare-fun res!2048987 () Bool)

(assert (=> b!4816610 (=> (not res!2048987) (not e!3009309))))

(declare-fun length!742 (List!54892) Int)

(declare-fun length!743 (List!54888) Int)

(assert (=> b!4816610 (= res!2048987 (= (length!742 lt!1967242) (length!743 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))))))))

(declare-fun lambda!234665 () Int)

(declare-fun b!4816611 () Bool)

(declare-fun content!9795 (List!54892) (Set K!16422))

(declare-fun map!12516 (List!54888 Int) List!54892)

(assert (=> b!4816611 (= e!3009309 (= (content!9795 lt!1967242) (content!9795 (map!12516 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) lambda!234665))))))

(declare-fun b!4816612 () Bool)

(assert (=> b!4816612 false))

(declare-fun Unit!141989 () Unit!141967)

(assert (=> b!4816612 (= e!3009310 Unit!141989)))

(assert (=> b!4816613 false))

(declare-fun lt!1967238 () Unit!141967)

(declare-fun forallContained!4342 (List!54892 Int K!16422) Unit!141967)

(assert (=> b!4816613 (= lt!1967238 (forallContained!4342 (getKeysList!1137 (t!362384 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))))) lambda!234662 (_1!32205 (h!61196 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))))))))

(declare-fun Unit!141990 () Unit!141967)

(assert (=> b!4816613 (= e!3009311 Unit!141990)))

(declare-fun b!4816614 () Bool)

(declare-fun Unit!141991 () Unit!141967)

(assert (=> b!4816614 (= e!3009311 Unit!141991)))

(assert (= (and d!1541554 c!820931) b!4816606))

(assert (= (and d!1541554 (not c!820931)) b!4816609))

(assert (= (and b!4816606 c!820929) b!4816612))

(assert (= (and b!4816606 (not c!820929)) b!4816608))

(assert (= (and b!4816606 c!820930) b!4816613))

(assert (= (and b!4816606 (not c!820930)) b!4816614))

(assert (= (and d!1541554 res!2048986) b!4816610))

(assert (= (and b!4816610 res!2048987) b!4816607))

(assert (= (and b!4816607 res!2048985) b!4816611))

(declare-fun m!5802936 () Bool)

(assert (=> b!4816610 m!5802936))

(declare-fun m!5802938 () Bool)

(assert (=> b!4816610 m!5802938))

(declare-fun m!5802940 () Bool)

(assert (=> d!1541554 m!5802940))

(declare-fun m!5802942 () Bool)

(assert (=> d!1541554 m!5802942))

(declare-fun m!5802944 () Bool)

(assert (=> b!4816611 m!5802944))

(declare-fun m!5802946 () Bool)

(assert (=> b!4816611 m!5802946))

(assert (=> b!4816611 m!5802946))

(declare-fun m!5802948 () Bool)

(assert (=> b!4816611 m!5802948))

(declare-fun m!5802950 () Bool)

(assert (=> b!4816613 m!5802950))

(assert (=> b!4816613 m!5802950))

(declare-fun m!5802952 () Bool)

(assert (=> b!4816613 m!5802952))

(declare-fun m!5802954 () Bool)

(assert (=> b!4816606 m!5802954))

(declare-fun m!5802956 () Bool)

(assert (=> b!4816606 m!5802956))

(assert (=> b!4816606 m!5802950))

(declare-fun m!5802958 () Bool)

(assert (=> b!4816606 m!5802958))

(assert (=> b!4816606 m!5802950))

(declare-fun m!5802960 () Bool)

(assert (=> b!4816606 m!5802960))

(declare-fun m!5802962 () Bool)

(assert (=> b!4816607 m!5802962))

(assert (=> b!4816385 d!1541554))

(declare-fun d!1541556 () Bool)

(declare-fun c!820934 () Bool)

(assert (=> d!1541556 (= c!820934 (is-Nil!54765 (toList!7329 lm!2251)))))

(declare-fun e!3009314 () (Set tuple2!57824))

(assert (=> d!1541556 (= (content!9793 (toList!7329 lm!2251)) e!3009314)))

(declare-fun b!4816621 () Bool)

(assert (=> b!4816621 (= e!3009314 (as set.empty (Set tuple2!57824)))))

(declare-fun b!4816622 () Bool)

(assert (=> b!4816622 (= e!3009314 (set.union (set.insert (h!61197 (toList!7329 lm!2251)) (as set.empty (Set tuple2!57824))) (content!9793 (t!362385 (toList!7329 lm!2251)))))))

(assert (= (and d!1541556 c!820934) b!4816621))

(assert (= (and d!1541556 (not c!820934)) b!4816622))

(declare-fun m!5802964 () Bool)

(assert (=> b!4816622 m!5802964))

(declare-fun m!5802966 () Bool)

(assert (=> b!4816622 m!5802966))

(assert (=> d!1541478 d!1541556))

(declare-fun d!1541558 () Bool)

(declare-fun lt!1967245 () Bool)

(assert (=> d!1541558 (= lt!1967245 (set.member key!5322 (content!9795 (keys!20110 (extractMap!2623 (toList!7329 lm!2251))))))))

(declare-fun e!3009320 () Bool)

(assert (=> d!1541558 (= lt!1967245 e!3009320)))

(declare-fun res!2048992 () Bool)

(assert (=> d!1541558 (=> (not res!2048992) (not e!3009320))))

(assert (=> d!1541558 (= res!2048992 (is-Cons!54768 (keys!20110 (extractMap!2623 (toList!7329 lm!2251)))))))

(assert (=> d!1541558 (= (contains!18589 (keys!20110 (extractMap!2623 (toList!7329 lm!2251))) key!5322) lt!1967245)))

(declare-fun b!4816627 () Bool)

(declare-fun e!3009319 () Bool)

(assert (=> b!4816627 (= e!3009320 e!3009319)))

(declare-fun res!2048993 () Bool)

(assert (=> b!4816627 (=> res!2048993 e!3009319)))

(assert (=> b!4816627 (= res!2048993 (= (h!61200 (keys!20110 (extractMap!2623 (toList!7329 lm!2251)))) key!5322))))

(declare-fun b!4816628 () Bool)

(assert (=> b!4816628 (= e!3009319 (contains!18589 (t!362388 (keys!20110 (extractMap!2623 (toList!7329 lm!2251)))) key!5322))))

(assert (= (and d!1541558 res!2048992) b!4816627))

(assert (= (and b!4816627 (not res!2048993)) b!4816628))

(assert (=> d!1541558 m!5802726))

(declare-fun m!5802968 () Bool)

(assert (=> d!1541558 m!5802968))

(declare-fun m!5802970 () Bool)

(assert (=> d!1541558 m!5802970))

(declare-fun m!5802972 () Bool)

(assert (=> b!4816628 m!5802972))

(assert (=> b!4816384 d!1541558))

(declare-fun bs!1160648 () Bool)

(declare-fun b!4816636 () Bool)

(assert (= bs!1160648 (and b!4816636 b!4816613)))

(declare-fun lambda!234670 () Int)

(assert (=> bs!1160648 (= (= (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) (t!362384 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))))) (= lambda!234670 lambda!234662))))

(declare-fun bs!1160649 () Bool)

(assert (= bs!1160649 (and b!4816636 b!4816606)))

(assert (=> bs!1160649 (= (= (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) (Cons!54764 (h!61196 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))) (t!362384 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))))) (= lambda!234670 lambda!234663))))

(declare-fun bs!1160650 () Bool)

(assert (= bs!1160650 (and b!4816636 b!4816607)))

(assert (=> bs!1160650 (= lambda!234670 lambda!234664)))

(assert (=> b!4816636 true))

(declare-fun bs!1160651 () Bool)

(declare-fun b!4816637 () Bool)

(assert (= bs!1160651 (and b!4816637 b!4816611)))

(declare-fun lambda!234671 () Int)

(assert (=> bs!1160651 (= lambda!234671 lambda!234665)))

(declare-fun d!1541560 () Bool)

(declare-fun e!3009323 () Bool)

(assert (=> d!1541560 e!3009323))

(declare-fun res!2049001 () Bool)

(assert (=> d!1541560 (=> (not res!2049001) (not e!3009323))))

(declare-fun lt!1967248 () List!54892)

(assert (=> d!1541560 (= res!2049001 (noDuplicate!943 lt!1967248))))

(assert (=> d!1541560 (= lt!1967248 (getKeysList!1137 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))))))

(assert (=> d!1541560 (= (keys!20110 (extractMap!2623 (toList!7329 lm!2251))) lt!1967248)))

(declare-fun b!4816635 () Bool)

(declare-fun res!2049000 () Bool)

(assert (=> b!4816635 (=> (not res!2049000) (not e!3009323))))

(assert (=> b!4816635 (= res!2049000 (= (length!742 lt!1967248) (length!743 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))))))))

(declare-fun res!2049002 () Bool)

(assert (=> b!4816636 (=> (not res!2049002) (not e!3009323))))

(assert (=> b!4816636 (= res!2049002 (forall!12482 lt!1967248 lambda!234670))))

(assert (=> b!4816637 (= e!3009323 (= (content!9795 lt!1967248) (content!9795 (map!12516 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) lambda!234671))))))

(assert (= (and d!1541560 res!2049001) b!4816635))

(assert (= (and b!4816635 res!2049000) b!4816636))

(assert (= (and b!4816636 res!2049002) b!4816637))

(declare-fun m!5802974 () Bool)

(assert (=> d!1541560 m!5802974))

(assert (=> d!1541560 m!5802718))

(declare-fun m!5802976 () Bool)

(assert (=> b!4816635 m!5802976))

(assert (=> b!4816635 m!5802938))

(declare-fun m!5802978 () Bool)

(assert (=> b!4816636 m!5802978))

(declare-fun m!5802980 () Bool)

(assert (=> b!4816637 m!5802980))

(declare-fun m!5802982 () Bool)

(assert (=> b!4816637 m!5802982))

(assert (=> b!4816637 m!5802982))

(declare-fun m!5802984 () Bool)

(assert (=> b!4816637 m!5802984))

(assert (=> b!4816384 d!1541560))

(declare-fun d!1541562 () Bool)

(declare-fun isEmpty!29595 (Option!13428) Bool)

(assert (=> d!1541562 (= (isDefined!10546 (getValueByKey!2563 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) key!5322)) (not (isEmpty!29595 (getValueByKey!2563 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) key!5322))))))

(declare-fun bs!1160652 () Bool)

(assert (= bs!1160652 d!1541562))

(assert (=> bs!1160652 m!5802712))

(declare-fun m!5802986 () Bool)

(assert (=> bs!1160652 m!5802986))

(assert (=> b!4816382 d!1541562))

(declare-fun d!1541564 () Bool)

(declare-fun c!820939 () Bool)

(assert (=> d!1541564 (= c!820939 (and (is-Cons!54764 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))) (= (_1!32205 (h!61196 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))))) key!5322)))))

(declare-fun e!3009328 () Option!13428)

(assert (=> d!1541564 (= (getValueByKey!2563 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) key!5322) e!3009328)))

(declare-fun b!4816649 () Bool)

(declare-fun e!3009329 () Option!13428)

(assert (=> b!4816649 (= e!3009328 e!3009329)))

(declare-fun c!820940 () Bool)

(assert (=> b!4816649 (= c!820940 (and (is-Cons!54764 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))) (not (= (_1!32205 (h!61196 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))))) key!5322))))))

(declare-fun b!4816651 () Bool)

(assert (=> b!4816651 (= e!3009329 None!13427)))

(declare-fun b!4816650 () Bool)

(assert (=> b!4816650 (= e!3009329 (getValueByKey!2563 (t!362384 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))) key!5322))))

(declare-fun b!4816648 () Bool)

(assert (=> b!4816648 (= e!3009328 (Some!13427 (_2!32205 (h!61196 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))))))))

(assert (= (and d!1541564 c!820939) b!4816648))

(assert (= (and d!1541564 (not c!820939)) b!4816649))

(assert (= (and b!4816649 c!820940) b!4816650))

(assert (= (and b!4816649 (not c!820940)) b!4816651))

(declare-fun m!5802988 () Bool)

(assert (=> b!4816650 m!5802988))

(assert (=> b!4816382 d!1541564))

(declare-fun d!1541566 () Bool)

(assert (=> d!1541566 (= (get!18736 lt!1967111) (v!49078 lt!1967111))))

(assert (=> b!4816462 d!1541566))

(declare-fun d!1541568 () Bool)

(declare-fun lt!1967251 () Bool)

(declare-fun content!9796 (List!54888) (Set tuple2!57822))

(assert (=> d!1541568 (= lt!1967251 (set.member (get!18736 lt!1967111) (content!9796 lt!1967030)))))

(declare-fun e!3009335 () Bool)

(assert (=> d!1541568 (= lt!1967251 e!3009335)))

(declare-fun res!2049007 () Bool)

(assert (=> d!1541568 (=> (not res!2049007) (not e!3009335))))

(assert (=> d!1541568 (= res!2049007 (is-Cons!54764 lt!1967030))))

(assert (=> d!1541568 (= (contains!18590 lt!1967030 (get!18736 lt!1967111)) lt!1967251)))

(declare-fun b!4816656 () Bool)

(declare-fun e!3009334 () Bool)

(assert (=> b!4816656 (= e!3009335 e!3009334)))

(declare-fun res!2049008 () Bool)

(assert (=> b!4816656 (=> res!2049008 e!3009334)))

(assert (=> b!4816656 (= res!2049008 (= (h!61196 lt!1967030) (get!18736 lt!1967111)))))

(declare-fun b!4816657 () Bool)

(assert (=> b!4816657 (= e!3009334 (contains!18590 (t!362384 lt!1967030) (get!18736 lt!1967111)))))

(assert (= (and d!1541568 res!2049007) b!4816656))

(assert (= (and b!4816656 (not res!2049008)) b!4816657))

(declare-fun m!5802990 () Bool)

(assert (=> d!1541568 m!5802990))

(assert (=> d!1541568 m!5802796))

(declare-fun m!5802992 () Bool)

(assert (=> d!1541568 m!5802992))

(assert (=> b!4816657 m!5802796))

(declare-fun m!5802994 () Bool)

(assert (=> b!4816657 m!5802994))

(assert (=> b!4816461 d!1541568))

(assert (=> b!4816461 d!1541566))

(assert (=> b!4816381 d!1541550))

(declare-fun d!1541570 () Bool)

(assert (=> d!1541570 (containsKey!4244 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) key!5322)))

(declare-fun lt!1967254 () Unit!141967)

(declare-fun choose!34930 (List!54888 K!16422) Unit!141967)

(assert (=> d!1541570 (= lt!1967254 (choose!34930 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) key!5322))))

(assert (=> d!1541570 (invariantList!1790 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))))))

(assert (=> d!1541570 (= (lemmaInGetKeysListThenContainsKey!1137 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) key!5322) lt!1967254)))

(declare-fun bs!1160653 () Bool)

(assert (= bs!1160653 d!1541570))

(assert (=> bs!1160653 m!5802720))

(declare-fun m!5802996 () Bool)

(assert (=> bs!1160653 m!5802996))

(assert (=> bs!1160653 m!5802942))

(assert (=> b!4816381 d!1541570))

(declare-fun d!1541572 () Bool)

(declare-fun res!2049009 () Bool)

(declare-fun e!3009336 () Bool)

(assert (=> d!1541572 (=> res!2049009 e!3009336)))

(assert (=> d!1541572 (= res!2049009 (not (is-Cons!54764 (_2!32206 (h!61197 (toList!7329 lm!2251))))))))

(assert (=> d!1541572 (= (noDuplicateKeys!2409 (_2!32206 (h!61197 (toList!7329 lm!2251)))) e!3009336)))

(declare-fun b!4816658 () Bool)

(declare-fun e!3009337 () Bool)

(assert (=> b!4816658 (= e!3009336 e!3009337)))

(declare-fun res!2049010 () Bool)

(assert (=> b!4816658 (=> (not res!2049010) (not e!3009337))))

(assert (=> b!4816658 (= res!2049010 (not (containsKey!4242 (t!362384 (_2!32206 (h!61197 (toList!7329 lm!2251)))) (_1!32205 (h!61196 (_2!32206 (h!61197 (toList!7329 lm!2251))))))))))

(declare-fun b!4816659 () Bool)

(assert (=> b!4816659 (= e!3009337 (noDuplicateKeys!2409 (t!362384 (_2!32206 (h!61197 (toList!7329 lm!2251))))))))

(assert (= (and d!1541572 (not res!2049009)) b!4816658))

(assert (= (and b!4816658 res!2049010) b!4816659))

(declare-fun m!5802998 () Bool)

(assert (=> b!4816658 m!5802998))

(declare-fun m!5803000 () Bool)

(assert (=> b!4816659 m!5803000))

(assert (=> bs!1160621 d!1541572))

(declare-fun d!1541574 () Bool)

(assert (=> d!1541574 (= (isEmpty!29593 lt!1967111) (not (is-Some!13425 lt!1967111)))))

(assert (=> d!1541488 d!1541574))

(declare-fun d!1541576 () Bool)

(declare-fun res!2049011 () Bool)

(declare-fun e!3009338 () Bool)

(assert (=> d!1541576 (=> res!2049011 e!3009338)))

(assert (=> d!1541576 (= res!2049011 (not (is-Cons!54764 lt!1967030)))))

(assert (=> d!1541576 (= (noDuplicateKeys!2409 lt!1967030) e!3009338)))

(declare-fun b!4816660 () Bool)

(declare-fun e!3009339 () Bool)

(assert (=> b!4816660 (= e!3009338 e!3009339)))

(declare-fun res!2049012 () Bool)

(assert (=> b!4816660 (=> (not res!2049012) (not e!3009339))))

(assert (=> b!4816660 (= res!2049012 (not (containsKey!4242 (t!362384 lt!1967030) (_1!32205 (h!61196 lt!1967030)))))))

(declare-fun b!4816661 () Bool)

(assert (=> b!4816661 (= e!3009339 (noDuplicateKeys!2409 (t!362384 lt!1967030)))))

(assert (= (and d!1541576 (not res!2049011)) b!4816660))

(assert (= (and b!4816660 res!2049012) b!4816661))

(declare-fun m!5803002 () Bool)

(assert (=> b!4816660 m!5803002))

(declare-fun m!5803004 () Bool)

(assert (=> b!4816661 m!5803004))

(assert (=> d!1541488 d!1541576))

(assert (=> b!4816380 d!1541558))

(assert (=> b!4816380 d!1541560))

(declare-fun d!1541578 () Bool)

(declare-fun res!2049017 () Bool)

(declare-fun e!3009344 () Bool)

(assert (=> d!1541578 (=> res!2049017 e!3009344)))

(assert (=> d!1541578 (= res!2049017 (and (is-Cons!54765 (toList!7329 lm!2251)) (= (_1!32206 (h!61197 (toList!7329 lm!2251))) lt!1967027)))))

(assert (=> d!1541578 (= (containsKey!4245 (toList!7329 lm!2251) lt!1967027) e!3009344)))

(declare-fun b!4816666 () Bool)

(declare-fun e!3009345 () Bool)

(assert (=> b!4816666 (= e!3009344 e!3009345)))

(declare-fun res!2049018 () Bool)

(assert (=> b!4816666 (=> (not res!2049018) (not e!3009345))))

(assert (=> b!4816666 (= res!2049018 (and (or (not (is-Cons!54765 (toList!7329 lm!2251))) (bvsle (_1!32206 (h!61197 (toList!7329 lm!2251))) lt!1967027)) (is-Cons!54765 (toList!7329 lm!2251)) (bvslt (_1!32206 (h!61197 (toList!7329 lm!2251))) lt!1967027)))))

(declare-fun b!4816667 () Bool)

(assert (=> b!4816667 (= e!3009345 (containsKey!4245 (t!362385 (toList!7329 lm!2251)) lt!1967027))))

(assert (= (and d!1541578 (not res!2049017)) b!4816666))

(assert (= (and b!4816666 res!2049018) b!4816667))

(declare-fun m!5803006 () Bool)

(assert (=> b!4816667 m!5803006))

(assert (=> d!1541482 d!1541578))

(declare-fun d!1541580 () Bool)

(declare-fun lt!1967255 () Bool)

(assert (=> d!1541580 (= lt!1967255 (set.member key!5322 (content!9795 e!3009158)))))

(declare-fun e!3009347 () Bool)

(assert (=> d!1541580 (= lt!1967255 e!3009347)))

(declare-fun res!2049019 () Bool)

(assert (=> d!1541580 (=> (not res!2049019) (not e!3009347))))

(assert (=> d!1541580 (= res!2049019 (is-Cons!54768 e!3009158))))

(assert (=> d!1541580 (= (contains!18589 e!3009158 key!5322) lt!1967255)))

(declare-fun b!4816668 () Bool)

(declare-fun e!3009346 () Bool)

(assert (=> b!4816668 (= e!3009347 e!3009346)))

(declare-fun res!2049020 () Bool)

(assert (=> b!4816668 (=> res!2049020 e!3009346)))

(assert (=> b!4816668 (= res!2049020 (= (h!61200 e!3009158) key!5322))))

(declare-fun b!4816669 () Bool)

(assert (=> b!4816669 (= e!3009346 (contains!18589 (t!362388 e!3009158) key!5322))))

(assert (= (and d!1541580 res!2049019) b!4816668))

(assert (= (and b!4816668 (not res!2049020)) b!4816669))

(declare-fun m!5803008 () Bool)

(assert (=> d!1541580 m!5803008))

(declare-fun m!5803010 () Bool)

(assert (=> d!1541580 m!5803010))

(declare-fun m!5803012 () Bool)

(assert (=> b!4816669 m!5803012))

(assert (=> bm!335972 d!1541580))

(assert (=> b!4816379 d!1541560))

(declare-fun d!1541582 () Bool)

(assert (=> d!1541582 (= (isDefined!10548 lt!1967111) (not (isEmpty!29593 lt!1967111)))))

(declare-fun bs!1160654 () Bool)

(assert (= bs!1160654 d!1541582))

(assert (=> bs!1160654 m!5802792))

(assert (=> b!4816458 d!1541582))

(declare-fun d!1541584 () Bool)

(declare-fun res!2049021 () Bool)

(declare-fun e!3009348 () Bool)

(assert (=> d!1541584 (=> res!2049021 e!3009348)))

(assert (=> d!1541584 (= res!2049021 (is-Nil!54765 (t!362385 (toList!7329 lm!2251))))))

(assert (=> d!1541584 (= (forall!12479 (t!362385 (toList!7329 lm!2251)) lambda!234595) e!3009348)))

(declare-fun b!4816670 () Bool)

(declare-fun e!3009349 () Bool)

(assert (=> b!4816670 (= e!3009348 e!3009349)))

(declare-fun res!2049022 () Bool)

(assert (=> b!4816670 (=> (not res!2049022) (not e!3009349))))

(assert (=> b!4816670 (= res!2049022 (dynLambda!22163 lambda!234595 (h!61197 (t!362385 (toList!7329 lm!2251)))))))

(declare-fun b!4816671 () Bool)

(assert (=> b!4816671 (= e!3009349 (forall!12479 (t!362385 (t!362385 (toList!7329 lm!2251))) lambda!234595))))

(assert (= (and d!1541584 (not res!2049021)) b!4816670))

(assert (= (and b!4816670 res!2049022) b!4816671))

(declare-fun b_lambda!188473 () Bool)

(assert (=> (not b_lambda!188473) (not b!4816670)))

(declare-fun m!5803014 () Bool)

(assert (=> b!4816670 m!5803014))

(declare-fun m!5803016 () Bool)

(assert (=> b!4816671 m!5803016))

(assert (=> b!4816353 d!1541584))

(declare-fun d!1541586 () Bool)

(declare-fun res!2049027 () Bool)

(declare-fun e!3009354 () Bool)

(assert (=> d!1541586 (=> res!2049027 e!3009354)))

(assert (=> d!1541586 (= res!2049027 (or (is-Nil!54765 (toList!7329 lm!2251)) (is-Nil!54765 (t!362385 (toList!7329 lm!2251)))))))

(assert (=> d!1541586 (= (isStrictlySorted!951 (toList!7329 lm!2251)) e!3009354)))

(declare-fun b!4816676 () Bool)

(declare-fun e!3009355 () Bool)

(assert (=> b!4816676 (= e!3009354 e!3009355)))

(declare-fun res!2049028 () Bool)

(assert (=> b!4816676 (=> (not res!2049028) (not e!3009355))))

(assert (=> b!4816676 (= res!2049028 (bvslt (_1!32206 (h!61197 (toList!7329 lm!2251))) (_1!32206 (h!61197 (t!362385 (toList!7329 lm!2251))))))))

(declare-fun b!4816677 () Bool)

(assert (=> b!4816677 (= e!3009355 (isStrictlySorted!951 (t!362385 (toList!7329 lm!2251))))))

(assert (= (and d!1541586 (not res!2049027)) b!4816676))

(assert (= (and b!4816676 res!2049028) b!4816677))

(declare-fun m!5803018 () Bool)

(assert (=> b!4816677 m!5803018))

(assert (=> d!1541496 d!1541586))

(declare-fun d!1541588 () Bool)

(declare-fun e!3009359 () Bool)

(assert (=> d!1541588 e!3009359))

(declare-fun res!2049030 () Bool)

(assert (=> d!1541588 (=> res!2049030 e!3009359)))

(declare-fun e!3009358 () Bool)

(assert (=> d!1541588 (= res!2049030 e!3009358)))

(declare-fun res!2049032 () Bool)

(assert (=> d!1541588 (=> (not res!2049032) (not e!3009358))))

(declare-fun lt!1967256 () Option!13426)

(assert (=> d!1541588 (= res!2049032 (isEmpty!29593 lt!1967256))))

(declare-fun e!3009357 () Option!13426)

(assert (=> d!1541588 (= lt!1967256 e!3009357)))

(declare-fun c!820942 () Bool)

(assert (=> d!1541588 (= c!820942 (and (is-Cons!54764 (t!362384 lt!1967030)) (= (_1!32205 (h!61196 (t!362384 lt!1967030))) key!5322)))))

(assert (=> d!1541588 (noDuplicateKeys!2409 (t!362384 lt!1967030))))

(assert (=> d!1541588 (= (getPair!1011 (t!362384 lt!1967030) key!5322) lt!1967256)))

(declare-fun b!4816678 () Bool)

(assert (=> b!4816678 (= e!3009358 (not (containsKey!4242 (t!362384 lt!1967030) key!5322)))))

(declare-fun b!4816679 () Bool)

(declare-fun e!3009356 () Option!13426)

(assert (=> b!4816679 (= e!3009356 None!13425)))

(declare-fun b!4816680 () Bool)

(assert (=> b!4816680 (= e!3009356 (getPair!1011 (t!362384 (t!362384 lt!1967030)) key!5322))))

(declare-fun b!4816681 () Bool)

(declare-fun e!3009360 () Bool)

(assert (=> b!4816681 (= e!3009359 e!3009360)))

(declare-fun res!2049031 () Bool)

(assert (=> b!4816681 (=> (not res!2049031) (not e!3009360))))

(assert (=> b!4816681 (= res!2049031 (isDefined!10548 lt!1967256))))

(declare-fun b!4816682 () Bool)

(assert (=> b!4816682 (= e!3009357 e!3009356)))

(declare-fun c!820941 () Bool)

(assert (=> b!4816682 (= c!820941 (is-Cons!54764 (t!362384 lt!1967030)))))

(declare-fun b!4816683 () Bool)

(assert (=> b!4816683 (= e!3009357 (Some!13425 (h!61196 (t!362384 lt!1967030))))))

(declare-fun b!4816684 () Bool)

(assert (=> b!4816684 (= e!3009360 (contains!18590 (t!362384 lt!1967030) (get!18736 lt!1967256)))))

(declare-fun b!4816685 () Bool)

(declare-fun res!2049029 () Bool)

(assert (=> b!4816685 (=> (not res!2049029) (not e!3009360))))

(assert (=> b!4816685 (= res!2049029 (= (_1!32205 (get!18736 lt!1967256)) key!5322))))

(assert (= (and d!1541588 c!820942) b!4816683))

(assert (= (and d!1541588 (not c!820942)) b!4816682))

(assert (= (and b!4816682 c!820941) b!4816680))

(assert (= (and b!4816682 (not c!820941)) b!4816679))

(assert (= (and d!1541588 res!2049032) b!4816678))

(assert (= (and d!1541588 (not res!2049030)) b!4816681))

(assert (= (and b!4816681 res!2049031) b!4816685))

(assert (= (and b!4816685 res!2049029) b!4816684))

(declare-fun m!5803020 () Bool)

(assert (=> b!4816681 m!5803020))

(declare-fun m!5803022 () Bool)

(assert (=> b!4816680 m!5803022))

(declare-fun m!5803024 () Bool)

(assert (=> d!1541588 m!5803024))

(assert (=> d!1541588 m!5803004))

(declare-fun m!5803026 () Bool)

(assert (=> b!4816685 m!5803026))

(assert (=> b!4816684 m!5803026))

(assert (=> b!4816684 m!5803026))

(declare-fun m!5803028 () Bool)

(assert (=> b!4816684 m!5803028))

(assert (=> b!4816678 m!5802812))

(assert (=> b!4816457 d!1541588))

(declare-fun d!1541590 () Bool)

(assert (=> d!1541590 (isDefined!10546 (getValueByKey!2563 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) key!5322))))

(declare-fun lt!1967259 () Unit!141967)

(declare-fun choose!34931 (List!54888 K!16422) Unit!141967)

(assert (=> d!1541590 (= lt!1967259 (choose!34931 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) key!5322))))

(assert (=> d!1541590 (invariantList!1790 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))))))

(assert (=> d!1541590 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2349 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) key!5322) lt!1967259)))

(declare-fun bs!1160655 () Bool)

(assert (= bs!1160655 d!1541590))

(assert (=> bs!1160655 m!5802712))

(assert (=> bs!1160655 m!5802712))

(assert (=> bs!1160655 m!5802714))

(declare-fun m!5803030 () Bool)

(assert (=> bs!1160655 m!5803030))

(assert (=> bs!1160655 m!5802942))

(assert (=> b!4816378 d!1541590))

(assert (=> b!4816378 d!1541562))

(assert (=> b!4816378 d!1541564))

(declare-fun d!1541592 () Bool)

(assert (=> d!1541592 (contains!18589 (getKeysList!1137 (toList!7330 (extractMap!2623 (toList!7329 lm!2251)))) key!5322)))

(declare-fun lt!1967262 () Unit!141967)

(declare-fun choose!34932 (List!54888 K!16422) Unit!141967)

(assert (=> d!1541592 (= lt!1967262 (choose!34932 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) key!5322))))

(assert (=> d!1541592 (invariantList!1790 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))))))

(assert (=> d!1541592 (= (lemmaInListThenGetKeysListContains!1132 (toList!7330 (extractMap!2623 (toList!7329 lm!2251))) key!5322) lt!1967262)))

(declare-fun bs!1160656 () Bool)

(assert (= bs!1160656 d!1541592))

(assert (=> bs!1160656 m!5802718))

(assert (=> bs!1160656 m!5802718))

(declare-fun m!5803032 () Bool)

(assert (=> bs!1160656 m!5803032))

(declare-fun m!5803034 () Bool)

(assert (=> bs!1160656 m!5803034))

(assert (=> bs!1160656 m!5802942))

(assert (=> b!4816378 d!1541592))

(declare-fun d!1541594 () Bool)

(declare-fun isEmpty!29596 (Option!13429) Bool)

(assert (=> d!1541594 (= (isDefined!10547 (getValueByKey!2564 (toList!7329 lm!2251) lt!1967027)) (not (isEmpty!29596 (getValueByKey!2564 (toList!7329 lm!2251) lt!1967027))))))

(declare-fun bs!1160657 () Bool)

(assert (= bs!1160657 d!1541594))

(assert (=> bs!1160657 m!5802768))

(declare-fun m!5803036 () Bool)

(assert (=> bs!1160657 m!5803036))

(assert (=> b!4816413 d!1541594))

(assert (=> b!4816413 d!1541546))

(declare-fun d!1541596 () Bool)

(declare-fun res!2049033 () Bool)

(declare-fun e!3009361 () Bool)

(assert (=> d!1541596 (=> res!2049033 e!3009361)))

(assert (=> d!1541596 (= res!2049033 (and (is-Cons!54764 (t!362384 lt!1967030)) (= (_1!32205 (h!61196 (t!362384 lt!1967030))) key!5322)))))

(assert (=> d!1541596 (= (containsKey!4242 (t!362384 lt!1967030) key!5322) e!3009361)))

(declare-fun b!4816686 () Bool)

(declare-fun e!3009362 () Bool)

(assert (=> b!4816686 (= e!3009361 e!3009362)))

(declare-fun res!2049034 () Bool)

(assert (=> b!4816686 (=> (not res!2049034) (not e!3009362))))

(assert (=> b!4816686 (= res!2049034 (is-Cons!54764 (t!362384 lt!1967030)))))

(declare-fun b!4816687 () Bool)

(assert (=> b!4816687 (= e!3009362 (containsKey!4242 (t!362384 (t!362384 lt!1967030)) key!5322))))

(assert (= (and d!1541596 (not res!2049033)) b!4816686))

(assert (= (and b!4816686 res!2049034) b!4816687))

(declare-fun m!5803038 () Bool)

(assert (=> b!4816687 m!5803038))

(assert (=> b!4816476 d!1541596))

(declare-fun d!1541598 () Bool)

(declare-fun choose!34934 (Hashable!7173 K!16422) (_ BitVec 64))

(assert (=> d!1541598 (= (hash!5246 hashF!1486 key!5322) (choose!34934 hashF!1486 key!5322))))

(declare-fun bs!1160658 () Bool)

(assert (= bs!1160658 d!1541598))

(declare-fun m!5803040 () Bool)

(assert (=> bs!1160658 m!5803040))

(assert (=> d!1541476 d!1541598))

(assert (=> b!4816455 d!1541500))

(declare-fun d!1541600 () Bool)

(declare-fun e!3009364 () Bool)

(assert (=> d!1541600 e!3009364))

(declare-fun res!2049035 () Bool)

(assert (=> d!1541600 (=> res!2049035 e!3009364)))

(declare-fun lt!1967265 () Bool)

(assert (=> d!1541600 (= res!2049035 (not lt!1967265))))

(declare-fun lt!1967266 () Bool)

(assert (=> d!1541600 (= lt!1967265 lt!1967266)))

(declare-fun lt!1967263 () Unit!141967)

(declare-fun e!3009363 () Unit!141967)

(assert (=> d!1541600 (= lt!1967263 e!3009363)))

(declare-fun c!820943 () Bool)

(assert (=> d!1541600 (= c!820943 lt!1967266)))

(assert (=> d!1541600 (= lt!1967266 (containsKey!4245 (toList!7329 lm!2251) (hash!5244 hashF!1486 key!5322)))))

(assert (=> d!1541600 (= (contains!18584 lm!2251 (hash!5244 hashF!1486 key!5322)) lt!1967265)))

(declare-fun b!4816688 () Bool)

(declare-fun lt!1967264 () Unit!141967)

(assert (=> b!4816688 (= e!3009363 lt!1967264)))

(assert (=> b!4816688 (= lt!1967264 (lemmaContainsKeyImpliesGetValueByKeyDefined!2350 (toList!7329 lm!2251) (hash!5244 hashF!1486 key!5322)))))

(assert (=> b!4816688 (isDefined!10547 (getValueByKey!2564 (toList!7329 lm!2251) (hash!5244 hashF!1486 key!5322)))))

(declare-fun b!4816689 () Bool)

(declare-fun Unit!141992 () Unit!141967)

(assert (=> b!4816689 (= e!3009363 Unit!141992)))

(declare-fun b!4816690 () Bool)

(assert (=> b!4816690 (= e!3009364 (isDefined!10547 (getValueByKey!2564 (toList!7329 lm!2251) (hash!5244 hashF!1486 key!5322))))))

(assert (= (and d!1541600 c!820943) b!4816688))

(assert (= (and d!1541600 (not c!820943)) b!4816689))

(assert (= (and d!1541600 (not res!2049035)) b!4816690))

(assert (=> d!1541600 m!5802652))

(declare-fun m!5803042 () Bool)

(assert (=> d!1541600 m!5803042))

(assert (=> b!4816688 m!5802652))

(declare-fun m!5803044 () Bool)

(assert (=> b!4816688 m!5803044))

(assert (=> b!4816688 m!5802652))

(declare-fun m!5803046 () Bool)

(assert (=> b!4816688 m!5803046))

(assert (=> b!4816688 m!5803046))

(declare-fun m!5803048 () Bool)

(assert (=> b!4816688 m!5803048))

(assert (=> b!4816690 m!5802652))

(assert (=> b!4816690 m!5803046))

(assert (=> b!4816690 m!5803046))

(assert (=> b!4816690 m!5803048))

(assert (=> d!1541494 d!1541600))

(assert (=> d!1541494 d!1541476))

(declare-fun d!1541602 () Bool)

(assert (=> d!1541602 (contains!18584 lm!2251 (hash!5244 hashF!1486 key!5322))))

(assert (=> d!1541602 true))

(declare-fun _$27!1628 () Unit!141967)

(assert (=> d!1541602 (= (choose!34926 lm!2251 key!5322 hashF!1486) _$27!1628)))

(declare-fun bs!1160659 () Bool)

(assert (= bs!1160659 d!1541602))

(assert (=> bs!1160659 m!5802652))

(assert (=> bs!1160659 m!5802652))

(assert (=> bs!1160659 m!5802802))

(assert (=> d!1541494 d!1541602))

(declare-fun d!1541604 () Bool)

(declare-fun res!2049036 () Bool)

(declare-fun e!3009365 () Bool)

(assert (=> d!1541604 (=> res!2049036 e!3009365)))

(assert (=> d!1541604 (= res!2049036 (is-Nil!54765 (toList!7329 lm!2251)))))

(assert (=> d!1541604 (= (forall!12479 (toList!7329 lm!2251) lambda!234611) e!3009365)))

(declare-fun b!4816691 () Bool)

(declare-fun e!3009366 () Bool)

(assert (=> b!4816691 (= e!3009365 e!3009366)))

(declare-fun res!2049037 () Bool)

(assert (=> b!4816691 (=> (not res!2049037) (not e!3009366))))

(assert (=> b!4816691 (= res!2049037 (dynLambda!22163 lambda!234611 (h!61197 (toList!7329 lm!2251))))))

(declare-fun b!4816692 () Bool)

(assert (=> b!4816692 (= e!3009366 (forall!12479 (t!362385 (toList!7329 lm!2251)) lambda!234611))))

(assert (= (and d!1541604 (not res!2049036)) b!4816691))

(assert (= (and b!4816691 res!2049037) b!4816692))

(declare-fun b_lambda!188475 () Bool)

(assert (=> (not b_lambda!188475) (not b!4816691)))

(declare-fun m!5803050 () Bool)

(assert (=> b!4816691 m!5803050))

(declare-fun m!5803052 () Bool)

(assert (=> b!4816692 m!5803052))

(assert (=> d!1541494 d!1541604))

(declare-fun d!1541606 () Bool)

(assert (=> d!1541606 (isDefined!10547 (getValueByKey!2564 (toList!7329 lm!2251) lt!1967027))))

(declare-fun lt!1967269 () Unit!141967)

(declare-fun choose!34935 (List!54889 (_ BitVec 64)) Unit!141967)

(assert (=> d!1541606 (= lt!1967269 (choose!34935 (toList!7329 lm!2251) lt!1967027))))

(declare-fun e!3009369 () Bool)

(assert (=> d!1541606 e!3009369))

(declare-fun res!2049040 () Bool)

(assert (=> d!1541606 (=> (not res!2049040) (not e!3009369))))

(assert (=> d!1541606 (= res!2049040 (isStrictlySorted!951 (toList!7329 lm!2251)))))

(assert (=> d!1541606 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2350 (toList!7329 lm!2251) lt!1967027) lt!1967269)))

(declare-fun b!4816695 () Bool)

(assert (=> b!4816695 (= e!3009369 (containsKey!4245 (toList!7329 lm!2251) lt!1967027))))

(assert (= (and d!1541606 res!2049040) b!4816695))

(assert (=> d!1541606 m!5802768))

(assert (=> d!1541606 m!5802768))

(assert (=> d!1541606 m!5802770))

(declare-fun m!5803054 () Bool)

(assert (=> d!1541606 m!5803054))

(assert (=> d!1541606 m!5802808))

(assert (=> b!4816695 m!5802764))

(assert (=> b!4816411 d!1541606))

(assert (=> b!4816411 d!1541594))

(assert (=> b!4816411 d!1541546))

(declare-fun d!1541608 () Bool)

(declare-fun lt!1967270 () Bool)

(assert (=> d!1541608 (= lt!1967270 (set.member lt!1967026 (content!9793 (t!362385 (toList!7329 lm!2251)))))))

(declare-fun e!3009371 () Bool)

(assert (=> d!1541608 (= lt!1967270 e!3009371)))

(declare-fun res!2049042 () Bool)

(assert (=> d!1541608 (=> (not res!2049042) (not e!3009371))))

(assert (=> d!1541608 (= res!2049042 (is-Cons!54765 (t!362385 (toList!7329 lm!2251))))))

(assert (=> d!1541608 (= (contains!18583 (t!362385 (toList!7329 lm!2251)) lt!1967026) lt!1967270)))

(declare-fun b!4816696 () Bool)

(declare-fun e!3009370 () Bool)

(assert (=> b!4816696 (= e!3009371 e!3009370)))

(declare-fun res!2049041 () Bool)

(assert (=> b!4816696 (=> res!2049041 e!3009370)))

(assert (=> b!4816696 (= res!2049041 (= (h!61197 (t!362385 (toList!7329 lm!2251))) lt!1967026))))

(declare-fun b!4816697 () Bool)

(assert (=> b!4816697 (= e!3009370 (contains!18583 (t!362385 (t!362385 (toList!7329 lm!2251))) lt!1967026))))

(assert (= (and d!1541608 res!2049042) b!4816696))

(assert (= (and b!4816696 (not res!2049041)) b!4816697))

(assert (=> d!1541608 m!5802966))

(declare-fun m!5803056 () Bool)

(assert (=> d!1541608 m!5803056))

(declare-fun m!5803058 () Bool)

(assert (=> b!4816697 m!5803058))

(assert (=> b!4816398 d!1541608))

(declare-fun e!3009374 () Bool)

(declare-fun tp_is_empty!34223 () Bool)

(declare-fun tp!1361942 () Bool)

(declare-fun b!4816702 () Bool)

(assert (=> b!4816702 (= e!3009374 (and tp_is_empty!34219 tp_is_empty!34223 tp!1361942))))

(assert (=> b!4816481 (= tp!1361932 e!3009374)))

(assert (= (and b!4816481 (is-Cons!54764 (_2!32206 (h!61197 (toList!7329 lm!2251))))) b!4816702))

(declare-fun b!4816703 () Bool)

(declare-fun e!3009375 () Bool)

(declare-fun tp!1361943 () Bool)

(declare-fun tp!1361944 () Bool)

(assert (=> b!4816703 (= e!3009375 (and tp!1361943 tp!1361944))))

(assert (=> b!4816481 (= tp!1361933 e!3009375)))

(assert (= (and b!4816481 (is-Cons!54765 (t!362385 (toList!7329 lm!2251)))) b!4816703))

(declare-fun b_lambda!188477 () Bool)

(assert (= b_lambda!188465 (or start!498408 b_lambda!188477)))

(assert (=> d!1541528 d!1541504))

(declare-fun b_lambda!188479 () Bool)

(assert (= b_lambda!188475 (or d!1541494 b_lambda!188479)))

(declare-fun bs!1160660 () Bool)

(declare-fun d!1541610 () Bool)

(assert (= bs!1160660 (and d!1541610 d!1541494)))

(assert (=> bs!1160660 (= (dynLambda!22163 lambda!234611 (h!61197 (toList!7329 lm!2251))) (noDuplicateKeys!2409 (_2!32206 (h!61197 (toList!7329 lm!2251)))))))

(assert (=> bs!1160660 m!5802814))

(assert (=> b!4816691 d!1541610))

(declare-fun b_lambda!188481 () Bool)

(assert (= b_lambda!188471 (or d!1541498 b_lambda!188481)))

(declare-fun bs!1160661 () Bool)

(declare-fun d!1541612 () Bool)

(assert (= bs!1160661 (and d!1541612 d!1541498)))

(declare-fun allKeysSameHash!1985 (List!54888 (_ BitVec 64) Hashable!7173) Bool)

(assert (=> bs!1160661 (= (dynLambda!22163 lambda!234614 (h!61197 (toList!7329 lm!2251))) (allKeysSameHash!1985 (_2!32206 (h!61197 (toList!7329 lm!2251))) (_1!32206 (h!61197 (toList!7329 lm!2251))) hashF!1486))))

(declare-fun m!5803060 () Bool)

(assert (=> bs!1160661 m!5803060))

(assert (=> b!4816586 d!1541612))

(declare-fun b_lambda!188483 () Bool)

(assert (= b_lambda!188467 (or d!1541468 b_lambda!188483)))

(declare-fun bs!1160662 () Bool)

(declare-fun d!1541614 () Bool)

(assert (= bs!1160662 (and d!1541614 d!1541468)))

(assert (=> bs!1160662 (= (dynLambda!22163 lambda!234608 (h!61197 (toList!7329 lm!2251))) (noDuplicateKeys!2409 (_2!32206 (h!61197 (toList!7329 lm!2251)))))))

(assert (=> bs!1160662 m!5802814))

(assert (=> b!4816557 d!1541614))

(declare-fun b_lambda!188485 () Bool)

(assert (= b_lambda!188473 (or start!498408 b_lambda!188485)))

(declare-fun bs!1160663 () Bool)

(declare-fun d!1541616 () Bool)

(assert (= bs!1160663 (and d!1541616 start!498408)))

(assert (=> bs!1160663 (= (dynLambda!22163 lambda!234595 (h!61197 (t!362385 (toList!7329 lm!2251)))) (noDuplicateKeys!2409 (_2!32206 (h!61197 (t!362385 (toList!7329 lm!2251))))))))

(declare-fun m!5803062 () Bool)

(assert (=> bs!1160663 m!5803062))

(assert (=> b!4816670 d!1541616))

(push 1)

(assert (not b!4816680))

(assert (not d!1541608))

(assert (not d!1541524))

(assert (not b!4816558))

(assert (not d!1541588))

(assert (not b!4816660))

(assert (not b!4816564))

(assert (not b!4816661))

(assert (not b!4816552))

(assert (not d!1541568))

(assert (not b!4816622))

(assert (not b!4816688))

(assert (not bm!335984))

(assert (not b!4816549))

(assert (not b!4816657))

(assert (not b!4816610))

(assert (not b!4816681))

(assert (not d!1541590))

(assert (not b!4816637))

(assert (not d!1541580))

(assert (not b!4816635))

(assert (not b!4816671))

(assert (not b_lambda!188485))

(assert tp_is_empty!34219)

(assert (not d!1541598))

(assert (not b!4816611))

(assert (not b!4816703))

(assert (not d!1541594))

(assert tp_is_empty!34223)

(assert (not d!1541602))

(assert (not b!4816563))

(assert (not b!4816697))

(assert (not d!1541570))

(assert (not bs!1160662))

(assert (not b!4816585))

(assert (not b!4816550))

(assert (not b!4816659))

(assert (not b!4816658))

(assert (not b!4816551))

(assert (not b_lambda!188479))

(assert (not d!1541530))

(assert (not b!4816677))

(assert (not b!4816628))

(assert (not d!1541554))

(assert (not bs!1160661))

(assert (not b_lambda!188481))

(assert (not d!1541526))

(assert (not b!4816695))

(assert (not b!4816587))

(assert (not b_lambda!188457))

(assert (not d!1541600))

(assert (not b!4816636))

(assert (not bm!335983))

(assert (not bs!1160663))

(assert (not d!1541558))

(assert (not b!4816555))

(assert (not d!1541540))

(assert (not b_lambda!188483))

(assert (not d!1541562))

(assert (not d!1541536))

(assert (not b!4816578))

(assert (not d!1541606))

(assert (not b_lambda!188455))

(assert (not b!4816607))

(assert (not b!4816685))

(assert (not bs!1160660))

(assert (not b!4816613))

(assert (not d!1541582))

(assert (not b!4816690))

(assert (not b!4816687))

(assert (not b!4816702))

(assert (not d!1541592))

(assert (not b!4816669))

(assert (not b!4816684))

(assert (not bm!335982))

(assert (not b!4816566))

(assert (not b!4816667))

(assert (not b_lambda!188477))

(assert (not d!1541560))

(assert (not b!4816606))

(assert (not b!4816678))

(assert (not b!4816650))

(assert (not b!4816692))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

