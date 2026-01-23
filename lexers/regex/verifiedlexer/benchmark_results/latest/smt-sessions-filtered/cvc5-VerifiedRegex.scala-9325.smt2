; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!496012 () Bool)

(assert start!496012)

(declare-fun b!4803397 () Bool)

(declare-datatypes ((Unit!140934 0))(
  ( (Unit!140935) )
))
(declare-fun e!2999704 () Unit!140934)

(declare-fun Unit!140936 () Unit!140934)

(assert (=> b!4803397 (= e!2999704 Unit!140936)))

(declare-fun b!4803398 () Bool)

(declare-fun lt!1957951 () Unit!140934)

(assert (=> b!4803398 (= e!2999704 lt!1957951)))

(declare-datatypes ((Hashable!6969 0))(
  ( (HashableExt!6968 (__x!32992 Int)) )
))
(declare-fun hashF!1559 () Hashable!6969)

(declare-datatypes ((K!15912 0))(
  ( (K!15913 (val!21035 Int)) )
))
(declare-fun key!5896 () K!15912)

(declare-datatypes ((V!16158 0))(
  ( (V!16159 (val!21036 Int)) )
))
(declare-datatypes ((tuple2!57044 0))(
  ( (tuple2!57045 (_1!31816 K!15912) (_2!31816 V!16158)) )
))
(declare-datatypes ((List!54466 0))(
  ( (Nil!54342) (Cons!54342 (h!60774 tuple2!57044) (t!361916 List!54466)) )
))
(declare-datatypes ((tuple2!57046 0))(
  ( (tuple2!57047 (_1!31817 (_ BitVec 64)) (_2!31817 List!54466)) )
))
(declare-datatypes ((List!54467 0))(
  ( (Nil!54343) (Cons!54343 (h!60775 tuple2!57046) (t!361917 List!54467)) )
))
(declare-datatypes ((ListLongMap!5439 0))(
  ( (ListLongMap!5440 (toList!7017 List!54467)) )
))
(declare-fun lt!1957957 () ListLongMap!5439)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!67 (ListLongMap!5439 K!15912 Hashable!6969) Unit!140934)

(assert (=> b!4803398 (= lt!1957951 (lemmaHashNotInLongMapThenNotInGenerated!67 lt!1957957 key!5896 hashF!1559))))

(declare-datatypes ((ListMap!6489 0))(
  ( (ListMap!6490 (toList!7018 List!54466)) )
))
(declare-fun contains!18000 (ListMap!6489 K!15912) Bool)

(declare-fun extractMap!2496 (List!54467) ListMap!6489)

(assert (=> b!4803398 (not (contains!18000 (extractMap!2496 (toList!7017 lt!1957957)) key!5896))))

(declare-fun b!4803400 () Bool)

(declare-fun res!2043299 () Bool)

(declare-fun e!2999703 () Bool)

(assert (=> b!4803400 (=> (not res!2043299) (not e!2999703))))

(declare-fun lm!2473 () ListLongMap!5439)

(declare-fun allKeysSameHashInMap!2374 (ListLongMap!5439 Hashable!6969) Bool)

(assert (=> b!4803400 (= res!2043299 (allKeysSameHashInMap!2374 lm!2473 hashF!1559))))

(declare-fun b!4803401 () Bool)

(declare-fun res!2043298 () Bool)

(declare-fun e!2999706 () Bool)

(assert (=> b!4803401 (=> res!2043298 e!2999706)))

(declare-fun containsKey!4051 (List!54466 K!15912) Bool)

(assert (=> b!4803401 (= res!2043298 (containsKey!4051 (_2!31817 (h!60775 (toList!7017 lm!2473))) key!5896))))

(declare-fun b!4803402 () Bool)

(assert (=> b!4803402 (= e!2999703 (not e!2999706))))

(declare-fun res!2043297 () Bool)

(assert (=> b!4803402 (=> res!2043297 e!2999706)))

(declare-fun value!3111 () V!16158)

(declare-fun getValue!157 (List!54467 K!15912) V!16158)

(assert (=> b!4803402 (= res!2043297 (not (= (getValue!157 (toList!7017 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!611 (List!54467 K!15912) Bool)

(assert (=> b!4803402 (containsKeyBiggerList!611 (toList!7017 lm!2473) key!5896)))

(declare-fun lt!1957950 () Unit!140934)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!351 (ListLongMap!5439 K!15912 Hashable!6969) Unit!140934)

(assert (=> b!4803402 (= lt!1957950 (lemmaInLongMapThenContainsKeyBiggerList!351 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2999705 () Bool)

(assert (=> b!4803402 e!2999705))

(declare-fun res!2043300 () Bool)

(assert (=> b!4803402 (=> (not res!2043300) (not e!2999705))))

(declare-fun lt!1957952 () (_ BitVec 64))

(declare-fun contains!18001 (ListLongMap!5439 (_ BitVec 64)) Bool)

(assert (=> b!4803402 (= res!2043300 (contains!18001 lm!2473 lt!1957952))))

(declare-fun hash!5031 (Hashable!6969 K!15912) (_ BitVec 64))

(assert (=> b!4803402 (= lt!1957952 (hash!5031 hashF!1559 key!5896))))

(declare-fun lt!1957955 () Unit!140934)

(declare-fun lemmaInGenericMapThenInLongMap!373 (ListLongMap!5439 K!15912 Hashable!6969) Unit!140934)

(assert (=> b!4803402 (= lt!1957955 (lemmaInGenericMapThenInLongMap!373 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4803403 () Bool)

(declare-fun res!2043296 () Bool)

(assert (=> b!4803403 (=> res!2043296 e!2999706)))

(assert (=> b!4803403 (= res!2043296 (not (is-Cons!54343 (toList!7017 lm!2473))))))

(declare-fun b!4803404 () Bool)

(declare-fun res!2043295 () Bool)

(assert (=> b!4803404 (=> (not res!2043295) (not e!2999703))))

(assert (=> b!4803404 (= res!2043295 (contains!18000 (extractMap!2496 (toList!7017 lm!2473)) key!5896))))

(declare-fun res!2043301 () Bool)

(assert (=> start!496012 (=> (not res!2043301) (not e!2999703))))

(declare-fun lambda!232890 () Int)

(declare-fun forall!12348 (List!54467 Int) Bool)

(assert (=> start!496012 (= res!2043301 (forall!12348 (toList!7017 lm!2473) lambda!232890))))

(assert (=> start!496012 e!2999703))

(declare-fun e!2999707 () Bool)

(declare-fun inv!69939 (ListLongMap!5439) Bool)

(assert (=> start!496012 (and (inv!69939 lm!2473) e!2999707)))

(assert (=> start!496012 true))

(declare-fun tp_is_empty!33737 () Bool)

(assert (=> start!496012 tp_is_empty!33737))

(declare-fun tp_is_empty!33739 () Bool)

(assert (=> start!496012 tp_is_empty!33739))

(declare-fun b!4803399 () Bool)

(declare-fun noDuplicateKeys!2367 (List!54466) Bool)

(assert (=> b!4803399 (= e!2999706 (noDuplicateKeys!2367 (_2!31817 (h!60775 (toList!7017 lm!2473)))))))

(declare-fun lt!1957956 () ListMap!6489)

(assert (=> b!4803399 (= lt!1957956 (extractMap!2496 (t!361917 (toList!7017 lm!2473))))))

(declare-fun lt!1957953 () ListMap!6489)

(declare-fun apply!13042 (ListMap!6489 K!15912) V!16158)

(assert (=> b!4803399 (= (apply!13042 lt!1957953 key!5896) value!3111)))

(declare-fun lt!1957949 () Unit!140934)

(declare-fun lemmaExtractMapPreservesMapping!41 (ListLongMap!5439 K!15912 V!16158 Hashable!6969) Unit!140934)

(assert (=> b!4803399 (= lt!1957949 (lemmaExtractMapPreservesMapping!41 lt!1957957 key!5896 value!3111 hashF!1559))))

(assert (=> b!4803399 (contains!18000 lt!1957953 key!5896)))

(assert (=> b!4803399 (= lt!1957953 (extractMap!2496 (toList!7017 lt!1957957)))))

(declare-fun lt!1957954 () Unit!140934)

(declare-fun lemmaListContainsThenExtractedMapContains!719 (ListLongMap!5439 K!15912 Hashable!6969) Unit!140934)

(assert (=> b!4803399 (= lt!1957954 (lemmaListContainsThenExtractedMapContains!719 lt!1957957 key!5896 hashF!1559))))

(declare-fun lt!1957948 () Unit!140934)

(assert (=> b!4803399 (= lt!1957948 e!2999704)))

(declare-fun c!818772 () Bool)

(assert (=> b!4803399 (= c!818772 (not (contains!18001 lt!1957957 lt!1957952)))))

(declare-fun tail!9339 (ListLongMap!5439) ListLongMap!5439)

(assert (=> b!4803399 (= lt!1957957 (tail!9339 lm!2473))))

(declare-fun b!4803405 () Bool)

(declare-fun tp!1358461 () Bool)

(assert (=> b!4803405 (= e!2999707 tp!1358461)))

(declare-fun b!4803406 () Bool)

(declare-datatypes ((Option!13201 0))(
  ( (None!13200) (Some!13200 (v!48537 tuple2!57044)) )
))
(declare-fun isDefined!10342 (Option!13201) Bool)

(declare-fun getPair!941 (List!54466 K!15912) Option!13201)

(declare-fun apply!13043 (ListLongMap!5439 (_ BitVec 64)) List!54466)

(assert (=> b!4803406 (= e!2999705 (isDefined!10342 (getPair!941 (apply!13043 lm!2473 lt!1957952) key!5896)))))

(assert (= (and start!496012 res!2043301) b!4803400))

(assert (= (and b!4803400 res!2043299) b!4803404))

(assert (= (and b!4803404 res!2043295) b!4803402))

(assert (= (and b!4803402 res!2043300) b!4803406))

(assert (= (and b!4803402 (not res!2043297)) b!4803403))

(assert (= (and b!4803403 (not res!2043296)) b!4803401))

(assert (= (and b!4803401 (not res!2043298)) b!4803399))

(assert (= (and b!4803399 c!818772) b!4803398))

(assert (= (and b!4803399 (not c!818772)) b!4803397))

(assert (= start!496012 b!4803405))

(declare-fun m!5788454 () Bool)

(assert (=> b!4803400 m!5788454))

(declare-fun m!5788456 () Bool)

(assert (=> b!4803398 m!5788456))

(declare-fun m!5788458 () Bool)

(assert (=> b!4803398 m!5788458))

(assert (=> b!4803398 m!5788458))

(declare-fun m!5788460 () Bool)

(assert (=> b!4803398 m!5788460))

(declare-fun m!5788462 () Bool)

(assert (=> b!4803401 m!5788462))

(declare-fun m!5788464 () Bool)

(assert (=> b!4803404 m!5788464))

(assert (=> b!4803404 m!5788464))

(declare-fun m!5788466 () Bool)

(assert (=> b!4803404 m!5788466))

(declare-fun m!5788468 () Bool)

(assert (=> b!4803402 m!5788468))

(declare-fun m!5788470 () Bool)

(assert (=> b!4803402 m!5788470))

(declare-fun m!5788472 () Bool)

(assert (=> b!4803402 m!5788472))

(declare-fun m!5788474 () Bool)

(assert (=> b!4803402 m!5788474))

(declare-fun m!5788476 () Bool)

(assert (=> b!4803402 m!5788476))

(declare-fun m!5788478 () Bool)

(assert (=> b!4803402 m!5788478))

(declare-fun m!5788480 () Bool)

(assert (=> b!4803406 m!5788480))

(assert (=> b!4803406 m!5788480))

(declare-fun m!5788482 () Bool)

(assert (=> b!4803406 m!5788482))

(assert (=> b!4803406 m!5788482))

(declare-fun m!5788484 () Bool)

(assert (=> b!4803406 m!5788484))

(declare-fun m!5788486 () Bool)

(assert (=> start!496012 m!5788486))

(declare-fun m!5788488 () Bool)

(assert (=> start!496012 m!5788488))

(assert (=> b!4803399 m!5788458))

(declare-fun m!5788490 () Bool)

(assert (=> b!4803399 m!5788490))

(declare-fun m!5788492 () Bool)

(assert (=> b!4803399 m!5788492))

(declare-fun m!5788494 () Bool)

(assert (=> b!4803399 m!5788494))

(declare-fun m!5788496 () Bool)

(assert (=> b!4803399 m!5788496))

(declare-fun m!5788498 () Bool)

(assert (=> b!4803399 m!5788498))

(declare-fun m!5788500 () Bool)

(assert (=> b!4803399 m!5788500))

(declare-fun m!5788502 () Bool)

(assert (=> b!4803399 m!5788502))

(declare-fun m!5788504 () Bool)

(assert (=> b!4803399 m!5788504))

(push 1)

(assert (not start!496012))

(assert tp_is_empty!33737)

(assert (not b!4803400))

(assert (not b!4803399))

(assert (not b!4803398))

(assert (not b!4803404))

(assert (not b!4803406))

(assert (not b!4803402))

(assert (not b!4803405))

(assert (not b!4803401))

(assert tp_is_empty!33739)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1538594 () Bool)

(declare-fun res!2043330 () Bool)

(declare-fun e!2999729 () Bool)

(assert (=> d!1538594 (=> res!2043330 e!2999729)))

(declare-fun e!2999731 () Bool)

(assert (=> d!1538594 (= res!2043330 e!2999731)))

(declare-fun res!2043331 () Bool)

(assert (=> d!1538594 (=> (not res!2043331) (not e!2999731))))

(assert (=> d!1538594 (= res!2043331 (is-Cons!54343 (toList!7017 lm!2473)))))

(assert (=> d!1538594 (= (containsKeyBiggerList!611 (toList!7017 lm!2473) key!5896) e!2999729)))

(declare-fun b!4803443 () Bool)

(assert (=> b!4803443 (= e!2999731 (containsKey!4051 (_2!31817 (h!60775 (toList!7017 lm!2473))) key!5896))))

(declare-fun b!4803444 () Bool)

(declare-fun e!2999730 () Bool)

(assert (=> b!4803444 (= e!2999729 e!2999730)))

(declare-fun res!2043329 () Bool)

(assert (=> b!4803444 (=> (not res!2043329) (not e!2999730))))

(assert (=> b!4803444 (= res!2043329 (is-Cons!54343 (toList!7017 lm!2473)))))

(declare-fun b!4803445 () Bool)

(assert (=> b!4803445 (= e!2999730 (containsKeyBiggerList!611 (t!361917 (toList!7017 lm!2473)) key!5896))))

(assert (= (and d!1538594 res!2043331) b!4803443))

(assert (= (and d!1538594 (not res!2043330)) b!4803444))

(assert (= (and b!4803444 res!2043329) b!4803445))

(assert (=> b!4803443 m!5788462))

(declare-fun m!5788558 () Bool)

(assert (=> b!4803445 m!5788558))

(assert (=> b!4803402 d!1538594))

(declare-fun bs!1158434 () Bool)

(declare-fun d!1538596 () Bool)

(assert (= bs!1158434 (and d!1538596 start!496012)))

(declare-fun lambda!232896 () Int)

(assert (=> bs!1158434 (= lambda!232896 lambda!232890)))

(assert (=> d!1538596 (containsKeyBiggerList!611 (toList!7017 lm!2473) key!5896)))

(declare-fun lt!1957990 () Unit!140934)

(declare-fun choose!34739 (ListLongMap!5439 K!15912 Hashable!6969) Unit!140934)

(assert (=> d!1538596 (= lt!1957990 (choose!34739 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1538596 (forall!12348 (toList!7017 lm!2473) lambda!232896)))

(assert (=> d!1538596 (= (lemmaInLongMapThenContainsKeyBiggerList!351 lm!2473 key!5896 hashF!1559) lt!1957990)))

(declare-fun bs!1158435 () Bool)

(assert (= bs!1158435 d!1538596))

(assert (=> bs!1158435 m!5788470))

(declare-fun m!5788560 () Bool)

(assert (=> bs!1158435 m!5788560))

(declare-fun m!5788562 () Bool)

(assert (=> bs!1158435 m!5788562))

(assert (=> b!4803402 d!1538596))

(declare-fun bs!1158436 () Bool)

(declare-fun d!1538598 () Bool)

(assert (= bs!1158436 (and d!1538598 start!496012)))

(declare-fun lambda!232899 () Int)

(assert (=> bs!1158436 (= lambda!232899 lambda!232890)))

(declare-fun bs!1158437 () Bool)

(assert (= bs!1158437 (and d!1538598 d!1538596)))

(assert (=> bs!1158437 (= lambda!232899 lambda!232896)))

(declare-fun e!2999734 () Bool)

(assert (=> d!1538598 e!2999734))

(declare-fun res!2043334 () Bool)

(assert (=> d!1538598 (=> (not res!2043334) (not e!2999734))))

(assert (=> d!1538598 (= res!2043334 (contains!18001 lm!2473 (hash!5031 hashF!1559 key!5896)))))

(declare-fun lt!1957993 () Unit!140934)

(declare-fun choose!34740 (ListLongMap!5439 K!15912 Hashable!6969) Unit!140934)

(assert (=> d!1538598 (= lt!1957993 (choose!34740 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1538598 (forall!12348 (toList!7017 lm!2473) lambda!232899)))

(assert (=> d!1538598 (= (lemmaInGenericMapThenInLongMap!373 lm!2473 key!5896 hashF!1559) lt!1957993)))

(declare-fun b!4803448 () Bool)

(assert (=> b!4803448 (= e!2999734 (isDefined!10342 (getPair!941 (apply!13043 lm!2473 (hash!5031 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1538598 res!2043334) b!4803448))

(assert (=> d!1538598 m!5788472))

(assert (=> d!1538598 m!5788472))

(declare-fun m!5788564 () Bool)

(assert (=> d!1538598 m!5788564))

(declare-fun m!5788566 () Bool)

(assert (=> d!1538598 m!5788566))

(declare-fun m!5788568 () Bool)

(assert (=> d!1538598 m!5788568))

(assert (=> b!4803448 m!5788472))

(assert (=> b!4803448 m!5788472))

(declare-fun m!5788570 () Bool)

(assert (=> b!4803448 m!5788570))

(assert (=> b!4803448 m!5788570))

(declare-fun m!5788572 () Bool)

(assert (=> b!4803448 m!5788572))

(assert (=> b!4803448 m!5788572))

(declare-fun m!5788574 () Bool)

(assert (=> b!4803448 m!5788574))

(assert (=> b!4803402 d!1538598))

(declare-fun d!1538600 () Bool)

(declare-fun c!818778 () Bool)

(declare-fun e!2999740 () Bool)

(assert (=> d!1538600 (= c!818778 e!2999740)))

(declare-fun res!2043337 () Bool)

(assert (=> d!1538600 (=> (not res!2043337) (not e!2999740))))

(assert (=> d!1538600 (= res!2043337 (is-Cons!54343 (toList!7017 lm!2473)))))

(declare-fun e!2999739 () V!16158)

(assert (=> d!1538600 (= (getValue!157 (toList!7017 lm!2473) key!5896) e!2999739)))

(declare-fun b!4803457 () Bool)

(assert (=> b!4803457 (= e!2999740 (containsKey!4051 (_2!31817 (h!60775 (toList!7017 lm!2473))) key!5896))))

(declare-fun b!4803455 () Bool)

(declare-fun get!18563 (Option!13201) tuple2!57044)

(assert (=> b!4803455 (= e!2999739 (_2!31816 (get!18563 (getPair!941 (_2!31817 (h!60775 (toList!7017 lm!2473))) key!5896))))))

(declare-fun b!4803456 () Bool)

(assert (=> b!4803456 (= e!2999739 (getValue!157 (t!361917 (toList!7017 lm!2473)) key!5896))))

(assert (= (and d!1538600 res!2043337) b!4803457))

(assert (= (and d!1538600 c!818778) b!4803455))

(assert (= (and d!1538600 (not c!818778)) b!4803456))

(assert (=> b!4803457 m!5788462))

(declare-fun m!5788576 () Bool)

(assert (=> b!4803455 m!5788576))

(assert (=> b!4803455 m!5788576))

(declare-fun m!5788578 () Bool)

(assert (=> b!4803455 m!5788578))

(declare-fun m!5788580 () Bool)

(assert (=> b!4803456 m!5788580))

(assert (=> b!4803402 d!1538600))

(declare-fun d!1538602 () Bool)

(declare-fun e!2999745 () Bool)

(assert (=> d!1538602 e!2999745))

(declare-fun res!2043340 () Bool)

(assert (=> d!1538602 (=> res!2043340 e!2999745)))

(declare-fun lt!1958003 () Bool)

(assert (=> d!1538602 (= res!2043340 (not lt!1958003))))

(declare-fun lt!1958005 () Bool)

(assert (=> d!1538602 (= lt!1958003 lt!1958005)))

(declare-fun lt!1958004 () Unit!140934)

(declare-fun e!2999746 () Unit!140934)

(assert (=> d!1538602 (= lt!1958004 e!2999746)))

(declare-fun c!818781 () Bool)

(assert (=> d!1538602 (= c!818781 lt!1958005)))

(declare-fun containsKey!4053 (List!54467 (_ BitVec 64)) Bool)

(assert (=> d!1538602 (= lt!1958005 (containsKey!4053 (toList!7017 lm!2473) lt!1957952))))

(assert (=> d!1538602 (= (contains!18001 lm!2473 lt!1957952) lt!1958003)))

(declare-fun b!4803464 () Bool)

(declare-fun lt!1958002 () Unit!140934)

(assert (=> b!4803464 (= e!2999746 lt!1958002)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2199 (List!54467 (_ BitVec 64)) Unit!140934)

(assert (=> b!4803464 (= lt!1958002 (lemmaContainsKeyImpliesGetValueByKeyDefined!2199 (toList!7017 lm!2473) lt!1957952))))

(declare-datatypes ((Option!13203 0))(
  ( (None!13202) (Some!13202 (v!48539 List!54466)) )
))
(declare-fun isDefined!10344 (Option!13203) Bool)

(declare-fun getValueByKey!2408 (List!54467 (_ BitVec 64)) Option!13203)

(assert (=> b!4803464 (isDefined!10344 (getValueByKey!2408 (toList!7017 lm!2473) lt!1957952))))

(declare-fun b!4803465 () Bool)

(declare-fun Unit!140940 () Unit!140934)

(assert (=> b!4803465 (= e!2999746 Unit!140940)))

(declare-fun b!4803466 () Bool)

(assert (=> b!4803466 (= e!2999745 (isDefined!10344 (getValueByKey!2408 (toList!7017 lm!2473) lt!1957952)))))

(assert (= (and d!1538602 c!818781) b!4803464))

(assert (= (and d!1538602 (not c!818781)) b!4803465))

(assert (= (and d!1538602 (not res!2043340)) b!4803466))

(declare-fun m!5788582 () Bool)

(assert (=> d!1538602 m!5788582))

(declare-fun m!5788584 () Bool)

(assert (=> b!4803464 m!5788584))

(declare-fun m!5788586 () Bool)

(assert (=> b!4803464 m!5788586))

(assert (=> b!4803464 m!5788586))

(declare-fun m!5788588 () Bool)

(assert (=> b!4803464 m!5788588))

(assert (=> b!4803466 m!5788586))

(assert (=> b!4803466 m!5788586))

(assert (=> b!4803466 m!5788588))

(assert (=> b!4803402 d!1538602))

(declare-fun d!1538604 () Bool)

(declare-fun hash!5033 (Hashable!6969 K!15912) (_ BitVec 64))

(assert (=> d!1538604 (= (hash!5031 hashF!1559 key!5896) (hash!5033 hashF!1559 key!5896))))

(declare-fun bs!1158438 () Bool)

(assert (= bs!1158438 d!1538604))

(declare-fun m!5788590 () Bool)

(assert (=> bs!1158438 m!5788590))

(assert (=> b!4803402 d!1538604))

(declare-fun bs!1158439 () Bool)

(declare-fun d!1538606 () Bool)

(assert (= bs!1158439 (and d!1538606 start!496012)))

(declare-fun lambda!232902 () Int)

(assert (=> bs!1158439 (= lambda!232902 lambda!232890)))

(declare-fun bs!1158440 () Bool)

(assert (= bs!1158440 (and d!1538606 d!1538596)))

(assert (=> bs!1158440 (= lambda!232902 lambda!232896)))

(declare-fun bs!1158441 () Bool)

(assert (= bs!1158441 (and d!1538606 d!1538598)))

(assert (=> bs!1158441 (= lambda!232902 lambda!232899)))

(assert (=> d!1538606 (not (contains!18000 (extractMap!2496 (toList!7017 lt!1957957)) key!5896))))

(declare-fun lt!1958024 () Unit!140934)

(declare-fun choose!34741 (ListLongMap!5439 K!15912 Hashable!6969) Unit!140934)

(assert (=> d!1538606 (= lt!1958024 (choose!34741 lt!1957957 key!5896 hashF!1559))))

(assert (=> d!1538606 (forall!12348 (toList!7017 lt!1957957) lambda!232902)))

(assert (=> d!1538606 (= (lemmaHashNotInLongMapThenNotInGenerated!67 lt!1957957 key!5896 hashF!1559) lt!1958024)))

(declare-fun bs!1158442 () Bool)

(assert (= bs!1158442 d!1538606))

(assert (=> bs!1158442 m!5788458))

(assert (=> bs!1158442 m!5788458))

(assert (=> bs!1158442 m!5788460))

(declare-fun m!5788592 () Bool)

(assert (=> bs!1158442 m!5788592))

(declare-fun m!5788594 () Bool)

(assert (=> bs!1158442 m!5788594))

(assert (=> b!4803398 d!1538606))

(declare-fun b!4803512 () Bool)

(assert (=> b!4803512 false))

(declare-fun lt!1958049 () Unit!140934)

(declare-fun lt!1958051 () Unit!140934)

(assert (=> b!4803512 (= lt!1958049 lt!1958051)))

(declare-fun containsKey!4054 (List!54466 K!15912) Bool)

(assert (=> b!4803512 (containsKey!4054 (toList!7018 (extractMap!2496 (toList!7017 lt!1957957))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1105 (List!54466 K!15912) Unit!140934)

(assert (=> b!4803512 (= lt!1958051 (lemmaInGetKeysListThenContainsKey!1105 (toList!7018 (extractMap!2496 (toList!7017 lt!1957957))) key!5896))))

(declare-fun e!2999781 () Unit!140934)

(declare-fun Unit!140941 () Unit!140934)

(assert (=> b!4803512 (= e!2999781 Unit!140941)))

(declare-fun b!4803513 () Bool)

(declare-datatypes ((List!54470 0))(
  ( (Nil!54346) (Cons!54346 (h!60778 K!15912) (t!361920 List!54470)) )
))
(declare-fun e!2999778 () List!54470)

(declare-fun getKeysList!1105 (List!54466) List!54470)

(assert (=> b!4803513 (= e!2999778 (getKeysList!1105 (toList!7018 (extractMap!2496 (toList!7017 lt!1957957)))))))

(declare-fun b!4803514 () Bool)

(declare-fun e!2999777 () Unit!140934)

(assert (=> b!4803514 (= e!2999777 e!2999781)))

(declare-fun c!818799 () Bool)

(declare-fun call!335466 () Bool)

(assert (=> b!4803514 (= c!818799 call!335466)))

(declare-fun bm!335461 () Bool)

(declare-fun contains!18004 (List!54470 K!15912) Bool)

(assert (=> bm!335461 (= call!335466 (contains!18004 e!2999778 key!5896))))

(declare-fun c!818798 () Bool)

(declare-fun c!818797 () Bool)

(assert (=> bm!335461 (= c!818798 c!818797)))

(declare-fun b!4803515 () Bool)

(declare-fun e!2999782 () Bool)

(declare-fun keys!19874 (ListMap!6489) List!54470)

(assert (=> b!4803515 (= e!2999782 (contains!18004 (keys!19874 (extractMap!2496 (toList!7017 lt!1957957))) key!5896))))

(declare-fun b!4803516 () Bool)

(declare-fun e!2999779 () Bool)

(assert (=> b!4803516 (= e!2999779 (not (contains!18004 (keys!19874 (extractMap!2496 (toList!7017 lt!1957957))) key!5896)))))

(declare-fun b!4803518 () Bool)

(assert (=> b!4803518 (= e!2999778 (keys!19874 (extractMap!2496 (toList!7017 lt!1957957))))))

(declare-fun b!4803519 () Bool)

(declare-fun lt!1958054 () Unit!140934)

(assert (=> b!4803519 (= e!2999777 lt!1958054)))

(declare-fun lt!1958056 () Unit!140934)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2200 (List!54466 K!15912) Unit!140934)

(assert (=> b!4803519 (= lt!1958056 (lemmaContainsKeyImpliesGetValueByKeyDefined!2200 (toList!7018 (extractMap!2496 (toList!7017 lt!1957957))) key!5896))))

(declare-datatypes ((Option!13204 0))(
  ( (None!13203) (Some!13203 (v!48540 V!16158)) )
))
(declare-fun isDefined!10345 (Option!13204) Bool)

(declare-fun getValueByKey!2409 (List!54466 K!15912) Option!13204)

(assert (=> b!4803519 (isDefined!10345 (getValueByKey!2409 (toList!7018 (extractMap!2496 (toList!7017 lt!1957957))) key!5896))))

(declare-fun lt!1958050 () Unit!140934)

(assert (=> b!4803519 (= lt!1958050 lt!1958056)))

(declare-fun lemmaInListThenGetKeysListContains!1100 (List!54466 K!15912) Unit!140934)

(assert (=> b!4803519 (= lt!1958054 (lemmaInListThenGetKeysListContains!1100 (toList!7018 (extractMap!2496 (toList!7017 lt!1957957))) key!5896))))

(assert (=> b!4803519 call!335466))

(declare-fun b!4803520 () Bool)

(declare-fun e!2999780 () Bool)

(assert (=> b!4803520 (= e!2999780 e!2999782)))

(declare-fun res!2043358 () Bool)

(assert (=> b!4803520 (=> (not res!2043358) (not e!2999782))))

(assert (=> b!4803520 (= res!2043358 (isDefined!10345 (getValueByKey!2409 (toList!7018 (extractMap!2496 (toList!7017 lt!1957957))) key!5896)))))

(declare-fun d!1538608 () Bool)

(assert (=> d!1538608 e!2999780))

(declare-fun res!2043357 () Bool)

(assert (=> d!1538608 (=> res!2043357 e!2999780)))

(assert (=> d!1538608 (= res!2043357 e!2999779)))

(declare-fun res!2043356 () Bool)

(assert (=> d!1538608 (=> (not res!2043356) (not e!2999779))))

(declare-fun lt!1958055 () Bool)

(assert (=> d!1538608 (= res!2043356 (not lt!1958055))))

(declare-fun lt!1958053 () Bool)

(assert (=> d!1538608 (= lt!1958055 lt!1958053)))

(declare-fun lt!1958052 () Unit!140934)

(assert (=> d!1538608 (= lt!1958052 e!2999777)))

(assert (=> d!1538608 (= c!818797 lt!1958053)))

(assert (=> d!1538608 (= lt!1958053 (containsKey!4054 (toList!7018 (extractMap!2496 (toList!7017 lt!1957957))) key!5896))))

(assert (=> d!1538608 (= (contains!18000 (extractMap!2496 (toList!7017 lt!1957957)) key!5896) lt!1958055)))

(declare-fun b!4803517 () Bool)

(declare-fun Unit!140942 () Unit!140934)

(assert (=> b!4803517 (= e!2999781 Unit!140942)))

(assert (= (and d!1538608 c!818797) b!4803519))

(assert (= (and d!1538608 (not c!818797)) b!4803514))

(assert (= (and b!4803514 c!818799) b!4803512))

(assert (= (and b!4803514 (not c!818799)) b!4803517))

(assert (= (or b!4803519 b!4803514) bm!335461))

(assert (= (and bm!335461 c!818798) b!4803513))

(assert (= (and bm!335461 (not c!818798)) b!4803518))

(assert (= (and d!1538608 res!2043356) b!4803516))

(assert (= (and d!1538608 (not res!2043357)) b!4803520))

(assert (= (and b!4803520 res!2043358) b!4803515))

(declare-fun m!5788616 () Bool)

(assert (=> d!1538608 m!5788616))

(declare-fun m!5788618 () Bool)

(assert (=> b!4803520 m!5788618))

(assert (=> b!4803520 m!5788618))

(declare-fun m!5788620 () Bool)

(assert (=> b!4803520 m!5788620))

(assert (=> b!4803512 m!5788616))

(declare-fun m!5788622 () Bool)

(assert (=> b!4803512 m!5788622))

(assert (=> b!4803518 m!5788458))

(declare-fun m!5788624 () Bool)

(assert (=> b!4803518 m!5788624))

(declare-fun m!5788626 () Bool)

(assert (=> b!4803513 m!5788626))

(declare-fun m!5788628 () Bool)

(assert (=> b!4803519 m!5788628))

(assert (=> b!4803519 m!5788618))

(assert (=> b!4803519 m!5788618))

(assert (=> b!4803519 m!5788620))

(declare-fun m!5788630 () Bool)

(assert (=> b!4803519 m!5788630))

(assert (=> b!4803516 m!5788458))

(assert (=> b!4803516 m!5788624))

(assert (=> b!4803516 m!5788624))

(declare-fun m!5788632 () Bool)

(assert (=> b!4803516 m!5788632))

(declare-fun m!5788634 () Bool)

(assert (=> bm!335461 m!5788634))

(assert (=> b!4803515 m!5788458))

(assert (=> b!4803515 m!5788624))

(assert (=> b!4803515 m!5788624))

(assert (=> b!4803515 m!5788632))

(assert (=> b!4803398 d!1538608))

(declare-fun bs!1158443 () Bool)

(declare-fun d!1538612 () Bool)

(assert (= bs!1158443 (and d!1538612 start!496012)))

(declare-fun lambda!232907 () Int)

(assert (=> bs!1158443 (= lambda!232907 lambda!232890)))

(declare-fun bs!1158444 () Bool)

(assert (= bs!1158444 (and d!1538612 d!1538596)))

(assert (=> bs!1158444 (= lambda!232907 lambda!232896)))

(declare-fun bs!1158445 () Bool)

(assert (= bs!1158445 (and d!1538612 d!1538598)))

(assert (=> bs!1158445 (= lambda!232907 lambda!232899)))

(declare-fun bs!1158446 () Bool)

(assert (= bs!1158446 (and d!1538612 d!1538606)))

(assert (=> bs!1158446 (= lambda!232907 lambda!232902)))

(declare-fun lt!1958061 () ListMap!6489)

(declare-fun invariantList!1759 (List!54466) Bool)

(assert (=> d!1538612 (invariantList!1759 (toList!7018 lt!1958061))))

(declare-fun e!2999787 () ListMap!6489)

(assert (=> d!1538612 (= lt!1958061 e!2999787)))

(declare-fun c!818804 () Bool)

(assert (=> d!1538612 (= c!818804 (is-Cons!54343 (toList!7017 lt!1957957)))))

(assert (=> d!1538612 (forall!12348 (toList!7017 lt!1957957) lambda!232907)))

(assert (=> d!1538612 (= (extractMap!2496 (toList!7017 lt!1957957)) lt!1958061)))

(declare-fun b!4803529 () Bool)

(declare-fun addToMapMapFromBucket!1736 (List!54466 ListMap!6489) ListMap!6489)

(assert (=> b!4803529 (= e!2999787 (addToMapMapFromBucket!1736 (_2!31817 (h!60775 (toList!7017 lt!1957957))) (extractMap!2496 (t!361917 (toList!7017 lt!1957957)))))))

(declare-fun b!4803530 () Bool)

(assert (=> b!4803530 (= e!2999787 (ListMap!6490 Nil!54342))))

(assert (= (and d!1538612 c!818804) b!4803529))

(assert (= (and d!1538612 (not c!818804)) b!4803530))

(declare-fun m!5788636 () Bool)

(assert (=> d!1538612 m!5788636))

(declare-fun m!5788638 () Bool)

(assert (=> d!1538612 m!5788638))

(declare-fun m!5788640 () Bool)

(assert (=> b!4803529 m!5788640))

(assert (=> b!4803529 m!5788640))

(declare-fun m!5788642 () Bool)

(assert (=> b!4803529 m!5788642))

(assert (=> b!4803398 d!1538612))

(declare-fun b!4803533 () Bool)

(assert (=> b!4803533 false))

(declare-fun lt!1958062 () Unit!140934)

(declare-fun lt!1958064 () Unit!140934)

(assert (=> b!4803533 (= lt!1958062 lt!1958064)))

(assert (=> b!4803533 (containsKey!4054 (toList!7018 (extractMap!2496 (toList!7017 lm!2473))) key!5896)))

(assert (=> b!4803533 (= lt!1958064 (lemmaInGetKeysListThenContainsKey!1105 (toList!7018 (extractMap!2496 (toList!7017 lm!2473))) key!5896))))

(declare-fun e!2999792 () Unit!140934)

(declare-fun Unit!140943 () Unit!140934)

(assert (=> b!4803533 (= e!2999792 Unit!140943)))

(declare-fun b!4803534 () Bool)

(declare-fun e!2999789 () List!54470)

(assert (=> b!4803534 (= e!2999789 (getKeysList!1105 (toList!7018 (extractMap!2496 (toList!7017 lm!2473)))))))

(declare-fun b!4803535 () Bool)

(declare-fun e!2999788 () Unit!140934)

(assert (=> b!4803535 (= e!2999788 e!2999792)))

(declare-fun c!818808 () Bool)

(declare-fun call!335467 () Bool)

(assert (=> b!4803535 (= c!818808 call!335467)))

(declare-fun bm!335462 () Bool)

(assert (=> bm!335462 (= call!335467 (contains!18004 e!2999789 key!5896))))

(declare-fun c!818807 () Bool)

(declare-fun c!818805 () Bool)

(assert (=> bm!335462 (= c!818807 c!818805)))

(declare-fun b!4803536 () Bool)

(declare-fun e!2999793 () Bool)

(assert (=> b!4803536 (= e!2999793 (contains!18004 (keys!19874 (extractMap!2496 (toList!7017 lm!2473))) key!5896))))

(declare-fun b!4803537 () Bool)

(declare-fun e!2999790 () Bool)

(assert (=> b!4803537 (= e!2999790 (not (contains!18004 (keys!19874 (extractMap!2496 (toList!7017 lm!2473))) key!5896)))))

(declare-fun b!4803539 () Bool)

(assert (=> b!4803539 (= e!2999789 (keys!19874 (extractMap!2496 (toList!7017 lm!2473))))))

(declare-fun b!4803540 () Bool)

(declare-fun lt!1958068 () Unit!140934)

(assert (=> b!4803540 (= e!2999788 lt!1958068)))

(declare-fun lt!1958070 () Unit!140934)

(assert (=> b!4803540 (= lt!1958070 (lemmaContainsKeyImpliesGetValueByKeyDefined!2200 (toList!7018 (extractMap!2496 (toList!7017 lm!2473))) key!5896))))

(assert (=> b!4803540 (isDefined!10345 (getValueByKey!2409 (toList!7018 (extractMap!2496 (toList!7017 lm!2473))) key!5896))))

(declare-fun lt!1958063 () Unit!140934)

(assert (=> b!4803540 (= lt!1958063 lt!1958070)))

(assert (=> b!4803540 (= lt!1958068 (lemmaInListThenGetKeysListContains!1100 (toList!7018 (extractMap!2496 (toList!7017 lm!2473))) key!5896))))

(assert (=> b!4803540 call!335467))

(declare-fun b!4803541 () Bool)

(declare-fun e!2999791 () Bool)

(assert (=> b!4803541 (= e!2999791 e!2999793)))

(declare-fun res!2043361 () Bool)

(assert (=> b!4803541 (=> (not res!2043361) (not e!2999793))))

(assert (=> b!4803541 (= res!2043361 (isDefined!10345 (getValueByKey!2409 (toList!7018 (extractMap!2496 (toList!7017 lm!2473))) key!5896)))))

(declare-fun d!1538614 () Bool)

(assert (=> d!1538614 e!2999791))

(declare-fun res!2043360 () Bool)

(assert (=> d!1538614 (=> res!2043360 e!2999791)))

(assert (=> d!1538614 (= res!2043360 e!2999790)))

(declare-fun res!2043359 () Bool)

(assert (=> d!1538614 (=> (not res!2043359) (not e!2999790))))

(declare-fun lt!1958069 () Bool)

(assert (=> d!1538614 (= res!2043359 (not lt!1958069))))

(declare-fun lt!1958066 () Bool)

(assert (=> d!1538614 (= lt!1958069 lt!1958066)))

(declare-fun lt!1958065 () Unit!140934)

(assert (=> d!1538614 (= lt!1958065 e!2999788)))

(assert (=> d!1538614 (= c!818805 lt!1958066)))

(assert (=> d!1538614 (= lt!1958066 (containsKey!4054 (toList!7018 (extractMap!2496 (toList!7017 lm!2473))) key!5896))))

(assert (=> d!1538614 (= (contains!18000 (extractMap!2496 (toList!7017 lm!2473)) key!5896) lt!1958069)))

(declare-fun b!4803538 () Bool)

(declare-fun Unit!140944 () Unit!140934)

(assert (=> b!4803538 (= e!2999792 Unit!140944)))

(assert (= (and d!1538614 c!818805) b!4803540))

(assert (= (and d!1538614 (not c!818805)) b!4803535))

(assert (= (and b!4803535 c!818808) b!4803533))

(assert (= (and b!4803535 (not c!818808)) b!4803538))

(assert (= (or b!4803540 b!4803535) bm!335462))

(assert (= (and bm!335462 c!818807) b!4803534))

(assert (= (and bm!335462 (not c!818807)) b!4803539))

(assert (= (and d!1538614 res!2043359) b!4803537))

(assert (= (and d!1538614 (not res!2043360)) b!4803541))

(assert (= (and b!4803541 res!2043361) b!4803536))

(declare-fun m!5788644 () Bool)

(assert (=> d!1538614 m!5788644))

(declare-fun m!5788646 () Bool)

(assert (=> b!4803541 m!5788646))

(assert (=> b!4803541 m!5788646))

(declare-fun m!5788648 () Bool)

(assert (=> b!4803541 m!5788648))

(assert (=> b!4803533 m!5788644))

(declare-fun m!5788650 () Bool)

(assert (=> b!4803533 m!5788650))

(assert (=> b!4803539 m!5788464))

(declare-fun m!5788652 () Bool)

(assert (=> b!4803539 m!5788652))

(declare-fun m!5788654 () Bool)

(assert (=> b!4803534 m!5788654))

(declare-fun m!5788656 () Bool)

(assert (=> b!4803540 m!5788656))

(assert (=> b!4803540 m!5788646))

(assert (=> b!4803540 m!5788646))

(assert (=> b!4803540 m!5788648))

(declare-fun m!5788658 () Bool)

(assert (=> b!4803540 m!5788658))

(assert (=> b!4803537 m!5788464))

(assert (=> b!4803537 m!5788652))

(assert (=> b!4803537 m!5788652))

(declare-fun m!5788660 () Bool)

(assert (=> b!4803537 m!5788660))

(declare-fun m!5788662 () Bool)

(assert (=> bm!335462 m!5788662))

(assert (=> b!4803536 m!5788464))

(assert (=> b!4803536 m!5788652))

(assert (=> b!4803536 m!5788652))

(assert (=> b!4803536 m!5788660))

(assert (=> b!4803404 d!1538614))

(declare-fun bs!1158448 () Bool)

(declare-fun d!1538616 () Bool)

(assert (= bs!1158448 (and d!1538616 d!1538612)))

(declare-fun lambda!232909 () Int)

(assert (=> bs!1158448 (= lambda!232909 lambda!232907)))

(declare-fun bs!1158449 () Bool)

(assert (= bs!1158449 (and d!1538616 d!1538598)))

(assert (=> bs!1158449 (= lambda!232909 lambda!232899)))

(declare-fun bs!1158450 () Bool)

(assert (= bs!1158450 (and d!1538616 d!1538606)))

(assert (=> bs!1158450 (= lambda!232909 lambda!232902)))

(declare-fun bs!1158451 () Bool)

(assert (= bs!1158451 (and d!1538616 d!1538596)))

(assert (=> bs!1158451 (= lambda!232909 lambda!232896)))

(declare-fun bs!1158452 () Bool)

(assert (= bs!1158452 (and d!1538616 start!496012)))

(assert (=> bs!1158452 (= lambda!232909 lambda!232890)))

(declare-fun lt!1958071 () ListMap!6489)

(assert (=> d!1538616 (invariantList!1759 (toList!7018 lt!1958071))))

(declare-fun e!2999795 () ListMap!6489)

(assert (=> d!1538616 (= lt!1958071 e!2999795)))

(declare-fun c!818809 () Bool)

(assert (=> d!1538616 (= c!818809 (is-Cons!54343 (toList!7017 lm!2473)))))

(assert (=> d!1538616 (forall!12348 (toList!7017 lm!2473) lambda!232909)))

(assert (=> d!1538616 (= (extractMap!2496 (toList!7017 lm!2473)) lt!1958071)))

(declare-fun b!4803542 () Bool)

(assert (=> b!4803542 (= e!2999795 (addToMapMapFromBucket!1736 (_2!31817 (h!60775 (toList!7017 lm!2473))) (extractMap!2496 (t!361917 (toList!7017 lm!2473)))))))

(declare-fun b!4803543 () Bool)

(assert (=> b!4803543 (= e!2999795 (ListMap!6490 Nil!54342))))

(assert (= (and d!1538616 c!818809) b!4803542))

(assert (= (and d!1538616 (not c!818809)) b!4803543))

(declare-fun m!5788670 () Bool)

(assert (=> d!1538616 m!5788670))

(declare-fun m!5788672 () Bool)

(assert (=> d!1538616 m!5788672))

(assert (=> b!4803542 m!5788502))

(assert (=> b!4803542 m!5788502))

(declare-fun m!5788674 () Bool)

(assert (=> b!4803542 m!5788674))

(assert (=> b!4803404 d!1538616))

(declare-fun d!1538620 () Bool)

(declare-fun res!2043366 () Bool)

(declare-fun e!2999800 () Bool)

(assert (=> d!1538620 (=> res!2043366 e!2999800)))

(assert (=> d!1538620 (= res!2043366 (is-Nil!54343 (toList!7017 lm!2473)))))

(assert (=> d!1538620 (= (forall!12348 (toList!7017 lm!2473) lambda!232890) e!2999800)))

(declare-fun b!4803548 () Bool)

(declare-fun e!2999801 () Bool)

(assert (=> b!4803548 (= e!2999800 e!2999801)))

(declare-fun res!2043367 () Bool)

(assert (=> b!4803548 (=> (not res!2043367) (not e!2999801))))

(declare-fun dynLambda!22098 (Int tuple2!57046) Bool)

(assert (=> b!4803548 (= res!2043367 (dynLambda!22098 lambda!232890 (h!60775 (toList!7017 lm!2473))))))

(declare-fun b!4803549 () Bool)

(assert (=> b!4803549 (= e!2999801 (forall!12348 (t!361917 (toList!7017 lm!2473)) lambda!232890))))

(assert (= (and d!1538620 (not res!2043366)) b!4803548))

(assert (= (and b!4803548 res!2043367) b!4803549))

(declare-fun b_lambda!187915 () Bool)

(assert (=> (not b_lambda!187915) (not b!4803548)))

(declare-fun m!5788676 () Bool)

(assert (=> b!4803548 m!5788676))

(declare-fun m!5788678 () Bool)

(assert (=> b!4803549 m!5788678))

(assert (=> start!496012 d!1538620))

(declare-fun d!1538622 () Bool)

(declare-fun isStrictlySorted!905 (List!54467) Bool)

(assert (=> d!1538622 (= (inv!69939 lm!2473) (isStrictlySorted!905 (toList!7017 lm!2473)))))

(declare-fun bs!1158453 () Bool)

(assert (= bs!1158453 d!1538622))

(declare-fun m!5788680 () Bool)

(assert (=> bs!1158453 m!5788680))

(assert (=> start!496012 d!1538622))

(declare-fun d!1538624 () Bool)

(declare-fun e!2999802 () Bool)

(assert (=> d!1538624 e!2999802))

(declare-fun res!2043368 () Bool)

(assert (=> d!1538624 (=> res!2043368 e!2999802)))

(declare-fun lt!1958073 () Bool)

(assert (=> d!1538624 (= res!2043368 (not lt!1958073))))

(declare-fun lt!1958075 () Bool)

(assert (=> d!1538624 (= lt!1958073 lt!1958075)))

(declare-fun lt!1958074 () Unit!140934)

(declare-fun e!2999803 () Unit!140934)

(assert (=> d!1538624 (= lt!1958074 e!2999803)))

(declare-fun c!818810 () Bool)

(assert (=> d!1538624 (= c!818810 lt!1958075)))

(assert (=> d!1538624 (= lt!1958075 (containsKey!4053 (toList!7017 lt!1957957) lt!1957952))))

(assert (=> d!1538624 (= (contains!18001 lt!1957957 lt!1957952) lt!1958073)))

(declare-fun b!4803550 () Bool)

(declare-fun lt!1958072 () Unit!140934)

(assert (=> b!4803550 (= e!2999803 lt!1958072)))

(assert (=> b!4803550 (= lt!1958072 (lemmaContainsKeyImpliesGetValueByKeyDefined!2199 (toList!7017 lt!1957957) lt!1957952))))

(assert (=> b!4803550 (isDefined!10344 (getValueByKey!2408 (toList!7017 lt!1957957) lt!1957952))))

(declare-fun b!4803551 () Bool)

(declare-fun Unit!140945 () Unit!140934)

(assert (=> b!4803551 (= e!2999803 Unit!140945)))

(declare-fun b!4803552 () Bool)

(assert (=> b!4803552 (= e!2999802 (isDefined!10344 (getValueByKey!2408 (toList!7017 lt!1957957) lt!1957952)))))

(assert (= (and d!1538624 c!818810) b!4803550))

(assert (= (and d!1538624 (not c!818810)) b!4803551))

(assert (= (and d!1538624 (not res!2043368)) b!4803552))

(declare-fun m!5788682 () Bool)

(assert (=> d!1538624 m!5788682))

(declare-fun m!5788684 () Bool)

(assert (=> b!4803550 m!5788684))

(declare-fun m!5788686 () Bool)

(assert (=> b!4803550 m!5788686))

(assert (=> b!4803550 m!5788686))

(declare-fun m!5788688 () Bool)

(assert (=> b!4803550 m!5788688))

(assert (=> b!4803552 m!5788686))

(assert (=> b!4803552 m!5788686))

(assert (=> b!4803552 m!5788688))

(assert (=> b!4803399 d!1538624))

(declare-fun d!1538626 () Bool)

(declare-fun res!2043373 () Bool)

(declare-fun e!2999808 () Bool)

(assert (=> d!1538626 (=> res!2043373 e!2999808)))

(assert (=> d!1538626 (= res!2043373 (not (is-Cons!54342 (_2!31817 (h!60775 (toList!7017 lm!2473))))))))

(assert (=> d!1538626 (= (noDuplicateKeys!2367 (_2!31817 (h!60775 (toList!7017 lm!2473)))) e!2999808)))

(declare-fun b!4803559 () Bool)

(declare-fun e!2999809 () Bool)

(assert (=> b!4803559 (= e!2999808 e!2999809)))

(declare-fun res!2043374 () Bool)

(assert (=> b!4803559 (=> (not res!2043374) (not e!2999809))))

(assert (=> b!4803559 (= res!2043374 (not (containsKey!4051 (t!361916 (_2!31817 (h!60775 (toList!7017 lm!2473)))) (_1!31816 (h!60774 (_2!31817 (h!60775 (toList!7017 lm!2473))))))))))

(declare-fun b!4803560 () Bool)

(assert (=> b!4803560 (= e!2999809 (noDuplicateKeys!2367 (t!361916 (_2!31817 (h!60775 (toList!7017 lm!2473))))))))

(assert (= (and d!1538626 (not res!2043373)) b!4803559))

(assert (= (and b!4803559 res!2043374) b!4803560))

(declare-fun m!5788690 () Bool)

(assert (=> b!4803559 m!5788690))

(declare-fun m!5788692 () Bool)

(assert (=> b!4803560 m!5788692))

(assert (=> b!4803399 d!1538626))

(declare-fun d!1538628 () Bool)

(declare-fun get!18564 (Option!13204) V!16158)

(assert (=> d!1538628 (= (apply!13042 lt!1957953 key!5896) (get!18564 (getValueByKey!2409 (toList!7018 lt!1957953) key!5896)))))

(declare-fun bs!1158457 () Bool)

(assert (= bs!1158457 d!1538628))

(declare-fun m!5788696 () Bool)

(assert (=> bs!1158457 m!5788696))

(assert (=> bs!1158457 m!5788696))

(declare-fun m!5788698 () Bool)

(assert (=> bs!1158457 m!5788698))

(assert (=> b!4803399 d!1538628))

(declare-fun bs!1158459 () Bool)

(declare-fun d!1538632 () Bool)

(assert (= bs!1158459 (and d!1538632 d!1538616)))

(declare-fun lambda!232915 () Int)

(assert (=> bs!1158459 (= lambda!232915 lambda!232909)))

(declare-fun bs!1158460 () Bool)

(assert (= bs!1158460 (and d!1538632 d!1538612)))

(assert (=> bs!1158460 (= lambda!232915 lambda!232907)))

(declare-fun bs!1158461 () Bool)

(assert (= bs!1158461 (and d!1538632 d!1538598)))

(assert (=> bs!1158461 (= lambda!232915 lambda!232899)))

(declare-fun bs!1158462 () Bool)

(assert (= bs!1158462 (and d!1538632 d!1538606)))

(assert (=> bs!1158462 (= lambda!232915 lambda!232902)))

(declare-fun bs!1158463 () Bool)

(assert (= bs!1158463 (and d!1538632 d!1538596)))

(assert (=> bs!1158463 (= lambda!232915 lambda!232896)))

(declare-fun bs!1158464 () Bool)

(assert (= bs!1158464 (and d!1538632 start!496012)))

(assert (=> bs!1158464 (= lambda!232915 lambda!232890)))

(assert (=> d!1538632 (= (apply!13042 (extractMap!2496 (toList!7017 lt!1957957)) key!5896) value!3111)))

(declare-fun lt!1958078 () Unit!140934)

(declare-fun choose!34742 (ListLongMap!5439 K!15912 V!16158 Hashable!6969) Unit!140934)

(assert (=> d!1538632 (= lt!1958078 (choose!34742 lt!1957957 key!5896 value!3111 hashF!1559))))

(assert (=> d!1538632 (forall!12348 (toList!7017 lt!1957957) lambda!232915)))

(assert (=> d!1538632 (= (lemmaExtractMapPreservesMapping!41 lt!1957957 key!5896 value!3111 hashF!1559) lt!1958078)))

(declare-fun bs!1158465 () Bool)

(assert (= bs!1158465 d!1538632))

(assert (=> bs!1158465 m!5788458))

(assert (=> bs!1158465 m!5788458))

(declare-fun m!5788706 () Bool)

(assert (=> bs!1158465 m!5788706))

(declare-fun m!5788708 () Bool)

(assert (=> bs!1158465 m!5788708))

(declare-fun m!5788710 () Bool)

(assert (=> bs!1158465 m!5788710))

(assert (=> b!4803399 d!1538632))

(declare-fun bs!1158466 () Bool)

(declare-fun d!1538638 () Bool)

(assert (= bs!1158466 (and d!1538638 d!1538632)))

(declare-fun lambda!232916 () Int)

(assert (=> bs!1158466 (= lambda!232916 lambda!232915)))

(declare-fun bs!1158467 () Bool)

(assert (= bs!1158467 (and d!1538638 d!1538616)))

(assert (=> bs!1158467 (= lambda!232916 lambda!232909)))

(declare-fun bs!1158468 () Bool)

(assert (= bs!1158468 (and d!1538638 d!1538612)))

(assert (=> bs!1158468 (= lambda!232916 lambda!232907)))

(declare-fun bs!1158469 () Bool)

(assert (= bs!1158469 (and d!1538638 d!1538598)))

(assert (=> bs!1158469 (= lambda!232916 lambda!232899)))

(declare-fun bs!1158470 () Bool)

(assert (= bs!1158470 (and d!1538638 d!1538606)))

(assert (=> bs!1158470 (= lambda!232916 lambda!232902)))

(declare-fun bs!1158471 () Bool)

(assert (= bs!1158471 (and d!1538638 d!1538596)))

(assert (=> bs!1158471 (= lambda!232916 lambda!232896)))

(declare-fun bs!1158472 () Bool)

(assert (= bs!1158472 (and d!1538638 start!496012)))

(assert (=> bs!1158472 (= lambda!232916 lambda!232890)))

(declare-fun lt!1958079 () ListMap!6489)

(assert (=> d!1538638 (invariantList!1759 (toList!7018 lt!1958079))))

(declare-fun e!2999816 () ListMap!6489)

(assert (=> d!1538638 (= lt!1958079 e!2999816)))

(declare-fun c!818811 () Bool)

(assert (=> d!1538638 (= c!818811 (is-Cons!54343 (t!361917 (toList!7017 lm!2473))))))

(assert (=> d!1538638 (forall!12348 (t!361917 (toList!7017 lm!2473)) lambda!232916)))

(assert (=> d!1538638 (= (extractMap!2496 (t!361917 (toList!7017 lm!2473))) lt!1958079)))

(declare-fun b!4803567 () Bool)

(assert (=> b!4803567 (= e!2999816 (addToMapMapFromBucket!1736 (_2!31817 (h!60775 (t!361917 (toList!7017 lm!2473)))) (extractMap!2496 (t!361917 (t!361917 (toList!7017 lm!2473))))))))

(declare-fun b!4803568 () Bool)

(assert (=> b!4803568 (= e!2999816 (ListMap!6490 Nil!54342))))

(assert (= (and d!1538638 c!818811) b!4803567))

(assert (= (and d!1538638 (not c!818811)) b!4803568))

(declare-fun m!5788712 () Bool)

(assert (=> d!1538638 m!5788712))

(declare-fun m!5788714 () Bool)

(assert (=> d!1538638 m!5788714))

(declare-fun m!5788716 () Bool)

(assert (=> b!4803567 m!5788716))

(assert (=> b!4803567 m!5788716))

(declare-fun m!5788718 () Bool)

(assert (=> b!4803567 m!5788718))

(assert (=> b!4803399 d!1538638))

(declare-fun b!4803569 () Bool)

(assert (=> b!4803569 false))

(declare-fun lt!1958080 () Unit!140934)

(declare-fun lt!1958082 () Unit!140934)

(assert (=> b!4803569 (= lt!1958080 lt!1958082)))

(assert (=> b!4803569 (containsKey!4054 (toList!7018 lt!1957953) key!5896)))

(assert (=> b!4803569 (= lt!1958082 (lemmaInGetKeysListThenContainsKey!1105 (toList!7018 lt!1957953) key!5896))))

(declare-fun e!2999821 () Unit!140934)

(declare-fun Unit!140946 () Unit!140934)

(assert (=> b!4803569 (= e!2999821 Unit!140946)))

(declare-fun b!4803570 () Bool)

(declare-fun e!2999818 () List!54470)

(assert (=> b!4803570 (= e!2999818 (getKeysList!1105 (toList!7018 lt!1957953)))))

(declare-fun b!4803571 () Bool)

(declare-fun e!2999817 () Unit!140934)

(assert (=> b!4803571 (= e!2999817 e!2999821)))

(declare-fun c!818814 () Bool)

(declare-fun call!335468 () Bool)

(assert (=> b!4803571 (= c!818814 call!335468)))

(declare-fun bm!335463 () Bool)

(assert (=> bm!335463 (= call!335468 (contains!18004 e!2999818 key!5896))))

(declare-fun c!818813 () Bool)

(declare-fun c!818812 () Bool)

(assert (=> bm!335463 (= c!818813 c!818812)))

(declare-fun b!4803572 () Bool)

(declare-fun e!2999822 () Bool)

(assert (=> b!4803572 (= e!2999822 (contains!18004 (keys!19874 lt!1957953) key!5896))))

(declare-fun b!4803573 () Bool)

(declare-fun e!2999819 () Bool)

(assert (=> b!4803573 (= e!2999819 (not (contains!18004 (keys!19874 lt!1957953) key!5896)))))

(declare-fun b!4803575 () Bool)

(assert (=> b!4803575 (= e!2999818 (keys!19874 lt!1957953))))

(declare-fun b!4803576 () Bool)

(declare-fun lt!1958085 () Unit!140934)

(assert (=> b!4803576 (= e!2999817 lt!1958085)))

(declare-fun lt!1958087 () Unit!140934)

(assert (=> b!4803576 (= lt!1958087 (lemmaContainsKeyImpliesGetValueByKeyDefined!2200 (toList!7018 lt!1957953) key!5896))))

(assert (=> b!4803576 (isDefined!10345 (getValueByKey!2409 (toList!7018 lt!1957953) key!5896))))

(declare-fun lt!1958081 () Unit!140934)

(assert (=> b!4803576 (= lt!1958081 lt!1958087)))

(assert (=> b!4803576 (= lt!1958085 (lemmaInListThenGetKeysListContains!1100 (toList!7018 lt!1957953) key!5896))))

(assert (=> b!4803576 call!335468))

(declare-fun b!4803577 () Bool)

(declare-fun e!2999820 () Bool)

(assert (=> b!4803577 (= e!2999820 e!2999822)))

(declare-fun res!2043383 () Bool)

(assert (=> b!4803577 (=> (not res!2043383) (not e!2999822))))

(assert (=> b!4803577 (= res!2043383 (isDefined!10345 (getValueByKey!2409 (toList!7018 lt!1957953) key!5896)))))

(declare-fun d!1538640 () Bool)

(assert (=> d!1538640 e!2999820))

(declare-fun res!2043382 () Bool)

(assert (=> d!1538640 (=> res!2043382 e!2999820)))

(assert (=> d!1538640 (= res!2043382 e!2999819)))

(declare-fun res!2043381 () Bool)

(assert (=> d!1538640 (=> (not res!2043381) (not e!2999819))))

(declare-fun lt!1958086 () Bool)

(assert (=> d!1538640 (= res!2043381 (not lt!1958086))))

(declare-fun lt!1958084 () Bool)

(assert (=> d!1538640 (= lt!1958086 lt!1958084)))

(declare-fun lt!1958083 () Unit!140934)

(assert (=> d!1538640 (= lt!1958083 e!2999817)))

(assert (=> d!1538640 (= c!818812 lt!1958084)))

(assert (=> d!1538640 (= lt!1958084 (containsKey!4054 (toList!7018 lt!1957953) key!5896))))

(assert (=> d!1538640 (= (contains!18000 lt!1957953 key!5896) lt!1958086)))

(declare-fun b!4803574 () Bool)

(declare-fun Unit!140947 () Unit!140934)

(assert (=> b!4803574 (= e!2999821 Unit!140947)))

(assert (= (and d!1538640 c!818812) b!4803576))

(assert (= (and d!1538640 (not c!818812)) b!4803571))

(assert (= (and b!4803571 c!818814) b!4803569))

(assert (= (and b!4803571 (not c!818814)) b!4803574))

(assert (= (or b!4803576 b!4803571) bm!335463))

(assert (= (and bm!335463 c!818813) b!4803570))

(assert (= (and bm!335463 (not c!818813)) b!4803575))

(assert (= (and d!1538640 res!2043381) b!4803573))

(assert (= (and d!1538640 (not res!2043382)) b!4803577))

(assert (= (and b!4803577 res!2043383) b!4803572))

(declare-fun m!5788720 () Bool)

(assert (=> d!1538640 m!5788720))

(assert (=> b!4803577 m!5788696))

(assert (=> b!4803577 m!5788696))

(declare-fun m!5788722 () Bool)

(assert (=> b!4803577 m!5788722))

(assert (=> b!4803569 m!5788720))

(declare-fun m!5788724 () Bool)

(assert (=> b!4803569 m!5788724))

(declare-fun m!5788726 () Bool)

(assert (=> b!4803575 m!5788726))

(declare-fun m!5788728 () Bool)

(assert (=> b!4803570 m!5788728))

(declare-fun m!5788730 () Bool)

(assert (=> b!4803576 m!5788730))

(assert (=> b!4803576 m!5788696))

(assert (=> b!4803576 m!5788696))

(assert (=> b!4803576 m!5788722))

(declare-fun m!5788732 () Bool)

(assert (=> b!4803576 m!5788732))

(assert (=> b!4803573 m!5788726))

(assert (=> b!4803573 m!5788726))

(declare-fun m!5788734 () Bool)

(assert (=> b!4803573 m!5788734))

(declare-fun m!5788736 () Bool)

(assert (=> bm!335463 m!5788736))

(assert (=> b!4803572 m!5788726))

(assert (=> b!4803572 m!5788726))

(assert (=> b!4803572 m!5788734))

(assert (=> b!4803399 d!1538640))

(declare-fun bs!1158473 () Bool)

(declare-fun d!1538642 () Bool)

(assert (= bs!1158473 (and d!1538642 d!1538632)))

(declare-fun lambda!232919 () Int)

(assert (=> bs!1158473 (= lambda!232919 lambda!232915)))

(declare-fun bs!1158474 () Bool)

(assert (= bs!1158474 (and d!1538642 d!1538616)))

(assert (=> bs!1158474 (= lambda!232919 lambda!232909)))

(declare-fun bs!1158475 () Bool)

(assert (= bs!1158475 (and d!1538642 d!1538598)))

(assert (=> bs!1158475 (= lambda!232919 lambda!232899)))

(declare-fun bs!1158476 () Bool)

(assert (= bs!1158476 (and d!1538642 d!1538606)))

(assert (=> bs!1158476 (= lambda!232919 lambda!232902)))

(declare-fun bs!1158477 () Bool)

(assert (= bs!1158477 (and d!1538642 d!1538596)))

(assert (=> bs!1158477 (= lambda!232919 lambda!232896)))

(declare-fun bs!1158478 () Bool)

(assert (= bs!1158478 (and d!1538642 start!496012)))

(assert (=> bs!1158478 (= lambda!232919 lambda!232890)))

(declare-fun bs!1158479 () Bool)

(assert (= bs!1158479 (and d!1538642 d!1538612)))

(assert (=> bs!1158479 (= lambda!232919 lambda!232907)))

(declare-fun bs!1158480 () Bool)

(assert (= bs!1158480 (and d!1538642 d!1538638)))

(assert (=> bs!1158480 (= lambda!232919 lambda!232916)))

(assert (=> d!1538642 (contains!18000 (extractMap!2496 (toList!7017 lt!1957957)) key!5896)))

(declare-fun lt!1958090 () Unit!140934)

(declare-fun choose!34743 (ListLongMap!5439 K!15912 Hashable!6969) Unit!140934)

(assert (=> d!1538642 (= lt!1958090 (choose!34743 lt!1957957 key!5896 hashF!1559))))

(assert (=> d!1538642 (forall!12348 (toList!7017 lt!1957957) lambda!232919)))

(assert (=> d!1538642 (= (lemmaListContainsThenExtractedMapContains!719 lt!1957957 key!5896 hashF!1559) lt!1958090)))

(declare-fun bs!1158481 () Bool)

(assert (= bs!1158481 d!1538642))

(assert (=> bs!1158481 m!5788458))

(assert (=> bs!1158481 m!5788458))

(assert (=> bs!1158481 m!5788460))

(declare-fun m!5788738 () Bool)

(assert (=> bs!1158481 m!5788738))

(declare-fun m!5788740 () Bool)

(assert (=> bs!1158481 m!5788740))

(assert (=> b!4803399 d!1538642))

(assert (=> b!4803399 d!1538612))

(declare-fun d!1538644 () Bool)

(declare-fun tail!9341 (List!54467) List!54467)

(assert (=> d!1538644 (= (tail!9339 lm!2473) (ListLongMap!5440 (tail!9341 (toList!7017 lm!2473))))))

(declare-fun bs!1158482 () Bool)

(assert (= bs!1158482 d!1538644))

(declare-fun m!5788742 () Bool)

(assert (=> bs!1158482 m!5788742))

(assert (=> b!4803399 d!1538644))

(declare-fun bs!1158483 () Bool)

(declare-fun d!1538646 () Bool)

(assert (= bs!1158483 (and d!1538646 d!1538632)))

(declare-fun lambda!232922 () Int)

(assert (=> bs!1158483 (not (= lambda!232922 lambda!232915))))

(declare-fun bs!1158484 () Bool)

(assert (= bs!1158484 (and d!1538646 d!1538616)))

(assert (=> bs!1158484 (not (= lambda!232922 lambda!232909))))

(declare-fun bs!1158485 () Bool)

(assert (= bs!1158485 (and d!1538646 d!1538598)))

(assert (=> bs!1158485 (not (= lambda!232922 lambda!232899))))

(declare-fun bs!1158486 () Bool)

(assert (= bs!1158486 (and d!1538646 d!1538642)))

(assert (=> bs!1158486 (not (= lambda!232922 lambda!232919))))

(declare-fun bs!1158487 () Bool)

(assert (= bs!1158487 (and d!1538646 d!1538606)))

(assert (=> bs!1158487 (not (= lambda!232922 lambda!232902))))

(declare-fun bs!1158488 () Bool)

(assert (= bs!1158488 (and d!1538646 d!1538596)))

(assert (=> bs!1158488 (not (= lambda!232922 lambda!232896))))

(declare-fun bs!1158489 () Bool)

(assert (= bs!1158489 (and d!1538646 start!496012)))

(assert (=> bs!1158489 (not (= lambda!232922 lambda!232890))))

(declare-fun bs!1158490 () Bool)

(assert (= bs!1158490 (and d!1538646 d!1538612)))

(assert (=> bs!1158490 (not (= lambda!232922 lambda!232907))))

(declare-fun bs!1158491 () Bool)

(assert (= bs!1158491 (and d!1538646 d!1538638)))

(assert (=> bs!1158491 (not (= lambda!232922 lambda!232916))))

(assert (=> d!1538646 true))

(assert (=> d!1538646 (= (allKeysSameHashInMap!2374 lm!2473 hashF!1559) (forall!12348 (toList!7017 lm!2473) lambda!232922))))

(declare-fun bs!1158492 () Bool)

(assert (= bs!1158492 d!1538646))

(declare-fun m!5788744 () Bool)

(assert (=> bs!1158492 m!5788744))

(assert (=> b!4803400 d!1538646))

(declare-fun d!1538648 () Bool)

(declare-fun isEmpty!29520 (Option!13201) Bool)

(assert (=> d!1538648 (= (isDefined!10342 (getPair!941 (apply!13043 lm!2473 lt!1957952) key!5896)) (not (isEmpty!29520 (getPair!941 (apply!13043 lm!2473 lt!1957952) key!5896))))))

(declare-fun bs!1158493 () Bool)

(assert (= bs!1158493 d!1538648))

(assert (=> bs!1158493 m!5788482))

(declare-fun m!5788746 () Bool)

(assert (=> bs!1158493 m!5788746))

(assert (=> b!4803406 d!1538648))

(declare-fun b!4803605 () Bool)

(declare-fun e!2999842 () Option!13201)

(assert (=> b!4803605 (= e!2999842 None!13200)))

(declare-fun b!4803606 () Bool)

(declare-fun e!2999843 () Option!13201)

(assert (=> b!4803606 (= e!2999843 (Some!13200 (h!60774 (apply!13043 lm!2473 lt!1957952))))))

(declare-fun b!4803607 () Bool)

(declare-fun e!2999839 () Bool)

(declare-fun e!2999840 () Bool)

(assert (=> b!4803607 (= e!2999839 e!2999840)))

(declare-fun res!2043398 () Bool)

(assert (=> b!4803607 (=> (not res!2043398) (not e!2999840))))

(declare-fun lt!1958104 () Option!13201)

(assert (=> b!4803607 (= res!2043398 (isDefined!10342 lt!1958104))))

(declare-fun b!4803609 () Bool)

(assert (=> b!4803609 (= e!2999843 e!2999842)))

(declare-fun c!818822 () Bool)

(assert (=> b!4803609 (= c!818822 (is-Cons!54342 (apply!13043 lm!2473 lt!1957952)))))

(declare-fun e!2999841 () Bool)

(declare-fun b!4803610 () Bool)

(assert (=> b!4803610 (= e!2999841 (not (containsKey!4051 (apply!13043 lm!2473 lt!1957952) key!5896)))))

(declare-fun b!4803608 () Bool)

(declare-fun res!2043397 () Bool)

(assert (=> b!4803608 (=> (not res!2043397) (not e!2999840))))

(assert (=> b!4803608 (= res!2043397 (= (_1!31816 (get!18563 lt!1958104)) key!5896))))

(declare-fun d!1538650 () Bool)

(assert (=> d!1538650 e!2999839))

(declare-fun res!2043395 () Bool)

(assert (=> d!1538650 (=> res!2043395 e!2999839)))

(assert (=> d!1538650 (= res!2043395 e!2999841)))

(declare-fun res!2043396 () Bool)

(assert (=> d!1538650 (=> (not res!2043396) (not e!2999841))))

(assert (=> d!1538650 (= res!2043396 (isEmpty!29520 lt!1958104))))

(assert (=> d!1538650 (= lt!1958104 e!2999843)))

(declare-fun c!818823 () Bool)

(assert (=> d!1538650 (= c!818823 (and (is-Cons!54342 (apply!13043 lm!2473 lt!1957952)) (= (_1!31816 (h!60774 (apply!13043 lm!2473 lt!1957952))) key!5896)))))

(assert (=> d!1538650 (noDuplicateKeys!2367 (apply!13043 lm!2473 lt!1957952))))

(assert (=> d!1538650 (= (getPair!941 (apply!13043 lm!2473 lt!1957952) key!5896) lt!1958104)))

(declare-fun b!4803611 () Bool)

(assert (=> b!4803611 (= e!2999842 (getPair!941 (t!361916 (apply!13043 lm!2473 lt!1957952)) key!5896))))

(declare-fun b!4803612 () Bool)

(declare-fun contains!18006 (List!54466 tuple2!57044) Bool)

(assert (=> b!4803612 (= e!2999840 (contains!18006 (apply!13043 lm!2473 lt!1957952) (get!18563 lt!1958104)))))

(assert (= (and d!1538650 c!818823) b!4803606))

(assert (= (and d!1538650 (not c!818823)) b!4803609))

(assert (= (and b!4803609 c!818822) b!4803611))

(assert (= (and b!4803609 (not c!818822)) b!4803605))

(assert (= (and d!1538650 res!2043396) b!4803610))

(assert (= (and d!1538650 (not res!2043395)) b!4803607))

(assert (= (and b!4803607 res!2043398) b!4803608))

(assert (= (and b!4803608 res!2043397) b!4803612))

(declare-fun m!5788772 () Bool)

(assert (=> b!4803608 m!5788772))

(declare-fun m!5788774 () Bool)

(assert (=> b!4803611 m!5788774))

(assert (=> b!4803610 m!5788480))

(declare-fun m!5788776 () Bool)

(assert (=> b!4803610 m!5788776))

(assert (=> b!4803612 m!5788772))

(assert (=> b!4803612 m!5788480))

(assert (=> b!4803612 m!5788772))

(declare-fun m!5788778 () Bool)

(assert (=> b!4803612 m!5788778))

(declare-fun m!5788780 () Bool)

(assert (=> b!4803607 m!5788780))

(declare-fun m!5788782 () Bool)

(assert (=> d!1538650 m!5788782))

(assert (=> d!1538650 m!5788480))

(declare-fun m!5788784 () Bool)

(assert (=> d!1538650 m!5788784))

(assert (=> b!4803406 d!1538650))

(declare-fun d!1538656 () Bool)

(declare-fun get!18565 (Option!13203) List!54466)

(assert (=> d!1538656 (= (apply!13043 lm!2473 lt!1957952) (get!18565 (getValueByKey!2408 (toList!7017 lm!2473) lt!1957952)))))

(declare-fun bs!1158502 () Bool)

(assert (= bs!1158502 d!1538656))

(assert (=> bs!1158502 m!5788586))

(assert (=> bs!1158502 m!5788586))

(declare-fun m!5788786 () Bool)

(assert (=> bs!1158502 m!5788786))

(assert (=> b!4803406 d!1538656))

(declare-fun d!1538658 () Bool)

(declare-fun res!2043403 () Bool)

(declare-fun e!2999849 () Bool)

(assert (=> d!1538658 (=> res!2043403 e!2999849)))

(assert (=> d!1538658 (= res!2043403 (and (is-Cons!54342 (_2!31817 (h!60775 (toList!7017 lm!2473)))) (= (_1!31816 (h!60774 (_2!31817 (h!60775 (toList!7017 lm!2473))))) key!5896)))))

(assert (=> d!1538658 (= (containsKey!4051 (_2!31817 (h!60775 (toList!7017 lm!2473))) key!5896) e!2999849)))

(declare-fun b!4803619 () Bool)

(declare-fun e!2999850 () Bool)

(assert (=> b!4803619 (= e!2999849 e!2999850)))

(declare-fun res!2043404 () Bool)

(assert (=> b!4803619 (=> (not res!2043404) (not e!2999850))))

(assert (=> b!4803619 (= res!2043404 (is-Cons!54342 (_2!31817 (h!60775 (toList!7017 lm!2473)))))))

(declare-fun b!4803620 () Bool)

(assert (=> b!4803620 (= e!2999850 (containsKey!4051 (t!361916 (_2!31817 (h!60775 (toList!7017 lm!2473)))) key!5896))))

(assert (= (and d!1538658 (not res!2043403)) b!4803619))

(assert (= (and b!4803619 res!2043404) b!4803620))

(declare-fun m!5788796 () Bool)

(assert (=> b!4803620 m!5788796))

(assert (=> b!4803401 d!1538658))

(declare-fun b!4803625 () Bool)

(declare-fun e!2999853 () Bool)

(declare-fun tp!1358469 () Bool)

(declare-fun tp!1358470 () Bool)

(assert (=> b!4803625 (= e!2999853 (and tp!1358469 tp!1358470))))

(assert (=> b!4803405 (= tp!1358461 e!2999853)))

(assert (= (and b!4803405 (is-Cons!54343 (toList!7017 lm!2473))) b!4803625))

(declare-fun b_lambda!187919 () Bool)

(assert (= b_lambda!187915 (or start!496012 b_lambda!187919)))

(declare-fun bs!1158503 () Bool)

(declare-fun d!1538662 () Bool)

(assert (= bs!1158503 (and d!1538662 start!496012)))

(assert (=> bs!1158503 (= (dynLambda!22098 lambda!232890 (h!60775 (toList!7017 lm!2473))) (noDuplicateKeys!2367 (_2!31817 (h!60775 (toList!7017 lm!2473)))))))

(assert (=> bs!1158503 m!5788504))

(assert (=> b!4803548 d!1538662))

(push 1)

(assert (not b!4803529))

(assert (not d!1538612))

(assert (not b!4803540))

(assert (not b!4803620))

(assert (not b!4803607))

(assert (not b!4803577))

(assert (not b!4803625))

(assert (not d!1538640))

(assert (not d!1538638))

(assert (not b!4803576))

(assert (not d!1538602))

(assert (not b!4803608))

(assert (not d!1538608))

(assert (not b_lambda!187919))

(assert (not d!1538628))

(assert (not b!4803541))

(assert (not b!4803542))

(assert (not b!4803550))

(assert (not b!4803457))

(assert (not b!4803612))

(assert tp_is_empty!33739)

(assert (not d!1538622))

(assert (not bs!1158503))

(assert (not b!4803513))

(assert (not d!1538624))

(assert (not b!4803552))

(assert (not d!1538598))

(assert (not d!1538614))

(assert (not b!4803610))

(assert (not b!4803567))

(assert (not bm!335461))

(assert (not b!4803519))

(assert (not d!1538642))

(assert tp_is_empty!33737)

(assert (not bm!335462))

(assert (not b!4803464))

(assert (not b!4803575))

(assert (not b!4803537))

(assert (not d!1538616))

(assert (not d!1538656))

(assert (not d!1538632))

(assert (not b!4803539))

(assert (not b!4803443))

(assert (not d!1538648))

(assert (not b!4803512))

(assert (not b!4803570))

(assert (not d!1538596))

(assert (not b!4803534))

(assert (not b!4803515))

(assert (not b!4803569))

(assert (not b!4803448))

(assert (not d!1538644))

(assert (not b!4803536))

(assert (not b!4803573))

(assert (not b!4803611))

(assert (not b!4803549))

(assert (not b!4803533))

(assert (not b!4803455))

(assert (not b!4803445))

(assert (not d!1538606))

(assert (not d!1538646))

(assert (not bm!335463))

(assert (not b!4803560))

(assert (not b!4803559))

(assert (not b!4803516))

(assert (not d!1538650))

(assert (not b!4803520))

(assert (not b!4803518))

(assert (not d!1538604))

(assert (not b!4803456))

(assert (not b!4803466))

(assert (not b!4803572))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

