; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506478 () Bool)

(assert start!506478)

(declare-fun bs!1173055 () Bool)

(declare-fun b!4852420 () Bool)

(assert (= bs!1173055 (and b!4852420 start!506478)))

(declare-fun lambda!242846 () Int)

(declare-fun lambda!242845 () Int)

(assert (=> bs!1173055 (not (= lambda!242846 lambda!242845))))

(assert (=> b!4852420 true))

(declare-fun b!4852418 () Bool)

(declare-fun e!3033454 () Bool)

(declare-fun tp!1365087 () Bool)

(assert (=> b!4852418 (= e!3033454 tp!1365087)))

(declare-fun e!3033453 () Bool)

(declare-fun e!3033455 () Bool)

(assert (=> b!4852420 (= e!3033453 (not e!3033455))))

(declare-fun res!2071384 () Bool)

(assert (=> b!4852420 (=> res!2071384 e!3033455)))

(declare-datatypes ((Hashable!7533 0))(
  ( (HashableExt!7532 (__x!33808 Int)) )
))
(declare-fun hashF!1802 () Hashable!7533)

(declare-fun hash!467 () (_ BitVec 64))

(declare-datatypes ((K!17492 0))(
  ( (K!17493 (val!22299 Int)) )
))
(declare-datatypes ((V!17738 0))(
  ( (V!17739 (val!22300 Int)) )
))
(declare-datatypes ((tuple2!59434 0))(
  ( (tuple2!59435 (_1!33011 K!17492) (_2!33011 V!17738)) )
))
(declare-datatypes ((List!55774 0))(
  ( (Nil!55650) (Cons!55650 (h!62087 tuple2!59434) (t!363270 List!55774)) )
))
(declare-fun lt!1990245 () List!55774)

(declare-fun allKeysSameHash!2043 (List!55774 (_ BitVec 64) Hashable!7533) Bool)

(assert (=> b!4852420 (= res!2071384 (not (allKeysSameHash!2043 lt!1990245 hash!467 hashF!1802)))))

(declare-datatypes ((tuple2!59436 0))(
  ( (tuple2!59437 (_1!33012 (_ BitVec 64)) (_2!33012 List!55774)) )
))
(declare-datatypes ((List!55775 0))(
  ( (Nil!55651) (Cons!55651 (h!62088 tuple2!59436) (t!363271 List!55775)) )
))
(declare-datatypes ((ListLongMap!6525 0))(
  ( (ListLongMap!6526 (toList!7891 List!55775)) )
))
(declare-fun lm!2840 () ListLongMap!6525)

(declare-datatypes ((Unit!145775 0))(
  ( (Unit!145776) )
))
(declare-fun lt!1990244 () Unit!145775)

(declare-fun lt!1990247 () tuple2!59436)

(declare-fun forallContained!4566 (List!55775 Int tuple2!59436) Unit!145775)

(assert (=> b!4852420 (= lt!1990244 (forallContained!4566 (toList!7891 lm!2840) lambda!242846 lt!1990247))))

(declare-fun contains!19300 (List!55775 tuple2!59436) Bool)

(assert (=> b!4852420 (contains!19300 (toList!7891 lm!2840) lt!1990247)))

(assert (=> b!4852420 (= lt!1990247 (tuple2!59437 hash!467 lt!1990245))))

(declare-fun lt!1990243 () Unit!145775)

(declare-fun lemmaGetValueImpliesTupleContained!794 (ListLongMap!6525 (_ BitVec 64) List!55774) Unit!145775)

(assert (=> b!4852420 (= lt!1990243 (lemmaGetValueImpliesTupleContained!794 lm!2840 hash!467 lt!1990245))))

(declare-fun apply!13472 (ListLongMap!6525 (_ BitVec 64)) List!55774)

(assert (=> b!4852420 (= lt!1990245 (apply!13472 lm!2840 hash!467))))

(declare-fun b!4852421 () Bool)

(declare-fun res!2071383 () Bool)

(assert (=> b!4852421 (=> (not res!2071383) (not e!3033453))))

(declare-fun key!6955 () K!17492)

(declare-fun hash!5658 (Hashable!7533 K!17492) (_ BitVec 64))

(assert (=> b!4852421 (= res!2071383 (not (= hash!467 (hash!5658 hashF!1802 key!6955))))))

(declare-fun b!4852422 () Bool)

(declare-fun res!2071382 () Bool)

(assert (=> b!4852422 (=> (not res!2071382) (not e!3033453))))

(declare-fun contains!19301 (ListLongMap!6525 (_ BitVec 64)) Bool)

(assert (=> b!4852422 (= res!2071382 (contains!19301 lm!2840 hash!467))))

(declare-fun b!4852423 () Bool)

(declare-fun noDuplicateKeys!2624 (List!55774) Bool)

(assert (=> b!4852423 (= e!3033455 (noDuplicateKeys!2624 lt!1990245))))

(declare-fun lt!1990246 () Unit!145775)

(assert (=> b!4852423 (= lt!1990246 (forallContained!4566 (toList!7891 lm!2840) lambda!242845 lt!1990247))))

(declare-fun b!4852424 () Bool)

(declare-fun res!2071385 () Bool)

(assert (=> b!4852424 (=> (not res!2071385) (not e!3033453))))

(declare-fun allKeysSameHashInMap!2847 (ListLongMap!6525 Hashable!7533) Bool)

(assert (=> b!4852424 (= res!2071385 (allKeysSameHashInMap!2847 lm!2840 hashF!1802))))

(declare-fun b!4852419 () Bool)

(declare-fun res!2071380 () Bool)

(assert (=> b!4852419 (=> res!2071380 e!3033455)))

(declare-fun containsKey!4739 (List!55774 K!17492) Bool)

(assert (=> b!4852419 (= res!2071380 (not (containsKey!4739 lt!1990245 key!6955)))))

(declare-fun res!2071381 () Bool)

(assert (=> start!506478 (=> (not res!2071381) (not e!3033453))))

(declare-fun forall!12984 (List!55775 Int) Bool)

(assert (=> start!506478 (= res!2071381 (forall!12984 (toList!7891 lm!2840) lambda!242845))))

(assert (=> start!506478 e!3033453))

(declare-fun inv!71355 (ListLongMap!6525) Bool)

(assert (=> start!506478 (and (inv!71355 lm!2840) e!3033454)))

(assert (=> start!506478 true))

(declare-fun tp_is_empty!35365 () Bool)

(assert (=> start!506478 tp_is_empty!35365))

(assert (= (and start!506478 res!2071381) b!4852424))

(assert (= (and b!4852424 res!2071385) b!4852422))

(assert (= (and b!4852422 res!2071382) b!4852421))

(assert (= (and b!4852421 res!2071383) b!4852420))

(assert (= (and b!4852420 (not res!2071384)) b!4852419))

(assert (= (and b!4852419 (not res!2071380)) b!4852423))

(assert (= start!506478 b!4852418))

(declare-fun m!5850632 () Bool)

(assert (=> b!4852421 m!5850632))

(declare-fun m!5850634 () Bool)

(assert (=> b!4852423 m!5850634))

(declare-fun m!5850636 () Bool)

(assert (=> b!4852423 m!5850636))

(declare-fun m!5850638 () Bool)

(assert (=> b!4852420 m!5850638))

(declare-fun m!5850640 () Bool)

(assert (=> b!4852420 m!5850640))

(declare-fun m!5850642 () Bool)

(assert (=> b!4852420 m!5850642))

(declare-fun m!5850644 () Bool)

(assert (=> b!4852420 m!5850644))

(declare-fun m!5850646 () Bool)

(assert (=> b!4852420 m!5850646))

(declare-fun m!5850648 () Bool)

(assert (=> b!4852424 m!5850648))

(declare-fun m!5850650 () Bool)

(assert (=> b!4852422 m!5850650))

(declare-fun m!5850652 () Bool)

(assert (=> b!4852419 m!5850652))

(declare-fun m!5850654 () Bool)

(assert (=> start!506478 m!5850654))

(declare-fun m!5850656 () Bool)

(assert (=> start!506478 m!5850656))

(push 1)

(assert (not b!4852422))

(assert (not b!4852420))

(assert (not b!4852421))

(assert (not b!4852424))

(assert (not b!4852419))

(assert (not start!506478))

(assert tp_is_empty!35365)

(assert (not b!4852423))

(assert (not b!4852418))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1557640 () Bool)

(declare-fun lt!1990267 () Bool)

(declare-fun content!9909 (List!55775) (Set tuple2!59436))

(assert (=> d!1557640 (= lt!1990267 (set.member lt!1990247 (content!9909 (toList!7891 lm!2840))))))

(declare-fun e!3033474 () Bool)

(assert (=> d!1557640 (= lt!1990267 e!3033474)))

(declare-fun res!2071413 () Bool)

(assert (=> d!1557640 (=> (not res!2071413) (not e!3033474))))

(assert (=> d!1557640 (= res!2071413 (is-Cons!55651 (toList!7891 lm!2840)))))

(assert (=> d!1557640 (= (contains!19300 (toList!7891 lm!2840) lt!1990247) lt!1990267)))

(declare-fun b!4852458 () Bool)

(declare-fun e!3033473 () Bool)

(assert (=> b!4852458 (= e!3033474 e!3033473)))

(declare-fun res!2071412 () Bool)

(assert (=> b!4852458 (=> res!2071412 e!3033473)))

(assert (=> b!4852458 (= res!2071412 (= (h!62088 (toList!7891 lm!2840)) lt!1990247))))

(declare-fun b!4852459 () Bool)

(assert (=> b!4852459 (= e!3033473 (contains!19300 (t!363271 (toList!7891 lm!2840)) lt!1990247))))

(assert (= (and d!1557640 res!2071413) b!4852458))

(assert (= (and b!4852458 (not res!2071412)) b!4852459))

(declare-fun m!5850684 () Bool)

(assert (=> d!1557640 m!5850684))

(declare-fun m!5850686 () Bool)

(assert (=> d!1557640 m!5850686))

(declare-fun m!5850688 () Bool)

(assert (=> b!4852459 m!5850688))

(assert (=> b!4852420 d!1557640))

(declare-fun d!1557642 () Bool)

(assert (=> d!1557642 true))

(assert (=> d!1557642 true))

(declare-fun lambda!242857 () Int)

(declare-fun forall!12986 (List!55774 Int) Bool)

(assert (=> d!1557642 (= (allKeysSameHash!2043 lt!1990245 hash!467 hashF!1802) (forall!12986 lt!1990245 lambda!242857))))

(declare-fun bs!1173057 () Bool)

(assert (= bs!1173057 d!1557642))

(declare-fun m!5850696 () Bool)

(assert (=> bs!1173057 m!5850696))

(assert (=> b!4852420 d!1557642))

(declare-fun d!1557646 () Bool)

(declare-fun dynLambda!22372 (Int tuple2!59436) Bool)

(assert (=> d!1557646 (dynLambda!22372 lambda!242846 lt!1990247)))

(declare-fun lt!1990273 () Unit!145775)

(declare-fun choose!35521 (List!55775 Int tuple2!59436) Unit!145775)

(assert (=> d!1557646 (= lt!1990273 (choose!35521 (toList!7891 lm!2840) lambda!242846 lt!1990247))))

(declare-fun e!3033481 () Bool)

(assert (=> d!1557646 e!3033481))

(declare-fun res!2071420 () Bool)

(assert (=> d!1557646 (=> (not res!2071420) (not e!3033481))))

(assert (=> d!1557646 (= res!2071420 (forall!12984 (toList!7891 lm!2840) lambda!242846))))

(assert (=> d!1557646 (= (forallContained!4566 (toList!7891 lm!2840) lambda!242846 lt!1990247) lt!1990273)))

(declare-fun b!4852470 () Bool)

(assert (=> b!4852470 (= e!3033481 (contains!19300 (toList!7891 lm!2840) lt!1990247))))

(assert (= (and d!1557646 res!2071420) b!4852470))

(declare-fun b_lambda!193043 () Bool)

(assert (=> (not b_lambda!193043) (not d!1557646)))

(declare-fun m!5850698 () Bool)

(assert (=> d!1557646 m!5850698))

(declare-fun m!5850700 () Bool)

(assert (=> d!1557646 m!5850700))

(declare-fun m!5850702 () Bool)

(assert (=> d!1557646 m!5850702))

(assert (=> b!4852470 m!5850640))

(assert (=> b!4852420 d!1557646))

(declare-fun d!1557648 () Bool)

(declare-datatypes ((Option!13730 0))(
  ( (None!13729) (Some!13729 (v!49529 List!55774)) )
))
(declare-fun get!19107 (Option!13730) List!55774)

(declare-fun getValueByKey!2746 (List!55775 (_ BitVec 64)) Option!13730)

(assert (=> d!1557648 (= (apply!13472 lm!2840 hash!467) (get!19107 (getValueByKey!2746 (toList!7891 lm!2840) hash!467)))))

(declare-fun bs!1173058 () Bool)

(assert (= bs!1173058 d!1557648))

(declare-fun m!5850704 () Bool)

(assert (=> bs!1173058 m!5850704))

(assert (=> bs!1173058 m!5850704))

(declare-fun m!5850706 () Bool)

(assert (=> bs!1173058 m!5850706))

(assert (=> b!4852420 d!1557648))

(declare-fun d!1557650 () Bool)

(assert (=> d!1557650 (contains!19300 (toList!7891 lm!2840) (tuple2!59437 hash!467 lt!1990245))))

(declare-fun lt!1990277 () Unit!145775)

(declare-fun choose!35522 (ListLongMap!6525 (_ BitVec 64) List!55774) Unit!145775)

(assert (=> d!1557650 (= lt!1990277 (choose!35522 lm!2840 hash!467 lt!1990245))))

(assert (=> d!1557650 (contains!19301 lm!2840 hash!467)))

(assert (=> d!1557650 (= (lemmaGetValueImpliesTupleContained!794 lm!2840 hash!467 lt!1990245) lt!1990277)))

(declare-fun bs!1173059 () Bool)

(assert (= bs!1173059 d!1557650))

(declare-fun m!5850714 () Bool)

(assert (=> bs!1173059 m!5850714))

(declare-fun m!5850716 () Bool)

(assert (=> bs!1173059 m!5850716))

(assert (=> bs!1173059 m!5850650))

(assert (=> b!4852420 d!1557650))

(declare-fun d!1557654 () Bool)

(declare-fun hash!5660 (Hashable!7533 K!17492) (_ BitVec 64))

(assert (=> d!1557654 (= (hash!5658 hashF!1802 key!6955) (hash!5660 hashF!1802 key!6955))))

(declare-fun bs!1173060 () Bool)

(assert (= bs!1173060 d!1557654))

(declare-fun m!5850718 () Bool)

(assert (=> bs!1173060 m!5850718))

(assert (=> b!4852421 d!1557654))

(declare-fun d!1557656 () Bool)

(declare-fun e!3033487 () Bool)

(assert (=> d!1557656 e!3033487))

(declare-fun res!2071424 () Bool)

(assert (=> d!1557656 (=> res!2071424 e!3033487)))

(declare-fun lt!1990286 () Bool)

(assert (=> d!1557656 (= res!2071424 (not lt!1990286))))

(declare-fun lt!1990289 () Bool)

(assert (=> d!1557656 (= lt!1990286 lt!1990289)))

(declare-fun lt!1990287 () Unit!145775)

(declare-fun e!3033488 () Unit!145775)

(assert (=> d!1557656 (= lt!1990287 e!3033488)))

(declare-fun c!825685 () Bool)

(assert (=> d!1557656 (= c!825685 lt!1990289)))

(declare-fun containsKey!4741 (List!55775 (_ BitVec 64)) Bool)

(assert (=> d!1557656 (= lt!1990289 (containsKey!4741 (toList!7891 lm!2840) hash!467))))

(assert (=> d!1557656 (= (contains!19301 lm!2840 hash!467) lt!1990286)))

(declare-fun b!4852483 () Bool)

(declare-fun lt!1990288 () Unit!145775)

(assert (=> b!4852483 (= e!3033488 lt!1990288)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2519 (List!55775 (_ BitVec 64)) Unit!145775)

(assert (=> b!4852483 (= lt!1990288 (lemmaContainsKeyImpliesGetValueByKeyDefined!2519 (toList!7891 lm!2840) hash!467))))

(declare-fun isDefined!10818 (Option!13730) Bool)

(assert (=> b!4852483 (isDefined!10818 (getValueByKey!2746 (toList!7891 lm!2840) hash!467))))

(declare-fun b!4852484 () Bool)

(declare-fun Unit!145779 () Unit!145775)

(assert (=> b!4852484 (= e!3033488 Unit!145779)))

(declare-fun b!4852485 () Bool)

(assert (=> b!4852485 (= e!3033487 (isDefined!10818 (getValueByKey!2746 (toList!7891 lm!2840) hash!467)))))

(assert (= (and d!1557656 c!825685) b!4852483))

(assert (= (and d!1557656 (not c!825685)) b!4852484))

(assert (= (and d!1557656 (not res!2071424)) b!4852485))

(declare-fun m!5850726 () Bool)

(assert (=> d!1557656 m!5850726))

(declare-fun m!5850728 () Bool)

(assert (=> b!4852483 m!5850728))

(assert (=> b!4852483 m!5850704))

(assert (=> b!4852483 m!5850704))

(declare-fun m!5850730 () Bool)

(assert (=> b!4852483 m!5850730))

(assert (=> b!4852485 m!5850704))

(assert (=> b!4852485 m!5850704))

(assert (=> b!4852485 m!5850730))

(assert (=> b!4852422 d!1557656))

(declare-fun d!1557662 () Bool)

(declare-fun res!2071429 () Bool)

(declare-fun e!3033493 () Bool)

(assert (=> d!1557662 (=> res!2071429 e!3033493)))

(assert (=> d!1557662 (= res!2071429 (not (is-Cons!55650 lt!1990245)))))

(assert (=> d!1557662 (= (noDuplicateKeys!2624 lt!1990245) e!3033493)))

(declare-fun b!4852490 () Bool)

(declare-fun e!3033494 () Bool)

(assert (=> b!4852490 (= e!3033493 e!3033494)))

(declare-fun res!2071430 () Bool)

(assert (=> b!4852490 (=> (not res!2071430) (not e!3033494))))

(assert (=> b!4852490 (= res!2071430 (not (containsKey!4739 (t!363270 lt!1990245) (_1!33011 (h!62087 lt!1990245)))))))

(declare-fun b!4852491 () Bool)

(assert (=> b!4852491 (= e!3033494 (noDuplicateKeys!2624 (t!363270 lt!1990245)))))

(assert (= (and d!1557662 (not res!2071429)) b!4852490))

(assert (= (and b!4852490 res!2071430) b!4852491))

(declare-fun m!5850732 () Bool)

(assert (=> b!4852490 m!5850732))

(declare-fun m!5850734 () Bool)

(assert (=> b!4852491 m!5850734))

(assert (=> b!4852423 d!1557662))

(declare-fun d!1557664 () Bool)

(assert (=> d!1557664 (dynLambda!22372 lambda!242845 lt!1990247)))

(declare-fun lt!1990290 () Unit!145775)

(assert (=> d!1557664 (= lt!1990290 (choose!35521 (toList!7891 lm!2840) lambda!242845 lt!1990247))))

(declare-fun e!3033495 () Bool)

(assert (=> d!1557664 e!3033495))

(declare-fun res!2071431 () Bool)

(assert (=> d!1557664 (=> (not res!2071431) (not e!3033495))))

(assert (=> d!1557664 (= res!2071431 (forall!12984 (toList!7891 lm!2840) lambda!242845))))

(assert (=> d!1557664 (= (forallContained!4566 (toList!7891 lm!2840) lambda!242845 lt!1990247) lt!1990290)))

(declare-fun b!4852492 () Bool)

(assert (=> b!4852492 (= e!3033495 (contains!19300 (toList!7891 lm!2840) lt!1990247))))

(assert (= (and d!1557664 res!2071431) b!4852492))

(declare-fun b_lambda!193047 () Bool)

(assert (=> (not b_lambda!193047) (not d!1557664)))

(declare-fun m!5850736 () Bool)

(assert (=> d!1557664 m!5850736))

(declare-fun m!5850738 () Bool)

(assert (=> d!1557664 m!5850738))

(assert (=> d!1557664 m!5850654))

(assert (=> b!4852492 m!5850640))

(assert (=> b!4852423 d!1557664))

(declare-fun d!1557666 () Bool)

(declare-fun res!2071436 () Bool)

(declare-fun e!3033500 () Bool)

(assert (=> d!1557666 (=> res!2071436 e!3033500)))

(assert (=> d!1557666 (= res!2071436 (and (is-Cons!55650 lt!1990245) (= (_1!33011 (h!62087 lt!1990245)) key!6955)))))

(assert (=> d!1557666 (= (containsKey!4739 lt!1990245 key!6955) e!3033500)))

(declare-fun b!4852497 () Bool)

(declare-fun e!3033501 () Bool)

(assert (=> b!4852497 (= e!3033500 e!3033501)))

(declare-fun res!2071437 () Bool)

(assert (=> b!4852497 (=> (not res!2071437) (not e!3033501))))

(assert (=> b!4852497 (= res!2071437 (is-Cons!55650 lt!1990245))))

(declare-fun b!4852498 () Bool)

(assert (=> b!4852498 (= e!3033501 (containsKey!4739 (t!363270 lt!1990245) key!6955))))

(assert (= (and d!1557666 (not res!2071436)) b!4852497))

(assert (= (and b!4852497 res!2071437) b!4852498))

(declare-fun m!5850740 () Bool)

(assert (=> b!4852498 m!5850740))

(assert (=> b!4852419 d!1557666))

(declare-fun d!1557668 () Bool)

(declare-fun res!2071442 () Bool)

(declare-fun e!3033506 () Bool)

(assert (=> d!1557668 (=> res!2071442 e!3033506)))

(assert (=> d!1557668 (= res!2071442 (is-Nil!55651 (toList!7891 lm!2840)))))

(assert (=> d!1557668 (= (forall!12984 (toList!7891 lm!2840) lambda!242845) e!3033506)))

(declare-fun b!4852504 () Bool)

(declare-fun e!3033507 () Bool)

(assert (=> b!4852504 (= e!3033506 e!3033507)))

(declare-fun res!2071443 () Bool)

(assert (=> b!4852504 (=> (not res!2071443) (not e!3033507))))

(assert (=> b!4852504 (= res!2071443 (dynLambda!22372 lambda!242845 (h!62088 (toList!7891 lm!2840))))))

(declare-fun b!4852505 () Bool)

(assert (=> b!4852505 (= e!3033507 (forall!12984 (t!363271 (toList!7891 lm!2840)) lambda!242845))))

(assert (= (and d!1557668 (not res!2071442)) b!4852504))

(assert (= (and b!4852504 res!2071443) b!4852505))

(declare-fun b_lambda!193049 () Bool)

(assert (=> (not b_lambda!193049) (not b!4852504)))

(declare-fun m!5850742 () Bool)

(assert (=> b!4852504 m!5850742))

(declare-fun m!5850744 () Bool)

(assert (=> b!4852505 m!5850744))

(assert (=> start!506478 d!1557668))

(declare-fun d!1557670 () Bool)

(declare-fun isStrictlySorted!1095 (List!55775) Bool)

(assert (=> d!1557670 (= (inv!71355 lm!2840) (isStrictlySorted!1095 (toList!7891 lm!2840)))))

(declare-fun bs!1173064 () Bool)

(assert (= bs!1173064 d!1557670))

(declare-fun m!5850750 () Bool)

(assert (=> bs!1173064 m!5850750))

(assert (=> start!506478 d!1557670))

(declare-fun bs!1173066 () Bool)

(declare-fun d!1557674 () Bool)

(assert (= bs!1173066 (and d!1557674 start!506478)))

(declare-fun lambda!242863 () Int)

(assert (=> bs!1173066 (not (= lambda!242863 lambda!242845))))

(declare-fun bs!1173067 () Bool)

(assert (= bs!1173067 (and d!1557674 b!4852420)))

(assert (=> bs!1173067 (= lambda!242863 lambda!242846)))

(assert (=> d!1557674 true))

(assert (=> d!1557674 (= (allKeysSameHashInMap!2847 lm!2840 hashF!1802) (forall!12984 (toList!7891 lm!2840) lambda!242863))))

(declare-fun bs!1173068 () Bool)

(assert (= bs!1173068 d!1557674))

(declare-fun m!5850754 () Bool)

(assert (=> bs!1173068 m!5850754))

(assert (=> b!4852424 d!1557674))

(declare-fun b!4852510 () Bool)

(declare-fun e!3033512 () Bool)

(declare-fun tp!1365095 () Bool)

(declare-fun tp!1365096 () Bool)

(assert (=> b!4852510 (= e!3033512 (and tp!1365095 tp!1365096))))

(assert (=> b!4852418 (= tp!1365087 e!3033512)))

(assert (= (and b!4852418 (is-Cons!55651 (toList!7891 lm!2840))) b!4852510))

(declare-fun b_lambda!193051 () Bool)

(assert (= b_lambda!193049 (or start!506478 b_lambda!193051)))

(declare-fun bs!1173069 () Bool)

(declare-fun d!1557678 () Bool)

(assert (= bs!1173069 (and d!1557678 start!506478)))

(assert (=> bs!1173069 (= (dynLambda!22372 lambda!242845 (h!62088 (toList!7891 lm!2840))) (noDuplicateKeys!2624 (_2!33012 (h!62088 (toList!7891 lm!2840)))))))

(declare-fun m!5850756 () Bool)

(assert (=> bs!1173069 m!5850756))

(assert (=> b!4852504 d!1557678))

(declare-fun b_lambda!193053 () Bool)

(assert (= b_lambda!193043 (or b!4852420 b_lambda!193053)))

(declare-fun bs!1173070 () Bool)

(declare-fun d!1557680 () Bool)

(assert (= bs!1173070 (and d!1557680 b!4852420)))

(assert (=> bs!1173070 (= (dynLambda!22372 lambda!242846 lt!1990247) (allKeysSameHash!2043 (_2!33012 lt!1990247) (_1!33012 lt!1990247) hashF!1802))))

(declare-fun m!5850758 () Bool)

(assert (=> bs!1173070 m!5850758))

(assert (=> d!1557646 d!1557680))

(declare-fun b_lambda!193055 () Bool)

(assert (= b_lambda!193047 (or start!506478 b_lambda!193055)))

(declare-fun bs!1173071 () Bool)

(declare-fun d!1557682 () Bool)

(assert (= bs!1173071 (and d!1557682 start!506478)))

(assert (=> bs!1173071 (= (dynLambda!22372 lambda!242845 lt!1990247) (noDuplicateKeys!2624 (_2!33012 lt!1990247)))))

(declare-fun m!5850760 () Bool)

(assert (=> bs!1173071 m!5850760))

(assert (=> d!1557664 d!1557682))

(push 1)

(assert (not d!1557656))

(assert (not d!1557674))

(assert (not bs!1173069))

(assert (not bs!1173071))

(assert (not b_lambda!193053))

(assert (not d!1557664))

(assert (not d!1557646))

(assert (not b!4852470))

(assert (not b!4852491))

(assert (not d!1557650))

(assert (not bs!1173070))

(assert (not b!4852483))

(assert (not d!1557654))

(assert (not b!4852505))

(assert (not d!1557648))

(assert (not b!4852485))

(assert (not b!4852498))

(assert (not d!1557670))

(assert (not b!4852459))

(assert (not b_lambda!193051))

(assert (not d!1557642))

(assert (not d!1557640))

(assert (not b_lambda!193055))

(assert (not b!4852490))

(assert tp_is_empty!35365)

(assert (not b!4852510))

(assert (not b!4852492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

