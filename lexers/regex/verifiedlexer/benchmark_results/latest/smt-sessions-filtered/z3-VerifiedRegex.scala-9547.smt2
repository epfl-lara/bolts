; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!503094 () Bool)

(assert start!503094)

(declare-fun b!4837300 () Bool)

(declare-fun res!2061537 () Bool)

(declare-fun e!3023021 () Bool)

(assert (=> b!4837300 (=> (not res!2061537) (not e!3023021))))

(declare-datatypes ((K!17024 0))(
  ( (K!17025 (val!21925 Int)) )
))
(declare-datatypes ((V!17270 0))(
  ( (V!17271 (val!21926 Int)) )
))
(declare-datatypes ((tuple2!58722 0))(
  ( (tuple2!58723 (_1!32655 K!17024) (_2!32655 V!17270)) )
))
(declare-datatypes ((List!55394 0))(
  ( (Nil!55270) (Cons!55270 (h!61705 tuple2!58722) (t!362890 List!55394)) )
))
(declare-datatypes ((tuple2!58724 0))(
  ( (tuple2!58725 (_1!32656 (_ BitVec 64)) (_2!32656 List!55394)) )
))
(declare-datatypes ((List!55395 0))(
  ( (Nil!55271) (Cons!55271 (h!61706 tuple2!58724) (t!362891 List!55395)) )
))
(declare-datatypes ((ListLongMap!6227 0))(
  ( (ListLongMap!6228 (toList!7687 List!55395)) )
))
(declare-fun lm!2671 () ListLongMap!6227)

(declare-datatypes ((Hashable!7382 0))(
  ( (HashableExt!7381 (__x!33657 Int)) )
))
(declare-fun hashF!1662 () Hashable!7382)

(declare-fun allKeysSameHashInMap!2698 (ListLongMap!6227 Hashable!7382) Bool)

(assert (=> b!4837300 (= res!2061537 (allKeysSameHashInMap!2698 lm!2671 hashF!1662))))

(declare-fun b!4837301 () Bool)

(declare-fun e!3023024 () Bool)

(declare-fun tp!1363584 () Bool)

(assert (=> b!4837301 (= e!3023024 tp!1363584)))

(declare-fun b!4837302 () Bool)

(declare-fun e!3023023 () Bool)

(assert (=> b!4837302 (= e!3023021 (not e!3023023))))

(declare-fun res!2061534 () Bool)

(assert (=> b!4837302 (=> res!2061534 e!3023023)))

(declare-fun key!6540 () K!17024)

(declare-fun containsKeyBiggerList!666 (List!55395 K!17024) Bool)

(assert (=> b!4837302 (= res!2061534 (not (containsKeyBiggerList!666 (t!362891 (toList!7687 lm!2671)) key!6540)))))

(declare-fun tail!9442 (List!55395) List!55395)

(assert (=> b!4837302 (containsKeyBiggerList!666 (tail!9442 (toList!7687 lm!2671)) key!6540)))

(declare-datatypes ((Unit!144651 0))(
  ( (Unit!144652) )
))
(declare-fun lt!1982293 () Unit!144651)

(declare-fun lemmaInBiggerListButNotHeadThenTail!26 (ListLongMap!6227 K!17024 Hashable!7382) Unit!144651)

(assert (=> b!4837302 (= lt!1982293 (lemmaInBiggerListButNotHeadThenTail!26 lm!2671 key!6540 hashF!1662))))

(declare-fun b!4837303 () Bool)

(declare-fun e!3023022 () Bool)

(declare-fun containsKey!4532 (List!55394 K!17024) Bool)

(assert (=> b!4837303 (= e!3023022 (not (containsKey!4532 (_2!32656 (h!61706 (toList!7687 lm!2671))) key!6540)))))

(declare-fun b!4837304 () Bool)

(declare-fun isEmpty!29700 (ListLongMap!6227) Bool)

(assert (=> b!4837304 (= e!3023023 (not (isEmpty!29700 lm!2671)))))

(declare-fun res!2061539 () Bool)

(assert (=> start!503094 (=> (not res!2061539) (not e!3023021))))

(declare-fun lambda!239857 () Int)

(declare-fun forall!12787 (List!55395 Int) Bool)

(assert (=> start!503094 (= res!2061539 (forall!12787 (toList!7687 lm!2671) lambda!239857))))

(assert (=> start!503094 e!3023021))

(declare-fun inv!70924 (ListLongMap!6227) Bool)

(assert (=> start!503094 (and (inv!70924 lm!2671) e!3023024)))

(assert (=> start!503094 true))

(declare-fun tp_is_empty!34863 () Bool)

(assert (=> start!503094 tp_is_empty!34863))

(declare-fun b!4837305 () Bool)

(declare-fun res!2061535 () Bool)

(assert (=> b!4837305 (=> (not res!2061535) (not e!3023021))))

(assert (=> b!4837305 (= res!2061535 (containsKeyBiggerList!666 (toList!7687 lm!2671) key!6540))))

(declare-fun b!4837306 () Bool)

(declare-fun res!2061533 () Bool)

(assert (=> b!4837306 (=> (not res!2061533) (not e!3023021))))

(declare-datatypes ((ListMap!7041 0))(
  ( (ListMap!7042 (toList!7688 List!55394)) )
))
(declare-fun extractMap!2740 (List!55395) ListMap!7041)

(declare-fun addToMapMapFromBucket!1880 (List!55394 ListMap!7041) ListMap!7041)

(assert (=> b!4837306 (= res!2061533 (= (extractMap!2740 (toList!7687 lm!2671)) (addToMapMapFromBucket!1880 (_2!32656 (h!61706 (toList!7687 lm!2671))) (extractMap!2740 (t!362891 (toList!7687 lm!2671))))))))

(declare-fun b!4837307 () Bool)

(declare-fun res!2061540 () Bool)

(assert (=> b!4837307 (=> (not res!2061540) (not e!3023021))))

(assert (=> b!4837307 (= res!2061540 e!3023022)))

(declare-fun res!2061538 () Bool)

(assert (=> b!4837307 (=> res!2061538 e!3023022)))

(get-info :version)

(assert (=> b!4837307 (= res!2061538 (not ((_ is Cons!55271) (toList!7687 lm!2671))))))

(declare-fun b!4837308 () Bool)

(declare-fun res!2061536 () Bool)

(assert (=> b!4837308 (=> (not res!2061536) (not e!3023021))))

(assert (=> b!4837308 (= res!2061536 ((_ is Cons!55271) (toList!7687 lm!2671)))))

(assert (= (and start!503094 res!2061539) b!4837300))

(assert (= (and b!4837300 res!2061537) b!4837305))

(assert (= (and b!4837305 res!2061535) b!4837307))

(assert (= (and b!4837307 (not res!2061538)) b!4837303))

(assert (= (and b!4837307 res!2061540) b!4837308))

(assert (= (and b!4837308 res!2061536) b!4837306))

(assert (= (and b!4837306 res!2061533) b!4837302))

(assert (= (and b!4837302 (not res!2061534)) b!4837304))

(assert (= start!503094 b!4837301))

(declare-fun m!5832452 () Bool)

(assert (=> b!4837303 m!5832452))

(declare-fun m!5832454 () Bool)

(assert (=> b!4837306 m!5832454))

(declare-fun m!5832456 () Bool)

(assert (=> b!4837306 m!5832456))

(assert (=> b!4837306 m!5832456))

(declare-fun m!5832458 () Bool)

(assert (=> b!4837306 m!5832458))

(declare-fun m!5832460 () Bool)

(assert (=> b!4837304 m!5832460))

(declare-fun m!5832462 () Bool)

(assert (=> b!4837305 m!5832462))

(declare-fun m!5832464 () Bool)

(assert (=> b!4837302 m!5832464))

(declare-fun m!5832466 () Bool)

(assert (=> b!4837302 m!5832466))

(assert (=> b!4837302 m!5832466))

(declare-fun m!5832468 () Bool)

(assert (=> b!4837302 m!5832468))

(declare-fun m!5832470 () Bool)

(assert (=> b!4837302 m!5832470))

(declare-fun m!5832472 () Bool)

(assert (=> b!4837300 m!5832472))

(declare-fun m!5832474 () Bool)

(assert (=> start!503094 m!5832474))

(declare-fun m!5832476 () Bool)

(assert (=> start!503094 m!5832476))

(check-sat (not b!4837301) (not start!503094) (not b!4837300) (not b!4837306) (not b!4837303) (not b!4837304) (not b!4837302) (not b!4837305) tp_is_empty!34863)
(check-sat)
(get-model)

(declare-fun bs!1167647 () Bool)

(declare-fun d!1550660 () Bool)

(assert (= bs!1167647 (and d!1550660 start!503094)))

(declare-fun lambda!239869 () Int)

(assert (=> bs!1167647 (= lambda!239869 lambda!239857)))

(declare-fun lt!1982302 () ListMap!7041)

(declare-fun invariantList!1859 (List!55394) Bool)

(assert (=> d!1550660 (invariantList!1859 (toList!7688 lt!1982302))))

(declare-fun e!3023045 () ListMap!7041)

(assert (=> d!1550660 (= lt!1982302 e!3023045)))

(declare-fun c!823937 () Bool)

(assert (=> d!1550660 (= c!823937 ((_ is Cons!55271) (toList!7687 lm!2671)))))

(assert (=> d!1550660 (forall!12787 (toList!7687 lm!2671) lambda!239869)))

(assert (=> d!1550660 (= (extractMap!2740 (toList!7687 lm!2671)) lt!1982302)))

(declare-fun b!4837336 () Bool)

(assert (=> b!4837336 (= e!3023045 (addToMapMapFromBucket!1880 (_2!32656 (h!61706 (toList!7687 lm!2671))) (extractMap!2740 (t!362891 (toList!7687 lm!2671)))))))

(declare-fun b!4837337 () Bool)

(assert (=> b!4837337 (= e!3023045 (ListMap!7042 Nil!55270))))

(assert (= (and d!1550660 c!823937) b!4837336))

(assert (= (and d!1550660 (not c!823937)) b!4837337))

(declare-fun m!5832496 () Bool)

(assert (=> d!1550660 m!5832496))

(declare-fun m!5832498 () Bool)

(assert (=> d!1550660 m!5832498))

(assert (=> b!4837336 m!5832456))

(assert (=> b!4837336 m!5832456))

(assert (=> b!4837336 m!5832458))

(assert (=> b!4837306 d!1550660))

(declare-fun b!4837386 () Bool)

(assert (=> b!4837386 true))

(declare-fun bs!1167658 () Bool)

(declare-fun b!4837387 () Bool)

(assert (= bs!1167658 (and b!4837387 b!4837386)))

(declare-fun lambda!239932 () Int)

(declare-fun lambda!239931 () Int)

(assert (=> bs!1167658 (= lambda!239932 lambda!239931)))

(assert (=> b!4837387 true))

(declare-fun lambda!239933 () Int)

(declare-fun lt!1982410 () ListMap!7041)

(assert (=> bs!1167658 (= (= lt!1982410 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239933 lambda!239931))))

(assert (=> b!4837387 (= (= lt!1982410 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239933 lambda!239932))))

(assert (=> b!4837387 true))

(declare-fun bs!1167659 () Bool)

(declare-fun d!1550666 () Bool)

(assert (= bs!1167659 (and d!1550666 b!4837386)))

(declare-fun lt!1982427 () ListMap!7041)

(declare-fun lambda!239934 () Int)

(assert (=> bs!1167659 (= (= lt!1982427 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239934 lambda!239931))))

(declare-fun bs!1167660 () Bool)

(assert (= bs!1167660 (and d!1550666 b!4837387)))

(assert (=> bs!1167660 (= (= lt!1982427 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239934 lambda!239932))))

(assert (=> bs!1167660 (= (= lt!1982427 lt!1982410) (= lambda!239934 lambda!239933))))

(assert (=> d!1550666 true))

(declare-fun b!4837384 () Bool)

(declare-fun e!3023079 () Bool)

(assert (=> b!4837384 (= e!3023079 (invariantList!1859 (toList!7688 lt!1982427)))))

(declare-fun b!4837385 () Bool)

(declare-fun e!3023077 () Bool)

(declare-fun forall!12789 (List!55394 Int) Bool)

(assert (=> b!4837385 (= e!3023077 (forall!12789 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) lambda!239933))))

(declare-fun bm!337109 () Bool)

(declare-fun call!337114 () Unit!144651)

(declare-fun lemmaContainsAllItsOwnKeys!1033 (ListMap!7041) Unit!144651)

(assert (=> bm!337109 (= call!337114 (lemmaContainsAllItsOwnKeys!1033 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))))))

(declare-fun c!823944 () Bool)

(declare-fun lt!1982412 () ListMap!7041)

(declare-fun call!337115 () Bool)

(declare-fun bm!337110 () Bool)

(assert (=> bm!337110 (= call!337115 (forall!12789 (ite c!823944 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (toList!7688 lt!1982412)) (ite c!823944 lambda!239931 lambda!239933)))))

(declare-fun call!337116 () Bool)

(declare-fun bm!337111 () Bool)

(assert (=> bm!337111 (= call!337116 (forall!12789 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (ite c!823944 lambda!239931 lambda!239933)))))

(declare-fun e!3023078 () ListMap!7041)

(assert (=> b!4837387 (= e!3023078 lt!1982410)))

(declare-fun +!2593 (ListMap!7041 tuple2!58722) ListMap!7041)

(assert (=> b!4837387 (= lt!1982412 (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))

(assert (=> b!4837387 (= lt!1982410 (addToMapMapFromBucket!1880 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))) (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-fun lt!1982409 () Unit!144651)

(assert (=> b!4837387 (= lt!1982409 call!337114)))

(assert (=> b!4837387 (forall!12789 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) lambda!239932)))

(declare-fun lt!1982428 () Unit!144651)

(assert (=> b!4837387 (= lt!1982428 lt!1982409)))

(assert (=> b!4837387 (forall!12789 (toList!7688 lt!1982412) lambda!239933)))

(declare-fun lt!1982421 () Unit!144651)

(declare-fun Unit!144664 () Unit!144651)

(assert (=> b!4837387 (= lt!1982421 Unit!144664)))

(assert (=> b!4837387 (forall!12789 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))) lambda!239933)))

(declare-fun lt!1982413 () Unit!144651)

(declare-fun Unit!144665 () Unit!144651)

(assert (=> b!4837387 (= lt!1982413 Unit!144665)))

(declare-fun lt!1982415 () Unit!144651)

(declare-fun Unit!144666 () Unit!144651)

(assert (=> b!4837387 (= lt!1982415 Unit!144666)))

(declare-fun lt!1982417 () Unit!144651)

(declare-fun forallContained!4474 (List!55394 Int tuple2!58722) Unit!144651)

(assert (=> b!4837387 (= lt!1982417 (forallContained!4474 (toList!7688 lt!1982412) lambda!239933 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))

(declare-fun contains!19046 (ListMap!7041 K!17024) Bool)

(assert (=> b!4837387 (contains!19046 lt!1982412 (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))

(declare-fun lt!1982418 () Unit!144651)

(declare-fun Unit!144667 () Unit!144651)

(assert (=> b!4837387 (= lt!1982418 Unit!144667)))

(assert (=> b!4837387 (contains!19046 lt!1982410 (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))

(declare-fun lt!1982422 () Unit!144651)

(declare-fun Unit!144668 () Unit!144651)

(assert (=> b!4837387 (= lt!1982422 Unit!144668)))

(assert (=> b!4837387 (forall!12789 (_2!32656 (h!61706 (toList!7687 lm!2671))) lambda!239933)))

(declare-fun lt!1982414 () Unit!144651)

(declare-fun Unit!144669 () Unit!144651)

(assert (=> b!4837387 (= lt!1982414 Unit!144669)))

(assert (=> b!4837387 call!337115))

(declare-fun lt!1982426 () Unit!144651)

(declare-fun Unit!144670 () Unit!144651)

(assert (=> b!4837387 (= lt!1982426 Unit!144670)))

(declare-fun lt!1982424 () Unit!144651)

(declare-fun Unit!144671 () Unit!144651)

(assert (=> b!4837387 (= lt!1982424 Unit!144671)))

(declare-fun lt!1982429 () Unit!144651)

(declare-fun addForallContainsKeyThenBeforeAdding!1031 (ListMap!7041 ListMap!7041 K!17024 V!17270) Unit!144651)

(assert (=> b!4837387 (= lt!1982429 (addForallContainsKeyThenBeforeAdding!1031 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) lt!1982410 (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (_2!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(assert (=> b!4837387 call!337116))

(declare-fun lt!1982420 () Unit!144651)

(assert (=> b!4837387 (= lt!1982420 lt!1982429)))

(assert (=> b!4837387 (forall!12789 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) lambda!239933)))

(declare-fun lt!1982423 () Unit!144651)

(declare-fun Unit!144672 () Unit!144651)

(assert (=> b!4837387 (= lt!1982423 Unit!144672)))

(declare-fun res!2061583 () Bool)

(assert (=> b!4837387 (= res!2061583 (forall!12789 (_2!32656 (h!61706 (toList!7687 lm!2671))) lambda!239933))))

(assert (=> b!4837387 (=> (not res!2061583) (not e!3023077))))

(assert (=> b!4837387 e!3023077))

(declare-fun lt!1982416 () Unit!144651)

(declare-fun Unit!144673 () Unit!144651)

(assert (=> b!4837387 (= lt!1982416 Unit!144673)))

(declare-fun b!4837388 () Bool)

(declare-fun res!2061585 () Bool)

(assert (=> b!4837388 (=> (not res!2061585) (not e!3023079))))

(assert (=> b!4837388 (= res!2061585 (forall!12789 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) lambda!239934))))

(assert (=> d!1550666 e!3023079))

(declare-fun res!2061584 () Bool)

(assert (=> d!1550666 (=> (not res!2061584) (not e!3023079))))

(assert (=> d!1550666 (= res!2061584 (forall!12789 (_2!32656 (h!61706 (toList!7687 lm!2671))) lambda!239934))))

(assert (=> d!1550666 (= lt!1982427 e!3023078)))

(assert (=> d!1550666 (= c!823944 ((_ is Nil!55270) (_2!32656 (h!61706 (toList!7687 lm!2671)))))))

(declare-fun noDuplicateKeys!2524 (List!55394) Bool)

(assert (=> d!1550666 (noDuplicateKeys!2524 (_2!32656 (h!61706 (toList!7687 lm!2671))))))

(assert (=> d!1550666 (= (addToMapMapFromBucket!1880 (_2!32656 (h!61706 (toList!7687 lm!2671))) (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) lt!1982427)))

(assert (=> b!4837386 (= e!3023078 (extractMap!2740 (t!362891 (toList!7687 lm!2671))))))

(declare-fun lt!1982425 () Unit!144651)

(assert (=> b!4837386 (= lt!1982425 call!337114)))

(assert (=> b!4837386 call!337115))

(declare-fun lt!1982419 () Unit!144651)

(assert (=> b!4837386 (= lt!1982419 lt!1982425)))

(assert (=> b!4837386 call!337116))

(declare-fun lt!1982411 () Unit!144651)

(declare-fun Unit!144674 () Unit!144651)

(assert (=> b!4837386 (= lt!1982411 Unit!144674)))

(assert (= (and d!1550666 c!823944) b!4837386))

(assert (= (and d!1550666 (not c!823944)) b!4837387))

(assert (= (and b!4837387 res!2061583) b!4837385))

(assert (= (or b!4837386 b!4837387) bm!337109))

(assert (= (or b!4837386 b!4837387) bm!337110))

(assert (= (or b!4837386 b!4837387) bm!337111))

(assert (= (and d!1550666 res!2061584) b!4837388))

(assert (= (and b!4837388 res!2061585) b!4837384))

(declare-fun m!5832550 () Bool)

(assert (=> b!4837387 m!5832550))

(declare-fun m!5832552 () Bool)

(assert (=> b!4837387 m!5832552))

(declare-fun m!5832554 () Bool)

(assert (=> b!4837387 m!5832554))

(declare-fun m!5832556 () Bool)

(assert (=> b!4837387 m!5832556))

(declare-fun m!5832558 () Bool)

(assert (=> b!4837387 m!5832558))

(declare-fun m!5832560 () Bool)

(assert (=> b!4837387 m!5832560))

(declare-fun m!5832562 () Bool)

(assert (=> b!4837387 m!5832562))

(declare-fun m!5832564 () Bool)

(assert (=> b!4837387 m!5832564))

(assert (=> b!4837387 m!5832456))

(declare-fun m!5832566 () Bool)

(assert (=> b!4837387 m!5832566))

(assert (=> b!4837387 m!5832562))

(assert (=> b!4837387 m!5832456))

(assert (=> b!4837387 m!5832550))

(declare-fun m!5832568 () Bool)

(assert (=> b!4837387 m!5832568))

(declare-fun m!5832570 () Bool)

(assert (=> b!4837387 m!5832570))

(declare-fun m!5832572 () Bool)

(assert (=> d!1550666 m!5832572))

(declare-fun m!5832574 () Bool)

(assert (=> d!1550666 m!5832574))

(assert (=> b!4837385 m!5832570))

(declare-fun m!5832576 () Bool)

(assert (=> b!4837384 m!5832576))

(declare-fun m!5832578 () Bool)

(assert (=> b!4837388 m!5832578))

(assert (=> bm!337109 m!5832456))

(declare-fun m!5832580 () Bool)

(assert (=> bm!337109 m!5832580))

(declare-fun m!5832582 () Bool)

(assert (=> bm!337111 m!5832582))

(declare-fun m!5832584 () Bool)

(assert (=> bm!337110 m!5832584))

(assert (=> b!4837306 d!1550666))

(declare-fun bs!1167661 () Bool)

(declare-fun d!1550680 () Bool)

(assert (= bs!1167661 (and d!1550680 start!503094)))

(declare-fun lambda!239935 () Int)

(assert (=> bs!1167661 (= lambda!239935 lambda!239857)))

(declare-fun bs!1167662 () Bool)

(assert (= bs!1167662 (and d!1550680 d!1550660)))

(assert (=> bs!1167662 (= lambda!239935 lambda!239869)))

(declare-fun lt!1982430 () ListMap!7041)

(assert (=> d!1550680 (invariantList!1859 (toList!7688 lt!1982430))))

(declare-fun e!3023080 () ListMap!7041)

(assert (=> d!1550680 (= lt!1982430 e!3023080)))

(declare-fun c!823945 () Bool)

(assert (=> d!1550680 (= c!823945 ((_ is Cons!55271) (t!362891 (toList!7687 lm!2671))))))

(assert (=> d!1550680 (forall!12787 (t!362891 (toList!7687 lm!2671)) lambda!239935)))

(assert (=> d!1550680 (= (extractMap!2740 (t!362891 (toList!7687 lm!2671))) lt!1982430)))

(declare-fun b!4837391 () Bool)

(assert (=> b!4837391 (= e!3023080 (addToMapMapFromBucket!1880 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671)))) (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))))))

(declare-fun b!4837392 () Bool)

(assert (=> b!4837392 (= e!3023080 (ListMap!7042 Nil!55270))))

(assert (= (and d!1550680 c!823945) b!4837391))

(assert (= (and d!1550680 (not c!823945)) b!4837392))

(declare-fun m!5832586 () Bool)

(assert (=> d!1550680 m!5832586))

(declare-fun m!5832588 () Bool)

(assert (=> d!1550680 m!5832588))

(declare-fun m!5832590 () Bool)

(assert (=> b!4837391 m!5832590))

(assert (=> b!4837391 m!5832590))

(declare-fun m!5832592 () Bool)

(assert (=> b!4837391 m!5832592))

(assert (=> b!4837306 d!1550680))

(declare-fun d!1550682 () Bool)

(declare-fun res!2061590 () Bool)

(declare-fun e!3023085 () Bool)

(assert (=> d!1550682 (=> res!2061590 e!3023085)))

(assert (=> d!1550682 (= res!2061590 (and ((_ is Cons!55270) (_2!32656 (h!61706 (toList!7687 lm!2671)))) (= (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) key!6540)))))

(assert (=> d!1550682 (= (containsKey!4532 (_2!32656 (h!61706 (toList!7687 lm!2671))) key!6540) e!3023085)))

(declare-fun b!4837397 () Bool)

(declare-fun e!3023086 () Bool)

(assert (=> b!4837397 (= e!3023085 e!3023086)))

(declare-fun res!2061591 () Bool)

(assert (=> b!4837397 (=> (not res!2061591) (not e!3023086))))

(assert (=> b!4837397 (= res!2061591 ((_ is Cons!55270) (_2!32656 (h!61706 (toList!7687 lm!2671)))))))

(declare-fun b!4837398 () Bool)

(assert (=> b!4837398 (= e!3023086 (containsKey!4532 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))) key!6540))))

(assert (= (and d!1550682 (not res!2061590)) b!4837397))

(assert (= (and b!4837397 res!2061591) b!4837398))

(declare-fun m!5832594 () Bool)

(assert (=> b!4837398 m!5832594))

(assert (=> b!4837303 d!1550682))

(declare-fun d!1550684 () Bool)

(declare-fun res!2061598 () Bool)

(declare-fun e!3023093 () Bool)

(assert (=> d!1550684 (=> res!2061598 e!3023093)))

(declare-fun e!3023095 () Bool)

(assert (=> d!1550684 (= res!2061598 e!3023095)))

(declare-fun res!2061599 () Bool)

(assert (=> d!1550684 (=> (not res!2061599) (not e!3023095))))

(assert (=> d!1550684 (= res!2061599 ((_ is Cons!55271) (t!362891 (toList!7687 lm!2671))))))

(assert (=> d!1550684 (= (containsKeyBiggerList!666 (t!362891 (toList!7687 lm!2671)) key!6540) e!3023093)))

(declare-fun b!4837405 () Bool)

(assert (=> b!4837405 (= e!3023095 (containsKey!4532 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671)))) key!6540))))

(declare-fun b!4837406 () Bool)

(declare-fun e!3023094 () Bool)

(assert (=> b!4837406 (= e!3023093 e!3023094)))

(declare-fun res!2061600 () Bool)

(assert (=> b!4837406 (=> (not res!2061600) (not e!3023094))))

(assert (=> b!4837406 (= res!2061600 ((_ is Cons!55271) (t!362891 (toList!7687 lm!2671))))))

(declare-fun b!4837407 () Bool)

(assert (=> b!4837407 (= e!3023094 (containsKeyBiggerList!666 (t!362891 (t!362891 (toList!7687 lm!2671))) key!6540))))

(assert (= (and d!1550684 res!2061599) b!4837405))

(assert (= (and d!1550684 (not res!2061598)) b!4837406))

(assert (= (and b!4837406 res!2061600) b!4837407))

(declare-fun m!5832596 () Bool)

(assert (=> b!4837405 m!5832596))

(declare-fun m!5832598 () Bool)

(assert (=> b!4837407 m!5832598))

(assert (=> b!4837302 d!1550684))

(declare-fun d!1550686 () Bool)

(declare-fun res!2061601 () Bool)

(declare-fun e!3023096 () Bool)

(assert (=> d!1550686 (=> res!2061601 e!3023096)))

(declare-fun e!3023098 () Bool)

(assert (=> d!1550686 (= res!2061601 e!3023098)))

(declare-fun res!2061602 () Bool)

(assert (=> d!1550686 (=> (not res!2061602) (not e!3023098))))

(assert (=> d!1550686 (= res!2061602 ((_ is Cons!55271) (tail!9442 (toList!7687 lm!2671))))))

(assert (=> d!1550686 (= (containsKeyBiggerList!666 (tail!9442 (toList!7687 lm!2671)) key!6540) e!3023096)))

(declare-fun b!4837408 () Bool)

(assert (=> b!4837408 (= e!3023098 (containsKey!4532 (_2!32656 (h!61706 (tail!9442 (toList!7687 lm!2671)))) key!6540))))

(declare-fun b!4837409 () Bool)

(declare-fun e!3023097 () Bool)

(assert (=> b!4837409 (= e!3023096 e!3023097)))

(declare-fun res!2061603 () Bool)

(assert (=> b!4837409 (=> (not res!2061603) (not e!3023097))))

(assert (=> b!4837409 (= res!2061603 ((_ is Cons!55271) (tail!9442 (toList!7687 lm!2671))))))

(declare-fun b!4837410 () Bool)

(assert (=> b!4837410 (= e!3023097 (containsKeyBiggerList!666 (t!362891 (tail!9442 (toList!7687 lm!2671))) key!6540))))

(assert (= (and d!1550686 res!2061602) b!4837408))

(assert (= (and d!1550686 (not res!2061601)) b!4837409))

(assert (= (and b!4837409 res!2061603) b!4837410))

(declare-fun m!5832600 () Bool)

(assert (=> b!4837408 m!5832600))

(declare-fun m!5832602 () Bool)

(assert (=> b!4837410 m!5832602))

(assert (=> b!4837302 d!1550686))

(declare-fun d!1550688 () Bool)

(assert (=> d!1550688 (= (tail!9442 (toList!7687 lm!2671)) (t!362891 (toList!7687 lm!2671)))))

(assert (=> b!4837302 d!1550688))

(declare-fun bs!1167663 () Bool)

(declare-fun d!1550690 () Bool)

(assert (= bs!1167663 (and d!1550690 start!503094)))

(declare-fun lambda!239938 () Int)

(assert (=> bs!1167663 (= lambda!239938 lambda!239857)))

(declare-fun bs!1167664 () Bool)

(assert (= bs!1167664 (and d!1550690 d!1550660)))

(assert (=> bs!1167664 (= lambda!239938 lambda!239869)))

(declare-fun bs!1167665 () Bool)

(assert (= bs!1167665 (and d!1550690 d!1550680)))

(assert (=> bs!1167665 (= lambda!239938 lambda!239935)))

(assert (=> d!1550690 (containsKeyBiggerList!666 (tail!9442 (toList!7687 lm!2671)) key!6540)))

(declare-fun lt!1982433 () Unit!144651)

(declare-fun choose!35333 (ListLongMap!6227 K!17024 Hashable!7382) Unit!144651)

(assert (=> d!1550690 (= lt!1982433 (choose!35333 lm!2671 key!6540 hashF!1662))))

(assert (=> d!1550690 (forall!12787 (toList!7687 lm!2671) lambda!239938)))

(assert (=> d!1550690 (= (lemmaInBiggerListButNotHeadThenTail!26 lm!2671 key!6540 hashF!1662) lt!1982433)))

(declare-fun bs!1167666 () Bool)

(assert (= bs!1167666 d!1550690))

(assert (=> bs!1167666 m!5832466))

(assert (=> bs!1167666 m!5832466))

(assert (=> bs!1167666 m!5832468))

(declare-fun m!5832604 () Bool)

(assert (=> bs!1167666 m!5832604))

(declare-fun m!5832606 () Bool)

(assert (=> bs!1167666 m!5832606))

(assert (=> b!4837302 d!1550690))

(declare-fun d!1550692 () Bool)

(declare-fun isEmpty!29702 (List!55395) Bool)

(assert (=> d!1550692 (= (isEmpty!29700 lm!2671) (isEmpty!29702 (toList!7687 lm!2671)))))

(declare-fun bs!1167667 () Bool)

(assert (= bs!1167667 d!1550692))

(declare-fun m!5832608 () Bool)

(assert (=> bs!1167667 m!5832608))

(assert (=> b!4837304 d!1550692))

(declare-fun d!1550694 () Bool)

(declare-fun res!2061608 () Bool)

(declare-fun e!3023103 () Bool)

(assert (=> d!1550694 (=> res!2061608 e!3023103)))

(assert (=> d!1550694 (= res!2061608 ((_ is Nil!55271) (toList!7687 lm!2671)))))

(assert (=> d!1550694 (= (forall!12787 (toList!7687 lm!2671) lambda!239857) e!3023103)))

(declare-fun b!4837415 () Bool)

(declare-fun e!3023104 () Bool)

(assert (=> b!4837415 (= e!3023103 e!3023104)))

(declare-fun res!2061609 () Bool)

(assert (=> b!4837415 (=> (not res!2061609) (not e!3023104))))

(declare-fun dynLambda!22273 (Int tuple2!58724) Bool)

(assert (=> b!4837415 (= res!2061609 (dynLambda!22273 lambda!239857 (h!61706 (toList!7687 lm!2671))))))

(declare-fun b!4837416 () Bool)

(assert (=> b!4837416 (= e!3023104 (forall!12787 (t!362891 (toList!7687 lm!2671)) lambda!239857))))

(assert (= (and d!1550694 (not res!2061608)) b!4837415))

(assert (= (and b!4837415 res!2061609) b!4837416))

(declare-fun b_lambda!191103 () Bool)

(assert (=> (not b_lambda!191103) (not b!4837415)))

(declare-fun m!5832610 () Bool)

(assert (=> b!4837415 m!5832610))

(declare-fun m!5832612 () Bool)

(assert (=> b!4837416 m!5832612))

(assert (=> start!503094 d!1550694))

(declare-fun d!1550696 () Bool)

(declare-fun isStrictlySorted!1024 (List!55395) Bool)

(assert (=> d!1550696 (= (inv!70924 lm!2671) (isStrictlySorted!1024 (toList!7687 lm!2671)))))

(declare-fun bs!1167668 () Bool)

(assert (= bs!1167668 d!1550696))

(declare-fun m!5832614 () Bool)

(assert (=> bs!1167668 m!5832614))

(assert (=> start!503094 d!1550696))

(declare-fun bs!1167669 () Bool)

(declare-fun d!1550698 () Bool)

(assert (= bs!1167669 (and d!1550698 start!503094)))

(declare-fun lambda!239941 () Int)

(assert (=> bs!1167669 (not (= lambda!239941 lambda!239857))))

(declare-fun bs!1167670 () Bool)

(assert (= bs!1167670 (and d!1550698 d!1550660)))

(assert (=> bs!1167670 (not (= lambda!239941 lambda!239869))))

(declare-fun bs!1167671 () Bool)

(assert (= bs!1167671 (and d!1550698 d!1550680)))

(assert (=> bs!1167671 (not (= lambda!239941 lambda!239935))))

(declare-fun bs!1167672 () Bool)

(assert (= bs!1167672 (and d!1550698 d!1550690)))

(assert (=> bs!1167672 (not (= lambda!239941 lambda!239938))))

(assert (=> d!1550698 true))

(assert (=> d!1550698 (= (allKeysSameHashInMap!2698 lm!2671 hashF!1662) (forall!12787 (toList!7687 lm!2671) lambda!239941))))

(declare-fun bs!1167673 () Bool)

(assert (= bs!1167673 d!1550698))

(declare-fun m!5832616 () Bool)

(assert (=> bs!1167673 m!5832616))

(assert (=> b!4837300 d!1550698))

(declare-fun d!1550700 () Bool)

(declare-fun res!2061610 () Bool)

(declare-fun e!3023105 () Bool)

(assert (=> d!1550700 (=> res!2061610 e!3023105)))

(declare-fun e!3023107 () Bool)

(assert (=> d!1550700 (= res!2061610 e!3023107)))

(declare-fun res!2061611 () Bool)

(assert (=> d!1550700 (=> (not res!2061611) (not e!3023107))))

(assert (=> d!1550700 (= res!2061611 ((_ is Cons!55271) (toList!7687 lm!2671)))))

(assert (=> d!1550700 (= (containsKeyBiggerList!666 (toList!7687 lm!2671) key!6540) e!3023105)))

(declare-fun b!4837419 () Bool)

(assert (=> b!4837419 (= e!3023107 (containsKey!4532 (_2!32656 (h!61706 (toList!7687 lm!2671))) key!6540))))

(declare-fun b!4837420 () Bool)

(declare-fun e!3023106 () Bool)

(assert (=> b!4837420 (= e!3023105 e!3023106)))

(declare-fun res!2061612 () Bool)

(assert (=> b!4837420 (=> (not res!2061612) (not e!3023106))))

(assert (=> b!4837420 (= res!2061612 ((_ is Cons!55271) (toList!7687 lm!2671)))))

(declare-fun b!4837421 () Bool)

(assert (=> b!4837421 (= e!3023106 (containsKeyBiggerList!666 (t!362891 (toList!7687 lm!2671)) key!6540))))

(assert (= (and d!1550700 res!2061611) b!4837419))

(assert (= (and d!1550700 (not res!2061610)) b!4837420))

(assert (= (and b!4837420 res!2061612) b!4837421))

(assert (=> b!4837419 m!5832452))

(assert (=> b!4837421 m!5832464))

(assert (=> b!4837305 d!1550700))

(declare-fun b!4837426 () Bool)

(declare-fun e!3023110 () Bool)

(declare-fun tp!1363595 () Bool)

(declare-fun tp!1363596 () Bool)

(assert (=> b!4837426 (= e!3023110 (and tp!1363595 tp!1363596))))

(assert (=> b!4837301 (= tp!1363584 e!3023110)))

(assert (= (and b!4837301 ((_ is Cons!55271) (toList!7687 lm!2671))) b!4837426))

(declare-fun b_lambda!191105 () Bool)

(assert (= b_lambda!191103 (or start!503094 b_lambda!191105)))

(declare-fun bs!1167674 () Bool)

(declare-fun d!1550702 () Bool)

(assert (= bs!1167674 (and d!1550702 start!503094)))

(assert (=> bs!1167674 (= (dynLambda!22273 lambda!239857 (h!61706 (toList!7687 lm!2671))) (noDuplicateKeys!2524 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))

(assert (=> bs!1167674 m!5832574))

(assert (=> b!4837415 d!1550702))

(check-sat (not b!4837398) (not bm!337111) (not d!1550698) (not b!4837407) (not bs!1167674) (not bm!337110) (not b!4837385) (not b!4837391) (not b!4837426) (not b!4837387) (not d!1550666) tp_is_empty!34863 (not d!1550696) (not b_lambda!191105) (not bm!337109) (not b!4837388) (not b!4837384) (not b!4837405) (not d!1550690) (not b!4837419) (not b!4837408) (not d!1550692) (not b!4837421) (not d!1550680) (not b!4837416) (not d!1550660) (not b!4837336) (not b!4837410))
(check-sat)
(get-model)

(declare-fun d!1550704 () Bool)

(declare-fun res!2061613 () Bool)

(declare-fun e!3023111 () Bool)

(assert (=> d!1550704 (=> res!2061613 e!3023111)))

(declare-fun e!3023113 () Bool)

(assert (=> d!1550704 (= res!2061613 e!3023113)))

(declare-fun res!2061614 () Bool)

(assert (=> d!1550704 (=> (not res!2061614) (not e!3023113))))

(assert (=> d!1550704 (= res!2061614 ((_ is Cons!55271) (t!362891 (tail!9442 (toList!7687 lm!2671)))))))

(assert (=> d!1550704 (= (containsKeyBiggerList!666 (t!362891 (tail!9442 (toList!7687 lm!2671))) key!6540) e!3023111)))

(declare-fun b!4837427 () Bool)

(assert (=> b!4837427 (= e!3023113 (containsKey!4532 (_2!32656 (h!61706 (t!362891 (tail!9442 (toList!7687 lm!2671))))) key!6540))))

(declare-fun b!4837428 () Bool)

(declare-fun e!3023112 () Bool)

(assert (=> b!4837428 (= e!3023111 e!3023112)))

(declare-fun res!2061615 () Bool)

(assert (=> b!4837428 (=> (not res!2061615) (not e!3023112))))

(assert (=> b!4837428 (= res!2061615 ((_ is Cons!55271) (t!362891 (tail!9442 (toList!7687 lm!2671)))))))

(declare-fun b!4837429 () Bool)

(assert (=> b!4837429 (= e!3023112 (containsKeyBiggerList!666 (t!362891 (t!362891 (tail!9442 (toList!7687 lm!2671)))) key!6540))))

(assert (= (and d!1550704 res!2061614) b!4837427))

(assert (= (and d!1550704 (not res!2061613)) b!4837428))

(assert (= (and b!4837428 res!2061615) b!4837429))

(declare-fun m!5832618 () Bool)

(assert (=> b!4837427 m!5832618))

(declare-fun m!5832620 () Bool)

(assert (=> b!4837429 m!5832620))

(assert (=> b!4837410 d!1550704))

(declare-fun d!1550708 () Bool)

(declare-fun noDuplicatedKeys!499 (List!55394) Bool)

(assert (=> d!1550708 (= (invariantList!1859 (toList!7688 lt!1982302)) (noDuplicatedKeys!499 (toList!7688 lt!1982302)))))

(declare-fun bs!1167675 () Bool)

(assert (= bs!1167675 d!1550708))

(declare-fun m!5832622 () Bool)

(assert (=> bs!1167675 m!5832622))

(assert (=> d!1550660 d!1550708))

(declare-fun d!1550710 () Bool)

(declare-fun res!2061616 () Bool)

(declare-fun e!3023114 () Bool)

(assert (=> d!1550710 (=> res!2061616 e!3023114)))

(assert (=> d!1550710 (= res!2061616 ((_ is Nil!55271) (toList!7687 lm!2671)))))

(assert (=> d!1550710 (= (forall!12787 (toList!7687 lm!2671) lambda!239869) e!3023114)))

(declare-fun b!4837430 () Bool)

(declare-fun e!3023115 () Bool)

(assert (=> b!4837430 (= e!3023114 e!3023115)))

(declare-fun res!2061617 () Bool)

(assert (=> b!4837430 (=> (not res!2061617) (not e!3023115))))

(assert (=> b!4837430 (= res!2061617 (dynLambda!22273 lambda!239869 (h!61706 (toList!7687 lm!2671))))))

(declare-fun b!4837431 () Bool)

(assert (=> b!4837431 (= e!3023115 (forall!12787 (t!362891 (toList!7687 lm!2671)) lambda!239869))))

(assert (= (and d!1550710 (not res!2061616)) b!4837430))

(assert (= (and b!4837430 res!2061617) b!4837431))

(declare-fun b_lambda!191107 () Bool)

(assert (=> (not b_lambda!191107) (not b!4837430)))

(declare-fun m!5832624 () Bool)

(assert (=> b!4837430 m!5832624))

(declare-fun m!5832626 () Bool)

(assert (=> b!4837431 m!5832626))

(assert (=> d!1550660 d!1550710))

(declare-fun d!1550712 () Bool)

(declare-fun res!2061622 () Bool)

(declare-fun e!3023120 () Bool)

(assert (=> d!1550712 (=> res!2061622 e!3023120)))

(assert (=> d!1550712 (= res!2061622 ((_ is Nil!55271) (toList!7687 lm!2671)))))

(assert (=> d!1550712 (= (forall!12787 (toList!7687 lm!2671) lambda!239941) e!3023120)))

(declare-fun b!4837436 () Bool)

(declare-fun e!3023121 () Bool)

(assert (=> b!4837436 (= e!3023120 e!3023121)))

(declare-fun res!2061623 () Bool)

(assert (=> b!4837436 (=> (not res!2061623) (not e!3023121))))

(assert (=> b!4837436 (= res!2061623 (dynLambda!22273 lambda!239941 (h!61706 (toList!7687 lm!2671))))))

(declare-fun b!4837437 () Bool)

(assert (=> b!4837437 (= e!3023121 (forall!12787 (t!362891 (toList!7687 lm!2671)) lambda!239941))))

(assert (= (and d!1550712 (not res!2061622)) b!4837436))

(assert (= (and b!4837436 res!2061623) b!4837437))

(declare-fun b_lambda!191109 () Bool)

(assert (=> (not b_lambda!191109) (not b!4837436)))

(declare-fun m!5832628 () Bool)

(assert (=> b!4837436 m!5832628))

(declare-fun m!5832630 () Bool)

(assert (=> b!4837437 m!5832630))

(assert (=> d!1550698 d!1550712))

(declare-fun d!1550714 () Bool)

(declare-fun res!2061624 () Bool)

(declare-fun e!3023122 () Bool)

(assert (=> d!1550714 (=> res!2061624 e!3023122)))

(assert (=> d!1550714 (= res!2061624 (and ((_ is Cons!55270) (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671))))) (= (_1!32655 (h!61705 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671)))))) key!6540)))))

(assert (=> d!1550714 (= (containsKey!4532 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671)))) key!6540) e!3023122)))

(declare-fun b!4837438 () Bool)

(declare-fun e!3023123 () Bool)

(assert (=> b!4837438 (= e!3023122 e!3023123)))

(declare-fun res!2061625 () Bool)

(assert (=> b!4837438 (=> (not res!2061625) (not e!3023123))))

(assert (=> b!4837438 (= res!2061625 ((_ is Cons!55270) (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671))))))))

(declare-fun b!4837439 () Bool)

(assert (=> b!4837439 (= e!3023123 (containsKey!4532 (t!362890 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671))))) key!6540))))

(assert (= (and d!1550714 (not res!2061624)) b!4837438))

(assert (= (and b!4837438 res!2061625) b!4837439))

(declare-fun m!5832632 () Bool)

(assert (=> b!4837439 m!5832632))

(assert (=> b!4837405 d!1550714))

(declare-fun d!1550716 () Bool)

(declare-fun res!2061626 () Bool)

(declare-fun e!3023124 () Bool)

(assert (=> d!1550716 (=> res!2061626 e!3023124)))

(declare-fun e!3023126 () Bool)

(assert (=> d!1550716 (= res!2061626 e!3023126)))

(declare-fun res!2061627 () Bool)

(assert (=> d!1550716 (=> (not res!2061627) (not e!3023126))))

(assert (=> d!1550716 (= res!2061627 ((_ is Cons!55271) (t!362891 (t!362891 (toList!7687 lm!2671)))))))

(assert (=> d!1550716 (= (containsKeyBiggerList!666 (t!362891 (t!362891 (toList!7687 lm!2671))) key!6540) e!3023124)))

(declare-fun b!4837440 () Bool)

(assert (=> b!4837440 (= e!3023126 (containsKey!4532 (_2!32656 (h!61706 (t!362891 (t!362891 (toList!7687 lm!2671))))) key!6540))))

(declare-fun b!4837441 () Bool)

(declare-fun e!3023125 () Bool)

(assert (=> b!4837441 (= e!3023124 e!3023125)))

(declare-fun res!2061628 () Bool)

(assert (=> b!4837441 (=> (not res!2061628) (not e!3023125))))

(assert (=> b!4837441 (= res!2061628 ((_ is Cons!55271) (t!362891 (t!362891 (toList!7687 lm!2671)))))))

(declare-fun b!4837442 () Bool)

(assert (=> b!4837442 (= e!3023125 (containsKeyBiggerList!666 (t!362891 (t!362891 (t!362891 (toList!7687 lm!2671)))) key!6540))))

(assert (= (and d!1550716 res!2061627) b!4837440))

(assert (= (and d!1550716 (not res!2061626)) b!4837441))

(assert (= (and b!4837441 res!2061628) b!4837442))

(declare-fun m!5832634 () Bool)

(assert (=> b!4837440 m!5832634))

(declare-fun m!5832636 () Bool)

(assert (=> b!4837442 m!5832636))

(assert (=> b!4837407 d!1550716))

(declare-fun d!1550718 () Bool)

(declare-fun res!2061631 () Bool)

(declare-fun e!3023129 () Bool)

(assert (=> d!1550718 (=> res!2061631 e!3023129)))

(assert (=> d!1550718 (= res!2061631 ((_ is Nil!55271) (t!362891 (toList!7687 lm!2671))))))

(assert (=> d!1550718 (= (forall!12787 (t!362891 (toList!7687 lm!2671)) lambda!239857) e!3023129)))

(declare-fun b!4837445 () Bool)

(declare-fun e!3023130 () Bool)

(assert (=> b!4837445 (= e!3023129 e!3023130)))

(declare-fun res!2061632 () Bool)

(assert (=> b!4837445 (=> (not res!2061632) (not e!3023130))))

(assert (=> b!4837445 (= res!2061632 (dynLambda!22273 lambda!239857 (h!61706 (t!362891 (toList!7687 lm!2671)))))))

(declare-fun b!4837446 () Bool)

(assert (=> b!4837446 (= e!3023130 (forall!12787 (t!362891 (t!362891 (toList!7687 lm!2671))) lambda!239857))))

(assert (= (and d!1550718 (not res!2061631)) b!4837445))

(assert (= (and b!4837445 res!2061632) b!4837446))

(declare-fun b_lambda!191113 () Bool)

(assert (=> (not b_lambda!191113) (not b!4837445)))

(declare-fun m!5832642 () Bool)

(assert (=> b!4837445 m!5832642))

(declare-fun m!5832644 () Bool)

(assert (=> b!4837446 m!5832644))

(assert (=> b!4837416 d!1550718))

(declare-fun d!1550722 () Bool)

(declare-fun res!2061635 () Bool)

(declare-fun e!3023133 () Bool)

(assert (=> d!1550722 (=> res!2061635 e!3023133)))

(assert (=> d!1550722 (= res!2061635 (and ((_ is Cons!55270) (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (= (_1!32655 (h!61705 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))))) key!6540)))))

(assert (=> d!1550722 (= (containsKey!4532 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))) key!6540) e!3023133)))

(declare-fun b!4837449 () Bool)

(declare-fun e!3023134 () Bool)

(assert (=> b!4837449 (= e!3023133 e!3023134)))

(declare-fun res!2061636 () Bool)

(assert (=> b!4837449 (=> (not res!2061636) (not e!3023134))))

(assert (=> b!4837449 (= res!2061636 ((_ is Cons!55270) (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))

(declare-fun b!4837450 () Bool)

(assert (=> b!4837450 (= e!3023134 (containsKey!4532 (t!362890 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671))))) key!6540))))

(assert (= (and d!1550722 (not res!2061635)) b!4837449))

(assert (= (and b!4837449 res!2061636) b!4837450))

(declare-fun m!5832646 () Bool)

(assert (=> b!4837450 m!5832646))

(assert (=> b!4837398 d!1550722))

(assert (=> b!4837336 d!1550666))

(assert (=> b!4837336 d!1550680))

(declare-fun d!1550726 () Bool)

(assert (=> d!1550726 (= (invariantList!1859 (toList!7688 lt!1982427)) (noDuplicatedKeys!499 (toList!7688 lt!1982427)))))

(declare-fun bs!1167676 () Bool)

(assert (= bs!1167676 d!1550726))

(declare-fun m!5832650 () Bool)

(assert (=> bs!1167676 m!5832650))

(assert (=> b!4837384 d!1550726))

(declare-fun d!1550728 () Bool)

(assert (=> d!1550728 (= (invariantList!1859 (toList!7688 lt!1982430)) (noDuplicatedKeys!499 (toList!7688 lt!1982430)))))

(declare-fun bs!1167677 () Bool)

(assert (= bs!1167677 d!1550728))

(declare-fun m!5832652 () Bool)

(assert (=> bs!1167677 m!5832652))

(assert (=> d!1550680 d!1550728))

(declare-fun d!1550730 () Bool)

(declare-fun res!2061640 () Bool)

(declare-fun e!3023138 () Bool)

(assert (=> d!1550730 (=> res!2061640 e!3023138)))

(assert (=> d!1550730 (= res!2061640 ((_ is Nil!55271) (t!362891 (toList!7687 lm!2671))))))

(assert (=> d!1550730 (= (forall!12787 (t!362891 (toList!7687 lm!2671)) lambda!239935) e!3023138)))

(declare-fun b!4837454 () Bool)

(declare-fun e!3023139 () Bool)

(assert (=> b!4837454 (= e!3023138 e!3023139)))

(declare-fun res!2061641 () Bool)

(assert (=> b!4837454 (=> (not res!2061641) (not e!3023139))))

(assert (=> b!4837454 (= res!2061641 (dynLambda!22273 lambda!239935 (h!61706 (t!362891 (toList!7687 lm!2671)))))))

(declare-fun b!4837455 () Bool)

(assert (=> b!4837455 (= e!3023139 (forall!12787 (t!362891 (t!362891 (toList!7687 lm!2671))) lambda!239935))))

(assert (= (and d!1550730 (not res!2061640)) b!4837454))

(assert (= (and b!4837454 res!2061641) b!4837455))

(declare-fun b_lambda!191115 () Bool)

(assert (=> (not b_lambda!191115) (not b!4837454)))

(declare-fun m!5832658 () Bool)

(assert (=> b!4837454 m!5832658))

(declare-fun m!5832660 () Bool)

(assert (=> b!4837455 m!5832660))

(assert (=> d!1550680 d!1550730))

(declare-fun bs!1167686 () Bool)

(declare-fun d!1550734 () Bool)

(assert (= bs!1167686 (and d!1550734 b!4837386)))

(declare-fun lambda!239947 () Int)

(assert (=> bs!1167686 (= lambda!239947 lambda!239931)))

(declare-fun bs!1167687 () Bool)

(assert (= bs!1167687 (and d!1550734 b!4837387)))

(assert (=> bs!1167687 (= lambda!239947 lambda!239932)))

(assert (=> bs!1167687 (= (= (extractMap!2740 (t!362891 (toList!7687 lm!2671))) lt!1982410) (= lambda!239947 lambda!239933))))

(declare-fun bs!1167688 () Bool)

(assert (= bs!1167688 (and d!1550734 d!1550666)))

(assert (=> bs!1167688 (= (= (extractMap!2740 (t!362891 (toList!7687 lm!2671))) lt!1982427) (= lambda!239947 lambda!239934))))

(assert (=> d!1550734 true))

(assert (=> d!1550734 (forall!12789 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) lambda!239947)))

(declare-fun lt!1982457 () Unit!144651)

(declare-fun choose!35334 (ListMap!7041) Unit!144651)

(assert (=> d!1550734 (= lt!1982457 (choose!35334 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))))))

(assert (=> d!1550734 (= (lemmaContainsAllItsOwnKeys!1033 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) lt!1982457)))

(declare-fun bs!1167689 () Bool)

(assert (= bs!1167689 d!1550734))

(declare-fun m!5832684 () Bool)

(assert (=> bs!1167689 m!5832684))

(assert (=> bs!1167689 m!5832456))

(declare-fun m!5832686 () Bool)

(assert (=> bs!1167689 m!5832686))

(assert (=> bm!337109 d!1550734))

(declare-fun d!1550752 () Bool)

(declare-fun res!2061662 () Bool)

(declare-fun e!3023160 () Bool)

(assert (=> d!1550752 (=> res!2061662 e!3023160)))

(assert (=> d!1550752 (= res!2061662 ((_ is Nil!55270) (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671))))))))

(assert (=> d!1550752 (= (forall!12789 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) lambda!239933) e!3023160)))

(declare-fun b!4837478 () Bool)

(declare-fun e!3023161 () Bool)

(assert (=> b!4837478 (= e!3023160 e!3023161)))

(declare-fun res!2061663 () Bool)

(assert (=> b!4837478 (=> (not res!2061663) (not e!3023161))))

(declare-fun dynLambda!22275 (Int tuple2!58722) Bool)

(assert (=> b!4837478 (= res!2061663 (dynLambda!22275 lambda!239933 (h!61705 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))))))))

(declare-fun b!4837479 () Bool)

(assert (=> b!4837479 (= e!3023161 (forall!12789 (t!362890 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671))))) lambda!239933))))

(assert (= (and d!1550752 (not res!2061662)) b!4837478))

(assert (= (and b!4837478 res!2061663) b!4837479))

(declare-fun b_lambda!191123 () Bool)

(assert (=> (not b_lambda!191123) (not b!4837478)))

(declare-fun m!5832688 () Bool)

(assert (=> b!4837478 m!5832688))

(declare-fun m!5832690 () Bool)

(assert (=> b!4837479 m!5832690))

(assert (=> b!4837385 d!1550752))

(declare-fun d!1550754 () Bool)

(declare-fun res!2061664 () Bool)

(declare-fun e!3023162 () Bool)

(assert (=> d!1550754 (=> res!2061664 e!3023162)))

(assert (=> d!1550754 (= res!2061664 ((_ is Nil!55270) (ite c!823944 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (toList!7688 lt!1982412))))))

(assert (=> d!1550754 (= (forall!12789 (ite c!823944 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (toList!7688 lt!1982412)) (ite c!823944 lambda!239931 lambda!239933)) e!3023162)))

(declare-fun b!4837480 () Bool)

(declare-fun e!3023163 () Bool)

(assert (=> b!4837480 (= e!3023162 e!3023163)))

(declare-fun res!2061665 () Bool)

(assert (=> b!4837480 (=> (not res!2061665) (not e!3023163))))

(assert (=> b!4837480 (= res!2061665 (dynLambda!22275 (ite c!823944 lambda!239931 lambda!239933) (h!61705 (ite c!823944 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (toList!7688 lt!1982412)))))))

(declare-fun b!4837481 () Bool)

(assert (=> b!4837481 (= e!3023163 (forall!12789 (t!362890 (ite c!823944 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (toList!7688 lt!1982412))) (ite c!823944 lambda!239931 lambda!239933)))))

(assert (= (and d!1550754 (not res!2061664)) b!4837480))

(assert (= (and b!4837480 res!2061665) b!4837481))

(declare-fun b_lambda!191125 () Bool)

(assert (=> (not b_lambda!191125) (not b!4837480)))

(declare-fun m!5832698 () Bool)

(assert (=> b!4837480 m!5832698))

(declare-fun m!5832702 () Bool)

(assert (=> b!4837481 m!5832702))

(assert (=> bm!337110 d!1550754))

(assert (=> d!1550690 d!1550686))

(assert (=> d!1550690 d!1550688))

(declare-fun d!1550756 () Bool)

(assert (=> d!1550756 (containsKeyBiggerList!666 (tail!9442 (toList!7687 lm!2671)) key!6540)))

(assert (=> d!1550756 true))

(declare-fun _$37!383 () Unit!144651)

(assert (=> d!1550756 (= (choose!35333 lm!2671 key!6540 hashF!1662) _$37!383)))

(declare-fun bs!1167699 () Bool)

(assert (= bs!1167699 d!1550756))

(assert (=> bs!1167699 m!5832466))

(assert (=> bs!1167699 m!5832466))

(assert (=> bs!1167699 m!5832468))

(assert (=> d!1550690 d!1550756))

(declare-fun d!1550760 () Bool)

(declare-fun res!2061666 () Bool)

(declare-fun e!3023165 () Bool)

(assert (=> d!1550760 (=> res!2061666 e!3023165)))

(assert (=> d!1550760 (= res!2061666 ((_ is Nil!55271) (toList!7687 lm!2671)))))

(assert (=> d!1550760 (= (forall!12787 (toList!7687 lm!2671) lambda!239938) e!3023165)))

(declare-fun b!4837484 () Bool)

(declare-fun e!3023166 () Bool)

(assert (=> b!4837484 (= e!3023165 e!3023166)))

(declare-fun res!2061667 () Bool)

(assert (=> b!4837484 (=> (not res!2061667) (not e!3023166))))

(assert (=> b!4837484 (= res!2061667 (dynLambda!22273 lambda!239938 (h!61706 (toList!7687 lm!2671))))))

(declare-fun b!4837485 () Bool)

(assert (=> b!4837485 (= e!3023166 (forall!12787 (t!362891 (toList!7687 lm!2671)) lambda!239938))))

(assert (= (and d!1550760 (not res!2061666)) b!4837484))

(assert (= (and b!4837484 res!2061667) b!4837485))

(declare-fun b_lambda!191127 () Bool)

(assert (=> (not b_lambda!191127) (not b!4837484)))

(declare-fun m!5832736 () Bool)

(assert (=> b!4837484 m!5832736))

(declare-fun m!5832738 () Bool)

(assert (=> b!4837485 m!5832738))

(assert (=> d!1550690 d!1550760))

(assert (=> b!4837419 d!1550682))

(declare-fun bs!1167701 () Bool)

(declare-fun b!4837490 () Bool)

(assert (= bs!1167701 (and b!4837490 d!1550734)))

(declare-fun lambda!239950 () Int)

(assert (=> bs!1167701 (= (= (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671)))) (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239950 lambda!239947))))

(declare-fun bs!1167702 () Bool)

(assert (= bs!1167702 (and b!4837490 b!4837386)))

(assert (=> bs!1167702 (= (= (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671)))) (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239950 lambda!239931))))

(declare-fun bs!1167703 () Bool)

(assert (= bs!1167703 (and b!4837490 b!4837387)))

(assert (=> bs!1167703 (= (= (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671)))) (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239950 lambda!239932))))

(assert (=> bs!1167703 (= (= (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671)))) lt!1982410) (= lambda!239950 lambda!239933))))

(declare-fun bs!1167704 () Bool)

(assert (= bs!1167704 (and b!4837490 d!1550666)))

(assert (=> bs!1167704 (= (= (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671)))) lt!1982427) (= lambda!239950 lambda!239934))))

(assert (=> b!4837490 true))

(declare-fun bs!1167705 () Bool)

(declare-fun b!4837491 () Bool)

(assert (= bs!1167705 (and b!4837491 d!1550734)))

(declare-fun lambda!239951 () Int)

(assert (=> bs!1167705 (= (= (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671)))) (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239951 lambda!239947))))

(declare-fun bs!1167706 () Bool)

(assert (= bs!1167706 (and b!4837491 b!4837490)))

(assert (=> bs!1167706 (= lambda!239951 lambda!239950)))

(declare-fun bs!1167707 () Bool)

(assert (= bs!1167707 (and b!4837491 b!4837386)))

(assert (=> bs!1167707 (= (= (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671)))) (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239951 lambda!239931))))

(declare-fun bs!1167708 () Bool)

(assert (= bs!1167708 (and b!4837491 b!4837387)))

(assert (=> bs!1167708 (= (= (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671)))) (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239951 lambda!239932))))

(assert (=> bs!1167708 (= (= (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671)))) lt!1982410) (= lambda!239951 lambda!239933))))

(declare-fun bs!1167709 () Bool)

(assert (= bs!1167709 (and b!4837491 d!1550666)))

(assert (=> bs!1167709 (= (= (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671)))) lt!1982427) (= lambda!239951 lambda!239934))))

(assert (=> b!4837491 true))

(declare-fun lt!1982460 () ListMap!7041)

(declare-fun lambda!239952 () Int)

(assert (=> bs!1167705 (= (= lt!1982460 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239952 lambda!239947))))

(assert (=> bs!1167706 (= (= lt!1982460 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) (= lambda!239952 lambda!239950))))

(assert (=> bs!1167707 (= (= lt!1982460 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239952 lambda!239931))))

(assert (=> b!4837491 (= (= lt!1982460 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) (= lambda!239952 lambda!239951))))

(assert (=> bs!1167708 (= (= lt!1982460 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239952 lambda!239932))))

(assert (=> bs!1167708 (= (= lt!1982460 lt!1982410) (= lambda!239952 lambda!239933))))

(assert (=> bs!1167709 (= (= lt!1982460 lt!1982427) (= lambda!239952 lambda!239934))))

(assert (=> b!4837491 true))

(declare-fun bs!1167710 () Bool)

(declare-fun d!1550764 () Bool)

(assert (= bs!1167710 (and d!1550764 d!1550734)))

(declare-fun lambda!239953 () Int)

(declare-fun lt!1982477 () ListMap!7041)

(assert (=> bs!1167710 (= (= lt!1982477 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239953 lambda!239947))))

(declare-fun bs!1167711 () Bool)

(assert (= bs!1167711 (and d!1550764 b!4837490)))

(assert (=> bs!1167711 (= (= lt!1982477 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) (= lambda!239953 lambda!239950))))

(declare-fun bs!1167712 () Bool)

(assert (= bs!1167712 (and d!1550764 b!4837386)))

(assert (=> bs!1167712 (= (= lt!1982477 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239953 lambda!239931))))

(declare-fun bs!1167713 () Bool)

(assert (= bs!1167713 (and d!1550764 b!4837491)))

(assert (=> bs!1167713 (= (= lt!1982477 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) (= lambda!239953 lambda!239951))))

(assert (=> bs!1167713 (= (= lt!1982477 lt!1982460) (= lambda!239953 lambda!239952))))

(declare-fun bs!1167714 () Bool)

(assert (= bs!1167714 (and d!1550764 b!4837387)))

(assert (=> bs!1167714 (= (= lt!1982477 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239953 lambda!239932))))

(assert (=> bs!1167714 (= (= lt!1982477 lt!1982410) (= lambda!239953 lambda!239933))))

(declare-fun bs!1167715 () Bool)

(assert (= bs!1167715 (and d!1550764 d!1550666)))

(assert (=> bs!1167715 (= (= lt!1982477 lt!1982427) (= lambda!239953 lambda!239934))))

(assert (=> d!1550764 true))

(declare-fun b!4837488 () Bool)

(declare-fun e!3023171 () Bool)

(assert (=> b!4837488 (= e!3023171 (invariantList!1859 (toList!7688 lt!1982477)))))

(declare-fun b!4837489 () Bool)

(declare-fun e!3023169 () Bool)

(assert (=> b!4837489 (= e!3023169 (forall!12789 (toList!7688 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) lambda!239952))))

(declare-fun bm!337115 () Bool)

(declare-fun call!337120 () Unit!144651)

(assert (=> bm!337115 (= call!337120 (lemmaContainsAllItsOwnKeys!1033 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))))))

(declare-fun bm!337116 () Bool)

(declare-fun lt!1982462 () ListMap!7041)

(declare-fun call!337121 () Bool)

(declare-fun c!823948 () Bool)

(assert (=> bm!337116 (= call!337121 (forall!12789 (ite c!823948 (toList!7688 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) (toList!7688 lt!1982462)) (ite c!823948 lambda!239950 lambda!239952)))))

(declare-fun bm!337117 () Bool)

(declare-fun call!337122 () Bool)

(assert (=> bm!337117 (= call!337122 (forall!12789 (toList!7688 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) (ite c!823948 lambda!239950 lambda!239952)))))

(declare-fun e!3023170 () ListMap!7041)

(assert (=> b!4837491 (= e!3023170 lt!1982460)))

(assert (=> b!4837491 (= lt!1982462 (+!2593 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671)))) (h!61705 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671)))))))))

(assert (=> b!4837491 (= lt!1982460 (addToMapMapFromBucket!1880 (t!362890 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671))))) (+!2593 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671)))) (h!61705 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671))))))))))

(declare-fun lt!1982459 () Unit!144651)

(assert (=> b!4837491 (= lt!1982459 call!337120)))

(assert (=> b!4837491 (forall!12789 (toList!7688 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) lambda!239951)))

(declare-fun lt!1982478 () Unit!144651)

(assert (=> b!4837491 (= lt!1982478 lt!1982459)))

(assert (=> b!4837491 (forall!12789 (toList!7688 lt!1982462) lambda!239952)))

(declare-fun lt!1982471 () Unit!144651)

(declare-fun Unit!144686 () Unit!144651)

(assert (=> b!4837491 (= lt!1982471 Unit!144686)))

(assert (=> b!4837491 (forall!12789 (t!362890 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671))))) lambda!239952)))

(declare-fun lt!1982463 () Unit!144651)

(declare-fun Unit!144687 () Unit!144651)

(assert (=> b!4837491 (= lt!1982463 Unit!144687)))

(declare-fun lt!1982465 () Unit!144651)

(declare-fun Unit!144688 () Unit!144651)

(assert (=> b!4837491 (= lt!1982465 Unit!144688)))

(declare-fun lt!1982467 () Unit!144651)

(assert (=> b!4837491 (= lt!1982467 (forallContained!4474 (toList!7688 lt!1982462) lambda!239952 (h!61705 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671)))))))))

(assert (=> b!4837491 (contains!19046 lt!1982462 (_1!32655 (h!61705 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671)))))))))

(declare-fun lt!1982468 () Unit!144651)

(declare-fun Unit!144689 () Unit!144651)

(assert (=> b!4837491 (= lt!1982468 Unit!144689)))

(assert (=> b!4837491 (contains!19046 lt!1982460 (_1!32655 (h!61705 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671)))))))))

(declare-fun lt!1982472 () Unit!144651)

(declare-fun Unit!144690 () Unit!144651)

(assert (=> b!4837491 (= lt!1982472 Unit!144690)))

(assert (=> b!4837491 (forall!12789 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671)))) lambda!239952)))

(declare-fun lt!1982464 () Unit!144651)

(declare-fun Unit!144691 () Unit!144651)

(assert (=> b!4837491 (= lt!1982464 Unit!144691)))

(assert (=> b!4837491 call!337121))

(declare-fun lt!1982476 () Unit!144651)

(declare-fun Unit!144692 () Unit!144651)

(assert (=> b!4837491 (= lt!1982476 Unit!144692)))

(declare-fun lt!1982474 () Unit!144651)

(declare-fun Unit!144693 () Unit!144651)

(assert (=> b!4837491 (= lt!1982474 Unit!144693)))

(declare-fun lt!1982479 () Unit!144651)

(assert (=> b!4837491 (= lt!1982479 (addForallContainsKeyThenBeforeAdding!1031 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671)))) lt!1982460 (_1!32655 (h!61705 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671)))))) (_2!32655 (h!61705 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671))))))))))

(assert (=> b!4837491 call!337122))

(declare-fun lt!1982470 () Unit!144651)

(assert (=> b!4837491 (= lt!1982470 lt!1982479)))

(assert (=> b!4837491 (forall!12789 (toList!7688 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) lambda!239952)))

(declare-fun lt!1982473 () Unit!144651)

(declare-fun Unit!144694 () Unit!144651)

(assert (=> b!4837491 (= lt!1982473 Unit!144694)))

(declare-fun res!2061670 () Bool)

(assert (=> b!4837491 (= res!2061670 (forall!12789 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671)))) lambda!239952))))

(assert (=> b!4837491 (=> (not res!2061670) (not e!3023169))))

(assert (=> b!4837491 e!3023169))

(declare-fun lt!1982466 () Unit!144651)

(declare-fun Unit!144695 () Unit!144651)

(assert (=> b!4837491 (= lt!1982466 Unit!144695)))

(declare-fun b!4837492 () Bool)

(declare-fun res!2061672 () Bool)

(assert (=> b!4837492 (=> (not res!2061672) (not e!3023171))))

(assert (=> b!4837492 (= res!2061672 (forall!12789 (toList!7688 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) lambda!239953))))

(assert (=> d!1550764 e!3023171))

(declare-fun res!2061671 () Bool)

(assert (=> d!1550764 (=> (not res!2061671) (not e!3023171))))

(assert (=> d!1550764 (= res!2061671 (forall!12789 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671)))) lambda!239953))))

(assert (=> d!1550764 (= lt!1982477 e!3023170)))

(assert (=> d!1550764 (= c!823948 ((_ is Nil!55270) (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671))))))))

(assert (=> d!1550764 (noDuplicateKeys!2524 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671)))))))

(assert (=> d!1550764 (= (addToMapMapFromBucket!1880 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671)))) (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) lt!1982477)))

(assert (=> b!4837490 (= e!3023170 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671)))))))

(declare-fun lt!1982475 () Unit!144651)

(assert (=> b!4837490 (= lt!1982475 call!337120)))

(assert (=> b!4837490 call!337121))

(declare-fun lt!1982469 () Unit!144651)

(assert (=> b!4837490 (= lt!1982469 lt!1982475)))

(assert (=> b!4837490 call!337122))

(declare-fun lt!1982461 () Unit!144651)

(declare-fun Unit!144696 () Unit!144651)

(assert (=> b!4837490 (= lt!1982461 Unit!144696)))

(assert (= (and d!1550764 c!823948) b!4837490))

(assert (= (and d!1550764 (not c!823948)) b!4837491))

(assert (= (and b!4837491 res!2061670) b!4837489))

(assert (= (or b!4837490 b!4837491) bm!337115))

(assert (= (or b!4837490 b!4837491) bm!337116))

(assert (= (or b!4837490 b!4837491) bm!337117))

(assert (= (and d!1550764 res!2061671) b!4837492))

(assert (= (and b!4837492 res!2061672) b!4837488))

(declare-fun m!5832748 () Bool)

(assert (=> b!4837491 m!5832748))

(declare-fun m!5832750 () Bool)

(assert (=> b!4837491 m!5832750))

(declare-fun m!5832752 () Bool)

(assert (=> b!4837491 m!5832752))

(declare-fun m!5832754 () Bool)

(assert (=> b!4837491 m!5832754))

(declare-fun m!5832756 () Bool)

(assert (=> b!4837491 m!5832756))

(declare-fun m!5832758 () Bool)

(assert (=> b!4837491 m!5832758))

(declare-fun m!5832760 () Bool)

(assert (=> b!4837491 m!5832760))

(declare-fun m!5832762 () Bool)

(assert (=> b!4837491 m!5832762))

(assert (=> b!4837491 m!5832590))

(declare-fun m!5832764 () Bool)

(assert (=> b!4837491 m!5832764))

(assert (=> b!4837491 m!5832760))

(assert (=> b!4837491 m!5832590))

(assert (=> b!4837491 m!5832748))

(declare-fun m!5832766 () Bool)

(assert (=> b!4837491 m!5832766))

(declare-fun m!5832768 () Bool)

(assert (=> b!4837491 m!5832768))

(declare-fun m!5832770 () Bool)

(assert (=> d!1550764 m!5832770))

(declare-fun m!5832772 () Bool)

(assert (=> d!1550764 m!5832772))

(assert (=> b!4837489 m!5832768))

(declare-fun m!5832774 () Bool)

(assert (=> b!4837488 m!5832774))

(declare-fun m!5832776 () Bool)

(assert (=> b!4837492 m!5832776))

(assert (=> bm!337115 m!5832590))

(declare-fun m!5832778 () Bool)

(assert (=> bm!337115 m!5832778))

(declare-fun m!5832780 () Bool)

(assert (=> bm!337117 m!5832780))

(declare-fun m!5832782 () Bool)

(assert (=> bm!337116 m!5832782))

(assert (=> b!4837391 d!1550764))

(declare-fun bs!1167716 () Bool)

(declare-fun d!1550770 () Bool)

(assert (= bs!1167716 (and d!1550770 d!1550690)))

(declare-fun lambda!239954 () Int)

(assert (=> bs!1167716 (= lambda!239954 lambda!239938)))

(declare-fun bs!1167717 () Bool)

(assert (= bs!1167717 (and d!1550770 d!1550660)))

(assert (=> bs!1167717 (= lambda!239954 lambda!239869)))

(declare-fun bs!1167718 () Bool)

(assert (= bs!1167718 (and d!1550770 d!1550698)))

(assert (=> bs!1167718 (not (= lambda!239954 lambda!239941))))

(declare-fun bs!1167719 () Bool)

(assert (= bs!1167719 (and d!1550770 d!1550680)))

(assert (=> bs!1167719 (= lambda!239954 lambda!239935)))

(declare-fun bs!1167720 () Bool)

(assert (= bs!1167720 (and d!1550770 start!503094)))

(assert (=> bs!1167720 (= lambda!239954 lambda!239857)))

(declare-fun lt!1982482 () ListMap!7041)

(assert (=> d!1550770 (invariantList!1859 (toList!7688 lt!1982482))))

(declare-fun e!3023178 () ListMap!7041)

(assert (=> d!1550770 (= lt!1982482 e!3023178)))

(declare-fun c!823949 () Bool)

(assert (=> d!1550770 (= c!823949 ((_ is Cons!55271) (t!362891 (t!362891 (toList!7687 lm!2671)))))))

(assert (=> d!1550770 (forall!12787 (t!362891 (t!362891 (toList!7687 lm!2671))) lambda!239954)))

(assert (=> d!1550770 (= (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671)))) lt!1982482)))

(declare-fun b!4837499 () Bool)

(assert (=> b!4837499 (= e!3023178 (addToMapMapFromBucket!1880 (_2!32656 (h!61706 (t!362891 (t!362891 (toList!7687 lm!2671))))) (extractMap!2740 (t!362891 (t!362891 (t!362891 (toList!7687 lm!2671)))))))))

(declare-fun b!4837500 () Bool)

(assert (=> b!4837500 (= e!3023178 (ListMap!7042 Nil!55270))))

(assert (= (and d!1550770 c!823949) b!4837499))

(assert (= (and d!1550770 (not c!823949)) b!4837500))

(declare-fun m!5832784 () Bool)

(assert (=> d!1550770 m!5832784))

(declare-fun m!5832786 () Bool)

(assert (=> d!1550770 m!5832786))

(declare-fun m!5832788 () Bool)

(assert (=> b!4837499 m!5832788))

(assert (=> b!4837499 m!5832788))

(declare-fun m!5832790 () Bool)

(assert (=> b!4837499 m!5832790))

(assert (=> b!4837391 d!1550770))

(declare-fun d!1550772 () Bool)

(declare-fun res!2061679 () Bool)

(declare-fun e!3023179 () Bool)

(assert (=> d!1550772 (=> res!2061679 e!3023179)))

(assert (=> d!1550772 (= res!2061679 ((_ is Nil!55270) (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))

(assert (=> d!1550772 (= (forall!12789 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))) lambda!239933) e!3023179)))

(declare-fun b!4837501 () Bool)

(declare-fun e!3023180 () Bool)

(assert (=> b!4837501 (= e!3023179 e!3023180)))

(declare-fun res!2061680 () Bool)

(assert (=> b!4837501 (=> (not res!2061680) (not e!3023180))))

(assert (=> b!4837501 (= res!2061680 (dynLambda!22275 lambda!239933 (h!61705 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-fun b!4837502 () Bool)

(assert (=> b!4837502 (= e!3023180 (forall!12789 (t!362890 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671))))) lambda!239933))))

(assert (= (and d!1550772 (not res!2061679)) b!4837501))

(assert (= (and b!4837501 res!2061680) b!4837502))

(declare-fun b_lambda!191131 () Bool)

(assert (=> (not b_lambda!191131) (not b!4837501)))

(declare-fun m!5832792 () Bool)

(assert (=> b!4837501 m!5832792))

(declare-fun m!5832794 () Bool)

(assert (=> b!4837502 m!5832794))

(assert (=> b!4837387 d!1550772))

(declare-fun d!1550774 () Bool)

(declare-fun res!2061681 () Bool)

(declare-fun e!3023181 () Bool)

(assert (=> d!1550774 (=> res!2061681 e!3023181)))

(assert (=> d!1550774 (= res!2061681 ((_ is Nil!55270) (toList!7688 lt!1982412)))))

(assert (=> d!1550774 (= (forall!12789 (toList!7688 lt!1982412) lambda!239933) e!3023181)))

(declare-fun b!4837503 () Bool)

(declare-fun e!3023182 () Bool)

(assert (=> b!4837503 (= e!3023181 e!3023182)))

(declare-fun res!2061682 () Bool)

(assert (=> b!4837503 (=> (not res!2061682) (not e!3023182))))

(assert (=> b!4837503 (= res!2061682 (dynLambda!22275 lambda!239933 (h!61705 (toList!7688 lt!1982412))))))

(declare-fun b!4837504 () Bool)

(assert (=> b!4837504 (= e!3023182 (forall!12789 (t!362890 (toList!7688 lt!1982412)) lambda!239933))))

(assert (= (and d!1550774 (not res!2061681)) b!4837503))

(assert (= (and b!4837503 res!2061682) b!4837504))

(declare-fun b_lambda!191133 () Bool)

(assert (=> (not b_lambda!191133) (not b!4837503)))

(declare-fun m!5832796 () Bool)

(assert (=> b!4837503 m!5832796))

(declare-fun m!5832798 () Bool)

(assert (=> b!4837504 m!5832798))

(assert (=> b!4837387 d!1550774))

(assert (=> b!4837387 d!1550752))

(declare-fun bs!1167729 () Bool)

(declare-fun d!1550776 () Bool)

(assert (= bs!1167729 (and d!1550776 d!1550734)))

(declare-fun lambda!239962 () Int)

(assert (=> bs!1167729 (= (= lt!1982410 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239962 lambda!239947))))

(declare-fun bs!1167730 () Bool)

(assert (= bs!1167730 (and d!1550776 b!4837490)))

(assert (=> bs!1167730 (= (= lt!1982410 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) (= lambda!239962 lambda!239950))))

(declare-fun bs!1167731 () Bool)

(assert (= bs!1167731 (and d!1550776 b!4837386)))

(assert (=> bs!1167731 (= (= lt!1982410 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239962 lambda!239931))))

(declare-fun bs!1167732 () Bool)

(assert (= bs!1167732 (and d!1550776 b!4837491)))

(assert (=> bs!1167732 (= (= lt!1982410 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) (= lambda!239962 lambda!239951))))

(assert (=> bs!1167732 (= (= lt!1982410 lt!1982460) (= lambda!239962 lambda!239952))))

(declare-fun bs!1167733 () Bool)

(assert (= bs!1167733 (and d!1550776 b!4837387)))

(assert (=> bs!1167733 (= (= lt!1982410 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239962 lambda!239932))))

(declare-fun bs!1167734 () Bool)

(assert (= bs!1167734 (and d!1550776 d!1550764)))

(assert (=> bs!1167734 (= (= lt!1982410 lt!1982477) (= lambda!239962 lambda!239953))))

(assert (=> bs!1167733 (= lambda!239962 lambda!239933)))

(declare-fun bs!1167735 () Bool)

(assert (= bs!1167735 (and d!1550776 d!1550666)))

(assert (=> bs!1167735 (= (= lt!1982410 lt!1982427) (= lambda!239962 lambda!239934))))

(assert (=> d!1550776 true))

(assert (=> d!1550776 (forall!12789 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) lambda!239962)))

(declare-fun lt!1982486 () Unit!144651)

(declare-fun choose!35336 (ListMap!7041 ListMap!7041 K!17024 V!17270) Unit!144651)

(assert (=> d!1550776 (= lt!1982486 (choose!35336 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) lt!1982410 (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (_2!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(assert (=> d!1550776 (forall!12789 (toList!7688 (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (tuple2!58723 (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (_2!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))) lambda!239962)))

(assert (=> d!1550776 (= (addForallContainsKeyThenBeforeAdding!1031 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) lt!1982410 (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (_2!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))) lt!1982486)))

(declare-fun bs!1167736 () Bool)

(assert (= bs!1167736 d!1550776))

(declare-fun m!5832826 () Bool)

(assert (=> bs!1167736 m!5832826))

(assert (=> bs!1167736 m!5832456))

(declare-fun m!5832828 () Bool)

(assert (=> bs!1167736 m!5832828))

(assert (=> bs!1167736 m!5832456))

(declare-fun m!5832830 () Bool)

(assert (=> bs!1167736 m!5832830))

(declare-fun m!5832832 () Bool)

(assert (=> bs!1167736 m!5832832))

(assert (=> b!4837387 d!1550776))

(declare-fun d!1550794 () Bool)

(declare-fun res!2061699 () Bool)

(declare-fun e!3023199 () Bool)

(assert (=> d!1550794 (=> res!2061699 e!3023199)))

(assert (=> d!1550794 (= res!2061699 ((_ is Nil!55270) (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671))))))))

(assert (=> d!1550794 (= (forall!12789 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) lambda!239932) e!3023199)))

(declare-fun b!4837522 () Bool)

(declare-fun e!3023200 () Bool)

(assert (=> b!4837522 (= e!3023199 e!3023200)))

(declare-fun res!2061700 () Bool)

(assert (=> b!4837522 (=> (not res!2061700) (not e!3023200))))

(assert (=> b!4837522 (= res!2061700 (dynLambda!22275 lambda!239932 (h!61705 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))))))))

(declare-fun b!4837523 () Bool)

(assert (=> b!4837523 (= e!3023200 (forall!12789 (t!362890 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671))))) lambda!239932))))

(assert (= (and d!1550794 (not res!2061699)) b!4837522))

(assert (= (and b!4837522 res!2061700) b!4837523))

(declare-fun b_lambda!191145 () Bool)

(assert (=> (not b_lambda!191145) (not b!4837522)))

(declare-fun m!5832834 () Bool)

(assert (=> b!4837522 m!5832834))

(declare-fun m!5832836 () Bool)

(assert (=> b!4837523 m!5832836))

(assert (=> b!4837387 d!1550794))

(declare-fun d!1550796 () Bool)

(declare-fun res!2061701 () Bool)

(declare-fun e!3023201 () Bool)

(assert (=> d!1550796 (=> res!2061701 e!3023201)))

(assert (=> d!1550796 (= res!2061701 ((_ is Nil!55270) (_2!32656 (h!61706 (toList!7687 lm!2671)))))))

(assert (=> d!1550796 (= (forall!12789 (_2!32656 (h!61706 (toList!7687 lm!2671))) lambda!239933) e!3023201)))

(declare-fun b!4837524 () Bool)

(declare-fun e!3023202 () Bool)

(assert (=> b!4837524 (= e!3023201 e!3023202)))

(declare-fun res!2061702 () Bool)

(assert (=> b!4837524 (=> (not res!2061702) (not e!3023202))))

(assert (=> b!4837524 (= res!2061702 (dynLambda!22275 lambda!239933 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))

(declare-fun b!4837525 () Bool)

(assert (=> b!4837525 (= e!3023202 (forall!12789 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))) lambda!239933))))

(assert (= (and d!1550796 (not res!2061701)) b!4837524))

(assert (= (and b!4837524 res!2061702) b!4837525))

(declare-fun b_lambda!191147 () Bool)

(assert (=> (not b_lambda!191147) (not b!4837524)))

(declare-fun m!5832838 () Bool)

(assert (=> b!4837524 m!5832838))

(assert (=> b!4837525 m!5832556))

(assert (=> b!4837387 d!1550796))

(declare-fun b!4837550 () Bool)

(declare-datatypes ((List!55396 0))(
  ( (Nil!55272) (Cons!55272 (h!61707 K!17024) (t!362892 List!55396)) )
))
(declare-fun e!3023223 () List!55396)

(declare-fun getKeysList!1193 (List!55394) List!55396)

(assert (=> b!4837550 (= e!3023223 (getKeysList!1193 (toList!7688 lt!1982410)))))

(declare-fun b!4837551 () Bool)

(declare-fun e!3023219 () Unit!144651)

(declare-fun lt!1982521 () Unit!144651)

(assert (=> b!4837551 (= e!3023219 lt!1982521)))

(declare-fun lt!1982518 () Unit!144651)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2466 (List!55394 K!17024) Unit!144651)

(assert (=> b!4837551 (= lt!1982518 (lemmaContainsKeyImpliesGetValueByKeyDefined!2466 (toList!7688 lt!1982410) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-datatypes ((Option!13588 0))(
  ( (None!13587) (Some!13587 (v!49309 V!17270)) )
))
(declare-fun isDefined!10693 (Option!13588) Bool)

(declare-fun getValueByKey!2686 (List!55394 K!17024) Option!13588)

(assert (=> b!4837551 (isDefined!10693 (getValueByKey!2686 (toList!7688 lt!1982410) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-fun lt!1982516 () Unit!144651)

(assert (=> b!4837551 (= lt!1982516 lt!1982518)))

(declare-fun lemmaInListThenGetKeysListContains!1188 (List!55394 K!17024) Unit!144651)

(assert (=> b!4837551 (= lt!1982521 (lemmaInListThenGetKeysListContains!1188 (toList!7688 lt!1982410) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-fun call!337125 () Bool)

(assert (=> b!4837551 call!337125))

(declare-fun b!4837552 () Bool)

(declare-fun e!3023221 () Unit!144651)

(declare-fun Unit!144697 () Unit!144651)

(assert (=> b!4837552 (= e!3023221 Unit!144697)))

(declare-fun b!4837553 () Bool)

(assert (=> b!4837553 (= e!3023219 e!3023221)))

(declare-fun c!823958 () Bool)

(assert (=> b!4837553 (= c!823958 call!337125)))

(declare-fun b!4837554 () Bool)

(declare-fun e!3023218 () Bool)

(declare-fun contains!19047 (List!55396 K!17024) Bool)

(declare-fun keys!20408 (ListMap!7041) List!55396)

(assert (=> b!4837554 (= e!3023218 (contains!19047 (keys!20408 lt!1982410) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-fun bm!337120 () Bool)

(assert (=> bm!337120 (= call!337125 (contains!19047 e!3023223 (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-fun c!823956 () Bool)

(declare-fun c!823957 () Bool)

(assert (=> bm!337120 (= c!823956 c!823957)))

(declare-fun b!4837555 () Bool)

(assert (=> b!4837555 (= e!3023223 (keys!20408 lt!1982410))))

(declare-fun b!4837556 () Bool)

(declare-fun e!3023222 () Bool)

(assert (=> b!4837556 (= e!3023222 (not (contains!19047 (keys!20408 lt!1982410) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))))

(declare-fun d!1550798 () Bool)

(declare-fun e!3023220 () Bool)

(assert (=> d!1550798 e!3023220))

(declare-fun res!2061715 () Bool)

(assert (=> d!1550798 (=> res!2061715 e!3023220)))

(assert (=> d!1550798 (= res!2061715 e!3023222)))

(declare-fun res!2061717 () Bool)

(assert (=> d!1550798 (=> (not res!2061717) (not e!3023222))))

(declare-fun lt!1982519 () Bool)

(assert (=> d!1550798 (= res!2061717 (not lt!1982519))))

(declare-fun lt!1982515 () Bool)

(assert (=> d!1550798 (= lt!1982519 lt!1982515)))

(declare-fun lt!1982522 () Unit!144651)

(assert (=> d!1550798 (= lt!1982522 e!3023219)))

(assert (=> d!1550798 (= c!823957 lt!1982515)))

(declare-fun containsKey!4533 (List!55394 K!17024) Bool)

(assert (=> d!1550798 (= lt!1982515 (containsKey!4533 (toList!7688 lt!1982410) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(assert (=> d!1550798 (= (contains!19046 lt!1982410 (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))) lt!1982519)))

(declare-fun b!4837557 () Bool)

(assert (=> b!4837557 (= e!3023220 e!3023218)))

(declare-fun res!2061716 () Bool)

(assert (=> b!4837557 (=> (not res!2061716) (not e!3023218))))

(assert (=> b!4837557 (= res!2061716 (isDefined!10693 (getValueByKey!2686 (toList!7688 lt!1982410) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))))

(declare-fun b!4837558 () Bool)

(assert (=> b!4837558 false))

(declare-fun lt!1982520 () Unit!144651)

(declare-fun lt!1982517 () Unit!144651)

(assert (=> b!4837558 (= lt!1982520 lt!1982517)))

(assert (=> b!4837558 (containsKey!4533 (toList!7688 lt!1982410) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))

(declare-fun lemmaInGetKeysListThenContainsKey!1193 (List!55394 K!17024) Unit!144651)

(assert (=> b!4837558 (= lt!1982517 (lemmaInGetKeysListThenContainsKey!1193 (toList!7688 lt!1982410) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-fun Unit!144698 () Unit!144651)

(assert (=> b!4837558 (= e!3023221 Unit!144698)))

(assert (= (and d!1550798 c!823957) b!4837551))

(assert (= (and d!1550798 (not c!823957)) b!4837553))

(assert (= (and b!4837553 c!823958) b!4837558))

(assert (= (and b!4837553 (not c!823958)) b!4837552))

(assert (= (or b!4837551 b!4837553) bm!337120))

(assert (= (and bm!337120 c!823956) b!4837550))

(assert (= (and bm!337120 (not c!823956)) b!4837555))

(assert (= (and d!1550798 res!2061717) b!4837556))

(assert (= (and d!1550798 (not res!2061715)) b!4837557))

(assert (= (and b!4837557 res!2061716) b!4837554))

(declare-fun m!5832852 () Bool)

(assert (=> b!4837556 m!5832852))

(assert (=> b!4837556 m!5832852))

(declare-fun m!5832854 () Bool)

(assert (=> b!4837556 m!5832854))

(assert (=> b!4837554 m!5832852))

(assert (=> b!4837554 m!5832852))

(assert (=> b!4837554 m!5832854))

(assert (=> b!4837555 m!5832852))

(declare-fun m!5832856 () Bool)

(assert (=> b!4837550 m!5832856))

(declare-fun m!5832858 () Bool)

(assert (=> d!1550798 m!5832858))

(assert (=> b!4837558 m!5832858))

(declare-fun m!5832860 () Bool)

(assert (=> b!4837558 m!5832860))

(declare-fun m!5832862 () Bool)

(assert (=> b!4837551 m!5832862))

(declare-fun m!5832864 () Bool)

(assert (=> b!4837551 m!5832864))

(assert (=> b!4837551 m!5832864))

(declare-fun m!5832866 () Bool)

(assert (=> b!4837551 m!5832866))

(declare-fun m!5832868 () Bool)

(assert (=> b!4837551 m!5832868))

(declare-fun m!5832870 () Bool)

(assert (=> bm!337120 m!5832870))

(assert (=> b!4837557 m!5832864))

(assert (=> b!4837557 m!5832864))

(assert (=> b!4837557 m!5832866))

(assert (=> b!4837387 d!1550798))

(declare-fun b!4837571 () Bool)

(declare-fun e!3023235 () List!55396)

(assert (=> b!4837571 (= e!3023235 (getKeysList!1193 (toList!7688 lt!1982412)))))

(declare-fun b!4837572 () Bool)

(declare-fun e!3023231 () Unit!144651)

(declare-fun lt!1982545 () Unit!144651)

(assert (=> b!4837572 (= e!3023231 lt!1982545)))

(declare-fun lt!1982542 () Unit!144651)

(assert (=> b!4837572 (= lt!1982542 (lemmaContainsKeyImpliesGetValueByKeyDefined!2466 (toList!7688 lt!1982412) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(assert (=> b!4837572 (isDefined!10693 (getValueByKey!2686 (toList!7688 lt!1982412) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-fun lt!1982540 () Unit!144651)

(assert (=> b!4837572 (= lt!1982540 lt!1982542)))

(assert (=> b!4837572 (= lt!1982545 (lemmaInListThenGetKeysListContains!1188 (toList!7688 lt!1982412) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-fun call!337128 () Bool)

(assert (=> b!4837572 call!337128))

(declare-fun b!4837573 () Bool)

(declare-fun e!3023233 () Unit!144651)

(declare-fun Unit!144699 () Unit!144651)

(assert (=> b!4837573 (= e!3023233 Unit!144699)))

(declare-fun b!4837574 () Bool)

(assert (=> b!4837574 (= e!3023231 e!3023233)))

(declare-fun c!823967 () Bool)

(assert (=> b!4837574 (= c!823967 call!337128)))

(declare-fun b!4837575 () Bool)

(declare-fun e!3023230 () Bool)

(assert (=> b!4837575 (= e!3023230 (contains!19047 (keys!20408 lt!1982412) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-fun bm!337123 () Bool)

(assert (=> bm!337123 (= call!337128 (contains!19047 e!3023235 (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-fun c!823965 () Bool)

(declare-fun c!823966 () Bool)

(assert (=> bm!337123 (= c!823965 c!823966)))

(declare-fun b!4837576 () Bool)

(assert (=> b!4837576 (= e!3023235 (keys!20408 lt!1982412))))

(declare-fun b!4837577 () Bool)

(declare-fun e!3023234 () Bool)

(assert (=> b!4837577 (= e!3023234 (not (contains!19047 (keys!20408 lt!1982412) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))))

(declare-fun d!1550802 () Bool)

(declare-fun e!3023232 () Bool)

(assert (=> d!1550802 e!3023232))

(declare-fun res!2061718 () Bool)

(assert (=> d!1550802 (=> res!2061718 e!3023232)))

(assert (=> d!1550802 (= res!2061718 e!3023234)))

(declare-fun res!2061720 () Bool)

(assert (=> d!1550802 (=> (not res!2061720) (not e!3023234))))

(declare-fun lt!1982543 () Bool)

(assert (=> d!1550802 (= res!2061720 (not lt!1982543))))

(declare-fun lt!1982539 () Bool)

(assert (=> d!1550802 (= lt!1982543 lt!1982539)))

(declare-fun lt!1982546 () Unit!144651)

(assert (=> d!1550802 (= lt!1982546 e!3023231)))

(assert (=> d!1550802 (= c!823966 lt!1982539)))

(assert (=> d!1550802 (= lt!1982539 (containsKey!4533 (toList!7688 lt!1982412) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(assert (=> d!1550802 (= (contains!19046 lt!1982412 (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))) lt!1982543)))

(declare-fun b!4837578 () Bool)

(assert (=> b!4837578 (= e!3023232 e!3023230)))

(declare-fun res!2061719 () Bool)

(assert (=> b!4837578 (=> (not res!2061719) (not e!3023230))))

(assert (=> b!4837578 (= res!2061719 (isDefined!10693 (getValueByKey!2686 (toList!7688 lt!1982412) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))))

(declare-fun b!4837579 () Bool)

(assert (=> b!4837579 false))

(declare-fun lt!1982544 () Unit!144651)

(declare-fun lt!1982541 () Unit!144651)

(assert (=> b!4837579 (= lt!1982544 lt!1982541)))

(assert (=> b!4837579 (containsKey!4533 (toList!7688 lt!1982412) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))

(assert (=> b!4837579 (= lt!1982541 (lemmaInGetKeysListThenContainsKey!1193 (toList!7688 lt!1982412) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-fun Unit!144702 () Unit!144651)

(assert (=> b!4837579 (= e!3023233 Unit!144702)))

(assert (= (and d!1550802 c!823966) b!4837572))

(assert (= (and d!1550802 (not c!823966)) b!4837574))

(assert (= (and b!4837574 c!823967) b!4837579))

(assert (= (and b!4837574 (not c!823967)) b!4837573))

(assert (= (or b!4837572 b!4837574) bm!337123))

(assert (= (and bm!337123 c!823965) b!4837571))

(assert (= (and bm!337123 (not c!823965)) b!4837576))

(assert (= (and d!1550802 res!2061720) b!4837577))

(assert (= (and d!1550802 (not res!2061718)) b!4837578))

(assert (= (and b!4837578 res!2061719) b!4837575))

(declare-fun m!5832872 () Bool)

(assert (=> b!4837577 m!5832872))

(assert (=> b!4837577 m!5832872))

(declare-fun m!5832874 () Bool)

(assert (=> b!4837577 m!5832874))

(assert (=> b!4837575 m!5832872))

(assert (=> b!4837575 m!5832872))

(assert (=> b!4837575 m!5832874))

(assert (=> b!4837576 m!5832872))

(declare-fun m!5832876 () Bool)

(assert (=> b!4837571 m!5832876))

(declare-fun m!5832878 () Bool)

(assert (=> d!1550802 m!5832878))

(assert (=> b!4837579 m!5832878))

(declare-fun m!5832880 () Bool)

(assert (=> b!4837579 m!5832880))

(declare-fun m!5832882 () Bool)

(assert (=> b!4837572 m!5832882))

(declare-fun m!5832884 () Bool)

(assert (=> b!4837572 m!5832884))

(assert (=> b!4837572 m!5832884))

(declare-fun m!5832886 () Bool)

(assert (=> b!4837572 m!5832886))

(declare-fun m!5832888 () Bool)

(assert (=> b!4837572 m!5832888))

(declare-fun m!5832890 () Bool)

(assert (=> bm!337123 m!5832890))

(assert (=> b!4837578 m!5832884))

(assert (=> b!4837578 m!5832884))

(assert (=> b!4837578 m!5832886))

(assert (=> b!4837387 d!1550802))

(declare-fun bs!1167737 () Bool)

(declare-fun b!4837588 () Bool)

(assert (= bs!1167737 (and b!4837588 d!1550734)))

(declare-fun lambda!239963 () Int)

(assert (=> bs!1167737 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239963 lambda!239947))))

(declare-fun bs!1167738 () Bool)

(assert (= bs!1167738 (and b!4837588 d!1550776)))

(assert (=> bs!1167738 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) lt!1982410) (= lambda!239963 lambda!239962))))

(declare-fun bs!1167739 () Bool)

(assert (= bs!1167739 (and b!4837588 b!4837490)))

(assert (=> bs!1167739 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) (= lambda!239963 lambda!239950))))

(declare-fun bs!1167740 () Bool)

(assert (= bs!1167740 (and b!4837588 b!4837386)))

(assert (=> bs!1167740 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239963 lambda!239931))))

(declare-fun bs!1167741 () Bool)

(assert (= bs!1167741 (and b!4837588 b!4837491)))

(assert (=> bs!1167741 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) (= lambda!239963 lambda!239951))))

(assert (=> bs!1167741 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) lt!1982460) (= lambda!239963 lambda!239952))))

(declare-fun bs!1167742 () Bool)

(assert (= bs!1167742 (and b!4837588 b!4837387)))

(assert (=> bs!1167742 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239963 lambda!239932))))

(declare-fun bs!1167743 () Bool)

(assert (= bs!1167743 (and b!4837588 d!1550764)))

(assert (=> bs!1167743 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) lt!1982477) (= lambda!239963 lambda!239953))))

(assert (=> bs!1167742 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) lt!1982410) (= lambda!239963 lambda!239933))))

(declare-fun bs!1167744 () Bool)

(assert (= bs!1167744 (and b!4837588 d!1550666)))

(assert (=> bs!1167744 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) lt!1982427) (= lambda!239963 lambda!239934))))

(assert (=> b!4837588 true))

(declare-fun bs!1167745 () Bool)

(declare-fun b!4837589 () Bool)

(assert (= bs!1167745 (and b!4837589 d!1550734)))

(declare-fun lambda!239964 () Int)

(assert (=> bs!1167745 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239964 lambda!239947))))

(declare-fun bs!1167746 () Bool)

(assert (= bs!1167746 (and b!4837589 d!1550776)))

(assert (=> bs!1167746 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) lt!1982410) (= lambda!239964 lambda!239962))))

(declare-fun bs!1167747 () Bool)

(assert (= bs!1167747 (and b!4837589 b!4837490)))

(assert (=> bs!1167747 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) (= lambda!239964 lambda!239950))))

(declare-fun bs!1167748 () Bool)

(assert (= bs!1167748 (and b!4837589 b!4837386)))

(assert (=> bs!1167748 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239964 lambda!239931))))

(declare-fun bs!1167749 () Bool)

(assert (= bs!1167749 (and b!4837589 b!4837491)))

(assert (=> bs!1167749 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) (= lambda!239964 lambda!239951))))

(assert (=> bs!1167749 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) lt!1982460) (= lambda!239964 lambda!239952))))

(declare-fun bs!1167750 () Bool)

(assert (= bs!1167750 (and b!4837589 b!4837387)))

(assert (=> bs!1167750 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239964 lambda!239932))))

(declare-fun bs!1167751 () Bool)

(assert (= bs!1167751 (and b!4837589 d!1550764)))

(assert (=> bs!1167751 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) lt!1982477) (= lambda!239964 lambda!239953))))

(declare-fun bs!1167752 () Bool)

(assert (= bs!1167752 (and b!4837589 b!4837588)))

(assert (=> bs!1167752 (= lambda!239964 lambda!239963)))

(assert (=> bs!1167750 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) lt!1982410) (= lambda!239964 lambda!239933))))

(declare-fun bs!1167753 () Bool)

(assert (= bs!1167753 (and b!4837589 d!1550666)))

(assert (=> bs!1167753 (= (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) lt!1982427) (= lambda!239964 lambda!239934))))

(assert (=> b!4837589 true))

(declare-fun lambda!239965 () Int)

(declare-fun lt!1982548 () ListMap!7041)

(assert (=> bs!1167745 (= (= lt!1982548 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239965 lambda!239947))))

(assert (=> bs!1167746 (= (= lt!1982548 lt!1982410) (= lambda!239965 lambda!239962))))

(assert (=> bs!1167747 (= (= lt!1982548 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) (= lambda!239965 lambda!239950))))

(assert (=> bs!1167748 (= (= lt!1982548 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239965 lambda!239931))))

(assert (=> bs!1167749 (= (= lt!1982548 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) (= lambda!239965 lambda!239951))))

(assert (=> bs!1167750 (= (= lt!1982548 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239965 lambda!239932))))

(assert (=> bs!1167751 (= (= lt!1982548 lt!1982477) (= lambda!239965 lambda!239953))))

(assert (=> b!4837589 (= (= lt!1982548 (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))) (= lambda!239965 lambda!239964))))

(assert (=> bs!1167749 (= (= lt!1982548 lt!1982460) (= lambda!239965 lambda!239952))))

(assert (=> bs!1167752 (= (= lt!1982548 (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))) (= lambda!239965 lambda!239963))))

(assert (=> bs!1167750 (= (= lt!1982548 lt!1982410) (= lambda!239965 lambda!239933))))

(assert (=> bs!1167753 (= (= lt!1982548 lt!1982427) (= lambda!239965 lambda!239934))))

(assert (=> b!4837589 true))

(declare-fun bs!1167754 () Bool)

(declare-fun d!1550804 () Bool)

(assert (= bs!1167754 (and d!1550804 d!1550734)))

(declare-fun lt!1982565 () ListMap!7041)

(declare-fun lambda!239966 () Int)

(assert (=> bs!1167754 (= (= lt!1982565 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239966 lambda!239947))))

(declare-fun bs!1167755 () Bool)

(assert (= bs!1167755 (and d!1550804 d!1550776)))

(assert (=> bs!1167755 (= (= lt!1982565 lt!1982410) (= lambda!239966 lambda!239962))))

(declare-fun bs!1167756 () Bool)

(assert (= bs!1167756 (and d!1550804 b!4837490)))

(assert (=> bs!1167756 (= (= lt!1982565 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) (= lambda!239966 lambda!239950))))

(declare-fun bs!1167757 () Bool)

(assert (= bs!1167757 (and d!1550804 b!4837386)))

(assert (=> bs!1167757 (= (= lt!1982565 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239966 lambda!239931))))

(declare-fun bs!1167758 () Bool)

(assert (= bs!1167758 (and d!1550804 b!4837491)))

(assert (=> bs!1167758 (= (= lt!1982565 (extractMap!2740 (t!362891 (t!362891 (toList!7687 lm!2671))))) (= lambda!239966 lambda!239951))))

(declare-fun bs!1167759 () Bool)

(assert (= bs!1167759 (and d!1550804 b!4837387)))

(assert (=> bs!1167759 (= (= lt!1982565 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (= lambda!239966 lambda!239932))))

(declare-fun bs!1167760 () Bool)

(assert (= bs!1167760 (and d!1550804 d!1550764)))

(assert (=> bs!1167760 (= (= lt!1982565 lt!1982477) (= lambda!239966 lambda!239953))))

(declare-fun bs!1167761 () Bool)

(assert (= bs!1167761 (and d!1550804 b!4837589)))

(assert (=> bs!1167761 (= (= lt!1982565 (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))) (= lambda!239966 lambda!239964))))

(assert (=> bs!1167761 (= (= lt!1982565 lt!1982548) (= lambda!239966 lambda!239965))))

(assert (=> bs!1167758 (= (= lt!1982565 lt!1982460) (= lambda!239966 lambda!239952))))

(declare-fun bs!1167762 () Bool)

(assert (= bs!1167762 (and d!1550804 b!4837588)))

(assert (=> bs!1167762 (= (= lt!1982565 (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))) (= lambda!239966 lambda!239963))))

(assert (=> bs!1167759 (= (= lt!1982565 lt!1982410) (= lambda!239966 lambda!239933))))

(declare-fun bs!1167763 () Bool)

(assert (= bs!1167763 (and d!1550804 d!1550666)))

(assert (=> bs!1167763 (= (= lt!1982565 lt!1982427) (= lambda!239966 lambda!239934))))

(assert (=> d!1550804 true))

(declare-fun b!4837586 () Bool)

(declare-fun e!3023244 () Bool)

(assert (=> b!4837586 (= e!3023244 (invariantList!1859 (toList!7688 lt!1982565)))))

(declare-fun b!4837587 () Bool)

(declare-fun e!3023242 () Bool)

(assert (=> b!4837587 (= e!3023242 (forall!12789 (toList!7688 (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))) lambda!239965))))

(declare-fun bm!337124 () Bool)

(declare-fun call!337129 () Unit!144651)

(assert (=> bm!337124 (= call!337129 (lemmaContainsAllItsOwnKeys!1033 (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-fun call!337130 () Bool)

(declare-fun lt!1982550 () ListMap!7041)

(declare-fun c!823968 () Bool)

(declare-fun bm!337125 () Bool)

(assert (=> bm!337125 (= call!337130 (forall!12789 (ite c!823968 (toList!7688 (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))) (toList!7688 lt!1982550)) (ite c!823968 lambda!239963 lambda!239965)))))

(declare-fun call!337131 () Bool)

(declare-fun bm!337126 () Bool)

(assert (=> bm!337126 (= call!337131 (forall!12789 (toList!7688 (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))) (ite c!823968 lambda!239963 lambda!239965)))))

(declare-fun e!3023243 () ListMap!7041)

(assert (=> b!4837589 (= e!3023243 lt!1982548)))

(assert (=> b!4837589 (= lt!1982550 (+!2593 (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (h!61705 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(assert (=> b!4837589 (= lt!1982548 (addToMapMapFromBucket!1880 (t!362890 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (+!2593 (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (h!61705 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))))

(declare-fun lt!1982547 () Unit!144651)

(assert (=> b!4837589 (= lt!1982547 call!337129)))

(assert (=> b!4837589 (forall!12789 (toList!7688 (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))) lambda!239964)))

(declare-fun lt!1982566 () Unit!144651)

(assert (=> b!4837589 (= lt!1982566 lt!1982547)))

(assert (=> b!4837589 (forall!12789 (toList!7688 lt!1982550) lambda!239965)))

(declare-fun lt!1982559 () Unit!144651)

(declare-fun Unit!144703 () Unit!144651)

(assert (=> b!4837589 (= lt!1982559 Unit!144703)))

(assert (=> b!4837589 (forall!12789 (t!362890 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671))))) lambda!239965)))

(declare-fun lt!1982551 () Unit!144651)

(declare-fun Unit!144704 () Unit!144651)

(assert (=> b!4837589 (= lt!1982551 Unit!144704)))

(declare-fun lt!1982553 () Unit!144651)

(declare-fun Unit!144705 () Unit!144651)

(assert (=> b!4837589 (= lt!1982553 Unit!144705)))

(declare-fun lt!1982555 () Unit!144651)

(assert (=> b!4837589 (= lt!1982555 (forallContained!4474 (toList!7688 lt!1982550) lambda!239965 (h!61705 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(assert (=> b!4837589 (contains!19046 lt!1982550 (_1!32655 (h!61705 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-fun lt!1982556 () Unit!144651)

(declare-fun Unit!144706 () Unit!144651)

(assert (=> b!4837589 (= lt!1982556 Unit!144706)))

(assert (=> b!4837589 (contains!19046 lt!1982548 (_1!32655 (h!61705 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-fun lt!1982560 () Unit!144651)

(declare-fun Unit!144707 () Unit!144651)

(assert (=> b!4837589 (= lt!1982560 Unit!144707)))

(assert (=> b!4837589 (forall!12789 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))) lambda!239965)))

(declare-fun lt!1982552 () Unit!144651)

(declare-fun Unit!144708 () Unit!144651)

(assert (=> b!4837589 (= lt!1982552 Unit!144708)))

(assert (=> b!4837589 call!337130))

(declare-fun lt!1982564 () Unit!144651)

(declare-fun Unit!144709 () Unit!144651)

(assert (=> b!4837589 (= lt!1982564 Unit!144709)))

(declare-fun lt!1982562 () Unit!144651)

(declare-fun Unit!144711 () Unit!144651)

(assert (=> b!4837589 (= lt!1982562 Unit!144711)))

(declare-fun lt!1982567 () Unit!144651)

(assert (=> b!4837589 (= lt!1982567 (addForallContainsKeyThenBeforeAdding!1031 (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) lt!1982548 (_1!32655 (h!61705 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))))) (_2!32655 (h!61705 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))))

(assert (=> b!4837589 call!337131))

(declare-fun lt!1982558 () Unit!144651)

(assert (=> b!4837589 (= lt!1982558 lt!1982567)))

(assert (=> b!4837589 (forall!12789 (toList!7688 (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))) lambda!239965)))

(declare-fun lt!1982561 () Unit!144651)

(declare-fun Unit!144713 () Unit!144651)

(assert (=> b!4837589 (= lt!1982561 Unit!144713)))

(declare-fun res!2061727 () Bool)

(assert (=> b!4837589 (= res!2061727 (forall!12789 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))) lambda!239965))))

(assert (=> b!4837589 (=> (not res!2061727) (not e!3023242))))

(assert (=> b!4837589 e!3023242))

(declare-fun lt!1982554 () Unit!144651)

(declare-fun Unit!144714 () Unit!144651)

(assert (=> b!4837589 (= lt!1982554 Unit!144714)))

(declare-fun b!4837590 () Bool)

(declare-fun res!2061729 () Bool)

(assert (=> b!4837590 (=> (not res!2061729) (not e!3023244))))

(assert (=> b!4837590 (= res!2061729 (forall!12789 (toList!7688 (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))) lambda!239966))))

(assert (=> d!1550804 e!3023244))

(declare-fun res!2061728 () Bool)

(assert (=> d!1550804 (=> (not res!2061728) (not e!3023244))))

(assert (=> d!1550804 (= res!2061728 (forall!12789 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))) lambda!239966))))

(assert (=> d!1550804 (= lt!1982565 e!3023243)))

(assert (=> d!1550804 (= c!823968 ((_ is Nil!55270) (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))

(assert (=> d!1550804 (noDuplicateKeys!2524 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))

(assert (=> d!1550804 (= (addToMapMapFromBucket!1880 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))) (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))) lt!1982565)))

(assert (=> b!4837588 (= e!3023243 (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))

(declare-fun lt!1982563 () Unit!144651)

(assert (=> b!4837588 (= lt!1982563 call!337129)))

(assert (=> b!4837588 call!337130))

(declare-fun lt!1982557 () Unit!144651)

(assert (=> b!4837588 (= lt!1982557 lt!1982563)))

(assert (=> b!4837588 call!337131))

(declare-fun lt!1982549 () Unit!144651)

(declare-fun Unit!144715 () Unit!144651)

(assert (=> b!4837588 (= lt!1982549 Unit!144715)))

(assert (= (and d!1550804 c!823968) b!4837588))

(assert (= (and d!1550804 (not c!823968)) b!4837589))

(assert (= (and b!4837589 res!2061727) b!4837587))

(assert (= (or b!4837588 b!4837589) bm!337124))

(assert (= (or b!4837588 b!4837589) bm!337125))

(assert (= (or b!4837588 b!4837589) bm!337126))

(assert (= (and d!1550804 res!2061728) b!4837590))

(assert (= (and b!4837590 res!2061729) b!4837586))

(declare-fun m!5832912 () Bool)

(assert (=> b!4837589 m!5832912))

(declare-fun m!5832914 () Bool)

(assert (=> b!4837589 m!5832914))

(declare-fun m!5832916 () Bool)

(assert (=> b!4837589 m!5832916))

(declare-fun m!5832918 () Bool)

(assert (=> b!4837589 m!5832918))

(declare-fun m!5832920 () Bool)

(assert (=> b!4837589 m!5832920))

(declare-fun m!5832922 () Bool)

(assert (=> b!4837589 m!5832922))

(declare-fun m!5832924 () Bool)

(assert (=> b!4837589 m!5832924))

(declare-fun m!5832926 () Bool)

(assert (=> b!4837589 m!5832926))

(assert (=> b!4837589 m!5832550))

(declare-fun m!5832928 () Bool)

(assert (=> b!4837589 m!5832928))

(assert (=> b!4837589 m!5832924))

(assert (=> b!4837589 m!5832550))

(assert (=> b!4837589 m!5832912))

(declare-fun m!5832930 () Bool)

(assert (=> b!4837589 m!5832930))

(declare-fun m!5832932 () Bool)

(assert (=> b!4837589 m!5832932))

(declare-fun m!5832934 () Bool)

(assert (=> d!1550804 m!5832934))

(declare-fun m!5832936 () Bool)

(assert (=> d!1550804 m!5832936))

(assert (=> b!4837587 m!5832932))

(declare-fun m!5832938 () Bool)

(assert (=> b!4837586 m!5832938))

(declare-fun m!5832940 () Bool)

(assert (=> b!4837590 m!5832940))

(assert (=> bm!337124 m!5832550))

(declare-fun m!5832942 () Bool)

(assert (=> bm!337124 m!5832942))

(declare-fun m!5832944 () Bool)

(assert (=> bm!337126 m!5832944))

(declare-fun m!5832946 () Bool)

(assert (=> bm!337125 m!5832946))

(assert (=> b!4837387 d!1550804))

(declare-fun d!1550808 () Bool)

(assert (=> d!1550808 (dynLambda!22275 lambda!239933 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))

(declare-fun lt!1982578 () Unit!144651)

(declare-fun choose!35338 (List!55394 Int tuple2!58722) Unit!144651)

(assert (=> d!1550808 (= lt!1982578 (choose!35338 (toList!7688 lt!1982412) lambda!239933 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))

(declare-fun e!3023253 () Bool)

(assert (=> d!1550808 e!3023253))

(declare-fun res!2061735 () Bool)

(assert (=> d!1550808 (=> (not res!2061735) (not e!3023253))))

(assert (=> d!1550808 (= res!2061735 (forall!12789 (toList!7688 lt!1982412) lambda!239933))))

(assert (=> d!1550808 (= (forallContained!4474 (toList!7688 lt!1982412) lambda!239933 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) lt!1982578)))

(declare-fun b!4837603 () Bool)

(declare-fun contains!19050 (List!55394 tuple2!58722) Bool)

(assert (=> b!4837603 (= e!3023253 (contains!19050 (toList!7688 lt!1982412) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))

(assert (= (and d!1550808 res!2061735) b!4837603))

(declare-fun b_lambda!191149 () Bool)

(assert (=> (not b_lambda!191149) (not d!1550808)))

(assert (=> d!1550808 m!5832838))

(declare-fun m!5832948 () Bool)

(assert (=> d!1550808 m!5832948))

(assert (=> d!1550808 m!5832558))

(declare-fun m!5832950 () Bool)

(assert (=> b!4837603 m!5832950))

(assert (=> b!4837387 d!1550808))

(declare-fun d!1550810 () Bool)

(declare-fun e!3023267 () Bool)

(assert (=> d!1550810 e!3023267))

(declare-fun res!2061749 () Bool)

(assert (=> d!1550810 (=> (not res!2061749) (not e!3023267))))

(declare-fun lt!1982621 () ListMap!7041)

(assert (=> d!1550810 (= res!2061749 (contains!19046 lt!1982621 (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-fun lt!1982620 () List!55394)

(assert (=> d!1550810 (= lt!1982621 (ListMap!7042 lt!1982620))))

(declare-fun lt!1982622 () Unit!144651)

(declare-fun lt!1982619 () Unit!144651)

(assert (=> d!1550810 (= lt!1982622 lt!1982619)))

(assert (=> d!1550810 (= (getValueByKey!2686 lt!1982620 (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))) (Some!13587 (_2!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1253 (List!55394 K!17024 V!17270) Unit!144651)

(assert (=> d!1550810 (= lt!1982619 (lemmaContainsTupThenGetReturnValue!1253 lt!1982620 (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (_2!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-fun insertNoDuplicatedKeys!761 (List!55394 K!17024 V!17270) List!55394)

(assert (=> d!1550810 (= lt!1982620 (insertNoDuplicatedKeys!761 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (_2!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(assert (=> d!1550810 (= (+!2593 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) lt!1982621)))

(declare-fun b!4837624 () Bool)

(declare-fun res!2061748 () Bool)

(assert (=> b!4837624 (=> (not res!2061748) (not e!3023267))))

(assert (=> b!4837624 (= res!2061748 (= (getValueByKey!2686 (toList!7688 lt!1982621) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))) (Some!13587 (_2!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))))

(declare-fun b!4837625 () Bool)

(assert (=> b!4837625 (= e!3023267 (contains!19050 (toList!7688 lt!1982621) (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))

(assert (= (and d!1550810 res!2061749) b!4837624))

(assert (= (and b!4837624 res!2061748) b!4837625))

(declare-fun m!5832984 () Bool)

(assert (=> d!1550810 m!5832984))

(declare-fun m!5832986 () Bool)

(assert (=> d!1550810 m!5832986))

(declare-fun m!5832988 () Bool)

(assert (=> d!1550810 m!5832988))

(declare-fun m!5832990 () Bool)

(assert (=> d!1550810 m!5832990))

(declare-fun m!5832992 () Bool)

(assert (=> b!4837624 m!5832992))

(declare-fun m!5832994 () Bool)

(assert (=> b!4837625 m!5832994))

(assert (=> b!4837387 d!1550810))

(declare-fun d!1550818 () Bool)

(declare-fun res!2061750 () Bool)

(declare-fun e!3023268 () Bool)

(assert (=> d!1550818 (=> res!2061750 e!3023268)))

(assert (=> d!1550818 (= res!2061750 ((_ is Nil!55270) (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671))))))))

(assert (=> d!1550818 (= (forall!12789 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) (ite c!823944 lambda!239931 lambda!239933)) e!3023268)))

(declare-fun b!4837626 () Bool)

(declare-fun e!3023269 () Bool)

(assert (=> b!4837626 (= e!3023268 e!3023269)))

(declare-fun res!2061751 () Bool)

(assert (=> b!4837626 (=> (not res!2061751) (not e!3023269))))

(assert (=> b!4837626 (= res!2061751 (dynLambda!22275 (ite c!823944 lambda!239931 lambda!239933) (h!61705 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))))))))

(declare-fun b!4837627 () Bool)

(assert (=> b!4837627 (= e!3023269 (forall!12789 (t!362890 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671))))) (ite c!823944 lambda!239931 lambda!239933)))))

(assert (= (and d!1550818 (not res!2061750)) b!4837626))

(assert (= (and b!4837626 res!2061751) b!4837627))

(declare-fun b_lambda!191153 () Bool)

(assert (=> (not b_lambda!191153) (not b!4837626)))

(declare-fun m!5832996 () Bool)

(assert (=> b!4837626 m!5832996))

(declare-fun m!5832998 () Bool)

(assert (=> b!4837627 m!5832998))

(assert (=> bm!337111 d!1550818))

(declare-fun d!1550820 () Bool)

(declare-fun res!2061752 () Bool)

(declare-fun e!3023270 () Bool)

(assert (=> d!1550820 (=> res!2061752 e!3023270)))

(assert (=> d!1550820 (= res!2061752 ((_ is Nil!55270) (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671))))))))

(assert (=> d!1550820 (= (forall!12789 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))) lambda!239934) e!3023270)))

(declare-fun b!4837628 () Bool)

(declare-fun e!3023271 () Bool)

(assert (=> b!4837628 (= e!3023270 e!3023271)))

(declare-fun res!2061753 () Bool)

(assert (=> b!4837628 (=> (not res!2061753) (not e!3023271))))

(assert (=> b!4837628 (= res!2061753 (dynLambda!22275 lambda!239934 (h!61705 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))))))))

(declare-fun b!4837629 () Bool)

(assert (=> b!4837629 (= e!3023271 (forall!12789 (t!362890 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671))))) lambda!239934))))

(assert (= (and d!1550820 (not res!2061752)) b!4837628))

(assert (= (and b!4837628 res!2061753) b!4837629))

(declare-fun b_lambda!191155 () Bool)

(assert (=> (not b_lambda!191155) (not b!4837628)))

(declare-fun m!5833000 () Bool)

(assert (=> b!4837628 m!5833000))

(declare-fun m!5833002 () Bool)

(assert (=> b!4837629 m!5833002))

(assert (=> b!4837388 d!1550820))

(declare-fun d!1550822 () Bool)

(declare-fun res!2061758 () Bool)

(declare-fun e!3023276 () Bool)

(assert (=> d!1550822 (=> res!2061758 e!3023276)))

(assert (=> d!1550822 (= res!2061758 (or ((_ is Nil!55271) (toList!7687 lm!2671)) ((_ is Nil!55271) (t!362891 (toList!7687 lm!2671)))))))

(assert (=> d!1550822 (= (isStrictlySorted!1024 (toList!7687 lm!2671)) e!3023276)))

(declare-fun b!4837634 () Bool)

(declare-fun e!3023277 () Bool)

(assert (=> b!4837634 (= e!3023276 e!3023277)))

(declare-fun res!2061759 () Bool)

(assert (=> b!4837634 (=> (not res!2061759) (not e!3023277))))

(assert (=> b!4837634 (= res!2061759 (bvslt (_1!32656 (h!61706 (toList!7687 lm!2671))) (_1!32656 (h!61706 (t!362891 (toList!7687 lm!2671))))))))

(declare-fun b!4837635 () Bool)

(assert (=> b!4837635 (= e!3023277 (isStrictlySorted!1024 (t!362891 (toList!7687 lm!2671))))))

(assert (= (and d!1550822 (not res!2061758)) b!4837634))

(assert (= (and b!4837634 res!2061759) b!4837635))

(declare-fun m!5833034 () Bool)

(assert (=> b!4837635 m!5833034))

(assert (=> d!1550696 d!1550822))

(assert (=> b!4837421 d!1550684))

(declare-fun d!1550826 () Bool)

(declare-fun res!2061767 () Bool)

(declare-fun e!3023285 () Bool)

(assert (=> d!1550826 (=> res!2061767 e!3023285)))

(assert (=> d!1550826 (= res!2061767 (not ((_ is Cons!55270) (_2!32656 (h!61706 (toList!7687 lm!2671))))))))

(assert (=> d!1550826 (= (noDuplicateKeys!2524 (_2!32656 (h!61706 (toList!7687 lm!2671)))) e!3023285)))

(declare-fun b!4837643 () Bool)

(declare-fun e!3023286 () Bool)

(assert (=> b!4837643 (= e!3023285 e!3023286)))

(declare-fun res!2061768 () Bool)

(assert (=> b!4837643 (=> (not res!2061768) (not e!3023286))))

(assert (=> b!4837643 (= res!2061768 (not (containsKey!4532 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))) (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))))

(declare-fun b!4837644 () Bool)

(assert (=> b!4837644 (= e!3023286 (noDuplicateKeys!2524 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))

(assert (= (and d!1550826 (not res!2061767)) b!4837643))

(assert (= (and b!4837643 res!2061768) b!4837644))

(declare-fun m!5833038 () Bool)

(assert (=> b!4837643 m!5833038))

(assert (=> b!4837644 m!5832936))

(assert (=> bs!1167674 d!1550826))

(declare-fun d!1550830 () Bool)

(declare-fun res!2061769 () Bool)

(declare-fun e!3023287 () Bool)

(assert (=> d!1550830 (=> res!2061769 e!3023287)))

(assert (=> d!1550830 (= res!2061769 ((_ is Nil!55270) (_2!32656 (h!61706 (toList!7687 lm!2671)))))))

(assert (=> d!1550830 (= (forall!12789 (_2!32656 (h!61706 (toList!7687 lm!2671))) lambda!239934) e!3023287)))

(declare-fun b!4837645 () Bool)

(declare-fun e!3023288 () Bool)

(assert (=> b!4837645 (= e!3023287 e!3023288)))

(declare-fun res!2061770 () Bool)

(assert (=> b!4837645 (=> (not res!2061770) (not e!3023288))))

(assert (=> b!4837645 (= res!2061770 (dynLambda!22275 lambda!239934 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))

(declare-fun b!4837646 () Bool)

(assert (=> b!4837646 (= e!3023288 (forall!12789 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))) lambda!239934))))

(assert (= (and d!1550830 (not res!2061769)) b!4837645))

(assert (= (and b!4837645 res!2061770) b!4837646))

(declare-fun b_lambda!191159 () Bool)

(assert (=> (not b_lambda!191159) (not b!4837645)))

(declare-fun m!5833044 () Bool)

(assert (=> b!4837645 m!5833044))

(declare-fun m!5833046 () Bool)

(assert (=> b!4837646 m!5833046))

(assert (=> d!1550666 d!1550830))

(assert (=> d!1550666 d!1550826))

(declare-fun d!1550834 () Bool)

(declare-fun res!2061773 () Bool)

(declare-fun e!3023291 () Bool)

(assert (=> d!1550834 (=> res!2061773 e!3023291)))

(assert (=> d!1550834 (= res!2061773 (and ((_ is Cons!55270) (_2!32656 (h!61706 (tail!9442 (toList!7687 lm!2671))))) (= (_1!32655 (h!61705 (_2!32656 (h!61706 (tail!9442 (toList!7687 lm!2671)))))) key!6540)))))

(assert (=> d!1550834 (= (containsKey!4532 (_2!32656 (h!61706 (tail!9442 (toList!7687 lm!2671)))) key!6540) e!3023291)))

(declare-fun b!4837649 () Bool)

(declare-fun e!3023292 () Bool)

(assert (=> b!4837649 (= e!3023291 e!3023292)))

(declare-fun res!2061774 () Bool)

(assert (=> b!4837649 (=> (not res!2061774) (not e!3023292))))

(assert (=> b!4837649 (= res!2061774 ((_ is Cons!55270) (_2!32656 (h!61706 (tail!9442 (toList!7687 lm!2671))))))))

(declare-fun b!4837650 () Bool)

(assert (=> b!4837650 (= e!3023292 (containsKey!4532 (t!362890 (_2!32656 (h!61706 (tail!9442 (toList!7687 lm!2671))))) key!6540))))

(assert (= (and d!1550834 (not res!2061773)) b!4837649))

(assert (= (and b!4837649 res!2061774) b!4837650))

(declare-fun m!5833054 () Bool)

(assert (=> b!4837650 m!5833054))

(assert (=> b!4837408 d!1550834))

(declare-fun d!1550838 () Bool)

(assert (=> d!1550838 (= (isEmpty!29702 (toList!7687 lm!2671)) ((_ is Nil!55271) (toList!7687 lm!2671)))))

(assert (=> d!1550692 d!1550838))

(declare-fun b!4837661 () Bool)

(declare-fun tp_is_empty!34867 () Bool)

(declare-fun e!3023299 () Bool)

(declare-fun tp!1363604 () Bool)

(assert (=> b!4837661 (= e!3023299 (and tp_is_empty!34863 tp_is_empty!34867 tp!1363604))))

(assert (=> b!4837426 (= tp!1363595 e!3023299)))

(assert (= (and b!4837426 ((_ is Cons!55270) (_2!32656 (h!61706 (toList!7687 lm!2671))))) b!4837661))

(declare-fun b!4837662 () Bool)

(declare-fun e!3023300 () Bool)

(declare-fun tp!1363605 () Bool)

(declare-fun tp!1363606 () Bool)

(assert (=> b!4837662 (= e!3023300 (and tp!1363605 tp!1363606))))

(assert (=> b!4837426 (= tp!1363596 e!3023300)))

(assert (= (and b!4837426 ((_ is Cons!55271) (t!362891 (toList!7687 lm!2671)))) b!4837662))

(declare-fun b_lambda!191185 () Bool)

(assert (= b_lambda!191147 (or b!4837387 b_lambda!191185)))

(declare-fun bs!1167810 () Bool)

(declare-fun d!1550858 () Bool)

(assert (= bs!1167810 (and d!1550858 b!4837387)))

(assert (=> bs!1167810 (= (dynLambda!22275 lambda!239933 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (contains!19046 lt!1982410 (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(assert (=> bs!1167810 m!5832560))

(assert (=> b!4837524 d!1550858))

(declare-fun b_lambda!191187 () Bool)

(assert (= b_lambda!191131 (or b!4837387 b_lambda!191187)))

(declare-fun bs!1167812 () Bool)

(declare-fun d!1550862 () Bool)

(assert (= bs!1167812 (and d!1550862 b!4837387)))

(assert (=> bs!1167812 (= (dynLambda!22275 lambda!239933 (h!61705 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671)))))) (contains!19046 lt!1982410 (_1!32655 (h!61705 (t!362890 (_2!32656 (h!61706 (toList!7687 lm!2671))))))))))

(declare-fun m!5833066 () Bool)

(assert (=> bs!1167812 m!5833066))

(assert (=> b!4837501 d!1550862))

(declare-fun b_lambda!191189 () Bool)

(assert (= b_lambda!191149 (or b!4837387 b_lambda!191189)))

(assert (=> d!1550808 d!1550858))

(declare-fun b_lambda!191191 () Bool)

(assert (= b_lambda!191145 (or b!4837387 b_lambda!191191)))

(declare-fun bs!1167813 () Bool)

(declare-fun d!1550864 () Bool)

(assert (= bs!1167813 (and d!1550864 b!4837387)))

(assert (=> bs!1167813 (= (dynLambda!22275 lambda!239932 (h!61705 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))))) (contains!19046 (extractMap!2740 (t!362891 (toList!7687 lm!2671))) (_1!32655 (h!61705 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671))))))))))

(assert (=> bs!1167813 m!5832456))

(declare-fun m!5833068 () Bool)

(assert (=> bs!1167813 m!5833068))

(assert (=> b!4837522 d!1550864))

(declare-fun b_lambda!191193 () Bool)

(assert (= b_lambda!191133 (or b!4837387 b_lambda!191193)))

(declare-fun bs!1167814 () Bool)

(declare-fun d!1550866 () Bool)

(assert (= bs!1167814 (and d!1550866 b!4837387)))

(assert (=> bs!1167814 (= (dynLambda!22275 lambda!239933 (h!61705 (toList!7688 lt!1982412))) (contains!19046 lt!1982410 (_1!32655 (h!61705 (toList!7688 lt!1982412)))))))

(declare-fun m!5833070 () Bool)

(assert (=> bs!1167814 m!5833070))

(assert (=> b!4837503 d!1550866))

(declare-fun b_lambda!191195 () Bool)

(assert (= b_lambda!191109 (or d!1550698 b_lambda!191195)))

(declare-fun bs!1167815 () Bool)

(declare-fun d!1550868 () Bool)

(assert (= bs!1167815 (and d!1550868 d!1550698)))

(declare-fun allKeysSameHash!2023 (List!55394 (_ BitVec 64) Hashable!7382) Bool)

(assert (=> bs!1167815 (= (dynLambda!22273 lambda!239941 (h!61706 (toList!7687 lm!2671))) (allKeysSameHash!2023 (_2!32656 (h!61706 (toList!7687 lm!2671))) (_1!32656 (h!61706 (toList!7687 lm!2671))) hashF!1662))))

(declare-fun m!5833072 () Bool)

(assert (=> bs!1167815 m!5833072))

(assert (=> b!4837436 d!1550868))

(declare-fun b_lambda!191197 () Bool)

(assert (= b_lambda!191107 (or d!1550660 b_lambda!191197)))

(declare-fun bs!1167816 () Bool)

(declare-fun d!1550870 () Bool)

(assert (= bs!1167816 (and d!1550870 d!1550660)))

(assert (=> bs!1167816 (= (dynLambda!22273 lambda!239869 (h!61706 (toList!7687 lm!2671))) (noDuplicateKeys!2524 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))

(assert (=> bs!1167816 m!5832574))

(assert (=> b!4837430 d!1550870))

(declare-fun b_lambda!191199 () Bool)

(assert (= b_lambda!191159 (or d!1550666 b_lambda!191199)))

(declare-fun bs!1167817 () Bool)

(declare-fun d!1550872 () Bool)

(assert (= bs!1167817 (and d!1550872 d!1550666)))

(assert (=> bs!1167817 (= (dynLambda!22275 lambda!239934 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671))))) (contains!19046 lt!1982427 (_1!32655 (h!61705 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))))

(declare-fun m!5833074 () Bool)

(assert (=> bs!1167817 m!5833074))

(assert (=> b!4837645 d!1550872))

(declare-fun b_lambda!191201 () Bool)

(assert (= b_lambda!191127 (or d!1550690 b_lambda!191201)))

(declare-fun bs!1167818 () Bool)

(declare-fun d!1550874 () Bool)

(assert (= bs!1167818 (and d!1550874 d!1550690)))

(assert (=> bs!1167818 (= (dynLambda!22273 lambda!239938 (h!61706 (toList!7687 lm!2671))) (noDuplicateKeys!2524 (_2!32656 (h!61706 (toList!7687 lm!2671)))))))

(assert (=> bs!1167818 m!5832574))

(assert (=> b!4837484 d!1550874))

(declare-fun b_lambda!191203 () Bool)

(assert (= b_lambda!191115 (or d!1550680 b_lambda!191203)))

(declare-fun bs!1167819 () Bool)

(declare-fun d!1550876 () Bool)

(assert (= bs!1167819 (and d!1550876 d!1550680)))

(assert (=> bs!1167819 (= (dynLambda!22273 lambda!239935 (h!61706 (t!362891 (toList!7687 lm!2671)))) (noDuplicateKeys!2524 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671))))))))

(assert (=> bs!1167819 m!5832772))

(assert (=> b!4837454 d!1550876))

(declare-fun b_lambda!191205 () Bool)

(assert (= b_lambda!191155 (or d!1550666 b_lambda!191205)))

(declare-fun bs!1167820 () Bool)

(declare-fun d!1550878 () Bool)

(assert (= bs!1167820 (and d!1550878 d!1550666)))

(assert (=> bs!1167820 (= (dynLambda!22275 lambda!239934 (h!61705 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))))) (contains!19046 lt!1982427 (_1!32655 (h!61705 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671))))))))))

(declare-fun m!5833076 () Bool)

(assert (=> bs!1167820 m!5833076))

(assert (=> b!4837628 d!1550878))

(declare-fun b_lambda!191207 () Bool)

(assert (= b_lambda!191123 (or b!4837387 b_lambda!191207)))

(declare-fun bs!1167821 () Bool)

(declare-fun d!1550880 () Bool)

(assert (= bs!1167821 (and d!1550880 b!4837387)))

(assert (=> bs!1167821 (= (dynLambda!22275 lambda!239933 (h!61705 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671)))))) (contains!19046 lt!1982410 (_1!32655 (h!61705 (toList!7688 (extractMap!2740 (t!362891 (toList!7687 lm!2671))))))))))

(declare-fun m!5833078 () Bool)

(assert (=> bs!1167821 m!5833078))

(assert (=> b!4837478 d!1550880))

(declare-fun b_lambda!191209 () Bool)

(assert (= b_lambda!191113 (or start!503094 b_lambda!191209)))

(declare-fun bs!1167822 () Bool)

(declare-fun d!1550882 () Bool)

(assert (= bs!1167822 (and d!1550882 start!503094)))

(assert (=> bs!1167822 (= (dynLambda!22273 lambda!239857 (h!61706 (t!362891 (toList!7687 lm!2671)))) (noDuplicateKeys!2524 (_2!32656 (h!61706 (t!362891 (toList!7687 lm!2671))))))))

(assert (=> bs!1167822 m!5832772))

(assert (=> b!4837445 d!1550882))

(check-sat (not b!4837624) (not b_lambda!191197) (not b!4837551) (not b!4837571) (not bs!1167822) (not b!4837603) (not b!4837429) (not b_lambda!191209) (not b!4837556) (not bs!1167810) (not bs!1167818) (not bm!337115) (not bm!337117) (not bm!337116) (not bs!1167814) (not b!4837579) (not b_lambda!191205) (not d!1550756) (not b!4837555) (not b!4837625) (not d!1550728) (not b!4837455) (not b_lambda!191199) (not b!4837446) (not b_lambda!191105) (not b!4837492) (not b!4837489) (not b!4837635) (not b_lambda!191189) (not b!4837577) (not b!4837650) (not b!4837554) (not b_lambda!191187) (not b_lambda!191153) (not b_lambda!191191) (not b!4837550) (not b!4837488) (not b_lambda!191193) (not b!4837525) (not bm!337124) (not bs!1167816) (not b!4837576) (not b!4837440) (not bs!1167819) (not b!4837499) (not b_lambda!191207) (not d!1550708) (not b!4837431) (not bm!337120) (not bs!1167812) (not d!1550734) (not d!1550802) (not d!1550808) (not bm!337123) (not b!4837590) (not b!4837502) (not b!4837491) (not b!4837557) tp_is_empty!34867 (not b!4837627) (not b!4837646) (not d!1550770) (not b!4837587) (not b!4837485) (not d!1550726) (not b_lambda!191195) (not b!4837643) (not b!4837504) (not d!1550804) (not b!4837575) (not d!1550798) (not b!4837629) (not bs!1167815) (not bs!1167813) (not b!4837439) (not bm!337126) (not b_lambda!191201) (not b!4837523) (not d!1550776) (not bm!337125) (not b_lambda!191125) (not b!4837442) (not d!1550810) (not b!4837427) (not b!4837572) (not b!4837481) (not bs!1167821) (not b!4837661) (not b!4837578) (not b!4837662) (not b!4837437) (not d!1550764) (not b!4837586) (not b!4837558) (not b!4837589) (not b_lambda!191185) tp_is_empty!34863 (not b!4837450) (not bs!1167817) (not b_lambda!191203) (not b!4837644) (not bs!1167820) (not b!4837479))
(check-sat)
