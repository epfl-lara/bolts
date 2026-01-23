; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436198 () Bool)

(assert start!436198)

(declare-fun b!4453448 () Bool)

(declare-fun res!1845703 () Bool)

(declare-fun e!2773229 () Bool)

(assert (=> b!4453448 (=> (not res!1845703) (not e!2773229))))

(declare-datatypes ((V!11524 0))(
  ( (V!11525 (val!17293 Int)) )
))
(declare-datatypes ((K!11278 0))(
  ( (K!11279 (val!17294 Int)) )
))
(declare-datatypes ((tuple2!49906 0))(
  ( (tuple2!49907 (_1!28247 K!11278) (_2!28247 V!11524)) )
))
(declare-datatypes ((List!50030 0))(
  ( (Nil!49906) (Cons!49906 (h!55651 tuple2!49906) (t!356980 List!50030)) )
))
(declare-datatypes ((tuple2!49908 0))(
  ( (tuple2!49909 (_1!28248 (_ BitVec 64)) (_2!28248 List!50030)) )
))
(declare-datatypes ((List!50031 0))(
  ( (Nil!49907) (Cons!49907 (h!55652 tuple2!49908) (t!356981 List!50031)) )
))
(declare-datatypes ((ListLongMap!2401 0))(
  ( (ListLongMap!2402 (toList!3747 List!50031)) )
))
(declare-fun lm!1837 () ListLongMap!2401)

(declare-fun isEmpty!28424 (List!50031) Bool)

(assert (=> b!4453448 (= res!1845703 (not (isEmpty!28424 (toList!3747 lm!1837))))))

(declare-fun b!4453449 () Bool)

(declare-fun res!1845704 () Bool)

(declare-fun e!2773227 () Bool)

(assert (=> b!4453449 (=> (not res!1845704) (not e!2773227))))

(assert (=> b!4453449 (= res!1845704 (is-Cons!49907 (toList!3747 lm!1837)))))

(declare-fun b!4453451 () Bool)

(declare-fun e!2773228 () Bool)

(declare-fun tp!1334702 () Bool)

(assert (=> b!4453451 (= e!2773228 tp!1334702)))

(declare-fun b!4453452 () Bool)

(assert (=> b!4453452 (= e!2773229 e!2773227)))

(declare-fun res!1845702 () Bool)

(assert (=> b!4453452 (=> (not res!1845702) (not e!2773227))))

(declare-datatypes ((ListMap!2987 0))(
  ( (ListMap!2988 (toList!3748 List!50030)) )
))
(declare-fun lt!1645260 () ListMap!2987)

(declare-fun key!4369 () K!11278)

(declare-fun contains!12488 (ListMap!2987 K!11278) Bool)

(assert (=> b!4453452 (= res!1845702 (contains!12488 lt!1645260 key!4369))))

(declare-fun extractMap!939 (List!50031) ListMap!2987)

(declare-fun tail!7443 (ListLongMap!2401) ListLongMap!2401)

(assert (=> b!4453452 (= lt!1645260 (extractMap!939 (toList!3747 (tail!7443 lm!1837))))))

(declare-fun b!4453453 () Bool)

(declare-fun res!1845701 () Bool)

(assert (=> b!4453453 (=> (not res!1845701) (not e!2773229))))

(declare-datatypes ((Hashable!5276 0))(
  ( (HashableExt!5275 (__x!30979 Int)) )
))
(declare-fun hashF!1304 () Hashable!5276)

(declare-fun allKeysSameHashInMap!988 (ListLongMap!2401 Hashable!5276) Bool)

(assert (=> b!4453453 (= res!1845701 (allKeysSameHashInMap!988 lm!1837 hashF!1304))))

(declare-fun b!4453450 () Bool)

(declare-fun isEmpty!28425 (ListLongMap!2401) Bool)

(assert (=> b!4453450 (= e!2773227 (not (not (isEmpty!28425 lm!1837))))))

(declare-fun addToMapMapFromBucket!475 (List!50030 ListMap!2987) ListMap!2987)

(assert (=> b!4453450 (= (extractMap!939 (toList!3747 lm!1837)) (addToMapMapFromBucket!475 (_2!28248 (h!55652 (toList!3747 lm!1837))) lt!1645260))))

(declare-fun res!1845700 () Bool)

(assert (=> start!436198 (=> (not res!1845700) (not e!2773229))))

(declare-fun lambda!159426 () Int)

(declare-fun forall!9777 (List!50031 Int) Bool)

(assert (=> start!436198 (= res!1845700 (forall!9777 (toList!3747 lm!1837) lambda!159426))))

(assert (=> start!436198 e!2773229))

(declare-fun inv!65465 (ListLongMap!2401) Bool)

(assert (=> start!436198 (and (inv!65465 lm!1837) e!2773228)))

(assert (=> start!436198 true))

(declare-fun tp_is_empty!26745 () Bool)

(assert (=> start!436198 tp_is_empty!26745))

(assert (= (and start!436198 res!1845700) b!4453453))

(assert (= (and b!4453453 res!1845701) b!4453448))

(assert (= (and b!4453448 res!1845703) b!4453452))

(assert (= (and b!4453452 res!1845702) b!4453449))

(assert (= (and b!4453449 res!1845704) b!4453450))

(assert (= start!436198 b!4453451))

(declare-fun m!5154175 () Bool)

(assert (=> start!436198 m!5154175))

(declare-fun m!5154177 () Bool)

(assert (=> start!436198 m!5154177))

(declare-fun m!5154179 () Bool)

(assert (=> b!4453448 m!5154179))

(declare-fun m!5154181 () Bool)

(assert (=> b!4453452 m!5154181))

(declare-fun m!5154183 () Bool)

(assert (=> b!4453452 m!5154183))

(declare-fun m!5154185 () Bool)

(assert (=> b!4453452 m!5154185))

(declare-fun m!5154187 () Bool)

(assert (=> b!4453450 m!5154187))

(declare-fun m!5154189 () Bool)

(assert (=> b!4453450 m!5154189))

(declare-fun m!5154191 () Bool)

(assert (=> b!4453450 m!5154191))

(declare-fun m!5154193 () Bool)

(assert (=> b!4453453 m!5154193))

(push 1)

(assert tp_is_empty!26745)

(assert (not b!4453451))

(assert (not b!4453450))

(assert (not b!4453453))

(assert (not b!4453448))

(assert (not start!436198))

(assert (not b!4453452))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1358506 () Bool)

(assert (=> d!1358506 (= (isEmpty!28424 (toList!3747 lm!1837)) (is-Nil!49907 (toList!3747 lm!1837)))))

(assert (=> b!4453448 d!1358506))

(declare-fun d!1358508 () Bool)

(declare-fun res!1845724 () Bool)

(declare-fun e!2773243 () Bool)

(assert (=> d!1358508 (=> res!1845724 e!2773243)))

(assert (=> d!1358508 (= res!1845724 (is-Nil!49907 (toList!3747 lm!1837)))))

(assert (=> d!1358508 (= (forall!9777 (toList!3747 lm!1837) lambda!159426) e!2773243)))

(declare-fun b!4453476 () Bool)

(declare-fun e!2773244 () Bool)

(assert (=> b!4453476 (= e!2773243 e!2773244)))

(declare-fun res!1845725 () Bool)

(assert (=> b!4453476 (=> (not res!1845725) (not e!2773244))))

(declare-fun dynLambda!20951 (Int tuple2!49908) Bool)

(assert (=> b!4453476 (= res!1845725 (dynLambda!20951 lambda!159426 (h!55652 (toList!3747 lm!1837))))))

(declare-fun b!4453477 () Bool)

(assert (=> b!4453477 (= e!2773244 (forall!9777 (t!356981 (toList!3747 lm!1837)) lambda!159426))))

(assert (= (and d!1358508 (not res!1845724)) b!4453476))

(assert (= (and b!4453476 res!1845725) b!4453477))

(declare-fun b_lambda!147365 () Bool)

(assert (=> (not b_lambda!147365) (not b!4453476)))

(declare-fun m!5154215 () Bool)

(assert (=> b!4453476 m!5154215))

(declare-fun m!5154217 () Bool)

(assert (=> b!4453477 m!5154217))

(assert (=> start!436198 d!1358508))

(declare-fun d!1358510 () Bool)

(declare-fun isStrictlySorted!292 (List!50031) Bool)

(assert (=> d!1358510 (= (inv!65465 lm!1837) (isStrictlySorted!292 (toList!3747 lm!1837)))))

(declare-fun bs!790065 () Bool)

(assert (= bs!790065 d!1358510))

(declare-fun m!5154219 () Bool)

(assert (=> bs!790065 m!5154219))

(assert (=> start!436198 d!1358510))

(declare-fun bs!790066 () Bool)

(declare-fun d!1358512 () Bool)

(assert (= bs!790066 (and d!1358512 start!436198)))

(declare-fun lambda!159432 () Int)

(assert (=> bs!790066 (not (= lambda!159432 lambda!159426))))

(assert (=> d!1358512 true))

(assert (=> d!1358512 (= (allKeysSameHashInMap!988 lm!1837 hashF!1304) (forall!9777 (toList!3747 lm!1837) lambda!159432))))

(declare-fun bs!790067 () Bool)

(assert (= bs!790067 d!1358512))

(declare-fun m!5154221 () Bool)

(assert (=> bs!790067 m!5154221))

(assert (=> b!4453453 d!1358512))

(declare-fun b!4453504 () Bool)

(declare-datatypes ((Unit!85695 0))(
  ( (Unit!85696) )
))
(declare-fun e!2773264 () Unit!85695)

(declare-fun e!2773265 () Unit!85695)

(assert (=> b!4453504 (= e!2773264 e!2773265)))

(declare-fun c!758187 () Bool)

(declare-fun call!309903 () Bool)

(assert (=> b!4453504 (= c!758187 call!309903)))

(declare-fun b!4453505 () Bool)

(declare-datatypes ((List!50034 0))(
  ( (Nil!49910) (Cons!49910 (h!55655 K!11278) (t!356984 List!50034)) )
))
(declare-fun e!2773266 () List!50034)

(declare-fun getKeysList!310 (List!50030) List!50034)

(assert (=> b!4453505 (= e!2773266 (getKeysList!310 (toList!3748 lt!1645260)))))

(declare-fun b!4453507 () Bool)

(declare-fun e!2773263 () Bool)

(declare-fun e!2773267 () Bool)

(assert (=> b!4453507 (= e!2773263 e!2773267)))

(declare-fun res!1845740 () Bool)

(assert (=> b!4453507 (=> (not res!1845740) (not e!2773267))))

(declare-datatypes ((Option!10842 0))(
  ( (None!10841) (Some!10841 (v!44095 V!11524)) )
))
(declare-fun isDefined!8130 (Option!10842) Bool)

(declare-fun getValueByKey!828 (List!50030 K!11278) Option!10842)

(assert (=> b!4453507 (= res!1845740 (isDefined!8130 (getValueByKey!828 (toList!3748 lt!1645260) key!4369)))))

(declare-fun b!4453508 () Bool)

(assert (=> b!4453508 false))

(declare-fun lt!1645282 () Unit!85695)

(declare-fun lt!1645285 () Unit!85695)

(assert (=> b!4453508 (= lt!1645282 lt!1645285)))

(declare-fun containsKey!1302 (List!50030 K!11278) Bool)

(assert (=> b!4453508 (containsKey!1302 (toList!3748 lt!1645260) key!4369)))

(declare-fun lemmaInGetKeysListThenContainsKey!308 (List!50030 K!11278) Unit!85695)

(assert (=> b!4453508 (= lt!1645285 (lemmaInGetKeysListThenContainsKey!308 (toList!3748 lt!1645260) key!4369))))

(declare-fun Unit!85697 () Unit!85695)

(assert (=> b!4453508 (= e!2773265 Unit!85697)))

(declare-fun b!4453509 () Bool)

(declare-fun keys!17128 (ListMap!2987) List!50034)

(assert (=> b!4453509 (= e!2773266 (keys!17128 lt!1645260))))

(declare-fun b!4453510 () Bool)

(declare-fun lt!1645286 () Unit!85695)

(assert (=> b!4453510 (= e!2773264 lt!1645286)))

(declare-fun lt!1645287 () Unit!85695)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!733 (List!50030 K!11278) Unit!85695)

(assert (=> b!4453510 (= lt!1645287 (lemmaContainsKeyImpliesGetValueByKeyDefined!733 (toList!3748 lt!1645260) key!4369))))

(assert (=> b!4453510 (isDefined!8130 (getValueByKey!828 (toList!3748 lt!1645260) key!4369))))

(declare-fun lt!1645280 () Unit!85695)

(assert (=> b!4453510 (= lt!1645280 lt!1645287)))

(declare-fun lemmaInListThenGetKeysListContains!307 (List!50030 K!11278) Unit!85695)

(assert (=> b!4453510 (= lt!1645286 (lemmaInListThenGetKeysListContains!307 (toList!3748 lt!1645260) key!4369))))

(assert (=> b!4453510 call!309903))

(declare-fun d!1358514 () Bool)

(assert (=> d!1358514 e!2773263))

(declare-fun res!1845738 () Bool)

(assert (=> d!1358514 (=> res!1845738 e!2773263)))

(declare-fun e!2773268 () Bool)

(assert (=> d!1358514 (= res!1845738 e!2773268)))

(declare-fun res!1845739 () Bool)

(assert (=> d!1358514 (=> (not res!1845739) (not e!2773268))))

(declare-fun lt!1645283 () Bool)

(assert (=> d!1358514 (= res!1845739 (not lt!1645283))))

(declare-fun lt!1645284 () Bool)

(assert (=> d!1358514 (= lt!1645283 lt!1645284)))

(declare-fun lt!1645281 () Unit!85695)

(assert (=> d!1358514 (= lt!1645281 e!2773264)))

(declare-fun c!758186 () Bool)

(assert (=> d!1358514 (= c!758186 lt!1645284)))

(assert (=> d!1358514 (= lt!1645284 (containsKey!1302 (toList!3748 lt!1645260) key!4369))))

(assert (=> d!1358514 (= (contains!12488 lt!1645260 key!4369) lt!1645283)))

(declare-fun b!4453506 () Bool)

(declare-fun contains!12490 (List!50034 K!11278) Bool)

(assert (=> b!4453506 (= e!2773268 (not (contains!12490 (keys!17128 lt!1645260) key!4369)))))

(declare-fun b!4453511 () Bool)

(assert (=> b!4453511 (= e!2773267 (contains!12490 (keys!17128 lt!1645260) key!4369))))

(declare-fun bm!309898 () Bool)

(assert (=> bm!309898 (= call!309903 (contains!12490 e!2773266 key!4369))))

(declare-fun c!758188 () Bool)

(assert (=> bm!309898 (= c!758188 c!758186)))

(declare-fun b!4453512 () Bool)

(declare-fun Unit!85698 () Unit!85695)

(assert (=> b!4453512 (= e!2773265 Unit!85698)))

(assert (= (and d!1358514 c!758186) b!4453510))

(assert (= (and d!1358514 (not c!758186)) b!4453504))

(assert (= (and b!4453504 c!758187) b!4453508))

(assert (= (and b!4453504 (not c!758187)) b!4453512))

(assert (= (or b!4453510 b!4453504) bm!309898))

(assert (= (and bm!309898 c!758188) b!4453505))

(assert (= (and bm!309898 (not c!758188)) b!4453509))

(assert (= (and d!1358514 res!1845739) b!4453506))

(assert (= (and d!1358514 (not res!1845738)) b!4453507))

(assert (= (and b!4453507 res!1845740) b!4453511))

(declare-fun m!5154229 () Bool)

(assert (=> b!4453506 m!5154229))

(assert (=> b!4453506 m!5154229))

(declare-fun m!5154231 () Bool)

(assert (=> b!4453506 m!5154231))

(assert (=> b!4453511 m!5154229))

(assert (=> b!4453511 m!5154229))

(assert (=> b!4453511 m!5154231))

(declare-fun m!5154233 () Bool)

(assert (=> b!4453505 m!5154233))

(declare-fun m!5154235 () Bool)

(assert (=> b!4453510 m!5154235))

(declare-fun m!5154237 () Bool)

(assert (=> b!4453510 m!5154237))

(assert (=> b!4453510 m!5154237))

(declare-fun m!5154239 () Bool)

(assert (=> b!4453510 m!5154239))

(declare-fun m!5154241 () Bool)

(assert (=> b!4453510 m!5154241))

(declare-fun m!5154243 () Bool)

(assert (=> d!1358514 m!5154243))

(assert (=> b!4453509 m!5154229))

(declare-fun m!5154245 () Bool)

(assert (=> bm!309898 m!5154245))

(assert (=> b!4453508 m!5154243))

(declare-fun m!5154247 () Bool)

(assert (=> b!4453508 m!5154247))

(assert (=> b!4453507 m!5154237))

(assert (=> b!4453507 m!5154237))

(assert (=> b!4453507 m!5154239))

(assert (=> b!4453452 d!1358514))

(declare-fun bs!790069 () Bool)

(declare-fun d!1358524 () Bool)

(assert (= bs!790069 (and d!1358524 start!436198)))

(declare-fun lambda!159435 () Int)

(assert (=> bs!790069 (= lambda!159435 lambda!159426)))

(declare-fun bs!790070 () Bool)

(assert (= bs!790070 (and d!1358524 d!1358512)))

(assert (=> bs!790070 (not (= lambda!159435 lambda!159432))))

(declare-fun lt!1645290 () ListMap!2987)

(declare-fun invariantList!864 (List!50030) Bool)

(assert (=> d!1358524 (invariantList!864 (toList!3748 lt!1645290))))

(declare-fun e!2773271 () ListMap!2987)

(assert (=> d!1358524 (= lt!1645290 e!2773271)))

(declare-fun c!758191 () Bool)

(assert (=> d!1358524 (= c!758191 (is-Cons!49907 (toList!3747 (tail!7443 lm!1837))))))

(assert (=> d!1358524 (forall!9777 (toList!3747 (tail!7443 lm!1837)) lambda!159435)))

(assert (=> d!1358524 (= (extractMap!939 (toList!3747 (tail!7443 lm!1837))) lt!1645290)))

(declare-fun b!4453517 () Bool)

(assert (=> b!4453517 (= e!2773271 (addToMapMapFromBucket!475 (_2!28248 (h!55652 (toList!3747 (tail!7443 lm!1837)))) (extractMap!939 (t!356981 (toList!3747 (tail!7443 lm!1837))))))))

(declare-fun b!4453518 () Bool)

(assert (=> b!4453518 (= e!2773271 (ListMap!2988 Nil!49906))))

(assert (= (and d!1358524 c!758191) b!4453517))

(assert (= (and d!1358524 (not c!758191)) b!4453518))

(declare-fun m!5154249 () Bool)

(assert (=> d!1358524 m!5154249))

(declare-fun m!5154251 () Bool)

(assert (=> d!1358524 m!5154251))

(declare-fun m!5154253 () Bool)

(assert (=> b!4453517 m!5154253))

(assert (=> b!4453517 m!5154253))

(declare-fun m!5154255 () Bool)

(assert (=> b!4453517 m!5154255))

(assert (=> b!4453452 d!1358524))

(declare-fun d!1358526 () Bool)

(declare-fun tail!7445 (List!50031) List!50031)

(assert (=> d!1358526 (= (tail!7443 lm!1837) (ListLongMap!2402 (tail!7445 (toList!3747 lm!1837))))))

(declare-fun bs!790071 () Bool)

(assert (= bs!790071 d!1358526))

(declare-fun m!5154257 () Bool)

(assert (=> bs!790071 m!5154257))

(assert (=> b!4453452 d!1358526))

(declare-fun d!1358528 () Bool)

(assert (=> d!1358528 (= (isEmpty!28425 lm!1837) (isEmpty!28424 (toList!3747 lm!1837)))))

(declare-fun bs!790072 () Bool)

(assert (= bs!790072 d!1358528))

(assert (=> bs!790072 m!5154179))

(assert (=> b!4453450 d!1358528))

(declare-fun bs!790073 () Bool)

(declare-fun d!1358530 () Bool)

(assert (= bs!790073 (and d!1358530 start!436198)))

(declare-fun lambda!159436 () Int)

(assert (=> bs!790073 (= lambda!159436 lambda!159426)))

(declare-fun bs!790074 () Bool)

(assert (= bs!790074 (and d!1358530 d!1358512)))

(assert (=> bs!790074 (not (= lambda!159436 lambda!159432))))

(declare-fun bs!790075 () Bool)

(assert (= bs!790075 (and d!1358530 d!1358524)))

(assert (=> bs!790075 (= lambda!159436 lambda!159435)))

(declare-fun lt!1645291 () ListMap!2987)

(assert (=> d!1358530 (invariantList!864 (toList!3748 lt!1645291))))

(declare-fun e!2773272 () ListMap!2987)

(assert (=> d!1358530 (= lt!1645291 e!2773272)))

(declare-fun c!758192 () Bool)

(assert (=> d!1358530 (= c!758192 (is-Cons!49907 (toList!3747 lm!1837)))))

(assert (=> d!1358530 (forall!9777 (toList!3747 lm!1837) lambda!159436)))

(assert (=> d!1358530 (= (extractMap!939 (toList!3747 lm!1837)) lt!1645291)))

(declare-fun b!4453519 () Bool)

(assert (=> b!4453519 (= e!2773272 (addToMapMapFromBucket!475 (_2!28248 (h!55652 (toList!3747 lm!1837))) (extractMap!939 (t!356981 (toList!3747 lm!1837)))))))

(declare-fun b!4453520 () Bool)

(assert (=> b!4453520 (= e!2773272 (ListMap!2988 Nil!49906))))

(assert (= (and d!1358530 c!758192) b!4453519))

(assert (= (and d!1358530 (not c!758192)) b!4453520))

(declare-fun m!5154259 () Bool)

(assert (=> d!1358530 m!5154259))

(declare-fun m!5154261 () Bool)

(assert (=> d!1358530 m!5154261))

(declare-fun m!5154263 () Bool)

(assert (=> b!4453519 m!5154263))

(assert (=> b!4453519 m!5154263))

(declare-fun m!5154265 () Bool)

(assert (=> b!4453519 m!5154265))

(assert (=> b!4453450 d!1358530))

(declare-fun b!4453572 () Bool)

(assert (=> b!4453572 true))

(declare-fun bs!790085 () Bool)

(declare-fun b!4453568 () Bool)

(assert (= bs!790085 (and b!4453568 b!4453572)))

(declare-fun lambda!159473 () Int)

(declare-fun lambda!159472 () Int)

(assert (=> bs!790085 (= lambda!159473 lambda!159472)))

(assert (=> b!4453568 true))

(declare-fun lt!1645373 () ListMap!2987)

(declare-fun lambda!159474 () Int)

(assert (=> bs!790085 (= (= lt!1645373 lt!1645260) (= lambda!159474 lambda!159472))))

(assert (=> b!4453568 (= (= lt!1645373 lt!1645260) (= lambda!159474 lambda!159473))))

(assert (=> b!4453568 true))

(declare-fun bs!790086 () Bool)

(declare-fun d!1358532 () Bool)

(assert (= bs!790086 (and d!1358532 b!4453572)))

(declare-fun lt!1645374 () ListMap!2987)

(declare-fun lambda!159475 () Int)

(assert (=> bs!790086 (= (= lt!1645374 lt!1645260) (= lambda!159475 lambda!159472))))

(declare-fun bs!790087 () Bool)

(assert (= bs!790087 (and d!1358532 b!4453568)))

(assert (=> bs!790087 (= (= lt!1645374 lt!1645260) (= lambda!159475 lambda!159473))))

(assert (=> bs!790087 (= (= lt!1645374 lt!1645373) (= lambda!159475 lambda!159474))))

(assert (=> d!1358532 true))

(declare-fun e!2773303 () ListMap!2987)

(assert (=> b!4453568 (= e!2773303 lt!1645373)))

(declare-fun lt!1645380 () ListMap!2987)

(declare-fun +!1275 (ListMap!2987 tuple2!49906) ListMap!2987)

(assert (=> b!4453568 (= lt!1645380 (+!1275 lt!1645260 (h!55651 (_2!28248 (h!55652 (toList!3747 lm!1837))))))))

(assert (=> b!4453568 (= lt!1645373 (addToMapMapFromBucket!475 (t!356980 (_2!28248 (h!55652 (toList!3747 lm!1837)))) (+!1275 lt!1645260 (h!55651 (_2!28248 (h!55652 (toList!3747 lm!1837)))))))))

(declare-fun lt!1645375 () Unit!85695)

(declare-fun call!309913 () Unit!85695)

(assert (=> b!4453568 (= lt!1645375 call!309913)))

(declare-fun call!309915 () Bool)

(assert (=> b!4453568 call!309915))

(declare-fun lt!1645367 () Unit!85695)

(assert (=> b!4453568 (= lt!1645367 lt!1645375)))

(declare-fun forall!9779 (List!50030 Int) Bool)

(assert (=> b!4453568 (forall!9779 (toList!3748 lt!1645380) lambda!159474)))

(declare-fun lt!1645379 () Unit!85695)

(declare-fun Unit!85699 () Unit!85695)

(assert (=> b!4453568 (= lt!1645379 Unit!85699)))

(assert (=> b!4453568 (forall!9779 (t!356980 (_2!28248 (h!55652 (toList!3747 lm!1837)))) lambda!159474)))

(declare-fun lt!1645364 () Unit!85695)

(declare-fun Unit!85700 () Unit!85695)

(assert (=> b!4453568 (= lt!1645364 Unit!85700)))

(declare-fun lt!1645382 () Unit!85695)

(declare-fun Unit!85701 () Unit!85695)

(assert (=> b!4453568 (= lt!1645382 Unit!85701)))

(declare-fun lt!1645370 () Unit!85695)

(declare-fun forallContained!2164 (List!50030 Int tuple2!49906) Unit!85695)

(assert (=> b!4453568 (= lt!1645370 (forallContained!2164 (toList!3748 lt!1645380) lambda!159474 (h!55651 (_2!28248 (h!55652 (toList!3747 lm!1837))))))))

(assert (=> b!4453568 (contains!12488 lt!1645380 (_1!28247 (h!55651 (_2!28248 (h!55652 (toList!3747 lm!1837))))))))

(declare-fun lt!1645381 () Unit!85695)

(declare-fun Unit!85702 () Unit!85695)

(assert (=> b!4453568 (= lt!1645381 Unit!85702)))

(assert (=> b!4453568 (contains!12488 lt!1645373 (_1!28247 (h!55651 (_2!28248 (h!55652 (toList!3747 lm!1837))))))))

(declare-fun lt!1645369 () Unit!85695)

(declare-fun Unit!85703 () Unit!85695)

(assert (=> b!4453568 (= lt!1645369 Unit!85703)))

(assert (=> b!4453568 (forall!9779 (_2!28248 (h!55652 (toList!3747 lm!1837))) lambda!159474)))

(declare-fun lt!1645362 () Unit!85695)

(declare-fun Unit!85704 () Unit!85695)

(assert (=> b!4453568 (= lt!1645362 Unit!85704)))

(assert (=> b!4453568 (forall!9779 (toList!3748 lt!1645380) lambda!159474)))

(declare-fun lt!1645377 () Unit!85695)

(declare-fun Unit!85705 () Unit!85695)

(assert (=> b!4453568 (= lt!1645377 Unit!85705)))

(declare-fun lt!1645371 () Unit!85695)

(declare-fun Unit!85706 () Unit!85695)

(assert (=> b!4453568 (= lt!1645371 Unit!85706)))

(declare-fun lt!1645368 () Unit!85695)

(declare-fun addForallContainsKeyThenBeforeAdding!218 (ListMap!2987 ListMap!2987 K!11278 V!11524) Unit!85695)

(assert (=> b!4453568 (= lt!1645368 (addForallContainsKeyThenBeforeAdding!218 lt!1645260 lt!1645373 (_1!28247 (h!55651 (_2!28248 (h!55652 (toList!3747 lm!1837))))) (_2!28247 (h!55651 (_2!28248 (h!55652 (toList!3747 lm!1837)))))))))

(assert (=> b!4453568 (forall!9779 (toList!3748 lt!1645260) lambda!159474)))

(declare-fun lt!1645378 () Unit!85695)

(assert (=> b!4453568 (= lt!1645378 lt!1645368)))

(assert (=> b!4453568 (forall!9779 (toList!3748 lt!1645260) lambda!159474)))

(declare-fun lt!1645376 () Unit!85695)

(declare-fun Unit!85707 () Unit!85695)

(assert (=> b!4453568 (= lt!1645376 Unit!85707)))

(declare-fun res!1845756 () Bool)

(declare-fun call!309914 () Bool)

(assert (=> b!4453568 (= res!1845756 call!309914)))

(declare-fun e!2773301 () Bool)

(assert (=> b!4453568 (=> (not res!1845756) (not e!2773301))))

(assert (=> b!4453568 e!2773301))

(declare-fun lt!1645366 () Unit!85695)

(declare-fun Unit!85708 () Unit!85695)

(assert (=> b!4453568 (= lt!1645366 Unit!85708)))

(declare-fun b!4453569 () Bool)

(declare-fun res!1845758 () Bool)

(declare-fun e!2773302 () Bool)

(assert (=> b!4453569 (=> (not res!1845758) (not e!2773302))))

(assert (=> b!4453569 (= res!1845758 (forall!9779 (toList!3748 lt!1645260) lambda!159475))))

(declare-fun b!4453570 () Bool)

(assert (=> b!4453570 (= e!2773302 (invariantList!864 (toList!3748 lt!1645374)))))

(declare-fun bm!309908 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!218 (ListMap!2987) Unit!85695)

(assert (=> bm!309908 (= call!309913 (lemmaContainsAllItsOwnKeys!218 lt!1645260))))

(assert (=> d!1358532 e!2773302))

(declare-fun res!1845757 () Bool)

(assert (=> d!1358532 (=> (not res!1845757) (not e!2773302))))

(assert (=> d!1358532 (= res!1845757 (forall!9779 (_2!28248 (h!55652 (toList!3747 lm!1837))) lambda!159475))))

(assert (=> d!1358532 (= lt!1645374 e!2773303)))

(declare-fun c!758208 () Bool)

(assert (=> d!1358532 (= c!758208 (is-Nil!49906 (_2!28248 (h!55652 (toList!3747 lm!1837)))))))

(declare-fun noDuplicateKeys!877 (List!50030) Bool)

(assert (=> d!1358532 (noDuplicateKeys!877 (_2!28248 (h!55652 (toList!3747 lm!1837))))))

(assert (=> d!1358532 (= (addToMapMapFromBucket!475 (_2!28248 (h!55652 (toList!3747 lm!1837))) lt!1645260) lt!1645374)))

(declare-fun b!4453571 () Bool)

(assert (=> b!4453571 (= e!2773301 (forall!9779 (toList!3748 lt!1645260) lambda!159474))))

(assert (=> b!4453572 (= e!2773303 lt!1645260)))

(declare-fun lt!1645363 () Unit!85695)

(assert (=> b!4453572 (= lt!1645363 call!309913)))

(assert (=> b!4453572 call!309914))

(declare-fun lt!1645365 () Unit!85695)

(assert (=> b!4453572 (= lt!1645365 lt!1645363)))

(assert (=> b!4453572 call!309915))

(declare-fun lt!1645372 () Unit!85695)

(declare-fun Unit!85709 () Unit!85695)

(assert (=> b!4453572 (= lt!1645372 Unit!85709)))

(declare-fun bm!309909 () Bool)

(assert (=> bm!309909 (= call!309915 (forall!9779 (toList!3748 lt!1645260) (ite c!758208 lambda!159472 lambda!159473)))))

(declare-fun bm!309910 () Bool)

(assert (=> bm!309910 (= call!309914 (forall!9779 (ite c!758208 (toList!3748 lt!1645260) (_2!28248 (h!55652 (toList!3747 lm!1837)))) (ite c!758208 lambda!159472 lambda!159474)))))

(assert (= (and d!1358532 c!758208) b!4453572))

(assert (= (and d!1358532 (not c!758208)) b!4453568))

(assert (= (and b!4453568 res!1845756) b!4453571))

(assert (= (or b!4453572 b!4453568) bm!309909))

(assert (= (or b!4453572 b!4453568) bm!309910))

(assert (= (or b!4453572 b!4453568) bm!309908))

(assert (= (and d!1358532 res!1845757) b!4453569))

(assert (= (and b!4453569 res!1845758) b!4453570))

(declare-fun m!5154307 () Bool)

(assert (=> b!4453571 m!5154307))

(declare-fun m!5154309 () Bool)

(assert (=> b!4453570 m!5154309))

(declare-fun m!5154311 () Bool)

(assert (=> b!4453569 m!5154311))

(declare-fun m!5154313 () Bool)

(assert (=> d!1358532 m!5154313))

(declare-fun m!5154315 () Bool)

(assert (=> d!1358532 m!5154315))

(declare-fun m!5154317 () Bool)

(assert (=> bm!309910 m!5154317))

(declare-fun m!5154319 () Bool)

(assert (=> bm!309908 m!5154319))

(declare-fun m!5154321 () Bool)

(assert (=> b!4453568 m!5154321))

(declare-fun m!5154323 () Bool)

(assert (=> b!4453568 m!5154323))

(declare-fun m!5154325 () Bool)

(assert (=> b!4453568 m!5154325))

(assert (=> b!4453568 m!5154325))

(declare-fun m!5154327 () Bool)

(assert (=> b!4453568 m!5154327))

(declare-fun m!5154329 () Bool)

(assert (=> b!4453568 m!5154329))

(assert (=> b!4453568 m!5154307))

(declare-fun m!5154331 () Bool)

(assert (=> b!4453568 m!5154331))

(assert (=> b!4453568 m!5154321))

(declare-fun m!5154333 () Bool)

(assert (=> b!4453568 m!5154333))

(declare-fun m!5154335 () Bool)

(assert (=> b!4453568 m!5154335))

(assert (=> b!4453568 m!5154307))

(declare-fun m!5154337 () Bool)

(assert (=> b!4453568 m!5154337))

(declare-fun m!5154339 () Bool)

(assert (=> bm!309909 m!5154339))

(assert (=> b!4453450 d!1358532))

(declare-fun b!4453579 () Bool)

(declare-fun e!2773306 () Bool)

(declare-fun tp!1334710 () Bool)

(declare-fun tp!1334711 () Bool)

(assert (=> b!4453579 (= e!2773306 (and tp!1334710 tp!1334711))))

(assert (=> b!4453451 (= tp!1334702 e!2773306)))

(assert (= (and b!4453451 (is-Cons!49907 (toList!3747 lm!1837))) b!4453579))

(declare-fun b_lambda!147369 () Bool)

(assert (= b_lambda!147365 (or start!436198 b_lambda!147369)))

(declare-fun bs!790088 () Bool)

(declare-fun d!1358546 () Bool)

(assert (= bs!790088 (and d!1358546 start!436198)))

(assert (=> bs!790088 (= (dynLambda!20951 lambda!159426 (h!55652 (toList!3747 lm!1837))) (noDuplicateKeys!877 (_2!28248 (h!55652 (toList!3747 lm!1837)))))))

(assert (=> bs!790088 m!5154315))

(assert (=> b!4453476 d!1358546))

(push 1)

(assert (not b!4453505))

(assert (not b_lambda!147369))

(assert (not b!4453477))

(assert (not bs!790088))

(assert (not b!4453506))

(assert (not d!1358510))

(assert (not b!4453568))

(assert (not d!1358530))

(assert (not b!4453508))

(assert (not bm!309908))

(assert (not d!1358528))

(assert (not b!4453569))

(assert (not d!1358514))

(assert (not b!4453579))

(assert (not d!1358524))

(assert tp_is_empty!26745)

(assert (not b!4453511))

(assert (not b!4453517))

(assert (not b!4453507))

(assert (not b!4453571))

(assert (not b!4453570))

(assert (not d!1358532))

(assert (not b!4453510))

(assert (not bm!309910))

(assert (not d!1358512))

(assert (not d!1358526))

(assert (not bm!309898))

(assert (not b!4453509))

(assert (not bm!309909))

(assert (not b!4453519))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

