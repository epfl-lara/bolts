; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!422888 () Bool)

(assert start!422888)

(declare-fun b!4363106 () Bool)

(declare-fun e!2715406 () Bool)

(declare-fun tp!1330413 () Bool)

(assert (=> b!4363106 (= e!2715406 tp!1330413)))

(declare-fun b!4363107 () Bool)

(declare-fun res!1794141 () Bool)

(declare-fun e!2715402 () Bool)

(assert (=> b!4363107 (=> (not res!1794141) (not e!2715402))))

(declare-datatypes ((V!10591 0))(
  ( (V!10592 (val!16547 Int)) )
))
(declare-datatypes ((K!10345 0))(
  ( (K!10346 (val!16548 Int)) )
))
(declare-datatypes ((tuple2!48414 0))(
  ( (tuple2!48415 (_1!27501 K!10345) (_2!27501 V!10591)) )
))
(declare-datatypes ((List!49113 0))(
  ( (Nil!48989) (Cons!48989 (h!54554 tuple2!48414) (t!356033 List!49113)) )
))
(declare-datatypes ((tuple2!48416 0))(
  ( (tuple2!48417 (_1!27502 (_ BitVec 64)) (_2!27502 List!49113)) )
))
(declare-datatypes ((List!49114 0))(
  ( (Nil!48990) (Cons!48990 (h!54555 tuple2!48416) (t!356034 List!49114)) )
))
(declare-datatypes ((ListLongMap!1655 0))(
  ( (ListLongMap!1656 (toList!3005 List!49114)) )
))
(declare-fun lm!1707 () ListLongMap!1655)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!11229 (ListLongMap!1655 (_ BitVec 64)) Bool)

(assert (=> b!4363107 (= res!1794141 (contains!11229 lm!1707 hash!377))))

(declare-fun b!4363108 () Bool)

(declare-fun e!2715408 () Bool)

(declare-fun key!3918 () K!10345)

(declare-fun containsKey!740 (List!49113 K!10345) Bool)

(assert (=> b!4363108 (= e!2715408 (not (containsKey!740 (_2!27502 (h!54555 (toList!3005 lm!1707))) key!3918)))))

(declare-fun b!4363109 () Bool)

(declare-fun res!1794143 () Bool)

(declare-fun e!2715404 () Bool)

(assert (=> b!4363109 (=> (not res!1794143) (not e!2715404))))

(declare-datatypes ((Hashable!4903 0))(
  ( (HashableExt!4902 (__x!30606 Int)) )
))
(declare-fun hashF!1247 () Hashable!4903)

(declare-fun allKeysSameHashInMap!615 (ListLongMap!1655 Hashable!4903) Bool)

(assert (=> b!4363109 (= res!1794143 (allKeysSameHashInMap!615 lm!1707 hashF!1247))))

(declare-fun b!4363110 () Bool)

(declare-fun res!1794144 () Bool)

(assert (=> b!4363110 (=> (not res!1794144) (not e!2715404))))

(declare-fun hash!1633 (Hashable!4903 K!10345) (_ BitVec 64))

(assert (=> b!4363110 (= res!1794144 (= (hash!1633 hashF!1247 key!3918) hash!377))))

(declare-fun b!4363111 () Bool)

(declare-fun e!2715401 () Bool)

(declare-fun e!2715405 () Bool)

(assert (=> b!4363111 (= e!2715401 e!2715405)))

(declare-fun res!1794147 () Bool)

(assert (=> b!4363111 (=> res!1794147 e!2715405)))

(declare-datatypes ((ListMap!2249 0))(
  ( (ListMap!2250 (toList!3006 List!49113)) )
))
(declare-fun lt!1575430 () ListMap!2249)

(declare-fun lt!1575449 () ListMap!2249)

(declare-fun eq!281 (ListMap!2249 ListMap!2249) Bool)

(assert (=> b!4363111 (= res!1794147 (not (eq!281 lt!1575430 lt!1575449)))))

(declare-fun lt!1575448 () ListMap!2249)

(declare-fun lt!1575441 () ListMap!2249)

(assert (=> b!4363111 (eq!281 lt!1575448 lt!1575441)))

(declare-fun lt!1575446 () tuple2!48414)

(declare-fun +!679 (ListMap!2249 tuple2!48414) ListMap!2249)

(assert (=> b!4363111 (= lt!1575441 (+!679 lt!1575430 lt!1575446))))

(declare-fun lt!1575439 () ListMap!2249)

(declare-fun addToMapMapFromBucket!207 (List!49113 ListMap!2249) ListMap!2249)

(assert (=> b!4363111 (= lt!1575448 (addToMapMapFromBucket!207 (_2!27502 (h!54555 (toList!3005 lm!1707))) lt!1575439))))

(declare-datatypes ((Unit!72733 0))(
  ( (Unit!72734) )
))
(declare-fun lt!1575440 () Unit!72733)

(declare-fun newValue!99 () V!10591)

(declare-fun lt!1575429 () ListMap!2249)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!90 (ListMap!2249 K!10345 V!10591 List!49113) Unit!72733)

(assert (=> b!4363111 (= lt!1575440 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!90 lt!1575429 key!3918 newValue!99 (_2!27502 (h!54555 (toList!3005 lm!1707)))))))

(assert (=> b!4363111 (= lt!1575449 lt!1575430)))

(assert (=> b!4363111 (= lt!1575430 (addToMapMapFromBucket!207 (_2!27502 (h!54555 (toList!3005 lm!1707))) lt!1575429))))

(declare-fun e!2715400 () Bool)

(assert (=> b!4363111 e!2715400))

(declare-fun res!1794152 () Bool)

(assert (=> b!4363111 (=> (not res!1794152) (not e!2715400))))

(declare-fun lt!1575444 () ListMap!2249)

(assert (=> b!4363111 (= res!1794152 (eq!281 lt!1575444 lt!1575439))))

(assert (=> b!4363111 (= lt!1575439 (+!679 lt!1575429 lt!1575446))))

(declare-fun lt!1575432 () ListLongMap!1655)

(declare-fun lt!1575443 () tuple2!48416)

(declare-fun extractMap!570 (List!49114) ListMap!2249)

(declare-fun +!680 (ListLongMap!1655 tuple2!48416) ListLongMap!1655)

(assert (=> b!4363111 (= lt!1575444 (extractMap!570 (toList!3005 (+!680 lt!1575432 lt!1575443))))))

(declare-fun newBucket!200 () List!49113)

(declare-fun lt!1575447 () Unit!72733)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!115 (ListLongMap!1655 (_ BitVec 64) List!49113 K!10345 V!10591 Hashable!4903) Unit!72733)

(assert (=> b!4363111 (= lt!1575447 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!115 lt!1575432 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11230 (ListMap!2249 K!10345) Bool)

(assert (=> b!4363111 (contains!11230 lt!1575429 key!3918)))

(assert (=> b!4363111 (= lt!1575429 (extractMap!570 (toList!3005 lt!1575432)))))

(declare-fun tail!7032 (ListLongMap!1655) ListLongMap!1655)

(assert (=> b!4363111 (= lt!1575432 (tail!7032 lm!1707))))

(declare-fun lt!1575442 () ListMap!2249)

(assert (=> b!4363111 (contains!11230 lt!1575442 key!3918)))

(declare-fun lt!1575434 () Unit!72733)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!54 (List!49113 K!10345 V!10591 ListMap!2249) Unit!72733)

(assert (=> b!4363111 (= lt!1575434 (lemmaAddToMapContainsAndNotInListThenInAcc!54 (_2!27502 (h!54555 (toList!3005 lm!1707))) key!3918 newValue!99 lt!1575442))))

(assert (=> b!4363111 (= lt!1575442 (extractMap!570 (t!356034 (toList!3005 lm!1707))))))

(assert (=> b!4363111 e!2715408))

(declare-fun res!1794149 () Bool)

(assert (=> b!4363111 (=> (not res!1794149) (not e!2715408))))

(declare-fun apply!11363 (ListLongMap!1655 (_ BitVec 64)) List!49113)

(assert (=> b!4363111 (= res!1794149 (not (containsKey!740 (apply!11363 lm!1707 (_1!27502 (h!54555 (toList!3005 lm!1707)))) key!3918)))))

(declare-fun lt!1575433 () Unit!72733)

(declare-fun lemmaNotSameHashThenCannotContainKey!58 (ListLongMap!1655 K!10345 (_ BitVec 64) Hashable!4903) Unit!72733)

(assert (=> b!4363111 (= lt!1575433 (lemmaNotSameHashThenCannotContainKey!58 lm!1707 key!3918 (_1!27502 (h!54555 (toList!3005 lm!1707))) hashF!1247))))

(declare-fun res!1794146 () Bool)

(assert (=> start!422888 (=> (not res!1794146) (not e!2715404))))

(declare-fun lambda!141907 () Int)

(declare-fun forall!9162 (List!49114 Int) Bool)

(assert (=> start!422888 (= res!1794146 (forall!9162 (toList!3005 lm!1707) lambda!141907))))

(assert (=> start!422888 e!2715404))

(declare-fun e!2715399 () Bool)

(assert (=> start!422888 e!2715399))

(assert (=> start!422888 true))

(declare-fun inv!64531 (ListLongMap!1655) Bool)

(assert (=> start!422888 (and (inv!64531 lm!1707) e!2715406)))

(declare-fun tp_is_empty!25281 () Bool)

(assert (=> start!422888 tp_is_empty!25281))

(declare-fun tp_is_empty!25283 () Bool)

(assert (=> start!422888 tp_is_empty!25283))

(declare-fun b!4363112 () Bool)

(declare-fun head!9084 (ListLongMap!1655) tuple2!48416)

(assert (=> b!4363112 (= e!2715400 (not (= (head!9084 lm!1707) lt!1575443)))))

(declare-fun b!4363113 () Bool)

(assert (=> b!4363113 (= e!2715405 (forall!9162 (toList!3005 lt!1575432) lambda!141907))))

(assert (=> b!4363113 (eq!281 (+!679 lt!1575449 lt!1575446) lt!1575441)))

(declare-fun lt!1575438 () Unit!72733)

(declare-fun lemmaAddToEqMapsPreservesEq!4 (ListMap!2249 ListMap!2249 K!10345 V!10591) Unit!72733)

(assert (=> b!4363113 (= lt!1575438 (lemmaAddToEqMapsPreservesEq!4 lt!1575449 lt!1575430 key!3918 newValue!99))))

(declare-fun b!4363114 () Bool)

(assert (=> b!4363114 (= e!2715404 e!2715402)))

(declare-fun res!1794151 () Bool)

(assert (=> b!4363114 (=> (not res!1794151) (not e!2715402))))

(assert (=> b!4363114 (= res!1794151 (contains!11230 lt!1575449 key!3918))))

(assert (=> b!4363114 (= lt!1575449 (extractMap!570 (toList!3005 lm!1707)))))

(declare-fun b!4363115 () Bool)

(declare-fun res!1794150 () Bool)

(assert (=> b!4363115 (=> (not res!1794150) (not e!2715404))))

(declare-fun allKeysSameHash!469 (List!49113 (_ BitVec 64) Hashable!4903) Bool)

(assert (=> b!4363115 (= res!1794150 (allKeysSameHash!469 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4363116 () Bool)

(declare-fun e!2715403 () Bool)

(declare-fun lt!1575445 () ListLongMap!1655)

(assert (=> b!4363116 (= e!2715403 (forall!9162 (toList!3005 lt!1575445) lambda!141907))))

(declare-fun b!4363117 () Bool)

(declare-fun e!2715407 () Bool)

(assert (=> b!4363117 (= e!2715402 (not e!2715407))))

(declare-fun res!1794145 () Bool)

(assert (=> b!4363117 (=> res!1794145 e!2715407)))

(declare-fun lt!1575437 () List!49113)

(declare-fun removePairForKey!481 (List!49113 K!10345) List!49113)

(assert (=> b!4363117 (= res!1794145 (not (= newBucket!200 (Cons!48989 lt!1575446 (removePairForKey!481 lt!1575437 key!3918)))))))

(assert (=> b!4363117 (= lt!1575446 (tuple2!48415 key!3918 newValue!99))))

(declare-fun lt!1575450 () Unit!72733)

(declare-fun lt!1575431 () tuple2!48416)

(declare-fun forallContained!1803 (List!49114 Int tuple2!48416) Unit!72733)

(assert (=> b!4363117 (= lt!1575450 (forallContained!1803 (toList!3005 lm!1707) lambda!141907 lt!1575431))))

(declare-fun contains!11231 (List!49114 tuple2!48416) Bool)

(assert (=> b!4363117 (contains!11231 (toList!3005 lm!1707) lt!1575431)))

(assert (=> b!4363117 (= lt!1575431 (tuple2!48417 hash!377 lt!1575437))))

(declare-fun lt!1575435 () Unit!72733)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!358 (List!49114 (_ BitVec 64) List!49113) Unit!72733)

(assert (=> b!4363117 (= lt!1575435 (lemmaGetValueByKeyImpliesContainsTuple!358 (toList!3005 lm!1707) hash!377 lt!1575437))))

(assert (=> b!4363117 (= lt!1575437 (apply!11363 lm!1707 hash!377))))

(declare-fun b!4363118 () Bool)

(assert (=> b!4363118 (= e!2715407 e!2715401)))

(declare-fun res!1794153 () Bool)

(assert (=> b!4363118 (=> res!1794153 e!2715401)))

(get-info :version)

(assert (=> b!4363118 (= res!1794153 (or (and ((_ is Cons!48990) (toList!3005 lm!1707)) (= (_1!27502 (h!54555 (toList!3005 lm!1707))) hash!377)) (not ((_ is Cons!48990) (toList!3005 lm!1707))) (= (_1!27502 (h!54555 (toList!3005 lm!1707))) hash!377)))))

(assert (=> b!4363118 e!2715403))

(declare-fun res!1794142 () Bool)

(assert (=> b!4363118 (=> (not res!1794142) (not e!2715403))))

(assert (=> b!4363118 (= res!1794142 (forall!9162 (toList!3005 lt!1575445) lambda!141907))))

(assert (=> b!4363118 (= lt!1575445 (+!680 lm!1707 lt!1575443))))

(assert (=> b!4363118 (= lt!1575443 (tuple2!48417 hash!377 newBucket!200))))

(declare-fun lt!1575436 () Unit!72733)

(declare-fun addValidProp!165 (ListLongMap!1655 Int (_ BitVec 64) List!49113) Unit!72733)

(assert (=> b!4363118 (= lt!1575436 (addValidProp!165 lm!1707 lambda!141907 hash!377 newBucket!200))))

(assert (=> b!4363118 (forall!9162 (toList!3005 lm!1707) lambda!141907)))

(declare-fun b!4363119 () Bool)

(declare-fun tp!1330414 () Bool)

(assert (=> b!4363119 (= e!2715399 (and tp_is_empty!25281 tp_is_empty!25283 tp!1330414))))

(declare-fun b!4363120 () Bool)

(declare-fun res!1794148 () Bool)

(assert (=> b!4363120 (=> res!1794148 e!2715407)))

(declare-fun noDuplicateKeys!511 (List!49113) Bool)

(assert (=> b!4363120 (= res!1794148 (not (noDuplicateKeys!511 newBucket!200)))))

(assert (= (and start!422888 res!1794146) b!4363109))

(assert (= (and b!4363109 res!1794143) b!4363110))

(assert (= (and b!4363110 res!1794144) b!4363115))

(assert (= (and b!4363115 res!1794150) b!4363114))

(assert (= (and b!4363114 res!1794151) b!4363107))

(assert (= (and b!4363107 res!1794141) b!4363117))

(assert (= (and b!4363117 (not res!1794145)) b!4363120))

(assert (= (and b!4363120 (not res!1794148)) b!4363118))

(assert (= (and b!4363118 res!1794142) b!4363116))

(assert (= (and b!4363118 (not res!1794153)) b!4363111))

(assert (= (and b!4363111 res!1794149) b!4363108))

(assert (= (and b!4363111 res!1794152) b!4363112))

(assert (= (and b!4363111 (not res!1794147)) b!4363113))

(assert (= (and start!422888 ((_ is Cons!48989) newBucket!200)) b!4363119))

(assert (= start!422888 b!4363106))

(declare-fun m!4983609 () Bool)

(assert (=> b!4363115 m!4983609))

(declare-fun m!4983611 () Bool)

(assert (=> b!4363117 m!4983611))

(declare-fun m!4983613 () Bool)

(assert (=> b!4363117 m!4983613))

(declare-fun m!4983615 () Bool)

(assert (=> b!4363117 m!4983615))

(declare-fun m!4983617 () Bool)

(assert (=> b!4363117 m!4983617))

(declare-fun m!4983619 () Bool)

(assert (=> b!4363117 m!4983619))

(declare-fun m!4983621 () Bool)

(assert (=> b!4363120 m!4983621))

(declare-fun m!4983623 () Bool)

(assert (=> b!4363113 m!4983623))

(declare-fun m!4983625 () Bool)

(assert (=> b!4363113 m!4983625))

(assert (=> b!4363113 m!4983625))

(declare-fun m!4983627 () Bool)

(assert (=> b!4363113 m!4983627))

(declare-fun m!4983629 () Bool)

(assert (=> b!4363113 m!4983629))

(declare-fun m!4983631 () Bool)

(assert (=> b!4363108 m!4983631))

(declare-fun m!4983633 () Bool)

(assert (=> b!4363112 m!4983633))

(declare-fun m!4983635 () Bool)

(assert (=> b!4363107 m!4983635))

(declare-fun m!4983637 () Bool)

(assert (=> b!4363116 m!4983637))

(declare-fun m!4983639 () Bool)

(assert (=> b!4363114 m!4983639))

(declare-fun m!4983641 () Bool)

(assert (=> b!4363114 m!4983641))

(declare-fun m!4983643 () Bool)

(assert (=> b!4363110 m!4983643))

(assert (=> b!4363118 m!4983637))

(declare-fun m!4983645 () Bool)

(assert (=> b!4363118 m!4983645))

(declare-fun m!4983647 () Bool)

(assert (=> b!4363118 m!4983647))

(declare-fun m!4983649 () Bool)

(assert (=> b!4363118 m!4983649))

(declare-fun m!4983651 () Bool)

(assert (=> b!4363111 m!4983651))

(declare-fun m!4983653 () Bool)

(assert (=> b!4363111 m!4983653))

(declare-fun m!4983655 () Bool)

(assert (=> b!4363111 m!4983655))

(declare-fun m!4983657 () Bool)

(assert (=> b!4363111 m!4983657))

(declare-fun m!4983659 () Bool)

(assert (=> b!4363111 m!4983659))

(declare-fun m!4983661 () Bool)

(assert (=> b!4363111 m!4983661))

(declare-fun m!4983663 () Bool)

(assert (=> b!4363111 m!4983663))

(declare-fun m!4983665 () Bool)

(assert (=> b!4363111 m!4983665))

(declare-fun m!4983667 () Bool)

(assert (=> b!4363111 m!4983667))

(declare-fun m!4983669 () Bool)

(assert (=> b!4363111 m!4983669))

(declare-fun m!4983671 () Bool)

(assert (=> b!4363111 m!4983671))

(declare-fun m!4983673 () Bool)

(assert (=> b!4363111 m!4983673))

(declare-fun m!4983675 () Bool)

(assert (=> b!4363111 m!4983675))

(declare-fun m!4983677 () Bool)

(assert (=> b!4363111 m!4983677))

(declare-fun m!4983679 () Bool)

(assert (=> b!4363111 m!4983679))

(declare-fun m!4983681 () Bool)

(assert (=> b!4363111 m!4983681))

(declare-fun m!4983683 () Bool)

(assert (=> b!4363111 m!4983683))

(declare-fun m!4983685 () Bool)

(assert (=> b!4363111 m!4983685))

(declare-fun m!4983687 () Bool)

(assert (=> b!4363111 m!4983687))

(assert (=> b!4363111 m!4983687))

(declare-fun m!4983689 () Bool)

(assert (=> b!4363111 m!4983689))

(assert (=> start!422888 m!4983649))

(declare-fun m!4983691 () Bool)

(assert (=> start!422888 m!4983691))

(declare-fun m!4983693 () Bool)

(assert (=> b!4363109 m!4983693))

(check-sat (not b!4363116) (not b!4363109) (not b!4363118) (not b!4363117) (not b!4363112) (not b!4363115) tp_is_empty!25281 (not b!4363119) (not start!422888) (not b!4363111) (not b!4363114) (not b!4363108) (not b!4363113) (not b!4363110) (not b!4363107) (not b!4363106) (not b!4363120) tp_is_empty!25283)
(check-sat)
(get-model)

(declare-fun d!1291293 () Bool)

(declare-fun hash!1638 (Hashable!4903 K!10345) (_ BitVec 64))

(assert (=> d!1291293 (= (hash!1633 hashF!1247 key!3918) (hash!1638 hashF!1247 key!3918))))

(declare-fun bs!636295 () Bool)

(assert (= bs!636295 d!1291293))

(declare-fun m!4983695 () Bool)

(assert (=> bs!636295 m!4983695))

(assert (=> b!4363110 d!1291293))

(declare-fun b!4363227 () Bool)

(assert (=> b!4363227 true))

(declare-fun bs!636303 () Bool)

(declare-fun b!4363228 () Bool)

(assert (= bs!636303 (and b!4363228 b!4363227)))

(declare-fun lambda!141943 () Int)

(declare-fun lambda!141942 () Int)

(assert (=> bs!636303 (= lambda!141943 lambda!141942)))

(assert (=> b!4363228 true))

(declare-fun lambda!141944 () Int)

(declare-fun lt!1575569 () ListMap!2249)

(assert (=> bs!636303 (= (= lt!1575569 lt!1575429) (= lambda!141944 lambda!141942))))

(assert (=> b!4363228 (= (= lt!1575569 lt!1575429) (= lambda!141944 lambda!141943))))

(assert (=> b!4363228 true))

(declare-fun bs!636304 () Bool)

(declare-fun d!1291295 () Bool)

(assert (= bs!636304 (and d!1291295 b!4363227)))

(declare-fun lt!1575568 () ListMap!2249)

(declare-fun lambda!141945 () Int)

(assert (=> bs!636304 (= (= lt!1575568 lt!1575429) (= lambda!141945 lambda!141942))))

(declare-fun bs!636305 () Bool)

(assert (= bs!636305 (and d!1291295 b!4363228)))

(assert (=> bs!636305 (= (= lt!1575568 lt!1575429) (= lambda!141945 lambda!141943))))

(assert (=> bs!636305 (= (= lt!1575568 lt!1575569) (= lambda!141945 lambda!141944))))

(assert (=> d!1291295 true))

(declare-fun bm!303335 () Bool)

(declare-fun call!303342 () Unit!72733)

(declare-fun lemmaContainsAllItsOwnKeys!74 (ListMap!2249) Unit!72733)

(assert (=> bm!303335 (= call!303342 (lemmaContainsAllItsOwnKeys!74 lt!1575429))))

(declare-fun bm!303336 () Bool)

(declare-fun c!741978 () Bool)

(declare-fun call!303341 () Bool)

(declare-fun lt!1575573 () ListMap!2249)

(declare-fun forall!9164 (List!49113 Int) Bool)

(assert (=> bm!303336 (= call!303341 (forall!9164 (ite c!741978 (toList!3006 lt!1575429) (toList!3006 lt!1575573)) (ite c!741978 lambda!141942 lambda!141944)))))

(declare-fun e!2715483 () ListMap!2249)

(assert (=> b!4363227 (= e!2715483 lt!1575429)))

(declare-fun lt!1575574 () Unit!72733)

(assert (=> b!4363227 (= lt!1575574 call!303342)))

(declare-fun call!303340 () Bool)

(assert (=> b!4363227 call!303340))

(declare-fun lt!1575561 () Unit!72733)

(assert (=> b!4363227 (= lt!1575561 lt!1575574)))

(assert (=> b!4363227 call!303341))

(declare-fun lt!1575570 () Unit!72733)

(declare-fun Unit!72736 () Unit!72733)

(assert (=> b!4363227 (= lt!1575570 Unit!72736)))

(assert (=> b!4363228 (= e!2715483 lt!1575569)))

(assert (=> b!4363228 (= lt!1575573 (+!679 lt!1575429 (h!54554 (_2!27502 (h!54555 (toList!3005 lm!1707))))))))

(assert (=> b!4363228 (= lt!1575569 (addToMapMapFromBucket!207 (t!356033 (_2!27502 (h!54555 (toList!3005 lm!1707)))) (+!679 lt!1575429 (h!54554 (_2!27502 (h!54555 (toList!3005 lm!1707)))))))))

(declare-fun lt!1575557 () Unit!72733)

(assert (=> b!4363228 (= lt!1575557 call!303342)))

(assert (=> b!4363228 (forall!9164 (toList!3006 lt!1575429) lambda!141943)))

(declare-fun lt!1575563 () Unit!72733)

(assert (=> b!4363228 (= lt!1575563 lt!1575557)))

(assert (=> b!4363228 (forall!9164 (toList!3006 lt!1575573) lambda!141944)))

(declare-fun lt!1575560 () Unit!72733)

(declare-fun Unit!72737 () Unit!72733)

(assert (=> b!4363228 (= lt!1575560 Unit!72737)))

(assert (=> b!4363228 (forall!9164 (t!356033 (_2!27502 (h!54555 (toList!3005 lm!1707)))) lambda!141944)))

(declare-fun lt!1575555 () Unit!72733)

(declare-fun Unit!72738 () Unit!72733)

(assert (=> b!4363228 (= lt!1575555 Unit!72738)))

(declare-fun lt!1575562 () Unit!72733)

(declare-fun Unit!72739 () Unit!72733)

(assert (=> b!4363228 (= lt!1575562 Unit!72739)))

(declare-fun lt!1575566 () Unit!72733)

(declare-fun forallContained!1804 (List!49113 Int tuple2!48414) Unit!72733)

(assert (=> b!4363228 (= lt!1575566 (forallContained!1804 (toList!3006 lt!1575573) lambda!141944 (h!54554 (_2!27502 (h!54555 (toList!3005 lm!1707))))))))

(assert (=> b!4363228 (contains!11230 lt!1575573 (_1!27501 (h!54554 (_2!27502 (h!54555 (toList!3005 lm!1707))))))))

(declare-fun lt!1575565 () Unit!72733)

(declare-fun Unit!72740 () Unit!72733)

(assert (=> b!4363228 (= lt!1575565 Unit!72740)))

(assert (=> b!4363228 (contains!11230 lt!1575569 (_1!27501 (h!54554 (_2!27502 (h!54555 (toList!3005 lm!1707))))))))

(declare-fun lt!1575575 () Unit!72733)

(declare-fun Unit!72741 () Unit!72733)

(assert (=> b!4363228 (= lt!1575575 Unit!72741)))

(assert (=> b!4363228 (forall!9164 (_2!27502 (h!54555 (toList!3005 lm!1707))) lambda!141944)))

(declare-fun lt!1575564 () Unit!72733)

(declare-fun Unit!72742 () Unit!72733)

(assert (=> b!4363228 (= lt!1575564 Unit!72742)))

(assert (=> b!4363228 call!303341))

(declare-fun lt!1575572 () Unit!72733)

(declare-fun Unit!72743 () Unit!72733)

(assert (=> b!4363228 (= lt!1575572 Unit!72743)))

(declare-fun lt!1575556 () Unit!72733)

(declare-fun Unit!72744 () Unit!72733)

(assert (=> b!4363228 (= lt!1575556 Unit!72744)))

(declare-fun lt!1575571 () Unit!72733)

(declare-fun addForallContainsKeyThenBeforeAdding!74 (ListMap!2249 ListMap!2249 K!10345 V!10591) Unit!72733)

(assert (=> b!4363228 (= lt!1575571 (addForallContainsKeyThenBeforeAdding!74 lt!1575429 lt!1575569 (_1!27501 (h!54554 (_2!27502 (h!54555 (toList!3005 lm!1707))))) (_2!27501 (h!54554 (_2!27502 (h!54555 (toList!3005 lm!1707)))))))))

(assert (=> b!4363228 (forall!9164 (toList!3006 lt!1575429) lambda!141944)))

(declare-fun lt!1575559 () Unit!72733)

(assert (=> b!4363228 (= lt!1575559 lt!1575571)))

(assert (=> b!4363228 (forall!9164 (toList!3006 lt!1575429) lambda!141944)))

(declare-fun lt!1575567 () Unit!72733)

(declare-fun Unit!72746 () Unit!72733)

(assert (=> b!4363228 (= lt!1575567 Unit!72746)))

(declare-fun res!1794211 () Bool)

(assert (=> b!4363228 (= res!1794211 (forall!9164 (_2!27502 (h!54555 (toList!3005 lm!1707))) lambda!141944))))

(declare-fun e!2715484 () Bool)

(assert (=> b!4363228 (=> (not res!1794211) (not e!2715484))))

(assert (=> b!4363228 e!2715484))

(declare-fun lt!1575558 () Unit!72733)

(declare-fun Unit!72747 () Unit!72733)

(assert (=> b!4363228 (= lt!1575558 Unit!72747)))

(declare-fun b!4363229 () Bool)

(assert (=> b!4363229 (= e!2715484 call!303340)))

(declare-fun b!4363230 () Bool)

(declare-fun res!1794210 () Bool)

(declare-fun e!2715485 () Bool)

(assert (=> b!4363230 (=> (not res!1794210) (not e!2715485))))

(assert (=> b!4363230 (= res!1794210 (forall!9164 (toList!3006 lt!1575429) lambda!141945))))

(assert (=> d!1291295 e!2715485))

(declare-fun res!1794212 () Bool)

(assert (=> d!1291295 (=> (not res!1794212) (not e!2715485))))

(assert (=> d!1291295 (= res!1794212 (forall!9164 (_2!27502 (h!54555 (toList!3005 lm!1707))) lambda!141945))))

(assert (=> d!1291295 (= lt!1575568 e!2715483)))

(assert (=> d!1291295 (= c!741978 ((_ is Nil!48989) (_2!27502 (h!54555 (toList!3005 lm!1707)))))))

(assert (=> d!1291295 (noDuplicateKeys!511 (_2!27502 (h!54555 (toList!3005 lm!1707))))))

(assert (=> d!1291295 (= (addToMapMapFromBucket!207 (_2!27502 (h!54555 (toList!3005 lm!1707))) lt!1575429) lt!1575568)))

(declare-fun bm!303337 () Bool)

(assert (=> bm!303337 (= call!303340 (forall!9164 (toList!3006 lt!1575429) (ite c!741978 lambda!141942 lambda!141944)))))

(declare-fun b!4363231 () Bool)

(declare-fun invariantList!691 (List!49113) Bool)

(assert (=> b!4363231 (= e!2715485 (invariantList!691 (toList!3006 lt!1575568)))))

(assert (= (and d!1291295 c!741978) b!4363227))

(assert (= (and d!1291295 (not c!741978)) b!4363228))

(assert (= (and b!4363228 res!1794211) b!4363229))

(assert (= (or b!4363227 b!4363228) bm!303335))

(assert (= (or b!4363227 b!4363229) bm!303337))

(assert (= (or b!4363227 b!4363228) bm!303336))

(assert (= (and d!1291295 res!1794212) b!4363230))

(assert (= (and b!4363230 res!1794210) b!4363231))

(declare-fun m!4983815 () Bool)

(assert (=> d!1291295 m!4983815))

(declare-fun m!4983817 () Bool)

(assert (=> d!1291295 m!4983817))

(declare-fun m!4983819 () Bool)

(assert (=> bm!303335 m!4983819))

(declare-fun m!4983821 () Bool)

(assert (=> b!4363231 m!4983821))

(declare-fun m!4983823 () Bool)

(assert (=> b!4363230 m!4983823))

(declare-fun m!4983825 () Bool)

(assert (=> b!4363228 m!4983825))

(declare-fun m!4983827 () Bool)

(assert (=> b!4363228 m!4983827))

(declare-fun m!4983829 () Bool)

(assert (=> b!4363228 m!4983829))

(declare-fun m!4983831 () Bool)

(assert (=> b!4363228 m!4983831))

(declare-fun m!4983833 () Bool)

(assert (=> b!4363228 m!4983833))

(declare-fun m!4983835 () Bool)

(assert (=> b!4363228 m!4983835))

(declare-fun m!4983837 () Bool)

(assert (=> b!4363228 m!4983837))

(assert (=> b!4363228 m!4983827))

(declare-fun m!4983839 () Bool)

(assert (=> b!4363228 m!4983839))

(declare-fun m!4983841 () Bool)

(assert (=> b!4363228 m!4983841))

(declare-fun m!4983843 () Bool)

(assert (=> b!4363228 m!4983843))

(declare-fun m!4983845 () Bool)

(assert (=> b!4363228 m!4983845))

(assert (=> b!4363228 m!4983831))

(assert (=> b!4363228 m!4983843))

(declare-fun m!4983847 () Bool)

(assert (=> bm!303336 m!4983847))

(declare-fun m!4983849 () Bool)

(assert (=> bm!303337 m!4983849))

(assert (=> b!4363111 d!1291295))

(declare-fun d!1291335 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7752 (List!49113) (InoxSet tuple2!48414))

(assert (=> d!1291335 (= (eq!281 lt!1575444 lt!1575439) (= (content!7752 (toList!3006 lt!1575444)) (content!7752 (toList!3006 lt!1575439))))))

(declare-fun bs!636306 () Bool)

(assert (= bs!636306 d!1291335))

(declare-fun m!4983851 () Bool)

(assert (=> bs!636306 m!4983851))

(declare-fun m!4983853 () Bool)

(assert (=> bs!636306 m!4983853))

(assert (=> b!4363111 d!1291335))

(declare-fun d!1291337 () Bool)

(declare-datatypes ((Option!10495 0))(
  ( (None!10494) (Some!10494 (v!43416 List!49113)) )
))
(declare-fun get!15919 (Option!10495) List!49113)

(declare-fun getValueByKey!481 (List!49114 (_ BitVec 64)) Option!10495)

(assert (=> d!1291337 (= (apply!11363 lm!1707 (_1!27502 (h!54555 (toList!3005 lm!1707)))) (get!15919 (getValueByKey!481 (toList!3005 lm!1707) (_1!27502 (h!54555 (toList!3005 lm!1707))))))))

(declare-fun bs!636307 () Bool)

(assert (= bs!636307 d!1291337))

(declare-fun m!4983855 () Bool)

(assert (=> bs!636307 m!4983855))

(assert (=> bs!636307 m!4983855))

(declare-fun m!4983857 () Bool)

(assert (=> bs!636307 m!4983857))

(assert (=> b!4363111 d!1291337))

(declare-fun d!1291339 () Bool)

(declare-fun res!1794217 () Bool)

(declare-fun e!2715490 () Bool)

(assert (=> d!1291339 (=> res!1794217 e!2715490)))

(assert (=> d!1291339 (= res!1794217 (and ((_ is Cons!48989) (apply!11363 lm!1707 (_1!27502 (h!54555 (toList!3005 lm!1707))))) (= (_1!27501 (h!54554 (apply!11363 lm!1707 (_1!27502 (h!54555 (toList!3005 lm!1707)))))) key!3918)))))

(assert (=> d!1291339 (= (containsKey!740 (apply!11363 lm!1707 (_1!27502 (h!54555 (toList!3005 lm!1707)))) key!3918) e!2715490)))

(declare-fun b!4363238 () Bool)

(declare-fun e!2715491 () Bool)

(assert (=> b!4363238 (= e!2715490 e!2715491)))

(declare-fun res!1794218 () Bool)

(assert (=> b!4363238 (=> (not res!1794218) (not e!2715491))))

(assert (=> b!4363238 (= res!1794218 ((_ is Cons!48989) (apply!11363 lm!1707 (_1!27502 (h!54555 (toList!3005 lm!1707))))))))

(declare-fun b!4363239 () Bool)

(assert (=> b!4363239 (= e!2715491 (containsKey!740 (t!356033 (apply!11363 lm!1707 (_1!27502 (h!54555 (toList!3005 lm!1707))))) key!3918))))

(assert (= (and d!1291339 (not res!1794217)) b!4363238))

(assert (= (and b!4363238 res!1794218) b!4363239))

(declare-fun m!4983859 () Bool)

(assert (=> b!4363239 m!4983859))

(assert (=> b!4363111 d!1291339))

(declare-fun d!1291341 () Bool)

(assert (=> d!1291341 (eq!281 (addToMapMapFromBucket!207 (_2!27502 (h!54555 (toList!3005 lm!1707))) (+!679 lt!1575429 (tuple2!48415 key!3918 newValue!99))) (+!679 (addToMapMapFromBucket!207 (_2!27502 (h!54555 (toList!3005 lm!1707))) lt!1575429) (tuple2!48415 key!3918 newValue!99)))))

(declare-fun lt!1575578 () Unit!72733)

(declare-fun choose!27064 (ListMap!2249 K!10345 V!10591 List!49113) Unit!72733)

(assert (=> d!1291341 (= lt!1575578 (choose!27064 lt!1575429 key!3918 newValue!99 (_2!27502 (h!54555 (toList!3005 lm!1707)))))))

(assert (=> d!1291341 (not (containsKey!740 (_2!27502 (h!54555 (toList!3005 lm!1707))) key!3918))))

(assert (=> d!1291341 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!90 lt!1575429 key!3918 newValue!99 (_2!27502 (h!54555 (toList!3005 lm!1707)))) lt!1575578)))

(declare-fun bs!636308 () Bool)

(assert (= bs!636308 d!1291341))

(declare-fun m!4983861 () Bool)

(assert (=> bs!636308 m!4983861))

(declare-fun m!4983863 () Bool)

(assert (=> bs!636308 m!4983863))

(assert (=> bs!636308 m!4983659))

(assert (=> bs!636308 m!4983861))

(assert (=> bs!636308 m!4983631))

(assert (=> bs!636308 m!4983659))

(declare-fun m!4983865 () Bool)

(assert (=> bs!636308 m!4983865))

(declare-fun m!4983867 () Bool)

(assert (=> bs!636308 m!4983867))

(assert (=> bs!636308 m!4983863))

(assert (=> bs!636308 m!4983865))

(declare-fun m!4983869 () Bool)

(assert (=> bs!636308 m!4983869))

(assert (=> b!4363111 d!1291341))

(declare-fun d!1291343 () Bool)

(assert (=> d!1291343 (= (eq!281 lt!1575430 lt!1575449) (= (content!7752 (toList!3006 lt!1575430)) (content!7752 (toList!3006 lt!1575449))))))

(declare-fun bs!636309 () Bool)

(assert (= bs!636309 d!1291343))

(declare-fun m!4983871 () Bool)

(assert (=> bs!636309 m!4983871))

(declare-fun m!4983873 () Bool)

(assert (=> bs!636309 m!4983873))

(assert (=> b!4363111 d!1291343))

(declare-fun d!1291345 () Bool)

(declare-fun e!2715494 () Bool)

(assert (=> d!1291345 e!2715494))

(declare-fun res!1794224 () Bool)

(assert (=> d!1291345 (=> (not res!1794224) (not e!2715494))))

(declare-fun lt!1575589 () ListMap!2249)

(assert (=> d!1291345 (= res!1794224 (contains!11230 lt!1575589 (_1!27501 lt!1575446)))))

(declare-fun lt!1575587 () List!49113)

(assert (=> d!1291345 (= lt!1575589 (ListMap!2250 lt!1575587))))

(declare-fun lt!1575590 () Unit!72733)

(declare-fun lt!1575588 () Unit!72733)

(assert (=> d!1291345 (= lt!1575590 lt!1575588)))

(declare-datatypes ((Option!10496 0))(
  ( (None!10495) (Some!10495 (v!43417 V!10591)) )
))
(declare-fun getValueByKey!482 (List!49113 K!10345) Option!10496)

(assert (=> d!1291345 (= (getValueByKey!482 lt!1575587 (_1!27501 lt!1575446)) (Some!10495 (_2!27501 lt!1575446)))))

(declare-fun lemmaContainsTupThenGetReturnValue!255 (List!49113 K!10345 V!10591) Unit!72733)

(assert (=> d!1291345 (= lt!1575588 (lemmaContainsTupThenGetReturnValue!255 lt!1575587 (_1!27501 lt!1575446) (_2!27501 lt!1575446)))))

(declare-fun insertNoDuplicatedKeys!116 (List!49113 K!10345 V!10591) List!49113)

(assert (=> d!1291345 (= lt!1575587 (insertNoDuplicatedKeys!116 (toList!3006 lt!1575430) (_1!27501 lt!1575446) (_2!27501 lt!1575446)))))

(assert (=> d!1291345 (= (+!679 lt!1575430 lt!1575446) lt!1575589)))

(declare-fun b!4363244 () Bool)

(declare-fun res!1794223 () Bool)

(assert (=> b!4363244 (=> (not res!1794223) (not e!2715494))))

(assert (=> b!4363244 (= res!1794223 (= (getValueByKey!482 (toList!3006 lt!1575589) (_1!27501 lt!1575446)) (Some!10495 (_2!27501 lt!1575446))))))

(declare-fun b!4363245 () Bool)

(declare-fun contains!11234 (List!49113 tuple2!48414) Bool)

(assert (=> b!4363245 (= e!2715494 (contains!11234 (toList!3006 lt!1575589) lt!1575446))))

(assert (= (and d!1291345 res!1794224) b!4363244))

(assert (= (and b!4363244 res!1794223) b!4363245))

(declare-fun m!4983875 () Bool)

(assert (=> d!1291345 m!4983875))

(declare-fun m!4983877 () Bool)

(assert (=> d!1291345 m!4983877))

(declare-fun m!4983879 () Bool)

(assert (=> d!1291345 m!4983879))

(declare-fun m!4983881 () Bool)

(assert (=> d!1291345 m!4983881))

(declare-fun m!4983883 () Bool)

(assert (=> b!4363244 m!4983883))

(declare-fun m!4983885 () Bool)

(assert (=> b!4363245 m!4983885))

(assert (=> b!4363111 d!1291345))

(declare-fun b!4363264 () Bool)

(declare-fun e!2715509 () Unit!72733)

(declare-fun e!2715508 () Unit!72733)

(assert (=> b!4363264 (= e!2715509 e!2715508)))

(declare-fun c!741987 () Bool)

(declare-fun call!303345 () Bool)

(assert (=> b!4363264 (= c!741987 call!303345)))

(declare-fun b!4363265 () Bool)

(declare-fun lt!1575613 () Unit!72733)

(assert (=> b!4363265 (= e!2715509 lt!1575613)))

(declare-fun lt!1575610 () Unit!72733)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!392 (List!49113 K!10345) Unit!72733)

(assert (=> b!4363265 (= lt!1575610 (lemmaContainsKeyImpliesGetValueByKeyDefined!392 (toList!3006 lt!1575429) key!3918))))

(declare-fun isDefined!7789 (Option!10496) Bool)

(assert (=> b!4363265 (isDefined!7789 (getValueByKey!482 (toList!3006 lt!1575429) key!3918))))

(declare-fun lt!1575609 () Unit!72733)

(assert (=> b!4363265 (= lt!1575609 lt!1575610)))

(declare-fun lemmaInListThenGetKeysListContains!137 (List!49113 K!10345) Unit!72733)

(assert (=> b!4363265 (= lt!1575613 (lemmaInListThenGetKeysListContains!137 (toList!3006 lt!1575429) key!3918))))

(assert (=> b!4363265 call!303345))

(declare-fun b!4363266 () Bool)

(declare-fun e!2715507 () Bool)

(declare-datatypes ((List!49116 0))(
  ( (Nil!48992) (Cons!48992 (h!54559 K!10345) (t!356036 List!49116)) )
))
(declare-fun contains!11235 (List!49116 K!10345) Bool)

(declare-fun keys!16564 (ListMap!2249) List!49116)

(assert (=> b!4363266 (= e!2715507 (not (contains!11235 (keys!16564 lt!1575429) key!3918)))))

(declare-fun b!4363267 () Bool)

(declare-fun e!2715510 () List!49116)

(assert (=> b!4363267 (= e!2715510 (keys!16564 lt!1575429))))

(declare-fun b!4363268 () Bool)

(declare-fun e!2715512 () Bool)

(declare-fun e!2715511 () Bool)

(assert (=> b!4363268 (= e!2715512 e!2715511)))

(declare-fun res!1794231 () Bool)

(assert (=> b!4363268 (=> (not res!1794231) (not e!2715511))))

(assert (=> b!4363268 (= res!1794231 (isDefined!7789 (getValueByKey!482 (toList!3006 lt!1575429) key!3918)))))

(declare-fun d!1291347 () Bool)

(assert (=> d!1291347 e!2715512))

(declare-fun res!1794233 () Bool)

(assert (=> d!1291347 (=> res!1794233 e!2715512)))

(assert (=> d!1291347 (= res!1794233 e!2715507)))

(declare-fun res!1794232 () Bool)

(assert (=> d!1291347 (=> (not res!1794232) (not e!2715507))))

(declare-fun lt!1575611 () Bool)

(assert (=> d!1291347 (= res!1794232 (not lt!1575611))))

(declare-fun lt!1575608 () Bool)

(assert (=> d!1291347 (= lt!1575611 lt!1575608)))

(declare-fun lt!1575614 () Unit!72733)

(assert (=> d!1291347 (= lt!1575614 e!2715509)))

(declare-fun c!741985 () Bool)

(assert (=> d!1291347 (= c!741985 lt!1575608)))

(declare-fun containsKey!742 (List!49113 K!10345) Bool)

(assert (=> d!1291347 (= lt!1575608 (containsKey!742 (toList!3006 lt!1575429) key!3918))))

(assert (=> d!1291347 (= (contains!11230 lt!1575429 key!3918) lt!1575611)))

(declare-fun b!4363269 () Bool)

(assert (=> b!4363269 (= e!2715511 (contains!11235 (keys!16564 lt!1575429) key!3918))))

(declare-fun b!4363270 () Bool)

(assert (=> b!4363270 false))

(declare-fun lt!1575607 () Unit!72733)

(declare-fun lt!1575612 () Unit!72733)

(assert (=> b!4363270 (= lt!1575607 lt!1575612)))

(assert (=> b!4363270 (containsKey!742 (toList!3006 lt!1575429) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!138 (List!49113 K!10345) Unit!72733)

(assert (=> b!4363270 (= lt!1575612 (lemmaInGetKeysListThenContainsKey!138 (toList!3006 lt!1575429) key!3918))))

(declare-fun Unit!72748 () Unit!72733)

(assert (=> b!4363270 (= e!2715508 Unit!72748)))

(declare-fun b!4363271 () Bool)

(declare-fun Unit!72749 () Unit!72733)

(assert (=> b!4363271 (= e!2715508 Unit!72749)))

(declare-fun bm!303340 () Bool)

(assert (=> bm!303340 (= call!303345 (contains!11235 e!2715510 key!3918))))

(declare-fun c!741986 () Bool)

(assert (=> bm!303340 (= c!741986 c!741985)))

(declare-fun b!4363272 () Bool)

(declare-fun getKeysList!140 (List!49113) List!49116)

(assert (=> b!4363272 (= e!2715510 (getKeysList!140 (toList!3006 lt!1575429)))))

(assert (= (and d!1291347 c!741985) b!4363265))

(assert (= (and d!1291347 (not c!741985)) b!4363264))

(assert (= (and b!4363264 c!741987) b!4363270))

(assert (= (and b!4363264 (not c!741987)) b!4363271))

(assert (= (or b!4363265 b!4363264) bm!303340))

(assert (= (and bm!303340 c!741986) b!4363272))

(assert (= (and bm!303340 (not c!741986)) b!4363267))

(assert (= (and d!1291347 res!1794232) b!4363266))

(assert (= (and d!1291347 (not res!1794233)) b!4363268))

(assert (= (and b!4363268 res!1794231) b!4363269))

(declare-fun m!4983887 () Bool)

(assert (=> b!4363269 m!4983887))

(assert (=> b!4363269 m!4983887))

(declare-fun m!4983889 () Bool)

(assert (=> b!4363269 m!4983889))

(declare-fun m!4983891 () Bool)

(assert (=> b!4363272 m!4983891))

(declare-fun m!4983893 () Bool)

(assert (=> b!4363270 m!4983893))

(declare-fun m!4983895 () Bool)

(assert (=> b!4363270 m!4983895))

(declare-fun m!4983897 () Bool)

(assert (=> b!4363265 m!4983897))

(declare-fun m!4983899 () Bool)

(assert (=> b!4363265 m!4983899))

(assert (=> b!4363265 m!4983899))

(declare-fun m!4983901 () Bool)

(assert (=> b!4363265 m!4983901))

(declare-fun m!4983903 () Bool)

(assert (=> b!4363265 m!4983903))

(declare-fun m!4983905 () Bool)

(assert (=> bm!303340 m!4983905))

(assert (=> b!4363268 m!4983899))

(assert (=> b!4363268 m!4983899))

(assert (=> b!4363268 m!4983901))

(assert (=> b!4363267 m!4983887))

(assert (=> d!1291347 m!4983893))

(assert (=> b!4363266 m!4983887))

(assert (=> b!4363266 m!4983887))

(assert (=> b!4363266 m!4983889))

(assert (=> b!4363111 d!1291347))

(declare-fun bs!636310 () Bool)

(declare-fun b!4363273 () Bool)

(assert (= bs!636310 (and b!4363273 b!4363227)))

(declare-fun lambda!141946 () Int)

(assert (=> bs!636310 (= (= lt!1575439 lt!1575429) (= lambda!141946 lambda!141942))))

(declare-fun bs!636311 () Bool)

(assert (= bs!636311 (and b!4363273 b!4363228)))

(assert (=> bs!636311 (= (= lt!1575439 lt!1575429) (= lambda!141946 lambda!141943))))

(assert (=> bs!636311 (= (= lt!1575439 lt!1575569) (= lambda!141946 lambda!141944))))

(declare-fun bs!636312 () Bool)

(assert (= bs!636312 (and b!4363273 d!1291295)))

(assert (=> bs!636312 (= (= lt!1575439 lt!1575568) (= lambda!141946 lambda!141945))))

(assert (=> b!4363273 true))

(declare-fun bs!636313 () Bool)

(declare-fun b!4363274 () Bool)

(assert (= bs!636313 (and b!4363274 b!4363228)))

(declare-fun lambda!141947 () Int)

(assert (=> bs!636313 (= (= lt!1575439 lt!1575569) (= lambda!141947 lambda!141944))))

(declare-fun bs!636314 () Bool)

(assert (= bs!636314 (and b!4363274 d!1291295)))

(assert (=> bs!636314 (= (= lt!1575439 lt!1575568) (= lambda!141947 lambda!141945))))

(declare-fun bs!636315 () Bool)

(assert (= bs!636315 (and b!4363274 b!4363227)))

(assert (=> bs!636315 (= (= lt!1575439 lt!1575429) (= lambda!141947 lambda!141942))))

(assert (=> bs!636313 (= (= lt!1575439 lt!1575429) (= lambda!141947 lambda!141943))))

(declare-fun bs!636316 () Bool)

(assert (= bs!636316 (and b!4363274 b!4363273)))

(assert (=> bs!636316 (= lambda!141947 lambda!141946)))

(assert (=> b!4363274 true))

(declare-fun lambda!141948 () Int)

(declare-fun lt!1575629 () ListMap!2249)

(assert (=> bs!636313 (= (= lt!1575629 lt!1575569) (= lambda!141948 lambda!141944))))

(assert (=> b!4363274 (= (= lt!1575629 lt!1575439) (= lambda!141948 lambda!141947))))

(assert (=> bs!636314 (= (= lt!1575629 lt!1575568) (= lambda!141948 lambda!141945))))

(assert (=> bs!636315 (= (= lt!1575629 lt!1575429) (= lambda!141948 lambda!141942))))

(assert (=> bs!636313 (= (= lt!1575629 lt!1575429) (= lambda!141948 lambda!141943))))

(assert (=> bs!636316 (= (= lt!1575629 lt!1575439) (= lambda!141948 lambda!141946))))

(assert (=> b!4363274 true))

(declare-fun bs!636317 () Bool)

(declare-fun d!1291349 () Bool)

(assert (= bs!636317 (and d!1291349 b!4363228)))

(declare-fun lt!1575628 () ListMap!2249)

(declare-fun lambda!141949 () Int)

(assert (=> bs!636317 (= (= lt!1575628 lt!1575569) (= lambda!141949 lambda!141944))))

(declare-fun bs!636318 () Bool)

(assert (= bs!636318 (and d!1291349 b!4363274)))

(assert (=> bs!636318 (= (= lt!1575628 lt!1575439) (= lambda!141949 lambda!141947))))

(declare-fun bs!636319 () Bool)

(assert (= bs!636319 (and d!1291349 d!1291295)))

(assert (=> bs!636319 (= (= lt!1575628 lt!1575568) (= lambda!141949 lambda!141945))))

(declare-fun bs!636320 () Bool)

(assert (= bs!636320 (and d!1291349 b!4363227)))

(assert (=> bs!636320 (= (= lt!1575628 lt!1575429) (= lambda!141949 lambda!141942))))

(assert (=> bs!636317 (= (= lt!1575628 lt!1575429) (= lambda!141949 lambda!141943))))

(declare-fun bs!636321 () Bool)

(assert (= bs!636321 (and d!1291349 b!4363273)))

(assert (=> bs!636321 (= (= lt!1575628 lt!1575439) (= lambda!141949 lambda!141946))))

(assert (=> bs!636318 (= (= lt!1575628 lt!1575629) (= lambda!141949 lambda!141948))))

(assert (=> d!1291349 true))

(declare-fun bm!303341 () Bool)

(declare-fun call!303348 () Unit!72733)

(assert (=> bm!303341 (= call!303348 (lemmaContainsAllItsOwnKeys!74 lt!1575439))))

(declare-fun c!741988 () Bool)

(declare-fun call!303347 () Bool)

(declare-fun bm!303342 () Bool)

(declare-fun lt!1575633 () ListMap!2249)

(assert (=> bm!303342 (= call!303347 (forall!9164 (ite c!741988 (toList!3006 lt!1575439) (toList!3006 lt!1575633)) (ite c!741988 lambda!141946 lambda!141948)))))

(declare-fun e!2715513 () ListMap!2249)

(assert (=> b!4363273 (= e!2715513 lt!1575439)))

(declare-fun lt!1575634 () Unit!72733)

(assert (=> b!4363273 (= lt!1575634 call!303348)))

(declare-fun call!303346 () Bool)

(assert (=> b!4363273 call!303346))

(declare-fun lt!1575621 () Unit!72733)

(assert (=> b!4363273 (= lt!1575621 lt!1575634)))

(assert (=> b!4363273 call!303347))

(declare-fun lt!1575630 () Unit!72733)

(declare-fun Unit!72750 () Unit!72733)

(assert (=> b!4363273 (= lt!1575630 Unit!72750)))

(assert (=> b!4363274 (= e!2715513 lt!1575629)))

(assert (=> b!4363274 (= lt!1575633 (+!679 lt!1575439 (h!54554 (_2!27502 (h!54555 (toList!3005 lm!1707))))))))

(assert (=> b!4363274 (= lt!1575629 (addToMapMapFromBucket!207 (t!356033 (_2!27502 (h!54555 (toList!3005 lm!1707)))) (+!679 lt!1575439 (h!54554 (_2!27502 (h!54555 (toList!3005 lm!1707)))))))))

(declare-fun lt!1575617 () Unit!72733)

(assert (=> b!4363274 (= lt!1575617 call!303348)))

(assert (=> b!4363274 (forall!9164 (toList!3006 lt!1575439) lambda!141947)))

(declare-fun lt!1575623 () Unit!72733)

(assert (=> b!4363274 (= lt!1575623 lt!1575617)))

(assert (=> b!4363274 (forall!9164 (toList!3006 lt!1575633) lambda!141948)))

(declare-fun lt!1575620 () Unit!72733)

(declare-fun Unit!72751 () Unit!72733)

(assert (=> b!4363274 (= lt!1575620 Unit!72751)))

(assert (=> b!4363274 (forall!9164 (t!356033 (_2!27502 (h!54555 (toList!3005 lm!1707)))) lambda!141948)))

(declare-fun lt!1575615 () Unit!72733)

(declare-fun Unit!72752 () Unit!72733)

(assert (=> b!4363274 (= lt!1575615 Unit!72752)))

(declare-fun lt!1575622 () Unit!72733)

(declare-fun Unit!72753 () Unit!72733)

(assert (=> b!4363274 (= lt!1575622 Unit!72753)))

(declare-fun lt!1575626 () Unit!72733)

(assert (=> b!4363274 (= lt!1575626 (forallContained!1804 (toList!3006 lt!1575633) lambda!141948 (h!54554 (_2!27502 (h!54555 (toList!3005 lm!1707))))))))

(assert (=> b!4363274 (contains!11230 lt!1575633 (_1!27501 (h!54554 (_2!27502 (h!54555 (toList!3005 lm!1707))))))))

(declare-fun lt!1575625 () Unit!72733)

(declare-fun Unit!72755 () Unit!72733)

(assert (=> b!4363274 (= lt!1575625 Unit!72755)))

(assert (=> b!4363274 (contains!11230 lt!1575629 (_1!27501 (h!54554 (_2!27502 (h!54555 (toList!3005 lm!1707))))))))

(declare-fun lt!1575635 () Unit!72733)

(declare-fun Unit!72756 () Unit!72733)

(assert (=> b!4363274 (= lt!1575635 Unit!72756)))

(assert (=> b!4363274 (forall!9164 (_2!27502 (h!54555 (toList!3005 lm!1707))) lambda!141948)))

(declare-fun lt!1575624 () Unit!72733)

(declare-fun Unit!72757 () Unit!72733)

(assert (=> b!4363274 (= lt!1575624 Unit!72757)))

(assert (=> b!4363274 call!303347))

(declare-fun lt!1575632 () Unit!72733)

(declare-fun Unit!72758 () Unit!72733)

(assert (=> b!4363274 (= lt!1575632 Unit!72758)))

(declare-fun lt!1575616 () Unit!72733)

(declare-fun Unit!72759 () Unit!72733)

(assert (=> b!4363274 (= lt!1575616 Unit!72759)))

(declare-fun lt!1575631 () Unit!72733)

(assert (=> b!4363274 (= lt!1575631 (addForallContainsKeyThenBeforeAdding!74 lt!1575439 lt!1575629 (_1!27501 (h!54554 (_2!27502 (h!54555 (toList!3005 lm!1707))))) (_2!27501 (h!54554 (_2!27502 (h!54555 (toList!3005 lm!1707)))))))))

(assert (=> b!4363274 (forall!9164 (toList!3006 lt!1575439) lambda!141948)))

(declare-fun lt!1575619 () Unit!72733)

(assert (=> b!4363274 (= lt!1575619 lt!1575631)))

(assert (=> b!4363274 (forall!9164 (toList!3006 lt!1575439) lambda!141948)))

(declare-fun lt!1575627 () Unit!72733)

(declare-fun Unit!72760 () Unit!72733)

(assert (=> b!4363274 (= lt!1575627 Unit!72760)))

(declare-fun res!1794235 () Bool)

(assert (=> b!4363274 (= res!1794235 (forall!9164 (_2!27502 (h!54555 (toList!3005 lm!1707))) lambda!141948))))

(declare-fun e!2715514 () Bool)

(assert (=> b!4363274 (=> (not res!1794235) (not e!2715514))))

(assert (=> b!4363274 e!2715514))

(declare-fun lt!1575618 () Unit!72733)

(declare-fun Unit!72761 () Unit!72733)

(assert (=> b!4363274 (= lt!1575618 Unit!72761)))

(declare-fun b!4363275 () Bool)

(assert (=> b!4363275 (= e!2715514 call!303346)))

(declare-fun b!4363276 () Bool)

(declare-fun res!1794234 () Bool)

(declare-fun e!2715515 () Bool)

(assert (=> b!4363276 (=> (not res!1794234) (not e!2715515))))

(assert (=> b!4363276 (= res!1794234 (forall!9164 (toList!3006 lt!1575439) lambda!141949))))

(assert (=> d!1291349 e!2715515))

(declare-fun res!1794236 () Bool)

(assert (=> d!1291349 (=> (not res!1794236) (not e!2715515))))

(assert (=> d!1291349 (= res!1794236 (forall!9164 (_2!27502 (h!54555 (toList!3005 lm!1707))) lambda!141949))))

(assert (=> d!1291349 (= lt!1575628 e!2715513)))

(assert (=> d!1291349 (= c!741988 ((_ is Nil!48989) (_2!27502 (h!54555 (toList!3005 lm!1707)))))))

(assert (=> d!1291349 (noDuplicateKeys!511 (_2!27502 (h!54555 (toList!3005 lm!1707))))))

(assert (=> d!1291349 (= (addToMapMapFromBucket!207 (_2!27502 (h!54555 (toList!3005 lm!1707))) lt!1575439) lt!1575628)))

(declare-fun bm!303343 () Bool)

(assert (=> bm!303343 (= call!303346 (forall!9164 (toList!3006 lt!1575439) (ite c!741988 lambda!141946 lambda!141948)))))

(declare-fun b!4363277 () Bool)

(assert (=> b!4363277 (= e!2715515 (invariantList!691 (toList!3006 lt!1575628)))))

(assert (= (and d!1291349 c!741988) b!4363273))

(assert (= (and d!1291349 (not c!741988)) b!4363274))

(assert (= (and b!4363274 res!1794235) b!4363275))

(assert (= (or b!4363273 b!4363274) bm!303341))

(assert (= (or b!4363273 b!4363275) bm!303343))

(assert (= (or b!4363273 b!4363274) bm!303342))

(assert (= (and d!1291349 res!1794236) b!4363276))

(assert (= (and b!4363276 res!1794234) b!4363277))

(declare-fun m!4983907 () Bool)

(assert (=> d!1291349 m!4983907))

(assert (=> d!1291349 m!4983817))

(declare-fun m!4983909 () Bool)

(assert (=> bm!303341 m!4983909))

(declare-fun m!4983911 () Bool)

(assert (=> b!4363277 m!4983911))

(declare-fun m!4983913 () Bool)

(assert (=> b!4363276 m!4983913))

(declare-fun m!4983915 () Bool)

(assert (=> b!4363274 m!4983915))

(declare-fun m!4983917 () Bool)

(assert (=> b!4363274 m!4983917))

(declare-fun m!4983919 () Bool)

(assert (=> b!4363274 m!4983919))

(declare-fun m!4983921 () Bool)

(assert (=> b!4363274 m!4983921))

(declare-fun m!4983923 () Bool)

(assert (=> b!4363274 m!4983923))

(declare-fun m!4983925 () Bool)

(assert (=> b!4363274 m!4983925))

(declare-fun m!4983927 () Bool)

(assert (=> b!4363274 m!4983927))

(assert (=> b!4363274 m!4983917))

(declare-fun m!4983929 () Bool)

(assert (=> b!4363274 m!4983929))

(declare-fun m!4983931 () Bool)

(assert (=> b!4363274 m!4983931))

(declare-fun m!4983933 () Bool)

(assert (=> b!4363274 m!4983933))

(declare-fun m!4983935 () Bool)

(assert (=> b!4363274 m!4983935))

(assert (=> b!4363274 m!4983921))

(assert (=> b!4363274 m!4983933))

(declare-fun m!4983937 () Bool)

(assert (=> bm!303342 m!4983937))

(declare-fun m!4983939 () Bool)

(assert (=> bm!303343 m!4983939))

(assert (=> b!4363111 d!1291349))

(declare-fun bs!636322 () Bool)

(declare-fun d!1291351 () Bool)

(assert (= bs!636322 (and d!1291351 start!422888)))

(declare-fun lambda!141970 () Int)

(assert (=> bs!636322 (= lambda!141970 lambda!141907)))

(declare-fun lt!1575676 () ListMap!2249)

(assert (=> d!1291351 (invariantList!691 (toList!3006 lt!1575676))))

(declare-fun e!2715520 () ListMap!2249)

(assert (=> d!1291351 (= lt!1575676 e!2715520)))

(declare-fun c!741993 () Bool)

(assert (=> d!1291351 (= c!741993 ((_ is Cons!48990) (toList!3005 lt!1575432)))))

(assert (=> d!1291351 (forall!9162 (toList!3005 lt!1575432) lambda!141970)))

(assert (=> d!1291351 (= (extractMap!570 (toList!3005 lt!1575432)) lt!1575676)))

(declare-fun b!4363286 () Bool)

(assert (=> b!4363286 (= e!2715520 (addToMapMapFromBucket!207 (_2!27502 (h!54555 (toList!3005 lt!1575432))) (extractMap!570 (t!356034 (toList!3005 lt!1575432)))))))

(declare-fun b!4363287 () Bool)

(assert (=> b!4363287 (= e!2715520 (ListMap!2250 Nil!48989))))

(assert (= (and d!1291351 c!741993) b!4363286))

(assert (= (and d!1291351 (not c!741993)) b!4363287))

(declare-fun m!4983941 () Bool)

(assert (=> d!1291351 m!4983941))

(declare-fun m!4983943 () Bool)

(assert (=> d!1291351 m!4983943))

(declare-fun m!4983945 () Bool)

(assert (=> b!4363286 m!4983945))

(assert (=> b!4363286 m!4983945))

(declare-fun m!4983947 () Bool)

(assert (=> b!4363286 m!4983947))

(assert (=> b!4363111 d!1291351))

(declare-fun d!1291353 () Bool)

(declare-fun tail!7033 (List!49114) List!49114)

(assert (=> d!1291353 (= (tail!7032 lm!1707) (ListLongMap!1656 (tail!7033 (toList!3005 lm!1707))))))

(declare-fun bs!636323 () Bool)

(assert (= bs!636323 d!1291353))

(declare-fun m!4983949 () Bool)

(assert (=> bs!636323 m!4983949))

(assert (=> b!4363111 d!1291353))

(declare-fun bs!636324 () Bool)

(declare-fun d!1291355 () Bool)

(assert (= bs!636324 (and d!1291355 start!422888)))

(declare-fun lambda!141975 () Int)

(assert (=> bs!636324 (= lambda!141975 lambda!141907)))

(declare-fun bs!636325 () Bool)

(assert (= bs!636325 (and d!1291355 d!1291351)))

(assert (=> bs!636325 (= lambda!141975 lambda!141970)))

(declare-fun lt!1575681 () ListMap!2249)

(assert (=> d!1291355 (invariantList!691 (toList!3006 lt!1575681))))

(declare-fun e!2715523 () ListMap!2249)

(assert (=> d!1291355 (= lt!1575681 e!2715523)))

(declare-fun c!741994 () Bool)

(assert (=> d!1291355 (= c!741994 ((_ is Cons!48990) (toList!3005 (+!680 lt!1575432 lt!1575443))))))

(assert (=> d!1291355 (forall!9162 (toList!3005 (+!680 lt!1575432 lt!1575443)) lambda!141975)))

(assert (=> d!1291355 (= (extractMap!570 (toList!3005 (+!680 lt!1575432 lt!1575443))) lt!1575681)))

(declare-fun b!4363290 () Bool)

(assert (=> b!4363290 (= e!2715523 (addToMapMapFromBucket!207 (_2!27502 (h!54555 (toList!3005 (+!680 lt!1575432 lt!1575443)))) (extractMap!570 (t!356034 (toList!3005 (+!680 lt!1575432 lt!1575443))))))))

(declare-fun b!4363291 () Bool)

(assert (=> b!4363291 (= e!2715523 (ListMap!2250 Nil!48989))))

(assert (= (and d!1291355 c!741994) b!4363290))

(assert (= (and d!1291355 (not c!741994)) b!4363291))

(declare-fun m!4983951 () Bool)

(assert (=> d!1291355 m!4983951))

(declare-fun m!4983953 () Bool)

(assert (=> d!1291355 m!4983953))

(declare-fun m!4983955 () Bool)

(assert (=> b!4363290 m!4983955))

(assert (=> b!4363290 m!4983955))

(declare-fun m!4983957 () Bool)

(assert (=> b!4363290 m!4983957))

(assert (=> b!4363111 d!1291355))

(declare-fun d!1291357 () Bool)

(declare-fun e!2715524 () Bool)

(assert (=> d!1291357 e!2715524))

(declare-fun res!1794240 () Bool)

(assert (=> d!1291357 (=> (not res!1794240) (not e!2715524))))

(declare-fun lt!1575684 () ListMap!2249)

(assert (=> d!1291357 (= res!1794240 (contains!11230 lt!1575684 (_1!27501 lt!1575446)))))

(declare-fun lt!1575682 () List!49113)

(assert (=> d!1291357 (= lt!1575684 (ListMap!2250 lt!1575682))))

(declare-fun lt!1575685 () Unit!72733)

(declare-fun lt!1575683 () Unit!72733)

(assert (=> d!1291357 (= lt!1575685 lt!1575683)))

(assert (=> d!1291357 (= (getValueByKey!482 lt!1575682 (_1!27501 lt!1575446)) (Some!10495 (_2!27501 lt!1575446)))))

(assert (=> d!1291357 (= lt!1575683 (lemmaContainsTupThenGetReturnValue!255 lt!1575682 (_1!27501 lt!1575446) (_2!27501 lt!1575446)))))

(assert (=> d!1291357 (= lt!1575682 (insertNoDuplicatedKeys!116 (toList!3006 lt!1575429) (_1!27501 lt!1575446) (_2!27501 lt!1575446)))))

(assert (=> d!1291357 (= (+!679 lt!1575429 lt!1575446) lt!1575684)))

(declare-fun b!4363292 () Bool)

(declare-fun res!1794239 () Bool)

(assert (=> b!4363292 (=> (not res!1794239) (not e!2715524))))

(assert (=> b!4363292 (= res!1794239 (= (getValueByKey!482 (toList!3006 lt!1575684) (_1!27501 lt!1575446)) (Some!10495 (_2!27501 lt!1575446))))))

(declare-fun b!4363293 () Bool)

(assert (=> b!4363293 (= e!2715524 (contains!11234 (toList!3006 lt!1575684) lt!1575446))))

(assert (= (and d!1291357 res!1794240) b!4363292))

(assert (= (and b!4363292 res!1794239) b!4363293))

(declare-fun m!4983959 () Bool)

(assert (=> d!1291357 m!4983959))

(declare-fun m!4983961 () Bool)

(assert (=> d!1291357 m!4983961))

(declare-fun m!4983963 () Bool)

(assert (=> d!1291357 m!4983963))

(declare-fun m!4983965 () Bool)

(assert (=> d!1291357 m!4983965))

(declare-fun m!4983967 () Bool)

(assert (=> b!4363292 m!4983967))

(declare-fun m!4983969 () Bool)

(assert (=> b!4363293 m!4983969))

(assert (=> b!4363111 d!1291357))

(declare-fun bs!636326 () Bool)

(declare-fun d!1291359 () Bool)

(assert (= bs!636326 (and d!1291359 start!422888)))

(declare-fun lambda!141978 () Int)

(assert (=> bs!636326 (= lambda!141978 lambda!141907)))

(declare-fun bs!636327 () Bool)

(assert (= bs!636327 (and d!1291359 d!1291351)))

(assert (=> bs!636327 (= lambda!141978 lambda!141970)))

(declare-fun bs!636328 () Bool)

(assert (= bs!636328 (and d!1291359 d!1291355)))

(assert (=> bs!636328 (= lambda!141978 lambda!141975)))

(declare-fun lt!1575686 () ListMap!2249)

(assert (=> d!1291359 (invariantList!691 (toList!3006 lt!1575686))))

(declare-fun e!2715525 () ListMap!2249)

(assert (=> d!1291359 (= lt!1575686 e!2715525)))

(declare-fun c!741995 () Bool)

(assert (=> d!1291359 (= c!741995 ((_ is Cons!48990) (t!356034 (toList!3005 lm!1707))))))

(assert (=> d!1291359 (forall!9162 (t!356034 (toList!3005 lm!1707)) lambda!141978)))

(assert (=> d!1291359 (= (extractMap!570 (t!356034 (toList!3005 lm!1707))) lt!1575686)))

(declare-fun b!4363294 () Bool)

(assert (=> b!4363294 (= e!2715525 (addToMapMapFromBucket!207 (_2!27502 (h!54555 (t!356034 (toList!3005 lm!1707)))) (extractMap!570 (t!356034 (t!356034 (toList!3005 lm!1707))))))))

(declare-fun b!4363295 () Bool)

(assert (=> b!4363295 (= e!2715525 (ListMap!2250 Nil!48989))))

(assert (= (and d!1291359 c!741995) b!4363294))

(assert (= (and d!1291359 (not c!741995)) b!4363295))

(declare-fun m!4983971 () Bool)

(assert (=> d!1291359 m!4983971))

(declare-fun m!4983973 () Bool)

(assert (=> d!1291359 m!4983973))

(declare-fun m!4983975 () Bool)

(assert (=> b!4363294 m!4983975))

(assert (=> b!4363294 m!4983975))

(declare-fun m!4983977 () Bool)

(assert (=> b!4363294 m!4983977))

(assert (=> b!4363111 d!1291359))

(declare-fun bs!636329 () Bool)

(declare-fun d!1291361 () Bool)

(assert (= bs!636329 (and d!1291361 start!422888)))

(declare-fun lambda!141985 () Int)

(assert (=> bs!636329 (= lambda!141985 lambda!141907)))

(declare-fun bs!636330 () Bool)

(assert (= bs!636330 (and d!1291361 d!1291351)))

(assert (=> bs!636330 (= lambda!141985 lambda!141970)))

(declare-fun bs!636331 () Bool)

(assert (= bs!636331 (and d!1291361 d!1291355)))

(assert (=> bs!636331 (= lambda!141985 lambda!141975)))

(declare-fun bs!636332 () Bool)

(assert (= bs!636332 (and d!1291361 d!1291359)))

(assert (=> bs!636332 (= lambda!141985 lambda!141978)))

(assert (=> d!1291361 (not (containsKey!740 (apply!11363 lm!1707 (_1!27502 (h!54555 (toList!3005 lm!1707)))) key!3918))))

(declare-fun lt!1575689 () Unit!72733)

(declare-fun choose!27068 (ListLongMap!1655 K!10345 (_ BitVec 64) Hashable!4903) Unit!72733)

(assert (=> d!1291361 (= lt!1575689 (choose!27068 lm!1707 key!3918 (_1!27502 (h!54555 (toList!3005 lm!1707))) hashF!1247))))

(assert (=> d!1291361 (forall!9162 (toList!3005 lm!1707) lambda!141985)))

(assert (=> d!1291361 (= (lemmaNotSameHashThenCannotContainKey!58 lm!1707 key!3918 (_1!27502 (h!54555 (toList!3005 lm!1707))) hashF!1247) lt!1575689)))

(declare-fun bs!636333 () Bool)

(assert (= bs!636333 d!1291361))

(assert (=> bs!636333 m!4983687))

(assert (=> bs!636333 m!4983687))

(assert (=> bs!636333 m!4983689))

(declare-fun m!4983979 () Bool)

(assert (=> bs!636333 m!4983979))

(declare-fun m!4983981 () Bool)

(assert (=> bs!636333 m!4983981))

(assert (=> b!4363111 d!1291361))

(declare-fun bs!636341 () Bool)

(declare-fun d!1291363 () Bool)

(assert (= bs!636341 (and d!1291363 d!1291355)))

(declare-fun lambda!141992 () Int)

(assert (=> bs!636341 (= lambda!141992 lambda!141975)))

(declare-fun bs!636342 () Bool)

(assert (= bs!636342 (and d!1291363 d!1291359)))

(assert (=> bs!636342 (= lambda!141992 lambda!141978)))

(declare-fun bs!636343 () Bool)

(assert (= bs!636343 (and d!1291363 d!1291361)))

(assert (=> bs!636343 (= lambda!141992 lambda!141985)))

(declare-fun bs!636344 () Bool)

(assert (= bs!636344 (and d!1291363 d!1291351)))

(assert (=> bs!636344 (= lambda!141992 lambda!141970)))

(declare-fun bs!636345 () Bool)

(assert (= bs!636345 (and d!1291363 start!422888)))

(assert (=> bs!636345 (= lambda!141992 lambda!141907)))

(assert (=> d!1291363 (eq!281 (extractMap!570 (toList!3005 (+!680 lt!1575432 (tuple2!48417 hash!377 newBucket!200)))) (+!679 (extractMap!570 (toList!3005 lt!1575432)) (tuple2!48415 key!3918 newValue!99)))))

(declare-fun lt!1575713 () Unit!72733)

(declare-fun choose!27069 (ListLongMap!1655 (_ BitVec 64) List!49113 K!10345 V!10591 Hashable!4903) Unit!72733)

(assert (=> d!1291363 (= lt!1575713 (choose!27069 lt!1575432 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1291363 (forall!9162 (toList!3005 lt!1575432) lambda!141992)))

(assert (=> d!1291363 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!115 lt!1575432 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1575713)))

(declare-fun bs!636346 () Bool)

(assert (= bs!636346 d!1291363))

(assert (=> bs!636346 m!4983683))

(assert (=> bs!636346 m!4983683))

(declare-fun m!4984023 () Bool)

(assert (=> bs!636346 m!4984023))

(declare-fun m!4984025 () Bool)

(assert (=> bs!636346 m!4984025))

(declare-fun m!4984027 () Bool)

(assert (=> bs!636346 m!4984027))

(declare-fun m!4984029 () Bool)

(assert (=> bs!636346 m!4984029))

(declare-fun m!4984031 () Bool)

(assert (=> bs!636346 m!4984031))

(assert (=> bs!636346 m!4984027))

(assert (=> bs!636346 m!4984023))

(declare-fun m!4984033 () Bool)

(assert (=> bs!636346 m!4984033))

(assert (=> b!4363111 d!1291363))

(declare-fun b!4363307 () Bool)

(declare-fun e!2715533 () Unit!72733)

(declare-fun e!2715532 () Unit!72733)

(assert (=> b!4363307 (= e!2715533 e!2715532)))

(declare-fun c!741999 () Bool)

(declare-fun call!303358 () Bool)

(assert (=> b!4363307 (= c!741999 call!303358)))

(declare-fun b!4363308 () Bool)

(declare-fun lt!1575720 () Unit!72733)

(assert (=> b!4363308 (= e!2715533 lt!1575720)))

(declare-fun lt!1575717 () Unit!72733)

(assert (=> b!4363308 (= lt!1575717 (lemmaContainsKeyImpliesGetValueByKeyDefined!392 (toList!3006 lt!1575442) key!3918))))

(assert (=> b!4363308 (isDefined!7789 (getValueByKey!482 (toList!3006 lt!1575442) key!3918))))

(declare-fun lt!1575716 () Unit!72733)

(assert (=> b!4363308 (= lt!1575716 lt!1575717)))

(assert (=> b!4363308 (= lt!1575720 (lemmaInListThenGetKeysListContains!137 (toList!3006 lt!1575442) key!3918))))

(assert (=> b!4363308 call!303358))

(declare-fun b!4363309 () Bool)

(declare-fun e!2715531 () Bool)

(assert (=> b!4363309 (= e!2715531 (not (contains!11235 (keys!16564 lt!1575442) key!3918)))))

(declare-fun b!4363310 () Bool)

(declare-fun e!2715534 () List!49116)

(assert (=> b!4363310 (= e!2715534 (keys!16564 lt!1575442))))

(declare-fun b!4363311 () Bool)

(declare-fun e!2715536 () Bool)

(declare-fun e!2715535 () Bool)

(assert (=> b!4363311 (= e!2715536 e!2715535)))

(declare-fun res!1794248 () Bool)

(assert (=> b!4363311 (=> (not res!1794248) (not e!2715535))))

(assert (=> b!4363311 (= res!1794248 (isDefined!7789 (getValueByKey!482 (toList!3006 lt!1575442) key!3918)))))

(declare-fun d!1291369 () Bool)

(assert (=> d!1291369 e!2715536))

(declare-fun res!1794250 () Bool)

(assert (=> d!1291369 (=> res!1794250 e!2715536)))

(assert (=> d!1291369 (= res!1794250 e!2715531)))

(declare-fun res!1794249 () Bool)

(assert (=> d!1291369 (=> (not res!1794249) (not e!2715531))))

(declare-fun lt!1575718 () Bool)

(assert (=> d!1291369 (= res!1794249 (not lt!1575718))))

(declare-fun lt!1575715 () Bool)

(assert (=> d!1291369 (= lt!1575718 lt!1575715)))

(declare-fun lt!1575721 () Unit!72733)

(assert (=> d!1291369 (= lt!1575721 e!2715533)))

(declare-fun c!741997 () Bool)

(assert (=> d!1291369 (= c!741997 lt!1575715)))

(assert (=> d!1291369 (= lt!1575715 (containsKey!742 (toList!3006 lt!1575442) key!3918))))

(assert (=> d!1291369 (= (contains!11230 lt!1575442 key!3918) lt!1575718)))

(declare-fun b!4363312 () Bool)

(assert (=> b!4363312 (= e!2715535 (contains!11235 (keys!16564 lt!1575442) key!3918))))

(declare-fun b!4363313 () Bool)

(assert (=> b!4363313 false))

(declare-fun lt!1575714 () Unit!72733)

(declare-fun lt!1575719 () Unit!72733)

(assert (=> b!4363313 (= lt!1575714 lt!1575719)))

(assert (=> b!4363313 (containsKey!742 (toList!3006 lt!1575442) key!3918)))

(assert (=> b!4363313 (= lt!1575719 (lemmaInGetKeysListThenContainsKey!138 (toList!3006 lt!1575442) key!3918))))

(declare-fun Unit!72774 () Unit!72733)

(assert (=> b!4363313 (= e!2715532 Unit!72774)))

(declare-fun b!4363314 () Bool)

(declare-fun Unit!72775 () Unit!72733)

(assert (=> b!4363314 (= e!2715532 Unit!72775)))

(declare-fun bm!303353 () Bool)

(assert (=> bm!303353 (= call!303358 (contains!11235 e!2715534 key!3918))))

(declare-fun c!741998 () Bool)

(assert (=> bm!303353 (= c!741998 c!741997)))

(declare-fun b!4363315 () Bool)

(assert (=> b!4363315 (= e!2715534 (getKeysList!140 (toList!3006 lt!1575442)))))

(assert (= (and d!1291369 c!741997) b!4363308))

(assert (= (and d!1291369 (not c!741997)) b!4363307))

(assert (= (and b!4363307 c!741999) b!4363313))

(assert (= (and b!4363307 (not c!741999)) b!4363314))

(assert (= (or b!4363308 b!4363307) bm!303353))

(assert (= (and bm!303353 c!741998) b!4363315))

(assert (= (and bm!303353 (not c!741998)) b!4363310))

(assert (= (and d!1291369 res!1794249) b!4363309))

(assert (= (and d!1291369 (not res!1794250)) b!4363311))

(assert (= (and b!4363311 res!1794248) b!4363312))

(declare-fun m!4984035 () Bool)

(assert (=> b!4363312 m!4984035))

(assert (=> b!4363312 m!4984035))

(declare-fun m!4984037 () Bool)

(assert (=> b!4363312 m!4984037))

(declare-fun m!4984039 () Bool)

(assert (=> b!4363315 m!4984039))

(declare-fun m!4984041 () Bool)

(assert (=> b!4363313 m!4984041))

(declare-fun m!4984043 () Bool)

(assert (=> b!4363313 m!4984043))

(declare-fun m!4984045 () Bool)

(assert (=> b!4363308 m!4984045))

(declare-fun m!4984047 () Bool)

(assert (=> b!4363308 m!4984047))

(assert (=> b!4363308 m!4984047))

(declare-fun m!4984049 () Bool)

(assert (=> b!4363308 m!4984049))

(declare-fun m!4984051 () Bool)

(assert (=> b!4363308 m!4984051))

(declare-fun m!4984053 () Bool)

(assert (=> bm!303353 m!4984053))

(assert (=> b!4363311 m!4984047))

(assert (=> b!4363311 m!4984047))

(assert (=> b!4363311 m!4984049))

(assert (=> b!4363310 m!4984035))

(assert (=> d!1291369 m!4984041))

(assert (=> b!4363309 m!4984035))

(assert (=> b!4363309 m!4984035))

(assert (=> b!4363309 m!4984037))

(assert (=> b!4363111 d!1291369))

(declare-fun d!1291371 () Bool)

(declare-fun e!2715539 () Bool)

(assert (=> d!1291371 e!2715539))

(declare-fun res!1794256 () Bool)

(assert (=> d!1291371 (=> (not res!1794256) (not e!2715539))))

(declare-fun lt!1575735 () ListLongMap!1655)

(assert (=> d!1291371 (= res!1794256 (contains!11229 lt!1575735 (_1!27502 lt!1575443)))))

(declare-fun lt!1575736 () List!49114)

(assert (=> d!1291371 (= lt!1575735 (ListLongMap!1656 lt!1575736))))

(declare-fun lt!1575734 () Unit!72733)

(declare-fun lt!1575733 () Unit!72733)

(assert (=> d!1291371 (= lt!1575734 lt!1575733)))

(assert (=> d!1291371 (= (getValueByKey!481 lt!1575736 (_1!27502 lt!1575443)) (Some!10494 (_2!27502 lt!1575443)))))

(declare-fun lemmaContainsTupThenGetReturnValue!256 (List!49114 (_ BitVec 64) List!49113) Unit!72733)

(assert (=> d!1291371 (= lt!1575733 (lemmaContainsTupThenGetReturnValue!256 lt!1575736 (_1!27502 lt!1575443) (_2!27502 lt!1575443)))))

(declare-fun insertStrictlySorted!148 (List!49114 (_ BitVec 64) List!49113) List!49114)

(assert (=> d!1291371 (= lt!1575736 (insertStrictlySorted!148 (toList!3005 lt!1575432) (_1!27502 lt!1575443) (_2!27502 lt!1575443)))))

(assert (=> d!1291371 (= (+!680 lt!1575432 lt!1575443) lt!1575735)))

(declare-fun b!4363320 () Bool)

(declare-fun res!1794255 () Bool)

(assert (=> b!4363320 (=> (not res!1794255) (not e!2715539))))

(assert (=> b!4363320 (= res!1794255 (= (getValueByKey!481 (toList!3005 lt!1575735) (_1!27502 lt!1575443)) (Some!10494 (_2!27502 lt!1575443))))))

(declare-fun b!4363321 () Bool)

(assert (=> b!4363321 (= e!2715539 (contains!11231 (toList!3005 lt!1575735) lt!1575443))))

(assert (= (and d!1291371 res!1794256) b!4363320))

(assert (= (and b!4363320 res!1794255) b!4363321))

(declare-fun m!4984063 () Bool)

(assert (=> d!1291371 m!4984063))

(declare-fun m!4984067 () Bool)

(assert (=> d!1291371 m!4984067))

(declare-fun m!4984069 () Bool)

(assert (=> d!1291371 m!4984069))

(declare-fun m!4984073 () Bool)

(assert (=> d!1291371 m!4984073))

(declare-fun m!4984075 () Bool)

(assert (=> b!4363320 m!4984075))

(declare-fun m!4984077 () Bool)

(assert (=> b!4363321 m!4984077))

(assert (=> b!4363111 d!1291371))

(declare-fun d!1291375 () Bool)

(assert (=> d!1291375 (contains!11230 lt!1575442 key!3918)))

(declare-fun lt!1575769 () Unit!72733)

(declare-fun choose!27071 (List!49113 K!10345 V!10591 ListMap!2249) Unit!72733)

(assert (=> d!1291375 (= lt!1575769 (choose!27071 (_2!27502 (h!54555 (toList!3005 lm!1707))) key!3918 newValue!99 lt!1575442))))

(assert (=> d!1291375 (noDuplicateKeys!511 (_2!27502 (h!54555 (toList!3005 lm!1707))))))

(assert (=> d!1291375 (= (lemmaAddToMapContainsAndNotInListThenInAcc!54 (_2!27502 (h!54555 (toList!3005 lm!1707))) key!3918 newValue!99 lt!1575442) lt!1575769)))

(declare-fun bs!636363 () Bool)

(assert (= bs!636363 d!1291375))

(assert (=> bs!636363 m!4983679))

(declare-fun m!4984113 () Bool)

(assert (=> bs!636363 m!4984113))

(assert (=> bs!636363 m!4983817))

(assert (=> b!4363111 d!1291375))

(declare-fun d!1291385 () Bool)

(assert (=> d!1291385 (= (eq!281 lt!1575448 lt!1575441) (= (content!7752 (toList!3006 lt!1575448)) (content!7752 (toList!3006 lt!1575441))))))

(declare-fun bs!636364 () Bool)

(assert (= bs!636364 d!1291385))

(declare-fun m!4984115 () Bool)

(assert (=> bs!636364 m!4984115))

(declare-fun m!4984117 () Bool)

(assert (=> bs!636364 m!4984117))

(assert (=> b!4363111 d!1291385))

(declare-fun d!1291387 () Bool)

(declare-fun head!9086 (List!49114) tuple2!48416)

(assert (=> d!1291387 (= (head!9084 lm!1707) (head!9086 (toList!3005 lm!1707)))))

(declare-fun bs!636365 () Bool)

(assert (= bs!636365 d!1291387))

(declare-fun m!4984119 () Bool)

(assert (=> bs!636365 m!4984119))

(assert (=> b!4363112 d!1291387))

(declare-fun d!1291389 () Bool)

(declare-fun res!1794269 () Bool)

(declare-fun e!2715556 () Bool)

(assert (=> d!1291389 (=> res!1794269 e!2715556)))

(assert (=> d!1291389 (= res!1794269 ((_ is Nil!48990) (toList!3005 lt!1575445)))))

(assert (=> d!1291389 (= (forall!9162 (toList!3005 lt!1575445) lambda!141907) e!2715556)))

(declare-fun b!4363344 () Bool)

(declare-fun e!2715557 () Bool)

(assert (=> b!4363344 (= e!2715556 e!2715557)))

(declare-fun res!1794270 () Bool)

(assert (=> b!4363344 (=> (not res!1794270) (not e!2715557))))

(declare-fun dynLambda!20655 (Int tuple2!48416) Bool)

(assert (=> b!4363344 (= res!1794270 (dynLambda!20655 lambda!141907 (h!54555 (toList!3005 lt!1575445))))))

(declare-fun b!4363345 () Bool)

(assert (=> b!4363345 (= e!2715557 (forall!9162 (t!356034 (toList!3005 lt!1575445)) lambda!141907))))

(assert (= (and d!1291389 (not res!1794269)) b!4363344))

(assert (= (and b!4363344 res!1794270) b!4363345))

(declare-fun b_lambda!132129 () Bool)

(assert (=> (not b_lambda!132129) (not b!4363344)))

(declare-fun m!4984121 () Bool)

(assert (=> b!4363344 m!4984121))

(declare-fun m!4984123 () Bool)

(assert (=> b!4363345 m!4984123))

(assert (=> b!4363118 d!1291389))

(declare-fun d!1291391 () Bool)

(declare-fun e!2715558 () Bool)

(assert (=> d!1291391 e!2715558))

(declare-fun res!1794272 () Bool)

(assert (=> d!1291391 (=> (not res!1794272) (not e!2715558))))

(declare-fun lt!1575772 () ListLongMap!1655)

(assert (=> d!1291391 (= res!1794272 (contains!11229 lt!1575772 (_1!27502 lt!1575443)))))

(declare-fun lt!1575773 () List!49114)

(assert (=> d!1291391 (= lt!1575772 (ListLongMap!1656 lt!1575773))))

(declare-fun lt!1575771 () Unit!72733)

(declare-fun lt!1575770 () Unit!72733)

(assert (=> d!1291391 (= lt!1575771 lt!1575770)))

(assert (=> d!1291391 (= (getValueByKey!481 lt!1575773 (_1!27502 lt!1575443)) (Some!10494 (_2!27502 lt!1575443)))))

(assert (=> d!1291391 (= lt!1575770 (lemmaContainsTupThenGetReturnValue!256 lt!1575773 (_1!27502 lt!1575443) (_2!27502 lt!1575443)))))

(assert (=> d!1291391 (= lt!1575773 (insertStrictlySorted!148 (toList!3005 lm!1707) (_1!27502 lt!1575443) (_2!27502 lt!1575443)))))

(assert (=> d!1291391 (= (+!680 lm!1707 lt!1575443) lt!1575772)))

(declare-fun b!4363346 () Bool)

(declare-fun res!1794271 () Bool)

(assert (=> b!4363346 (=> (not res!1794271) (not e!2715558))))

(assert (=> b!4363346 (= res!1794271 (= (getValueByKey!481 (toList!3005 lt!1575772) (_1!27502 lt!1575443)) (Some!10494 (_2!27502 lt!1575443))))))

(declare-fun b!4363347 () Bool)

(assert (=> b!4363347 (= e!2715558 (contains!11231 (toList!3005 lt!1575772) lt!1575443))))

(assert (= (and d!1291391 res!1794272) b!4363346))

(assert (= (and b!4363346 res!1794271) b!4363347))

(declare-fun m!4984127 () Bool)

(assert (=> d!1291391 m!4984127))

(declare-fun m!4984131 () Bool)

(assert (=> d!1291391 m!4984131))

(declare-fun m!4984135 () Bool)

(assert (=> d!1291391 m!4984135))

(declare-fun m!4984141 () Bool)

(assert (=> d!1291391 m!4984141))

(declare-fun m!4984145 () Bool)

(assert (=> b!4363346 m!4984145))

(declare-fun m!4984149 () Bool)

(assert (=> b!4363347 m!4984149))

(assert (=> b!4363118 d!1291391))

(declare-fun d!1291393 () Bool)

(assert (=> d!1291393 (forall!9162 (toList!3005 (+!680 lm!1707 (tuple2!48417 hash!377 newBucket!200))) lambda!141907)))

(declare-fun lt!1575783 () Unit!72733)

(declare-fun choose!27072 (ListLongMap!1655 Int (_ BitVec 64) List!49113) Unit!72733)

(assert (=> d!1291393 (= lt!1575783 (choose!27072 lm!1707 lambda!141907 hash!377 newBucket!200))))

(declare-fun e!2715562 () Bool)

(assert (=> d!1291393 e!2715562))

(declare-fun res!1794277 () Bool)

(assert (=> d!1291393 (=> (not res!1794277) (not e!2715562))))

(assert (=> d!1291393 (= res!1794277 (forall!9162 (toList!3005 lm!1707) lambda!141907))))

(assert (=> d!1291393 (= (addValidProp!165 lm!1707 lambda!141907 hash!377 newBucket!200) lt!1575783)))

(declare-fun b!4363353 () Bool)

(assert (=> b!4363353 (= e!2715562 (dynLambda!20655 lambda!141907 (tuple2!48417 hash!377 newBucket!200)))))

(assert (= (and d!1291393 res!1794277) b!4363353))

(declare-fun b_lambda!132131 () Bool)

(assert (=> (not b_lambda!132131) (not b!4363353)))

(declare-fun m!4984191 () Bool)

(assert (=> d!1291393 m!4984191))

(declare-fun m!4984193 () Bool)

(assert (=> d!1291393 m!4984193))

(declare-fun m!4984195 () Bool)

(assert (=> d!1291393 m!4984195))

(assert (=> d!1291393 m!4983649))

(declare-fun m!4984197 () Bool)

(assert (=> b!4363353 m!4984197))

(assert (=> b!4363118 d!1291393))

(declare-fun d!1291403 () Bool)

(declare-fun res!1794278 () Bool)

(declare-fun e!2715563 () Bool)

(assert (=> d!1291403 (=> res!1794278 e!2715563)))

(assert (=> d!1291403 (= res!1794278 ((_ is Nil!48990) (toList!3005 lm!1707)))))

(assert (=> d!1291403 (= (forall!9162 (toList!3005 lm!1707) lambda!141907) e!2715563)))

(declare-fun b!4363354 () Bool)

(declare-fun e!2715564 () Bool)

(assert (=> b!4363354 (= e!2715563 e!2715564)))

(declare-fun res!1794279 () Bool)

(assert (=> b!4363354 (=> (not res!1794279) (not e!2715564))))

(assert (=> b!4363354 (= res!1794279 (dynLambda!20655 lambda!141907 (h!54555 (toList!3005 lm!1707))))))

(declare-fun b!4363355 () Bool)

(assert (=> b!4363355 (= e!2715564 (forall!9162 (t!356034 (toList!3005 lm!1707)) lambda!141907))))

(assert (= (and d!1291403 (not res!1794278)) b!4363354))

(assert (= (and b!4363354 res!1794279) b!4363355))

(declare-fun b_lambda!132133 () Bool)

(assert (=> (not b_lambda!132133) (not b!4363354)))

(declare-fun m!4984199 () Bool)

(assert (=> b!4363354 m!4984199))

(declare-fun m!4984201 () Bool)

(assert (=> b!4363355 m!4984201))

(assert (=> b!4363118 d!1291403))

(declare-fun d!1291405 () Bool)

(declare-fun res!1794280 () Bool)

(declare-fun e!2715565 () Bool)

(assert (=> d!1291405 (=> res!1794280 e!2715565)))

(assert (=> d!1291405 (= res!1794280 (and ((_ is Cons!48989) (_2!27502 (h!54555 (toList!3005 lm!1707)))) (= (_1!27501 (h!54554 (_2!27502 (h!54555 (toList!3005 lm!1707))))) key!3918)))))

(assert (=> d!1291405 (= (containsKey!740 (_2!27502 (h!54555 (toList!3005 lm!1707))) key!3918) e!2715565)))

(declare-fun b!4363356 () Bool)

(declare-fun e!2715566 () Bool)

(assert (=> b!4363356 (= e!2715565 e!2715566)))

(declare-fun res!1794281 () Bool)

(assert (=> b!4363356 (=> (not res!1794281) (not e!2715566))))

(assert (=> b!4363356 (= res!1794281 ((_ is Cons!48989) (_2!27502 (h!54555 (toList!3005 lm!1707)))))))

(declare-fun b!4363357 () Bool)

(assert (=> b!4363357 (= e!2715566 (containsKey!740 (t!356033 (_2!27502 (h!54555 (toList!3005 lm!1707)))) key!3918))))

(assert (= (and d!1291405 (not res!1794280)) b!4363356))

(assert (= (and b!4363356 res!1794281) b!4363357))

(declare-fun m!4984203 () Bool)

(assert (=> b!4363357 m!4984203))

(assert (=> b!4363108 d!1291405))

(declare-fun bs!636378 () Bool)

(declare-fun d!1291407 () Bool)

(assert (= bs!636378 (and d!1291407 d!1291363)))

(declare-fun lambda!142006 () Int)

(assert (=> bs!636378 (not (= lambda!142006 lambda!141992))))

(declare-fun bs!636379 () Bool)

(assert (= bs!636379 (and d!1291407 d!1291355)))

(assert (=> bs!636379 (not (= lambda!142006 lambda!141975))))

(declare-fun bs!636380 () Bool)

(assert (= bs!636380 (and d!1291407 d!1291359)))

(assert (=> bs!636380 (not (= lambda!142006 lambda!141978))))

(declare-fun bs!636381 () Bool)

(assert (= bs!636381 (and d!1291407 d!1291361)))

(assert (=> bs!636381 (not (= lambda!142006 lambda!141985))))

(declare-fun bs!636382 () Bool)

(assert (= bs!636382 (and d!1291407 d!1291351)))

(assert (=> bs!636382 (not (= lambda!142006 lambda!141970))))

(declare-fun bs!636383 () Bool)

(assert (= bs!636383 (and d!1291407 start!422888)))

(assert (=> bs!636383 (not (= lambda!142006 lambda!141907))))

(assert (=> d!1291407 true))

(assert (=> d!1291407 (= (allKeysSameHashInMap!615 lm!1707 hashF!1247) (forall!9162 (toList!3005 lm!1707) lambda!142006))))

(declare-fun bs!636384 () Bool)

(assert (= bs!636384 d!1291407))

(declare-fun m!4984205 () Bool)

(assert (=> bs!636384 m!4984205))

(assert (=> b!4363109 d!1291407))

(declare-fun d!1291409 () Bool)

(declare-fun res!1794290 () Bool)

(declare-fun e!2715573 () Bool)

(assert (=> d!1291409 (=> res!1794290 e!2715573)))

(assert (=> d!1291409 (= res!1794290 (not ((_ is Cons!48989) newBucket!200)))))

(assert (=> d!1291409 (= (noDuplicateKeys!511 newBucket!200) e!2715573)))

(declare-fun b!4363368 () Bool)

(declare-fun e!2715574 () Bool)

(assert (=> b!4363368 (= e!2715573 e!2715574)))

(declare-fun res!1794291 () Bool)

(assert (=> b!4363368 (=> (not res!1794291) (not e!2715574))))

(assert (=> b!4363368 (= res!1794291 (not (containsKey!740 (t!356033 newBucket!200) (_1!27501 (h!54554 newBucket!200)))))))

(declare-fun b!4363369 () Bool)

(assert (=> b!4363369 (= e!2715574 (noDuplicateKeys!511 (t!356033 newBucket!200)))))

(assert (= (and d!1291409 (not res!1794290)) b!4363368))

(assert (= (and b!4363368 res!1794291) b!4363369))

(declare-fun m!4984207 () Bool)

(assert (=> b!4363368 m!4984207))

(declare-fun m!4984209 () Bool)

(assert (=> b!4363369 m!4984209))

(assert (=> b!4363120 d!1291409))

(assert (=> b!4363116 d!1291389))

(declare-fun d!1291411 () Bool)

(assert (=> d!1291411 (= (apply!11363 lm!1707 hash!377) (get!15919 (getValueByKey!481 (toList!3005 lm!1707) hash!377)))))

(declare-fun bs!636385 () Bool)

(assert (= bs!636385 d!1291411))

(declare-fun m!4984211 () Bool)

(assert (=> bs!636385 m!4984211))

(assert (=> bs!636385 m!4984211))

(declare-fun m!4984213 () Bool)

(assert (=> bs!636385 m!4984213))

(assert (=> b!4363117 d!1291411))

(declare-fun d!1291413 () Bool)

(declare-fun lt!1575798 () Bool)

(declare-fun content!7755 (List!49114) (InoxSet tuple2!48416))

(assert (=> d!1291413 (= lt!1575798 (select (content!7755 (toList!3005 lm!1707)) lt!1575431))))

(declare-fun e!2715580 () Bool)

(assert (=> d!1291413 (= lt!1575798 e!2715580)))

(declare-fun res!1794298 () Bool)

(assert (=> d!1291413 (=> (not res!1794298) (not e!2715580))))

(assert (=> d!1291413 (= res!1794298 ((_ is Cons!48990) (toList!3005 lm!1707)))))

(assert (=> d!1291413 (= (contains!11231 (toList!3005 lm!1707) lt!1575431) lt!1575798)))

(declare-fun b!4363376 () Bool)

(declare-fun e!2715581 () Bool)

(assert (=> b!4363376 (= e!2715580 e!2715581)))

(declare-fun res!1794299 () Bool)

(assert (=> b!4363376 (=> res!1794299 e!2715581)))

(assert (=> b!4363376 (= res!1794299 (= (h!54555 (toList!3005 lm!1707)) lt!1575431))))

(declare-fun b!4363377 () Bool)

(assert (=> b!4363377 (= e!2715581 (contains!11231 (t!356034 (toList!3005 lm!1707)) lt!1575431))))

(assert (= (and d!1291413 res!1794298) b!4363376))

(assert (= (and b!4363376 (not res!1794299)) b!4363377))

(declare-fun m!4984227 () Bool)

(assert (=> d!1291413 m!4984227))

(declare-fun m!4984229 () Bool)

(assert (=> d!1291413 m!4984229))

(declare-fun m!4984231 () Bool)

(assert (=> b!4363377 m!4984231))

(assert (=> b!4363117 d!1291413))

(declare-fun d!1291417 () Bool)

(assert (=> d!1291417 (dynLambda!20655 lambda!141907 lt!1575431)))

(declare-fun lt!1575801 () Unit!72733)

(declare-fun choose!27073 (List!49114 Int tuple2!48416) Unit!72733)

(assert (=> d!1291417 (= lt!1575801 (choose!27073 (toList!3005 lm!1707) lambda!141907 lt!1575431))))

(declare-fun e!2715584 () Bool)

(assert (=> d!1291417 e!2715584))

(declare-fun res!1794302 () Bool)

(assert (=> d!1291417 (=> (not res!1794302) (not e!2715584))))

(assert (=> d!1291417 (= res!1794302 (forall!9162 (toList!3005 lm!1707) lambda!141907))))

(assert (=> d!1291417 (= (forallContained!1803 (toList!3005 lm!1707) lambda!141907 lt!1575431) lt!1575801)))

(declare-fun b!4363380 () Bool)

(assert (=> b!4363380 (= e!2715584 (contains!11231 (toList!3005 lm!1707) lt!1575431))))

(assert (= (and d!1291417 res!1794302) b!4363380))

(declare-fun b_lambda!132135 () Bool)

(assert (=> (not b_lambda!132135) (not d!1291417)))

(declare-fun m!4984233 () Bool)

(assert (=> d!1291417 m!4984233))

(declare-fun m!4984235 () Bool)

(assert (=> d!1291417 m!4984235))

(assert (=> d!1291417 m!4983649))

(assert (=> b!4363380 m!4983613))

(assert (=> b!4363117 d!1291417))

(declare-fun d!1291419 () Bool)

(declare-fun lt!1575804 () List!49113)

(assert (=> d!1291419 (not (containsKey!740 lt!1575804 key!3918))))

(declare-fun e!2715590 () List!49113)

(assert (=> d!1291419 (= lt!1575804 e!2715590)))

(declare-fun c!742009 () Bool)

(assert (=> d!1291419 (= c!742009 (and ((_ is Cons!48989) lt!1575437) (= (_1!27501 (h!54554 lt!1575437)) key!3918)))))

(assert (=> d!1291419 (noDuplicateKeys!511 lt!1575437)))

(assert (=> d!1291419 (= (removePairForKey!481 lt!1575437 key!3918) lt!1575804)))

(declare-fun b!4363392 () Bool)

(declare-fun e!2715589 () List!49113)

(assert (=> b!4363392 (= e!2715589 Nil!48989)))

(declare-fun b!4363389 () Bool)

(assert (=> b!4363389 (= e!2715590 (t!356033 lt!1575437))))

(declare-fun b!4363391 () Bool)

(assert (=> b!4363391 (= e!2715589 (Cons!48989 (h!54554 lt!1575437) (removePairForKey!481 (t!356033 lt!1575437) key!3918)))))

(declare-fun b!4363390 () Bool)

(assert (=> b!4363390 (= e!2715590 e!2715589)))

(declare-fun c!742010 () Bool)

(assert (=> b!4363390 (= c!742010 ((_ is Cons!48989) lt!1575437))))

(assert (= (and d!1291419 c!742009) b!4363389))

(assert (= (and d!1291419 (not c!742009)) b!4363390))

(assert (= (and b!4363390 c!742010) b!4363391))

(assert (= (and b!4363390 (not c!742010)) b!4363392))

(declare-fun m!4984237 () Bool)

(assert (=> d!1291419 m!4984237))

(declare-fun m!4984239 () Bool)

(assert (=> d!1291419 m!4984239))

(declare-fun m!4984241 () Bool)

(assert (=> b!4363391 m!4984241))

(assert (=> b!4363117 d!1291419))

(declare-fun d!1291421 () Bool)

(assert (=> d!1291421 (contains!11231 (toList!3005 lm!1707) (tuple2!48417 hash!377 lt!1575437))))

(declare-fun lt!1575814 () Unit!72733)

(declare-fun choose!27074 (List!49114 (_ BitVec 64) List!49113) Unit!72733)

(assert (=> d!1291421 (= lt!1575814 (choose!27074 (toList!3005 lm!1707) hash!377 lt!1575437))))

(declare-fun e!2715594 () Bool)

(assert (=> d!1291421 e!2715594))

(declare-fun res!1794307 () Bool)

(assert (=> d!1291421 (=> (not res!1794307) (not e!2715594))))

(declare-fun isStrictlySorted!118 (List!49114) Bool)

(assert (=> d!1291421 (= res!1794307 (isStrictlySorted!118 (toList!3005 lm!1707)))))

(assert (=> d!1291421 (= (lemmaGetValueByKeyImpliesContainsTuple!358 (toList!3005 lm!1707) hash!377 lt!1575437) lt!1575814)))

(declare-fun b!4363397 () Bool)

(assert (=> b!4363397 (= e!2715594 (= (getValueByKey!481 (toList!3005 lm!1707) hash!377) (Some!10494 lt!1575437)))))

(assert (= (and d!1291421 res!1794307) b!4363397))

(declare-fun m!4984267 () Bool)

(assert (=> d!1291421 m!4984267))

(declare-fun m!4984269 () Bool)

(assert (=> d!1291421 m!4984269))

(declare-fun m!4984271 () Bool)

(assert (=> d!1291421 m!4984271))

(assert (=> b!4363397 m!4984211))

(assert (=> b!4363117 d!1291421))

(declare-fun d!1291429 () Bool)

(declare-fun e!2715601 () Bool)

(assert (=> d!1291429 e!2715601))

(declare-fun res!1794310 () Bool)

(assert (=> d!1291429 (=> res!1794310 e!2715601)))

(declare-fun lt!1575830 () Bool)

(assert (=> d!1291429 (= res!1794310 (not lt!1575830))))

(declare-fun lt!1575828 () Bool)

(assert (=> d!1291429 (= lt!1575830 lt!1575828)))

(declare-fun lt!1575829 () Unit!72733)

(declare-fun e!2715602 () Unit!72733)

(assert (=> d!1291429 (= lt!1575829 e!2715602)))

(declare-fun c!742015 () Bool)

(assert (=> d!1291429 (= c!742015 lt!1575828)))

(declare-fun containsKey!743 (List!49114 (_ BitVec 64)) Bool)

(assert (=> d!1291429 (= lt!1575828 (containsKey!743 (toList!3005 lm!1707) hash!377))))

(assert (=> d!1291429 (= (contains!11229 lm!1707 hash!377) lt!1575830)))

(declare-fun b!4363408 () Bool)

(declare-fun lt!1575831 () Unit!72733)

(assert (=> b!4363408 (= e!2715602 lt!1575831)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!393 (List!49114 (_ BitVec 64)) Unit!72733)

(assert (=> b!4363408 (= lt!1575831 (lemmaContainsKeyImpliesGetValueByKeyDefined!393 (toList!3005 lm!1707) hash!377))))

(declare-fun isDefined!7790 (Option!10495) Bool)

(assert (=> b!4363408 (isDefined!7790 (getValueByKey!481 (toList!3005 lm!1707) hash!377))))

(declare-fun b!4363409 () Bool)

(declare-fun Unit!72789 () Unit!72733)

(assert (=> b!4363409 (= e!2715602 Unit!72789)))

(declare-fun b!4363410 () Bool)

(assert (=> b!4363410 (= e!2715601 (isDefined!7790 (getValueByKey!481 (toList!3005 lm!1707) hash!377)))))

(assert (= (and d!1291429 c!742015) b!4363408))

(assert (= (and d!1291429 (not c!742015)) b!4363409))

(assert (= (and d!1291429 (not res!1794310)) b!4363410))

(declare-fun m!4984285 () Bool)

(assert (=> d!1291429 m!4984285))

(declare-fun m!4984287 () Bool)

(assert (=> b!4363408 m!4984287))

(assert (=> b!4363408 m!4984211))

(assert (=> b!4363408 m!4984211))

(declare-fun m!4984289 () Bool)

(assert (=> b!4363408 m!4984289))

(assert (=> b!4363410 m!4984211))

(assert (=> b!4363410 m!4984211))

(assert (=> b!4363410 m!4984289))

(assert (=> b!4363107 d!1291429))

(declare-fun d!1291437 () Bool)

(declare-fun res!1794311 () Bool)

(declare-fun e!2715603 () Bool)

(assert (=> d!1291437 (=> res!1794311 e!2715603)))

(assert (=> d!1291437 (= res!1794311 ((_ is Nil!48990) (toList!3005 lt!1575432)))))

(assert (=> d!1291437 (= (forall!9162 (toList!3005 lt!1575432) lambda!141907) e!2715603)))

(declare-fun b!4363411 () Bool)

(declare-fun e!2715604 () Bool)

(assert (=> b!4363411 (= e!2715603 e!2715604)))

(declare-fun res!1794312 () Bool)

(assert (=> b!4363411 (=> (not res!1794312) (not e!2715604))))

(assert (=> b!4363411 (= res!1794312 (dynLambda!20655 lambda!141907 (h!54555 (toList!3005 lt!1575432))))))

(declare-fun b!4363412 () Bool)

(assert (=> b!4363412 (= e!2715604 (forall!9162 (t!356034 (toList!3005 lt!1575432)) lambda!141907))))

(assert (= (and d!1291437 (not res!1794311)) b!4363411))

(assert (= (and b!4363411 res!1794312) b!4363412))

(declare-fun b_lambda!132137 () Bool)

(assert (=> (not b_lambda!132137) (not b!4363411)))

(declare-fun m!4984299 () Bool)

(assert (=> b!4363411 m!4984299))

(declare-fun m!4984301 () Bool)

(assert (=> b!4363412 m!4984301))

(assert (=> b!4363113 d!1291437))

(declare-fun d!1291441 () Bool)

(assert (=> d!1291441 (= (eq!281 (+!679 lt!1575449 lt!1575446) lt!1575441) (= (content!7752 (toList!3006 (+!679 lt!1575449 lt!1575446))) (content!7752 (toList!3006 lt!1575441))))))

(declare-fun bs!636401 () Bool)

(assert (= bs!636401 d!1291441))

(declare-fun m!4984303 () Bool)

(assert (=> bs!636401 m!4984303))

(assert (=> bs!636401 m!4984117))

(assert (=> b!4363113 d!1291441))

(declare-fun d!1291443 () Bool)

(declare-fun e!2715607 () Bool)

(assert (=> d!1291443 e!2715607))

(declare-fun res!1794316 () Bool)

(assert (=> d!1291443 (=> (not res!1794316) (not e!2715607))))

(declare-fun lt!1575834 () ListMap!2249)

(assert (=> d!1291443 (= res!1794316 (contains!11230 lt!1575834 (_1!27501 lt!1575446)))))

(declare-fun lt!1575832 () List!49113)

(assert (=> d!1291443 (= lt!1575834 (ListMap!2250 lt!1575832))))

(declare-fun lt!1575835 () Unit!72733)

(declare-fun lt!1575833 () Unit!72733)

(assert (=> d!1291443 (= lt!1575835 lt!1575833)))

(assert (=> d!1291443 (= (getValueByKey!482 lt!1575832 (_1!27501 lt!1575446)) (Some!10495 (_2!27501 lt!1575446)))))

(assert (=> d!1291443 (= lt!1575833 (lemmaContainsTupThenGetReturnValue!255 lt!1575832 (_1!27501 lt!1575446) (_2!27501 lt!1575446)))))

(assert (=> d!1291443 (= lt!1575832 (insertNoDuplicatedKeys!116 (toList!3006 lt!1575449) (_1!27501 lt!1575446) (_2!27501 lt!1575446)))))

(assert (=> d!1291443 (= (+!679 lt!1575449 lt!1575446) lt!1575834)))

(declare-fun b!4363415 () Bool)

(declare-fun res!1794315 () Bool)

(assert (=> b!4363415 (=> (not res!1794315) (not e!2715607))))

(assert (=> b!4363415 (= res!1794315 (= (getValueByKey!482 (toList!3006 lt!1575834) (_1!27501 lt!1575446)) (Some!10495 (_2!27501 lt!1575446))))))

(declare-fun b!4363416 () Bool)

(assert (=> b!4363416 (= e!2715607 (contains!11234 (toList!3006 lt!1575834) lt!1575446))))

(assert (= (and d!1291443 res!1794316) b!4363415))

(assert (= (and b!4363415 res!1794315) b!4363416))

(declare-fun m!4984309 () Bool)

(assert (=> d!1291443 m!4984309))

(declare-fun m!4984311 () Bool)

(assert (=> d!1291443 m!4984311))

(declare-fun m!4984313 () Bool)

(assert (=> d!1291443 m!4984313))

(declare-fun m!4984315 () Bool)

(assert (=> d!1291443 m!4984315))

(declare-fun m!4984317 () Bool)

(assert (=> b!4363415 m!4984317))

(declare-fun m!4984319 () Bool)

(assert (=> b!4363416 m!4984319))

(assert (=> b!4363113 d!1291443))

(declare-fun d!1291447 () Bool)

(assert (=> d!1291447 (eq!281 (+!679 lt!1575449 (tuple2!48415 key!3918 newValue!99)) (+!679 lt!1575430 (tuple2!48415 key!3918 newValue!99)))))

(declare-fun lt!1575850 () Unit!72733)

(declare-fun choose!27077 (ListMap!2249 ListMap!2249 K!10345 V!10591) Unit!72733)

(assert (=> d!1291447 (= lt!1575850 (choose!27077 lt!1575449 lt!1575430 key!3918 newValue!99))))

(assert (=> d!1291447 (eq!281 lt!1575449 lt!1575430)))

(assert (=> d!1291447 (= (lemmaAddToEqMapsPreservesEq!4 lt!1575449 lt!1575430 key!3918 newValue!99) lt!1575850)))

(declare-fun bs!636403 () Bool)

(assert (= bs!636403 d!1291447))

(declare-fun m!4984327 () Bool)

(assert (=> bs!636403 m!4984327))

(declare-fun m!4984329 () Bool)

(assert (=> bs!636403 m!4984329))

(declare-fun m!4984331 () Bool)

(assert (=> bs!636403 m!4984331))

(declare-fun m!4984333 () Bool)

(assert (=> bs!636403 m!4984333))

(declare-fun m!4984335 () Bool)

(assert (=> bs!636403 m!4984335))

(assert (=> bs!636403 m!4984333))

(assert (=> bs!636403 m!4984331))

(assert (=> b!4363113 d!1291447))

(declare-fun b!4363428 () Bool)

(declare-fun e!2715617 () Unit!72733)

(declare-fun e!2715616 () Unit!72733)

(assert (=> b!4363428 (= e!2715617 e!2715616)))

(declare-fun c!742021 () Bool)

(declare-fun call!303363 () Bool)

(assert (=> b!4363428 (= c!742021 call!303363)))

(declare-fun b!4363429 () Bool)

(declare-fun lt!1575861 () Unit!72733)

(assert (=> b!4363429 (= e!2715617 lt!1575861)))

(declare-fun lt!1575858 () Unit!72733)

(assert (=> b!4363429 (= lt!1575858 (lemmaContainsKeyImpliesGetValueByKeyDefined!392 (toList!3006 lt!1575449) key!3918))))

(assert (=> b!4363429 (isDefined!7789 (getValueByKey!482 (toList!3006 lt!1575449) key!3918))))

(declare-fun lt!1575857 () Unit!72733)

(assert (=> b!4363429 (= lt!1575857 lt!1575858)))

(assert (=> b!4363429 (= lt!1575861 (lemmaInListThenGetKeysListContains!137 (toList!3006 lt!1575449) key!3918))))

(assert (=> b!4363429 call!303363))

(declare-fun b!4363430 () Bool)

(declare-fun e!2715615 () Bool)

(assert (=> b!4363430 (= e!2715615 (not (contains!11235 (keys!16564 lt!1575449) key!3918)))))

(declare-fun b!4363431 () Bool)

(declare-fun e!2715618 () List!49116)

(assert (=> b!4363431 (= e!2715618 (keys!16564 lt!1575449))))

(declare-fun b!4363432 () Bool)

(declare-fun e!2715620 () Bool)

(declare-fun e!2715619 () Bool)

(assert (=> b!4363432 (= e!2715620 e!2715619)))

(declare-fun res!1794322 () Bool)

(assert (=> b!4363432 (=> (not res!1794322) (not e!2715619))))

(assert (=> b!4363432 (= res!1794322 (isDefined!7789 (getValueByKey!482 (toList!3006 lt!1575449) key!3918)))))

(declare-fun d!1291453 () Bool)

(assert (=> d!1291453 e!2715620))

(declare-fun res!1794324 () Bool)

(assert (=> d!1291453 (=> res!1794324 e!2715620)))

(assert (=> d!1291453 (= res!1794324 e!2715615)))

(declare-fun res!1794323 () Bool)

(assert (=> d!1291453 (=> (not res!1794323) (not e!2715615))))

(declare-fun lt!1575859 () Bool)

(assert (=> d!1291453 (= res!1794323 (not lt!1575859))))

(declare-fun lt!1575856 () Bool)

(assert (=> d!1291453 (= lt!1575859 lt!1575856)))

(declare-fun lt!1575862 () Unit!72733)

(assert (=> d!1291453 (= lt!1575862 e!2715617)))

(declare-fun c!742019 () Bool)

(assert (=> d!1291453 (= c!742019 lt!1575856)))

(assert (=> d!1291453 (= lt!1575856 (containsKey!742 (toList!3006 lt!1575449) key!3918))))

(assert (=> d!1291453 (= (contains!11230 lt!1575449 key!3918) lt!1575859)))

(declare-fun b!4363433 () Bool)

(assert (=> b!4363433 (= e!2715619 (contains!11235 (keys!16564 lt!1575449) key!3918))))

(declare-fun b!4363434 () Bool)

(assert (=> b!4363434 false))

(declare-fun lt!1575855 () Unit!72733)

(declare-fun lt!1575860 () Unit!72733)

(assert (=> b!4363434 (= lt!1575855 lt!1575860)))

(assert (=> b!4363434 (containsKey!742 (toList!3006 lt!1575449) key!3918)))

(assert (=> b!4363434 (= lt!1575860 (lemmaInGetKeysListThenContainsKey!138 (toList!3006 lt!1575449) key!3918))))

(declare-fun Unit!72790 () Unit!72733)

(assert (=> b!4363434 (= e!2715616 Unit!72790)))

(declare-fun b!4363435 () Bool)

(declare-fun Unit!72791 () Unit!72733)

(assert (=> b!4363435 (= e!2715616 Unit!72791)))

(declare-fun bm!303358 () Bool)

(assert (=> bm!303358 (= call!303363 (contains!11235 e!2715618 key!3918))))

(declare-fun c!742020 () Bool)

(assert (=> bm!303358 (= c!742020 c!742019)))

(declare-fun b!4363436 () Bool)

(assert (=> b!4363436 (= e!2715618 (getKeysList!140 (toList!3006 lt!1575449)))))

(assert (= (and d!1291453 c!742019) b!4363429))

(assert (= (and d!1291453 (not c!742019)) b!4363428))

(assert (= (and b!4363428 c!742021) b!4363434))

(assert (= (and b!4363428 (not c!742021)) b!4363435))

(assert (= (or b!4363429 b!4363428) bm!303358))

(assert (= (and bm!303358 c!742020) b!4363436))

(assert (= (and bm!303358 (not c!742020)) b!4363431))

(assert (= (and d!1291453 res!1794323) b!4363430))

(assert (= (and d!1291453 (not res!1794324)) b!4363432))

(assert (= (and b!4363432 res!1794322) b!4363433))

(declare-fun m!4984349 () Bool)

(assert (=> b!4363433 m!4984349))

(assert (=> b!4363433 m!4984349))

(declare-fun m!4984351 () Bool)

(assert (=> b!4363433 m!4984351))

(declare-fun m!4984353 () Bool)

(assert (=> b!4363436 m!4984353))

(declare-fun m!4984355 () Bool)

(assert (=> b!4363434 m!4984355))

(declare-fun m!4984357 () Bool)

(assert (=> b!4363434 m!4984357))

(declare-fun m!4984359 () Bool)

(assert (=> b!4363429 m!4984359))

(declare-fun m!4984361 () Bool)

(assert (=> b!4363429 m!4984361))

(assert (=> b!4363429 m!4984361))

(declare-fun m!4984363 () Bool)

(assert (=> b!4363429 m!4984363))

(declare-fun m!4984365 () Bool)

(assert (=> b!4363429 m!4984365))

(declare-fun m!4984367 () Bool)

(assert (=> bm!303358 m!4984367))

(assert (=> b!4363432 m!4984361))

(assert (=> b!4363432 m!4984361))

(assert (=> b!4363432 m!4984363))

(assert (=> b!4363431 m!4984349))

(assert (=> d!1291453 m!4984355))

(assert (=> b!4363430 m!4984349))

(assert (=> b!4363430 m!4984349))

(assert (=> b!4363430 m!4984351))

(assert (=> b!4363114 d!1291453))

(declare-fun bs!636404 () Bool)

(declare-fun d!1291457 () Bool)

(assert (= bs!636404 (and d!1291457 d!1291363)))

(declare-fun lambda!142009 () Int)

(assert (=> bs!636404 (= lambda!142009 lambda!141992)))

(declare-fun bs!636405 () Bool)

(assert (= bs!636405 (and d!1291457 d!1291407)))

(assert (=> bs!636405 (not (= lambda!142009 lambda!142006))))

(declare-fun bs!636406 () Bool)

(assert (= bs!636406 (and d!1291457 d!1291355)))

(assert (=> bs!636406 (= lambda!142009 lambda!141975)))

(declare-fun bs!636407 () Bool)

(assert (= bs!636407 (and d!1291457 d!1291359)))

(assert (=> bs!636407 (= lambda!142009 lambda!141978)))

(declare-fun bs!636408 () Bool)

(assert (= bs!636408 (and d!1291457 d!1291361)))

(assert (=> bs!636408 (= lambda!142009 lambda!141985)))

(declare-fun bs!636409 () Bool)

(assert (= bs!636409 (and d!1291457 d!1291351)))

(assert (=> bs!636409 (= lambda!142009 lambda!141970)))

(declare-fun bs!636410 () Bool)

(assert (= bs!636410 (and d!1291457 start!422888)))

(assert (=> bs!636410 (= lambda!142009 lambda!141907)))

(declare-fun lt!1575863 () ListMap!2249)

(assert (=> d!1291457 (invariantList!691 (toList!3006 lt!1575863))))

(declare-fun e!2715621 () ListMap!2249)

(assert (=> d!1291457 (= lt!1575863 e!2715621)))

(declare-fun c!742022 () Bool)

(assert (=> d!1291457 (= c!742022 ((_ is Cons!48990) (toList!3005 lm!1707)))))

(assert (=> d!1291457 (forall!9162 (toList!3005 lm!1707) lambda!142009)))

(assert (=> d!1291457 (= (extractMap!570 (toList!3005 lm!1707)) lt!1575863)))

(declare-fun b!4363437 () Bool)

(assert (=> b!4363437 (= e!2715621 (addToMapMapFromBucket!207 (_2!27502 (h!54555 (toList!3005 lm!1707))) (extractMap!570 (t!356034 (toList!3005 lm!1707)))))))

(declare-fun b!4363438 () Bool)

(assert (=> b!4363438 (= e!2715621 (ListMap!2250 Nil!48989))))

(assert (= (and d!1291457 c!742022) b!4363437))

(assert (= (and d!1291457 (not c!742022)) b!4363438))

(declare-fun m!4984369 () Bool)

(assert (=> d!1291457 m!4984369))

(declare-fun m!4984371 () Bool)

(assert (=> d!1291457 m!4984371))

(assert (=> b!4363437 m!4983657))

(assert (=> b!4363437 m!4983657))

(declare-fun m!4984373 () Bool)

(assert (=> b!4363437 m!4984373))

(assert (=> b!4363114 d!1291457))

(assert (=> start!422888 d!1291403))

(declare-fun d!1291459 () Bool)

(assert (=> d!1291459 (= (inv!64531 lm!1707) (isStrictlySorted!118 (toList!3005 lm!1707)))))

(declare-fun bs!636411 () Bool)

(assert (= bs!636411 d!1291459))

(assert (=> bs!636411 m!4984271))

(assert (=> start!422888 d!1291459))

(declare-fun bs!636412 () Bool)

(declare-fun d!1291461 () Bool)

(assert (= bs!636412 (and d!1291461 b!4363228)))

(declare-fun lambda!142012 () Int)

(assert (=> bs!636412 (not (= lambda!142012 lambda!141944))))

(declare-fun bs!636413 () Bool)

(assert (= bs!636413 (and d!1291461 b!4363274)))

(assert (=> bs!636413 (not (= lambda!142012 lambda!141947))))

(declare-fun bs!636414 () Bool)

(assert (= bs!636414 (and d!1291461 b!4363227)))

(assert (=> bs!636414 (not (= lambda!142012 lambda!141942))))

(assert (=> bs!636412 (not (= lambda!142012 lambda!141943))))

(declare-fun bs!636415 () Bool)

(assert (= bs!636415 (and d!1291461 b!4363273)))

(assert (=> bs!636415 (not (= lambda!142012 lambda!141946))))

(assert (=> bs!636413 (not (= lambda!142012 lambda!141948))))

(declare-fun bs!636416 () Bool)

(assert (= bs!636416 (and d!1291461 d!1291295)))

(assert (=> bs!636416 (not (= lambda!142012 lambda!141945))))

(declare-fun bs!636417 () Bool)

(assert (= bs!636417 (and d!1291461 d!1291349)))

(assert (=> bs!636417 (not (= lambda!142012 lambda!141949))))

(assert (=> d!1291461 true))

(assert (=> d!1291461 true))

(assert (=> d!1291461 (= (allKeysSameHash!469 newBucket!200 hash!377 hashF!1247) (forall!9164 newBucket!200 lambda!142012))))

(declare-fun bs!636418 () Bool)

(assert (= bs!636418 d!1291461))

(declare-fun m!4984375 () Bool)

(assert (=> bs!636418 m!4984375))

(assert (=> b!4363115 d!1291461))

(declare-fun b!4363451 () Bool)

(declare-fun e!2715627 () Bool)

(declare-fun tp!1330419 () Bool)

(declare-fun tp!1330420 () Bool)

(assert (=> b!4363451 (= e!2715627 (and tp!1330419 tp!1330420))))

(assert (=> b!4363106 (= tp!1330413 e!2715627)))

(assert (= (and b!4363106 ((_ is Cons!48990) (toList!3005 lm!1707))) b!4363451))

(declare-fun e!2715630 () Bool)

(declare-fun b!4363456 () Bool)

(declare-fun tp!1330423 () Bool)

(assert (=> b!4363456 (= e!2715630 (and tp_is_empty!25281 tp_is_empty!25283 tp!1330423))))

(assert (=> b!4363119 (= tp!1330414 e!2715630)))

(assert (= (and b!4363119 ((_ is Cons!48989) (t!356033 newBucket!200))) b!4363456))

(declare-fun b_lambda!132143 () Bool)

(assert (= b_lambda!132133 (or start!422888 b_lambda!132143)))

(declare-fun bs!636419 () Bool)

(declare-fun d!1291465 () Bool)

(assert (= bs!636419 (and d!1291465 start!422888)))

(assert (=> bs!636419 (= (dynLambda!20655 lambda!141907 (h!54555 (toList!3005 lm!1707))) (noDuplicateKeys!511 (_2!27502 (h!54555 (toList!3005 lm!1707)))))))

(assert (=> bs!636419 m!4983817))

(assert (=> b!4363354 d!1291465))

(declare-fun b_lambda!132145 () Bool)

(assert (= b_lambda!132137 (or start!422888 b_lambda!132145)))

(declare-fun bs!636420 () Bool)

(declare-fun d!1291467 () Bool)

(assert (= bs!636420 (and d!1291467 start!422888)))

(assert (=> bs!636420 (= (dynLambda!20655 lambda!141907 (h!54555 (toList!3005 lt!1575432))) (noDuplicateKeys!511 (_2!27502 (h!54555 (toList!3005 lt!1575432)))))))

(declare-fun m!4984385 () Bool)

(assert (=> bs!636420 m!4984385))

(assert (=> b!4363411 d!1291467))

(declare-fun b_lambda!132147 () Bool)

(assert (= b_lambda!132131 (or start!422888 b_lambda!132147)))

(declare-fun bs!636421 () Bool)

(declare-fun d!1291469 () Bool)

(assert (= bs!636421 (and d!1291469 start!422888)))

(assert (=> bs!636421 (= (dynLambda!20655 lambda!141907 (tuple2!48417 hash!377 newBucket!200)) (noDuplicateKeys!511 (_2!27502 (tuple2!48417 hash!377 newBucket!200))))))

(declare-fun m!4984387 () Bool)

(assert (=> bs!636421 m!4984387))

(assert (=> b!4363353 d!1291469))

(declare-fun b_lambda!132149 () Bool)

(assert (= b_lambda!132135 (or start!422888 b_lambda!132149)))

(declare-fun bs!636422 () Bool)

(declare-fun d!1291471 () Bool)

(assert (= bs!636422 (and d!1291471 start!422888)))

(assert (=> bs!636422 (= (dynLambda!20655 lambda!141907 lt!1575431) (noDuplicateKeys!511 (_2!27502 lt!1575431)))))

(declare-fun m!4984389 () Bool)

(assert (=> bs!636422 m!4984389))

(assert (=> d!1291417 d!1291471))

(declare-fun b_lambda!132151 () Bool)

(assert (= b_lambda!132129 (or start!422888 b_lambda!132151)))

(declare-fun bs!636423 () Bool)

(declare-fun d!1291473 () Bool)

(assert (= bs!636423 (and d!1291473 start!422888)))

(assert (=> bs!636423 (= (dynLambda!20655 lambda!141907 (h!54555 (toList!3005 lt!1575445))) (noDuplicateKeys!511 (_2!27502 (h!54555 (toList!3005 lt!1575445)))))))

(declare-fun m!4984391 () Bool)

(assert (=> bs!636423 m!4984391))

(assert (=> b!4363344 d!1291473))

(check-sat (not bs!636421) (not d!1291419) (not b!4363231) (not d!1291461) (not b!4363274) (not b!4363391) (not b!4363294) (not b!4363451) (not bm!303335) (not b!4363369) (not b!4363266) (not d!1291453) (not b!4363345) (not b!4363311) (not d!1291335) (not d!1291357) (not b!4363434) (not d!1291353) (not b!4363431) (not d!1291355) (not b!4363380) (not d!1291441) (not d!1291421) (not b!4363346) (not b!4363276) (not b_lambda!132145) (not d!1291417) (not d!1291457) (not d!1291413) (not d!1291391) (not d!1291343) (not b!4363290) (not b!4363309) (not b!4363410) (not b!4363277) (not b!4363292) (not bm!303342) (not d!1291361) (not bm!303353) (not bs!636423) (not b!4363265) (not bm!303336) (not d!1291349) (not b!4363308) (not b!4363412) (not b!4363408) (not b!4363312) (not b!4363368) (not d!1291459) (not bm!303343) (not d!1291443) (not d!1291345) (not b!4363397) (not b!4363320) (not d!1291371) (not b!4363347) (not b!4363436) (not b!4363357) (not b!4363355) (not b_lambda!132149) (not bs!636422) (not b!4363269) (not b!4363377) (not b!4363268) (not bm!303358) (not d!1291387) (not d!1291385) (not d!1291447) (not b!4363310) (not b!4363416) (not bm!303341) (not d!1291293) (not bs!636420) (not d!1291359) (not b!4363272) (not b_lambda!132147) (not b!4363430) (not b!4363313) (not b!4363293) (not d!1291363) (not bm!303337) (not b_lambda!132151) (not b!4363432) (not b!4363230) (not b!4363267) (not b_lambda!132143) (not d!1291347) (not bs!636419) (not d!1291407) (not b!4363239) (not b!4363321) (not bm!303340) (not d!1291411) (not b!4363456) (not d!1291295) tp_is_empty!25281 (not b!4363433) (not d!1291351) (not d!1291429) (not b!4363315) (not b!4363429) (not b!4363286) (not b!4363415) (not b!4363228) (not d!1291375) (not b!4363270) (not b!4363437) (not d!1291341) tp_is_empty!25283 (not d!1291337) (not b!4363245) (not d!1291393) (not d!1291369) (not b!4363244))
(check-sat)
