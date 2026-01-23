; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436586 () Bool)

(assert start!436586)

(declare-fun b!4455416 () Bool)

(declare-fun res!1846860 () Bool)

(declare-fun e!2774410 () Bool)

(assert (=> b!4455416 (=> (not res!1846860) (not e!2774410))))

(declare-datatypes ((V!11589 0))(
  ( (V!11590 (val!17345 Int)) )
))
(declare-datatypes ((K!11343 0))(
  ( (K!11344 (val!17346 Int)) )
))
(declare-datatypes ((tuple2!50010 0))(
  ( (tuple2!50011 (_1!28299 K!11343) (_2!28299 V!11589)) )
))
(declare-datatypes ((List!50091 0))(
  ( (Nil!49967) (Cons!49967 (h!55712 tuple2!50010) (t!357041 List!50091)) )
))
(declare-datatypes ((tuple2!50012 0))(
  ( (tuple2!50013 (_1!28300 (_ BitVec 64)) (_2!28300 List!50091)) )
))
(declare-datatypes ((List!50092 0))(
  ( (Nil!49968) (Cons!49968 (h!55713 tuple2!50012) (t!357042 List!50092)) )
))
(declare-datatypes ((ListLongMap!2453 0))(
  ( (ListLongMap!2454 (toList!3799 List!50092)) )
))
(declare-fun lm!1837 () ListLongMap!2453)

(declare-fun isEmpty!28456 (List!50092) Bool)

(assert (=> b!4455416 (= res!1846860 (not (isEmpty!28456 (toList!3799 lm!1837))))))

(declare-fun b!4455417 () Bool)

(declare-fun res!1846863 () Bool)

(assert (=> b!4455417 (=> (not res!1846863) (not e!2774410))))

(declare-fun key!4369 () K!11343)

(declare-datatypes ((ListMap!3039 0))(
  ( (ListMap!3040 (toList!3800 List!50091)) )
))
(declare-fun contains!12527 (ListMap!3039 K!11343) Bool)

(declare-fun extractMap!965 (List!50092) ListMap!3039)

(declare-fun tail!7477 (ListLongMap!2453) ListLongMap!2453)

(assert (=> b!4455417 (= res!1846863 (contains!12527 (extractMap!965 (toList!3799 (tail!7477 lm!1837))) key!4369))))

(declare-fun b!4455418 () Bool)

(assert (=> b!4455418 (= e!2774410 (not (contains!12527 (extractMap!965 (toList!3799 lm!1837)) key!4369)))))

(declare-fun b!4455419 () Bool)

(declare-fun res!1846862 () Bool)

(assert (=> b!4455419 (=> (not res!1846862) (not e!2774410))))

(assert (=> b!4455419 (= res!1846862 (not (is-Cons!49968 (toList!3799 lm!1837))))))

(declare-fun b!4455420 () Bool)

(declare-fun e!2774411 () Bool)

(declare-fun tp!1334872 () Bool)

(assert (=> b!4455420 (= e!2774411 tp!1334872)))

(declare-fun res!1846864 () Bool)

(assert (=> start!436586 (=> (not res!1846864) (not e!2774410))))

(declare-fun lambda!160114 () Int)

(declare-fun forall!9815 (List!50092 Int) Bool)

(assert (=> start!436586 (= res!1846864 (forall!9815 (toList!3799 lm!1837) lambda!160114))))

(assert (=> start!436586 e!2774410))

(declare-fun inv!65530 (ListLongMap!2453) Bool)

(assert (=> start!436586 (and (inv!65530 lm!1837) e!2774411)))

(assert (=> start!436586 true))

(declare-fun tp_is_empty!26805 () Bool)

(assert (=> start!436586 tp_is_empty!26805))

(declare-fun b!4455421 () Bool)

(declare-fun res!1846861 () Bool)

(assert (=> b!4455421 (=> (not res!1846861) (not e!2774410))))

(declare-datatypes ((Hashable!5302 0))(
  ( (HashableExt!5301 (__x!31005 Int)) )
))
(declare-fun hashF!1304 () Hashable!5302)

(declare-fun allKeysSameHashInMap!1014 (ListLongMap!2453 Hashable!5302) Bool)

(assert (=> b!4455421 (= res!1846861 (allKeysSameHashInMap!1014 lm!1837 hashF!1304))))

(assert (= (and start!436586 res!1846864) b!4455421))

(assert (= (and b!4455421 res!1846861) b!4455416))

(assert (= (and b!4455416 res!1846860) b!4455417))

(assert (= (and b!4455417 res!1846863) b!4455419))

(assert (= (and b!4455419 res!1846862) b!4455418))

(assert (= start!436586 b!4455420))

(declare-fun m!5156983 () Bool)

(assert (=> b!4455418 m!5156983))

(assert (=> b!4455418 m!5156983))

(declare-fun m!5156985 () Bool)

(assert (=> b!4455418 m!5156985))

(declare-fun m!5156987 () Bool)

(assert (=> b!4455417 m!5156987))

(declare-fun m!5156989 () Bool)

(assert (=> b!4455417 m!5156989))

(assert (=> b!4455417 m!5156989))

(declare-fun m!5156991 () Bool)

(assert (=> b!4455417 m!5156991))

(declare-fun m!5156993 () Bool)

(assert (=> b!4455416 m!5156993))

(declare-fun m!5156995 () Bool)

(assert (=> start!436586 m!5156995))

(declare-fun m!5156997 () Bool)

(assert (=> start!436586 m!5156997))

(declare-fun m!5156999 () Bool)

(assert (=> b!4455421 m!5156999))

(push 1)

(assert (not b!4455420))

(assert (not b!4455418))

(assert (not b!4455417))

(assert (not b!4455416))

(assert tp_is_empty!26805)

(assert (not start!436586))

(assert (not b!4455421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4455464 () Bool)

(declare-datatypes ((Unit!85989 0))(
  ( (Unit!85990) )
))
(declare-fun e!2774436 () Unit!85989)

(declare-fun e!2774438 () Unit!85989)

(assert (=> b!4455464 (= e!2774436 e!2774438)))

(declare-fun c!758479 () Bool)

(declare-fun call!310073 () Bool)

(assert (=> b!4455464 (= c!758479 call!310073)))

(declare-fun b!4455465 () Bool)

(assert (=> b!4455465 false))

(declare-fun lt!1646957 () Unit!85989)

(declare-fun lt!1646953 () Unit!85989)

(assert (=> b!4455465 (= lt!1646957 lt!1646953)))

(declare-fun containsKey!1316 (List!50091 K!11343) Bool)

(assert (=> b!4455465 (containsKey!1316 (toList!3800 (extractMap!965 (toList!3799 lm!1837))) key!4369)))

(declare-fun lemmaInGetKeysListThenContainsKey!317 (List!50091 K!11343) Unit!85989)

(assert (=> b!4455465 (= lt!1646953 (lemmaInGetKeysListThenContainsKey!317 (toList!3800 (extractMap!965 (toList!3799 lm!1837))) key!4369))))

(declare-fun Unit!85991 () Unit!85989)

(assert (=> b!4455465 (= e!2774438 Unit!85991)))

(declare-fun bm!310068 () Bool)

(declare-datatypes ((List!50095 0))(
  ( (Nil!49971) (Cons!49971 (h!55716 K!11343) (t!357045 List!50095)) )
))
(declare-fun e!2774440 () List!50095)

(declare-fun contains!12529 (List!50095 K!11343) Bool)

(assert (=> bm!310068 (= call!310073 (contains!12529 e!2774440 key!4369))))

(declare-fun c!758478 () Bool)

(declare-fun c!758477 () Bool)

(assert (=> bm!310068 (= c!758478 c!758477)))

(declare-fun d!1359201 () Bool)

(declare-fun e!2774439 () Bool)

(assert (=> d!1359201 e!2774439))

(declare-fun res!1846892 () Bool)

(assert (=> d!1359201 (=> res!1846892 e!2774439)))

(declare-fun e!2774441 () Bool)

(assert (=> d!1359201 (= res!1846892 e!2774441)))

(declare-fun res!1846894 () Bool)

(assert (=> d!1359201 (=> (not res!1846894) (not e!2774441))))

(declare-fun lt!1646955 () Bool)

(assert (=> d!1359201 (= res!1846894 (not lt!1646955))))

(declare-fun lt!1646960 () Bool)

(assert (=> d!1359201 (= lt!1646955 lt!1646960)))

(declare-fun lt!1646954 () Unit!85989)

(assert (=> d!1359201 (= lt!1646954 e!2774436)))

(assert (=> d!1359201 (= c!758477 lt!1646960)))

(assert (=> d!1359201 (= lt!1646960 (containsKey!1316 (toList!3800 (extractMap!965 (toList!3799 lm!1837))) key!4369))))

(assert (=> d!1359201 (= (contains!12527 (extractMap!965 (toList!3799 lm!1837)) key!4369) lt!1646955)))

(declare-fun b!4455466 () Bool)

(declare-fun e!2774437 () Bool)

(declare-fun keys!17163 (ListMap!3039) List!50095)

(assert (=> b!4455466 (= e!2774437 (contains!12529 (keys!17163 (extractMap!965 (toList!3799 lm!1837))) key!4369))))

(declare-fun b!4455467 () Bool)

(declare-fun getKeysList!319 (List!50091) List!50095)

(assert (=> b!4455467 (= e!2774440 (getKeysList!319 (toList!3800 (extractMap!965 (toList!3799 lm!1837)))))))

(declare-fun b!4455468 () Bool)

(assert (=> b!4455468 (= e!2774439 e!2774437)))

(declare-fun res!1846893 () Bool)

(assert (=> b!4455468 (=> (not res!1846893) (not e!2774437))))

(declare-datatypes ((Option!10851 0))(
  ( (None!10850) (Some!10850 (v!44108 V!11589)) )
))
(declare-fun isDefined!8139 (Option!10851) Bool)

(declare-fun getValueByKey!837 (List!50091 K!11343) Option!10851)

(assert (=> b!4455468 (= res!1846893 (isDefined!8139 (getValueByKey!837 (toList!3800 (extractMap!965 (toList!3799 lm!1837))) key!4369)))))

(declare-fun b!4455469 () Bool)

(declare-fun Unit!85992 () Unit!85989)

(assert (=> b!4455469 (= e!2774438 Unit!85992)))

(declare-fun b!4455470 () Bool)

(declare-fun lt!1646959 () Unit!85989)

(assert (=> b!4455470 (= e!2774436 lt!1646959)))

(declare-fun lt!1646956 () Unit!85989)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!741 (List!50091 K!11343) Unit!85989)

(assert (=> b!4455470 (= lt!1646956 (lemmaContainsKeyImpliesGetValueByKeyDefined!741 (toList!3800 (extractMap!965 (toList!3799 lm!1837))) key!4369))))

(assert (=> b!4455470 (isDefined!8139 (getValueByKey!837 (toList!3800 (extractMap!965 (toList!3799 lm!1837))) key!4369))))

(declare-fun lt!1646958 () Unit!85989)

(assert (=> b!4455470 (= lt!1646958 lt!1646956)))

(declare-fun lemmaInListThenGetKeysListContains!315 (List!50091 K!11343) Unit!85989)

(assert (=> b!4455470 (= lt!1646959 (lemmaInListThenGetKeysListContains!315 (toList!3800 (extractMap!965 (toList!3799 lm!1837))) key!4369))))

(assert (=> b!4455470 call!310073))

(declare-fun b!4455471 () Bool)

(assert (=> b!4455471 (= e!2774440 (keys!17163 (extractMap!965 (toList!3799 lm!1837))))))

(declare-fun b!4455472 () Bool)

(assert (=> b!4455472 (= e!2774441 (not (contains!12529 (keys!17163 (extractMap!965 (toList!3799 lm!1837))) key!4369)))))

(assert (= (and d!1359201 c!758477) b!4455470))

(assert (= (and d!1359201 (not c!758477)) b!4455464))

(assert (= (and b!4455464 c!758479) b!4455465))

(assert (= (and b!4455464 (not c!758479)) b!4455469))

(assert (= (or b!4455470 b!4455464) bm!310068))

(assert (= (and bm!310068 c!758478) b!4455467))

(assert (= (and bm!310068 (not c!758478)) b!4455471))

(assert (= (and d!1359201 res!1846894) b!4455472))

(assert (= (and d!1359201 (not res!1846892)) b!4455468))

(assert (= (and b!4455468 res!1846893) b!4455466))

(assert (=> b!4455471 m!5156983))

(declare-fun m!5157025 () Bool)

(assert (=> b!4455471 m!5157025))

(declare-fun m!5157027 () Bool)

(assert (=> b!4455468 m!5157027))

(assert (=> b!4455468 m!5157027))

(declare-fun m!5157029 () Bool)

(assert (=> b!4455468 m!5157029))

(declare-fun m!5157031 () Bool)

(assert (=> d!1359201 m!5157031))

(assert (=> b!4455472 m!5156983))

(assert (=> b!4455472 m!5157025))

(assert (=> b!4455472 m!5157025))

(declare-fun m!5157033 () Bool)

(assert (=> b!4455472 m!5157033))

(declare-fun m!5157035 () Bool)

(assert (=> b!4455467 m!5157035))

(assert (=> b!4455466 m!5156983))

(assert (=> b!4455466 m!5157025))

(assert (=> b!4455466 m!5157025))

(assert (=> b!4455466 m!5157033))

(assert (=> b!4455465 m!5157031))

(declare-fun m!5157037 () Bool)

(assert (=> b!4455465 m!5157037))

(declare-fun m!5157039 () Bool)

(assert (=> bm!310068 m!5157039))

(declare-fun m!5157041 () Bool)

(assert (=> b!4455470 m!5157041))

(assert (=> b!4455470 m!5157027))

(assert (=> b!4455470 m!5157027))

(assert (=> b!4455470 m!5157029))

(declare-fun m!5157043 () Bool)

(assert (=> b!4455470 m!5157043))

(assert (=> b!4455418 d!1359201))

(declare-fun bs!790762 () Bool)

(declare-fun d!1359211 () Bool)

(assert (= bs!790762 (and d!1359211 start!436586)))

(declare-fun lambda!160120 () Int)

(assert (=> bs!790762 (= lambda!160120 lambda!160114)))

(declare-fun lt!1646963 () ListMap!3039)

(declare-fun invariantList!873 (List!50091) Bool)

(assert (=> d!1359211 (invariantList!873 (toList!3800 lt!1646963))))

(declare-fun e!2774444 () ListMap!3039)

(assert (=> d!1359211 (= lt!1646963 e!2774444)))

(declare-fun c!758482 () Bool)

(assert (=> d!1359211 (= c!758482 (is-Cons!49968 (toList!3799 lm!1837)))))

(assert (=> d!1359211 (forall!9815 (toList!3799 lm!1837) lambda!160120)))

(assert (=> d!1359211 (= (extractMap!965 (toList!3799 lm!1837)) lt!1646963)))

(declare-fun b!4455477 () Bool)

(declare-fun addToMapMapFromBucket!496 (List!50091 ListMap!3039) ListMap!3039)

(assert (=> b!4455477 (= e!2774444 (addToMapMapFromBucket!496 (_2!28300 (h!55713 (toList!3799 lm!1837))) (extractMap!965 (t!357042 (toList!3799 lm!1837)))))))

(declare-fun b!4455478 () Bool)

(assert (=> b!4455478 (= e!2774444 (ListMap!3040 Nil!49967))))

(assert (= (and d!1359211 c!758482) b!4455477))

(assert (= (and d!1359211 (not c!758482)) b!4455478))

(declare-fun m!5157045 () Bool)

(assert (=> d!1359211 m!5157045))

(declare-fun m!5157047 () Bool)

(assert (=> d!1359211 m!5157047))

(declare-fun m!5157049 () Bool)

(assert (=> b!4455477 m!5157049))

(assert (=> b!4455477 m!5157049))

(declare-fun m!5157051 () Bool)

(assert (=> b!4455477 m!5157051))

(assert (=> b!4455418 d!1359211))

(declare-fun d!1359213 () Bool)

(declare-fun res!1846899 () Bool)

(declare-fun e!2774449 () Bool)

(assert (=> d!1359213 (=> res!1846899 e!2774449)))

(assert (=> d!1359213 (= res!1846899 (is-Nil!49968 (toList!3799 lm!1837)))))

(assert (=> d!1359213 (= (forall!9815 (toList!3799 lm!1837) lambda!160114) e!2774449)))

(declare-fun b!4455483 () Bool)

(declare-fun e!2774450 () Bool)

(assert (=> b!4455483 (= e!2774449 e!2774450)))

(declare-fun res!1846900 () Bool)

(assert (=> b!4455483 (=> (not res!1846900) (not e!2774450))))

(declare-fun dynLambda!20964 (Int tuple2!50012) Bool)

(assert (=> b!4455483 (= res!1846900 (dynLambda!20964 lambda!160114 (h!55713 (toList!3799 lm!1837))))))

(declare-fun b!4455484 () Bool)

(assert (=> b!4455484 (= e!2774450 (forall!9815 (t!357042 (toList!3799 lm!1837)) lambda!160114))))

(assert (= (and d!1359213 (not res!1846899)) b!4455483))

(assert (= (and b!4455483 res!1846900) b!4455484))

(declare-fun b_lambda!147647 () Bool)

(assert (=> (not b_lambda!147647) (not b!4455483)))

(declare-fun m!5157053 () Bool)

(assert (=> b!4455483 m!5157053))

(declare-fun m!5157055 () Bool)

(assert (=> b!4455484 m!5157055))

(assert (=> start!436586 d!1359213))

(declare-fun d!1359215 () Bool)

(declare-fun isStrictlySorted!301 (List!50092) Bool)

(assert (=> d!1359215 (= (inv!65530 lm!1837) (isStrictlySorted!301 (toList!3799 lm!1837)))))

(declare-fun bs!790763 () Bool)

(assert (= bs!790763 d!1359215))

(declare-fun m!5157057 () Bool)

(assert (=> bs!790763 m!5157057))

(assert (=> start!436586 d!1359215))

(declare-fun b!4455485 () Bool)

(declare-fun e!2774451 () Unit!85989)

(declare-fun e!2774453 () Unit!85989)

(assert (=> b!4455485 (= e!2774451 e!2774453)))

(declare-fun c!758485 () Bool)

(declare-fun call!310074 () Bool)

(assert (=> b!4455485 (= c!758485 call!310074)))

(declare-fun b!4455486 () Bool)

(assert (=> b!4455486 false))

(declare-fun lt!1646968 () Unit!85989)

(declare-fun lt!1646964 () Unit!85989)

(assert (=> b!4455486 (= lt!1646968 lt!1646964)))

(assert (=> b!4455486 (containsKey!1316 (toList!3800 (extractMap!965 (toList!3799 (tail!7477 lm!1837)))) key!4369)))

(assert (=> b!4455486 (= lt!1646964 (lemmaInGetKeysListThenContainsKey!317 (toList!3800 (extractMap!965 (toList!3799 (tail!7477 lm!1837)))) key!4369))))

(declare-fun Unit!85993 () Unit!85989)

(assert (=> b!4455486 (= e!2774453 Unit!85993)))

(declare-fun bm!310069 () Bool)

(declare-fun e!2774455 () List!50095)

(assert (=> bm!310069 (= call!310074 (contains!12529 e!2774455 key!4369))))

(declare-fun c!758484 () Bool)

(declare-fun c!758483 () Bool)

(assert (=> bm!310069 (= c!758484 c!758483)))

(declare-fun d!1359217 () Bool)

(declare-fun e!2774454 () Bool)

(assert (=> d!1359217 e!2774454))

(declare-fun res!1846901 () Bool)

(assert (=> d!1359217 (=> res!1846901 e!2774454)))

(declare-fun e!2774456 () Bool)

(assert (=> d!1359217 (= res!1846901 e!2774456)))

(declare-fun res!1846903 () Bool)

(assert (=> d!1359217 (=> (not res!1846903) (not e!2774456))))

(declare-fun lt!1646966 () Bool)

(assert (=> d!1359217 (= res!1846903 (not lt!1646966))))

(declare-fun lt!1646971 () Bool)

(assert (=> d!1359217 (= lt!1646966 lt!1646971)))

(declare-fun lt!1646965 () Unit!85989)

(assert (=> d!1359217 (= lt!1646965 e!2774451)))

(assert (=> d!1359217 (= c!758483 lt!1646971)))

(assert (=> d!1359217 (= lt!1646971 (containsKey!1316 (toList!3800 (extractMap!965 (toList!3799 (tail!7477 lm!1837)))) key!4369))))

(assert (=> d!1359217 (= (contains!12527 (extractMap!965 (toList!3799 (tail!7477 lm!1837))) key!4369) lt!1646966)))

(declare-fun b!4455487 () Bool)

(declare-fun e!2774452 () Bool)

(assert (=> b!4455487 (= e!2774452 (contains!12529 (keys!17163 (extractMap!965 (toList!3799 (tail!7477 lm!1837)))) key!4369))))

(declare-fun b!4455488 () Bool)

(assert (=> b!4455488 (= e!2774455 (getKeysList!319 (toList!3800 (extractMap!965 (toList!3799 (tail!7477 lm!1837))))))))

(declare-fun b!4455489 () Bool)

(assert (=> b!4455489 (= e!2774454 e!2774452)))

(declare-fun res!1846902 () Bool)

(assert (=> b!4455489 (=> (not res!1846902) (not e!2774452))))

(assert (=> b!4455489 (= res!1846902 (isDefined!8139 (getValueByKey!837 (toList!3800 (extractMap!965 (toList!3799 (tail!7477 lm!1837)))) key!4369)))))

(declare-fun b!4455490 () Bool)

(declare-fun Unit!85994 () Unit!85989)

(assert (=> b!4455490 (= e!2774453 Unit!85994)))

(declare-fun b!4455491 () Bool)

(declare-fun lt!1646970 () Unit!85989)

(assert (=> b!4455491 (= e!2774451 lt!1646970)))

(declare-fun lt!1646967 () Unit!85989)

(assert (=> b!4455491 (= lt!1646967 (lemmaContainsKeyImpliesGetValueByKeyDefined!741 (toList!3800 (extractMap!965 (toList!3799 (tail!7477 lm!1837)))) key!4369))))

(assert (=> b!4455491 (isDefined!8139 (getValueByKey!837 (toList!3800 (extractMap!965 (toList!3799 (tail!7477 lm!1837)))) key!4369))))

(declare-fun lt!1646969 () Unit!85989)

(assert (=> b!4455491 (= lt!1646969 lt!1646967)))

(assert (=> b!4455491 (= lt!1646970 (lemmaInListThenGetKeysListContains!315 (toList!3800 (extractMap!965 (toList!3799 (tail!7477 lm!1837)))) key!4369))))

(assert (=> b!4455491 call!310074))

(declare-fun b!4455492 () Bool)

(assert (=> b!4455492 (= e!2774455 (keys!17163 (extractMap!965 (toList!3799 (tail!7477 lm!1837)))))))

(declare-fun b!4455493 () Bool)

(assert (=> b!4455493 (= e!2774456 (not (contains!12529 (keys!17163 (extractMap!965 (toList!3799 (tail!7477 lm!1837)))) key!4369)))))

(assert (= (and d!1359217 c!758483) b!4455491))

(assert (= (and d!1359217 (not c!758483)) b!4455485))

(assert (= (and b!4455485 c!758485) b!4455486))

(assert (= (and b!4455485 (not c!758485)) b!4455490))

(assert (= (or b!4455491 b!4455485) bm!310069))

(assert (= (and bm!310069 c!758484) b!4455488))

(assert (= (and bm!310069 (not c!758484)) b!4455492))

(assert (= (and d!1359217 res!1846903) b!4455493))

(assert (= (and d!1359217 (not res!1846901)) b!4455489))

(assert (= (and b!4455489 res!1846902) b!4455487))

(assert (=> b!4455492 m!5156989))

(declare-fun m!5157059 () Bool)

(assert (=> b!4455492 m!5157059))

(declare-fun m!5157061 () Bool)

(assert (=> b!4455489 m!5157061))

(assert (=> b!4455489 m!5157061))

(declare-fun m!5157063 () Bool)

(assert (=> b!4455489 m!5157063))

(declare-fun m!5157065 () Bool)

(assert (=> d!1359217 m!5157065))

(assert (=> b!4455493 m!5156989))

(assert (=> b!4455493 m!5157059))

(assert (=> b!4455493 m!5157059))

(declare-fun m!5157067 () Bool)

(assert (=> b!4455493 m!5157067))

(declare-fun m!5157069 () Bool)

(assert (=> b!4455488 m!5157069))

(assert (=> b!4455487 m!5156989))

(assert (=> b!4455487 m!5157059))

(assert (=> b!4455487 m!5157059))

(assert (=> b!4455487 m!5157067))

(assert (=> b!4455486 m!5157065))

(declare-fun m!5157071 () Bool)

(assert (=> b!4455486 m!5157071))

(declare-fun m!5157073 () Bool)

(assert (=> bm!310069 m!5157073))

(declare-fun m!5157075 () Bool)

(assert (=> b!4455491 m!5157075))

(assert (=> b!4455491 m!5157061))

(assert (=> b!4455491 m!5157061))

(assert (=> b!4455491 m!5157063))

(declare-fun m!5157077 () Bool)

(assert (=> b!4455491 m!5157077))

(assert (=> b!4455417 d!1359217))

(declare-fun bs!790764 () Bool)

(declare-fun d!1359219 () Bool)

(assert (= bs!790764 (and d!1359219 start!436586)))

(declare-fun lambda!160121 () Int)

(assert (=> bs!790764 (= lambda!160121 lambda!160114)))

(declare-fun bs!790765 () Bool)

(assert (= bs!790765 (and d!1359219 d!1359211)))

(assert (=> bs!790765 (= lambda!160121 lambda!160120)))

(declare-fun lt!1646972 () ListMap!3039)

(assert (=> d!1359219 (invariantList!873 (toList!3800 lt!1646972))))

(declare-fun e!2774457 () ListMap!3039)

(assert (=> d!1359219 (= lt!1646972 e!2774457)))

(declare-fun c!758486 () Bool)

(assert (=> d!1359219 (= c!758486 (is-Cons!49968 (toList!3799 (tail!7477 lm!1837))))))

(assert (=> d!1359219 (forall!9815 (toList!3799 (tail!7477 lm!1837)) lambda!160121)))

(assert (=> d!1359219 (= (extractMap!965 (toList!3799 (tail!7477 lm!1837))) lt!1646972)))

(declare-fun b!4455494 () Bool)

(assert (=> b!4455494 (= e!2774457 (addToMapMapFromBucket!496 (_2!28300 (h!55713 (toList!3799 (tail!7477 lm!1837)))) (extractMap!965 (t!357042 (toList!3799 (tail!7477 lm!1837))))))))

(declare-fun b!4455495 () Bool)

(assert (=> b!4455495 (= e!2774457 (ListMap!3040 Nil!49967))))

(assert (= (and d!1359219 c!758486) b!4455494))

(assert (= (and d!1359219 (not c!758486)) b!4455495))

(declare-fun m!5157079 () Bool)

(assert (=> d!1359219 m!5157079))

(declare-fun m!5157081 () Bool)

(assert (=> d!1359219 m!5157081))

(declare-fun m!5157083 () Bool)

(assert (=> b!4455494 m!5157083))

(assert (=> b!4455494 m!5157083))

(declare-fun m!5157085 () Bool)

(assert (=> b!4455494 m!5157085))

(assert (=> b!4455417 d!1359219))

(declare-fun d!1359221 () Bool)

(declare-fun tail!7479 (List!50092) List!50092)

(assert (=> d!1359221 (= (tail!7477 lm!1837) (ListLongMap!2454 (tail!7479 (toList!3799 lm!1837))))))

(declare-fun bs!790766 () Bool)

(assert (= bs!790766 d!1359221))

(declare-fun m!5157087 () Bool)

(assert (=> bs!790766 m!5157087))

(assert (=> b!4455417 d!1359221))

(declare-fun bs!790767 () Bool)

(declare-fun d!1359223 () Bool)

(assert (= bs!790767 (and d!1359223 start!436586)))

(declare-fun lambda!160124 () Int)

(assert (=> bs!790767 (not (= lambda!160124 lambda!160114))))

(declare-fun bs!790768 () Bool)

(assert (= bs!790768 (and d!1359223 d!1359211)))

(assert (=> bs!790768 (not (= lambda!160124 lambda!160120))))

(declare-fun bs!790769 () Bool)

(assert (= bs!790769 (and d!1359223 d!1359219)))

(assert (=> bs!790769 (not (= lambda!160124 lambda!160121))))

(assert (=> d!1359223 true))

(assert (=> d!1359223 (= (allKeysSameHashInMap!1014 lm!1837 hashF!1304) (forall!9815 (toList!3799 lm!1837) lambda!160124))))

(declare-fun bs!790770 () Bool)

(assert (= bs!790770 d!1359223))

(declare-fun m!5157089 () Bool)

(assert (=> bs!790770 m!5157089))

(assert (=> b!4455421 d!1359223))

(declare-fun d!1359225 () Bool)

(assert (=> d!1359225 (= (isEmpty!28456 (toList!3799 lm!1837)) (is-Nil!49968 (toList!3799 lm!1837)))))

(assert (=> b!4455416 d!1359225))

(declare-fun b!4455502 () Bool)

(declare-fun e!2774460 () Bool)

(declare-fun tp!1334880 () Bool)

(declare-fun tp!1334881 () Bool)

(assert (=> b!4455502 (= e!2774460 (and tp!1334880 tp!1334881))))

(assert (=> b!4455420 (= tp!1334872 e!2774460)))

(assert (= (and b!4455420 (is-Cons!49968 (toList!3799 lm!1837))) b!4455502))

(declare-fun b_lambda!147649 () Bool)

(assert (= b_lambda!147647 (or start!436586 b_lambda!147649)))

(declare-fun bs!790771 () Bool)

(declare-fun d!1359227 () Bool)

(assert (= bs!790771 (and d!1359227 start!436586)))

(declare-fun noDuplicateKeys!896 (List!50091) Bool)

(assert (=> bs!790771 (= (dynLambda!20964 lambda!160114 (h!55713 (toList!3799 lm!1837))) (noDuplicateKeys!896 (_2!28300 (h!55713 (toList!3799 lm!1837)))))))

(declare-fun m!5157091 () Bool)

(assert (=> bs!790771 m!5157091))

(assert (=> b!4455483 d!1359227))

(push 1)

(assert (not b!4455467))

(assert (not b!4455488))

(assert (not d!1359217))

(assert (not b!4455487))

(assert (not b!4455494))

(assert (not b!4455468))

(assert (not b!4455492))

(assert (not b!4455502))

(assert (not b!4455466))

(assert (not d!1359215))

(assert (not bs!790771))

(assert (not b!4455471))

(assert (not b!4455491))

(assert (not d!1359223))

(assert (not b!4455489))

(assert (not d!1359211))

(assert (not b!4455472))

(assert (not b_lambda!147649))

(assert (not b!4455477))

(assert (not bm!310069))

(assert (not d!1359219))

(assert (not bm!310068))

(assert (not b!4455493))

(assert (not d!1359221))

(assert (not d!1359201))

(assert (not b!4455484))

(assert (not b!4455470))

(assert (not b!4455486))

(assert tp_is_empty!26805)

(assert (not b!4455465))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

