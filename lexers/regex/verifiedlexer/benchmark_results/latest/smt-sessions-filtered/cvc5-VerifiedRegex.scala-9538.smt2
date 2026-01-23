; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502884 () Bool)

(assert start!502884)

(declare-fun b!4836286 () Bool)

(declare-fun res!2060792 () Bool)

(declare-fun e!3022426 () Bool)

(assert (=> b!4836286 (=> (not res!2060792) (not e!3022426))))

(declare-datatypes ((K!16977 0))(
  ( (K!16978 (val!21887 Int)) )
))
(declare-datatypes ((V!17223 0))(
  ( (V!17224 (val!21888 Int)) )
))
(declare-datatypes ((tuple2!58646 0))(
  ( (tuple2!58647 (_1!32617 K!16977) (_2!32617 V!17223)) )
))
(declare-datatypes ((List!55356 0))(
  ( (Nil!55232) (Cons!55232 (h!61667 tuple2!58646) (t!362852 List!55356)) )
))
(declare-datatypes ((tuple2!58648 0))(
  ( (tuple2!58649 (_1!32618 (_ BitVec 64)) (_2!32618 List!55356)) )
))
(declare-datatypes ((List!55357 0))(
  ( (Nil!55233) (Cons!55233 (h!61668 tuple2!58648) (t!362853 List!55357)) )
))
(declare-datatypes ((ListLongMap!6189 0))(
  ( (ListLongMap!6190 (toList!7653 List!55357)) )
))
(declare-fun lm!2671 () ListLongMap!6189)

(declare-fun key!6540 () K!16977)

(declare-fun containsKey!4513 (List!55356 K!16977) Bool)

(assert (=> b!4836286 (= res!2060792 (containsKey!4513 (_2!32618 (h!61668 (toList!7653 lm!2671))) key!6540))))

(declare-fun b!4836287 () Bool)

(declare-fun res!2060798 () Bool)

(declare-fun e!3022424 () Bool)

(assert (=> b!4836287 (=> (not res!2060798) (not e!3022424))))

(declare-fun lt!1981728 () tuple2!58646)

(declare-fun contains!19034 (List!55356 tuple2!58646) Bool)

(assert (=> b!4836287 (= res!2060798 (contains!19034 (_2!32618 (h!61668 (toList!7653 lm!2671))) lt!1981728))))

(declare-fun b!4836288 () Bool)

(declare-fun res!2060797 () Bool)

(assert (=> b!4836288 (=> (not res!2060797) (not e!3022426))))

(declare-fun containsKeyBiggerList!647 (List!55357 K!16977) Bool)

(assert (=> b!4836288 (= res!2060797 (containsKeyBiggerList!647 (toList!7653 lm!2671) key!6540))))

(declare-fun b!4836289 () Bool)

(declare-fun res!2060796 () Bool)

(assert (=> b!4836289 (=> (not res!2060796) (not e!3022426))))

(assert (=> b!4836289 (= res!2060796 (is-Cons!55233 (toList!7653 lm!2671)))))

(declare-fun b!4836290 () Bool)

(declare-fun lambda!239498 () Int)

(declare-fun forall!12763 (List!55357 Int) Bool)

(assert (=> b!4836290 (= e!3022426 (not (forall!12763 (t!362853 (toList!7653 lm!2671)) lambda!239498)))))

(assert (=> b!4836290 e!3022424))

(declare-fun res!2060793 () Bool)

(assert (=> b!4836290 (=> (not res!2060793) (not e!3022424))))

(declare-fun head!10371 (List!55357) tuple2!58648)

(assert (=> b!4836290 (= res!2060793 (contains!19034 (_2!32618 (head!10371 (toList!7653 lm!2671))) lt!1981728))))

(declare-fun lt!1981729 () V!17223)

(assert (=> b!4836290 (= lt!1981728 (tuple2!58647 key!6540 lt!1981729))))

(declare-datatypes ((Hashable!7363 0))(
  ( (HashableExt!7362 (__x!33638 Int)) )
))
(declare-fun hashF!1662 () Hashable!7363)

(declare-datatypes ((Unit!144600 0))(
  ( (Unit!144601) )
))
(declare-fun lt!1981730 () Unit!144600)

(declare-fun lemmaInPairListHeadThenGetValueInTuple!7 (ListLongMap!6189 K!16977 V!17223 Hashable!7363) Unit!144600)

(assert (=> b!4836290 (= lt!1981730 (lemmaInPairListHeadThenGetValueInTuple!7 lm!2671 key!6540 lt!1981729 hashF!1662))))

(declare-fun getValue!177 (List!55357 K!16977) V!17223)

(assert (=> b!4836290 (= lt!1981729 (getValue!177 (toList!7653 lm!2671) key!6540))))

(declare-fun b!4836291 () Bool)

(declare-fun res!2060795 () Bool)

(assert (=> b!4836291 (=> (not res!2060795) (not e!3022426))))

(declare-fun allKeysSameHashInMap!2679 (ListLongMap!6189 Hashable!7363) Bool)

(assert (=> b!4836291 (= res!2060795 (allKeysSameHashInMap!2679 lm!2671 hashF!1662))))

(declare-fun res!2060794 () Bool)

(assert (=> start!502884 (=> (not res!2060794) (not e!3022426))))

(assert (=> start!502884 (= res!2060794 (forall!12763 (toList!7653 lm!2671) lambda!239498))))

(assert (=> start!502884 e!3022426))

(declare-fun e!3022425 () Bool)

(declare-fun inv!70878 (ListLongMap!6189) Bool)

(assert (=> start!502884 (and (inv!70878 lm!2671) e!3022425)))

(assert (=> start!502884 true))

(declare-fun tp_is_empty!34825 () Bool)

(assert (=> start!502884 tp_is_empty!34825))

(declare-fun b!4836292 () Bool)

(declare-datatypes ((ListMap!7011 0))(
  ( (ListMap!7012 (toList!7654 List!55356)) )
))
(declare-fun extractMap!2725 (List!55357) ListMap!7011)

(declare-fun addToMapMapFromBucket!1865 (List!55356 ListMap!7011) ListMap!7011)

(assert (=> b!4836292 (= e!3022424 (= (extractMap!2725 (toList!7653 lm!2671)) (addToMapMapFromBucket!1865 (_2!32618 (h!61668 (toList!7653 lm!2671))) (extractMap!2725 (t!362853 (toList!7653 lm!2671))))))))

(declare-fun b!4836293 () Bool)

(declare-fun tp!1363467 () Bool)

(assert (=> b!4836293 (= e!3022425 tp!1363467)))

(assert (= (and start!502884 res!2060794) b!4836291))

(assert (= (and b!4836291 res!2060795) b!4836288))

(assert (= (and b!4836288 res!2060797) b!4836289))

(assert (= (and b!4836289 res!2060796) b!4836286))

(assert (= (and b!4836286 res!2060792) b!4836290))

(assert (= (and b!4836290 res!2060793) b!4836287))

(assert (= (and b!4836287 res!2060798) b!4836292))

(assert (= start!502884 b!4836293))

(declare-fun m!5831516 () Bool)

(assert (=> b!4836287 m!5831516))

(declare-fun m!5831518 () Bool)

(assert (=> b!4836290 m!5831518))

(declare-fun m!5831520 () Bool)

(assert (=> b!4836290 m!5831520))

(declare-fun m!5831522 () Bool)

(assert (=> b!4836290 m!5831522))

(declare-fun m!5831524 () Bool)

(assert (=> b!4836290 m!5831524))

(declare-fun m!5831526 () Bool)

(assert (=> b!4836290 m!5831526))

(declare-fun m!5831528 () Bool)

(assert (=> b!4836286 m!5831528))

(declare-fun m!5831530 () Bool)

(assert (=> b!4836292 m!5831530))

(declare-fun m!5831532 () Bool)

(assert (=> b!4836292 m!5831532))

(assert (=> b!4836292 m!5831532))

(declare-fun m!5831534 () Bool)

(assert (=> b!4836292 m!5831534))

(declare-fun m!5831536 () Bool)

(assert (=> b!4836291 m!5831536))

(declare-fun m!5831538 () Bool)

(assert (=> start!502884 m!5831538))

(declare-fun m!5831540 () Bool)

(assert (=> start!502884 m!5831540))

(declare-fun m!5831542 () Bool)

(assert (=> b!4836288 m!5831542))

(push 1)

(assert (not b!4836286))

(assert tp_is_empty!34825)

(assert (not b!4836287))

(assert (not b!4836292))

(assert (not b!4836293))

(assert (not b!4836288))

(assert (not start!502884))

(assert (not b!4836291))

(assert (not b!4836290))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1550415 () Bool)

(assert (=> d!1550415 (= (head!10371 (toList!7653 lm!2671)) (h!61668 (toList!7653 lm!2671)))))

(assert (=> b!4836290 d!1550415))

(declare-fun bs!1167502 () Bool)

(declare-fun d!1550417 () Bool)

(assert (= bs!1167502 (and d!1550417 start!502884)))

(declare-fun lambda!239506 () Int)

(assert (=> bs!1167502 (= lambda!239506 lambda!239498)))

(assert (=> d!1550417 (contains!19034 (_2!32618 (head!10371 (toList!7653 lm!2671))) (tuple2!58647 key!6540 lt!1981729))))

(declare-fun lt!1981742 () Unit!144600)

(declare-fun choose!35329 (ListLongMap!6189 K!16977 V!17223 Hashable!7363) Unit!144600)

(assert (=> d!1550417 (= lt!1981742 (choose!35329 lm!2671 key!6540 lt!1981729 hashF!1662))))

(assert (=> d!1550417 (forall!12763 (toList!7653 lm!2671) lambda!239506)))

(assert (=> d!1550417 (= (lemmaInPairListHeadThenGetValueInTuple!7 lm!2671 key!6540 lt!1981729 hashF!1662) lt!1981742)))

(declare-fun bs!1167503 () Bool)

(assert (= bs!1167503 d!1550417))

(assert (=> bs!1167503 m!5831526))

(declare-fun m!5831572 () Bool)

(assert (=> bs!1167503 m!5831572))

(declare-fun m!5831574 () Bool)

(assert (=> bs!1167503 m!5831574))

(declare-fun m!5831576 () Bool)

(assert (=> bs!1167503 m!5831576))

(assert (=> b!4836290 d!1550417))

(declare-fun d!1550419 () Bool)

(declare-fun c!823868 () Bool)

(declare-fun e!3022441 () Bool)

(assert (=> d!1550419 (= c!823868 e!3022441)))

(declare-fun res!2060822 () Bool)

(assert (=> d!1550419 (=> (not res!2060822) (not e!3022441))))

(assert (=> d!1550419 (= res!2060822 (is-Cons!55233 (toList!7653 lm!2671)))))

(declare-fun e!3022440 () V!17223)

(assert (=> d!1550419 (= (getValue!177 (toList!7653 lm!2671) key!6540) e!3022440)))

(declare-fun b!4836326 () Bool)

(assert (=> b!4836326 (= e!3022441 (containsKey!4513 (_2!32618 (h!61668 (toList!7653 lm!2671))) key!6540))))

(declare-fun b!4836324 () Bool)

(declare-datatypes ((Option!13585 0))(
  ( (None!13584) (Some!13584 (v!49297 tuple2!58646)) )
))
(declare-fun get!18910 (Option!13585) tuple2!58646)

(declare-fun getPair!1047 (List!55356 K!16977) Option!13585)

(assert (=> b!4836324 (= e!3022440 (_2!32617 (get!18910 (getPair!1047 (_2!32618 (h!61668 (toList!7653 lm!2671))) key!6540))))))

(declare-fun b!4836325 () Bool)

(assert (=> b!4836325 (= e!3022440 (getValue!177 (t!362853 (toList!7653 lm!2671)) key!6540))))

(assert (= (and d!1550419 res!2060822) b!4836326))

(assert (= (and d!1550419 c!823868) b!4836324))

(assert (= (and d!1550419 (not c!823868)) b!4836325))

(assert (=> b!4836326 m!5831528))

(declare-fun m!5831578 () Bool)

(assert (=> b!4836324 m!5831578))

(assert (=> b!4836324 m!5831578))

(declare-fun m!5831580 () Bool)

(assert (=> b!4836324 m!5831580))

(declare-fun m!5831582 () Bool)

(assert (=> b!4836325 m!5831582))

(assert (=> b!4836290 d!1550419))

(declare-fun d!1550421 () Bool)

(declare-fun lt!1981745 () Bool)

(declare-fun content!9845 (List!55356) (Set tuple2!58646))

(assert (=> d!1550421 (= lt!1981745 (set.member lt!1981728 (content!9845 (_2!32618 (head!10371 (toList!7653 lm!2671))))))))

(declare-fun e!3022447 () Bool)

(assert (=> d!1550421 (= lt!1981745 e!3022447)))

(declare-fun res!2060828 () Bool)

(assert (=> d!1550421 (=> (not res!2060828) (not e!3022447))))

(assert (=> d!1550421 (= res!2060828 (is-Cons!55232 (_2!32618 (head!10371 (toList!7653 lm!2671)))))))

(assert (=> d!1550421 (= (contains!19034 (_2!32618 (head!10371 (toList!7653 lm!2671))) lt!1981728) lt!1981745)))

(declare-fun b!4836331 () Bool)

(declare-fun e!3022446 () Bool)

(assert (=> b!4836331 (= e!3022447 e!3022446)))

(declare-fun res!2060827 () Bool)

(assert (=> b!4836331 (=> res!2060827 e!3022446)))

(assert (=> b!4836331 (= res!2060827 (= (h!61667 (_2!32618 (head!10371 (toList!7653 lm!2671)))) lt!1981728))))

(declare-fun b!4836332 () Bool)

(assert (=> b!4836332 (= e!3022446 (contains!19034 (t!362852 (_2!32618 (head!10371 (toList!7653 lm!2671)))) lt!1981728))))

(assert (= (and d!1550421 res!2060828) b!4836331))

(assert (= (and b!4836331 (not res!2060827)) b!4836332))

(declare-fun m!5831584 () Bool)

(assert (=> d!1550421 m!5831584))

(declare-fun m!5831586 () Bool)

(assert (=> d!1550421 m!5831586))

(declare-fun m!5831588 () Bool)

(assert (=> b!4836332 m!5831588))

(assert (=> b!4836290 d!1550421))

(declare-fun d!1550425 () Bool)

(declare-fun res!2060837 () Bool)

(declare-fun e!3022456 () Bool)

(assert (=> d!1550425 (=> res!2060837 e!3022456)))

(assert (=> d!1550425 (= res!2060837 (is-Nil!55233 (t!362853 (toList!7653 lm!2671))))))

(assert (=> d!1550425 (= (forall!12763 (t!362853 (toList!7653 lm!2671)) lambda!239498) e!3022456)))

(declare-fun b!4836341 () Bool)

(declare-fun e!3022457 () Bool)

(assert (=> b!4836341 (= e!3022456 e!3022457)))

(declare-fun res!2060838 () Bool)

(assert (=> b!4836341 (=> (not res!2060838) (not e!3022457))))

(declare-fun dynLambda!22263 (Int tuple2!58648) Bool)

(assert (=> b!4836341 (= res!2060838 (dynLambda!22263 lambda!239498 (h!61668 (t!362853 (toList!7653 lm!2671)))))))

(declare-fun b!4836342 () Bool)

(assert (=> b!4836342 (= e!3022457 (forall!12763 (t!362853 (t!362853 (toList!7653 lm!2671))) lambda!239498))))

(assert (= (and d!1550425 (not res!2060837)) b!4836341))

(assert (= (and b!4836341 res!2060838) b!4836342))

(declare-fun b_lambda!191047 () Bool)

(assert (=> (not b_lambda!191047) (not b!4836341)))

(declare-fun m!5831590 () Bool)

(assert (=> b!4836341 m!5831590))

(declare-fun m!5831592 () Bool)

(assert (=> b!4836342 m!5831592))

(assert (=> b!4836290 d!1550425))

(declare-fun bs!1167504 () Bool)

(declare-fun d!1550427 () Bool)

(assert (= bs!1167504 (and d!1550427 start!502884)))

(declare-fun lambda!239509 () Int)

(assert (=> bs!1167504 (not (= lambda!239509 lambda!239498))))

(declare-fun bs!1167505 () Bool)

(assert (= bs!1167505 (and d!1550427 d!1550417)))

(assert (=> bs!1167505 (not (= lambda!239509 lambda!239506))))

(assert (=> d!1550427 true))

(assert (=> d!1550427 (= (allKeysSameHashInMap!2679 lm!2671 hashF!1662) (forall!12763 (toList!7653 lm!2671) lambda!239509))))

(declare-fun bs!1167506 () Bool)

(assert (= bs!1167506 d!1550427))

(declare-fun m!5831596 () Bool)

(assert (=> bs!1167506 m!5831596))

(assert (=> b!4836291 d!1550427))

(declare-fun d!1550431 () Bool)

(declare-fun res!2060845 () Bool)

(declare-fun e!3022464 () Bool)

(assert (=> d!1550431 (=> res!2060845 e!3022464)))

(assert (=> d!1550431 (= res!2060845 (and (is-Cons!55232 (_2!32618 (h!61668 (toList!7653 lm!2671)))) (= (_1!32617 (h!61667 (_2!32618 (h!61668 (toList!7653 lm!2671))))) key!6540)))))

(assert (=> d!1550431 (= (containsKey!4513 (_2!32618 (h!61668 (toList!7653 lm!2671))) key!6540) e!3022464)))

(declare-fun b!4836351 () Bool)

(declare-fun e!3022465 () Bool)

(assert (=> b!4836351 (= e!3022464 e!3022465)))

(declare-fun res!2060846 () Bool)

(assert (=> b!4836351 (=> (not res!2060846) (not e!3022465))))

(assert (=> b!4836351 (= res!2060846 (is-Cons!55232 (_2!32618 (h!61668 (toList!7653 lm!2671)))))))

(declare-fun b!4836352 () Bool)

(assert (=> b!4836352 (= e!3022465 (containsKey!4513 (t!362852 (_2!32618 (h!61668 (toList!7653 lm!2671)))) key!6540))))

(assert (= (and d!1550431 (not res!2060845)) b!4836351))

(assert (= (and b!4836351 res!2060846) b!4836352))

(declare-fun m!5831600 () Bool)

(assert (=> b!4836352 m!5831600))

(assert (=> b!4836286 d!1550431))

(declare-fun d!1550435 () Bool)

(declare-fun lt!1981746 () Bool)

(assert (=> d!1550435 (= lt!1981746 (set.member lt!1981728 (content!9845 (_2!32618 (h!61668 (toList!7653 lm!2671))))))))

(declare-fun e!3022467 () Bool)

(assert (=> d!1550435 (= lt!1981746 e!3022467)))

(declare-fun res!2060848 () Bool)

(assert (=> d!1550435 (=> (not res!2060848) (not e!3022467))))

(assert (=> d!1550435 (= res!2060848 (is-Cons!55232 (_2!32618 (h!61668 (toList!7653 lm!2671)))))))

(assert (=> d!1550435 (= (contains!19034 (_2!32618 (h!61668 (toList!7653 lm!2671))) lt!1981728) lt!1981746)))

(declare-fun b!4836353 () Bool)

(declare-fun e!3022466 () Bool)

(assert (=> b!4836353 (= e!3022467 e!3022466)))

(declare-fun res!2060847 () Bool)

(assert (=> b!4836353 (=> res!2060847 e!3022466)))

(assert (=> b!4836353 (= res!2060847 (= (h!61667 (_2!32618 (h!61668 (toList!7653 lm!2671)))) lt!1981728))))

(declare-fun b!4836354 () Bool)

(assert (=> b!4836354 (= e!3022466 (contains!19034 (t!362852 (_2!32618 (h!61668 (toList!7653 lm!2671)))) lt!1981728))))

(assert (= (and d!1550435 res!2060848) b!4836353))

(assert (= (and b!4836353 (not res!2060847)) b!4836354))

(declare-fun m!5831602 () Bool)

(assert (=> d!1550435 m!5831602))

(declare-fun m!5831604 () Bool)

(assert (=> d!1550435 m!5831604))

(declare-fun m!5831606 () Bool)

(assert (=> b!4836354 m!5831606))

(assert (=> b!4836287 d!1550435))

(declare-fun bs!1167508 () Bool)

(declare-fun d!1550437 () Bool)

(assert (= bs!1167508 (and d!1550437 start!502884)))

(declare-fun lambda!239512 () Int)

(assert (=> bs!1167508 (= lambda!239512 lambda!239498)))

(declare-fun bs!1167509 () Bool)

(assert (= bs!1167509 (and d!1550437 d!1550417)))

(assert (=> bs!1167509 (= lambda!239512 lambda!239506)))

(declare-fun bs!1167510 () Bool)

(assert (= bs!1167510 (and d!1550437 d!1550427)))

(assert (=> bs!1167510 (not (= lambda!239512 lambda!239509))))

(declare-fun lt!1981749 () ListMap!7011)

(declare-fun invariantList!1852 (List!55356) Bool)

(assert (=> d!1550437 (invariantList!1852 (toList!7654 lt!1981749))))

(declare-fun e!3022470 () ListMap!7011)

(assert (=> d!1550437 (= lt!1981749 e!3022470)))

(declare-fun c!823871 () Bool)

(assert (=> d!1550437 (= c!823871 (is-Cons!55233 (toList!7653 lm!2671)))))

(assert (=> d!1550437 (forall!12763 (toList!7653 lm!2671) lambda!239512)))

(assert (=> d!1550437 (= (extractMap!2725 (toList!7653 lm!2671)) lt!1981749)))

(declare-fun b!4836359 () Bool)

(assert (=> b!4836359 (= e!3022470 (addToMapMapFromBucket!1865 (_2!32618 (h!61668 (toList!7653 lm!2671))) (extractMap!2725 (t!362853 (toList!7653 lm!2671)))))))

(declare-fun b!4836360 () Bool)

(assert (=> b!4836360 (= e!3022470 (ListMap!7012 Nil!55232))))

(assert (= (and d!1550437 c!823871) b!4836359))

(assert (= (and d!1550437 (not c!823871)) b!4836360))

(declare-fun m!5831608 () Bool)

(assert (=> d!1550437 m!5831608))

(declare-fun m!5831610 () Bool)

(assert (=> d!1550437 m!5831610))

(assert (=> b!4836359 m!5831532))

(assert (=> b!4836359 m!5831532))

(assert (=> b!4836359 m!5831534))

(assert (=> b!4836292 d!1550437))

(declare-fun b!4836380 () Bool)

(assert (=> b!4836380 true))

(declare-fun bs!1167512 () Bool)

(declare-fun b!4836379 () Bool)

(assert (= bs!1167512 (and b!4836379 b!4836380)))

(declare-fun lambda!239545 () Int)

(declare-fun lambda!239544 () Int)

(assert (=> bs!1167512 (= lambda!239545 lambda!239544)))

(assert (=> b!4836379 true))

(declare-fun lambda!239546 () Int)

(declare-fun lt!1981813 () ListMap!7011)

(assert (=> bs!1167512 (= (= lt!1981813 (extractMap!2725 (t!362853 (toList!7653 lm!2671)))) (= lambda!239546 lambda!239544))))

(assert (=> b!4836379 (= (= lt!1981813 (extractMap!2725 (t!362853 (toList!7653 lm!2671)))) (= lambda!239546 lambda!239545))))

(assert (=> b!4836379 true))

(declare-fun bs!1167513 () Bool)

(declare-fun d!1550439 () Bool)

(assert (= bs!1167513 (and d!1550439 b!4836380)))

(declare-fun lt!1981801 () ListMap!7011)

(declare-fun lambda!239547 () Int)

(assert (=> bs!1167513 (= (= lt!1981801 (extractMap!2725 (t!362853 (toList!7653 lm!2671)))) (= lambda!239547 lambda!239544))))

(declare-fun bs!1167514 () Bool)

(assert (= bs!1167514 (and d!1550439 b!4836379)))

(assert (=> bs!1167514 (= (= lt!1981801 (extractMap!2725 (t!362853 (toList!7653 lm!2671)))) (= lambda!239547 lambda!239545))))

(assert (=> bs!1167514 (= (= lt!1981801 lt!1981813) (= lambda!239547 lambda!239546))))

(assert (=> d!1550439 true))

(declare-fun b!4836377 () Bool)

(declare-fun e!3022481 () Bool)

(assert (=> b!4836377 (= e!3022481 (invariantList!1852 (toList!7654 lt!1981801)))))

(declare-fun call!337053 () Bool)

(declare-fun c!823877 () Bool)

(declare-fun lt!1981809 () ListMap!7011)

(declare-fun bm!337046 () Bool)

(declare-fun forall!12765 (List!55356 Int) Bool)

(assert (=> bm!337046 (= call!337053 (forall!12765 (ite c!823877 (toList!7654 (extractMap!2725 (t!362853 (toList!7653 lm!2671)))) (toList!7654 lt!1981809)) (ite c!823877 lambda!239544 lambda!239546)))))

(assert (=> d!1550439 e!3022481))

(declare-fun res!2060855 () Bool)

(assert (=> d!1550439 (=> (not res!2060855) (not e!3022481))))

(assert (=> d!1550439 (= res!2060855 (forall!12765 (_2!32618 (h!61668 (toList!7653 lm!2671))) lambda!239547))))

(declare-fun e!3022480 () ListMap!7011)

(assert (=> d!1550439 (= lt!1981801 e!3022480)))

(assert (=> d!1550439 (= c!823877 (is-Nil!55232 (_2!32618 (h!61668 (toList!7653 lm!2671)))))))

(declare-fun noDuplicateKeys!2516 (List!55356) Bool)

(assert (=> d!1550439 (noDuplicateKeys!2516 (_2!32618 (h!61668 (toList!7653 lm!2671))))))

(assert (=> d!1550439 (= (addToMapMapFromBucket!1865 (_2!32618 (h!61668 (toList!7653 lm!2671))) (extractMap!2725 (t!362853 (toList!7653 lm!2671)))) lt!1981801)))

(declare-fun b!4836378 () Bool)

(declare-fun res!2060856 () Bool)

(assert (=> b!4836378 (=> (not res!2060856) (not e!3022481))))

(assert (=> b!4836378 (= res!2060856 (forall!12765 (toList!7654 (extractMap!2725 (t!362853 (toList!7653 lm!2671)))) lambda!239547))))

(assert (=> b!4836379 (= e!3022480 lt!1981813)))

(declare-fun +!2588 (ListMap!7011 tuple2!58646) ListMap!7011)

(assert (=> b!4836379 (= lt!1981809 (+!2588 (extractMap!2725 (t!362853 (toList!7653 lm!2671))) (h!61667 (_2!32618 (h!61668 (toList!7653 lm!2671))))))))

(assert (=> b!4836379 (= lt!1981813 (addToMapMapFromBucket!1865 (t!362852 (_2!32618 (h!61668 (toList!7653 lm!2671)))) (+!2588 (extractMap!2725 (t!362853 (toList!7653 lm!2671))) (h!61667 (_2!32618 (h!61668 (toList!7653 lm!2671)))))))))

(declare-fun lt!1981796 () Unit!144600)

(declare-fun call!337052 () Unit!144600)

(assert (=> b!4836379 (= lt!1981796 call!337052)))

(assert (=> b!4836379 (forall!12765 (toList!7654 (extractMap!2725 (t!362853 (toList!7653 lm!2671)))) lambda!239545)))

(declare-fun lt!1981798 () Unit!144600)

(assert (=> b!4836379 (= lt!1981798 lt!1981796)))

(assert (=> b!4836379 (forall!12765 (toList!7654 lt!1981809) lambda!239546)))

(declare-fun lt!1981815 () Unit!144600)

(declare-fun Unit!144604 () Unit!144600)

(assert (=> b!4836379 (= lt!1981815 Unit!144604)))

(declare-fun call!337051 () Bool)

(assert (=> b!4836379 call!337051))

(declare-fun lt!1981795 () Unit!144600)

(declare-fun Unit!144605 () Unit!144600)

(assert (=> b!4836379 (= lt!1981795 Unit!144605)))

(declare-fun lt!1981805 () Unit!144600)

(declare-fun Unit!144606 () Unit!144600)

(assert (=> b!4836379 (= lt!1981805 Unit!144606)))

(declare-fun lt!1981804 () Unit!144600)

(declare-fun forallContained!4468 (List!55356 Int tuple2!58646) Unit!144600)

(assert (=> b!4836379 (= lt!1981804 (forallContained!4468 (toList!7654 lt!1981809) lambda!239546 (h!61667 (_2!32618 (h!61668 (toList!7653 lm!2671))))))))

(declare-fun contains!19036 (ListMap!7011 K!16977) Bool)

(assert (=> b!4836379 (contains!19036 lt!1981809 (_1!32617 (h!61667 (_2!32618 (h!61668 (toList!7653 lm!2671))))))))

(declare-fun lt!1981814 () Unit!144600)

(declare-fun Unit!144607 () Unit!144600)

(assert (=> b!4836379 (= lt!1981814 Unit!144607)))

(assert (=> b!4836379 (contains!19036 lt!1981813 (_1!32617 (h!61667 (_2!32618 (h!61668 (toList!7653 lm!2671))))))))

(declare-fun lt!1981807 () Unit!144600)

(declare-fun Unit!144608 () Unit!144600)

(assert (=> b!4836379 (= lt!1981807 Unit!144608)))

(assert (=> b!4836379 (forall!12765 (_2!32618 (h!61668 (toList!7653 lm!2671))) lambda!239546)))

(declare-fun lt!1981799 () Unit!144600)

(declare-fun Unit!144609 () Unit!144600)

(assert (=> b!4836379 (= lt!1981799 Unit!144609)))

(assert (=> b!4836379 call!337053))

(declare-fun lt!1981811 () Unit!144600)

(declare-fun Unit!144610 () Unit!144600)

(assert (=> b!4836379 (= lt!1981811 Unit!144610)))

(declare-fun lt!1981812 () Unit!144600)

(declare-fun Unit!144611 () Unit!144600)

(assert (=> b!4836379 (= lt!1981812 Unit!144611)))

(declare-fun lt!1981806 () Unit!144600)

(declare-fun addForallContainsKeyThenBeforeAdding!1027 (ListMap!7011 ListMap!7011 K!16977 V!17223) Unit!144600)

(assert (=> b!4836379 (= lt!1981806 (addForallContainsKeyThenBeforeAdding!1027 (extractMap!2725 (t!362853 (toList!7653 lm!2671))) lt!1981813 (_1!32617 (h!61667 (_2!32618 (h!61668 (toList!7653 lm!2671))))) (_2!32617 (h!61667 (_2!32618 (h!61668 (toList!7653 lm!2671)))))))))

(assert (=> b!4836379 (forall!12765 (toList!7654 (extractMap!2725 (t!362853 (toList!7653 lm!2671)))) lambda!239546)))

(declare-fun lt!1981803 () Unit!144600)

(assert (=> b!4836379 (= lt!1981803 lt!1981806)))

(assert (=> b!4836379 (forall!12765 (toList!7654 (extractMap!2725 (t!362853 (toList!7653 lm!2671)))) lambda!239546)))

(declare-fun lt!1981802 () Unit!144600)

(declare-fun Unit!144612 () Unit!144600)

(assert (=> b!4836379 (= lt!1981802 Unit!144612)))

(declare-fun res!2060857 () Bool)

(assert (=> b!4836379 (= res!2060857 (forall!12765 (_2!32618 (h!61668 (toList!7653 lm!2671))) lambda!239546))))

(declare-fun e!3022482 () Bool)

(assert (=> b!4836379 (=> (not res!2060857) (not e!3022482))))

(assert (=> b!4836379 e!3022482))

(declare-fun lt!1981810 () Unit!144600)

(declare-fun Unit!144613 () Unit!144600)

(assert (=> b!4836379 (= lt!1981810 Unit!144613)))

(assert (=> b!4836380 (= e!3022480 (extractMap!2725 (t!362853 (toList!7653 lm!2671))))))

(declare-fun lt!1981800 () Unit!144600)

(assert (=> b!4836380 (= lt!1981800 call!337052)))

(assert (=> b!4836380 call!337053))

(declare-fun lt!1981808 () Unit!144600)

(assert (=> b!4836380 (= lt!1981808 lt!1981800)))

(assert (=> b!4836380 call!337051))

(declare-fun lt!1981797 () Unit!144600)

(declare-fun Unit!144614 () Unit!144600)

(assert (=> b!4836380 (= lt!1981797 Unit!144614)))

(declare-fun bm!337047 () Bool)

(assert (=> bm!337047 (= call!337051 (forall!12765 (ite c!823877 (toList!7654 (extractMap!2725 (t!362853 (toList!7653 lm!2671)))) (t!362852 (_2!32618 (h!61668 (toList!7653 lm!2671))))) (ite c!823877 lambda!239544 lambda!239546)))))

(declare-fun bm!337048 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1028 (ListMap!7011) Unit!144600)

(assert (=> bm!337048 (= call!337052 (lemmaContainsAllItsOwnKeys!1028 (extractMap!2725 (t!362853 (toList!7653 lm!2671)))))))

(declare-fun b!4836381 () Bool)

(assert (=> b!4836381 (= e!3022482 (forall!12765 (toList!7654 (extractMap!2725 (t!362853 (toList!7653 lm!2671)))) lambda!239546))))

(assert (= (and d!1550439 c!823877) b!4836380))

(assert (= (and d!1550439 (not c!823877)) b!4836379))

(assert (= (and b!4836379 res!2060857) b!4836381))

(assert (= (or b!4836380 b!4836379) bm!337048))

(assert (= (or b!4836380 b!4836379) bm!337047))

(assert (= (or b!4836380 b!4836379) bm!337046))

(assert (= (and d!1550439 res!2060855) b!4836378))

(assert (= (and b!4836378 res!2060856) b!4836377))

(declare-fun m!5831616 () Bool)

(assert (=> b!4836377 m!5831616))

(declare-fun m!5831618 () Bool)

(assert (=> b!4836378 m!5831618))

(declare-fun m!5831620 () Bool)

(assert (=> b!4836381 m!5831620))

(declare-fun m!5831622 () Bool)

(assert (=> d!1550439 m!5831622))

(declare-fun m!5831624 () Bool)

(assert (=> d!1550439 m!5831624))

(assert (=> bm!337048 m!5831532))

(declare-fun m!5831626 () Bool)

(assert (=> bm!337048 m!5831626))

(declare-fun m!5831628 () Bool)

(assert (=> bm!337047 m!5831628))

(declare-fun m!5831630 () Bool)

(assert (=> b!4836379 m!5831630))

(declare-fun m!5831632 () Bool)

(assert (=> b!4836379 m!5831632))

(assert (=> b!4836379 m!5831620))

(declare-fun m!5831634 () Bool)

(assert (=> b!4836379 m!5831634))

(declare-fun m!5831636 () Bool)

(assert (=> b!4836379 m!5831636))

(declare-fun m!5831638 () Bool)

(assert (=> b!4836379 m!5831638))

(assert (=> b!4836379 m!5831532))

(assert (=> b!4836379 m!5831636))

(declare-fun m!5831640 () Bool)

(assert (=> b!4836379 m!5831640))

(assert (=> b!4836379 m!5831634))

(assert (=> b!4836379 m!5831532))

(declare-fun m!5831642 () Bool)

(assert (=> b!4836379 m!5831642))

(declare-fun m!5831644 () Bool)

(assert (=> b!4836379 m!5831644))

(declare-fun m!5831646 () Bool)

(assert (=> b!4836379 m!5831646))

(assert (=> b!4836379 m!5831620))

(declare-fun m!5831648 () Bool)

(assert (=> bm!337046 m!5831648))

(assert (=> b!4836292 d!1550439))

(declare-fun bs!1167515 () Bool)

(declare-fun d!1550443 () Bool)

(assert (= bs!1167515 (and d!1550443 start!502884)))

(declare-fun lambda!239548 () Int)

(assert (=> bs!1167515 (= lambda!239548 lambda!239498)))

(declare-fun bs!1167516 () Bool)

(assert (= bs!1167516 (and d!1550443 d!1550417)))

(assert (=> bs!1167516 (= lambda!239548 lambda!239506)))

(declare-fun bs!1167517 () Bool)

(assert (= bs!1167517 (and d!1550443 d!1550427)))

(assert (=> bs!1167517 (not (= lambda!239548 lambda!239509))))

(declare-fun bs!1167518 () Bool)

(assert (= bs!1167518 (and d!1550443 d!1550437)))

(assert (=> bs!1167518 (= lambda!239548 lambda!239512)))

(declare-fun lt!1981816 () ListMap!7011)

(assert (=> d!1550443 (invariantList!1852 (toList!7654 lt!1981816))))

(declare-fun e!3022483 () ListMap!7011)

(assert (=> d!1550443 (= lt!1981816 e!3022483)))

(declare-fun c!823878 () Bool)

(assert (=> d!1550443 (= c!823878 (is-Cons!55233 (t!362853 (toList!7653 lm!2671))))))

(assert (=> d!1550443 (forall!12763 (t!362853 (toList!7653 lm!2671)) lambda!239548)))

(assert (=> d!1550443 (= (extractMap!2725 (t!362853 (toList!7653 lm!2671))) lt!1981816)))

(declare-fun b!4836384 () Bool)

(assert (=> b!4836384 (= e!3022483 (addToMapMapFromBucket!1865 (_2!32618 (h!61668 (t!362853 (toList!7653 lm!2671)))) (extractMap!2725 (t!362853 (t!362853 (toList!7653 lm!2671))))))))

(declare-fun b!4836385 () Bool)

(assert (=> b!4836385 (= e!3022483 (ListMap!7012 Nil!55232))))

(assert (= (and d!1550443 c!823878) b!4836384))

(assert (= (and d!1550443 (not c!823878)) b!4836385))

(declare-fun m!5831650 () Bool)

(assert (=> d!1550443 m!5831650))

(declare-fun m!5831652 () Bool)

(assert (=> d!1550443 m!5831652))

(declare-fun m!5831654 () Bool)

(assert (=> b!4836384 m!5831654))

(assert (=> b!4836384 m!5831654))

(declare-fun m!5831656 () Bool)

(assert (=> b!4836384 m!5831656))

(assert (=> b!4836292 d!1550443))

(declare-fun d!1550445 () Bool)

(declare-fun res!2060858 () Bool)

(declare-fun e!3022484 () Bool)

(assert (=> d!1550445 (=> res!2060858 e!3022484)))

(assert (=> d!1550445 (= res!2060858 (is-Nil!55233 (toList!7653 lm!2671)))))

(assert (=> d!1550445 (= (forall!12763 (toList!7653 lm!2671) lambda!239498) e!3022484)))

(declare-fun b!4836386 () Bool)

(declare-fun e!3022485 () Bool)

(assert (=> b!4836386 (= e!3022484 e!3022485)))

(declare-fun res!2060859 () Bool)

(assert (=> b!4836386 (=> (not res!2060859) (not e!3022485))))

(assert (=> b!4836386 (= res!2060859 (dynLambda!22263 lambda!239498 (h!61668 (toList!7653 lm!2671))))))

(declare-fun b!4836387 () Bool)

(assert (=> b!4836387 (= e!3022485 (forall!12763 (t!362853 (toList!7653 lm!2671)) lambda!239498))))

(assert (= (and d!1550445 (not res!2060858)) b!4836386))

(assert (= (and b!4836386 res!2060859) b!4836387))

(declare-fun b_lambda!191051 () Bool)

(assert (=> (not b_lambda!191051) (not b!4836386)))

(declare-fun m!5831658 () Bool)

(assert (=> b!4836386 m!5831658))

(assert (=> b!4836387 m!5831522))

(assert (=> start!502884 d!1550445))

(declare-fun d!1550447 () Bool)

(declare-fun isStrictlySorted!1015 (List!55357) Bool)

(assert (=> d!1550447 (= (inv!70878 lm!2671) (isStrictlySorted!1015 (toList!7653 lm!2671)))))

(declare-fun bs!1167519 () Bool)

(assert (= bs!1167519 d!1550447))

(declare-fun m!5831660 () Bool)

(assert (=> bs!1167519 m!5831660))

(assert (=> start!502884 d!1550447))

(declare-fun d!1550449 () Bool)

(declare-fun res!2060868 () Bool)

(declare-fun e!3022492 () Bool)

(assert (=> d!1550449 (=> res!2060868 e!3022492)))

(declare-fun e!3022493 () Bool)

(assert (=> d!1550449 (= res!2060868 e!3022493)))

(declare-fun res!2060867 () Bool)

(assert (=> d!1550449 (=> (not res!2060867) (not e!3022493))))

(assert (=> d!1550449 (= res!2060867 (is-Cons!55233 (toList!7653 lm!2671)))))

(assert (=> d!1550449 (= (containsKeyBiggerList!647 (toList!7653 lm!2671) key!6540) e!3022492)))

(declare-fun b!4836394 () Bool)

(assert (=> b!4836394 (= e!3022493 (containsKey!4513 (_2!32618 (h!61668 (toList!7653 lm!2671))) key!6540))))

(declare-fun b!4836395 () Bool)

(declare-fun e!3022494 () Bool)

(assert (=> b!4836395 (= e!3022492 e!3022494)))

(declare-fun res!2060866 () Bool)

(assert (=> b!4836395 (=> (not res!2060866) (not e!3022494))))

(assert (=> b!4836395 (= res!2060866 (is-Cons!55233 (toList!7653 lm!2671)))))

(declare-fun b!4836396 () Bool)

(assert (=> b!4836396 (= e!3022494 (containsKeyBiggerList!647 (t!362853 (toList!7653 lm!2671)) key!6540))))

(assert (= (and d!1550449 res!2060867) b!4836394))

(assert (= (and d!1550449 (not res!2060868)) b!4836395))

(assert (= (and b!4836395 res!2060866) b!4836396))

(assert (=> b!4836394 m!5831528))

(declare-fun m!5831662 () Bool)

(assert (=> b!4836396 m!5831662))

(assert (=> b!4836288 d!1550449))

(declare-fun b!4836401 () Bool)

(declare-fun e!3022497 () Bool)

(declare-fun tp!1363475 () Bool)

(declare-fun tp!1363476 () Bool)

(assert (=> b!4836401 (= e!3022497 (and tp!1363475 tp!1363476))))

(assert (=> b!4836293 (= tp!1363467 e!3022497)))

(assert (= (and b!4836293 (is-Cons!55233 (toList!7653 lm!2671))) b!4836401))

(declare-fun b_lambda!191053 () Bool)

(assert (= b_lambda!191051 (or start!502884 b_lambda!191053)))

(declare-fun bs!1167520 () Bool)

(declare-fun d!1550451 () Bool)

(assert (= bs!1167520 (and d!1550451 start!502884)))

(assert (=> bs!1167520 (= (dynLambda!22263 lambda!239498 (h!61668 (toList!7653 lm!2671))) (noDuplicateKeys!2516 (_2!32618 (h!61668 (toList!7653 lm!2671)))))))

(assert (=> bs!1167520 m!5831624))

(assert (=> b!4836386 d!1550451))

(declare-fun b_lambda!191055 () Bool)

(assert (= b_lambda!191047 (or start!502884 b_lambda!191055)))

(declare-fun bs!1167521 () Bool)

(declare-fun d!1550453 () Bool)

(assert (= bs!1167521 (and d!1550453 start!502884)))

(assert (=> bs!1167521 (= (dynLambda!22263 lambda!239498 (h!61668 (t!362853 (toList!7653 lm!2671)))) (noDuplicateKeys!2516 (_2!32618 (h!61668 (t!362853 (toList!7653 lm!2671))))))))

(declare-fun m!5831664 () Bool)

(assert (=> bs!1167521 m!5831664))

(assert (=> b!4836341 d!1550453))

(push 1)

(assert (not d!1550417))

(assert (not d!1550447))

(assert (not b!4836401))

(assert (not b!4836379))

(assert (not bm!337046))

(assert (not b_lambda!191055))

(assert (not b!4836342))

(assert (not b!4836326))

(assert (not d!1550437))

(assert (not bs!1167521))

(assert (not b!4836396))

(assert (not b!4836378))

(assert (not b!4836377))

(assert (not b!4836325))

(assert (not d!1550443))

(assert (not b!4836359))

(assert (not b!4836332))

(assert (not bm!337048))

(assert (not b!4836387))

(assert (not b!4836354))

(assert tp_is_empty!34825)

(assert (not b!4836384))

(assert (not b!4836352))

(assert (not b!4836324))

(assert (not b!4836381))

(assert (not d!1550435))

(assert (not d!1550439))

(assert (not d!1550421))

(assert (not b!4836394))

(assert (not bs!1167520))

(assert (not b_lambda!191053))

(assert (not d!1550427))

(assert (not bm!337047))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

