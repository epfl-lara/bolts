; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419716 () Bool)

(assert start!419716)

(declare-fun b!4347500 () Bool)

(declare-fun res!1785568 () Bool)

(declare-fun e!2705364 () Bool)

(assert (=> b!4347500 (=> (not res!1785568) (not e!2705364))))

(declare-datatypes ((V!10451 0))(
  ( (V!10452 (val!16435 Int)) )
))
(declare-datatypes ((K!10205 0))(
  ( (K!10206 (val!16436 Int)) )
))
(declare-datatypes ((tuple2!48190 0))(
  ( (tuple2!48191 (_1!27389 K!10205) (_2!27389 V!10451)) )
))
(declare-datatypes ((List!48963 0))(
  ( (Nil!48839) (Cons!48839 (h!54366 tuple2!48190) (t!355883 List!48963)) )
))
(declare-datatypes ((tuple2!48192 0))(
  ( (tuple2!48193 (_1!27390 (_ BitVec 64)) (_2!27390 List!48963)) )
))
(declare-datatypes ((List!48964 0))(
  ( (Nil!48840) (Cons!48840 (h!54367 tuple2!48192) (t!355884 List!48964)) )
))
(declare-datatypes ((ListLongMap!1543 0))(
  ( (ListLongMap!1544 (toList!2893 List!48964)) )
))
(declare-fun lm!1707 () ListLongMap!1543)

(declare-fun key!3918 () K!10205)

(declare-datatypes ((ListMap!2137 0))(
  ( (ListMap!2138 (toList!2894 List!48963)) )
))
(declare-fun contains!10994 (ListMap!2137 K!10205) Bool)

(declare-fun extractMap!514 (List!48964) ListMap!2137)

(assert (=> b!4347500 (= res!1785568 (contains!10994 (extractMap!514 (toList!2893 lm!1707)) key!3918))))

(declare-fun b!4347501 () Bool)

(declare-fun e!2705368 () Bool)

(declare-fun lt!1562329 () ListLongMap!1543)

(declare-fun lambda!138679 () Int)

(declare-fun forall!9051 (List!48964 Int) Bool)

(assert (=> b!4347501 (= e!2705368 (forall!9051 (toList!2893 lt!1562329) lambda!138679))))

(declare-fun b!4347502 () Bool)

(declare-fun res!1785562 () Bool)

(assert (=> b!4347502 (=> (not res!1785562) (not e!2705364))))

(declare-datatypes ((Hashable!4847 0))(
  ( (HashableExt!4846 (__x!30550 Int)) )
))
(declare-fun hashF!1247 () Hashable!4847)

(declare-fun allKeysSameHashInMap!559 (ListLongMap!1543 Hashable!4847) Bool)

(assert (=> b!4347502 (= res!1785562 (allKeysSameHashInMap!559 lm!1707 hashF!1247))))

(declare-fun b!4347503 () Bool)

(declare-fun e!2705367 () Bool)

(declare-fun e!2705365 () Bool)

(assert (=> b!4347503 (= e!2705367 e!2705365)))

(declare-fun res!1785564 () Bool)

(assert (=> b!4347503 (=> res!1785564 e!2705365)))

(declare-fun hash!377 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4347503 (= res!1785564 (or (and ((_ is Cons!48840) (toList!2893 lm!1707)) (= (_1!27390 (h!54367 (toList!2893 lm!1707))) hash!377)) (not ((_ is Cons!48840) (toList!2893 lm!1707))) (= (_1!27390 (h!54367 (toList!2893 lm!1707))) hash!377)))))

(assert (=> b!4347503 e!2705368))

(declare-fun res!1785566 () Bool)

(assert (=> b!4347503 (=> (not res!1785566) (not e!2705368))))

(assert (=> b!4347503 (= res!1785566 (forall!9051 (toList!2893 lt!1562329) lambda!138679))))

(declare-fun newBucket!200 () List!48963)

(declare-fun +!576 (ListLongMap!1543 tuple2!48192) ListLongMap!1543)

(assert (=> b!4347503 (= lt!1562329 (+!576 lm!1707 (tuple2!48193 hash!377 newBucket!200)))))

(declare-datatypes ((Unit!70757 0))(
  ( (Unit!70758) )
))
(declare-fun lt!1562324 () Unit!70757)

(declare-fun addValidProp!109 (ListLongMap!1543 Int (_ BitVec 64) List!48963) Unit!70757)

(assert (=> b!4347503 (= lt!1562324 (addValidProp!109 lm!1707 lambda!138679 hash!377 newBucket!200))))

(assert (=> b!4347503 (forall!9051 (toList!2893 lm!1707) lambda!138679)))

(declare-fun res!1785571 () Bool)

(assert (=> start!419716 (=> (not res!1785571) (not e!2705364))))

(assert (=> start!419716 (= res!1785571 (forall!9051 (toList!2893 lm!1707) lambda!138679))))

(assert (=> start!419716 e!2705364))

(declare-fun e!2705366 () Bool)

(assert (=> start!419716 e!2705366))

(assert (=> start!419716 true))

(declare-fun e!2705362 () Bool)

(declare-fun inv!64391 (ListLongMap!1543) Bool)

(assert (=> start!419716 (and (inv!64391 lm!1707) e!2705362)))

(declare-fun tp_is_empty!25057 () Bool)

(assert (=> start!419716 tp_is_empty!25057))

(declare-fun tp_is_empty!25059 () Bool)

(assert (=> start!419716 tp_is_empty!25059))

(declare-fun b!4347504 () Bool)

(assert (=> b!4347504 (= e!2705364 (not e!2705367))))

(declare-fun res!1785565 () Bool)

(assert (=> b!4347504 (=> res!1785565 e!2705367)))

(declare-fun lt!1562330 () List!48963)

(declare-fun newValue!99 () V!10451)

(declare-fun removePairForKey!425 (List!48963 K!10205) List!48963)

(assert (=> b!4347504 (= res!1785565 (not (= newBucket!200 (Cons!48839 (tuple2!48191 key!3918 newValue!99) (removePairForKey!425 lt!1562330 key!3918)))))))

(declare-fun lt!1562327 () Unit!70757)

(declare-fun lt!1562326 () tuple2!48192)

(declare-fun forallContained!1701 (List!48964 Int tuple2!48192) Unit!70757)

(assert (=> b!4347504 (= lt!1562327 (forallContained!1701 (toList!2893 lm!1707) lambda!138679 lt!1562326))))

(declare-fun contains!10995 (List!48964 tuple2!48192) Bool)

(assert (=> b!4347504 (contains!10995 (toList!2893 lm!1707) lt!1562326)))

(assert (=> b!4347504 (= lt!1562326 (tuple2!48193 hash!377 lt!1562330))))

(declare-fun lt!1562328 () Unit!70757)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!302 (List!48964 (_ BitVec 64) List!48963) Unit!70757)

(assert (=> b!4347504 (= lt!1562328 (lemmaGetValueByKeyImpliesContainsTuple!302 (toList!2893 lm!1707) hash!377 lt!1562330))))

(declare-fun apply!11307 (ListLongMap!1543 (_ BitVec 64)) List!48963)

(assert (=> b!4347504 (= lt!1562330 (apply!11307 lm!1707 hash!377))))

(declare-fun b!4347505 () Bool)

(declare-fun tp!1329663 () Bool)

(assert (=> b!4347505 (= e!2705366 (and tp_is_empty!25057 tp_is_empty!25059 tp!1329663))))

(declare-fun b!4347506 () Bool)

(declare-fun res!1785561 () Bool)

(assert (=> b!4347506 (=> (not res!1785561) (not e!2705364))))

(declare-fun contains!10996 (ListLongMap!1543 (_ BitVec 64)) Bool)

(assert (=> b!4347506 (= res!1785561 (contains!10996 lm!1707 hash!377))))

(declare-fun b!4347507 () Bool)

(declare-fun tp!1329664 () Bool)

(assert (=> b!4347507 (= e!2705362 tp!1329664)))

(declare-fun b!4347508 () Bool)

(declare-fun res!1785570 () Bool)

(assert (=> b!4347508 (=> (not res!1785570) (not e!2705364))))

(declare-fun hash!1442 (Hashable!4847 K!10205) (_ BitVec 64))

(assert (=> b!4347508 (= res!1785570 (= (hash!1442 hashF!1247 key!3918) hash!377))))

(declare-fun b!4347509 () Bool)

(declare-fun e!2705363 () Bool)

(declare-fun containsKey!610 (List!48963 K!10205) Bool)

(assert (=> b!4347509 (= e!2705363 (not (containsKey!610 (_2!27390 (h!54367 (toList!2893 lm!1707))) key!3918)))))

(declare-fun b!4347510 () Bool)

(declare-fun res!1785567 () Bool)

(assert (=> b!4347510 (=> (not res!1785567) (not e!2705364))))

(declare-fun allKeysSameHash!413 (List!48963 (_ BitVec 64) Hashable!4847) Bool)

(assert (=> b!4347510 (= res!1785567 (allKeysSameHash!413 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4347511 () Bool)

(declare-fun res!1785563 () Bool)

(assert (=> b!4347511 (=> res!1785563 e!2705367)))

(declare-fun noDuplicateKeys!455 (List!48963) Bool)

(assert (=> b!4347511 (= res!1785563 (not (noDuplicateKeys!455 newBucket!200)))))

(declare-fun b!4347512 () Bool)

(assert (=> b!4347512 (= e!2705365 (forall!9051 (t!355884 (toList!2893 lm!1707)) lambda!138679))))

(assert (=> b!4347512 e!2705363))

(declare-fun res!1785569 () Bool)

(assert (=> b!4347512 (=> (not res!1785569) (not e!2705363))))

(assert (=> b!4347512 (= res!1785569 (not (containsKey!610 (apply!11307 lm!1707 (_1!27390 (h!54367 (toList!2893 lm!1707)))) key!3918)))))

(declare-fun lt!1562325 () Unit!70757)

(declare-fun lemmaNotSameHashThenCannotContainKey!2 (ListLongMap!1543 K!10205 (_ BitVec 64) Hashable!4847) Unit!70757)

(assert (=> b!4347512 (= lt!1562325 (lemmaNotSameHashThenCannotContainKey!2 lm!1707 key!3918 (_1!27390 (h!54367 (toList!2893 lm!1707))) hashF!1247))))

(assert (= (and start!419716 res!1785571) b!4347502))

(assert (= (and b!4347502 res!1785562) b!4347508))

(assert (= (and b!4347508 res!1785570) b!4347510))

(assert (= (and b!4347510 res!1785567) b!4347500))

(assert (= (and b!4347500 res!1785568) b!4347506))

(assert (= (and b!4347506 res!1785561) b!4347504))

(assert (= (and b!4347504 (not res!1785565)) b!4347511))

(assert (= (and b!4347511 (not res!1785563)) b!4347503))

(assert (= (and b!4347503 res!1785566) b!4347501))

(assert (= (and b!4347503 (not res!1785564)) b!4347512))

(assert (= (and b!4347512 res!1785569) b!4347509))

(assert (= (and start!419716 ((_ is Cons!48839) newBucket!200)) b!4347505))

(assert (= start!419716 b!4347507))

(declare-fun m!4956559 () Bool)

(assert (=> b!4347504 m!4956559))

(declare-fun m!4956561 () Bool)

(assert (=> b!4347504 m!4956561))

(declare-fun m!4956563 () Bool)

(assert (=> b!4347504 m!4956563))

(declare-fun m!4956565 () Bool)

(assert (=> b!4347504 m!4956565))

(declare-fun m!4956567 () Bool)

(assert (=> b!4347504 m!4956567))

(declare-fun m!4956569 () Bool)

(assert (=> b!4347509 m!4956569))

(declare-fun m!4956571 () Bool)

(assert (=> b!4347512 m!4956571))

(declare-fun m!4956573 () Bool)

(assert (=> b!4347512 m!4956573))

(assert (=> b!4347512 m!4956573))

(declare-fun m!4956575 () Bool)

(assert (=> b!4347512 m!4956575))

(declare-fun m!4956577 () Bool)

(assert (=> b!4347512 m!4956577))

(declare-fun m!4956579 () Bool)

(assert (=> b!4347501 m!4956579))

(declare-fun m!4956581 () Bool)

(assert (=> start!419716 m!4956581))

(declare-fun m!4956583 () Bool)

(assert (=> start!419716 m!4956583))

(declare-fun m!4956585 () Bool)

(assert (=> b!4347510 m!4956585))

(declare-fun m!4956587 () Bool)

(assert (=> b!4347508 m!4956587))

(declare-fun m!4956589 () Bool)

(assert (=> b!4347502 m!4956589))

(declare-fun m!4956591 () Bool)

(assert (=> b!4347500 m!4956591))

(assert (=> b!4347500 m!4956591))

(declare-fun m!4956593 () Bool)

(assert (=> b!4347500 m!4956593))

(declare-fun m!4956595 () Bool)

(assert (=> b!4347511 m!4956595))

(assert (=> b!4347503 m!4956579))

(declare-fun m!4956597 () Bool)

(assert (=> b!4347503 m!4956597))

(declare-fun m!4956599 () Bool)

(assert (=> b!4347503 m!4956599))

(assert (=> b!4347503 m!4956581))

(declare-fun m!4956601 () Bool)

(assert (=> b!4347506 m!4956601))

(check-sat (not b!4347509) (not b!4347508) (not b!4347505) tp_is_empty!25059 (not b!4347506) (not b!4347503) (not b!4347510) (not b!4347500) (not start!419716) (not b!4347504) tp_is_empty!25057 (not b!4347501) (not b!4347502) (not b!4347507) (not b!4347512) (not b!4347511))
(check-sat)
(get-model)

(declare-fun d!1283593 () Bool)

(assert (=> d!1283593 true))

(assert (=> d!1283593 true))

(declare-fun lambda!138682 () Int)

(declare-fun forall!9052 (List!48963 Int) Bool)

(assert (=> d!1283593 (= (allKeysSameHash!413 newBucket!200 hash!377 hashF!1247) (forall!9052 newBucket!200 lambda!138682))))

(declare-fun bs!628091 () Bool)

(assert (= bs!628091 d!1283593))

(declare-fun m!4956613 () Bool)

(assert (=> bs!628091 m!4956613))

(assert (=> b!4347510 d!1283593))

(declare-fun d!1283597 () Bool)

(declare-fun res!1785579 () Bool)

(declare-fun e!2705382 () Bool)

(assert (=> d!1283597 (=> res!1785579 e!2705382)))

(assert (=> d!1283597 (= res!1785579 ((_ is Nil!48840) (toList!2893 lt!1562329)))))

(assert (=> d!1283597 (= (forall!9051 (toList!2893 lt!1562329) lambda!138679) e!2705382)))

(declare-fun b!4347536 () Bool)

(declare-fun e!2705383 () Bool)

(assert (=> b!4347536 (= e!2705382 e!2705383)))

(declare-fun res!1785580 () Bool)

(assert (=> b!4347536 (=> (not res!1785580) (not e!2705383))))

(declare-fun dynLambda!20599 (Int tuple2!48192) Bool)

(assert (=> b!4347536 (= res!1785580 (dynLambda!20599 lambda!138679 (h!54367 (toList!2893 lt!1562329))))))

(declare-fun b!4347537 () Bool)

(assert (=> b!4347537 (= e!2705383 (forall!9051 (t!355884 (toList!2893 lt!1562329)) lambda!138679))))

(assert (= (and d!1283597 (not res!1785579)) b!4347536))

(assert (= (and b!4347536 res!1785580) b!4347537))

(declare-fun b_lambda!130163 () Bool)

(assert (=> (not b_lambda!130163) (not b!4347536)))

(declare-fun m!4956621 () Bool)

(assert (=> b!4347536 m!4956621))

(declare-fun m!4956623 () Bool)

(assert (=> b!4347537 m!4956623))

(assert (=> b!4347501 d!1283597))

(declare-fun d!1283601 () Bool)

(declare-fun res!1785587 () Bool)

(declare-fun e!2705390 () Bool)

(assert (=> d!1283601 (=> res!1785587 e!2705390)))

(assert (=> d!1283601 (= res!1785587 (not ((_ is Cons!48839) newBucket!200)))))

(assert (=> d!1283601 (= (noDuplicateKeys!455 newBucket!200) e!2705390)))

(declare-fun b!4347544 () Bool)

(declare-fun e!2705391 () Bool)

(assert (=> b!4347544 (= e!2705390 e!2705391)))

(declare-fun res!1785588 () Bool)

(assert (=> b!4347544 (=> (not res!1785588) (not e!2705391))))

(assert (=> b!4347544 (= res!1785588 (not (containsKey!610 (t!355883 newBucket!200) (_1!27389 (h!54366 newBucket!200)))))))

(declare-fun b!4347545 () Bool)

(assert (=> b!4347545 (= e!2705391 (noDuplicateKeys!455 (t!355883 newBucket!200)))))

(assert (= (and d!1283601 (not res!1785587)) b!4347544))

(assert (= (and b!4347544 res!1785588) b!4347545))

(declare-fun m!4956625 () Bool)

(assert (=> b!4347544 m!4956625))

(declare-fun m!4956627 () Bool)

(assert (=> b!4347545 m!4956627))

(assert (=> b!4347511 d!1283601))

(declare-fun b!4347594 () Bool)

(declare-fun e!2705435 () Bool)

(declare-fun e!2705436 () Bool)

(assert (=> b!4347594 (= e!2705435 e!2705436)))

(declare-fun res!1785620 () Bool)

(assert (=> b!4347594 (=> (not res!1785620) (not e!2705436))))

(declare-datatypes ((Option!10419 0))(
  ( (None!10418) (Some!10418 (v!43216 V!10451)) )
))
(declare-fun isDefined!7714 (Option!10419) Bool)

(declare-fun getValueByKey!405 (List!48963 K!10205) Option!10419)

(assert (=> b!4347594 (= res!1785620 (isDefined!7714 (getValueByKey!405 (toList!2894 (extractMap!514 (toList!2893 lm!1707))) key!3918)))))

(declare-fun b!4347595 () Bool)

(declare-datatypes ((List!48965 0))(
  ( (Nil!48841) (Cons!48841 (h!54370 K!10205) (t!355885 List!48965)) )
))
(declare-fun e!2705432 () List!48965)

(declare-fun getKeysList!101 (List!48963) List!48965)

(assert (=> b!4347595 (= e!2705432 (getKeysList!101 (toList!2894 (extractMap!514 (toList!2893 lm!1707)))))))

(declare-fun d!1283603 () Bool)

(assert (=> d!1283603 e!2705435))

(declare-fun res!1785619 () Bool)

(assert (=> d!1283603 (=> res!1785619 e!2705435)))

(declare-fun e!2705434 () Bool)

(assert (=> d!1283603 (= res!1785619 e!2705434)))

(declare-fun res!1785621 () Bool)

(assert (=> d!1283603 (=> (not res!1785621) (not e!2705434))))

(declare-fun lt!1562375 () Bool)

(assert (=> d!1283603 (= res!1785621 (not lt!1562375))))

(declare-fun lt!1562376 () Bool)

(assert (=> d!1283603 (= lt!1562375 lt!1562376)))

(declare-fun lt!1562372 () Unit!70757)

(declare-fun e!2705431 () Unit!70757)

(assert (=> d!1283603 (= lt!1562372 e!2705431)))

(declare-fun c!739054 () Bool)

(assert (=> d!1283603 (= c!739054 lt!1562376)))

(declare-fun containsKey!611 (List!48963 K!10205) Bool)

(assert (=> d!1283603 (= lt!1562376 (containsKey!611 (toList!2894 (extractMap!514 (toList!2893 lm!1707))) key!3918))))

(assert (=> d!1283603 (= (contains!10994 (extractMap!514 (toList!2893 lm!1707)) key!3918) lt!1562375)))

(declare-fun b!4347596 () Bool)

(declare-fun keys!16469 (ListMap!2137) List!48965)

(assert (=> b!4347596 (= e!2705432 (keys!16469 (extractMap!514 (toList!2893 lm!1707))))))

(declare-fun bm!302213 () Bool)

(declare-fun call!302218 () Bool)

(declare-fun contains!10997 (List!48965 K!10205) Bool)

(assert (=> bm!302213 (= call!302218 (contains!10997 e!2705432 key!3918))))

(declare-fun c!739053 () Bool)

(assert (=> bm!302213 (= c!739053 c!739054)))

(declare-fun b!4347597 () Bool)

(assert (=> b!4347597 (= e!2705436 (contains!10997 (keys!16469 (extractMap!514 (toList!2893 lm!1707))) key!3918))))

(declare-fun b!4347598 () Bool)

(declare-fun lt!1562378 () Unit!70757)

(assert (=> b!4347598 (= e!2705431 lt!1562378)))

(declare-fun lt!1562371 () Unit!70757)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!317 (List!48963 K!10205) Unit!70757)

(assert (=> b!4347598 (= lt!1562371 (lemmaContainsKeyImpliesGetValueByKeyDefined!317 (toList!2894 (extractMap!514 (toList!2893 lm!1707))) key!3918))))

(assert (=> b!4347598 (isDefined!7714 (getValueByKey!405 (toList!2894 (extractMap!514 (toList!2893 lm!1707))) key!3918))))

(declare-fun lt!1562374 () Unit!70757)

(assert (=> b!4347598 (= lt!1562374 lt!1562371)))

(declare-fun lemmaInListThenGetKeysListContains!98 (List!48963 K!10205) Unit!70757)

(assert (=> b!4347598 (= lt!1562378 (lemmaInListThenGetKeysListContains!98 (toList!2894 (extractMap!514 (toList!2893 lm!1707))) key!3918))))

(assert (=> b!4347598 call!302218))

(declare-fun b!4347599 () Bool)

(declare-fun e!2705433 () Unit!70757)

(assert (=> b!4347599 (= e!2705431 e!2705433)))

(declare-fun c!739052 () Bool)

(assert (=> b!4347599 (= c!739052 call!302218)))

(declare-fun b!4347600 () Bool)

(declare-fun Unit!70759 () Unit!70757)

(assert (=> b!4347600 (= e!2705433 Unit!70759)))

(declare-fun b!4347601 () Bool)

(assert (=> b!4347601 (= e!2705434 (not (contains!10997 (keys!16469 (extractMap!514 (toList!2893 lm!1707))) key!3918)))))

(declare-fun b!4347602 () Bool)

(assert (=> b!4347602 false))

(declare-fun lt!1562377 () Unit!70757)

(declare-fun lt!1562373 () Unit!70757)

(assert (=> b!4347602 (= lt!1562377 lt!1562373)))

(assert (=> b!4347602 (containsKey!611 (toList!2894 (extractMap!514 (toList!2893 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!99 (List!48963 K!10205) Unit!70757)

(assert (=> b!4347602 (= lt!1562373 (lemmaInGetKeysListThenContainsKey!99 (toList!2894 (extractMap!514 (toList!2893 lm!1707))) key!3918))))

(declare-fun Unit!70760 () Unit!70757)

(assert (=> b!4347602 (= e!2705433 Unit!70760)))

(assert (= (and d!1283603 c!739054) b!4347598))

(assert (= (and d!1283603 (not c!739054)) b!4347599))

(assert (= (and b!4347599 c!739052) b!4347602))

(assert (= (and b!4347599 (not c!739052)) b!4347600))

(assert (= (or b!4347598 b!4347599) bm!302213))

(assert (= (and bm!302213 c!739053) b!4347595))

(assert (= (and bm!302213 (not c!739053)) b!4347596))

(assert (= (and d!1283603 res!1785621) b!4347601))

(assert (= (and d!1283603 (not res!1785619)) b!4347594))

(assert (= (and b!4347594 res!1785620) b!4347597))

(assert (=> b!4347596 m!4956591))

(declare-fun m!4956657 () Bool)

(assert (=> b!4347596 m!4956657))

(assert (=> b!4347601 m!4956591))

(assert (=> b!4347601 m!4956657))

(assert (=> b!4347601 m!4956657))

(declare-fun m!4956659 () Bool)

(assert (=> b!4347601 m!4956659))

(assert (=> b!4347597 m!4956591))

(assert (=> b!4347597 m!4956657))

(assert (=> b!4347597 m!4956657))

(assert (=> b!4347597 m!4956659))

(declare-fun m!4956661 () Bool)

(assert (=> bm!302213 m!4956661))

(declare-fun m!4956663 () Bool)

(assert (=> b!4347598 m!4956663))

(declare-fun m!4956665 () Bool)

(assert (=> b!4347598 m!4956665))

(assert (=> b!4347598 m!4956665))

(declare-fun m!4956667 () Bool)

(assert (=> b!4347598 m!4956667))

(declare-fun m!4956669 () Bool)

(assert (=> b!4347598 m!4956669))

(assert (=> b!4347594 m!4956665))

(assert (=> b!4347594 m!4956665))

(assert (=> b!4347594 m!4956667))

(declare-fun m!4956671 () Bool)

(assert (=> b!4347595 m!4956671))

(declare-fun m!4956673 () Bool)

(assert (=> d!1283603 m!4956673))

(assert (=> b!4347602 m!4956673))

(declare-fun m!4956675 () Bool)

(assert (=> b!4347602 m!4956675))

(assert (=> b!4347500 d!1283603))

(declare-fun bs!628094 () Bool)

(declare-fun d!1283621 () Bool)

(assert (= bs!628094 (and d!1283621 start!419716)))

(declare-fun lambda!138685 () Int)

(assert (=> bs!628094 (= lambda!138685 lambda!138679)))

(declare-fun lt!1562397 () ListMap!2137)

(declare-fun invariantList!653 (List!48963) Bool)

(assert (=> d!1283621 (invariantList!653 (toList!2894 lt!1562397))))

(declare-fun e!2705451 () ListMap!2137)

(assert (=> d!1283621 (= lt!1562397 e!2705451)))

(declare-fun c!739063 () Bool)

(assert (=> d!1283621 (= c!739063 ((_ is Cons!48840) (toList!2893 lm!1707)))))

(assert (=> d!1283621 (forall!9051 (toList!2893 lm!1707) lambda!138685)))

(assert (=> d!1283621 (= (extractMap!514 (toList!2893 lm!1707)) lt!1562397)))

(declare-fun b!4347625 () Bool)

(declare-fun addToMapMapFromBucket!158 (List!48963 ListMap!2137) ListMap!2137)

(assert (=> b!4347625 (= e!2705451 (addToMapMapFromBucket!158 (_2!27390 (h!54367 (toList!2893 lm!1707))) (extractMap!514 (t!355884 (toList!2893 lm!1707)))))))

(declare-fun b!4347626 () Bool)

(assert (=> b!4347626 (= e!2705451 (ListMap!2138 Nil!48839))))

(assert (= (and d!1283621 c!739063) b!4347625))

(assert (= (and d!1283621 (not c!739063)) b!4347626))

(declare-fun m!4956677 () Bool)

(assert (=> d!1283621 m!4956677))

(declare-fun m!4956679 () Bool)

(assert (=> d!1283621 m!4956679))

(declare-fun m!4956681 () Bool)

(assert (=> b!4347625 m!4956681))

(assert (=> b!4347625 m!4956681))

(declare-fun m!4956683 () Bool)

(assert (=> b!4347625 m!4956683))

(assert (=> b!4347500 d!1283621))

(declare-fun d!1283623 () Bool)

(declare-fun res!1785635 () Bool)

(declare-fun e!2705462 () Bool)

(assert (=> d!1283623 (=> res!1785635 e!2705462)))

(assert (=> d!1283623 (= res!1785635 (and ((_ is Cons!48839) (_2!27390 (h!54367 (toList!2893 lm!1707)))) (= (_1!27389 (h!54366 (_2!27390 (h!54367 (toList!2893 lm!1707))))) key!3918)))))

(assert (=> d!1283623 (= (containsKey!610 (_2!27390 (h!54367 (toList!2893 lm!1707))) key!3918) e!2705462)))

(declare-fun b!4347640 () Bool)

(declare-fun e!2705463 () Bool)

(assert (=> b!4347640 (= e!2705462 e!2705463)))

(declare-fun res!1785636 () Bool)

(assert (=> b!4347640 (=> (not res!1785636) (not e!2705463))))

(assert (=> b!4347640 (= res!1785636 ((_ is Cons!48839) (_2!27390 (h!54367 (toList!2893 lm!1707)))))))

(declare-fun b!4347641 () Bool)

(assert (=> b!4347641 (= e!2705463 (containsKey!610 (t!355883 (_2!27390 (h!54367 (toList!2893 lm!1707)))) key!3918))))

(assert (= (and d!1283623 (not res!1785635)) b!4347640))

(assert (= (and b!4347640 res!1785636) b!4347641))

(declare-fun m!4956705 () Bool)

(assert (=> b!4347641 m!4956705))

(assert (=> b!4347509 d!1283623))

(declare-fun d!1283627 () Bool)

(declare-fun res!1785637 () Bool)

(declare-fun e!2705464 () Bool)

(assert (=> d!1283627 (=> res!1785637 e!2705464)))

(assert (=> d!1283627 (= res!1785637 ((_ is Nil!48840) (toList!2893 lm!1707)))))

(assert (=> d!1283627 (= (forall!9051 (toList!2893 lm!1707) lambda!138679) e!2705464)))

(declare-fun b!4347642 () Bool)

(declare-fun e!2705465 () Bool)

(assert (=> b!4347642 (= e!2705464 e!2705465)))

(declare-fun res!1785638 () Bool)

(assert (=> b!4347642 (=> (not res!1785638) (not e!2705465))))

(assert (=> b!4347642 (= res!1785638 (dynLambda!20599 lambda!138679 (h!54367 (toList!2893 lm!1707))))))

(declare-fun b!4347643 () Bool)

(assert (=> b!4347643 (= e!2705465 (forall!9051 (t!355884 (toList!2893 lm!1707)) lambda!138679))))

(assert (= (and d!1283627 (not res!1785637)) b!4347642))

(assert (= (and b!4347642 res!1785638) b!4347643))

(declare-fun b_lambda!130171 () Bool)

(assert (=> (not b_lambda!130171) (not b!4347642)))

(declare-fun m!4956707 () Bool)

(assert (=> b!4347642 m!4956707))

(assert (=> b!4347643 m!4956571))

(assert (=> start!419716 d!1283627))

(declare-fun d!1283629 () Bool)

(declare-fun isStrictlySorted!80 (List!48964) Bool)

(assert (=> d!1283629 (= (inv!64391 lm!1707) (isStrictlySorted!80 (toList!2893 lm!1707)))))

(declare-fun bs!628095 () Bool)

(assert (= bs!628095 d!1283629))

(declare-fun m!4956709 () Bool)

(assert (=> bs!628095 m!4956709))

(assert (=> start!419716 d!1283629))

(declare-fun d!1283631 () Bool)

(declare-fun hash!1446 (Hashable!4847 K!10205) (_ BitVec 64))

(assert (=> d!1283631 (= (hash!1442 hashF!1247 key!3918) (hash!1446 hashF!1247 key!3918))))

(declare-fun bs!628096 () Bool)

(assert (= bs!628096 d!1283631))

(declare-fun m!4956711 () Bool)

(assert (=> bs!628096 m!4956711))

(assert (=> b!4347508 d!1283631))

(declare-fun d!1283633 () Bool)

(declare-datatypes ((Option!10421 0))(
  ( (None!10420) (Some!10420 (v!43218 List!48963)) )
))
(declare-fun get!15854 (Option!10421) List!48963)

(declare-fun getValueByKey!407 (List!48964 (_ BitVec 64)) Option!10421)

(assert (=> d!1283633 (= (apply!11307 lm!1707 hash!377) (get!15854 (getValueByKey!407 (toList!2893 lm!1707) hash!377)))))

(declare-fun bs!628097 () Bool)

(assert (= bs!628097 d!1283633))

(declare-fun m!4956713 () Bool)

(assert (=> bs!628097 m!4956713))

(assert (=> bs!628097 m!4956713))

(declare-fun m!4956715 () Bool)

(assert (=> bs!628097 m!4956715))

(assert (=> b!4347504 d!1283633))

(declare-fun d!1283635 () Bool)

(declare-fun lt!1562408 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7668 (List!48964) (InoxSet tuple2!48192))

(assert (=> d!1283635 (= lt!1562408 (select (content!7668 (toList!2893 lm!1707)) lt!1562326))))

(declare-fun e!2705471 () Bool)

(assert (=> d!1283635 (= lt!1562408 e!2705471)))

(declare-fun res!1785644 () Bool)

(assert (=> d!1283635 (=> (not res!1785644) (not e!2705471))))

(assert (=> d!1283635 (= res!1785644 ((_ is Cons!48840) (toList!2893 lm!1707)))))

(assert (=> d!1283635 (= (contains!10995 (toList!2893 lm!1707) lt!1562326) lt!1562408)))

(declare-fun b!4347648 () Bool)

(declare-fun e!2705470 () Bool)

(assert (=> b!4347648 (= e!2705471 e!2705470)))

(declare-fun res!1785643 () Bool)

(assert (=> b!4347648 (=> res!1785643 e!2705470)))

(assert (=> b!4347648 (= res!1785643 (= (h!54367 (toList!2893 lm!1707)) lt!1562326))))

(declare-fun b!4347649 () Bool)

(assert (=> b!4347649 (= e!2705470 (contains!10995 (t!355884 (toList!2893 lm!1707)) lt!1562326))))

(assert (= (and d!1283635 res!1785644) b!4347648))

(assert (= (and b!4347648 (not res!1785643)) b!4347649))

(declare-fun m!4956717 () Bool)

(assert (=> d!1283635 m!4956717))

(declare-fun m!4956719 () Bool)

(assert (=> d!1283635 m!4956719))

(declare-fun m!4956721 () Bool)

(assert (=> b!4347649 m!4956721))

(assert (=> b!4347504 d!1283635))

(declare-fun d!1283637 () Bool)

(assert (=> d!1283637 (dynLambda!20599 lambda!138679 lt!1562326)))

(declare-fun lt!1562411 () Unit!70757)

(declare-fun choose!26689 (List!48964 Int tuple2!48192) Unit!70757)

(assert (=> d!1283637 (= lt!1562411 (choose!26689 (toList!2893 lm!1707) lambda!138679 lt!1562326))))

(declare-fun e!2705474 () Bool)

(assert (=> d!1283637 e!2705474))

(declare-fun res!1785647 () Bool)

(assert (=> d!1283637 (=> (not res!1785647) (not e!2705474))))

(assert (=> d!1283637 (= res!1785647 (forall!9051 (toList!2893 lm!1707) lambda!138679))))

(assert (=> d!1283637 (= (forallContained!1701 (toList!2893 lm!1707) lambda!138679 lt!1562326) lt!1562411)))

(declare-fun b!4347652 () Bool)

(assert (=> b!4347652 (= e!2705474 (contains!10995 (toList!2893 lm!1707) lt!1562326))))

(assert (= (and d!1283637 res!1785647) b!4347652))

(declare-fun b_lambda!130173 () Bool)

(assert (=> (not b_lambda!130173) (not d!1283637)))

(declare-fun m!4956723 () Bool)

(assert (=> d!1283637 m!4956723))

(declare-fun m!4956725 () Bool)

(assert (=> d!1283637 m!4956725))

(assert (=> d!1283637 m!4956581))

(assert (=> b!4347652 m!4956561))

(assert (=> b!4347504 d!1283637))

(declare-fun d!1283639 () Bool)

(assert (=> d!1283639 (contains!10995 (toList!2893 lm!1707) (tuple2!48193 hash!377 lt!1562330))))

(declare-fun lt!1562417 () Unit!70757)

(declare-fun choose!26690 (List!48964 (_ BitVec 64) List!48963) Unit!70757)

(assert (=> d!1283639 (= lt!1562417 (choose!26690 (toList!2893 lm!1707) hash!377 lt!1562330))))

(declare-fun e!2705480 () Bool)

(assert (=> d!1283639 e!2705480))

(declare-fun res!1785650 () Bool)

(assert (=> d!1283639 (=> (not res!1785650) (not e!2705480))))

(assert (=> d!1283639 (= res!1785650 (isStrictlySorted!80 (toList!2893 lm!1707)))))

(assert (=> d!1283639 (= (lemmaGetValueByKeyImpliesContainsTuple!302 (toList!2893 lm!1707) hash!377 lt!1562330) lt!1562417)))

(declare-fun b!4347661 () Bool)

(assert (=> b!4347661 (= e!2705480 (= (getValueByKey!407 (toList!2893 lm!1707) hash!377) (Some!10420 lt!1562330)))))

(assert (= (and d!1283639 res!1785650) b!4347661))

(declare-fun m!4956735 () Bool)

(assert (=> d!1283639 m!4956735))

(declare-fun m!4956737 () Bool)

(assert (=> d!1283639 m!4956737))

(assert (=> d!1283639 m!4956709))

(assert (=> b!4347661 m!4956713))

(assert (=> b!4347504 d!1283639))

(declare-fun b!4347682 () Bool)

(declare-fun e!2705494 () List!48963)

(assert (=> b!4347682 (= e!2705494 (t!355883 lt!1562330))))

(declare-fun b!4347683 () Bool)

(declare-fun e!2705493 () List!48963)

(assert (=> b!4347683 (= e!2705494 e!2705493)))

(declare-fun c!739075 () Bool)

(assert (=> b!4347683 (= c!739075 ((_ is Cons!48839) lt!1562330))))

(declare-fun b!4347685 () Bool)

(assert (=> b!4347685 (= e!2705493 Nil!48839)))

(declare-fun b!4347684 () Bool)

(assert (=> b!4347684 (= e!2705493 (Cons!48839 (h!54366 lt!1562330) (removePairForKey!425 (t!355883 lt!1562330) key!3918)))))

(declare-fun d!1283643 () Bool)

(declare-fun lt!1562420 () List!48963)

(assert (=> d!1283643 (not (containsKey!610 lt!1562420 key!3918))))

(assert (=> d!1283643 (= lt!1562420 e!2705494)))

(declare-fun c!739074 () Bool)

(assert (=> d!1283643 (= c!739074 (and ((_ is Cons!48839) lt!1562330) (= (_1!27389 (h!54366 lt!1562330)) key!3918)))))

(assert (=> d!1283643 (noDuplicateKeys!455 lt!1562330)))

(assert (=> d!1283643 (= (removePairForKey!425 lt!1562330 key!3918) lt!1562420)))

(assert (= (and d!1283643 c!739074) b!4347682))

(assert (= (and d!1283643 (not c!739074)) b!4347683))

(assert (= (and b!4347683 c!739075) b!4347684))

(assert (= (and b!4347683 (not c!739075)) b!4347685))

(declare-fun m!4956751 () Bool)

(assert (=> b!4347684 m!4956751))

(declare-fun m!4956753 () Bool)

(assert (=> d!1283643 m!4956753))

(declare-fun m!4956755 () Bool)

(assert (=> d!1283643 m!4956755))

(assert (=> b!4347504 d!1283643))

(declare-fun d!1283653 () Bool)

(declare-fun e!2705499 () Bool)

(assert (=> d!1283653 e!2705499))

(declare-fun res!1785661 () Bool)

(assert (=> d!1283653 (=> res!1785661 e!2705499)))

(declare-fun lt!1562435 () Bool)

(assert (=> d!1283653 (= res!1785661 (not lt!1562435))))

(declare-fun lt!1562432 () Bool)

(assert (=> d!1283653 (= lt!1562435 lt!1562432)))

(declare-fun lt!1562433 () Unit!70757)

(declare-fun e!2705500 () Unit!70757)

(assert (=> d!1283653 (= lt!1562433 e!2705500)))

(declare-fun c!739078 () Bool)

(assert (=> d!1283653 (= c!739078 lt!1562432)))

(declare-fun containsKey!614 (List!48964 (_ BitVec 64)) Bool)

(assert (=> d!1283653 (= lt!1562432 (containsKey!614 (toList!2893 lm!1707) hash!377))))

(assert (=> d!1283653 (= (contains!10996 lm!1707 hash!377) lt!1562435)))

(declare-fun b!4347692 () Bool)

(declare-fun lt!1562434 () Unit!70757)

(assert (=> b!4347692 (= e!2705500 lt!1562434)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!320 (List!48964 (_ BitVec 64)) Unit!70757)

(assert (=> b!4347692 (= lt!1562434 (lemmaContainsKeyImpliesGetValueByKeyDefined!320 (toList!2893 lm!1707) hash!377))))

(declare-fun isDefined!7717 (Option!10421) Bool)

(assert (=> b!4347692 (isDefined!7717 (getValueByKey!407 (toList!2893 lm!1707) hash!377))))

(declare-fun b!4347693 () Bool)

(declare-fun Unit!70764 () Unit!70757)

(assert (=> b!4347693 (= e!2705500 Unit!70764)))

(declare-fun b!4347694 () Bool)

(assert (=> b!4347694 (= e!2705499 (isDefined!7717 (getValueByKey!407 (toList!2893 lm!1707) hash!377)))))

(assert (= (and d!1283653 c!739078) b!4347692))

(assert (= (and d!1283653 (not c!739078)) b!4347693))

(assert (= (and d!1283653 (not res!1785661)) b!4347694))

(declare-fun m!4956761 () Bool)

(assert (=> d!1283653 m!4956761))

(declare-fun m!4956763 () Bool)

(assert (=> b!4347692 m!4956763))

(assert (=> b!4347692 m!4956713))

(assert (=> b!4347692 m!4956713))

(declare-fun m!4956765 () Bool)

(assert (=> b!4347692 m!4956765))

(assert (=> b!4347694 m!4956713))

(assert (=> b!4347694 m!4956713))

(assert (=> b!4347694 m!4956765))

(assert (=> b!4347506 d!1283653))

(declare-fun bs!628104 () Bool)

(declare-fun d!1283657 () Bool)

(assert (= bs!628104 (and d!1283657 start!419716)))

(declare-fun lambda!138697 () Int)

(assert (=> bs!628104 (not (= lambda!138697 lambda!138679))))

(declare-fun bs!628105 () Bool)

(assert (= bs!628105 (and d!1283657 d!1283621)))

(assert (=> bs!628105 (not (= lambda!138697 lambda!138685))))

(assert (=> d!1283657 true))

(assert (=> d!1283657 (= (allKeysSameHashInMap!559 lm!1707 hashF!1247) (forall!9051 (toList!2893 lm!1707) lambda!138697))))

(declare-fun bs!628106 () Bool)

(assert (= bs!628106 d!1283657))

(declare-fun m!4956767 () Bool)

(assert (=> bs!628106 m!4956767))

(assert (=> b!4347502 d!1283657))

(declare-fun d!1283659 () Bool)

(declare-fun res!1785666 () Bool)

(declare-fun e!2705503 () Bool)

(assert (=> d!1283659 (=> res!1785666 e!2705503)))

(assert (=> d!1283659 (= res!1785666 ((_ is Nil!48840) (t!355884 (toList!2893 lm!1707))))))

(assert (=> d!1283659 (= (forall!9051 (t!355884 (toList!2893 lm!1707)) lambda!138679) e!2705503)))

(declare-fun b!4347701 () Bool)

(declare-fun e!2705504 () Bool)

(assert (=> b!4347701 (= e!2705503 e!2705504)))

(declare-fun res!1785667 () Bool)

(assert (=> b!4347701 (=> (not res!1785667) (not e!2705504))))

(assert (=> b!4347701 (= res!1785667 (dynLambda!20599 lambda!138679 (h!54367 (t!355884 (toList!2893 lm!1707)))))))

(declare-fun b!4347702 () Bool)

(assert (=> b!4347702 (= e!2705504 (forall!9051 (t!355884 (t!355884 (toList!2893 lm!1707))) lambda!138679))))

(assert (= (and d!1283659 (not res!1785666)) b!4347701))

(assert (= (and b!4347701 res!1785667) b!4347702))

(declare-fun b_lambda!130177 () Bool)

(assert (=> (not b_lambda!130177) (not b!4347701)))

(declare-fun m!4956769 () Bool)

(assert (=> b!4347701 m!4956769))

(declare-fun m!4956771 () Bool)

(assert (=> b!4347702 m!4956771))

(assert (=> b!4347512 d!1283659))

(declare-fun d!1283661 () Bool)

(declare-fun res!1785668 () Bool)

(declare-fun e!2705505 () Bool)

(assert (=> d!1283661 (=> res!1785668 e!2705505)))

(assert (=> d!1283661 (= res!1785668 (and ((_ is Cons!48839) (apply!11307 lm!1707 (_1!27390 (h!54367 (toList!2893 lm!1707))))) (= (_1!27389 (h!54366 (apply!11307 lm!1707 (_1!27390 (h!54367 (toList!2893 lm!1707)))))) key!3918)))))

(assert (=> d!1283661 (= (containsKey!610 (apply!11307 lm!1707 (_1!27390 (h!54367 (toList!2893 lm!1707)))) key!3918) e!2705505)))

(declare-fun b!4347703 () Bool)

(declare-fun e!2705506 () Bool)

(assert (=> b!4347703 (= e!2705505 e!2705506)))

(declare-fun res!1785669 () Bool)

(assert (=> b!4347703 (=> (not res!1785669) (not e!2705506))))

(assert (=> b!4347703 (= res!1785669 ((_ is Cons!48839) (apply!11307 lm!1707 (_1!27390 (h!54367 (toList!2893 lm!1707))))))))

(declare-fun b!4347704 () Bool)

(assert (=> b!4347704 (= e!2705506 (containsKey!610 (t!355883 (apply!11307 lm!1707 (_1!27390 (h!54367 (toList!2893 lm!1707))))) key!3918))))

(assert (= (and d!1283661 (not res!1785668)) b!4347703))

(assert (= (and b!4347703 res!1785669) b!4347704))

(declare-fun m!4956773 () Bool)

(assert (=> b!4347704 m!4956773))

(assert (=> b!4347512 d!1283661))

(declare-fun d!1283663 () Bool)

(assert (=> d!1283663 (= (apply!11307 lm!1707 (_1!27390 (h!54367 (toList!2893 lm!1707)))) (get!15854 (getValueByKey!407 (toList!2893 lm!1707) (_1!27390 (h!54367 (toList!2893 lm!1707))))))))

(declare-fun bs!628107 () Bool)

(assert (= bs!628107 d!1283663))

(declare-fun m!4956775 () Bool)

(assert (=> bs!628107 m!4956775))

(assert (=> bs!628107 m!4956775))

(declare-fun m!4956777 () Bool)

(assert (=> bs!628107 m!4956777))

(assert (=> b!4347512 d!1283663))

(declare-fun bs!628108 () Bool)

(declare-fun d!1283665 () Bool)

(assert (= bs!628108 (and d!1283665 start!419716)))

(declare-fun lambda!138700 () Int)

(assert (=> bs!628108 (= lambda!138700 lambda!138679)))

(declare-fun bs!628109 () Bool)

(assert (= bs!628109 (and d!1283665 d!1283621)))

(assert (=> bs!628109 (= lambda!138700 lambda!138685)))

(declare-fun bs!628110 () Bool)

(assert (= bs!628110 (and d!1283665 d!1283657)))

(assert (=> bs!628110 (not (= lambda!138700 lambda!138697))))

(assert (=> d!1283665 (not (containsKey!610 (apply!11307 lm!1707 (_1!27390 (h!54367 (toList!2893 lm!1707)))) key!3918))))

(declare-fun lt!1562450 () Unit!70757)

(declare-fun choose!26692 (ListLongMap!1543 K!10205 (_ BitVec 64) Hashable!4847) Unit!70757)

(assert (=> d!1283665 (= lt!1562450 (choose!26692 lm!1707 key!3918 (_1!27390 (h!54367 (toList!2893 lm!1707))) hashF!1247))))

(assert (=> d!1283665 (forall!9051 (toList!2893 lm!1707) lambda!138700)))

(assert (=> d!1283665 (= (lemmaNotSameHashThenCannotContainKey!2 lm!1707 key!3918 (_1!27390 (h!54367 (toList!2893 lm!1707))) hashF!1247) lt!1562450)))

(declare-fun bs!628111 () Bool)

(assert (= bs!628111 d!1283665))

(assert (=> bs!628111 m!4956573))

(assert (=> bs!628111 m!4956573))

(assert (=> bs!628111 m!4956575))

(declare-fun m!4956791 () Bool)

(assert (=> bs!628111 m!4956791))

(declare-fun m!4956793 () Bool)

(assert (=> bs!628111 m!4956793))

(assert (=> b!4347512 d!1283665))

(assert (=> b!4347503 d!1283597))

(declare-fun d!1283669 () Bool)

(declare-fun e!2705517 () Bool)

(assert (=> d!1283669 e!2705517))

(declare-fun res!1785681 () Bool)

(assert (=> d!1283669 (=> (not res!1785681) (not e!2705517))))

(declare-fun lt!1562462 () ListLongMap!1543)

(assert (=> d!1283669 (= res!1785681 (contains!10996 lt!1562462 (_1!27390 (tuple2!48193 hash!377 newBucket!200))))))

(declare-fun lt!1562464 () List!48964)

(assert (=> d!1283669 (= lt!1562462 (ListLongMap!1544 lt!1562464))))

(declare-fun lt!1562463 () Unit!70757)

(declare-fun lt!1562465 () Unit!70757)

(assert (=> d!1283669 (= lt!1562463 lt!1562465)))

(assert (=> d!1283669 (= (getValueByKey!407 lt!1562464 (_1!27390 (tuple2!48193 hash!377 newBucket!200))) (Some!10420 (_2!27390 (tuple2!48193 hash!377 newBucket!200))))))

(declare-fun lemmaContainsTupThenGetReturnValue!188 (List!48964 (_ BitVec 64) List!48963) Unit!70757)

(assert (=> d!1283669 (= lt!1562465 (lemmaContainsTupThenGetReturnValue!188 lt!1562464 (_1!27390 (tuple2!48193 hash!377 newBucket!200)) (_2!27390 (tuple2!48193 hash!377 newBucket!200))))))

(declare-fun insertStrictlySorted!111 (List!48964 (_ BitVec 64) List!48963) List!48964)

(assert (=> d!1283669 (= lt!1562464 (insertStrictlySorted!111 (toList!2893 lm!1707) (_1!27390 (tuple2!48193 hash!377 newBucket!200)) (_2!27390 (tuple2!48193 hash!377 newBucket!200))))))

(assert (=> d!1283669 (= (+!576 lm!1707 (tuple2!48193 hash!377 newBucket!200)) lt!1562462)))

(declare-fun b!4347723 () Bool)

(declare-fun res!1785682 () Bool)

(assert (=> b!4347723 (=> (not res!1785682) (not e!2705517))))

(assert (=> b!4347723 (= res!1785682 (= (getValueByKey!407 (toList!2893 lt!1562462) (_1!27390 (tuple2!48193 hash!377 newBucket!200))) (Some!10420 (_2!27390 (tuple2!48193 hash!377 newBucket!200)))))))

(declare-fun b!4347724 () Bool)

(assert (=> b!4347724 (= e!2705517 (contains!10995 (toList!2893 lt!1562462) (tuple2!48193 hash!377 newBucket!200)))))

(assert (= (and d!1283669 res!1785681) b!4347723))

(assert (= (and b!4347723 res!1785682) b!4347724))

(declare-fun m!4956805 () Bool)

(assert (=> d!1283669 m!4956805))

(declare-fun m!4956807 () Bool)

(assert (=> d!1283669 m!4956807))

(declare-fun m!4956809 () Bool)

(assert (=> d!1283669 m!4956809))

(declare-fun m!4956811 () Bool)

(assert (=> d!1283669 m!4956811))

(declare-fun m!4956813 () Bool)

(assert (=> b!4347723 m!4956813))

(declare-fun m!4956815 () Bool)

(assert (=> b!4347724 m!4956815))

(assert (=> b!4347503 d!1283669))

(declare-fun d!1283675 () Bool)

(assert (=> d!1283675 (forall!9051 (toList!2893 (+!576 lm!1707 (tuple2!48193 hash!377 newBucket!200))) lambda!138679)))

(declare-fun lt!1562468 () Unit!70757)

(declare-fun choose!26694 (ListLongMap!1543 Int (_ BitVec 64) List!48963) Unit!70757)

(assert (=> d!1283675 (= lt!1562468 (choose!26694 lm!1707 lambda!138679 hash!377 newBucket!200))))

(declare-fun e!2705524 () Bool)

(assert (=> d!1283675 e!2705524))

(declare-fun res!1785685 () Bool)

(assert (=> d!1283675 (=> (not res!1785685) (not e!2705524))))

(assert (=> d!1283675 (= res!1785685 (forall!9051 (toList!2893 lm!1707) lambda!138679))))

(assert (=> d!1283675 (= (addValidProp!109 lm!1707 lambda!138679 hash!377 newBucket!200) lt!1562468)))

(declare-fun b!4347734 () Bool)

(assert (=> b!4347734 (= e!2705524 (dynLambda!20599 lambda!138679 (tuple2!48193 hash!377 newBucket!200)))))

(assert (= (and d!1283675 res!1785685) b!4347734))

(declare-fun b_lambda!130191 () Bool)

(assert (=> (not b_lambda!130191) (not b!4347734)))

(assert (=> d!1283675 m!4956597))

(declare-fun m!4956827 () Bool)

(assert (=> d!1283675 m!4956827))

(declare-fun m!4956829 () Bool)

(assert (=> d!1283675 m!4956829))

(assert (=> d!1283675 m!4956581))

(declare-fun m!4956831 () Bool)

(assert (=> b!4347734 m!4956831))

(assert (=> b!4347503 d!1283675))

(assert (=> b!4347503 d!1283627))

(declare-fun e!2705527 () Bool)

(declare-fun tp!1329676 () Bool)

(declare-fun b!4347739 () Bool)

(assert (=> b!4347739 (= e!2705527 (and tp_is_empty!25057 tp_is_empty!25059 tp!1329676))))

(assert (=> b!4347505 (= tp!1329663 e!2705527)))

(assert (= (and b!4347505 ((_ is Cons!48839) (t!355883 newBucket!200))) b!4347739))

(declare-fun b!4347744 () Bool)

(declare-fun e!2705530 () Bool)

(declare-fun tp!1329681 () Bool)

(declare-fun tp!1329682 () Bool)

(assert (=> b!4347744 (= e!2705530 (and tp!1329681 tp!1329682))))

(assert (=> b!4347507 (= tp!1329664 e!2705530)))

(assert (= (and b!4347507 ((_ is Cons!48840) (toList!2893 lm!1707))) b!4347744))

(declare-fun b_lambda!130193 () Bool)

(assert (= b_lambda!130163 (or start!419716 b_lambda!130193)))

(declare-fun bs!628121 () Bool)

(declare-fun d!1283687 () Bool)

(assert (= bs!628121 (and d!1283687 start!419716)))

(assert (=> bs!628121 (= (dynLambda!20599 lambda!138679 (h!54367 (toList!2893 lt!1562329))) (noDuplicateKeys!455 (_2!27390 (h!54367 (toList!2893 lt!1562329)))))))

(declare-fun m!4956833 () Bool)

(assert (=> bs!628121 m!4956833))

(assert (=> b!4347536 d!1283687))

(declare-fun b_lambda!130195 () Bool)

(assert (= b_lambda!130173 (or start!419716 b_lambda!130195)))

(declare-fun bs!628122 () Bool)

(declare-fun d!1283689 () Bool)

(assert (= bs!628122 (and d!1283689 start!419716)))

(assert (=> bs!628122 (= (dynLambda!20599 lambda!138679 lt!1562326) (noDuplicateKeys!455 (_2!27390 lt!1562326)))))

(declare-fun m!4956835 () Bool)

(assert (=> bs!628122 m!4956835))

(assert (=> d!1283637 d!1283689))

(declare-fun b_lambda!130197 () Bool)

(assert (= b_lambda!130191 (or start!419716 b_lambda!130197)))

(declare-fun bs!628123 () Bool)

(declare-fun d!1283691 () Bool)

(assert (= bs!628123 (and d!1283691 start!419716)))

(assert (=> bs!628123 (= (dynLambda!20599 lambda!138679 (tuple2!48193 hash!377 newBucket!200)) (noDuplicateKeys!455 (_2!27390 (tuple2!48193 hash!377 newBucket!200))))))

(declare-fun m!4956837 () Bool)

(assert (=> bs!628123 m!4956837))

(assert (=> b!4347734 d!1283691))

(declare-fun b_lambda!130199 () Bool)

(assert (= b_lambda!130177 (or start!419716 b_lambda!130199)))

(declare-fun bs!628124 () Bool)

(declare-fun d!1283693 () Bool)

(assert (= bs!628124 (and d!1283693 start!419716)))

(assert (=> bs!628124 (= (dynLambda!20599 lambda!138679 (h!54367 (t!355884 (toList!2893 lm!1707)))) (noDuplicateKeys!455 (_2!27390 (h!54367 (t!355884 (toList!2893 lm!1707))))))))

(declare-fun m!4956839 () Bool)

(assert (=> bs!628124 m!4956839))

(assert (=> b!4347701 d!1283693))

(declare-fun b_lambda!130201 () Bool)

(assert (= b_lambda!130171 (or start!419716 b_lambda!130201)))

(declare-fun bs!628125 () Bool)

(declare-fun d!1283695 () Bool)

(assert (= bs!628125 (and d!1283695 start!419716)))

(assert (=> bs!628125 (= (dynLambda!20599 lambda!138679 (h!54367 (toList!2893 lm!1707))) (noDuplicateKeys!455 (_2!27390 (h!54367 (toList!2893 lm!1707)))))))

(declare-fun m!4956841 () Bool)

(assert (=> bs!628125 m!4956841))

(assert (=> b!4347642 d!1283695))

(check-sat (not d!1283665) (not b!4347641) (not b!4347537) (not b!4347704) (not d!1283637) (not b!4347643) (not d!1283593) (not b!4347684) (not b!4347545) (not b_lambda!130193) (not d!1283643) (not b!4347595) (not b_lambda!130195) (not b!4347702) (not d!1283669) (not b!4347602) (not d!1283633) (not b!4347544) (not bs!628122) (not b!4347724) (not b!4347744) (not b!4347598) (not d!1283639) (not b!4347597) tp_is_empty!25059 (not d!1283631) (not b_lambda!130197) (not b!4347723) (not bs!628121) (not bm!302213) (not d!1283603) (not d!1283653) (not b!4347739) (not b!4347594) (not bs!628125) (not d!1283675) (not d!1283663) (not b!4347661) (not d!1283657) (not d!1283629) (not b!4347596) (not b!4347601) (not b!4347652) (not b_lambda!130199) (not bs!628123) tp_is_empty!25057 (not b!4347692) (not b_lambda!130201) (not b!4347625) (not d!1283635) (not bs!628124) (not b!4347694) (not b!4347649) (not d!1283621))
(check-sat)
