; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!758152 () Bool)

(assert start!758152)

(declare-fun b!8050511 () Bool)

(declare-fun res!3183004 () Bool)

(declare-fun e!4743572 () Bool)

(assert (=> b!8050511 (=> (not res!3183004) (not e!4743572))))

(declare-datatypes ((V!23025 0))(
  ( (V!23026 (val!32889 Int)) )
))
(declare-fun value!3131 () V!23025)

(declare-datatypes ((K!22771 0))(
  ( (K!22772 (val!32890 Int)) )
))
(declare-datatypes ((tuple2!70854 0))(
  ( (tuple2!70855 (_1!38730 K!22771) (_2!38730 V!23025)) )
))
(declare-datatypes ((List!75640 0))(
  ( (Nil!75514) (Cons!75514 (h!81962 tuple2!70854) (t!391412 List!75640)) )
))
(declare-fun l!14636 () List!75640)

(declare-fun key!6222 () K!22771)

(declare-fun contains!21160 (List!75640 tuple2!70854) Bool)

(assert (=> b!8050511 (= res!3183004 (contains!21160 l!14636 (tuple2!70855 key!6222 value!3131)))))

(declare-fun b!8050512 () Bool)

(declare-fun res!3183007 () Bool)

(declare-fun e!4743571 () Bool)

(assert (=> b!8050512 (=> (not res!3183007) (not e!4743571))))

(declare-datatypes ((ListMap!7257 0))(
  ( (ListMap!7258 (toList!11903 List!75640)) )
))
(declare-fun acc!1298 () ListMap!7257)

(declare-fun contains!21161 (ListMap!7257 K!22771) Bool)

(declare-fun addToMapMapFromBucket!1970 (List!75640 ListMap!7257) ListMap!7257)

(assert (=> b!8050512 (= res!3183007 (contains!21161 (addToMapMapFromBucket!1970 l!14636 acc!1298) key!6222))))

(declare-fun b!8050514 () Bool)

(declare-fun e!4743574 () Bool)

(assert (=> b!8050514 (= e!4743574 e!4743572)))

(declare-fun res!3183009 () Bool)

(assert (=> b!8050514 (=> (not res!3183009) (not e!4743572))))

(declare-fun containsKey!4821 (List!75640 K!22771) Bool)

(assert (=> b!8050514 (= res!3183009 (containsKey!4821 l!14636 key!6222))))

(declare-fun b!8050515 () Bool)

(declare-fun e!4743575 () Bool)

(declare-fun ListPrimitiveSize!547 (List!75640) Int)

(assert (=> b!8050515 (= e!4743575 (< (ListPrimitiveSize!547 l!14636) 0))))

(declare-fun b!8050516 () Bool)

(declare-fun e!4743576 () Bool)

(declare-fun tp!2413575 () Bool)

(assert (=> b!8050516 (= e!4743576 tp!2413575)))

(declare-fun b!8050517 () Bool)

(declare-fun e!4743577 () Bool)

(assert (=> b!8050517 (= e!4743577 (not (containsKey!4821 l!14636 key!6222)))))

(declare-fun b!8050518 () Bool)

(declare-fun lt!2724435 () Bool)

(assert (=> b!8050518 (= e!4743572 (not lt!2724435))))

(declare-fun tp!2413574 () Bool)

(declare-fun e!4743573 () Bool)

(declare-fun tp_is_empty!54831 () Bool)

(declare-fun tp_is_empty!54833 () Bool)

(declare-fun b!8050519 () Bool)

(assert (=> b!8050519 (= e!4743573 (and tp_is_empty!54831 tp_is_empty!54833 tp!2413574))))

(declare-fun b!8050520 () Bool)

(assert (=> b!8050520 (= e!4743571 e!4743575)))

(declare-fun res!3183008 () Bool)

(assert (=> b!8050520 (=> (not res!3183008) (not e!4743575))))

(assert (=> b!8050520 (= res!3183008 e!4743574)))

(declare-fun res!3183010 () Bool)

(assert (=> b!8050520 (=> res!3183010 e!4743574)))

(assert (=> b!8050520 (= res!3183010 e!4743577)))

(declare-fun res!3183006 () Bool)

(assert (=> b!8050520 (=> (not res!3183006) (not e!4743577))))

(assert (=> b!8050520 (= res!3183006 lt!2724435)))

(assert (=> b!8050520 (= lt!2724435 (contains!21161 acc!1298 key!6222))))

(declare-fun b!8050513 () Bool)

(declare-fun res!3183005 () Bool)

(assert (=> b!8050513 (=> (not res!3183005) (not e!4743577))))

(declare-fun apply!14416 (ListMap!7257 K!22771) V!23025)

(assert (=> b!8050513 (= res!3183005 (= (apply!14416 acc!1298 key!6222) value!3131))))

(declare-fun res!3183003 () Bool)

(assert (=> start!758152 (=> (not res!3183003) (not e!4743571))))

(declare-fun noDuplicateKeys!2689 (List!75640) Bool)

(assert (=> start!758152 (= res!3183003 (noDuplicateKeys!2689 l!14636))))

(assert (=> start!758152 e!4743571))

(assert (=> start!758152 e!4743573))

(declare-fun inv!97261 (ListMap!7257) Bool)

(assert (=> start!758152 (and (inv!97261 acc!1298) e!4743576)))

(assert (=> start!758152 tp_is_empty!54831))

(assert (=> start!758152 tp_is_empty!54833))

(assert (= (and start!758152 res!3183003) b!8050512))

(assert (= (and b!8050512 res!3183007) b!8050520))

(assert (= (and b!8050520 res!3183006) b!8050513))

(assert (= (and b!8050513 res!3183005) b!8050517))

(assert (= (and b!8050520 (not res!3183010)) b!8050514))

(assert (= (and b!8050514 res!3183009) b!8050511))

(assert (= (and b!8050511 res!3183004) b!8050518))

(assert (= (and b!8050520 res!3183008) b!8050515))

(assert (= (and start!758152 (is-Cons!75514 l!14636)) b!8050519))

(assert (= start!758152 b!8050516))

(declare-fun m!8401516 () Bool)

(assert (=> b!8050517 m!8401516))

(declare-fun m!8401518 () Bool)

(assert (=> b!8050520 m!8401518))

(declare-fun m!8401520 () Bool)

(assert (=> b!8050512 m!8401520))

(assert (=> b!8050512 m!8401520))

(declare-fun m!8401522 () Bool)

(assert (=> b!8050512 m!8401522))

(declare-fun m!8401524 () Bool)

(assert (=> b!8050515 m!8401524))

(declare-fun m!8401526 () Bool)

(assert (=> b!8050513 m!8401526))

(assert (=> b!8050514 m!8401516))

(declare-fun m!8401528 () Bool)

(assert (=> b!8050511 m!8401528))

(declare-fun m!8401530 () Bool)

(assert (=> start!758152 m!8401530))

(declare-fun m!8401532 () Bool)

(assert (=> start!758152 m!8401532))

(push 1)

(assert (not start!758152))

(assert (not b!8050514))

(assert (not b!8050516))

(assert tp_is_empty!54831)

(assert tp_is_empty!54833)

(assert (not b!8050519))

(assert (not b!8050513))

(assert (not b!8050512))

(assert (not b!8050511))

(assert (not b!8050517))

(assert (not b!8050515))

(assert (not b!8050520))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8050581 () Bool)

(assert (=> b!8050581 false))

(declare-datatypes ((Unit!171402 0))(
  ( (Unit!171403) )
))
(declare-fun lt!2724463 () Unit!171402)

(declare-fun lt!2724466 () Unit!171402)

(assert (=> b!8050581 (= lt!2724463 lt!2724466)))

(declare-fun containsKey!4823 (List!75640 K!22771) Bool)

(assert (=> b!8050581 (containsKey!4823 (toList!11903 acc!1298) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1227 (List!75640 K!22771) Unit!171402)

(assert (=> b!8050581 (= lt!2724466 (lemmaInGetKeysListThenContainsKey!1227 (toList!11903 acc!1298) key!6222))))

(declare-fun e!4743622 () Unit!171402)

(declare-fun Unit!171404 () Unit!171402)

(assert (=> b!8050581 (= e!4743622 Unit!171404)))

(declare-fun b!8050582 () Bool)

(declare-fun e!4743623 () Bool)

(declare-fun e!4743620 () Bool)

(assert (=> b!8050582 (= e!4743623 e!4743620)))

(declare-fun res!3183047 () Bool)

(assert (=> b!8050582 (=> (not res!3183047) (not e!4743620))))

(declare-datatypes ((Option!17984 0))(
  ( (None!17983) (Some!17983 (v!55274 V!23025)) )
))
(declare-fun isDefined!14517 (Option!17984) Bool)

(declare-fun getValueByKey!2768 (List!75640 K!22771) Option!17984)

(assert (=> b!8050582 (= res!3183047 (isDefined!14517 (getValueByKey!2768 (toList!11903 acc!1298) key!6222)))))

(declare-fun b!8050583 () Bool)

(declare-fun Unit!171405 () Unit!171402)

(assert (=> b!8050583 (= e!4743622 Unit!171405)))

(declare-fun b!8050584 () Bool)

(declare-fun e!4743624 () Bool)

(declare-datatypes ((List!75642 0))(
  ( (Nil!75516) (Cons!75516 (h!81964 K!22771) (t!391414 List!75642)) )
))
(declare-fun contains!21164 (List!75642 K!22771) Bool)

(declare-fun keys!30806 (ListMap!7257) List!75642)

(assert (=> b!8050584 (= e!4743624 (not (contains!21164 (keys!30806 acc!1298) key!6222)))))

(declare-fun b!8050585 () Bool)

(declare-fun e!4743625 () List!75642)

(assert (=> b!8050585 (= e!4743625 (keys!30806 acc!1298))))

(declare-fun d!2397129 () Bool)

(assert (=> d!2397129 e!4743623))

(declare-fun res!3183048 () Bool)

(assert (=> d!2397129 (=> res!3183048 e!4743623)))

(assert (=> d!2397129 (= res!3183048 e!4743624)))

(declare-fun res!3183049 () Bool)

(assert (=> d!2397129 (=> (not res!3183049) (not e!4743624))))

(declare-fun lt!2724461 () Bool)

(assert (=> d!2397129 (= res!3183049 (not lt!2724461))))

(declare-fun lt!2724464 () Bool)

(assert (=> d!2397129 (= lt!2724461 lt!2724464)))

(declare-fun lt!2724462 () Unit!171402)

(declare-fun e!4743621 () Unit!171402)

(assert (=> d!2397129 (= lt!2724462 e!4743621)))

(declare-fun c!1475778 () Bool)

(assert (=> d!2397129 (= c!1475778 lt!2724464)))

(assert (=> d!2397129 (= lt!2724464 (containsKey!4823 (toList!11903 acc!1298) key!6222))))

(assert (=> d!2397129 (= (contains!21161 acc!1298 key!6222) lt!2724461)))

(declare-fun bm!746874 () Bool)

(declare-fun call!746879 () Bool)

(assert (=> bm!746874 (= call!746879 (contains!21164 e!4743625 key!6222))))

(declare-fun c!1475776 () Bool)

(assert (=> bm!746874 (= c!1475776 c!1475778)))

(declare-fun b!8050586 () Bool)

(assert (=> b!8050586 (= e!4743620 (contains!21164 (keys!30806 acc!1298) key!6222))))

(declare-fun b!8050587 () Bool)

(declare-fun lt!2724467 () Unit!171402)

(assert (=> b!8050587 (= e!4743621 lt!2724467)))

(declare-fun lt!2724465 () Unit!171402)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2539 (List!75640 K!22771) Unit!171402)

(assert (=> b!8050587 (= lt!2724465 (lemmaContainsKeyImpliesGetValueByKeyDefined!2539 (toList!11903 acc!1298) key!6222))))

(assert (=> b!8050587 (isDefined!14517 (getValueByKey!2768 (toList!11903 acc!1298) key!6222))))

(declare-fun lt!2724468 () Unit!171402)

(assert (=> b!8050587 (= lt!2724468 lt!2724465)))

(declare-fun lemmaInListThenGetKeysListContains!1222 (List!75640 K!22771) Unit!171402)

(assert (=> b!8050587 (= lt!2724467 (lemmaInListThenGetKeysListContains!1222 (toList!11903 acc!1298) key!6222))))

(assert (=> b!8050587 call!746879))

(declare-fun b!8050588 () Bool)

(declare-fun getKeysList!1227 (List!75640) List!75642)

(assert (=> b!8050588 (= e!4743625 (getKeysList!1227 (toList!11903 acc!1298)))))

(declare-fun b!8050589 () Bool)

(assert (=> b!8050589 (= e!4743621 e!4743622)))

(declare-fun c!1475777 () Bool)

(assert (=> b!8050589 (= c!1475777 call!746879)))

(assert (= (and d!2397129 c!1475778) b!8050587))

(assert (= (and d!2397129 (not c!1475778)) b!8050589))

(assert (= (and b!8050589 c!1475777) b!8050581))

(assert (= (and b!8050589 (not c!1475777)) b!8050583))

(assert (= (or b!8050587 b!8050589) bm!746874))

(assert (= (and bm!746874 c!1475776) b!8050588))

(assert (= (and bm!746874 (not c!1475776)) b!8050585))

(assert (= (and d!2397129 res!3183049) b!8050584))

(assert (= (and d!2397129 (not res!3183048)) b!8050582))

(assert (= (and b!8050582 res!3183047) b!8050586))

(declare-fun m!8401560 () Bool)

(assert (=> b!8050587 m!8401560))

(declare-fun m!8401562 () Bool)

(assert (=> b!8050587 m!8401562))

(assert (=> b!8050587 m!8401562))

(declare-fun m!8401564 () Bool)

(assert (=> b!8050587 m!8401564))

(declare-fun m!8401566 () Bool)

(assert (=> b!8050587 m!8401566))

(declare-fun m!8401568 () Bool)

(assert (=> b!8050581 m!8401568))

(declare-fun m!8401570 () Bool)

(assert (=> b!8050581 m!8401570))

(declare-fun m!8401572 () Bool)

(assert (=> b!8050584 m!8401572))

(assert (=> b!8050584 m!8401572))

(declare-fun m!8401574 () Bool)

(assert (=> b!8050584 m!8401574))

(declare-fun m!8401576 () Bool)

(assert (=> b!8050588 m!8401576))

(assert (=> b!8050586 m!8401572))

(assert (=> b!8050586 m!8401572))

(assert (=> b!8050586 m!8401574))

(assert (=> b!8050582 m!8401562))

(assert (=> b!8050582 m!8401562))

(assert (=> b!8050582 m!8401564))

(assert (=> b!8050585 m!8401572))

(assert (=> d!2397129 m!8401568))

(declare-fun m!8401578 () Bool)

(assert (=> bm!746874 m!8401578))

(assert (=> b!8050520 d!2397129))

(declare-fun d!2397137 () Bool)

(declare-fun lt!2724471 () Int)

(assert (=> d!2397137 (>= lt!2724471 0)))

(declare-fun e!4743634 () Int)

(assert (=> d!2397137 (= lt!2724471 e!4743634)))

(declare-fun c!1475781 () Bool)

(assert (=> d!2397137 (= c!1475781 (is-Nil!75514 l!14636))))

(assert (=> d!2397137 (= (ListPrimitiveSize!547 l!14636) lt!2724471)))

(declare-fun b!8050600 () Bool)

(assert (=> b!8050600 (= e!4743634 0)))

(declare-fun b!8050601 () Bool)

(assert (=> b!8050601 (= e!4743634 (+ 1 (ListPrimitiveSize!547 (t!391412 l!14636))))))

(assert (= (and d!2397137 c!1475781) b!8050600))

(assert (= (and d!2397137 (not c!1475781)) b!8050601))

(declare-fun m!8401582 () Bool)

(assert (=> b!8050601 m!8401582))

(assert (=> b!8050515 d!2397137))

(declare-fun d!2397141 () Bool)

(declare-fun res!3183060 () Bool)

(declare-fun e!4743639 () Bool)

(assert (=> d!2397141 (=> res!3183060 e!4743639)))

(assert (=> d!2397141 (= res!3183060 (and (is-Cons!75514 l!14636) (= (_1!38730 (h!81962 l!14636)) key!6222)))))

(assert (=> d!2397141 (= (containsKey!4821 l!14636 key!6222) e!4743639)))

(declare-fun b!8050606 () Bool)

(declare-fun e!4743640 () Bool)

(assert (=> b!8050606 (= e!4743639 e!4743640)))

(declare-fun res!3183061 () Bool)

(assert (=> b!8050606 (=> (not res!3183061) (not e!4743640))))

(assert (=> b!8050606 (= res!3183061 (is-Cons!75514 l!14636))))

(declare-fun b!8050607 () Bool)

(assert (=> b!8050607 (= e!4743640 (containsKey!4821 (t!391412 l!14636) key!6222))))

(assert (= (and d!2397141 (not res!3183060)) b!8050606))

(assert (= (and b!8050606 res!3183061) b!8050607))

(declare-fun m!8401584 () Bool)

(assert (=> b!8050607 m!8401584))

(assert (=> b!8050514 d!2397141))

(declare-fun d!2397143 () Bool)

(declare-fun get!27194 (Option!17984) V!23025)

(assert (=> d!2397143 (= (apply!14416 acc!1298 key!6222) (get!27194 (getValueByKey!2768 (toList!11903 acc!1298) key!6222)))))

(declare-fun bs!1971931 () Bool)

(assert (= bs!1971931 d!2397143))

(assert (=> bs!1971931 m!8401562))

(assert (=> bs!1971931 m!8401562))

(declare-fun m!8401586 () Bool)

(assert (=> bs!1971931 m!8401586))

(assert (=> b!8050513 d!2397143))

(declare-fun b!8050608 () Bool)

(assert (=> b!8050608 false))

(declare-fun lt!2724474 () Unit!171402)

(declare-fun lt!2724477 () Unit!171402)

(assert (=> b!8050608 (= lt!2724474 lt!2724477)))

(assert (=> b!8050608 (containsKey!4823 (toList!11903 (addToMapMapFromBucket!1970 l!14636 acc!1298)) key!6222)))

(assert (=> b!8050608 (= lt!2724477 (lemmaInGetKeysListThenContainsKey!1227 (toList!11903 (addToMapMapFromBucket!1970 l!14636 acc!1298)) key!6222))))

(declare-fun e!4743643 () Unit!171402)

(declare-fun Unit!171406 () Unit!171402)

(assert (=> b!8050608 (= e!4743643 Unit!171406)))

(declare-fun b!8050609 () Bool)

(declare-fun e!4743644 () Bool)

(declare-fun e!4743641 () Bool)

(assert (=> b!8050609 (= e!4743644 e!4743641)))

(declare-fun res!3183062 () Bool)

(assert (=> b!8050609 (=> (not res!3183062) (not e!4743641))))

(assert (=> b!8050609 (= res!3183062 (isDefined!14517 (getValueByKey!2768 (toList!11903 (addToMapMapFromBucket!1970 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8050610 () Bool)

(declare-fun Unit!171407 () Unit!171402)

(assert (=> b!8050610 (= e!4743643 Unit!171407)))

(declare-fun e!4743645 () Bool)

(declare-fun b!8050611 () Bool)

(assert (=> b!8050611 (= e!4743645 (not (contains!21164 (keys!30806 (addToMapMapFromBucket!1970 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8050612 () Bool)

(declare-fun e!4743646 () List!75642)

(assert (=> b!8050612 (= e!4743646 (keys!30806 (addToMapMapFromBucket!1970 l!14636 acc!1298)))))

(declare-fun d!2397145 () Bool)

(assert (=> d!2397145 e!4743644))

(declare-fun res!3183063 () Bool)

(assert (=> d!2397145 (=> res!3183063 e!4743644)))

(assert (=> d!2397145 (= res!3183063 e!4743645)))

(declare-fun res!3183064 () Bool)

(assert (=> d!2397145 (=> (not res!3183064) (not e!4743645))))

(declare-fun lt!2724472 () Bool)

(assert (=> d!2397145 (= res!3183064 (not lt!2724472))))

(declare-fun lt!2724475 () Bool)

(assert (=> d!2397145 (= lt!2724472 lt!2724475)))

(declare-fun lt!2724473 () Unit!171402)

(declare-fun e!4743642 () Unit!171402)

(assert (=> d!2397145 (= lt!2724473 e!4743642)))

(declare-fun c!1475784 () Bool)

(assert (=> d!2397145 (= c!1475784 lt!2724475)))

(assert (=> d!2397145 (= lt!2724475 (containsKey!4823 (toList!11903 (addToMapMapFromBucket!1970 l!14636 acc!1298)) key!6222))))

(assert (=> d!2397145 (= (contains!21161 (addToMapMapFromBucket!1970 l!14636 acc!1298) key!6222) lt!2724472)))

(declare-fun bm!746875 () Bool)

(declare-fun call!746880 () Bool)

(assert (=> bm!746875 (= call!746880 (contains!21164 e!4743646 key!6222))))

(declare-fun c!1475782 () Bool)

(assert (=> bm!746875 (= c!1475782 c!1475784)))

(declare-fun b!8050613 () Bool)

(assert (=> b!8050613 (= e!4743641 (contains!21164 (keys!30806 (addToMapMapFromBucket!1970 l!14636 acc!1298)) key!6222))))

(declare-fun b!8050614 () Bool)

(declare-fun lt!2724478 () Unit!171402)

(assert (=> b!8050614 (= e!4743642 lt!2724478)))

(declare-fun lt!2724476 () Unit!171402)

(assert (=> b!8050614 (= lt!2724476 (lemmaContainsKeyImpliesGetValueByKeyDefined!2539 (toList!11903 (addToMapMapFromBucket!1970 l!14636 acc!1298)) key!6222))))

(assert (=> b!8050614 (isDefined!14517 (getValueByKey!2768 (toList!11903 (addToMapMapFromBucket!1970 l!14636 acc!1298)) key!6222))))

(declare-fun lt!2724479 () Unit!171402)

(assert (=> b!8050614 (= lt!2724479 lt!2724476)))

(assert (=> b!8050614 (= lt!2724478 (lemmaInListThenGetKeysListContains!1222 (toList!11903 (addToMapMapFromBucket!1970 l!14636 acc!1298)) key!6222))))

(assert (=> b!8050614 call!746880))

(declare-fun b!8050615 () Bool)

(assert (=> b!8050615 (= e!4743646 (getKeysList!1227 (toList!11903 (addToMapMapFromBucket!1970 l!14636 acc!1298))))))

(declare-fun b!8050616 () Bool)

(assert (=> b!8050616 (= e!4743642 e!4743643)))

(declare-fun c!1475783 () Bool)

(assert (=> b!8050616 (= c!1475783 call!746880)))

(assert (= (and d!2397145 c!1475784) b!8050614))

(assert (= (and d!2397145 (not c!1475784)) b!8050616))

(assert (= (and b!8050616 c!1475783) b!8050608))

(assert (= (and b!8050616 (not c!1475783)) b!8050610))

(assert (= (or b!8050614 b!8050616) bm!746875))

(assert (= (and bm!746875 c!1475782) b!8050615))

(assert (= (and bm!746875 (not c!1475782)) b!8050612))

(assert (= (and d!2397145 res!3183064) b!8050611))

(assert (= (and d!2397145 (not res!3183063)) b!8050609))

(assert (= (and b!8050609 res!3183062) b!8050613))

(declare-fun m!8401588 () Bool)

(assert (=> b!8050614 m!8401588))

(declare-fun m!8401590 () Bool)

(assert (=> b!8050614 m!8401590))

(assert (=> b!8050614 m!8401590))

(declare-fun m!8401592 () Bool)

(assert (=> b!8050614 m!8401592))

(declare-fun m!8401594 () Bool)

(assert (=> b!8050614 m!8401594))

(declare-fun m!8401596 () Bool)

(assert (=> b!8050608 m!8401596))

(declare-fun m!8401598 () Bool)

(assert (=> b!8050608 m!8401598))

(assert (=> b!8050611 m!8401520))

(declare-fun m!8401600 () Bool)

(assert (=> b!8050611 m!8401600))

(assert (=> b!8050611 m!8401600))

(declare-fun m!8401602 () Bool)

(assert (=> b!8050611 m!8401602))

(declare-fun m!8401604 () Bool)

(assert (=> b!8050615 m!8401604))

(assert (=> b!8050613 m!8401520))

(assert (=> b!8050613 m!8401600))

(assert (=> b!8050613 m!8401600))

(assert (=> b!8050613 m!8401602))

(assert (=> b!8050609 m!8401590))

(assert (=> b!8050609 m!8401590))

(assert (=> b!8050609 m!8401592))

(assert (=> b!8050612 m!8401520))

(assert (=> b!8050612 m!8401600))

(assert (=> d!2397145 m!8401596))

(declare-fun m!8401606 () Bool)

(assert (=> bm!746875 m!8401606))

(assert (=> b!8050512 d!2397145))

(declare-fun b!8050660 () Bool)

(assert (=> b!8050660 true))

(declare-fun bs!1971932 () Bool)

(declare-fun b!8050662 () Bool)

(assert (= bs!1971932 (and b!8050662 b!8050660)))

(declare-fun lambda!473057 () Int)

(declare-fun lambda!473056 () Int)

(assert (=> bs!1971932 (= lambda!473057 lambda!473056)))

(assert (=> b!8050662 true))

(declare-fun lambda!473058 () Int)

(declare-fun lt!2724556 () ListMap!7257)

(assert (=> bs!1971932 (= (= lt!2724556 acc!1298) (= lambda!473058 lambda!473056))))

(assert (=> b!8050662 (= (= lt!2724556 acc!1298) (= lambda!473058 lambda!473057))))

(assert (=> b!8050662 true))

(declare-fun bs!1971933 () Bool)

(declare-fun d!2397147 () Bool)

(assert (= bs!1971933 (and d!2397147 b!8050660)))

(declare-fun lambda!473059 () Int)

(declare-fun lt!2724560 () ListMap!7257)

(assert (=> bs!1971933 (= (= lt!2724560 acc!1298) (= lambda!473059 lambda!473056))))

(declare-fun bs!1971934 () Bool)

(assert (= bs!1971934 (and d!2397147 b!8050662)))

(assert (=> bs!1971934 (= (= lt!2724560 acc!1298) (= lambda!473059 lambda!473057))))

(assert (=> bs!1971934 (= (= lt!2724560 lt!2724556) (= lambda!473059 lambda!473058))))

(assert (=> d!2397147 true))

(declare-fun e!4743675 () Bool)

(assert (=> d!2397147 e!4743675))

(declare-fun res!3183081 () Bool)

(assert (=> d!2397147 (=> (not res!3183081) (not e!4743675))))

(declare-fun forall!18488 (List!75640 Int) Bool)

(assert (=> d!2397147 (= res!3183081 (forall!18488 l!14636 lambda!473059))))

(declare-fun e!4743674 () ListMap!7257)

(assert (=> d!2397147 (= lt!2724560 e!4743674)))

(declare-fun c!1475798 () Bool)

(assert (=> d!2397147 (= c!1475798 (is-Nil!75514 l!14636))))

(assert (=> d!2397147 (noDuplicateKeys!2689 l!14636)))

(assert (=> d!2397147 (= (addToMapMapFromBucket!1970 l!14636 acc!1298) lt!2724560)))

(declare-fun b!8050658 () Bool)

(declare-fun res!3183082 () Bool)

(assert (=> b!8050658 (=> (not res!3183082) (not e!4743675))))

(assert (=> b!8050658 (= res!3183082 (forall!18488 (toList!11903 acc!1298) lambda!473059))))

(declare-fun b!8050659 () Bool)

(declare-fun e!4743673 () Bool)

(assert (=> b!8050659 (= e!4743673 (forall!18488 (toList!11903 acc!1298) lambda!473058))))

(assert (=> b!8050660 (= e!4743674 acc!1298)))

(declare-fun lt!2724553 () Unit!171402)

(declare-fun call!746891 () Unit!171402)

(assert (=> b!8050660 (= lt!2724553 call!746891)))

(declare-fun call!746890 () Bool)

(assert (=> b!8050660 call!746890))

(declare-fun lt!2724564 () Unit!171402)

(assert (=> b!8050660 (= lt!2724564 lt!2724553)))

(declare-fun call!746892 () Bool)

(assert (=> b!8050660 call!746892))

(declare-fun lt!2724571 () Unit!171402)

(declare-fun Unit!171408 () Unit!171402)

(assert (=> b!8050660 (= lt!2724571 Unit!171408)))

(declare-fun b!8050661 () Bool)

(declare-fun invariantList!1919 (List!75640) Bool)

(assert (=> b!8050661 (= e!4743675 (invariantList!1919 (toList!11903 lt!2724560)))))

(declare-fun bm!746885 () Bool)

(declare-fun lt!2724565 () ListMap!7257)

(assert (=> bm!746885 (= call!746892 (forall!18488 (ite c!1475798 (toList!11903 acc!1298) (toList!11903 lt!2724565)) (ite c!1475798 lambda!473056 lambda!473058)))))

(assert (=> b!8050662 (= e!4743674 lt!2724556)))

(declare-fun +!2655 (ListMap!7257 tuple2!70854) ListMap!7257)

(assert (=> b!8050662 (= lt!2724565 (+!2655 acc!1298 (h!81962 l!14636)))))

(assert (=> b!8050662 (= lt!2724556 (addToMapMapFromBucket!1970 (t!391412 l!14636) (+!2655 acc!1298 (h!81962 l!14636))))))

(declare-fun lt!2724555 () Unit!171402)

(assert (=> b!8050662 (= lt!2724555 call!746891)))

(assert (=> b!8050662 (forall!18488 (toList!11903 acc!1298) lambda!473057)))

(declare-fun lt!2724562 () Unit!171402)

(assert (=> b!8050662 (= lt!2724562 lt!2724555)))

(assert (=> b!8050662 call!746890))

(declare-fun lt!2724563 () Unit!171402)

(declare-fun Unit!171409 () Unit!171402)

(assert (=> b!8050662 (= lt!2724563 Unit!171409)))

(assert (=> b!8050662 (forall!18488 (t!391412 l!14636) lambda!473058)))

(declare-fun lt!2724567 () Unit!171402)

(declare-fun Unit!171410 () Unit!171402)

(assert (=> b!8050662 (= lt!2724567 Unit!171410)))

(declare-fun lt!2724559 () Unit!171402)

(declare-fun Unit!171411 () Unit!171402)

(assert (=> b!8050662 (= lt!2724559 Unit!171411)))

(declare-fun lt!2724554 () Unit!171402)

(declare-fun forallContained!4642 (List!75640 Int tuple2!70854) Unit!171402)

(assert (=> b!8050662 (= lt!2724554 (forallContained!4642 (toList!11903 lt!2724565) lambda!473058 (h!81962 l!14636)))))

(assert (=> b!8050662 (contains!21161 lt!2724565 (_1!38730 (h!81962 l!14636)))))

(declare-fun lt!2724561 () Unit!171402)

(declare-fun Unit!171412 () Unit!171402)

(assert (=> b!8050662 (= lt!2724561 Unit!171412)))

(assert (=> b!8050662 (contains!21161 lt!2724556 (_1!38730 (h!81962 l!14636)))))

(declare-fun lt!2724569 () Unit!171402)

(declare-fun Unit!171413 () Unit!171402)

(assert (=> b!8050662 (= lt!2724569 Unit!171413)))

(assert (=> b!8050662 (forall!18488 l!14636 lambda!473058)))

(declare-fun lt!2724557 () Unit!171402)

(declare-fun Unit!171414 () Unit!171402)

(assert (=> b!8050662 (= lt!2724557 Unit!171414)))

(assert (=> b!8050662 call!746892))

(declare-fun lt!2724572 () Unit!171402)

(declare-fun Unit!171415 () Unit!171402)

(assert (=> b!8050662 (= lt!2724572 Unit!171415)))

(declare-fun lt!2724568 () Unit!171402)

(declare-fun Unit!171416 () Unit!171402)

(assert (=> b!8050662 (= lt!2724568 Unit!171416)))

(declare-fun lt!2724558 () Unit!171402)

(declare-fun addForallContainsKeyThenBeforeAdding!1069 (ListMap!7257 ListMap!7257 K!22771 V!23025) Unit!171402)

(assert (=> b!8050662 (= lt!2724558 (addForallContainsKeyThenBeforeAdding!1069 acc!1298 lt!2724556 (_1!38730 (h!81962 l!14636)) (_2!38730 (h!81962 l!14636))))))

(assert (=> b!8050662 (forall!18488 (toList!11903 acc!1298) lambda!473058)))

(declare-fun lt!2724570 () Unit!171402)

(assert (=> b!8050662 (= lt!2724570 lt!2724558)))

(assert (=> b!8050662 (forall!18488 (toList!11903 acc!1298) lambda!473058)))

(declare-fun lt!2724566 () Unit!171402)

(declare-fun Unit!171417 () Unit!171402)

(assert (=> b!8050662 (= lt!2724566 Unit!171417)))

(declare-fun res!3183080 () Bool)

(assert (=> b!8050662 (= res!3183080 (forall!18488 l!14636 lambda!473058))))

(assert (=> b!8050662 (=> (not res!3183080) (not e!4743673))))

(assert (=> b!8050662 e!4743673))

(declare-fun lt!2724552 () Unit!171402)

(declare-fun Unit!171418 () Unit!171402)

(assert (=> b!8050662 (= lt!2724552 Unit!171418)))

(declare-fun bm!746886 () Bool)

(assert (=> bm!746886 (= call!746890 (forall!18488 (ite c!1475798 (toList!11903 acc!1298) (toList!11903 lt!2724565)) (ite c!1475798 lambda!473056 lambda!473058)))))

(declare-fun bm!746887 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1071 (ListMap!7257) Unit!171402)

(assert (=> bm!746887 (= call!746891 (lemmaContainsAllItsOwnKeys!1071 acc!1298))))

(assert (= (and d!2397147 c!1475798) b!8050660))

(assert (= (and d!2397147 (not c!1475798)) b!8050662))

(assert (= (and b!8050662 res!3183080) b!8050659))

(assert (= (or b!8050660 b!8050662) bm!746885))

(assert (= (or b!8050660 b!8050662) bm!746886))

(assert (= (or b!8050660 b!8050662) bm!746887))

(assert (= (and d!2397147 res!3183081) b!8050658))

(assert (= (and b!8050658 res!3183082) b!8050661))

(declare-fun m!8401628 () Bool)

(assert (=> d!2397147 m!8401628))

(assert (=> d!2397147 m!8401530))

(declare-fun m!8401630 () Bool)

(assert (=> bm!746885 m!8401630))

(declare-fun m!8401632 () Bool)

(assert (=> b!8050662 m!8401632))

(declare-fun m!8401634 () Bool)

(assert (=> b!8050662 m!8401634))

(declare-fun m!8401636 () Bool)

(assert (=> b!8050662 m!8401636))

(declare-fun m!8401638 () Bool)

(assert (=> b!8050662 m!8401638))

(declare-fun m!8401640 () Bool)

(assert (=> b!8050662 m!8401640))

(declare-fun m!8401642 () Bool)

(assert (=> b!8050662 m!8401642))

(assert (=> b!8050662 m!8401632))

(declare-fun m!8401644 () Bool)

(assert (=> b!8050662 m!8401644))

(declare-fun m!8401646 () Bool)

(assert (=> b!8050662 m!8401646))

(declare-fun m!8401648 () Bool)

(assert (=> b!8050662 m!8401648))

(declare-fun m!8401650 () Bool)

(assert (=> b!8050662 m!8401650))

(assert (=> b!8050662 m!8401634))

(assert (=> b!8050662 m!8401638))

(declare-fun m!8401652 () Bool)

(assert (=> b!8050661 m!8401652))

(assert (=> bm!746886 m!8401630))

(assert (=> b!8050659 m!8401638))

(declare-fun m!8401654 () Bool)

(assert (=> bm!746887 m!8401654))

(declare-fun m!8401656 () Bool)

(assert (=> b!8050658 m!8401656))

(assert (=> b!8050512 d!2397147))

(declare-fun d!2397151 () Bool)

(declare-fun res!3183087 () Bool)

(declare-fun e!4743680 () Bool)

(assert (=> d!2397151 (=> res!3183087 e!4743680)))

(assert (=> d!2397151 (= res!3183087 (not (is-Cons!75514 l!14636)))))

(assert (=> d!2397151 (= (noDuplicateKeys!2689 l!14636) e!4743680)))

(declare-fun b!8050669 () Bool)

(declare-fun e!4743681 () Bool)

(assert (=> b!8050669 (= e!4743680 e!4743681)))

(declare-fun res!3183088 () Bool)

(assert (=> b!8050669 (=> (not res!3183088) (not e!4743681))))

(assert (=> b!8050669 (= res!3183088 (not (containsKey!4821 (t!391412 l!14636) (_1!38730 (h!81962 l!14636)))))))

(declare-fun b!8050670 () Bool)

(assert (=> b!8050670 (= e!4743681 (noDuplicateKeys!2689 (t!391412 l!14636)))))

(assert (= (and d!2397151 (not res!3183087)) b!8050669))

(assert (= (and b!8050669 res!3183088) b!8050670))

(declare-fun m!8401658 () Bool)

(assert (=> b!8050669 m!8401658))

(declare-fun m!8401660 () Bool)

(assert (=> b!8050670 m!8401660))

(assert (=> start!758152 d!2397151))

(declare-fun d!2397153 () Bool)

(assert (=> d!2397153 (= (inv!97261 acc!1298) (invariantList!1919 (toList!11903 acc!1298)))))

(declare-fun bs!1971935 () Bool)

(assert (= bs!1971935 d!2397153))

(declare-fun m!8401662 () Bool)

(assert (=> bs!1971935 m!8401662))

(assert (=> start!758152 d!2397153))

(assert (=> b!8050517 d!2397141))

(declare-fun lt!2724575 () Bool)

(declare-fun d!2397155 () Bool)

(declare-fun content!16092 (List!75640) (Set tuple2!70854))

(assert (=> d!2397155 (= lt!2724575 (set.member (tuple2!70855 key!6222 value!3131) (content!16092 l!14636)))))

(declare-fun e!4743686 () Bool)

(assert (=> d!2397155 (= lt!2724575 e!4743686)))

(declare-fun res!3183094 () Bool)

(assert (=> d!2397155 (=> (not res!3183094) (not e!4743686))))

(assert (=> d!2397155 (= res!3183094 (is-Cons!75514 l!14636))))

(assert (=> d!2397155 (= (contains!21160 l!14636 (tuple2!70855 key!6222 value!3131)) lt!2724575)))

(declare-fun b!8050675 () Bool)

(declare-fun e!4743687 () Bool)

(assert (=> b!8050675 (= e!4743686 e!4743687)))

(declare-fun res!3183093 () Bool)

(assert (=> b!8050675 (=> res!3183093 e!4743687)))

(assert (=> b!8050675 (= res!3183093 (= (h!81962 l!14636) (tuple2!70855 key!6222 value!3131)))))

(declare-fun b!8050676 () Bool)

(assert (=> b!8050676 (= e!4743687 (contains!21160 (t!391412 l!14636) (tuple2!70855 key!6222 value!3131)))))

(assert (= (and d!2397155 res!3183094) b!8050675))

(assert (= (and b!8050675 (not res!3183093)) b!8050676))

(declare-fun m!8401664 () Bool)

(assert (=> d!2397155 m!8401664))

(declare-fun m!8401666 () Bool)

(assert (=> d!2397155 m!8401666))

(declare-fun m!8401668 () Bool)

(assert (=> b!8050676 m!8401668))

(assert (=> b!8050511 d!2397155))

(declare-fun tp!2413584 () Bool)

(declare-fun b!8050681 () Bool)

(declare-fun e!4743690 () Bool)

(assert (=> b!8050681 (= e!4743690 (and tp_is_empty!54831 tp_is_empty!54833 tp!2413584))))

(assert (=> b!8050519 (= tp!2413574 e!4743690)))

(assert (= (and b!8050519 (is-Cons!75514 (t!391412 l!14636))) b!8050681))

(declare-fun tp!2413585 () Bool)

(declare-fun b!8050682 () Bool)

(declare-fun e!4743691 () Bool)

(assert (=> b!8050682 (= e!4743691 (and tp_is_empty!54831 tp_is_empty!54833 tp!2413585))))

(assert (=> b!8050516 (= tp!2413575 e!4743691)))

(assert (= (and b!8050516 (is-Cons!75514 (toList!11903 acc!1298))) b!8050682))

(push 1)

(assert (not d!2397143))

(assert (not b!8050669))

(assert (not b!8050581))

(assert (not d!2397155))

(assert (not bm!746886))

(assert (not b!8050681))

(assert (not d!2397153))

(assert (not b!8050587))

(assert (not b!8050615))

(assert (not b!8050582))

(assert (not b!8050588))

(assert (not b!8050586))

(assert (not bm!746874))

(assert (not b!8050612))

(assert (not b!8050659))

(assert tp_is_empty!54831)

(assert (not b!8050670))

(assert (not b!8050585))

(assert (not b!8050614))

(assert (not b!8050613))

(assert tp_is_empty!54833)

(assert (not b!8050682))

(assert (not bm!746887))

(assert (not bm!746875))

(assert (not b!8050611))

(assert (not b!8050607))

(assert (not b!8050584))

(assert (not bm!746885))

(assert (not d!2397145))

(assert (not b!8050608))

(assert (not b!8050658))

(assert (not d!2397129))

(assert (not b!8050676))

(assert (not b!8050661))

(assert (not b!8050609))

(assert (not b!8050601))

(assert (not b!8050662))

(assert (not d!2397147))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

