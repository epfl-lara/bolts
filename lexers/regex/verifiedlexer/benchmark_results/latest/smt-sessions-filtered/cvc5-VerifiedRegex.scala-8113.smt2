; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417730 () Bool)

(assert start!417730)

(declare-fun b!4333251 () Bool)

(declare-fun e!2696414 () Bool)

(declare-datatypes ((V!10214 0))(
  ( (V!10215 (val!16245 Int)) )
))
(declare-datatypes ((K!9968 0))(
  ( (K!9969 (val!16246 Int)) )
))
(declare-datatypes ((tuple2!47810 0))(
  ( (tuple2!47811 (_1!27199 K!9968) (_2!27199 V!10214)) )
))
(declare-datatypes ((List!48737 0))(
  ( (Nil!48613) (Cons!48613 (h!54102 tuple2!47810) (t!355653 List!48737)) )
))
(declare-datatypes ((tuple2!47812 0))(
  ( (tuple2!47813 (_1!27200 (_ BitVec 64)) (_2!27200 List!48737)) )
))
(declare-datatypes ((List!48738 0))(
  ( (Nil!48614) (Cons!48614 (h!54103 tuple2!47812) (t!355654 List!48738)) )
))
(declare-datatypes ((ListLongMap!1353 0))(
  ( (ListLongMap!1354 (toList!2703 List!48738)) )
))
(declare-fun lm!1707 () ListLongMap!1353)

(declare-fun lambda!134994 () Int)

(declare-fun forall!8916 (List!48738 Int) Bool)

(assert (=> b!4333251 (= e!2696414 (forall!8916 (t!355654 (toList!2703 lm!1707)) lambda!134994))))

(declare-fun b!4333252 () Bool)

(declare-fun e!2696412 () Bool)

(declare-fun tp!1328734 () Bool)

(assert (=> b!4333252 (= e!2696412 tp!1328734)))

(declare-fun b!4333253 () Bool)

(declare-fun e!2696411 () Bool)

(declare-fun e!2696413 () Bool)

(assert (=> b!4333253 (= e!2696411 (not e!2696413))))

(declare-fun res!1776766 () Bool)

(assert (=> b!4333253 (=> res!1776766 e!2696413)))

(declare-fun newBucket!200 () List!48737)

(declare-fun lt!1546581 () List!48737)

(declare-fun key!3918 () K!9968)

(declare-fun newValue!99 () V!10214)

(declare-fun removePairForKey!330 (List!48737 K!9968) List!48737)

(assert (=> b!4333253 (= res!1776766 (not (= newBucket!200 (Cons!48613 (tuple2!47811 key!3918 newValue!99) (removePairForKey!330 lt!1546581 key!3918)))))))

(declare-datatypes ((Unit!68234 0))(
  ( (Unit!68235) )
))
(declare-fun lt!1546583 () Unit!68234)

(declare-fun lt!1546578 () tuple2!47812)

(declare-fun forallContained!1567 (List!48738 Int tuple2!47812) Unit!68234)

(assert (=> b!4333253 (= lt!1546583 (forallContained!1567 (toList!2703 lm!1707) lambda!134994 lt!1546578))))

(declare-fun contains!10641 (List!48738 tuple2!47812) Bool)

(assert (=> b!4333253 (contains!10641 (toList!2703 lm!1707) lt!1546578)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4333253 (= lt!1546578 (tuple2!47813 hash!377 lt!1546581))))

(declare-fun lt!1546579 () Unit!68234)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!207 (List!48738 (_ BitVec 64) List!48737) Unit!68234)

(assert (=> b!4333253 (= lt!1546579 (lemmaGetValueByKeyImpliesContainsTuple!207 (toList!2703 lm!1707) hash!377 lt!1546581))))

(declare-fun apply!11212 (ListLongMap!1353 (_ BitVec 64)) List!48737)

(assert (=> b!4333253 (= lt!1546581 (apply!11212 lm!1707 hash!377))))

(declare-fun b!4333254 () Bool)

(declare-fun res!1776756 () Bool)

(assert (=> b!4333254 (=> (not res!1776756) (not e!2696411))))

(declare-datatypes ((ListMap!1947 0))(
  ( (ListMap!1948 (toList!2704 List!48737)) )
))
(declare-fun contains!10642 (ListMap!1947 K!9968) Bool)

(declare-fun extractMap!419 (List!48738) ListMap!1947)

(assert (=> b!4333254 (= res!1776756 (contains!10642 (extractMap!419 (toList!2703 lm!1707)) key!3918))))

(declare-fun b!4333255 () Bool)

(declare-fun res!1776762 () Bool)

(assert (=> b!4333255 (=> (not res!1776762) (not e!2696411))))

(declare-datatypes ((Hashable!4752 0))(
  ( (HashableExt!4751 (__x!30455 Int)) )
))
(declare-fun hashF!1247 () Hashable!4752)

(declare-fun allKeysSameHash!318 (List!48737 (_ BitVec 64) Hashable!4752) Bool)

(assert (=> b!4333255 (= res!1776762 (allKeysSameHash!318 newBucket!200 hash!377 hashF!1247))))

(declare-fun res!1776764 () Bool)

(assert (=> start!417730 (=> (not res!1776764) (not e!2696411))))

(assert (=> start!417730 (= res!1776764 (forall!8916 (toList!2703 lm!1707) lambda!134994))))

(assert (=> start!417730 e!2696411))

(declare-fun e!2696410 () Bool)

(assert (=> start!417730 e!2696410))

(assert (=> start!417730 true))

(declare-fun inv!64155 (ListLongMap!1353) Bool)

(assert (=> start!417730 (and (inv!64155 lm!1707) e!2696412)))

(declare-fun tp_is_empty!24677 () Bool)

(assert (=> start!417730 tp_is_empty!24677))

(declare-fun tp_is_empty!24679 () Bool)

(assert (=> start!417730 tp_is_empty!24679))

(declare-fun b!4333256 () Bool)

(declare-fun res!1776761 () Bool)

(assert (=> b!4333256 (=> (not res!1776761) (not e!2696411))))

(declare-fun contains!10643 (ListLongMap!1353 (_ BitVec 64)) Bool)

(assert (=> b!4333256 (= res!1776761 (contains!10643 lm!1707 hash!377))))

(declare-fun b!4333257 () Bool)

(declare-fun res!1776759 () Bool)

(assert (=> b!4333257 (=> (not res!1776759) (not e!2696411))))

(declare-fun hash!1297 (Hashable!4752 K!9968) (_ BitVec 64))

(assert (=> b!4333257 (= res!1776759 (= (hash!1297 hashF!1247 key!3918) hash!377))))

(declare-fun e!2696416 () Bool)

(declare-fun lt!1546582 () ListLongMap!1353)

(declare-fun b!4333258 () Bool)

(declare-fun addToMapMapFromBucket!68 (List!48737 ListMap!1947) ListMap!1947)

(assert (=> b!4333258 (= e!2696416 (= (extractMap!419 (toList!2703 lt!1546582)) (addToMapMapFromBucket!68 newBucket!200 (extractMap!419 (t!355654 (toList!2703 lm!1707))))))))

(declare-fun b!4333259 () Bool)

(declare-fun res!1776765 () Bool)

(declare-fun e!2696409 () Bool)

(assert (=> b!4333259 (=> (not res!1776765) (not e!2696409))))

(assert (=> b!4333259 (= res!1776765 (forall!8916 (toList!2703 lt!1546582) lambda!134994))))

(declare-fun b!4333260 () Bool)

(declare-fun e!2696415 () Bool)

(assert (=> b!4333260 (= e!2696415 e!2696416)))

(declare-fun res!1776763 () Bool)

(assert (=> b!4333260 (=> (not res!1776763) (not e!2696416))))

(declare-fun lt!1546577 () tuple2!47812)

(assert (=> b!4333260 (= res!1776763 (= lt!1546582 (ListLongMap!1354 (Cons!48614 lt!1546577 (t!355654 (toList!2703 lm!1707))))))))

(declare-fun tp!1328733 () Bool)

(declare-fun b!4333261 () Bool)

(assert (=> b!4333261 (= e!2696410 (and tp_is_empty!24677 tp_is_empty!24679 tp!1328733))))

(declare-fun b!4333262 () Bool)

(declare-fun res!1776757 () Bool)

(assert (=> b!4333262 (=> res!1776757 e!2696413)))

(declare-fun noDuplicateKeys!360 (List!48737) Bool)

(assert (=> b!4333262 (= res!1776757 (not (noDuplicateKeys!360 newBucket!200)))))

(declare-fun b!4333263 () Bool)

(declare-fun res!1776760 () Bool)

(assert (=> b!4333263 (=> (not res!1776760) (not e!2696411))))

(declare-fun allKeysSameHashInMap!464 (ListLongMap!1353 Hashable!4752) Bool)

(assert (=> b!4333263 (= res!1776760 (allKeysSameHashInMap!464 lm!1707 hashF!1247))))

(declare-fun b!4333264 () Bool)

(assert (=> b!4333264 (= e!2696413 e!2696414)))

(declare-fun res!1776755 () Bool)

(assert (=> b!4333264 (=> res!1776755 e!2696414)))

(assert (=> b!4333264 (= res!1776755 (or (not (is-Cons!48614 (toList!2703 lm!1707))) (not (= (_1!27200 (h!54103 (toList!2703 lm!1707))) hash!377))))))

(assert (=> b!4333264 e!2696409))

(declare-fun res!1776754 () Bool)

(assert (=> b!4333264 (=> (not res!1776754) (not e!2696409))))

(assert (=> b!4333264 (= res!1776754 (forall!8916 (toList!2703 lt!1546582) lambda!134994))))

(declare-fun +!398 (ListLongMap!1353 tuple2!47812) ListLongMap!1353)

(assert (=> b!4333264 (= lt!1546582 (+!398 lm!1707 lt!1546577))))

(assert (=> b!4333264 (= lt!1546577 (tuple2!47813 hash!377 newBucket!200))))

(declare-fun lt!1546580 () Unit!68234)

(declare-fun addValidProp!14 (ListLongMap!1353 Int (_ BitVec 64) List!48737) Unit!68234)

(assert (=> b!4333264 (= lt!1546580 (addValidProp!14 lm!1707 lambda!134994 hash!377 newBucket!200))))

(assert (=> b!4333264 (forall!8916 (toList!2703 lm!1707) lambda!134994)))

(declare-fun b!4333265 () Bool)

(assert (=> b!4333265 (= e!2696409 e!2696415)))

(declare-fun res!1776758 () Bool)

(assert (=> b!4333265 (=> res!1776758 e!2696415)))

(assert (=> b!4333265 (= res!1776758 (or (not (is-Cons!48614 (toList!2703 lm!1707))) (not (= (_1!27200 (h!54103 (toList!2703 lm!1707))) hash!377))))))

(assert (= (and start!417730 res!1776764) b!4333263))

(assert (= (and b!4333263 res!1776760) b!4333257))

(assert (= (and b!4333257 res!1776759) b!4333255))

(assert (= (and b!4333255 res!1776762) b!4333254))

(assert (= (and b!4333254 res!1776756) b!4333256))

(assert (= (and b!4333256 res!1776761) b!4333253))

(assert (= (and b!4333253 (not res!1776766)) b!4333262))

(assert (= (and b!4333262 (not res!1776757)) b!4333264))

(assert (= (and b!4333264 res!1776754) b!4333259))

(assert (= (and b!4333259 res!1776765) b!4333265))

(assert (= (and b!4333265 (not res!1776758)) b!4333260))

(assert (= (and b!4333260 res!1776763) b!4333258))

(assert (= (and b!4333264 (not res!1776755)) b!4333251))

(assert (= (and start!417730 (is-Cons!48613 newBucket!200)) b!4333261))

(assert (= start!417730 b!4333252))

(declare-fun m!4927491 () Bool)

(assert (=> b!4333262 m!4927491))

(declare-fun m!4927493 () Bool)

(assert (=> b!4333259 m!4927493))

(declare-fun m!4927495 () Bool)

(assert (=> b!4333255 m!4927495))

(declare-fun m!4927497 () Bool)

(assert (=> b!4333263 m!4927497))

(declare-fun m!4927499 () Bool)

(assert (=> b!4333251 m!4927499))

(declare-fun m!4927501 () Bool)

(assert (=> b!4333253 m!4927501))

(declare-fun m!4927503 () Bool)

(assert (=> b!4333253 m!4927503))

(declare-fun m!4927505 () Bool)

(assert (=> b!4333253 m!4927505))

(declare-fun m!4927507 () Bool)

(assert (=> b!4333253 m!4927507))

(declare-fun m!4927509 () Bool)

(assert (=> b!4333253 m!4927509))

(declare-fun m!4927511 () Bool)

(assert (=> b!4333254 m!4927511))

(assert (=> b!4333254 m!4927511))

(declare-fun m!4927513 () Bool)

(assert (=> b!4333254 m!4927513))

(declare-fun m!4927515 () Bool)

(assert (=> start!417730 m!4927515))

(declare-fun m!4927517 () Bool)

(assert (=> start!417730 m!4927517))

(declare-fun m!4927519 () Bool)

(assert (=> b!4333258 m!4927519))

(declare-fun m!4927521 () Bool)

(assert (=> b!4333258 m!4927521))

(assert (=> b!4333258 m!4927521))

(declare-fun m!4927523 () Bool)

(assert (=> b!4333258 m!4927523))

(declare-fun m!4927525 () Bool)

(assert (=> b!4333257 m!4927525))

(declare-fun m!4927527 () Bool)

(assert (=> b!4333256 m!4927527))

(assert (=> b!4333264 m!4927493))

(declare-fun m!4927529 () Bool)

(assert (=> b!4333264 m!4927529))

(declare-fun m!4927531 () Bool)

(assert (=> b!4333264 m!4927531))

(assert (=> b!4333264 m!4927515))

(push 1)

(assert (not b!4333263))

(assert (not b!4333257))

(assert (not b!4333251))

(assert (not b!4333258))

(assert (not b!4333262))

(assert (not b!4333254))

(assert tp_is_empty!24677)

(assert (not b!4333256))

(assert tp_is_empty!24679)

(assert (not b!4333252))

(assert (not b!4333253))

(assert (not b!4333255))

(assert (not b!4333264))

(assert (not start!417730))

(assert (not b!4333259))

(assert (not b!4333261))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1273826 () Bool)

(declare-fun res!1776810 () Bool)

(declare-fun e!2696445 () Bool)

(assert (=> d!1273826 (=> res!1776810 e!2696445)))

(assert (=> d!1273826 (= res!1776810 (is-Nil!48614 (toList!2703 lt!1546582)))))

(assert (=> d!1273826 (= (forall!8916 (toList!2703 lt!1546582) lambda!134994) e!2696445)))

(declare-fun b!4333315 () Bool)

(declare-fun e!2696446 () Bool)

(assert (=> b!4333315 (= e!2696445 e!2696446)))

(declare-fun res!1776811 () Bool)

(assert (=> b!4333315 (=> (not res!1776811) (not e!2696446))))

(declare-fun dynLambda!20554 (Int tuple2!47812) Bool)

(assert (=> b!4333315 (= res!1776811 (dynLambda!20554 lambda!134994 (h!54103 (toList!2703 lt!1546582))))))

(declare-fun b!4333316 () Bool)

(assert (=> b!4333316 (= e!2696446 (forall!8916 (t!355654 (toList!2703 lt!1546582)) lambda!134994))))

(assert (= (and d!1273826 (not res!1776810)) b!4333315))

(assert (= (and b!4333315 res!1776811) b!4333316))

(declare-fun b_lambda!128075 () Bool)

(assert (=> (not b_lambda!128075) (not b!4333315)))

(declare-fun m!4927575 () Bool)

(assert (=> b!4333315 m!4927575))

(declare-fun m!4927577 () Bool)

(assert (=> b!4333316 m!4927577))

(assert (=> b!4333259 d!1273826))

(declare-fun bs!608084 () Bool)

(declare-fun d!1273828 () Bool)

(assert (= bs!608084 (and d!1273828 start!417730)))

(declare-fun lambda!135010 () Int)

(assert (=> bs!608084 (= lambda!135010 lambda!134994)))

(declare-fun lt!1546607 () ListMap!1947)

(declare-fun invariantList!616 (List!48737) Bool)

(assert (=> d!1273828 (invariantList!616 (toList!2704 lt!1546607))))

(declare-fun e!2696449 () ListMap!1947)

(assert (=> d!1273828 (= lt!1546607 e!2696449)))

(declare-fun c!736977 () Bool)

(assert (=> d!1273828 (= c!736977 (is-Cons!48614 (toList!2703 lt!1546582)))))

(assert (=> d!1273828 (forall!8916 (toList!2703 lt!1546582) lambda!135010)))

(assert (=> d!1273828 (= (extractMap!419 (toList!2703 lt!1546582)) lt!1546607)))

(declare-fun b!4333321 () Bool)

(assert (=> b!4333321 (= e!2696449 (addToMapMapFromBucket!68 (_2!27200 (h!54103 (toList!2703 lt!1546582))) (extractMap!419 (t!355654 (toList!2703 lt!1546582)))))))

(declare-fun b!4333322 () Bool)

(assert (=> b!4333322 (= e!2696449 (ListMap!1948 Nil!48613))))

(assert (= (and d!1273828 c!736977) b!4333321))

(assert (= (and d!1273828 (not c!736977)) b!4333322))

(declare-fun m!4927579 () Bool)

(assert (=> d!1273828 m!4927579))

(declare-fun m!4927581 () Bool)

(assert (=> d!1273828 m!4927581))

(declare-fun m!4927583 () Bool)

(assert (=> b!4333321 m!4927583))

(assert (=> b!4333321 m!4927583))

(declare-fun m!4927585 () Bool)

(assert (=> b!4333321 m!4927585))

(assert (=> b!4333258 d!1273828))

(declare-fun b!4333377 () Bool)

(assert (=> b!4333377 true))

(declare-fun bs!608088 () Bool)

(declare-fun b!4333373 () Bool)

(assert (= bs!608088 (and b!4333373 b!4333377)))

(declare-fun lambda!135046 () Int)

(declare-fun lambda!135045 () Int)

(assert (=> bs!608088 (= lambda!135046 lambda!135045)))

(assert (=> b!4333373 true))

(declare-fun lt!1546668 () ListMap!1947)

(declare-fun lambda!135047 () Int)

(assert (=> bs!608088 (= (= lt!1546668 (extractMap!419 (t!355654 (toList!2703 lm!1707)))) (= lambda!135047 lambda!135045))))

(assert (=> b!4333373 (= (= lt!1546668 (extractMap!419 (t!355654 (toList!2703 lm!1707)))) (= lambda!135047 lambda!135046))))

(assert (=> b!4333373 true))

(declare-fun bs!608089 () Bool)

(declare-fun d!1273830 () Bool)

(assert (= bs!608089 (and d!1273830 b!4333377)))

(declare-fun lambda!135048 () Int)

(declare-fun lt!1546685 () ListMap!1947)

(assert (=> bs!608089 (= (= lt!1546685 (extractMap!419 (t!355654 (toList!2703 lm!1707)))) (= lambda!135048 lambda!135045))))

(declare-fun bs!608090 () Bool)

(assert (= bs!608090 (and d!1273830 b!4333373)))

(assert (=> bs!608090 (= (= lt!1546685 (extractMap!419 (t!355654 (toList!2703 lm!1707)))) (= lambda!135048 lambda!135046))))

(assert (=> bs!608090 (= (= lt!1546685 lt!1546668) (= lambda!135048 lambda!135047))))

(assert (=> d!1273830 true))

(declare-fun bm!301119 () Bool)

(declare-fun call!301125 () Unit!68234)

(declare-fun lemmaContainsAllItsOwnKeys!9 (ListMap!1947) Unit!68234)

(assert (=> bm!301119 (= call!301125 (lemmaContainsAllItsOwnKeys!9 (extractMap!419 (t!355654 (toList!2703 lm!1707)))))))

(declare-fun c!736989 () Bool)

(declare-fun bm!301120 () Bool)

(declare-fun call!301126 () Bool)

(declare-fun forall!8918 (List!48737 Int) Bool)

(assert (=> bm!301120 (= call!301126 (forall!8918 (toList!2704 (extractMap!419 (t!355654 (toList!2703 lm!1707)))) (ite c!736989 lambda!135045 lambda!135046)))))

(declare-fun e!2696483 () ListMap!1947)

(assert (=> b!4333373 (= e!2696483 lt!1546668)))

(declare-fun lt!1546677 () ListMap!1947)

(declare-fun +!400 (ListMap!1947 tuple2!47810) ListMap!1947)

(assert (=> b!4333373 (= lt!1546677 (+!400 (extractMap!419 (t!355654 (toList!2703 lm!1707))) (h!54102 newBucket!200)))))

(assert (=> b!4333373 (= lt!1546668 (addToMapMapFromBucket!68 (t!355653 newBucket!200) (+!400 (extractMap!419 (t!355654 (toList!2703 lm!1707))) (h!54102 newBucket!200))))))

(declare-fun lt!1546665 () Unit!68234)

(assert (=> b!4333373 (= lt!1546665 call!301125)))

(assert (=> b!4333373 call!301126))

(declare-fun lt!1546672 () Unit!68234)

(assert (=> b!4333373 (= lt!1546672 lt!1546665)))

(assert (=> b!4333373 (forall!8918 (toList!2704 lt!1546677) lambda!135047)))

(declare-fun lt!1546674 () Unit!68234)

(declare-fun Unit!68238 () Unit!68234)

(assert (=> b!4333373 (= lt!1546674 Unit!68238)))

(declare-fun call!301124 () Bool)

(assert (=> b!4333373 call!301124))

(declare-fun lt!1546676 () Unit!68234)

(declare-fun Unit!68239 () Unit!68234)

(assert (=> b!4333373 (= lt!1546676 Unit!68239)))

(declare-fun lt!1546678 () Unit!68234)

(declare-fun Unit!68240 () Unit!68234)

(assert (=> b!4333373 (= lt!1546678 Unit!68240)))

(declare-fun lt!1546679 () Unit!68234)

(declare-fun forallContained!1569 (List!48737 Int tuple2!47810) Unit!68234)

(assert (=> b!4333373 (= lt!1546679 (forallContained!1569 (toList!2704 lt!1546677) lambda!135047 (h!54102 newBucket!200)))))

(assert (=> b!4333373 (contains!10642 lt!1546677 (_1!27199 (h!54102 newBucket!200)))))

(declare-fun lt!1546675 () Unit!68234)

(declare-fun Unit!68241 () Unit!68234)

(assert (=> b!4333373 (= lt!1546675 Unit!68241)))

(assert (=> b!4333373 (contains!10642 lt!1546668 (_1!27199 (h!54102 newBucket!200)))))

(declare-fun lt!1546671 () Unit!68234)

(declare-fun Unit!68242 () Unit!68234)

(assert (=> b!4333373 (= lt!1546671 Unit!68242)))

(assert (=> b!4333373 (forall!8918 newBucket!200 lambda!135047)))

(declare-fun lt!1546684 () Unit!68234)

(declare-fun Unit!68243 () Unit!68234)

(assert (=> b!4333373 (= lt!1546684 Unit!68243)))

(assert (=> b!4333373 (forall!8918 (toList!2704 lt!1546677) lambda!135047)))

(declare-fun lt!1546666 () Unit!68234)

(declare-fun Unit!68244 () Unit!68234)

(assert (=> b!4333373 (= lt!1546666 Unit!68244)))

(declare-fun lt!1546673 () Unit!68234)

(declare-fun Unit!68245 () Unit!68234)

(assert (=> b!4333373 (= lt!1546673 Unit!68245)))

(declare-fun lt!1546667 () Unit!68234)

(declare-fun addForallContainsKeyThenBeforeAdding!9 (ListMap!1947 ListMap!1947 K!9968 V!10214) Unit!68234)

(assert (=> b!4333373 (= lt!1546667 (addForallContainsKeyThenBeforeAdding!9 (extractMap!419 (t!355654 (toList!2703 lm!1707))) lt!1546668 (_1!27199 (h!54102 newBucket!200)) (_2!27199 (h!54102 newBucket!200))))))

(assert (=> b!4333373 (forall!8918 (toList!2704 (extractMap!419 (t!355654 (toList!2703 lm!1707)))) lambda!135047)))

(declare-fun lt!1546680 () Unit!68234)

(assert (=> b!4333373 (= lt!1546680 lt!1546667)))

(assert (=> b!4333373 (forall!8918 (toList!2704 (extractMap!419 (t!355654 (toList!2703 lm!1707)))) lambda!135047)))

(declare-fun lt!1546681 () Unit!68234)

(declare-fun Unit!68246 () Unit!68234)

(assert (=> b!4333373 (= lt!1546681 Unit!68246)))

(declare-fun res!1776836 () Bool)

(assert (=> b!4333373 (= res!1776836 (forall!8918 newBucket!200 lambda!135047))))

(declare-fun e!2696484 () Bool)

(assert (=> b!4333373 (=> (not res!1776836) (not e!2696484))))

(assert (=> b!4333373 e!2696484))

(declare-fun lt!1546670 () Unit!68234)

(declare-fun Unit!68247 () Unit!68234)

(assert (=> b!4333373 (= lt!1546670 Unit!68247)))

(declare-fun e!2696485 () Bool)

(assert (=> d!1273830 e!2696485))

(declare-fun res!1776838 () Bool)

(assert (=> d!1273830 (=> (not res!1776838) (not e!2696485))))

(assert (=> d!1273830 (= res!1776838 (forall!8918 newBucket!200 lambda!135048))))

(assert (=> d!1273830 (= lt!1546685 e!2696483)))

(assert (=> d!1273830 (= c!736989 (is-Nil!48613 newBucket!200))))

(assert (=> d!1273830 (noDuplicateKeys!360 newBucket!200)))

(assert (=> d!1273830 (= (addToMapMapFromBucket!68 newBucket!200 (extractMap!419 (t!355654 (toList!2703 lm!1707)))) lt!1546685)))

(declare-fun b!4333374 () Bool)

(declare-fun res!1776837 () Bool)

(assert (=> b!4333374 (=> (not res!1776837) (not e!2696485))))

(assert (=> b!4333374 (= res!1776837 (forall!8918 (toList!2704 (extractMap!419 (t!355654 (toList!2703 lm!1707)))) lambda!135048))))

(declare-fun b!4333375 () Bool)

(assert (=> b!4333375 (= e!2696484 (forall!8918 (toList!2704 (extractMap!419 (t!355654 (toList!2703 lm!1707)))) lambda!135047))))

(declare-fun b!4333376 () Bool)

(assert (=> b!4333376 (= e!2696485 (invariantList!616 (toList!2704 lt!1546685)))))

(assert (=> b!4333377 (= e!2696483 (extractMap!419 (t!355654 (toList!2703 lm!1707))))))

(declare-fun lt!1546682 () Unit!68234)

(assert (=> b!4333377 (= lt!1546682 call!301125)))

(assert (=> b!4333377 call!301124))

(declare-fun lt!1546683 () Unit!68234)

(assert (=> b!4333377 (= lt!1546683 lt!1546682)))

(assert (=> b!4333377 call!301126))

(declare-fun lt!1546669 () Unit!68234)

(declare-fun Unit!68248 () Unit!68234)

(assert (=> b!4333377 (= lt!1546669 Unit!68248)))

(declare-fun bm!301121 () Bool)

(assert (=> bm!301121 (= call!301124 (forall!8918 (ite c!736989 (toList!2704 (extractMap!419 (t!355654 (toList!2703 lm!1707)))) (t!355653 newBucket!200)) (ite c!736989 lambda!135045 lambda!135047)))))

(assert (= (and d!1273830 c!736989) b!4333377))

(assert (= (and d!1273830 (not c!736989)) b!4333373))

(assert (= (and b!4333373 res!1776836) b!4333375))

(assert (= (or b!4333377 b!4333373) bm!301119))

(assert (= (or b!4333377 b!4333373) bm!301120))

(assert (= (or b!4333377 b!4333373) bm!301121))

(assert (= (and d!1273830 res!1776838) b!4333374))

(assert (= (and b!4333374 res!1776837) b!4333376))

(declare-fun m!4927627 () Bool)

(assert (=> b!4333373 m!4927627))

(declare-fun m!4927629 () Bool)

(assert (=> b!4333373 m!4927629))

(assert (=> b!4333373 m!4927521))

(declare-fun m!4927631 () Bool)

(assert (=> b!4333373 m!4927631))

(declare-fun m!4927633 () Bool)

(assert (=> b!4333373 m!4927633))

(assert (=> b!4333373 m!4927629))

(declare-fun m!4927635 () Bool)

(assert (=> b!4333373 m!4927635))

(declare-fun m!4927637 () Bool)

(assert (=> b!4333373 m!4927637))

(declare-fun m!4927639 () Bool)

(assert (=> b!4333373 m!4927639))

(declare-fun m!4927641 () Bool)

(assert (=> b!4333373 m!4927641))

(assert (=> b!4333373 m!4927635))

(declare-fun m!4927643 () Bool)

(assert (=> b!4333373 m!4927643))

(assert (=> b!4333373 m!4927521))

(assert (=> b!4333373 m!4927639))

(assert (=> b!4333373 m!4927643))

(declare-fun m!4927645 () Bool)

(assert (=> b!4333374 m!4927645))

(declare-fun m!4927647 () Bool)

(assert (=> b!4333376 m!4927647))

(declare-fun m!4927649 () Bool)

(assert (=> d!1273830 m!4927649))

(assert (=> d!1273830 m!4927491))

(declare-fun m!4927651 () Bool)

(assert (=> bm!301120 m!4927651))

(assert (=> b!4333375 m!4927643))

(assert (=> bm!301119 m!4927521))

(declare-fun m!4927653 () Bool)

(assert (=> bm!301119 m!4927653))

(declare-fun m!4927655 () Bool)

(assert (=> bm!301121 m!4927655))

(assert (=> b!4333258 d!1273830))

(declare-fun bs!608091 () Bool)

(declare-fun d!1273850 () Bool)

(assert (= bs!608091 (and d!1273850 start!417730)))

(declare-fun lambda!135049 () Int)

(assert (=> bs!608091 (= lambda!135049 lambda!134994)))

(declare-fun bs!608092 () Bool)

(assert (= bs!608092 (and d!1273850 d!1273828)))

(assert (=> bs!608092 (= lambda!135049 lambda!135010)))

(declare-fun lt!1546686 () ListMap!1947)

(assert (=> d!1273850 (invariantList!616 (toList!2704 lt!1546686))))

(declare-fun e!2696486 () ListMap!1947)

(assert (=> d!1273850 (= lt!1546686 e!2696486)))

(declare-fun c!736990 () Bool)

(assert (=> d!1273850 (= c!736990 (is-Cons!48614 (t!355654 (toList!2703 lm!1707))))))

(assert (=> d!1273850 (forall!8916 (t!355654 (toList!2703 lm!1707)) lambda!135049)))

(assert (=> d!1273850 (= (extractMap!419 (t!355654 (toList!2703 lm!1707))) lt!1546686)))

(declare-fun b!4333380 () Bool)

(assert (=> b!4333380 (= e!2696486 (addToMapMapFromBucket!68 (_2!27200 (h!54103 (t!355654 (toList!2703 lm!1707)))) (extractMap!419 (t!355654 (t!355654 (toList!2703 lm!1707))))))))

(declare-fun b!4333381 () Bool)

(assert (=> b!4333381 (= e!2696486 (ListMap!1948 Nil!48613))))

(assert (= (and d!1273850 c!736990) b!4333380))

(assert (= (and d!1273850 (not c!736990)) b!4333381))

(declare-fun m!4927657 () Bool)

(assert (=> d!1273850 m!4927657))

(declare-fun m!4927659 () Bool)

(assert (=> d!1273850 m!4927659))

(declare-fun m!4927661 () Bool)

(assert (=> b!4333380 m!4927661))

(assert (=> b!4333380 m!4927661))

(declare-fun m!4927663 () Bool)

(assert (=> b!4333380 m!4927663))

(assert (=> b!4333258 d!1273850))

(declare-fun d!1273852 () Bool)

(declare-fun res!1776839 () Bool)

(declare-fun e!2696487 () Bool)

(assert (=> d!1273852 (=> res!1776839 e!2696487)))

(assert (=> d!1273852 (= res!1776839 (is-Nil!48614 (toList!2703 lm!1707)))))

(assert (=> d!1273852 (= (forall!8916 (toList!2703 lm!1707) lambda!134994) e!2696487)))

(declare-fun b!4333382 () Bool)

(declare-fun e!2696488 () Bool)

(assert (=> b!4333382 (= e!2696487 e!2696488)))

(declare-fun res!1776840 () Bool)

(assert (=> b!4333382 (=> (not res!1776840) (not e!2696488))))

(assert (=> b!4333382 (= res!1776840 (dynLambda!20554 lambda!134994 (h!54103 (toList!2703 lm!1707))))))

(declare-fun b!4333383 () Bool)

(assert (=> b!4333383 (= e!2696488 (forall!8916 (t!355654 (toList!2703 lm!1707)) lambda!134994))))

(assert (= (and d!1273852 (not res!1776839)) b!4333382))

(assert (= (and b!4333382 res!1776840) b!4333383))

(declare-fun b_lambda!128079 () Bool)

(assert (=> (not b_lambda!128079) (not b!4333382)))

(declare-fun m!4927665 () Bool)

(assert (=> b!4333382 m!4927665))

(assert (=> b!4333383 m!4927499))

(assert (=> start!417730 d!1273852))

(declare-fun d!1273854 () Bool)

(declare-fun isStrictlySorted!42 (List!48738) Bool)

(assert (=> d!1273854 (= (inv!64155 lm!1707) (isStrictlySorted!42 (toList!2703 lm!1707)))))

(declare-fun bs!608093 () Bool)

(assert (= bs!608093 d!1273854))

(declare-fun m!4927667 () Bool)

(assert (=> bs!608093 m!4927667))

(assert (=> start!417730 d!1273854))

(declare-fun d!1273856 () Bool)

(declare-fun hash!1299 (Hashable!4752 K!9968) (_ BitVec 64))

(assert (=> d!1273856 (= (hash!1297 hashF!1247 key!3918) (hash!1299 hashF!1247 key!3918))))

(declare-fun bs!608094 () Bool)

(assert (= bs!608094 d!1273856))

(declare-fun m!4927669 () Bool)

(assert (=> bs!608094 m!4927669))

(assert (=> b!4333257 d!1273856))

(declare-fun d!1273858 () Bool)

(declare-fun e!2696493 () Bool)

(assert (=> d!1273858 e!2696493))

(declare-fun res!1776843 () Bool)

(assert (=> d!1273858 (=> res!1776843 e!2696493)))

(declare-fun lt!1546696 () Bool)

(assert (=> d!1273858 (= res!1776843 (not lt!1546696))))

(declare-fun lt!1546698 () Bool)

(assert (=> d!1273858 (= lt!1546696 lt!1546698)))

(declare-fun lt!1546695 () Unit!68234)

(declare-fun e!2696494 () Unit!68234)

(assert (=> d!1273858 (= lt!1546695 e!2696494)))

(declare-fun c!736993 () Bool)

(assert (=> d!1273858 (= c!736993 lt!1546698)))

(declare-fun containsKey!497 (List!48738 (_ BitVec 64)) Bool)

(assert (=> d!1273858 (= lt!1546698 (containsKey!497 (toList!2703 lm!1707) hash!377))))

(assert (=> d!1273858 (= (contains!10643 lm!1707 hash!377) lt!1546696)))

(declare-fun b!4333390 () Bool)

(declare-fun lt!1546697 () Unit!68234)

(assert (=> b!4333390 (= e!2696494 lt!1546697)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!245 (List!48738 (_ BitVec 64)) Unit!68234)

(assert (=> b!4333390 (= lt!1546697 (lemmaContainsKeyImpliesGetValueByKeyDefined!245 (toList!2703 lm!1707) hash!377))))

(declare-datatypes ((Option!10345 0))(
  ( (None!10344) (Some!10344 (v!43060 List!48737)) )
))
(declare-fun isDefined!7642 (Option!10345) Bool)

(declare-fun getValueByKey!331 (List!48738 (_ BitVec 64)) Option!10345)

(assert (=> b!4333390 (isDefined!7642 (getValueByKey!331 (toList!2703 lm!1707) hash!377))))

(declare-fun b!4333391 () Bool)

(declare-fun Unit!68249 () Unit!68234)

(assert (=> b!4333391 (= e!2696494 Unit!68249)))

(declare-fun b!4333392 () Bool)

(assert (=> b!4333392 (= e!2696493 (isDefined!7642 (getValueByKey!331 (toList!2703 lm!1707) hash!377)))))

(assert (= (and d!1273858 c!736993) b!4333390))

(assert (= (and d!1273858 (not c!736993)) b!4333391))

(assert (= (and d!1273858 (not res!1776843)) b!4333392))

(declare-fun m!4927671 () Bool)

(assert (=> d!1273858 m!4927671))

(declare-fun m!4927673 () Bool)

(assert (=> b!4333390 m!4927673))

(declare-fun m!4927675 () Bool)

(assert (=> b!4333390 m!4927675))

(assert (=> b!4333390 m!4927675))

(declare-fun m!4927677 () Bool)

(assert (=> b!4333390 m!4927677))

(assert (=> b!4333392 m!4927675))

(assert (=> b!4333392 m!4927675))

(assert (=> b!4333392 m!4927677))

(assert (=> b!4333256 d!1273858))

(declare-fun bs!608095 () Bool)

(declare-fun d!1273860 () Bool)

(assert (= bs!608095 (and d!1273860 b!4333377)))

(declare-fun lambda!135052 () Int)

(assert (=> bs!608095 (not (= lambda!135052 lambda!135045))))

(declare-fun bs!608096 () Bool)

(assert (= bs!608096 (and d!1273860 b!4333373)))

(assert (=> bs!608096 (not (= lambda!135052 lambda!135046))))

(assert (=> bs!608096 (not (= lambda!135052 lambda!135047))))

(declare-fun bs!608097 () Bool)

(assert (= bs!608097 (and d!1273860 d!1273830)))

(assert (=> bs!608097 (not (= lambda!135052 lambda!135048))))

(assert (=> d!1273860 true))

(assert (=> d!1273860 true))

(assert (=> d!1273860 (= (allKeysSameHash!318 newBucket!200 hash!377 hashF!1247) (forall!8918 newBucket!200 lambda!135052))))

(declare-fun bs!608098 () Bool)

(assert (= bs!608098 d!1273860))

(declare-fun m!4927679 () Bool)

(assert (=> bs!608098 m!4927679))

(assert (=> b!4333255 d!1273860))

(declare-fun bm!301124 () Bool)

(declare-fun call!301129 () Bool)

(declare-datatypes ((List!48741 0))(
  ( (Nil!48617) (Cons!48617 (h!54108 K!9968) (t!355657 List!48741)) )
))
(declare-fun e!2696511 () List!48741)

(declare-fun contains!10647 (List!48741 K!9968) Bool)

(assert (=> bm!301124 (= call!301129 (contains!10647 e!2696511 key!3918))))

(declare-fun c!737001 () Bool)

(declare-fun c!737000 () Bool)

(assert (=> bm!301124 (= c!737001 c!737000)))

(declare-fun b!4333415 () Bool)

(declare-fun getKeysList!65 (List!48737) List!48741)

(assert (=> b!4333415 (= e!2696511 (getKeysList!65 (toList!2704 (extractMap!419 (toList!2703 lm!1707)))))))

(declare-fun b!4333416 () Bool)

(declare-fun e!2696509 () Bool)

(declare-fun e!2696508 () Bool)

(assert (=> b!4333416 (= e!2696509 e!2696508)))

(declare-fun res!1776852 () Bool)

(assert (=> b!4333416 (=> (not res!1776852) (not e!2696508))))

(declare-datatypes ((Option!10346 0))(
  ( (None!10345) (Some!10345 (v!43061 V!10214)) )
))
(declare-fun isDefined!7643 (Option!10346) Bool)

(declare-fun getValueByKey!332 (List!48737 K!9968) Option!10346)

(assert (=> b!4333416 (= res!1776852 (isDefined!7643 (getValueByKey!332 (toList!2704 (extractMap!419 (toList!2703 lm!1707))) key!3918)))))

(declare-fun b!4333418 () Bool)

(declare-fun keys!16337 (ListMap!1947) List!48741)

(assert (=> b!4333418 (= e!2696511 (keys!16337 (extractMap!419 (toList!2703 lm!1707))))))

(declare-fun b!4333419 () Bool)

(declare-fun e!2696507 () Unit!68234)

(declare-fun lt!1546720 () Unit!68234)

(assert (=> b!4333419 (= e!2696507 lt!1546720)))

(declare-fun lt!1546717 () Unit!68234)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!246 (List!48737 K!9968) Unit!68234)

(assert (=> b!4333419 (= lt!1546717 (lemmaContainsKeyImpliesGetValueByKeyDefined!246 (toList!2704 (extractMap!419 (toList!2703 lm!1707))) key!3918))))

(assert (=> b!4333419 (isDefined!7643 (getValueByKey!332 (toList!2704 (extractMap!419 (toList!2703 lm!1707))) key!3918))))

(declare-fun lt!1546721 () Unit!68234)

(assert (=> b!4333419 (= lt!1546721 lt!1546717)))

(declare-fun lemmaInListThenGetKeysListContains!62 (List!48737 K!9968) Unit!68234)

(assert (=> b!4333419 (= lt!1546720 (lemmaInListThenGetKeysListContains!62 (toList!2704 (extractMap!419 (toList!2703 lm!1707))) key!3918))))

(assert (=> b!4333419 call!301129))

(declare-fun b!4333420 () Bool)

(declare-fun e!2696510 () Unit!68234)

(declare-fun Unit!68250 () Unit!68234)

(assert (=> b!4333420 (= e!2696510 Unit!68250)))

(declare-fun b!4333421 () Bool)

(assert (=> b!4333421 (= e!2696507 e!2696510)))

(declare-fun c!737002 () Bool)

(assert (=> b!4333421 (= c!737002 call!301129)))

(declare-fun b!4333422 () Bool)

(assert (=> b!4333422 false))

(declare-fun lt!1546722 () Unit!68234)

(declare-fun lt!1546716 () Unit!68234)

(assert (=> b!4333422 (= lt!1546722 lt!1546716)))

(declare-fun containsKey!498 (List!48737 K!9968) Bool)

(assert (=> b!4333422 (containsKey!498 (toList!2704 (extractMap!419 (toList!2703 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!63 (List!48737 K!9968) Unit!68234)

(assert (=> b!4333422 (= lt!1546716 (lemmaInGetKeysListThenContainsKey!63 (toList!2704 (extractMap!419 (toList!2703 lm!1707))) key!3918))))

(declare-fun Unit!68251 () Unit!68234)

(assert (=> b!4333422 (= e!2696510 Unit!68251)))

(declare-fun b!4333423 () Bool)

(declare-fun e!2696512 () Bool)

(assert (=> b!4333423 (= e!2696512 (not (contains!10647 (keys!16337 (extractMap!419 (toList!2703 lm!1707))) key!3918)))))

(declare-fun d!1273862 () Bool)

(assert (=> d!1273862 e!2696509))

(declare-fun res!1776851 () Bool)

(assert (=> d!1273862 (=> res!1776851 e!2696509)))

(assert (=> d!1273862 (= res!1776851 e!2696512)))

(declare-fun res!1776850 () Bool)

(assert (=> d!1273862 (=> (not res!1776850) (not e!2696512))))

(declare-fun lt!1546715 () Bool)

(assert (=> d!1273862 (= res!1776850 (not lt!1546715))))

(declare-fun lt!1546719 () Bool)

(assert (=> d!1273862 (= lt!1546715 lt!1546719)))

(declare-fun lt!1546718 () Unit!68234)

(assert (=> d!1273862 (= lt!1546718 e!2696507)))

(assert (=> d!1273862 (= c!737000 lt!1546719)))

(assert (=> d!1273862 (= lt!1546719 (containsKey!498 (toList!2704 (extractMap!419 (toList!2703 lm!1707))) key!3918))))

(assert (=> d!1273862 (= (contains!10642 (extractMap!419 (toList!2703 lm!1707)) key!3918) lt!1546715)))

(declare-fun b!4333417 () Bool)

(assert (=> b!4333417 (= e!2696508 (contains!10647 (keys!16337 (extractMap!419 (toList!2703 lm!1707))) key!3918))))

(assert (= (and d!1273862 c!737000) b!4333419))

(assert (= (and d!1273862 (not c!737000)) b!4333421))

(assert (= (and b!4333421 c!737002) b!4333422))

(assert (= (and b!4333421 (not c!737002)) b!4333420))

(assert (= (or b!4333419 b!4333421) bm!301124))

(assert (= (and bm!301124 c!737001) b!4333415))

(assert (= (and bm!301124 (not c!737001)) b!4333418))

(assert (= (and d!1273862 res!1776850) b!4333423))

(assert (= (and d!1273862 (not res!1776851)) b!4333416))

(assert (= (and b!4333416 res!1776852) b!4333417))

(assert (=> b!4333418 m!4927511))

(declare-fun m!4927681 () Bool)

(assert (=> b!4333418 m!4927681))

(declare-fun m!4927683 () Bool)

(assert (=> bm!301124 m!4927683))

(declare-fun m!4927685 () Bool)

(assert (=> b!4333422 m!4927685))

(declare-fun m!4927687 () Bool)

(assert (=> b!4333422 m!4927687))

(assert (=> b!4333417 m!4927511))

(assert (=> b!4333417 m!4927681))

(assert (=> b!4333417 m!4927681))

(declare-fun m!4927689 () Bool)

(assert (=> b!4333417 m!4927689))

(declare-fun m!4927691 () Bool)

(assert (=> b!4333419 m!4927691))

(declare-fun m!4927693 () Bool)

(assert (=> b!4333419 m!4927693))

(assert (=> b!4333419 m!4927693))

(declare-fun m!4927695 () Bool)

(assert (=> b!4333419 m!4927695))

(declare-fun m!4927697 () Bool)

(assert (=> b!4333419 m!4927697))

(assert (=> b!4333416 m!4927693))

(assert (=> b!4333416 m!4927693))

(assert (=> b!4333416 m!4927695))

(assert (=> b!4333423 m!4927511))

(assert (=> b!4333423 m!4927681))

(assert (=> b!4333423 m!4927681))

(assert (=> b!4333423 m!4927689))

(assert (=> d!1273862 m!4927685))

(declare-fun m!4927699 () Bool)

(assert (=> b!4333415 m!4927699))

(assert (=> b!4333254 d!1273862))

(declare-fun bs!608099 () Bool)

(declare-fun d!1273864 () Bool)

(assert (= bs!608099 (and d!1273864 start!417730)))

(declare-fun lambda!135053 () Int)

(assert (=> bs!608099 (= lambda!135053 lambda!134994)))

(declare-fun bs!608100 () Bool)

(assert (= bs!608100 (and d!1273864 d!1273828)))

(assert (=> bs!608100 (= lambda!135053 lambda!135010)))

(declare-fun bs!608101 () Bool)

(assert (= bs!608101 (and d!1273864 d!1273850)))

(assert (=> bs!608101 (= lambda!135053 lambda!135049)))

(declare-fun lt!1546723 () ListMap!1947)

(assert (=> d!1273864 (invariantList!616 (toList!2704 lt!1546723))))

(declare-fun e!2696513 () ListMap!1947)

(assert (=> d!1273864 (= lt!1546723 e!2696513)))

(declare-fun c!737003 () Bool)

(assert (=> d!1273864 (= c!737003 (is-Cons!48614 (toList!2703 lm!1707)))))

(assert (=> d!1273864 (forall!8916 (toList!2703 lm!1707) lambda!135053)))

(assert (=> d!1273864 (= (extractMap!419 (toList!2703 lm!1707)) lt!1546723)))

(declare-fun b!4333424 () Bool)

(assert (=> b!4333424 (= e!2696513 (addToMapMapFromBucket!68 (_2!27200 (h!54103 (toList!2703 lm!1707))) (extractMap!419 (t!355654 (toList!2703 lm!1707)))))))

(declare-fun b!4333425 () Bool)

(assert (=> b!4333425 (= e!2696513 (ListMap!1948 Nil!48613))))

(assert (= (and d!1273864 c!737003) b!4333424))

(assert (= (and d!1273864 (not c!737003)) b!4333425))

(declare-fun m!4927701 () Bool)

(assert (=> d!1273864 m!4927701))

(declare-fun m!4927703 () Bool)

(assert (=> d!1273864 m!4927703))

(assert (=> b!4333424 m!4927521))

(assert (=> b!4333424 m!4927521))

(declare-fun m!4927705 () Bool)

(assert (=> b!4333424 m!4927705))

(assert (=> b!4333254 d!1273864))

(assert (=> b!4333264 d!1273826))

(declare-fun d!1273866 () Bool)

(declare-fun e!2696516 () Bool)

(assert (=> d!1273866 e!2696516))

(declare-fun res!1776858 () Bool)

(assert (=> d!1273866 (=> (not res!1776858) (not e!2696516))))

(declare-fun lt!1546735 () ListLongMap!1353)

(assert (=> d!1273866 (= res!1776858 (contains!10643 lt!1546735 (_1!27200 lt!1546577)))))

(declare-fun lt!1546734 () List!48738)

(assert (=> d!1273866 (= lt!1546735 (ListLongMap!1354 lt!1546734))))

(declare-fun lt!1546732 () Unit!68234)

(declare-fun lt!1546733 () Unit!68234)

(assert (=> d!1273866 (= lt!1546732 lt!1546733)))

(assert (=> d!1273866 (= (getValueByKey!331 lt!1546734 (_1!27200 lt!1546577)) (Some!10344 (_2!27200 lt!1546577)))))

(declare-fun lemmaContainsTupThenGetReturnValue!118 (List!48738 (_ BitVec 64) List!48737) Unit!68234)

(assert (=> d!1273866 (= lt!1546733 (lemmaContainsTupThenGetReturnValue!118 lt!1546734 (_1!27200 lt!1546577) (_2!27200 lt!1546577)))))

(declare-fun insertStrictlySorted!73 (List!48738 (_ BitVec 64) List!48737) List!48738)

(assert (=> d!1273866 (= lt!1546734 (insertStrictlySorted!73 (toList!2703 lm!1707) (_1!27200 lt!1546577) (_2!27200 lt!1546577)))))

(assert (=> d!1273866 (= (+!398 lm!1707 lt!1546577) lt!1546735)))

(declare-fun b!4333430 () Bool)

(declare-fun res!1776857 () Bool)

(assert (=> b!4333430 (=> (not res!1776857) (not e!2696516))))

(assert (=> b!4333430 (= res!1776857 (= (getValueByKey!331 (toList!2703 lt!1546735) (_1!27200 lt!1546577)) (Some!10344 (_2!27200 lt!1546577))))))

(declare-fun b!4333431 () Bool)

(assert (=> b!4333431 (= e!2696516 (contains!10641 (toList!2703 lt!1546735) lt!1546577))))

(assert (= (and d!1273866 res!1776858) b!4333430))

(assert (= (and b!4333430 res!1776857) b!4333431))

(declare-fun m!4927707 () Bool)

(assert (=> d!1273866 m!4927707))

(declare-fun m!4927709 () Bool)

(assert (=> d!1273866 m!4927709))

(declare-fun m!4927711 () Bool)

(assert (=> d!1273866 m!4927711))

(declare-fun m!4927713 () Bool)

(assert (=> d!1273866 m!4927713))

(declare-fun m!4927715 () Bool)

(assert (=> b!4333430 m!4927715))

(declare-fun m!4927717 () Bool)

(assert (=> b!4333431 m!4927717))

(assert (=> b!4333264 d!1273866))

(declare-fun d!1273868 () Bool)

(assert (=> d!1273868 (forall!8916 (toList!2703 (+!398 lm!1707 (tuple2!47813 hash!377 newBucket!200))) lambda!134994)))

(declare-fun lt!1546738 () Unit!68234)

(declare-fun choose!26501 (ListLongMap!1353 Int (_ BitVec 64) List!48737) Unit!68234)

(assert (=> d!1273868 (= lt!1546738 (choose!26501 lm!1707 lambda!134994 hash!377 newBucket!200))))

(declare-fun e!2696519 () Bool)

(assert (=> d!1273868 e!2696519))

(declare-fun res!1776861 () Bool)

(assert (=> d!1273868 (=> (not res!1776861) (not e!2696519))))

(assert (=> d!1273868 (= res!1776861 (forall!8916 (toList!2703 lm!1707) lambda!134994))))

(assert (=> d!1273868 (= (addValidProp!14 lm!1707 lambda!134994 hash!377 newBucket!200) lt!1546738)))

(declare-fun b!4333435 () Bool)

(assert (=> b!4333435 (= e!2696519 (dynLambda!20554 lambda!134994 (tuple2!47813 hash!377 newBucket!200)))))

(assert (= (and d!1273868 res!1776861) b!4333435))

(declare-fun b_lambda!128081 () Bool)

(assert (=> (not b_lambda!128081) (not b!4333435)))

(declare-fun m!4927719 () Bool)

(assert (=> d!1273868 m!4927719))

(declare-fun m!4927721 () Bool)

(assert (=> d!1273868 m!4927721))

(declare-fun m!4927723 () Bool)

(assert (=> d!1273868 m!4927723))

(assert (=> d!1273868 m!4927515))

(declare-fun m!4927725 () Bool)

(assert (=> b!4333435 m!4927725))

(assert (=> b!4333264 d!1273868))

(assert (=> b!4333264 d!1273852))

(declare-fun d!1273870 () Bool)

(declare-fun get!15769 (Option!10345) List!48737)

(assert (=> d!1273870 (= (apply!11212 lm!1707 hash!377) (get!15769 (getValueByKey!331 (toList!2703 lm!1707) hash!377)))))

(declare-fun bs!608102 () Bool)

(assert (= bs!608102 d!1273870))

(assert (=> bs!608102 m!4927675))

(assert (=> bs!608102 m!4927675))

(declare-fun m!4927727 () Bool)

(assert (=> bs!608102 m!4927727))

(assert (=> b!4333253 d!1273870))

(declare-fun b!4333444 () Bool)

(declare-fun e!2696524 () List!48737)

(assert (=> b!4333444 (= e!2696524 (t!355653 lt!1546581))))

(declare-fun b!4333447 () Bool)

(declare-fun e!2696525 () List!48737)

(assert (=> b!4333447 (= e!2696525 Nil!48613)))

(declare-fun b!4333446 () Bool)

(assert (=> b!4333446 (= e!2696525 (Cons!48613 (h!54102 lt!1546581) (removePairForKey!330 (t!355653 lt!1546581) key!3918)))))

(declare-fun b!4333445 () Bool)

(assert (=> b!4333445 (= e!2696524 e!2696525)))

(declare-fun c!737009 () Bool)

(assert (=> b!4333445 (= c!737009 (is-Cons!48613 lt!1546581))))

(declare-fun d!1273872 () Bool)

(declare-fun lt!1546741 () List!48737)

(declare-fun containsKey!499 (List!48737 K!9968) Bool)

(assert (=> d!1273872 (not (containsKey!499 lt!1546741 key!3918))))

(assert (=> d!1273872 (= lt!1546741 e!2696524)))

(declare-fun c!737008 () Bool)

(assert (=> d!1273872 (= c!737008 (and (is-Cons!48613 lt!1546581) (= (_1!27199 (h!54102 lt!1546581)) key!3918)))))

(assert (=> d!1273872 (noDuplicateKeys!360 lt!1546581)))

(assert (=> d!1273872 (= (removePairForKey!330 lt!1546581 key!3918) lt!1546741)))

(assert (= (and d!1273872 c!737008) b!4333444))

(assert (= (and d!1273872 (not c!737008)) b!4333445))

(assert (= (and b!4333445 c!737009) b!4333446))

(assert (= (and b!4333445 (not c!737009)) b!4333447))

(declare-fun m!4927729 () Bool)

(assert (=> b!4333446 m!4927729))

(declare-fun m!4927731 () Bool)

(assert (=> d!1273872 m!4927731))

(declare-fun m!4927733 () Bool)

(assert (=> d!1273872 m!4927733))

(assert (=> b!4333253 d!1273872))

(declare-fun d!1273874 () Bool)

(assert (=> d!1273874 (contains!10641 (toList!2703 lm!1707) (tuple2!47813 hash!377 lt!1546581))))

(declare-fun lt!1546744 () Unit!68234)

(declare-fun choose!26502 (List!48738 (_ BitVec 64) List!48737) Unit!68234)

(assert (=> d!1273874 (= lt!1546744 (choose!26502 (toList!2703 lm!1707) hash!377 lt!1546581))))

(declare-fun e!2696528 () Bool)

(assert (=> d!1273874 e!2696528))

(declare-fun res!1776864 () Bool)

(assert (=> d!1273874 (=> (not res!1776864) (not e!2696528))))

(assert (=> d!1273874 (= res!1776864 (isStrictlySorted!42 (toList!2703 lm!1707)))))

(assert (=> d!1273874 (= (lemmaGetValueByKeyImpliesContainsTuple!207 (toList!2703 lm!1707) hash!377 lt!1546581) lt!1546744)))

(declare-fun b!4333450 () Bool)

(assert (=> b!4333450 (= e!2696528 (= (getValueByKey!331 (toList!2703 lm!1707) hash!377) (Some!10344 lt!1546581)))))

(assert (= (and d!1273874 res!1776864) b!4333450))

(declare-fun m!4927735 () Bool)

(assert (=> d!1273874 m!4927735))

(declare-fun m!4927737 () Bool)

(assert (=> d!1273874 m!4927737))

(assert (=> d!1273874 m!4927667))

(assert (=> b!4333450 m!4927675))

(assert (=> b!4333253 d!1273874))

(declare-fun d!1273876 () Bool)

(declare-fun lt!1546747 () Bool)

(declare-fun content!7591 (List!48738) (Set tuple2!47812))

(assert (=> d!1273876 (= lt!1546747 (set.member lt!1546578 (content!7591 (toList!2703 lm!1707))))))

(declare-fun e!2696534 () Bool)

(assert (=> d!1273876 (= lt!1546747 e!2696534)))

(declare-fun res!1776870 () Bool)

(assert (=> d!1273876 (=> (not res!1776870) (not e!2696534))))

(assert (=> d!1273876 (= res!1776870 (is-Cons!48614 (toList!2703 lm!1707)))))

(assert (=> d!1273876 (= (contains!10641 (toList!2703 lm!1707) lt!1546578) lt!1546747)))

(declare-fun b!4333455 () Bool)

(declare-fun e!2696533 () Bool)

(assert (=> b!4333455 (= e!2696534 e!2696533)))

(declare-fun res!1776869 () Bool)

(assert (=> b!4333455 (=> res!1776869 e!2696533)))

(assert (=> b!4333455 (= res!1776869 (= (h!54103 (toList!2703 lm!1707)) lt!1546578))))

(declare-fun b!4333456 () Bool)

(assert (=> b!4333456 (= e!2696533 (contains!10641 (t!355654 (toList!2703 lm!1707)) lt!1546578))))

(assert (= (and d!1273876 res!1776870) b!4333455))

(assert (= (and b!4333455 (not res!1776869)) b!4333456))

(declare-fun m!4927739 () Bool)

(assert (=> d!1273876 m!4927739))

(declare-fun m!4927741 () Bool)

(assert (=> d!1273876 m!4927741))

(declare-fun m!4927743 () Bool)

(assert (=> b!4333456 m!4927743))

(assert (=> b!4333253 d!1273876))

(declare-fun d!1273878 () Bool)

(assert (=> d!1273878 (dynLambda!20554 lambda!134994 lt!1546578)))

(declare-fun lt!1546750 () Unit!68234)

(declare-fun choose!26503 (List!48738 Int tuple2!47812) Unit!68234)

(assert (=> d!1273878 (= lt!1546750 (choose!26503 (toList!2703 lm!1707) lambda!134994 lt!1546578))))

(declare-fun e!2696537 () Bool)

(assert (=> d!1273878 e!2696537))

(declare-fun res!1776873 () Bool)

(assert (=> d!1273878 (=> (not res!1776873) (not e!2696537))))

(assert (=> d!1273878 (= res!1776873 (forall!8916 (toList!2703 lm!1707) lambda!134994))))

(assert (=> d!1273878 (= (forallContained!1567 (toList!2703 lm!1707) lambda!134994 lt!1546578) lt!1546750)))

(declare-fun b!4333459 () Bool)

(assert (=> b!4333459 (= e!2696537 (contains!10641 (toList!2703 lm!1707) lt!1546578))))

(assert (= (and d!1273878 res!1776873) b!4333459))

(declare-fun b_lambda!128083 () Bool)

(assert (=> (not b_lambda!128083) (not d!1273878)))

(declare-fun m!4927745 () Bool)

(assert (=> d!1273878 m!4927745))

(declare-fun m!4927747 () Bool)

(assert (=> d!1273878 m!4927747))

(assert (=> d!1273878 m!4927515))

(assert (=> b!4333459 m!4927503))

(assert (=> b!4333253 d!1273878))

(declare-fun bs!608103 () Bool)

(declare-fun d!1273880 () Bool)

(assert (= bs!608103 (and d!1273880 start!417730)))

(declare-fun lambda!135056 () Int)

(assert (=> bs!608103 (not (= lambda!135056 lambda!134994))))

(declare-fun bs!608104 () Bool)

(assert (= bs!608104 (and d!1273880 d!1273828)))

(assert (=> bs!608104 (not (= lambda!135056 lambda!135010))))

(declare-fun bs!608105 () Bool)

(assert (= bs!608105 (and d!1273880 d!1273850)))

(assert (=> bs!608105 (not (= lambda!135056 lambda!135049))))

(declare-fun bs!608106 () Bool)

(assert (= bs!608106 (and d!1273880 d!1273864)))

(assert (=> bs!608106 (not (= lambda!135056 lambda!135053))))

(assert (=> d!1273880 true))

(assert (=> d!1273880 (= (allKeysSameHashInMap!464 lm!1707 hashF!1247) (forall!8916 (toList!2703 lm!1707) lambda!135056))))

(declare-fun bs!608107 () Bool)

(assert (= bs!608107 d!1273880))

(declare-fun m!4927749 () Bool)

(assert (=> bs!608107 m!4927749))

(assert (=> b!4333263 d!1273880))

(declare-fun d!1273882 () Bool)

(declare-fun res!1776878 () Bool)

(declare-fun e!2696542 () Bool)

(assert (=> d!1273882 (=> res!1776878 e!2696542)))

(assert (=> d!1273882 (= res!1776878 (not (is-Cons!48613 newBucket!200)))))

(assert (=> d!1273882 (= (noDuplicateKeys!360 newBucket!200) e!2696542)))

(declare-fun b!4333466 () Bool)

(declare-fun e!2696543 () Bool)

(assert (=> b!4333466 (= e!2696542 e!2696543)))

(declare-fun res!1776879 () Bool)

(assert (=> b!4333466 (=> (not res!1776879) (not e!2696543))))

(assert (=> b!4333466 (= res!1776879 (not (containsKey!499 (t!355653 newBucket!200) (_1!27199 (h!54102 newBucket!200)))))))

(declare-fun b!4333467 () Bool)

(assert (=> b!4333467 (= e!2696543 (noDuplicateKeys!360 (t!355653 newBucket!200)))))

(assert (= (and d!1273882 (not res!1776878)) b!4333466))

(assert (= (and b!4333466 res!1776879) b!4333467))

(declare-fun m!4927751 () Bool)

(assert (=> b!4333466 m!4927751))

(declare-fun m!4927753 () Bool)

(assert (=> b!4333467 m!4927753))

(assert (=> b!4333262 d!1273882))

(declare-fun d!1273884 () Bool)

(declare-fun res!1776880 () Bool)

(declare-fun e!2696544 () Bool)

(assert (=> d!1273884 (=> res!1776880 e!2696544)))

(assert (=> d!1273884 (= res!1776880 (is-Nil!48614 (t!355654 (toList!2703 lm!1707))))))

(assert (=> d!1273884 (= (forall!8916 (t!355654 (toList!2703 lm!1707)) lambda!134994) e!2696544)))

(declare-fun b!4333468 () Bool)

(declare-fun e!2696545 () Bool)

(assert (=> b!4333468 (= e!2696544 e!2696545)))

(declare-fun res!1776881 () Bool)

(assert (=> b!4333468 (=> (not res!1776881) (not e!2696545))))

(assert (=> b!4333468 (= res!1776881 (dynLambda!20554 lambda!134994 (h!54103 (t!355654 (toList!2703 lm!1707)))))))

(declare-fun b!4333469 () Bool)

(assert (=> b!4333469 (= e!2696545 (forall!8916 (t!355654 (t!355654 (toList!2703 lm!1707))) lambda!134994))))

(assert (= (and d!1273884 (not res!1776880)) b!4333468))

(assert (= (and b!4333468 res!1776881) b!4333469))

(declare-fun b_lambda!128085 () Bool)

(assert (=> (not b_lambda!128085) (not b!4333468)))

(declare-fun m!4927755 () Bool)

(assert (=> b!4333468 m!4927755))

(declare-fun m!4927757 () Bool)

(assert (=> b!4333469 m!4927757))

(assert (=> b!4333251 d!1273884))

(declare-fun b!4333474 () Bool)

(declare-fun e!2696548 () Bool)

(declare-fun tp!1328745 () Bool)

(declare-fun tp!1328746 () Bool)

(assert (=> b!4333474 (= e!2696548 (and tp!1328745 tp!1328746))))

(assert (=> b!4333252 (= tp!1328734 e!2696548)))

(assert (= (and b!4333252 (is-Cons!48614 (toList!2703 lm!1707))) b!4333474))

(declare-fun b!4333479 () Bool)

(declare-fun tp!1328749 () Bool)

(declare-fun e!2696551 () Bool)

(assert (=> b!4333479 (= e!2696551 (and tp_is_empty!24677 tp_is_empty!24679 tp!1328749))))

(assert (=> b!4333261 (= tp!1328733 e!2696551)))

(assert (= (and b!4333261 (is-Cons!48613 (t!355653 newBucket!200))) b!4333479))

(declare-fun b_lambda!128087 () Bool)

(assert (= b_lambda!128079 (or start!417730 b_lambda!128087)))

(declare-fun bs!608108 () Bool)

(declare-fun d!1273886 () Bool)

(assert (= bs!608108 (and d!1273886 start!417730)))

(assert (=> bs!608108 (= (dynLambda!20554 lambda!134994 (h!54103 (toList!2703 lm!1707))) (noDuplicateKeys!360 (_2!27200 (h!54103 (toList!2703 lm!1707)))))))

(declare-fun m!4927759 () Bool)

(assert (=> bs!608108 m!4927759))

(assert (=> b!4333382 d!1273886))

(declare-fun b_lambda!128089 () Bool)

(assert (= b_lambda!128075 (or start!417730 b_lambda!128089)))

(declare-fun bs!608109 () Bool)

(declare-fun d!1273888 () Bool)

(assert (= bs!608109 (and d!1273888 start!417730)))

(assert (=> bs!608109 (= (dynLambda!20554 lambda!134994 (h!54103 (toList!2703 lt!1546582))) (noDuplicateKeys!360 (_2!27200 (h!54103 (toList!2703 lt!1546582)))))))

(declare-fun m!4927761 () Bool)

(assert (=> bs!608109 m!4927761))

(assert (=> b!4333315 d!1273888))

(declare-fun b_lambda!128091 () Bool)

(assert (= b_lambda!128083 (or start!417730 b_lambda!128091)))

(declare-fun bs!608110 () Bool)

(declare-fun d!1273890 () Bool)

(assert (= bs!608110 (and d!1273890 start!417730)))

(assert (=> bs!608110 (= (dynLambda!20554 lambda!134994 lt!1546578) (noDuplicateKeys!360 (_2!27200 lt!1546578)))))

(declare-fun m!4927763 () Bool)

(assert (=> bs!608110 m!4927763))

(assert (=> d!1273878 d!1273890))

(declare-fun b_lambda!128093 () Bool)

(assert (= b_lambda!128085 (or start!417730 b_lambda!128093)))

(declare-fun bs!608111 () Bool)

(declare-fun d!1273892 () Bool)

(assert (= bs!608111 (and d!1273892 start!417730)))

(assert (=> bs!608111 (= (dynLambda!20554 lambda!134994 (h!54103 (t!355654 (toList!2703 lm!1707)))) (noDuplicateKeys!360 (_2!27200 (h!54103 (t!355654 (toList!2703 lm!1707))))))))

(declare-fun m!4927765 () Bool)

(assert (=> bs!608111 m!4927765))

(assert (=> b!4333468 d!1273892))

(declare-fun b_lambda!128095 () Bool)

(assert (= b_lambda!128081 (or start!417730 b_lambda!128095)))

(declare-fun bs!608112 () Bool)

(declare-fun d!1273894 () Bool)

(assert (= bs!608112 (and d!1273894 start!417730)))

(assert (=> bs!608112 (= (dynLambda!20554 lambda!134994 (tuple2!47813 hash!377 newBucket!200)) (noDuplicateKeys!360 (_2!27200 (tuple2!47813 hash!377 newBucket!200))))))

(declare-fun m!4927767 () Bool)

(assert (=> bs!608112 m!4927767))

(assert (=> b!4333435 d!1273894))

(push 1)

(assert (not b_lambda!128093))

(assert (not b!4333446))

(assert (not d!1273828))

(assert (not b!4333430))

(assert (not b!4333316))

(assert (not b!4333474))

(assert (not b_lambda!128089))

(assert (not d!1273858))

(assert tp_is_empty!24677)

(assert (not d!1273874))

(assert tp_is_empty!24679)

(assert (not d!1273868))

(assert (not b!4333424))

(assert (not b!4333383))

(assert (not d!1273870))

(assert (not b_lambda!128091))

(assert (not b!4333456))

(assert (not b!4333419))

(assert (not bm!301124))

(assert (not d!1273878))

(assert (not bs!608111))

(assert (not b!4333380))

(assert (not d!1273830))

(assert (not bs!608112))

(assert (not b!4333422))

(assert (not d!1273880))

(assert (not b!4333321))

(assert (not b!4333376))

(assert (not b_lambda!128087))

(assert (not b_lambda!128095))

(assert (not bm!301120))

(assert (not d!1273860))

(assert (not bm!301119))

(assert (not bs!608108))

(assert (not d!1273876))

(assert (not b!4333375))

(assert (not b!4333418))

(assert (not d!1273856))

(assert (not b!4333390))

(assert (not b!4333373))

(assert (not d!1273866))

(assert (not b!4333466))

(assert (not bm!301121))

(assert (not b!4333431))

(assert (not b!4333459))

(assert (not d!1273854))

(assert (not d!1273850))

(assert (not d!1273862))

(assert (not bs!608110))

(assert (not b!4333450))

(assert (not b!4333416))

(assert (not b!4333467))

(assert (not b!4333392))

(assert (not b!4333423))

(assert (not b!4333415))

(assert (not b!4333417))

(assert (not b!4333374))

(assert (not d!1273864))

(assert (not b!4333469))

(assert (not bs!608109))

(assert (not d!1273872))

(assert (not b!4333479))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

