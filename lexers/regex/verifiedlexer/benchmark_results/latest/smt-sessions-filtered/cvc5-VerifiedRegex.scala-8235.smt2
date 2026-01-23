; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!426486 () Bool)

(assert start!426486)

(declare-fun b!4394229 () Bool)

(declare-fun e!2735952 () Bool)

(declare-fun tp!1331489 () Bool)

(declare-fun tp_is_empty!25655 () Bool)

(declare-fun tp_is_empty!25653 () Bool)

(assert (=> b!4394229 (= e!2735952 (and tp_is_empty!25653 tp_is_empty!25655 tp!1331489))))

(declare-fun b!4394230 () Bool)

(declare-fun res!1811515 () Bool)

(declare-fun e!2735955 () Bool)

(assert (=> b!4394230 (=> (not res!1811515) (not e!2735955))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4996 0))(
  ( (HashableExt!4995 (__x!30699 Int)) )
))
(declare-fun hashF!1247 () Hashable!4996)

(declare-datatypes ((K!10578 0))(
  ( (K!10579 (val!16733 Int)) )
))
(declare-fun key!3918 () K!10578)

(declare-fun hash!1803 (Hashable!4996 K!10578) (_ BitVec 64))

(assert (=> b!4394230 (= res!1811515 (= (hash!1803 hashF!1247 key!3918) hash!377))))

(declare-fun b!4394232 () Bool)

(declare-fun e!2735956 () Bool)

(declare-fun e!2735951 () Bool)

(assert (=> b!4394232 (= e!2735956 e!2735951)))

(declare-fun res!1811521 () Bool)

(assert (=> b!4394232 (=> res!1811521 e!2735951)))

(declare-datatypes ((V!10824 0))(
  ( (V!10825 (val!16734 Int)) )
))
(declare-datatypes ((tuple2!48786 0))(
  ( (tuple2!48787 (_1!27687 K!10578) (_2!27687 V!10824)) )
))
(declare-datatypes ((List!49342 0))(
  ( (Nil!49218) (Cons!49218 (h!54827 tuple2!48786) (t!356276 List!49342)) )
))
(declare-datatypes ((tuple2!48788 0))(
  ( (tuple2!48789 (_1!27688 (_ BitVec 64)) (_2!27688 List!49342)) )
))
(declare-datatypes ((List!49343 0))(
  ( (Nil!49219) (Cons!49219 (h!54828 tuple2!48788) (t!356277 List!49343)) )
))
(declare-datatypes ((ListLongMap!1841 0))(
  ( (ListLongMap!1842 (toList!3191 List!49343)) )
))
(declare-fun lm!1707 () ListLongMap!1841)

(assert (=> b!4394232 (= res!1811521 (or (and (is-Cons!49219 (toList!3191 lm!1707)) (= (_1!27688 (h!54828 (toList!3191 lm!1707))) hash!377)) (not (is-Cons!49219 (toList!3191 lm!1707))) (= (_1!27688 (h!54828 (toList!3191 lm!1707))) hash!377)))))

(declare-fun e!2735954 () Bool)

(assert (=> b!4394232 e!2735954))

(declare-fun res!1811520 () Bool)

(assert (=> b!4394232 (=> (not res!1811520) (not e!2735954))))

(declare-fun lt!1601495 () ListLongMap!1841)

(declare-fun lambda!147532 () Int)

(declare-fun forall!9316 (List!49343 Int) Bool)

(assert (=> b!4394232 (= res!1811520 (forall!9316 (toList!3191 lt!1601495) lambda!147532))))

(declare-fun newBucket!200 () List!49342)

(declare-fun +!833 (ListLongMap!1841 tuple2!48788) ListLongMap!1841)

(assert (=> b!4394232 (= lt!1601495 (+!833 lm!1707 (tuple2!48789 hash!377 newBucket!200)))))

(declare-datatypes ((Unit!78197 0))(
  ( (Unit!78198) )
))
(declare-fun lt!1601498 () Unit!78197)

(declare-fun addValidProp!250 (ListLongMap!1841 Int (_ BitVec 64) List!49342) Unit!78197)

(assert (=> b!4394232 (= lt!1601498 (addValidProp!250 lm!1707 lambda!147532 hash!377 newBucket!200))))

(assert (=> b!4394232 (forall!9316 (toList!3191 lm!1707) lambda!147532)))

(declare-fun b!4394233 () Bool)

(declare-fun res!1811517 () Bool)

(assert (=> b!4394233 (=> (not res!1811517) (not e!2735955))))

(declare-fun allKeysSameHash!562 (List!49342 (_ BitVec 64) Hashable!4996) Bool)

(assert (=> b!4394233 (= res!1811517 (allKeysSameHash!562 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4394234 () Bool)

(declare-fun res!1811523 () Bool)

(assert (=> b!4394234 (=> res!1811523 e!2735956)))

(declare-fun noDuplicateKeys!604 (List!49342) Bool)

(assert (=> b!4394234 (= res!1811523 (not (noDuplicateKeys!604 newBucket!200)))))

(declare-fun b!4394235 () Bool)

(declare-fun e!2735953 () Bool)

(declare-fun tp!1331490 () Bool)

(assert (=> b!4394235 (= e!2735953 tp!1331490)))

(declare-fun b!4394236 () Bool)

(declare-fun res!1811518 () Bool)

(assert (=> b!4394236 (=> (not res!1811518) (not e!2735955))))

(declare-fun allKeysSameHashInMap!708 (ListLongMap!1841 Hashable!4996) Bool)

(assert (=> b!4394236 (= res!1811518 (allKeysSameHashInMap!708 lm!1707 hashF!1247))))

(declare-fun b!4394231 () Bool)

(declare-fun res!1811519 () Bool)

(assert (=> b!4394231 (=> (not res!1811519) (not e!2735955))))

(declare-fun contains!11584 (ListLongMap!1841 (_ BitVec 64)) Bool)

(assert (=> b!4394231 (= res!1811519 (contains!11584 lm!1707 hash!377))))

(declare-fun res!1811514 () Bool)

(assert (=> start!426486 (=> (not res!1811514) (not e!2735955))))

(assert (=> start!426486 (= res!1811514 (forall!9316 (toList!3191 lm!1707) lambda!147532))))

(assert (=> start!426486 e!2735955))

(assert (=> start!426486 e!2735952))

(assert (=> start!426486 true))

(declare-fun inv!64765 (ListLongMap!1841) Bool)

(assert (=> start!426486 (and (inv!64765 lm!1707) e!2735953)))

(assert (=> start!426486 tp_is_empty!25653))

(assert (=> start!426486 tp_is_empty!25655))

(declare-fun b!4394237 () Bool)

(declare-fun res!1811522 () Bool)

(assert (=> b!4394237 (=> (not res!1811522) (not e!2735955))))

(declare-datatypes ((ListMap!2435 0))(
  ( (ListMap!2436 (toList!3192 List!49342)) )
))
(declare-fun contains!11585 (ListMap!2435 K!10578) Bool)

(declare-fun extractMap!663 (List!49343) ListMap!2435)

(assert (=> b!4394237 (= res!1811522 (contains!11585 (extractMap!663 (toList!3191 lm!1707)) key!3918))))

(declare-fun b!4394238 () Bool)

(assert (=> b!4394238 (= e!2735955 (not e!2735956))))

(declare-fun res!1811516 () Bool)

(assert (=> b!4394238 (=> res!1811516 e!2735956)))

(declare-fun lt!1601493 () List!49342)

(declare-fun newValue!99 () V!10824)

(declare-fun removePairForKey!572 (List!49342 K!10578) List!49342)

(assert (=> b!4394238 (= res!1811516 (not (= newBucket!200 (Cons!49218 (tuple2!48787 key!3918 newValue!99) (removePairForKey!572 lt!1601493 key!3918)))))))

(declare-fun lt!1601497 () Unit!78197)

(declare-fun lt!1601499 () tuple2!48788)

(declare-fun forallContained!1954 (List!49343 Int tuple2!48788) Unit!78197)

(assert (=> b!4394238 (= lt!1601497 (forallContained!1954 (toList!3191 lm!1707) lambda!147532 lt!1601499))))

(declare-fun contains!11586 (List!49343 tuple2!48788) Bool)

(assert (=> b!4394238 (contains!11586 (toList!3191 lm!1707) lt!1601499)))

(assert (=> b!4394238 (= lt!1601499 (tuple2!48789 hash!377 lt!1601493))))

(declare-fun lt!1601494 () Unit!78197)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!449 (List!49343 (_ BitVec 64) List!49342) Unit!78197)

(assert (=> b!4394238 (= lt!1601494 (lemmaGetValueByKeyImpliesContainsTuple!449 (toList!3191 lm!1707) hash!377 lt!1601493))))

(declare-fun apply!11456 (ListLongMap!1841 (_ BitVec 64)) List!49342)

(assert (=> b!4394238 (= lt!1601493 (apply!11456 lm!1707 hash!377))))

(declare-fun b!4394239 () Bool)

(declare-fun containsKey!882 (List!49342 K!10578) Bool)

(assert (=> b!4394239 (= e!2735951 (not (containsKey!882 (_2!27688 (h!54828 (toList!3191 lm!1707))) key!3918)))))

(assert (=> b!4394239 (not (containsKey!882 (apply!11456 lm!1707 (_1!27688 (h!54828 (toList!3191 lm!1707)))) key!3918))))

(declare-fun lt!1601496 () Unit!78197)

(declare-fun lemmaNotSameHashThenCannotContainKey!75 (ListLongMap!1841 K!10578 (_ BitVec 64) Hashable!4996) Unit!78197)

(assert (=> b!4394239 (= lt!1601496 (lemmaNotSameHashThenCannotContainKey!75 lm!1707 key!3918 (_1!27688 (h!54828 (toList!3191 lm!1707))) hashF!1247))))

(declare-fun b!4394240 () Bool)

(assert (=> b!4394240 (= e!2735954 (forall!9316 (toList!3191 lt!1601495) lambda!147532))))

(assert (= (and start!426486 res!1811514) b!4394236))

(assert (= (and b!4394236 res!1811518) b!4394230))

(assert (= (and b!4394230 res!1811515) b!4394233))

(assert (= (and b!4394233 res!1811517) b!4394237))

(assert (= (and b!4394237 res!1811522) b!4394231))

(assert (= (and b!4394231 res!1811519) b!4394238))

(assert (= (and b!4394238 (not res!1811516)) b!4394234))

(assert (= (and b!4394234 (not res!1811523)) b!4394232))

(assert (= (and b!4394232 res!1811520) b!4394240))

(assert (= (and b!4394232 (not res!1811521)) b!4394239))

(assert (= (and start!426486 (is-Cons!49218 newBucket!200)) b!4394229))

(assert (= start!426486 b!4394235))

(declare-fun m!5054327 () Bool)

(assert (=> b!4394233 m!5054327))

(declare-fun m!5054329 () Bool)

(assert (=> b!4394237 m!5054329))

(assert (=> b!4394237 m!5054329))

(declare-fun m!5054331 () Bool)

(assert (=> b!4394237 m!5054331))

(declare-fun m!5054333 () Bool)

(assert (=> b!4394231 m!5054333))

(declare-fun m!5054335 () Bool)

(assert (=> b!4394240 m!5054335))

(declare-fun m!5054337 () Bool)

(assert (=> b!4394234 m!5054337))

(declare-fun m!5054339 () Bool)

(assert (=> b!4394239 m!5054339))

(declare-fun m!5054341 () Bool)

(assert (=> b!4394239 m!5054341))

(assert (=> b!4394239 m!5054341))

(declare-fun m!5054343 () Bool)

(assert (=> b!4394239 m!5054343))

(declare-fun m!5054345 () Bool)

(assert (=> b!4394239 m!5054345))

(declare-fun m!5054347 () Bool)

(assert (=> b!4394230 m!5054347))

(assert (=> b!4394232 m!5054335))

(declare-fun m!5054349 () Bool)

(assert (=> b!4394232 m!5054349))

(declare-fun m!5054351 () Bool)

(assert (=> b!4394232 m!5054351))

(declare-fun m!5054353 () Bool)

(assert (=> b!4394232 m!5054353))

(declare-fun m!5054355 () Bool)

(assert (=> b!4394238 m!5054355))

(declare-fun m!5054357 () Bool)

(assert (=> b!4394238 m!5054357))

(declare-fun m!5054359 () Bool)

(assert (=> b!4394238 m!5054359))

(declare-fun m!5054361 () Bool)

(assert (=> b!4394238 m!5054361))

(declare-fun m!5054363 () Bool)

(assert (=> b!4394238 m!5054363))

(declare-fun m!5054365 () Bool)

(assert (=> b!4394236 m!5054365))

(assert (=> start!426486 m!5054353))

(declare-fun m!5054367 () Bool)

(assert (=> start!426486 m!5054367))

(push 1)

(assert (not b!4394230))

(assert (not b!4394232))

(assert (not start!426486))

(assert tp_is_empty!25655)

(assert (not b!4394229))

(assert (not b!4394237))

(assert (not b!4394235))

(assert (not b!4394239))

(assert (not b!4394240))

(assert (not b!4394231))

(assert (not b!4394233))

(assert (not b!4394234))

(assert (not b!4394238))

(assert (not b!4394236))

(assert tp_is_empty!25653)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1323778 () Bool)

(assert (=> d!1323778 true))

(assert (=> d!1323778 true))

(declare-fun lambda!147546 () Int)

(declare-fun forall!9318 (List!49342 Int) Bool)

(assert (=> d!1323778 (= (allKeysSameHash!562 newBucket!200 hash!377 hashF!1247) (forall!9318 newBucket!200 lambda!147546))))

(declare-fun bs!726239 () Bool)

(assert (= bs!726239 d!1323778))

(declare-fun m!5054411 () Bool)

(assert (=> bs!726239 m!5054411))

(assert (=> b!4394233 d!1323778))

(declare-fun d!1323782 () Bool)

(declare-fun res!1811558 () Bool)

(declare-fun e!2735979 () Bool)

(assert (=> d!1323782 (=> res!1811558 e!2735979)))

(assert (=> d!1323782 (= res!1811558 (not (is-Cons!49218 newBucket!200)))))

(assert (=> d!1323782 (= (noDuplicateKeys!604 newBucket!200) e!2735979)))

(declare-fun b!4394285 () Bool)

(declare-fun e!2735980 () Bool)

(assert (=> b!4394285 (= e!2735979 e!2735980)))

(declare-fun res!1811559 () Bool)

(assert (=> b!4394285 (=> (not res!1811559) (not e!2735980))))

(assert (=> b!4394285 (= res!1811559 (not (containsKey!882 (t!356276 newBucket!200) (_1!27687 (h!54827 newBucket!200)))))))

(declare-fun b!4394286 () Bool)

(assert (=> b!4394286 (= e!2735980 (noDuplicateKeys!604 (t!356276 newBucket!200)))))

(assert (= (and d!1323782 (not res!1811558)) b!4394285))

(assert (= (and b!4394285 res!1811559) b!4394286))

(declare-fun m!5054413 () Bool)

(assert (=> b!4394285 m!5054413))

(declare-fun m!5054415 () Bool)

(assert (=> b!4394286 m!5054415))

(assert (=> b!4394234 d!1323782))

(declare-fun b!4394311 () Bool)

(assert (=> b!4394311 false))

(declare-fun lt!1601540 () Unit!78197)

(declare-fun lt!1601545 () Unit!78197)

(assert (=> b!4394311 (= lt!1601540 lt!1601545)))

(declare-fun containsKey!884 (List!49342 K!10578) Bool)

(assert (=> b!4394311 (containsKey!884 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!180 (List!49342 K!10578) Unit!78197)

(assert (=> b!4394311 (= lt!1601545 (lemmaInGetKeysListThenContainsKey!180 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) key!3918))))

(declare-fun e!2736003 () Unit!78197)

(declare-fun Unit!78201 () Unit!78197)

(assert (=> b!4394311 (= e!2736003 Unit!78201)))

(declare-fun b!4394312 () Bool)

(declare-fun e!2736001 () Unit!78197)

(assert (=> b!4394312 (= e!2736001 e!2736003)))

(declare-fun c!748049 () Bool)

(declare-fun call!305898 () Bool)

(assert (=> b!4394312 (= c!748049 call!305898)))

(declare-fun b!4394313 () Bool)

(declare-fun e!2735999 () Bool)

(declare-fun e!2736004 () Bool)

(assert (=> b!4394313 (= e!2735999 e!2736004)))

(declare-fun res!1811573 () Bool)

(assert (=> b!4394313 (=> (not res!1811573) (not e!2736004))))

(declare-datatypes ((Option!10581 0))(
  ( (None!10580) (Some!10580 (v!43630 V!10824)) )
))
(declare-fun isDefined!7875 (Option!10581) Bool)

(declare-fun getValueByKey!567 (List!49342 K!10578) Option!10581)

(assert (=> b!4394313 (= res!1811573 (isDefined!7875 (getValueByKey!567 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) key!3918)))))

(declare-fun bm!305893 () Bool)

(declare-datatypes ((List!49346 0))(
  ( (Nil!49222) (Cons!49222 (h!54833 K!10578) (t!356280 List!49346)) )
))
(declare-fun e!2736000 () List!49346)

(declare-fun contains!11590 (List!49346 K!10578) Bool)

(assert (=> bm!305893 (= call!305898 (contains!11590 e!2736000 key!3918))))

(declare-fun c!748047 () Bool)

(declare-fun c!748048 () Bool)

(assert (=> bm!305893 (= c!748047 c!748048)))

(declare-fun d!1323784 () Bool)

(assert (=> d!1323784 e!2735999))

(declare-fun res!1811574 () Bool)

(assert (=> d!1323784 (=> res!1811574 e!2735999)))

(declare-fun e!2736002 () Bool)

(assert (=> d!1323784 (= res!1811574 e!2736002)))

(declare-fun res!1811572 () Bool)

(assert (=> d!1323784 (=> (not res!1811572) (not e!2736002))))

(declare-fun lt!1601541 () Bool)

(assert (=> d!1323784 (= res!1811572 (not lt!1601541))))

(declare-fun lt!1601544 () Bool)

(assert (=> d!1323784 (= lt!1601541 lt!1601544)))

(declare-fun lt!1601546 () Unit!78197)

(assert (=> d!1323784 (= lt!1601546 e!2736001)))

(assert (=> d!1323784 (= c!748048 lt!1601544)))

(assert (=> d!1323784 (= lt!1601544 (containsKey!884 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) key!3918))))

(assert (=> d!1323784 (= (contains!11585 (extractMap!663 (toList!3191 lm!1707)) key!3918) lt!1601541)))

(declare-fun b!4394314 () Bool)

(declare-fun keys!16710 (ListMap!2435) List!49346)

(assert (=> b!4394314 (= e!2736002 (not (contains!11590 (keys!16710 (extractMap!663 (toList!3191 lm!1707))) key!3918)))))

(declare-fun b!4394315 () Bool)

(declare-fun Unit!78202 () Unit!78197)

(assert (=> b!4394315 (= e!2736003 Unit!78202)))

(declare-fun b!4394316 () Bool)

(assert (=> b!4394316 (= e!2736000 (keys!16710 (extractMap!663 (toList!3191 lm!1707))))))

(declare-fun b!4394317 () Bool)

(assert (=> b!4394317 (= e!2736004 (contains!11590 (keys!16710 (extractMap!663 (toList!3191 lm!1707))) key!3918))))

(declare-fun b!4394318 () Bool)

(declare-fun getKeysList!182 (List!49342) List!49346)

(assert (=> b!4394318 (= e!2736000 (getKeysList!182 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))))))

(declare-fun b!4394319 () Bool)

(declare-fun lt!1601543 () Unit!78197)

(assert (=> b!4394319 (= e!2736001 lt!1601543)))

(declare-fun lt!1601547 () Unit!78197)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!478 (List!49342 K!10578) Unit!78197)

(assert (=> b!4394319 (= lt!1601547 (lemmaContainsKeyImpliesGetValueByKeyDefined!478 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) key!3918))))

(assert (=> b!4394319 (isDefined!7875 (getValueByKey!567 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) key!3918))))

(declare-fun lt!1601542 () Unit!78197)

(assert (=> b!4394319 (= lt!1601542 lt!1601547)))

(declare-fun lemmaInListThenGetKeysListContains!179 (List!49342 K!10578) Unit!78197)

(assert (=> b!4394319 (= lt!1601543 (lemmaInListThenGetKeysListContains!179 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) key!3918))))

(assert (=> b!4394319 call!305898))

(assert (= (and d!1323784 c!748048) b!4394319))

(assert (= (and d!1323784 (not c!748048)) b!4394312))

(assert (= (and b!4394312 c!748049) b!4394311))

(assert (= (and b!4394312 (not c!748049)) b!4394315))

(assert (= (or b!4394319 b!4394312) bm!305893))

(assert (= (and bm!305893 c!748047) b!4394318))

(assert (= (and bm!305893 (not c!748047)) b!4394316))

(assert (= (and d!1323784 res!1811572) b!4394314))

(assert (= (and d!1323784 (not res!1811574)) b!4394313))

(assert (= (and b!4394313 res!1811573) b!4394317))

(declare-fun m!5054427 () Bool)

(assert (=> b!4394318 m!5054427))

(declare-fun m!5054429 () Bool)

(assert (=> b!4394319 m!5054429))

(declare-fun m!5054431 () Bool)

(assert (=> b!4394319 m!5054431))

(assert (=> b!4394319 m!5054431))

(declare-fun m!5054433 () Bool)

(assert (=> b!4394319 m!5054433))

(declare-fun m!5054435 () Bool)

(assert (=> b!4394319 m!5054435))

(declare-fun m!5054437 () Bool)

(assert (=> bm!305893 m!5054437))

(declare-fun m!5054439 () Bool)

(assert (=> b!4394311 m!5054439))

(declare-fun m!5054441 () Bool)

(assert (=> b!4394311 m!5054441))

(assert (=> b!4394314 m!5054329))

(declare-fun m!5054443 () Bool)

(assert (=> b!4394314 m!5054443))

(assert (=> b!4394314 m!5054443))

(declare-fun m!5054445 () Bool)

(assert (=> b!4394314 m!5054445))

(assert (=> b!4394313 m!5054431))

(assert (=> b!4394313 m!5054431))

(assert (=> b!4394313 m!5054433))

(assert (=> b!4394316 m!5054329))

(assert (=> b!4394316 m!5054443))

(assert (=> b!4394317 m!5054329))

(assert (=> b!4394317 m!5054443))

(assert (=> b!4394317 m!5054443))

(assert (=> b!4394317 m!5054445))

(assert (=> d!1323784 m!5054439))

(assert (=> b!4394237 d!1323784))

(declare-fun bs!726241 () Bool)

(declare-fun d!1323790 () Bool)

(assert (= bs!726241 (and d!1323790 start!426486)))

(declare-fun lambda!147549 () Int)

(assert (=> bs!726241 (= lambda!147549 lambda!147532)))

(declare-fun lt!1601555 () ListMap!2435)

(declare-fun invariantList!734 (List!49342) Bool)

(assert (=> d!1323790 (invariantList!734 (toList!3192 lt!1601555))))

(declare-fun e!2736014 () ListMap!2435)

(assert (=> d!1323790 (= lt!1601555 e!2736014)))

(declare-fun c!748056 () Bool)

(assert (=> d!1323790 (= c!748056 (is-Cons!49219 (toList!3191 lm!1707)))))

(assert (=> d!1323790 (forall!9316 (toList!3191 lm!1707) lambda!147549)))

(assert (=> d!1323790 (= (extractMap!663 (toList!3191 lm!1707)) lt!1601555)))

(declare-fun b!4394335 () Bool)

(declare-fun addToMapMapFromBucket!279 (List!49342 ListMap!2435) ListMap!2435)

(assert (=> b!4394335 (= e!2736014 (addToMapMapFromBucket!279 (_2!27688 (h!54828 (toList!3191 lm!1707))) (extractMap!663 (t!356277 (toList!3191 lm!1707)))))))

(declare-fun b!4394336 () Bool)

(assert (=> b!4394336 (= e!2736014 (ListMap!2436 Nil!49218))))

(assert (= (and d!1323790 c!748056) b!4394335))

(assert (= (and d!1323790 (not c!748056)) b!4394336))

(declare-fun m!5054453 () Bool)

(assert (=> d!1323790 m!5054453))

(declare-fun m!5054455 () Bool)

(assert (=> d!1323790 m!5054455))

(declare-fun m!5054457 () Bool)

(assert (=> b!4394335 m!5054457))

(assert (=> b!4394335 m!5054457))

(declare-fun m!5054459 () Bool)

(assert (=> b!4394335 m!5054459))

(assert (=> b!4394237 d!1323790))

(declare-fun d!1323794 () Bool)

(declare-datatypes ((Option!10582 0))(
  ( (None!10581) (Some!10581 (v!43631 List!49342)) )
))
(declare-fun get!16015 (Option!10582) List!49342)

(declare-fun getValueByKey!568 (List!49343 (_ BitVec 64)) Option!10582)

(assert (=> d!1323794 (= (apply!11456 lm!1707 hash!377) (get!16015 (getValueByKey!568 (toList!3191 lm!1707) hash!377)))))

(declare-fun bs!726242 () Bool)

(assert (= bs!726242 d!1323794))

(declare-fun m!5054467 () Bool)

(assert (=> bs!726242 m!5054467))

(assert (=> bs!726242 m!5054467))

(declare-fun m!5054469 () Bool)

(assert (=> bs!726242 m!5054469))

(assert (=> b!4394238 d!1323794))

(declare-fun d!1323798 () Bool)

(declare-fun dynLambda!20736 (Int tuple2!48788) Bool)

(assert (=> d!1323798 (dynLambda!20736 lambda!147532 lt!1601499)))

(declare-fun lt!1601559 () Unit!78197)

(declare-fun choose!27449 (List!49343 Int tuple2!48788) Unit!78197)

(assert (=> d!1323798 (= lt!1601559 (choose!27449 (toList!3191 lm!1707) lambda!147532 lt!1601499))))

(declare-fun e!2736019 () Bool)

(assert (=> d!1323798 e!2736019))

(declare-fun res!1811580 () Bool)

(assert (=> d!1323798 (=> (not res!1811580) (not e!2736019))))

(assert (=> d!1323798 (= res!1811580 (forall!9316 (toList!3191 lm!1707) lambda!147532))))

(assert (=> d!1323798 (= (forallContained!1954 (toList!3191 lm!1707) lambda!147532 lt!1601499) lt!1601559)))

(declare-fun b!4394343 () Bool)

(assert (=> b!4394343 (= e!2736019 (contains!11586 (toList!3191 lm!1707) lt!1601499))))

(assert (= (and d!1323798 res!1811580) b!4394343))

(declare-fun b_lambda!138969 () Bool)

(assert (=> (not b_lambda!138969) (not d!1323798)))

(declare-fun m!5054471 () Bool)

(assert (=> d!1323798 m!5054471))

(declare-fun m!5054473 () Bool)

(assert (=> d!1323798 m!5054473))

(assert (=> d!1323798 m!5054353))

(assert (=> b!4394343 m!5054363))

(assert (=> b!4394238 d!1323798))

(declare-fun d!1323800 () Bool)

(declare-fun lt!1601564 () Bool)

(declare-fun content!7843 (List!49343) (Set tuple2!48788))

(assert (=> d!1323800 (= lt!1601564 (set.member lt!1601499 (content!7843 (toList!3191 lm!1707))))))

(declare-fun e!2736027 () Bool)

(assert (=> d!1323800 (= lt!1601564 e!2736027)))

(declare-fun res!1811587 () Bool)

(assert (=> d!1323800 (=> (not res!1811587) (not e!2736027))))

(assert (=> d!1323800 (= res!1811587 (is-Cons!49219 (toList!3191 lm!1707)))))

(assert (=> d!1323800 (= (contains!11586 (toList!3191 lm!1707) lt!1601499) lt!1601564)))

(declare-fun b!4394350 () Bool)

(declare-fun e!2736026 () Bool)

(assert (=> b!4394350 (= e!2736027 e!2736026)))

(declare-fun res!1811588 () Bool)

(assert (=> b!4394350 (=> res!1811588 e!2736026)))

(assert (=> b!4394350 (= res!1811588 (= (h!54828 (toList!3191 lm!1707)) lt!1601499))))

(declare-fun b!4394351 () Bool)

(assert (=> b!4394351 (= e!2736026 (contains!11586 (t!356277 (toList!3191 lm!1707)) lt!1601499))))

(assert (= (and d!1323800 res!1811587) b!4394350))

(assert (= (and b!4394350 (not res!1811588)) b!4394351))

(declare-fun m!5054475 () Bool)

(assert (=> d!1323800 m!5054475))

(declare-fun m!5054477 () Bool)

(assert (=> d!1323800 m!5054477))

(declare-fun m!5054479 () Bool)

(assert (=> b!4394351 m!5054479))

(assert (=> b!4394238 d!1323800))

(declare-fun b!4394363 () Bool)

(declare-fun e!2736034 () List!49342)

(assert (=> b!4394363 (= e!2736034 (Cons!49218 (h!54827 lt!1601493) (removePairForKey!572 (t!356276 lt!1601493) key!3918)))))

(declare-fun b!4394362 () Bool)

(declare-fun e!2736033 () List!49342)

(assert (=> b!4394362 (= e!2736033 e!2736034)))

(declare-fun c!748064 () Bool)

(assert (=> b!4394362 (= c!748064 (is-Cons!49218 lt!1601493))))

(declare-fun b!4394364 () Bool)

(assert (=> b!4394364 (= e!2736034 Nil!49218)))

(declare-fun d!1323802 () Bool)

(declare-fun lt!1601568 () List!49342)

(assert (=> d!1323802 (not (containsKey!882 lt!1601568 key!3918))))

(assert (=> d!1323802 (= lt!1601568 e!2736033)))

(declare-fun c!748063 () Bool)

(assert (=> d!1323802 (= c!748063 (and (is-Cons!49218 lt!1601493) (= (_1!27687 (h!54827 lt!1601493)) key!3918)))))

(assert (=> d!1323802 (noDuplicateKeys!604 lt!1601493)))

(assert (=> d!1323802 (= (removePairForKey!572 lt!1601493 key!3918) lt!1601568)))

(declare-fun b!4394361 () Bool)

(assert (=> b!4394361 (= e!2736033 (t!356276 lt!1601493))))

(assert (= (and d!1323802 c!748063) b!4394361))

(assert (= (and d!1323802 (not c!748063)) b!4394362))

(assert (= (and b!4394362 c!748064) b!4394363))

(assert (= (and b!4394362 (not c!748064)) b!4394364))

(declare-fun m!5054485 () Bool)

(assert (=> b!4394363 m!5054485))

(declare-fun m!5054487 () Bool)

(assert (=> d!1323802 m!5054487))

(declare-fun m!5054489 () Bool)

(assert (=> d!1323802 m!5054489))

(assert (=> b!4394238 d!1323802))

(declare-fun d!1323806 () Bool)

(assert (=> d!1323806 (contains!11586 (toList!3191 lm!1707) (tuple2!48789 hash!377 lt!1601493))))

(declare-fun lt!1601571 () Unit!78197)

(declare-fun choose!27450 (List!49343 (_ BitVec 64) List!49342) Unit!78197)

(assert (=> d!1323806 (= lt!1601571 (choose!27450 (toList!3191 lm!1707) hash!377 lt!1601493))))

(declare-fun e!2736037 () Bool)

(assert (=> d!1323806 e!2736037))

(declare-fun res!1811592 () Bool)

(assert (=> d!1323806 (=> (not res!1811592) (not e!2736037))))

(declare-fun isStrictlySorted!161 (List!49343) Bool)

(assert (=> d!1323806 (= res!1811592 (isStrictlySorted!161 (toList!3191 lm!1707)))))

(assert (=> d!1323806 (= (lemmaGetValueByKeyImpliesContainsTuple!449 (toList!3191 lm!1707) hash!377 lt!1601493) lt!1601571)))

(declare-fun b!4394371 () Bool)

(assert (=> b!4394371 (= e!2736037 (= (getValueByKey!568 (toList!3191 lm!1707) hash!377) (Some!10581 lt!1601493)))))

(assert (= (and d!1323806 res!1811592) b!4394371))

(declare-fun m!5054493 () Bool)

(assert (=> d!1323806 m!5054493))

(declare-fun m!5054495 () Bool)

(assert (=> d!1323806 m!5054495))

(declare-fun m!5054497 () Bool)

(assert (=> d!1323806 m!5054497))

(assert (=> b!4394371 m!5054467))

(assert (=> b!4394238 d!1323806))

(declare-fun bs!726245 () Bool)

(declare-fun d!1323810 () Bool)

(assert (= bs!726245 (and d!1323810 start!426486)))

(declare-fun lambda!147555 () Int)

(assert (=> bs!726245 (not (= lambda!147555 lambda!147532))))

(declare-fun bs!726246 () Bool)

(assert (= bs!726246 (and d!1323810 d!1323790)))

(assert (=> bs!726246 (not (= lambda!147555 lambda!147549))))

(assert (=> d!1323810 true))

(assert (=> d!1323810 (= (allKeysSameHashInMap!708 lm!1707 hashF!1247) (forall!9316 (toList!3191 lm!1707) lambda!147555))))

(declare-fun bs!726247 () Bool)

(assert (= bs!726247 d!1323810))

(declare-fun m!5054501 () Bool)

(assert (=> bs!726247 m!5054501))

(assert (=> b!4394236 d!1323810))

(declare-fun d!1323814 () Bool)

(declare-fun res!1811601 () Bool)

(declare-fun e!2736046 () Bool)

(assert (=> d!1323814 (=> res!1811601 e!2736046)))

(assert (=> d!1323814 (= res!1811601 (is-Nil!49219 (toList!3191 lt!1601495)))))

(assert (=> d!1323814 (= (forall!9316 (toList!3191 lt!1601495) lambda!147532) e!2736046)))

(declare-fun b!4394382 () Bool)

(declare-fun e!2736047 () Bool)

(assert (=> b!4394382 (= e!2736046 e!2736047)))

(declare-fun res!1811602 () Bool)

(assert (=> b!4394382 (=> (not res!1811602) (not e!2736047))))

(assert (=> b!4394382 (= res!1811602 (dynLambda!20736 lambda!147532 (h!54828 (toList!3191 lt!1601495))))))

(declare-fun b!4394383 () Bool)

(assert (=> b!4394383 (= e!2736047 (forall!9316 (t!356277 (toList!3191 lt!1601495)) lambda!147532))))

(assert (= (and d!1323814 (not res!1811601)) b!4394382))

(assert (= (and b!4394382 res!1811602) b!4394383))

(declare-fun b_lambda!138973 () Bool)

(assert (=> (not b_lambda!138973) (not b!4394382)))

(declare-fun m!5054503 () Bool)

(assert (=> b!4394382 m!5054503))

(declare-fun m!5054505 () Bool)

(assert (=> b!4394383 m!5054505))

(assert (=> b!4394240 d!1323814))

(declare-fun d!1323816 () Bool)

(declare-fun hash!1806 (Hashable!4996 K!10578) (_ BitVec 64))

(assert (=> d!1323816 (= (hash!1803 hashF!1247 key!3918) (hash!1806 hashF!1247 key!3918))))

(declare-fun bs!726248 () Bool)

(assert (= bs!726248 d!1323816))

(declare-fun m!5054507 () Bool)

(assert (=> bs!726248 m!5054507))

(assert (=> b!4394230 d!1323816))

(declare-fun d!1323818 () Bool)

(declare-fun res!1811605 () Bool)

(declare-fun e!2736050 () Bool)

(assert (=> d!1323818 (=> res!1811605 e!2736050)))

(assert (=> d!1323818 (= res!1811605 (is-Nil!49219 (toList!3191 lm!1707)))))

(assert (=> d!1323818 (= (forall!9316 (toList!3191 lm!1707) lambda!147532) e!2736050)))

(declare-fun b!4394386 () Bool)

(declare-fun e!2736051 () Bool)

(assert (=> b!4394386 (= e!2736050 e!2736051)))

(declare-fun res!1811606 () Bool)

(assert (=> b!4394386 (=> (not res!1811606) (not e!2736051))))

(assert (=> b!4394386 (= res!1811606 (dynLambda!20736 lambda!147532 (h!54828 (toList!3191 lm!1707))))))

(declare-fun b!4394387 () Bool)

(assert (=> b!4394387 (= e!2736051 (forall!9316 (t!356277 (toList!3191 lm!1707)) lambda!147532))))

(assert (= (and d!1323818 (not res!1811605)) b!4394386))

(assert (= (and b!4394386 res!1811606) b!4394387))

(declare-fun b_lambda!138975 () Bool)

(assert (=> (not b_lambda!138975) (not b!4394386)))

(declare-fun m!5054511 () Bool)

(assert (=> b!4394386 m!5054511))

(declare-fun m!5054513 () Bool)

(assert (=> b!4394387 m!5054513))

(assert (=> start!426486 d!1323818))

(declare-fun d!1323820 () Bool)

(assert (=> d!1323820 (= (inv!64765 lm!1707) (isStrictlySorted!161 (toList!3191 lm!1707)))))

(declare-fun bs!726249 () Bool)

(assert (= bs!726249 d!1323820))

(assert (=> bs!726249 m!5054497))

(assert (=> start!426486 d!1323820))

(declare-fun d!1323824 () Bool)

(declare-fun res!1811611 () Bool)

(declare-fun e!2736056 () Bool)

(assert (=> d!1323824 (=> res!1811611 e!2736056)))

(assert (=> d!1323824 (= res!1811611 (and (is-Cons!49218 (_2!27688 (h!54828 (toList!3191 lm!1707)))) (= (_1!27687 (h!54827 (_2!27688 (h!54828 (toList!3191 lm!1707))))) key!3918)))))

(assert (=> d!1323824 (= (containsKey!882 (_2!27688 (h!54828 (toList!3191 lm!1707))) key!3918) e!2736056)))

(declare-fun b!4394392 () Bool)

(declare-fun e!2736057 () Bool)

(assert (=> b!4394392 (= e!2736056 e!2736057)))

(declare-fun res!1811612 () Bool)

(assert (=> b!4394392 (=> (not res!1811612) (not e!2736057))))

(assert (=> b!4394392 (= res!1811612 (is-Cons!49218 (_2!27688 (h!54828 (toList!3191 lm!1707)))))))

(declare-fun b!4394393 () Bool)

(assert (=> b!4394393 (= e!2736057 (containsKey!882 (t!356276 (_2!27688 (h!54828 (toList!3191 lm!1707)))) key!3918))))

(assert (= (and d!1323824 (not res!1811611)) b!4394392))

(assert (= (and b!4394392 res!1811612) b!4394393))

(declare-fun m!5054517 () Bool)

(assert (=> b!4394393 m!5054517))

(assert (=> b!4394239 d!1323824))

(declare-fun d!1323826 () Bool)

(declare-fun res!1811613 () Bool)

(declare-fun e!2736058 () Bool)

(assert (=> d!1323826 (=> res!1811613 e!2736058)))

(assert (=> d!1323826 (= res!1811613 (and (is-Cons!49218 (apply!11456 lm!1707 (_1!27688 (h!54828 (toList!3191 lm!1707))))) (= (_1!27687 (h!54827 (apply!11456 lm!1707 (_1!27688 (h!54828 (toList!3191 lm!1707)))))) key!3918)))))

(assert (=> d!1323826 (= (containsKey!882 (apply!11456 lm!1707 (_1!27688 (h!54828 (toList!3191 lm!1707)))) key!3918) e!2736058)))

(declare-fun b!4394394 () Bool)

(declare-fun e!2736059 () Bool)

(assert (=> b!4394394 (= e!2736058 e!2736059)))

(declare-fun res!1811614 () Bool)

(assert (=> b!4394394 (=> (not res!1811614) (not e!2736059))))

(assert (=> b!4394394 (= res!1811614 (is-Cons!49218 (apply!11456 lm!1707 (_1!27688 (h!54828 (toList!3191 lm!1707))))))))

(declare-fun b!4394395 () Bool)

(assert (=> b!4394395 (= e!2736059 (containsKey!882 (t!356276 (apply!11456 lm!1707 (_1!27688 (h!54828 (toList!3191 lm!1707))))) key!3918))))

(assert (= (and d!1323826 (not res!1811613)) b!4394394))

(assert (= (and b!4394394 res!1811614) b!4394395))

(declare-fun m!5054519 () Bool)

(assert (=> b!4394395 m!5054519))

(assert (=> b!4394239 d!1323826))

(declare-fun d!1323828 () Bool)

(assert (=> d!1323828 (= (apply!11456 lm!1707 (_1!27688 (h!54828 (toList!3191 lm!1707)))) (get!16015 (getValueByKey!568 (toList!3191 lm!1707) (_1!27688 (h!54828 (toList!3191 lm!1707))))))))

(declare-fun bs!726250 () Bool)

(assert (= bs!726250 d!1323828))

(declare-fun m!5054521 () Bool)

(assert (=> bs!726250 m!5054521))

(assert (=> bs!726250 m!5054521))

(declare-fun m!5054523 () Bool)

(assert (=> bs!726250 m!5054523))

(assert (=> b!4394239 d!1323828))

(declare-fun bs!726253 () Bool)

(declare-fun d!1323830 () Bool)

(assert (= bs!726253 (and d!1323830 start!426486)))

(declare-fun lambda!147561 () Int)

(assert (=> bs!726253 (= lambda!147561 lambda!147532)))

(declare-fun bs!726254 () Bool)

(assert (= bs!726254 (and d!1323830 d!1323790)))

(assert (=> bs!726254 (= lambda!147561 lambda!147549)))

(declare-fun bs!726255 () Bool)

(assert (= bs!726255 (and d!1323830 d!1323810)))

(assert (=> bs!726255 (not (= lambda!147561 lambda!147555))))

(assert (=> d!1323830 (not (containsKey!882 (apply!11456 lm!1707 (_1!27688 (h!54828 (toList!3191 lm!1707)))) key!3918))))

(declare-fun lt!1601574 () Unit!78197)

(declare-fun choose!27451 (ListLongMap!1841 K!10578 (_ BitVec 64) Hashable!4996) Unit!78197)

(assert (=> d!1323830 (= lt!1601574 (choose!27451 lm!1707 key!3918 (_1!27688 (h!54828 (toList!3191 lm!1707))) hashF!1247))))

(assert (=> d!1323830 (forall!9316 (toList!3191 lm!1707) lambda!147561)))

(assert (=> d!1323830 (= (lemmaNotSameHashThenCannotContainKey!75 lm!1707 key!3918 (_1!27688 (h!54828 (toList!3191 lm!1707))) hashF!1247) lt!1601574)))

(declare-fun bs!726256 () Bool)

(assert (= bs!726256 d!1323830))

(assert (=> bs!726256 m!5054341))

(assert (=> bs!726256 m!5054341))

(assert (=> bs!726256 m!5054343))

(declare-fun m!5054527 () Bool)

(assert (=> bs!726256 m!5054527))

(declare-fun m!5054529 () Bool)

(assert (=> bs!726256 m!5054529))

(assert (=> b!4394239 d!1323830))

(assert (=> b!4394232 d!1323814))

(declare-fun d!1323834 () Bool)

(declare-fun e!2736062 () Bool)

(assert (=> d!1323834 e!2736062))

(declare-fun res!1811619 () Bool)

(assert (=> d!1323834 (=> (not res!1811619) (not e!2736062))))

(declare-fun lt!1601584 () ListLongMap!1841)

(assert (=> d!1323834 (= res!1811619 (contains!11584 lt!1601584 (_1!27688 (tuple2!48789 hash!377 newBucket!200))))))

(declare-fun lt!1601583 () List!49343)

(assert (=> d!1323834 (= lt!1601584 (ListLongMap!1842 lt!1601583))))

(declare-fun lt!1601585 () Unit!78197)

(declare-fun lt!1601586 () Unit!78197)

(assert (=> d!1323834 (= lt!1601585 lt!1601586)))

(assert (=> d!1323834 (= (getValueByKey!568 lt!1601583 (_1!27688 (tuple2!48789 hash!377 newBucket!200))) (Some!10581 (_2!27688 (tuple2!48789 hash!377 newBucket!200))))))

(declare-fun lemmaContainsTupThenGetReturnValue!329 (List!49343 (_ BitVec 64) List!49342) Unit!78197)

(assert (=> d!1323834 (= lt!1601586 (lemmaContainsTupThenGetReturnValue!329 lt!1601583 (_1!27688 (tuple2!48789 hash!377 newBucket!200)) (_2!27688 (tuple2!48789 hash!377 newBucket!200))))))

(declare-fun insertStrictlySorted!188 (List!49343 (_ BitVec 64) List!49342) List!49343)

(assert (=> d!1323834 (= lt!1601583 (insertStrictlySorted!188 (toList!3191 lm!1707) (_1!27688 (tuple2!48789 hash!377 newBucket!200)) (_2!27688 (tuple2!48789 hash!377 newBucket!200))))))

(assert (=> d!1323834 (= (+!833 lm!1707 (tuple2!48789 hash!377 newBucket!200)) lt!1601584)))

(declare-fun b!4394402 () Bool)

(declare-fun res!1811620 () Bool)

(assert (=> b!4394402 (=> (not res!1811620) (not e!2736062))))

(assert (=> b!4394402 (= res!1811620 (= (getValueByKey!568 (toList!3191 lt!1601584) (_1!27688 (tuple2!48789 hash!377 newBucket!200))) (Some!10581 (_2!27688 (tuple2!48789 hash!377 newBucket!200)))))))

(declare-fun b!4394403 () Bool)

(assert (=> b!4394403 (= e!2736062 (contains!11586 (toList!3191 lt!1601584) (tuple2!48789 hash!377 newBucket!200)))))

(assert (= (and d!1323834 res!1811619) b!4394402))

(assert (= (and b!4394402 res!1811620) b!4394403))

(declare-fun m!5054531 () Bool)

(assert (=> d!1323834 m!5054531))

(declare-fun m!5054533 () Bool)

(assert (=> d!1323834 m!5054533))

(declare-fun m!5054535 () Bool)

(assert (=> d!1323834 m!5054535))

(declare-fun m!5054537 () Bool)

(assert (=> d!1323834 m!5054537))

(declare-fun m!5054539 () Bool)

(assert (=> b!4394402 m!5054539))

(declare-fun m!5054541 () Bool)

(assert (=> b!4394403 m!5054541))

(assert (=> b!4394232 d!1323834))

(declare-fun d!1323836 () Bool)

(assert (=> d!1323836 (forall!9316 (toList!3191 (+!833 lm!1707 (tuple2!48789 hash!377 newBucket!200))) lambda!147532)))

(declare-fun lt!1601589 () Unit!78197)

(declare-fun choose!27452 (ListLongMap!1841 Int (_ BitVec 64) List!49342) Unit!78197)

(assert (=> d!1323836 (= lt!1601589 (choose!27452 lm!1707 lambda!147532 hash!377 newBucket!200))))

(declare-fun e!2736065 () Bool)

(assert (=> d!1323836 e!2736065))

(declare-fun res!1811623 () Bool)

(assert (=> d!1323836 (=> (not res!1811623) (not e!2736065))))

(assert (=> d!1323836 (= res!1811623 (forall!9316 (toList!3191 lm!1707) lambda!147532))))

(assert (=> d!1323836 (= (addValidProp!250 lm!1707 lambda!147532 hash!377 newBucket!200) lt!1601589)))

(declare-fun b!4394407 () Bool)

(assert (=> b!4394407 (= e!2736065 (dynLambda!20736 lambda!147532 (tuple2!48789 hash!377 newBucket!200)))))

(assert (= (and d!1323836 res!1811623) b!4394407))

(declare-fun b_lambda!138977 () Bool)

(assert (=> (not b_lambda!138977) (not b!4394407)))

(assert (=> d!1323836 m!5054349))

(declare-fun m!5054543 () Bool)

(assert (=> d!1323836 m!5054543))

(declare-fun m!5054545 () Bool)

(assert (=> d!1323836 m!5054545))

(assert (=> d!1323836 m!5054353))

(declare-fun m!5054547 () Bool)

(assert (=> b!4394407 m!5054547))

(assert (=> b!4394232 d!1323836))

(assert (=> b!4394232 d!1323818))

(declare-fun d!1323838 () Bool)

(declare-fun e!2736070 () Bool)

(assert (=> d!1323838 e!2736070))

(declare-fun res!1811626 () Bool)

(assert (=> d!1323838 (=> res!1811626 e!2736070)))

(declare-fun lt!1601598 () Bool)

(assert (=> d!1323838 (= res!1811626 (not lt!1601598))))

(declare-fun lt!1601600 () Bool)

(assert (=> d!1323838 (= lt!1601598 lt!1601600)))

(declare-fun lt!1601601 () Unit!78197)

(declare-fun e!2736071 () Unit!78197)

(assert (=> d!1323838 (= lt!1601601 e!2736071)))

(declare-fun c!748067 () Bool)

(assert (=> d!1323838 (= c!748067 lt!1601600)))

(declare-fun containsKey!885 (List!49343 (_ BitVec 64)) Bool)

(assert (=> d!1323838 (= lt!1601600 (containsKey!885 (toList!3191 lm!1707) hash!377))))

(assert (=> d!1323838 (= (contains!11584 lm!1707 hash!377) lt!1601598)))

(declare-fun b!4394414 () Bool)

(declare-fun lt!1601599 () Unit!78197)

(assert (=> b!4394414 (= e!2736071 lt!1601599)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!479 (List!49343 (_ BitVec 64)) Unit!78197)

(assert (=> b!4394414 (= lt!1601599 (lemmaContainsKeyImpliesGetValueByKeyDefined!479 (toList!3191 lm!1707) hash!377))))

(declare-fun isDefined!7876 (Option!10582) Bool)

(assert (=> b!4394414 (isDefined!7876 (getValueByKey!568 (toList!3191 lm!1707) hash!377))))

(declare-fun b!4394415 () Bool)

(declare-fun Unit!78203 () Unit!78197)

(assert (=> b!4394415 (= e!2736071 Unit!78203)))

(declare-fun b!4394416 () Bool)

(assert (=> b!4394416 (= e!2736070 (isDefined!7876 (getValueByKey!568 (toList!3191 lm!1707) hash!377)))))

(assert (= (and d!1323838 c!748067) b!4394414))

(assert (= (and d!1323838 (not c!748067)) b!4394415))

(assert (= (and d!1323838 (not res!1811626)) b!4394416))

(declare-fun m!5054549 () Bool)

(assert (=> d!1323838 m!5054549))

(declare-fun m!5054551 () Bool)

(assert (=> b!4394414 m!5054551))

(assert (=> b!4394414 m!5054467))

(assert (=> b!4394414 m!5054467))

(declare-fun m!5054553 () Bool)

(assert (=> b!4394414 m!5054553))

(assert (=> b!4394416 m!5054467))

(assert (=> b!4394416 m!5054467))

(assert (=> b!4394416 m!5054553))

(assert (=> b!4394231 d!1323838))

(declare-fun e!2736074 () Bool)

(declare-fun tp!1331499 () Bool)

(declare-fun b!4394421 () Bool)

(assert (=> b!4394421 (= e!2736074 (and tp_is_empty!25653 tp_is_empty!25655 tp!1331499))))

(assert (=> b!4394229 (= tp!1331489 e!2736074)))

(assert (= (and b!4394229 (is-Cons!49218 (t!356276 newBucket!200))) b!4394421))

(declare-fun b!4394426 () Bool)

(declare-fun e!2736077 () Bool)

(declare-fun tp!1331504 () Bool)

(declare-fun tp!1331505 () Bool)

(assert (=> b!4394426 (= e!2736077 (and tp!1331504 tp!1331505))))

(assert (=> b!4394235 (= tp!1331490 e!2736077)))

(assert (= (and b!4394235 (is-Cons!49219 (toList!3191 lm!1707))) b!4394426))

(declare-fun b_lambda!138979 () Bool)

(assert (= b_lambda!138975 (or start!426486 b_lambda!138979)))

(declare-fun bs!726257 () Bool)

(declare-fun d!1323840 () Bool)

(assert (= bs!726257 (and d!1323840 start!426486)))

(assert (=> bs!726257 (= (dynLambda!20736 lambda!147532 (h!54828 (toList!3191 lm!1707))) (noDuplicateKeys!604 (_2!27688 (h!54828 (toList!3191 lm!1707)))))))

(declare-fun m!5054555 () Bool)

(assert (=> bs!726257 m!5054555))

(assert (=> b!4394386 d!1323840))

(declare-fun b_lambda!138981 () Bool)

(assert (= b_lambda!138977 (or start!426486 b_lambda!138981)))

(declare-fun bs!726258 () Bool)

(declare-fun d!1323842 () Bool)

(assert (= bs!726258 (and d!1323842 start!426486)))

(assert (=> bs!726258 (= (dynLambda!20736 lambda!147532 (tuple2!48789 hash!377 newBucket!200)) (noDuplicateKeys!604 (_2!27688 (tuple2!48789 hash!377 newBucket!200))))))

(declare-fun m!5054557 () Bool)

(assert (=> bs!726258 m!5054557))

(assert (=> b!4394407 d!1323842))

(declare-fun b_lambda!138983 () Bool)

(assert (= b_lambda!138973 (or start!426486 b_lambda!138983)))

(declare-fun bs!726259 () Bool)

(declare-fun d!1323844 () Bool)

(assert (= bs!726259 (and d!1323844 start!426486)))

(assert (=> bs!726259 (= (dynLambda!20736 lambda!147532 (h!54828 (toList!3191 lt!1601495))) (noDuplicateKeys!604 (_2!27688 (h!54828 (toList!3191 lt!1601495)))))))

(declare-fun m!5054559 () Bool)

(assert (=> bs!726259 m!5054559))

(assert (=> b!4394382 d!1323844))

(declare-fun b_lambda!138985 () Bool)

(assert (= b_lambda!138969 (or start!426486 b_lambda!138985)))

(declare-fun bs!726260 () Bool)

(declare-fun d!1323846 () Bool)

(assert (= bs!726260 (and d!1323846 start!426486)))

(assert (=> bs!726260 (= (dynLambda!20736 lambda!147532 lt!1601499) (noDuplicateKeys!604 (_2!27688 lt!1601499)))))

(declare-fun m!5054561 () Bool)

(assert (=> bs!726260 m!5054561))

(assert (=> d!1323798 d!1323846))

(push 1)

(assert (not b!4394421))

(assert (not d!1323800))

(assert (not b_lambda!138979))

(assert (not b!4394363))

(assert (not d!1323836))

(assert (not bs!726260))

(assert (not d!1323834))

(assert (not d!1323802))

(assert (not d!1323820))

(assert (not bs!726259))

(assert (not b!4394313))

(assert (not b!4394371))

(assert (not d!1323828))

(assert (not b!4394426))

(assert (not b!4394343))

(assert (not d!1323816))

(assert (not d!1323806))

(assert (not b_lambda!138985))

(assert (not d!1323784))

(assert (not b!4394285))

(assert (not b!4394335))

(assert (not b!4394383))

(assert (not b!4394416))

(assert (not b!4394403))

(assert (not d!1323830))

(assert (not b!4394414))

(assert (not b!4394317))

(assert (not b_lambda!138983))

(assert (not b!4394395))

(assert (not b!4394286))

(assert (not b!4394319))

(assert tp_is_empty!25655)

(assert (not b!4394311))

(assert (not d!1323810))

(assert (not bs!726258))

(assert (not bs!726257))

(assert (not bm!305893))

(assert (not d!1323778))

(assert (not d!1323794))

(assert (not b!4394316))

(assert (not b!4394351))

(assert (not d!1323838))

(assert (not d!1323798))

(assert (not b!4394314))

(assert (not b!4394318))

(assert (not b!4394393))

(assert (not b_lambda!138981))

(assert (not d!1323790))

(assert (not b!4394387))

(assert (not b!4394402))

(assert tp_is_empty!25653)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!726273 () Bool)

(declare-fun b!4394516 () Bool)

(assert (= bs!726273 (and b!4394516 d!1323778)))

(declare-fun lambda!147596 () Int)

(assert (=> bs!726273 (not (= lambda!147596 lambda!147546))))

(assert (=> b!4394516 true))

(declare-fun bs!726274 () Bool)

(declare-fun b!4394517 () Bool)

(assert (= bs!726274 (and b!4394517 d!1323778)))

(declare-fun lambda!147597 () Int)

(assert (=> bs!726274 (not (= lambda!147597 lambda!147546))))

(declare-fun bs!726275 () Bool)

(assert (= bs!726275 (and b!4394517 b!4394516)))

(assert (=> bs!726275 (= lambda!147597 lambda!147596)))

(assert (=> b!4394517 true))

(declare-fun lambda!147598 () Int)

(assert (=> bs!726274 (not (= lambda!147598 lambda!147546))))

(declare-fun lt!1601712 () ListMap!2435)

(assert (=> bs!726275 (= (= lt!1601712 (extractMap!663 (t!356277 (toList!3191 lm!1707)))) (= lambda!147598 lambda!147596))))

(assert (=> b!4394517 (= (= lt!1601712 (extractMap!663 (t!356277 (toList!3191 lm!1707)))) (= lambda!147598 lambda!147597))))

(assert (=> b!4394517 true))

(declare-fun bs!726276 () Bool)

(declare-fun d!1323878 () Bool)

(assert (= bs!726276 (and d!1323878 d!1323778)))

(declare-fun lambda!147599 () Int)

(assert (=> bs!726276 (not (= lambda!147599 lambda!147546))))

(declare-fun bs!726277 () Bool)

(assert (= bs!726277 (and d!1323878 b!4394516)))

(declare-fun lt!1601710 () ListMap!2435)

(assert (=> bs!726277 (= (= lt!1601710 (extractMap!663 (t!356277 (toList!3191 lm!1707)))) (= lambda!147599 lambda!147596))))

(declare-fun bs!726278 () Bool)

(assert (= bs!726278 (and d!1323878 b!4394517)))

(assert (=> bs!726278 (= (= lt!1601710 (extractMap!663 (t!356277 (toList!3191 lm!1707)))) (= lambda!147599 lambda!147597))))

(assert (=> bs!726278 (= (= lt!1601710 lt!1601712) (= lambda!147599 lambda!147598))))

(assert (=> d!1323878 true))

(declare-fun c!748085 () Bool)

(declare-fun bm!305903 () Bool)

(declare-fun call!305908 () Bool)

(assert (=> bm!305903 (= call!305908 (forall!9318 (ite c!748085 (toList!3192 (extractMap!663 (t!356277 (toList!3191 lm!1707)))) (t!356276 (_2!27688 (h!54828 (toList!3191 lm!1707))))) (ite c!748085 lambda!147596 lambda!147598)))))

(declare-fun e!2736141 () Bool)

(assert (=> d!1323878 e!2736141))

(declare-fun res!1811672 () Bool)

(assert (=> d!1323878 (=> (not res!1811672) (not e!2736141))))

(assert (=> d!1323878 (= res!1811672 (forall!9318 (_2!27688 (h!54828 (toList!3191 lm!1707))) lambda!147599))))

(declare-fun e!2736139 () ListMap!2435)

(assert (=> d!1323878 (= lt!1601710 e!2736139)))

(assert (=> d!1323878 (= c!748085 (is-Nil!49218 (_2!27688 (h!54828 (toList!3191 lm!1707)))))))

(assert (=> d!1323878 (noDuplicateKeys!604 (_2!27688 (h!54828 (toList!3191 lm!1707))))))

(assert (=> d!1323878 (= (addToMapMapFromBucket!279 (_2!27688 (h!54828 (toList!3191 lm!1707))) (extractMap!663 (t!356277 (toList!3191 lm!1707)))) lt!1601710)))

(declare-fun bm!305904 () Bool)

(declare-fun call!305909 () Unit!78197)

(declare-fun lemmaContainsAllItsOwnKeys!116 (ListMap!2435) Unit!78197)

(assert (=> bm!305904 (= call!305909 (lemmaContainsAllItsOwnKeys!116 (extractMap!663 (t!356277 (toList!3191 lm!1707)))))))

(declare-fun b!4394515 () Bool)

(declare-fun e!2736140 () Bool)

(assert (=> b!4394515 (= e!2736140 (forall!9318 (toList!3192 (extractMap!663 (t!356277 (toList!3191 lm!1707)))) lambda!147598))))

(assert (=> b!4394516 (= e!2736139 (extractMap!663 (t!356277 (toList!3191 lm!1707))))))

(declare-fun lt!1601707 () Unit!78197)

(assert (=> b!4394516 (= lt!1601707 call!305909)))

(assert (=> b!4394516 call!305908))

(declare-fun lt!1601716 () Unit!78197)

(assert (=> b!4394516 (= lt!1601716 lt!1601707)))

(declare-fun call!305910 () Bool)

(assert (=> b!4394516 call!305910))

(declare-fun lt!1601713 () Unit!78197)

(declare-fun Unit!78207 () Unit!78197)

(assert (=> b!4394516 (= lt!1601713 Unit!78207)))

(assert (=> b!4394517 (= e!2736139 lt!1601712)))

(declare-fun lt!1601703 () ListMap!2435)

(declare-fun +!835 (ListMap!2435 tuple2!48786) ListMap!2435)

(assert (=> b!4394517 (= lt!1601703 (+!835 (extractMap!663 (t!356277 (toList!3191 lm!1707))) (h!54827 (_2!27688 (h!54828 (toList!3191 lm!1707))))))))

(assert (=> b!4394517 (= lt!1601712 (addToMapMapFromBucket!279 (t!356276 (_2!27688 (h!54828 (toList!3191 lm!1707)))) (+!835 (extractMap!663 (t!356277 (toList!3191 lm!1707))) (h!54827 (_2!27688 (h!54828 (toList!3191 lm!1707)))))))))

(declare-fun lt!1601704 () Unit!78197)

(assert (=> b!4394517 (= lt!1601704 call!305909)))

(assert (=> b!4394517 (forall!9318 (toList!3192 (extractMap!663 (t!356277 (toList!3191 lm!1707)))) lambda!147597)))

(declare-fun lt!1601718 () Unit!78197)

(assert (=> b!4394517 (= lt!1601718 lt!1601704)))

(assert (=> b!4394517 (forall!9318 (toList!3192 lt!1601703) lambda!147598)))

(declare-fun lt!1601701 () Unit!78197)

(declare-fun Unit!78208 () Unit!78197)

(assert (=> b!4394517 (= lt!1601701 Unit!78208)))

(assert (=> b!4394517 call!305908))

(declare-fun lt!1601708 () Unit!78197)

(declare-fun Unit!78209 () Unit!78197)

(assert (=> b!4394517 (= lt!1601708 Unit!78209)))

(declare-fun lt!1601719 () Unit!78197)

(declare-fun Unit!78210 () Unit!78197)

(assert (=> b!4394517 (= lt!1601719 Unit!78210)))

(declare-fun lt!1601720 () Unit!78197)

(declare-fun forallContained!1956 (List!49342 Int tuple2!48786) Unit!78197)

(assert (=> b!4394517 (= lt!1601720 (forallContained!1956 (toList!3192 lt!1601703) lambda!147598 (h!54827 (_2!27688 (h!54828 (toList!3191 lm!1707))))))))

(assert (=> b!4394517 (contains!11585 lt!1601703 (_1!27687 (h!54827 (_2!27688 (h!54828 (toList!3191 lm!1707))))))))

(declare-fun lt!1601721 () Unit!78197)

(declare-fun Unit!78211 () Unit!78197)

(assert (=> b!4394517 (= lt!1601721 Unit!78211)))

(assert (=> b!4394517 (contains!11585 lt!1601712 (_1!27687 (h!54827 (_2!27688 (h!54828 (toList!3191 lm!1707))))))))

(declare-fun lt!1601706 () Unit!78197)

(declare-fun Unit!78212 () Unit!78197)

(assert (=> b!4394517 (= lt!1601706 Unit!78212)))

(assert (=> b!4394517 (forall!9318 (_2!27688 (h!54828 (toList!3191 lm!1707))) lambda!147598)))

(declare-fun lt!1601715 () Unit!78197)

(declare-fun Unit!78213 () Unit!78197)

(assert (=> b!4394517 (= lt!1601715 Unit!78213)))

(assert (=> b!4394517 call!305910))

(declare-fun lt!1601717 () Unit!78197)

(declare-fun Unit!78214 () Unit!78197)

(assert (=> b!4394517 (= lt!1601717 Unit!78214)))

(declare-fun lt!1601711 () Unit!78197)

(declare-fun Unit!78215 () Unit!78197)

(assert (=> b!4394517 (= lt!1601711 Unit!78215)))

(declare-fun lt!1601714 () Unit!78197)

(declare-fun addForallContainsKeyThenBeforeAdding!116 (ListMap!2435 ListMap!2435 K!10578 V!10824) Unit!78197)

(assert (=> b!4394517 (= lt!1601714 (addForallContainsKeyThenBeforeAdding!116 (extractMap!663 (t!356277 (toList!3191 lm!1707))) lt!1601712 (_1!27687 (h!54827 (_2!27688 (h!54828 (toList!3191 lm!1707))))) (_2!27687 (h!54827 (_2!27688 (h!54828 (toList!3191 lm!1707)))))))))

(assert (=> b!4394517 (forall!9318 (toList!3192 (extractMap!663 (t!356277 (toList!3191 lm!1707)))) lambda!147598)))

(declare-fun lt!1601709 () Unit!78197)

(assert (=> b!4394517 (= lt!1601709 lt!1601714)))

(assert (=> b!4394517 (forall!9318 (toList!3192 (extractMap!663 (t!356277 (toList!3191 lm!1707)))) lambda!147598)))

(declare-fun lt!1601702 () Unit!78197)

(declare-fun Unit!78216 () Unit!78197)

(assert (=> b!4394517 (= lt!1601702 Unit!78216)))

(declare-fun res!1811670 () Bool)

(assert (=> b!4394517 (= res!1811670 (forall!9318 (_2!27688 (h!54828 (toList!3191 lm!1707))) lambda!147598))))

(assert (=> b!4394517 (=> (not res!1811670) (not e!2736140))))

(assert (=> b!4394517 e!2736140))

(declare-fun lt!1601705 () Unit!78197)

(declare-fun Unit!78217 () Unit!78197)

(assert (=> b!4394517 (= lt!1601705 Unit!78217)))

(declare-fun b!4394518 () Bool)

(declare-fun res!1811671 () Bool)

(assert (=> b!4394518 (=> (not res!1811671) (not e!2736141))))

(assert (=> b!4394518 (= res!1811671 (forall!9318 (toList!3192 (extractMap!663 (t!356277 (toList!3191 lm!1707)))) lambda!147599))))

(declare-fun b!4394519 () Bool)

(assert (=> b!4394519 (= e!2736141 (invariantList!734 (toList!3192 lt!1601710)))))

(declare-fun bm!305905 () Bool)

(assert (=> bm!305905 (= call!305910 (forall!9318 (ite c!748085 (toList!3192 (extractMap!663 (t!356277 (toList!3191 lm!1707)))) (toList!3192 lt!1601703)) (ite c!748085 lambda!147596 lambda!147598)))))

(assert (= (and d!1323878 c!748085) b!4394516))

(assert (= (and d!1323878 (not c!748085)) b!4394517))

(assert (= (and b!4394517 res!1811670) b!4394515))

(assert (= (or b!4394516 b!4394517) bm!305904))

(assert (= (or b!4394516 b!4394517) bm!305903))

(assert (= (or b!4394516 b!4394517) bm!305905))

(assert (= (and d!1323878 res!1811672) b!4394518))

(assert (= (and b!4394518 res!1811671) b!4394519))

(declare-fun m!5054643 () Bool)

(assert (=> b!4394517 m!5054643))

(declare-fun m!5054645 () Bool)

(assert (=> b!4394517 m!5054645))

(declare-fun m!5054647 () Bool)

(assert (=> b!4394517 m!5054647))

(declare-fun m!5054649 () Bool)

(assert (=> b!4394517 m!5054649))

(declare-fun m!5054651 () Bool)

(assert (=> b!4394517 m!5054651))

(declare-fun m!5054653 () Bool)

(assert (=> b!4394517 m!5054653))

(declare-fun m!5054655 () Bool)

(assert (=> b!4394517 m!5054655))

(declare-fun m!5054657 () Bool)

(assert (=> b!4394517 m!5054657))

(assert (=> b!4394517 m!5054457))

(declare-fun m!5054659 () Bool)

(assert (=> b!4394517 m!5054659))

(assert (=> b!4394517 m!5054457))

(assert (=> b!4394517 m!5054643))

(assert (=> b!4394517 m!5054655))

(declare-fun m!5054661 () Bool)

(assert (=> b!4394517 m!5054661))

(assert (=> b!4394517 m!5054651))

(assert (=> bm!305904 m!5054457))

(declare-fun m!5054663 () Bool)

(assert (=> bm!305904 m!5054663))

(assert (=> b!4394515 m!5054655))

(declare-fun m!5054665 () Bool)

(assert (=> bm!305903 m!5054665))

(declare-fun m!5054667 () Bool)

(assert (=> b!4394519 m!5054667))

(declare-fun m!5054669 () Bool)

(assert (=> bm!305905 m!5054669))

(declare-fun m!5054671 () Bool)

(assert (=> b!4394518 m!5054671))

(declare-fun m!5054673 () Bool)

(assert (=> d!1323878 m!5054673))

(assert (=> d!1323878 m!5054555))

(assert (=> b!4394335 d!1323878))

(declare-fun bs!726279 () Bool)

(declare-fun d!1323880 () Bool)

(assert (= bs!726279 (and d!1323880 start!426486)))

(declare-fun lambda!147600 () Int)

(assert (=> bs!726279 (= lambda!147600 lambda!147532)))

(declare-fun bs!726280 () Bool)

(assert (= bs!726280 (and d!1323880 d!1323790)))

(assert (=> bs!726280 (= lambda!147600 lambda!147549)))

(declare-fun bs!726281 () Bool)

(assert (= bs!726281 (and d!1323880 d!1323810)))

(assert (=> bs!726281 (not (= lambda!147600 lambda!147555))))

(declare-fun bs!726282 () Bool)

(assert (= bs!726282 (and d!1323880 d!1323830)))

(assert (=> bs!726282 (= lambda!147600 lambda!147561)))

(declare-fun lt!1601722 () ListMap!2435)

(assert (=> d!1323880 (invariantList!734 (toList!3192 lt!1601722))))

(declare-fun e!2736142 () ListMap!2435)

(assert (=> d!1323880 (= lt!1601722 e!2736142)))

(declare-fun c!748086 () Bool)

(assert (=> d!1323880 (= c!748086 (is-Cons!49219 (t!356277 (toList!3191 lm!1707))))))

(assert (=> d!1323880 (forall!9316 (t!356277 (toList!3191 lm!1707)) lambda!147600)))

(assert (=> d!1323880 (= (extractMap!663 (t!356277 (toList!3191 lm!1707))) lt!1601722)))

(declare-fun b!4394522 () Bool)

(assert (=> b!4394522 (= e!2736142 (addToMapMapFromBucket!279 (_2!27688 (h!54828 (t!356277 (toList!3191 lm!1707)))) (extractMap!663 (t!356277 (t!356277 (toList!3191 lm!1707))))))))

(declare-fun b!4394523 () Bool)

(assert (=> b!4394523 (= e!2736142 (ListMap!2436 Nil!49218))))

(assert (= (and d!1323880 c!748086) b!4394522))

(assert (= (and d!1323880 (not c!748086)) b!4394523))

(declare-fun m!5054675 () Bool)

(assert (=> d!1323880 m!5054675))

(declare-fun m!5054677 () Bool)

(assert (=> d!1323880 m!5054677))

(declare-fun m!5054679 () Bool)

(assert (=> b!4394522 m!5054679))

(assert (=> b!4394522 m!5054679))

(declare-fun m!5054681 () Bool)

(assert (=> b!4394522 m!5054681))

(assert (=> b!4394335 d!1323880))

(declare-fun d!1323882 () Bool)

(declare-fun res!1811673 () Bool)

(declare-fun e!2736143 () Bool)

(assert (=> d!1323882 (=> res!1811673 e!2736143)))

(assert (=> d!1323882 (= res!1811673 (not (is-Cons!49218 (_2!27688 (tuple2!48789 hash!377 newBucket!200)))))))

(assert (=> d!1323882 (= (noDuplicateKeys!604 (_2!27688 (tuple2!48789 hash!377 newBucket!200))) e!2736143)))

(declare-fun b!4394524 () Bool)

(declare-fun e!2736144 () Bool)

(assert (=> b!4394524 (= e!2736143 e!2736144)))

(declare-fun res!1811674 () Bool)

(assert (=> b!4394524 (=> (not res!1811674) (not e!2736144))))

(assert (=> b!4394524 (= res!1811674 (not (containsKey!882 (t!356276 (_2!27688 (tuple2!48789 hash!377 newBucket!200))) (_1!27687 (h!54827 (_2!27688 (tuple2!48789 hash!377 newBucket!200)))))))))

(declare-fun b!4394525 () Bool)

(assert (=> b!4394525 (= e!2736144 (noDuplicateKeys!604 (t!356276 (_2!27688 (tuple2!48789 hash!377 newBucket!200)))))))

(assert (= (and d!1323882 (not res!1811673)) b!4394524))

(assert (= (and b!4394524 res!1811674) b!4394525))

(declare-fun m!5054683 () Bool)

(assert (=> b!4394524 m!5054683))

(declare-fun m!5054685 () Bool)

(assert (=> b!4394525 m!5054685))

(assert (=> bs!726258 d!1323882))

(declare-fun d!1323884 () Bool)

(assert (=> d!1323884 (dynLambda!20736 lambda!147532 lt!1601499)))

(assert (=> d!1323884 true))

(declare-fun _$7!1576 () Unit!78197)

(assert (=> d!1323884 (= (choose!27449 (toList!3191 lm!1707) lambda!147532 lt!1601499) _$7!1576)))

(declare-fun b_lambda!139001 () Bool)

(assert (=> (not b_lambda!139001) (not d!1323884)))

(declare-fun bs!726283 () Bool)

(assert (= bs!726283 d!1323884))

(assert (=> bs!726283 m!5054471))

(assert (=> d!1323798 d!1323884))

(assert (=> d!1323798 d!1323818))

(declare-fun d!1323886 () Bool)

(declare-fun c!748089 () Bool)

(assert (=> d!1323886 (= c!748089 (is-Nil!49219 (toList!3191 lm!1707)))))

(declare-fun e!2736147 () (Set tuple2!48788))

(assert (=> d!1323886 (= (content!7843 (toList!3191 lm!1707)) e!2736147)))

(declare-fun b!4394530 () Bool)

(assert (=> b!4394530 (= e!2736147 (as set.empty (Set tuple2!48788)))))

(declare-fun b!4394531 () Bool)

(assert (=> b!4394531 (= e!2736147 (set.union (set.insert (h!54828 (toList!3191 lm!1707)) (as set.empty (Set tuple2!48788))) (content!7843 (t!356277 (toList!3191 lm!1707)))))))

(assert (= (and d!1323886 c!748089) b!4394530))

(assert (= (and d!1323886 (not c!748089)) b!4394531))

(declare-fun m!5054687 () Bool)

(assert (=> b!4394531 m!5054687))

(declare-fun m!5054689 () Bool)

(assert (=> b!4394531 m!5054689))

(assert (=> d!1323800 d!1323886))

(declare-fun d!1323888 () Bool)

(declare-fun res!1811679 () Bool)

(declare-fun e!2736152 () Bool)

(assert (=> d!1323888 (=> res!1811679 e!2736152)))

(assert (=> d!1323888 (= res!1811679 (and (is-Cons!49218 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))) (= (_1!27687 (h!54827 (toList!3192 (extractMap!663 (toList!3191 lm!1707))))) key!3918)))))

(assert (=> d!1323888 (= (containsKey!884 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) key!3918) e!2736152)))

(declare-fun b!4394536 () Bool)

(declare-fun e!2736153 () Bool)

(assert (=> b!4394536 (= e!2736152 e!2736153)))

(declare-fun res!1811680 () Bool)

(assert (=> b!4394536 (=> (not res!1811680) (not e!2736153))))

(assert (=> b!4394536 (= res!1811680 (is-Cons!49218 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))))))

(declare-fun b!4394537 () Bool)

(assert (=> b!4394537 (= e!2736153 (containsKey!884 (t!356276 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))) key!3918))))

(assert (= (and d!1323888 (not res!1811679)) b!4394536))

(assert (= (and b!4394536 res!1811680) b!4394537))

(declare-fun m!5054691 () Bool)

(assert (=> b!4394537 m!5054691))

(assert (=> d!1323784 d!1323888))

(declare-fun d!1323890 () Bool)

(declare-fun res!1811685 () Bool)

(declare-fun e!2736158 () Bool)

(assert (=> d!1323890 (=> res!1811685 e!2736158)))

(assert (=> d!1323890 (= res!1811685 (is-Nil!49218 newBucket!200))))

(assert (=> d!1323890 (= (forall!9318 newBucket!200 lambda!147546) e!2736158)))

(declare-fun b!4394542 () Bool)

(declare-fun e!2736159 () Bool)

(assert (=> b!4394542 (= e!2736158 e!2736159)))

(declare-fun res!1811686 () Bool)

(assert (=> b!4394542 (=> (not res!1811686) (not e!2736159))))

(declare-fun dynLambda!20738 (Int tuple2!48786) Bool)

(assert (=> b!4394542 (= res!1811686 (dynLambda!20738 lambda!147546 (h!54827 newBucket!200)))))

(declare-fun b!4394543 () Bool)

(assert (=> b!4394543 (= e!2736159 (forall!9318 (t!356276 newBucket!200) lambda!147546))))

(assert (= (and d!1323890 (not res!1811685)) b!4394542))

(assert (= (and b!4394542 res!1811686) b!4394543))

(declare-fun b_lambda!139003 () Bool)

(assert (=> (not b_lambda!139003) (not b!4394542)))

(declare-fun m!5054693 () Bool)

(assert (=> b!4394542 m!5054693))

(declare-fun m!5054695 () Bool)

(assert (=> b!4394543 m!5054695))

(assert (=> d!1323778 d!1323890))

(declare-fun d!1323892 () Bool)

(assert (=> d!1323892 (= (get!16015 (getValueByKey!568 (toList!3191 lm!1707) (_1!27688 (h!54828 (toList!3191 lm!1707))))) (v!43631 (getValueByKey!568 (toList!3191 lm!1707) (_1!27688 (h!54828 (toList!3191 lm!1707))))))))

(assert (=> d!1323828 d!1323892))

(declare-fun d!1323894 () Bool)

(declare-fun c!748094 () Bool)

(assert (=> d!1323894 (= c!748094 (and (is-Cons!49219 (toList!3191 lm!1707)) (= (_1!27688 (h!54828 (toList!3191 lm!1707))) (_1!27688 (h!54828 (toList!3191 lm!1707))))))))

(declare-fun e!2736164 () Option!10582)

(assert (=> d!1323894 (= (getValueByKey!568 (toList!3191 lm!1707) (_1!27688 (h!54828 (toList!3191 lm!1707)))) e!2736164)))

(declare-fun b!4394552 () Bool)

(assert (=> b!4394552 (= e!2736164 (Some!10581 (_2!27688 (h!54828 (toList!3191 lm!1707)))))))

(declare-fun b!4394553 () Bool)

(declare-fun e!2736165 () Option!10582)

(assert (=> b!4394553 (= e!2736164 e!2736165)))

(declare-fun c!748095 () Bool)

(assert (=> b!4394553 (= c!748095 (and (is-Cons!49219 (toList!3191 lm!1707)) (not (= (_1!27688 (h!54828 (toList!3191 lm!1707))) (_1!27688 (h!54828 (toList!3191 lm!1707)))))))))

(declare-fun b!4394554 () Bool)

(assert (=> b!4394554 (= e!2736165 (getValueByKey!568 (t!356277 (toList!3191 lm!1707)) (_1!27688 (h!54828 (toList!3191 lm!1707)))))))

(declare-fun b!4394555 () Bool)

(assert (=> b!4394555 (= e!2736165 None!10581)))

(assert (= (and d!1323894 c!748094) b!4394552))

(assert (= (and d!1323894 (not c!748094)) b!4394553))

(assert (= (and b!4394553 c!748095) b!4394554))

(assert (= (and b!4394553 (not c!748095)) b!4394555))

(declare-fun m!5054697 () Bool)

(assert (=> b!4394554 m!5054697))

(assert (=> d!1323828 d!1323894))

(declare-fun d!1323896 () Bool)

(declare-fun res!1811691 () Bool)

(declare-fun e!2736170 () Bool)

(assert (=> d!1323896 (=> res!1811691 e!2736170)))

(assert (=> d!1323896 (= res!1811691 (or (is-Nil!49219 (toList!3191 lm!1707)) (is-Nil!49219 (t!356277 (toList!3191 lm!1707)))))))

(assert (=> d!1323896 (= (isStrictlySorted!161 (toList!3191 lm!1707)) e!2736170)))

(declare-fun b!4394560 () Bool)

(declare-fun e!2736171 () Bool)

(assert (=> b!4394560 (= e!2736170 e!2736171)))

(declare-fun res!1811692 () Bool)

(assert (=> b!4394560 (=> (not res!1811692) (not e!2736171))))

(assert (=> b!4394560 (= res!1811692 (bvslt (_1!27688 (h!54828 (toList!3191 lm!1707))) (_1!27688 (h!54828 (t!356277 (toList!3191 lm!1707))))))))

(declare-fun b!4394561 () Bool)

(assert (=> b!4394561 (= e!2736171 (isStrictlySorted!161 (t!356277 (toList!3191 lm!1707))))))

(assert (= (and d!1323896 (not res!1811691)) b!4394560))

(assert (= (and b!4394560 res!1811692) b!4394561))

(declare-fun m!5054699 () Bool)

(assert (=> b!4394561 m!5054699))

(assert (=> d!1323820 d!1323896))

(assert (=> b!4394343 d!1323800))

(declare-fun d!1323898 () Bool)

(declare-fun res!1811697 () Bool)

(declare-fun e!2736176 () Bool)

(assert (=> d!1323898 (=> res!1811697 e!2736176)))

(assert (=> d!1323898 (= res!1811697 (and (is-Cons!49219 (toList!3191 lm!1707)) (= (_1!27688 (h!54828 (toList!3191 lm!1707))) hash!377)))))

(assert (=> d!1323898 (= (containsKey!885 (toList!3191 lm!1707) hash!377) e!2736176)))

(declare-fun b!4394566 () Bool)

(declare-fun e!2736177 () Bool)

(assert (=> b!4394566 (= e!2736176 e!2736177)))

(declare-fun res!1811698 () Bool)

(assert (=> b!4394566 (=> (not res!1811698) (not e!2736177))))

(assert (=> b!4394566 (= res!1811698 (and (or (not (is-Cons!49219 (toList!3191 lm!1707))) (bvsle (_1!27688 (h!54828 (toList!3191 lm!1707))) hash!377)) (is-Cons!49219 (toList!3191 lm!1707)) (bvslt (_1!27688 (h!54828 (toList!3191 lm!1707))) hash!377)))))

(declare-fun b!4394567 () Bool)

(assert (=> b!4394567 (= e!2736177 (containsKey!885 (t!356277 (toList!3191 lm!1707)) hash!377))))

(assert (= (and d!1323898 (not res!1811697)) b!4394566))

(assert (= (and b!4394566 res!1811698) b!4394567))

(declare-fun m!5054701 () Bool)

(assert (=> b!4394567 m!5054701))

(assert (=> d!1323838 d!1323898))

(declare-fun d!1323900 () Bool)

(declare-fun res!1811699 () Bool)

(declare-fun e!2736178 () Bool)

(assert (=> d!1323900 (=> res!1811699 e!2736178)))

(assert (=> d!1323900 (= res!1811699 (is-Nil!49219 (toList!3191 lm!1707)))))

(assert (=> d!1323900 (= (forall!9316 (toList!3191 lm!1707) lambda!147555) e!2736178)))

(declare-fun b!4394568 () Bool)

(declare-fun e!2736179 () Bool)

(assert (=> b!4394568 (= e!2736178 e!2736179)))

(declare-fun res!1811700 () Bool)

(assert (=> b!4394568 (=> (not res!1811700) (not e!2736179))))

(assert (=> b!4394568 (= res!1811700 (dynLambda!20736 lambda!147555 (h!54828 (toList!3191 lm!1707))))))

(declare-fun b!4394569 () Bool)

(assert (=> b!4394569 (= e!2736179 (forall!9316 (t!356277 (toList!3191 lm!1707)) lambda!147555))))

(assert (= (and d!1323900 (not res!1811699)) b!4394568))

(assert (= (and b!4394568 res!1811700) b!4394569))

(declare-fun b_lambda!139005 () Bool)

(assert (=> (not b_lambda!139005) (not b!4394568)))

(declare-fun m!5054703 () Bool)

(assert (=> b!4394568 m!5054703))

(declare-fun m!5054705 () Bool)

(assert (=> b!4394569 m!5054705))

(assert (=> d!1323810 d!1323900))

(declare-fun d!1323902 () Bool)

(assert (=> d!1323902 (isDefined!7875 (getValueByKey!567 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) key!3918))))

(declare-fun lt!1601725 () Unit!78197)

(declare-fun choose!27457 (List!49342 K!10578) Unit!78197)

(assert (=> d!1323902 (= lt!1601725 (choose!27457 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) key!3918))))

(assert (=> d!1323902 (invariantList!734 (toList!3192 (extractMap!663 (toList!3191 lm!1707))))))

(assert (=> d!1323902 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!478 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) key!3918) lt!1601725)))

(declare-fun bs!726284 () Bool)

(assert (= bs!726284 d!1323902))

(assert (=> bs!726284 m!5054431))

(assert (=> bs!726284 m!5054431))

(assert (=> bs!726284 m!5054433))

(declare-fun m!5054707 () Bool)

(assert (=> bs!726284 m!5054707))

(declare-fun m!5054709 () Bool)

(assert (=> bs!726284 m!5054709))

(assert (=> b!4394319 d!1323902))

(declare-fun d!1323904 () Bool)

(declare-fun isEmpty!28260 (Option!10581) Bool)

(assert (=> d!1323904 (= (isDefined!7875 (getValueByKey!567 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) key!3918)) (not (isEmpty!28260 (getValueByKey!567 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) key!3918))))))

(declare-fun bs!726285 () Bool)

(assert (= bs!726285 d!1323904))

(assert (=> bs!726285 m!5054431))

(declare-fun m!5054711 () Bool)

(assert (=> bs!726285 m!5054711))

(assert (=> b!4394319 d!1323904))

(declare-fun b!4394581 () Bool)

(declare-fun e!2736185 () Option!10581)

(assert (=> b!4394581 (= e!2736185 None!10580)))

(declare-fun b!4394580 () Bool)

(assert (=> b!4394580 (= e!2736185 (getValueByKey!567 (t!356276 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))) key!3918))))

(declare-fun b!4394579 () Bool)

(declare-fun e!2736184 () Option!10581)

(assert (=> b!4394579 (= e!2736184 e!2736185)))

(declare-fun c!748101 () Bool)

(assert (=> b!4394579 (= c!748101 (and (is-Cons!49218 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))) (not (= (_1!27687 (h!54827 (toList!3192 (extractMap!663 (toList!3191 lm!1707))))) key!3918))))))

(declare-fun b!4394578 () Bool)

(assert (=> b!4394578 (= e!2736184 (Some!10580 (_2!27687 (h!54827 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))))))))

(declare-fun d!1323906 () Bool)

(declare-fun c!748100 () Bool)

(assert (=> d!1323906 (= c!748100 (and (is-Cons!49218 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))) (= (_1!27687 (h!54827 (toList!3192 (extractMap!663 (toList!3191 lm!1707))))) key!3918)))))

(assert (=> d!1323906 (= (getValueByKey!567 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) key!3918) e!2736184)))

(assert (= (and d!1323906 c!748100) b!4394578))

(assert (= (and d!1323906 (not c!748100)) b!4394579))

(assert (= (and b!4394579 c!748101) b!4394580))

(assert (= (and b!4394579 (not c!748101)) b!4394581))

(declare-fun m!5054713 () Bool)

(assert (=> b!4394580 m!5054713))

(assert (=> b!4394319 d!1323906))

(declare-fun d!1323908 () Bool)

(assert (=> d!1323908 (contains!11590 (getKeysList!182 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))) key!3918)))

(declare-fun lt!1601728 () Unit!78197)

(declare-fun choose!27458 (List!49342 K!10578) Unit!78197)

(assert (=> d!1323908 (= lt!1601728 (choose!27458 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) key!3918))))

(assert (=> d!1323908 (invariantList!734 (toList!3192 (extractMap!663 (toList!3191 lm!1707))))))

(assert (=> d!1323908 (= (lemmaInListThenGetKeysListContains!179 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) key!3918) lt!1601728)))

(declare-fun bs!726286 () Bool)

(assert (= bs!726286 d!1323908))

(assert (=> bs!726286 m!5054427))

(assert (=> bs!726286 m!5054427))

(declare-fun m!5054715 () Bool)

(assert (=> bs!726286 m!5054715))

(declare-fun m!5054717 () Bool)

(assert (=> bs!726286 m!5054717))

(assert (=> bs!726286 m!5054709))

(assert (=> b!4394319 d!1323908))

(declare-fun d!1323910 () Bool)

(declare-fun c!748102 () Bool)

(assert (=> d!1323910 (= c!748102 (and (is-Cons!49219 (toList!3191 lt!1601584)) (= (_1!27688 (h!54828 (toList!3191 lt!1601584))) (_1!27688 (tuple2!48789 hash!377 newBucket!200)))))))

(declare-fun e!2736186 () Option!10582)

(assert (=> d!1323910 (= (getValueByKey!568 (toList!3191 lt!1601584) (_1!27688 (tuple2!48789 hash!377 newBucket!200))) e!2736186)))

(declare-fun b!4394582 () Bool)

(assert (=> b!4394582 (= e!2736186 (Some!10581 (_2!27688 (h!54828 (toList!3191 lt!1601584)))))))

(declare-fun b!4394583 () Bool)

(declare-fun e!2736187 () Option!10582)

(assert (=> b!4394583 (= e!2736186 e!2736187)))

(declare-fun c!748103 () Bool)

(assert (=> b!4394583 (= c!748103 (and (is-Cons!49219 (toList!3191 lt!1601584)) (not (= (_1!27688 (h!54828 (toList!3191 lt!1601584))) (_1!27688 (tuple2!48789 hash!377 newBucket!200))))))))

(declare-fun b!4394584 () Bool)

(assert (=> b!4394584 (= e!2736187 (getValueByKey!568 (t!356277 (toList!3191 lt!1601584)) (_1!27688 (tuple2!48789 hash!377 newBucket!200))))))

(declare-fun b!4394585 () Bool)

(assert (=> b!4394585 (= e!2736187 None!10581)))

(assert (= (and d!1323910 c!748102) b!4394582))

(assert (= (and d!1323910 (not c!748102)) b!4394583))

(assert (= (and b!4394583 c!748103) b!4394584))

(assert (= (and b!4394583 (not c!748103)) b!4394585))

(declare-fun m!5054719 () Bool)

(assert (=> b!4394584 m!5054719))

(assert (=> b!4394402 d!1323910))

(declare-fun b!4394588 () Bool)

(declare-fun e!2736189 () List!49342)

(assert (=> b!4394588 (= e!2736189 (Cons!49218 (h!54827 (t!356276 lt!1601493)) (removePairForKey!572 (t!356276 (t!356276 lt!1601493)) key!3918)))))

(declare-fun b!4394587 () Bool)

(declare-fun e!2736188 () List!49342)

(assert (=> b!4394587 (= e!2736188 e!2736189)))

(declare-fun c!748105 () Bool)

(assert (=> b!4394587 (= c!748105 (is-Cons!49218 (t!356276 lt!1601493)))))

(declare-fun b!4394589 () Bool)

(assert (=> b!4394589 (= e!2736189 Nil!49218)))

(declare-fun d!1323912 () Bool)

(declare-fun lt!1601729 () List!49342)

(assert (=> d!1323912 (not (containsKey!882 lt!1601729 key!3918))))

(assert (=> d!1323912 (= lt!1601729 e!2736188)))

(declare-fun c!748104 () Bool)

(assert (=> d!1323912 (= c!748104 (and (is-Cons!49218 (t!356276 lt!1601493)) (= (_1!27687 (h!54827 (t!356276 lt!1601493))) key!3918)))))

(assert (=> d!1323912 (noDuplicateKeys!604 (t!356276 lt!1601493))))

(assert (=> d!1323912 (= (removePairForKey!572 (t!356276 lt!1601493) key!3918) lt!1601729)))

(declare-fun b!4394586 () Bool)

(assert (=> b!4394586 (= e!2736188 (t!356276 (t!356276 lt!1601493)))))

(assert (= (and d!1323912 c!748104) b!4394586))

(assert (= (and d!1323912 (not c!748104)) b!4394587))

(assert (= (and b!4394587 c!748105) b!4394588))

(assert (= (and b!4394587 (not c!748105)) b!4394589))

(declare-fun m!5054721 () Bool)

(assert (=> b!4394588 m!5054721))

(declare-fun m!5054723 () Bool)

(assert (=> d!1323912 m!5054723))

(declare-fun m!5054725 () Bool)

(assert (=> d!1323912 m!5054725))

(assert (=> b!4394363 d!1323912))

(declare-fun d!1323916 () Bool)

(declare-fun lt!1601732 () Bool)

(declare-fun content!7845 (List!49346) (Set K!10578))

(assert (=> d!1323916 (= lt!1601732 (set.member key!3918 (content!7845 (keys!16710 (extractMap!663 (toList!3191 lm!1707))))))))

(declare-fun e!2736194 () Bool)

(assert (=> d!1323916 (= lt!1601732 e!2736194)))

(declare-fun res!1811706 () Bool)

(assert (=> d!1323916 (=> (not res!1811706) (not e!2736194))))

(assert (=> d!1323916 (= res!1811706 (is-Cons!49222 (keys!16710 (extractMap!663 (toList!3191 lm!1707)))))))

(assert (=> d!1323916 (= (contains!11590 (keys!16710 (extractMap!663 (toList!3191 lm!1707))) key!3918) lt!1601732)))

(declare-fun b!4394594 () Bool)

(declare-fun e!2736195 () Bool)

(assert (=> b!4394594 (= e!2736194 e!2736195)))

(declare-fun res!1811705 () Bool)

(assert (=> b!4394594 (=> res!1811705 e!2736195)))

(assert (=> b!4394594 (= res!1811705 (= (h!54833 (keys!16710 (extractMap!663 (toList!3191 lm!1707)))) key!3918))))

(declare-fun b!4394595 () Bool)

(assert (=> b!4394595 (= e!2736195 (contains!11590 (t!356280 (keys!16710 (extractMap!663 (toList!3191 lm!1707)))) key!3918))))

(assert (= (and d!1323916 res!1811706) b!4394594))

(assert (= (and b!4394594 (not res!1811705)) b!4394595))

(assert (=> d!1323916 m!5054443))

(declare-fun m!5054727 () Bool)

(assert (=> d!1323916 m!5054727))

(declare-fun m!5054729 () Bool)

(assert (=> d!1323916 m!5054729))

(declare-fun m!5054731 () Bool)

(assert (=> b!4394595 m!5054731))

(assert (=> b!4394317 d!1323916))

(declare-fun b!4394609 () Bool)

(assert (=> b!4394609 true))

(declare-fun d!1323918 () Bool)

(declare-fun e!2736204 () Bool)

(assert (=> d!1323918 e!2736204))

(declare-fun res!1811720 () Bool)

(assert (=> d!1323918 (=> (not res!1811720) (not e!2736204))))

(declare-fun lt!1601738 () List!49346)

(declare-fun noDuplicate!627 (List!49346) Bool)

(assert (=> d!1323918 (= res!1811720 (noDuplicate!627 lt!1601738))))

(assert (=> d!1323918 (= lt!1601738 (getKeysList!182 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))))))

(assert (=> d!1323918 (= (keys!16710 (extractMap!663 (toList!3191 lm!1707))) lt!1601738)))

(declare-fun b!4394608 () Bool)

(declare-fun res!1811719 () Bool)

(assert (=> b!4394608 (=> (not res!1811719) (not e!2736204))))

(declare-fun length!110 (List!49346) Int)

(declare-fun length!111 (List!49342) Int)

(assert (=> b!4394608 (= res!1811719 (= (length!110 lt!1601738) (length!111 (toList!3192 (extractMap!663 (toList!3191 lm!1707))))))))

(declare-fun res!1811721 () Bool)

(assert (=> b!4394609 (=> (not res!1811721) (not e!2736204))))

(declare-fun lambda!147605 () Int)

(declare-fun forall!9320 (List!49346 Int) Bool)

(assert (=> b!4394609 (= res!1811721 (forall!9320 lt!1601738 lambda!147605))))

(declare-fun lambda!147606 () Int)

(declare-fun b!4394610 () Bool)

(declare-fun map!10726 (List!49342 Int) List!49346)

(assert (=> b!4394610 (= e!2736204 (= (content!7845 lt!1601738) (content!7845 (map!10726 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) lambda!147606))))))

(assert (= (and d!1323918 res!1811720) b!4394608))

(assert (= (and b!4394608 res!1811719) b!4394609))

(assert (= (and b!4394609 res!1811721) b!4394610))

(declare-fun m!5054739 () Bool)

(assert (=> d!1323918 m!5054739))

(assert (=> d!1323918 m!5054427))

(declare-fun m!5054741 () Bool)

(assert (=> b!4394608 m!5054741))

(declare-fun m!5054743 () Bool)

(assert (=> b!4394608 m!5054743))

(declare-fun m!5054745 () Bool)

(assert (=> b!4394609 m!5054745))

(declare-fun m!5054747 () Bool)

(assert (=> b!4394610 m!5054747))

(declare-fun m!5054749 () Bool)

(assert (=> b!4394610 m!5054749))

(assert (=> b!4394610 m!5054749))

(declare-fun m!5054751 () Bool)

(assert (=> b!4394610 m!5054751))

(assert (=> b!4394317 d!1323918))

(declare-fun d!1323922 () Bool)

(declare-fun res!1811722 () Bool)

(declare-fun e!2736205 () Bool)

(assert (=> d!1323922 (=> res!1811722 e!2736205)))

(assert (=> d!1323922 (= res!1811722 (not (is-Cons!49218 (_2!27688 (h!54828 (toList!3191 lm!1707))))))))

(assert (=> d!1323922 (= (noDuplicateKeys!604 (_2!27688 (h!54828 (toList!3191 lm!1707)))) e!2736205)))

(declare-fun b!4394613 () Bool)

(declare-fun e!2736206 () Bool)

(assert (=> b!4394613 (= e!2736205 e!2736206)))

(declare-fun res!1811723 () Bool)

(assert (=> b!4394613 (=> (not res!1811723) (not e!2736206))))

(assert (=> b!4394613 (= res!1811723 (not (containsKey!882 (t!356276 (_2!27688 (h!54828 (toList!3191 lm!1707)))) (_1!27687 (h!54827 (_2!27688 (h!54828 (toList!3191 lm!1707))))))))))

(declare-fun b!4394614 () Bool)

(assert (=> b!4394614 (= e!2736206 (noDuplicateKeys!604 (t!356276 (_2!27688 (h!54828 (toList!3191 lm!1707))))))))

(assert (= (and d!1323922 (not res!1811722)) b!4394613))

(assert (= (and b!4394613 res!1811723) b!4394614))

(declare-fun m!5054753 () Bool)

(assert (=> b!4394613 m!5054753))

(declare-fun m!5054755 () Bool)

(assert (=> b!4394614 m!5054755))

(assert (=> bs!726257 d!1323922))

(declare-fun bs!726289 () Bool)

(declare-fun b!4394669 () Bool)

(assert (= bs!726289 (and b!4394669 b!4394609)))

(declare-fun lambda!147621 () Int)

(assert (=> bs!726289 (= (= (t!356276 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))) (toList!3192 (extractMap!663 (toList!3191 lm!1707)))) (= lambda!147621 lambda!147605))))

(assert (=> b!4394669 true))

(declare-fun bs!726290 () Bool)

(declare-fun b!4394663 () Bool)

(assert (= bs!726290 (and b!4394663 b!4394609)))

(declare-fun lambda!147622 () Int)

(assert (=> bs!726290 (= (= (Cons!49218 (h!54827 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))) (t!356276 (toList!3192 (extractMap!663 (toList!3191 lm!1707))))) (toList!3192 (extractMap!663 (toList!3191 lm!1707)))) (= lambda!147622 lambda!147605))))

(declare-fun bs!726291 () Bool)

(assert (= bs!726291 (and b!4394663 b!4394669)))

(assert (=> bs!726291 (= (= (Cons!49218 (h!54827 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))) (t!356276 (toList!3192 (extractMap!663 (toList!3191 lm!1707))))) (t!356276 (toList!3192 (extractMap!663 (toList!3191 lm!1707))))) (= lambda!147622 lambda!147621))))

(assert (=> b!4394663 true))

(declare-fun bs!726292 () Bool)

(declare-fun b!4394664 () Bool)

(assert (= bs!726292 (and b!4394664 b!4394609)))

(declare-fun lambda!147623 () Int)

(assert (=> bs!726292 (= lambda!147623 lambda!147605)))

(declare-fun bs!726293 () Bool)

(assert (= bs!726293 (and b!4394664 b!4394669)))

(assert (=> bs!726293 (= (= (toList!3192 (extractMap!663 (toList!3191 lm!1707))) (t!356276 (toList!3192 (extractMap!663 (toList!3191 lm!1707))))) (= lambda!147623 lambda!147621))))

(declare-fun bs!726294 () Bool)

(assert (= bs!726294 (and b!4394664 b!4394663)))

(assert (=> bs!726294 (= (= (toList!3192 (extractMap!663 (toList!3191 lm!1707))) (Cons!49218 (h!54827 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))) (t!356276 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))))) (= lambda!147623 lambda!147622))))

(assert (=> b!4394664 true))

(declare-fun bs!726295 () Bool)

(declare-fun b!4394665 () Bool)

(assert (= bs!726295 (and b!4394665 b!4394610)))

(declare-fun lambda!147624 () Int)

(assert (=> bs!726295 (= lambda!147624 lambda!147606)))

(declare-fun b!4394662 () Bool)

(declare-fun res!1811753 () Bool)

(declare-fun e!2736236 () Bool)

(assert (=> b!4394662 (=> (not res!1811753) (not e!2736236))))

(declare-fun lt!1601765 () List!49346)

(assert (=> b!4394662 (= res!1811753 (= (length!110 lt!1601765) (length!111 (toList!3192 (extractMap!663 (toList!3191 lm!1707))))))))

(declare-fun e!2736237 () List!49346)

(assert (=> b!4394663 (= e!2736237 (Cons!49222 (_1!27687 (h!54827 (toList!3192 (extractMap!663 (toList!3191 lm!1707))))) (getKeysList!182 (t!356276 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))))))))

(declare-fun c!748115 () Bool)

(assert (=> b!4394663 (= c!748115 (containsKey!884 (t!356276 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))) (_1!27687 (h!54827 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))))))))

(declare-fun lt!1601764 () Unit!78197)

(declare-fun e!2736235 () Unit!78197)

(assert (=> b!4394663 (= lt!1601764 e!2736235)))

(declare-fun c!748116 () Bool)

(assert (=> b!4394663 (= c!748116 (contains!11590 (getKeysList!182 (t!356276 (toList!3192 (extractMap!663 (toList!3191 lm!1707))))) (_1!27687 (h!54827 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))))))))

(declare-fun lt!1601766 () Unit!78197)

(declare-fun e!2736234 () Unit!78197)

(assert (=> b!4394663 (= lt!1601766 e!2736234)))

(declare-fun lt!1601762 () List!49346)

(assert (=> b!4394663 (= lt!1601762 (getKeysList!182 (t!356276 (toList!3192 (extractMap!663 (toList!3191 lm!1707))))))))

(declare-fun lt!1601760 () Unit!78197)

(declare-fun lemmaForallContainsAddHeadPreserves!49 (List!49342 List!49346 tuple2!48786) Unit!78197)

(assert (=> b!4394663 (= lt!1601760 (lemmaForallContainsAddHeadPreserves!49 (t!356276 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))) lt!1601762 (h!54827 (toList!3192 (extractMap!663 (toList!3191 lm!1707))))))))

(assert (=> b!4394663 (forall!9320 lt!1601762 lambda!147622)))

(declare-fun lt!1601761 () Unit!78197)

(assert (=> b!4394663 (= lt!1601761 lt!1601760)))

(declare-fun res!1811755 () Bool)

(assert (=> b!4394664 (=> (not res!1811755) (not e!2736236))))

(assert (=> b!4394664 (= res!1811755 (forall!9320 lt!1601765 lambda!147623))))

(declare-fun d!1323924 () Bool)

(assert (=> d!1323924 e!2736236))

(declare-fun res!1811754 () Bool)

(assert (=> d!1323924 (=> (not res!1811754) (not e!2736236))))

(assert (=> d!1323924 (= res!1811754 (noDuplicate!627 lt!1601765))))

(assert (=> d!1323924 (= lt!1601765 e!2736237)))

(declare-fun c!748114 () Bool)

(assert (=> d!1323924 (= c!748114 (is-Cons!49218 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))))))

(assert (=> d!1323924 (invariantList!734 (toList!3192 (extractMap!663 (toList!3191 lm!1707))))))

(assert (=> d!1323924 (= (getKeysList!182 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))) lt!1601765)))

(assert (=> b!4394665 (= e!2736236 (= (content!7845 lt!1601765) (content!7845 (map!10726 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) lambda!147624))))))

(declare-fun b!4394666 () Bool)

(declare-fun Unit!78218 () Unit!78197)

(assert (=> b!4394666 (= e!2736234 Unit!78218)))

(declare-fun b!4394667 () Bool)

(assert (=> b!4394667 (= e!2736237 Nil!49222)))

(declare-fun b!4394668 () Bool)

(declare-fun Unit!78219 () Unit!78197)

(assert (=> b!4394668 (= e!2736235 Unit!78219)))

(assert (=> b!4394669 false))

(declare-fun lt!1601763 () Unit!78197)

(declare-fun forallContained!1957 (List!49346 Int K!10578) Unit!78197)

(assert (=> b!4394669 (= lt!1601763 (forallContained!1957 (getKeysList!182 (t!356276 (toList!3192 (extractMap!663 (toList!3191 lm!1707))))) lambda!147621 (_1!27687 (h!54827 (toList!3192 (extractMap!663 (toList!3191 lm!1707)))))))))

(declare-fun Unit!78220 () Unit!78197)

(assert (=> b!4394669 (= e!2736234 Unit!78220)))

(declare-fun b!4394670 () Bool)

(assert (=> b!4394670 false))

(declare-fun Unit!78221 () Unit!78197)

(assert (=> b!4394670 (= e!2736235 Unit!78221)))

(assert (= (and d!1323924 c!748114) b!4394663))

(assert (= (and d!1323924 (not c!748114)) b!4394667))

(assert (= (and b!4394663 c!748115) b!4394670))

(assert (= (and b!4394663 (not c!748115)) b!4394668))

(assert (= (and b!4394663 c!748116) b!4394669))

(assert (= (and b!4394663 (not c!748116)) b!4394666))

(assert (= (and d!1323924 res!1811754) b!4394662))

(assert (= (and b!4394662 res!1811753) b!4394664))

(assert (= (and b!4394664 res!1811755) b!4394665))

(declare-fun m!5054795 () Bool)

(assert (=> b!4394662 m!5054795))

(assert (=> b!4394662 m!5054743))

(declare-fun m!5054797 () Bool)

(assert (=> b!4394663 m!5054797))

(assert (=> b!4394663 m!5054797))

(declare-fun m!5054799 () Bool)

(assert (=> b!4394663 m!5054799))

(declare-fun m!5054801 () Bool)

(assert (=> b!4394663 m!5054801))

(declare-fun m!5054803 () Bool)

(assert (=> b!4394663 m!5054803))

(declare-fun m!5054805 () Bool)

(assert (=> b!4394663 m!5054805))

(declare-fun m!5054807 () Bool)

(assert (=> b!4394664 m!5054807))

(declare-fun m!5054809 () Bool)

(assert (=> d!1323924 m!5054809))

(assert (=> d!1323924 m!5054709))

(assert (=> b!4394669 m!5054797))

(assert (=> b!4394669 m!5054797))

(declare-fun m!5054811 () Bool)

(assert (=> b!4394669 m!5054811))

(declare-fun m!5054813 () Bool)

(assert (=> b!4394665 m!5054813))

(declare-fun m!5054815 () Bool)

(assert (=> b!4394665 m!5054815))

(assert (=> b!4394665 m!5054815))

(declare-fun m!5054817 () Bool)

(assert (=> b!4394665 m!5054817))

(assert (=> b!4394318 d!1323924))

(declare-fun lt!1601769 () Bool)

(declare-fun d!1323944 () Bool)

(assert (=> d!1323944 (= lt!1601769 (set.member (tuple2!48789 hash!377 newBucket!200) (content!7843 (toList!3191 lt!1601584))))))

(declare-fun e!2736242 () Bool)

(assert (=> d!1323944 (= lt!1601769 e!2736242)))

(declare-fun res!1811758 () Bool)

(assert (=> d!1323944 (=> (not res!1811758) (not e!2736242))))

(assert (=> d!1323944 (= res!1811758 (is-Cons!49219 (toList!3191 lt!1601584)))))

(assert (=> d!1323944 (= (contains!11586 (toList!3191 lt!1601584) (tuple2!48789 hash!377 newBucket!200)) lt!1601769)))

(declare-fun b!4394676 () Bool)

(declare-fun e!2736241 () Bool)

(assert (=> b!4394676 (= e!2736242 e!2736241)))

(declare-fun res!1811760 () Bool)

(assert (=> b!4394676 (=> res!1811760 e!2736241)))

(assert (=> b!4394676 (= res!1811760 (= (h!54828 (toList!3191 lt!1601584)) (tuple2!48789 hash!377 newBucket!200)))))

(declare-fun b!4394677 () Bool)

(assert (=> b!4394677 (= e!2736241 (contains!11586 (t!356277 (toList!3191 lt!1601584)) (tuple2!48789 hash!377 newBucket!200)))))

(assert (= (and d!1323944 res!1811758) b!4394676))

(assert (= (and b!4394676 (not res!1811760)) b!4394677))

(declare-fun m!5054819 () Bool)

(assert (=> d!1323944 m!5054819))

(declare-fun m!5054821 () Bool)

(assert (=> d!1323944 m!5054821))

(declare-fun m!5054823 () Bool)

(assert (=> b!4394677 m!5054823))

(assert (=> b!4394403 d!1323944))

(declare-fun d!1323946 () Bool)

(declare-fun res!1811761 () Bool)

(declare-fun e!2736243 () Bool)

(assert (=> d!1323946 (=> res!1811761 e!2736243)))

(assert (=> d!1323946 (= res!1811761 (not (is-Cons!49218 (t!356276 newBucket!200))))))

(assert (=> d!1323946 (= (noDuplicateKeys!604 (t!356276 newBucket!200)) e!2736243)))

(declare-fun b!4394678 () Bool)

(declare-fun e!2736244 () Bool)

(assert (=> b!4394678 (= e!2736243 e!2736244)))

(declare-fun res!1811762 () Bool)

(assert (=> b!4394678 (=> (not res!1811762) (not e!2736244))))

(assert (=> b!4394678 (= res!1811762 (not (containsKey!882 (t!356276 (t!356276 newBucket!200)) (_1!27687 (h!54827 (t!356276 newBucket!200))))))))

(declare-fun b!4394679 () Bool)

(assert (=> b!4394679 (= e!2736244 (noDuplicateKeys!604 (t!356276 (t!356276 newBucket!200))))))

(assert (= (and d!1323946 (not res!1811761)) b!4394678))

(assert (= (and b!4394678 res!1811762) b!4394679))

(declare-fun m!5054827 () Bool)

(assert (=> b!4394678 m!5054827))

(declare-fun m!5054829 () Bool)

(assert (=> b!4394679 m!5054829))

(assert (=> b!4394286 d!1323946))

(declare-fun d!1323950 () Bool)

(declare-fun lt!1601771 () Bool)

(assert (=> d!1323950 (= lt!1601771 (set.member lt!1601499 (content!7843 (t!356277 (toList!3191 lm!1707)))))))

(declare-fun e!2736246 () Bool)

(assert (=> d!1323950 (= lt!1601771 e!2736246)))

(declare-fun res!1811763 () Bool)

(assert (=> d!1323950 (=> (not res!1811763) (not e!2736246))))

(assert (=> d!1323950 (= res!1811763 (is-Cons!49219 (t!356277 (toList!3191 lm!1707))))))

(assert (=> d!1323950 (= (contains!11586 (t!356277 (toList!3191 lm!1707)) lt!1601499) lt!1601771)))

(declare-fun b!4394680 () Bool)

(declare-fun e!2736245 () Bool)

(assert (=> b!4394680 (= e!2736246 e!2736245)))

(declare-fun res!1811764 () Bool)

(assert (=> b!4394680 (=> res!1811764 e!2736245)))

(assert (=> b!4394680 (= res!1811764 (= (h!54828 (t!356277 (toList!3191 lm!1707))) lt!1601499))))

(declare-fun b!4394681 () Bool)

(assert (=> b!4394681 (= e!2736245 (contains!11586 (t!356277 (t!356277 (toList!3191 lm!1707))) lt!1601499))))

(assert (= (and d!1323950 res!1811763) b!4394680))

(assert (= (and b!4394680 (not res!1811764)) b!4394681))

(assert (=> d!1323950 m!5054689))

(declare-fun m!5054831 () Bool)

(assert (=> d!1323950 m!5054831))

(declare-fun m!5054833 () Bool)

(assert (=> b!4394681 m!5054833))

(assert (=> b!4394351 d!1323950))

(declare-fun d!1323952 () Bool)

(declare-fun res!1811765 () Bool)

(declare-fun e!2736247 () Bool)

(assert (=> d!1323952 (=> res!1811765 e!2736247)))

(assert (=> d!1323952 (= res!1811765 (is-Nil!49219 (t!356277 (toList!3191 lt!1601495))))))

(assert (=> d!1323952 (= (forall!9316 (t!356277 (toList!3191 lt!1601495)) lambda!147532) e!2736247)))

(declare-fun b!4394682 () Bool)

(declare-fun e!2736248 () Bool)

(assert (=> b!4394682 (= e!2736247 e!2736248)))

(declare-fun res!1811766 () Bool)

(assert (=> b!4394682 (=> (not res!1811766) (not e!2736248))))

(assert (=> b!4394682 (= res!1811766 (dynLambda!20736 lambda!147532 (h!54828 (t!356277 (toList!3191 lt!1601495)))))))

(declare-fun b!4394683 () Bool)

(assert (=> b!4394683 (= e!2736248 (forall!9316 (t!356277 (t!356277 (toList!3191 lt!1601495))) lambda!147532))))

(assert (= (and d!1323952 (not res!1811765)) b!4394682))

(assert (= (and b!4394682 res!1811766) b!4394683))

(declare-fun b_lambda!139009 () Bool)

(assert (=> (not b_lambda!139009) (not b!4394682)))

(declare-fun m!5054835 () Bool)

(assert (=> b!4394682 m!5054835))

(declare-fun m!5054837 () Bool)

(assert (=> b!4394683 m!5054837))

(assert (=> b!4394383 d!1323952))

(declare-fun d!1323954 () Bool)

(declare-fun res!1811767 () Bool)

(declare-fun e!2736249 () Bool)

(assert (=> d!1323954 (=> res!1811767 e!2736249)))

(assert (=> d!1323954 (= res!1811767 (and (is-Cons!49218 (t!356276 (apply!11456 lm!1707 (_1!27688 (h!54828 (toList!3191 lm!1707)))))) (= (_1!27687 (h!54827 (t!356276 (apply!11456 lm!1707 (_1!27688 (h!54828 (toList!3191 lm!1707))))))) key!3918)))))

(assert (=> d!1323954 (= (containsKey!882 (t!356276 (apply!11456 lm!1707 (_1!27688 (h!54828 (toList!3191 lm!1707))))) key!3918) e!2736249)))

(declare-fun b!4394684 () Bool)

(declare-fun e!2736250 () Bool)

(assert (=> b!4394684 (= e!2736249 e!2736250)))

(declare-fun res!1811768 () Bool)

(assert (=> b!4394684 (=> (not res!1811768) (not e!2736250))))

(assert (=> b!4394684 (= res!1811768 (is-Cons!49218 (t!356276 (apply!11456 lm!1707 (_1!27688 (h!54828 (toList!3191 lm!1707)))))))))

(declare-fun b!4394685 () Bool)

(assert (=> b!4394685 (= e!2736250 (containsKey!882 (t!356276 (t!356276 (apply!11456 lm!1707 (_1!27688 (h!54828 (toList!3191 lm!1707)))))) key!3918))))

(assert (= (and d!1323954 (not res!1811767)) b!4394684))

(assert (= (and b!4394684 res!1811768) b!4394685))

(declare-fun m!5054841 () Bool)

(assert (=> b!4394685 m!5054841))

(assert (=> b!4394395 d!1323954))

(declare-fun d!1323958 () Bool)

(declare-fun res!1811769 () Bool)

(declare-fun e!2736251 () Bool)

(assert (=> d!1323958 (=> res!1811769 e!2736251)))

(assert (=> d!1323958 (= res!1811769 (and (is-Cons!49218 (t!356276 newBucket!200)) (= (_1!27687 (h!54827 (t!356276 newBucket!200))) (_1!27687 (h!54827 newBucket!200)))))))

(assert (=> d!1323958 (= (containsKey!882 (t!356276 newBucket!200) (_1!27687 (h!54827 newBucket!200))) e!2736251)))

(declare-fun b!4394686 () Bool)

(declare-fun e!2736252 () Bool)

(assert (=> b!4394686 (= e!2736251 e!2736252)))

(declare-fun res!1811770 () Bool)

(assert (=> b!4394686 (=> (not res!1811770) (not e!2736252))))

(assert (=> b!4394686 (= res!1811770 (is-Cons!49218 (t!356276 newBucket!200)))))

(declare-fun b!4394687 () Bool)

(assert (=> b!4394687 (= e!2736252 (containsKey!882 (t!356276 (t!356276 newBucket!200)) (_1!27687 (h!54827 newBucket!200))))))

(assert (= (and d!1323958 (not res!1811769)) b!4394686))

(assert (= (and b!4394686 res!1811770) b!4394687))

(declare-fun m!5054843 () Bool)

(assert (=> b!4394687 m!5054843))

(assert (=> b!4394285 d!1323958))

(declare-fun d!1323960 () Bool)

(declare-fun lt!1601772 () Bool)

(assert (=> d!1323960 (= lt!1601772 (set.member key!3918 (content!7845 e!2736000)))))

(declare-fun e!2736253 () Bool)

(assert (=> d!1323960 (= lt!1601772 e!2736253)))

(declare-fun res!1811772 () Bool)

(assert (=> d!1323960 (=> (not res!1811772) (not e!2736253))))

(assert (=> d!1323960 (= res!1811772 (is-Cons!49222 e!2736000))))

(assert (=> d!1323960 (= (contains!11590 e!2736000 key!3918) lt!1601772)))

(declare-fun b!4394688 () Bool)

(declare-fun e!2736254 () Bool)

(assert (=> b!4394688 (= e!2736253 e!2736254)))

(declare-fun res!1811771 () Bool)

(assert (=> b!4394688 (=> res!1811771 e!2736254)))

(assert (=> b!4394688 (= res!1811771 (= (h!54833 e!2736000) key!3918))))

(declare-fun b!4394689 () Bool)

(assert (=> b!4394689 (= e!2736254 (contains!11590 (t!356280 e!2736000) key!3918))))

(assert (= (and d!1323960 res!1811772) b!4394688))

(assert (= (and b!4394688 (not res!1811771)) b!4394689))

(declare-fun m!5054845 () Bool)

(assert (=> d!1323960 m!5054845))

(declare-fun m!5054847 () Bool)

(assert (=> d!1323960 m!5054847))

(declare-fun m!5054849 () Bool)

(assert (=> b!4394689 m!5054849))

(assert (=> bm!305893 d!1323960))

(declare-fun d!1323962 () Bool)

(declare-fun isEmpty!28261 (Option!10582) Bool)

(assert (=> d!1323962 (= (isDefined!7876 (getValueByKey!568 (toList!3191 lm!1707) hash!377)) (not (isEmpty!28261 (getValueByKey!568 (toList!3191 lm!1707) hash!377))))))

(declare-fun bs!726297 () Bool)

(assert (= bs!726297 d!1323962))

(assert (=> bs!726297 m!5054467))

(declare-fun m!5054851 () Bool)

(assert (=> bs!726297 m!5054851))

(assert (=> b!4394416 d!1323962))

(declare-fun d!1323964 () Bool)

(declare-fun c!748117 () Bool)

(assert (=> d!1323964 (= c!748117 (and (is-Cons!49219 (toList!3191 lm!1707)) (= (_1!27688 (h!54828 (toList!3191 lm!1707))) hash!377)))))

(declare-fun e!2736255 () Option!10582)

(assert (=> d!1323964 (= (getValueByKey!568 (toList!3191 lm!1707) hash!377) e!2736255)))

(declare-fun b!4394690 () Bool)

(assert (=> b!4394690 (= e!2736255 (Some!10581 (_2!27688 (h!54828 (toList!3191 lm!1707)))))))

(declare-fun b!4394691 () Bool)

(declare-fun e!2736256 () Option!10582)

(assert (=> b!4394691 (= e!2736255 e!2736256)))

(declare-fun c!748118 () Bool)

(assert (=> b!4394691 (= c!748118 (and (is-Cons!49219 (toList!3191 lm!1707)) (not (= (_1!27688 (h!54828 (toList!3191 lm!1707))) hash!377))))))

(declare-fun b!4394692 () Bool)

(assert (=> b!4394692 (= e!2736256 (getValueByKey!568 (t!356277 (toList!3191 lm!1707)) hash!377))))

(declare-fun b!4394693 () Bool)

(assert (=> b!4394693 (= e!2736256 None!10581)))

(assert (= (and d!1323964 c!748117) b!4394690))

(assert (= (and d!1323964 (not c!748117)) b!4394691))

(assert (= (and b!4394691 c!748118) b!4394692))

(assert (= (and b!4394691 (not c!748118)) b!4394693))

(declare-fun m!5054853 () Bool)

(assert (=> b!4394692 m!5054853))

(assert (=> b!4394416 d!1323964))

(assert (=> b!4394314 d!1323916))

(assert (=> b!4394314 d!1323918))

(declare-fun d!1323966 () Bool)

(declare-fun res!1811773 () Bool)

(declare-fun e!2736257 () Bool)

(assert (=> d!1323966 (=> res!1811773 e!2736257)))

(assert (=> d!1323966 (= res!1811773 (and (is-Cons!49218 (t!356276 (_2!27688 (h!54828 (toList!3191 lm!1707))))) (= (_1!27687 (h!54827 (t!356276 (_2!27688 (h!54828 (toList!3191 lm!1707)))))) key!3918)))))

(assert (=> d!1323966 (= (containsKey!882 (t!356276 (_2!27688 (h!54828 (toList!3191 lm!1707)))) key!3918) e!2736257)))

(declare-fun b!4394694 () Bool)

(declare-fun e!2736258 () Bool)

(assert (=> b!4394694 (= e!2736257 e!2736258)))

(declare-fun res!1811774 () Bool)

(assert (=> b!4394694 (=> (not res!1811774) (not e!2736258))))

(assert (=> b!4394694 (= res!1811774 (is-Cons!49218 (t!356276 (_2!27688 (h!54828 (toList!3191 lm!1707))))))))

(declare-fun b!4394695 () Bool)

(assert (=> b!4394695 (= e!2736258 (containsKey!882 (t!356276 (t!356276 (_2!27688 (h!54828 (toList!3191 lm!1707))))) key!3918))))

(assert (= (and d!1323966 (not res!1811773)) b!4394694))

(assert (= (and b!4394694 res!1811774) b!4394695))

(declare-fun m!5054855 () Bool)

(assert (=> b!4394695 m!5054855))

(assert (=> b!4394393 d!1323966))

(assert (=> b!4394313 d!1323904))

(assert (=> b!4394313 d!1323906))

(assert (=> d!1323830 d!1323826))

(assert (=> d!1323830 d!1323828))

(declare-fun d!1323968 () Bool)

(assert (=> d!1323968 (not (containsKey!882 (apply!11456 lm!1707 (_1!27688 (h!54828 (toList!3191 lm!1707)))) key!3918))))

(assert (=> d!1323968 true))

(declare-fun _$39!295 () Unit!78197)

(assert (=> d!1323968 (= (choose!27451 lm!1707 key!3918 (_1!27688 (h!54828 (toList!3191 lm!1707))) hashF!1247) _$39!295)))

(declare-fun bs!726298 () Bool)

(assert (= bs!726298 d!1323968))

(assert (=> bs!726298 m!5054341))

(assert (=> bs!726298 m!5054341))

(assert (=> bs!726298 m!5054343))

(assert (=> d!1323830 d!1323968))

(declare-fun d!1323970 () Bool)

(declare-fun res!1811775 () Bool)

(declare-fun e!2736263 () Bool)

(assert (=> d!1323970 (=> res!1811775 e!2736263)))

(assert (=> d!1323970 (= res!1811775 (is-Nil!49219 (toList!3191 lm!1707)))))

(assert (=> d!1323970 (= (forall!9316 (toList!3191 lm!1707) lambda!147561) e!2736263)))

(declare-fun b!4394704 () Bool)

(declare-fun e!2736264 () Bool)

(assert (=> b!4394704 (= e!2736263 e!2736264)))

(declare-fun res!1811776 () Bool)

(assert (=> b!4394704 (=> (not res!1811776) (not e!2736264))))

(assert (=> b!4394704 (= res!1811776 (dynLambda!20736 lambda!147561 (h!54828 (toList!3191 lm!1707))))))

(declare-fun b!4394705 () Bool)

(assert (=> b!4394705 (= e!2736264 (forall!9316 (t!356277 (toList!3191 lm!1707)) lambda!147561))))

(assert (= (and d!1323970 (not res!1811775)) b!4394704))

(assert (= (and b!4394704 res!1811776) b!4394705))

(declare-fun b_lambda!139011 () Bool)

(assert (=> (not b_lambda!139011) (not b!4394704)))

(declare-fun m!5054857 () Bool)

(assert (=> b!4394704 m!5054857))

(declare-fun m!5054859 () Bool)

(assert (=> b!4394705 m!5054859))

(assert (=> d!1323830 d!1323970))

(declare-fun d!1323972 () Bool)

(declare-fun res!1811777 () Bool)

(declare-fun e!2736265 () Bool)

(assert (=> d!1323972 (=> res!1811777 e!2736265)))

(assert (=> d!1323972 (= res!1811777 (not (is-Cons!49218 (_2!27688 lt!1601499))))))

(assert (=> d!1323972 (= (noDuplicateKeys!604 (_2!27688 lt!1601499)) e!2736265)))

(declare-fun b!4394706 () Bool)

(declare-fun e!2736266 () Bool)

(assert (=> b!4394706 (= e!2736265 e!2736266)))

(declare-fun res!1811778 () Bool)

(assert (=> b!4394706 (=> (not res!1811778) (not e!2736266))))

(assert (=> b!4394706 (= res!1811778 (not (containsKey!882 (t!356276 (_2!27688 lt!1601499)) (_1!27687 (h!54827 (_2!27688 lt!1601499))))))))

(declare-fun b!4394707 () Bool)

(assert (=> b!4394707 (= e!2736266 (noDuplicateKeys!604 (t!356276 (_2!27688 lt!1601499))))))

(assert (= (and d!1323972 (not res!1811777)) b!4394706))

(assert (= (and b!4394706 res!1811778) b!4394707))

(declare-fun m!5054861 () Bool)

(assert (=> b!4394706 m!5054861))

(declare-fun m!5054863 () Bool)

(assert (=> b!4394707 m!5054863))

(assert (=> bs!726260 d!1323972))

(assert (=> b!4394316 d!1323918))

(declare-fun d!1323974 () Bool)

(assert (=> d!1323974 (= (get!16015 (getValueByKey!568 (toList!3191 lm!1707) hash!377)) (v!43631 (getValueByKey!568 (toList!3191 lm!1707) hash!377)))))

(assert (=> d!1323794 d!1323974))

(assert (=> d!1323794 d!1323964))

(declare-fun d!1323976 () Bool)

(declare-fun res!1811779 () Bool)

(declare-fun e!2736267 () Bool)

(assert (=> d!1323976 (=> res!1811779 e!2736267)))

(assert (=> d!1323976 (= res!1811779 (and (is-Cons!49218 lt!1601568) (= (_1!27687 (h!54827 lt!1601568)) key!3918)))))

(assert (=> d!1323976 (= (containsKey!882 lt!1601568 key!3918) e!2736267)))

(declare-fun b!4394708 () Bool)

(declare-fun e!2736268 () Bool)

(assert (=> b!4394708 (= e!2736267 e!2736268)))

(declare-fun res!1811780 () Bool)

(assert (=> b!4394708 (=> (not res!1811780) (not e!2736268))))

(assert (=> b!4394708 (= res!1811780 (is-Cons!49218 lt!1601568))))

(declare-fun b!4394709 () Bool)

(assert (=> b!4394709 (= e!2736268 (containsKey!882 (t!356276 lt!1601568) key!3918))))

(assert (= (and d!1323976 (not res!1811779)) b!4394708))

(assert (= (and b!4394708 res!1811780) b!4394709))

(declare-fun m!5054865 () Bool)

(assert (=> b!4394709 m!5054865))

(assert (=> d!1323802 d!1323976))

(declare-fun d!1323978 () Bool)

(declare-fun res!1811781 () Bool)

(declare-fun e!2736269 () Bool)

(assert (=> d!1323978 (=> res!1811781 e!2736269)))

(assert (=> d!1323978 (= res!1811781 (not (is-Cons!49218 lt!1601493)))))

(assert (=> d!1323978 (= (noDuplicateKeys!604 lt!1601493) e!2736269)))

(declare-fun b!4394710 () Bool)

(declare-fun e!2736270 () Bool)

(assert (=> b!4394710 (= e!2736269 e!2736270)))

(declare-fun res!1811782 () Bool)

(assert (=> b!4394710 (=> (not res!1811782) (not e!2736270))))

(assert (=> b!4394710 (= res!1811782 (not (containsKey!882 (t!356276 lt!1601493) (_1!27687 (h!54827 lt!1601493)))))))

(declare-fun b!4394711 () Bool)

(assert (=> b!4394711 (= e!2736270 (noDuplicateKeys!604 (t!356276 lt!1601493)))))

(assert (= (and d!1323978 (not res!1811781)) b!4394710))

(assert (= (and b!4394710 res!1811782) b!4394711))

(declare-fun m!5054867 () Bool)

(assert (=> b!4394710 m!5054867))

(assert (=> b!4394711 m!5054725))

(assert (=> d!1323802 d!1323978))

(declare-fun d!1323980 () Bool)

(declare-fun res!1811783 () Bool)

(declare-fun e!2736271 () Bool)

(assert (=> d!1323980 (=> res!1811783 e!2736271)))

(assert (=> d!1323980 (= res!1811783 (is-Nil!49219 (t!356277 (toList!3191 lm!1707))))))

(assert (=> d!1323980 (= (forall!9316 (t!356277 (toList!3191 lm!1707)) lambda!147532) e!2736271)))

(declare-fun b!4394712 () Bool)

(declare-fun e!2736272 () Bool)

(assert (=> b!4394712 (= e!2736271 e!2736272)))

(declare-fun res!1811784 () Bool)

(assert (=> b!4394712 (=> (not res!1811784) (not e!2736272))))

(assert (=> b!4394712 (= res!1811784 (dynLambda!20736 lambda!147532 (h!54828 (t!356277 (toList!3191 lm!1707)))))))

(declare-fun b!4394713 () Bool)

(assert (=> b!4394713 (= e!2736272 (forall!9316 (t!356277 (t!356277 (toList!3191 lm!1707))) lambda!147532))))

(assert (= (and d!1323980 (not res!1811783)) b!4394712))

(assert (= (and b!4394712 res!1811784) b!4394713))

(declare-fun b_lambda!139013 () Bool)

(assert (=> (not b_lambda!139013) (not b!4394712)))

(declare-fun m!5054869 () Bool)

(assert (=> b!4394712 m!5054869))

(declare-fun m!5054871 () Bool)

(assert (=> b!4394713 m!5054871))

(assert (=> b!4394387 d!1323980))

(declare-fun d!1323982 () Bool)

(declare-fun e!2736275 () Bool)

(assert (=> d!1323982 e!2736275))

(declare-fun res!1811785 () Bool)

(assert (=> d!1323982 (=> res!1811785 e!2736275)))

(declare-fun lt!1601773 () Bool)

(assert (=> d!1323982 (= res!1811785 (not lt!1601773))))

(declare-fun lt!1601775 () Bool)

(assert (=> d!1323982 (= lt!1601773 lt!1601775)))

(declare-fun lt!1601776 () Unit!78197)

(declare-fun e!2736276 () Unit!78197)

(assert (=> d!1323982 (= lt!1601776 e!2736276)))

(declare-fun c!748125 () Bool)

(assert (=> d!1323982 (= c!748125 lt!1601775)))

(assert (=> d!1323982 (= lt!1601775 (containsKey!885 (toList!3191 lt!1601584) (_1!27688 (tuple2!48789 hash!377 newBucket!200))))))

(assert (=> d!1323982 (= (contains!11584 lt!1601584 (_1!27688 (tuple2!48789 hash!377 newBucket!200))) lt!1601773)))

(declare-fun b!4394718 () Bool)

(declare-fun lt!1601774 () Unit!78197)

(assert (=> b!4394718 (= e!2736276 lt!1601774)))

(assert (=> b!4394718 (= lt!1601774 (lemmaContainsKeyImpliesGetValueByKeyDefined!479 (toList!3191 lt!1601584) (_1!27688 (tuple2!48789 hash!377 newBucket!200))))))

(assert (=> b!4394718 (isDefined!7876 (getValueByKey!568 (toList!3191 lt!1601584) (_1!27688 (tuple2!48789 hash!377 newBucket!200))))))

(declare-fun b!4394719 () Bool)

(declare-fun Unit!78222 () Unit!78197)

(assert (=> b!4394719 (= e!2736276 Unit!78222)))

(declare-fun b!4394720 () Bool)

(assert (=> b!4394720 (= e!2736275 (isDefined!7876 (getValueByKey!568 (toList!3191 lt!1601584) (_1!27688 (tuple2!48789 hash!377 newBucket!200)))))))

(assert (= (and d!1323982 c!748125) b!4394718))

(assert (= (and d!1323982 (not c!748125)) b!4394719))

(assert (= (and d!1323982 (not res!1811785)) b!4394720))

(declare-fun m!5054873 () Bool)

(assert (=> d!1323982 m!5054873))

(declare-fun m!5054877 () Bool)

(assert (=> b!4394718 m!5054877))

(assert (=> b!4394718 m!5054539))

(assert (=> b!4394718 m!5054539))

(declare-fun m!5054879 () Bool)

(assert (=> b!4394718 m!5054879))

(assert (=> b!4394720 m!5054539))

(assert (=> b!4394720 m!5054539))

(assert (=> b!4394720 m!5054879))

(assert (=> d!1323834 d!1323982))

(declare-fun d!1323986 () Bool)

(declare-fun c!748126 () Bool)

(assert (=> d!1323986 (= c!748126 (and (is-Cons!49219 lt!1601583) (= (_1!27688 (h!54828 lt!1601583)) (_1!27688 (tuple2!48789 hash!377 newBucket!200)))))))

(declare-fun e!2736279 () Option!10582)

(assert (=> d!1323986 (= (getValueByKey!568 lt!1601583 (_1!27688 (tuple2!48789 hash!377 newBucket!200))) e!2736279)))

(declare-fun b!4394723 () Bool)

(assert (=> b!4394723 (= e!2736279 (Some!10581 (_2!27688 (h!54828 lt!1601583))))))

(declare-fun b!4394724 () Bool)

(declare-fun e!2736280 () Option!10582)

(assert (=> b!4394724 (= e!2736279 e!2736280)))

(declare-fun c!748127 () Bool)

(assert (=> b!4394724 (= c!748127 (and (is-Cons!49219 lt!1601583) (not (= (_1!27688 (h!54828 lt!1601583)) (_1!27688 (tuple2!48789 hash!377 newBucket!200))))))))

(declare-fun b!4394725 () Bool)

(assert (=> b!4394725 (= e!2736280 (getValueByKey!568 (t!356277 lt!1601583) (_1!27688 (tuple2!48789 hash!377 newBucket!200))))))

(declare-fun b!4394726 () Bool)

(assert (=> b!4394726 (= e!2736280 None!10581)))

(assert (= (and d!1323986 c!748126) b!4394723))

(assert (= (and d!1323986 (not c!748126)) b!4394724))

(assert (= (and b!4394724 c!748127) b!4394725))

(assert (= (and b!4394724 (not c!748127)) b!4394726))

(declare-fun m!5054881 () Bool)

(assert (=> b!4394725 m!5054881))

(assert (=> d!1323834 d!1323986))

(declare-fun d!1323988 () Bool)

(assert (=> d!1323988 (= (getValueByKey!568 lt!1601583 (_1!27688 (tuple2!48789 hash!377 newBucket!200))) (Some!10581 (_2!27688 (tuple2!48789 hash!377 newBucket!200))))))

(declare-fun lt!1601779 () Unit!78197)

(declare-fun choose!27460 (List!49343 (_ BitVec 64) List!49342) Unit!78197)

(assert (=> d!1323988 (= lt!1601779 (choose!27460 lt!1601583 (_1!27688 (tuple2!48789 hash!377 newBucket!200)) (_2!27688 (tuple2!48789 hash!377 newBucket!200))))))

(declare-fun e!2736285 () Bool)

(assert (=> d!1323988 e!2736285))

(declare-fun res!1811794 () Bool)

(assert (=> d!1323988 (=> (not res!1811794) (not e!2736285))))

(assert (=> d!1323988 (= res!1811794 (isStrictlySorted!161 lt!1601583))))

(assert (=> d!1323988 (= (lemmaContainsTupThenGetReturnValue!329 lt!1601583 (_1!27688 (tuple2!48789 hash!377 newBucket!200)) (_2!27688 (tuple2!48789 hash!377 newBucket!200))) lt!1601779)))

(declare-fun b!4394733 () Bool)

(declare-fun res!1811795 () Bool)

(assert (=> b!4394733 (=> (not res!1811795) (not e!2736285))))

(assert (=> b!4394733 (= res!1811795 (containsKey!885 lt!1601583 (_1!27688 (tuple2!48789 hash!377 newBucket!200))))))

(declare-fun b!4394734 () Bool)

(assert (=> b!4394734 (= e!2736285 (contains!11586 lt!1601583 (tuple2!48789 (_1!27688 (tuple2!48789 hash!377 newBucket!200)) (_2!27688 (tuple2!48789 hash!377 newBucket!200)))))))

(assert (= (and d!1323988 res!1811794) b!4394733))

(assert (= (and b!4394733 res!1811795) b!4394734))

(assert (=> d!1323988 m!5054533))

(declare-fun m!5054891 () Bool)

(assert (=> d!1323988 m!5054891))

(declare-fun m!5054893 () Bool)

(assert (=> d!1323988 m!5054893))

(declare-fun m!5054895 () Bool)

(assert (=> b!4394733 m!5054895))

(declare-fun m!5054897 () Bool)

(assert (=> b!4394734 m!5054897))

(assert (=> d!1323834 d!1323988))

(declare-fun b!4394760 () Bool)

(declare-fun e!2736301 () List!49343)

(declare-fun call!305918 () List!49343)

(assert (=> b!4394760 (= e!2736301 call!305918)))

(declare-fun bm!305912 () Bool)

(declare-fun call!305919 () List!49343)

(declare-fun call!305917 () List!49343)

(assert (=> bm!305912 (= call!305919 call!305917)))

(declare-fun b!4394761 () Bool)

(declare-fun e!2736298 () List!49343)

(declare-fun c!748139 () Bool)

(declare-fun c!748140 () Bool)

(assert (=> b!4394761 (= e!2736298 (ite c!748139 (t!356277 (toList!3191 lm!1707)) (ite c!748140 (Cons!49219 (h!54828 (toList!3191 lm!1707)) (t!356277 (toList!3191 lm!1707))) Nil!49219)))))

(declare-fun b!4394762 () Bool)

(assert (=> b!4394762 (= e!2736298 (insertStrictlySorted!188 (t!356277 (toList!3191 lm!1707)) (_1!27688 (tuple2!48789 hash!377 newBucket!200)) (_2!27688 (tuple2!48789 hash!377 newBucket!200))))))

(declare-fun bm!305913 () Bool)

(declare-fun c!748141 () Bool)

(declare-fun $colon$colon!740 (List!49343 tuple2!48788) List!49343)

(assert (=> bm!305913 (= call!305917 ($colon$colon!740 e!2736298 (ite c!748141 (h!54828 (toList!3191 lm!1707)) (tuple2!48789 (_1!27688 (tuple2!48789 hash!377 newBucket!200)) (_2!27688 (tuple2!48789 hash!377 newBucket!200))))))))

(declare-fun c!748138 () Bool)

(assert (=> bm!305913 (= c!748138 c!748141)))

(declare-fun d!1323994 () Bool)

(declare-fun e!2736302 () Bool)

(assert (=> d!1323994 e!2736302))

(declare-fun res!1811800 () Bool)

(assert (=> d!1323994 (=> (not res!1811800) (not e!2736302))))

(declare-fun lt!1601782 () List!49343)

(assert (=> d!1323994 (= res!1811800 (isStrictlySorted!161 lt!1601782))))

(declare-fun e!2736300 () List!49343)

(assert (=> d!1323994 (= lt!1601782 e!2736300)))

(assert (=> d!1323994 (= c!748141 (and (is-Cons!49219 (toList!3191 lm!1707)) (bvslt (_1!27688 (h!54828 (toList!3191 lm!1707))) (_1!27688 (tuple2!48789 hash!377 newBucket!200)))))))

(assert (=> d!1323994 (isStrictlySorted!161 (toList!3191 lm!1707))))

(assert (=> d!1323994 (= (insertStrictlySorted!188 (toList!3191 lm!1707) (_1!27688 (tuple2!48789 hash!377 newBucket!200)) (_2!27688 (tuple2!48789 hash!377 newBucket!200))) lt!1601782)))

(declare-fun bm!305914 () Bool)

(assert (=> bm!305914 (= call!305918 call!305919)))

(declare-fun b!4394763 () Bool)

(declare-fun e!2736299 () List!49343)

(assert (=> b!4394763 (= e!2736299 call!305919)))

(declare-fun b!4394764 () Bool)

(assert (=> b!4394764 (= e!2736301 call!305918)))

(declare-fun b!4394765 () Bool)

(assert (=> b!4394765 (= e!2736302 (contains!11586 lt!1601782 (tuple2!48789 (_1!27688 (tuple2!48789 hash!377 newBucket!200)) (_2!27688 (tuple2!48789 hash!377 newBucket!200)))))))

(declare-fun b!4394766 () Bool)

(assert (=> b!4394766 (= c!748140 (and (is-Cons!49219 (toList!3191 lm!1707)) (bvsgt (_1!27688 (h!54828 (toList!3191 lm!1707))) (_1!27688 (tuple2!48789 hash!377 newBucket!200)))))))

(assert (=> b!4394766 (= e!2736299 e!2736301)))

(declare-fun b!4394767 () Bool)

(assert (=> b!4394767 (= e!2736300 call!305917)))

(declare-fun b!4394768 () Bool)

(assert (=> b!4394768 (= e!2736300 e!2736299)))

(assert (=> b!4394768 (= c!748139 (and (is-Cons!49219 (toList!3191 lm!1707)) (= (_1!27688 (h!54828 (toList!3191 lm!1707))) (_1!27688 (tuple2!48789 hash!377 newBucket!200)))))))

(declare-fun b!4394769 () Bool)

(declare-fun res!1811801 () Bool)

(assert (=> b!4394769 (=> (not res!1811801) (not e!2736302))))

(assert (=> b!4394769 (= res!1811801 (containsKey!885 lt!1601782 (_1!27688 (tuple2!48789 hash!377 newBucket!200))))))

(assert (= (and d!1323994 c!748141) b!4394767))

(assert (= (and d!1323994 (not c!748141)) b!4394768))

(assert (= (and b!4394768 c!748139) b!4394763))

(assert (= (and b!4394768 (not c!748139)) b!4394766))

(assert (= (and b!4394766 c!748140) b!4394760))

(assert (= (and b!4394766 (not c!748140)) b!4394764))

(assert (= (or b!4394760 b!4394764) bm!305914))

(assert (= (or b!4394763 bm!305914) bm!305912))

(assert (= (or b!4394767 bm!305912) bm!305913))

(assert (= (and bm!305913 c!748138) b!4394762))

(assert (= (and bm!305913 (not c!748138)) b!4394761))

(assert (= (and d!1323994 res!1811800) b!4394769))

(assert (= (and b!4394769 res!1811801) b!4394765))

(declare-fun m!5054901 () Bool)

(assert (=> b!4394765 m!5054901))

(declare-fun m!5054903 () Bool)

(assert (=> bm!305913 m!5054903))

(declare-fun m!5054905 () Bool)

(assert (=> b!4394769 m!5054905))

(declare-fun m!5054907 () Bool)

(assert (=> b!4394762 m!5054907))

(declare-fun m!5054909 () Bool)

(assert (=> d!1323994 m!5054909))

(assert (=> d!1323994 m!5054497))

(assert (=> d!1323834 d!1323994))

(declare-fun d!1324002 () Bool)

(declare-fun lt!1601783 () Bool)

(assert (=> d!1324002 (= lt!1601783 (set.member (tuple2!48789 hash!377 lt!1601493) (content!7843 (toList!3191 lm!1707))))))

(declare-fun e!2736304 () Bool)

(assert (=> d!1324002 (= lt!1601783 e!2736304)))

(declare-fun res!1811802 () Bool)

(assert (=> d!1324002 (=> (not res!1811802) (not e!2736304))))

(assert (=> d!1324002 (= res!1811802 (is-Cons!49219 (toList!3191 lm!1707)))))

(assert (=> d!1324002 (= (contains!11586 (toList!3191 lm!1707) (tuple2!48789 hash!377 lt!1601493)) lt!1601783)))

(declare-fun b!4394770 () Bool)

(declare-fun e!2736303 () Bool)

(assert (=> b!4394770 (= e!2736304 e!2736303)))

(declare-fun res!1811803 () Bool)

(assert (=> b!4394770 (=> res!1811803 e!2736303)))

(assert (=> b!4394770 (= res!1811803 (= (h!54828 (toList!3191 lm!1707)) (tuple2!48789 hash!377 lt!1601493)))))

(declare-fun b!4394771 () Bool)

(assert (=> b!4394771 (= e!2736303 (contains!11586 (t!356277 (toList!3191 lm!1707)) (tuple2!48789 hash!377 lt!1601493)))))

(assert (= (and d!1324002 res!1811802) b!4394770))

(assert (= (and b!4394770 (not res!1811803)) b!4394771))

(assert (=> d!1324002 m!5054475))

(declare-fun m!5054911 () Bool)

(assert (=> d!1324002 m!5054911))

(declare-fun m!5054913 () Bool)

(assert (=> b!4394771 m!5054913))

(assert (=> d!1323806 d!1324002))

(declare-fun d!1324004 () Bool)

(assert (=> d!1324004 (contains!11586 (toList!3191 lm!1707) (tuple2!48789 hash!377 lt!1601493))))

(assert (=> d!1324004 true))

(declare-fun _$14!863 () Unit!78197)

(assert (=> d!1324004 (= (choose!27450 (toList!3191 lm!1707) hash!377 lt!1601493) _$14!863)))

(declare-fun bs!726300 () Bool)

(assert (= bs!726300 d!1324004))

(assert (=> bs!726300 m!5054493))

(assert (=> d!1323806 d!1324004))

(assert (=> d!1323806 d!1323896))

(declare-fun d!1324006 () Bool)

(declare-fun choose!27463 (Hashable!4996 K!10578) (_ BitVec 64))

(assert (=> d!1324006 (= (hash!1806 hashF!1247 key!3918) (choose!27463 hashF!1247 key!3918))))

(declare-fun bs!726301 () Bool)

(assert (= bs!726301 d!1324006))

(declare-fun m!5054915 () Bool)

(assert (=> bs!726301 m!5054915))

(assert (=> d!1323816 d!1324006))

(assert (=> b!4394371 d!1323964))

(declare-fun d!1324008 () Bool)

(declare-fun res!1811804 () Bool)

(declare-fun e!2736305 () Bool)

(assert (=> d!1324008 (=> res!1811804 e!2736305)))

(assert (=> d!1324008 (= res!1811804 (not (is-Cons!49218 (_2!27688 (h!54828 (toList!3191 lt!1601495))))))))

(assert (=> d!1324008 (= (noDuplicateKeys!604 (_2!27688 (h!54828 (toList!3191 lt!1601495)))) e!2736305)))

(declare-fun b!4394772 () Bool)

(declare-fun e!2736306 () Bool)

(assert (=> b!4394772 (= e!2736305 e!2736306)))

(declare-fun res!1811805 () Bool)

(assert (=> b!4394772 (=> (not res!1811805) (not e!2736306))))

(assert (=> b!4394772 (= res!1811805 (not (containsKey!882 (t!356276 (_2!27688 (h!54828 (toList!3191 lt!1601495)))) (_1!27687 (h!54827 (_2!27688 (h!54828 (toList!3191 lt!1601495))))))))))

(declare-fun b!4394773 () Bool)

(assert (=> b!4394773 (= e!2736306 (noDuplicateKeys!604 (t!356276 (_2!27688 (h!54828 (toList!3191 lt!1601495))))))))

(assert (= (and d!1324008 (not res!1811804)) b!4394772))

(assert (= (and b!4394772 res!1811805) b!4394773))

(declare-fun m!5054917 () Bool)

(assert (=> b!4394772 m!5054917))

(declare-fun m!5054919 () Bool)

(assert (=> b!4394773 m!5054919))

(assert (=> bs!726259 d!1324008))

(declare-fun d!1324010 () Bool)

(assert (=> d!1324010 (isDefined!7876 (getValueByKey!568 (toList!3191 lm!1707) hash!377))))

(declare-fun lt!1601800 () Unit!78197)

(declare-fun choose!27464 (List!49343 (_ BitVec 64)) Unit!78197)

(assert (=> d!1324010 (= lt!1601800 (choose!27464 (toList!3191 lm!1707) hash!377))))

(declare-fun e!2736315 () Bool)

(assert (=> d!1324010 e!2736315))

(declare-fun res!1811808 () Bool)

(assert (=> d!1324010 (=> (not res!1811808) (not e!2736315))))

(assert (=> d!1324010 (= res!1811808 (isStrictlySorted!161 (toList!3191 lm!1707)))))

(assert (=> d!1324010 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!479 (toList!3191 lm!1707) hash!377) lt!1601800)))

(declare-fun b!4394788 () Bool)

(assert (=> b!4394788 (= e!2736315 (containsKey!885 (toList!3191 lm!1707) hash!377))))

(assert (= (and d!1324010 res!1811808) b!4394788))

(assert (=> d!1324010 m!5054467))

(assert (=> d!1324010 m!5054467))

(assert (=> d!1324010 m!5054553))

(declare-fun m!5054921 () Bool)

(assert (=> d!1324010 m!5054921))

(assert (=> d!1324010 m!5054497))

(assert (=> b!4394788 m!5054549))

(assert (=> b!4394414 d!1324010))

(assert (=> b!4394414 d!1323962))

(assert (=> b!4394414 d!1323964))

(declare-fun d!1324012 () Bool)

(declare-fun noDuplicatedKeys!143 (List!49342) Bool)

(assert (=> d!1324012 (= (invariantList!734 (toList!3192 lt!1601555)) (noDuplicatedKeys!143 (toList!3192 lt!1601555)))))

(declare-fun bs!726302 () Bool)

(assert (= bs!726302 d!1324012))

(declare-fun m!5054923 () Bool)

(assert (=> bs!726302 m!5054923))

(assert (=> d!1323790 d!1324012))

(declare-fun d!1324014 () Bool)

(declare-fun res!1811815 () Bool)

(declare-fun e!2736318 () Bool)

(assert (=> d!1324014 (=> res!1811815 e!2736318)))

(assert (=> d!1324014 (= res!1811815 (is-Nil!49219 (toList!3191 lm!1707)))))

(assert (=> d!1324014 (= (forall!9316 (toList!3191 lm!1707) lambda!147549) e!2736318)))

(declare-fun b!4394793 () Bool)

(declare-fun e!2736319 () Bool)

(assert (=> b!4394793 (= e!2736318 e!2736319)))

(declare-fun res!1811816 () Bool)

(assert (=> b!4394793 (=> (not res!1811816) (not e!2736319))))

(assert (=> b!4394793 (= res!1811816 (dynLambda!20736 lambda!147549 (h!54828 (toList!3191 lm!1707))))))

(declare-fun b!4394794 () Bool)

(assert (=> b!4394794 (= e!2736319 (forall!9316 (t!356277 (toList!3191 lm!1707)) lambda!147549))))

(assert (= (and d!1324014 (not res!1811815)) b!4394793))

(assert (= (and b!4394793 res!1811816) b!4394794))

(declare-fun b_lambda!139017 () Bool)

(assert (=> (not b_lambda!139017) (not b!4394793)))

(declare-fun m!5054925 () Bool)

(assert (=> b!4394793 m!5054925))

(declare-fun m!5054927 () Bool)

(assert (=> b!4394794 m!5054927))

(assert (=> d!1323790 d!1324014))

(declare-fun d!1324016 () Bool)

(declare-fun res!1811817 () Bool)

(declare-fun e!2736320 () Bool)

(assert (=> d!1324016 (=> res!1811817 e!2736320)))

(assert (=> d!1324016 (= res!1811817 (is-Nil!49219 (toList!3191 (+!833 lm!1707 (tuple2!48789 hash!377 newBucket!200)))))))

(assert (=> d!1324016 (= (forall!9316 (toList!3191 (+!833 lm!1707 (tuple2!48789 hash!377 newBucket!200))) lambda!147532) e!2736320)))

(declare-fun b!4394797 () Bool)

(declare-fun e!2736321 () Bool)

(assert (=> b!4394797 (= e!2736320 e!2736321)))

(declare-fun res!1811818 () Bool)

(assert (=> b!4394797 (=> (not res!1811818) (not e!2736321))))

(assert (=> b!4394797 (= res!1811818 (dynLambda!20736 lambda!147532 (h!54828 (toList!3191 (+!833 lm!1707 (tuple2!48789 hash!377 newBucket!200))))))))

(declare-fun b!4394798 () Bool)

(assert (=> b!4394798 (= e!2736321 (forall!9316 (t!356277 (toList!3191 (+!833 lm!1707 (tuple2!48789 hash!377 newBucket!200)))) lambda!147532))))

(assert (= (and d!1324016 (not res!1811817)) b!4394797))

(assert (= (and b!4394797 res!1811818) b!4394798))

(declare-fun b_lambda!139019 () Bool)

(assert (=> (not b_lambda!139019) (not b!4394797)))

(declare-fun m!5054929 () Bool)

(assert (=> b!4394797 m!5054929))

(declare-fun m!5054931 () Bool)

(assert (=> b!4394798 m!5054931))

(assert (=> d!1323836 d!1324016))

(assert (=> d!1323836 d!1323834))

(declare-fun d!1324018 () Bool)

(assert (=> d!1324018 (forall!9316 (toList!3191 (+!833 lm!1707 (tuple2!48789 hash!377 newBucket!200))) lambda!147532)))

(assert (=> d!1324018 true))

(declare-fun _$31!298 () Unit!78197)

(assert (=> d!1324018 (= (choose!27452 lm!1707 lambda!147532 hash!377 newBucket!200) _$31!298)))

(declare-fun bs!726303 () Bool)

(assert (= bs!726303 d!1324018))

(assert (=> bs!726303 m!5054349))

(assert (=> bs!726303 m!5054543))

(assert (=> d!1323836 d!1324018))

(assert (=> d!1323836 d!1323818))

(assert (=> b!4394311 d!1323888))

(declare-fun d!1324020 () Bool)

(assert (=> d!1324020 (containsKey!884 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) key!3918)))

(declare-fun lt!1601810 () Unit!78197)

(declare-fun choose!27465 (List!49342 K!10578) Unit!78197)

(assert (=> d!1324020 (= lt!1601810 (choose!27465 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) key!3918))))

(assert (=> d!1324020 (invariantList!734 (toList!3192 (extractMap!663 (toList!3191 lm!1707))))))

(assert (=> d!1324020 (= (lemmaInGetKeysListThenContainsKey!180 (toList!3192 (extractMap!663 (toList!3191 lm!1707))) key!3918) lt!1601810)))

(declare-fun bs!726311 () Bool)

(assert (= bs!726311 d!1324020))

(assert (=> bs!726311 m!5054439))

(declare-fun m!5054933 () Bool)

(assert (=> bs!726311 m!5054933))

(assert (=> bs!726311 m!5054709))

(assert (=> b!4394311 d!1324020))

(declare-fun tp!1331515 () Bool)

(declare-fun e!2736326 () Bool)

(declare-fun b!4394811 () Bool)

(assert (=> b!4394811 (= e!2736326 (and tp_is_empty!25653 tp_is_empty!25655 tp!1331515))))

(assert (=> b!4394421 (= tp!1331499 e!2736326)))

(assert (= (and b!4394421 (is-Cons!49218 (t!356276 (t!356276 newBucket!200)))) b!4394811))

(declare-fun b!4394812 () Bool)

(declare-fun e!2736327 () Bool)

(declare-fun tp!1331516 () Bool)

(assert (=> b!4394812 (= e!2736327 (and tp_is_empty!25653 tp_is_empty!25655 tp!1331516))))

(assert (=> b!4394426 (= tp!1331504 e!2736327)))

(assert (= (and b!4394426 (is-Cons!49218 (_2!27688 (h!54828 (toList!3191 lm!1707))))) b!4394812))

(declare-fun b!4394813 () Bool)

(declare-fun e!2736328 () Bool)

(declare-fun tp!1331517 () Bool)

(declare-fun tp!1331518 () Bool)

(assert (=> b!4394813 (= e!2736328 (and tp!1331517 tp!1331518))))

(assert (=> b!4394426 (= tp!1331505 e!2736328)))

(assert (= (and b!4394426 (is-Cons!49219 (t!356277 (toList!3191 lm!1707)))) b!4394813))

(declare-fun b_lambda!139021 () Bool)

(assert (= b_lambda!139003 (or d!1323778 b_lambda!139021)))

(declare-fun bs!726312 () Bool)

(declare-fun d!1324022 () Bool)

(assert (= bs!726312 (and d!1324022 d!1323778)))

(assert (=> bs!726312 (= (dynLambda!20738 lambda!147546 (h!54827 newBucket!200)) (= (hash!1803 hashF!1247 (_1!27687 (h!54827 newBucket!200))) hash!377))))

(declare-fun m!5054947 () Bool)

(assert (=> bs!726312 m!5054947))

(assert (=> b!4394542 d!1324022))

(declare-fun b_lambda!139023 () Bool)

(assert (= b_lambda!139017 (or d!1323790 b_lambda!139023)))

(declare-fun bs!726313 () Bool)

(declare-fun d!1324024 () Bool)

(assert (= bs!726313 (and d!1324024 d!1323790)))

(assert (=> bs!726313 (= (dynLambda!20736 lambda!147549 (h!54828 (toList!3191 lm!1707))) (noDuplicateKeys!604 (_2!27688 (h!54828 (toList!3191 lm!1707)))))))

(assert (=> bs!726313 m!5054555))

(assert (=> b!4394793 d!1324024))

(declare-fun b_lambda!139025 () Bool)

(assert (= b_lambda!139011 (or d!1323830 b_lambda!139025)))

(declare-fun bs!726314 () Bool)

(declare-fun d!1324026 () Bool)

(assert (= bs!726314 (and d!1324026 d!1323830)))

(assert (=> bs!726314 (= (dynLambda!20736 lambda!147561 (h!54828 (toList!3191 lm!1707))) (noDuplicateKeys!604 (_2!27688 (h!54828 (toList!3191 lm!1707)))))))

(assert (=> bs!726314 m!5054555))

(assert (=> b!4394704 d!1324026))

(declare-fun b_lambda!139027 () Bool)

(assert (= b_lambda!139009 (or start!426486 b_lambda!139027)))

(declare-fun bs!726315 () Bool)

(declare-fun d!1324028 () Bool)

(assert (= bs!726315 (and d!1324028 start!426486)))

(assert (=> bs!726315 (= (dynLambda!20736 lambda!147532 (h!54828 (t!356277 (toList!3191 lt!1601495)))) (noDuplicateKeys!604 (_2!27688 (h!54828 (t!356277 (toList!3191 lt!1601495))))))))

(declare-fun m!5054961 () Bool)

(assert (=> bs!726315 m!5054961))

(assert (=> b!4394682 d!1324028))

(declare-fun b_lambda!139029 () Bool)

(assert (= b_lambda!139019 (or start!426486 b_lambda!139029)))

(declare-fun bs!726316 () Bool)

(declare-fun d!1324032 () Bool)

(assert (= bs!726316 (and d!1324032 start!426486)))

(assert (=> bs!726316 (= (dynLambda!20736 lambda!147532 (h!54828 (toList!3191 (+!833 lm!1707 (tuple2!48789 hash!377 newBucket!200))))) (noDuplicateKeys!604 (_2!27688 (h!54828 (toList!3191 (+!833 lm!1707 (tuple2!48789 hash!377 newBucket!200)))))))))

(declare-fun m!5054963 () Bool)

(assert (=> bs!726316 m!5054963))

(assert (=> b!4394797 d!1324032))

(declare-fun b_lambda!139031 () Bool)

(assert (= b_lambda!139013 (or start!426486 b_lambda!139031)))

(declare-fun bs!726317 () Bool)

(declare-fun d!1324034 () Bool)

(assert (= bs!726317 (and d!1324034 start!426486)))

(assert (=> bs!726317 (= (dynLambda!20736 lambda!147532 (h!54828 (t!356277 (toList!3191 lm!1707)))) (noDuplicateKeys!604 (_2!27688 (h!54828 (t!356277 (toList!3191 lm!1707))))))))

(declare-fun m!5054965 () Bool)

(assert (=> bs!726317 m!5054965))

(assert (=> b!4394712 d!1324034))

(declare-fun b_lambda!139033 () Bool)

(assert (= b_lambda!139005 (or d!1323810 b_lambda!139033)))

(declare-fun bs!726318 () Bool)

(declare-fun d!1324036 () Bool)

(assert (= bs!726318 (and d!1324036 d!1323810)))

(assert (=> bs!726318 (= (dynLambda!20736 lambda!147555 (h!54828 (toList!3191 lm!1707))) (allKeysSameHash!562 (_2!27688 (h!54828 (toList!3191 lm!1707))) (_1!27688 (h!54828 (toList!3191 lm!1707))) hashF!1247))))

(declare-fun m!5054967 () Bool)

(assert (=> bs!726318 m!5054967))

(assert (=> b!4394568 d!1324036))

(declare-fun b_lambda!139035 () Bool)

(assert (= b_lambda!139001 (or start!426486 b_lambda!139035)))

(assert (=> d!1323884 d!1323846))

(push 1)

(assert (not b!4394608))

(assert (not b!4394681))

(assert (not b!4394665))

(assert (not b!4394689))

(assert (not d!1323904))

(assert (not d!1323902))

(assert (not b!4394811))

(assert (not b!4394709))

(assert (not b_lambda!139027))

(assert (not b!4394706))

(assert (not d!1324004))

(assert (not b!4394771))

(assert (not b!4394705))

(assert (not b_lambda!139035))

(assert (not b!4394537))

(assert (not b_lambda!138985))

(assert (not b!4394543))

(assert (not b!4394679))

(assert (not b!4394772))

(assert (not d!1323908))

(assert (not b_lambda!138979))

(assert (not b!4394569))

(assert (not b!4394610))

(assert (not d!1324018))

(assert (not b!4394695))

(assert (not d!1323994))

(assert (not b!4394662))

(assert (not b!4394614))

(assert (not b_lambda!139023))

(assert (not b!4394812))

(assert (not b!4394515))

(assert (not b!4394519))

(assert (not b!4394734))

(assert (not b!4394685))

(assert (not b!4394522))

(assert (not bs!726315))

(assert (not b!4394711))

(assert (not b!4394584))

(assert (not b!4394733))

(assert (not bs!726314))

(assert (not bm!305905))

(assert (not b!4394720))

(assert (not b!4394718))

(assert (not b_lambda!138983))

(assert (not b!4394683))

(assert (not b!4394725))

(assert (not bm!305904))

(assert (not b!4394713))

(assert (not d!1324010))

(assert (not d!1323912))

(assert (not b!4394707))

(assert (not bs!726313))

(assert (not d!1323960))

(assert (not b!4394813))

(assert (not b!4394677))

(assert (not b!4394524))

(assert (not b!4394692))

(assert (not d!1324002))

(assert (not b!4394669))

(assert (not b!4394525))

(assert (not b!4394613))

(assert (not b!4394765))

(assert (not bs!726317))

(assert (not d!1324006))

(assert (not b!4394567))

(assert tp_is_empty!25655)

(assert (not b!4394798))

(assert (not b!4394788))

(assert (not b!4394595))

(assert (not d!1323918))

(assert (not bs!726318))

(assert (not b!4394580))

(assert (not d!1323988))

(assert (not d!1323944))

(assert (not b_lambda!139025))

(assert (not b!4394710))

(assert (not b!4394517))

(assert (not b!4394554))

(assert (not b_lambda!139033))

(assert (not bs!726316))

(assert (not b!4394769))

(assert (not b!4394663))

(assert (not d!1323916))

(assert (not d!1323962))

(assert (not d!1324020))

(assert (not d!1324012))

(assert (not b_lambda!139029))

(assert (not b_lambda!138981))

(assert (not d!1323950))

(assert (not b!4394664))

(assert (not b!4394773))

(assert (not b_lambda!139031))

(assert (not b!4394588))

(assert (not b!4394678))

(assert (not b!4394531))

(assert (not b!4394609))

(assert (not b_lambda!139021))

(assert (not b!4394762))

(assert (not bm!305913))

(assert (not b!4394794))

(assert (not b!4394518))

(assert (not d!1323982))

(assert (not bs!726312))

(assert (not b!4394561))

(assert (not d!1323878))

(assert (not bm!305903))

(assert (not d!1323880))

(assert (not d!1323968))

(assert (not b!4394687))

(assert (not d!1323924))

(assert tp_is_empty!25653)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

