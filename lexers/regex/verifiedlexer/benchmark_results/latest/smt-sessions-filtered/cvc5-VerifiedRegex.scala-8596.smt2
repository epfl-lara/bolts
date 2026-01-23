; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!457374 () Bool)

(assert start!457374)

(declare-fun res!1919446 () Bool)

(declare-fun e!2863483 () Bool)

(assert (=> start!457374 (=> (not res!1919446) (not e!2863483))))

(declare-datatypes ((K!12383 0))(
  ( (K!12384 (val!18177 Int)) )
))
(declare-datatypes ((V!12629 0))(
  ( (V!12630 (val!18178 Int)) )
))
(declare-datatypes ((tuple2!51622 0))(
  ( (tuple2!51623 (_1!29105 K!12383) (_2!29105 V!12629)) )
))
(declare-datatypes ((List!51136 0))(
  ( (Nil!51012) (Cons!51012 (h!56960 tuple2!51622) (t!358130 List!51136)) )
))
(declare-datatypes ((tuple2!51624 0))(
  ( (tuple2!51625 (_1!29106 (_ BitVec 64)) (_2!29106 List!51136)) )
))
(declare-datatypes ((List!51137 0))(
  ( (Nil!51013) (Cons!51013 (h!56961 tuple2!51624) (t!358131 List!51137)) )
))
(declare-datatypes ((ListLongMap!3233 0))(
  ( (ListLongMap!3234 (toList!4601 List!51137)) )
))
(declare-fun lm!1477 () ListLongMap!3233)

(declare-fun lambda!184835 () Int)

(declare-fun forall!10545 (List!51137 Int) Bool)

(assert (=> start!457374 (= res!1919446 (forall!10545 (toList!4601 lm!1477) lambda!184835))))

(assert (=> start!457374 e!2863483))

(assert (=> start!457374 true))

(declare-fun e!2863484 () Bool)

(declare-fun inv!66568 (ListLongMap!3233) Bool)

(assert (=> start!457374 (and (inv!66568 lm!1477) e!2863484)))

(declare-fun tp_is_empty!28465 () Bool)

(assert (=> start!457374 tp_is_empty!28465))

(declare-fun e!2863485 () Bool)

(assert (=> start!457374 e!2863485))

(declare-fun b!4591259 () Bool)

(declare-fun res!1919448 () Bool)

(declare-fun e!2863488 () Bool)

(assert (=> b!4591259 (=> res!1919448 e!2863488)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4591259 (= res!1919448 (or (is-Nil!51013 (toList!4601 lm!1477)) (not (= (_1!29106 (h!56961 (toList!4601 lm!1477))) hash!344))))))

(declare-fun b!4591260 () Bool)

(declare-fun res!1919450 () Bool)

(assert (=> b!4591260 (=> (not res!1919450) (not e!2863483))))

(declare-datatypes ((Hashable!5692 0))(
  ( (HashableExt!5691 (__x!31395 Int)) )
))
(declare-fun hashF!1107 () Hashable!5692)

(declare-fun allKeysSameHashInMap!1404 (ListLongMap!3233 Hashable!5692) Bool)

(assert (=> b!4591260 (= res!1919450 (allKeysSameHashInMap!1404 lm!1477 hashF!1107))))

(declare-fun b!4591261 () Bool)

(declare-fun e!2863490 () Bool)

(assert (=> b!4591261 (= e!2863490 (not e!2863488))))

(declare-fun res!1919445 () Bool)

(assert (=> b!4591261 (=> res!1919445 e!2863488)))

(declare-fun key!3287 () K!12383)

(declare-fun newBucket!178 () List!51136)

(declare-fun lt!1753411 () List!51136)

(declare-fun removePairForKey!918 (List!51136 K!12383) List!51136)

(assert (=> b!4591261 (= res!1919445 (not (= newBucket!178 (removePairForKey!918 lt!1753411 key!3287))))))

(declare-fun lt!1753412 () tuple2!51624)

(declare-datatypes ((Unit!107446 0))(
  ( (Unit!107447) )
))
(declare-fun lt!1753404 () Unit!107446)

(declare-fun forallContained!2802 (List!51137 Int tuple2!51624) Unit!107446)

(assert (=> b!4591261 (= lt!1753404 (forallContained!2802 (toList!4601 lm!1477) lambda!184835 lt!1753412))))

(declare-fun contains!13930 (List!51137 tuple2!51624) Bool)

(assert (=> b!4591261 (contains!13930 (toList!4601 lm!1477) lt!1753412)))

(assert (=> b!4591261 (= lt!1753412 (tuple2!51625 hash!344 lt!1753411))))

(declare-fun lt!1753406 () Unit!107446)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!803 (List!51137 (_ BitVec 64) List!51136) Unit!107446)

(assert (=> b!4591261 (= lt!1753406 (lemmaGetValueByKeyImpliesContainsTuple!803 (toList!4601 lm!1477) hash!344 lt!1753411))))

(declare-fun apply!12030 (ListLongMap!3233 (_ BitVec 64)) List!51136)

(assert (=> b!4591261 (= lt!1753411 (apply!12030 lm!1477 hash!344))))

(declare-fun lt!1753413 () (_ BitVec 64))

(declare-fun contains!13931 (ListLongMap!3233 (_ BitVec 64)) Bool)

(assert (=> b!4591261 (contains!13931 lm!1477 lt!1753413)))

(declare-fun lt!1753407 () Unit!107446)

(declare-fun lemmaInGenMapThenLongMapContainsHash!367 (ListLongMap!3233 K!12383 Hashable!5692) Unit!107446)

(assert (=> b!4591261 (= lt!1753407 (lemmaInGenMapThenLongMapContainsHash!367 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4591262 () Bool)

(declare-fun tp!1340065 () Bool)

(assert (=> b!4591262 (= e!2863484 tp!1340065)))

(declare-fun b!4591263 () Bool)

(declare-fun e!2863489 () Unit!107446)

(declare-fun Unit!107448 () Unit!107446)

(assert (=> b!4591263 (= e!2863489 Unit!107448)))

(declare-fun b!4591264 () Bool)

(assert (=> b!4591264 (= e!2863483 e!2863490)))

(declare-fun res!1919449 () Bool)

(assert (=> b!4591264 (=> (not res!1919449) (not e!2863490))))

(assert (=> b!4591264 (= res!1919449 (= lt!1753413 hash!344))))

(declare-fun hash!3166 (Hashable!5692 K!12383) (_ BitVec 64))

(assert (=> b!4591264 (= lt!1753413 (hash!3166 hashF!1107 key!3287))))

(declare-fun b!4591265 () Bool)

(declare-fun res!1919444 () Bool)

(assert (=> b!4591265 (=> (not res!1919444) (not e!2863483))))

(declare-datatypes ((ListMap!3863 0))(
  ( (ListMap!3864 (toList!4602 List!51136)) )
))
(declare-fun contains!13932 (ListMap!3863 K!12383) Bool)

(declare-fun extractMap!1353 (List!51137) ListMap!3863)

(assert (=> b!4591265 (= res!1919444 (contains!13932 (extractMap!1353 (toList!4601 lm!1477)) key!3287))))

(declare-fun b!4591266 () Bool)

(declare-fun Unit!107449 () Unit!107446)

(assert (=> b!4591266 (= e!2863489 Unit!107449)))

(declare-fun lt!1753408 () Unit!107446)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!263 (ListLongMap!3233 K!12383 Hashable!5692) Unit!107446)

(assert (=> b!4591266 (= lt!1753408 (lemmaNotInItsHashBucketThenNotInMap!263 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4591266 false))

(declare-fun tp!1340064 () Bool)

(declare-fun b!4591267 () Bool)

(declare-fun tp_is_empty!28467 () Bool)

(assert (=> b!4591267 (= e!2863485 (and tp_is_empty!28465 tp_is_empty!28467 tp!1340064))))

(declare-fun b!4591268 () Bool)

(declare-fun res!1919451 () Bool)

(assert (=> b!4591268 (=> (not res!1919451) (not e!2863490))))

(declare-fun allKeysSameHash!1149 (List!51136 (_ BitVec 64) Hashable!5692) Bool)

(assert (=> b!4591268 (= res!1919451 (allKeysSameHash!1149 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4591269 () Bool)

(declare-fun res!1919443 () Bool)

(assert (=> b!4591269 (=> res!1919443 e!2863488)))

(declare-fun noDuplicateKeys!1293 (List!51136) Bool)

(assert (=> b!4591269 (= res!1919443 (not (noDuplicateKeys!1293 newBucket!178)))))

(declare-fun b!4591270 () Bool)

(declare-fun e!2863487 () Bool)

(declare-fun lt!1753410 () List!51137)

(assert (=> b!4591270 (= e!2863487 (inv!66568 (ListLongMap!3234 lt!1753410)))))

(declare-fun b!4591271 () Bool)

(declare-fun e!2863486 () Bool)

(assert (=> b!4591271 (= e!2863488 e!2863486)))

(declare-fun res!1919452 () Bool)

(assert (=> b!4591271 (=> res!1919452 e!2863486)))

(declare-fun lt!1753409 () Bool)

(assert (=> b!4591271 (= res!1919452 lt!1753409)))

(declare-fun lt!1753405 () Unit!107446)

(assert (=> b!4591271 (= lt!1753405 e!2863489)))

(declare-fun c!786269 () Bool)

(assert (=> b!4591271 (= c!786269 lt!1753409)))

(declare-fun containsKey!2097 (List!51136 K!12383) Bool)

(assert (=> b!4591271 (= lt!1753409 (not (containsKey!2097 (_2!29106 (h!56961 (toList!4601 lm!1477))) key!3287)))))

(declare-fun b!4591272 () Bool)

(assert (=> b!4591272 (= e!2863486 e!2863487)))

(declare-fun res!1919447 () Bool)

(assert (=> b!4591272 (=> res!1919447 e!2863487)))

(declare-fun containsKeyBiggerList!249 (List!51137 K!12383) Bool)

(assert (=> b!4591272 (= res!1919447 (not (containsKeyBiggerList!249 lt!1753410 key!3287)))))

(assert (=> b!4591272 (= lt!1753410 (Cons!51013 (h!56961 (toList!4601 lm!1477)) Nil!51013))))

(assert (= (and start!457374 res!1919446) b!4591260))

(assert (= (and b!4591260 res!1919450) b!4591265))

(assert (= (and b!4591265 res!1919444) b!4591264))

(assert (= (and b!4591264 res!1919449) b!4591268))

(assert (= (and b!4591268 res!1919451) b!4591261))

(assert (= (and b!4591261 (not res!1919445)) b!4591269))

(assert (= (and b!4591269 (not res!1919443)) b!4591259))

(assert (= (and b!4591259 (not res!1919448)) b!4591271))

(assert (= (and b!4591271 c!786269) b!4591266))

(assert (= (and b!4591271 (not c!786269)) b!4591263))

(assert (= (and b!4591271 (not res!1919452)) b!4591272))

(assert (= (and b!4591272 (not res!1919447)) b!4591270))

(assert (= start!457374 b!4591262))

(assert (= (and start!457374 (is-Cons!51012 newBucket!178)) b!4591267))

(declare-fun m!5414555 () Bool)

(assert (=> b!4591268 m!5414555))

(declare-fun m!5414557 () Bool)

(assert (=> start!457374 m!5414557))

(declare-fun m!5414559 () Bool)

(assert (=> start!457374 m!5414559))

(declare-fun m!5414561 () Bool)

(assert (=> b!4591270 m!5414561))

(declare-fun m!5414563 () Bool)

(assert (=> b!4591261 m!5414563))

(declare-fun m!5414565 () Bool)

(assert (=> b!4591261 m!5414565))

(declare-fun m!5414567 () Bool)

(assert (=> b!4591261 m!5414567))

(declare-fun m!5414569 () Bool)

(assert (=> b!4591261 m!5414569))

(declare-fun m!5414571 () Bool)

(assert (=> b!4591261 m!5414571))

(declare-fun m!5414573 () Bool)

(assert (=> b!4591261 m!5414573))

(declare-fun m!5414575 () Bool)

(assert (=> b!4591261 m!5414575))

(declare-fun m!5414577 () Bool)

(assert (=> b!4591272 m!5414577))

(declare-fun m!5414579 () Bool)

(assert (=> b!4591265 m!5414579))

(assert (=> b!4591265 m!5414579))

(declare-fun m!5414581 () Bool)

(assert (=> b!4591265 m!5414581))

(declare-fun m!5414583 () Bool)

(assert (=> b!4591269 m!5414583))

(declare-fun m!5414585 () Bool)

(assert (=> b!4591271 m!5414585))

(declare-fun m!5414587 () Bool)

(assert (=> b!4591260 m!5414587))

(declare-fun m!5414589 () Bool)

(assert (=> b!4591266 m!5414589))

(declare-fun m!5414591 () Bool)

(assert (=> b!4591264 m!5414591))

(push 1)

(assert (not b!4591264))

(assert (not b!4591272))

(assert (not b!4591261))

(assert (not b!4591269))

(assert (not b!4591266))

(assert tp_is_empty!28465)

(assert (not b!4591265))

(assert (not b!4591260))

(assert tp_is_empty!28467)

(assert (not b!4591267))

(assert (not b!4591270))

(assert (not b!4591268))

(assert (not start!457374))

(assert (not b!4591271))

(assert (not b!4591262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1444325 () Bool)

(declare-fun e!2863519 () Bool)

(assert (=> d!1444325 e!2863519))

(declare-fun res!1919485 () Bool)

(assert (=> d!1444325 (=> res!1919485 e!2863519)))

(declare-fun lt!1753454 () Bool)

(assert (=> d!1444325 (= res!1919485 (not lt!1753454))))

(declare-fun lt!1753453 () Bool)

(assert (=> d!1444325 (= lt!1753454 lt!1753453)))

(declare-fun lt!1753452 () Unit!107446)

(declare-fun e!2863520 () Unit!107446)

(assert (=> d!1444325 (= lt!1753452 e!2863520)))

(declare-fun c!786275 () Bool)

(assert (=> d!1444325 (= c!786275 lt!1753453)))

(declare-fun containsKey!2099 (List!51137 (_ BitVec 64)) Bool)

(assert (=> d!1444325 (= lt!1753453 (containsKey!2099 (toList!4601 lm!1477) lt!1753413))))

(assert (=> d!1444325 (= (contains!13931 lm!1477 lt!1753413) lt!1753454)))

(declare-fun b!4591323 () Bool)

(declare-fun lt!1753455 () Unit!107446)

(assert (=> b!4591323 (= e!2863520 lt!1753455)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1180 (List!51137 (_ BitVec 64)) Unit!107446)

(assert (=> b!4591323 (= lt!1753455 (lemmaContainsKeyImpliesGetValueByKeyDefined!1180 (toList!4601 lm!1477) lt!1753413))))

(declare-datatypes ((Option!11356 0))(
  ( (None!11355) (Some!11355 (v!45277 List!51136)) )
))
(declare-fun isDefined!8624 (Option!11356) Bool)

(declare-fun getValueByKey!1276 (List!51137 (_ BitVec 64)) Option!11356)

(assert (=> b!4591323 (isDefined!8624 (getValueByKey!1276 (toList!4601 lm!1477) lt!1753413))))

(declare-fun b!4591324 () Bool)

(declare-fun Unit!107454 () Unit!107446)

(assert (=> b!4591324 (= e!2863520 Unit!107454)))

(declare-fun b!4591325 () Bool)

(assert (=> b!4591325 (= e!2863519 (isDefined!8624 (getValueByKey!1276 (toList!4601 lm!1477) lt!1753413)))))

(assert (= (and d!1444325 c!786275) b!4591323))

(assert (= (and d!1444325 (not c!786275)) b!4591324))

(assert (= (and d!1444325 (not res!1919485)) b!4591325))

(declare-fun m!5414633 () Bool)

(assert (=> d!1444325 m!5414633))

(declare-fun m!5414635 () Bool)

(assert (=> b!4591323 m!5414635))

(declare-fun m!5414637 () Bool)

(assert (=> b!4591323 m!5414637))

(assert (=> b!4591323 m!5414637))

(declare-fun m!5414639 () Bool)

(assert (=> b!4591323 m!5414639))

(assert (=> b!4591325 m!5414637))

(assert (=> b!4591325 m!5414637))

(assert (=> b!4591325 m!5414639))

(assert (=> b!4591261 d!1444325))

(declare-fun d!1444331 () Bool)

(declare-fun dynLambda!21363 (Int tuple2!51624) Bool)

(assert (=> d!1444331 (dynLambda!21363 lambda!184835 lt!1753412)))

(declare-fun lt!1753461 () Unit!107446)

(declare-fun choose!30653 (List!51137 Int tuple2!51624) Unit!107446)

(assert (=> d!1444331 (= lt!1753461 (choose!30653 (toList!4601 lm!1477) lambda!184835 lt!1753412))))

(declare-fun e!2863523 () Bool)

(assert (=> d!1444331 e!2863523))

(declare-fun res!1919488 () Bool)

(assert (=> d!1444331 (=> (not res!1919488) (not e!2863523))))

(assert (=> d!1444331 (= res!1919488 (forall!10545 (toList!4601 lm!1477) lambda!184835))))

(assert (=> d!1444331 (= (forallContained!2802 (toList!4601 lm!1477) lambda!184835 lt!1753412) lt!1753461)))

(declare-fun b!4591328 () Bool)

(assert (=> b!4591328 (= e!2863523 (contains!13930 (toList!4601 lm!1477) lt!1753412))))

(assert (= (and d!1444331 res!1919488) b!4591328))

(declare-fun b_lambda!168497 () Bool)

(assert (=> (not b_lambda!168497) (not d!1444331)))

(declare-fun m!5414641 () Bool)

(assert (=> d!1444331 m!5414641))

(declare-fun m!5414645 () Bool)

(assert (=> d!1444331 m!5414645))

(assert (=> d!1444331 m!5414557))

(assert (=> b!4591328 m!5414565))

(assert (=> b!4591261 d!1444331))

(declare-fun d!1444333 () Bool)

(declare-fun get!16850 (Option!11356) List!51136)

(assert (=> d!1444333 (= (apply!12030 lm!1477 hash!344) (get!16850 (getValueByKey!1276 (toList!4601 lm!1477) hash!344)))))

(declare-fun bs!1007996 () Bool)

(assert (= bs!1007996 d!1444333))

(declare-fun m!5414651 () Bool)

(assert (=> bs!1007996 m!5414651))

(assert (=> bs!1007996 m!5414651))

(declare-fun m!5414653 () Bool)

(assert (=> bs!1007996 m!5414653))

(assert (=> b!4591261 d!1444333))

(declare-fun d!1444337 () Bool)

(declare-fun lt!1753464 () Bool)

(declare-fun content!8609 (List!51137) (Set tuple2!51624))

(assert (=> d!1444337 (= lt!1753464 (set.member lt!1753412 (content!8609 (toList!4601 lm!1477))))))

(declare-fun e!2863529 () Bool)

(assert (=> d!1444337 (= lt!1753464 e!2863529)))

(declare-fun res!1919493 () Bool)

(assert (=> d!1444337 (=> (not res!1919493) (not e!2863529))))

(assert (=> d!1444337 (= res!1919493 (is-Cons!51013 (toList!4601 lm!1477)))))

(assert (=> d!1444337 (= (contains!13930 (toList!4601 lm!1477) lt!1753412) lt!1753464)))

(declare-fun b!4591333 () Bool)

(declare-fun e!2863528 () Bool)

(assert (=> b!4591333 (= e!2863529 e!2863528)))

(declare-fun res!1919494 () Bool)

(assert (=> b!4591333 (=> res!1919494 e!2863528)))

(assert (=> b!4591333 (= res!1919494 (= (h!56961 (toList!4601 lm!1477)) lt!1753412))))

(declare-fun b!4591334 () Bool)

(assert (=> b!4591334 (= e!2863528 (contains!13930 (t!358131 (toList!4601 lm!1477)) lt!1753412))))

(assert (= (and d!1444337 res!1919493) b!4591333))

(assert (= (and b!4591333 (not res!1919494)) b!4591334))

(declare-fun m!5414659 () Bool)

(assert (=> d!1444337 m!5414659))

(declare-fun m!5414661 () Bool)

(assert (=> d!1444337 m!5414661))

(declare-fun m!5414663 () Bool)

(assert (=> b!4591334 m!5414663))

(assert (=> b!4591261 d!1444337))

(declare-fun b!4591358 () Bool)

(declare-fun e!2863541 () List!51136)

(assert (=> b!4591358 (= e!2863541 Nil!51012)))

(declare-fun b!4591357 () Bool)

(assert (=> b!4591357 (= e!2863541 (Cons!51012 (h!56960 lt!1753411) (removePairForKey!918 (t!358130 lt!1753411) key!3287)))))

(declare-fun b!4591355 () Bool)

(declare-fun e!2863540 () List!51136)

(assert (=> b!4591355 (= e!2863540 (t!358130 lt!1753411))))

(declare-fun d!1444341 () Bool)

(declare-fun lt!1753470 () List!51136)

(assert (=> d!1444341 (not (containsKey!2097 lt!1753470 key!3287))))

(assert (=> d!1444341 (= lt!1753470 e!2863540)))

(declare-fun c!786287 () Bool)

(assert (=> d!1444341 (= c!786287 (and (is-Cons!51012 lt!1753411) (= (_1!29105 (h!56960 lt!1753411)) key!3287)))))

(assert (=> d!1444341 (noDuplicateKeys!1293 lt!1753411)))

(assert (=> d!1444341 (= (removePairForKey!918 lt!1753411 key!3287) lt!1753470)))

(declare-fun b!4591356 () Bool)

(assert (=> b!4591356 (= e!2863540 e!2863541)))

(declare-fun c!786286 () Bool)

(assert (=> b!4591356 (= c!786286 (is-Cons!51012 lt!1753411))))

(assert (= (and d!1444341 c!786287) b!4591355))

(assert (= (and d!1444341 (not c!786287)) b!4591356))

(assert (= (and b!4591356 c!786286) b!4591357))

(assert (= (and b!4591356 (not c!786286)) b!4591358))

(declare-fun m!5414671 () Bool)

(assert (=> b!4591357 m!5414671))

(declare-fun m!5414673 () Bool)

(assert (=> d!1444341 m!5414673))

(declare-fun m!5414675 () Bool)

(assert (=> d!1444341 m!5414675))

(assert (=> b!4591261 d!1444341))

(declare-fun bs!1007998 () Bool)

(declare-fun d!1444345 () Bool)

(assert (= bs!1007998 (and d!1444345 start!457374)))

(declare-fun lambda!184849 () Int)

(assert (=> bs!1007998 (= lambda!184849 lambda!184835)))

(assert (=> d!1444345 (contains!13931 lm!1477 (hash!3166 hashF!1107 key!3287))))

(declare-fun lt!1753478 () Unit!107446)

(declare-fun choose!30655 (ListLongMap!3233 K!12383 Hashable!5692) Unit!107446)

(assert (=> d!1444345 (= lt!1753478 (choose!30655 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1444345 (forall!10545 (toList!4601 lm!1477) lambda!184849)))

(assert (=> d!1444345 (= (lemmaInGenMapThenLongMapContainsHash!367 lm!1477 key!3287 hashF!1107) lt!1753478)))

(declare-fun bs!1007999 () Bool)

(assert (= bs!1007999 d!1444345))

(assert (=> bs!1007999 m!5414591))

(assert (=> bs!1007999 m!5414591))

(declare-fun m!5414685 () Bool)

(assert (=> bs!1007999 m!5414685))

(declare-fun m!5414689 () Bool)

(assert (=> bs!1007999 m!5414689))

(declare-fun m!5414691 () Bool)

(assert (=> bs!1007999 m!5414691))

(assert (=> b!4591261 d!1444345))

(declare-fun d!1444349 () Bool)

(assert (=> d!1444349 (contains!13930 (toList!4601 lm!1477) (tuple2!51625 hash!344 lt!1753411))))

(declare-fun lt!1753482 () Unit!107446)

(declare-fun choose!30656 (List!51137 (_ BitVec 64) List!51136) Unit!107446)

(assert (=> d!1444349 (= lt!1753482 (choose!30656 (toList!4601 lm!1477) hash!344 lt!1753411))))

(declare-fun e!2863553 () Bool)

(assert (=> d!1444349 e!2863553))

(declare-fun res!1919506 () Bool)

(assert (=> d!1444349 (=> (not res!1919506) (not e!2863553))))

(declare-fun isStrictlySorted!523 (List!51137) Bool)

(assert (=> d!1444349 (= res!1919506 (isStrictlySorted!523 (toList!4601 lm!1477)))))

(assert (=> d!1444349 (= (lemmaGetValueByKeyImpliesContainsTuple!803 (toList!4601 lm!1477) hash!344 lt!1753411) lt!1753482)))

(declare-fun b!4591370 () Bool)

(assert (=> b!4591370 (= e!2863553 (= (getValueByKey!1276 (toList!4601 lm!1477) hash!344) (Some!11355 lt!1753411)))))

(assert (= (and d!1444349 res!1919506) b!4591370))

(declare-fun m!5414693 () Bool)

(assert (=> d!1444349 m!5414693))

(declare-fun m!5414695 () Bool)

(assert (=> d!1444349 m!5414695))

(declare-fun m!5414697 () Bool)

(assert (=> d!1444349 m!5414697))

(assert (=> b!4591370 m!5414651))

(assert (=> b!4591261 d!1444349))

(declare-fun bs!1008001 () Bool)

(declare-fun d!1444353 () Bool)

(assert (= bs!1008001 (and d!1444353 start!457374)))

(declare-fun lambda!184852 () Int)

(assert (=> bs!1008001 (= lambda!184852 lambda!184835)))

(declare-fun bs!1008002 () Bool)

(assert (= bs!1008002 (and d!1444353 d!1444345)))

(assert (=> bs!1008002 (= lambda!184852 lambda!184849)))

(assert (=> d!1444353 (not (contains!13932 (extractMap!1353 (toList!4601 lm!1477)) key!3287))))

(declare-fun lt!1753500 () Unit!107446)

(declare-fun choose!30657 (ListLongMap!3233 K!12383 Hashable!5692) Unit!107446)

(assert (=> d!1444353 (= lt!1753500 (choose!30657 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1444353 (forall!10545 (toList!4601 lm!1477) lambda!184852)))

(assert (=> d!1444353 (= (lemmaNotInItsHashBucketThenNotInMap!263 lm!1477 key!3287 hashF!1107) lt!1753500)))

(declare-fun bs!1008003 () Bool)

(assert (= bs!1008003 d!1444353))

(assert (=> bs!1008003 m!5414579))

(assert (=> bs!1008003 m!5414579))

(assert (=> bs!1008003 m!5414581))

(declare-fun m!5414717 () Bool)

(assert (=> bs!1008003 m!5414717))

(declare-fun m!5414719 () Bool)

(assert (=> bs!1008003 m!5414719))

(assert (=> b!4591266 d!1444353))

(declare-fun d!1444363 () Bool)

(declare-fun res!1919536 () Bool)

(declare-fun e!2863585 () Bool)

(assert (=> d!1444363 (=> res!1919536 e!2863585)))

(declare-fun e!2863584 () Bool)

(assert (=> d!1444363 (= res!1919536 e!2863584)))

(declare-fun res!1919534 () Bool)

(assert (=> d!1444363 (=> (not res!1919534) (not e!2863584))))

(assert (=> d!1444363 (= res!1919534 (is-Cons!51013 lt!1753410))))

(assert (=> d!1444363 (= (containsKeyBiggerList!249 lt!1753410 key!3287) e!2863585)))

(declare-fun b!4591404 () Bool)

(assert (=> b!4591404 (= e!2863584 (containsKey!2097 (_2!29106 (h!56961 lt!1753410)) key!3287))))

(declare-fun b!4591405 () Bool)

(declare-fun e!2863586 () Bool)

(assert (=> b!4591405 (= e!2863585 e!2863586)))

(declare-fun res!1919535 () Bool)

(assert (=> b!4591405 (=> (not res!1919535) (not e!2863586))))

(assert (=> b!4591405 (= res!1919535 (is-Cons!51013 lt!1753410))))

(declare-fun b!4591406 () Bool)

(assert (=> b!4591406 (= e!2863586 (containsKeyBiggerList!249 (t!358131 lt!1753410) key!3287))))

(assert (= (and d!1444363 res!1919534) b!4591404))

(assert (= (and d!1444363 (not res!1919536)) b!4591405))

(assert (= (and b!4591405 res!1919535) b!4591406))

(declare-fun m!5414725 () Bool)

(assert (=> b!4591404 m!5414725))

(declare-fun m!5414727 () Bool)

(assert (=> b!4591406 m!5414727))

(assert (=> b!4591272 d!1444363))

(declare-fun d!1444367 () Bool)

(assert (=> d!1444367 true))

(assert (=> d!1444367 true))

(declare-fun lambda!184855 () Int)

(declare-fun forall!10547 (List!51136 Int) Bool)

(assert (=> d!1444367 (= (allKeysSameHash!1149 newBucket!178 hash!344 hashF!1107) (forall!10547 newBucket!178 lambda!184855))))

(declare-fun bs!1008004 () Bool)

(assert (= bs!1008004 d!1444367))

(declare-fun m!5414729 () Bool)

(assert (=> bs!1008004 m!5414729))

(assert (=> b!4591268 d!1444367))

(declare-fun d!1444369 () Bool)

(declare-fun res!1919541 () Bool)

(declare-fun e!2863591 () Bool)

(assert (=> d!1444369 (=> res!1919541 e!2863591)))

(assert (=> d!1444369 (= res!1919541 (not (is-Cons!51012 newBucket!178)))))

(assert (=> d!1444369 (= (noDuplicateKeys!1293 newBucket!178) e!2863591)))

(declare-fun b!4591415 () Bool)

(declare-fun e!2863592 () Bool)

(assert (=> b!4591415 (= e!2863591 e!2863592)))

(declare-fun res!1919542 () Bool)

(assert (=> b!4591415 (=> (not res!1919542) (not e!2863592))))

(assert (=> b!4591415 (= res!1919542 (not (containsKey!2097 (t!358130 newBucket!178) (_1!29105 (h!56960 newBucket!178)))))))

(declare-fun b!4591416 () Bool)

(assert (=> b!4591416 (= e!2863592 (noDuplicateKeys!1293 (t!358130 newBucket!178)))))

(assert (= (and d!1444369 (not res!1919541)) b!4591415))

(assert (= (and b!4591415 res!1919542) b!4591416))

(declare-fun m!5414731 () Bool)

(assert (=> b!4591415 m!5414731))

(declare-fun m!5414733 () Bool)

(assert (=> b!4591416 m!5414733))

(assert (=> b!4591269 d!1444369))

(declare-fun d!1444371 () Bool)

(declare-fun hash!3168 (Hashable!5692 K!12383) (_ BitVec 64))

(assert (=> d!1444371 (= (hash!3166 hashF!1107 key!3287) (hash!3168 hashF!1107 key!3287))))

(declare-fun bs!1008005 () Bool)

(assert (= bs!1008005 d!1444371))

(declare-fun m!5414735 () Bool)

(assert (=> bs!1008005 m!5414735))

(assert (=> b!4591264 d!1444371))

(declare-fun d!1444373 () Bool)

(declare-fun res!1919547 () Bool)

(declare-fun e!2863597 () Bool)

(assert (=> d!1444373 (=> res!1919547 e!2863597)))

(assert (=> d!1444373 (= res!1919547 (is-Nil!51013 (toList!4601 lm!1477)))))

(assert (=> d!1444373 (= (forall!10545 (toList!4601 lm!1477) lambda!184835) e!2863597)))

(declare-fun b!4591421 () Bool)

(declare-fun e!2863598 () Bool)

(assert (=> b!4591421 (= e!2863597 e!2863598)))

(declare-fun res!1919548 () Bool)

(assert (=> b!4591421 (=> (not res!1919548) (not e!2863598))))

(assert (=> b!4591421 (= res!1919548 (dynLambda!21363 lambda!184835 (h!56961 (toList!4601 lm!1477))))))

(declare-fun b!4591422 () Bool)

(assert (=> b!4591422 (= e!2863598 (forall!10545 (t!358131 (toList!4601 lm!1477)) lambda!184835))))

(assert (= (and d!1444373 (not res!1919547)) b!4591421))

(assert (= (and b!4591421 res!1919548) b!4591422))

(declare-fun b_lambda!168503 () Bool)

(assert (=> (not b_lambda!168503) (not b!4591421)))

(declare-fun m!5414737 () Bool)

(assert (=> b!4591421 m!5414737))

(declare-fun m!5414739 () Bool)

(assert (=> b!4591422 m!5414739))

(assert (=> start!457374 d!1444373))

(declare-fun d!1444375 () Bool)

(assert (=> d!1444375 (= (inv!66568 lm!1477) (isStrictlySorted!523 (toList!4601 lm!1477)))))

(declare-fun bs!1008006 () Bool)

(assert (= bs!1008006 d!1444375))

(assert (=> bs!1008006 m!5414697))

(assert (=> start!457374 d!1444375))

(declare-fun bm!320553 () Bool)

(declare-fun call!320558 () Bool)

(declare-datatypes ((List!51140 0))(
  ( (Nil!51016) (Cons!51016 (h!56966 K!12383) (t!358134 List!51140)) )
))
(declare-fun e!2863628 () List!51140)

(declare-fun contains!13936 (List!51140 K!12383) Bool)

(assert (=> bm!320553 (= call!320558 (contains!13936 e!2863628 key!3287))))

(declare-fun c!786297 () Bool)

(declare-fun c!786298 () Bool)

(assert (=> bm!320553 (= c!786297 c!786298)))

(declare-fun b!4591457 () Bool)

(declare-fun e!2863627 () Unit!107446)

(declare-fun lt!1753520 () Unit!107446)

(assert (=> b!4591457 (= e!2863627 lt!1753520)))

(declare-fun lt!1753526 () Unit!107446)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1182 (List!51136 K!12383) Unit!107446)

(assert (=> b!4591457 (= lt!1753526 (lemmaContainsKeyImpliesGetValueByKeyDefined!1182 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) key!3287))))

(declare-datatypes ((Option!11358 0))(
  ( (None!11357) (Some!11357 (v!45279 V!12629)) )
))
(declare-fun isDefined!8626 (Option!11358) Bool)

(declare-fun getValueByKey!1278 (List!51136 K!12383) Option!11358)

(assert (=> b!4591457 (isDefined!8626 (getValueByKey!1278 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) key!3287))))

(declare-fun lt!1753521 () Unit!107446)

(assert (=> b!4591457 (= lt!1753521 lt!1753526)))

(declare-fun lemmaInListThenGetKeysListContains!552 (List!51136 K!12383) Unit!107446)

(assert (=> b!4591457 (= lt!1753520 (lemmaInListThenGetKeysListContains!552 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) key!3287))))

(assert (=> b!4591457 call!320558))

(declare-fun b!4591458 () Bool)

(declare-fun e!2863626 () Unit!107446)

(declare-fun Unit!107456 () Unit!107446)

(assert (=> b!4591458 (= e!2863626 Unit!107456)))

(declare-fun b!4591459 () Bool)

(declare-fun keys!17841 (ListMap!3863) List!51140)

(assert (=> b!4591459 (= e!2863628 (keys!17841 (extractMap!1353 (toList!4601 lm!1477))))))

(declare-fun b!4591460 () Bool)

(declare-fun e!2863623 () Bool)

(declare-fun e!2863624 () Bool)

(assert (=> b!4591460 (= e!2863623 e!2863624)))

(declare-fun res!1919569 () Bool)

(assert (=> b!4591460 (=> (not res!1919569) (not e!2863624))))

(assert (=> b!4591460 (= res!1919569 (isDefined!8626 (getValueByKey!1278 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) key!3287)))))

(declare-fun b!4591461 () Bool)

(declare-fun e!2863625 () Bool)

(assert (=> b!4591461 (= e!2863625 (not (contains!13936 (keys!17841 (extractMap!1353 (toList!4601 lm!1477))) key!3287)))))

(declare-fun b!4591462 () Bool)

(assert (=> b!4591462 false))

(declare-fun lt!1753522 () Unit!107446)

(declare-fun lt!1753524 () Unit!107446)

(assert (=> b!4591462 (= lt!1753522 lt!1753524)))

(declare-fun containsKey!2101 (List!51136 K!12383) Bool)

(assert (=> b!4591462 (containsKey!2101 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!555 (List!51136 K!12383) Unit!107446)

(assert (=> b!4591462 (= lt!1753524 (lemmaInGetKeysListThenContainsKey!555 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) key!3287))))

(declare-fun Unit!107457 () Unit!107446)

(assert (=> b!4591462 (= e!2863626 Unit!107457)))

(declare-fun b!4591463 () Bool)

(assert (=> b!4591463 (= e!2863624 (contains!13936 (keys!17841 (extractMap!1353 (toList!4601 lm!1477))) key!3287))))

(declare-fun b!4591464 () Bool)

(declare-fun getKeysList!556 (List!51136) List!51140)

(assert (=> b!4591464 (= e!2863628 (getKeysList!556 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))))))

(declare-fun b!4591465 () Bool)

(assert (=> b!4591465 (= e!2863627 e!2863626)))

(declare-fun c!786299 () Bool)

(assert (=> b!4591465 (= c!786299 call!320558)))

(declare-fun d!1444377 () Bool)

(assert (=> d!1444377 e!2863623))

(declare-fun res!1919568 () Bool)

(assert (=> d!1444377 (=> res!1919568 e!2863623)))

(assert (=> d!1444377 (= res!1919568 e!2863625)))

(declare-fun res!1919567 () Bool)

(assert (=> d!1444377 (=> (not res!1919567) (not e!2863625))))

(declare-fun lt!1753527 () Bool)

(assert (=> d!1444377 (= res!1919567 (not lt!1753527))))

(declare-fun lt!1753523 () Bool)

(assert (=> d!1444377 (= lt!1753527 lt!1753523)))

(declare-fun lt!1753525 () Unit!107446)

(assert (=> d!1444377 (= lt!1753525 e!2863627)))

(assert (=> d!1444377 (= c!786298 lt!1753523)))

(assert (=> d!1444377 (= lt!1753523 (containsKey!2101 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) key!3287))))

(assert (=> d!1444377 (= (contains!13932 (extractMap!1353 (toList!4601 lm!1477)) key!3287) lt!1753527)))

(assert (= (and d!1444377 c!786298) b!4591457))

(assert (= (and d!1444377 (not c!786298)) b!4591465))

(assert (= (and b!4591465 c!786299) b!4591462))

(assert (= (and b!4591465 (not c!786299)) b!4591458))

(assert (= (or b!4591457 b!4591465) bm!320553))

(assert (= (and bm!320553 c!786297) b!4591464))

(assert (= (and bm!320553 (not c!786297)) b!4591459))

(assert (= (and d!1444377 res!1919567) b!4591461))

(assert (= (and d!1444377 (not res!1919568)) b!4591460))

(assert (= (and b!4591460 res!1919569) b!4591463))

(declare-fun m!5414757 () Bool)

(assert (=> b!4591464 m!5414757))

(assert (=> b!4591459 m!5414579))

(declare-fun m!5414759 () Bool)

(assert (=> b!4591459 m!5414759))

(assert (=> b!4591463 m!5414579))

(assert (=> b!4591463 m!5414759))

(assert (=> b!4591463 m!5414759))

(declare-fun m!5414761 () Bool)

(assert (=> b!4591463 m!5414761))

(declare-fun m!5414763 () Bool)

(assert (=> d!1444377 m!5414763))

(declare-fun m!5414765 () Bool)

(assert (=> b!4591457 m!5414765))

(declare-fun m!5414767 () Bool)

(assert (=> b!4591457 m!5414767))

(assert (=> b!4591457 m!5414767))

(declare-fun m!5414769 () Bool)

(assert (=> b!4591457 m!5414769))

(declare-fun m!5414771 () Bool)

(assert (=> b!4591457 m!5414771))

(assert (=> b!4591462 m!5414763))

(declare-fun m!5414773 () Bool)

(assert (=> b!4591462 m!5414773))

(assert (=> b!4591461 m!5414579))

(assert (=> b!4591461 m!5414759))

(assert (=> b!4591461 m!5414759))

(assert (=> b!4591461 m!5414761))

(declare-fun m!5414775 () Bool)

(assert (=> bm!320553 m!5414775))

(assert (=> b!4591460 m!5414767))

(assert (=> b!4591460 m!5414767))

(assert (=> b!4591460 m!5414769))

(assert (=> b!4591265 d!1444377))

(declare-fun bs!1008014 () Bool)

(declare-fun d!1444391 () Bool)

(assert (= bs!1008014 (and d!1444391 start!457374)))

(declare-fun lambda!184864 () Int)

(assert (=> bs!1008014 (= lambda!184864 lambda!184835)))

(declare-fun bs!1008015 () Bool)

(assert (= bs!1008015 (and d!1444391 d!1444345)))

(assert (=> bs!1008015 (= lambda!184864 lambda!184849)))

(declare-fun bs!1008016 () Bool)

(assert (= bs!1008016 (and d!1444391 d!1444353)))

(assert (=> bs!1008016 (= lambda!184864 lambda!184852)))

(declare-fun lt!1753554 () ListMap!3863)

(declare-fun invariantList!1108 (List!51136) Bool)

(assert (=> d!1444391 (invariantList!1108 (toList!4602 lt!1753554))))

(declare-fun e!2863649 () ListMap!3863)

(assert (=> d!1444391 (= lt!1753554 e!2863649)))

(declare-fun c!786311 () Bool)

(assert (=> d!1444391 (= c!786311 (is-Cons!51013 (toList!4601 lm!1477)))))

(assert (=> d!1444391 (forall!10545 (toList!4601 lm!1477) lambda!184864)))

(assert (=> d!1444391 (= (extractMap!1353 (toList!4601 lm!1477)) lt!1753554)))

(declare-fun b!4591497 () Bool)

(declare-fun addToMapMapFromBucket!798 (List!51136 ListMap!3863) ListMap!3863)

(assert (=> b!4591497 (= e!2863649 (addToMapMapFromBucket!798 (_2!29106 (h!56961 (toList!4601 lm!1477))) (extractMap!1353 (t!358131 (toList!4601 lm!1477)))))))

(declare-fun b!4591498 () Bool)

(assert (=> b!4591498 (= e!2863649 (ListMap!3864 Nil!51012))))

(assert (= (and d!1444391 c!786311) b!4591497))

(assert (= (and d!1444391 (not c!786311)) b!4591498))

(declare-fun m!5414797 () Bool)

(assert (=> d!1444391 m!5414797))

(declare-fun m!5414799 () Bool)

(assert (=> d!1444391 m!5414799))

(declare-fun m!5414801 () Bool)

(assert (=> b!4591497 m!5414801))

(assert (=> b!4591497 m!5414801))

(declare-fun m!5414803 () Bool)

(assert (=> b!4591497 m!5414803))

(assert (=> b!4591265 d!1444391))

(declare-fun d!1444395 () Bool)

(assert (=> d!1444395 (= (inv!66568 (ListLongMap!3234 lt!1753410)) (isStrictlySorted!523 (toList!4601 (ListLongMap!3234 lt!1753410))))))

(declare-fun bs!1008017 () Bool)

(assert (= bs!1008017 d!1444395))

(declare-fun m!5414805 () Bool)

(assert (=> bs!1008017 m!5414805))

(assert (=> b!4591270 d!1444395))

(declare-fun d!1444397 () Bool)

(declare-fun res!1919583 () Bool)

(declare-fun e!2863654 () Bool)

(assert (=> d!1444397 (=> res!1919583 e!2863654)))

(assert (=> d!1444397 (= res!1919583 (and (is-Cons!51012 (_2!29106 (h!56961 (toList!4601 lm!1477)))) (= (_1!29105 (h!56960 (_2!29106 (h!56961 (toList!4601 lm!1477))))) key!3287)))))

(assert (=> d!1444397 (= (containsKey!2097 (_2!29106 (h!56961 (toList!4601 lm!1477))) key!3287) e!2863654)))

(declare-fun b!4591503 () Bool)

(declare-fun e!2863655 () Bool)

(assert (=> b!4591503 (= e!2863654 e!2863655)))

(declare-fun res!1919584 () Bool)

(assert (=> b!4591503 (=> (not res!1919584) (not e!2863655))))

(assert (=> b!4591503 (= res!1919584 (is-Cons!51012 (_2!29106 (h!56961 (toList!4601 lm!1477)))))))

(declare-fun b!4591504 () Bool)

(assert (=> b!4591504 (= e!2863655 (containsKey!2097 (t!358130 (_2!29106 (h!56961 (toList!4601 lm!1477)))) key!3287))))

(assert (= (and d!1444397 (not res!1919583)) b!4591503))

(assert (= (and b!4591503 res!1919584) b!4591504))

(declare-fun m!5414807 () Bool)

(assert (=> b!4591504 m!5414807))

(assert (=> b!4591271 d!1444397))

(declare-fun bs!1008018 () Bool)

(declare-fun d!1444399 () Bool)

(assert (= bs!1008018 (and d!1444399 start!457374)))

(declare-fun lambda!184867 () Int)

(assert (=> bs!1008018 (not (= lambda!184867 lambda!184835))))

(declare-fun bs!1008019 () Bool)

(assert (= bs!1008019 (and d!1444399 d!1444345)))

(assert (=> bs!1008019 (not (= lambda!184867 lambda!184849))))

(declare-fun bs!1008020 () Bool)

(assert (= bs!1008020 (and d!1444399 d!1444353)))

(assert (=> bs!1008020 (not (= lambda!184867 lambda!184852))))

(declare-fun bs!1008021 () Bool)

(assert (= bs!1008021 (and d!1444399 d!1444391)))

(assert (=> bs!1008021 (not (= lambda!184867 lambda!184864))))

(assert (=> d!1444399 true))

(assert (=> d!1444399 (= (allKeysSameHashInMap!1404 lm!1477 hashF!1107) (forall!10545 (toList!4601 lm!1477) lambda!184867))))

(declare-fun bs!1008022 () Bool)

(assert (= bs!1008022 d!1444399))

(declare-fun m!5414809 () Bool)

(assert (=> bs!1008022 m!5414809))

(assert (=> b!4591260 d!1444399))

(declare-fun e!2863658 () Bool)

(declare-fun b!4591511 () Bool)

(declare-fun tp!1340074 () Bool)

(assert (=> b!4591511 (= e!2863658 (and tp_is_empty!28465 tp_is_empty!28467 tp!1340074))))

(assert (=> b!4591267 (= tp!1340064 e!2863658)))

(assert (= (and b!4591267 (is-Cons!51012 (t!358130 newBucket!178))) b!4591511))

(declare-fun b!4591516 () Bool)

(declare-fun e!2863661 () Bool)

(declare-fun tp!1340079 () Bool)

(declare-fun tp!1340080 () Bool)

(assert (=> b!4591516 (= e!2863661 (and tp!1340079 tp!1340080))))

(assert (=> b!4591262 (= tp!1340065 e!2863661)))

(assert (= (and b!4591262 (is-Cons!51013 (toList!4601 lm!1477))) b!4591516))

(declare-fun b_lambda!168505 () Bool)

(assert (= b_lambda!168503 (or start!457374 b_lambda!168505)))

(declare-fun bs!1008023 () Bool)

(declare-fun d!1444401 () Bool)

(assert (= bs!1008023 (and d!1444401 start!457374)))

(assert (=> bs!1008023 (= (dynLambda!21363 lambda!184835 (h!56961 (toList!4601 lm!1477))) (noDuplicateKeys!1293 (_2!29106 (h!56961 (toList!4601 lm!1477)))))))

(declare-fun m!5414811 () Bool)

(assert (=> bs!1008023 m!5414811))

(assert (=> b!4591421 d!1444401))

(declare-fun b_lambda!168507 () Bool)

(assert (= b_lambda!168497 (or start!457374 b_lambda!168507)))

(declare-fun bs!1008024 () Bool)

(declare-fun d!1444403 () Bool)

(assert (= bs!1008024 (and d!1444403 start!457374)))

(assert (=> bs!1008024 (= (dynLambda!21363 lambda!184835 lt!1753412) (noDuplicateKeys!1293 (_2!29106 lt!1753412)))))

(declare-fun m!5414813 () Bool)

(assert (=> bs!1008024 m!5414813))

(assert (=> d!1444331 d!1444403))

(push 1)

(assert (not bs!1008024))

(assert (not d!1444337))

(assert (not d!1444353))

(assert (not b!4591370))

(assert (not d!1444395))

(assert (not d!1444341))

(assert tp_is_empty!28465)

(assert (not d!1444349))

(assert (not b!4591504))

(assert (not d!1444391))

(assert (not b!4591323))

(assert (not b!4591406))

(assert (not b!4591461))

(assert (not b!4591328))

(assert (not b!4591415))

(assert (not b!4591462))

(assert (not b!4591497))

(assert (not b!4591459))

(assert (not b!4591416))

(assert (not d!1444399))

(assert (not b!4591422))

(assert (not b!4591516))

(assert (not b!4591511))

(assert (not b!4591325))

(assert (not bm!320553))

(assert (not b!4591463))

(assert (not d!1444333))

(assert (not b!4591334))

(assert (not d!1444325))

(assert (not b_lambda!168507))

(assert (not b!4591464))

(assert (not b!4591357))

(assert (not b!4591460))

(assert (not bs!1008023))

(assert (not d!1444377))

(assert (not d!1444375))

(assert (not b!4591457))

(assert (not d!1444331))

(assert tp_is_empty!28467)

(assert (not b!4591404))

(assert (not d!1444345))

(assert (not b_lambda!168505))

(assert (not d!1444371))

(assert (not d!1444367))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1444409 () Bool)

(declare-fun c!786317 () Bool)

(assert (=> d!1444409 (= c!786317 (is-Nil!51013 (toList!4601 lm!1477)))))

(declare-fun e!2863673 () (Set tuple2!51624))

(assert (=> d!1444409 (= (content!8609 (toList!4601 lm!1477)) e!2863673)))

(declare-fun b!4591537 () Bool)

(assert (=> b!4591537 (= e!2863673 (as set.empty (Set tuple2!51624)))))

(declare-fun b!4591538 () Bool)

(assert (=> b!4591538 (= e!2863673 (set.union (set.insert (h!56961 (toList!4601 lm!1477)) (as set.empty (Set tuple2!51624))) (content!8609 (t!358131 (toList!4601 lm!1477)))))))

(assert (= (and d!1444409 c!786317) b!4591537))

(assert (= (and d!1444409 (not c!786317)) b!4591538))

(declare-fun m!5414827 () Bool)

(assert (=> b!4591538 m!5414827))

(declare-fun m!5414829 () Bool)

(assert (=> b!4591538 m!5414829))

(assert (=> d!1444337 d!1444409))

(declare-fun d!1444411 () Bool)

(declare-fun res!1919589 () Bool)

(declare-fun e!2863678 () Bool)

(assert (=> d!1444411 (=> res!1919589 e!2863678)))

(assert (=> d!1444411 (= res!1919589 (or (is-Nil!51013 (toList!4601 (ListLongMap!3234 lt!1753410))) (is-Nil!51013 (t!358131 (toList!4601 (ListLongMap!3234 lt!1753410))))))))

(assert (=> d!1444411 (= (isStrictlySorted!523 (toList!4601 (ListLongMap!3234 lt!1753410))) e!2863678)))

(declare-fun b!4591543 () Bool)

(declare-fun e!2863679 () Bool)

(assert (=> b!4591543 (= e!2863678 e!2863679)))

(declare-fun res!1919590 () Bool)

(assert (=> b!4591543 (=> (not res!1919590) (not e!2863679))))

(assert (=> b!4591543 (= res!1919590 (bvslt (_1!29106 (h!56961 (toList!4601 (ListLongMap!3234 lt!1753410)))) (_1!29106 (h!56961 (t!358131 (toList!4601 (ListLongMap!3234 lt!1753410)))))))))

(declare-fun b!4591544 () Bool)

(assert (=> b!4591544 (= e!2863679 (isStrictlySorted!523 (t!358131 (toList!4601 (ListLongMap!3234 lt!1753410)))))))

(assert (= (and d!1444411 (not res!1919589)) b!4591543))

(assert (= (and b!4591543 res!1919590) b!4591544))

(declare-fun m!5414831 () Bool)

(assert (=> b!4591544 m!5414831))

(assert (=> d!1444395 d!1444411))

(declare-fun d!1444413 () Bool)

(declare-fun res!1919591 () Bool)

(declare-fun e!2863680 () Bool)

(assert (=> d!1444413 (=> res!1919591 e!2863680)))

(assert (=> d!1444413 (= res!1919591 (and (is-Cons!51012 lt!1753470) (= (_1!29105 (h!56960 lt!1753470)) key!3287)))))

(assert (=> d!1444413 (= (containsKey!2097 lt!1753470 key!3287) e!2863680)))

(declare-fun b!4591545 () Bool)

(declare-fun e!2863681 () Bool)

(assert (=> b!4591545 (= e!2863680 e!2863681)))

(declare-fun res!1919592 () Bool)

(assert (=> b!4591545 (=> (not res!1919592) (not e!2863681))))

(assert (=> b!4591545 (= res!1919592 (is-Cons!51012 lt!1753470))))

(declare-fun b!4591546 () Bool)

(assert (=> b!4591546 (= e!2863681 (containsKey!2097 (t!358130 lt!1753470) key!3287))))

(assert (= (and d!1444413 (not res!1919591)) b!4591545))

(assert (= (and b!4591545 res!1919592) b!4591546))

(declare-fun m!5414833 () Bool)

(assert (=> b!4591546 m!5414833))

(assert (=> d!1444341 d!1444413))

(declare-fun d!1444415 () Bool)

(declare-fun res!1919593 () Bool)

(declare-fun e!2863682 () Bool)

(assert (=> d!1444415 (=> res!1919593 e!2863682)))

(assert (=> d!1444415 (= res!1919593 (not (is-Cons!51012 lt!1753411)))))

(assert (=> d!1444415 (= (noDuplicateKeys!1293 lt!1753411) e!2863682)))

(declare-fun b!4591547 () Bool)

(declare-fun e!2863683 () Bool)

(assert (=> b!4591547 (= e!2863682 e!2863683)))

(declare-fun res!1919594 () Bool)

(assert (=> b!4591547 (=> (not res!1919594) (not e!2863683))))

(assert (=> b!4591547 (= res!1919594 (not (containsKey!2097 (t!358130 lt!1753411) (_1!29105 (h!56960 lt!1753411)))))))

(declare-fun b!4591548 () Bool)

(assert (=> b!4591548 (= e!2863683 (noDuplicateKeys!1293 (t!358130 lt!1753411)))))

(assert (= (and d!1444415 (not res!1919593)) b!4591547))

(assert (= (and b!4591547 res!1919594) b!4591548))

(declare-fun m!5414835 () Bool)

(assert (=> b!4591547 m!5414835))

(declare-fun m!5414837 () Bool)

(assert (=> b!4591548 m!5414837))

(assert (=> d!1444341 d!1444415))

(declare-fun d!1444417 () Bool)

(declare-fun res!1919595 () Bool)

(declare-fun e!2863684 () Bool)

(assert (=> d!1444417 (=> res!1919595 e!2863684)))

(assert (=> d!1444417 (= res!1919595 (or (is-Nil!51013 (toList!4601 lm!1477)) (is-Nil!51013 (t!358131 (toList!4601 lm!1477)))))))

(assert (=> d!1444417 (= (isStrictlySorted!523 (toList!4601 lm!1477)) e!2863684)))

(declare-fun b!4591549 () Bool)

(declare-fun e!2863685 () Bool)

(assert (=> b!4591549 (= e!2863684 e!2863685)))

(declare-fun res!1919596 () Bool)

(assert (=> b!4591549 (=> (not res!1919596) (not e!2863685))))

(assert (=> b!4591549 (= res!1919596 (bvslt (_1!29106 (h!56961 (toList!4601 lm!1477))) (_1!29106 (h!56961 (t!358131 (toList!4601 lm!1477))))))))

(declare-fun b!4591550 () Bool)

(assert (=> b!4591550 (= e!2863685 (isStrictlySorted!523 (t!358131 (toList!4601 lm!1477))))))

(assert (= (and d!1444417 (not res!1919595)) b!4591549))

(assert (= (and b!4591549 res!1919596) b!4591550))

(declare-fun m!5414839 () Bool)

(assert (=> b!4591550 m!5414839))

(assert (=> d!1444375 d!1444417))

(declare-fun d!1444419 () Bool)

(assert (=> d!1444419 (dynLambda!21363 lambda!184835 lt!1753412)))

(assert (=> d!1444419 true))

(declare-fun _$7!2096 () Unit!107446)

(assert (=> d!1444419 (= (choose!30653 (toList!4601 lm!1477) lambda!184835 lt!1753412) _$7!2096)))

(declare-fun b_lambda!168513 () Bool)

(assert (=> (not b_lambda!168513) (not d!1444419)))

(declare-fun bs!1008031 () Bool)

(assert (= bs!1008031 d!1444419))

(assert (=> bs!1008031 m!5414641))

(assert (=> d!1444331 d!1444419))

(assert (=> d!1444331 d!1444373))

(declare-fun d!1444421 () Bool)

(declare-fun res!1919601 () Bool)

(declare-fun e!2863690 () Bool)

(assert (=> d!1444421 (=> res!1919601 e!2863690)))

(assert (=> d!1444421 (= res!1919601 (is-Nil!51012 newBucket!178))))

(assert (=> d!1444421 (= (forall!10547 newBucket!178 lambda!184855) e!2863690)))

(declare-fun b!4591555 () Bool)

(declare-fun e!2863691 () Bool)

(assert (=> b!4591555 (= e!2863690 e!2863691)))

(declare-fun res!1919602 () Bool)

(assert (=> b!4591555 (=> (not res!1919602) (not e!2863691))))

(declare-fun dynLambda!21365 (Int tuple2!51622) Bool)

(assert (=> b!4591555 (= res!1919602 (dynLambda!21365 lambda!184855 (h!56960 newBucket!178)))))

(declare-fun b!4591556 () Bool)

(assert (=> b!4591556 (= e!2863691 (forall!10547 (t!358130 newBucket!178) lambda!184855))))

(assert (= (and d!1444421 (not res!1919601)) b!4591555))

(assert (= (and b!4591555 res!1919602) b!4591556))

(declare-fun b_lambda!168515 () Bool)

(assert (=> (not b_lambda!168515) (not b!4591555)))

(declare-fun m!5414841 () Bool)

(assert (=> b!4591555 m!5414841))

(declare-fun m!5414843 () Bool)

(assert (=> b!4591556 m!5414843))

(assert (=> d!1444367 d!1444421))

(declare-fun d!1444423 () Bool)

(declare-fun choose!30661 (Hashable!5692 K!12383) (_ BitVec 64))

(assert (=> d!1444423 (= (hash!3168 hashF!1107 key!3287) (choose!30661 hashF!1107 key!3287))))

(declare-fun bs!1008032 () Bool)

(assert (= bs!1008032 d!1444423))

(declare-fun m!5414845 () Bool)

(assert (=> bs!1008032 m!5414845))

(assert (=> d!1444371 d!1444423))

(declare-fun d!1444425 () Bool)

(declare-fun lt!1753560 () Bool)

(declare-fun content!8611 (List!51140) (Set K!12383))

(assert (=> d!1444425 (= lt!1753560 (set.member key!3287 (content!8611 e!2863628)))))

(declare-fun e!2863696 () Bool)

(assert (=> d!1444425 (= lt!1753560 e!2863696)))

(declare-fun res!1919608 () Bool)

(assert (=> d!1444425 (=> (not res!1919608) (not e!2863696))))

(assert (=> d!1444425 (= res!1919608 (is-Cons!51016 e!2863628))))

(assert (=> d!1444425 (= (contains!13936 e!2863628 key!3287) lt!1753560)))

(declare-fun b!4591561 () Bool)

(declare-fun e!2863697 () Bool)

(assert (=> b!4591561 (= e!2863696 e!2863697)))

(declare-fun res!1919607 () Bool)

(assert (=> b!4591561 (=> res!1919607 e!2863697)))

(assert (=> b!4591561 (= res!1919607 (= (h!56966 e!2863628) key!3287))))

(declare-fun b!4591562 () Bool)

(assert (=> b!4591562 (= e!2863697 (contains!13936 (t!358134 e!2863628) key!3287))))

(assert (= (and d!1444425 res!1919608) b!4591561))

(assert (= (and b!4591561 (not res!1919607)) b!4591562))

(declare-fun m!5414847 () Bool)

(assert (=> d!1444425 m!5414847))

(declare-fun m!5414849 () Bool)

(assert (=> d!1444425 m!5414849))

(declare-fun m!5414851 () Bool)

(assert (=> b!4591562 m!5414851))

(assert (=> bm!320553 d!1444425))

(declare-fun d!1444427 () Bool)

(declare-fun res!1919609 () Bool)

(declare-fun e!2863698 () Bool)

(assert (=> d!1444427 (=> res!1919609 e!2863698)))

(assert (=> d!1444427 (= res!1919609 (and (is-Cons!51012 (t!358130 (_2!29106 (h!56961 (toList!4601 lm!1477))))) (= (_1!29105 (h!56960 (t!358130 (_2!29106 (h!56961 (toList!4601 lm!1477)))))) key!3287)))))

(assert (=> d!1444427 (= (containsKey!2097 (t!358130 (_2!29106 (h!56961 (toList!4601 lm!1477)))) key!3287) e!2863698)))

(declare-fun b!4591563 () Bool)

(declare-fun e!2863699 () Bool)

(assert (=> b!4591563 (= e!2863698 e!2863699)))

(declare-fun res!1919610 () Bool)

(assert (=> b!4591563 (=> (not res!1919610) (not e!2863699))))

(assert (=> b!4591563 (= res!1919610 (is-Cons!51012 (t!358130 (_2!29106 (h!56961 (toList!4601 lm!1477))))))))

(declare-fun b!4591564 () Bool)

(assert (=> b!4591564 (= e!2863699 (containsKey!2097 (t!358130 (t!358130 (_2!29106 (h!56961 (toList!4601 lm!1477))))) key!3287))))

(assert (= (and d!1444427 (not res!1919609)) b!4591563))

(assert (= (and b!4591563 res!1919610) b!4591564))

(declare-fun m!5414853 () Bool)

(assert (=> b!4591564 m!5414853))

(assert (=> b!4591504 d!1444427))

(declare-fun b!4591568 () Bool)

(declare-fun e!2863701 () List!51136)

(assert (=> b!4591568 (= e!2863701 Nil!51012)))

(declare-fun b!4591567 () Bool)

(assert (=> b!4591567 (= e!2863701 (Cons!51012 (h!56960 (t!358130 lt!1753411)) (removePairForKey!918 (t!358130 (t!358130 lt!1753411)) key!3287)))))

(declare-fun b!4591565 () Bool)

(declare-fun e!2863700 () List!51136)

(assert (=> b!4591565 (= e!2863700 (t!358130 (t!358130 lt!1753411)))))

(declare-fun d!1444429 () Bool)

(declare-fun lt!1753561 () List!51136)

(assert (=> d!1444429 (not (containsKey!2097 lt!1753561 key!3287))))

(assert (=> d!1444429 (= lt!1753561 e!2863700)))

(declare-fun c!786319 () Bool)

(assert (=> d!1444429 (= c!786319 (and (is-Cons!51012 (t!358130 lt!1753411)) (= (_1!29105 (h!56960 (t!358130 lt!1753411))) key!3287)))))

(assert (=> d!1444429 (noDuplicateKeys!1293 (t!358130 lt!1753411))))

(assert (=> d!1444429 (= (removePairForKey!918 (t!358130 lt!1753411) key!3287) lt!1753561)))

(declare-fun b!4591566 () Bool)

(assert (=> b!4591566 (= e!2863700 e!2863701)))

(declare-fun c!786318 () Bool)

(assert (=> b!4591566 (= c!786318 (is-Cons!51012 (t!358130 lt!1753411)))))

(assert (= (and d!1444429 c!786319) b!4591565))

(assert (= (and d!1444429 (not c!786319)) b!4591566))

(assert (= (and b!4591566 c!786318) b!4591567))

(assert (= (and b!4591566 (not c!786318)) b!4591568))

(declare-fun m!5414855 () Bool)

(assert (=> b!4591567 m!5414855))

(declare-fun m!5414857 () Bool)

(assert (=> d!1444429 m!5414857))

(assert (=> d!1444429 m!5414837))

(assert (=> b!4591357 d!1444429))

(declare-fun d!1444431 () Bool)

(assert (=> d!1444431 (isDefined!8626 (getValueByKey!1278 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) key!3287))))

(declare-fun lt!1753564 () Unit!107446)

(declare-fun choose!30662 (List!51136 K!12383) Unit!107446)

(assert (=> d!1444431 (= lt!1753564 (choose!30662 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) key!3287))))

(assert (=> d!1444431 (invariantList!1108 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))))))

(assert (=> d!1444431 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1182 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) key!3287) lt!1753564)))

(declare-fun bs!1008033 () Bool)

(assert (= bs!1008033 d!1444431))

(assert (=> bs!1008033 m!5414767))

(assert (=> bs!1008033 m!5414767))

(assert (=> bs!1008033 m!5414769))

(declare-fun m!5414859 () Bool)

(assert (=> bs!1008033 m!5414859))

(declare-fun m!5414861 () Bool)

(assert (=> bs!1008033 m!5414861))

(assert (=> b!4591457 d!1444431))

(declare-fun d!1444433 () Bool)

(declare-fun isEmpty!28840 (Option!11358) Bool)

(assert (=> d!1444433 (= (isDefined!8626 (getValueByKey!1278 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) key!3287)) (not (isEmpty!28840 (getValueByKey!1278 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) key!3287))))))

(declare-fun bs!1008034 () Bool)

(assert (= bs!1008034 d!1444433))

(assert (=> bs!1008034 m!5414767))

(declare-fun m!5414863 () Bool)

(assert (=> bs!1008034 m!5414863))

(assert (=> b!4591457 d!1444433))

(declare-fun b!4591580 () Bool)

(declare-fun e!2863707 () Option!11358)

(assert (=> b!4591580 (= e!2863707 None!11357)))

(declare-fun b!4591579 () Bool)

(assert (=> b!4591579 (= e!2863707 (getValueByKey!1278 (t!358130 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))) key!3287))))

(declare-fun b!4591577 () Bool)

(declare-fun e!2863706 () Option!11358)

(assert (=> b!4591577 (= e!2863706 (Some!11357 (_2!29105 (h!56960 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))))))))

(declare-fun d!1444435 () Bool)

(declare-fun c!786324 () Bool)

(assert (=> d!1444435 (= c!786324 (and (is-Cons!51012 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))) (= (_1!29105 (h!56960 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))))) key!3287)))))

(assert (=> d!1444435 (= (getValueByKey!1278 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) key!3287) e!2863706)))

(declare-fun b!4591578 () Bool)

(assert (=> b!4591578 (= e!2863706 e!2863707)))

(declare-fun c!786325 () Bool)

(assert (=> b!4591578 (= c!786325 (and (is-Cons!51012 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))) (not (= (_1!29105 (h!56960 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))))) key!3287))))))

(assert (= (and d!1444435 c!786324) b!4591577))

(assert (= (and d!1444435 (not c!786324)) b!4591578))

(assert (= (and b!4591578 c!786325) b!4591579))

(assert (= (and b!4591578 (not c!786325)) b!4591580))

(declare-fun m!5414865 () Bool)

(assert (=> b!4591579 m!5414865))

(assert (=> b!4591457 d!1444435))

(declare-fun d!1444437 () Bool)

(assert (=> d!1444437 (contains!13936 (getKeysList!556 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))) key!3287)))

(declare-fun lt!1753567 () Unit!107446)

(declare-fun choose!30663 (List!51136 K!12383) Unit!107446)

(assert (=> d!1444437 (= lt!1753567 (choose!30663 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) key!3287))))

(assert (=> d!1444437 (invariantList!1108 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))))))

(assert (=> d!1444437 (= (lemmaInListThenGetKeysListContains!552 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) key!3287) lt!1753567)))

(declare-fun bs!1008035 () Bool)

(assert (= bs!1008035 d!1444437))

(assert (=> bs!1008035 m!5414757))

(assert (=> bs!1008035 m!5414757))

(declare-fun m!5414867 () Bool)

(assert (=> bs!1008035 m!5414867))

(declare-fun m!5414869 () Bool)

(assert (=> bs!1008035 m!5414869))

(assert (=> bs!1008035 m!5414861))

(assert (=> b!4591457 d!1444437))

(declare-fun b!4591591 () Bool)

(declare-fun e!2863713 () Option!11356)

(assert (=> b!4591591 (= e!2863713 (getValueByKey!1276 (t!358131 (toList!4601 lm!1477)) hash!344))))

(declare-fun b!4591590 () Bool)

(declare-fun e!2863712 () Option!11356)

(assert (=> b!4591590 (= e!2863712 e!2863713)))

(declare-fun c!786331 () Bool)

(assert (=> b!4591590 (= c!786331 (and (is-Cons!51013 (toList!4601 lm!1477)) (not (= (_1!29106 (h!56961 (toList!4601 lm!1477))) hash!344))))))

(declare-fun b!4591589 () Bool)

(assert (=> b!4591589 (= e!2863712 (Some!11355 (_2!29106 (h!56961 (toList!4601 lm!1477)))))))

(declare-fun b!4591592 () Bool)

(assert (=> b!4591592 (= e!2863713 None!11355)))

(declare-fun d!1444439 () Bool)

(declare-fun c!786330 () Bool)

(assert (=> d!1444439 (= c!786330 (and (is-Cons!51013 (toList!4601 lm!1477)) (= (_1!29106 (h!56961 (toList!4601 lm!1477))) hash!344)))))

(assert (=> d!1444439 (= (getValueByKey!1276 (toList!4601 lm!1477) hash!344) e!2863712)))

(assert (= (and d!1444439 c!786330) b!4591589))

(assert (= (and d!1444439 (not c!786330)) b!4591590))

(assert (= (and b!4591590 c!786331) b!4591591))

(assert (= (and b!4591590 (not c!786331)) b!4591592))

(declare-fun m!5414871 () Bool)

(assert (=> b!4591591 m!5414871))

(assert (=> b!4591370 d!1444439))

(declare-fun bs!1008046 () Bool)

(declare-fun b!4591702 () Bool)

(assert (= bs!1008046 (and b!4591702 d!1444367)))

(declare-fun lambda!184905 () Int)

(assert (=> bs!1008046 (not (= lambda!184905 lambda!184855))))

(assert (=> b!4591702 true))

(declare-fun bs!1008047 () Bool)

(declare-fun b!4591706 () Bool)

(assert (= bs!1008047 (and b!4591706 d!1444367)))

(declare-fun lambda!184906 () Int)

(assert (=> bs!1008047 (not (= lambda!184906 lambda!184855))))

(declare-fun bs!1008048 () Bool)

(assert (= bs!1008048 (and b!4591706 b!4591702)))

(assert (=> bs!1008048 (= lambda!184906 lambda!184905)))

(assert (=> b!4591706 true))

(declare-fun lambda!184907 () Int)

(assert (=> bs!1008047 (not (= lambda!184907 lambda!184855))))

(declare-fun lt!1753650 () ListMap!3863)

(assert (=> bs!1008048 (= (= lt!1753650 (extractMap!1353 (t!358131 (toList!4601 lm!1477)))) (= lambda!184907 lambda!184905))))

(assert (=> b!4591706 (= (= lt!1753650 (extractMap!1353 (t!358131 (toList!4601 lm!1477)))) (= lambda!184907 lambda!184906))))

(assert (=> b!4591706 true))

(declare-fun bs!1008049 () Bool)

(declare-fun d!1444441 () Bool)

(assert (= bs!1008049 (and d!1444441 d!1444367)))

(declare-fun lambda!184908 () Int)

(assert (=> bs!1008049 (not (= lambda!184908 lambda!184855))))

(declare-fun bs!1008050 () Bool)

(assert (= bs!1008050 (and d!1444441 b!4591702)))

(declare-fun lt!1753639 () ListMap!3863)

(assert (=> bs!1008050 (= (= lt!1753639 (extractMap!1353 (t!358131 (toList!4601 lm!1477)))) (= lambda!184908 lambda!184905))))

(declare-fun bs!1008051 () Bool)

(assert (= bs!1008051 (and d!1444441 b!4591706)))

(assert (=> bs!1008051 (= (= lt!1753639 (extractMap!1353 (t!358131 (toList!4601 lm!1477)))) (= lambda!184908 lambda!184906))))

(assert (=> bs!1008051 (= (= lt!1753639 lt!1753650) (= lambda!184908 lambda!184907))))

(assert (=> d!1444441 true))

(declare-fun e!2863796 () ListMap!3863)

(assert (=> b!4591702 (= e!2863796 (extractMap!1353 (t!358131 (toList!4601 lm!1477))))))

(declare-fun lt!1753636 () Unit!107446)

(declare-fun call!320570 () Unit!107446)

(assert (=> b!4591702 (= lt!1753636 call!320570)))

(declare-fun call!320569 () Bool)

(assert (=> b!4591702 call!320569))

(declare-fun lt!1753646 () Unit!107446)

(assert (=> b!4591702 (= lt!1753646 lt!1753636)))

(declare-fun call!320568 () Bool)

(assert (=> b!4591702 call!320568))

(declare-fun lt!1753645 () Unit!107446)

(declare-fun Unit!107460 () Unit!107446)

(assert (=> b!4591702 (= lt!1753645 Unit!107460)))

(declare-fun c!786351 () Bool)

(declare-fun bm!320563 () Bool)

(assert (=> bm!320563 (= call!320568 (forall!10547 (toList!4602 (extractMap!1353 (t!358131 (toList!4601 lm!1477)))) (ite c!786351 lambda!184905 lambda!184907)))))

(declare-fun bm!320564 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!423 (ListMap!3863) Unit!107446)

(assert (=> bm!320564 (= call!320570 (lemmaContainsAllItsOwnKeys!423 (extractMap!1353 (t!358131 (toList!4601 lm!1477)))))))

(declare-fun bm!320565 () Bool)

(assert (=> bm!320565 (= call!320569 (forall!10547 (ite c!786351 (toList!4602 (extractMap!1353 (t!358131 (toList!4601 lm!1477)))) (_2!29106 (h!56961 (toList!4601 lm!1477)))) (ite c!786351 lambda!184905 lambda!184907)))))

(declare-fun b!4591704 () Bool)

(declare-fun e!2863794 () Bool)

(assert (=> b!4591704 (= e!2863794 (invariantList!1108 (toList!4602 lt!1753639)))))

(declare-fun b!4591705 () Bool)

(declare-fun res!1919682 () Bool)

(assert (=> b!4591705 (=> (not res!1919682) (not e!2863794))))

(assert (=> b!4591705 (= res!1919682 (forall!10547 (toList!4602 (extractMap!1353 (t!358131 (toList!4601 lm!1477)))) lambda!184908))))

(assert (=> b!4591706 (= e!2863796 lt!1753650)))

(declare-fun lt!1753644 () ListMap!3863)

(declare-fun +!1725 (ListMap!3863 tuple2!51622) ListMap!3863)

(assert (=> b!4591706 (= lt!1753644 (+!1725 (extractMap!1353 (t!358131 (toList!4601 lm!1477))) (h!56960 (_2!29106 (h!56961 (toList!4601 lm!1477))))))))

(assert (=> b!4591706 (= lt!1753650 (addToMapMapFromBucket!798 (t!358130 (_2!29106 (h!56961 (toList!4601 lm!1477)))) (+!1725 (extractMap!1353 (t!358131 (toList!4601 lm!1477))) (h!56960 (_2!29106 (h!56961 (toList!4601 lm!1477)))))))))

(declare-fun lt!1753642 () Unit!107446)

(assert (=> b!4591706 (= lt!1753642 call!320570)))

(assert (=> b!4591706 (forall!10547 (toList!4602 (extractMap!1353 (t!358131 (toList!4601 lm!1477)))) lambda!184906)))

(declare-fun lt!1753647 () Unit!107446)

(assert (=> b!4591706 (= lt!1753647 lt!1753642)))

(assert (=> b!4591706 (forall!10547 (toList!4602 lt!1753644) lambda!184907)))

(declare-fun lt!1753638 () Unit!107446)

(declare-fun Unit!107461 () Unit!107446)

(assert (=> b!4591706 (= lt!1753638 Unit!107461)))

(assert (=> b!4591706 (forall!10547 (t!358130 (_2!29106 (h!56961 (toList!4601 lm!1477)))) lambda!184907)))

(declare-fun lt!1753637 () Unit!107446)

(declare-fun Unit!107462 () Unit!107446)

(assert (=> b!4591706 (= lt!1753637 Unit!107462)))

(declare-fun lt!1753640 () Unit!107446)

(declare-fun Unit!107463 () Unit!107446)

(assert (=> b!4591706 (= lt!1753640 Unit!107463)))

(declare-fun lt!1753648 () Unit!107446)

(declare-fun forallContained!2804 (List!51136 Int tuple2!51622) Unit!107446)

(assert (=> b!4591706 (= lt!1753648 (forallContained!2804 (toList!4602 lt!1753644) lambda!184907 (h!56960 (_2!29106 (h!56961 (toList!4601 lm!1477))))))))

(assert (=> b!4591706 (contains!13932 lt!1753644 (_1!29105 (h!56960 (_2!29106 (h!56961 (toList!4601 lm!1477))))))))

(declare-fun lt!1753635 () Unit!107446)

(declare-fun Unit!107464 () Unit!107446)

(assert (=> b!4591706 (= lt!1753635 Unit!107464)))

(assert (=> b!4591706 (contains!13932 lt!1753650 (_1!29105 (h!56960 (_2!29106 (h!56961 (toList!4601 lm!1477))))))))

(declare-fun lt!1753652 () Unit!107446)

(declare-fun Unit!107465 () Unit!107446)

(assert (=> b!4591706 (= lt!1753652 Unit!107465)))

(assert (=> b!4591706 call!320569))

(declare-fun lt!1753653 () Unit!107446)

(declare-fun Unit!107466 () Unit!107446)

(assert (=> b!4591706 (= lt!1753653 Unit!107466)))

(assert (=> b!4591706 (forall!10547 (toList!4602 lt!1753644) lambda!184907)))

(declare-fun lt!1753654 () Unit!107446)

(declare-fun Unit!107467 () Unit!107446)

(assert (=> b!4591706 (= lt!1753654 Unit!107467)))

(declare-fun lt!1753634 () Unit!107446)

(declare-fun Unit!107468 () Unit!107446)

(assert (=> b!4591706 (= lt!1753634 Unit!107468)))

(declare-fun lt!1753649 () Unit!107446)

(declare-fun addForallContainsKeyThenBeforeAdding!423 (ListMap!3863 ListMap!3863 K!12383 V!12629) Unit!107446)

(assert (=> b!4591706 (= lt!1753649 (addForallContainsKeyThenBeforeAdding!423 (extractMap!1353 (t!358131 (toList!4601 lm!1477))) lt!1753650 (_1!29105 (h!56960 (_2!29106 (h!56961 (toList!4601 lm!1477))))) (_2!29105 (h!56960 (_2!29106 (h!56961 (toList!4601 lm!1477)))))))))

(assert (=> b!4591706 (forall!10547 (toList!4602 (extractMap!1353 (t!358131 (toList!4601 lm!1477)))) lambda!184907)))

(declare-fun lt!1753651 () Unit!107446)

(assert (=> b!4591706 (= lt!1753651 lt!1753649)))

(assert (=> b!4591706 call!320568))

(declare-fun lt!1753641 () Unit!107446)

(declare-fun Unit!107469 () Unit!107446)

(assert (=> b!4591706 (= lt!1753641 Unit!107469)))

(declare-fun res!1919681 () Bool)

(assert (=> b!4591706 (= res!1919681 (forall!10547 (_2!29106 (h!56961 (toList!4601 lm!1477))) lambda!184907))))

(declare-fun e!2863795 () Bool)

(assert (=> b!4591706 (=> (not res!1919681) (not e!2863795))))

(assert (=> b!4591706 e!2863795))

(declare-fun lt!1753643 () Unit!107446)

(declare-fun Unit!107470 () Unit!107446)

(assert (=> b!4591706 (= lt!1753643 Unit!107470)))

(assert (=> d!1444441 e!2863794))

(declare-fun res!1919680 () Bool)

(assert (=> d!1444441 (=> (not res!1919680) (not e!2863794))))

(assert (=> d!1444441 (= res!1919680 (forall!10547 (_2!29106 (h!56961 (toList!4601 lm!1477))) lambda!184908))))

(assert (=> d!1444441 (= lt!1753639 e!2863796)))

(assert (=> d!1444441 (= c!786351 (is-Nil!51012 (_2!29106 (h!56961 (toList!4601 lm!1477)))))))

(assert (=> d!1444441 (noDuplicateKeys!1293 (_2!29106 (h!56961 (toList!4601 lm!1477))))))

(assert (=> d!1444441 (= (addToMapMapFromBucket!798 (_2!29106 (h!56961 (toList!4601 lm!1477))) (extractMap!1353 (t!358131 (toList!4601 lm!1477)))) lt!1753639)))

(declare-fun b!4591703 () Bool)

(assert (=> b!4591703 (= e!2863795 (forall!10547 (toList!4602 (extractMap!1353 (t!358131 (toList!4601 lm!1477)))) lambda!184907))))

(assert (= (and d!1444441 c!786351) b!4591702))

(assert (= (and d!1444441 (not c!786351)) b!4591706))

(assert (= (and b!4591706 res!1919681) b!4591703))

(assert (= (or b!4591702 b!4591706) bm!320565))

(assert (= (or b!4591702 b!4591706) bm!320563))

(assert (= (or b!4591702 b!4591706) bm!320564))

(assert (= (and d!1444441 res!1919680) b!4591705))

(assert (= (and b!4591705 res!1919682) b!4591704))

(declare-fun m!5414985 () Bool)

(assert (=> d!1444441 m!5414985))

(assert (=> d!1444441 m!5414811))

(assert (=> bm!320564 m!5414801))

(declare-fun m!5414987 () Bool)

(assert (=> bm!320564 m!5414987))

(declare-fun m!5414989 () Bool)

(assert (=> bm!320563 m!5414989))

(assert (=> b!4591706 m!5414801))

(declare-fun m!5414991 () Bool)

(assert (=> b!4591706 m!5414991))

(declare-fun m!5414993 () Bool)

(assert (=> b!4591706 m!5414993))

(declare-fun m!5414995 () Bool)

(assert (=> b!4591706 m!5414995))

(assert (=> b!4591706 m!5414801))

(declare-fun m!5414997 () Bool)

(assert (=> b!4591706 m!5414997))

(declare-fun m!5414999 () Bool)

(assert (=> b!4591706 m!5414999))

(declare-fun m!5415001 () Bool)

(assert (=> b!4591706 m!5415001))

(declare-fun m!5415003 () Bool)

(assert (=> b!4591706 m!5415003))

(assert (=> b!4591706 m!5414991))

(declare-fun m!5415005 () Bool)

(assert (=> b!4591706 m!5415005))

(declare-fun m!5415007 () Bool)

(assert (=> b!4591706 m!5415007))

(declare-fun m!5415009 () Bool)

(assert (=> b!4591706 m!5415009))

(assert (=> b!4591706 m!5414995))

(declare-fun m!5415011 () Bool)

(assert (=> b!4591706 m!5415011))

(declare-fun m!5415013 () Bool)

(assert (=> b!4591704 m!5415013))

(declare-fun m!5415015 () Bool)

(assert (=> bm!320565 m!5415015))

(assert (=> b!4591703 m!5415001))

(declare-fun m!5415017 () Bool)

(assert (=> b!4591705 m!5415017))

(assert (=> b!4591497 d!1444441))

(declare-fun bs!1008052 () Bool)

(declare-fun d!1444515 () Bool)

(assert (= bs!1008052 (and d!1444515 d!1444345)))

(declare-fun lambda!184909 () Int)

(assert (=> bs!1008052 (= lambda!184909 lambda!184849)))

(declare-fun bs!1008053 () Bool)

(assert (= bs!1008053 (and d!1444515 start!457374)))

(assert (=> bs!1008053 (= lambda!184909 lambda!184835)))

(declare-fun bs!1008054 () Bool)

(assert (= bs!1008054 (and d!1444515 d!1444391)))

(assert (=> bs!1008054 (= lambda!184909 lambda!184864)))

(declare-fun bs!1008055 () Bool)

(assert (= bs!1008055 (and d!1444515 d!1444353)))

(assert (=> bs!1008055 (= lambda!184909 lambda!184852)))

(declare-fun bs!1008056 () Bool)

(assert (= bs!1008056 (and d!1444515 d!1444399)))

(assert (=> bs!1008056 (not (= lambda!184909 lambda!184867))))

(declare-fun lt!1753655 () ListMap!3863)

(assert (=> d!1444515 (invariantList!1108 (toList!4602 lt!1753655))))

(declare-fun e!2863797 () ListMap!3863)

(assert (=> d!1444515 (= lt!1753655 e!2863797)))

(declare-fun c!786352 () Bool)

(assert (=> d!1444515 (= c!786352 (is-Cons!51013 (t!358131 (toList!4601 lm!1477))))))

(assert (=> d!1444515 (forall!10545 (t!358131 (toList!4601 lm!1477)) lambda!184909)))

(assert (=> d!1444515 (= (extractMap!1353 (t!358131 (toList!4601 lm!1477))) lt!1753655)))

(declare-fun b!4591709 () Bool)

(assert (=> b!4591709 (= e!2863797 (addToMapMapFromBucket!798 (_2!29106 (h!56961 (t!358131 (toList!4601 lm!1477)))) (extractMap!1353 (t!358131 (t!358131 (toList!4601 lm!1477))))))))

(declare-fun b!4591710 () Bool)

(assert (=> b!4591710 (= e!2863797 (ListMap!3864 Nil!51012))))

(assert (= (and d!1444515 c!786352) b!4591709))

(assert (= (and d!1444515 (not c!786352)) b!4591710))

(declare-fun m!5415019 () Bool)

(assert (=> d!1444515 m!5415019))

(declare-fun m!5415021 () Bool)

(assert (=> d!1444515 m!5415021))

(declare-fun m!5415023 () Bool)

(assert (=> b!4591709 m!5415023))

(assert (=> b!4591709 m!5415023))

(declare-fun m!5415025 () Bool)

(assert (=> b!4591709 m!5415025))

(assert (=> b!4591497 d!1444515))

(declare-fun d!1444517 () Bool)

(assert (=> d!1444517 (= (get!16850 (getValueByKey!1276 (toList!4601 lm!1477) hash!344)) (v!45277 (getValueByKey!1276 (toList!4601 lm!1477) hash!344)))))

(assert (=> d!1444333 d!1444517))

(assert (=> d!1444333 d!1444439))

(declare-fun b!4591718 () Bool)

(assert (=> b!4591718 true))

(declare-fun d!1444519 () Bool)

(declare-fun e!2863800 () Bool)

(assert (=> d!1444519 e!2863800))

(declare-fun res!1919690 () Bool)

(assert (=> d!1444519 (=> (not res!1919690) (not e!2863800))))

(declare-fun lt!1753658 () List!51140)

(declare-fun noDuplicate!800 (List!51140) Bool)

(assert (=> d!1444519 (= res!1919690 (noDuplicate!800 lt!1753658))))

(assert (=> d!1444519 (= lt!1753658 (getKeysList!556 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))))))

(assert (=> d!1444519 (= (keys!17841 (extractMap!1353 (toList!4601 lm!1477))) lt!1753658)))

(declare-fun b!4591717 () Bool)

(declare-fun res!1919689 () Bool)

(assert (=> b!4591717 (=> (not res!1919689) (not e!2863800))))

(declare-fun length!456 (List!51140) Int)

(declare-fun length!457 (List!51136) Int)

(assert (=> b!4591717 (= res!1919689 (= (length!456 lt!1753658) (length!457 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))))))))

(declare-fun res!1919691 () Bool)

(assert (=> b!4591718 (=> (not res!1919691) (not e!2863800))))

(declare-fun lambda!184914 () Int)

(declare-fun forall!10550 (List!51140 Int) Bool)

(assert (=> b!4591718 (= res!1919691 (forall!10550 lt!1753658 lambda!184914))))

(declare-fun b!4591719 () Bool)

(declare-fun lambda!184915 () Int)

(declare-fun map!11260 (List!51136 Int) List!51140)

(assert (=> b!4591719 (= e!2863800 (= (content!8611 lt!1753658) (content!8611 (map!11260 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) lambda!184915))))))

(assert (= (and d!1444519 res!1919690) b!4591717))

(assert (= (and b!4591717 res!1919689) b!4591718))

(assert (= (and b!4591718 res!1919691) b!4591719))

(declare-fun m!5415027 () Bool)

(assert (=> d!1444519 m!5415027))

(assert (=> d!1444519 m!5414757))

(declare-fun m!5415029 () Bool)

(assert (=> b!4591717 m!5415029))

(declare-fun m!5415031 () Bool)

(assert (=> b!4591717 m!5415031))

(declare-fun m!5415033 () Bool)

(assert (=> b!4591718 m!5415033))

(declare-fun m!5415035 () Bool)

(assert (=> b!4591719 m!5415035))

(declare-fun m!5415037 () Bool)

(assert (=> b!4591719 m!5415037))

(assert (=> b!4591719 m!5415037))

(declare-fun m!5415039 () Bool)

(assert (=> b!4591719 m!5415039))

(assert (=> b!4591459 d!1444519))

(declare-fun d!1444521 () Bool)

(declare-fun lt!1753659 () Bool)

(assert (=> d!1444521 (= lt!1753659 (set.member (tuple2!51625 hash!344 lt!1753411) (content!8609 (toList!4601 lm!1477))))))

(declare-fun e!2863802 () Bool)

(assert (=> d!1444521 (= lt!1753659 e!2863802)))

(declare-fun res!1919692 () Bool)

(assert (=> d!1444521 (=> (not res!1919692) (not e!2863802))))

(assert (=> d!1444521 (= res!1919692 (is-Cons!51013 (toList!4601 lm!1477)))))

(assert (=> d!1444521 (= (contains!13930 (toList!4601 lm!1477) (tuple2!51625 hash!344 lt!1753411)) lt!1753659)))

(declare-fun b!4591722 () Bool)

(declare-fun e!2863801 () Bool)

(assert (=> b!4591722 (= e!2863802 e!2863801)))

(declare-fun res!1919693 () Bool)

(assert (=> b!4591722 (=> res!1919693 e!2863801)))

(assert (=> b!4591722 (= res!1919693 (= (h!56961 (toList!4601 lm!1477)) (tuple2!51625 hash!344 lt!1753411)))))

(declare-fun b!4591723 () Bool)

(assert (=> b!4591723 (= e!2863801 (contains!13930 (t!358131 (toList!4601 lm!1477)) (tuple2!51625 hash!344 lt!1753411)))))

(assert (= (and d!1444521 res!1919692) b!4591722))

(assert (= (and b!4591722 (not res!1919693)) b!4591723))

(assert (=> d!1444521 m!5414659))

(declare-fun m!5415041 () Bool)

(assert (=> d!1444521 m!5415041))

(declare-fun m!5415043 () Bool)

(assert (=> b!4591723 m!5415043))

(assert (=> d!1444349 d!1444521))

(declare-fun d!1444523 () Bool)

(assert (=> d!1444523 (contains!13930 (toList!4601 lm!1477) (tuple2!51625 hash!344 lt!1753411))))

(assert (=> d!1444523 true))

(declare-fun _$14!1431 () Unit!107446)

(assert (=> d!1444523 (= (choose!30656 (toList!4601 lm!1477) hash!344 lt!1753411) _$14!1431)))

(declare-fun bs!1008057 () Bool)

(assert (= bs!1008057 d!1444523))

(assert (=> bs!1008057 m!5414693))

(assert (=> d!1444349 d!1444523))

(assert (=> d!1444349 d!1444417))

(assert (=> b!4591460 d!1444433))

(assert (=> b!4591460 d!1444435))

(declare-fun d!1444525 () Bool)

(declare-fun res!1919698 () Bool)

(declare-fun e!2863807 () Bool)

(assert (=> d!1444525 (=> res!1919698 e!2863807)))

(assert (=> d!1444525 (= res!1919698 (and (is-Cons!51012 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))) (= (_1!29105 (h!56960 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))))) key!3287)))))

(assert (=> d!1444525 (= (containsKey!2101 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) key!3287) e!2863807)))

(declare-fun b!4591728 () Bool)

(declare-fun e!2863808 () Bool)

(assert (=> b!4591728 (= e!2863807 e!2863808)))

(declare-fun res!1919699 () Bool)

(assert (=> b!4591728 (=> (not res!1919699) (not e!2863808))))

(assert (=> b!4591728 (= res!1919699 (is-Cons!51012 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))))))

(declare-fun b!4591729 () Bool)

(assert (=> b!4591729 (= e!2863808 (containsKey!2101 (t!358130 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))) key!3287))))

(assert (= (and d!1444525 (not res!1919698)) b!4591728))

(assert (= (and b!4591728 res!1919699) b!4591729))

(declare-fun m!5415045 () Bool)

(assert (=> b!4591729 m!5415045))

(assert (=> d!1444377 d!1444525))

(declare-fun d!1444527 () Bool)

(declare-fun res!1919704 () Bool)

(declare-fun e!2863813 () Bool)

(assert (=> d!1444527 (=> res!1919704 e!2863813)))

(assert (=> d!1444527 (= res!1919704 (and (is-Cons!51013 (toList!4601 lm!1477)) (= (_1!29106 (h!56961 (toList!4601 lm!1477))) lt!1753413)))))

(assert (=> d!1444527 (= (containsKey!2099 (toList!4601 lm!1477) lt!1753413) e!2863813)))

(declare-fun b!4591734 () Bool)

(declare-fun e!2863814 () Bool)

(assert (=> b!4591734 (= e!2863813 e!2863814)))

(declare-fun res!1919705 () Bool)

(assert (=> b!4591734 (=> (not res!1919705) (not e!2863814))))

(assert (=> b!4591734 (= res!1919705 (and (or (not (is-Cons!51013 (toList!4601 lm!1477))) (bvsle (_1!29106 (h!56961 (toList!4601 lm!1477))) lt!1753413)) (is-Cons!51013 (toList!4601 lm!1477)) (bvslt (_1!29106 (h!56961 (toList!4601 lm!1477))) lt!1753413)))))

(declare-fun b!4591735 () Bool)

(assert (=> b!4591735 (= e!2863814 (containsKey!2099 (t!358131 (toList!4601 lm!1477)) lt!1753413))))

(assert (= (and d!1444527 (not res!1919704)) b!4591734))

(assert (= (and b!4591734 res!1919705) b!4591735))

(declare-fun m!5415047 () Bool)

(assert (=> b!4591735 m!5415047))

(assert (=> d!1444325 d!1444527))

(declare-fun d!1444529 () Bool)

(declare-fun res!1919706 () Bool)

(declare-fun e!2863815 () Bool)

(assert (=> d!1444529 (=> res!1919706 e!2863815)))

(assert (=> d!1444529 (= res!1919706 (is-Nil!51013 (toList!4601 lm!1477)))))

(assert (=> d!1444529 (= (forall!10545 (toList!4601 lm!1477) lambda!184867) e!2863815)))

(declare-fun b!4591736 () Bool)

(declare-fun e!2863816 () Bool)

(assert (=> b!4591736 (= e!2863815 e!2863816)))

(declare-fun res!1919707 () Bool)

(assert (=> b!4591736 (=> (not res!1919707) (not e!2863816))))

(assert (=> b!4591736 (= res!1919707 (dynLambda!21363 lambda!184867 (h!56961 (toList!4601 lm!1477))))))

(declare-fun b!4591737 () Bool)

(assert (=> b!4591737 (= e!2863816 (forall!10545 (t!358131 (toList!4601 lm!1477)) lambda!184867))))

(assert (= (and d!1444529 (not res!1919706)) b!4591736))

(assert (= (and b!4591736 res!1919707) b!4591737))

(declare-fun b_lambda!168529 () Bool)

(assert (=> (not b_lambda!168529) (not b!4591736)))

(declare-fun m!5415049 () Bool)

(assert (=> b!4591736 m!5415049))

(declare-fun m!5415051 () Bool)

(assert (=> b!4591737 m!5415051))

(assert (=> d!1444399 d!1444529))

(declare-fun d!1444531 () Bool)

(declare-fun res!1919708 () Bool)

(declare-fun e!2863817 () Bool)

(assert (=> d!1444531 (=> res!1919708 e!2863817)))

(assert (=> d!1444531 (= res!1919708 (not (is-Cons!51012 (_2!29106 (h!56961 (toList!4601 lm!1477))))))))

(assert (=> d!1444531 (= (noDuplicateKeys!1293 (_2!29106 (h!56961 (toList!4601 lm!1477)))) e!2863817)))

(declare-fun b!4591738 () Bool)

(declare-fun e!2863818 () Bool)

(assert (=> b!4591738 (= e!2863817 e!2863818)))

(declare-fun res!1919709 () Bool)

(assert (=> b!4591738 (=> (not res!1919709) (not e!2863818))))

(assert (=> b!4591738 (= res!1919709 (not (containsKey!2097 (t!358130 (_2!29106 (h!56961 (toList!4601 lm!1477)))) (_1!29105 (h!56960 (_2!29106 (h!56961 (toList!4601 lm!1477))))))))))

(declare-fun b!4591739 () Bool)

(assert (=> b!4591739 (= e!2863818 (noDuplicateKeys!1293 (t!358130 (_2!29106 (h!56961 (toList!4601 lm!1477))))))))

(assert (= (and d!1444531 (not res!1919708)) b!4591738))

(assert (= (and b!4591738 res!1919709) b!4591739))

(declare-fun m!5415053 () Bool)

(assert (=> b!4591738 m!5415053))

(declare-fun m!5415055 () Bool)

(assert (=> b!4591739 m!5415055))

(assert (=> bs!1008023 d!1444531))

(declare-fun d!1444533 () Bool)

(declare-fun lt!1753660 () Bool)

(assert (=> d!1444533 (= lt!1753660 (set.member key!3287 (content!8611 (keys!17841 (extractMap!1353 (toList!4601 lm!1477))))))))

(declare-fun e!2863819 () Bool)

(assert (=> d!1444533 (= lt!1753660 e!2863819)))

(declare-fun res!1919711 () Bool)

(assert (=> d!1444533 (=> (not res!1919711) (not e!2863819))))

(assert (=> d!1444533 (= res!1919711 (is-Cons!51016 (keys!17841 (extractMap!1353 (toList!4601 lm!1477)))))))

(assert (=> d!1444533 (= (contains!13936 (keys!17841 (extractMap!1353 (toList!4601 lm!1477))) key!3287) lt!1753660)))

(declare-fun b!4591740 () Bool)

(declare-fun e!2863820 () Bool)

(assert (=> b!4591740 (= e!2863819 e!2863820)))

(declare-fun res!1919710 () Bool)

(assert (=> b!4591740 (=> res!1919710 e!2863820)))

(assert (=> b!4591740 (= res!1919710 (= (h!56966 (keys!17841 (extractMap!1353 (toList!4601 lm!1477)))) key!3287))))

(declare-fun b!4591741 () Bool)

(assert (=> b!4591741 (= e!2863820 (contains!13936 (t!358134 (keys!17841 (extractMap!1353 (toList!4601 lm!1477)))) key!3287))))

(assert (= (and d!1444533 res!1919711) b!4591740))

(assert (= (and b!4591740 (not res!1919710)) b!4591741))

(assert (=> d!1444533 m!5414759))

(declare-fun m!5415057 () Bool)

(assert (=> d!1444533 m!5415057))

(declare-fun m!5415059 () Bool)

(assert (=> d!1444533 m!5415059))

(declare-fun m!5415061 () Bool)

(assert (=> b!4591741 m!5415061))

(assert (=> b!4591461 d!1444533))

(assert (=> b!4591461 d!1444519))

(assert (=> b!4591462 d!1444525))

(declare-fun d!1444535 () Bool)

(assert (=> d!1444535 (containsKey!2101 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) key!3287)))

(declare-fun lt!1753663 () Unit!107446)

(declare-fun choose!30666 (List!51136 K!12383) Unit!107446)

(assert (=> d!1444535 (= lt!1753663 (choose!30666 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) key!3287))))

(assert (=> d!1444535 (invariantList!1108 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))))))

(assert (=> d!1444535 (= (lemmaInGetKeysListThenContainsKey!555 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) key!3287) lt!1753663)))

(declare-fun bs!1008058 () Bool)

(assert (= bs!1008058 d!1444535))

(assert (=> bs!1008058 m!5414763))

(declare-fun m!5415063 () Bool)

(assert (=> bs!1008058 m!5415063))

(assert (=> bs!1008058 m!5414861))

(assert (=> b!4591462 d!1444535))

(declare-fun d!1444537 () Bool)

(declare-fun e!2863821 () Bool)

(assert (=> d!1444537 e!2863821))

(declare-fun res!1919712 () Bool)

(assert (=> d!1444537 (=> res!1919712 e!2863821)))

(declare-fun lt!1753666 () Bool)

(assert (=> d!1444537 (= res!1919712 (not lt!1753666))))

(declare-fun lt!1753665 () Bool)

(assert (=> d!1444537 (= lt!1753666 lt!1753665)))

(declare-fun lt!1753664 () Unit!107446)

(declare-fun e!2863822 () Unit!107446)

(assert (=> d!1444537 (= lt!1753664 e!2863822)))

(declare-fun c!786353 () Bool)

(assert (=> d!1444537 (= c!786353 lt!1753665)))

(assert (=> d!1444537 (= lt!1753665 (containsKey!2099 (toList!4601 lm!1477) (hash!3166 hashF!1107 key!3287)))))

(assert (=> d!1444537 (= (contains!13931 lm!1477 (hash!3166 hashF!1107 key!3287)) lt!1753666)))

(declare-fun b!4591742 () Bool)

(declare-fun lt!1753667 () Unit!107446)

(assert (=> b!4591742 (= e!2863822 lt!1753667)))

(assert (=> b!4591742 (= lt!1753667 (lemmaContainsKeyImpliesGetValueByKeyDefined!1180 (toList!4601 lm!1477) (hash!3166 hashF!1107 key!3287)))))

(assert (=> b!4591742 (isDefined!8624 (getValueByKey!1276 (toList!4601 lm!1477) (hash!3166 hashF!1107 key!3287)))))

(declare-fun b!4591743 () Bool)

(declare-fun Unit!107471 () Unit!107446)

(assert (=> b!4591743 (= e!2863822 Unit!107471)))

(declare-fun b!4591744 () Bool)

(assert (=> b!4591744 (= e!2863821 (isDefined!8624 (getValueByKey!1276 (toList!4601 lm!1477) (hash!3166 hashF!1107 key!3287))))))

(assert (= (and d!1444537 c!786353) b!4591742))

(assert (= (and d!1444537 (not c!786353)) b!4591743))

(assert (= (and d!1444537 (not res!1919712)) b!4591744))

(assert (=> d!1444537 m!5414591))

(declare-fun m!5415065 () Bool)

(assert (=> d!1444537 m!5415065))

(assert (=> b!4591742 m!5414591))

(declare-fun m!5415067 () Bool)

(assert (=> b!4591742 m!5415067))

(assert (=> b!4591742 m!5414591))

(declare-fun m!5415069 () Bool)

(assert (=> b!4591742 m!5415069))

(assert (=> b!4591742 m!5415069))

(declare-fun m!5415071 () Bool)

(assert (=> b!4591742 m!5415071))

(assert (=> b!4591744 m!5414591))

(assert (=> b!4591744 m!5415069))

(assert (=> b!4591744 m!5415069))

(assert (=> b!4591744 m!5415071))

(assert (=> d!1444345 d!1444537))

(assert (=> d!1444345 d!1444371))

(declare-fun d!1444539 () Bool)

(assert (=> d!1444539 (contains!13931 lm!1477 (hash!3166 hashF!1107 key!3287))))

(assert (=> d!1444539 true))

(declare-fun _$27!1396 () Unit!107446)

(assert (=> d!1444539 (= (choose!30655 lm!1477 key!3287 hashF!1107) _$27!1396)))

(declare-fun bs!1008059 () Bool)

(assert (= bs!1008059 d!1444539))

(assert (=> bs!1008059 m!5414591))

(assert (=> bs!1008059 m!5414591))

(assert (=> bs!1008059 m!5414685))

(assert (=> d!1444345 d!1444539))

(declare-fun d!1444541 () Bool)

(declare-fun res!1919713 () Bool)

(declare-fun e!2863823 () Bool)

(assert (=> d!1444541 (=> res!1919713 e!2863823)))

(assert (=> d!1444541 (= res!1919713 (is-Nil!51013 (toList!4601 lm!1477)))))

(assert (=> d!1444541 (= (forall!10545 (toList!4601 lm!1477) lambda!184849) e!2863823)))

(declare-fun b!4591745 () Bool)

(declare-fun e!2863824 () Bool)

(assert (=> b!4591745 (= e!2863823 e!2863824)))

(declare-fun res!1919714 () Bool)

(assert (=> b!4591745 (=> (not res!1919714) (not e!2863824))))

(assert (=> b!4591745 (= res!1919714 (dynLambda!21363 lambda!184849 (h!56961 (toList!4601 lm!1477))))))

(declare-fun b!4591746 () Bool)

(assert (=> b!4591746 (= e!2863824 (forall!10545 (t!358131 (toList!4601 lm!1477)) lambda!184849))))

(assert (= (and d!1444541 (not res!1919713)) b!4591745))

(assert (= (and b!4591745 res!1919714) b!4591746))

(declare-fun b_lambda!168531 () Bool)

(assert (=> (not b_lambda!168531) (not b!4591745)))

(declare-fun m!5415073 () Bool)

(assert (=> b!4591745 m!5415073))

(declare-fun m!5415075 () Bool)

(assert (=> b!4591746 m!5415075))

(assert (=> d!1444345 d!1444541))

(assert (=> b!4591463 d!1444533))

(assert (=> b!4591463 d!1444519))

(assert (=> b!4591328 d!1444337))

(declare-fun bs!1008060 () Bool)

(declare-fun b!4591770 () Bool)

(assert (= bs!1008060 (and b!4591770 b!4591718)))

(declare-fun lambda!184924 () Int)

(assert (=> bs!1008060 (= (= (t!358130 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))) (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))) (= lambda!184924 lambda!184914))))

(assert (=> b!4591770 true))

(declare-fun bs!1008061 () Bool)

(declare-fun b!4591766 () Bool)

(assert (= bs!1008061 (and b!4591766 b!4591718)))

(declare-fun lambda!184925 () Int)

(assert (=> bs!1008061 (= (= (Cons!51012 (h!56960 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))) (t!358130 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))))) (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))) (= lambda!184925 lambda!184914))))

(declare-fun bs!1008062 () Bool)

(assert (= bs!1008062 (and b!4591766 b!4591770)))

(assert (=> bs!1008062 (= (= (Cons!51012 (h!56960 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))) (t!358130 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))))) (t!358130 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))))) (= lambda!184925 lambda!184924))))

(assert (=> b!4591766 true))

(declare-fun bs!1008063 () Bool)

(declare-fun b!4591768 () Bool)

(assert (= bs!1008063 (and b!4591768 b!4591718)))

(declare-fun lambda!184926 () Int)

(assert (=> bs!1008063 (= lambda!184926 lambda!184914)))

(declare-fun bs!1008064 () Bool)

(assert (= bs!1008064 (and b!4591768 b!4591770)))

(assert (=> bs!1008064 (= (= (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) (t!358130 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))))) (= lambda!184926 lambda!184924))))

(declare-fun bs!1008065 () Bool)

(assert (= bs!1008065 (and b!4591768 b!4591766)))

(assert (=> bs!1008065 (= (= (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) (Cons!51012 (h!56960 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))) (t!358130 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))))) (= lambda!184926 lambda!184925))))

(assert (=> b!4591768 true))

(declare-fun bs!1008066 () Bool)

(declare-fun b!4591765 () Bool)

(assert (= bs!1008066 (and b!4591765 b!4591719)))

(declare-fun lambda!184927 () Int)

(assert (=> bs!1008066 (= lambda!184927 lambda!184915)))

(declare-fun lt!1753687 () List!51140)

(declare-fun e!2863836 () Bool)

(assert (=> b!4591765 (= e!2863836 (= (content!8611 lt!1753687) (content!8611 (map!11260 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))) lambda!184927))))))

(declare-fun e!2863834 () List!51140)

(assert (=> b!4591766 (= e!2863834 (Cons!51016 (_1!29105 (h!56960 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))))) (getKeysList!556 (t!358130 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))))))))

(declare-fun c!786360 () Bool)

(assert (=> b!4591766 (= c!786360 (containsKey!2101 (t!358130 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))) (_1!29105 (h!56960 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))))))))

(declare-fun lt!1753684 () Unit!107446)

(declare-fun e!2863833 () Unit!107446)

(assert (=> b!4591766 (= lt!1753684 e!2863833)))

(declare-fun c!786361 () Bool)

(assert (=> b!4591766 (= c!786361 (contains!13936 (getKeysList!556 (t!358130 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))))) (_1!29105 (h!56960 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))))))))

(declare-fun lt!1753686 () Unit!107446)

(declare-fun e!2863835 () Unit!107446)

(assert (=> b!4591766 (= lt!1753686 e!2863835)))

(declare-fun lt!1753682 () List!51140)

(assert (=> b!4591766 (= lt!1753682 (getKeysList!556 (t!358130 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))))))))

(declare-fun lt!1753688 () Unit!107446)

(declare-fun lemmaForallContainsAddHeadPreserves!219 (List!51136 List!51140 tuple2!51622) Unit!107446)

(assert (=> b!4591766 (= lt!1753688 (lemmaForallContainsAddHeadPreserves!219 (t!358130 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))) lt!1753682 (h!56960 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))))))))

(assert (=> b!4591766 (forall!10550 lt!1753682 lambda!184925)))

(declare-fun lt!1753683 () Unit!107446)

(assert (=> b!4591766 (= lt!1753683 lt!1753688)))

(declare-fun b!4591767 () Bool)

(assert (=> b!4591767 (= e!2863834 Nil!51016)))

(declare-fun res!1919722 () Bool)

(assert (=> b!4591768 (=> (not res!1919722) (not e!2863836))))

(assert (=> b!4591768 (= res!1919722 (forall!10550 lt!1753687 lambda!184926))))

(declare-fun b!4591769 () Bool)

(declare-fun Unit!107473 () Unit!107446)

(assert (=> b!4591769 (= e!2863835 Unit!107473)))

(declare-fun d!1444543 () Bool)

(assert (=> d!1444543 e!2863836))

(declare-fun res!1919721 () Bool)

(assert (=> d!1444543 (=> (not res!1919721) (not e!2863836))))

(assert (=> d!1444543 (= res!1919721 (noDuplicate!800 lt!1753687))))

(assert (=> d!1444543 (= lt!1753687 e!2863834)))

(declare-fun c!786362 () Bool)

(assert (=> d!1444543 (= c!786362 (is-Cons!51012 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))))))

(assert (=> d!1444543 (invariantList!1108 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))))))

(assert (=> d!1444543 (= (getKeysList!556 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))) lt!1753687)))

(assert (=> b!4591770 false))

(declare-fun lt!1753685 () Unit!107446)

(declare-fun forallContained!2805 (List!51140 Int K!12383) Unit!107446)

(assert (=> b!4591770 (= lt!1753685 (forallContained!2805 (getKeysList!556 (t!358130 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))))) lambda!184924 (_1!29105 (h!56960 (toList!4602 (extractMap!1353 (toList!4601 lm!1477)))))))))

(declare-fun Unit!107474 () Unit!107446)

(assert (=> b!4591770 (= e!2863835 Unit!107474)))

(declare-fun b!4591771 () Bool)

(declare-fun Unit!107475 () Unit!107446)

(assert (=> b!4591771 (= e!2863833 Unit!107475)))

(declare-fun b!4591772 () Bool)

(declare-fun res!1919723 () Bool)

(assert (=> b!4591772 (=> (not res!1919723) (not e!2863836))))

(assert (=> b!4591772 (= res!1919723 (= (length!456 lt!1753687) (length!457 (toList!4602 (extractMap!1353 (toList!4601 lm!1477))))))))

(declare-fun b!4591773 () Bool)

(assert (=> b!4591773 false))

(declare-fun Unit!107476 () Unit!107446)

(assert (=> b!4591773 (= e!2863833 Unit!107476)))

(assert (= (and d!1444543 c!786362) b!4591766))

(assert (= (and d!1444543 (not c!786362)) b!4591767))

(assert (= (and b!4591766 c!786360) b!4591773))

(assert (= (and b!4591766 (not c!786360)) b!4591771))

(assert (= (and b!4591766 c!786361) b!4591770))

(assert (= (and b!4591766 (not c!786361)) b!4591769))

(assert (= (and d!1444543 res!1919721) b!4591772))

(assert (= (and b!4591772 res!1919723) b!4591768))

(assert (= (and b!4591768 res!1919722) b!4591765))

(declare-fun m!5415077 () Bool)

(assert (=> b!4591770 m!5415077))

(assert (=> b!4591770 m!5415077))

(declare-fun m!5415079 () Bool)

(assert (=> b!4591770 m!5415079))

(declare-fun m!5415081 () Bool)

(assert (=> b!4591765 m!5415081))

(declare-fun m!5415083 () Bool)

(assert (=> b!4591765 m!5415083))

(assert (=> b!4591765 m!5415083))

(declare-fun m!5415085 () Bool)

(assert (=> b!4591765 m!5415085))

(declare-fun m!5415087 () Bool)

(assert (=> b!4591766 m!5415087))

(assert (=> b!4591766 m!5415077))

(declare-fun m!5415089 () Bool)

(assert (=> b!4591766 m!5415089))

(assert (=> b!4591766 m!5415077))

(declare-fun m!5415091 () Bool)

(assert (=> b!4591766 m!5415091))

(declare-fun m!5415093 () Bool)

(assert (=> b!4591766 m!5415093))

(declare-fun m!5415095 () Bool)

(assert (=> d!1444543 m!5415095))

(assert (=> d!1444543 m!5414861))

(declare-fun m!5415097 () Bool)

(assert (=> b!4591768 m!5415097))

(declare-fun m!5415099 () Bool)

(assert (=> b!4591772 m!5415099))

(assert (=> b!4591772 m!5415031))

(assert (=> b!4591464 d!1444543))

(declare-fun d!1444545 () Bool)

(assert (=> d!1444545 (isDefined!8624 (getValueByKey!1276 (toList!4601 lm!1477) lt!1753413))))

(declare-fun lt!1753691 () Unit!107446)

(declare-fun choose!30668 (List!51137 (_ BitVec 64)) Unit!107446)

(assert (=> d!1444545 (= lt!1753691 (choose!30668 (toList!4601 lm!1477) lt!1753413))))

(declare-fun e!2863839 () Bool)

(assert (=> d!1444545 e!2863839))

(declare-fun res!1919726 () Bool)

(assert (=> d!1444545 (=> (not res!1919726) (not e!2863839))))

(assert (=> d!1444545 (= res!1919726 (isStrictlySorted!523 (toList!4601 lm!1477)))))

(assert (=> d!1444545 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1180 (toList!4601 lm!1477) lt!1753413) lt!1753691)))

(declare-fun b!4591778 () Bool)

(assert (=> b!4591778 (= e!2863839 (containsKey!2099 (toList!4601 lm!1477) lt!1753413))))

(assert (= (and d!1444545 res!1919726) b!4591778))

(assert (=> d!1444545 m!5414637))

(assert (=> d!1444545 m!5414637))

(assert (=> d!1444545 m!5414639))

(declare-fun m!5415101 () Bool)

(assert (=> d!1444545 m!5415101))

(assert (=> d!1444545 m!5414697))

(assert (=> b!4591778 m!5414633))

(assert (=> b!4591323 d!1444545))

(declare-fun d!1444547 () Bool)

(declare-fun isEmpty!28842 (Option!11356) Bool)

(assert (=> d!1444547 (= (isDefined!8624 (getValueByKey!1276 (toList!4601 lm!1477) lt!1753413)) (not (isEmpty!28842 (getValueByKey!1276 (toList!4601 lm!1477) lt!1753413))))))

(declare-fun bs!1008067 () Bool)

(assert (= bs!1008067 d!1444547))

(assert (=> bs!1008067 m!5414637))

(declare-fun m!5415103 () Bool)

(assert (=> bs!1008067 m!5415103))

(assert (=> b!4591323 d!1444547))

(declare-fun b!4591781 () Bool)

(declare-fun e!2863841 () Option!11356)

(assert (=> b!4591781 (= e!2863841 (getValueByKey!1276 (t!358131 (toList!4601 lm!1477)) lt!1753413))))

(declare-fun b!4591780 () Bool)

(declare-fun e!2863840 () Option!11356)

(assert (=> b!4591780 (= e!2863840 e!2863841)))

(declare-fun c!786364 () Bool)

(assert (=> b!4591780 (= c!786364 (and (is-Cons!51013 (toList!4601 lm!1477)) (not (= (_1!29106 (h!56961 (toList!4601 lm!1477))) lt!1753413))))))

(declare-fun b!4591779 () Bool)

(assert (=> b!4591779 (= e!2863840 (Some!11355 (_2!29106 (h!56961 (toList!4601 lm!1477)))))))

(declare-fun b!4591782 () Bool)

(assert (=> b!4591782 (= e!2863841 None!11355)))

(declare-fun d!1444549 () Bool)

(declare-fun c!786363 () Bool)

(assert (=> d!1444549 (= c!786363 (and (is-Cons!51013 (toList!4601 lm!1477)) (= (_1!29106 (h!56961 (toList!4601 lm!1477))) lt!1753413)))))

(assert (=> d!1444549 (= (getValueByKey!1276 (toList!4601 lm!1477) lt!1753413) e!2863840)))

(assert (= (and d!1444549 c!786363) b!4591779))

(assert (= (and d!1444549 (not c!786363)) b!4591780))

(assert (= (and b!4591780 c!786364) b!4591781))

(assert (= (and b!4591780 (not c!786364)) b!4591782))

(declare-fun m!5415105 () Bool)

(assert (=> b!4591781 m!5415105))

(assert (=> b!4591323 d!1444549))

(assert (=> d!1444353 d!1444377))

(assert (=> d!1444353 d!1444391))

(declare-fun d!1444551 () Bool)

(assert (=> d!1444551 (not (contains!13932 (extractMap!1353 (toList!4601 lm!1477)) key!3287))))

(assert (=> d!1444551 true))

(declare-fun _$26!509 () Unit!107446)

(assert (=> d!1444551 (= (choose!30657 lm!1477 key!3287 hashF!1107) _$26!509)))

(declare-fun bs!1008068 () Bool)

(assert (= bs!1008068 d!1444551))

(assert (=> bs!1008068 m!5414579))

(assert (=> bs!1008068 m!5414579))

(assert (=> bs!1008068 m!5414581))

(assert (=> d!1444353 d!1444551))

(declare-fun d!1444553 () Bool)

(declare-fun res!1919727 () Bool)

(declare-fun e!2863844 () Bool)

(assert (=> d!1444553 (=> res!1919727 e!2863844)))

(assert (=> d!1444553 (= res!1919727 (is-Nil!51013 (toList!4601 lm!1477)))))

(assert (=> d!1444553 (= (forall!10545 (toList!4601 lm!1477) lambda!184852) e!2863844)))

(declare-fun b!4591787 () Bool)

(declare-fun e!2863845 () Bool)

(assert (=> b!4591787 (= e!2863844 e!2863845)))

(declare-fun res!1919728 () Bool)

(assert (=> b!4591787 (=> (not res!1919728) (not e!2863845))))

(assert (=> b!4591787 (= res!1919728 (dynLambda!21363 lambda!184852 (h!56961 (toList!4601 lm!1477))))))

(declare-fun b!4591788 () Bool)

(assert (=> b!4591788 (= e!2863845 (forall!10545 (t!358131 (toList!4601 lm!1477)) lambda!184852))))

(assert (= (and d!1444553 (not res!1919727)) b!4591787))

(assert (= (and b!4591787 res!1919728) b!4591788))

(declare-fun b_lambda!168533 () Bool)

(assert (=> (not b_lambda!168533) (not b!4591787)))

(declare-fun m!5415107 () Bool)

(assert (=> b!4591787 m!5415107))

(declare-fun m!5415109 () Bool)

(assert (=> b!4591788 m!5415109))

(assert (=> d!1444353 d!1444553))

(declare-fun d!1444555 () Bool)

(declare-fun lt!1753708 () Bool)

(assert (=> d!1444555 (= lt!1753708 (set.member lt!1753412 (content!8609 (t!358131 (toList!4601 lm!1477)))))))

(declare-fun e!2863847 () Bool)

(assert (=> d!1444555 (= lt!1753708 e!2863847)))

(declare-fun res!1919729 () Bool)

(assert (=> d!1444555 (=> (not res!1919729) (not e!2863847))))

(assert (=> d!1444555 (= res!1919729 (is-Cons!51013 (t!358131 (toList!4601 lm!1477))))))

(assert (=> d!1444555 (= (contains!13930 (t!358131 (toList!4601 lm!1477)) lt!1753412) lt!1753708)))

(declare-fun b!4591789 () Bool)

(declare-fun e!2863846 () Bool)

(assert (=> b!4591789 (= e!2863847 e!2863846)))

(declare-fun res!1919730 () Bool)

(assert (=> b!4591789 (=> res!1919730 e!2863846)))

(assert (=> b!4591789 (= res!1919730 (= (h!56961 (t!358131 (toList!4601 lm!1477))) lt!1753412))))

(declare-fun b!4591790 () Bool)

(assert (=> b!4591790 (= e!2863846 (contains!13930 (t!358131 (t!358131 (toList!4601 lm!1477))) lt!1753412))))

(assert (= (and d!1444555 res!1919729) b!4591789))

(assert (= (and b!4591789 (not res!1919730)) b!4591790))

(assert (=> d!1444555 m!5414829))

(declare-fun m!5415111 () Bool)

(assert (=> d!1444555 m!5415111))

(declare-fun m!5415113 () Bool)

(assert (=> b!4591790 m!5415113))

(assert (=> b!4591334 d!1444555))

(declare-fun d!1444557 () Bool)

(declare-fun res!1919731 () Bool)

(declare-fun e!2863848 () Bool)

(assert (=> d!1444557 (=> res!1919731 e!2863848)))

(assert (=> d!1444557 (= res!1919731 (is-Nil!51013 (t!358131 (toList!4601 lm!1477))))))

(assert (=> d!1444557 (= (forall!10545 (t!358131 (toList!4601 lm!1477)) lambda!184835) e!2863848)))

(declare-fun b!4591791 () Bool)

(declare-fun e!2863849 () Bool)

(assert (=> b!4591791 (= e!2863848 e!2863849)))

(declare-fun res!1919732 () Bool)

(assert (=> b!4591791 (=> (not res!1919732) (not e!2863849))))

(assert (=> b!4591791 (= res!1919732 (dynLambda!21363 lambda!184835 (h!56961 (t!358131 (toList!4601 lm!1477)))))))

(declare-fun b!4591792 () Bool)

(assert (=> b!4591792 (= e!2863849 (forall!10545 (t!358131 (t!358131 (toList!4601 lm!1477))) lambda!184835))))

(assert (= (and d!1444557 (not res!1919731)) b!4591791))

(assert (= (and b!4591791 res!1919732) b!4591792))

(declare-fun b_lambda!168535 () Bool)

(assert (=> (not b_lambda!168535) (not b!4591791)))

(declare-fun m!5415115 () Bool)

(assert (=> b!4591791 m!5415115))

(declare-fun m!5415117 () Bool)

(assert (=> b!4591792 m!5415117))

(assert (=> b!4591422 d!1444557))

(declare-fun d!1444559 () Bool)

(declare-fun noDuplicatedKeys!314 (List!51136) Bool)

(assert (=> d!1444559 (= (invariantList!1108 (toList!4602 lt!1753554)) (noDuplicatedKeys!314 (toList!4602 lt!1753554)))))

(declare-fun bs!1008069 () Bool)

(assert (= bs!1008069 d!1444559))

(declare-fun m!5415119 () Bool)

(assert (=> bs!1008069 m!5415119))

(assert (=> d!1444391 d!1444559))

(declare-fun d!1444561 () Bool)

(declare-fun res!1919733 () Bool)

(declare-fun e!2863850 () Bool)

(assert (=> d!1444561 (=> res!1919733 e!2863850)))

(assert (=> d!1444561 (= res!1919733 (is-Nil!51013 (toList!4601 lm!1477)))))

(assert (=> d!1444561 (= (forall!10545 (toList!4601 lm!1477) lambda!184864) e!2863850)))

(declare-fun b!4591793 () Bool)

(declare-fun e!2863851 () Bool)

(assert (=> b!4591793 (= e!2863850 e!2863851)))

(declare-fun res!1919734 () Bool)

(assert (=> b!4591793 (=> (not res!1919734) (not e!2863851))))

(assert (=> b!4591793 (= res!1919734 (dynLambda!21363 lambda!184864 (h!56961 (toList!4601 lm!1477))))))

(declare-fun b!4591794 () Bool)

(assert (=> b!4591794 (= e!2863851 (forall!10545 (t!358131 (toList!4601 lm!1477)) lambda!184864))))

(assert (= (and d!1444561 (not res!1919733)) b!4591793))

(assert (= (and b!4591793 res!1919734) b!4591794))

(declare-fun b_lambda!168537 () Bool)

(assert (=> (not b_lambda!168537) (not b!4591793)))

(declare-fun m!5415121 () Bool)

(assert (=> b!4591793 m!5415121))

(declare-fun m!5415123 () Bool)

(assert (=> b!4591794 m!5415123))

(assert (=> d!1444391 d!1444561))

(assert (=> b!4591325 d!1444547))

(assert (=> b!4591325 d!1444549))

(declare-fun d!1444563 () Bool)

(declare-fun res!1919735 () Bool)

(declare-fun e!2863852 () Bool)

(assert (=> d!1444563 (=> res!1919735 e!2863852)))

(assert (=> d!1444563 (= res!1919735 (not (is-Cons!51012 (_2!29106 lt!1753412))))))

(assert (=> d!1444563 (= (noDuplicateKeys!1293 (_2!29106 lt!1753412)) e!2863852)))

(declare-fun b!4591795 () Bool)

(declare-fun e!2863853 () Bool)

(assert (=> b!4591795 (= e!2863852 e!2863853)))

(declare-fun res!1919736 () Bool)

(assert (=> b!4591795 (=> (not res!1919736) (not e!2863853))))

(assert (=> b!4591795 (= res!1919736 (not (containsKey!2097 (t!358130 (_2!29106 lt!1753412)) (_1!29105 (h!56960 (_2!29106 lt!1753412))))))))

(declare-fun b!4591796 () Bool)

(assert (=> b!4591796 (= e!2863853 (noDuplicateKeys!1293 (t!358130 (_2!29106 lt!1753412))))))

(assert (= (and d!1444563 (not res!1919735)) b!4591795))

(assert (= (and b!4591795 res!1919736) b!4591796))

(declare-fun m!5415125 () Bool)

(assert (=> b!4591795 m!5415125))

(declare-fun m!5415127 () Bool)

(assert (=> b!4591796 m!5415127))

(assert (=> bs!1008024 d!1444563))

(declare-fun d!1444565 () Bool)

(declare-fun res!1919737 () Bool)

(declare-fun e!2863854 () Bool)

(assert (=> d!1444565 (=> res!1919737 e!2863854)))

(assert (=> d!1444565 (= res!1919737 (and (is-Cons!51012 (_2!29106 (h!56961 lt!1753410))) (= (_1!29105 (h!56960 (_2!29106 (h!56961 lt!1753410)))) key!3287)))))

(assert (=> d!1444565 (= (containsKey!2097 (_2!29106 (h!56961 lt!1753410)) key!3287) e!2863854)))

(declare-fun b!4591797 () Bool)

(declare-fun e!2863855 () Bool)

(assert (=> b!4591797 (= e!2863854 e!2863855)))

(declare-fun res!1919738 () Bool)

(assert (=> b!4591797 (=> (not res!1919738) (not e!2863855))))

(assert (=> b!4591797 (= res!1919738 (is-Cons!51012 (_2!29106 (h!56961 lt!1753410))))))

(declare-fun b!4591798 () Bool)

(assert (=> b!4591798 (= e!2863855 (containsKey!2097 (t!358130 (_2!29106 (h!56961 lt!1753410))) key!3287))))

(assert (= (and d!1444565 (not res!1919737)) b!4591797))

(assert (= (and b!4591797 res!1919738) b!4591798))

(declare-fun m!5415129 () Bool)

(assert (=> b!4591798 m!5415129))

(assert (=> b!4591404 d!1444565))

(declare-fun d!1444567 () Bool)

(declare-fun res!1919739 () Bool)

(declare-fun e!2863856 () Bool)

(assert (=> d!1444567 (=> res!1919739 e!2863856)))

(assert (=> d!1444567 (= res!1919739 (and (is-Cons!51012 (t!358130 newBucket!178)) (= (_1!29105 (h!56960 (t!358130 newBucket!178))) (_1!29105 (h!56960 newBucket!178)))))))

(assert (=> d!1444567 (= (containsKey!2097 (t!358130 newBucket!178) (_1!29105 (h!56960 newBucket!178))) e!2863856)))

(declare-fun b!4591799 () Bool)

(declare-fun e!2863857 () Bool)

(assert (=> b!4591799 (= e!2863856 e!2863857)))

(declare-fun res!1919740 () Bool)

(assert (=> b!4591799 (=> (not res!1919740) (not e!2863857))))

(assert (=> b!4591799 (= res!1919740 (is-Cons!51012 (t!358130 newBucket!178)))))

(declare-fun b!4591800 () Bool)

(assert (=> b!4591800 (= e!2863857 (containsKey!2097 (t!358130 (t!358130 newBucket!178)) (_1!29105 (h!56960 newBucket!178))))))

(assert (= (and d!1444567 (not res!1919739)) b!4591799))

(assert (= (and b!4591799 res!1919740) b!4591800))

(declare-fun m!5415131 () Bool)

(assert (=> b!4591800 m!5415131))

(assert (=> b!4591415 d!1444567))

(declare-fun d!1444569 () Bool)

(declare-fun res!1919743 () Bool)

(declare-fun e!2863859 () Bool)

(assert (=> d!1444569 (=> res!1919743 e!2863859)))

(declare-fun e!2863858 () Bool)

(assert (=> d!1444569 (= res!1919743 e!2863858)))

(declare-fun res!1919741 () Bool)

(assert (=> d!1444569 (=> (not res!1919741) (not e!2863858))))

(assert (=> d!1444569 (= res!1919741 (is-Cons!51013 (t!358131 lt!1753410)))))

(assert (=> d!1444569 (= (containsKeyBiggerList!249 (t!358131 lt!1753410) key!3287) e!2863859)))

(declare-fun b!4591801 () Bool)

(assert (=> b!4591801 (= e!2863858 (containsKey!2097 (_2!29106 (h!56961 (t!358131 lt!1753410))) key!3287))))

(declare-fun b!4591802 () Bool)

(declare-fun e!2863860 () Bool)

(assert (=> b!4591802 (= e!2863859 e!2863860)))

(declare-fun res!1919742 () Bool)

(assert (=> b!4591802 (=> (not res!1919742) (not e!2863860))))

(assert (=> b!4591802 (= res!1919742 (is-Cons!51013 (t!358131 lt!1753410)))))

(declare-fun b!4591803 () Bool)

(assert (=> b!4591803 (= e!2863860 (containsKeyBiggerList!249 (t!358131 (t!358131 lt!1753410)) key!3287))))

(assert (= (and d!1444569 res!1919741) b!4591801))

(assert (= (and d!1444569 (not res!1919743)) b!4591802))

(assert (= (and b!4591802 res!1919742) b!4591803))

(declare-fun m!5415133 () Bool)

(assert (=> b!4591801 m!5415133))

(declare-fun m!5415135 () Bool)

(assert (=> b!4591803 m!5415135))

(assert (=> b!4591406 d!1444569))

(declare-fun d!1444571 () Bool)

(declare-fun res!1919744 () Bool)

(declare-fun e!2863861 () Bool)

(assert (=> d!1444571 (=> res!1919744 e!2863861)))

(assert (=> d!1444571 (= res!1919744 (not (is-Cons!51012 (t!358130 newBucket!178))))))

(assert (=> d!1444571 (= (noDuplicateKeys!1293 (t!358130 newBucket!178)) e!2863861)))

(declare-fun b!4591804 () Bool)

(declare-fun e!2863862 () Bool)

(assert (=> b!4591804 (= e!2863861 e!2863862)))

(declare-fun res!1919745 () Bool)

(assert (=> b!4591804 (=> (not res!1919745) (not e!2863862))))

(assert (=> b!4591804 (= res!1919745 (not (containsKey!2097 (t!358130 (t!358130 newBucket!178)) (_1!29105 (h!56960 (t!358130 newBucket!178))))))))

(declare-fun b!4591805 () Bool)

(assert (=> b!4591805 (= e!2863862 (noDuplicateKeys!1293 (t!358130 (t!358130 newBucket!178))))))

(assert (= (and d!1444571 (not res!1919744)) b!4591804))

(assert (= (and b!4591804 res!1919745) b!4591805))

(declare-fun m!5415137 () Bool)

(assert (=> b!4591804 m!5415137))

(declare-fun m!5415139 () Bool)

(assert (=> b!4591805 m!5415139))

(assert (=> b!4591416 d!1444571))

(declare-fun e!2863863 () Bool)

(declare-fun tp!1340090 () Bool)

(declare-fun b!4591806 () Bool)

(assert (=> b!4591806 (= e!2863863 (and tp_is_empty!28465 tp_is_empty!28467 tp!1340090))))

(assert (=> b!4591511 (= tp!1340074 e!2863863)))

(assert (= (and b!4591511 (is-Cons!51012 (t!358130 (t!358130 newBucket!178)))) b!4591806))

(declare-fun e!2863864 () Bool)

(declare-fun tp!1340091 () Bool)

(declare-fun b!4591807 () Bool)

(assert (=> b!4591807 (= e!2863864 (and tp_is_empty!28465 tp_is_empty!28467 tp!1340091))))

(assert (=> b!4591516 (= tp!1340079 e!2863864)))

(assert (= (and b!4591516 (is-Cons!51012 (_2!29106 (h!56961 (toList!4601 lm!1477))))) b!4591807))

(declare-fun b!4591808 () Bool)

(declare-fun e!2863865 () Bool)

(declare-fun tp!1340092 () Bool)

(declare-fun tp!1340093 () Bool)

(assert (=> b!4591808 (= e!2863865 (and tp!1340092 tp!1340093))))

(assert (=> b!4591516 (= tp!1340080 e!2863865)))

(assert (= (and b!4591516 (is-Cons!51013 (t!358131 (toList!4601 lm!1477)))) b!4591808))

(declare-fun b_lambda!168539 () Bool)

(assert (= b_lambda!168513 (or start!457374 b_lambda!168539)))

(assert (=> d!1444419 d!1444403))

(declare-fun b_lambda!168541 () Bool)

(assert (= b_lambda!168515 (or d!1444367 b_lambda!168541)))

(declare-fun bs!1008070 () Bool)

(declare-fun d!1444573 () Bool)

(assert (= bs!1008070 (and d!1444573 d!1444367)))

(assert (=> bs!1008070 (= (dynLambda!21365 lambda!184855 (h!56960 newBucket!178)) (= (hash!3166 hashF!1107 (_1!29105 (h!56960 newBucket!178))) hash!344))))

(declare-fun m!5415141 () Bool)

(assert (=> bs!1008070 m!5415141))

(assert (=> b!4591555 d!1444573))

(declare-fun b_lambda!168543 () Bool)

(assert (= b_lambda!168535 (or start!457374 b_lambda!168543)))

(declare-fun bs!1008071 () Bool)

(declare-fun d!1444575 () Bool)

(assert (= bs!1008071 (and d!1444575 start!457374)))

(assert (=> bs!1008071 (= (dynLambda!21363 lambda!184835 (h!56961 (t!358131 (toList!4601 lm!1477)))) (noDuplicateKeys!1293 (_2!29106 (h!56961 (t!358131 (toList!4601 lm!1477))))))))

(declare-fun m!5415143 () Bool)

(assert (=> bs!1008071 m!5415143))

(assert (=> b!4591791 d!1444575))

(declare-fun b_lambda!168545 () Bool)

(assert (= b_lambda!168531 (or d!1444345 b_lambda!168545)))

(declare-fun bs!1008072 () Bool)

(declare-fun d!1444577 () Bool)

(assert (= bs!1008072 (and d!1444577 d!1444345)))

(assert (=> bs!1008072 (= (dynLambda!21363 lambda!184849 (h!56961 (toList!4601 lm!1477))) (noDuplicateKeys!1293 (_2!29106 (h!56961 (toList!4601 lm!1477)))))))

(assert (=> bs!1008072 m!5414811))

(assert (=> b!4591745 d!1444577))

(declare-fun b_lambda!168547 () Bool)

(assert (= b_lambda!168533 (or d!1444353 b_lambda!168547)))

(declare-fun bs!1008073 () Bool)

(declare-fun d!1444579 () Bool)

(assert (= bs!1008073 (and d!1444579 d!1444353)))

(assert (=> bs!1008073 (= (dynLambda!21363 lambda!184852 (h!56961 (toList!4601 lm!1477))) (noDuplicateKeys!1293 (_2!29106 (h!56961 (toList!4601 lm!1477)))))))

(assert (=> bs!1008073 m!5414811))

(assert (=> b!4591787 d!1444579))

(declare-fun b_lambda!168549 () Bool)

(assert (= b_lambda!168537 (or d!1444391 b_lambda!168549)))

(declare-fun bs!1008074 () Bool)

(declare-fun d!1444581 () Bool)

(assert (= bs!1008074 (and d!1444581 d!1444391)))

(assert (=> bs!1008074 (= (dynLambda!21363 lambda!184864 (h!56961 (toList!4601 lm!1477))) (noDuplicateKeys!1293 (_2!29106 (h!56961 (toList!4601 lm!1477)))))))

(assert (=> bs!1008074 m!5414811))

(assert (=> b!4591793 d!1444581))

(declare-fun b_lambda!168551 () Bool)

(assert (= b_lambda!168529 (or d!1444399 b_lambda!168551)))

(declare-fun bs!1008075 () Bool)

(declare-fun d!1444583 () Bool)

(assert (= bs!1008075 (and d!1444583 d!1444399)))

(assert (=> bs!1008075 (= (dynLambda!21363 lambda!184867 (h!56961 (toList!4601 lm!1477))) (allKeysSameHash!1149 (_2!29106 (h!56961 (toList!4601 lm!1477))) (_1!29106 (h!56961 (toList!4601 lm!1477))) hashF!1107))))

(declare-fun m!5415145 () Bool)

(assert (=> bs!1008075 m!5415145))

(assert (=> b!4591736 d!1444583))

(push 1)

(assert (not bs!1008074))

(assert (not bm!320563))

(assert (not bs!1008070))

(assert (not b!4591778))

(assert (not b_lambda!168549))

(assert (not b!4591706))

(assert (not b_lambda!168539))

(assert (not b!4591547))

(assert (not d!1444539))

(assert (not d!1444555))

(assert (not d!1444559))

(assert (not b!4591579))

(assert (not d!1444425))

(assert (not b!4591564))

(assert (not d!1444515))

(assert (not b!4591803))

(assert (not b!4591808))

(assert (not d!1444423))

(assert (not b!4591562))

(assert (not b!4591806))

(assert (not b_lambda!168547))

(assert (not b!4591807))

(assert (not b!4591768))

(assert (not b!4591795))

(assert (not b!4591705))

(assert (not b!4591717))

(assert (not b!4591709))

(assert (not b!4591729))

(assert (not b!4591781))

(assert (not b!4591737))

(assert (not b!4591591))

(assert (not b!4591800))

(assert (not d!1444523))

(assert (not b!4591744))

(assert (not b!4591801))

(assert (not b!4591798))

(assert (not d!1444441))

(assert (not bs!1008075))

(assert (not d!1444437))

(assert (not d!1444535))

(assert (not b!4591766))

(assert (not b!4591556))

(assert (not b!4591742))

(assert (not b!4591790))

(assert (not b!4591805))

(assert (not b!4591723))

(assert (not b!4591719))

(assert (not b!4591792))

(assert (not bm!320565))

(assert (not b!4591765))

(assert (not b!4591548))

(assert (not bs!1008073))

(assert (not b!4591538))

(assert (not b_lambda!168507))

(assert (not b_lambda!168543))

(assert (not d!1444519))

(assert (not bs!1008072))

(assert tp_is_empty!28465)

(assert (not b!4591804))

(assert (not d!1444429))

(assert (not b!4591746))

(assert (not b!4591738))

(assert (not d!1444551))

(assert (not d!1444547))

(assert (not b!4591550))

(assert (not b!4591741))

(assert (not b!4591788))

(assert (not b!4591735))

(assert (not b!4591739))

(assert (not d!1444543))

(assert (not d!1444545))

(assert (not b!4591544))

(assert (not b!4591703))

(assert (not d!1444533))

(assert tp_is_empty!28467)

(assert (not b!4591704))

(assert (not b_lambda!168551))

(assert (not bm!320564))

(assert (not b!4591794))

(assert (not d!1444431))

(assert (not b_lambda!168545))

(assert (not b!4591772))

(assert (not d!1444537))

(assert (not b!4591718))

(assert (not bs!1008071))

(assert (not d!1444433))

(assert (not d!1444521))

(assert (not b!4591796))

(assert (not b!4591567))

(assert (not b!4591546))

(assert (not b_lambda!168505))

(assert (not b!4591770))

(assert (not b_lambda!168541))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

