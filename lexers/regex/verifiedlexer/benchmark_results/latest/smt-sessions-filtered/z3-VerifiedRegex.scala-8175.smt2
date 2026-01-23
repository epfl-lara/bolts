; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!421280 () Bool)

(assert start!421280)

(declare-fun b!4354756 () Bool)

(declare-fun e!2709991 () Bool)

(declare-datatypes ((V!10526 0))(
  ( (V!10527 (val!16495 Int)) )
))
(declare-datatypes ((K!10280 0))(
  ( (K!10281 (val!16496 Int)) )
))
(declare-datatypes ((tuple2!48310 0))(
  ( (tuple2!48311 (_1!27449 K!10280) (_2!27449 V!10526)) )
))
(declare-datatypes ((List!49043 0))(
  ( (Nil!48919) (Cons!48919 (h!54466 tuple2!48310) (t!355963 List!49043)) )
))
(declare-datatypes ((tuple2!48312 0))(
  ( (tuple2!48313 (_1!27450 (_ BitVec 64)) (_2!27450 List!49043)) )
))
(declare-datatypes ((List!49044 0))(
  ( (Nil!48920) (Cons!48920 (h!54467 tuple2!48312) (t!355964 List!49044)) )
))
(declare-datatypes ((ListLongMap!1603 0))(
  ( (ListLongMap!1604 (toList!2953 List!49044)) )
))
(declare-fun lm!1707 () ListLongMap!1603)

(declare-fun isEmpty!28193 (ListLongMap!1603) Bool)

(assert (=> b!4354756 (= e!2709991 (not (isEmpty!28193 lm!1707)))))

(declare-fun e!2709990 () Bool)

(assert (=> b!4354756 e!2709990))

(declare-fun res!1789600 () Bool)

(assert (=> b!4354756 (=> (not res!1789600) (not e!2709990))))

(declare-fun lt!1567543 () ListLongMap!1603)

(declare-fun lt!1567548 () tuple2!48312)

(declare-datatypes ((ListMap!2197 0))(
  ( (ListMap!2198 (toList!2954 List!49043)) )
))
(declare-fun lt!1567542 () ListMap!2197)

(declare-fun lt!1567541 () tuple2!48310)

(declare-fun eq!255 (ListMap!2197 ListMap!2197) Bool)

(declare-fun extractMap!544 (List!49044) ListMap!2197)

(declare-fun +!627 (ListLongMap!1603 tuple2!48312) ListLongMap!1603)

(declare-fun +!628 (ListMap!2197 tuple2!48310) ListMap!2197)

(assert (=> b!4354756 (= res!1789600 (eq!255 (extractMap!544 (toList!2953 (+!627 lt!1567543 lt!1567548))) (+!628 lt!1567542 lt!1567541)))))

(declare-fun newBucket!200 () List!49043)

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4877 0))(
  ( (HashableExt!4876 (__x!30580 Int)) )
))
(declare-fun hashF!1247 () Hashable!4877)

(declare-fun key!3918 () K!10280)

(declare-fun newValue!99 () V!10526)

(declare-datatypes ((Unit!71399 0))(
  ( (Unit!71400) )
))
(declare-fun lt!1567552 () Unit!71399)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!89 (ListLongMap!1603 (_ BitVec 64) List!49043 K!10280 V!10526 Hashable!4877) Unit!71399)

(assert (=> b!4354756 (= lt!1567552 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!89 lt!1567543 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11115 (ListMap!2197 K!10280) Bool)

(assert (=> b!4354756 (contains!11115 lt!1567542 key!3918)))

(assert (=> b!4354756 (= lt!1567542 (extractMap!544 (toList!2953 lt!1567543)))))

(declare-fun tail!6988 (ListLongMap!1603) ListLongMap!1603)

(assert (=> b!4354756 (= lt!1567543 (tail!6988 lm!1707))))

(declare-fun lt!1567553 () ListMap!2197)

(assert (=> b!4354756 (contains!11115 lt!1567553 key!3918)))

(declare-fun lt!1567540 () Unit!71399)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!28 (List!49043 K!10280 V!10526 ListMap!2197) Unit!71399)

(assert (=> b!4354756 (= lt!1567540 (lemmaAddToMapContainsAndNotInListThenInAcc!28 (_2!27450 (h!54467 (toList!2953 lm!1707))) key!3918 newValue!99 lt!1567553))))

(assert (=> b!4354756 (= lt!1567553 (extractMap!544 (t!355964 (toList!2953 lm!1707))))))

(declare-fun e!2709985 () Bool)

(assert (=> b!4354756 e!2709985))

(declare-fun res!1789592 () Bool)

(assert (=> b!4354756 (=> (not res!1789592) (not e!2709985))))

(declare-fun containsKey!678 (List!49043 K!10280) Bool)

(declare-fun apply!11337 (ListLongMap!1603 (_ BitVec 64)) List!49043)

(assert (=> b!4354756 (= res!1789592 (not (containsKey!678 (apply!11337 lm!1707 (_1!27450 (h!54467 (toList!2953 lm!1707)))) key!3918)))))

(declare-fun lt!1567554 () Unit!71399)

(declare-fun lemmaNotSameHashThenCannotContainKey!32 (ListLongMap!1603 K!10280 (_ BitVec 64) Hashable!4877) Unit!71399)

(assert (=> b!4354756 (= lt!1567554 (lemmaNotSameHashThenCannotContainKey!32 lm!1707 key!3918 (_1!27450 (h!54467 (toList!2953 lm!1707))) hashF!1247))))

(declare-fun b!4354757 () Bool)

(declare-fun res!1789599 () Bool)

(declare-fun e!2709988 () Bool)

(assert (=> b!4354757 (=> (not res!1789599) (not e!2709988))))

(declare-fun hash!1537 (Hashable!4877 K!10280) (_ BitVec 64))

(assert (=> b!4354757 (= res!1789599 (= (hash!1537 hashF!1247 key!3918) hash!377))))

(declare-fun b!4354758 () Bool)

(declare-fun e!2709987 () Bool)

(assert (=> b!4354758 (= e!2709987 e!2709991)))

(declare-fun res!1789591 () Bool)

(assert (=> b!4354758 (=> res!1789591 e!2709991)))

(get-info :version)

(assert (=> b!4354758 (= res!1789591 (or (and ((_ is Cons!48920) (toList!2953 lm!1707)) (= (_1!27450 (h!54467 (toList!2953 lm!1707))) hash!377)) (not ((_ is Cons!48920) (toList!2953 lm!1707))) (= (_1!27450 (h!54467 (toList!2953 lm!1707))) hash!377)))))

(declare-fun e!2709992 () Bool)

(assert (=> b!4354758 e!2709992))

(declare-fun res!1789590 () Bool)

(assert (=> b!4354758 (=> (not res!1789590) (not e!2709992))))

(declare-fun lt!1567544 () ListLongMap!1603)

(declare-fun lambda!140085 () Int)

(declare-fun forall!9110 (List!49044 Int) Bool)

(assert (=> b!4354758 (= res!1789590 (forall!9110 (toList!2953 lt!1567544) lambda!140085))))

(assert (=> b!4354758 (= lt!1567544 (+!627 lm!1707 lt!1567548))))

(assert (=> b!4354758 (= lt!1567548 (tuple2!48313 hash!377 newBucket!200))))

(declare-fun lt!1567550 () Unit!71399)

(declare-fun addValidProp!139 (ListLongMap!1603 Int (_ BitVec 64) List!49043) Unit!71399)

(assert (=> b!4354758 (= lt!1567550 (addValidProp!139 lm!1707 lambda!140085 hash!377 newBucket!200))))

(assert (=> b!4354758 (forall!9110 (toList!2953 lm!1707) lambda!140085)))

(declare-fun b!4354759 () Bool)

(declare-fun res!1789601 () Bool)

(declare-fun e!2709984 () Bool)

(assert (=> b!4354759 (=> (not res!1789601) (not e!2709984))))

(declare-fun contains!11116 (ListLongMap!1603 (_ BitVec 64)) Bool)

(assert (=> b!4354759 (= res!1789601 (contains!11116 lm!1707 hash!377))))

(declare-fun b!4354760 () Bool)

(assert (=> b!4354760 (= e!2709992 (forall!9110 (toList!2953 lt!1567544) lambda!140085))))

(declare-fun b!4354761 () Bool)

(declare-fun res!1789595 () Bool)

(assert (=> b!4354761 (=> res!1789595 e!2709987)))

(declare-fun noDuplicateKeys!485 (List!49043) Bool)

(assert (=> b!4354761 (= res!1789595 (not (noDuplicateKeys!485 newBucket!200)))))

(declare-fun res!1789597 () Bool)

(assert (=> start!421280 (=> (not res!1789597) (not e!2709988))))

(assert (=> start!421280 (= res!1789597 (forall!9110 (toList!2953 lm!1707) lambda!140085))))

(assert (=> start!421280 e!2709988))

(declare-fun e!2709989 () Bool)

(assert (=> start!421280 e!2709989))

(assert (=> start!421280 true))

(declare-fun e!2709986 () Bool)

(declare-fun inv!64466 (ListLongMap!1603) Bool)

(assert (=> start!421280 (and (inv!64466 lm!1707) e!2709986)))

(declare-fun tp_is_empty!25177 () Bool)

(assert (=> start!421280 tp_is_empty!25177))

(declare-fun tp_is_empty!25179 () Bool)

(assert (=> start!421280 tp_is_empty!25179))

(declare-fun b!4354762 () Bool)

(declare-fun tp!1330064 () Bool)

(assert (=> b!4354762 (= e!2709986 tp!1330064)))

(declare-fun b!4354763 () Bool)

(declare-fun res!1789589 () Bool)

(assert (=> b!4354763 (=> (not res!1789589) (not e!2709990))))

(declare-fun head!9040 (ListLongMap!1603) tuple2!48312)

(assert (=> b!4354763 (= res!1789589 (not (= (head!9040 lm!1707) lt!1567548)))))

(declare-fun b!4354764 () Bool)

(declare-fun res!1789598 () Bool)

(assert (=> b!4354764 (=> (not res!1789598) (not e!2709988))))

(declare-fun allKeysSameHashInMap!589 (ListLongMap!1603 Hashable!4877) Bool)

(assert (=> b!4354764 (= res!1789598 (allKeysSameHashInMap!589 lm!1707 hashF!1247))))

(declare-fun b!4354765 () Bool)

(declare-fun res!1789594 () Bool)

(assert (=> b!4354765 (=> (not res!1789594) (not e!2709988))))

(declare-fun allKeysSameHash!443 (List!49043 (_ BitVec 64) Hashable!4877) Bool)

(assert (=> b!4354765 (= res!1789594 (allKeysSameHash!443 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4354766 () Bool)

(declare-fun lt!1567547 () ListMap!2197)

(declare-fun addToMapMapFromBucket!181 (List!49043 ListMap!2197) ListMap!2197)

(assert (=> b!4354766 (= e!2709990 (= lt!1567547 (addToMapMapFromBucket!181 (_2!27450 (h!54467 (toList!2953 lm!1707))) lt!1567542)))))

(declare-fun tp!1330063 () Bool)

(declare-fun b!4354767 () Bool)

(assert (=> b!4354767 (= e!2709989 (and tp_is_empty!25177 tp_is_empty!25179 tp!1330063))))

(declare-fun b!4354768 () Bool)

(assert (=> b!4354768 (= e!2709984 (not e!2709987))))

(declare-fun res!1789593 () Bool)

(assert (=> b!4354768 (=> res!1789593 e!2709987)))

(declare-fun lt!1567551 () List!49043)

(declare-fun removePairForKey!455 (List!49043 K!10280) List!49043)

(assert (=> b!4354768 (= res!1789593 (not (= newBucket!200 (Cons!48919 lt!1567541 (removePairForKey!455 lt!1567551 key!3918)))))))

(assert (=> b!4354768 (= lt!1567541 (tuple2!48311 key!3918 newValue!99))))

(declare-fun lt!1567549 () Unit!71399)

(declare-fun lt!1567546 () tuple2!48312)

(declare-fun forallContained!1751 (List!49044 Int tuple2!48312) Unit!71399)

(assert (=> b!4354768 (= lt!1567549 (forallContained!1751 (toList!2953 lm!1707) lambda!140085 lt!1567546))))

(declare-fun contains!11117 (List!49044 tuple2!48312) Bool)

(assert (=> b!4354768 (contains!11117 (toList!2953 lm!1707) lt!1567546)))

(assert (=> b!4354768 (= lt!1567546 (tuple2!48313 hash!377 lt!1567551))))

(declare-fun lt!1567545 () Unit!71399)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!332 (List!49044 (_ BitVec 64) List!49043) Unit!71399)

(assert (=> b!4354768 (= lt!1567545 (lemmaGetValueByKeyImpliesContainsTuple!332 (toList!2953 lm!1707) hash!377 lt!1567551))))

(assert (=> b!4354768 (= lt!1567551 (apply!11337 lm!1707 hash!377))))

(declare-fun b!4354769 () Bool)

(assert (=> b!4354769 (= e!2709988 e!2709984)))

(declare-fun res!1789596 () Bool)

(assert (=> b!4354769 (=> (not res!1789596) (not e!2709984))))

(assert (=> b!4354769 (= res!1789596 (contains!11115 lt!1567547 key!3918))))

(assert (=> b!4354769 (= lt!1567547 (extractMap!544 (toList!2953 lm!1707)))))

(declare-fun b!4354770 () Bool)

(assert (=> b!4354770 (= e!2709985 (not (containsKey!678 (_2!27450 (h!54467 (toList!2953 lm!1707))) key!3918)))))

(assert (= (and start!421280 res!1789597) b!4354764))

(assert (= (and b!4354764 res!1789598) b!4354757))

(assert (= (and b!4354757 res!1789599) b!4354765))

(assert (= (and b!4354765 res!1789594) b!4354769))

(assert (= (and b!4354769 res!1789596) b!4354759))

(assert (= (and b!4354759 res!1789601) b!4354768))

(assert (= (and b!4354768 (not res!1789593)) b!4354761))

(assert (= (and b!4354761 (not res!1789595)) b!4354758))

(assert (= (and b!4354758 res!1789590) b!4354760))

(assert (= (and b!4354758 (not res!1789591)) b!4354756))

(assert (= (and b!4354756 res!1789592) b!4354770))

(assert (= (and b!4354756 res!1789600) b!4354763))

(assert (= (and b!4354763 res!1789589) b!4354766))

(assert (= (and start!421280 ((_ is Cons!48919) newBucket!200)) b!4354767))

(assert (= start!421280 b!4354762))

(declare-fun m!4967403 () Bool)

(assert (=> b!4354763 m!4967403))

(declare-fun m!4967405 () Bool)

(assert (=> b!4354765 m!4967405))

(declare-fun m!4967407 () Bool)

(assert (=> b!4354761 m!4967407))

(declare-fun m!4967409 () Bool)

(assert (=> b!4354758 m!4967409))

(declare-fun m!4967411 () Bool)

(assert (=> b!4354758 m!4967411))

(declare-fun m!4967413 () Bool)

(assert (=> b!4354758 m!4967413))

(declare-fun m!4967415 () Bool)

(assert (=> b!4354758 m!4967415))

(assert (=> b!4354760 m!4967409))

(declare-fun m!4967417 () Bool)

(assert (=> b!4354759 m!4967417))

(declare-fun m!4967419 () Bool)

(assert (=> b!4354756 m!4967419))

(declare-fun m!4967421 () Bool)

(assert (=> b!4354756 m!4967421))

(declare-fun m!4967423 () Bool)

(assert (=> b!4354756 m!4967423))

(assert (=> b!4354756 m!4967423))

(declare-fun m!4967425 () Bool)

(assert (=> b!4354756 m!4967425))

(declare-fun m!4967427 () Bool)

(assert (=> b!4354756 m!4967427))

(declare-fun m!4967429 () Bool)

(assert (=> b!4354756 m!4967429))

(assert (=> b!4354756 m!4967425))

(declare-fun m!4967431 () Bool)

(assert (=> b!4354756 m!4967431))

(declare-fun m!4967433 () Bool)

(assert (=> b!4354756 m!4967433))

(declare-fun m!4967435 () Bool)

(assert (=> b!4354756 m!4967435))

(declare-fun m!4967437 () Bool)

(assert (=> b!4354756 m!4967437))

(declare-fun m!4967439 () Bool)

(assert (=> b!4354756 m!4967439))

(declare-fun m!4967441 () Bool)

(assert (=> b!4354756 m!4967441))

(declare-fun m!4967443 () Bool)

(assert (=> b!4354756 m!4967443))

(declare-fun m!4967445 () Bool)

(assert (=> b!4354756 m!4967445))

(assert (=> b!4354756 m!4967445))

(declare-fun m!4967447 () Bool)

(assert (=> b!4354756 m!4967447))

(declare-fun m!4967449 () Bool)

(assert (=> b!4354768 m!4967449))

(declare-fun m!4967451 () Bool)

(assert (=> b!4354768 m!4967451))

(declare-fun m!4967453 () Bool)

(assert (=> b!4354768 m!4967453))

(declare-fun m!4967455 () Bool)

(assert (=> b!4354768 m!4967455))

(declare-fun m!4967457 () Bool)

(assert (=> b!4354768 m!4967457))

(assert (=> start!421280 m!4967415))

(declare-fun m!4967459 () Bool)

(assert (=> start!421280 m!4967459))

(declare-fun m!4967461 () Bool)

(assert (=> b!4354769 m!4967461))

(declare-fun m!4967463 () Bool)

(assert (=> b!4354769 m!4967463))

(declare-fun m!4967465 () Bool)

(assert (=> b!4354766 m!4967465))

(declare-fun m!4967467 () Bool)

(assert (=> b!4354764 m!4967467))

(declare-fun m!4967469 () Bool)

(assert (=> b!4354770 m!4967469))

(declare-fun m!4967471 () Bool)

(assert (=> b!4354757 m!4967471))

(check-sat (not b!4354763) (not b!4354761) (not b!4354760) (not b!4354756) (not b!4354765) (not b!4354758) (not b!4354766) (not b!4354759) tp_is_empty!25177 (not b!4354767) (not b!4354769) (not start!421280) (not b!4354768) (not b!4354770) (not b!4354762) (not b!4354764) tp_is_empty!25179 (not b!4354757))
(check-sat)
(get-model)

(declare-fun d!1286942 () Bool)

(declare-datatypes ((Option!10460 0))(
  ( (None!10459) (Some!10459 (v!43321 List!49043)) )
))
(declare-fun get!15889 (Option!10460) List!49043)

(declare-fun getValueByKey!446 (List!49044 (_ BitVec 64)) Option!10460)

(assert (=> d!1286942 (= (apply!11337 lm!1707 hash!377) (get!15889 (getValueByKey!446 (toList!2953 lm!1707) hash!377)))))

(declare-fun bs!630454 () Bool)

(assert (= bs!630454 d!1286942))

(declare-fun m!4967497 () Bool)

(assert (=> bs!630454 m!4967497))

(assert (=> bs!630454 m!4967497))

(declare-fun m!4967499 () Bool)

(assert (=> bs!630454 m!4967499))

(assert (=> b!4354768 d!1286942))

(declare-fun d!1286946 () Bool)

(declare-fun lt!1567572 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7710 (List!49044) (InoxSet tuple2!48312))

(assert (=> d!1286946 (= lt!1567572 (select (content!7710 (toList!2953 lm!1707)) lt!1567546))))

(declare-fun e!2710011 () Bool)

(assert (=> d!1286946 (= lt!1567572 e!2710011)))

(declare-fun res!1789624 () Bool)

(assert (=> d!1286946 (=> (not res!1789624) (not e!2710011))))

(assert (=> d!1286946 (= res!1789624 ((_ is Cons!48920) (toList!2953 lm!1707)))))

(assert (=> d!1286946 (= (contains!11117 (toList!2953 lm!1707) lt!1567546) lt!1567572)))

(declare-fun b!4354797 () Bool)

(declare-fun e!2710012 () Bool)

(assert (=> b!4354797 (= e!2710011 e!2710012)))

(declare-fun res!1789623 () Bool)

(assert (=> b!4354797 (=> res!1789623 e!2710012)))

(assert (=> b!4354797 (= res!1789623 (= (h!54467 (toList!2953 lm!1707)) lt!1567546))))

(declare-fun b!4354798 () Bool)

(assert (=> b!4354798 (= e!2710012 (contains!11117 (t!355964 (toList!2953 lm!1707)) lt!1567546))))

(assert (= (and d!1286946 res!1789624) b!4354797))

(assert (= (and b!4354797 (not res!1789623)) b!4354798))

(declare-fun m!4967507 () Bool)

(assert (=> d!1286946 m!4967507))

(declare-fun m!4967509 () Bool)

(assert (=> d!1286946 m!4967509))

(declare-fun m!4967511 () Bool)

(assert (=> b!4354798 m!4967511))

(assert (=> b!4354768 d!1286946))

(declare-fun d!1286952 () Bool)

(declare-fun dynLambda!20629 (Int tuple2!48312) Bool)

(assert (=> d!1286952 (dynLambda!20629 lambda!140085 lt!1567546)))

(declare-fun lt!1567575 () Unit!71399)

(declare-fun choose!26864 (List!49044 Int tuple2!48312) Unit!71399)

(assert (=> d!1286952 (= lt!1567575 (choose!26864 (toList!2953 lm!1707) lambda!140085 lt!1567546))))

(declare-fun e!2710015 () Bool)

(assert (=> d!1286952 e!2710015))

(declare-fun res!1789627 () Bool)

(assert (=> d!1286952 (=> (not res!1789627) (not e!2710015))))

(assert (=> d!1286952 (= res!1789627 (forall!9110 (toList!2953 lm!1707) lambda!140085))))

(assert (=> d!1286952 (= (forallContained!1751 (toList!2953 lm!1707) lambda!140085 lt!1567546) lt!1567575)))

(declare-fun b!4354801 () Bool)

(assert (=> b!4354801 (= e!2710015 (contains!11117 (toList!2953 lm!1707) lt!1567546))))

(assert (= (and d!1286952 res!1789627) b!4354801))

(declare-fun b_lambda!130953 () Bool)

(assert (=> (not b_lambda!130953) (not d!1286952)))

(declare-fun m!4967513 () Bool)

(assert (=> d!1286952 m!4967513))

(declare-fun m!4967515 () Bool)

(assert (=> d!1286952 m!4967515))

(assert (=> d!1286952 m!4967415))

(assert (=> b!4354801 m!4967451))

(assert (=> b!4354768 d!1286952))

(declare-fun d!1286954 () Bool)

(assert (=> d!1286954 (contains!11117 (toList!2953 lm!1707) (tuple2!48313 hash!377 lt!1567551))))

(declare-fun lt!1567602 () Unit!71399)

(declare-fun choose!26865 (List!49044 (_ BitVec 64) List!49043) Unit!71399)

(assert (=> d!1286954 (= lt!1567602 (choose!26865 (toList!2953 lm!1707) hash!377 lt!1567551))))

(declare-fun e!2710036 () Bool)

(assert (=> d!1286954 e!2710036))

(declare-fun res!1789639 () Bool)

(assert (=> d!1286954 (=> (not res!1789639) (not e!2710036))))

(declare-fun isStrictlySorted!100 (List!49044) Bool)

(assert (=> d!1286954 (= res!1789639 (isStrictlySorted!100 (toList!2953 lm!1707)))))

(assert (=> d!1286954 (= (lemmaGetValueByKeyImpliesContainsTuple!332 (toList!2953 lm!1707) hash!377 lt!1567551) lt!1567602)))

(declare-fun b!4354831 () Bool)

(assert (=> b!4354831 (= e!2710036 (= (getValueByKey!446 (toList!2953 lm!1707) hash!377) (Some!10459 lt!1567551)))))

(assert (= (and d!1286954 res!1789639) b!4354831))

(declare-fun m!4967537 () Bool)

(assert (=> d!1286954 m!4967537))

(declare-fun m!4967539 () Bool)

(assert (=> d!1286954 m!4967539))

(declare-fun m!4967541 () Bool)

(assert (=> d!1286954 m!4967541))

(assert (=> b!4354831 m!4967497))

(assert (=> b!4354768 d!1286954))

(declare-fun b!4354849 () Bool)

(declare-fun e!2710045 () List!49043)

(assert (=> b!4354849 (= e!2710045 Nil!48919)))

(declare-fun b!4354847 () Bool)

(declare-fun e!2710044 () List!49043)

(assert (=> b!4354847 (= e!2710044 e!2710045)))

(declare-fun c!740358 () Bool)

(assert (=> b!4354847 (= c!740358 ((_ is Cons!48919) lt!1567551))))

(declare-fun b!4354848 () Bool)

(assert (=> b!4354848 (= e!2710045 (Cons!48919 (h!54466 lt!1567551) (removePairForKey!455 (t!355963 lt!1567551) key!3918)))))

(declare-fun d!1286958 () Bool)

(declare-fun lt!1567608 () List!49043)

(assert (=> d!1286958 (not (containsKey!678 lt!1567608 key!3918))))

(assert (=> d!1286958 (= lt!1567608 e!2710044)))

(declare-fun c!740357 () Bool)

(assert (=> d!1286958 (= c!740357 (and ((_ is Cons!48919) lt!1567551) (= (_1!27449 (h!54466 lt!1567551)) key!3918)))))

(assert (=> d!1286958 (noDuplicateKeys!485 lt!1567551)))

(assert (=> d!1286958 (= (removePairForKey!455 lt!1567551 key!3918) lt!1567608)))

(declare-fun b!4354846 () Bool)

(assert (=> b!4354846 (= e!2710044 (t!355963 lt!1567551))))

(assert (= (and d!1286958 c!740357) b!4354846))

(assert (= (and d!1286958 (not c!740357)) b!4354847))

(assert (= (and b!4354847 c!740358) b!4354848))

(assert (= (and b!4354847 (not c!740358)) b!4354849))

(declare-fun m!4967555 () Bool)

(assert (=> b!4354848 m!4967555))

(declare-fun m!4967557 () Bool)

(assert (=> d!1286958 m!4967557))

(declare-fun m!4967559 () Bool)

(assert (=> d!1286958 m!4967559))

(assert (=> b!4354768 d!1286958))

(declare-fun d!1286966 () Bool)

(declare-fun hash!1543 (Hashable!4877 K!10280) (_ BitVec 64))

(assert (=> d!1286966 (= (hash!1537 hashF!1247 key!3918) (hash!1543 hashF!1247 key!3918))))

(declare-fun bs!630459 () Bool)

(assert (= bs!630459 d!1286966))

(declare-fun m!4967565 () Bool)

(assert (=> bs!630459 m!4967565))

(assert (=> b!4354757 d!1286966))

(declare-fun d!1286970 () Bool)

(declare-fun res!1789647 () Bool)

(declare-fun e!2710059 () Bool)

(assert (=> d!1286970 (=> res!1789647 e!2710059)))

(assert (=> d!1286970 (= res!1789647 ((_ is Nil!48920) (toList!2953 lt!1567544)))))

(assert (=> d!1286970 (= (forall!9110 (toList!2953 lt!1567544) lambda!140085) e!2710059)))

(declare-fun b!4354869 () Bool)

(declare-fun e!2710060 () Bool)

(assert (=> b!4354869 (= e!2710059 e!2710060)))

(declare-fun res!1789648 () Bool)

(assert (=> b!4354869 (=> (not res!1789648) (not e!2710060))))

(assert (=> b!4354869 (= res!1789648 (dynLambda!20629 lambda!140085 (h!54467 (toList!2953 lt!1567544))))))

(declare-fun b!4354870 () Bool)

(assert (=> b!4354870 (= e!2710060 (forall!9110 (t!355964 (toList!2953 lt!1567544)) lambda!140085))))

(assert (= (and d!1286970 (not res!1789647)) b!4354869))

(assert (= (and b!4354869 res!1789648) b!4354870))

(declare-fun b_lambda!130957 () Bool)

(assert (=> (not b_lambda!130957) (not b!4354869)))

(declare-fun m!4967573 () Bool)

(assert (=> b!4354869 m!4967573))

(declare-fun m!4967575 () Bool)

(assert (=> b!4354870 m!4967575))

(assert (=> b!4354758 d!1286970))

(declare-fun d!1286974 () Bool)

(declare-fun e!2710096 () Bool)

(assert (=> d!1286974 e!2710096))

(declare-fun res!1789681 () Bool)

(assert (=> d!1286974 (=> (not res!1789681) (not e!2710096))))

(declare-fun lt!1567650 () ListLongMap!1603)

(assert (=> d!1286974 (= res!1789681 (contains!11116 lt!1567650 (_1!27450 lt!1567548)))))

(declare-fun lt!1567652 () List!49044)

(assert (=> d!1286974 (= lt!1567650 (ListLongMap!1604 lt!1567652))))

(declare-fun lt!1567649 () Unit!71399)

(declare-fun lt!1567651 () Unit!71399)

(assert (=> d!1286974 (= lt!1567649 lt!1567651)))

(assert (=> d!1286974 (= (getValueByKey!446 lt!1567652 (_1!27450 lt!1567548)) (Some!10459 (_2!27450 lt!1567548)))))

(declare-fun lemmaContainsTupThenGetReturnValue!220 (List!49044 (_ BitVec 64) List!49043) Unit!71399)

(assert (=> d!1286974 (= lt!1567651 (lemmaContainsTupThenGetReturnValue!220 lt!1567652 (_1!27450 lt!1567548) (_2!27450 lt!1567548)))))

(declare-fun insertStrictlySorted!131 (List!49044 (_ BitVec 64) List!49043) List!49044)

(assert (=> d!1286974 (= lt!1567652 (insertStrictlySorted!131 (toList!2953 lm!1707) (_1!27450 lt!1567548) (_2!27450 lt!1567548)))))

(assert (=> d!1286974 (= (+!627 lm!1707 lt!1567548) lt!1567650)))

(declare-fun b!4354914 () Bool)

(declare-fun res!1789680 () Bool)

(assert (=> b!4354914 (=> (not res!1789680) (not e!2710096))))

(assert (=> b!4354914 (= res!1789680 (= (getValueByKey!446 (toList!2953 lt!1567650) (_1!27450 lt!1567548)) (Some!10459 (_2!27450 lt!1567548))))))

(declare-fun b!4354915 () Bool)

(assert (=> b!4354915 (= e!2710096 (contains!11117 (toList!2953 lt!1567650) lt!1567548))))

(assert (= (and d!1286974 res!1789681) b!4354914))

(assert (= (and b!4354914 res!1789680) b!4354915))

(declare-fun m!4967641 () Bool)

(assert (=> d!1286974 m!4967641))

(declare-fun m!4967643 () Bool)

(assert (=> d!1286974 m!4967643))

(declare-fun m!4967645 () Bool)

(assert (=> d!1286974 m!4967645))

(declare-fun m!4967647 () Bool)

(assert (=> d!1286974 m!4967647))

(declare-fun m!4967649 () Bool)

(assert (=> b!4354914 m!4967649))

(declare-fun m!4967651 () Bool)

(assert (=> b!4354915 m!4967651))

(assert (=> b!4354758 d!1286974))

(declare-fun d!1286998 () Bool)

(assert (=> d!1286998 (forall!9110 (toList!2953 (+!627 lm!1707 (tuple2!48313 hash!377 newBucket!200))) lambda!140085)))

(declare-fun lt!1567673 () Unit!71399)

(declare-fun choose!26867 (ListLongMap!1603 Int (_ BitVec 64) List!49043) Unit!71399)

(assert (=> d!1286998 (= lt!1567673 (choose!26867 lm!1707 lambda!140085 hash!377 newBucket!200))))

(declare-fun e!2710108 () Bool)

(assert (=> d!1286998 e!2710108))

(declare-fun res!1789691 () Bool)

(assert (=> d!1286998 (=> (not res!1789691) (not e!2710108))))

(assert (=> d!1286998 (= res!1789691 (forall!9110 (toList!2953 lm!1707) lambda!140085))))

(assert (=> d!1286998 (= (addValidProp!139 lm!1707 lambda!140085 hash!377 newBucket!200) lt!1567673)))

(declare-fun b!4354932 () Bool)

(assert (=> b!4354932 (= e!2710108 (dynLambda!20629 lambda!140085 (tuple2!48313 hash!377 newBucket!200)))))

(assert (= (and d!1286998 res!1789691) b!4354932))

(declare-fun b_lambda!130959 () Bool)

(assert (=> (not b_lambda!130959) (not b!4354932)))

(declare-fun m!4967687 () Bool)

(assert (=> d!1286998 m!4967687))

(declare-fun m!4967689 () Bool)

(assert (=> d!1286998 m!4967689))

(declare-fun m!4967691 () Bool)

(assert (=> d!1286998 m!4967691))

(assert (=> d!1286998 m!4967415))

(declare-fun m!4967693 () Bool)

(assert (=> b!4354932 m!4967693))

(assert (=> b!4354758 d!1286998))

(declare-fun d!1287010 () Bool)

(declare-fun res!1789692 () Bool)

(declare-fun e!2710109 () Bool)

(assert (=> d!1287010 (=> res!1789692 e!2710109)))

(assert (=> d!1287010 (= res!1789692 ((_ is Nil!48920) (toList!2953 lm!1707)))))

(assert (=> d!1287010 (= (forall!9110 (toList!2953 lm!1707) lambda!140085) e!2710109)))

(declare-fun b!4354933 () Bool)

(declare-fun e!2710110 () Bool)

(assert (=> b!4354933 (= e!2710109 e!2710110)))

(declare-fun res!1789693 () Bool)

(assert (=> b!4354933 (=> (not res!1789693) (not e!2710110))))

(assert (=> b!4354933 (= res!1789693 (dynLambda!20629 lambda!140085 (h!54467 (toList!2953 lm!1707))))))

(declare-fun b!4354934 () Bool)

(assert (=> b!4354934 (= e!2710110 (forall!9110 (t!355964 (toList!2953 lm!1707)) lambda!140085))))

(assert (= (and d!1287010 (not res!1789692)) b!4354933))

(assert (= (and b!4354933 res!1789693) b!4354934))

(declare-fun b_lambda!130961 () Bool)

(assert (=> (not b_lambda!130961) (not b!4354933)))

(declare-fun m!4967695 () Bool)

(assert (=> b!4354933 m!4967695))

(declare-fun m!4967697 () Bool)

(assert (=> b!4354934 m!4967697))

(assert (=> b!4354758 d!1287010))

(declare-fun bm!302614 () Bool)

(declare-fun call!302619 () Bool)

(declare-datatypes ((List!49046 0))(
  ( (Nil!48922) (Cons!48922 (h!54471 K!10280) (t!355966 List!49046)) )
))
(declare-fun e!2710132 () List!49046)

(declare-fun contains!11120 (List!49046 K!10280) Bool)

(assert (=> bm!302614 (= call!302619 (contains!11120 e!2710132 key!3918))))

(declare-fun c!740383 () Bool)

(declare-fun c!740384 () Bool)

(assert (=> bm!302614 (= c!740383 c!740384)))

(declare-fun b!4354967 () Bool)

(declare-fun e!2710131 () Bool)

(declare-fun e!2710134 () Bool)

(assert (=> b!4354967 (= e!2710131 e!2710134)))

(declare-fun res!1789706 () Bool)

(assert (=> b!4354967 (=> (not res!1789706) (not e!2710134))))

(declare-datatypes ((Option!10461 0))(
  ( (None!10460) (Some!10460 (v!43322 V!10526)) )
))
(declare-fun isDefined!7754 (Option!10461) Bool)

(declare-fun getValueByKey!447 (List!49043 K!10280) Option!10461)

(assert (=> b!4354967 (= res!1789706 (isDefined!7754 (getValueByKey!447 (toList!2954 lt!1567547) key!3918)))))

(declare-fun b!4354968 () Bool)

(declare-fun e!2710133 () Bool)

(declare-fun keys!16520 (ListMap!2197) List!49046)

(assert (=> b!4354968 (= e!2710133 (not (contains!11120 (keys!16520 lt!1567547) key!3918)))))

(declare-fun b!4354969 () Bool)

(declare-fun e!2710129 () Unit!71399)

(declare-fun Unit!71408 () Unit!71399)

(assert (=> b!4354969 (= e!2710129 Unit!71408)))

(declare-fun b!4354970 () Bool)

(declare-fun e!2710130 () Unit!71399)

(declare-fun lt!1567714 () Unit!71399)

(assert (=> b!4354970 (= e!2710130 lt!1567714)))

(declare-fun lt!1567715 () Unit!71399)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!357 (List!49043 K!10280) Unit!71399)

(assert (=> b!4354970 (= lt!1567715 (lemmaContainsKeyImpliesGetValueByKeyDefined!357 (toList!2954 lt!1567547) key!3918))))

(assert (=> b!4354970 (isDefined!7754 (getValueByKey!447 (toList!2954 lt!1567547) key!3918))))

(declare-fun lt!1567712 () Unit!71399)

(assert (=> b!4354970 (= lt!1567712 lt!1567715)))

(declare-fun lemmaInListThenGetKeysListContains!119 (List!49043 K!10280) Unit!71399)

(assert (=> b!4354970 (= lt!1567714 (lemmaInListThenGetKeysListContains!119 (toList!2954 lt!1567547) key!3918))))

(assert (=> b!4354970 call!302619))

(declare-fun b!4354971 () Bool)

(assert (=> b!4354971 (= e!2710132 (keys!16520 lt!1567547))))

(declare-fun d!1287012 () Bool)

(assert (=> d!1287012 e!2710131))

(declare-fun res!1789707 () Bool)

(assert (=> d!1287012 (=> res!1789707 e!2710131)))

(assert (=> d!1287012 (= res!1789707 e!2710133)))

(declare-fun res!1789708 () Bool)

(assert (=> d!1287012 (=> (not res!1789708) (not e!2710133))))

(declare-fun lt!1567711 () Bool)

(assert (=> d!1287012 (= res!1789708 (not lt!1567711))))

(declare-fun lt!1567710 () Bool)

(assert (=> d!1287012 (= lt!1567711 lt!1567710)))

(declare-fun lt!1567709 () Unit!71399)

(assert (=> d!1287012 (= lt!1567709 e!2710130)))

(assert (=> d!1287012 (= c!740384 lt!1567710)))

(declare-fun containsKey!681 (List!49043 K!10280) Bool)

(assert (=> d!1287012 (= lt!1567710 (containsKey!681 (toList!2954 lt!1567547) key!3918))))

(assert (=> d!1287012 (= (contains!11115 lt!1567547 key!3918) lt!1567711)))

(declare-fun b!4354972 () Bool)

(assert (=> b!4354972 false))

(declare-fun lt!1567708 () Unit!71399)

(declare-fun lt!1567713 () Unit!71399)

(assert (=> b!4354972 (= lt!1567708 lt!1567713)))

(assert (=> b!4354972 (containsKey!681 (toList!2954 lt!1567547) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!120 (List!49043 K!10280) Unit!71399)

(assert (=> b!4354972 (= lt!1567713 (lemmaInGetKeysListThenContainsKey!120 (toList!2954 lt!1567547) key!3918))))

(declare-fun Unit!71409 () Unit!71399)

(assert (=> b!4354972 (= e!2710129 Unit!71409)))

(declare-fun b!4354973 () Bool)

(assert (=> b!4354973 (= e!2710134 (contains!11120 (keys!16520 lt!1567547) key!3918))))

(declare-fun b!4354974 () Bool)

(declare-fun getKeysList!122 (List!49043) List!49046)

(assert (=> b!4354974 (= e!2710132 (getKeysList!122 (toList!2954 lt!1567547)))))

(declare-fun b!4354975 () Bool)

(assert (=> b!4354975 (= e!2710130 e!2710129)))

(declare-fun c!740385 () Bool)

(assert (=> b!4354975 (= c!740385 call!302619)))

(assert (= (and d!1287012 c!740384) b!4354970))

(assert (= (and d!1287012 (not c!740384)) b!4354975))

(assert (= (and b!4354975 c!740385) b!4354972))

(assert (= (and b!4354975 (not c!740385)) b!4354969))

(assert (= (or b!4354970 b!4354975) bm!302614))

(assert (= (and bm!302614 c!740383) b!4354974))

(assert (= (and bm!302614 (not c!740383)) b!4354971))

(assert (= (and d!1287012 res!1789708) b!4354968))

(assert (= (and d!1287012 (not res!1789707)) b!4354967))

(assert (= (and b!4354967 res!1789706) b!4354973))

(declare-fun m!4967751 () Bool)

(assert (=> b!4354971 m!4967751))

(assert (=> b!4354968 m!4967751))

(assert (=> b!4354968 m!4967751))

(declare-fun m!4967753 () Bool)

(assert (=> b!4354968 m!4967753))

(declare-fun m!4967755 () Bool)

(assert (=> b!4354970 m!4967755))

(declare-fun m!4967757 () Bool)

(assert (=> b!4354970 m!4967757))

(assert (=> b!4354970 m!4967757))

(declare-fun m!4967759 () Bool)

(assert (=> b!4354970 m!4967759))

(declare-fun m!4967761 () Bool)

(assert (=> b!4354970 m!4967761))

(assert (=> b!4354973 m!4967751))

(assert (=> b!4354973 m!4967751))

(assert (=> b!4354973 m!4967753))

(declare-fun m!4967763 () Bool)

(assert (=> b!4354972 m!4967763))

(declare-fun m!4967765 () Bool)

(assert (=> b!4354972 m!4967765))

(assert (=> b!4354967 m!4967757))

(assert (=> b!4354967 m!4967757))

(assert (=> b!4354967 m!4967759))

(assert (=> d!1287012 m!4967763))

(declare-fun m!4967767 () Bool)

(assert (=> bm!302614 m!4967767))

(declare-fun m!4967769 () Bool)

(assert (=> b!4354974 m!4967769))

(assert (=> b!4354769 d!1287012))

(declare-fun bs!630497 () Bool)

(declare-fun d!1287028 () Bool)

(assert (= bs!630497 (and d!1287028 start!421280)))

(declare-fun lambda!140106 () Int)

(assert (=> bs!630497 (= lambda!140106 lambda!140085)))

(declare-fun lt!1567718 () ListMap!2197)

(declare-fun invariantList!674 (List!49043) Bool)

(assert (=> d!1287028 (invariantList!674 (toList!2954 lt!1567718))))

(declare-fun e!2710137 () ListMap!2197)

(assert (=> d!1287028 (= lt!1567718 e!2710137)))

(declare-fun c!740388 () Bool)

(assert (=> d!1287028 (= c!740388 ((_ is Cons!48920) (toList!2953 lm!1707)))))

(assert (=> d!1287028 (forall!9110 (toList!2953 lm!1707) lambda!140106)))

(assert (=> d!1287028 (= (extractMap!544 (toList!2953 lm!1707)) lt!1567718)))

(declare-fun b!4354980 () Bool)

(assert (=> b!4354980 (= e!2710137 (addToMapMapFromBucket!181 (_2!27450 (h!54467 (toList!2953 lm!1707))) (extractMap!544 (t!355964 (toList!2953 lm!1707)))))))

(declare-fun b!4354981 () Bool)

(assert (=> b!4354981 (= e!2710137 (ListMap!2198 Nil!48919))))

(assert (= (and d!1287028 c!740388) b!4354980))

(assert (= (and d!1287028 (not c!740388)) b!4354981))

(declare-fun m!4967771 () Bool)

(assert (=> d!1287028 m!4967771))

(declare-fun m!4967773 () Bool)

(assert (=> d!1287028 m!4967773))

(assert (=> b!4354980 m!4967441))

(assert (=> b!4354980 m!4967441))

(declare-fun m!4967775 () Bool)

(assert (=> b!4354980 m!4967775))

(assert (=> b!4354769 d!1287028))

(declare-fun d!1287030 () Bool)

(declare-fun res!1789713 () Bool)

(declare-fun e!2710142 () Bool)

(assert (=> d!1287030 (=> res!1789713 e!2710142)))

(assert (=> d!1287030 (= res!1789713 (and ((_ is Cons!48919) (_2!27450 (h!54467 (toList!2953 lm!1707)))) (= (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) key!3918)))))

(assert (=> d!1287030 (= (containsKey!678 (_2!27450 (h!54467 (toList!2953 lm!1707))) key!3918) e!2710142)))

(declare-fun b!4354986 () Bool)

(declare-fun e!2710143 () Bool)

(assert (=> b!4354986 (= e!2710142 e!2710143)))

(declare-fun res!1789714 () Bool)

(assert (=> b!4354986 (=> (not res!1789714) (not e!2710143))))

(assert (=> b!4354986 (= res!1789714 ((_ is Cons!48919) (_2!27450 (h!54467 (toList!2953 lm!1707)))))))

(declare-fun b!4354987 () Bool)

(assert (=> b!4354987 (= e!2710143 (containsKey!678 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))) key!3918))))

(assert (= (and d!1287030 (not res!1789713)) b!4354986))

(assert (= (and b!4354986 res!1789714) b!4354987))

(declare-fun m!4967777 () Bool)

(assert (=> b!4354987 m!4967777))

(assert (=> b!4354770 d!1287030))

(declare-fun d!1287032 () Bool)

(declare-fun e!2710149 () Bool)

(assert (=> d!1287032 e!2710149))

(declare-fun res!1789717 () Bool)

(assert (=> d!1287032 (=> res!1789717 e!2710149)))

(declare-fun lt!1567728 () Bool)

(assert (=> d!1287032 (= res!1789717 (not lt!1567728))))

(declare-fun lt!1567729 () Bool)

(assert (=> d!1287032 (= lt!1567728 lt!1567729)))

(declare-fun lt!1567727 () Unit!71399)

(declare-fun e!2710148 () Unit!71399)

(assert (=> d!1287032 (= lt!1567727 e!2710148)))

(declare-fun c!740391 () Bool)

(assert (=> d!1287032 (= c!740391 lt!1567729)))

(declare-fun containsKey!682 (List!49044 (_ BitVec 64)) Bool)

(assert (=> d!1287032 (= lt!1567729 (containsKey!682 (toList!2953 lm!1707) hash!377))))

(assert (=> d!1287032 (= (contains!11116 lm!1707 hash!377) lt!1567728)))

(declare-fun b!4354994 () Bool)

(declare-fun lt!1567730 () Unit!71399)

(assert (=> b!4354994 (= e!2710148 lt!1567730)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!358 (List!49044 (_ BitVec 64)) Unit!71399)

(assert (=> b!4354994 (= lt!1567730 (lemmaContainsKeyImpliesGetValueByKeyDefined!358 (toList!2953 lm!1707) hash!377))))

(declare-fun isDefined!7755 (Option!10460) Bool)

(assert (=> b!4354994 (isDefined!7755 (getValueByKey!446 (toList!2953 lm!1707) hash!377))))

(declare-fun b!4354995 () Bool)

(declare-fun Unit!71413 () Unit!71399)

(assert (=> b!4354995 (= e!2710148 Unit!71413)))

(declare-fun b!4354996 () Bool)

(assert (=> b!4354996 (= e!2710149 (isDefined!7755 (getValueByKey!446 (toList!2953 lm!1707) hash!377)))))

(assert (= (and d!1287032 c!740391) b!4354994))

(assert (= (and d!1287032 (not c!740391)) b!4354995))

(assert (= (and d!1287032 (not res!1789717)) b!4354996))

(declare-fun m!4967779 () Bool)

(assert (=> d!1287032 m!4967779))

(declare-fun m!4967781 () Bool)

(assert (=> b!4354994 m!4967781))

(assert (=> b!4354994 m!4967497))

(assert (=> b!4354994 m!4967497))

(declare-fun m!4967783 () Bool)

(assert (=> b!4354994 m!4967783))

(assert (=> b!4354996 m!4967497))

(assert (=> b!4354996 m!4967497))

(assert (=> b!4354996 m!4967783))

(assert (=> b!4354759 d!1287032))

(declare-fun d!1287034 () Bool)

(assert (=> d!1287034 true))

(assert (=> d!1287034 true))

(declare-fun lambda!140109 () Int)

(declare-fun forall!9112 (List!49043 Int) Bool)

(assert (=> d!1287034 (= (allKeysSameHash!443 newBucket!200 hash!377 hashF!1247) (forall!9112 newBucket!200 lambda!140109))))

(declare-fun bs!630498 () Bool)

(assert (= bs!630498 d!1287034))

(declare-fun m!4967785 () Bool)

(assert (=> bs!630498 m!4967785))

(assert (=> b!4354765 d!1287034))

(declare-fun bs!630509 () Bool)

(declare-fun b!4355041 () Bool)

(assert (= bs!630509 (and b!4355041 d!1287034)))

(declare-fun lambda!140170 () Int)

(assert (=> bs!630509 (not (= lambda!140170 lambda!140109))))

(assert (=> b!4355041 true))

(declare-fun bs!630510 () Bool)

(declare-fun b!4355039 () Bool)

(assert (= bs!630510 (and b!4355039 d!1287034)))

(declare-fun lambda!140171 () Int)

(assert (=> bs!630510 (not (= lambda!140171 lambda!140109))))

(declare-fun bs!630511 () Bool)

(assert (= bs!630511 (and b!4355039 b!4355041)))

(assert (=> bs!630511 (= lambda!140171 lambda!140170)))

(assert (=> b!4355039 true))

(declare-fun lambda!140172 () Int)

(assert (=> bs!630510 (not (= lambda!140172 lambda!140109))))

(declare-fun lt!1567836 () ListMap!2197)

(assert (=> bs!630511 (= (= lt!1567836 lt!1567542) (= lambda!140172 lambda!140170))))

(assert (=> b!4355039 (= (= lt!1567836 lt!1567542) (= lambda!140172 lambda!140171))))

(assert (=> b!4355039 true))

(declare-fun bs!630512 () Bool)

(declare-fun d!1287036 () Bool)

(assert (= bs!630512 (and d!1287036 d!1287034)))

(declare-fun lambda!140173 () Int)

(assert (=> bs!630512 (not (= lambda!140173 lambda!140109))))

(declare-fun bs!630513 () Bool)

(assert (= bs!630513 (and d!1287036 b!4355041)))

(declare-fun lt!1567853 () ListMap!2197)

(assert (=> bs!630513 (= (= lt!1567853 lt!1567542) (= lambda!140173 lambda!140170))))

(declare-fun bs!630514 () Bool)

(assert (= bs!630514 (and d!1287036 b!4355039)))

(assert (=> bs!630514 (= (= lt!1567853 lt!1567542) (= lambda!140173 lambda!140171))))

(assert (=> bs!630514 (= (= lt!1567853 lt!1567836) (= lambda!140173 lambda!140172))))

(assert (=> d!1287036 true))

(declare-fun b!4355038 () Bool)

(declare-fun res!1789733 () Bool)

(declare-fun e!2710173 () Bool)

(assert (=> b!4355038 (=> (not res!1789733) (not e!2710173))))

(assert (=> b!4355038 (= res!1789733 (forall!9112 (toList!2954 lt!1567542) lambda!140173))))

(declare-fun e!2710172 () ListMap!2197)

(assert (=> b!4355039 (= e!2710172 lt!1567836)))

(declare-fun lt!1567845 () ListMap!2197)

(assert (=> b!4355039 (= lt!1567845 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(assert (=> b!4355039 (= lt!1567836 (addToMapMapFromBucket!181 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))) (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(declare-fun lt!1567837 () Unit!71399)

(declare-fun call!302636 () Unit!71399)

(assert (=> b!4355039 (= lt!1567837 call!302636)))

(assert (=> b!4355039 (forall!9112 (toList!2954 lt!1567542) lambda!140171)))

(declare-fun lt!1567849 () Unit!71399)

(assert (=> b!4355039 (= lt!1567849 lt!1567837)))

(assert (=> b!4355039 (forall!9112 (toList!2954 lt!1567845) lambda!140172)))

(declare-fun lt!1567848 () Unit!71399)

(declare-fun Unit!71422 () Unit!71399)

(assert (=> b!4355039 (= lt!1567848 Unit!71422)))

(declare-fun call!302635 () Bool)

(assert (=> b!4355039 call!302635))

(declare-fun lt!1567840 () Unit!71399)

(declare-fun Unit!71423 () Unit!71399)

(assert (=> b!4355039 (= lt!1567840 Unit!71423)))

(declare-fun lt!1567856 () Unit!71399)

(declare-fun Unit!71424 () Unit!71399)

(assert (=> b!4355039 (= lt!1567856 Unit!71424)))

(declare-fun lt!1567854 () Unit!71399)

(declare-fun forallContained!1753 (List!49043 Int tuple2!48310) Unit!71399)

(assert (=> b!4355039 (= lt!1567854 (forallContained!1753 (toList!2954 lt!1567845) lambda!140172 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(assert (=> b!4355039 (contains!11115 lt!1567845 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(declare-fun lt!1567850 () Unit!71399)

(declare-fun Unit!71425 () Unit!71399)

(assert (=> b!4355039 (= lt!1567850 Unit!71425)))

(assert (=> b!4355039 (contains!11115 lt!1567836 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(declare-fun lt!1567855 () Unit!71399)

(declare-fun Unit!71426 () Unit!71399)

(assert (=> b!4355039 (= lt!1567855 Unit!71426)))

(assert (=> b!4355039 (forall!9112 (_2!27450 (h!54467 (toList!2953 lm!1707))) lambda!140172)))

(declare-fun lt!1567841 () Unit!71399)

(declare-fun Unit!71427 () Unit!71399)

(assert (=> b!4355039 (= lt!1567841 Unit!71427)))

(assert (=> b!4355039 (forall!9112 (toList!2954 lt!1567845) lambda!140172)))

(declare-fun lt!1567847 () Unit!71399)

(declare-fun Unit!71428 () Unit!71399)

(assert (=> b!4355039 (= lt!1567847 Unit!71428)))

(declare-fun lt!1567844 () Unit!71399)

(declare-fun Unit!71429 () Unit!71399)

(assert (=> b!4355039 (= lt!1567844 Unit!71429)))

(declare-fun lt!1567838 () Unit!71399)

(declare-fun addForallContainsKeyThenBeforeAdding!57 (ListMap!2197 ListMap!2197 K!10280 V!10526) Unit!71399)

(assert (=> b!4355039 (= lt!1567838 (addForallContainsKeyThenBeforeAdding!57 lt!1567542 lt!1567836 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (_2!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(declare-fun call!302637 () Bool)

(assert (=> b!4355039 call!302637))

(declare-fun lt!1567852 () Unit!71399)

(assert (=> b!4355039 (= lt!1567852 lt!1567838)))

(assert (=> b!4355039 (forall!9112 (toList!2954 lt!1567542) lambda!140172)))

(declare-fun lt!1567851 () Unit!71399)

(declare-fun Unit!71430 () Unit!71399)

(assert (=> b!4355039 (= lt!1567851 Unit!71430)))

(declare-fun res!1789735 () Bool)

(assert (=> b!4355039 (= res!1789735 (forall!9112 (_2!27450 (h!54467 (toList!2953 lm!1707))) lambda!140172))))

(declare-fun e!2710171 () Bool)

(assert (=> b!4355039 (=> (not res!1789735) (not e!2710171))))

(assert (=> b!4355039 e!2710171))

(declare-fun lt!1567842 () Unit!71399)

(declare-fun Unit!71431 () Unit!71399)

(assert (=> b!4355039 (= lt!1567842 Unit!71431)))

(declare-fun b!4355040 () Bool)

(assert (=> b!4355040 (= e!2710173 (invariantList!674 (toList!2954 lt!1567853)))))

(declare-fun bm!302630 () Bool)

(declare-fun c!740397 () Bool)

(assert (=> bm!302630 (= call!302635 (forall!9112 (ite c!740397 (toList!2954 lt!1567542) (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (ite c!740397 lambda!140170 lambda!140172)))))

(assert (=> b!4355041 (= e!2710172 lt!1567542)))

(declare-fun lt!1567846 () Unit!71399)

(assert (=> b!4355041 (= lt!1567846 call!302636)))

(assert (=> b!4355041 call!302637))

(declare-fun lt!1567839 () Unit!71399)

(assert (=> b!4355041 (= lt!1567839 lt!1567846)))

(assert (=> b!4355041 call!302635))

(declare-fun lt!1567843 () Unit!71399)

(declare-fun Unit!71432 () Unit!71399)

(assert (=> b!4355041 (= lt!1567843 Unit!71432)))

(declare-fun bm!302631 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!57 (ListMap!2197) Unit!71399)

(assert (=> bm!302631 (= call!302636 (lemmaContainsAllItsOwnKeys!57 lt!1567542))))

(assert (=> d!1287036 e!2710173))

(declare-fun res!1789734 () Bool)

(assert (=> d!1287036 (=> (not res!1789734) (not e!2710173))))

(assert (=> d!1287036 (= res!1789734 (forall!9112 (_2!27450 (h!54467 (toList!2953 lm!1707))) lambda!140173))))

(assert (=> d!1287036 (= lt!1567853 e!2710172)))

(assert (=> d!1287036 (= c!740397 ((_ is Nil!48919) (_2!27450 (h!54467 (toList!2953 lm!1707)))))))

(assert (=> d!1287036 (noDuplicateKeys!485 (_2!27450 (h!54467 (toList!2953 lm!1707))))))

(assert (=> d!1287036 (= (addToMapMapFromBucket!181 (_2!27450 (h!54467 (toList!2953 lm!1707))) lt!1567542) lt!1567853)))

(declare-fun bm!302632 () Bool)

(assert (=> bm!302632 (= call!302637 (forall!9112 (toList!2954 lt!1567542) (ite c!740397 lambda!140170 lambda!140172)))))

(declare-fun b!4355042 () Bool)

(assert (=> b!4355042 (= e!2710171 (forall!9112 (toList!2954 lt!1567542) lambda!140172))))

(assert (= (and d!1287036 c!740397) b!4355041))

(assert (= (and d!1287036 (not c!740397)) b!4355039))

(assert (= (and b!4355039 res!1789735) b!4355042))

(assert (= (or b!4355041 b!4355039) bm!302631))

(assert (= (or b!4355041 b!4355039) bm!302632))

(assert (= (or b!4355041 b!4355039) bm!302630))

(assert (= (and d!1287036 res!1789734) b!4355038))

(assert (= (and b!4355038 res!1789733) b!4355040))

(declare-fun m!4967827 () Bool)

(assert (=> b!4355039 m!4967827))

(declare-fun m!4967829 () Bool)

(assert (=> b!4355039 m!4967829))

(declare-fun m!4967831 () Bool)

(assert (=> b!4355039 m!4967831))

(declare-fun m!4967833 () Bool)

(assert (=> b!4355039 m!4967833))

(declare-fun m!4967835 () Bool)

(assert (=> b!4355039 m!4967835))

(declare-fun m!4967837 () Bool)

(assert (=> b!4355039 m!4967837))

(assert (=> b!4355039 m!4967833))

(assert (=> b!4355039 m!4967827))

(declare-fun m!4967839 () Bool)

(assert (=> b!4355039 m!4967839))

(declare-fun m!4967841 () Bool)

(assert (=> b!4355039 m!4967841))

(assert (=> b!4355039 m!4967831))

(declare-fun m!4967843 () Bool)

(assert (=> b!4355039 m!4967843))

(declare-fun m!4967845 () Bool)

(assert (=> b!4355039 m!4967845))

(declare-fun m!4967847 () Bool)

(assert (=> b!4355038 m!4967847))

(assert (=> b!4355042 m!4967829))

(declare-fun m!4967849 () Bool)

(assert (=> bm!302631 m!4967849))

(declare-fun m!4967851 () Bool)

(assert (=> b!4355040 m!4967851))

(declare-fun m!4967853 () Bool)

(assert (=> d!1287036 m!4967853))

(declare-fun m!4967855 () Bool)

(assert (=> d!1287036 m!4967855))

(declare-fun m!4967857 () Bool)

(assert (=> bm!302632 m!4967857))

(declare-fun m!4967859 () Bool)

(assert (=> bm!302630 m!4967859))

(assert (=> b!4354766 d!1287036))

(declare-fun bs!630515 () Bool)

(declare-fun d!1287046 () Bool)

(assert (= bs!630515 (and d!1287046 start!421280)))

(declare-fun lambda!140174 () Int)

(assert (=> bs!630515 (= lambda!140174 lambda!140085)))

(declare-fun bs!630516 () Bool)

(assert (= bs!630516 (and d!1287046 d!1287028)))

(assert (=> bs!630516 (= lambda!140174 lambda!140106)))

(declare-fun lt!1567857 () ListMap!2197)

(assert (=> d!1287046 (invariantList!674 (toList!2954 lt!1567857))))

(declare-fun e!2710174 () ListMap!2197)

(assert (=> d!1287046 (= lt!1567857 e!2710174)))

(declare-fun c!740398 () Bool)

(assert (=> d!1287046 (= c!740398 ((_ is Cons!48920) (toList!2953 lt!1567543)))))

(assert (=> d!1287046 (forall!9110 (toList!2953 lt!1567543) lambda!140174)))

(assert (=> d!1287046 (= (extractMap!544 (toList!2953 lt!1567543)) lt!1567857)))

(declare-fun b!4355045 () Bool)

(assert (=> b!4355045 (= e!2710174 (addToMapMapFromBucket!181 (_2!27450 (h!54467 (toList!2953 lt!1567543))) (extractMap!544 (t!355964 (toList!2953 lt!1567543)))))))

(declare-fun b!4355046 () Bool)

(assert (=> b!4355046 (= e!2710174 (ListMap!2198 Nil!48919))))

(assert (= (and d!1287046 c!740398) b!4355045))

(assert (= (and d!1287046 (not c!740398)) b!4355046))

(declare-fun m!4967861 () Bool)

(assert (=> d!1287046 m!4967861))

(declare-fun m!4967863 () Bool)

(assert (=> d!1287046 m!4967863))

(declare-fun m!4967865 () Bool)

(assert (=> b!4355045 m!4967865))

(assert (=> b!4355045 m!4967865))

(declare-fun m!4967867 () Bool)

(assert (=> b!4355045 m!4967867))

(assert (=> b!4354756 d!1287046))

(declare-fun d!1287048 () Bool)

(assert (=> d!1287048 (= (apply!11337 lm!1707 (_1!27450 (h!54467 (toList!2953 lm!1707)))) (get!15889 (getValueByKey!446 (toList!2953 lm!1707) (_1!27450 (h!54467 (toList!2953 lm!1707))))))))

(declare-fun bs!630517 () Bool)

(assert (= bs!630517 d!1287048))

(declare-fun m!4967869 () Bool)

(assert (=> bs!630517 m!4967869))

(assert (=> bs!630517 m!4967869))

(declare-fun m!4967871 () Bool)

(assert (=> bs!630517 m!4967871))

(assert (=> b!4354756 d!1287048))

(declare-fun d!1287050 () Bool)

(assert (=> d!1287050 (contains!11115 lt!1567553 key!3918)))

(declare-fun lt!1567860 () Unit!71399)

(declare-fun choose!26869 (List!49043 K!10280 V!10526 ListMap!2197) Unit!71399)

(assert (=> d!1287050 (= lt!1567860 (choose!26869 (_2!27450 (h!54467 (toList!2953 lm!1707))) key!3918 newValue!99 lt!1567553))))

(assert (=> d!1287050 (noDuplicateKeys!485 (_2!27450 (h!54467 (toList!2953 lm!1707))))))

(assert (=> d!1287050 (= (lemmaAddToMapContainsAndNotInListThenInAcc!28 (_2!27450 (h!54467 (toList!2953 lm!1707))) key!3918 newValue!99 lt!1567553) lt!1567860)))

(declare-fun bs!630518 () Bool)

(assert (= bs!630518 d!1287050))

(assert (=> bs!630518 m!4967443))

(declare-fun m!4967873 () Bool)

(assert (=> bs!630518 m!4967873))

(assert (=> bs!630518 m!4967855))

(assert (=> b!4354756 d!1287050))

(declare-fun d!1287052 () Bool)

(declare-fun e!2710177 () Bool)

(assert (=> d!1287052 e!2710177))

(declare-fun res!1789740 () Bool)

(assert (=> d!1287052 (=> (not res!1789740) (not e!2710177))))

(declare-fun lt!1567872 () ListMap!2197)

(assert (=> d!1287052 (= res!1789740 (contains!11115 lt!1567872 (_1!27449 lt!1567541)))))

(declare-fun lt!1567869 () List!49043)

(assert (=> d!1287052 (= lt!1567872 (ListMap!2198 lt!1567869))))

(declare-fun lt!1567871 () Unit!71399)

(declare-fun lt!1567870 () Unit!71399)

(assert (=> d!1287052 (= lt!1567871 lt!1567870)))

(assert (=> d!1287052 (= (getValueByKey!447 lt!1567869 (_1!27449 lt!1567541)) (Some!10460 (_2!27449 lt!1567541)))))

(declare-fun lemmaContainsTupThenGetReturnValue!221 (List!49043 K!10280 V!10526) Unit!71399)

(assert (=> d!1287052 (= lt!1567870 (lemmaContainsTupThenGetReturnValue!221 lt!1567869 (_1!27449 lt!1567541) (_2!27449 lt!1567541)))))

(declare-fun insertNoDuplicatedKeys!98 (List!49043 K!10280 V!10526) List!49043)

(assert (=> d!1287052 (= lt!1567869 (insertNoDuplicatedKeys!98 (toList!2954 lt!1567542) (_1!27449 lt!1567541) (_2!27449 lt!1567541)))))

(assert (=> d!1287052 (= (+!628 lt!1567542 lt!1567541) lt!1567872)))

(declare-fun b!4355051 () Bool)

(declare-fun res!1789741 () Bool)

(assert (=> b!4355051 (=> (not res!1789741) (not e!2710177))))

(assert (=> b!4355051 (= res!1789741 (= (getValueByKey!447 (toList!2954 lt!1567872) (_1!27449 lt!1567541)) (Some!10460 (_2!27449 lt!1567541))))))

(declare-fun b!4355052 () Bool)

(declare-fun contains!11121 (List!49043 tuple2!48310) Bool)

(assert (=> b!4355052 (= e!2710177 (contains!11121 (toList!2954 lt!1567872) lt!1567541))))

(assert (= (and d!1287052 res!1789740) b!4355051))

(assert (= (and b!4355051 res!1789741) b!4355052))

(declare-fun m!4967875 () Bool)

(assert (=> d!1287052 m!4967875))

(declare-fun m!4967877 () Bool)

(assert (=> d!1287052 m!4967877))

(declare-fun m!4967879 () Bool)

(assert (=> d!1287052 m!4967879))

(declare-fun m!4967881 () Bool)

(assert (=> d!1287052 m!4967881))

(declare-fun m!4967883 () Bool)

(assert (=> b!4355051 m!4967883))

(declare-fun m!4967885 () Bool)

(assert (=> b!4355052 m!4967885))

(assert (=> b!4354756 d!1287052))

(declare-fun bs!630519 () Bool)

(declare-fun d!1287054 () Bool)

(assert (= bs!630519 (and d!1287054 start!421280)))

(declare-fun lambda!140175 () Int)

(assert (=> bs!630519 (= lambda!140175 lambda!140085)))

(declare-fun bs!630520 () Bool)

(assert (= bs!630520 (and d!1287054 d!1287028)))

(assert (=> bs!630520 (= lambda!140175 lambda!140106)))

(declare-fun bs!630521 () Bool)

(assert (= bs!630521 (and d!1287054 d!1287046)))

(assert (=> bs!630521 (= lambda!140175 lambda!140174)))

(declare-fun lt!1567873 () ListMap!2197)

(assert (=> d!1287054 (invariantList!674 (toList!2954 lt!1567873))))

(declare-fun e!2710178 () ListMap!2197)

(assert (=> d!1287054 (= lt!1567873 e!2710178)))

(declare-fun c!740399 () Bool)

(assert (=> d!1287054 (= c!740399 ((_ is Cons!48920) (toList!2953 (+!627 lt!1567543 lt!1567548))))))

(assert (=> d!1287054 (forall!9110 (toList!2953 (+!627 lt!1567543 lt!1567548)) lambda!140175)))

(assert (=> d!1287054 (= (extractMap!544 (toList!2953 (+!627 lt!1567543 lt!1567548))) lt!1567873)))

(declare-fun b!4355053 () Bool)

(assert (=> b!4355053 (= e!2710178 (addToMapMapFromBucket!181 (_2!27450 (h!54467 (toList!2953 (+!627 lt!1567543 lt!1567548)))) (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))))))

(declare-fun b!4355054 () Bool)

(assert (=> b!4355054 (= e!2710178 (ListMap!2198 Nil!48919))))

(assert (= (and d!1287054 c!740399) b!4355053))

(assert (= (and d!1287054 (not c!740399)) b!4355054))

(declare-fun m!4967887 () Bool)

(assert (=> d!1287054 m!4967887))

(declare-fun m!4967889 () Bool)

(assert (=> d!1287054 m!4967889))

(declare-fun m!4967891 () Bool)

(assert (=> b!4355053 m!4967891))

(assert (=> b!4355053 m!4967891))

(declare-fun m!4967893 () Bool)

(assert (=> b!4355053 m!4967893))

(assert (=> b!4354756 d!1287054))

(declare-fun d!1287056 () Bool)

(declare-fun tail!6990 (List!49044) List!49044)

(assert (=> d!1287056 (= (tail!6988 lm!1707) (ListLongMap!1604 (tail!6990 (toList!2953 lm!1707))))))

(declare-fun bs!630522 () Bool)

(assert (= bs!630522 d!1287056))

(declare-fun m!4967895 () Bool)

(assert (=> bs!630522 m!4967895))

(assert (=> b!4354756 d!1287056))

(declare-fun d!1287058 () Bool)

(declare-fun e!2710179 () Bool)

(assert (=> d!1287058 e!2710179))

(declare-fun res!1789743 () Bool)

(assert (=> d!1287058 (=> (not res!1789743) (not e!2710179))))

(declare-fun lt!1567875 () ListLongMap!1603)

(assert (=> d!1287058 (= res!1789743 (contains!11116 lt!1567875 (_1!27450 lt!1567548)))))

(declare-fun lt!1567877 () List!49044)

(assert (=> d!1287058 (= lt!1567875 (ListLongMap!1604 lt!1567877))))

(declare-fun lt!1567874 () Unit!71399)

(declare-fun lt!1567876 () Unit!71399)

(assert (=> d!1287058 (= lt!1567874 lt!1567876)))

(assert (=> d!1287058 (= (getValueByKey!446 lt!1567877 (_1!27450 lt!1567548)) (Some!10459 (_2!27450 lt!1567548)))))

(assert (=> d!1287058 (= lt!1567876 (lemmaContainsTupThenGetReturnValue!220 lt!1567877 (_1!27450 lt!1567548) (_2!27450 lt!1567548)))))

(assert (=> d!1287058 (= lt!1567877 (insertStrictlySorted!131 (toList!2953 lt!1567543) (_1!27450 lt!1567548) (_2!27450 lt!1567548)))))

(assert (=> d!1287058 (= (+!627 lt!1567543 lt!1567548) lt!1567875)))

(declare-fun b!4355055 () Bool)

(declare-fun res!1789742 () Bool)

(assert (=> b!4355055 (=> (not res!1789742) (not e!2710179))))

(assert (=> b!4355055 (= res!1789742 (= (getValueByKey!446 (toList!2953 lt!1567875) (_1!27450 lt!1567548)) (Some!10459 (_2!27450 lt!1567548))))))

(declare-fun b!4355056 () Bool)

(assert (=> b!4355056 (= e!2710179 (contains!11117 (toList!2953 lt!1567875) lt!1567548))))

(assert (= (and d!1287058 res!1789743) b!4355055))

(assert (= (and b!4355055 res!1789742) b!4355056))

(declare-fun m!4967897 () Bool)

(assert (=> d!1287058 m!4967897))

(declare-fun m!4967899 () Bool)

(assert (=> d!1287058 m!4967899))

(declare-fun m!4967901 () Bool)

(assert (=> d!1287058 m!4967901))

(declare-fun m!4967903 () Bool)

(assert (=> d!1287058 m!4967903))

(declare-fun m!4967905 () Bool)

(assert (=> b!4355055 m!4967905))

(declare-fun m!4967907 () Bool)

(assert (=> b!4355056 m!4967907))

(assert (=> b!4354756 d!1287058))

(declare-fun d!1287060 () Bool)

(declare-fun content!7711 (List!49043) (InoxSet tuple2!48310))

(assert (=> d!1287060 (= (eq!255 (extractMap!544 (toList!2953 (+!627 lt!1567543 lt!1567548))) (+!628 lt!1567542 lt!1567541)) (= (content!7711 (toList!2954 (extractMap!544 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (content!7711 (toList!2954 (+!628 lt!1567542 lt!1567541)))))))

(declare-fun bs!630523 () Bool)

(assert (= bs!630523 d!1287060))

(declare-fun m!4967909 () Bool)

(assert (=> bs!630523 m!4967909))

(declare-fun m!4967911 () Bool)

(assert (=> bs!630523 m!4967911))

(assert (=> b!4354756 d!1287060))

(declare-fun bs!630524 () Bool)

(declare-fun d!1287062 () Bool)

(assert (= bs!630524 (and d!1287062 start!421280)))

(declare-fun lambda!140178 () Int)

(assert (=> bs!630524 (= lambda!140178 lambda!140085)))

(declare-fun bs!630525 () Bool)

(assert (= bs!630525 (and d!1287062 d!1287028)))

(assert (=> bs!630525 (= lambda!140178 lambda!140106)))

(declare-fun bs!630526 () Bool)

(assert (= bs!630526 (and d!1287062 d!1287046)))

(assert (=> bs!630526 (= lambda!140178 lambda!140174)))

(declare-fun bs!630527 () Bool)

(assert (= bs!630527 (and d!1287062 d!1287054)))

(assert (=> bs!630527 (= lambda!140178 lambda!140175)))

(assert (=> d!1287062 (not (containsKey!678 (apply!11337 lm!1707 (_1!27450 (h!54467 (toList!2953 lm!1707)))) key!3918))))

(declare-fun lt!1567880 () Unit!71399)

(declare-fun choose!26870 (ListLongMap!1603 K!10280 (_ BitVec 64) Hashable!4877) Unit!71399)

(assert (=> d!1287062 (= lt!1567880 (choose!26870 lm!1707 key!3918 (_1!27450 (h!54467 (toList!2953 lm!1707))) hashF!1247))))

(assert (=> d!1287062 (forall!9110 (toList!2953 lm!1707) lambda!140178)))

(assert (=> d!1287062 (= (lemmaNotSameHashThenCannotContainKey!32 lm!1707 key!3918 (_1!27450 (h!54467 (toList!2953 lm!1707))) hashF!1247) lt!1567880)))

(declare-fun bs!630528 () Bool)

(assert (= bs!630528 d!1287062))

(assert (=> bs!630528 m!4967445))

(assert (=> bs!630528 m!4967445))

(assert (=> bs!630528 m!4967447))

(declare-fun m!4967913 () Bool)

(assert (=> bs!630528 m!4967913))

(declare-fun m!4967915 () Bool)

(assert (=> bs!630528 m!4967915))

(assert (=> b!4354756 d!1287062))

(declare-fun bs!630529 () Bool)

(declare-fun d!1287064 () Bool)

(assert (= bs!630529 (and d!1287064 d!1287046)))

(declare-fun lambda!140181 () Int)

(assert (=> bs!630529 (= lambda!140181 lambda!140174)))

(declare-fun bs!630530 () Bool)

(assert (= bs!630530 (and d!1287064 d!1287028)))

(assert (=> bs!630530 (= lambda!140181 lambda!140106)))

(declare-fun bs!630531 () Bool)

(assert (= bs!630531 (and d!1287064 start!421280)))

(assert (=> bs!630531 (= lambda!140181 lambda!140085)))

(declare-fun bs!630532 () Bool)

(assert (= bs!630532 (and d!1287064 d!1287054)))

(assert (=> bs!630532 (= lambda!140181 lambda!140175)))

(declare-fun bs!630533 () Bool)

(assert (= bs!630533 (and d!1287064 d!1287062)))

(assert (=> bs!630533 (= lambda!140181 lambda!140178)))

(assert (=> d!1287064 (eq!255 (extractMap!544 (toList!2953 (+!627 lt!1567543 (tuple2!48313 hash!377 newBucket!200)))) (+!628 (extractMap!544 (toList!2953 lt!1567543)) (tuple2!48311 key!3918 newValue!99)))))

(declare-fun lt!1567883 () Unit!71399)

(declare-fun choose!26871 (ListLongMap!1603 (_ BitVec 64) List!49043 K!10280 V!10526 Hashable!4877) Unit!71399)

(assert (=> d!1287064 (= lt!1567883 (choose!26871 lt!1567543 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1287064 (forall!9110 (toList!2953 lt!1567543) lambda!140181)))

(assert (=> d!1287064 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!89 lt!1567543 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1567883)))

(declare-fun bs!630534 () Bool)

(assert (= bs!630534 d!1287064))

(declare-fun m!4967917 () Bool)

(assert (=> bs!630534 m!4967917))

(assert (=> bs!630534 m!4967435))

(declare-fun m!4967919 () Bool)

(assert (=> bs!630534 m!4967919))

(declare-fun m!4967921 () Bool)

(assert (=> bs!630534 m!4967921))

(assert (=> bs!630534 m!4967919))

(declare-fun m!4967923 () Bool)

(assert (=> bs!630534 m!4967923))

(declare-fun m!4967925 () Bool)

(assert (=> bs!630534 m!4967925))

(declare-fun m!4967927 () Bool)

(assert (=> bs!630534 m!4967927))

(assert (=> bs!630534 m!4967921))

(assert (=> bs!630534 m!4967435))

(assert (=> b!4354756 d!1287064))

(declare-fun bm!302633 () Bool)

(declare-fun call!302638 () Bool)

(declare-fun e!2710183 () List!49046)

(assert (=> bm!302633 (= call!302638 (contains!11120 e!2710183 key!3918))))

(declare-fun c!740400 () Bool)

(declare-fun c!740401 () Bool)

(assert (=> bm!302633 (= c!740400 c!740401)))

(declare-fun b!4355057 () Bool)

(declare-fun e!2710182 () Bool)

(declare-fun e!2710185 () Bool)

(assert (=> b!4355057 (= e!2710182 e!2710185)))

(declare-fun res!1789744 () Bool)

(assert (=> b!4355057 (=> (not res!1789744) (not e!2710185))))

(assert (=> b!4355057 (= res!1789744 (isDefined!7754 (getValueByKey!447 (toList!2954 lt!1567553) key!3918)))))

(declare-fun b!4355058 () Bool)

(declare-fun e!2710184 () Bool)

(assert (=> b!4355058 (= e!2710184 (not (contains!11120 (keys!16520 lt!1567553) key!3918)))))

(declare-fun b!4355059 () Bool)

(declare-fun e!2710180 () Unit!71399)

(declare-fun Unit!71433 () Unit!71399)

(assert (=> b!4355059 (= e!2710180 Unit!71433)))

(declare-fun b!4355060 () Bool)

(declare-fun e!2710181 () Unit!71399)

(declare-fun lt!1567890 () Unit!71399)

(assert (=> b!4355060 (= e!2710181 lt!1567890)))

(declare-fun lt!1567891 () Unit!71399)

(assert (=> b!4355060 (= lt!1567891 (lemmaContainsKeyImpliesGetValueByKeyDefined!357 (toList!2954 lt!1567553) key!3918))))

(assert (=> b!4355060 (isDefined!7754 (getValueByKey!447 (toList!2954 lt!1567553) key!3918))))

(declare-fun lt!1567888 () Unit!71399)

(assert (=> b!4355060 (= lt!1567888 lt!1567891)))

(assert (=> b!4355060 (= lt!1567890 (lemmaInListThenGetKeysListContains!119 (toList!2954 lt!1567553) key!3918))))

(assert (=> b!4355060 call!302638))

(declare-fun b!4355061 () Bool)

(assert (=> b!4355061 (= e!2710183 (keys!16520 lt!1567553))))

(declare-fun d!1287066 () Bool)

(assert (=> d!1287066 e!2710182))

(declare-fun res!1789745 () Bool)

(assert (=> d!1287066 (=> res!1789745 e!2710182)))

(assert (=> d!1287066 (= res!1789745 e!2710184)))

(declare-fun res!1789746 () Bool)

(assert (=> d!1287066 (=> (not res!1789746) (not e!2710184))))

(declare-fun lt!1567887 () Bool)

(assert (=> d!1287066 (= res!1789746 (not lt!1567887))))

(declare-fun lt!1567886 () Bool)

(assert (=> d!1287066 (= lt!1567887 lt!1567886)))

(declare-fun lt!1567885 () Unit!71399)

(assert (=> d!1287066 (= lt!1567885 e!2710181)))

(assert (=> d!1287066 (= c!740401 lt!1567886)))

(assert (=> d!1287066 (= lt!1567886 (containsKey!681 (toList!2954 lt!1567553) key!3918))))

(assert (=> d!1287066 (= (contains!11115 lt!1567553 key!3918) lt!1567887)))

(declare-fun b!4355062 () Bool)

(assert (=> b!4355062 false))

(declare-fun lt!1567884 () Unit!71399)

(declare-fun lt!1567889 () Unit!71399)

(assert (=> b!4355062 (= lt!1567884 lt!1567889)))

(assert (=> b!4355062 (containsKey!681 (toList!2954 lt!1567553) key!3918)))

(assert (=> b!4355062 (= lt!1567889 (lemmaInGetKeysListThenContainsKey!120 (toList!2954 lt!1567553) key!3918))))

(declare-fun Unit!71434 () Unit!71399)

(assert (=> b!4355062 (= e!2710180 Unit!71434)))

(declare-fun b!4355063 () Bool)

(assert (=> b!4355063 (= e!2710185 (contains!11120 (keys!16520 lt!1567553) key!3918))))

(declare-fun b!4355064 () Bool)

(assert (=> b!4355064 (= e!2710183 (getKeysList!122 (toList!2954 lt!1567553)))))

(declare-fun b!4355065 () Bool)

(assert (=> b!4355065 (= e!2710181 e!2710180)))

(declare-fun c!740402 () Bool)

(assert (=> b!4355065 (= c!740402 call!302638)))

(assert (= (and d!1287066 c!740401) b!4355060))

(assert (= (and d!1287066 (not c!740401)) b!4355065))

(assert (= (and b!4355065 c!740402) b!4355062))

(assert (= (and b!4355065 (not c!740402)) b!4355059))

(assert (= (or b!4355060 b!4355065) bm!302633))

(assert (= (and bm!302633 c!740400) b!4355064))

(assert (= (and bm!302633 (not c!740400)) b!4355061))

(assert (= (and d!1287066 res!1789746) b!4355058))

(assert (= (and d!1287066 (not res!1789745)) b!4355057))

(assert (= (and b!4355057 res!1789744) b!4355063))

(declare-fun m!4967929 () Bool)

(assert (=> b!4355061 m!4967929))

(assert (=> b!4355058 m!4967929))

(assert (=> b!4355058 m!4967929))

(declare-fun m!4967931 () Bool)

(assert (=> b!4355058 m!4967931))

(declare-fun m!4967933 () Bool)

(assert (=> b!4355060 m!4967933))

(declare-fun m!4967935 () Bool)

(assert (=> b!4355060 m!4967935))

(assert (=> b!4355060 m!4967935))

(declare-fun m!4967937 () Bool)

(assert (=> b!4355060 m!4967937))

(declare-fun m!4967939 () Bool)

(assert (=> b!4355060 m!4967939))

(assert (=> b!4355063 m!4967929))

(assert (=> b!4355063 m!4967929))

(assert (=> b!4355063 m!4967931))

(declare-fun m!4967941 () Bool)

(assert (=> b!4355062 m!4967941))

(declare-fun m!4967943 () Bool)

(assert (=> b!4355062 m!4967943))

(assert (=> b!4355057 m!4967935))

(assert (=> b!4355057 m!4967935))

(assert (=> b!4355057 m!4967937))

(assert (=> d!1287066 m!4967941))

(declare-fun m!4967945 () Bool)

(assert (=> bm!302633 m!4967945))

(declare-fun m!4967947 () Bool)

(assert (=> b!4355064 m!4967947))

(assert (=> b!4354756 d!1287066))

(declare-fun bm!302634 () Bool)

(declare-fun call!302639 () Bool)

(declare-fun e!2710189 () List!49046)

(assert (=> bm!302634 (= call!302639 (contains!11120 e!2710189 key!3918))))

(declare-fun c!740403 () Bool)

(declare-fun c!740404 () Bool)

(assert (=> bm!302634 (= c!740403 c!740404)))

(declare-fun b!4355066 () Bool)

(declare-fun e!2710188 () Bool)

(declare-fun e!2710191 () Bool)

(assert (=> b!4355066 (= e!2710188 e!2710191)))

(declare-fun res!1789747 () Bool)

(assert (=> b!4355066 (=> (not res!1789747) (not e!2710191))))

(assert (=> b!4355066 (= res!1789747 (isDefined!7754 (getValueByKey!447 (toList!2954 lt!1567542) key!3918)))))

(declare-fun b!4355067 () Bool)

(declare-fun e!2710190 () Bool)

(assert (=> b!4355067 (= e!2710190 (not (contains!11120 (keys!16520 lt!1567542) key!3918)))))

(declare-fun b!4355068 () Bool)

(declare-fun e!2710186 () Unit!71399)

(declare-fun Unit!71435 () Unit!71399)

(assert (=> b!4355068 (= e!2710186 Unit!71435)))

(declare-fun b!4355069 () Bool)

(declare-fun e!2710187 () Unit!71399)

(declare-fun lt!1567898 () Unit!71399)

(assert (=> b!4355069 (= e!2710187 lt!1567898)))

(declare-fun lt!1567899 () Unit!71399)

(assert (=> b!4355069 (= lt!1567899 (lemmaContainsKeyImpliesGetValueByKeyDefined!357 (toList!2954 lt!1567542) key!3918))))

(assert (=> b!4355069 (isDefined!7754 (getValueByKey!447 (toList!2954 lt!1567542) key!3918))))

(declare-fun lt!1567896 () Unit!71399)

(assert (=> b!4355069 (= lt!1567896 lt!1567899)))

(assert (=> b!4355069 (= lt!1567898 (lemmaInListThenGetKeysListContains!119 (toList!2954 lt!1567542) key!3918))))

(assert (=> b!4355069 call!302639))

(declare-fun b!4355070 () Bool)

(assert (=> b!4355070 (= e!2710189 (keys!16520 lt!1567542))))

(declare-fun d!1287068 () Bool)

(assert (=> d!1287068 e!2710188))

(declare-fun res!1789748 () Bool)

(assert (=> d!1287068 (=> res!1789748 e!2710188)))

(assert (=> d!1287068 (= res!1789748 e!2710190)))

(declare-fun res!1789749 () Bool)

(assert (=> d!1287068 (=> (not res!1789749) (not e!2710190))))

(declare-fun lt!1567895 () Bool)

(assert (=> d!1287068 (= res!1789749 (not lt!1567895))))

(declare-fun lt!1567894 () Bool)

(assert (=> d!1287068 (= lt!1567895 lt!1567894)))

(declare-fun lt!1567893 () Unit!71399)

(assert (=> d!1287068 (= lt!1567893 e!2710187)))

(assert (=> d!1287068 (= c!740404 lt!1567894)))

(assert (=> d!1287068 (= lt!1567894 (containsKey!681 (toList!2954 lt!1567542) key!3918))))

(assert (=> d!1287068 (= (contains!11115 lt!1567542 key!3918) lt!1567895)))

(declare-fun b!4355071 () Bool)

(assert (=> b!4355071 false))

(declare-fun lt!1567892 () Unit!71399)

(declare-fun lt!1567897 () Unit!71399)

(assert (=> b!4355071 (= lt!1567892 lt!1567897)))

(assert (=> b!4355071 (containsKey!681 (toList!2954 lt!1567542) key!3918)))

(assert (=> b!4355071 (= lt!1567897 (lemmaInGetKeysListThenContainsKey!120 (toList!2954 lt!1567542) key!3918))))

(declare-fun Unit!71436 () Unit!71399)

(assert (=> b!4355071 (= e!2710186 Unit!71436)))

(declare-fun b!4355072 () Bool)

(assert (=> b!4355072 (= e!2710191 (contains!11120 (keys!16520 lt!1567542) key!3918))))

(declare-fun b!4355073 () Bool)

(assert (=> b!4355073 (= e!2710189 (getKeysList!122 (toList!2954 lt!1567542)))))

(declare-fun b!4355074 () Bool)

(assert (=> b!4355074 (= e!2710187 e!2710186)))

(declare-fun c!740405 () Bool)

(assert (=> b!4355074 (= c!740405 call!302639)))

(assert (= (and d!1287068 c!740404) b!4355069))

(assert (= (and d!1287068 (not c!740404)) b!4355074))

(assert (= (and b!4355074 c!740405) b!4355071))

(assert (= (and b!4355074 (not c!740405)) b!4355068))

(assert (= (or b!4355069 b!4355074) bm!302634))

(assert (= (and bm!302634 c!740403) b!4355073))

(assert (= (and bm!302634 (not c!740403)) b!4355070))

(assert (= (and d!1287068 res!1789749) b!4355067))

(assert (= (and d!1287068 (not res!1789748)) b!4355066))

(assert (= (and b!4355066 res!1789747) b!4355072))

(declare-fun m!4967949 () Bool)

(assert (=> b!4355070 m!4967949))

(assert (=> b!4355067 m!4967949))

(assert (=> b!4355067 m!4967949))

(declare-fun m!4967951 () Bool)

(assert (=> b!4355067 m!4967951))

(declare-fun m!4967953 () Bool)

(assert (=> b!4355069 m!4967953))

(declare-fun m!4967955 () Bool)

(assert (=> b!4355069 m!4967955))

(assert (=> b!4355069 m!4967955))

(declare-fun m!4967957 () Bool)

(assert (=> b!4355069 m!4967957))

(declare-fun m!4967959 () Bool)

(assert (=> b!4355069 m!4967959))

(assert (=> b!4355072 m!4967949))

(assert (=> b!4355072 m!4967949))

(assert (=> b!4355072 m!4967951))

(declare-fun m!4967961 () Bool)

(assert (=> b!4355071 m!4967961))

(declare-fun m!4967963 () Bool)

(assert (=> b!4355071 m!4967963))

(assert (=> b!4355066 m!4967955))

(assert (=> b!4355066 m!4967955))

(assert (=> b!4355066 m!4967957))

(assert (=> d!1287068 m!4967961))

(declare-fun m!4967965 () Bool)

(assert (=> bm!302634 m!4967965))

(declare-fun m!4967967 () Bool)

(assert (=> b!4355073 m!4967967))

(assert (=> b!4354756 d!1287068))

(declare-fun d!1287070 () Bool)

(declare-fun res!1789750 () Bool)

(declare-fun e!2710192 () Bool)

(assert (=> d!1287070 (=> res!1789750 e!2710192)))

(assert (=> d!1287070 (= res!1789750 (and ((_ is Cons!48919) (apply!11337 lm!1707 (_1!27450 (h!54467 (toList!2953 lm!1707))))) (= (_1!27449 (h!54466 (apply!11337 lm!1707 (_1!27450 (h!54467 (toList!2953 lm!1707)))))) key!3918)))))

(assert (=> d!1287070 (= (containsKey!678 (apply!11337 lm!1707 (_1!27450 (h!54467 (toList!2953 lm!1707)))) key!3918) e!2710192)))

(declare-fun b!4355075 () Bool)

(declare-fun e!2710193 () Bool)

(assert (=> b!4355075 (= e!2710192 e!2710193)))

(declare-fun res!1789751 () Bool)

(assert (=> b!4355075 (=> (not res!1789751) (not e!2710193))))

(assert (=> b!4355075 (= res!1789751 ((_ is Cons!48919) (apply!11337 lm!1707 (_1!27450 (h!54467 (toList!2953 lm!1707))))))))

(declare-fun b!4355076 () Bool)

(assert (=> b!4355076 (= e!2710193 (containsKey!678 (t!355963 (apply!11337 lm!1707 (_1!27450 (h!54467 (toList!2953 lm!1707))))) key!3918))))

(assert (= (and d!1287070 (not res!1789750)) b!4355075))

(assert (= (and b!4355075 res!1789751) b!4355076))

(declare-fun m!4967969 () Bool)

(assert (=> b!4355076 m!4967969))

(assert (=> b!4354756 d!1287070))

(declare-fun bs!630535 () Bool)

(declare-fun d!1287072 () Bool)

(assert (= bs!630535 (and d!1287072 d!1287064)))

(declare-fun lambda!140182 () Int)

(assert (=> bs!630535 (= lambda!140182 lambda!140181)))

(declare-fun bs!630536 () Bool)

(assert (= bs!630536 (and d!1287072 d!1287046)))

(assert (=> bs!630536 (= lambda!140182 lambda!140174)))

(declare-fun bs!630537 () Bool)

(assert (= bs!630537 (and d!1287072 d!1287028)))

(assert (=> bs!630537 (= lambda!140182 lambda!140106)))

(declare-fun bs!630538 () Bool)

(assert (= bs!630538 (and d!1287072 start!421280)))

(assert (=> bs!630538 (= lambda!140182 lambda!140085)))

(declare-fun bs!630539 () Bool)

(assert (= bs!630539 (and d!1287072 d!1287054)))

(assert (=> bs!630539 (= lambda!140182 lambda!140175)))

(declare-fun bs!630540 () Bool)

(assert (= bs!630540 (and d!1287072 d!1287062)))

(assert (=> bs!630540 (= lambda!140182 lambda!140178)))

(declare-fun lt!1567900 () ListMap!2197)

(assert (=> d!1287072 (invariantList!674 (toList!2954 lt!1567900))))

(declare-fun e!2710194 () ListMap!2197)

(assert (=> d!1287072 (= lt!1567900 e!2710194)))

(declare-fun c!740406 () Bool)

(assert (=> d!1287072 (= c!740406 ((_ is Cons!48920) (t!355964 (toList!2953 lm!1707))))))

(assert (=> d!1287072 (forall!9110 (t!355964 (toList!2953 lm!1707)) lambda!140182)))

(assert (=> d!1287072 (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1567900)))

(declare-fun b!4355077 () Bool)

(assert (=> b!4355077 (= e!2710194 (addToMapMapFromBucket!181 (_2!27450 (h!54467 (t!355964 (toList!2953 lm!1707)))) (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))))))

(declare-fun b!4355078 () Bool)

(assert (=> b!4355078 (= e!2710194 (ListMap!2198 Nil!48919))))

(assert (= (and d!1287072 c!740406) b!4355077))

(assert (= (and d!1287072 (not c!740406)) b!4355078))

(declare-fun m!4967971 () Bool)

(assert (=> d!1287072 m!4967971))

(declare-fun m!4967973 () Bool)

(assert (=> d!1287072 m!4967973))

(declare-fun m!4967975 () Bool)

(assert (=> b!4355077 m!4967975))

(assert (=> b!4355077 m!4967975))

(declare-fun m!4967977 () Bool)

(assert (=> b!4355077 m!4967977))

(assert (=> b!4354756 d!1287072))

(declare-fun d!1287074 () Bool)

(declare-fun isEmpty!28195 (List!49044) Bool)

(assert (=> d!1287074 (= (isEmpty!28193 lm!1707) (isEmpty!28195 (toList!2953 lm!1707)))))

(declare-fun bs!630541 () Bool)

(assert (= bs!630541 d!1287074))

(declare-fun m!4967979 () Bool)

(assert (=> bs!630541 m!4967979))

(assert (=> b!4354756 d!1287074))

(declare-fun d!1287076 () Bool)

(declare-fun head!9042 (List!49044) tuple2!48312)

(assert (=> d!1287076 (= (head!9040 lm!1707) (head!9042 (toList!2953 lm!1707)))))

(declare-fun bs!630542 () Bool)

(assert (= bs!630542 d!1287076))

(declare-fun m!4967981 () Bool)

(assert (=> bs!630542 m!4967981))

(assert (=> b!4354763 d!1287076))

(declare-fun bs!630543 () Bool)

(declare-fun d!1287078 () Bool)

(assert (= bs!630543 (and d!1287078 d!1287046)))

(declare-fun lambda!140185 () Int)

(assert (=> bs!630543 (not (= lambda!140185 lambda!140174))))

(declare-fun bs!630544 () Bool)

(assert (= bs!630544 (and d!1287078 d!1287028)))

(assert (=> bs!630544 (not (= lambda!140185 lambda!140106))))

(declare-fun bs!630545 () Bool)

(assert (= bs!630545 (and d!1287078 start!421280)))

(assert (=> bs!630545 (not (= lambda!140185 lambda!140085))))

(declare-fun bs!630546 () Bool)

(assert (= bs!630546 (and d!1287078 d!1287054)))

(assert (=> bs!630546 (not (= lambda!140185 lambda!140175))))

(declare-fun bs!630547 () Bool)

(assert (= bs!630547 (and d!1287078 d!1287062)))

(assert (=> bs!630547 (not (= lambda!140185 lambda!140178))))

(declare-fun bs!630548 () Bool)

(assert (= bs!630548 (and d!1287078 d!1287072)))

(assert (=> bs!630548 (not (= lambda!140185 lambda!140182))))

(declare-fun bs!630549 () Bool)

(assert (= bs!630549 (and d!1287078 d!1287064)))

(assert (=> bs!630549 (not (= lambda!140185 lambda!140181))))

(assert (=> d!1287078 true))

(assert (=> d!1287078 (= (allKeysSameHashInMap!589 lm!1707 hashF!1247) (forall!9110 (toList!2953 lm!1707) lambda!140185))))

(declare-fun bs!630550 () Bool)

(assert (= bs!630550 d!1287078))

(declare-fun m!4967983 () Bool)

(assert (=> bs!630550 m!4967983))

(assert (=> b!4354764 d!1287078))

(assert (=> start!421280 d!1287010))

(declare-fun d!1287080 () Bool)

(assert (=> d!1287080 (= (inv!64466 lm!1707) (isStrictlySorted!100 (toList!2953 lm!1707)))))

(declare-fun bs!630551 () Bool)

(assert (= bs!630551 d!1287080))

(assert (=> bs!630551 m!4967541))

(assert (=> start!421280 d!1287080))

(assert (=> b!4354760 d!1286970))

(declare-fun d!1287082 () Bool)

(declare-fun res!1789756 () Bool)

(declare-fun e!2710199 () Bool)

(assert (=> d!1287082 (=> res!1789756 e!2710199)))

(assert (=> d!1287082 (= res!1789756 (not ((_ is Cons!48919) newBucket!200)))))

(assert (=> d!1287082 (= (noDuplicateKeys!485 newBucket!200) e!2710199)))

(declare-fun b!4355085 () Bool)

(declare-fun e!2710200 () Bool)

(assert (=> b!4355085 (= e!2710199 e!2710200)))

(declare-fun res!1789757 () Bool)

(assert (=> b!4355085 (=> (not res!1789757) (not e!2710200))))

(assert (=> b!4355085 (= res!1789757 (not (containsKey!678 (t!355963 newBucket!200) (_1!27449 (h!54466 newBucket!200)))))))

(declare-fun b!4355086 () Bool)

(assert (=> b!4355086 (= e!2710200 (noDuplicateKeys!485 (t!355963 newBucket!200)))))

(assert (= (and d!1287082 (not res!1789756)) b!4355085))

(assert (= (and b!4355085 res!1789757) b!4355086))

(declare-fun m!4967985 () Bool)

(assert (=> b!4355085 m!4967985))

(declare-fun m!4967987 () Bool)

(assert (=> b!4355086 m!4967987))

(assert (=> b!4354761 d!1287082))

(declare-fun b!4355091 () Bool)

(declare-fun e!2710203 () Bool)

(declare-fun tp!1330078 () Bool)

(declare-fun tp!1330079 () Bool)

(assert (=> b!4355091 (= e!2710203 (and tp!1330078 tp!1330079))))

(assert (=> b!4354762 (= tp!1330064 e!2710203)))

(assert (= (and b!4354762 ((_ is Cons!48920) (toList!2953 lm!1707))) b!4355091))

(declare-fun b!4355096 () Bool)

(declare-fun e!2710206 () Bool)

(declare-fun tp!1330082 () Bool)

(assert (=> b!4355096 (= e!2710206 (and tp_is_empty!25177 tp_is_empty!25179 tp!1330082))))

(assert (=> b!4354767 (= tp!1330063 e!2710206)))

(assert (= (and b!4354767 ((_ is Cons!48919) (t!355963 newBucket!200))) b!4355096))

(declare-fun b_lambda!130971 () Bool)

(assert (= b_lambda!130959 (or start!421280 b_lambda!130971)))

(declare-fun bs!630552 () Bool)

(declare-fun d!1287084 () Bool)

(assert (= bs!630552 (and d!1287084 start!421280)))

(assert (=> bs!630552 (= (dynLambda!20629 lambda!140085 (tuple2!48313 hash!377 newBucket!200)) (noDuplicateKeys!485 (_2!27450 (tuple2!48313 hash!377 newBucket!200))))))

(declare-fun m!4967989 () Bool)

(assert (=> bs!630552 m!4967989))

(assert (=> b!4354932 d!1287084))

(declare-fun b_lambda!130973 () Bool)

(assert (= b_lambda!130957 (or start!421280 b_lambda!130973)))

(declare-fun bs!630553 () Bool)

(declare-fun d!1287086 () Bool)

(assert (= bs!630553 (and d!1287086 start!421280)))

(assert (=> bs!630553 (= (dynLambda!20629 lambda!140085 (h!54467 (toList!2953 lt!1567544))) (noDuplicateKeys!485 (_2!27450 (h!54467 (toList!2953 lt!1567544)))))))

(declare-fun m!4967991 () Bool)

(assert (=> bs!630553 m!4967991))

(assert (=> b!4354869 d!1287086))

(declare-fun b_lambda!130975 () Bool)

(assert (= b_lambda!130961 (or start!421280 b_lambda!130975)))

(declare-fun bs!630554 () Bool)

(declare-fun d!1287088 () Bool)

(assert (= bs!630554 (and d!1287088 start!421280)))

(assert (=> bs!630554 (= (dynLambda!20629 lambda!140085 (h!54467 (toList!2953 lm!1707))) (noDuplicateKeys!485 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))

(assert (=> bs!630554 m!4967855))

(assert (=> b!4354933 d!1287088))

(declare-fun b_lambda!130977 () Bool)

(assert (= b_lambda!130953 (or start!421280 b_lambda!130977)))

(declare-fun bs!630555 () Bool)

(declare-fun d!1287090 () Bool)

(assert (= bs!630555 (and d!1287090 start!421280)))

(assert (=> bs!630555 (= (dynLambda!20629 lambda!140085 lt!1567546) (noDuplicateKeys!485 (_2!27450 lt!1567546)))))

(declare-fun m!4967993 () Bool)

(assert (=> bs!630555 m!4967993))

(assert (=> d!1286952 d!1287090))

(check-sat (not d!1287068) (not b!4355071) (not d!1287062) (not d!1287050) (not b!4355057) (not b!4354914) (not b!4354970) (not d!1286954) (not b!4355067) (not b!4355096) (not b!4354915) (not d!1286974) (not b!4355091) (not d!1287056) (not d!1286946) (not bm!302634) (not d!1287078) (not d!1287012) (not b!4355042) (not bm!302614) (not b!4355061) (not b!4354848) (not b!4355053) (not b!4354974) (not b!4355063) (not b!4355045) (not bs!630555) (not b!4355086) (not d!1286966) (not b!4355058) (not b!4354831) (not d!1287058) tp_is_empty!25179 (not d!1287032) (not d!1287052) (not d!1287036) (not b!4355051) (not b_lambda!130975) (not b!4355060) (not b!4354971) (not b!4355085) (not b!4354994) (not b!4355073) (not d!1287048) (not bm!302633) (not d!1286998) (not d!1286952) (not b!4355038) (not b!4355056) (not b!4355064) (not b!4355052) (not b!4355076) (not b!4355077) (not b!4355069) (not d!1287028) (not d!1287034) (not b!4355070) (not b!4354987) (not b!4354870) (not b!4355066) (not b!4354798) (not d!1287072) (not b_lambda!130971) (not b!4354967) (not b!4355040) (not b_lambda!130977) (not d!1286942) (not d!1286958) (not bs!630553) (not d!1287064) (not b!4355055) (not bm!302630) (not b!4354972) tp_is_empty!25177 (not b!4354973) (not d!1287054) (not bs!630554) (not bs!630552) (not d!1287046) (not d!1287076) (not bm!302632) (not b!4355062) (not b!4354801) (not d!1287060) (not bm!302631) (not b!4354968) (not b_lambda!130973) (not b!4354934) (not b!4355039) (not d!1287066) (not b!4354996) (not b!4355072) (not b!4354980) (not d!1287074) (not d!1287080))
(check-sat)
(get-model)

(declare-fun d!1287102 () Bool)

(declare-fun noDuplicatedKeys!117 (List!49043) Bool)

(assert (=> d!1287102 (= (invariantList!674 (toList!2954 lt!1567873)) (noDuplicatedKeys!117 (toList!2954 lt!1567873)))))

(declare-fun bs!630558 () Bool)

(assert (= bs!630558 d!1287102))

(declare-fun m!4968005 () Bool)

(assert (=> bs!630558 m!4968005))

(assert (=> d!1287054 d!1287102))

(declare-fun d!1287106 () Bool)

(declare-fun res!1789768 () Bool)

(declare-fun e!2710223 () Bool)

(assert (=> d!1287106 (=> res!1789768 e!2710223)))

(assert (=> d!1287106 (= res!1789768 ((_ is Nil!48920) (toList!2953 (+!627 lt!1567543 lt!1567548))))))

(assert (=> d!1287106 (= (forall!9110 (toList!2953 (+!627 lt!1567543 lt!1567548)) lambda!140175) e!2710223)))

(declare-fun b!4355119 () Bool)

(declare-fun e!2710224 () Bool)

(assert (=> b!4355119 (= e!2710223 e!2710224)))

(declare-fun res!1789769 () Bool)

(assert (=> b!4355119 (=> (not res!1789769) (not e!2710224))))

(assert (=> b!4355119 (= res!1789769 (dynLambda!20629 lambda!140175 (h!54467 (toList!2953 (+!627 lt!1567543 lt!1567548)))))))

(declare-fun b!4355120 () Bool)

(assert (=> b!4355120 (= e!2710224 (forall!9110 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))) lambda!140175))))

(assert (= (and d!1287106 (not res!1789768)) b!4355119))

(assert (= (and b!4355119 res!1789769) b!4355120))

(declare-fun b_lambda!130979 () Bool)

(assert (=> (not b_lambda!130979) (not b!4355119)))

(declare-fun m!4968011 () Bool)

(assert (=> b!4355119 m!4968011))

(declare-fun m!4968013 () Bool)

(assert (=> b!4355120 m!4968013))

(assert (=> d!1287054 d!1287106))

(declare-fun d!1287110 () Bool)

(declare-fun isEmpty!28196 (Option!10461) Bool)

(assert (=> d!1287110 (= (isDefined!7754 (getValueByKey!447 (toList!2954 lt!1567553) key!3918)) (not (isEmpty!28196 (getValueByKey!447 (toList!2954 lt!1567553) key!3918))))))

(declare-fun bs!630559 () Bool)

(assert (= bs!630559 d!1287110))

(assert (=> bs!630559 m!4967935))

(declare-fun m!4968015 () Bool)

(assert (=> bs!630559 m!4968015))

(assert (=> b!4355057 d!1287110))

(declare-fun b!4355134 () Bool)

(declare-fun e!2710233 () Option!10461)

(declare-fun e!2710234 () Option!10461)

(assert (=> b!4355134 (= e!2710233 e!2710234)))

(declare-fun c!740418 () Bool)

(assert (=> b!4355134 (= c!740418 (and ((_ is Cons!48919) (toList!2954 lt!1567553)) (not (= (_1!27449 (h!54466 (toList!2954 lt!1567553))) key!3918))))))

(declare-fun b!4355135 () Bool)

(assert (=> b!4355135 (= e!2710234 (getValueByKey!447 (t!355963 (toList!2954 lt!1567553)) key!3918))))

(declare-fun d!1287112 () Bool)

(declare-fun c!740417 () Bool)

(assert (=> d!1287112 (= c!740417 (and ((_ is Cons!48919) (toList!2954 lt!1567553)) (= (_1!27449 (h!54466 (toList!2954 lt!1567553))) key!3918)))))

(assert (=> d!1287112 (= (getValueByKey!447 (toList!2954 lt!1567553) key!3918) e!2710233)))

(declare-fun b!4355133 () Bool)

(assert (=> b!4355133 (= e!2710233 (Some!10460 (_2!27449 (h!54466 (toList!2954 lt!1567553)))))))

(declare-fun b!4355136 () Bool)

(assert (=> b!4355136 (= e!2710234 None!10460)))

(assert (= (and d!1287112 c!740417) b!4355133))

(assert (= (and d!1287112 (not c!740417)) b!4355134))

(assert (= (and b!4355134 c!740418) b!4355135))

(assert (= (and b!4355134 (not c!740418)) b!4355136))

(declare-fun m!4968017 () Bool)

(assert (=> b!4355135 m!4968017))

(assert (=> b!4355057 d!1287112))

(declare-fun b!4355181 () Bool)

(assert (=> b!4355181 true))

(declare-fun bs!630560 () Bool)

(declare-fun b!4355176 () Bool)

(assert (= bs!630560 (and b!4355176 b!4355181)))

(declare-fun lambda!140201 () Int)

(declare-fun lambda!140200 () Int)

(assert (=> bs!630560 (= (= (Cons!48919 (h!54466 (toList!2954 lt!1567547)) (t!355963 (toList!2954 lt!1567547))) (t!355963 (toList!2954 lt!1567547))) (= lambda!140201 lambda!140200))))

(assert (=> b!4355176 true))

(declare-fun bs!630561 () Bool)

(declare-fun b!4355175 () Bool)

(assert (= bs!630561 (and b!4355175 b!4355181)))

(declare-fun lambda!140202 () Int)

(assert (=> bs!630561 (= (= (toList!2954 lt!1567547) (t!355963 (toList!2954 lt!1567547))) (= lambda!140202 lambda!140200))))

(declare-fun bs!630562 () Bool)

(assert (= bs!630562 (and b!4355175 b!4355176)))

(assert (=> bs!630562 (= (= (toList!2954 lt!1567547) (Cons!48919 (h!54466 (toList!2954 lt!1567547)) (t!355963 (toList!2954 lt!1567547)))) (= lambda!140202 lambda!140201))))

(assert (=> b!4355175 true))

(declare-fun b!4355174 () Bool)

(declare-fun e!2710256 () Unit!71399)

(declare-fun Unit!71437 () Unit!71399)

(assert (=> b!4355174 (= e!2710256 Unit!71437)))

(declare-fun res!1789797 () Bool)

(declare-fun e!2710254 () Bool)

(assert (=> b!4355175 (=> (not res!1789797) (not e!2710254))))

(declare-fun lt!1567925 () List!49046)

(declare-fun forall!9113 (List!49046 Int) Bool)

(assert (=> b!4355175 (= res!1789797 (forall!9113 lt!1567925 lambda!140202))))

(declare-fun e!2710257 () List!49046)

(assert (=> b!4355176 (= e!2710257 (Cons!48922 (_1!27449 (h!54466 (toList!2954 lt!1567547))) (getKeysList!122 (t!355963 (toList!2954 lt!1567547)))))))

(declare-fun c!740426 () Bool)

(assert (=> b!4355176 (= c!740426 (containsKey!681 (t!355963 (toList!2954 lt!1567547)) (_1!27449 (h!54466 (toList!2954 lt!1567547)))))))

(declare-fun lt!1567921 () Unit!71399)

(declare-fun e!2710255 () Unit!71399)

(assert (=> b!4355176 (= lt!1567921 e!2710255)))

(declare-fun c!740425 () Bool)

(assert (=> b!4355176 (= c!740425 (contains!11120 (getKeysList!122 (t!355963 (toList!2954 lt!1567547))) (_1!27449 (h!54466 (toList!2954 lt!1567547)))))))

(declare-fun lt!1567927 () Unit!71399)

(assert (=> b!4355176 (= lt!1567927 e!2710256)))

(declare-fun lt!1567926 () List!49046)

(assert (=> b!4355176 (= lt!1567926 (getKeysList!122 (t!355963 (toList!2954 lt!1567547))))))

(declare-fun lt!1567922 () Unit!71399)

(declare-fun lemmaForallContainsAddHeadPreserves!23 (List!49043 List!49046 tuple2!48310) Unit!71399)

(assert (=> b!4355176 (= lt!1567922 (lemmaForallContainsAddHeadPreserves!23 (t!355963 (toList!2954 lt!1567547)) lt!1567926 (h!54466 (toList!2954 lt!1567547))))))

(assert (=> b!4355176 (forall!9113 lt!1567926 lambda!140201)))

(declare-fun lt!1567924 () Unit!71399)

(assert (=> b!4355176 (= lt!1567924 lt!1567922)))

(declare-fun lambda!140203 () Int)

(declare-fun b!4355177 () Bool)

(declare-fun content!7712 (List!49046) (InoxSet K!10280))

(declare-fun map!10640 (List!49043 Int) List!49046)

(assert (=> b!4355177 (= e!2710254 (= (content!7712 lt!1567925) (content!7712 (map!10640 (toList!2954 lt!1567547) lambda!140203))))))

(declare-fun b!4355178 () Bool)

(declare-fun res!1789798 () Bool)

(assert (=> b!4355178 (=> (not res!1789798) (not e!2710254))))

(declare-fun length!58 (List!49046) Int)

(declare-fun length!59 (List!49043) Int)

(assert (=> b!4355178 (= res!1789798 (= (length!58 lt!1567925) (length!59 (toList!2954 lt!1567547))))))

(declare-fun d!1287114 () Bool)

(assert (=> d!1287114 e!2710254))

(declare-fun res!1789799 () Bool)

(assert (=> d!1287114 (=> (not res!1789799) (not e!2710254))))

(declare-fun noDuplicate!601 (List!49046) Bool)

(assert (=> d!1287114 (= res!1789799 (noDuplicate!601 lt!1567925))))

(assert (=> d!1287114 (= lt!1567925 e!2710257)))

(declare-fun c!740427 () Bool)

(assert (=> d!1287114 (= c!740427 ((_ is Cons!48919) (toList!2954 lt!1567547)))))

(assert (=> d!1287114 (invariantList!674 (toList!2954 lt!1567547))))

(assert (=> d!1287114 (= (getKeysList!122 (toList!2954 lt!1567547)) lt!1567925)))

(declare-fun b!4355179 () Bool)

(assert (=> b!4355179 false))

(declare-fun Unit!71438 () Unit!71399)

(assert (=> b!4355179 (= e!2710255 Unit!71438)))

(declare-fun b!4355180 () Bool)

(declare-fun Unit!71439 () Unit!71399)

(assert (=> b!4355180 (= e!2710255 Unit!71439)))

(assert (=> b!4355181 false))

(declare-fun lt!1567923 () Unit!71399)

(declare-fun forallContained!1754 (List!49046 Int K!10280) Unit!71399)

(assert (=> b!4355181 (= lt!1567923 (forallContained!1754 (getKeysList!122 (t!355963 (toList!2954 lt!1567547))) lambda!140200 (_1!27449 (h!54466 (toList!2954 lt!1567547)))))))

(declare-fun Unit!71440 () Unit!71399)

(assert (=> b!4355181 (= e!2710256 Unit!71440)))

(declare-fun b!4355182 () Bool)

(assert (=> b!4355182 (= e!2710257 Nil!48922)))

(assert (= (and d!1287114 c!740427) b!4355176))

(assert (= (and d!1287114 (not c!740427)) b!4355182))

(assert (= (and b!4355176 c!740426) b!4355179))

(assert (= (and b!4355176 (not c!740426)) b!4355180))

(assert (= (and b!4355176 c!740425) b!4355181))

(assert (= (and b!4355176 (not c!740425)) b!4355174))

(assert (= (and d!1287114 res!1789799) b!4355178))

(assert (= (and b!4355178 res!1789798) b!4355175))

(assert (= (and b!4355175 res!1789797) b!4355177))

(declare-fun m!4968047 () Bool)

(assert (=> b!4355176 m!4968047))

(declare-fun m!4968049 () Bool)

(assert (=> b!4355176 m!4968049))

(assert (=> b!4355176 m!4968047))

(declare-fun m!4968051 () Bool)

(assert (=> b!4355176 m!4968051))

(declare-fun m!4968055 () Bool)

(assert (=> b!4355176 m!4968055))

(declare-fun m!4968057 () Bool)

(assert (=> b!4355176 m!4968057))

(declare-fun m!4968059 () Bool)

(assert (=> b!4355175 m!4968059))

(declare-fun m!4968061 () Bool)

(assert (=> b!4355178 m!4968061))

(declare-fun m!4968063 () Bool)

(assert (=> b!4355178 m!4968063))

(declare-fun m!4968065 () Bool)

(assert (=> b!4355177 m!4968065))

(declare-fun m!4968067 () Bool)

(assert (=> b!4355177 m!4968067))

(assert (=> b!4355177 m!4968067))

(declare-fun m!4968069 () Bool)

(assert (=> b!4355177 m!4968069))

(assert (=> b!4355181 m!4968047))

(assert (=> b!4355181 m!4968047))

(declare-fun m!4968071 () Bool)

(assert (=> b!4355181 m!4968071))

(declare-fun m!4968073 () Bool)

(assert (=> d!1287114 m!4968073))

(declare-fun m!4968075 () Bool)

(assert (=> d!1287114 m!4968075))

(assert (=> b!4354974 d!1287114))

(declare-fun bs!630565 () Bool)

(declare-fun b!4355192 () Bool)

(assert (= bs!630565 (and b!4355192 d!1287036)))

(declare-fun lambda!140204 () Int)

(assert (=> bs!630565 (= (= (extractMap!544 (t!355964 (toList!2953 lt!1567543))) lt!1567853) (= lambda!140204 lambda!140173))))

(declare-fun bs!630566 () Bool)

(assert (= bs!630566 (and b!4355192 b!4355039)))

(assert (=> bs!630566 (= (= (extractMap!544 (t!355964 (toList!2953 lt!1567543))) lt!1567836) (= lambda!140204 lambda!140172))))

(declare-fun bs!630567 () Bool)

(assert (= bs!630567 (and b!4355192 b!4355041)))

(assert (=> bs!630567 (= (= (extractMap!544 (t!355964 (toList!2953 lt!1567543))) lt!1567542) (= lambda!140204 lambda!140170))))

(declare-fun bs!630568 () Bool)

(assert (= bs!630568 (and b!4355192 d!1287034)))

(assert (=> bs!630568 (not (= lambda!140204 lambda!140109))))

(assert (=> bs!630566 (= (= (extractMap!544 (t!355964 (toList!2953 lt!1567543))) lt!1567542) (= lambda!140204 lambda!140171))))

(assert (=> b!4355192 true))

(declare-fun bs!630569 () Bool)

(declare-fun b!4355190 () Bool)

(assert (= bs!630569 (and b!4355190 d!1287036)))

(declare-fun lambda!140205 () Int)

(assert (=> bs!630569 (= (= (extractMap!544 (t!355964 (toList!2953 lt!1567543))) lt!1567853) (= lambda!140205 lambda!140173))))

(declare-fun bs!630570 () Bool)

(assert (= bs!630570 (and b!4355190 b!4355039)))

(assert (=> bs!630570 (= (= (extractMap!544 (t!355964 (toList!2953 lt!1567543))) lt!1567836) (= lambda!140205 lambda!140172))))

(declare-fun bs!630571 () Bool)

(assert (= bs!630571 (and b!4355190 d!1287034)))

(assert (=> bs!630571 (not (= lambda!140205 lambda!140109))))

(assert (=> bs!630570 (= (= (extractMap!544 (t!355964 (toList!2953 lt!1567543))) lt!1567542) (= lambda!140205 lambda!140171))))

(declare-fun bs!630572 () Bool)

(assert (= bs!630572 (and b!4355190 b!4355192)))

(assert (=> bs!630572 (= lambda!140205 lambda!140204)))

(declare-fun bs!630573 () Bool)

(assert (= bs!630573 (and b!4355190 b!4355041)))

(assert (=> bs!630573 (= (= (extractMap!544 (t!355964 (toList!2953 lt!1567543))) lt!1567542) (= lambda!140205 lambda!140170))))

(assert (=> b!4355190 true))

(declare-fun lt!1567931 () ListMap!2197)

(declare-fun lambda!140206 () Int)

(assert (=> bs!630569 (= (= lt!1567931 lt!1567853) (= lambda!140206 lambda!140173))))

(assert (=> bs!630570 (= (= lt!1567931 lt!1567836) (= lambda!140206 lambda!140172))))

(assert (=> bs!630571 (not (= lambda!140206 lambda!140109))))

(assert (=> bs!630570 (= (= lt!1567931 lt!1567542) (= lambda!140206 lambda!140171))))

(assert (=> b!4355190 (= (= lt!1567931 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140206 lambda!140205))))

(assert (=> bs!630572 (= (= lt!1567931 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140206 lambda!140204))))

(assert (=> bs!630573 (= (= lt!1567931 lt!1567542) (= lambda!140206 lambda!140170))))

(assert (=> b!4355190 true))

(declare-fun bs!630574 () Bool)

(declare-fun d!1287128 () Bool)

(assert (= bs!630574 (and d!1287128 d!1287036)))

(declare-fun lt!1567948 () ListMap!2197)

(declare-fun lambda!140207 () Int)

(assert (=> bs!630574 (= (= lt!1567948 lt!1567853) (= lambda!140207 lambda!140173))))

(declare-fun bs!630575 () Bool)

(assert (= bs!630575 (and d!1287128 b!4355039)))

(assert (=> bs!630575 (= (= lt!1567948 lt!1567836) (= lambda!140207 lambda!140172))))

(declare-fun bs!630576 () Bool)

(assert (= bs!630576 (and d!1287128 d!1287034)))

(assert (=> bs!630576 (not (= lambda!140207 lambda!140109))))

(declare-fun bs!630577 () Bool)

(assert (= bs!630577 (and d!1287128 b!4355190)))

(assert (=> bs!630577 (= (= lt!1567948 lt!1567931) (= lambda!140207 lambda!140206))))

(assert (=> bs!630575 (= (= lt!1567948 lt!1567542) (= lambda!140207 lambda!140171))))

(assert (=> bs!630577 (= (= lt!1567948 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140207 lambda!140205))))

(declare-fun bs!630578 () Bool)

(assert (= bs!630578 (and d!1287128 b!4355192)))

(assert (=> bs!630578 (= (= lt!1567948 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140207 lambda!140204))))

(declare-fun bs!630579 () Bool)

(assert (= bs!630579 (and d!1287128 b!4355041)))

(assert (=> bs!630579 (= (= lt!1567948 lt!1567542) (= lambda!140207 lambda!140170))))

(assert (=> d!1287128 true))

(declare-fun b!4355189 () Bool)

(declare-fun res!1789800 () Bool)

(declare-fun e!2710262 () Bool)

(assert (=> b!4355189 (=> (not res!1789800) (not e!2710262))))

(assert (=> b!4355189 (= res!1789800 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) lambda!140207))))

(declare-fun e!2710261 () ListMap!2197)

(assert (=> b!4355190 (= e!2710261 lt!1567931)))

(declare-fun lt!1567940 () ListMap!2197)

(assert (=> b!4355190 (= lt!1567940 (+!628 (extractMap!544 (t!355964 (toList!2953 lt!1567543))) (h!54466 (_2!27450 (h!54467 (toList!2953 lt!1567543))))))))

(assert (=> b!4355190 (= lt!1567931 (addToMapMapFromBucket!181 (t!355963 (_2!27450 (h!54467 (toList!2953 lt!1567543)))) (+!628 (extractMap!544 (t!355964 (toList!2953 lt!1567543))) (h!54466 (_2!27450 (h!54467 (toList!2953 lt!1567543)))))))))

(declare-fun lt!1567932 () Unit!71399)

(declare-fun call!302641 () Unit!71399)

(assert (=> b!4355190 (= lt!1567932 call!302641)))

(assert (=> b!4355190 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) lambda!140205)))

(declare-fun lt!1567944 () Unit!71399)

(assert (=> b!4355190 (= lt!1567944 lt!1567932)))

(assert (=> b!4355190 (forall!9112 (toList!2954 lt!1567940) lambda!140206)))

(declare-fun lt!1567943 () Unit!71399)

(declare-fun Unit!71441 () Unit!71399)

(assert (=> b!4355190 (= lt!1567943 Unit!71441)))

(declare-fun call!302640 () Bool)

(assert (=> b!4355190 call!302640))

(declare-fun lt!1567935 () Unit!71399)

(declare-fun Unit!71442 () Unit!71399)

(assert (=> b!4355190 (= lt!1567935 Unit!71442)))

(declare-fun lt!1567951 () Unit!71399)

(declare-fun Unit!71443 () Unit!71399)

(assert (=> b!4355190 (= lt!1567951 Unit!71443)))

(declare-fun lt!1567949 () Unit!71399)

(assert (=> b!4355190 (= lt!1567949 (forallContained!1753 (toList!2954 lt!1567940) lambda!140206 (h!54466 (_2!27450 (h!54467 (toList!2953 lt!1567543))))))))

(assert (=> b!4355190 (contains!11115 lt!1567940 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lt!1567543))))))))

(declare-fun lt!1567945 () Unit!71399)

(declare-fun Unit!71444 () Unit!71399)

(assert (=> b!4355190 (= lt!1567945 Unit!71444)))

(assert (=> b!4355190 (contains!11115 lt!1567931 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lt!1567543))))))))

(declare-fun lt!1567950 () Unit!71399)

(declare-fun Unit!71445 () Unit!71399)

(assert (=> b!4355190 (= lt!1567950 Unit!71445)))

(assert (=> b!4355190 (forall!9112 (_2!27450 (h!54467 (toList!2953 lt!1567543))) lambda!140206)))

(declare-fun lt!1567936 () Unit!71399)

(declare-fun Unit!71446 () Unit!71399)

(assert (=> b!4355190 (= lt!1567936 Unit!71446)))

(assert (=> b!4355190 (forall!9112 (toList!2954 lt!1567940) lambda!140206)))

(declare-fun lt!1567942 () Unit!71399)

(declare-fun Unit!71447 () Unit!71399)

(assert (=> b!4355190 (= lt!1567942 Unit!71447)))

(declare-fun lt!1567939 () Unit!71399)

(declare-fun Unit!71448 () Unit!71399)

(assert (=> b!4355190 (= lt!1567939 Unit!71448)))

(declare-fun lt!1567933 () Unit!71399)

(assert (=> b!4355190 (= lt!1567933 (addForallContainsKeyThenBeforeAdding!57 (extractMap!544 (t!355964 (toList!2953 lt!1567543))) lt!1567931 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lt!1567543))))) (_2!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lt!1567543)))))))))

(declare-fun call!302642 () Bool)

(assert (=> b!4355190 call!302642))

(declare-fun lt!1567947 () Unit!71399)

(assert (=> b!4355190 (= lt!1567947 lt!1567933)))

(assert (=> b!4355190 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) lambda!140206)))

(declare-fun lt!1567946 () Unit!71399)

(declare-fun Unit!71449 () Unit!71399)

(assert (=> b!4355190 (= lt!1567946 Unit!71449)))

(declare-fun res!1789802 () Bool)

(assert (=> b!4355190 (= res!1789802 (forall!9112 (_2!27450 (h!54467 (toList!2953 lt!1567543))) lambda!140206))))

(declare-fun e!2710260 () Bool)

(assert (=> b!4355190 (=> (not res!1789802) (not e!2710260))))

(assert (=> b!4355190 e!2710260))

(declare-fun lt!1567937 () Unit!71399)

(declare-fun Unit!71450 () Unit!71399)

(assert (=> b!4355190 (= lt!1567937 Unit!71450)))

(declare-fun b!4355191 () Bool)

(assert (=> b!4355191 (= e!2710262 (invariantList!674 (toList!2954 lt!1567948)))))

(declare-fun bm!302635 () Bool)

(declare-fun c!740430 () Bool)

(assert (=> bm!302635 (= call!302640 (forall!9112 (ite c!740430 (toList!2954 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (t!355963 (_2!27450 (h!54467 (toList!2953 lt!1567543))))) (ite c!740430 lambda!140204 lambda!140206)))))

(assert (=> b!4355192 (= e!2710261 (extractMap!544 (t!355964 (toList!2953 lt!1567543))))))

(declare-fun lt!1567941 () Unit!71399)

(assert (=> b!4355192 (= lt!1567941 call!302641)))

(assert (=> b!4355192 call!302642))

(declare-fun lt!1567934 () Unit!71399)

(assert (=> b!4355192 (= lt!1567934 lt!1567941)))

(assert (=> b!4355192 call!302640))

(declare-fun lt!1567938 () Unit!71399)

(declare-fun Unit!71451 () Unit!71399)

(assert (=> b!4355192 (= lt!1567938 Unit!71451)))

(declare-fun bm!302636 () Bool)

(assert (=> bm!302636 (= call!302641 (lemmaContainsAllItsOwnKeys!57 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))))))

(assert (=> d!1287128 e!2710262))

(declare-fun res!1789801 () Bool)

(assert (=> d!1287128 (=> (not res!1789801) (not e!2710262))))

(assert (=> d!1287128 (= res!1789801 (forall!9112 (_2!27450 (h!54467 (toList!2953 lt!1567543))) lambda!140207))))

(assert (=> d!1287128 (= lt!1567948 e!2710261)))

(assert (=> d!1287128 (= c!740430 ((_ is Nil!48919) (_2!27450 (h!54467 (toList!2953 lt!1567543)))))))

(assert (=> d!1287128 (noDuplicateKeys!485 (_2!27450 (h!54467 (toList!2953 lt!1567543))))))

(assert (=> d!1287128 (= (addToMapMapFromBucket!181 (_2!27450 (h!54467 (toList!2953 lt!1567543))) (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) lt!1567948)))

(declare-fun bm!302637 () Bool)

(assert (=> bm!302637 (= call!302642 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (ite c!740430 lambda!140204 lambda!140206)))))

(declare-fun b!4355193 () Bool)

(assert (=> b!4355193 (= e!2710260 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) lambda!140206))))

(assert (= (and d!1287128 c!740430) b!4355192))

(assert (= (and d!1287128 (not c!740430)) b!4355190))

(assert (= (and b!4355190 res!1789802) b!4355193))

(assert (= (or b!4355192 b!4355190) bm!302636))

(assert (= (or b!4355192 b!4355190) bm!302637))

(assert (= (or b!4355192 b!4355190) bm!302635))

(assert (= (and d!1287128 res!1789801) b!4355189))

(assert (= (and b!4355189 res!1789800) b!4355191))

(assert (=> b!4355190 m!4967865))

(declare-fun m!4968083 () Bool)

(assert (=> b!4355190 m!4968083))

(declare-fun m!4968087 () Bool)

(assert (=> b!4355190 m!4968087))

(declare-fun m!4968089 () Bool)

(assert (=> b!4355190 m!4968089))

(declare-fun m!4968091 () Bool)

(assert (=> b!4355190 m!4968091))

(assert (=> b!4355190 m!4967865))

(declare-fun m!4968093 () Bool)

(assert (=> b!4355190 m!4968093))

(declare-fun m!4968095 () Bool)

(assert (=> b!4355190 m!4968095))

(assert (=> b!4355190 m!4968091))

(assert (=> b!4355190 m!4968083))

(declare-fun m!4968097 () Bool)

(assert (=> b!4355190 m!4968097))

(declare-fun m!4968099 () Bool)

(assert (=> b!4355190 m!4968099))

(assert (=> b!4355190 m!4968089))

(declare-fun m!4968101 () Bool)

(assert (=> b!4355190 m!4968101))

(declare-fun m!4968103 () Bool)

(assert (=> b!4355190 m!4968103))

(declare-fun m!4968105 () Bool)

(assert (=> b!4355189 m!4968105))

(assert (=> b!4355193 m!4968087))

(assert (=> bm!302636 m!4967865))

(declare-fun m!4968107 () Bool)

(assert (=> bm!302636 m!4968107))

(declare-fun m!4968109 () Bool)

(assert (=> b!4355191 m!4968109))

(declare-fun m!4968111 () Bool)

(assert (=> d!1287128 m!4968111))

(declare-fun m!4968113 () Bool)

(assert (=> d!1287128 m!4968113))

(declare-fun m!4968115 () Bool)

(assert (=> bm!302637 m!4968115))

(declare-fun m!4968117 () Bool)

(assert (=> bm!302635 m!4968117))

(assert (=> b!4355045 d!1287128))

(declare-fun bs!630581 () Bool)

(declare-fun d!1287134 () Bool)

(assert (= bs!630581 (and d!1287134 d!1287078)))

(declare-fun lambda!140208 () Int)

(assert (=> bs!630581 (not (= lambda!140208 lambda!140185))))

(declare-fun bs!630583 () Bool)

(assert (= bs!630583 (and d!1287134 d!1287046)))

(assert (=> bs!630583 (= lambda!140208 lambda!140174)))

(declare-fun bs!630584 () Bool)

(assert (= bs!630584 (and d!1287134 d!1287028)))

(assert (=> bs!630584 (= lambda!140208 lambda!140106)))

(declare-fun bs!630585 () Bool)

(assert (= bs!630585 (and d!1287134 start!421280)))

(assert (=> bs!630585 (= lambda!140208 lambda!140085)))

(declare-fun bs!630586 () Bool)

(assert (= bs!630586 (and d!1287134 d!1287054)))

(assert (=> bs!630586 (= lambda!140208 lambda!140175)))

(declare-fun bs!630587 () Bool)

(assert (= bs!630587 (and d!1287134 d!1287062)))

(assert (=> bs!630587 (= lambda!140208 lambda!140178)))

(declare-fun bs!630588 () Bool)

(assert (= bs!630588 (and d!1287134 d!1287072)))

(assert (=> bs!630588 (= lambda!140208 lambda!140182)))

(declare-fun bs!630589 () Bool)

(assert (= bs!630589 (and d!1287134 d!1287064)))

(assert (=> bs!630589 (= lambda!140208 lambda!140181)))

(declare-fun lt!1567956 () ListMap!2197)

(assert (=> d!1287134 (invariantList!674 (toList!2954 lt!1567956))))

(declare-fun e!2710265 () ListMap!2197)

(assert (=> d!1287134 (= lt!1567956 e!2710265)))

(declare-fun c!740431 () Bool)

(assert (=> d!1287134 (= c!740431 ((_ is Cons!48920) (t!355964 (toList!2953 lt!1567543))))))

(assert (=> d!1287134 (forall!9110 (t!355964 (toList!2953 lt!1567543)) lambda!140208)))

(assert (=> d!1287134 (= (extractMap!544 (t!355964 (toList!2953 lt!1567543))) lt!1567956)))

(declare-fun b!4355196 () Bool)

(assert (=> b!4355196 (= e!2710265 (addToMapMapFromBucket!181 (_2!27450 (h!54467 (t!355964 (toList!2953 lt!1567543)))) (extractMap!544 (t!355964 (t!355964 (toList!2953 lt!1567543))))))))

(declare-fun b!4355197 () Bool)

(assert (=> b!4355197 (= e!2710265 (ListMap!2198 Nil!48919))))

(assert (= (and d!1287134 c!740431) b!4355196))

(assert (= (and d!1287134 (not c!740431)) b!4355197))

(declare-fun m!4968125 () Bool)

(assert (=> d!1287134 m!4968125))

(declare-fun m!4968127 () Bool)

(assert (=> d!1287134 m!4968127))

(declare-fun m!4968129 () Bool)

(assert (=> b!4355196 m!4968129))

(assert (=> b!4355196 m!4968129))

(declare-fun m!4968131 () Bool)

(assert (=> b!4355196 m!4968131))

(assert (=> b!4355045 d!1287134))

(declare-fun d!1287142 () Bool)

(declare-fun res!1789816 () Bool)

(declare-fun e!2710282 () Bool)

(assert (=> d!1287142 (=> res!1789816 e!2710282)))

(assert (=> d!1287142 (= res!1789816 (and ((_ is Cons!48919) (toList!2954 lt!1567553)) (= (_1!27449 (h!54466 (toList!2954 lt!1567553))) key!3918)))))

(assert (=> d!1287142 (= (containsKey!681 (toList!2954 lt!1567553) key!3918) e!2710282)))

(declare-fun b!4355219 () Bool)

(declare-fun e!2710283 () Bool)

(assert (=> b!4355219 (= e!2710282 e!2710283)))

(declare-fun res!1789817 () Bool)

(assert (=> b!4355219 (=> (not res!1789817) (not e!2710283))))

(assert (=> b!4355219 (= res!1789817 ((_ is Cons!48919) (toList!2954 lt!1567553)))))

(declare-fun b!4355220 () Bool)

(assert (=> b!4355220 (= e!2710283 (containsKey!681 (t!355963 (toList!2954 lt!1567553)) key!3918))))

(assert (= (and d!1287142 (not res!1789816)) b!4355219))

(assert (= (and b!4355219 res!1789817) b!4355220))

(declare-fun m!4968153 () Bool)

(assert (=> b!4355220 m!4968153))

(assert (=> d!1287066 d!1287142))

(declare-fun d!1287148 () Bool)

(assert (=> d!1287148 (= (invariantList!674 (toList!2954 lt!1567718)) (noDuplicatedKeys!117 (toList!2954 lt!1567718)))))

(declare-fun bs!630590 () Bool)

(assert (= bs!630590 d!1287148))

(declare-fun m!4968155 () Bool)

(assert (=> bs!630590 m!4968155))

(assert (=> d!1287028 d!1287148))

(declare-fun d!1287150 () Bool)

(declare-fun res!1789818 () Bool)

(declare-fun e!2710284 () Bool)

(assert (=> d!1287150 (=> res!1789818 e!2710284)))

(assert (=> d!1287150 (= res!1789818 ((_ is Nil!48920) (toList!2953 lm!1707)))))

(assert (=> d!1287150 (= (forall!9110 (toList!2953 lm!1707) lambda!140106) e!2710284)))

(declare-fun b!4355221 () Bool)

(declare-fun e!2710285 () Bool)

(assert (=> b!4355221 (= e!2710284 e!2710285)))

(declare-fun res!1789819 () Bool)

(assert (=> b!4355221 (=> (not res!1789819) (not e!2710285))))

(assert (=> b!4355221 (= res!1789819 (dynLambda!20629 lambda!140106 (h!54467 (toList!2953 lm!1707))))))

(declare-fun b!4355222 () Bool)

(assert (=> b!4355222 (= e!2710285 (forall!9110 (t!355964 (toList!2953 lm!1707)) lambda!140106))))

(assert (= (and d!1287150 (not res!1789818)) b!4355221))

(assert (= (and b!4355221 res!1789819) b!4355222))

(declare-fun b_lambda!130981 () Bool)

(assert (=> (not b_lambda!130981) (not b!4355221)))

(declare-fun m!4968157 () Bool)

(assert (=> b!4355221 m!4968157))

(declare-fun m!4968159 () Bool)

(assert (=> b!4355222 m!4968159))

(assert (=> d!1287028 d!1287150))

(declare-fun d!1287152 () Bool)

(assert (=> d!1287152 (= (tail!6990 (toList!2953 lm!1707)) (t!355964 (toList!2953 lm!1707)))))

(assert (=> d!1287056 d!1287152))

(declare-fun d!1287154 () Bool)

(declare-fun res!1789830 () Bool)

(declare-fun e!2710293 () Bool)

(assert (=> d!1287154 (=> res!1789830 e!2710293)))

(assert (=> d!1287154 (= res!1789830 (and ((_ is Cons!48920) (toList!2953 lm!1707)) (= (_1!27450 (h!54467 (toList!2953 lm!1707))) hash!377)))))

(assert (=> d!1287154 (= (containsKey!682 (toList!2953 lm!1707) hash!377) e!2710293)))

(declare-fun b!4355233 () Bool)

(declare-fun e!2710294 () Bool)

(assert (=> b!4355233 (= e!2710293 e!2710294)))

(declare-fun res!1789831 () Bool)

(assert (=> b!4355233 (=> (not res!1789831) (not e!2710294))))

(assert (=> b!4355233 (= res!1789831 (and (or (not ((_ is Cons!48920) (toList!2953 lm!1707))) (bvsle (_1!27450 (h!54467 (toList!2953 lm!1707))) hash!377)) ((_ is Cons!48920) (toList!2953 lm!1707)) (bvslt (_1!27450 (h!54467 (toList!2953 lm!1707))) hash!377)))))

(declare-fun b!4355234 () Bool)

(assert (=> b!4355234 (= e!2710294 (containsKey!682 (t!355964 (toList!2953 lm!1707)) hash!377))))

(assert (= (and d!1287154 (not res!1789830)) b!4355233))

(assert (= (and b!4355233 res!1789831) b!4355234))

(declare-fun m!4968169 () Bool)

(assert (=> b!4355234 m!4968169))

(assert (=> d!1287032 d!1287154))

(assert (=> d!1287064 d!1287046))

(declare-fun d!1287158 () Bool)

(assert (=> d!1287158 (eq!255 (extractMap!544 (toList!2953 (+!627 lt!1567543 (tuple2!48313 hash!377 newBucket!200)))) (+!628 (extractMap!544 (toList!2953 lt!1567543)) (tuple2!48311 key!3918 newValue!99)))))

(assert (=> d!1287158 true))

(declare-fun _$10!152 () Unit!71399)

(assert (=> d!1287158 (= (choose!26871 lt!1567543 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) _$10!152)))

(declare-fun bs!630591 () Bool)

(assert (= bs!630591 d!1287158))

(assert (=> bs!630591 m!4967921))

(assert (=> bs!630591 m!4967919))

(assert (=> bs!630591 m!4967923))

(assert (=> bs!630591 m!4967921))

(assert (=> bs!630591 m!4967925))

(assert (=> bs!630591 m!4967435))

(assert (=> bs!630591 m!4967435))

(assert (=> bs!630591 m!4967919))

(assert (=> d!1287064 d!1287158))

(declare-fun d!1287160 () Bool)

(declare-fun res!1789832 () Bool)

(declare-fun e!2710295 () Bool)

(assert (=> d!1287160 (=> res!1789832 e!2710295)))

(assert (=> d!1287160 (= res!1789832 ((_ is Nil!48920) (toList!2953 lt!1567543)))))

(assert (=> d!1287160 (= (forall!9110 (toList!2953 lt!1567543) lambda!140181) e!2710295)))

(declare-fun b!4355235 () Bool)

(declare-fun e!2710296 () Bool)

(assert (=> b!4355235 (= e!2710295 e!2710296)))

(declare-fun res!1789833 () Bool)

(assert (=> b!4355235 (=> (not res!1789833) (not e!2710296))))

(assert (=> b!4355235 (= res!1789833 (dynLambda!20629 lambda!140181 (h!54467 (toList!2953 lt!1567543))))))

(declare-fun b!4355236 () Bool)

(assert (=> b!4355236 (= e!2710296 (forall!9110 (t!355964 (toList!2953 lt!1567543)) lambda!140181))))

(assert (= (and d!1287160 (not res!1789832)) b!4355235))

(assert (= (and b!4355235 res!1789833) b!4355236))

(declare-fun b_lambda!130983 () Bool)

(assert (=> (not b_lambda!130983) (not b!4355235)))

(declare-fun m!4968171 () Bool)

(assert (=> b!4355235 m!4968171))

(declare-fun m!4968173 () Bool)

(assert (=> b!4355236 m!4968173))

(assert (=> d!1287064 d!1287160))

(declare-fun d!1287162 () Bool)

(declare-fun e!2710297 () Bool)

(assert (=> d!1287162 e!2710297))

(declare-fun res!1789834 () Bool)

(assert (=> d!1287162 (=> (not res!1789834) (not e!2710297))))

(declare-fun lt!1567971 () ListMap!2197)

(assert (=> d!1287162 (= res!1789834 (contains!11115 lt!1567971 (_1!27449 (tuple2!48311 key!3918 newValue!99))))))

(declare-fun lt!1567968 () List!49043)

(assert (=> d!1287162 (= lt!1567971 (ListMap!2198 lt!1567968))))

(declare-fun lt!1567970 () Unit!71399)

(declare-fun lt!1567969 () Unit!71399)

(assert (=> d!1287162 (= lt!1567970 lt!1567969)))

(assert (=> d!1287162 (= (getValueByKey!447 lt!1567968 (_1!27449 (tuple2!48311 key!3918 newValue!99))) (Some!10460 (_2!27449 (tuple2!48311 key!3918 newValue!99))))))

(assert (=> d!1287162 (= lt!1567969 (lemmaContainsTupThenGetReturnValue!221 lt!1567968 (_1!27449 (tuple2!48311 key!3918 newValue!99)) (_2!27449 (tuple2!48311 key!3918 newValue!99))))))

(assert (=> d!1287162 (= lt!1567968 (insertNoDuplicatedKeys!98 (toList!2954 (extractMap!544 (toList!2953 lt!1567543))) (_1!27449 (tuple2!48311 key!3918 newValue!99)) (_2!27449 (tuple2!48311 key!3918 newValue!99))))))

(assert (=> d!1287162 (= (+!628 (extractMap!544 (toList!2953 lt!1567543)) (tuple2!48311 key!3918 newValue!99)) lt!1567971)))

(declare-fun b!4355237 () Bool)

(declare-fun res!1789835 () Bool)

(assert (=> b!4355237 (=> (not res!1789835) (not e!2710297))))

(assert (=> b!4355237 (= res!1789835 (= (getValueByKey!447 (toList!2954 lt!1567971) (_1!27449 (tuple2!48311 key!3918 newValue!99))) (Some!10460 (_2!27449 (tuple2!48311 key!3918 newValue!99)))))))

(declare-fun b!4355238 () Bool)

(assert (=> b!4355238 (= e!2710297 (contains!11121 (toList!2954 lt!1567971) (tuple2!48311 key!3918 newValue!99)))))

(assert (= (and d!1287162 res!1789834) b!4355237))

(assert (= (and b!4355237 res!1789835) b!4355238))

(declare-fun m!4968175 () Bool)

(assert (=> d!1287162 m!4968175))

(declare-fun m!4968177 () Bool)

(assert (=> d!1287162 m!4968177))

(declare-fun m!4968179 () Bool)

(assert (=> d!1287162 m!4968179))

(declare-fun m!4968181 () Bool)

(assert (=> d!1287162 m!4968181))

(declare-fun m!4968183 () Bool)

(assert (=> b!4355237 m!4968183))

(declare-fun m!4968185 () Bool)

(assert (=> b!4355238 m!4968185))

(assert (=> d!1287064 d!1287162))

(declare-fun d!1287164 () Bool)

(declare-fun e!2710298 () Bool)

(assert (=> d!1287164 e!2710298))

(declare-fun res!1789837 () Bool)

(assert (=> d!1287164 (=> (not res!1789837) (not e!2710298))))

(declare-fun lt!1567973 () ListLongMap!1603)

(assert (=> d!1287164 (= res!1789837 (contains!11116 lt!1567973 (_1!27450 (tuple2!48313 hash!377 newBucket!200))))))

(declare-fun lt!1567975 () List!49044)

(assert (=> d!1287164 (= lt!1567973 (ListLongMap!1604 lt!1567975))))

(declare-fun lt!1567972 () Unit!71399)

(declare-fun lt!1567974 () Unit!71399)

(assert (=> d!1287164 (= lt!1567972 lt!1567974)))

(assert (=> d!1287164 (= (getValueByKey!446 lt!1567975 (_1!27450 (tuple2!48313 hash!377 newBucket!200))) (Some!10459 (_2!27450 (tuple2!48313 hash!377 newBucket!200))))))

(assert (=> d!1287164 (= lt!1567974 (lemmaContainsTupThenGetReturnValue!220 lt!1567975 (_1!27450 (tuple2!48313 hash!377 newBucket!200)) (_2!27450 (tuple2!48313 hash!377 newBucket!200))))))

(assert (=> d!1287164 (= lt!1567975 (insertStrictlySorted!131 (toList!2953 lt!1567543) (_1!27450 (tuple2!48313 hash!377 newBucket!200)) (_2!27450 (tuple2!48313 hash!377 newBucket!200))))))

(assert (=> d!1287164 (= (+!627 lt!1567543 (tuple2!48313 hash!377 newBucket!200)) lt!1567973)))

(declare-fun b!4355239 () Bool)

(declare-fun res!1789836 () Bool)

(assert (=> b!4355239 (=> (not res!1789836) (not e!2710298))))

(assert (=> b!4355239 (= res!1789836 (= (getValueByKey!446 (toList!2953 lt!1567973) (_1!27450 (tuple2!48313 hash!377 newBucket!200))) (Some!10459 (_2!27450 (tuple2!48313 hash!377 newBucket!200)))))))

(declare-fun b!4355240 () Bool)

(assert (=> b!4355240 (= e!2710298 (contains!11117 (toList!2953 lt!1567973) (tuple2!48313 hash!377 newBucket!200)))))

(assert (= (and d!1287164 res!1789837) b!4355239))

(assert (= (and b!4355239 res!1789836) b!4355240))

(declare-fun m!4968187 () Bool)

(assert (=> d!1287164 m!4968187))

(declare-fun m!4968189 () Bool)

(assert (=> d!1287164 m!4968189))

(declare-fun m!4968191 () Bool)

(assert (=> d!1287164 m!4968191))

(declare-fun m!4968193 () Bool)

(assert (=> d!1287164 m!4968193))

(declare-fun m!4968195 () Bool)

(assert (=> b!4355239 m!4968195))

(declare-fun m!4968197 () Bool)

(assert (=> b!4355240 m!4968197))

(assert (=> d!1287064 d!1287164))

(declare-fun bs!630592 () Bool)

(declare-fun d!1287166 () Bool)

(assert (= bs!630592 (and d!1287166 d!1287078)))

(declare-fun lambda!140209 () Int)

(assert (=> bs!630592 (not (= lambda!140209 lambda!140185))))

(declare-fun bs!630593 () Bool)

(assert (= bs!630593 (and d!1287166 d!1287046)))

(assert (=> bs!630593 (= lambda!140209 lambda!140174)))

(declare-fun bs!630594 () Bool)

(assert (= bs!630594 (and d!1287166 d!1287028)))

(assert (=> bs!630594 (= lambda!140209 lambda!140106)))

(declare-fun bs!630595 () Bool)

(assert (= bs!630595 (and d!1287166 start!421280)))

(assert (=> bs!630595 (= lambda!140209 lambda!140085)))

(declare-fun bs!630596 () Bool)

(assert (= bs!630596 (and d!1287166 d!1287054)))

(assert (=> bs!630596 (= lambda!140209 lambda!140175)))

(declare-fun bs!630597 () Bool)

(assert (= bs!630597 (and d!1287166 d!1287062)))

(assert (=> bs!630597 (= lambda!140209 lambda!140178)))

(declare-fun bs!630598 () Bool)

(assert (= bs!630598 (and d!1287166 d!1287134)))

(assert (=> bs!630598 (= lambda!140209 lambda!140208)))

(declare-fun bs!630599 () Bool)

(assert (= bs!630599 (and d!1287166 d!1287072)))

(assert (=> bs!630599 (= lambda!140209 lambda!140182)))

(declare-fun bs!630600 () Bool)

(assert (= bs!630600 (and d!1287166 d!1287064)))

(assert (=> bs!630600 (= lambda!140209 lambda!140181)))

(declare-fun lt!1567976 () ListMap!2197)

(assert (=> d!1287166 (invariantList!674 (toList!2954 lt!1567976))))

(declare-fun e!2710299 () ListMap!2197)

(assert (=> d!1287166 (= lt!1567976 e!2710299)))

(declare-fun c!740437 () Bool)

(assert (=> d!1287166 (= c!740437 ((_ is Cons!48920) (toList!2953 (+!627 lt!1567543 (tuple2!48313 hash!377 newBucket!200)))))))

(assert (=> d!1287166 (forall!9110 (toList!2953 (+!627 lt!1567543 (tuple2!48313 hash!377 newBucket!200))) lambda!140209)))

(assert (=> d!1287166 (= (extractMap!544 (toList!2953 (+!627 lt!1567543 (tuple2!48313 hash!377 newBucket!200)))) lt!1567976)))

(declare-fun b!4355241 () Bool)

(assert (=> b!4355241 (= e!2710299 (addToMapMapFromBucket!181 (_2!27450 (h!54467 (toList!2953 (+!627 lt!1567543 (tuple2!48313 hash!377 newBucket!200))))) (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 (tuple2!48313 hash!377 newBucket!200)))))))))

(declare-fun b!4355242 () Bool)

(assert (=> b!4355242 (= e!2710299 (ListMap!2198 Nil!48919))))

(assert (= (and d!1287166 c!740437) b!4355241))

(assert (= (and d!1287166 (not c!740437)) b!4355242))

(declare-fun m!4968199 () Bool)

(assert (=> d!1287166 m!4968199))

(declare-fun m!4968201 () Bool)

(assert (=> d!1287166 m!4968201))

(declare-fun m!4968203 () Bool)

(assert (=> b!4355241 m!4968203))

(assert (=> b!4355241 m!4968203))

(declare-fun m!4968205 () Bool)

(assert (=> b!4355241 m!4968205))

(assert (=> d!1287064 d!1287166))

(declare-fun d!1287168 () Bool)

(assert (=> d!1287168 (= (eq!255 (extractMap!544 (toList!2953 (+!627 lt!1567543 (tuple2!48313 hash!377 newBucket!200)))) (+!628 (extractMap!544 (toList!2953 lt!1567543)) (tuple2!48311 key!3918 newValue!99))) (= (content!7711 (toList!2954 (extractMap!544 (toList!2953 (+!627 lt!1567543 (tuple2!48313 hash!377 newBucket!200)))))) (content!7711 (toList!2954 (+!628 (extractMap!544 (toList!2953 lt!1567543)) (tuple2!48311 key!3918 newValue!99))))))))

(declare-fun bs!630601 () Bool)

(assert (= bs!630601 d!1287168))

(declare-fun m!4968207 () Bool)

(assert (=> bs!630601 m!4968207))

(declare-fun m!4968209 () Bool)

(assert (=> bs!630601 m!4968209))

(assert (=> d!1287064 d!1287168))

(declare-fun d!1287170 () Bool)

(assert (=> d!1287170 (= (invariantList!674 (toList!2954 lt!1567853)) (noDuplicatedKeys!117 (toList!2954 lt!1567853)))))

(declare-fun bs!630602 () Bool)

(assert (= bs!630602 d!1287170))

(declare-fun m!4968211 () Bool)

(assert (=> bs!630602 m!4968211))

(assert (=> b!4355040 d!1287170))

(declare-fun d!1287172 () Bool)

(declare-fun c!740448 () Bool)

(assert (=> d!1287172 (= c!740448 ((_ is Nil!48920) (toList!2953 lm!1707)))))

(declare-fun e!2710312 () (InoxSet tuple2!48312))

(assert (=> d!1287172 (= (content!7710 (toList!2953 lm!1707)) e!2710312)))

(declare-fun b!4355265 () Bool)

(assert (=> b!4355265 (= e!2710312 ((as const (Array tuple2!48312 Bool)) false))))

(declare-fun b!4355266 () Bool)

(assert (=> b!4355266 (= e!2710312 ((_ map or) (store ((as const (Array tuple2!48312 Bool)) false) (h!54467 (toList!2953 lm!1707)) true) (content!7710 (t!355964 (toList!2953 lm!1707)))))))

(assert (= (and d!1287172 c!740448) b!4355265))

(assert (= (and d!1287172 (not c!740448)) b!4355266))

(declare-fun m!4968213 () Bool)

(assert (=> b!4355266 m!4968213))

(declare-fun m!4968215 () Bool)

(assert (=> b!4355266 m!4968215))

(assert (=> d!1286946 d!1287172))

(declare-fun d!1287174 () Bool)

(declare-fun res!1789840 () Bool)

(declare-fun e!2710313 () Bool)

(assert (=> d!1287174 (=> res!1789840 e!2710313)))

(assert (=> d!1287174 (= res!1789840 (and ((_ is Cons!48919) (toList!2954 lt!1567547)) (= (_1!27449 (h!54466 (toList!2954 lt!1567547))) key!3918)))))

(assert (=> d!1287174 (= (containsKey!681 (toList!2954 lt!1567547) key!3918) e!2710313)))

(declare-fun b!4355267 () Bool)

(declare-fun e!2710314 () Bool)

(assert (=> b!4355267 (= e!2710313 e!2710314)))

(declare-fun res!1789841 () Bool)

(assert (=> b!4355267 (=> (not res!1789841) (not e!2710314))))

(assert (=> b!4355267 (= res!1789841 ((_ is Cons!48919) (toList!2954 lt!1567547)))))

(declare-fun b!4355268 () Bool)

(assert (=> b!4355268 (= e!2710314 (containsKey!681 (t!355963 (toList!2954 lt!1567547)) key!3918))))

(assert (= (and d!1287174 (not res!1789840)) b!4355267))

(assert (= (and b!4355267 res!1789841) b!4355268))

(declare-fun m!4968217 () Bool)

(assert (=> b!4355268 m!4968217))

(assert (=> b!4354972 d!1287174))

(declare-fun d!1287176 () Bool)

(assert (=> d!1287176 (containsKey!681 (toList!2954 lt!1567547) key!3918)))

(declare-fun lt!1568001 () Unit!71399)

(declare-fun choose!26876 (List!49043 K!10280) Unit!71399)

(assert (=> d!1287176 (= lt!1568001 (choose!26876 (toList!2954 lt!1567547) key!3918))))

(assert (=> d!1287176 (invariantList!674 (toList!2954 lt!1567547))))

(assert (=> d!1287176 (= (lemmaInGetKeysListThenContainsKey!120 (toList!2954 lt!1567547) key!3918) lt!1568001)))

(declare-fun bs!630603 () Bool)

(assert (= bs!630603 d!1287176))

(assert (=> bs!630603 m!4967763))

(declare-fun m!4968219 () Bool)

(assert (=> bs!630603 m!4968219))

(assert (=> bs!630603 m!4968075))

(assert (=> b!4354972 d!1287176))

(declare-fun b!4355290 () Bool)

(declare-fun e!2710324 () Option!10460)

(assert (=> b!4355290 (= e!2710324 None!10459)))

(declare-fun b!4355289 () Bool)

(assert (=> b!4355289 (= e!2710324 (getValueByKey!446 (t!355964 (toList!2953 lm!1707)) hash!377))))

(declare-fun b!4355288 () Bool)

(declare-fun e!2710323 () Option!10460)

(assert (=> b!4355288 (= e!2710323 e!2710324)))

(declare-fun c!740456 () Bool)

(assert (=> b!4355288 (= c!740456 (and ((_ is Cons!48920) (toList!2953 lm!1707)) (not (= (_1!27450 (h!54467 (toList!2953 lm!1707))) hash!377))))))

(declare-fun b!4355287 () Bool)

(assert (=> b!4355287 (= e!2710323 (Some!10459 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))

(declare-fun d!1287178 () Bool)

(declare-fun c!740455 () Bool)

(assert (=> d!1287178 (= c!740455 (and ((_ is Cons!48920) (toList!2953 lm!1707)) (= (_1!27450 (h!54467 (toList!2953 lm!1707))) hash!377)))))

(assert (=> d!1287178 (= (getValueByKey!446 (toList!2953 lm!1707) hash!377) e!2710323)))

(assert (= (and d!1287178 c!740455) b!4355287))

(assert (= (and d!1287178 (not c!740455)) b!4355288))

(assert (= (and b!4355288 c!740456) b!4355289))

(assert (= (and b!4355288 (not c!740456)) b!4355290))

(declare-fun m!4968221 () Bool)

(assert (=> b!4355289 m!4968221))

(assert (=> b!4354831 d!1287178))

(declare-fun d!1287180 () Bool)

(declare-fun res!1789852 () Bool)

(declare-fun e!2710329 () Bool)

(assert (=> d!1287180 (=> res!1789852 e!2710329)))

(assert (=> d!1287180 (= res!1789852 ((_ is Nil!48919) (toList!2954 lt!1567542)))))

(assert (=> d!1287180 (= (forall!9112 (toList!2954 lt!1567542) lambda!140173) e!2710329)))

(declare-fun b!4355295 () Bool)

(declare-fun e!2710330 () Bool)

(assert (=> b!4355295 (= e!2710329 e!2710330)))

(declare-fun res!1789853 () Bool)

(assert (=> b!4355295 (=> (not res!1789853) (not e!2710330))))

(declare-fun dynLambda!20630 (Int tuple2!48310) Bool)

(assert (=> b!4355295 (= res!1789853 (dynLambda!20630 lambda!140173 (h!54466 (toList!2954 lt!1567542))))))

(declare-fun b!4355296 () Bool)

(assert (=> b!4355296 (= e!2710330 (forall!9112 (t!355963 (toList!2954 lt!1567542)) lambda!140173))))

(assert (= (and d!1287180 (not res!1789852)) b!4355295))

(assert (= (and b!4355295 res!1789853) b!4355296))

(declare-fun b_lambda!130985 () Bool)

(assert (=> (not b_lambda!130985) (not b!4355295)))

(declare-fun m!4968223 () Bool)

(assert (=> b!4355295 m!4968223))

(declare-fun m!4968225 () Bool)

(assert (=> b!4355296 m!4968225))

(assert (=> b!4355038 d!1287180))

(declare-fun d!1287182 () Bool)

(declare-fun lt!1568015 () Bool)

(assert (=> d!1287182 (= lt!1568015 (select (content!7712 (keys!16520 lt!1567547)) key!3918))))

(declare-fun e!2710342 () Bool)

(assert (=> d!1287182 (= lt!1568015 e!2710342)))

(declare-fun res!1789862 () Bool)

(assert (=> d!1287182 (=> (not res!1789862) (not e!2710342))))

(assert (=> d!1287182 (= res!1789862 ((_ is Cons!48922) (keys!16520 lt!1567547)))))

(assert (=> d!1287182 (= (contains!11120 (keys!16520 lt!1567547) key!3918) lt!1568015)))

(declare-fun b!4355315 () Bool)

(declare-fun e!2710343 () Bool)

(assert (=> b!4355315 (= e!2710342 e!2710343)))

(declare-fun res!1789863 () Bool)

(assert (=> b!4355315 (=> res!1789863 e!2710343)))

(assert (=> b!4355315 (= res!1789863 (= (h!54471 (keys!16520 lt!1567547)) key!3918))))

(declare-fun b!4355316 () Bool)

(assert (=> b!4355316 (= e!2710343 (contains!11120 (t!355966 (keys!16520 lt!1567547)) key!3918))))

(assert (= (and d!1287182 res!1789862) b!4355315))

(assert (= (and b!4355315 (not res!1789863)) b!4355316))

(assert (=> d!1287182 m!4967751))

(declare-fun m!4968227 () Bool)

(assert (=> d!1287182 m!4968227))

(declare-fun m!4968229 () Bool)

(assert (=> d!1287182 m!4968229))

(declare-fun m!4968231 () Bool)

(assert (=> b!4355316 m!4968231))

(assert (=> b!4354968 d!1287182))

(declare-fun bs!630605 () Bool)

(declare-fun b!4355340 () Bool)

(assert (= bs!630605 (and b!4355340 b!4355181)))

(declare-fun lambda!140214 () Int)

(assert (=> bs!630605 (= (= (toList!2954 lt!1567547) (t!355963 (toList!2954 lt!1567547))) (= lambda!140214 lambda!140200))))

(declare-fun bs!630606 () Bool)

(assert (= bs!630606 (and b!4355340 b!4355176)))

(assert (=> bs!630606 (= (= (toList!2954 lt!1567547) (Cons!48919 (h!54466 (toList!2954 lt!1567547)) (t!355963 (toList!2954 lt!1567547)))) (= lambda!140214 lambda!140201))))

(declare-fun bs!630607 () Bool)

(assert (= bs!630607 (and b!4355340 b!4355175)))

(assert (=> bs!630607 (= lambda!140214 lambda!140202)))

(assert (=> b!4355340 true))

(declare-fun bs!630608 () Bool)

(declare-fun b!4355341 () Bool)

(assert (= bs!630608 (and b!4355341 b!4355177)))

(declare-fun lambda!140215 () Int)

(assert (=> bs!630608 (= lambda!140215 lambda!140203)))

(declare-fun d!1287184 () Bool)

(declare-fun e!2710356 () Bool)

(assert (=> d!1287184 e!2710356))

(declare-fun res!1789876 () Bool)

(assert (=> d!1287184 (=> (not res!1789876) (not e!2710356))))

(declare-fun lt!1568020 () List!49046)

(assert (=> d!1287184 (= res!1789876 (noDuplicate!601 lt!1568020))))

(assert (=> d!1287184 (= lt!1568020 (getKeysList!122 (toList!2954 lt!1567547)))))

(assert (=> d!1287184 (= (keys!16520 lt!1567547) lt!1568020)))

(declare-fun b!4355339 () Bool)

(declare-fun res!1789874 () Bool)

(assert (=> b!4355339 (=> (not res!1789874) (not e!2710356))))

(assert (=> b!4355339 (= res!1789874 (= (length!58 lt!1568020) (length!59 (toList!2954 lt!1567547))))))

(declare-fun res!1789875 () Bool)

(assert (=> b!4355340 (=> (not res!1789875) (not e!2710356))))

(assert (=> b!4355340 (= res!1789875 (forall!9113 lt!1568020 lambda!140214))))

(assert (=> b!4355341 (= e!2710356 (= (content!7712 lt!1568020) (content!7712 (map!10640 (toList!2954 lt!1567547) lambda!140215))))))

(assert (= (and d!1287184 res!1789876) b!4355339))

(assert (= (and b!4355339 res!1789874) b!4355340))

(assert (= (and b!4355340 res!1789875) b!4355341))

(declare-fun m!4968283 () Bool)

(assert (=> d!1287184 m!4968283))

(assert (=> d!1287184 m!4967769))

(declare-fun m!4968285 () Bool)

(assert (=> b!4355339 m!4968285))

(assert (=> b!4355339 m!4968063))

(declare-fun m!4968287 () Bool)

(assert (=> b!4355340 m!4968287))

(declare-fun m!4968289 () Bool)

(assert (=> b!4355341 m!4968289))

(declare-fun m!4968291 () Bool)

(assert (=> b!4355341 m!4968291))

(assert (=> b!4355341 m!4968291))

(declare-fun m!4968293 () Bool)

(assert (=> b!4355341 m!4968293))

(assert (=> b!4354968 d!1287184))

(declare-fun d!1287198 () Bool)

(declare-fun lt!1568021 () Bool)

(assert (=> d!1287198 (= lt!1568021 (select (content!7712 (keys!16520 lt!1567542)) key!3918))))

(declare-fun e!2710357 () Bool)

(assert (=> d!1287198 (= lt!1568021 e!2710357)))

(declare-fun res!1789877 () Bool)

(assert (=> d!1287198 (=> (not res!1789877) (not e!2710357))))

(assert (=> d!1287198 (= res!1789877 ((_ is Cons!48922) (keys!16520 lt!1567542)))))

(assert (=> d!1287198 (= (contains!11120 (keys!16520 lt!1567542) key!3918) lt!1568021)))

(declare-fun b!4355344 () Bool)

(declare-fun e!2710358 () Bool)

(assert (=> b!4355344 (= e!2710357 e!2710358)))

(declare-fun res!1789878 () Bool)

(assert (=> b!4355344 (=> res!1789878 e!2710358)))

(assert (=> b!4355344 (= res!1789878 (= (h!54471 (keys!16520 lt!1567542)) key!3918))))

(declare-fun b!4355345 () Bool)

(assert (=> b!4355345 (= e!2710358 (contains!11120 (t!355966 (keys!16520 lt!1567542)) key!3918))))

(assert (= (and d!1287198 res!1789877) b!4355344))

(assert (= (and b!4355344 (not res!1789878)) b!4355345))

(assert (=> d!1287198 m!4967949))

(declare-fun m!4968295 () Bool)

(assert (=> d!1287198 m!4968295))

(declare-fun m!4968297 () Bool)

(assert (=> d!1287198 m!4968297))

(declare-fun m!4968299 () Bool)

(assert (=> b!4355345 m!4968299))

(assert (=> b!4355072 d!1287198))

(declare-fun bs!630609 () Bool)

(declare-fun b!4355351 () Bool)

(assert (= bs!630609 (and b!4355351 b!4355181)))

(declare-fun lambda!140216 () Int)

(assert (=> bs!630609 (= (= (toList!2954 lt!1567542) (t!355963 (toList!2954 lt!1567547))) (= lambda!140216 lambda!140200))))

(declare-fun bs!630610 () Bool)

(assert (= bs!630610 (and b!4355351 b!4355176)))

(assert (=> bs!630610 (= (= (toList!2954 lt!1567542) (Cons!48919 (h!54466 (toList!2954 lt!1567547)) (t!355963 (toList!2954 lt!1567547)))) (= lambda!140216 lambda!140201))))

(declare-fun bs!630611 () Bool)

(assert (= bs!630611 (and b!4355351 b!4355175)))

(assert (=> bs!630611 (= (= (toList!2954 lt!1567542) (toList!2954 lt!1567547)) (= lambda!140216 lambda!140202))))

(declare-fun bs!630612 () Bool)

(assert (= bs!630612 (and b!4355351 b!4355340)))

(assert (=> bs!630612 (= (= (toList!2954 lt!1567542) (toList!2954 lt!1567547)) (= lambda!140216 lambda!140214))))

(assert (=> b!4355351 true))

(declare-fun bs!630613 () Bool)

(declare-fun b!4355352 () Bool)

(assert (= bs!630613 (and b!4355352 b!4355177)))

(declare-fun lambda!140217 () Int)

(assert (=> bs!630613 (= lambda!140217 lambda!140203)))

(declare-fun bs!630614 () Bool)

(assert (= bs!630614 (and b!4355352 b!4355341)))

(assert (=> bs!630614 (= lambda!140217 lambda!140215)))

(declare-fun d!1287200 () Bool)

(declare-fun e!2710363 () Bool)

(assert (=> d!1287200 e!2710363))

(declare-fun res!1789885 () Bool)

(assert (=> d!1287200 (=> (not res!1789885) (not e!2710363))))

(declare-fun lt!1568022 () List!49046)

(assert (=> d!1287200 (= res!1789885 (noDuplicate!601 lt!1568022))))

(assert (=> d!1287200 (= lt!1568022 (getKeysList!122 (toList!2954 lt!1567542)))))

(assert (=> d!1287200 (= (keys!16520 lt!1567542) lt!1568022)))

(declare-fun b!4355350 () Bool)

(declare-fun res!1789883 () Bool)

(assert (=> b!4355350 (=> (not res!1789883) (not e!2710363))))

(assert (=> b!4355350 (= res!1789883 (= (length!58 lt!1568022) (length!59 (toList!2954 lt!1567542))))))

(declare-fun res!1789884 () Bool)

(assert (=> b!4355351 (=> (not res!1789884) (not e!2710363))))

(assert (=> b!4355351 (= res!1789884 (forall!9113 lt!1568022 lambda!140216))))

(assert (=> b!4355352 (= e!2710363 (= (content!7712 lt!1568022) (content!7712 (map!10640 (toList!2954 lt!1567542) lambda!140217))))))

(assert (= (and d!1287200 res!1789885) b!4355350))

(assert (= (and b!4355350 res!1789883) b!4355351))

(assert (= (and b!4355351 res!1789884) b!4355352))

(declare-fun m!4968303 () Bool)

(assert (=> d!1287200 m!4968303))

(assert (=> d!1287200 m!4967967))

(declare-fun m!4968305 () Bool)

(assert (=> b!4355350 m!4968305))

(declare-fun m!4968307 () Bool)

(assert (=> b!4355350 m!4968307))

(declare-fun m!4968309 () Bool)

(assert (=> b!4355351 m!4968309))

(declare-fun m!4968311 () Bool)

(assert (=> b!4355352 m!4968311))

(declare-fun m!4968313 () Bool)

(assert (=> b!4355352 m!4968313))

(assert (=> b!4355352 m!4968313))

(declare-fun m!4968315 () Bool)

(assert (=> b!4355352 m!4968315))

(assert (=> b!4355072 d!1287200))

(declare-fun d!1287204 () Bool)

(declare-fun res!1789888 () Bool)

(declare-fun e!2710366 () Bool)

(assert (=> d!1287204 (=> res!1789888 e!2710366)))

(assert (=> d!1287204 (= res!1789888 (and ((_ is Cons!48919) (t!355963 newBucket!200)) (= (_1!27449 (h!54466 (t!355963 newBucket!200))) (_1!27449 (h!54466 newBucket!200)))))))

(assert (=> d!1287204 (= (containsKey!678 (t!355963 newBucket!200) (_1!27449 (h!54466 newBucket!200))) e!2710366)))

(declare-fun b!4355355 () Bool)

(declare-fun e!2710367 () Bool)

(assert (=> b!4355355 (= e!2710366 e!2710367)))

(declare-fun res!1789889 () Bool)

(assert (=> b!4355355 (=> (not res!1789889) (not e!2710367))))

(assert (=> b!4355355 (= res!1789889 ((_ is Cons!48919) (t!355963 newBucket!200)))))

(declare-fun b!4355356 () Bool)

(assert (=> b!4355356 (= e!2710367 (containsKey!678 (t!355963 (t!355963 newBucket!200)) (_1!27449 (h!54466 newBucket!200))))))

(assert (= (and d!1287204 (not res!1789888)) b!4355355))

(assert (= (and b!4355355 res!1789889) b!4355356))

(declare-fun m!4968317 () Bool)

(assert (=> b!4355356 m!4968317))

(assert (=> b!4355085 d!1287204))

(declare-fun d!1287206 () Bool)

(declare-fun lt!1568023 () Bool)

(assert (=> d!1287206 (= lt!1568023 (select (content!7710 (toList!2953 lt!1567875)) lt!1567548))))

(declare-fun e!2710368 () Bool)

(assert (=> d!1287206 (= lt!1568023 e!2710368)))

(declare-fun res!1789891 () Bool)

(assert (=> d!1287206 (=> (not res!1789891) (not e!2710368))))

(assert (=> d!1287206 (= res!1789891 ((_ is Cons!48920) (toList!2953 lt!1567875)))))

(assert (=> d!1287206 (= (contains!11117 (toList!2953 lt!1567875) lt!1567548) lt!1568023)))

(declare-fun b!4355357 () Bool)

(declare-fun e!2710369 () Bool)

(assert (=> b!4355357 (= e!2710368 e!2710369)))

(declare-fun res!1789890 () Bool)

(assert (=> b!4355357 (=> res!1789890 e!2710369)))

(assert (=> b!4355357 (= res!1789890 (= (h!54467 (toList!2953 lt!1567875)) lt!1567548))))

(declare-fun b!4355358 () Bool)

(assert (=> b!4355358 (= e!2710369 (contains!11117 (t!355964 (toList!2953 lt!1567875)) lt!1567548))))

(assert (= (and d!1287206 res!1789891) b!4355357))

(assert (= (and b!4355357 (not res!1789890)) b!4355358))

(declare-fun m!4968319 () Bool)

(assert (=> d!1287206 m!4968319))

(declare-fun m!4968321 () Bool)

(assert (=> d!1287206 m!4968321))

(declare-fun m!4968323 () Bool)

(assert (=> b!4355358 m!4968323))

(assert (=> b!4355056 d!1287206))

(declare-fun d!1287208 () Bool)

(assert (=> d!1287208 (isDefined!7754 (getValueByKey!447 (toList!2954 lt!1567547) key!3918))))

(declare-fun lt!1568031 () Unit!71399)

(declare-fun choose!26878 (List!49043 K!10280) Unit!71399)

(assert (=> d!1287208 (= lt!1568031 (choose!26878 (toList!2954 lt!1567547) key!3918))))

(assert (=> d!1287208 (invariantList!674 (toList!2954 lt!1567547))))

(assert (=> d!1287208 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!357 (toList!2954 lt!1567547) key!3918) lt!1568031)))

(declare-fun bs!630619 () Bool)

(assert (= bs!630619 d!1287208))

(assert (=> bs!630619 m!4967757))

(assert (=> bs!630619 m!4967757))

(assert (=> bs!630619 m!4967759))

(declare-fun m!4968339 () Bool)

(assert (=> bs!630619 m!4968339))

(assert (=> bs!630619 m!4968075))

(assert (=> b!4354970 d!1287208))

(declare-fun d!1287220 () Bool)

(assert (=> d!1287220 (= (isDefined!7754 (getValueByKey!447 (toList!2954 lt!1567547) key!3918)) (not (isEmpty!28196 (getValueByKey!447 (toList!2954 lt!1567547) key!3918))))))

(declare-fun bs!630620 () Bool)

(assert (= bs!630620 d!1287220))

(assert (=> bs!630620 m!4967757))

(declare-fun m!4968341 () Bool)

(assert (=> bs!630620 m!4968341))

(assert (=> b!4354970 d!1287220))

(declare-fun b!4355364 () Bool)

(declare-fun e!2710372 () Option!10461)

(declare-fun e!2710373 () Option!10461)

(assert (=> b!4355364 (= e!2710372 e!2710373)))

(declare-fun c!740471 () Bool)

(assert (=> b!4355364 (= c!740471 (and ((_ is Cons!48919) (toList!2954 lt!1567547)) (not (= (_1!27449 (h!54466 (toList!2954 lt!1567547))) key!3918))))))

(declare-fun b!4355365 () Bool)

(assert (=> b!4355365 (= e!2710373 (getValueByKey!447 (t!355963 (toList!2954 lt!1567547)) key!3918))))

(declare-fun d!1287222 () Bool)

(declare-fun c!740470 () Bool)

(assert (=> d!1287222 (= c!740470 (and ((_ is Cons!48919) (toList!2954 lt!1567547)) (= (_1!27449 (h!54466 (toList!2954 lt!1567547))) key!3918)))))

(assert (=> d!1287222 (= (getValueByKey!447 (toList!2954 lt!1567547) key!3918) e!2710372)))

(declare-fun b!4355363 () Bool)

(assert (=> b!4355363 (= e!2710372 (Some!10460 (_2!27449 (h!54466 (toList!2954 lt!1567547)))))))

(declare-fun b!4355366 () Bool)

(assert (=> b!4355366 (= e!2710373 None!10460)))

(assert (= (and d!1287222 c!740470) b!4355363))

(assert (= (and d!1287222 (not c!740470)) b!4355364))

(assert (= (and b!4355364 c!740471) b!4355365))

(assert (= (and b!4355364 (not c!740471)) b!4355366))

(declare-fun m!4968343 () Bool)

(assert (=> b!4355365 m!4968343))

(assert (=> b!4354970 d!1287222))

(declare-fun d!1287224 () Bool)

(assert (=> d!1287224 (contains!11120 (getKeysList!122 (toList!2954 lt!1567547)) key!3918)))

(declare-fun lt!1568037 () Unit!71399)

(declare-fun choose!26879 (List!49043 K!10280) Unit!71399)

(assert (=> d!1287224 (= lt!1568037 (choose!26879 (toList!2954 lt!1567547) key!3918))))

(assert (=> d!1287224 (invariantList!674 (toList!2954 lt!1567547))))

(assert (=> d!1287224 (= (lemmaInListThenGetKeysListContains!119 (toList!2954 lt!1567547) key!3918) lt!1568037)))

(declare-fun bs!630621 () Bool)

(assert (= bs!630621 d!1287224))

(assert (=> bs!630621 m!4967769))

(assert (=> bs!630621 m!4967769))

(declare-fun m!4968351 () Bool)

(assert (=> bs!630621 m!4968351))

(declare-fun m!4968353 () Bool)

(assert (=> bs!630621 m!4968353))

(assert (=> bs!630621 m!4968075))

(assert (=> b!4354970 d!1287224))

(assert (=> b!4355070 d!1287200))

(declare-fun d!1287228 () Bool)

(declare-fun lt!1568038 () Bool)

(assert (=> d!1287228 (= lt!1568038 (select (content!7710 (toList!2953 lt!1567650)) lt!1567548))))

(declare-fun e!2710384 () Bool)

(assert (=> d!1287228 (= lt!1568038 e!2710384)))

(declare-fun res!1789903 () Bool)

(assert (=> d!1287228 (=> (not res!1789903) (not e!2710384))))

(assert (=> d!1287228 (= res!1789903 ((_ is Cons!48920) (toList!2953 lt!1567650)))))

(assert (=> d!1287228 (= (contains!11117 (toList!2953 lt!1567650) lt!1567548) lt!1568038)))

(declare-fun b!4355377 () Bool)

(declare-fun e!2710385 () Bool)

(assert (=> b!4355377 (= e!2710384 e!2710385)))

(declare-fun res!1789902 () Bool)

(assert (=> b!4355377 (=> res!1789902 e!2710385)))

(assert (=> b!4355377 (= res!1789902 (= (h!54467 (toList!2953 lt!1567650)) lt!1567548))))

(declare-fun b!4355378 () Bool)

(assert (=> b!4355378 (= e!2710385 (contains!11117 (t!355964 (toList!2953 lt!1567650)) lt!1567548))))

(assert (= (and d!1287228 res!1789903) b!4355377))

(assert (= (and b!4355377 (not res!1789902)) b!4355378))

(declare-fun m!4968355 () Bool)

(assert (=> d!1287228 m!4968355))

(declare-fun m!4968357 () Bool)

(assert (=> d!1287228 m!4968357))

(declare-fun m!4968359 () Bool)

(assert (=> b!4355378 m!4968359))

(assert (=> b!4354915 d!1287228))

(assert (=> d!1287062 d!1287070))

(assert (=> d!1287062 d!1287048))

(declare-fun d!1287230 () Bool)

(assert (=> d!1287230 (not (containsKey!678 (apply!11337 lm!1707 (_1!27450 (h!54467 (toList!2953 lm!1707)))) key!3918))))

(assert (=> d!1287230 true))

(declare-fun _$39!271 () Unit!71399)

(assert (=> d!1287230 (= (choose!26870 lm!1707 key!3918 (_1!27450 (h!54467 (toList!2953 lm!1707))) hashF!1247) _$39!271)))

(declare-fun bs!630622 () Bool)

(assert (= bs!630622 d!1287230))

(assert (=> bs!630622 m!4967445))

(assert (=> bs!630622 m!4967445))

(assert (=> bs!630622 m!4967447))

(assert (=> d!1287062 d!1287230))

(declare-fun d!1287238 () Bool)

(declare-fun res!1789908 () Bool)

(declare-fun e!2710390 () Bool)

(assert (=> d!1287238 (=> res!1789908 e!2710390)))

(assert (=> d!1287238 (= res!1789908 ((_ is Nil!48920) (toList!2953 lm!1707)))))

(assert (=> d!1287238 (= (forall!9110 (toList!2953 lm!1707) lambda!140178) e!2710390)))

(declare-fun b!4355383 () Bool)

(declare-fun e!2710391 () Bool)

(assert (=> b!4355383 (= e!2710390 e!2710391)))

(declare-fun res!1789909 () Bool)

(assert (=> b!4355383 (=> (not res!1789909) (not e!2710391))))

(assert (=> b!4355383 (= res!1789909 (dynLambda!20629 lambda!140178 (h!54467 (toList!2953 lm!1707))))))

(declare-fun b!4355384 () Bool)

(assert (=> b!4355384 (= e!2710391 (forall!9110 (t!355964 (toList!2953 lm!1707)) lambda!140178))))

(assert (= (and d!1287238 (not res!1789908)) b!4355383))

(assert (= (and b!4355383 res!1789909) b!4355384))

(declare-fun b_lambda!130991 () Bool)

(assert (=> (not b_lambda!130991) (not b!4355383)))

(declare-fun m!4968369 () Bool)

(assert (=> b!4355383 m!4968369))

(declare-fun m!4968371 () Bool)

(assert (=> b!4355384 m!4968371))

(assert (=> d!1287062 d!1287238))

(declare-fun d!1287240 () Bool)

(declare-fun lt!1568039 () Bool)

(assert (=> d!1287240 (= lt!1568039 (select (content!7712 e!2710132) key!3918))))

(declare-fun e!2710392 () Bool)

(assert (=> d!1287240 (= lt!1568039 e!2710392)))

(declare-fun res!1789910 () Bool)

(assert (=> d!1287240 (=> (not res!1789910) (not e!2710392))))

(assert (=> d!1287240 (= res!1789910 ((_ is Cons!48922) e!2710132))))

(assert (=> d!1287240 (= (contains!11120 e!2710132 key!3918) lt!1568039)))

(declare-fun b!4355385 () Bool)

(declare-fun e!2710393 () Bool)

(assert (=> b!4355385 (= e!2710392 e!2710393)))

(declare-fun res!1789911 () Bool)

(assert (=> b!4355385 (=> res!1789911 e!2710393)))

(assert (=> b!4355385 (= res!1789911 (= (h!54471 e!2710132) key!3918))))

(declare-fun b!4355386 () Bool)

(assert (=> b!4355386 (= e!2710393 (contains!11120 (t!355966 e!2710132) key!3918))))

(assert (= (and d!1287240 res!1789910) b!4355385))

(assert (= (and b!4355385 (not res!1789911)) b!4355386))

(declare-fun m!4968373 () Bool)

(assert (=> d!1287240 m!4968373))

(declare-fun m!4968375 () Bool)

(assert (=> d!1287240 m!4968375))

(declare-fun m!4968377 () Bool)

(assert (=> b!4355386 m!4968377))

(assert (=> bm!302614 d!1287240))

(declare-fun d!1287242 () Bool)

(declare-fun res!1789912 () Bool)

(declare-fun e!2710394 () Bool)

(assert (=> d!1287242 (=> res!1789912 e!2710394)))

(assert (=> d!1287242 (= res!1789912 (and ((_ is Cons!48919) (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (= (_1!27449 (h!54466 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) key!3918)))))

(assert (=> d!1287242 (= (containsKey!678 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))) key!3918) e!2710394)))

(declare-fun b!4355387 () Bool)

(declare-fun e!2710395 () Bool)

(assert (=> b!4355387 (= e!2710394 e!2710395)))

(declare-fun res!1789913 () Bool)

(assert (=> b!4355387 (=> (not res!1789913) (not e!2710395))))

(assert (=> b!4355387 (= res!1789913 ((_ is Cons!48919) (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(declare-fun b!4355388 () Bool)

(assert (=> b!4355388 (= e!2710395 (containsKey!678 (t!355963 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707))))) key!3918))))

(assert (= (and d!1287242 (not res!1789912)) b!4355387))

(assert (= (and b!4355387 res!1789913) b!4355388))

(declare-fun m!4968379 () Bool)

(assert (=> b!4355388 m!4968379))

(assert (=> b!4354987 d!1287242))

(declare-fun d!1287244 () Bool)

(declare-fun res!1789914 () Bool)

(declare-fun e!2710396 () Bool)

(assert (=> d!1287244 (=> res!1789914 e!2710396)))

(assert (=> d!1287244 (= res!1789914 ((_ is Nil!48919) (_2!27450 (h!54467 (toList!2953 lm!1707)))))))

(assert (=> d!1287244 (= (forall!9112 (_2!27450 (h!54467 (toList!2953 lm!1707))) lambda!140173) e!2710396)))

(declare-fun b!4355389 () Bool)

(declare-fun e!2710397 () Bool)

(assert (=> b!4355389 (= e!2710396 e!2710397)))

(declare-fun res!1789915 () Bool)

(assert (=> b!4355389 (=> (not res!1789915) (not e!2710397))))

(assert (=> b!4355389 (= res!1789915 (dynLambda!20630 lambda!140173 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(declare-fun b!4355390 () Bool)

(assert (=> b!4355390 (= e!2710397 (forall!9112 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))) lambda!140173))))

(assert (= (and d!1287244 (not res!1789914)) b!4355389))

(assert (= (and b!4355389 res!1789915) b!4355390))

(declare-fun b_lambda!130993 () Bool)

(assert (=> (not b_lambda!130993) (not b!4355389)))

(declare-fun m!4968381 () Bool)

(assert (=> b!4355389 m!4968381))

(declare-fun m!4968383 () Bool)

(assert (=> b!4355390 m!4968383))

(assert (=> d!1287036 d!1287244))

(declare-fun d!1287246 () Bool)

(declare-fun res!1789916 () Bool)

(declare-fun e!2710398 () Bool)

(assert (=> d!1287246 (=> res!1789916 e!2710398)))

(assert (=> d!1287246 (= res!1789916 (not ((_ is Cons!48919) (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(assert (=> d!1287246 (= (noDuplicateKeys!485 (_2!27450 (h!54467 (toList!2953 lm!1707)))) e!2710398)))

(declare-fun b!4355391 () Bool)

(declare-fun e!2710399 () Bool)

(assert (=> b!4355391 (= e!2710398 e!2710399)))

(declare-fun res!1789917 () Bool)

(assert (=> b!4355391 (=> (not res!1789917) (not e!2710399))))

(assert (=> b!4355391 (= res!1789917 (not (containsKey!678 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))))

(declare-fun b!4355392 () Bool)

(assert (=> b!4355392 (= e!2710399 (noDuplicateKeys!485 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(assert (= (and d!1287246 (not res!1789916)) b!4355391))

(assert (= (and b!4355391 res!1789917) b!4355392))

(declare-fun m!4968385 () Bool)

(assert (=> b!4355391 m!4968385))

(declare-fun m!4968387 () Bool)

(assert (=> b!4355392 m!4968387))

(assert (=> d!1287036 d!1287246))

(declare-fun d!1287248 () Bool)

(assert (=> d!1287248 (= (invariantList!674 (toList!2954 lt!1567857)) (noDuplicatedKeys!117 (toList!2954 lt!1567857)))))

(declare-fun bs!630623 () Bool)

(assert (= bs!630623 d!1287248))

(declare-fun m!4968389 () Bool)

(assert (=> bs!630623 m!4968389))

(assert (=> d!1287046 d!1287248))

(declare-fun d!1287250 () Bool)

(declare-fun res!1789918 () Bool)

(declare-fun e!2710400 () Bool)

(assert (=> d!1287250 (=> res!1789918 e!2710400)))

(assert (=> d!1287250 (= res!1789918 ((_ is Nil!48920) (toList!2953 lt!1567543)))))

(assert (=> d!1287250 (= (forall!9110 (toList!2953 lt!1567543) lambda!140174) e!2710400)))

(declare-fun b!4355393 () Bool)

(declare-fun e!2710401 () Bool)

(assert (=> b!4355393 (= e!2710400 e!2710401)))

(declare-fun res!1789919 () Bool)

(assert (=> b!4355393 (=> (not res!1789919) (not e!2710401))))

(assert (=> b!4355393 (= res!1789919 (dynLambda!20629 lambda!140174 (h!54467 (toList!2953 lt!1567543))))))

(declare-fun b!4355394 () Bool)

(assert (=> b!4355394 (= e!2710401 (forall!9110 (t!355964 (toList!2953 lt!1567543)) lambda!140174))))

(assert (= (and d!1287250 (not res!1789918)) b!4355393))

(assert (= (and b!4355393 res!1789919) b!4355394))

(declare-fun b_lambda!130995 () Bool)

(assert (=> (not b_lambda!130995) (not b!4355393)))

(declare-fun m!4968391 () Bool)

(assert (=> b!4355393 m!4968391))

(declare-fun m!4968393 () Bool)

(assert (=> b!4355394 m!4968393))

(assert (=> d!1287046 d!1287250))

(declare-fun d!1287252 () Bool)

(assert (=> d!1287252 (isDefined!7755 (getValueByKey!446 (toList!2953 lm!1707) hash!377))))

(declare-fun lt!1568042 () Unit!71399)

(declare-fun choose!26880 (List!49044 (_ BitVec 64)) Unit!71399)

(assert (=> d!1287252 (= lt!1568042 (choose!26880 (toList!2953 lm!1707) hash!377))))

(declare-fun e!2710404 () Bool)

(assert (=> d!1287252 e!2710404))

(declare-fun res!1789922 () Bool)

(assert (=> d!1287252 (=> (not res!1789922) (not e!2710404))))

(assert (=> d!1287252 (= res!1789922 (isStrictlySorted!100 (toList!2953 lm!1707)))))

(assert (=> d!1287252 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!358 (toList!2953 lm!1707) hash!377) lt!1568042)))

(declare-fun b!4355397 () Bool)

(assert (=> b!4355397 (= e!2710404 (containsKey!682 (toList!2953 lm!1707) hash!377))))

(assert (= (and d!1287252 res!1789922) b!4355397))

(assert (=> d!1287252 m!4967497))

(assert (=> d!1287252 m!4967497))

(assert (=> d!1287252 m!4967783))

(declare-fun m!4968395 () Bool)

(assert (=> d!1287252 m!4968395))

(assert (=> d!1287252 m!4967541))

(assert (=> b!4355397 m!4967779))

(assert (=> b!4354994 d!1287252))

(declare-fun d!1287254 () Bool)

(declare-fun isEmpty!28198 (Option!10460) Bool)

(assert (=> d!1287254 (= (isDefined!7755 (getValueByKey!446 (toList!2953 lm!1707) hash!377)) (not (isEmpty!28198 (getValueByKey!446 (toList!2953 lm!1707) hash!377))))))

(declare-fun bs!630624 () Bool)

(assert (= bs!630624 d!1287254))

(assert (=> bs!630624 m!4967497))

(declare-fun m!4968397 () Bool)

(assert (=> bs!630624 m!4968397))

(assert (=> b!4354994 d!1287254))

(assert (=> b!4354994 d!1287178))

(declare-fun b!4355401 () Bool)

(declare-fun e!2710406 () Option!10460)

(assert (=> b!4355401 (= e!2710406 None!10459)))

(declare-fun b!4355400 () Bool)

(assert (=> b!4355400 (= e!2710406 (getValueByKey!446 (t!355964 (toList!2953 lt!1567650)) (_1!27450 lt!1567548)))))

(declare-fun b!4355399 () Bool)

(declare-fun e!2710405 () Option!10460)

(assert (=> b!4355399 (= e!2710405 e!2710406)))

(declare-fun c!740473 () Bool)

(assert (=> b!4355399 (= c!740473 (and ((_ is Cons!48920) (toList!2953 lt!1567650)) (not (= (_1!27450 (h!54467 (toList!2953 lt!1567650))) (_1!27450 lt!1567548)))))))

(declare-fun b!4355398 () Bool)

(assert (=> b!4355398 (= e!2710405 (Some!10459 (_2!27450 (h!54467 (toList!2953 lt!1567650)))))))

(declare-fun d!1287256 () Bool)

(declare-fun c!740472 () Bool)

(assert (=> d!1287256 (= c!740472 (and ((_ is Cons!48920) (toList!2953 lt!1567650)) (= (_1!27450 (h!54467 (toList!2953 lt!1567650))) (_1!27450 lt!1567548))))))

(assert (=> d!1287256 (= (getValueByKey!446 (toList!2953 lt!1567650) (_1!27450 lt!1567548)) e!2710405)))

(assert (= (and d!1287256 c!740472) b!4355398))

(assert (= (and d!1287256 (not c!740472)) b!4355399))

(assert (= (and b!4355399 c!740473) b!4355400))

(assert (= (and b!4355399 (not c!740473)) b!4355401))

(declare-fun m!4968399 () Bool)

(assert (=> b!4355400 m!4968399))

(assert (=> b!4354914 d!1287256))

(declare-fun d!1287258 () Bool)

(assert (=> d!1287258 (= (get!15889 (getValueByKey!446 (toList!2953 lm!1707) hash!377)) (v!43321 (getValueByKey!446 (toList!2953 lm!1707) hash!377)))))

(assert (=> d!1286942 d!1287258))

(assert (=> d!1286942 d!1287178))

(declare-fun d!1287260 () Bool)

(declare-fun lt!1568043 () Bool)

(assert (=> d!1287260 (= lt!1568043 (select (content!7712 e!2710189) key!3918))))

(declare-fun e!2710407 () Bool)

(assert (=> d!1287260 (= lt!1568043 e!2710407)))

(declare-fun res!1789923 () Bool)

(assert (=> d!1287260 (=> (not res!1789923) (not e!2710407))))

(assert (=> d!1287260 (= res!1789923 ((_ is Cons!48922) e!2710189))))

(assert (=> d!1287260 (= (contains!11120 e!2710189 key!3918) lt!1568043)))

(declare-fun b!4355402 () Bool)

(declare-fun e!2710408 () Bool)

(assert (=> b!4355402 (= e!2710407 e!2710408)))

(declare-fun res!1789924 () Bool)

(assert (=> b!4355402 (=> res!1789924 e!2710408)))

(assert (=> b!4355402 (= res!1789924 (= (h!54471 e!2710189) key!3918))))

(declare-fun b!4355403 () Bool)

(assert (=> b!4355403 (= e!2710408 (contains!11120 (t!355966 e!2710189) key!3918))))

(assert (= (and d!1287260 res!1789923) b!4355402))

(assert (= (and b!4355402 (not res!1789924)) b!4355403))

(declare-fun m!4968401 () Bool)

(assert (=> d!1287260 m!4968401))

(declare-fun m!4968403 () Bool)

(assert (=> d!1287260 m!4968403))

(declare-fun m!4968405 () Bool)

(assert (=> b!4355403 m!4968405))

(assert (=> bm!302634 d!1287260))

(assert (=> b!4354996 d!1287254))

(assert (=> b!4354996 d!1287178))

(declare-fun d!1287262 () Bool)

(assert (=> d!1287262 (= (get!15889 (getValueByKey!446 (toList!2953 lm!1707) (_1!27450 (h!54467 (toList!2953 lm!1707))))) (v!43321 (getValueByKey!446 (toList!2953 lm!1707) (_1!27450 (h!54467 (toList!2953 lm!1707))))))))

(assert (=> d!1287048 d!1287262))

(declare-fun b!4355407 () Bool)

(declare-fun e!2710410 () Option!10460)

(assert (=> b!4355407 (= e!2710410 None!10459)))

(declare-fun b!4355406 () Bool)

(assert (=> b!4355406 (= e!2710410 (getValueByKey!446 (t!355964 (toList!2953 lm!1707)) (_1!27450 (h!54467 (toList!2953 lm!1707)))))))

(declare-fun b!4355405 () Bool)

(declare-fun e!2710409 () Option!10460)

(assert (=> b!4355405 (= e!2710409 e!2710410)))

(declare-fun c!740475 () Bool)

(assert (=> b!4355405 (= c!740475 (and ((_ is Cons!48920) (toList!2953 lm!1707)) (not (= (_1!27450 (h!54467 (toList!2953 lm!1707))) (_1!27450 (h!54467 (toList!2953 lm!1707)))))))))

(declare-fun b!4355404 () Bool)

(assert (=> b!4355404 (= e!2710409 (Some!10459 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))

(declare-fun d!1287264 () Bool)

(declare-fun c!740474 () Bool)

(assert (=> d!1287264 (= c!740474 (and ((_ is Cons!48920) (toList!2953 lm!1707)) (= (_1!27450 (h!54467 (toList!2953 lm!1707))) (_1!27450 (h!54467 (toList!2953 lm!1707))))))))

(assert (=> d!1287264 (= (getValueByKey!446 (toList!2953 lm!1707) (_1!27450 (h!54467 (toList!2953 lm!1707)))) e!2710409)))

(assert (= (and d!1287264 c!740474) b!4355404))

(assert (= (and d!1287264 (not c!740474)) b!4355405))

(assert (= (and b!4355405 c!740475) b!4355406))

(assert (= (and b!4355405 (not c!740475)) b!4355407))

(declare-fun m!4968407 () Bool)

(assert (=> b!4355406 m!4968407))

(assert (=> d!1287048 d!1287264))

(declare-fun d!1287266 () Bool)

(assert (=> d!1287266 (isDefined!7754 (getValueByKey!447 (toList!2954 lt!1567542) key!3918))))

(declare-fun lt!1568044 () Unit!71399)

(assert (=> d!1287266 (= lt!1568044 (choose!26878 (toList!2954 lt!1567542) key!3918))))

(assert (=> d!1287266 (invariantList!674 (toList!2954 lt!1567542))))

(assert (=> d!1287266 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!357 (toList!2954 lt!1567542) key!3918) lt!1568044)))

(declare-fun bs!630625 () Bool)

(assert (= bs!630625 d!1287266))

(assert (=> bs!630625 m!4967955))

(assert (=> bs!630625 m!4967955))

(assert (=> bs!630625 m!4967957))

(declare-fun m!4968409 () Bool)

(assert (=> bs!630625 m!4968409))

(declare-fun m!4968411 () Bool)

(assert (=> bs!630625 m!4968411))

(assert (=> b!4355069 d!1287266))

(declare-fun d!1287268 () Bool)

(assert (=> d!1287268 (= (isDefined!7754 (getValueByKey!447 (toList!2954 lt!1567542) key!3918)) (not (isEmpty!28196 (getValueByKey!447 (toList!2954 lt!1567542) key!3918))))))

(declare-fun bs!630626 () Bool)

(assert (= bs!630626 d!1287268))

(assert (=> bs!630626 m!4967955))

(declare-fun m!4968413 () Bool)

(assert (=> bs!630626 m!4968413))

(assert (=> b!4355069 d!1287268))

(declare-fun b!4355409 () Bool)

(declare-fun e!2710411 () Option!10461)

(declare-fun e!2710412 () Option!10461)

(assert (=> b!4355409 (= e!2710411 e!2710412)))

(declare-fun c!740477 () Bool)

(assert (=> b!4355409 (= c!740477 (and ((_ is Cons!48919) (toList!2954 lt!1567542)) (not (= (_1!27449 (h!54466 (toList!2954 lt!1567542))) key!3918))))))

(declare-fun b!4355410 () Bool)

(assert (=> b!4355410 (= e!2710412 (getValueByKey!447 (t!355963 (toList!2954 lt!1567542)) key!3918))))

(declare-fun d!1287270 () Bool)

(declare-fun c!740476 () Bool)

(assert (=> d!1287270 (= c!740476 (and ((_ is Cons!48919) (toList!2954 lt!1567542)) (= (_1!27449 (h!54466 (toList!2954 lt!1567542))) key!3918)))))

(assert (=> d!1287270 (= (getValueByKey!447 (toList!2954 lt!1567542) key!3918) e!2710411)))

(declare-fun b!4355408 () Bool)

(assert (=> b!4355408 (= e!2710411 (Some!10460 (_2!27449 (h!54466 (toList!2954 lt!1567542)))))))

(declare-fun b!4355411 () Bool)

(assert (=> b!4355411 (= e!2710412 None!10460)))

(assert (= (and d!1287270 c!740476) b!4355408))

(assert (= (and d!1287270 (not c!740476)) b!4355409))

(assert (= (and b!4355409 c!740477) b!4355410))

(assert (= (and b!4355409 (not c!740477)) b!4355411))

(declare-fun m!4968415 () Bool)

(assert (=> b!4355410 m!4968415))

(assert (=> b!4355069 d!1287270))

(declare-fun d!1287272 () Bool)

(assert (=> d!1287272 (contains!11120 (getKeysList!122 (toList!2954 lt!1567542)) key!3918)))

(declare-fun lt!1568045 () Unit!71399)

(assert (=> d!1287272 (= lt!1568045 (choose!26879 (toList!2954 lt!1567542) key!3918))))

(assert (=> d!1287272 (invariantList!674 (toList!2954 lt!1567542))))

(assert (=> d!1287272 (= (lemmaInListThenGetKeysListContains!119 (toList!2954 lt!1567542) key!3918) lt!1568045)))

(declare-fun bs!630627 () Bool)

(assert (= bs!630627 d!1287272))

(assert (=> bs!630627 m!4967967))

(assert (=> bs!630627 m!4967967))

(declare-fun m!4968417 () Bool)

(assert (=> bs!630627 m!4968417))

(declare-fun m!4968419 () Bool)

(assert (=> bs!630627 m!4968419))

(assert (=> bs!630627 m!4968411))

(assert (=> b!4355069 d!1287272))

(assert (=> b!4355067 d!1287198))

(assert (=> b!4355067 d!1287200))

(declare-fun d!1287274 () Bool)

(declare-fun e!2710414 () Bool)

(assert (=> d!1287274 e!2710414))

(declare-fun res!1789925 () Bool)

(assert (=> d!1287274 (=> res!1789925 e!2710414)))

(declare-fun lt!1568047 () Bool)

(assert (=> d!1287274 (= res!1789925 (not lt!1568047))))

(declare-fun lt!1568048 () Bool)

(assert (=> d!1287274 (= lt!1568047 lt!1568048)))

(declare-fun lt!1568046 () Unit!71399)

(declare-fun e!2710413 () Unit!71399)

(assert (=> d!1287274 (= lt!1568046 e!2710413)))

(declare-fun c!740478 () Bool)

(assert (=> d!1287274 (= c!740478 lt!1568048)))

(assert (=> d!1287274 (= lt!1568048 (containsKey!682 (toList!2953 lt!1567650) (_1!27450 lt!1567548)))))

(assert (=> d!1287274 (= (contains!11116 lt!1567650 (_1!27450 lt!1567548)) lt!1568047)))

(declare-fun b!4355412 () Bool)

(declare-fun lt!1568049 () Unit!71399)

(assert (=> b!4355412 (= e!2710413 lt!1568049)))

(assert (=> b!4355412 (= lt!1568049 (lemmaContainsKeyImpliesGetValueByKeyDefined!358 (toList!2953 lt!1567650) (_1!27450 lt!1567548)))))

(assert (=> b!4355412 (isDefined!7755 (getValueByKey!446 (toList!2953 lt!1567650) (_1!27450 lt!1567548)))))

(declare-fun b!4355413 () Bool)

(declare-fun Unit!71464 () Unit!71399)

(assert (=> b!4355413 (= e!2710413 Unit!71464)))

(declare-fun b!4355414 () Bool)

(assert (=> b!4355414 (= e!2710414 (isDefined!7755 (getValueByKey!446 (toList!2953 lt!1567650) (_1!27450 lt!1567548))))))

(assert (= (and d!1287274 c!740478) b!4355412))

(assert (= (and d!1287274 (not c!740478)) b!4355413))

(assert (= (and d!1287274 (not res!1789925)) b!4355414))

(declare-fun m!4968421 () Bool)

(assert (=> d!1287274 m!4968421))

(declare-fun m!4968423 () Bool)

(assert (=> b!4355412 m!4968423))

(assert (=> b!4355412 m!4967649))

(assert (=> b!4355412 m!4967649))

(declare-fun m!4968425 () Bool)

(assert (=> b!4355412 m!4968425))

(assert (=> b!4355414 m!4967649))

(assert (=> b!4355414 m!4967649))

(assert (=> b!4355414 m!4968425))

(assert (=> d!1286974 d!1287274))

(declare-fun b!4355418 () Bool)

(declare-fun e!2710416 () Option!10460)

(assert (=> b!4355418 (= e!2710416 None!10459)))

(declare-fun b!4355417 () Bool)

(assert (=> b!4355417 (= e!2710416 (getValueByKey!446 (t!355964 lt!1567652) (_1!27450 lt!1567548)))))

(declare-fun b!4355416 () Bool)

(declare-fun e!2710415 () Option!10460)

(assert (=> b!4355416 (= e!2710415 e!2710416)))

(declare-fun c!740480 () Bool)

(assert (=> b!4355416 (= c!740480 (and ((_ is Cons!48920) lt!1567652) (not (= (_1!27450 (h!54467 lt!1567652)) (_1!27450 lt!1567548)))))))

(declare-fun b!4355415 () Bool)

(assert (=> b!4355415 (= e!2710415 (Some!10459 (_2!27450 (h!54467 lt!1567652))))))

(declare-fun d!1287276 () Bool)

(declare-fun c!740479 () Bool)

(assert (=> d!1287276 (= c!740479 (and ((_ is Cons!48920) lt!1567652) (= (_1!27450 (h!54467 lt!1567652)) (_1!27450 lt!1567548))))))

(assert (=> d!1287276 (= (getValueByKey!446 lt!1567652 (_1!27450 lt!1567548)) e!2710415)))

(assert (= (and d!1287276 c!740479) b!4355415))

(assert (= (and d!1287276 (not c!740479)) b!4355416))

(assert (= (and b!4355416 c!740480) b!4355417))

(assert (= (and b!4355416 (not c!740480)) b!4355418))

(declare-fun m!4968427 () Bool)

(assert (=> b!4355417 m!4968427))

(assert (=> d!1286974 d!1287276))

(declare-fun d!1287278 () Bool)

(assert (=> d!1287278 (= (getValueByKey!446 lt!1567652 (_1!27450 lt!1567548)) (Some!10459 (_2!27450 lt!1567548)))))

(declare-fun lt!1568052 () Unit!71399)

(declare-fun choose!26881 (List!49044 (_ BitVec 64) List!49043) Unit!71399)

(assert (=> d!1287278 (= lt!1568052 (choose!26881 lt!1567652 (_1!27450 lt!1567548) (_2!27450 lt!1567548)))))

(declare-fun e!2710419 () Bool)

(assert (=> d!1287278 e!2710419))

(declare-fun res!1789930 () Bool)

(assert (=> d!1287278 (=> (not res!1789930) (not e!2710419))))

(assert (=> d!1287278 (= res!1789930 (isStrictlySorted!100 lt!1567652))))

(assert (=> d!1287278 (= (lemmaContainsTupThenGetReturnValue!220 lt!1567652 (_1!27450 lt!1567548) (_2!27450 lt!1567548)) lt!1568052)))

(declare-fun b!4355423 () Bool)

(declare-fun res!1789931 () Bool)

(assert (=> b!4355423 (=> (not res!1789931) (not e!2710419))))

(assert (=> b!4355423 (= res!1789931 (containsKey!682 lt!1567652 (_1!27450 lt!1567548)))))

(declare-fun b!4355424 () Bool)

(assert (=> b!4355424 (= e!2710419 (contains!11117 lt!1567652 (tuple2!48313 (_1!27450 lt!1567548) (_2!27450 lt!1567548))))))

(assert (= (and d!1287278 res!1789930) b!4355423))

(assert (= (and b!4355423 res!1789931) b!4355424))

(assert (=> d!1287278 m!4967643))

(declare-fun m!4968429 () Bool)

(assert (=> d!1287278 m!4968429))

(declare-fun m!4968431 () Bool)

(assert (=> d!1287278 m!4968431))

(declare-fun m!4968433 () Bool)

(assert (=> b!4355423 m!4968433))

(declare-fun m!4968435 () Bool)

(assert (=> b!4355424 m!4968435))

(assert (=> d!1286974 d!1287278))

(declare-fun b!4355483 () Bool)

(declare-fun e!2710450 () List!49044)

(declare-fun call!302663 () List!49044)

(assert (=> b!4355483 (= e!2710450 call!302663)))

(declare-fun c!740501 () Bool)

(declare-fun c!740503 () Bool)

(declare-fun b!4355484 () Bool)

(declare-fun e!2710447 () List!49044)

(assert (=> b!4355484 (= e!2710447 (ite c!740503 (t!355964 (toList!2953 lm!1707)) (ite c!740501 (Cons!48920 (h!54467 (toList!2953 lm!1707)) (t!355964 (toList!2953 lm!1707))) Nil!48920)))))

(declare-fun b!4355485 () Bool)

(declare-fun e!2710446 () List!49044)

(declare-fun call!302664 () List!49044)

(assert (=> b!4355485 (= e!2710446 call!302664)))

(declare-fun bm!302657 () Bool)

(declare-fun call!302662 () List!49044)

(assert (=> bm!302657 (= call!302663 call!302662)))

(declare-fun bm!302658 () Bool)

(declare-fun c!740504 () Bool)

(declare-fun $colon$colon!689 (List!49044 tuple2!48312) List!49044)

(assert (=> bm!302658 (= call!302664 ($colon$colon!689 e!2710447 (ite c!740504 (h!54467 (toList!2953 lm!1707)) (tuple2!48313 (_1!27450 lt!1567548) (_2!27450 lt!1567548)))))))

(declare-fun c!740502 () Bool)

(assert (=> bm!302658 (= c!740502 c!740504)))

(declare-fun b!4355486 () Bool)

(assert (=> b!4355486 (= e!2710450 call!302663)))

(declare-fun b!4355487 () Bool)

(declare-fun e!2710448 () List!49044)

(assert (=> b!4355487 (= e!2710448 call!302662)))

(declare-fun d!1287280 () Bool)

(declare-fun e!2710449 () Bool)

(assert (=> d!1287280 e!2710449))

(declare-fun res!1789948 () Bool)

(assert (=> d!1287280 (=> (not res!1789948) (not e!2710449))))

(declare-fun lt!1568083 () List!49044)

(assert (=> d!1287280 (= res!1789948 (isStrictlySorted!100 lt!1568083))))

(assert (=> d!1287280 (= lt!1568083 e!2710446)))

(assert (=> d!1287280 (= c!740504 (and ((_ is Cons!48920) (toList!2953 lm!1707)) (bvslt (_1!27450 (h!54467 (toList!2953 lm!1707))) (_1!27450 lt!1567548))))))

(assert (=> d!1287280 (isStrictlySorted!100 (toList!2953 lm!1707))))

(assert (=> d!1287280 (= (insertStrictlySorted!131 (toList!2953 lm!1707) (_1!27450 lt!1567548) (_2!27450 lt!1567548)) lt!1568083)))

(declare-fun b!4355488 () Bool)

(assert (=> b!4355488 (= e!2710449 (contains!11117 lt!1568083 (tuple2!48313 (_1!27450 lt!1567548) (_2!27450 lt!1567548))))))

(declare-fun bm!302659 () Bool)

(assert (=> bm!302659 (= call!302662 call!302664)))

(declare-fun b!4355489 () Bool)

(declare-fun res!1789949 () Bool)

(assert (=> b!4355489 (=> (not res!1789949) (not e!2710449))))

(assert (=> b!4355489 (= res!1789949 (containsKey!682 lt!1568083 (_1!27450 lt!1567548)))))

(declare-fun b!4355490 () Bool)

(assert (=> b!4355490 (= e!2710446 e!2710448)))

(assert (=> b!4355490 (= c!740503 (and ((_ is Cons!48920) (toList!2953 lm!1707)) (= (_1!27450 (h!54467 (toList!2953 lm!1707))) (_1!27450 lt!1567548))))))

(declare-fun b!4355491 () Bool)

(assert (=> b!4355491 (= e!2710447 (insertStrictlySorted!131 (t!355964 (toList!2953 lm!1707)) (_1!27450 lt!1567548) (_2!27450 lt!1567548)))))

(declare-fun b!4355492 () Bool)

(assert (=> b!4355492 (= c!740501 (and ((_ is Cons!48920) (toList!2953 lm!1707)) (bvsgt (_1!27450 (h!54467 (toList!2953 lm!1707))) (_1!27450 lt!1567548))))))

(assert (=> b!4355492 (= e!2710448 e!2710450)))

(assert (= (and d!1287280 c!740504) b!4355485))

(assert (= (and d!1287280 (not c!740504)) b!4355490))

(assert (= (and b!4355490 c!740503) b!4355487))

(assert (= (and b!4355490 (not c!740503)) b!4355492))

(assert (= (and b!4355492 c!740501) b!4355486))

(assert (= (and b!4355492 (not c!740501)) b!4355483))

(assert (= (or b!4355486 b!4355483) bm!302657))

(assert (= (or b!4355487 bm!302657) bm!302659))

(assert (= (or b!4355485 bm!302659) bm!302658))

(assert (= (and bm!302658 c!740502) b!4355491))

(assert (= (and bm!302658 (not c!740502)) b!4355484))

(assert (= (and d!1287280 res!1789948) b!4355489))

(assert (= (and b!4355489 res!1789949) b!4355488))

(declare-fun m!4968463 () Bool)

(assert (=> b!4355489 m!4968463))

(declare-fun m!4968465 () Bool)

(assert (=> b!4355488 m!4968465))

(declare-fun m!4968467 () Bool)

(assert (=> bm!302658 m!4968467))

(declare-fun m!4968469 () Bool)

(assert (=> b!4355491 m!4968469))

(declare-fun m!4968471 () Bool)

(assert (=> d!1287280 m!4968471))

(assert (=> d!1287280 m!4967541))

(assert (=> d!1286974 d!1287280))

(declare-fun bs!630652 () Bool)

(declare-fun b!4355496 () Bool)

(assert (= bs!630652 (and b!4355496 d!1287036)))

(declare-fun lambda!140234 () Int)

(assert (=> bs!630652 (= (= (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) lt!1567853) (= lambda!140234 lambda!140173))))

(declare-fun bs!630653 () Bool)

(assert (= bs!630653 (and b!4355496 b!4355039)))

(assert (=> bs!630653 (= (= (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) lt!1567836) (= lambda!140234 lambda!140172))))

(declare-fun bs!630654 () Bool)

(assert (= bs!630654 (and b!4355496 d!1287034)))

(assert (=> bs!630654 (not (= lambda!140234 lambda!140109))))

(assert (=> bs!630653 (= (= (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) lt!1567542) (= lambda!140234 lambda!140171))))

(declare-fun bs!630655 () Bool)

(assert (= bs!630655 (and b!4355496 b!4355190)))

(assert (=> bs!630655 (= (= (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140234 lambda!140205))))

(declare-fun bs!630656 () Bool)

(assert (= bs!630656 (and b!4355496 b!4355192)))

(assert (=> bs!630656 (= (= (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140234 lambda!140204))))

(declare-fun bs!630657 () Bool)

(assert (= bs!630657 (and b!4355496 b!4355041)))

(assert (=> bs!630657 (= (= (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) lt!1567542) (= lambda!140234 lambda!140170))))

(assert (=> bs!630655 (= (= (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) lt!1567931) (= lambda!140234 lambda!140206))))

(declare-fun bs!630658 () Bool)

(assert (= bs!630658 (and b!4355496 d!1287128)))

(assert (=> bs!630658 (= (= (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) lt!1567948) (= lambda!140234 lambda!140207))))

(assert (=> b!4355496 true))

(declare-fun bs!630659 () Bool)

(declare-fun b!4355494 () Bool)

(assert (= bs!630659 (and b!4355494 d!1287036)))

(declare-fun lambda!140235 () Int)

(assert (=> bs!630659 (= (= (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) lt!1567853) (= lambda!140235 lambda!140173))))

(declare-fun bs!630660 () Bool)

(assert (= bs!630660 (and b!4355494 b!4355039)))

(assert (=> bs!630660 (= (= (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) lt!1567836) (= lambda!140235 lambda!140172))))

(declare-fun bs!630661 () Bool)

(assert (= bs!630661 (and b!4355494 d!1287034)))

(assert (=> bs!630661 (not (= lambda!140235 lambda!140109))))

(assert (=> bs!630660 (= (= (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) lt!1567542) (= lambda!140235 lambda!140171))))

(declare-fun bs!630662 () Bool)

(assert (= bs!630662 (and b!4355494 b!4355190)))

(assert (=> bs!630662 (= (= (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140235 lambda!140205))))

(declare-fun bs!630663 () Bool)

(assert (= bs!630663 (and b!4355494 b!4355192)))

(assert (=> bs!630663 (= (= (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140235 lambda!140204))))

(declare-fun bs!630664 () Bool)

(assert (= bs!630664 (and b!4355494 b!4355496)))

(assert (=> bs!630664 (= lambda!140235 lambda!140234)))

(declare-fun bs!630665 () Bool)

(assert (= bs!630665 (and b!4355494 b!4355041)))

(assert (=> bs!630665 (= (= (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) lt!1567542) (= lambda!140235 lambda!140170))))

(assert (=> bs!630662 (= (= (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) lt!1567931) (= lambda!140235 lambda!140206))))

(declare-fun bs!630666 () Bool)

(assert (= bs!630666 (and b!4355494 d!1287128)))

(assert (=> bs!630666 (= (= (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) lt!1567948) (= lambda!140235 lambda!140207))))

(assert (=> b!4355494 true))

(declare-fun lambda!140236 () Int)

(declare-fun lt!1568084 () ListMap!2197)

(assert (=> bs!630659 (= (= lt!1568084 lt!1567853) (= lambda!140236 lambda!140173))))

(assert (=> bs!630660 (= (= lt!1568084 lt!1567836) (= lambda!140236 lambda!140172))))

(assert (=> b!4355494 (= (= lt!1568084 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140236 lambda!140235))))

(assert (=> bs!630661 (not (= lambda!140236 lambda!140109))))

(assert (=> bs!630660 (= (= lt!1568084 lt!1567542) (= lambda!140236 lambda!140171))))

(assert (=> bs!630662 (= (= lt!1568084 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140236 lambda!140205))))

(assert (=> bs!630663 (= (= lt!1568084 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140236 lambda!140204))))

(assert (=> bs!630664 (= (= lt!1568084 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140236 lambda!140234))))

(assert (=> bs!630665 (= (= lt!1568084 lt!1567542) (= lambda!140236 lambda!140170))))

(assert (=> bs!630662 (= (= lt!1568084 lt!1567931) (= lambda!140236 lambda!140206))))

(assert (=> bs!630666 (= (= lt!1568084 lt!1567948) (= lambda!140236 lambda!140207))))

(assert (=> b!4355494 true))

(declare-fun bs!630677 () Bool)

(declare-fun d!1287284 () Bool)

(assert (= bs!630677 (and d!1287284 d!1287036)))

(declare-fun lambda!140239 () Int)

(declare-fun lt!1568101 () ListMap!2197)

(assert (=> bs!630677 (= (= lt!1568101 lt!1567853) (= lambda!140239 lambda!140173))))

(declare-fun bs!630678 () Bool)

(assert (= bs!630678 (and d!1287284 b!4355039)))

(assert (=> bs!630678 (= (= lt!1568101 lt!1567836) (= lambda!140239 lambda!140172))))

(declare-fun bs!630679 () Bool)

(assert (= bs!630679 (and d!1287284 b!4355494)))

(assert (=> bs!630679 (= (= lt!1568101 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140239 lambda!140235))))

(declare-fun bs!630680 () Bool)

(assert (= bs!630680 (and d!1287284 d!1287034)))

(assert (=> bs!630680 (not (= lambda!140239 lambda!140109))))

(assert (=> bs!630678 (= (= lt!1568101 lt!1567542) (= lambda!140239 lambda!140171))))

(declare-fun bs!630681 () Bool)

(assert (= bs!630681 (and d!1287284 b!4355190)))

(assert (=> bs!630681 (= (= lt!1568101 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140239 lambda!140205))))

(assert (=> bs!630679 (= (= lt!1568101 lt!1568084) (= lambda!140239 lambda!140236))))

(declare-fun bs!630682 () Bool)

(assert (= bs!630682 (and d!1287284 b!4355192)))

(assert (=> bs!630682 (= (= lt!1568101 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140239 lambda!140204))))

(declare-fun bs!630683 () Bool)

(assert (= bs!630683 (and d!1287284 b!4355496)))

(assert (=> bs!630683 (= (= lt!1568101 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140239 lambda!140234))))

(declare-fun bs!630684 () Bool)

(assert (= bs!630684 (and d!1287284 b!4355041)))

(assert (=> bs!630684 (= (= lt!1568101 lt!1567542) (= lambda!140239 lambda!140170))))

(assert (=> bs!630681 (= (= lt!1568101 lt!1567931) (= lambda!140239 lambda!140206))))

(declare-fun bs!630685 () Bool)

(assert (= bs!630685 (and d!1287284 d!1287128)))

(assert (=> bs!630685 (= (= lt!1568101 lt!1567948) (= lambda!140239 lambda!140207))))

(assert (=> d!1287284 true))

(declare-fun b!4355493 () Bool)

(declare-fun res!1789950 () Bool)

(declare-fun e!2710453 () Bool)

(assert (=> b!4355493 (=> (not res!1789950) (not e!2710453))))

(assert (=> b!4355493 (= res!1789950 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) lambda!140239))))

(declare-fun e!2710452 () ListMap!2197)

(assert (=> b!4355494 (= e!2710452 lt!1568084)))

(declare-fun lt!1568093 () ListMap!2197)

(assert (=> b!4355494 (= lt!1568093 (+!628 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) (h!54466 (_2!27450 (h!54467 (toList!2953 (+!627 lt!1567543 lt!1567548)))))))))

(assert (=> b!4355494 (= lt!1568084 (addToMapMapFromBucket!181 (t!355963 (_2!27450 (h!54467 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (+!628 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) (h!54466 (_2!27450 (h!54467 (toList!2953 (+!627 lt!1567543 lt!1567548))))))))))

(declare-fun lt!1568085 () Unit!71399)

(declare-fun call!302666 () Unit!71399)

(assert (=> b!4355494 (= lt!1568085 call!302666)))

(assert (=> b!4355494 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) lambda!140235)))

(declare-fun lt!1568097 () Unit!71399)

(assert (=> b!4355494 (= lt!1568097 lt!1568085)))

(assert (=> b!4355494 (forall!9112 (toList!2954 lt!1568093) lambda!140236)))

(declare-fun lt!1568096 () Unit!71399)

(declare-fun Unit!71472 () Unit!71399)

(assert (=> b!4355494 (= lt!1568096 Unit!71472)))

(declare-fun call!302665 () Bool)

(assert (=> b!4355494 call!302665))

(declare-fun lt!1568088 () Unit!71399)

(declare-fun Unit!71474 () Unit!71399)

(assert (=> b!4355494 (= lt!1568088 Unit!71474)))

(declare-fun lt!1568104 () Unit!71399)

(declare-fun Unit!71475 () Unit!71399)

(assert (=> b!4355494 (= lt!1568104 Unit!71475)))

(declare-fun lt!1568102 () Unit!71399)

(assert (=> b!4355494 (= lt!1568102 (forallContained!1753 (toList!2954 lt!1568093) lambda!140236 (h!54466 (_2!27450 (h!54467 (toList!2953 (+!627 lt!1567543 lt!1567548)))))))))

(assert (=> b!4355494 (contains!11115 lt!1568093 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 (+!627 lt!1567543 lt!1567548)))))))))

(declare-fun lt!1568098 () Unit!71399)

(declare-fun Unit!71476 () Unit!71399)

(assert (=> b!4355494 (= lt!1568098 Unit!71476)))

(assert (=> b!4355494 (contains!11115 lt!1568084 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 (+!627 lt!1567543 lt!1567548)))))))))

(declare-fun lt!1568103 () Unit!71399)

(declare-fun Unit!71478 () Unit!71399)

(assert (=> b!4355494 (= lt!1568103 Unit!71478)))

(assert (=> b!4355494 (forall!9112 (_2!27450 (h!54467 (toList!2953 (+!627 lt!1567543 lt!1567548)))) lambda!140236)))

(declare-fun lt!1568089 () Unit!71399)

(declare-fun Unit!71479 () Unit!71399)

(assert (=> b!4355494 (= lt!1568089 Unit!71479)))

(assert (=> b!4355494 (forall!9112 (toList!2954 lt!1568093) lambda!140236)))

(declare-fun lt!1568095 () Unit!71399)

(declare-fun Unit!71481 () Unit!71399)

(assert (=> b!4355494 (= lt!1568095 Unit!71481)))

(declare-fun lt!1568092 () Unit!71399)

(declare-fun Unit!71482 () Unit!71399)

(assert (=> b!4355494 (= lt!1568092 Unit!71482)))

(declare-fun lt!1568086 () Unit!71399)

(assert (=> b!4355494 (= lt!1568086 (addForallContainsKeyThenBeforeAdding!57 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) lt!1568084 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 (+!627 lt!1567543 lt!1567548)))))) (_2!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 (+!627 lt!1567543 lt!1567548))))))))))

(declare-fun call!302667 () Bool)

(assert (=> b!4355494 call!302667))

(declare-fun lt!1568100 () Unit!71399)

(assert (=> b!4355494 (= lt!1568100 lt!1568086)))

(assert (=> b!4355494 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) lambda!140236)))

(declare-fun lt!1568099 () Unit!71399)

(declare-fun Unit!71484 () Unit!71399)

(assert (=> b!4355494 (= lt!1568099 Unit!71484)))

(declare-fun res!1789952 () Bool)

(assert (=> b!4355494 (= res!1789952 (forall!9112 (_2!27450 (h!54467 (toList!2953 (+!627 lt!1567543 lt!1567548)))) lambda!140236))))

(declare-fun e!2710451 () Bool)

(assert (=> b!4355494 (=> (not res!1789952) (not e!2710451))))

(assert (=> b!4355494 e!2710451))

(declare-fun lt!1568090 () Unit!71399)

(declare-fun Unit!71485 () Unit!71399)

(assert (=> b!4355494 (= lt!1568090 Unit!71485)))

(declare-fun b!4355495 () Bool)

(assert (=> b!4355495 (= e!2710453 (invariantList!674 (toList!2954 lt!1568101)))))

(declare-fun c!740505 () Bool)

(declare-fun bm!302660 () Bool)

(assert (=> bm!302660 (= call!302665 (forall!9112 (ite c!740505 (toList!2954 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (t!355963 (_2!27450 (h!54467 (toList!2953 (+!627 lt!1567543 lt!1567548)))))) (ite c!740505 lambda!140234 lambda!140236)))))

(assert (=> b!4355496 (= e!2710452 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))))))

(declare-fun lt!1568094 () Unit!71399)

(assert (=> b!4355496 (= lt!1568094 call!302666)))

(assert (=> b!4355496 call!302667))

(declare-fun lt!1568087 () Unit!71399)

(assert (=> b!4355496 (= lt!1568087 lt!1568094)))

(assert (=> b!4355496 call!302665))

(declare-fun lt!1568091 () Unit!71399)

(declare-fun Unit!71486 () Unit!71399)

(assert (=> b!4355496 (= lt!1568091 Unit!71486)))

(declare-fun bm!302661 () Bool)

(assert (=> bm!302661 (= call!302666 (lemmaContainsAllItsOwnKeys!57 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))))))

(assert (=> d!1287284 e!2710453))

(declare-fun res!1789951 () Bool)

(assert (=> d!1287284 (=> (not res!1789951) (not e!2710453))))

(assert (=> d!1287284 (= res!1789951 (forall!9112 (_2!27450 (h!54467 (toList!2953 (+!627 lt!1567543 lt!1567548)))) lambda!140239))))

(assert (=> d!1287284 (= lt!1568101 e!2710452)))

(assert (=> d!1287284 (= c!740505 ((_ is Nil!48919) (_2!27450 (h!54467 (toList!2953 (+!627 lt!1567543 lt!1567548))))))))

(assert (=> d!1287284 (noDuplicateKeys!485 (_2!27450 (h!54467 (toList!2953 (+!627 lt!1567543 lt!1567548)))))))

(assert (=> d!1287284 (= (addToMapMapFromBucket!181 (_2!27450 (h!54467 (toList!2953 (+!627 lt!1567543 lt!1567548)))) (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) lt!1568101)))

(declare-fun bm!302662 () Bool)

(assert (=> bm!302662 (= call!302667 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (ite c!740505 lambda!140234 lambda!140236)))))

(declare-fun b!4355497 () Bool)

(assert (=> b!4355497 (= e!2710451 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) lambda!140236))))

(assert (= (and d!1287284 c!740505) b!4355496))

(assert (= (and d!1287284 (not c!740505)) b!4355494))

(assert (= (and b!4355494 res!1789952) b!4355497))

(assert (= (or b!4355496 b!4355494) bm!302661))

(assert (= (or b!4355496 b!4355494) bm!302662))

(assert (= (or b!4355496 b!4355494) bm!302660))

(assert (= (and d!1287284 res!1789951) b!4355493))

(assert (= (and b!4355493 res!1789950) b!4355495))

(assert (=> b!4355494 m!4967891))

(declare-fun m!4968531 () Bool)

(assert (=> b!4355494 m!4968531))

(declare-fun m!4968533 () Bool)

(assert (=> b!4355494 m!4968533))

(declare-fun m!4968535 () Bool)

(assert (=> b!4355494 m!4968535))

(declare-fun m!4968537 () Bool)

(assert (=> b!4355494 m!4968537))

(assert (=> b!4355494 m!4967891))

(declare-fun m!4968539 () Bool)

(assert (=> b!4355494 m!4968539))

(declare-fun m!4968541 () Bool)

(assert (=> b!4355494 m!4968541))

(assert (=> b!4355494 m!4968537))

(assert (=> b!4355494 m!4968531))

(declare-fun m!4968543 () Bool)

(assert (=> b!4355494 m!4968543))

(declare-fun m!4968545 () Bool)

(assert (=> b!4355494 m!4968545))

(assert (=> b!4355494 m!4968535))

(declare-fun m!4968547 () Bool)

(assert (=> b!4355494 m!4968547))

(declare-fun m!4968549 () Bool)

(assert (=> b!4355494 m!4968549))

(declare-fun m!4968551 () Bool)

(assert (=> b!4355493 m!4968551))

(assert (=> b!4355497 m!4968533))

(assert (=> bm!302661 m!4967891))

(declare-fun m!4968553 () Bool)

(assert (=> bm!302661 m!4968553))

(declare-fun m!4968555 () Bool)

(assert (=> b!4355495 m!4968555))

(declare-fun m!4968557 () Bool)

(assert (=> d!1287284 m!4968557))

(declare-fun m!4968559 () Bool)

(assert (=> d!1287284 m!4968559))

(declare-fun m!4968561 () Bool)

(assert (=> bm!302662 m!4968561))

(declare-fun m!4968563 () Bool)

(assert (=> bm!302660 m!4968563))

(assert (=> b!4355053 d!1287284))

(declare-fun bs!630695 () Bool)

(declare-fun d!1287300 () Bool)

(assert (= bs!630695 (and d!1287300 d!1287078)))

(declare-fun lambda!140243 () Int)

(assert (=> bs!630695 (not (= lambda!140243 lambda!140185))))

(declare-fun bs!630696 () Bool)

(assert (= bs!630696 (and d!1287300 d!1287046)))

(assert (=> bs!630696 (= lambda!140243 lambda!140174)))

(declare-fun bs!630697 () Bool)

(assert (= bs!630697 (and d!1287300 d!1287028)))

(assert (=> bs!630697 (= lambda!140243 lambda!140106)))

(declare-fun bs!630698 () Bool)

(assert (= bs!630698 (and d!1287300 start!421280)))

(assert (=> bs!630698 (= lambda!140243 lambda!140085)))

(declare-fun bs!630699 () Bool)

(assert (= bs!630699 (and d!1287300 d!1287166)))

(assert (=> bs!630699 (= lambda!140243 lambda!140209)))

(declare-fun bs!630700 () Bool)

(assert (= bs!630700 (and d!1287300 d!1287054)))

(assert (=> bs!630700 (= lambda!140243 lambda!140175)))

(declare-fun bs!630702 () Bool)

(assert (= bs!630702 (and d!1287300 d!1287062)))

(assert (=> bs!630702 (= lambda!140243 lambda!140178)))

(declare-fun bs!630704 () Bool)

(assert (= bs!630704 (and d!1287300 d!1287134)))

(assert (=> bs!630704 (= lambda!140243 lambda!140208)))

(declare-fun bs!630706 () Bool)

(assert (= bs!630706 (and d!1287300 d!1287072)))

(assert (=> bs!630706 (= lambda!140243 lambda!140182)))

(declare-fun bs!630708 () Bool)

(assert (= bs!630708 (and d!1287300 d!1287064)))

(assert (=> bs!630708 (= lambda!140243 lambda!140181)))

(declare-fun lt!1568129 () ListMap!2197)

(assert (=> d!1287300 (invariantList!674 (toList!2954 lt!1568129))))

(declare-fun e!2710468 () ListMap!2197)

(assert (=> d!1287300 (= lt!1568129 e!2710468)))

(declare-fun c!740511 () Bool)

(assert (=> d!1287300 (= c!740511 ((_ is Cons!48920) (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))))))

(assert (=> d!1287300 (forall!9110 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))) lambda!140243)))

(assert (=> d!1287300 (= (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))) lt!1568129)))

(declare-fun b!4355520 () Bool)

(assert (=> b!4355520 (= e!2710468 (addToMapMapFromBucket!181 (_2!27450 (h!54467 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (extractMap!544 (t!355964 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548)))))))))

(declare-fun b!4355521 () Bool)

(assert (=> b!4355521 (= e!2710468 (ListMap!2198 Nil!48919))))

(assert (= (and d!1287300 c!740511) b!4355520))

(assert (= (and d!1287300 (not c!740511)) b!4355521))

(declare-fun m!4968565 () Bool)

(assert (=> d!1287300 m!4968565))

(declare-fun m!4968567 () Bool)

(assert (=> d!1287300 m!4968567))

(declare-fun m!4968569 () Bool)

(assert (=> b!4355520 m!4968569))

(assert (=> b!4355520 m!4968569))

(declare-fun m!4968571 () Bool)

(assert (=> b!4355520 m!4968571))

(assert (=> b!4355053 d!1287300))

(declare-fun bs!630711 () Bool)

(declare-fun b!4355523 () Bool)

(assert (= bs!630711 (and b!4355523 b!4355175)))

(declare-fun lambda!140245 () Int)

(assert (=> bs!630711 (= (= (toList!2954 lt!1567553) (toList!2954 lt!1567547)) (= lambda!140245 lambda!140202))))

(declare-fun bs!630712 () Bool)

(assert (= bs!630712 (and b!4355523 b!4355176)))

(assert (=> bs!630712 (= (= (toList!2954 lt!1567553) (Cons!48919 (h!54466 (toList!2954 lt!1567547)) (t!355963 (toList!2954 lt!1567547)))) (= lambda!140245 lambda!140201))))

(declare-fun bs!630713 () Bool)

(assert (= bs!630713 (and b!4355523 b!4355351)))

(assert (=> bs!630713 (= (= (toList!2954 lt!1567553) (toList!2954 lt!1567542)) (= lambda!140245 lambda!140216))))

(declare-fun bs!630714 () Bool)

(assert (= bs!630714 (and b!4355523 b!4355181)))

(assert (=> bs!630714 (= (= (toList!2954 lt!1567553) (t!355963 (toList!2954 lt!1567547))) (= lambda!140245 lambda!140200))))

(declare-fun bs!630715 () Bool)

(assert (= bs!630715 (and b!4355523 b!4355340)))

(assert (=> bs!630715 (= (= (toList!2954 lt!1567553) (toList!2954 lt!1567547)) (= lambda!140245 lambda!140214))))

(assert (=> b!4355523 true))

(declare-fun bs!630716 () Bool)

(declare-fun b!4355524 () Bool)

(assert (= bs!630716 (and b!4355524 b!4355177)))

(declare-fun lambda!140246 () Int)

(assert (=> bs!630716 (= lambda!140246 lambda!140203)))

(declare-fun bs!630717 () Bool)

(assert (= bs!630717 (and b!4355524 b!4355341)))

(assert (=> bs!630717 (= lambda!140246 lambda!140215)))

(declare-fun bs!630718 () Bool)

(assert (= bs!630718 (and b!4355524 b!4355352)))

(assert (=> bs!630718 (= lambda!140246 lambda!140217)))

(declare-fun d!1287302 () Bool)

(declare-fun e!2710469 () Bool)

(assert (=> d!1287302 e!2710469))

(declare-fun res!1789967 () Bool)

(assert (=> d!1287302 (=> (not res!1789967) (not e!2710469))))

(declare-fun lt!1568130 () List!49046)

(assert (=> d!1287302 (= res!1789967 (noDuplicate!601 lt!1568130))))

(assert (=> d!1287302 (= lt!1568130 (getKeysList!122 (toList!2954 lt!1567553)))))

(assert (=> d!1287302 (= (keys!16520 lt!1567553) lt!1568130)))

(declare-fun b!4355522 () Bool)

(declare-fun res!1789965 () Bool)

(assert (=> b!4355522 (=> (not res!1789965) (not e!2710469))))

(assert (=> b!4355522 (= res!1789965 (= (length!58 lt!1568130) (length!59 (toList!2954 lt!1567553))))))

(declare-fun res!1789966 () Bool)

(assert (=> b!4355523 (=> (not res!1789966) (not e!2710469))))

(assert (=> b!4355523 (= res!1789966 (forall!9113 lt!1568130 lambda!140245))))

(assert (=> b!4355524 (= e!2710469 (= (content!7712 lt!1568130) (content!7712 (map!10640 (toList!2954 lt!1567553) lambda!140246))))))

(assert (= (and d!1287302 res!1789967) b!4355522))

(assert (= (and b!4355522 res!1789965) b!4355523))

(assert (= (and b!4355523 res!1789966) b!4355524))

(declare-fun m!4968573 () Bool)

(assert (=> d!1287302 m!4968573))

(assert (=> d!1287302 m!4967947))

(declare-fun m!4968575 () Bool)

(assert (=> b!4355522 m!4968575))

(declare-fun m!4968577 () Bool)

(assert (=> b!4355522 m!4968577))

(declare-fun m!4968579 () Bool)

(assert (=> b!4355523 m!4968579))

(declare-fun m!4968581 () Bool)

(assert (=> b!4355524 m!4968581))

(declare-fun m!4968583 () Bool)

(assert (=> b!4355524 m!4968583))

(assert (=> b!4355524 m!4968583))

(declare-fun m!4968587 () Bool)

(assert (=> b!4355524 m!4968587))

(assert (=> b!4355061 d!1287302))

(declare-fun d!1287304 () Bool)

(declare-fun res!1789968 () Bool)

(declare-fun e!2710470 () Bool)

(assert (=> d!1287304 (=> res!1789968 e!2710470)))

(assert (=> d!1287304 (= res!1789968 (and ((_ is Cons!48919) lt!1567608) (= (_1!27449 (h!54466 lt!1567608)) key!3918)))))

(assert (=> d!1287304 (= (containsKey!678 lt!1567608 key!3918) e!2710470)))

(declare-fun b!4355525 () Bool)

(declare-fun e!2710471 () Bool)

(assert (=> b!4355525 (= e!2710470 e!2710471)))

(declare-fun res!1789969 () Bool)

(assert (=> b!4355525 (=> (not res!1789969) (not e!2710471))))

(assert (=> b!4355525 (= res!1789969 ((_ is Cons!48919) lt!1567608))))

(declare-fun b!4355526 () Bool)

(assert (=> b!4355526 (= e!2710471 (containsKey!678 (t!355963 lt!1567608) key!3918))))

(assert (= (and d!1287304 (not res!1789968)) b!4355525))

(assert (= (and b!4355525 res!1789969) b!4355526))

(declare-fun m!4968601 () Bool)

(assert (=> b!4355526 m!4968601))

(assert (=> d!1286958 d!1287304))

(declare-fun d!1287306 () Bool)

(declare-fun res!1789970 () Bool)

(declare-fun e!2710472 () Bool)

(assert (=> d!1287306 (=> res!1789970 e!2710472)))

(assert (=> d!1287306 (= res!1789970 (not ((_ is Cons!48919) lt!1567551)))))

(assert (=> d!1287306 (= (noDuplicateKeys!485 lt!1567551) e!2710472)))

(declare-fun b!4355527 () Bool)

(declare-fun e!2710473 () Bool)

(assert (=> b!4355527 (= e!2710472 e!2710473)))

(declare-fun res!1789971 () Bool)

(assert (=> b!4355527 (=> (not res!1789971) (not e!2710473))))

(assert (=> b!4355527 (= res!1789971 (not (containsKey!678 (t!355963 lt!1567551) (_1!27449 (h!54466 lt!1567551)))))))

(declare-fun b!4355528 () Bool)

(assert (=> b!4355528 (= e!2710473 (noDuplicateKeys!485 (t!355963 lt!1567551)))))

(assert (= (and d!1287306 (not res!1789970)) b!4355527))

(assert (= (and b!4355527 res!1789971) b!4355528))

(declare-fun m!4968609 () Bool)

(assert (=> b!4355527 m!4968609))

(declare-fun m!4968611 () Bool)

(assert (=> b!4355528 m!4968611))

(assert (=> d!1286958 d!1287306))

(declare-fun d!1287308 () Bool)

(assert (=> d!1287308 (= (isEmpty!28195 (toList!2953 lm!1707)) ((_ is Nil!48920) (toList!2953 lm!1707)))))

(assert (=> d!1287074 d!1287308))

(declare-fun d!1287312 () Bool)

(declare-fun c!740515 () Bool)

(assert (=> d!1287312 (= c!740515 ((_ is Nil!48919) (toList!2954 (extractMap!544 (toList!2953 (+!627 lt!1567543 lt!1567548))))))))

(declare-fun e!2710477 () (InoxSet tuple2!48310))

(assert (=> d!1287312 (= (content!7711 (toList!2954 (extractMap!544 (toList!2953 (+!627 lt!1567543 lt!1567548))))) e!2710477)))

(declare-fun b!4355535 () Bool)

(assert (=> b!4355535 (= e!2710477 ((as const (Array tuple2!48310 Bool)) false))))

(declare-fun b!4355536 () Bool)

(assert (=> b!4355536 (= e!2710477 ((_ map or) (store ((as const (Array tuple2!48310 Bool)) false) (h!54466 (toList!2954 (extractMap!544 (toList!2953 (+!627 lt!1567543 lt!1567548))))) true) (content!7711 (t!355963 (toList!2954 (extractMap!544 (toList!2953 (+!627 lt!1567543 lt!1567548))))))))))

(assert (= (and d!1287312 c!740515) b!4355535))

(assert (= (and d!1287312 (not c!740515)) b!4355536))

(declare-fun m!4968637 () Bool)

(assert (=> b!4355536 m!4968637))

(declare-fun m!4968639 () Bool)

(assert (=> b!4355536 m!4968639))

(assert (=> d!1287060 d!1287312))

(declare-fun d!1287316 () Bool)

(declare-fun c!740517 () Bool)

(assert (=> d!1287316 (= c!740517 ((_ is Nil!48919) (toList!2954 (+!628 lt!1567542 lt!1567541))))))

(declare-fun e!2710481 () (InoxSet tuple2!48310))

(assert (=> d!1287316 (= (content!7711 (toList!2954 (+!628 lt!1567542 lt!1567541))) e!2710481)))

(declare-fun b!4355542 () Bool)

(assert (=> b!4355542 (= e!2710481 ((as const (Array tuple2!48310 Bool)) false))))

(declare-fun b!4355543 () Bool)

(assert (=> b!4355543 (= e!2710481 ((_ map or) (store ((as const (Array tuple2!48310 Bool)) false) (h!54466 (toList!2954 (+!628 lt!1567542 lt!1567541))) true) (content!7711 (t!355963 (toList!2954 (+!628 lt!1567542 lt!1567541))))))))

(assert (= (and d!1287316 c!740517) b!4355542))

(assert (= (and d!1287316 (not c!740517)) b!4355543))

(declare-fun m!4968641 () Bool)

(assert (=> b!4355543 m!4968641))

(declare-fun m!4968643 () Bool)

(assert (=> b!4355543 m!4968643))

(assert (=> d!1287060 d!1287316))

(declare-fun b!4355547 () Bool)

(declare-fun e!2710483 () List!49043)

(assert (=> b!4355547 (= e!2710483 Nil!48919)))

(declare-fun b!4355545 () Bool)

(declare-fun e!2710482 () List!49043)

(assert (=> b!4355545 (= e!2710482 e!2710483)))

(declare-fun c!740519 () Bool)

(assert (=> b!4355545 (= c!740519 ((_ is Cons!48919) (t!355963 lt!1567551)))))

(declare-fun b!4355546 () Bool)

(assert (=> b!4355546 (= e!2710483 (Cons!48919 (h!54466 (t!355963 lt!1567551)) (removePairForKey!455 (t!355963 (t!355963 lt!1567551)) key!3918)))))

(declare-fun d!1287318 () Bool)

(declare-fun lt!1568153 () List!49043)

(assert (=> d!1287318 (not (containsKey!678 lt!1568153 key!3918))))

(assert (=> d!1287318 (= lt!1568153 e!2710482)))

(declare-fun c!740518 () Bool)

(assert (=> d!1287318 (= c!740518 (and ((_ is Cons!48919) (t!355963 lt!1567551)) (= (_1!27449 (h!54466 (t!355963 lt!1567551))) key!3918)))))

(assert (=> d!1287318 (noDuplicateKeys!485 (t!355963 lt!1567551))))

(assert (=> d!1287318 (= (removePairForKey!455 (t!355963 lt!1567551) key!3918) lt!1568153)))

(declare-fun b!4355544 () Bool)

(assert (=> b!4355544 (= e!2710482 (t!355963 (t!355963 lt!1567551)))))

(assert (= (and d!1287318 c!740518) b!4355544))

(assert (= (and d!1287318 (not c!740518)) b!4355545))

(assert (= (and b!4355545 c!740519) b!4355546))

(assert (= (and b!4355545 (not c!740519)) b!4355547))

(declare-fun m!4968645 () Bool)

(assert (=> b!4355546 m!4968645))

(declare-fun m!4968647 () Bool)

(assert (=> d!1287318 m!4968647))

(assert (=> d!1287318 m!4968611))

(assert (=> b!4354848 d!1287318))

(declare-fun d!1287320 () Bool)

(declare-fun res!1789975 () Bool)

(declare-fun e!2710484 () Bool)

(assert (=> d!1287320 (=> res!1789975 e!2710484)))

(assert (=> d!1287320 (= res!1789975 ((_ is Nil!48919) (toList!2954 lt!1567542)))))

(assert (=> d!1287320 (= (forall!9112 (toList!2954 lt!1567542) (ite c!740397 lambda!140170 lambda!140172)) e!2710484)))

(declare-fun b!4355548 () Bool)

(declare-fun e!2710485 () Bool)

(assert (=> b!4355548 (= e!2710484 e!2710485)))

(declare-fun res!1789976 () Bool)

(assert (=> b!4355548 (=> (not res!1789976) (not e!2710485))))

(assert (=> b!4355548 (= res!1789976 (dynLambda!20630 (ite c!740397 lambda!140170 lambda!140172) (h!54466 (toList!2954 lt!1567542))))))

(declare-fun b!4355549 () Bool)

(assert (=> b!4355549 (= e!2710485 (forall!9112 (t!355963 (toList!2954 lt!1567542)) (ite c!740397 lambda!140170 lambda!140172)))))

(assert (= (and d!1287320 (not res!1789975)) b!4355548))

(assert (= (and b!4355548 res!1789976) b!4355549))

(declare-fun b_lambda!130999 () Bool)

(assert (=> (not b_lambda!130999) (not b!4355548)))

(declare-fun m!4968649 () Bool)

(assert (=> b!4355548 m!4968649))

(declare-fun m!4968651 () Bool)

(assert (=> b!4355549 m!4968651))

(assert (=> bm!302632 d!1287320))

(declare-fun b!4355551 () Bool)

(declare-fun e!2710486 () Option!10461)

(declare-fun e!2710487 () Option!10461)

(assert (=> b!4355551 (= e!2710486 e!2710487)))

(declare-fun c!740521 () Bool)

(assert (=> b!4355551 (= c!740521 (and ((_ is Cons!48919) (toList!2954 lt!1567872)) (not (= (_1!27449 (h!54466 (toList!2954 lt!1567872))) (_1!27449 lt!1567541)))))))

(declare-fun b!4355552 () Bool)

(assert (=> b!4355552 (= e!2710487 (getValueByKey!447 (t!355963 (toList!2954 lt!1567872)) (_1!27449 lt!1567541)))))

(declare-fun d!1287322 () Bool)

(declare-fun c!740520 () Bool)

(assert (=> d!1287322 (= c!740520 (and ((_ is Cons!48919) (toList!2954 lt!1567872)) (= (_1!27449 (h!54466 (toList!2954 lt!1567872))) (_1!27449 lt!1567541))))))

(assert (=> d!1287322 (= (getValueByKey!447 (toList!2954 lt!1567872) (_1!27449 lt!1567541)) e!2710486)))

(declare-fun b!4355550 () Bool)

(assert (=> b!4355550 (= e!2710486 (Some!10460 (_2!27449 (h!54466 (toList!2954 lt!1567872)))))))

(declare-fun b!4355553 () Bool)

(assert (=> b!4355553 (= e!2710487 None!10460)))

(assert (= (and d!1287322 c!740520) b!4355550))

(assert (= (and d!1287322 (not c!740520)) b!4355551))

(assert (= (and b!4355551 c!740521) b!4355552))

(assert (= (and b!4355551 (not c!740521)) b!4355553))

(declare-fun m!4968653 () Bool)

(assert (=> b!4355552 m!4968653))

(assert (=> b!4355051 d!1287322))

(declare-fun d!1287324 () Bool)

(declare-fun res!1789977 () Bool)

(declare-fun e!2710488 () Bool)

(assert (=> d!1287324 (=> res!1789977 e!2710488)))

(assert (=> d!1287324 (= res!1789977 (not ((_ is Cons!48919) (_2!27450 (h!54467 (toList!2953 lt!1567544))))))))

(assert (=> d!1287324 (= (noDuplicateKeys!485 (_2!27450 (h!54467 (toList!2953 lt!1567544)))) e!2710488)))

(declare-fun b!4355554 () Bool)

(declare-fun e!2710489 () Bool)

(assert (=> b!4355554 (= e!2710488 e!2710489)))

(declare-fun res!1789978 () Bool)

(assert (=> b!4355554 (=> (not res!1789978) (not e!2710489))))

(assert (=> b!4355554 (= res!1789978 (not (containsKey!678 (t!355963 (_2!27450 (h!54467 (toList!2953 lt!1567544)))) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lt!1567544))))))))))

(declare-fun b!4355555 () Bool)

(assert (=> b!4355555 (= e!2710489 (noDuplicateKeys!485 (t!355963 (_2!27450 (h!54467 (toList!2953 lt!1567544))))))))

(assert (= (and d!1287324 (not res!1789977)) b!4355554))

(assert (= (and b!4355554 res!1789978) b!4355555))

(declare-fun m!4968655 () Bool)

(assert (=> b!4355554 m!4968655))

(declare-fun m!4968657 () Bool)

(assert (=> b!4355555 m!4968657))

(assert (=> bs!630553 d!1287324))

(declare-fun d!1287326 () Bool)

(declare-fun lt!1568154 () Bool)

(assert (=> d!1287326 (= lt!1568154 (select (content!7712 (keys!16520 lt!1567553)) key!3918))))

(declare-fun e!2710490 () Bool)

(assert (=> d!1287326 (= lt!1568154 e!2710490)))

(declare-fun res!1789979 () Bool)

(assert (=> d!1287326 (=> (not res!1789979) (not e!2710490))))

(assert (=> d!1287326 (= res!1789979 ((_ is Cons!48922) (keys!16520 lt!1567553)))))

(assert (=> d!1287326 (= (contains!11120 (keys!16520 lt!1567553) key!3918) lt!1568154)))

(declare-fun b!4355556 () Bool)

(declare-fun e!2710491 () Bool)

(assert (=> b!4355556 (= e!2710490 e!2710491)))

(declare-fun res!1789980 () Bool)

(assert (=> b!4355556 (=> res!1789980 e!2710491)))

(assert (=> b!4355556 (= res!1789980 (= (h!54471 (keys!16520 lt!1567553)) key!3918))))

(declare-fun b!4355557 () Bool)

(assert (=> b!4355557 (= e!2710491 (contains!11120 (t!355966 (keys!16520 lt!1567553)) key!3918))))

(assert (= (and d!1287326 res!1789979) b!4355556))

(assert (= (and b!4355556 (not res!1789980)) b!4355557))

(assert (=> d!1287326 m!4967929))

(declare-fun m!4968659 () Bool)

(assert (=> d!1287326 m!4968659))

(declare-fun m!4968661 () Bool)

(assert (=> d!1287326 m!4968661))

(declare-fun m!4968663 () Bool)

(assert (=> b!4355557 m!4968663))

(assert (=> b!4355063 d!1287326))

(assert (=> b!4355063 d!1287302))

(declare-fun d!1287328 () Bool)

(declare-fun e!2710493 () Bool)

(assert (=> d!1287328 e!2710493))

(declare-fun res!1789981 () Bool)

(assert (=> d!1287328 (=> res!1789981 e!2710493)))

(declare-fun lt!1568156 () Bool)

(assert (=> d!1287328 (= res!1789981 (not lt!1568156))))

(declare-fun lt!1568157 () Bool)

(assert (=> d!1287328 (= lt!1568156 lt!1568157)))

(declare-fun lt!1568155 () Unit!71399)

(declare-fun e!2710492 () Unit!71399)

(assert (=> d!1287328 (= lt!1568155 e!2710492)))

(declare-fun c!740522 () Bool)

(assert (=> d!1287328 (= c!740522 lt!1568157)))

(assert (=> d!1287328 (= lt!1568157 (containsKey!682 (toList!2953 lt!1567875) (_1!27450 lt!1567548)))))

(assert (=> d!1287328 (= (contains!11116 lt!1567875 (_1!27450 lt!1567548)) lt!1568156)))

(declare-fun b!4355558 () Bool)

(declare-fun lt!1568158 () Unit!71399)

(assert (=> b!4355558 (= e!2710492 lt!1568158)))

(assert (=> b!4355558 (= lt!1568158 (lemmaContainsKeyImpliesGetValueByKeyDefined!358 (toList!2953 lt!1567875) (_1!27450 lt!1567548)))))

(assert (=> b!4355558 (isDefined!7755 (getValueByKey!446 (toList!2953 lt!1567875) (_1!27450 lt!1567548)))))

(declare-fun b!4355559 () Bool)

(declare-fun Unit!71498 () Unit!71399)

(assert (=> b!4355559 (= e!2710492 Unit!71498)))

(declare-fun b!4355560 () Bool)

(assert (=> b!4355560 (= e!2710493 (isDefined!7755 (getValueByKey!446 (toList!2953 lt!1567875) (_1!27450 lt!1567548))))))

(assert (= (and d!1287328 c!740522) b!4355558))

(assert (= (and d!1287328 (not c!740522)) b!4355559))

(assert (= (and d!1287328 (not res!1789981)) b!4355560))

(declare-fun m!4968665 () Bool)

(assert (=> d!1287328 m!4968665))

(declare-fun m!4968667 () Bool)

(assert (=> b!4355558 m!4968667))

(assert (=> b!4355558 m!4967905))

(assert (=> b!4355558 m!4967905))

(declare-fun m!4968669 () Bool)

(assert (=> b!4355558 m!4968669))

(assert (=> b!4355560 m!4967905))

(assert (=> b!4355560 m!4967905))

(assert (=> b!4355560 m!4968669))

(assert (=> d!1287058 d!1287328))

(declare-fun b!4355564 () Bool)

(declare-fun e!2710495 () Option!10460)

(assert (=> b!4355564 (= e!2710495 None!10459)))

(declare-fun b!4355563 () Bool)

(assert (=> b!4355563 (= e!2710495 (getValueByKey!446 (t!355964 lt!1567877) (_1!27450 lt!1567548)))))

(declare-fun b!4355562 () Bool)

(declare-fun e!2710494 () Option!10460)

(assert (=> b!4355562 (= e!2710494 e!2710495)))

(declare-fun c!740524 () Bool)

(assert (=> b!4355562 (= c!740524 (and ((_ is Cons!48920) lt!1567877) (not (= (_1!27450 (h!54467 lt!1567877)) (_1!27450 lt!1567548)))))))

(declare-fun b!4355561 () Bool)

(assert (=> b!4355561 (= e!2710494 (Some!10459 (_2!27450 (h!54467 lt!1567877))))))

(declare-fun d!1287330 () Bool)

(declare-fun c!740523 () Bool)

(assert (=> d!1287330 (= c!740523 (and ((_ is Cons!48920) lt!1567877) (= (_1!27450 (h!54467 lt!1567877)) (_1!27450 lt!1567548))))))

(assert (=> d!1287330 (= (getValueByKey!446 lt!1567877 (_1!27450 lt!1567548)) e!2710494)))

(assert (= (and d!1287330 c!740523) b!4355561))

(assert (= (and d!1287330 (not c!740523)) b!4355562))

(assert (= (and b!4355562 c!740524) b!4355563))

(assert (= (and b!4355562 (not c!740524)) b!4355564))

(declare-fun m!4968671 () Bool)

(assert (=> b!4355563 m!4968671))

(assert (=> d!1287058 d!1287330))

(declare-fun d!1287332 () Bool)

(assert (=> d!1287332 (= (getValueByKey!446 lt!1567877 (_1!27450 lt!1567548)) (Some!10459 (_2!27450 lt!1567548)))))

(declare-fun lt!1568159 () Unit!71399)

(assert (=> d!1287332 (= lt!1568159 (choose!26881 lt!1567877 (_1!27450 lt!1567548) (_2!27450 lt!1567548)))))

(declare-fun e!2710496 () Bool)

(assert (=> d!1287332 e!2710496))

(declare-fun res!1789982 () Bool)

(assert (=> d!1287332 (=> (not res!1789982) (not e!2710496))))

(assert (=> d!1287332 (= res!1789982 (isStrictlySorted!100 lt!1567877))))

(assert (=> d!1287332 (= (lemmaContainsTupThenGetReturnValue!220 lt!1567877 (_1!27450 lt!1567548) (_2!27450 lt!1567548)) lt!1568159)))

(declare-fun b!4355565 () Bool)

(declare-fun res!1789983 () Bool)

(assert (=> b!4355565 (=> (not res!1789983) (not e!2710496))))

(assert (=> b!4355565 (= res!1789983 (containsKey!682 lt!1567877 (_1!27450 lt!1567548)))))

(declare-fun b!4355566 () Bool)

(assert (=> b!4355566 (= e!2710496 (contains!11117 lt!1567877 (tuple2!48313 (_1!27450 lt!1567548) (_2!27450 lt!1567548))))))

(assert (= (and d!1287332 res!1789982) b!4355565))

(assert (= (and b!4355565 res!1789983) b!4355566))

(assert (=> d!1287332 m!4967899))

(declare-fun m!4968673 () Bool)

(assert (=> d!1287332 m!4968673))

(declare-fun m!4968675 () Bool)

(assert (=> d!1287332 m!4968675))

(declare-fun m!4968677 () Bool)

(assert (=> b!4355565 m!4968677))

(declare-fun m!4968679 () Bool)

(assert (=> b!4355566 m!4968679))

(assert (=> d!1287058 d!1287332))

(declare-fun b!4355567 () Bool)

(declare-fun e!2710501 () List!49044)

(declare-fun call!302675 () List!49044)

(assert (=> b!4355567 (= e!2710501 call!302675)))

(declare-fun b!4355568 () Bool)

(declare-fun c!740527 () Bool)

(declare-fun c!740525 () Bool)

(declare-fun e!2710498 () List!49044)

(assert (=> b!4355568 (= e!2710498 (ite c!740527 (t!355964 (toList!2953 lt!1567543)) (ite c!740525 (Cons!48920 (h!54467 (toList!2953 lt!1567543)) (t!355964 (toList!2953 lt!1567543))) Nil!48920)))))

(declare-fun b!4355569 () Bool)

(declare-fun e!2710497 () List!49044)

(declare-fun call!302676 () List!49044)

(assert (=> b!4355569 (= e!2710497 call!302676)))

(declare-fun bm!302669 () Bool)

(declare-fun call!302674 () List!49044)

(assert (=> bm!302669 (= call!302675 call!302674)))

(declare-fun c!740528 () Bool)

(declare-fun bm!302670 () Bool)

(assert (=> bm!302670 (= call!302676 ($colon$colon!689 e!2710498 (ite c!740528 (h!54467 (toList!2953 lt!1567543)) (tuple2!48313 (_1!27450 lt!1567548) (_2!27450 lt!1567548)))))))

(declare-fun c!740526 () Bool)

(assert (=> bm!302670 (= c!740526 c!740528)))

(declare-fun b!4355570 () Bool)

(assert (=> b!4355570 (= e!2710501 call!302675)))

(declare-fun b!4355571 () Bool)

(declare-fun e!2710499 () List!49044)

(assert (=> b!4355571 (= e!2710499 call!302674)))

(declare-fun d!1287334 () Bool)

(declare-fun e!2710500 () Bool)

(assert (=> d!1287334 e!2710500))

(declare-fun res!1789984 () Bool)

(assert (=> d!1287334 (=> (not res!1789984) (not e!2710500))))

(declare-fun lt!1568160 () List!49044)

(assert (=> d!1287334 (= res!1789984 (isStrictlySorted!100 lt!1568160))))

(assert (=> d!1287334 (= lt!1568160 e!2710497)))

(assert (=> d!1287334 (= c!740528 (and ((_ is Cons!48920) (toList!2953 lt!1567543)) (bvslt (_1!27450 (h!54467 (toList!2953 lt!1567543))) (_1!27450 lt!1567548))))))

(assert (=> d!1287334 (isStrictlySorted!100 (toList!2953 lt!1567543))))

(assert (=> d!1287334 (= (insertStrictlySorted!131 (toList!2953 lt!1567543) (_1!27450 lt!1567548) (_2!27450 lt!1567548)) lt!1568160)))

(declare-fun b!4355572 () Bool)

(assert (=> b!4355572 (= e!2710500 (contains!11117 lt!1568160 (tuple2!48313 (_1!27450 lt!1567548) (_2!27450 lt!1567548))))))

(declare-fun bm!302671 () Bool)

(assert (=> bm!302671 (= call!302674 call!302676)))

(declare-fun b!4355573 () Bool)

(declare-fun res!1789985 () Bool)

(assert (=> b!4355573 (=> (not res!1789985) (not e!2710500))))

(assert (=> b!4355573 (= res!1789985 (containsKey!682 lt!1568160 (_1!27450 lt!1567548)))))

(declare-fun b!4355574 () Bool)

(assert (=> b!4355574 (= e!2710497 e!2710499)))

(assert (=> b!4355574 (= c!740527 (and ((_ is Cons!48920) (toList!2953 lt!1567543)) (= (_1!27450 (h!54467 (toList!2953 lt!1567543))) (_1!27450 lt!1567548))))))

(declare-fun b!4355575 () Bool)

(assert (=> b!4355575 (= e!2710498 (insertStrictlySorted!131 (t!355964 (toList!2953 lt!1567543)) (_1!27450 lt!1567548) (_2!27450 lt!1567548)))))

(declare-fun b!4355576 () Bool)

(assert (=> b!4355576 (= c!740525 (and ((_ is Cons!48920) (toList!2953 lt!1567543)) (bvsgt (_1!27450 (h!54467 (toList!2953 lt!1567543))) (_1!27450 lt!1567548))))))

(assert (=> b!4355576 (= e!2710499 e!2710501)))

(assert (= (and d!1287334 c!740528) b!4355569))

(assert (= (and d!1287334 (not c!740528)) b!4355574))

(assert (= (and b!4355574 c!740527) b!4355571))

(assert (= (and b!4355574 (not c!740527)) b!4355576))

(assert (= (and b!4355576 c!740525) b!4355570))

(assert (= (and b!4355576 (not c!740525)) b!4355567))

(assert (= (or b!4355570 b!4355567) bm!302669))

(assert (= (or b!4355571 bm!302669) bm!302671))

(assert (= (or b!4355569 bm!302671) bm!302670))

(assert (= (and bm!302670 c!740526) b!4355575))

(assert (= (and bm!302670 (not c!740526)) b!4355568))

(assert (= (and d!1287334 res!1789984) b!4355573))

(assert (= (and b!4355573 res!1789985) b!4355572))

(declare-fun m!4968681 () Bool)

(assert (=> b!4355573 m!4968681))

(declare-fun m!4968683 () Bool)

(assert (=> b!4355572 m!4968683))

(declare-fun m!4968685 () Bool)

(assert (=> bm!302670 m!4968685))

(declare-fun m!4968687 () Bool)

(assert (=> b!4355575 m!4968687))

(declare-fun m!4968689 () Bool)

(assert (=> d!1287334 m!4968689))

(declare-fun m!4968691 () Bool)

(assert (=> d!1287334 m!4968691))

(assert (=> d!1287058 d!1287334))

(assert (=> d!1287050 d!1287066))

(declare-fun d!1287336 () Bool)

(assert (=> d!1287336 (contains!11115 lt!1567553 key!3918)))

(assert (=> d!1287336 true))

(declare-fun _$11!1152 () Unit!71399)

(assert (=> d!1287336 (= (choose!26869 (_2!27450 (h!54467 (toList!2953 lm!1707))) key!3918 newValue!99 lt!1567553) _$11!1152)))

(declare-fun bs!630751 () Bool)

(assert (= bs!630751 d!1287336))

(assert (=> bs!630751 m!4967443))

(assert (=> d!1287050 d!1287336))

(assert (=> d!1287050 d!1287246))

(declare-fun d!1287340 () Bool)

(declare-fun lt!1568161 () Bool)

(assert (=> d!1287340 (= lt!1568161 (select (content!7710 (t!355964 (toList!2953 lm!1707))) lt!1567546))))

(declare-fun e!2710502 () Bool)

(assert (=> d!1287340 (= lt!1568161 e!2710502)))

(declare-fun res!1789987 () Bool)

(assert (=> d!1287340 (=> (not res!1789987) (not e!2710502))))

(assert (=> d!1287340 (= res!1789987 ((_ is Cons!48920) (t!355964 (toList!2953 lm!1707))))))

(assert (=> d!1287340 (= (contains!11117 (t!355964 (toList!2953 lm!1707)) lt!1567546) lt!1568161)))

(declare-fun b!4355577 () Bool)

(declare-fun e!2710503 () Bool)

(assert (=> b!4355577 (= e!2710502 e!2710503)))

(declare-fun res!1789986 () Bool)

(assert (=> b!4355577 (=> res!1789986 e!2710503)))

(assert (=> b!4355577 (= res!1789986 (= (h!54467 (t!355964 (toList!2953 lm!1707))) lt!1567546))))

(declare-fun b!4355578 () Bool)

(assert (=> b!4355578 (= e!2710503 (contains!11117 (t!355964 (t!355964 (toList!2953 lm!1707))) lt!1567546))))

(assert (= (and d!1287340 res!1789987) b!4355577))

(assert (= (and b!4355577 (not res!1789986)) b!4355578))

(assert (=> d!1287340 m!4968215))

(declare-fun m!4968727 () Bool)

(assert (=> d!1287340 m!4968727))

(declare-fun m!4968729 () Bool)

(assert (=> b!4355578 m!4968729))

(assert (=> b!4354798 d!1287340))

(declare-fun d!1287342 () Bool)

(declare-fun lt!1568162 () Bool)

(assert (=> d!1287342 (= lt!1568162 (select (content!7712 e!2710183) key!3918))))

(declare-fun e!2710504 () Bool)

(assert (=> d!1287342 (= lt!1568162 e!2710504)))

(declare-fun res!1789988 () Bool)

(assert (=> d!1287342 (=> (not res!1789988) (not e!2710504))))

(assert (=> d!1287342 (= res!1789988 ((_ is Cons!48922) e!2710183))))

(assert (=> d!1287342 (= (contains!11120 e!2710183 key!3918) lt!1568162)))

(declare-fun b!4355579 () Bool)

(declare-fun e!2710505 () Bool)

(assert (=> b!4355579 (= e!2710504 e!2710505)))

(declare-fun res!1789989 () Bool)

(assert (=> b!4355579 (=> res!1789989 e!2710505)))

(assert (=> b!4355579 (= res!1789989 (= (h!54471 e!2710183) key!3918))))

(declare-fun b!4355580 () Bool)

(assert (=> b!4355580 (= e!2710505 (contains!11120 (t!355966 e!2710183) key!3918))))

(assert (= (and d!1287342 res!1789988) b!4355579))

(assert (= (and b!4355579 (not res!1789989)) b!4355580))

(declare-fun m!4968731 () Bool)

(assert (=> d!1287342 m!4968731))

(declare-fun m!4968733 () Bool)

(assert (=> d!1287342 m!4968733))

(declare-fun m!4968735 () Bool)

(assert (=> b!4355580 m!4968735))

(assert (=> bm!302633 d!1287342))

(declare-fun d!1287344 () Bool)

(declare-fun res!1789990 () Bool)

(declare-fun e!2710506 () Bool)

(assert (=> d!1287344 (=> res!1789990 e!2710506)))

(assert (=> d!1287344 (= res!1789990 ((_ is Nil!48920) (t!355964 (toList!2953 lt!1567544))))))

(assert (=> d!1287344 (= (forall!9110 (t!355964 (toList!2953 lt!1567544)) lambda!140085) e!2710506)))

(declare-fun b!4355581 () Bool)

(declare-fun e!2710507 () Bool)

(assert (=> b!4355581 (= e!2710506 e!2710507)))

(declare-fun res!1789991 () Bool)

(assert (=> b!4355581 (=> (not res!1789991) (not e!2710507))))

(assert (=> b!4355581 (= res!1789991 (dynLambda!20629 lambda!140085 (h!54467 (t!355964 (toList!2953 lt!1567544)))))))

(declare-fun b!4355582 () Bool)

(assert (=> b!4355582 (= e!2710507 (forall!9110 (t!355964 (t!355964 (toList!2953 lt!1567544))) lambda!140085))))

(assert (= (and d!1287344 (not res!1789990)) b!4355581))

(assert (= (and b!4355581 res!1789991) b!4355582))

(declare-fun b_lambda!131001 () Bool)

(assert (=> (not b_lambda!131001) (not b!4355581)))

(declare-fun m!4968737 () Bool)

(assert (=> b!4355581 m!4968737))

(declare-fun m!4968739 () Bool)

(assert (=> b!4355582 m!4968739))

(assert (=> b!4354870 d!1287344))

(declare-fun d!1287346 () Bool)

(declare-fun res!1789992 () Bool)

(declare-fun e!2710508 () Bool)

(assert (=> d!1287346 (=> res!1789992 e!2710508)))

(assert (=> d!1287346 (= res!1789992 ((_ is Nil!48920) (toList!2953 (+!627 lm!1707 (tuple2!48313 hash!377 newBucket!200)))))))

(assert (=> d!1287346 (= (forall!9110 (toList!2953 (+!627 lm!1707 (tuple2!48313 hash!377 newBucket!200))) lambda!140085) e!2710508)))

(declare-fun b!4355583 () Bool)

(declare-fun e!2710509 () Bool)

(assert (=> b!4355583 (= e!2710508 e!2710509)))

(declare-fun res!1789993 () Bool)

(assert (=> b!4355583 (=> (not res!1789993) (not e!2710509))))

(assert (=> b!4355583 (= res!1789993 (dynLambda!20629 lambda!140085 (h!54467 (toList!2953 (+!627 lm!1707 (tuple2!48313 hash!377 newBucket!200))))))))

(declare-fun b!4355584 () Bool)

(assert (=> b!4355584 (= e!2710509 (forall!9110 (t!355964 (toList!2953 (+!627 lm!1707 (tuple2!48313 hash!377 newBucket!200)))) lambda!140085))))

(assert (= (and d!1287346 (not res!1789992)) b!4355583))

(assert (= (and b!4355583 res!1789993) b!4355584))

(declare-fun b_lambda!131003 () Bool)

(assert (=> (not b_lambda!131003) (not b!4355583)))

(declare-fun m!4968741 () Bool)

(assert (=> b!4355583 m!4968741))

(declare-fun m!4968743 () Bool)

(assert (=> b!4355584 m!4968743))

(assert (=> d!1286998 d!1287346))

(declare-fun d!1287348 () Bool)

(declare-fun e!2710510 () Bool)

(assert (=> d!1287348 e!2710510))

(declare-fun res!1789995 () Bool)

(assert (=> d!1287348 (=> (not res!1789995) (not e!2710510))))

(declare-fun lt!1568164 () ListLongMap!1603)

(assert (=> d!1287348 (= res!1789995 (contains!11116 lt!1568164 (_1!27450 (tuple2!48313 hash!377 newBucket!200))))))

(declare-fun lt!1568166 () List!49044)

(assert (=> d!1287348 (= lt!1568164 (ListLongMap!1604 lt!1568166))))

(declare-fun lt!1568163 () Unit!71399)

(declare-fun lt!1568165 () Unit!71399)

(assert (=> d!1287348 (= lt!1568163 lt!1568165)))

(assert (=> d!1287348 (= (getValueByKey!446 lt!1568166 (_1!27450 (tuple2!48313 hash!377 newBucket!200))) (Some!10459 (_2!27450 (tuple2!48313 hash!377 newBucket!200))))))

(assert (=> d!1287348 (= lt!1568165 (lemmaContainsTupThenGetReturnValue!220 lt!1568166 (_1!27450 (tuple2!48313 hash!377 newBucket!200)) (_2!27450 (tuple2!48313 hash!377 newBucket!200))))))

(assert (=> d!1287348 (= lt!1568166 (insertStrictlySorted!131 (toList!2953 lm!1707) (_1!27450 (tuple2!48313 hash!377 newBucket!200)) (_2!27450 (tuple2!48313 hash!377 newBucket!200))))))

(assert (=> d!1287348 (= (+!627 lm!1707 (tuple2!48313 hash!377 newBucket!200)) lt!1568164)))

(declare-fun b!4355585 () Bool)

(declare-fun res!1789994 () Bool)

(assert (=> b!4355585 (=> (not res!1789994) (not e!2710510))))

(assert (=> b!4355585 (= res!1789994 (= (getValueByKey!446 (toList!2953 lt!1568164) (_1!27450 (tuple2!48313 hash!377 newBucket!200))) (Some!10459 (_2!27450 (tuple2!48313 hash!377 newBucket!200)))))))

(declare-fun b!4355586 () Bool)

(assert (=> b!4355586 (= e!2710510 (contains!11117 (toList!2953 lt!1568164) (tuple2!48313 hash!377 newBucket!200)))))

(assert (= (and d!1287348 res!1789995) b!4355585))

(assert (= (and b!4355585 res!1789994) b!4355586))

(declare-fun m!4968749 () Bool)

(assert (=> d!1287348 m!4968749))

(declare-fun m!4968751 () Bool)

(assert (=> d!1287348 m!4968751))

(declare-fun m!4968753 () Bool)

(assert (=> d!1287348 m!4968753))

(declare-fun m!4968755 () Bool)

(assert (=> d!1287348 m!4968755))

(declare-fun m!4968757 () Bool)

(assert (=> b!4355585 m!4968757))

(declare-fun m!4968761 () Bool)

(assert (=> b!4355586 m!4968761))

(assert (=> d!1286998 d!1287348))

(declare-fun d!1287354 () Bool)

(assert (=> d!1287354 (forall!9110 (toList!2953 (+!627 lm!1707 (tuple2!48313 hash!377 newBucket!200))) lambda!140085)))

(assert (=> d!1287354 true))

(declare-fun _$31!223 () Unit!71399)

(assert (=> d!1287354 (= (choose!26867 lm!1707 lambda!140085 hash!377 newBucket!200) _$31!223)))

(declare-fun bs!630753 () Bool)

(assert (= bs!630753 d!1287354))

(assert (=> bs!630753 m!4967687))

(assert (=> bs!630753 m!4967689))

(assert (=> d!1286998 d!1287354))

(assert (=> d!1286998 d!1287010))

(declare-fun d!1287362 () Bool)

(assert (=> d!1287362 (isDefined!7754 (getValueByKey!447 (toList!2954 lt!1567553) key!3918))))

(declare-fun lt!1568171 () Unit!71399)

(assert (=> d!1287362 (= lt!1568171 (choose!26878 (toList!2954 lt!1567553) key!3918))))

(assert (=> d!1287362 (invariantList!674 (toList!2954 lt!1567553))))

(assert (=> d!1287362 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!357 (toList!2954 lt!1567553) key!3918) lt!1568171)))

(declare-fun bs!630754 () Bool)

(assert (= bs!630754 d!1287362))

(assert (=> bs!630754 m!4967935))

(assert (=> bs!630754 m!4967935))

(assert (=> bs!630754 m!4967937))

(declare-fun m!4968781 () Bool)

(assert (=> bs!630754 m!4968781))

(declare-fun m!4968783 () Bool)

(assert (=> bs!630754 m!4968783))

(assert (=> b!4355060 d!1287362))

(assert (=> b!4355060 d!1287110))

(assert (=> b!4355060 d!1287112))

(declare-fun d!1287364 () Bool)

(assert (=> d!1287364 (contains!11120 (getKeysList!122 (toList!2954 lt!1567553)) key!3918)))

(declare-fun lt!1568172 () Unit!71399)

(assert (=> d!1287364 (= lt!1568172 (choose!26879 (toList!2954 lt!1567553) key!3918))))

(assert (=> d!1287364 (invariantList!674 (toList!2954 lt!1567553))))

(assert (=> d!1287364 (= (lemmaInListThenGetKeysListContains!119 (toList!2954 lt!1567553) key!3918) lt!1568172)))

(declare-fun bs!630755 () Bool)

(assert (= bs!630755 d!1287364))

(assert (=> bs!630755 m!4967947))

(assert (=> bs!630755 m!4967947))

(declare-fun m!4968785 () Bool)

(assert (=> bs!630755 m!4968785))

(declare-fun m!4968787 () Bool)

(assert (=> bs!630755 m!4968787))

(assert (=> bs!630755 m!4968783))

(assert (=> b!4355060 d!1287364))

(declare-fun d!1287366 () Bool)

(declare-fun res!1790004 () Bool)

(declare-fun e!2710518 () Bool)

(assert (=> d!1287366 (=> res!1790004 e!2710518)))

(assert (=> d!1287366 (= res!1790004 ((_ is Nil!48920) (toList!2953 lm!1707)))))

(assert (=> d!1287366 (= (forall!9110 (toList!2953 lm!1707) lambda!140185) e!2710518)))

(declare-fun b!4355597 () Bool)

(declare-fun e!2710519 () Bool)

(assert (=> b!4355597 (= e!2710518 e!2710519)))

(declare-fun res!1790005 () Bool)

(assert (=> b!4355597 (=> (not res!1790005) (not e!2710519))))

(assert (=> b!4355597 (= res!1790005 (dynLambda!20629 lambda!140185 (h!54467 (toList!2953 lm!1707))))))

(declare-fun b!4355598 () Bool)

(assert (=> b!4355598 (= e!2710519 (forall!9110 (t!355964 (toList!2953 lm!1707)) lambda!140185))))

(assert (= (and d!1287366 (not res!1790004)) b!4355597))

(assert (= (and b!4355597 res!1790005) b!4355598))

(declare-fun b_lambda!131007 () Bool)

(assert (=> (not b_lambda!131007) (not b!4355597)))

(declare-fun m!4968789 () Bool)

(assert (=> b!4355597 m!4968789))

(declare-fun m!4968791 () Bool)

(assert (=> b!4355598 m!4968791))

(assert (=> d!1287078 d!1287366))

(assert (=> b!4354971 d!1287184))

(declare-fun d!1287368 () Bool)

(declare-fun res!1790006 () Bool)

(declare-fun e!2710520 () Bool)

(assert (=> d!1287368 (=> res!1790006 e!2710520)))

(assert (=> d!1287368 (= res!1790006 ((_ is Nil!48919) (toList!2954 lt!1567542)))))

(assert (=> d!1287368 (= (forall!9112 (toList!2954 lt!1567542) lambda!140172) e!2710520)))

(declare-fun b!4355599 () Bool)

(declare-fun e!2710521 () Bool)

(assert (=> b!4355599 (= e!2710520 e!2710521)))

(declare-fun res!1790007 () Bool)

(assert (=> b!4355599 (=> (not res!1790007) (not e!2710521))))

(assert (=> b!4355599 (= res!1790007 (dynLambda!20630 lambda!140172 (h!54466 (toList!2954 lt!1567542))))))

(declare-fun b!4355600 () Bool)

(assert (=> b!4355600 (= e!2710521 (forall!9112 (t!355963 (toList!2954 lt!1567542)) lambda!140172))))

(assert (= (and d!1287368 (not res!1790006)) b!4355599))

(assert (= (and b!4355599 res!1790007) b!4355600))

(declare-fun b_lambda!131009 () Bool)

(assert (=> (not b_lambda!131009) (not b!4355599)))

(declare-fun m!4968793 () Bool)

(assert (=> b!4355599 m!4968793))

(declare-fun m!4968795 () Bool)

(assert (=> b!4355600 m!4968795))

(assert (=> b!4355039 d!1287368))

(declare-fun d!1287370 () Bool)

(assert (=> d!1287370 (dynLambda!20630 lambda!140172 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))

(declare-fun lt!1568196 () Unit!71399)

(declare-fun choose!26882 (List!49043 Int tuple2!48310) Unit!71399)

(assert (=> d!1287370 (= lt!1568196 (choose!26882 (toList!2954 lt!1567845) lambda!140172 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(declare-fun e!2710527 () Bool)

(assert (=> d!1287370 e!2710527))

(declare-fun res!1790013 () Bool)

(assert (=> d!1287370 (=> (not res!1790013) (not e!2710527))))

(assert (=> d!1287370 (= res!1790013 (forall!9112 (toList!2954 lt!1567845) lambda!140172))))

(assert (=> d!1287370 (= (forallContained!1753 (toList!2954 lt!1567845) lambda!140172 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) lt!1568196)))

(declare-fun b!4355608 () Bool)

(assert (=> b!4355608 (= e!2710527 (contains!11121 (toList!2954 lt!1567845) (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(assert (= (and d!1287370 res!1790013) b!4355608))

(declare-fun b_lambda!131011 () Bool)

(assert (=> (not b_lambda!131011) (not d!1287370)))

(declare-fun m!4968797 () Bool)

(assert (=> d!1287370 m!4968797))

(declare-fun m!4968799 () Bool)

(assert (=> d!1287370 m!4968799))

(assert (=> d!1287370 m!4967831))

(declare-fun m!4968801 () Bool)

(assert (=> b!4355608 m!4968801))

(assert (=> b!4355039 d!1287370))

(declare-fun d!1287374 () Bool)

(declare-fun res!1790014 () Bool)

(declare-fun e!2710528 () Bool)

(assert (=> d!1287374 (=> res!1790014 e!2710528)))

(assert (=> d!1287374 (= res!1790014 ((_ is Nil!48919) (_2!27450 (h!54467 (toList!2953 lm!1707)))))))

(assert (=> d!1287374 (= (forall!9112 (_2!27450 (h!54467 (toList!2953 lm!1707))) lambda!140172) e!2710528)))

(declare-fun b!4355609 () Bool)

(declare-fun e!2710529 () Bool)

(assert (=> b!4355609 (= e!2710528 e!2710529)))

(declare-fun res!1790015 () Bool)

(assert (=> b!4355609 (=> (not res!1790015) (not e!2710529))))

(assert (=> b!4355609 (= res!1790015 (dynLambda!20630 lambda!140172 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(declare-fun b!4355610 () Bool)

(assert (=> b!4355610 (= e!2710529 (forall!9112 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))) lambda!140172))))

(assert (= (and d!1287374 (not res!1790014)) b!4355609))

(assert (= (and b!4355609 res!1790015) b!4355610))

(declare-fun b_lambda!131013 () Bool)

(assert (=> (not b_lambda!131013) (not b!4355609)))

(assert (=> b!4355609 m!4968797))

(declare-fun m!4968803 () Bool)

(assert (=> b!4355610 m!4968803))

(assert (=> b!4355039 d!1287374))

(declare-fun bm!302675 () Bool)

(declare-fun call!302680 () Bool)

(declare-fun e!2710533 () List!49046)

(assert (=> bm!302675 (= call!302680 (contains!11120 e!2710533 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(declare-fun c!740530 () Bool)

(declare-fun c!740531 () Bool)

(assert (=> bm!302675 (= c!740530 c!740531)))

(declare-fun b!4355611 () Bool)

(declare-fun e!2710532 () Bool)

(declare-fun e!2710535 () Bool)

(assert (=> b!4355611 (= e!2710532 e!2710535)))

(declare-fun res!1790016 () Bool)

(assert (=> b!4355611 (=> (not res!1790016) (not e!2710535))))

(assert (=> b!4355611 (= res!1790016 (isDefined!7754 (getValueByKey!447 (toList!2954 lt!1567836) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))))

(declare-fun b!4355612 () Bool)

(declare-fun e!2710534 () Bool)

(assert (=> b!4355612 (= e!2710534 (not (contains!11120 (keys!16520 lt!1567836) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))))

(declare-fun b!4355613 () Bool)

(declare-fun e!2710530 () Unit!71399)

(declare-fun Unit!71510 () Unit!71399)

(assert (=> b!4355613 (= e!2710530 Unit!71510)))

(declare-fun b!4355614 () Bool)

(declare-fun e!2710531 () Unit!71399)

(declare-fun lt!1568203 () Unit!71399)

(assert (=> b!4355614 (= e!2710531 lt!1568203)))

(declare-fun lt!1568204 () Unit!71399)

(assert (=> b!4355614 (= lt!1568204 (lemmaContainsKeyImpliesGetValueByKeyDefined!357 (toList!2954 lt!1567836) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(assert (=> b!4355614 (isDefined!7754 (getValueByKey!447 (toList!2954 lt!1567836) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(declare-fun lt!1568201 () Unit!71399)

(assert (=> b!4355614 (= lt!1568201 lt!1568204)))

(assert (=> b!4355614 (= lt!1568203 (lemmaInListThenGetKeysListContains!119 (toList!2954 lt!1567836) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(assert (=> b!4355614 call!302680))

(declare-fun b!4355615 () Bool)

(assert (=> b!4355615 (= e!2710533 (keys!16520 lt!1567836))))

(declare-fun d!1287376 () Bool)

(assert (=> d!1287376 e!2710532))

(declare-fun res!1790017 () Bool)

(assert (=> d!1287376 (=> res!1790017 e!2710532)))

(assert (=> d!1287376 (= res!1790017 e!2710534)))

(declare-fun res!1790018 () Bool)

(assert (=> d!1287376 (=> (not res!1790018) (not e!2710534))))

(declare-fun lt!1568200 () Bool)

(assert (=> d!1287376 (= res!1790018 (not lt!1568200))))

(declare-fun lt!1568199 () Bool)

(assert (=> d!1287376 (= lt!1568200 lt!1568199)))

(declare-fun lt!1568198 () Unit!71399)

(assert (=> d!1287376 (= lt!1568198 e!2710531)))

(assert (=> d!1287376 (= c!740531 lt!1568199)))

(assert (=> d!1287376 (= lt!1568199 (containsKey!681 (toList!2954 lt!1567836) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(assert (=> d!1287376 (= (contains!11115 lt!1567836 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) lt!1568200)))

(declare-fun b!4355616 () Bool)

(assert (=> b!4355616 false))

(declare-fun lt!1568197 () Unit!71399)

(declare-fun lt!1568202 () Unit!71399)

(assert (=> b!4355616 (= lt!1568197 lt!1568202)))

(assert (=> b!4355616 (containsKey!681 (toList!2954 lt!1567836) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(assert (=> b!4355616 (= lt!1568202 (lemmaInGetKeysListThenContainsKey!120 (toList!2954 lt!1567836) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(declare-fun Unit!71511 () Unit!71399)

(assert (=> b!4355616 (= e!2710530 Unit!71511)))

(declare-fun b!4355617 () Bool)

(assert (=> b!4355617 (= e!2710535 (contains!11120 (keys!16520 lt!1567836) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(declare-fun b!4355618 () Bool)

(assert (=> b!4355618 (= e!2710533 (getKeysList!122 (toList!2954 lt!1567836)))))

(declare-fun b!4355619 () Bool)

(assert (=> b!4355619 (= e!2710531 e!2710530)))

(declare-fun c!740532 () Bool)

(assert (=> b!4355619 (= c!740532 call!302680)))

(assert (= (and d!1287376 c!740531) b!4355614))

(assert (= (and d!1287376 (not c!740531)) b!4355619))

(assert (= (and b!4355619 c!740532) b!4355616))

(assert (= (and b!4355619 (not c!740532)) b!4355613))

(assert (= (or b!4355614 b!4355619) bm!302675))

(assert (= (and bm!302675 c!740530) b!4355618))

(assert (= (and bm!302675 (not c!740530)) b!4355615))

(assert (= (and d!1287376 res!1790018) b!4355612))

(assert (= (and d!1287376 (not res!1790017)) b!4355611))

(assert (= (and b!4355611 res!1790016) b!4355617))

(declare-fun m!4968805 () Bool)

(assert (=> b!4355615 m!4968805))

(assert (=> b!4355612 m!4968805))

(assert (=> b!4355612 m!4968805))

(declare-fun m!4968807 () Bool)

(assert (=> b!4355612 m!4968807))

(declare-fun m!4968809 () Bool)

(assert (=> b!4355614 m!4968809))

(declare-fun m!4968811 () Bool)

(assert (=> b!4355614 m!4968811))

(assert (=> b!4355614 m!4968811))

(declare-fun m!4968813 () Bool)

(assert (=> b!4355614 m!4968813))

(declare-fun m!4968815 () Bool)

(assert (=> b!4355614 m!4968815))

(assert (=> b!4355617 m!4968805))

(assert (=> b!4355617 m!4968805))

(assert (=> b!4355617 m!4968807))

(declare-fun m!4968817 () Bool)

(assert (=> b!4355616 m!4968817))

(declare-fun m!4968819 () Bool)

(assert (=> b!4355616 m!4968819))

(assert (=> b!4355611 m!4968811))

(assert (=> b!4355611 m!4968811))

(assert (=> b!4355611 m!4968813))

(assert (=> d!1287376 m!4968817))

(declare-fun m!4968821 () Bool)

(assert (=> bm!302675 m!4968821))

(declare-fun m!4968823 () Bool)

(assert (=> b!4355618 m!4968823))

(assert (=> b!4355039 d!1287376))

(declare-fun bs!630778 () Bool)

(declare-fun b!4355623 () Bool)

(assert (= bs!630778 (and b!4355623 d!1287036)))

(declare-fun lambda!140255 () Int)

(assert (=> bs!630778 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) lt!1567853) (= lambda!140255 lambda!140173))))

(declare-fun bs!630780 () Bool)

(assert (= bs!630780 (and b!4355623 d!1287284)))

(assert (=> bs!630780 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) lt!1568101) (= lambda!140255 lambda!140239))))

(declare-fun bs!630782 () Bool)

(assert (= bs!630782 (and b!4355623 b!4355039)))

(assert (=> bs!630782 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) lt!1567836) (= lambda!140255 lambda!140172))))

(declare-fun bs!630784 () Bool)

(assert (= bs!630784 (and b!4355623 b!4355494)))

(assert (=> bs!630784 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140255 lambda!140235))))

(declare-fun bs!630785 () Bool)

(assert (= bs!630785 (and b!4355623 d!1287034)))

(assert (=> bs!630785 (not (= lambda!140255 lambda!140109))))

(assert (=> bs!630782 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) lt!1567542) (= lambda!140255 lambda!140171))))

(declare-fun bs!630788 () Bool)

(assert (= bs!630788 (and b!4355623 b!4355190)))

(assert (=> bs!630788 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140255 lambda!140205))))

(assert (=> bs!630784 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) lt!1568084) (= lambda!140255 lambda!140236))))

(declare-fun bs!630791 () Bool)

(assert (= bs!630791 (and b!4355623 b!4355192)))

(assert (=> bs!630791 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140255 lambda!140204))))

(declare-fun bs!630792 () Bool)

(assert (= bs!630792 (and b!4355623 b!4355496)))

(assert (=> bs!630792 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140255 lambda!140234))))

(declare-fun bs!630794 () Bool)

(assert (= bs!630794 (and b!4355623 b!4355041)))

(assert (=> bs!630794 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) lt!1567542) (= lambda!140255 lambda!140170))))

(assert (=> bs!630788 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) lt!1567931) (= lambda!140255 lambda!140206))))

(declare-fun bs!630797 () Bool)

(assert (= bs!630797 (and b!4355623 d!1287128)))

(assert (=> bs!630797 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) lt!1567948) (= lambda!140255 lambda!140207))))

(assert (=> b!4355623 true))

(declare-fun bs!630800 () Bool)

(declare-fun b!4355621 () Bool)

(assert (= bs!630800 (and b!4355621 d!1287036)))

(declare-fun lambda!140257 () Int)

(assert (=> bs!630800 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) lt!1567853) (= lambda!140257 lambda!140173))))

(declare-fun bs!630801 () Bool)

(assert (= bs!630801 (and b!4355621 d!1287284)))

(assert (=> bs!630801 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) lt!1568101) (= lambda!140257 lambda!140239))))

(declare-fun bs!630802 () Bool)

(assert (= bs!630802 (and b!4355621 b!4355039)))

(assert (=> bs!630802 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) lt!1567836) (= lambda!140257 lambda!140172))))

(declare-fun bs!630803 () Bool)

(assert (= bs!630803 (and b!4355621 b!4355494)))

(assert (=> bs!630803 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140257 lambda!140235))))

(declare-fun bs!630804 () Bool)

(assert (= bs!630804 (and b!4355621 d!1287034)))

(assert (=> bs!630804 (not (= lambda!140257 lambda!140109))))

(assert (=> bs!630802 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) lt!1567542) (= lambda!140257 lambda!140171))))

(assert (=> bs!630803 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) lt!1568084) (= lambda!140257 lambda!140236))))

(declare-fun bs!630805 () Bool)

(assert (= bs!630805 (and b!4355621 b!4355192)))

(assert (=> bs!630805 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140257 lambda!140204))))

(declare-fun bs!630806 () Bool)

(assert (= bs!630806 (and b!4355621 b!4355496)))

(assert (=> bs!630806 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140257 lambda!140234))))

(declare-fun bs!630807 () Bool)

(assert (= bs!630807 (and b!4355621 b!4355041)))

(assert (=> bs!630807 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) lt!1567542) (= lambda!140257 lambda!140170))))

(declare-fun bs!630808 () Bool)

(assert (= bs!630808 (and b!4355621 b!4355190)))

(assert (=> bs!630808 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) lt!1567931) (= lambda!140257 lambda!140206))))

(declare-fun bs!630809 () Bool)

(assert (= bs!630809 (and b!4355621 d!1287128)))

(assert (=> bs!630809 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) lt!1567948) (= lambda!140257 lambda!140207))))

(declare-fun bs!630810 () Bool)

(assert (= bs!630810 (and b!4355621 b!4355623)))

(assert (=> bs!630810 (= lambda!140257 lambda!140255)))

(assert (=> bs!630808 (= (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140257 lambda!140205))))

(assert (=> b!4355621 true))

(declare-fun lambda!140258 () Int)

(declare-fun lt!1568205 () ListMap!2197)

(assert (=> bs!630800 (= (= lt!1568205 lt!1567853) (= lambda!140258 lambda!140173))))

(assert (=> bs!630801 (= (= lt!1568205 lt!1568101) (= lambda!140258 lambda!140239))))

(assert (=> bs!630802 (= (= lt!1568205 lt!1567836) (= lambda!140258 lambda!140172))))

(assert (=> bs!630803 (= (= lt!1568205 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140258 lambda!140235))))

(assert (=> b!4355621 (= (= lt!1568205 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140258 lambda!140257))))

(assert (=> bs!630804 (not (= lambda!140258 lambda!140109))))

(assert (=> bs!630802 (= (= lt!1568205 lt!1567542) (= lambda!140258 lambda!140171))))

(assert (=> bs!630803 (= (= lt!1568205 lt!1568084) (= lambda!140258 lambda!140236))))

(assert (=> bs!630805 (= (= lt!1568205 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140258 lambda!140204))))

(assert (=> bs!630806 (= (= lt!1568205 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140258 lambda!140234))))

(assert (=> bs!630807 (= (= lt!1568205 lt!1567542) (= lambda!140258 lambda!140170))))

(assert (=> bs!630808 (= (= lt!1568205 lt!1567931) (= lambda!140258 lambda!140206))))

(assert (=> bs!630809 (= (= lt!1568205 lt!1567948) (= lambda!140258 lambda!140207))))

(assert (=> bs!630810 (= (= lt!1568205 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140258 lambda!140255))))

(assert (=> bs!630808 (= (= lt!1568205 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140258 lambda!140205))))

(assert (=> b!4355621 true))

(declare-fun bs!630820 () Bool)

(declare-fun d!1287378 () Bool)

(assert (= bs!630820 (and d!1287378 d!1287036)))

(declare-fun lt!1568222 () ListMap!2197)

(declare-fun lambda!140260 () Int)

(assert (=> bs!630820 (= (= lt!1568222 lt!1567853) (= lambda!140260 lambda!140173))))

(declare-fun bs!630821 () Bool)

(assert (= bs!630821 (and d!1287378 d!1287284)))

(assert (=> bs!630821 (= (= lt!1568222 lt!1568101) (= lambda!140260 lambda!140239))))

(declare-fun bs!630822 () Bool)

(assert (= bs!630822 (and d!1287378 b!4355039)))

(assert (=> bs!630822 (= (= lt!1568222 lt!1567836) (= lambda!140260 lambda!140172))))

(declare-fun bs!630823 () Bool)

(assert (= bs!630823 (and d!1287378 b!4355494)))

(assert (=> bs!630823 (= (= lt!1568222 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140260 lambda!140235))))

(declare-fun bs!630824 () Bool)

(assert (= bs!630824 (and d!1287378 d!1287034)))

(assert (=> bs!630824 (not (= lambda!140260 lambda!140109))))

(assert (=> bs!630822 (= (= lt!1568222 lt!1567542) (= lambda!140260 lambda!140171))))

(assert (=> bs!630823 (= (= lt!1568222 lt!1568084) (= lambda!140260 lambda!140236))))

(declare-fun bs!630825 () Bool)

(assert (= bs!630825 (and d!1287378 b!4355621)))

(assert (=> bs!630825 (= (= lt!1568222 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140260 lambda!140257))))

(assert (=> bs!630825 (= (= lt!1568222 lt!1568205) (= lambda!140260 lambda!140258))))

(declare-fun bs!630826 () Bool)

(assert (= bs!630826 (and d!1287378 b!4355192)))

(assert (=> bs!630826 (= (= lt!1568222 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140260 lambda!140204))))

(declare-fun bs!630827 () Bool)

(assert (= bs!630827 (and d!1287378 b!4355496)))

(assert (=> bs!630827 (= (= lt!1568222 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140260 lambda!140234))))

(declare-fun bs!630828 () Bool)

(assert (= bs!630828 (and d!1287378 b!4355041)))

(assert (=> bs!630828 (= (= lt!1568222 lt!1567542) (= lambda!140260 lambda!140170))))

(declare-fun bs!630829 () Bool)

(assert (= bs!630829 (and d!1287378 b!4355190)))

(assert (=> bs!630829 (= (= lt!1568222 lt!1567931) (= lambda!140260 lambda!140206))))

(declare-fun bs!630831 () Bool)

(assert (= bs!630831 (and d!1287378 d!1287128)))

(assert (=> bs!630831 (= (= lt!1568222 lt!1567948) (= lambda!140260 lambda!140207))))

(declare-fun bs!630832 () Bool)

(assert (= bs!630832 (and d!1287378 b!4355623)))

(assert (=> bs!630832 (= (= lt!1568222 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140260 lambda!140255))))

(assert (=> bs!630829 (= (= lt!1568222 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140260 lambda!140205))))

(assert (=> d!1287378 true))

(declare-fun b!4355620 () Bool)

(declare-fun res!1790019 () Bool)

(declare-fun e!2710538 () Bool)

(assert (=> b!4355620 (=> (not res!1790019) (not e!2710538))))

(assert (=> b!4355620 (= res!1790019 (forall!9112 (toList!2954 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) lambda!140260))))

(declare-fun e!2710537 () ListMap!2197)

(assert (=> b!4355621 (= e!2710537 lt!1568205)))

(declare-fun lt!1568214 () ListMap!2197)

(assert (=> b!4355621 (= lt!1568214 (+!628 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (h!54466 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(assert (=> b!4355621 (= lt!1568205 (addToMapMapFromBucket!181 (t!355963 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (+!628 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (h!54466 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))))

(declare-fun lt!1568206 () Unit!71399)

(declare-fun call!302682 () Unit!71399)

(assert (=> b!4355621 (= lt!1568206 call!302682)))

(assert (=> b!4355621 (forall!9112 (toList!2954 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) lambda!140257)))

(declare-fun lt!1568218 () Unit!71399)

(assert (=> b!4355621 (= lt!1568218 lt!1568206)))

(assert (=> b!4355621 (forall!9112 (toList!2954 lt!1568214) lambda!140258)))

(declare-fun lt!1568217 () Unit!71399)

(declare-fun Unit!71514 () Unit!71399)

(assert (=> b!4355621 (= lt!1568217 Unit!71514)))

(declare-fun call!302681 () Bool)

(assert (=> b!4355621 call!302681))

(declare-fun lt!1568209 () Unit!71399)

(declare-fun Unit!71515 () Unit!71399)

(assert (=> b!4355621 (= lt!1568209 Unit!71515)))

(declare-fun lt!1568225 () Unit!71399)

(declare-fun Unit!71516 () Unit!71399)

(assert (=> b!4355621 (= lt!1568225 Unit!71516)))

(declare-fun lt!1568223 () Unit!71399)

(assert (=> b!4355621 (= lt!1568223 (forallContained!1753 (toList!2954 lt!1568214) lambda!140258 (h!54466 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(assert (=> b!4355621 (contains!11115 lt!1568214 (_1!27449 (h!54466 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(declare-fun lt!1568219 () Unit!71399)

(declare-fun Unit!71517 () Unit!71399)

(assert (=> b!4355621 (= lt!1568219 Unit!71517)))

(assert (=> b!4355621 (contains!11115 lt!1568205 (_1!27449 (h!54466 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(declare-fun lt!1568224 () Unit!71399)

(declare-fun Unit!71518 () Unit!71399)

(assert (=> b!4355621 (= lt!1568224 Unit!71518)))

(assert (=> b!4355621 (forall!9112 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))) lambda!140258)))

(declare-fun lt!1568210 () Unit!71399)

(declare-fun Unit!71519 () Unit!71399)

(assert (=> b!4355621 (= lt!1568210 Unit!71519)))

(assert (=> b!4355621 (forall!9112 (toList!2954 lt!1568214) lambda!140258)))

(declare-fun lt!1568216 () Unit!71399)

(declare-fun Unit!71520 () Unit!71399)

(assert (=> b!4355621 (= lt!1568216 Unit!71520)))

(declare-fun lt!1568213 () Unit!71399)

(declare-fun Unit!71521 () Unit!71399)

(assert (=> b!4355621 (= lt!1568213 Unit!71521)))

(declare-fun lt!1568207 () Unit!71399)

(assert (=> b!4355621 (= lt!1568207 (addForallContainsKeyThenBeforeAdding!57 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) lt!1568205 (_1!27449 (h!54466 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (_2!27449 (h!54466 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))))

(declare-fun call!302683 () Bool)

(assert (=> b!4355621 call!302683))

(declare-fun lt!1568221 () Unit!71399)

(assert (=> b!4355621 (= lt!1568221 lt!1568207)))

(assert (=> b!4355621 (forall!9112 (toList!2954 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) lambda!140258)))

(declare-fun lt!1568220 () Unit!71399)

(declare-fun Unit!71522 () Unit!71399)

(assert (=> b!4355621 (= lt!1568220 Unit!71522)))

(declare-fun res!1790021 () Bool)

(assert (=> b!4355621 (= res!1790021 (forall!9112 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))) lambda!140258))))

(declare-fun e!2710536 () Bool)

(assert (=> b!4355621 (=> (not res!1790021) (not e!2710536))))

(assert (=> b!4355621 e!2710536))

(declare-fun lt!1568211 () Unit!71399)

(declare-fun Unit!71523 () Unit!71399)

(assert (=> b!4355621 (= lt!1568211 Unit!71523)))

(declare-fun b!4355622 () Bool)

(assert (=> b!4355622 (= e!2710538 (invariantList!674 (toList!2954 lt!1568222)))))

(declare-fun bm!302676 () Bool)

(declare-fun c!740533 () Bool)

(assert (=> bm!302676 (= call!302681 (forall!9112 (ite c!740533 (toList!2954 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (t!355963 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (ite c!740533 lambda!140255 lambda!140258)))))

(assert (=> b!4355623 (= e!2710537 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(declare-fun lt!1568215 () Unit!71399)

(assert (=> b!4355623 (= lt!1568215 call!302682)))

(assert (=> b!4355623 call!302683))

(declare-fun lt!1568208 () Unit!71399)

(assert (=> b!4355623 (= lt!1568208 lt!1568215)))

(assert (=> b!4355623 call!302681))

(declare-fun lt!1568212 () Unit!71399)

(declare-fun Unit!71524 () Unit!71399)

(assert (=> b!4355623 (= lt!1568212 Unit!71524)))

(declare-fun bm!302677 () Bool)

(assert (=> bm!302677 (= call!302682 (lemmaContainsAllItsOwnKeys!57 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(assert (=> d!1287378 e!2710538))

(declare-fun res!1790020 () Bool)

(assert (=> d!1287378 (=> (not res!1790020) (not e!2710538))))

(assert (=> d!1287378 (= res!1790020 (forall!9112 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))) lambda!140260))))

(assert (=> d!1287378 (= lt!1568222 e!2710537)))

(assert (=> d!1287378 (= c!740533 ((_ is Nil!48919) (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(assert (=> d!1287378 (noDuplicateKeys!485 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))

(assert (=> d!1287378 (= (addToMapMapFromBucket!181 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))) (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) lt!1568222)))

(declare-fun bm!302678 () Bool)

(assert (=> bm!302678 (= call!302683 (forall!9112 (toList!2954 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (ite c!740533 lambda!140255 lambda!140258)))))

(declare-fun b!4355624 () Bool)

(assert (=> b!4355624 (= e!2710536 (forall!9112 (toList!2954 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) lambda!140258))))

(assert (= (and d!1287378 c!740533) b!4355623))

(assert (= (and d!1287378 (not c!740533)) b!4355621))

(assert (= (and b!4355621 res!1790021) b!4355624))

(assert (= (or b!4355623 b!4355621) bm!302677))

(assert (= (or b!4355623 b!4355621) bm!302678))

(assert (= (or b!4355623 b!4355621) bm!302676))

(assert (= (and d!1287378 res!1790020) b!4355620))

(assert (= (and b!4355620 res!1790019) b!4355622))

(assert (=> b!4355621 m!4967827))

(declare-fun m!4968883 () Bool)

(assert (=> b!4355621 m!4968883))

(declare-fun m!4968885 () Bool)

(assert (=> b!4355621 m!4968885))

(declare-fun m!4968887 () Bool)

(assert (=> b!4355621 m!4968887))

(declare-fun m!4968889 () Bool)

(assert (=> b!4355621 m!4968889))

(assert (=> b!4355621 m!4967827))

(declare-fun m!4968891 () Bool)

(assert (=> b!4355621 m!4968891))

(declare-fun m!4968893 () Bool)

(assert (=> b!4355621 m!4968893))

(assert (=> b!4355621 m!4968889))

(assert (=> b!4355621 m!4968883))

(declare-fun m!4968895 () Bool)

(assert (=> b!4355621 m!4968895))

(declare-fun m!4968897 () Bool)

(assert (=> b!4355621 m!4968897))

(assert (=> b!4355621 m!4968887))

(declare-fun m!4968899 () Bool)

(assert (=> b!4355621 m!4968899))

(declare-fun m!4968901 () Bool)

(assert (=> b!4355621 m!4968901))

(declare-fun m!4968903 () Bool)

(assert (=> b!4355620 m!4968903))

(assert (=> b!4355624 m!4968885))

(assert (=> bm!302677 m!4967827))

(declare-fun m!4968905 () Bool)

(assert (=> bm!302677 m!4968905))

(declare-fun m!4968907 () Bool)

(assert (=> b!4355622 m!4968907))

(declare-fun m!4968909 () Bool)

(assert (=> d!1287378 m!4968909))

(assert (=> d!1287378 m!4968387))

(declare-fun m!4968911 () Bool)

(assert (=> bm!302678 m!4968911))

(declare-fun m!4968913 () Bool)

(assert (=> bm!302676 m!4968913))

(assert (=> b!4355039 d!1287378))

(declare-fun d!1287394 () Bool)

(declare-fun e!2710548 () Bool)

(assert (=> d!1287394 e!2710548))

(declare-fun res!1790028 () Bool)

(assert (=> d!1287394 (=> (not res!1790028) (not e!2710548))))

(declare-fun lt!1568231 () ListMap!2197)

(assert (=> d!1287394 (= res!1790028 (contains!11115 lt!1568231 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(declare-fun lt!1568228 () List!49043)

(assert (=> d!1287394 (= lt!1568231 (ListMap!2198 lt!1568228))))

(declare-fun lt!1568230 () Unit!71399)

(declare-fun lt!1568229 () Unit!71399)

(assert (=> d!1287394 (= lt!1568230 lt!1568229)))

(assert (=> d!1287394 (= (getValueByKey!447 lt!1568228 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (Some!10460 (_2!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(assert (=> d!1287394 (= lt!1568229 (lemmaContainsTupThenGetReturnValue!221 lt!1568228 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (_2!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(assert (=> d!1287394 (= lt!1568228 (insertNoDuplicatedKeys!98 (toList!2954 lt!1567542) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (_2!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(assert (=> d!1287394 (= (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) lt!1568231)))

(declare-fun b!4355637 () Bool)

(declare-fun res!1790029 () Bool)

(assert (=> b!4355637 (=> (not res!1790029) (not e!2710548))))

(assert (=> b!4355637 (= res!1790029 (= (getValueByKey!447 (toList!2954 lt!1568231) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (Some!10460 (_2!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))))

(declare-fun b!4355638 () Bool)

(assert (=> b!4355638 (= e!2710548 (contains!11121 (toList!2954 lt!1568231) (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(assert (= (and d!1287394 res!1790028) b!4355637))

(assert (= (and b!4355637 res!1790029) b!4355638))

(declare-fun m!4968919 () Bool)

(assert (=> d!1287394 m!4968919))

(declare-fun m!4968921 () Bool)

(assert (=> d!1287394 m!4968921))

(declare-fun m!4968923 () Bool)

(assert (=> d!1287394 m!4968923))

(declare-fun m!4968925 () Bool)

(assert (=> d!1287394 m!4968925))

(declare-fun m!4968927 () Bool)

(assert (=> b!4355637 m!4968927))

(declare-fun m!4968929 () Bool)

(assert (=> b!4355638 m!4968929))

(assert (=> b!4355039 d!1287394))

(declare-fun d!1287398 () Bool)

(declare-fun res!1790030 () Bool)

(declare-fun e!2710551 () Bool)

(assert (=> d!1287398 (=> res!1790030 e!2710551)))

(assert (=> d!1287398 (= res!1790030 ((_ is Nil!48919) (toList!2954 lt!1567542)))))

(assert (=> d!1287398 (= (forall!9112 (toList!2954 lt!1567542) lambda!140171) e!2710551)))

(declare-fun b!4355643 () Bool)

(declare-fun e!2710552 () Bool)

(assert (=> b!4355643 (= e!2710551 e!2710552)))

(declare-fun res!1790031 () Bool)

(assert (=> b!4355643 (=> (not res!1790031) (not e!2710552))))

(assert (=> b!4355643 (= res!1790031 (dynLambda!20630 lambda!140171 (h!54466 (toList!2954 lt!1567542))))))

(declare-fun b!4355644 () Bool)

(assert (=> b!4355644 (= e!2710552 (forall!9112 (t!355963 (toList!2954 lt!1567542)) lambda!140171))))

(assert (= (and d!1287398 (not res!1790030)) b!4355643))

(assert (= (and b!4355643 res!1790031) b!4355644))

(declare-fun b_lambda!131017 () Bool)

(assert (=> (not b_lambda!131017) (not b!4355643)))

(declare-fun m!4968935 () Bool)

(assert (=> b!4355643 m!4968935))

(declare-fun m!4968937 () Bool)

(assert (=> b!4355644 m!4968937))

(assert (=> b!4355039 d!1287398))

(declare-fun bs!630833 () Bool)

(declare-fun d!1287402 () Bool)

(assert (= bs!630833 (and d!1287402 d!1287036)))

(declare-fun lambda!140265 () Int)

(assert (=> bs!630833 (= (= lt!1567836 lt!1567853) (= lambda!140265 lambda!140173))))

(declare-fun bs!630834 () Bool)

(assert (= bs!630834 (and d!1287402 d!1287284)))

(assert (=> bs!630834 (= (= lt!1567836 lt!1568101) (= lambda!140265 lambda!140239))))

(declare-fun bs!630835 () Bool)

(assert (= bs!630835 (and d!1287402 d!1287378)))

(assert (=> bs!630835 (= (= lt!1567836 lt!1568222) (= lambda!140265 lambda!140260))))

(declare-fun bs!630836 () Bool)

(assert (= bs!630836 (and d!1287402 b!4355039)))

(assert (=> bs!630836 (= lambda!140265 lambda!140172)))

(declare-fun bs!630837 () Bool)

(assert (= bs!630837 (and d!1287402 b!4355494)))

(assert (=> bs!630837 (= (= lt!1567836 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140265 lambda!140235))))

(declare-fun bs!630838 () Bool)

(assert (= bs!630838 (and d!1287402 d!1287034)))

(assert (=> bs!630838 (not (= lambda!140265 lambda!140109))))

(assert (=> bs!630836 (= (= lt!1567836 lt!1567542) (= lambda!140265 lambda!140171))))

(assert (=> bs!630837 (= (= lt!1567836 lt!1568084) (= lambda!140265 lambda!140236))))

(declare-fun bs!630839 () Bool)

(assert (= bs!630839 (and d!1287402 b!4355621)))

(assert (=> bs!630839 (= (= lt!1567836 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140265 lambda!140257))))

(assert (=> bs!630839 (= (= lt!1567836 lt!1568205) (= lambda!140265 lambda!140258))))

(declare-fun bs!630840 () Bool)

(assert (= bs!630840 (and d!1287402 b!4355192)))

(assert (=> bs!630840 (= (= lt!1567836 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140265 lambda!140204))))

(declare-fun bs!630841 () Bool)

(assert (= bs!630841 (and d!1287402 b!4355496)))

(assert (=> bs!630841 (= (= lt!1567836 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140265 lambda!140234))))

(declare-fun bs!630842 () Bool)

(assert (= bs!630842 (and d!1287402 b!4355041)))

(assert (=> bs!630842 (= (= lt!1567836 lt!1567542) (= lambda!140265 lambda!140170))))

(declare-fun bs!630843 () Bool)

(assert (= bs!630843 (and d!1287402 b!4355190)))

(assert (=> bs!630843 (= (= lt!1567836 lt!1567931) (= lambda!140265 lambda!140206))))

(declare-fun bs!630844 () Bool)

(assert (= bs!630844 (and d!1287402 d!1287128)))

(assert (=> bs!630844 (= (= lt!1567836 lt!1567948) (= lambda!140265 lambda!140207))))

(declare-fun bs!630845 () Bool)

(assert (= bs!630845 (and d!1287402 b!4355623)))

(assert (=> bs!630845 (= (= lt!1567836 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140265 lambda!140255))))

(assert (=> bs!630843 (= (= lt!1567836 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140265 lambda!140205))))

(assert (=> d!1287402 true))

(assert (=> d!1287402 (forall!9112 (toList!2954 lt!1567542) lambda!140265)))

(declare-fun lt!1568250 () Unit!71399)

(declare-fun choose!26884 (ListMap!2197 ListMap!2197 K!10280 V!10526) Unit!71399)

(assert (=> d!1287402 (= lt!1568250 (choose!26884 lt!1567542 lt!1567836 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (_2!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(assert (=> d!1287402 (forall!9112 (toList!2954 (+!628 lt!1567542 (tuple2!48311 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (_2!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))) lambda!140265)))

(assert (=> d!1287402 (= (addForallContainsKeyThenBeforeAdding!57 lt!1567542 lt!1567836 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (_2!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) lt!1568250)))

(declare-fun bs!630846 () Bool)

(assert (= bs!630846 d!1287402))

(declare-fun m!4968983 () Bool)

(assert (=> bs!630846 m!4968983))

(declare-fun m!4968985 () Bool)

(assert (=> bs!630846 m!4968985))

(declare-fun m!4968987 () Bool)

(assert (=> bs!630846 m!4968987))

(declare-fun m!4968989 () Bool)

(assert (=> bs!630846 m!4968989))

(assert (=> b!4355039 d!1287402))

(declare-fun d!1287410 () Bool)

(declare-fun res!1790040 () Bool)

(declare-fun e!2710567 () Bool)

(assert (=> d!1287410 (=> res!1790040 e!2710567)))

(assert (=> d!1287410 (= res!1790040 ((_ is Nil!48919) (toList!2954 lt!1567845)))))

(assert (=> d!1287410 (= (forall!9112 (toList!2954 lt!1567845) lambda!140172) e!2710567)))

(declare-fun b!4355667 () Bool)

(declare-fun e!2710568 () Bool)

(assert (=> b!4355667 (= e!2710567 e!2710568)))

(declare-fun res!1790041 () Bool)

(assert (=> b!4355667 (=> (not res!1790041) (not e!2710568))))

(assert (=> b!4355667 (= res!1790041 (dynLambda!20630 lambda!140172 (h!54466 (toList!2954 lt!1567845))))))

(declare-fun b!4355668 () Bool)

(assert (=> b!4355668 (= e!2710568 (forall!9112 (t!355963 (toList!2954 lt!1567845)) lambda!140172))))

(assert (= (and d!1287410 (not res!1790040)) b!4355667))

(assert (= (and b!4355667 res!1790041) b!4355668))

(declare-fun b_lambda!131021 () Bool)

(assert (=> (not b_lambda!131021) (not b!4355667)))

(declare-fun m!4968991 () Bool)

(assert (=> b!4355667 m!4968991))

(declare-fun m!4968993 () Bool)

(assert (=> b!4355668 m!4968993))

(assert (=> b!4355039 d!1287410))

(declare-fun bm!302681 () Bool)

(declare-fun call!302686 () Bool)

(declare-fun e!2710572 () List!49046)

(assert (=> bm!302681 (= call!302686 (contains!11120 e!2710572 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(declare-fun c!740545 () Bool)

(declare-fun c!740546 () Bool)

(assert (=> bm!302681 (= c!740545 c!740546)))

(declare-fun b!4355669 () Bool)

(declare-fun e!2710571 () Bool)

(declare-fun e!2710574 () Bool)

(assert (=> b!4355669 (= e!2710571 e!2710574)))

(declare-fun res!1790042 () Bool)

(assert (=> b!4355669 (=> (not res!1790042) (not e!2710574))))

(assert (=> b!4355669 (= res!1790042 (isDefined!7754 (getValueByKey!447 (toList!2954 lt!1567845) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))))

(declare-fun b!4355670 () Bool)

(declare-fun e!2710573 () Bool)

(assert (=> b!4355670 (= e!2710573 (not (contains!11120 (keys!16520 lt!1567845) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))))

(declare-fun b!4355671 () Bool)

(declare-fun e!2710569 () Unit!71399)

(declare-fun Unit!71527 () Unit!71399)

(assert (=> b!4355671 (= e!2710569 Unit!71527)))

(declare-fun b!4355672 () Bool)

(declare-fun e!2710570 () Unit!71399)

(declare-fun lt!1568260 () Unit!71399)

(assert (=> b!4355672 (= e!2710570 lt!1568260)))

(declare-fun lt!1568261 () Unit!71399)

(assert (=> b!4355672 (= lt!1568261 (lemmaContainsKeyImpliesGetValueByKeyDefined!357 (toList!2954 lt!1567845) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(assert (=> b!4355672 (isDefined!7754 (getValueByKey!447 (toList!2954 lt!1567845) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(declare-fun lt!1568258 () Unit!71399)

(assert (=> b!4355672 (= lt!1568258 lt!1568261)))

(assert (=> b!4355672 (= lt!1568260 (lemmaInListThenGetKeysListContains!119 (toList!2954 lt!1567845) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(assert (=> b!4355672 call!302686))

(declare-fun b!4355673 () Bool)

(assert (=> b!4355673 (= e!2710572 (keys!16520 lt!1567845))))

(declare-fun d!1287412 () Bool)

(assert (=> d!1287412 e!2710571))

(declare-fun res!1790043 () Bool)

(assert (=> d!1287412 (=> res!1790043 e!2710571)))

(assert (=> d!1287412 (= res!1790043 e!2710573)))

(declare-fun res!1790044 () Bool)

(assert (=> d!1287412 (=> (not res!1790044) (not e!2710573))))

(declare-fun lt!1568257 () Bool)

(assert (=> d!1287412 (= res!1790044 (not lt!1568257))))

(declare-fun lt!1568256 () Bool)

(assert (=> d!1287412 (= lt!1568257 lt!1568256)))

(declare-fun lt!1568255 () Unit!71399)

(assert (=> d!1287412 (= lt!1568255 e!2710570)))

(assert (=> d!1287412 (= c!740546 lt!1568256)))

(assert (=> d!1287412 (= lt!1568256 (containsKey!681 (toList!2954 lt!1567845) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(assert (=> d!1287412 (= (contains!11115 lt!1567845 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) lt!1568257)))

(declare-fun b!4355674 () Bool)

(assert (=> b!4355674 false))

(declare-fun lt!1568254 () Unit!71399)

(declare-fun lt!1568259 () Unit!71399)

(assert (=> b!4355674 (= lt!1568254 lt!1568259)))

(assert (=> b!4355674 (containsKey!681 (toList!2954 lt!1567845) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(assert (=> b!4355674 (= lt!1568259 (lemmaInGetKeysListThenContainsKey!120 (toList!2954 lt!1567845) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(declare-fun Unit!71528 () Unit!71399)

(assert (=> b!4355674 (= e!2710569 Unit!71528)))

(declare-fun b!4355675 () Bool)

(assert (=> b!4355675 (= e!2710574 (contains!11120 (keys!16520 lt!1567845) (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(declare-fun b!4355676 () Bool)

(assert (=> b!4355676 (= e!2710572 (getKeysList!122 (toList!2954 lt!1567845)))))

(declare-fun b!4355677 () Bool)

(assert (=> b!4355677 (= e!2710570 e!2710569)))

(declare-fun c!740547 () Bool)

(assert (=> b!4355677 (= c!740547 call!302686)))

(assert (= (and d!1287412 c!740546) b!4355672))

(assert (= (and d!1287412 (not c!740546)) b!4355677))

(assert (= (and b!4355677 c!740547) b!4355674))

(assert (= (and b!4355677 (not c!740547)) b!4355671))

(assert (= (or b!4355672 b!4355677) bm!302681))

(assert (= (and bm!302681 c!740545) b!4355676))

(assert (= (and bm!302681 (not c!740545)) b!4355673))

(assert (= (and d!1287412 res!1790044) b!4355670))

(assert (= (and d!1287412 (not res!1790043)) b!4355669))

(assert (= (and b!4355669 res!1790042) b!4355675))

(declare-fun m!4968995 () Bool)

(assert (=> b!4355673 m!4968995))

(assert (=> b!4355670 m!4968995))

(assert (=> b!4355670 m!4968995))

(declare-fun m!4968997 () Bool)

(assert (=> b!4355670 m!4968997))

(declare-fun m!4968999 () Bool)

(assert (=> b!4355672 m!4968999))

(declare-fun m!4969001 () Bool)

(assert (=> b!4355672 m!4969001))

(assert (=> b!4355672 m!4969001))

(declare-fun m!4969003 () Bool)

(assert (=> b!4355672 m!4969003))

(declare-fun m!4969005 () Bool)

(assert (=> b!4355672 m!4969005))

(assert (=> b!4355675 m!4968995))

(assert (=> b!4355675 m!4968995))

(assert (=> b!4355675 m!4968997))

(declare-fun m!4969007 () Bool)

(assert (=> b!4355674 m!4969007))

(declare-fun m!4969009 () Bool)

(assert (=> b!4355674 m!4969009))

(assert (=> b!4355669 m!4969001))

(assert (=> b!4355669 m!4969001))

(assert (=> b!4355669 m!4969003))

(assert (=> d!1287412 m!4969007))

(declare-fun m!4969011 () Bool)

(assert (=> bm!302681 m!4969011))

(declare-fun m!4969013 () Bool)

(assert (=> b!4355676 m!4969013))

(assert (=> b!4355039 d!1287412))

(declare-fun d!1287414 () Bool)

(declare-fun res!1790045 () Bool)

(declare-fun e!2710575 () Bool)

(assert (=> d!1287414 (=> res!1790045 e!2710575)))

(assert (=> d!1287414 (= res!1790045 (not ((_ is Cons!48919) (_2!27450 (tuple2!48313 hash!377 newBucket!200)))))))

(assert (=> d!1287414 (= (noDuplicateKeys!485 (_2!27450 (tuple2!48313 hash!377 newBucket!200))) e!2710575)))

(declare-fun b!4355678 () Bool)

(declare-fun e!2710576 () Bool)

(assert (=> b!4355678 (= e!2710575 e!2710576)))

(declare-fun res!1790046 () Bool)

(assert (=> b!4355678 (=> (not res!1790046) (not e!2710576))))

(assert (=> b!4355678 (= res!1790046 (not (containsKey!678 (t!355963 (_2!27450 (tuple2!48313 hash!377 newBucket!200))) (_1!27449 (h!54466 (_2!27450 (tuple2!48313 hash!377 newBucket!200)))))))))

(declare-fun b!4355679 () Bool)

(assert (=> b!4355679 (= e!2710576 (noDuplicateKeys!485 (t!355963 (_2!27450 (tuple2!48313 hash!377 newBucket!200)))))))

(assert (= (and d!1287414 (not res!1790045)) b!4355678))

(assert (= (and b!4355678 res!1790046) b!4355679))

(declare-fun m!4969015 () Bool)

(assert (=> b!4355678 m!4969015))

(declare-fun m!4969017 () Bool)

(assert (=> b!4355679 m!4969017))

(assert (=> bs!630552 d!1287414))

(assert (=> b!4355058 d!1287326))

(assert (=> b!4355058 d!1287302))

(assert (=> b!4354973 d!1287182))

(assert (=> b!4354973 d!1287184))

(declare-fun d!1287416 () Bool)

(declare-fun res!1790047 () Bool)

(declare-fun e!2710577 () Bool)

(assert (=> d!1287416 (=> res!1790047 e!2710577)))

(assert (=> d!1287416 (= res!1790047 ((_ is Nil!48919) newBucket!200))))

(assert (=> d!1287416 (= (forall!9112 newBucket!200 lambda!140109) e!2710577)))

(declare-fun b!4355680 () Bool)

(declare-fun e!2710578 () Bool)

(assert (=> b!4355680 (= e!2710577 e!2710578)))

(declare-fun res!1790048 () Bool)

(assert (=> b!4355680 (=> (not res!1790048) (not e!2710578))))

(assert (=> b!4355680 (= res!1790048 (dynLambda!20630 lambda!140109 (h!54466 newBucket!200)))))

(declare-fun b!4355681 () Bool)

(assert (=> b!4355681 (= e!2710578 (forall!9112 (t!355963 newBucket!200) lambda!140109))))

(assert (= (and d!1287416 (not res!1790047)) b!4355680))

(assert (= (and b!4355680 res!1790048) b!4355681))

(declare-fun b_lambda!131023 () Bool)

(assert (=> (not b_lambda!131023) (not b!4355680)))

(declare-fun m!4969019 () Bool)

(assert (=> b!4355680 m!4969019))

(declare-fun m!4969021 () Bool)

(assert (=> b!4355681 m!4969021))

(assert (=> d!1287034 d!1287416))

(declare-fun d!1287418 () Bool)

(assert (=> d!1287418 (= (head!9042 (toList!2953 lm!1707)) (h!54467 (toList!2953 lm!1707)))))

(assert (=> d!1287076 d!1287418))

(declare-fun d!1287422 () Bool)

(declare-fun res!1790051 () Bool)

(declare-fun e!2710581 () Bool)

(assert (=> d!1287422 (=> res!1790051 e!2710581)))

(assert (=> d!1287422 (= res!1790051 (and ((_ is Cons!48919) (toList!2954 lt!1567542)) (= (_1!27449 (h!54466 (toList!2954 lt!1567542))) key!3918)))))

(assert (=> d!1287422 (= (containsKey!681 (toList!2954 lt!1567542) key!3918) e!2710581)))

(declare-fun b!4355684 () Bool)

(declare-fun e!2710582 () Bool)

(assert (=> b!4355684 (= e!2710581 e!2710582)))

(declare-fun res!1790052 () Bool)

(assert (=> b!4355684 (=> (not res!1790052) (not e!2710582))))

(assert (=> b!4355684 (= res!1790052 ((_ is Cons!48919) (toList!2954 lt!1567542)))))

(declare-fun b!4355685 () Bool)

(assert (=> b!4355685 (= e!2710582 (containsKey!681 (t!355963 (toList!2954 lt!1567542)) key!3918))))

(assert (= (and d!1287422 (not res!1790051)) b!4355684))

(assert (= (and b!4355684 res!1790052) b!4355685))

(declare-fun m!4969033 () Bool)

(assert (=> b!4355685 m!4969033))

(assert (=> b!4355071 d!1287422))

(declare-fun d!1287426 () Bool)

(assert (=> d!1287426 (containsKey!681 (toList!2954 lt!1567542) key!3918)))

(declare-fun lt!1568262 () Unit!71399)

(assert (=> d!1287426 (= lt!1568262 (choose!26876 (toList!2954 lt!1567542) key!3918))))

(assert (=> d!1287426 (invariantList!674 (toList!2954 lt!1567542))))

(assert (=> d!1287426 (= (lemmaInGetKeysListThenContainsKey!120 (toList!2954 lt!1567542) key!3918) lt!1568262)))

(declare-fun bs!630861 () Bool)

(assert (= bs!630861 d!1287426))

(assert (=> bs!630861 m!4967961))

(declare-fun m!4969037 () Bool)

(assert (=> bs!630861 m!4969037))

(assert (=> bs!630861 m!4968411))

(assert (=> b!4355071 d!1287426))

(declare-fun bm!302682 () Bool)

(declare-fun call!302687 () Bool)

(declare-fun e!2710589 () List!49046)

(assert (=> bm!302682 (= call!302687 (contains!11120 e!2710589 (_1!27449 lt!1567541)))))

(declare-fun c!740548 () Bool)

(declare-fun c!740549 () Bool)

(assert (=> bm!302682 (= c!740548 c!740549)))

(declare-fun b!4355690 () Bool)

(declare-fun e!2710588 () Bool)

(declare-fun e!2710591 () Bool)

(assert (=> b!4355690 (= e!2710588 e!2710591)))

(declare-fun res!1790056 () Bool)

(assert (=> b!4355690 (=> (not res!1790056) (not e!2710591))))

(assert (=> b!4355690 (= res!1790056 (isDefined!7754 (getValueByKey!447 (toList!2954 lt!1567872) (_1!27449 lt!1567541))))))

(declare-fun b!4355691 () Bool)

(declare-fun e!2710590 () Bool)

(assert (=> b!4355691 (= e!2710590 (not (contains!11120 (keys!16520 lt!1567872) (_1!27449 lt!1567541))))))

(declare-fun b!4355692 () Bool)

(declare-fun e!2710585 () Unit!71399)

(declare-fun Unit!71529 () Unit!71399)

(assert (=> b!4355692 (= e!2710585 Unit!71529)))

(declare-fun b!4355693 () Bool)

(declare-fun e!2710587 () Unit!71399)

(declare-fun lt!1568273 () Unit!71399)

(assert (=> b!4355693 (= e!2710587 lt!1568273)))

(declare-fun lt!1568274 () Unit!71399)

(assert (=> b!4355693 (= lt!1568274 (lemmaContainsKeyImpliesGetValueByKeyDefined!357 (toList!2954 lt!1567872) (_1!27449 lt!1567541)))))

(assert (=> b!4355693 (isDefined!7754 (getValueByKey!447 (toList!2954 lt!1567872) (_1!27449 lt!1567541)))))

(declare-fun lt!1568271 () Unit!71399)

(assert (=> b!4355693 (= lt!1568271 lt!1568274)))

(assert (=> b!4355693 (= lt!1568273 (lemmaInListThenGetKeysListContains!119 (toList!2954 lt!1567872) (_1!27449 lt!1567541)))))

(assert (=> b!4355693 call!302687))

(declare-fun b!4355694 () Bool)

(assert (=> b!4355694 (= e!2710589 (keys!16520 lt!1567872))))

(declare-fun d!1287430 () Bool)

(assert (=> d!1287430 e!2710588))

(declare-fun res!1790058 () Bool)

(assert (=> d!1287430 (=> res!1790058 e!2710588)))

(assert (=> d!1287430 (= res!1790058 e!2710590)))

(declare-fun res!1790059 () Bool)

(assert (=> d!1287430 (=> (not res!1790059) (not e!2710590))))

(declare-fun lt!1568270 () Bool)

(assert (=> d!1287430 (= res!1790059 (not lt!1568270))))

(declare-fun lt!1568268 () Bool)

(assert (=> d!1287430 (= lt!1568270 lt!1568268)))

(declare-fun lt!1568267 () Unit!71399)

(assert (=> d!1287430 (= lt!1568267 e!2710587)))

(assert (=> d!1287430 (= c!740549 lt!1568268)))

(assert (=> d!1287430 (= lt!1568268 (containsKey!681 (toList!2954 lt!1567872) (_1!27449 lt!1567541)))))

(assert (=> d!1287430 (= (contains!11115 lt!1567872 (_1!27449 lt!1567541)) lt!1568270)))

(declare-fun b!4355695 () Bool)

(assert (=> b!4355695 false))

(declare-fun lt!1568264 () Unit!71399)

(declare-fun lt!1568272 () Unit!71399)

(assert (=> b!4355695 (= lt!1568264 lt!1568272)))

(assert (=> b!4355695 (containsKey!681 (toList!2954 lt!1567872) (_1!27449 lt!1567541))))

(assert (=> b!4355695 (= lt!1568272 (lemmaInGetKeysListThenContainsKey!120 (toList!2954 lt!1567872) (_1!27449 lt!1567541)))))

(declare-fun Unit!71530 () Unit!71399)

(assert (=> b!4355695 (= e!2710585 Unit!71530)))

(declare-fun b!4355696 () Bool)

(assert (=> b!4355696 (= e!2710591 (contains!11120 (keys!16520 lt!1567872) (_1!27449 lt!1567541)))))

(declare-fun b!4355697 () Bool)

(assert (=> b!4355697 (= e!2710589 (getKeysList!122 (toList!2954 lt!1567872)))))

(declare-fun b!4355698 () Bool)

(assert (=> b!4355698 (= e!2710587 e!2710585)))

(declare-fun c!740550 () Bool)

(assert (=> b!4355698 (= c!740550 call!302687)))

(assert (= (and d!1287430 c!740549) b!4355693))

(assert (= (and d!1287430 (not c!740549)) b!4355698))

(assert (= (and b!4355698 c!740550) b!4355695))

(assert (= (and b!4355698 (not c!740550)) b!4355692))

(assert (= (or b!4355693 b!4355698) bm!302682))

(assert (= (and bm!302682 c!740548) b!4355697))

(assert (= (and bm!302682 (not c!740548)) b!4355694))

(assert (= (and d!1287430 res!1790059) b!4355691))

(assert (= (and d!1287430 (not res!1790058)) b!4355690))

(assert (= (and b!4355690 res!1790056) b!4355696))

(declare-fun m!4969053 () Bool)

(assert (=> b!4355694 m!4969053))

(assert (=> b!4355691 m!4969053))

(assert (=> b!4355691 m!4969053))

(declare-fun m!4969055 () Bool)

(assert (=> b!4355691 m!4969055))

(declare-fun m!4969057 () Bool)

(assert (=> b!4355693 m!4969057))

(assert (=> b!4355693 m!4967883))

(assert (=> b!4355693 m!4967883))

(declare-fun m!4969059 () Bool)

(assert (=> b!4355693 m!4969059))

(declare-fun m!4969061 () Bool)

(assert (=> b!4355693 m!4969061))

(assert (=> b!4355696 m!4969053))

(assert (=> b!4355696 m!4969053))

(assert (=> b!4355696 m!4969055))

(declare-fun m!4969063 () Bool)

(assert (=> b!4355695 m!4969063))

(declare-fun m!4969065 () Bool)

(assert (=> b!4355695 m!4969065))

(assert (=> b!4355690 m!4967883))

(assert (=> b!4355690 m!4967883))

(assert (=> b!4355690 m!4969059))

(assert (=> d!1287430 m!4969063))

(declare-fun m!4969067 () Bool)

(assert (=> bm!302682 m!4969067))

(declare-fun m!4969069 () Bool)

(assert (=> b!4355697 m!4969069))

(assert (=> d!1287052 d!1287430))

(declare-fun b!4355705 () Bool)

(declare-fun e!2710595 () Option!10461)

(declare-fun e!2710596 () Option!10461)

(assert (=> b!4355705 (= e!2710595 e!2710596)))

(declare-fun c!740553 () Bool)

(assert (=> b!4355705 (= c!740553 (and ((_ is Cons!48919) lt!1567869) (not (= (_1!27449 (h!54466 lt!1567869)) (_1!27449 lt!1567541)))))))

(declare-fun b!4355706 () Bool)

(assert (=> b!4355706 (= e!2710596 (getValueByKey!447 (t!355963 lt!1567869) (_1!27449 lt!1567541)))))

(declare-fun d!1287434 () Bool)

(declare-fun c!740552 () Bool)

(assert (=> d!1287434 (= c!740552 (and ((_ is Cons!48919) lt!1567869) (= (_1!27449 (h!54466 lt!1567869)) (_1!27449 lt!1567541))))))

(assert (=> d!1287434 (= (getValueByKey!447 lt!1567869 (_1!27449 lt!1567541)) e!2710595)))

(declare-fun b!4355704 () Bool)

(assert (=> b!4355704 (= e!2710595 (Some!10460 (_2!27449 (h!54466 lt!1567869))))))

(declare-fun b!4355707 () Bool)

(assert (=> b!4355707 (= e!2710596 None!10460)))

(assert (= (and d!1287434 c!740552) b!4355704))

(assert (= (and d!1287434 (not c!740552)) b!4355705))

(assert (= (and b!4355705 c!740553) b!4355706))

(assert (= (and b!4355705 (not c!740553)) b!4355707))

(declare-fun m!4969071 () Bool)

(assert (=> b!4355706 m!4969071))

(assert (=> d!1287052 d!1287434))

(declare-fun d!1287436 () Bool)

(assert (=> d!1287436 (= (getValueByKey!447 lt!1567869 (_1!27449 lt!1567541)) (Some!10460 (_2!27449 lt!1567541)))))

(declare-fun lt!1568298 () Unit!71399)

(declare-fun choose!26885 (List!49043 K!10280 V!10526) Unit!71399)

(assert (=> d!1287436 (= lt!1568298 (choose!26885 lt!1567869 (_1!27449 lt!1567541) (_2!27449 lt!1567541)))))

(declare-fun e!2710599 () Bool)

(assert (=> d!1287436 e!2710599))

(declare-fun res!1790067 () Bool)

(assert (=> d!1287436 (=> (not res!1790067) (not e!2710599))))

(assert (=> d!1287436 (= res!1790067 (invariantList!674 lt!1567869))))

(assert (=> d!1287436 (= (lemmaContainsTupThenGetReturnValue!221 lt!1567869 (_1!27449 lt!1567541) (_2!27449 lt!1567541)) lt!1568298)))

(declare-fun b!4355712 () Bool)

(declare-fun res!1790068 () Bool)

(assert (=> b!4355712 (=> (not res!1790068) (not e!2710599))))

(assert (=> b!4355712 (= res!1790068 (containsKey!681 lt!1567869 (_1!27449 lt!1567541)))))

(declare-fun b!4355713 () Bool)

(assert (=> b!4355713 (= e!2710599 (contains!11121 lt!1567869 (tuple2!48311 (_1!27449 lt!1567541) (_2!27449 lt!1567541))))))

(assert (= (and d!1287436 res!1790067) b!4355712))

(assert (= (and b!4355712 res!1790068) b!4355713))

(assert (=> d!1287436 m!4967877))

(declare-fun m!4969073 () Bool)

(assert (=> d!1287436 m!4969073))

(declare-fun m!4969075 () Bool)

(assert (=> d!1287436 m!4969075))

(declare-fun m!4969077 () Bool)

(assert (=> b!4355712 m!4969077))

(declare-fun m!4969079 () Bool)

(assert (=> b!4355713 m!4969079))

(assert (=> d!1287052 d!1287436))

(declare-fun b!4355788 () Bool)

(declare-fun e!2710645 () List!49043)

(declare-fun e!2710644 () List!49043)

(assert (=> b!4355788 (= e!2710645 e!2710644)))

(declare-fun res!1790101 () Bool)

(assert (=> b!4355788 (= res!1790101 ((_ is Cons!48919) (toList!2954 lt!1567542)))))

(declare-fun e!2710649 () Bool)

(assert (=> b!4355788 (=> (not res!1790101) (not e!2710649))))

(declare-fun c!740577 () Bool)

(assert (=> b!4355788 (= c!740577 e!2710649)))

(declare-fun b!4355789 () Bool)

(declare-fun e!2710647 () List!49043)

(assert (=> b!4355789 (= e!2710647 Nil!48919)))

(declare-fun e!2710646 () Bool)

(declare-fun b!4355790 () Bool)

(declare-fun lt!1568333 () List!49043)

(assert (=> b!4355790 (= e!2710646 (= (content!7712 (getKeysList!122 lt!1568333)) ((_ map or) (content!7712 (getKeysList!122 (toList!2954 lt!1567542))) (store ((as const (Array K!10280 Bool)) false) (_1!27449 lt!1567541) true))))))

(declare-fun b!4355791 () Bool)

(declare-fun e!2710650 () Unit!71399)

(declare-fun Unit!71534 () Unit!71399)

(assert (=> b!4355791 (= e!2710650 Unit!71534)))

(declare-fun b!4355792 () Bool)

(declare-fun c!740576 () Bool)

(assert (=> b!4355792 (= c!740576 ((_ is Cons!48919) (toList!2954 lt!1567542)))))

(declare-fun e!2710648 () List!49043)

(assert (=> b!4355792 (= e!2710644 e!2710648)))

(declare-fun b!4355793 () Bool)

(declare-fun lt!1568338 () List!49043)

(assert (=> b!4355793 (= e!2710648 lt!1568338)))

(declare-fun call!302707 () List!49043)

(assert (=> b!4355793 (= lt!1568338 call!302707)))

(declare-fun c!740575 () Bool)

(assert (=> b!4355793 (= c!740575 (containsKey!681 (insertNoDuplicatedKeys!98 (t!355963 (toList!2954 lt!1567542)) (_1!27449 lt!1567541) (_2!27449 lt!1567541)) (_1!27449 (h!54466 (toList!2954 lt!1567542)))))))

(declare-fun lt!1568339 () Unit!71399)

(assert (=> b!4355793 (= lt!1568339 e!2710650)))

(declare-fun b!4355794 () Bool)

(declare-fun res!1790104 () Bool)

(assert (=> b!4355794 (=> (not res!1790104) (not e!2710646))))

(assert (=> b!4355794 (= res!1790104 (containsKey!681 lt!1568333 (_1!27449 lt!1567541)))))

(declare-fun c!740578 () Bool)

(declare-fun call!302708 () List!49043)

(declare-fun bm!302700 () Bool)

(declare-fun $colon$colon!690 (List!49043 tuple2!48310) List!49043)

(assert (=> bm!302700 (= call!302708 ($colon$colon!690 (ite c!740578 (t!355963 (toList!2954 lt!1567542)) (ite c!740577 (toList!2954 lt!1567542) e!2710647)) (ite (or c!740578 c!740577) (tuple2!48311 (_1!27449 lt!1567541) (_2!27449 lt!1567541)) (ite c!740576 (h!54466 (toList!2954 lt!1567542)) (tuple2!48311 (_1!27449 lt!1567541) (_2!27449 lt!1567541))))))))

(declare-fun b!4355795 () Bool)

(declare-fun res!1790102 () Bool)

(assert (=> b!4355795 (=> (not res!1790102) (not e!2710646))))

(assert (=> b!4355795 (= res!1790102 (contains!11121 lt!1568333 (tuple2!48311 (_1!27449 lt!1567541) (_2!27449 lt!1567541))))))

(declare-fun bm!302701 () Bool)

(declare-fun call!302705 () List!49046)

(declare-fun lt!1568337 () List!49043)

(assert (=> bm!302701 (= call!302705 (getKeysList!122 (ite c!740578 (toList!2954 lt!1567542) lt!1568337)))))

(declare-fun b!4355797 () Bool)

(assert (=> b!4355797 (= e!2710648 call!302707)))

(declare-fun bm!302702 () Bool)

(declare-fun call!302706 () List!49043)

(assert (=> bm!302702 (= call!302706 call!302708)))

(declare-fun b!4355798 () Bool)

(assert (=> b!4355798 (= e!2710644 call!302706)))

(declare-fun b!4355799 () Bool)

(assert (=> b!4355799 (= e!2710649 (not (containsKey!681 (toList!2954 lt!1567542) (_1!27449 lt!1567541))))))

(declare-fun b!4355796 () Bool)

(assert (=> b!4355796 (= e!2710645 call!302708)))

(declare-fun lt!1568336 () List!49046)

(assert (=> b!4355796 (= lt!1568336 call!302705)))

(declare-fun lt!1568343 () Unit!71399)

(declare-fun lemmaSubseqRefl!70 (List!49046) Unit!71399)

(assert (=> b!4355796 (= lt!1568343 (lemmaSubseqRefl!70 lt!1568336))))

(declare-fun subseq!586 (List!49046 List!49046) Bool)

(assert (=> b!4355796 (subseq!586 lt!1568336 lt!1568336)))

(declare-fun lt!1568334 () Unit!71399)

(assert (=> b!4355796 (= lt!1568334 lt!1568343)))

(declare-fun d!1287438 () Bool)

(assert (=> d!1287438 e!2710646))

(declare-fun res!1790103 () Bool)

(assert (=> d!1287438 (=> (not res!1790103) (not e!2710646))))

(assert (=> d!1287438 (= res!1790103 (invariantList!674 lt!1568333))))

(assert (=> d!1287438 (= lt!1568333 e!2710645)))

(assert (=> d!1287438 (= c!740578 (and ((_ is Cons!48919) (toList!2954 lt!1567542)) (= (_1!27449 (h!54466 (toList!2954 lt!1567542))) (_1!27449 lt!1567541))))))

(assert (=> d!1287438 (invariantList!674 (toList!2954 lt!1567542))))

(assert (=> d!1287438 (= (insertNoDuplicatedKeys!98 (toList!2954 lt!1567542) (_1!27449 lt!1567541) (_2!27449 lt!1567541)) lt!1568333)))

(declare-fun bm!302703 () Bool)

(assert (=> bm!302703 (= call!302707 call!302706)))

(declare-fun c!740579 () Bool)

(assert (=> bm!302703 (= c!740579 c!740576)))

(declare-fun b!4355800 () Bool)

(assert (=> b!4355800 false))

(declare-fun lt!1568342 () Unit!71399)

(declare-fun lt!1568340 () Unit!71399)

(assert (=> b!4355800 (= lt!1568342 lt!1568340)))

(assert (=> b!4355800 (containsKey!681 (t!355963 (toList!2954 lt!1567542)) (_1!27449 (h!54466 (toList!2954 lt!1567542))))))

(assert (=> b!4355800 (= lt!1568340 (lemmaInGetKeysListThenContainsKey!120 (t!355963 (toList!2954 lt!1567542)) (_1!27449 (h!54466 (toList!2954 lt!1567542)))))))

(declare-fun lt!1568341 () Unit!71399)

(declare-fun lt!1568335 () Unit!71399)

(assert (=> b!4355800 (= lt!1568341 lt!1568335)))

(assert (=> b!4355800 (contains!11120 call!302705 (_1!27449 (h!54466 (toList!2954 lt!1567542))))))

(assert (=> b!4355800 (= lt!1568335 (lemmaInListThenGetKeysListContains!119 lt!1568337 (_1!27449 (h!54466 (toList!2954 lt!1567542)))))))

(assert (=> b!4355800 (= lt!1568337 (insertNoDuplicatedKeys!98 (t!355963 (toList!2954 lt!1567542)) (_1!27449 lt!1567541) (_2!27449 lt!1567541)))))

(declare-fun Unit!71543 () Unit!71399)

(assert (=> b!4355800 (= e!2710650 Unit!71543)))

(declare-fun b!4355801 () Bool)

(assert (=> b!4355801 (= e!2710647 (insertNoDuplicatedKeys!98 (t!355963 (toList!2954 lt!1567542)) (_1!27449 lt!1567541) (_2!27449 lt!1567541)))))

(assert (= (and d!1287438 c!740578) b!4355796))

(assert (= (and d!1287438 (not c!740578)) b!4355788))

(assert (= (and b!4355788 res!1790101) b!4355799))

(assert (= (and b!4355788 c!740577) b!4355798))

(assert (= (and b!4355788 (not c!740577)) b!4355792))

(assert (= (and b!4355792 c!740576) b!4355793))

(assert (= (and b!4355792 (not c!740576)) b!4355797))

(assert (= (and b!4355793 c!740575) b!4355800))

(assert (= (and b!4355793 (not c!740575)) b!4355791))

(assert (= (or b!4355793 b!4355797) bm!302703))

(assert (= (and bm!302703 c!740579) b!4355801))

(assert (= (and bm!302703 (not c!740579)) b!4355789))

(assert (= (or b!4355798 bm!302703) bm!302702))

(assert (= (or b!4355796 b!4355800) bm!302701))

(assert (= (or b!4355796 bm!302702) bm!302700))

(assert (= (and d!1287438 res!1790103) b!4355794))

(assert (= (and b!4355794 res!1790104) b!4355795))

(assert (= (and b!4355795 res!1790102) b!4355790))

(declare-fun m!4969171 () Bool)

(assert (=> b!4355793 m!4969171))

(assert (=> b!4355793 m!4969171))

(declare-fun m!4969173 () Bool)

(assert (=> b!4355793 m!4969173))

(declare-fun m!4969175 () Bool)

(assert (=> b!4355796 m!4969175))

(declare-fun m!4969177 () Bool)

(assert (=> b!4355796 m!4969177))

(declare-fun m!4969179 () Bool)

(assert (=> b!4355799 m!4969179))

(declare-fun m!4969181 () Bool)

(assert (=> bm!302701 m!4969181))

(declare-fun m!4969183 () Bool)

(assert (=> bm!302700 m!4969183))

(declare-fun m!4969185 () Bool)

(assert (=> b!4355800 m!4969185))

(declare-fun m!4969187 () Bool)

(assert (=> b!4355800 m!4969187))

(declare-fun m!4969191 () Bool)

(assert (=> b!4355800 m!4969191))

(declare-fun m!4969195 () Bool)

(assert (=> b!4355800 m!4969195))

(assert (=> b!4355800 m!4969171))

(declare-fun m!4969197 () Bool)

(assert (=> b!4355794 m!4969197))

(declare-fun m!4969199 () Bool)

(assert (=> b!4355795 m!4969199))

(assert (=> b!4355801 m!4969171))

(declare-fun m!4969201 () Bool)

(assert (=> b!4355790 m!4969201))

(assert (=> b!4355790 m!4967967))

(assert (=> b!4355790 m!4969201))

(declare-fun m!4969203 () Bool)

(assert (=> b!4355790 m!4969203))

(assert (=> b!4355790 m!4967967))

(declare-fun m!4969205 () Bool)

(assert (=> b!4355790 m!4969205))

(declare-fun m!4969207 () Bool)

(assert (=> b!4355790 m!4969207))

(declare-fun m!4969209 () Bool)

(assert (=> d!1287438 m!4969209))

(assert (=> d!1287438 m!4968411))

(assert (=> d!1287052 d!1287438))

(declare-fun d!1287468 () Bool)

(declare-fun res!1790112 () Bool)

(declare-fun e!2710662 () Bool)

(assert (=> d!1287468 (=> res!1790112 e!2710662)))

(assert (=> d!1287468 (= res!1790112 ((_ is Nil!48920) (t!355964 (toList!2953 lm!1707))))))

(assert (=> d!1287468 (= (forall!9110 (t!355964 (toList!2953 lm!1707)) lambda!140085) e!2710662)))

(declare-fun b!4355823 () Bool)

(declare-fun e!2710663 () Bool)

(assert (=> b!4355823 (= e!2710662 e!2710663)))

(declare-fun res!1790113 () Bool)

(assert (=> b!4355823 (=> (not res!1790113) (not e!2710663))))

(assert (=> b!4355823 (= res!1790113 (dynLambda!20629 lambda!140085 (h!54467 (t!355964 (toList!2953 lm!1707)))))))

(declare-fun b!4355824 () Bool)

(assert (=> b!4355824 (= e!2710663 (forall!9110 (t!355964 (t!355964 (toList!2953 lm!1707))) lambda!140085))))

(assert (= (and d!1287468 (not res!1790112)) b!4355823))

(assert (= (and b!4355823 res!1790113) b!4355824))

(declare-fun b_lambda!131043 () Bool)

(assert (=> (not b_lambda!131043) (not b!4355823)))

(declare-fun m!4969211 () Bool)

(assert (=> b!4355823 m!4969211))

(declare-fun m!4969213 () Bool)

(assert (=> b!4355824 m!4969213))

(assert (=> b!4354934 d!1287468))

(declare-fun d!1287470 () Bool)

(declare-fun res!1790114 () Bool)

(declare-fun e!2710664 () Bool)

(assert (=> d!1287470 (=> res!1790114 e!2710664)))

(assert (=> d!1287470 (= res!1790114 (not ((_ is Cons!48919) (_2!27450 lt!1567546))))))

(assert (=> d!1287470 (= (noDuplicateKeys!485 (_2!27450 lt!1567546)) e!2710664)))

(declare-fun b!4355825 () Bool)

(declare-fun e!2710665 () Bool)

(assert (=> b!4355825 (= e!2710664 e!2710665)))

(declare-fun res!1790115 () Bool)

(assert (=> b!4355825 (=> (not res!1790115) (not e!2710665))))

(assert (=> b!4355825 (= res!1790115 (not (containsKey!678 (t!355963 (_2!27450 lt!1567546)) (_1!27449 (h!54466 (_2!27450 lt!1567546))))))))

(declare-fun b!4355826 () Bool)

(assert (=> b!4355826 (= e!2710665 (noDuplicateKeys!485 (t!355963 (_2!27450 lt!1567546))))))

(assert (= (and d!1287470 (not res!1790114)) b!4355825))

(assert (= (and b!4355825 res!1790115) b!4355826))

(declare-fun m!4969215 () Bool)

(assert (=> b!4355825 m!4969215))

(declare-fun m!4969217 () Bool)

(assert (=> b!4355826 m!4969217))

(assert (=> bs!630555 d!1287470))

(declare-fun b!4355830 () Bool)

(declare-fun e!2710667 () Option!10460)

(assert (=> b!4355830 (= e!2710667 None!10459)))

(declare-fun b!4355829 () Bool)

(assert (=> b!4355829 (= e!2710667 (getValueByKey!446 (t!355964 (toList!2953 lt!1567875)) (_1!27450 lt!1567548)))))

(declare-fun b!4355828 () Bool)

(declare-fun e!2710666 () Option!10460)

(assert (=> b!4355828 (= e!2710666 e!2710667)))

(declare-fun c!740588 () Bool)

(assert (=> b!4355828 (= c!740588 (and ((_ is Cons!48920) (toList!2953 lt!1567875)) (not (= (_1!27450 (h!54467 (toList!2953 lt!1567875))) (_1!27450 lt!1567548)))))))

(declare-fun b!4355827 () Bool)

(assert (=> b!4355827 (= e!2710666 (Some!10459 (_2!27450 (h!54467 (toList!2953 lt!1567875)))))))

(declare-fun d!1287472 () Bool)

(declare-fun c!740587 () Bool)

(assert (=> d!1287472 (= c!740587 (and ((_ is Cons!48920) (toList!2953 lt!1567875)) (= (_1!27450 (h!54467 (toList!2953 lt!1567875))) (_1!27450 lt!1567548))))))

(assert (=> d!1287472 (= (getValueByKey!446 (toList!2953 lt!1567875) (_1!27450 lt!1567548)) e!2710666)))

(assert (= (and d!1287472 c!740587) b!4355827))

(assert (= (and d!1287472 (not c!740587)) b!4355828))

(assert (= (and b!4355828 c!740588) b!4355829))

(assert (= (and b!4355828 (not c!740588)) b!4355830))

(declare-fun m!4969219 () Bool)

(assert (=> b!4355829 m!4969219))

(assert (=> b!4355055 d!1287472))

(assert (=> b!4354967 d!1287220))

(assert (=> b!4354967 d!1287222))

(declare-fun bs!630926 () Bool)

(declare-fun b!4355838 () Bool)

(assert (= bs!630926 (and b!4355838 b!4355523)))

(declare-fun lambda!140277 () Int)

(assert (=> bs!630926 (= (= (t!355963 (toList!2954 lt!1567542)) (toList!2954 lt!1567553)) (= lambda!140277 lambda!140245))))

(declare-fun bs!630927 () Bool)

(assert (= bs!630927 (and b!4355838 b!4355175)))

(assert (=> bs!630927 (= (= (t!355963 (toList!2954 lt!1567542)) (toList!2954 lt!1567547)) (= lambda!140277 lambda!140202))))

(declare-fun bs!630929 () Bool)

(assert (= bs!630929 (and b!4355838 b!4355176)))

(assert (=> bs!630929 (= (= (t!355963 (toList!2954 lt!1567542)) (Cons!48919 (h!54466 (toList!2954 lt!1567547)) (t!355963 (toList!2954 lt!1567547)))) (= lambda!140277 lambda!140201))))

(declare-fun bs!630931 () Bool)

(assert (= bs!630931 (and b!4355838 b!4355351)))

(assert (=> bs!630931 (= (= (t!355963 (toList!2954 lt!1567542)) (toList!2954 lt!1567542)) (= lambda!140277 lambda!140216))))

(declare-fun bs!630933 () Bool)

(assert (= bs!630933 (and b!4355838 b!4355181)))

(assert (=> bs!630933 (= (= (t!355963 (toList!2954 lt!1567542)) (t!355963 (toList!2954 lt!1567547))) (= lambda!140277 lambda!140200))))

(declare-fun bs!630935 () Bool)

(assert (= bs!630935 (and b!4355838 b!4355340)))

(assert (=> bs!630935 (= (= (t!355963 (toList!2954 lt!1567542)) (toList!2954 lt!1567547)) (= lambda!140277 lambda!140214))))

(assert (=> b!4355838 true))

(declare-fun bs!630941 () Bool)

(declare-fun b!4355833 () Bool)

(assert (= bs!630941 (and b!4355833 b!4355523)))

(declare-fun lambda!140279 () Int)

(assert (=> bs!630941 (= (= (Cons!48919 (h!54466 (toList!2954 lt!1567542)) (t!355963 (toList!2954 lt!1567542))) (toList!2954 lt!1567553)) (= lambda!140279 lambda!140245))))

(declare-fun bs!630943 () Bool)

(assert (= bs!630943 (and b!4355833 b!4355175)))

(assert (=> bs!630943 (= (= (Cons!48919 (h!54466 (toList!2954 lt!1567542)) (t!355963 (toList!2954 lt!1567542))) (toList!2954 lt!1567547)) (= lambda!140279 lambda!140202))))

(declare-fun bs!630944 () Bool)

(assert (= bs!630944 (and b!4355833 b!4355176)))

(assert (=> bs!630944 (= (= (Cons!48919 (h!54466 (toList!2954 lt!1567542)) (t!355963 (toList!2954 lt!1567542))) (Cons!48919 (h!54466 (toList!2954 lt!1567547)) (t!355963 (toList!2954 lt!1567547)))) (= lambda!140279 lambda!140201))))

(declare-fun bs!630945 () Bool)

(assert (= bs!630945 (and b!4355833 b!4355838)))

(assert (=> bs!630945 (= (= (Cons!48919 (h!54466 (toList!2954 lt!1567542)) (t!355963 (toList!2954 lt!1567542))) (t!355963 (toList!2954 lt!1567542))) (= lambda!140279 lambda!140277))))

(declare-fun bs!630947 () Bool)

(assert (= bs!630947 (and b!4355833 b!4355351)))

(assert (=> bs!630947 (= (= (Cons!48919 (h!54466 (toList!2954 lt!1567542)) (t!355963 (toList!2954 lt!1567542))) (toList!2954 lt!1567542)) (= lambda!140279 lambda!140216))))

(declare-fun bs!630949 () Bool)

(assert (= bs!630949 (and b!4355833 b!4355181)))

(assert (=> bs!630949 (= (= (Cons!48919 (h!54466 (toList!2954 lt!1567542)) (t!355963 (toList!2954 lt!1567542))) (t!355963 (toList!2954 lt!1567547))) (= lambda!140279 lambda!140200))))

(declare-fun bs!630951 () Bool)

(assert (= bs!630951 (and b!4355833 b!4355340)))

(assert (=> bs!630951 (= (= (Cons!48919 (h!54466 (toList!2954 lt!1567542)) (t!355963 (toList!2954 lt!1567542))) (toList!2954 lt!1567547)) (= lambda!140279 lambda!140214))))

(assert (=> b!4355833 true))

(declare-fun bs!630953 () Bool)

(declare-fun b!4355832 () Bool)

(assert (= bs!630953 (and b!4355832 b!4355523)))

(declare-fun lambda!140281 () Int)

(assert (=> bs!630953 (= (= (toList!2954 lt!1567542) (toList!2954 lt!1567553)) (= lambda!140281 lambda!140245))))

(declare-fun bs!630954 () Bool)

(assert (= bs!630954 (and b!4355832 b!4355175)))

(assert (=> bs!630954 (= (= (toList!2954 lt!1567542) (toList!2954 lt!1567547)) (= lambda!140281 lambda!140202))))

(declare-fun bs!630955 () Bool)

(assert (= bs!630955 (and b!4355832 b!4355176)))

(assert (=> bs!630955 (= (= (toList!2954 lt!1567542) (Cons!48919 (h!54466 (toList!2954 lt!1567547)) (t!355963 (toList!2954 lt!1567547)))) (= lambda!140281 lambda!140201))))

(declare-fun bs!630956 () Bool)

(assert (= bs!630956 (and b!4355832 b!4355838)))

(assert (=> bs!630956 (= (= (toList!2954 lt!1567542) (t!355963 (toList!2954 lt!1567542))) (= lambda!140281 lambda!140277))))

(declare-fun bs!630957 () Bool)

(assert (= bs!630957 (and b!4355832 b!4355351)))

(assert (=> bs!630957 (= lambda!140281 lambda!140216)))

(declare-fun bs!630958 () Bool)

(assert (= bs!630958 (and b!4355832 b!4355340)))

(assert (=> bs!630958 (= (= (toList!2954 lt!1567542) (toList!2954 lt!1567547)) (= lambda!140281 lambda!140214))))

(declare-fun bs!630959 () Bool)

(assert (= bs!630959 (and b!4355832 b!4355181)))

(assert (=> bs!630959 (= (= (toList!2954 lt!1567542) (t!355963 (toList!2954 lt!1567547))) (= lambda!140281 lambda!140200))))

(declare-fun bs!630960 () Bool)

(assert (= bs!630960 (and b!4355832 b!4355833)))

(assert (=> bs!630960 (= (= (toList!2954 lt!1567542) (Cons!48919 (h!54466 (toList!2954 lt!1567542)) (t!355963 (toList!2954 lt!1567542)))) (= lambda!140281 lambda!140279))))

(assert (=> b!4355832 true))

(declare-fun bs!630961 () Bool)

(declare-fun b!4355834 () Bool)

(assert (= bs!630961 (and b!4355834 b!4355177)))

(declare-fun lambda!140282 () Int)

(assert (=> bs!630961 (= lambda!140282 lambda!140203)))

(declare-fun bs!630962 () Bool)

(assert (= bs!630962 (and b!4355834 b!4355341)))

(assert (=> bs!630962 (= lambda!140282 lambda!140215)))

(declare-fun bs!630963 () Bool)

(assert (= bs!630963 (and b!4355834 b!4355352)))

(assert (=> bs!630963 (= lambda!140282 lambda!140217)))

(declare-fun bs!630964 () Bool)

(assert (= bs!630964 (and b!4355834 b!4355524)))

(assert (=> bs!630964 (= lambda!140282 lambda!140246)))

(declare-fun b!4355831 () Bool)

(declare-fun e!2710670 () Unit!71399)

(declare-fun Unit!71544 () Unit!71399)

(assert (=> b!4355831 (= e!2710670 Unit!71544)))

(declare-fun res!1790116 () Bool)

(declare-fun e!2710668 () Bool)

(assert (=> b!4355832 (=> (not res!1790116) (not e!2710668))))

(declare-fun lt!1568356 () List!49046)

(assert (=> b!4355832 (= res!1790116 (forall!9113 lt!1568356 lambda!140281))))

(declare-fun e!2710671 () List!49046)

(assert (=> b!4355833 (= e!2710671 (Cons!48922 (_1!27449 (h!54466 (toList!2954 lt!1567542))) (getKeysList!122 (t!355963 (toList!2954 lt!1567542)))))))

(declare-fun c!740590 () Bool)

(assert (=> b!4355833 (= c!740590 (containsKey!681 (t!355963 (toList!2954 lt!1567542)) (_1!27449 (h!54466 (toList!2954 lt!1567542)))))))

(declare-fun lt!1568352 () Unit!71399)

(declare-fun e!2710669 () Unit!71399)

(assert (=> b!4355833 (= lt!1568352 e!2710669)))

(declare-fun c!740589 () Bool)

(assert (=> b!4355833 (= c!740589 (contains!11120 (getKeysList!122 (t!355963 (toList!2954 lt!1567542))) (_1!27449 (h!54466 (toList!2954 lt!1567542)))))))

(declare-fun lt!1568358 () Unit!71399)

(assert (=> b!4355833 (= lt!1568358 e!2710670)))

(declare-fun lt!1568357 () List!49046)

(assert (=> b!4355833 (= lt!1568357 (getKeysList!122 (t!355963 (toList!2954 lt!1567542))))))

(declare-fun lt!1568353 () Unit!71399)

(assert (=> b!4355833 (= lt!1568353 (lemmaForallContainsAddHeadPreserves!23 (t!355963 (toList!2954 lt!1567542)) lt!1568357 (h!54466 (toList!2954 lt!1567542))))))

(assert (=> b!4355833 (forall!9113 lt!1568357 lambda!140279)))

(declare-fun lt!1568355 () Unit!71399)

(assert (=> b!4355833 (= lt!1568355 lt!1568353)))

(assert (=> b!4355834 (= e!2710668 (= (content!7712 lt!1568356) (content!7712 (map!10640 (toList!2954 lt!1567542) lambda!140282))))))

(declare-fun b!4355835 () Bool)

(declare-fun res!1790117 () Bool)

(assert (=> b!4355835 (=> (not res!1790117) (not e!2710668))))

(assert (=> b!4355835 (= res!1790117 (= (length!58 lt!1568356) (length!59 (toList!2954 lt!1567542))))))

(declare-fun d!1287474 () Bool)

(assert (=> d!1287474 e!2710668))

(declare-fun res!1790118 () Bool)

(assert (=> d!1287474 (=> (not res!1790118) (not e!2710668))))

(assert (=> d!1287474 (= res!1790118 (noDuplicate!601 lt!1568356))))

(assert (=> d!1287474 (= lt!1568356 e!2710671)))

(declare-fun c!740591 () Bool)

(assert (=> d!1287474 (= c!740591 ((_ is Cons!48919) (toList!2954 lt!1567542)))))

(assert (=> d!1287474 (invariantList!674 (toList!2954 lt!1567542))))

(assert (=> d!1287474 (= (getKeysList!122 (toList!2954 lt!1567542)) lt!1568356)))

(declare-fun b!4355836 () Bool)

(assert (=> b!4355836 false))

(declare-fun Unit!71546 () Unit!71399)

(assert (=> b!4355836 (= e!2710669 Unit!71546)))

(declare-fun b!4355837 () Bool)

(declare-fun Unit!71547 () Unit!71399)

(assert (=> b!4355837 (= e!2710669 Unit!71547)))

(assert (=> b!4355838 false))

(declare-fun lt!1568354 () Unit!71399)

(assert (=> b!4355838 (= lt!1568354 (forallContained!1754 (getKeysList!122 (t!355963 (toList!2954 lt!1567542))) lambda!140277 (_1!27449 (h!54466 (toList!2954 lt!1567542)))))))

(declare-fun Unit!71548 () Unit!71399)

(assert (=> b!4355838 (= e!2710670 Unit!71548)))

(declare-fun b!4355839 () Bool)

(assert (=> b!4355839 (= e!2710671 Nil!48922)))

(assert (= (and d!1287474 c!740591) b!4355833))

(assert (= (and d!1287474 (not c!740591)) b!4355839))

(assert (= (and b!4355833 c!740590) b!4355836))

(assert (= (and b!4355833 (not c!740590)) b!4355837))

(assert (= (and b!4355833 c!740589) b!4355838))

(assert (= (and b!4355833 (not c!740589)) b!4355831))

(assert (= (and d!1287474 res!1790118) b!4355835))

(assert (= (and b!4355835 res!1790117) b!4355832))

(assert (= (and b!4355832 res!1790116) b!4355834))

(declare-fun m!4969245 () Bool)

(assert (=> b!4355833 m!4969245))

(assert (=> b!4355833 m!4969187))

(assert (=> b!4355833 m!4969245))

(declare-fun m!4969247 () Bool)

(assert (=> b!4355833 m!4969247))

(declare-fun m!4969249 () Bool)

(assert (=> b!4355833 m!4969249))

(declare-fun m!4969251 () Bool)

(assert (=> b!4355833 m!4969251))

(declare-fun m!4969253 () Bool)

(assert (=> b!4355832 m!4969253))

(declare-fun m!4969255 () Bool)

(assert (=> b!4355835 m!4969255))

(assert (=> b!4355835 m!4968307))

(declare-fun m!4969257 () Bool)

(assert (=> b!4355834 m!4969257))

(declare-fun m!4969259 () Bool)

(assert (=> b!4355834 m!4969259))

(assert (=> b!4355834 m!4969259))

(declare-fun m!4969261 () Bool)

(assert (=> b!4355834 m!4969261))

(assert (=> b!4355838 m!4969245))

(assert (=> b!4355838 m!4969245))

(declare-fun m!4969263 () Bool)

(assert (=> b!4355838 m!4969263))

(declare-fun m!4969265 () Bool)

(assert (=> d!1287474 m!4969265))

(assert (=> d!1287474 m!4968411))

(assert (=> b!4355073 d!1287474))

(declare-fun d!1287478 () Bool)

(declare-fun res!1790122 () Bool)

(declare-fun e!2710675 () Bool)

(assert (=> d!1287478 (=> res!1790122 e!2710675)))

(assert (=> d!1287478 (= res!1790122 (not ((_ is Cons!48919) (t!355963 newBucket!200))))))

(assert (=> d!1287478 (= (noDuplicateKeys!485 (t!355963 newBucket!200)) e!2710675)))

(declare-fun b!4355845 () Bool)

(declare-fun e!2710676 () Bool)

(assert (=> b!4355845 (= e!2710675 e!2710676)))

(declare-fun res!1790123 () Bool)

(assert (=> b!4355845 (=> (not res!1790123) (not e!2710676))))

(assert (=> b!4355845 (= res!1790123 (not (containsKey!678 (t!355963 (t!355963 newBucket!200)) (_1!27449 (h!54466 (t!355963 newBucket!200))))))))

(declare-fun b!4355846 () Bool)

(assert (=> b!4355846 (= e!2710676 (noDuplicateKeys!485 (t!355963 (t!355963 newBucket!200))))))

(assert (= (and d!1287478 (not res!1790122)) b!4355845))

(assert (= (and b!4355845 res!1790123) b!4355846))

(declare-fun m!4969267 () Bool)

(assert (=> b!4355845 m!4969267))

(declare-fun m!4969269 () Bool)

(assert (=> b!4355846 m!4969269))

(assert (=> b!4355086 d!1287478))

(declare-fun d!1287480 () Bool)

(declare-fun res!1790128 () Bool)

(declare-fun e!2710681 () Bool)

(assert (=> d!1287480 (=> res!1790128 e!2710681)))

(assert (=> d!1287480 (= res!1790128 (or ((_ is Nil!48920) (toList!2953 lm!1707)) ((_ is Nil!48920) (t!355964 (toList!2953 lm!1707)))))))

(assert (=> d!1287480 (= (isStrictlySorted!100 (toList!2953 lm!1707)) e!2710681)))

(declare-fun b!4355851 () Bool)

(declare-fun e!2710682 () Bool)

(assert (=> b!4355851 (= e!2710681 e!2710682)))

(declare-fun res!1790129 () Bool)

(assert (=> b!4355851 (=> (not res!1790129) (not e!2710682))))

(assert (=> b!4355851 (= res!1790129 (bvslt (_1!27450 (h!54467 (toList!2953 lm!1707))) (_1!27450 (h!54467 (t!355964 (toList!2953 lm!1707))))))))

(declare-fun b!4355852 () Bool)

(assert (=> b!4355852 (= e!2710682 (isStrictlySorted!100 (t!355964 (toList!2953 lm!1707))))))

(assert (= (and d!1287480 (not res!1790128)) b!4355851))

(assert (= (and b!4355851 res!1790129) b!4355852))

(declare-fun m!4969271 () Bool)

(assert (=> b!4355852 m!4969271))

(assert (=> d!1287080 d!1287480))

(assert (=> b!4355066 d!1287268))

(assert (=> b!4355066 d!1287270))

(assert (=> d!1287068 d!1287422))

(declare-fun lt!1568380 () Bool)

(declare-fun d!1287482 () Bool)

(assert (=> d!1287482 (= lt!1568380 (select (content!7710 (toList!2953 lm!1707)) (tuple2!48313 hash!377 lt!1567551)))))

(declare-fun e!2710683 () Bool)

(assert (=> d!1287482 (= lt!1568380 e!2710683)))

(declare-fun res!1790131 () Bool)

(assert (=> d!1287482 (=> (not res!1790131) (not e!2710683))))

(assert (=> d!1287482 (= res!1790131 ((_ is Cons!48920) (toList!2953 lm!1707)))))

(assert (=> d!1287482 (= (contains!11117 (toList!2953 lm!1707) (tuple2!48313 hash!377 lt!1567551)) lt!1568380)))

(declare-fun b!4355853 () Bool)

(declare-fun e!2710684 () Bool)

(assert (=> b!4355853 (= e!2710683 e!2710684)))

(declare-fun res!1790130 () Bool)

(assert (=> b!4355853 (=> res!1790130 e!2710684)))

(assert (=> b!4355853 (= res!1790130 (= (h!54467 (toList!2953 lm!1707)) (tuple2!48313 hash!377 lt!1567551)))))

(declare-fun b!4355854 () Bool)

(assert (=> b!4355854 (= e!2710684 (contains!11117 (t!355964 (toList!2953 lm!1707)) (tuple2!48313 hash!377 lt!1567551)))))

(assert (= (and d!1287482 res!1790131) b!4355853))

(assert (= (and b!4355853 (not res!1790130)) b!4355854))

(assert (=> d!1287482 m!4967507))

(declare-fun m!4969273 () Bool)

(assert (=> d!1287482 m!4969273))

(declare-fun m!4969275 () Bool)

(assert (=> b!4355854 m!4969275))

(assert (=> d!1286954 d!1287482))

(declare-fun d!1287484 () Bool)

(assert (=> d!1287484 (contains!11117 (toList!2953 lm!1707) (tuple2!48313 hash!377 lt!1567551))))

(assert (=> d!1287484 true))

(declare-fun _$14!756 () Unit!71399)

(assert (=> d!1287484 (= (choose!26865 (toList!2953 lm!1707) hash!377 lt!1567551) _$14!756)))

(declare-fun bs!631000 () Bool)

(assert (= bs!631000 d!1287484))

(assert (=> bs!631000 m!4967537))

(assert (=> d!1286954 d!1287484))

(assert (=> d!1286954 d!1287480))

(declare-fun d!1287486 () Bool)

(assert (=> d!1287486 (dynLambda!20629 lambda!140085 lt!1567546)))

(assert (=> d!1287486 true))

(declare-fun _$7!1471 () Unit!71399)

(assert (=> d!1287486 (= (choose!26864 (toList!2953 lm!1707) lambda!140085 lt!1567546) _$7!1471)))

(declare-fun b_lambda!131045 () Bool)

(assert (=> (not b_lambda!131045) (not d!1287486)))

(declare-fun bs!631001 () Bool)

(assert (= bs!631001 d!1287486))

(assert (=> bs!631001 m!4967513))

(assert (=> d!1286952 d!1287486))

(assert (=> d!1286952 d!1287010))

(declare-fun bs!631004 () Bool)

(declare-fun b!4355858 () Bool)

(assert (= bs!631004 (and b!4355858 d!1287036)))

(declare-fun lambda!140287 () Int)

(assert (=> bs!631004 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1567853) (= lambda!140287 lambda!140173))))

(declare-fun bs!631006 () Bool)

(assert (= bs!631006 (and b!4355858 d!1287284)))

(assert (=> bs!631006 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1568101) (= lambda!140287 lambda!140239))))

(declare-fun bs!631008 () Bool)

(assert (= bs!631008 (and b!4355858 b!4355039)))

(assert (=> bs!631008 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1567836) (= lambda!140287 lambda!140172))))

(declare-fun bs!631010 () Bool)

(assert (= bs!631010 (and b!4355858 b!4355494)))

(assert (=> bs!631010 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140287 lambda!140235))))

(declare-fun bs!631012 () Bool)

(assert (= bs!631012 (and b!4355858 d!1287034)))

(assert (=> bs!631012 (not (= lambda!140287 lambda!140109))))

(assert (=> bs!631008 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1567542) (= lambda!140287 lambda!140171))))

(assert (=> bs!631010 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1568084) (= lambda!140287 lambda!140236))))

(declare-fun bs!631015 () Bool)

(assert (= bs!631015 (and b!4355858 d!1287378)))

(assert (=> bs!631015 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1568222) (= lambda!140287 lambda!140260))))

(declare-fun bs!631017 () Bool)

(assert (= bs!631017 (and b!4355858 d!1287402)))

(assert (=> bs!631017 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1567836) (= lambda!140287 lambda!140265))))

(declare-fun bs!631019 () Bool)

(assert (= bs!631019 (and b!4355858 b!4355621)))

(assert (=> bs!631019 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140287 lambda!140257))))

(assert (=> bs!631019 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1568205) (= lambda!140287 lambda!140258))))

(declare-fun bs!631022 () Bool)

(assert (= bs!631022 (and b!4355858 b!4355192)))

(assert (=> bs!631022 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140287 lambda!140204))))

(declare-fun bs!631024 () Bool)

(assert (= bs!631024 (and b!4355858 b!4355496)))

(assert (=> bs!631024 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140287 lambda!140234))))

(declare-fun bs!631026 () Bool)

(assert (= bs!631026 (and b!4355858 b!4355041)))

(assert (=> bs!631026 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1567542) (= lambda!140287 lambda!140170))))

(declare-fun bs!631028 () Bool)

(assert (= bs!631028 (and b!4355858 b!4355190)))

(assert (=> bs!631028 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1567931) (= lambda!140287 lambda!140206))))

(declare-fun bs!631029 () Bool)

(assert (= bs!631029 (and b!4355858 d!1287128)))

(assert (=> bs!631029 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1567948) (= lambda!140287 lambda!140207))))

(declare-fun bs!631030 () Bool)

(assert (= bs!631030 (and b!4355858 b!4355623)))

(assert (=> bs!631030 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140287 lambda!140255))))

(assert (=> bs!631028 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140287 lambda!140205))))

(assert (=> b!4355858 true))

(declare-fun bs!631035 () Bool)

(declare-fun b!4355856 () Bool)

(assert (= bs!631035 (and b!4355856 d!1287036)))

(declare-fun lambda!140288 () Int)

(assert (=> bs!631035 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1567853) (= lambda!140288 lambda!140173))))

(declare-fun bs!631036 () Bool)

(assert (= bs!631036 (and b!4355856 d!1287284)))

(assert (=> bs!631036 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1568101) (= lambda!140288 lambda!140239))))

(declare-fun bs!631037 () Bool)

(assert (= bs!631037 (and b!4355856 b!4355039)))

(assert (=> bs!631037 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1567836) (= lambda!140288 lambda!140172))))

(declare-fun bs!631038 () Bool)

(assert (= bs!631038 (and b!4355856 b!4355494)))

(assert (=> bs!631038 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140288 lambda!140235))))

(declare-fun bs!631039 () Bool)

(assert (= bs!631039 (and b!4355856 d!1287034)))

(assert (=> bs!631039 (not (= lambda!140288 lambda!140109))))

(declare-fun bs!631040 () Bool)

(assert (= bs!631040 (and b!4355856 b!4355858)))

(assert (=> bs!631040 (= lambda!140288 lambda!140287)))

(assert (=> bs!631037 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1567542) (= lambda!140288 lambda!140171))))

(assert (=> bs!631038 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1568084) (= lambda!140288 lambda!140236))))

(declare-fun bs!631041 () Bool)

(assert (= bs!631041 (and b!4355856 d!1287378)))

(assert (=> bs!631041 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1568222) (= lambda!140288 lambda!140260))))

(declare-fun bs!631042 () Bool)

(assert (= bs!631042 (and b!4355856 d!1287402)))

(assert (=> bs!631042 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1567836) (= lambda!140288 lambda!140265))))

(declare-fun bs!631043 () Bool)

(assert (= bs!631043 (and b!4355856 b!4355621)))

(assert (=> bs!631043 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140288 lambda!140257))))

(assert (=> bs!631043 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1568205) (= lambda!140288 lambda!140258))))

(declare-fun bs!631044 () Bool)

(assert (= bs!631044 (and b!4355856 b!4355192)))

(assert (=> bs!631044 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140288 lambda!140204))))

(declare-fun bs!631045 () Bool)

(assert (= bs!631045 (and b!4355856 b!4355496)))

(assert (=> bs!631045 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140288 lambda!140234))))

(declare-fun bs!631046 () Bool)

(assert (= bs!631046 (and b!4355856 b!4355041)))

(assert (=> bs!631046 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1567542) (= lambda!140288 lambda!140170))))

(declare-fun bs!631047 () Bool)

(assert (= bs!631047 (and b!4355856 b!4355190)))

(assert (=> bs!631047 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1567931) (= lambda!140288 lambda!140206))))

(declare-fun bs!631048 () Bool)

(assert (= bs!631048 (and b!4355856 d!1287128)))

(assert (=> bs!631048 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1567948) (= lambda!140288 lambda!140207))))

(declare-fun bs!631049 () Bool)

(assert (= bs!631049 (and b!4355856 b!4355623)))

(assert (=> bs!631049 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140288 lambda!140255))))

(assert (=> bs!631047 (= (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140288 lambda!140205))))

(assert (=> b!4355856 true))

(declare-fun lambda!140289 () Int)

(declare-fun lt!1568381 () ListMap!2197)

(assert (=> bs!631035 (= (= lt!1568381 lt!1567853) (= lambda!140289 lambda!140173))))

(assert (=> bs!631036 (= (= lt!1568381 lt!1568101) (= lambda!140289 lambda!140239))))

(assert (=> bs!631037 (= (= lt!1568381 lt!1567836) (= lambda!140289 lambda!140172))))

(assert (=> bs!631038 (= (= lt!1568381 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140289 lambda!140235))))

(assert (=> bs!631039 (not (= lambda!140289 lambda!140109))))

(assert (=> bs!631040 (= (= lt!1568381 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) (= lambda!140289 lambda!140287))))

(assert (=> bs!631037 (= (= lt!1568381 lt!1567542) (= lambda!140289 lambda!140171))))

(assert (=> bs!631041 (= (= lt!1568381 lt!1568222) (= lambda!140289 lambda!140260))))

(assert (=> bs!631042 (= (= lt!1568381 lt!1567836) (= lambda!140289 lambda!140265))))

(assert (=> bs!631043 (= (= lt!1568381 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140289 lambda!140257))))

(assert (=> bs!631043 (= (= lt!1568381 lt!1568205) (= lambda!140289 lambda!140258))))

(assert (=> bs!631044 (= (= lt!1568381 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140289 lambda!140204))))

(assert (=> bs!631045 (= (= lt!1568381 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140289 lambda!140234))))

(assert (=> bs!631046 (= (= lt!1568381 lt!1567542) (= lambda!140289 lambda!140170))))

(assert (=> bs!631047 (= (= lt!1568381 lt!1567931) (= lambda!140289 lambda!140206))))

(assert (=> bs!631048 (= (= lt!1568381 lt!1567948) (= lambda!140289 lambda!140207))))

(assert (=> bs!631049 (= (= lt!1568381 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140289 lambda!140255))))

(assert (=> bs!631047 (= (= lt!1568381 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140289 lambda!140205))))

(assert (=> bs!631038 (= (= lt!1568381 lt!1568084) (= lambda!140289 lambda!140236))))

(assert (=> b!4355856 (= (= lt!1568381 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) (= lambda!140289 lambda!140288))))

(assert (=> b!4355856 true))

(declare-fun bs!631061 () Bool)

(declare-fun d!1287488 () Bool)

(assert (= bs!631061 (and d!1287488 d!1287036)))

(declare-fun lambda!140291 () Int)

(declare-fun lt!1568398 () ListMap!2197)

(assert (=> bs!631061 (= (= lt!1568398 lt!1567853) (= lambda!140291 lambda!140173))))

(declare-fun bs!631062 () Bool)

(assert (= bs!631062 (and d!1287488 d!1287284)))

(assert (=> bs!631062 (= (= lt!1568398 lt!1568101) (= lambda!140291 lambda!140239))))

(declare-fun bs!631063 () Bool)

(assert (= bs!631063 (and d!1287488 b!4355039)))

(assert (=> bs!631063 (= (= lt!1568398 lt!1567836) (= lambda!140291 lambda!140172))))

(declare-fun bs!631064 () Bool)

(assert (= bs!631064 (and d!1287488 b!4355494)))

(assert (=> bs!631064 (= (= lt!1568398 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140291 lambda!140235))))

(declare-fun bs!631065 () Bool)

(assert (= bs!631065 (and d!1287488 b!4355858)))

(assert (=> bs!631065 (= (= lt!1568398 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) (= lambda!140291 lambda!140287))))

(assert (=> bs!631063 (= (= lt!1568398 lt!1567542) (= lambda!140291 lambda!140171))))

(declare-fun bs!631066 () Bool)

(assert (= bs!631066 (and d!1287488 d!1287378)))

(assert (=> bs!631066 (= (= lt!1568398 lt!1568222) (= lambda!140291 lambda!140260))))

(declare-fun bs!631067 () Bool)

(assert (= bs!631067 (and d!1287488 d!1287402)))

(assert (=> bs!631067 (= (= lt!1568398 lt!1567836) (= lambda!140291 lambda!140265))))

(declare-fun bs!631068 () Bool)

(assert (= bs!631068 (and d!1287488 b!4355621)))

(assert (=> bs!631068 (= (= lt!1568398 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140291 lambda!140257))))

(assert (=> bs!631068 (= (= lt!1568398 lt!1568205) (= lambda!140291 lambda!140258))))

(declare-fun bs!631069 () Bool)

(assert (= bs!631069 (and d!1287488 b!4355192)))

(assert (=> bs!631069 (= (= lt!1568398 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140291 lambda!140204))))

(declare-fun bs!631070 () Bool)

(assert (= bs!631070 (and d!1287488 b!4355496)))

(assert (=> bs!631070 (= (= lt!1568398 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140291 lambda!140234))))

(declare-fun bs!631071 () Bool)

(assert (= bs!631071 (and d!1287488 b!4355041)))

(assert (=> bs!631071 (= (= lt!1568398 lt!1567542) (= lambda!140291 lambda!140170))))

(declare-fun bs!631072 () Bool)

(assert (= bs!631072 (and d!1287488 d!1287034)))

(assert (=> bs!631072 (not (= lambda!140291 lambda!140109))))

(declare-fun bs!631073 () Bool)

(assert (= bs!631073 (and d!1287488 b!4355856)))

(assert (=> bs!631073 (= (= lt!1568398 lt!1568381) (= lambda!140291 lambda!140289))))

(declare-fun bs!631074 () Bool)

(assert (= bs!631074 (and d!1287488 b!4355190)))

(assert (=> bs!631074 (= (= lt!1568398 lt!1567931) (= lambda!140291 lambda!140206))))

(declare-fun bs!631075 () Bool)

(assert (= bs!631075 (and d!1287488 d!1287128)))

(assert (=> bs!631075 (= (= lt!1568398 lt!1567948) (= lambda!140291 lambda!140207))))

(declare-fun bs!631077 () Bool)

(assert (= bs!631077 (and d!1287488 b!4355623)))

(assert (=> bs!631077 (= (= lt!1568398 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140291 lambda!140255))))

(assert (=> bs!631074 (= (= lt!1568398 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140291 lambda!140205))))

(assert (=> bs!631064 (= (= lt!1568398 lt!1568084) (= lambda!140291 lambda!140236))))

(assert (=> bs!631073 (= (= lt!1568398 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) (= lambda!140291 lambda!140288))))

(assert (=> d!1287488 true))

(declare-fun b!4355855 () Bool)

(declare-fun res!1790132 () Bool)

(declare-fun e!2710687 () Bool)

(assert (=> b!4355855 (=> (not res!1790132) (not e!2710687))))

(assert (=> b!4355855 (= res!1790132 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) lambda!140291))))

(declare-fun e!2710686 () ListMap!2197)

(assert (=> b!4355856 (= e!2710686 lt!1568381)))

(declare-fun lt!1568390 () ListMap!2197)

(assert (=> b!4355856 (= lt!1568390 (+!628 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) (h!54466 (_2!27450 (h!54467 (t!355964 (toList!2953 lm!1707)))))))))

(assert (=> b!4355856 (= lt!1568381 (addToMapMapFromBucket!181 (t!355963 (_2!27450 (h!54467 (t!355964 (toList!2953 lm!1707))))) (+!628 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) (h!54466 (_2!27450 (h!54467 (t!355964 (toList!2953 lm!1707))))))))))

(declare-fun lt!1568382 () Unit!71399)

(declare-fun call!302716 () Unit!71399)

(assert (=> b!4355856 (= lt!1568382 call!302716)))

(assert (=> b!4355856 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) lambda!140288)))

(declare-fun lt!1568394 () Unit!71399)

(assert (=> b!4355856 (= lt!1568394 lt!1568382)))

(assert (=> b!4355856 (forall!9112 (toList!2954 lt!1568390) lambda!140289)))

(declare-fun lt!1568393 () Unit!71399)

(declare-fun Unit!71553 () Unit!71399)

(assert (=> b!4355856 (= lt!1568393 Unit!71553)))

(declare-fun call!302715 () Bool)

(assert (=> b!4355856 call!302715))

(declare-fun lt!1568385 () Unit!71399)

(declare-fun Unit!71554 () Unit!71399)

(assert (=> b!4355856 (= lt!1568385 Unit!71554)))

(declare-fun lt!1568401 () Unit!71399)

(declare-fun Unit!71555 () Unit!71399)

(assert (=> b!4355856 (= lt!1568401 Unit!71555)))

(declare-fun lt!1568399 () Unit!71399)

(assert (=> b!4355856 (= lt!1568399 (forallContained!1753 (toList!2954 lt!1568390) lambda!140289 (h!54466 (_2!27450 (h!54467 (t!355964 (toList!2953 lm!1707)))))))))

(assert (=> b!4355856 (contains!11115 lt!1568390 (_1!27449 (h!54466 (_2!27450 (h!54467 (t!355964 (toList!2953 lm!1707)))))))))

(declare-fun lt!1568395 () Unit!71399)

(declare-fun Unit!71556 () Unit!71399)

(assert (=> b!4355856 (= lt!1568395 Unit!71556)))

(assert (=> b!4355856 (contains!11115 lt!1568381 (_1!27449 (h!54466 (_2!27450 (h!54467 (t!355964 (toList!2953 lm!1707)))))))))

(declare-fun lt!1568400 () Unit!71399)

(declare-fun Unit!71557 () Unit!71399)

(assert (=> b!4355856 (= lt!1568400 Unit!71557)))

(assert (=> b!4355856 (forall!9112 (_2!27450 (h!54467 (t!355964 (toList!2953 lm!1707)))) lambda!140289)))

(declare-fun lt!1568386 () Unit!71399)

(declare-fun Unit!71558 () Unit!71399)

(assert (=> b!4355856 (= lt!1568386 Unit!71558)))

(assert (=> b!4355856 (forall!9112 (toList!2954 lt!1568390) lambda!140289)))

(declare-fun lt!1568392 () Unit!71399)

(declare-fun Unit!71559 () Unit!71399)

(assert (=> b!4355856 (= lt!1568392 Unit!71559)))

(declare-fun lt!1568389 () Unit!71399)

(declare-fun Unit!71560 () Unit!71399)

(assert (=> b!4355856 (= lt!1568389 Unit!71560)))

(declare-fun lt!1568383 () Unit!71399)

(assert (=> b!4355856 (= lt!1568383 (addForallContainsKeyThenBeforeAdding!57 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1568381 (_1!27449 (h!54466 (_2!27450 (h!54467 (t!355964 (toList!2953 lm!1707)))))) (_2!27449 (h!54466 (_2!27450 (h!54467 (t!355964 (toList!2953 lm!1707))))))))))

(declare-fun call!302717 () Bool)

(assert (=> b!4355856 call!302717))

(declare-fun lt!1568397 () Unit!71399)

(assert (=> b!4355856 (= lt!1568397 lt!1568383)))

(assert (=> b!4355856 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) lambda!140289)))

(declare-fun lt!1568396 () Unit!71399)

(declare-fun Unit!71561 () Unit!71399)

(assert (=> b!4355856 (= lt!1568396 Unit!71561)))

(declare-fun res!1790134 () Bool)

(assert (=> b!4355856 (= res!1790134 (forall!9112 (_2!27450 (h!54467 (t!355964 (toList!2953 lm!1707)))) lambda!140289))))

(declare-fun e!2710685 () Bool)

(assert (=> b!4355856 (=> (not res!1790134) (not e!2710685))))

(assert (=> b!4355856 e!2710685))

(declare-fun lt!1568387 () Unit!71399)

(declare-fun Unit!71562 () Unit!71399)

(assert (=> b!4355856 (= lt!1568387 Unit!71562)))

(declare-fun b!4355857 () Bool)

(assert (=> b!4355857 (= e!2710687 (invariantList!674 (toList!2954 lt!1568398)))))

(declare-fun c!740593 () Bool)

(declare-fun bm!302710 () Bool)

(assert (=> bm!302710 (= call!302715 (forall!9112 (ite c!740593 (toList!2954 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) (t!355963 (_2!27450 (h!54467 (t!355964 (toList!2953 lm!1707)))))) (ite c!740593 lambda!140287 lambda!140289)))))

(assert (=> b!4355858 (= e!2710686 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))))))

(declare-fun lt!1568391 () Unit!71399)

(assert (=> b!4355858 (= lt!1568391 call!302716)))

(assert (=> b!4355858 call!302717))

(declare-fun lt!1568384 () Unit!71399)

(assert (=> b!4355858 (= lt!1568384 lt!1568391)))

(assert (=> b!4355858 call!302715))

(declare-fun lt!1568388 () Unit!71399)

(declare-fun Unit!71563 () Unit!71399)

(assert (=> b!4355858 (= lt!1568388 Unit!71563)))

(declare-fun bm!302711 () Bool)

(assert (=> bm!302711 (= call!302716 (lemmaContainsAllItsOwnKeys!57 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))))))

(assert (=> d!1287488 e!2710687))

(declare-fun res!1790133 () Bool)

(assert (=> d!1287488 (=> (not res!1790133) (not e!2710687))))

(assert (=> d!1287488 (= res!1790133 (forall!9112 (_2!27450 (h!54467 (t!355964 (toList!2953 lm!1707)))) lambda!140291))))

(assert (=> d!1287488 (= lt!1568398 e!2710686)))

(assert (=> d!1287488 (= c!740593 ((_ is Nil!48919) (_2!27450 (h!54467 (t!355964 (toList!2953 lm!1707))))))))

(assert (=> d!1287488 (noDuplicateKeys!485 (_2!27450 (h!54467 (t!355964 (toList!2953 lm!1707)))))))

(assert (=> d!1287488 (= (addToMapMapFromBucket!181 (_2!27450 (h!54467 (t!355964 (toList!2953 lm!1707)))) (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) lt!1568398)))

(declare-fun bm!302712 () Bool)

(assert (=> bm!302712 (= call!302717 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) (ite c!740593 lambda!140287 lambda!140289)))))

(declare-fun b!4355859 () Bool)

(assert (=> b!4355859 (= e!2710685 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) lambda!140289))))

(assert (= (and d!1287488 c!740593) b!4355858))

(assert (= (and d!1287488 (not c!740593)) b!4355856))

(assert (= (and b!4355856 res!1790134) b!4355859))

(assert (= (or b!4355858 b!4355856) bm!302711))

(assert (= (or b!4355858 b!4355856) bm!302712))

(assert (= (or b!4355858 b!4355856) bm!302710))

(assert (= (and d!1287488 res!1790133) b!4355855))

(assert (= (and b!4355855 res!1790132) b!4355857))

(assert (=> b!4355856 m!4967975))

(declare-fun m!4969335 () Bool)

(assert (=> b!4355856 m!4969335))

(declare-fun m!4969337 () Bool)

(assert (=> b!4355856 m!4969337))

(declare-fun m!4969339 () Bool)

(assert (=> b!4355856 m!4969339))

(declare-fun m!4969341 () Bool)

(assert (=> b!4355856 m!4969341))

(assert (=> b!4355856 m!4967975))

(declare-fun m!4969343 () Bool)

(assert (=> b!4355856 m!4969343))

(declare-fun m!4969345 () Bool)

(assert (=> b!4355856 m!4969345))

(assert (=> b!4355856 m!4969341))

(assert (=> b!4355856 m!4969335))

(declare-fun m!4969347 () Bool)

(assert (=> b!4355856 m!4969347))

(declare-fun m!4969349 () Bool)

(assert (=> b!4355856 m!4969349))

(assert (=> b!4355856 m!4969339))

(declare-fun m!4969351 () Bool)

(assert (=> b!4355856 m!4969351))

(declare-fun m!4969353 () Bool)

(assert (=> b!4355856 m!4969353))

(declare-fun m!4969355 () Bool)

(assert (=> b!4355855 m!4969355))

(assert (=> b!4355859 m!4969337))

(assert (=> bm!302711 m!4967975))

(declare-fun m!4969357 () Bool)

(assert (=> bm!302711 m!4969357))

(declare-fun m!4969359 () Bool)

(assert (=> b!4355857 m!4969359))

(declare-fun m!4969361 () Bool)

(assert (=> d!1287488 m!4969361))

(declare-fun m!4969363 () Bool)

(assert (=> d!1287488 m!4969363))

(declare-fun m!4969365 () Bool)

(assert (=> bm!302712 m!4969365))

(declare-fun m!4969367 () Bool)

(assert (=> bm!302710 m!4969367))

(assert (=> b!4355077 d!1287488))

(declare-fun bs!631094 () Bool)

(declare-fun d!1287504 () Bool)

(assert (= bs!631094 (and d!1287504 d!1287300)))

(declare-fun lambda!140294 () Int)

(assert (=> bs!631094 (= lambda!140294 lambda!140243)))

(declare-fun bs!631095 () Bool)

(assert (= bs!631095 (and d!1287504 d!1287078)))

(assert (=> bs!631095 (not (= lambda!140294 lambda!140185))))

(declare-fun bs!631096 () Bool)

(assert (= bs!631096 (and d!1287504 d!1287046)))

(assert (=> bs!631096 (= lambda!140294 lambda!140174)))

(declare-fun bs!631097 () Bool)

(assert (= bs!631097 (and d!1287504 d!1287028)))

(assert (=> bs!631097 (= lambda!140294 lambda!140106)))

(declare-fun bs!631098 () Bool)

(assert (= bs!631098 (and d!1287504 start!421280)))

(assert (=> bs!631098 (= lambda!140294 lambda!140085)))

(declare-fun bs!631099 () Bool)

(assert (= bs!631099 (and d!1287504 d!1287166)))

(assert (=> bs!631099 (= lambda!140294 lambda!140209)))

(declare-fun bs!631100 () Bool)

(assert (= bs!631100 (and d!1287504 d!1287054)))

(assert (=> bs!631100 (= lambda!140294 lambda!140175)))

(declare-fun bs!631101 () Bool)

(assert (= bs!631101 (and d!1287504 d!1287062)))

(assert (=> bs!631101 (= lambda!140294 lambda!140178)))

(declare-fun bs!631102 () Bool)

(assert (= bs!631102 (and d!1287504 d!1287134)))

(assert (=> bs!631102 (= lambda!140294 lambda!140208)))

(declare-fun bs!631103 () Bool)

(assert (= bs!631103 (and d!1287504 d!1287072)))

(assert (=> bs!631103 (= lambda!140294 lambda!140182)))

(declare-fun bs!631104 () Bool)

(assert (= bs!631104 (and d!1287504 d!1287064)))

(assert (=> bs!631104 (= lambda!140294 lambda!140181)))

(declare-fun lt!1568406 () ListMap!2197)

(assert (=> d!1287504 (invariantList!674 (toList!2954 lt!1568406))))

(declare-fun e!2710696 () ListMap!2197)

(assert (=> d!1287504 (= lt!1568406 e!2710696)))

(declare-fun c!740595 () Bool)

(assert (=> d!1287504 (= c!740595 ((_ is Cons!48920) (t!355964 (t!355964 (toList!2953 lm!1707)))))))

(assert (=> d!1287504 (forall!9110 (t!355964 (t!355964 (toList!2953 lm!1707))) lambda!140294)))

(assert (=> d!1287504 (= (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707)))) lt!1568406)))

(declare-fun b!4355871 () Bool)

(assert (=> b!4355871 (= e!2710696 (addToMapMapFromBucket!181 (_2!27450 (h!54467 (t!355964 (t!355964 (toList!2953 lm!1707))))) (extractMap!544 (t!355964 (t!355964 (t!355964 (toList!2953 lm!1707)))))))))

(declare-fun b!4355872 () Bool)

(assert (=> b!4355872 (= e!2710696 (ListMap!2198 Nil!48919))))

(assert (= (and d!1287504 c!740595) b!4355871))

(assert (= (and d!1287504 (not c!740595)) b!4355872))

(declare-fun m!4969385 () Bool)

(assert (=> d!1287504 m!4969385))

(declare-fun m!4969387 () Bool)

(assert (=> d!1287504 m!4969387))

(declare-fun m!4969389 () Bool)

(assert (=> b!4355871 m!4969389))

(assert (=> b!4355871 m!4969389))

(declare-fun m!4969391 () Bool)

(assert (=> b!4355871 m!4969391))

(assert (=> b!4355077 d!1287504))

(assert (=> bs!630554 d!1287246))

(declare-fun bs!631108 () Bool)

(declare-fun d!1287514 () Bool)

(assert (= bs!631108 (and d!1287514 d!1287036)))

(declare-fun lambda!140297 () Int)

(assert (=> bs!631108 (= (= lt!1567542 lt!1567853) (= lambda!140297 lambda!140173))))

(declare-fun bs!631109 () Bool)

(assert (= bs!631109 (and d!1287514 d!1287284)))

(assert (=> bs!631109 (= (= lt!1567542 lt!1568101) (= lambda!140297 lambda!140239))))

(declare-fun bs!631110 () Bool)

(assert (= bs!631110 (and d!1287514 b!4355039)))

(assert (=> bs!631110 (= (= lt!1567542 lt!1567836) (= lambda!140297 lambda!140172))))

(declare-fun bs!631111 () Bool)

(assert (= bs!631111 (and d!1287514 b!4355494)))

(assert (=> bs!631111 (= (= lt!1567542 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140297 lambda!140235))))

(declare-fun bs!631112 () Bool)

(assert (= bs!631112 (and d!1287514 b!4355858)))

(assert (=> bs!631112 (= (= lt!1567542 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) (= lambda!140297 lambda!140287))))

(assert (=> bs!631110 (= lambda!140297 lambda!140171)))

(declare-fun bs!631113 () Bool)

(assert (= bs!631113 (and d!1287514 d!1287378)))

(assert (=> bs!631113 (= (= lt!1567542 lt!1568222) (= lambda!140297 lambda!140260))))

(declare-fun bs!631114 () Bool)

(assert (= bs!631114 (and d!1287514 d!1287402)))

(assert (=> bs!631114 (= (= lt!1567542 lt!1567836) (= lambda!140297 lambda!140265))))

(declare-fun bs!631115 () Bool)

(assert (= bs!631115 (and d!1287514 b!4355621)))

(assert (=> bs!631115 (= (= lt!1567542 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140297 lambda!140257))))

(assert (=> bs!631115 (= (= lt!1567542 lt!1568205) (= lambda!140297 lambda!140258))))

(declare-fun bs!631116 () Bool)

(assert (= bs!631116 (and d!1287514 b!4355192)))

(assert (=> bs!631116 (= (= lt!1567542 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140297 lambda!140204))))

(declare-fun bs!631117 () Bool)

(assert (= bs!631117 (and d!1287514 b!4355496)))

(assert (=> bs!631117 (= (= lt!1567542 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140297 lambda!140234))))

(declare-fun bs!631118 () Bool)

(assert (= bs!631118 (and d!1287514 b!4355041)))

(assert (=> bs!631118 (= lambda!140297 lambda!140170)))

(declare-fun bs!631119 () Bool)

(assert (= bs!631119 (and d!1287514 d!1287034)))

(assert (=> bs!631119 (not (= lambda!140297 lambda!140109))))

(declare-fun bs!631120 () Bool)

(assert (= bs!631120 (and d!1287514 d!1287488)))

(assert (=> bs!631120 (= (= lt!1567542 lt!1568398) (= lambda!140297 lambda!140291))))

(declare-fun bs!631121 () Bool)

(assert (= bs!631121 (and d!1287514 b!4355856)))

(assert (=> bs!631121 (= (= lt!1567542 lt!1568381) (= lambda!140297 lambda!140289))))

(declare-fun bs!631122 () Bool)

(assert (= bs!631122 (and d!1287514 b!4355190)))

(assert (=> bs!631122 (= (= lt!1567542 lt!1567931) (= lambda!140297 lambda!140206))))

(declare-fun bs!631123 () Bool)

(assert (= bs!631123 (and d!1287514 d!1287128)))

(assert (=> bs!631123 (= (= lt!1567542 lt!1567948) (= lambda!140297 lambda!140207))))

(declare-fun bs!631124 () Bool)

(assert (= bs!631124 (and d!1287514 b!4355623)))

(assert (=> bs!631124 (= (= lt!1567542 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140297 lambda!140255))))

(assert (=> bs!631122 (= (= lt!1567542 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140297 lambda!140205))))

(assert (=> bs!631111 (= (= lt!1567542 lt!1568084) (= lambda!140297 lambda!140236))))

(assert (=> bs!631121 (= (= lt!1567542 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) (= lambda!140297 lambda!140288))))

(assert (=> d!1287514 true))

(assert (=> d!1287514 (forall!9112 (toList!2954 lt!1567542) lambda!140297)))

(declare-fun lt!1568409 () Unit!71399)

(declare-fun choose!26888 (ListMap!2197) Unit!71399)

(assert (=> d!1287514 (= lt!1568409 (choose!26888 lt!1567542))))

(assert (=> d!1287514 (= (lemmaContainsAllItsOwnKeys!57 lt!1567542) lt!1568409)))

(declare-fun bs!631125 () Bool)

(assert (= bs!631125 d!1287514))

(declare-fun m!4969413 () Bool)

(assert (=> bs!631125 m!4969413))

(declare-fun m!4969415 () Bool)

(assert (=> bs!631125 m!4969415))

(assert (=> bm!302631 d!1287514))

(assert (=> b!4355062 d!1287142))

(declare-fun d!1287532 () Bool)

(assert (=> d!1287532 (containsKey!681 (toList!2954 lt!1567553) key!3918)))

(declare-fun lt!1568413 () Unit!71399)

(assert (=> d!1287532 (= lt!1568413 (choose!26876 (toList!2954 lt!1567553) key!3918))))

(assert (=> d!1287532 (invariantList!674 (toList!2954 lt!1567553))))

(assert (=> d!1287532 (= (lemmaInGetKeysListThenContainsKey!120 (toList!2954 lt!1567553) key!3918) lt!1568413)))

(declare-fun bs!631126 () Bool)

(assert (= bs!631126 d!1287532))

(assert (=> bs!631126 m!4967941))

(declare-fun m!4969419 () Bool)

(assert (=> bs!631126 m!4969419))

(assert (=> bs!631126 m!4968783))

(assert (=> b!4355062 d!1287532))

(declare-fun d!1287536 () Bool)

(declare-fun res!1790155 () Bool)

(declare-fun e!2710715 () Bool)

(assert (=> d!1287536 (=> res!1790155 e!2710715)))

(assert (=> d!1287536 (= res!1790155 (and ((_ is Cons!48919) (t!355963 (apply!11337 lm!1707 (_1!27450 (h!54467 (toList!2953 lm!1707)))))) (= (_1!27449 (h!54466 (t!355963 (apply!11337 lm!1707 (_1!27450 (h!54467 (toList!2953 lm!1707))))))) key!3918)))))

(assert (=> d!1287536 (= (containsKey!678 (t!355963 (apply!11337 lm!1707 (_1!27450 (h!54467 (toList!2953 lm!1707))))) key!3918) e!2710715)))

(declare-fun b!4355898 () Bool)

(declare-fun e!2710716 () Bool)

(assert (=> b!4355898 (= e!2710715 e!2710716)))

(declare-fun res!1790156 () Bool)

(assert (=> b!4355898 (=> (not res!1790156) (not e!2710716))))

(assert (=> b!4355898 (= res!1790156 ((_ is Cons!48919) (t!355963 (apply!11337 lm!1707 (_1!27450 (h!54467 (toList!2953 lm!1707)))))))))

(declare-fun b!4355899 () Bool)

(assert (=> b!4355899 (= e!2710716 (containsKey!678 (t!355963 (t!355963 (apply!11337 lm!1707 (_1!27450 (h!54467 (toList!2953 lm!1707)))))) key!3918))))

(assert (= (and d!1287536 (not res!1790155)) b!4355898))

(assert (= (and b!4355898 res!1790156) b!4355899))

(declare-fun m!4969425 () Bool)

(assert (=> b!4355899 m!4969425))

(assert (=> b!4355076 d!1287536))

(declare-fun d!1287540 () Bool)

(declare-fun res!1790159 () Bool)

(declare-fun e!2710719 () Bool)

(assert (=> d!1287540 (=> res!1790159 e!2710719)))

(assert (=> d!1287540 (= res!1790159 ((_ is Nil!48919) (ite c!740397 (toList!2954 lt!1567542) (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(assert (=> d!1287540 (= (forall!9112 (ite c!740397 (toList!2954 lt!1567542) (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (ite c!740397 lambda!140170 lambda!140172)) e!2710719)))

(declare-fun b!4355902 () Bool)

(declare-fun e!2710720 () Bool)

(assert (=> b!4355902 (= e!2710719 e!2710720)))

(declare-fun res!1790160 () Bool)

(assert (=> b!4355902 (=> (not res!1790160) (not e!2710720))))

(assert (=> b!4355902 (= res!1790160 (dynLambda!20630 (ite c!740397 lambda!140170 lambda!140172) (h!54466 (ite c!740397 (toList!2954 lt!1567542) (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))))

(declare-fun b!4355903 () Bool)

(assert (=> b!4355903 (= e!2710720 (forall!9112 (t!355963 (ite c!740397 (toList!2954 lt!1567542) (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (ite c!740397 lambda!140170 lambda!140172)))))

(assert (= (and d!1287540 (not res!1790159)) b!4355902))

(assert (= (and b!4355902 res!1790160) b!4355903))

(declare-fun b_lambda!131055 () Bool)

(assert (=> (not b_lambda!131055) (not b!4355902)))

(declare-fun m!4969431 () Bool)

(assert (=> b!4355902 m!4969431))

(declare-fun m!4969433 () Bool)

(assert (=> b!4355903 m!4969433))

(assert (=> bm!302630 d!1287540))

(declare-fun bs!631128 () Bool)

(declare-fun b!4355907 () Bool)

(assert (= bs!631128 (and b!4355907 d!1287036)))

(declare-fun lambda!140298 () Int)

(assert (=> bs!631128 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1567853) (= lambda!140298 lambda!140173))))

(declare-fun bs!631129 () Bool)

(assert (= bs!631129 (and b!4355907 d!1287284)))

(assert (=> bs!631129 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1568101) (= lambda!140298 lambda!140239))))

(declare-fun bs!631130 () Bool)

(assert (= bs!631130 (and b!4355907 b!4355039)))

(assert (=> bs!631130 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1567836) (= lambda!140298 lambda!140172))))

(declare-fun bs!631131 () Bool)

(assert (= bs!631131 (and b!4355907 b!4355494)))

(assert (=> bs!631131 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140298 lambda!140235))))

(declare-fun bs!631132 () Bool)

(assert (= bs!631132 (and b!4355907 b!4355858)))

(assert (=> bs!631132 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) (= lambda!140298 lambda!140287))))

(assert (=> bs!631130 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1567542) (= lambda!140298 lambda!140171))))

(declare-fun bs!631133 () Bool)

(assert (= bs!631133 (and b!4355907 d!1287378)))

(assert (=> bs!631133 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1568222) (= lambda!140298 lambda!140260))))

(declare-fun bs!631134 () Bool)

(assert (= bs!631134 (and b!4355907 d!1287402)))

(assert (=> bs!631134 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1567836) (= lambda!140298 lambda!140265))))

(declare-fun bs!631135 () Bool)

(assert (= bs!631135 (and b!4355907 b!4355621)))

(assert (=> bs!631135 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140298 lambda!140257))))

(assert (=> bs!631135 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1568205) (= lambda!140298 lambda!140258))))

(declare-fun bs!631136 () Bool)

(assert (= bs!631136 (and b!4355907 d!1287514)))

(assert (=> bs!631136 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1567542) (= lambda!140298 lambda!140297))))

(declare-fun bs!631137 () Bool)

(assert (= bs!631137 (and b!4355907 b!4355192)))

(assert (=> bs!631137 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140298 lambda!140204))))

(declare-fun bs!631138 () Bool)

(assert (= bs!631138 (and b!4355907 b!4355496)))

(assert (=> bs!631138 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140298 lambda!140234))))

(declare-fun bs!631139 () Bool)

(assert (= bs!631139 (and b!4355907 b!4355041)))

(assert (=> bs!631139 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1567542) (= lambda!140298 lambda!140170))))

(declare-fun bs!631140 () Bool)

(assert (= bs!631140 (and b!4355907 d!1287034)))

(assert (=> bs!631140 (not (= lambda!140298 lambda!140109))))

(declare-fun bs!631141 () Bool)

(assert (= bs!631141 (and b!4355907 d!1287488)))

(assert (=> bs!631141 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1568398) (= lambda!140298 lambda!140291))))

(declare-fun bs!631142 () Bool)

(assert (= bs!631142 (and b!4355907 b!4355856)))

(assert (=> bs!631142 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1568381) (= lambda!140298 lambda!140289))))

(declare-fun bs!631143 () Bool)

(assert (= bs!631143 (and b!4355907 b!4355190)))

(assert (=> bs!631143 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1567931) (= lambda!140298 lambda!140206))))

(declare-fun bs!631144 () Bool)

(assert (= bs!631144 (and b!4355907 d!1287128)))

(assert (=> bs!631144 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1567948) (= lambda!140298 lambda!140207))))

(declare-fun bs!631145 () Bool)

(assert (= bs!631145 (and b!4355907 b!4355623)))

(assert (=> bs!631145 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140298 lambda!140255))))

(assert (=> bs!631143 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140298 lambda!140205))))

(assert (=> bs!631131 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1568084) (= lambda!140298 lambda!140236))))

(assert (=> bs!631142 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) (= lambda!140298 lambda!140288))))

(assert (=> b!4355907 true))

(declare-fun bs!631146 () Bool)

(declare-fun b!4355905 () Bool)

(assert (= bs!631146 (and b!4355905 d!1287036)))

(declare-fun lambda!140299 () Int)

(assert (=> bs!631146 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1567853) (= lambda!140299 lambda!140173))))

(declare-fun bs!631147 () Bool)

(assert (= bs!631147 (and b!4355905 d!1287284)))

(assert (=> bs!631147 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1568101) (= lambda!140299 lambda!140239))))

(declare-fun bs!631148 () Bool)

(assert (= bs!631148 (and b!4355905 b!4355907)))

(assert (=> bs!631148 (= lambda!140299 lambda!140298)))

(declare-fun bs!631149 () Bool)

(assert (= bs!631149 (and b!4355905 b!4355039)))

(assert (=> bs!631149 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1567836) (= lambda!140299 lambda!140172))))

(declare-fun bs!631150 () Bool)

(assert (= bs!631150 (and b!4355905 b!4355494)))

(assert (=> bs!631150 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140299 lambda!140235))))

(declare-fun bs!631151 () Bool)

(assert (= bs!631151 (and b!4355905 b!4355858)))

(assert (=> bs!631151 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) (= lambda!140299 lambda!140287))))

(assert (=> bs!631149 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1567542) (= lambda!140299 lambda!140171))))

(declare-fun bs!631152 () Bool)

(assert (= bs!631152 (and b!4355905 d!1287378)))

(assert (=> bs!631152 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1568222) (= lambda!140299 lambda!140260))))

(declare-fun bs!631153 () Bool)

(assert (= bs!631153 (and b!4355905 d!1287402)))

(assert (=> bs!631153 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1567836) (= lambda!140299 lambda!140265))))

(declare-fun bs!631154 () Bool)

(assert (= bs!631154 (and b!4355905 b!4355621)))

(assert (=> bs!631154 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140299 lambda!140257))))

(assert (=> bs!631154 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1568205) (= lambda!140299 lambda!140258))))

(declare-fun bs!631155 () Bool)

(assert (= bs!631155 (and b!4355905 d!1287514)))

(assert (=> bs!631155 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1567542) (= lambda!140299 lambda!140297))))

(declare-fun bs!631156 () Bool)

(assert (= bs!631156 (and b!4355905 b!4355192)))

(assert (=> bs!631156 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140299 lambda!140204))))

(declare-fun bs!631157 () Bool)

(assert (= bs!631157 (and b!4355905 b!4355496)))

(assert (=> bs!631157 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140299 lambda!140234))))

(declare-fun bs!631158 () Bool)

(assert (= bs!631158 (and b!4355905 b!4355041)))

(assert (=> bs!631158 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1567542) (= lambda!140299 lambda!140170))))

(declare-fun bs!631159 () Bool)

(assert (= bs!631159 (and b!4355905 d!1287034)))

(assert (=> bs!631159 (not (= lambda!140299 lambda!140109))))

(declare-fun bs!631160 () Bool)

(assert (= bs!631160 (and b!4355905 d!1287488)))

(assert (=> bs!631160 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1568398) (= lambda!140299 lambda!140291))))

(declare-fun bs!631161 () Bool)

(assert (= bs!631161 (and b!4355905 b!4355856)))

(assert (=> bs!631161 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1568381) (= lambda!140299 lambda!140289))))

(declare-fun bs!631162 () Bool)

(assert (= bs!631162 (and b!4355905 b!4355190)))

(assert (=> bs!631162 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1567931) (= lambda!140299 lambda!140206))))

(declare-fun bs!631163 () Bool)

(assert (= bs!631163 (and b!4355905 d!1287128)))

(assert (=> bs!631163 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1567948) (= lambda!140299 lambda!140207))))

(declare-fun bs!631164 () Bool)

(assert (= bs!631164 (and b!4355905 b!4355623)))

(assert (=> bs!631164 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140299 lambda!140255))))

(assert (=> bs!631162 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140299 lambda!140205))))

(assert (=> bs!631150 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1568084) (= lambda!140299 lambda!140236))))

(assert (=> bs!631161 (= (= (extractMap!544 (t!355964 (toList!2953 lm!1707))) (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) (= lambda!140299 lambda!140288))))

(assert (=> b!4355905 true))

(declare-fun lambda!140303 () Int)

(declare-fun lt!1568415 () ListMap!2197)

(assert (=> bs!631146 (= (= lt!1568415 lt!1567853) (= lambda!140303 lambda!140173))))

(assert (=> bs!631147 (= (= lt!1568415 lt!1568101) (= lambda!140303 lambda!140239))))

(assert (=> bs!631148 (= (= lt!1568415 (extractMap!544 (t!355964 (toList!2953 lm!1707)))) (= lambda!140303 lambda!140298))))

(assert (=> bs!631149 (= (= lt!1568415 lt!1567836) (= lambda!140303 lambda!140172))))

(assert (=> bs!631150 (= (= lt!1568415 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140303 lambda!140235))))

(assert (=> b!4355905 (= (= lt!1568415 (extractMap!544 (t!355964 (toList!2953 lm!1707)))) (= lambda!140303 lambda!140299))))

(assert (=> bs!631151 (= (= lt!1568415 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) (= lambda!140303 lambda!140287))))

(assert (=> bs!631149 (= (= lt!1568415 lt!1567542) (= lambda!140303 lambda!140171))))

(assert (=> bs!631152 (= (= lt!1568415 lt!1568222) (= lambda!140303 lambda!140260))))

(assert (=> bs!631153 (= (= lt!1568415 lt!1567836) (= lambda!140303 lambda!140265))))

(assert (=> bs!631154 (= (= lt!1568415 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140303 lambda!140257))))

(assert (=> bs!631154 (= (= lt!1568415 lt!1568205) (= lambda!140303 lambda!140258))))

(assert (=> bs!631155 (= (= lt!1568415 lt!1567542) (= lambda!140303 lambda!140297))))

(assert (=> bs!631156 (= (= lt!1568415 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140303 lambda!140204))))

(assert (=> bs!631157 (= (= lt!1568415 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140303 lambda!140234))))

(assert (=> bs!631158 (= (= lt!1568415 lt!1567542) (= lambda!140303 lambda!140170))))

(assert (=> bs!631159 (not (= lambda!140303 lambda!140109))))

(assert (=> bs!631160 (= (= lt!1568415 lt!1568398) (= lambda!140303 lambda!140291))))

(assert (=> bs!631161 (= (= lt!1568415 lt!1568381) (= lambda!140303 lambda!140289))))

(assert (=> bs!631162 (= (= lt!1568415 lt!1567931) (= lambda!140303 lambda!140206))))

(assert (=> bs!631163 (= (= lt!1568415 lt!1567948) (= lambda!140303 lambda!140207))))

(assert (=> bs!631164 (= (= lt!1568415 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140303 lambda!140255))))

(assert (=> bs!631162 (= (= lt!1568415 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140303 lambda!140205))))

(assert (=> bs!631150 (= (= lt!1568415 lt!1568084) (= lambda!140303 lambda!140236))))

(assert (=> bs!631161 (= (= lt!1568415 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) (= lambda!140303 lambda!140288))))

(assert (=> b!4355905 true))

(declare-fun bs!631186 () Bool)

(declare-fun d!1287546 () Bool)

(assert (= bs!631186 (and d!1287546 d!1287036)))

(declare-fun lambda!140304 () Int)

(declare-fun lt!1568432 () ListMap!2197)

(assert (=> bs!631186 (= (= lt!1568432 lt!1567853) (= lambda!140304 lambda!140173))))

(declare-fun bs!631187 () Bool)

(assert (= bs!631187 (and d!1287546 d!1287284)))

(assert (=> bs!631187 (= (= lt!1568432 lt!1568101) (= lambda!140304 lambda!140239))))

(declare-fun bs!631188 () Bool)

(assert (= bs!631188 (and d!1287546 b!4355907)))

(assert (=> bs!631188 (= (= lt!1568432 (extractMap!544 (t!355964 (toList!2953 lm!1707)))) (= lambda!140304 lambda!140298))))

(declare-fun bs!631189 () Bool)

(assert (= bs!631189 (and d!1287546 b!4355494)))

(assert (=> bs!631189 (= (= lt!1568432 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140304 lambda!140235))))

(declare-fun bs!631190 () Bool)

(assert (= bs!631190 (and d!1287546 b!4355905)))

(assert (=> bs!631190 (= (= lt!1568432 (extractMap!544 (t!355964 (toList!2953 lm!1707)))) (= lambda!140304 lambda!140299))))

(declare-fun bs!631191 () Bool)

(assert (= bs!631191 (and d!1287546 b!4355858)))

(assert (=> bs!631191 (= (= lt!1568432 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) (= lambda!140304 lambda!140287))))

(declare-fun bs!631192 () Bool)

(assert (= bs!631192 (and d!1287546 b!4355039)))

(assert (=> bs!631192 (= (= lt!1568432 lt!1567542) (= lambda!140304 lambda!140171))))

(declare-fun bs!631193 () Bool)

(assert (= bs!631193 (and d!1287546 d!1287378)))

(assert (=> bs!631193 (= (= lt!1568432 lt!1568222) (= lambda!140304 lambda!140260))))

(declare-fun bs!631194 () Bool)

(assert (= bs!631194 (and d!1287546 d!1287402)))

(assert (=> bs!631194 (= (= lt!1568432 lt!1567836) (= lambda!140304 lambda!140265))))

(assert (=> bs!631192 (= (= lt!1568432 lt!1567836) (= lambda!140304 lambda!140172))))

(assert (=> bs!631190 (= (= lt!1568432 lt!1568415) (= lambda!140304 lambda!140303))))

(declare-fun bs!631195 () Bool)

(assert (= bs!631195 (and d!1287546 b!4355621)))

(assert (=> bs!631195 (= (= lt!1568432 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140304 lambda!140257))))

(assert (=> bs!631195 (= (= lt!1568432 lt!1568205) (= lambda!140304 lambda!140258))))

(declare-fun bs!631196 () Bool)

(assert (= bs!631196 (and d!1287546 d!1287514)))

(assert (=> bs!631196 (= (= lt!1568432 lt!1567542) (= lambda!140304 lambda!140297))))

(declare-fun bs!631197 () Bool)

(assert (= bs!631197 (and d!1287546 b!4355192)))

(assert (=> bs!631197 (= (= lt!1568432 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140304 lambda!140204))))

(declare-fun bs!631198 () Bool)

(assert (= bs!631198 (and d!1287546 b!4355496)))

(assert (=> bs!631198 (= (= lt!1568432 (extractMap!544 (t!355964 (toList!2953 (+!627 lt!1567543 lt!1567548))))) (= lambda!140304 lambda!140234))))

(declare-fun bs!631199 () Bool)

(assert (= bs!631199 (and d!1287546 b!4355041)))

(assert (=> bs!631199 (= (= lt!1568432 lt!1567542) (= lambda!140304 lambda!140170))))

(declare-fun bs!631200 () Bool)

(assert (= bs!631200 (and d!1287546 d!1287034)))

(assert (=> bs!631200 (not (= lambda!140304 lambda!140109))))

(declare-fun bs!631201 () Bool)

(assert (= bs!631201 (and d!1287546 d!1287488)))

(assert (=> bs!631201 (= (= lt!1568432 lt!1568398) (= lambda!140304 lambda!140291))))

(declare-fun bs!631202 () Bool)

(assert (= bs!631202 (and d!1287546 b!4355856)))

(assert (=> bs!631202 (= (= lt!1568432 lt!1568381) (= lambda!140304 lambda!140289))))

(declare-fun bs!631203 () Bool)

(assert (= bs!631203 (and d!1287546 b!4355190)))

(assert (=> bs!631203 (= (= lt!1568432 lt!1567931) (= lambda!140304 lambda!140206))))

(declare-fun bs!631204 () Bool)

(assert (= bs!631204 (and d!1287546 d!1287128)))

(assert (=> bs!631204 (= (= lt!1568432 lt!1567948) (= lambda!140304 lambda!140207))))

(declare-fun bs!631205 () Bool)

(assert (= bs!631205 (and d!1287546 b!4355623)))

(assert (=> bs!631205 (= (= lt!1568432 (+!628 lt!1567542 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))) (= lambda!140304 lambda!140255))))

(assert (=> bs!631203 (= (= lt!1568432 (extractMap!544 (t!355964 (toList!2953 lt!1567543)))) (= lambda!140304 lambda!140205))))

(assert (=> bs!631189 (= (= lt!1568432 lt!1568084) (= lambda!140304 lambda!140236))))

(assert (=> bs!631202 (= (= lt!1568432 (extractMap!544 (t!355964 (t!355964 (toList!2953 lm!1707))))) (= lambda!140304 lambda!140288))))

(assert (=> d!1287546 true))

(declare-fun b!4355904 () Bool)

(declare-fun res!1790161 () Bool)

(declare-fun e!2710723 () Bool)

(assert (=> b!4355904 (=> (not res!1790161) (not e!2710723))))

(assert (=> b!4355904 (= res!1790161 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (toList!2953 lm!1707)))) lambda!140304))))

(declare-fun e!2710722 () ListMap!2197)

(assert (=> b!4355905 (= e!2710722 lt!1568415)))

(declare-fun lt!1568424 () ListMap!2197)

(assert (=> b!4355905 (= lt!1568424 (+!628 (extractMap!544 (t!355964 (toList!2953 lm!1707))) (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(assert (=> b!4355905 (= lt!1568415 (addToMapMapFromBucket!181 (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707)))) (+!628 (extractMap!544 (t!355964 (toList!2953 lm!1707))) (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(declare-fun lt!1568416 () Unit!71399)

(declare-fun call!302719 () Unit!71399)

(assert (=> b!4355905 (= lt!1568416 call!302719)))

(assert (=> b!4355905 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (toList!2953 lm!1707)))) lambda!140299)))

(declare-fun lt!1568428 () Unit!71399)

(assert (=> b!4355905 (= lt!1568428 lt!1568416)))

(assert (=> b!4355905 (forall!9112 (toList!2954 lt!1568424) lambda!140303)))

(declare-fun lt!1568427 () Unit!71399)

(declare-fun Unit!71575 () Unit!71399)

(assert (=> b!4355905 (= lt!1568427 Unit!71575)))

(declare-fun call!302718 () Bool)

(assert (=> b!4355905 call!302718))

(declare-fun lt!1568419 () Unit!71399)

(declare-fun Unit!71576 () Unit!71399)

(assert (=> b!4355905 (= lt!1568419 Unit!71576)))

(declare-fun lt!1568435 () Unit!71399)

(declare-fun Unit!71577 () Unit!71399)

(assert (=> b!4355905 (= lt!1568435 Unit!71577)))

(declare-fun lt!1568433 () Unit!71399)

(assert (=> b!4355905 (= lt!1568433 (forallContained!1753 (toList!2954 lt!1568424) lambda!140303 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(assert (=> b!4355905 (contains!11115 lt!1568424 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(declare-fun lt!1568429 () Unit!71399)

(declare-fun Unit!71578 () Unit!71399)

(assert (=> b!4355905 (= lt!1568429 Unit!71578)))

(assert (=> b!4355905 (contains!11115 lt!1568415 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))))))

(declare-fun lt!1568434 () Unit!71399)

(declare-fun Unit!71579 () Unit!71399)

(assert (=> b!4355905 (= lt!1568434 Unit!71579)))

(assert (=> b!4355905 (forall!9112 (_2!27450 (h!54467 (toList!2953 lm!1707))) lambda!140303)))

(declare-fun lt!1568420 () Unit!71399)

(declare-fun Unit!71580 () Unit!71399)

(assert (=> b!4355905 (= lt!1568420 Unit!71580)))

(assert (=> b!4355905 (forall!9112 (toList!2954 lt!1568424) lambda!140303)))

(declare-fun lt!1568426 () Unit!71399)

(declare-fun Unit!71581 () Unit!71399)

(assert (=> b!4355905 (= lt!1568426 Unit!71581)))

(declare-fun lt!1568423 () Unit!71399)

(declare-fun Unit!71582 () Unit!71399)

(assert (=> b!4355905 (= lt!1568423 Unit!71582)))

(declare-fun lt!1568417 () Unit!71399)

(assert (=> b!4355905 (= lt!1568417 (addForallContainsKeyThenBeforeAdding!57 (extractMap!544 (t!355964 (toList!2953 lm!1707))) lt!1568415 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (_2!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(declare-fun call!302720 () Bool)

(assert (=> b!4355905 call!302720))

(declare-fun lt!1568431 () Unit!71399)

(assert (=> b!4355905 (= lt!1568431 lt!1568417)))

(assert (=> b!4355905 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (toList!2953 lm!1707)))) lambda!140303)))

(declare-fun lt!1568430 () Unit!71399)

(declare-fun Unit!71583 () Unit!71399)

(assert (=> b!4355905 (= lt!1568430 Unit!71583)))

(declare-fun res!1790163 () Bool)

(assert (=> b!4355905 (= res!1790163 (forall!9112 (_2!27450 (h!54467 (toList!2953 lm!1707))) lambda!140303))))

(declare-fun e!2710721 () Bool)

(assert (=> b!4355905 (=> (not res!1790163) (not e!2710721))))

(assert (=> b!4355905 e!2710721))

(declare-fun lt!1568421 () Unit!71399)

(declare-fun Unit!71584 () Unit!71399)

(assert (=> b!4355905 (= lt!1568421 Unit!71584)))

(declare-fun b!4355906 () Bool)

(assert (=> b!4355906 (= e!2710723 (invariantList!674 (toList!2954 lt!1568432)))))

(declare-fun c!740603 () Bool)

(declare-fun bm!302713 () Bool)

(assert (=> bm!302713 (= call!302718 (forall!9112 (ite c!740603 (toList!2954 (extractMap!544 (t!355964 (toList!2953 lm!1707)))) (t!355963 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (ite c!740603 lambda!140298 lambda!140303)))))

(assert (=> b!4355907 (= e!2710722 (extractMap!544 (t!355964 (toList!2953 lm!1707))))))

(declare-fun lt!1568425 () Unit!71399)

(assert (=> b!4355907 (= lt!1568425 call!302719)))

(assert (=> b!4355907 call!302720))

(declare-fun lt!1568418 () Unit!71399)

(assert (=> b!4355907 (= lt!1568418 lt!1568425)))

(assert (=> b!4355907 call!302718))

(declare-fun lt!1568422 () Unit!71399)

(declare-fun Unit!71585 () Unit!71399)

(assert (=> b!4355907 (= lt!1568422 Unit!71585)))

(declare-fun bm!302714 () Bool)

(assert (=> bm!302714 (= call!302719 (lemmaContainsAllItsOwnKeys!57 (extractMap!544 (t!355964 (toList!2953 lm!1707)))))))

(assert (=> d!1287546 e!2710723))

(declare-fun res!1790162 () Bool)

(assert (=> d!1287546 (=> (not res!1790162) (not e!2710723))))

(assert (=> d!1287546 (= res!1790162 (forall!9112 (_2!27450 (h!54467 (toList!2953 lm!1707))) lambda!140304))))

(assert (=> d!1287546 (= lt!1568432 e!2710722)))

(assert (=> d!1287546 (= c!740603 ((_ is Nil!48919) (_2!27450 (h!54467 (toList!2953 lm!1707)))))))

(assert (=> d!1287546 (noDuplicateKeys!485 (_2!27450 (h!54467 (toList!2953 lm!1707))))))

(assert (=> d!1287546 (= (addToMapMapFromBucket!181 (_2!27450 (h!54467 (toList!2953 lm!1707))) (extractMap!544 (t!355964 (toList!2953 lm!1707)))) lt!1568432)))

(declare-fun bm!302715 () Bool)

(assert (=> bm!302715 (= call!302720 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (toList!2953 lm!1707)))) (ite c!740603 lambda!140298 lambda!140303)))))

(declare-fun b!4355908 () Bool)

(assert (=> b!4355908 (= e!2710721 (forall!9112 (toList!2954 (extractMap!544 (t!355964 (toList!2953 lm!1707)))) lambda!140303))))

(assert (= (and d!1287546 c!740603) b!4355907))

(assert (= (and d!1287546 (not c!740603)) b!4355905))

(assert (= (and b!4355905 res!1790163) b!4355908))

(assert (= (or b!4355907 b!4355905) bm!302714))

(assert (= (or b!4355907 b!4355905) bm!302715))

(assert (= (or b!4355907 b!4355905) bm!302713))

(assert (= (and d!1287546 res!1790162) b!4355904))

(assert (= (and b!4355904 res!1790161) b!4355906))

(assert (=> b!4355905 m!4967441))

(declare-fun m!4969461 () Bool)

(assert (=> b!4355905 m!4969461))

(declare-fun m!4969463 () Bool)

(assert (=> b!4355905 m!4969463))

(declare-fun m!4969467 () Bool)

(assert (=> b!4355905 m!4969467))

(declare-fun m!4969471 () Bool)

(assert (=> b!4355905 m!4969471))

(assert (=> b!4355905 m!4967441))

(declare-fun m!4969473 () Bool)

(assert (=> b!4355905 m!4969473))

(declare-fun m!4969475 () Bool)

(assert (=> b!4355905 m!4969475))

(assert (=> b!4355905 m!4969471))

(assert (=> b!4355905 m!4969461))

(declare-fun m!4969477 () Bool)

(assert (=> b!4355905 m!4969477))

(declare-fun m!4969479 () Bool)

(assert (=> b!4355905 m!4969479))

(assert (=> b!4355905 m!4969467))

(declare-fun m!4969481 () Bool)

(assert (=> b!4355905 m!4969481))

(declare-fun m!4969485 () Bool)

(assert (=> b!4355905 m!4969485))

(declare-fun m!4969487 () Bool)

(assert (=> b!4355904 m!4969487))

(assert (=> b!4355908 m!4969463))

(assert (=> bm!302714 m!4967441))

(declare-fun m!4969489 () Bool)

(assert (=> bm!302714 m!4969489))

(declare-fun m!4969491 () Bool)

(assert (=> b!4355906 m!4969491))

(declare-fun m!4969493 () Bool)

(assert (=> d!1287546 m!4969493))

(assert (=> d!1287546 m!4967855))

(declare-fun m!4969499 () Bool)

(assert (=> bm!302715 m!4969499))

(declare-fun m!4969501 () Bool)

(assert (=> bm!302713 m!4969501))

(assert (=> b!4354980 d!1287546))

(assert (=> b!4354980 d!1287072))

(declare-fun d!1287566 () Bool)

(assert (=> d!1287566 (= (invariantList!674 (toList!2954 lt!1567900)) (noDuplicatedKeys!117 (toList!2954 lt!1567900)))))

(declare-fun bs!631209 () Bool)

(assert (= bs!631209 d!1287566))

(declare-fun m!4969505 () Bool)

(assert (=> bs!631209 m!4969505))

(assert (=> d!1287072 d!1287566))

(declare-fun d!1287568 () Bool)

(declare-fun res!1790174 () Bool)

(declare-fun e!2710737 () Bool)

(assert (=> d!1287568 (=> res!1790174 e!2710737)))

(assert (=> d!1287568 (= res!1790174 ((_ is Nil!48920) (t!355964 (toList!2953 lm!1707))))))

(assert (=> d!1287568 (= (forall!9110 (t!355964 (toList!2953 lm!1707)) lambda!140182) e!2710737)))

(declare-fun b!4355925 () Bool)

(declare-fun e!2710738 () Bool)

(assert (=> b!4355925 (= e!2710737 e!2710738)))

(declare-fun res!1790175 () Bool)

(assert (=> b!4355925 (=> (not res!1790175) (not e!2710738))))

(assert (=> b!4355925 (= res!1790175 (dynLambda!20629 lambda!140182 (h!54467 (t!355964 (toList!2953 lm!1707)))))))

(declare-fun b!4355926 () Bool)

(assert (=> b!4355926 (= e!2710738 (forall!9110 (t!355964 (t!355964 (toList!2953 lm!1707))) lambda!140182))))

(assert (= (and d!1287568 (not res!1790174)) b!4355925))

(assert (= (and b!4355925 res!1790175) b!4355926))

(declare-fun b_lambda!131061 () Bool)

(assert (=> (not b_lambda!131061) (not b!4355925)))

(declare-fun m!4969509 () Bool)

(assert (=> b!4355925 m!4969509))

(declare-fun m!4969511 () Bool)

(assert (=> b!4355926 m!4969511))

(assert (=> d!1287072 d!1287568))

(assert (=> b!4355042 d!1287368))

(declare-fun d!1287572 () Bool)

(declare-fun lt!1568451 () Bool)

(assert (=> d!1287572 (= lt!1568451 (select (content!7711 (toList!2954 lt!1567872)) lt!1567541))))

(declare-fun e!2710744 () Bool)

(assert (=> d!1287572 (= lt!1568451 e!2710744)))

(declare-fun res!1790182 () Bool)

(assert (=> d!1287572 (=> (not res!1790182) (not e!2710744))))

(assert (=> d!1287572 (= res!1790182 ((_ is Cons!48919) (toList!2954 lt!1567872)))))

(assert (=> d!1287572 (= (contains!11121 (toList!2954 lt!1567872) lt!1567541) lt!1568451)))

(declare-fun b!4355933 () Bool)

(declare-fun e!2710745 () Bool)

(assert (=> b!4355933 (= e!2710744 e!2710745)))

(declare-fun res!1790183 () Bool)

(assert (=> b!4355933 (=> res!1790183 e!2710745)))

(assert (=> b!4355933 (= res!1790183 (= (h!54466 (toList!2954 lt!1567872)) lt!1567541))))

(declare-fun b!4355934 () Bool)

(assert (=> b!4355934 (= e!2710745 (contains!11121 (t!355963 (toList!2954 lt!1567872)) lt!1567541))))

(assert (= (and d!1287572 res!1790182) b!4355933))

(assert (= (and b!4355933 (not res!1790183)) b!4355934))

(declare-fun m!4969533 () Bool)

(assert (=> d!1287572 m!4969533))

(declare-fun m!4969535 () Bool)

(assert (=> d!1287572 m!4969535))

(declare-fun m!4969537 () Bool)

(assert (=> b!4355934 m!4969537))

(assert (=> b!4355052 d!1287572))

(assert (=> d!1287012 d!1287174))

(declare-fun bs!631221 () Bool)

(declare-fun b!4355942 () Bool)

(assert (= bs!631221 (and b!4355942 b!4355523)))

(declare-fun lambda!140306 () Int)

(assert (=> bs!631221 (= (= (t!355963 (toList!2954 lt!1567553)) (toList!2954 lt!1567553)) (= lambda!140306 lambda!140245))))

(declare-fun bs!631222 () Bool)

(assert (= bs!631222 (and b!4355942 b!4355175)))

(assert (=> bs!631222 (= (= (t!355963 (toList!2954 lt!1567553)) (toList!2954 lt!1567547)) (= lambda!140306 lambda!140202))))

(declare-fun bs!631223 () Bool)

(assert (= bs!631223 (and b!4355942 b!4355838)))

(assert (=> bs!631223 (= (= (t!355963 (toList!2954 lt!1567553)) (t!355963 (toList!2954 lt!1567542))) (= lambda!140306 lambda!140277))))

(declare-fun bs!631224 () Bool)

(assert (= bs!631224 (and b!4355942 b!4355351)))

(assert (=> bs!631224 (= (= (t!355963 (toList!2954 lt!1567553)) (toList!2954 lt!1567542)) (= lambda!140306 lambda!140216))))

(declare-fun bs!631225 () Bool)

(assert (= bs!631225 (and b!4355942 b!4355340)))

(assert (=> bs!631225 (= (= (t!355963 (toList!2954 lt!1567553)) (toList!2954 lt!1567547)) (= lambda!140306 lambda!140214))))

(declare-fun bs!631226 () Bool)

(assert (= bs!631226 (and b!4355942 b!4355176)))

(assert (=> bs!631226 (= (= (t!355963 (toList!2954 lt!1567553)) (Cons!48919 (h!54466 (toList!2954 lt!1567547)) (t!355963 (toList!2954 lt!1567547)))) (= lambda!140306 lambda!140201))))

(declare-fun bs!631227 () Bool)

(assert (= bs!631227 (and b!4355942 b!4355832)))

(assert (=> bs!631227 (= (= (t!355963 (toList!2954 lt!1567553)) (toList!2954 lt!1567542)) (= lambda!140306 lambda!140281))))

(declare-fun bs!631228 () Bool)

(assert (= bs!631228 (and b!4355942 b!4355181)))

(assert (=> bs!631228 (= (= (t!355963 (toList!2954 lt!1567553)) (t!355963 (toList!2954 lt!1567547))) (= lambda!140306 lambda!140200))))

(declare-fun bs!631229 () Bool)

(assert (= bs!631229 (and b!4355942 b!4355833)))

(assert (=> bs!631229 (= (= (t!355963 (toList!2954 lt!1567553)) (Cons!48919 (h!54466 (toList!2954 lt!1567542)) (t!355963 (toList!2954 lt!1567542)))) (= lambda!140306 lambda!140279))))

(assert (=> b!4355942 true))

(declare-fun bs!631230 () Bool)

(declare-fun b!4355937 () Bool)

(assert (= bs!631230 (and b!4355937 b!4355523)))

(declare-fun lambda!140307 () Int)

(assert (=> bs!631230 (= (= (Cons!48919 (h!54466 (toList!2954 lt!1567553)) (t!355963 (toList!2954 lt!1567553))) (toList!2954 lt!1567553)) (= lambda!140307 lambda!140245))))

(declare-fun bs!631231 () Bool)

(assert (= bs!631231 (and b!4355937 b!4355175)))

(assert (=> bs!631231 (= (= (Cons!48919 (h!54466 (toList!2954 lt!1567553)) (t!355963 (toList!2954 lt!1567553))) (toList!2954 lt!1567547)) (= lambda!140307 lambda!140202))))

(declare-fun bs!631232 () Bool)

(assert (= bs!631232 (and b!4355937 b!4355351)))

(assert (=> bs!631232 (= (= (Cons!48919 (h!54466 (toList!2954 lt!1567553)) (t!355963 (toList!2954 lt!1567553))) (toList!2954 lt!1567542)) (= lambda!140307 lambda!140216))))

(declare-fun bs!631233 () Bool)

(assert (= bs!631233 (and b!4355937 b!4355340)))

(assert (=> bs!631233 (= (= (Cons!48919 (h!54466 (toList!2954 lt!1567553)) (t!355963 (toList!2954 lt!1567553))) (toList!2954 lt!1567547)) (= lambda!140307 lambda!140214))))

(declare-fun bs!631234 () Bool)

(assert (= bs!631234 (and b!4355937 b!4355176)))

(assert (=> bs!631234 (= (= (Cons!48919 (h!54466 (toList!2954 lt!1567553)) (t!355963 (toList!2954 lt!1567553))) (Cons!48919 (h!54466 (toList!2954 lt!1567547)) (t!355963 (toList!2954 lt!1567547)))) (= lambda!140307 lambda!140201))))

(declare-fun bs!631235 () Bool)

(assert (= bs!631235 (and b!4355937 b!4355832)))

(assert (=> bs!631235 (= (= (Cons!48919 (h!54466 (toList!2954 lt!1567553)) (t!355963 (toList!2954 lt!1567553))) (toList!2954 lt!1567542)) (= lambda!140307 lambda!140281))))

(declare-fun bs!631236 () Bool)

(assert (= bs!631236 (and b!4355937 b!4355942)))

(assert (=> bs!631236 (= (= (Cons!48919 (h!54466 (toList!2954 lt!1567553)) (t!355963 (toList!2954 lt!1567553))) (t!355963 (toList!2954 lt!1567553))) (= lambda!140307 lambda!140306))))

(declare-fun bs!631237 () Bool)

(assert (= bs!631237 (and b!4355937 b!4355838)))

(assert (=> bs!631237 (= (= (Cons!48919 (h!54466 (toList!2954 lt!1567553)) (t!355963 (toList!2954 lt!1567553))) (t!355963 (toList!2954 lt!1567542))) (= lambda!140307 lambda!140277))))

(declare-fun bs!631238 () Bool)

(assert (= bs!631238 (and b!4355937 b!4355181)))

(assert (=> bs!631238 (= (= (Cons!48919 (h!54466 (toList!2954 lt!1567553)) (t!355963 (toList!2954 lt!1567553))) (t!355963 (toList!2954 lt!1567547))) (= lambda!140307 lambda!140200))))

(declare-fun bs!631239 () Bool)

(assert (= bs!631239 (and b!4355937 b!4355833)))

(assert (=> bs!631239 (= (= (Cons!48919 (h!54466 (toList!2954 lt!1567553)) (t!355963 (toList!2954 lt!1567553))) (Cons!48919 (h!54466 (toList!2954 lt!1567542)) (t!355963 (toList!2954 lt!1567542)))) (= lambda!140307 lambda!140279))))

(assert (=> b!4355937 true))

(declare-fun bs!631240 () Bool)

(declare-fun b!4355936 () Bool)

(assert (= bs!631240 (and b!4355936 b!4355523)))

(declare-fun lambda!140308 () Int)

(assert (=> bs!631240 (= lambda!140308 lambda!140245)))

(declare-fun bs!631241 () Bool)

(assert (= bs!631241 (and b!4355936 b!4355175)))

(assert (=> bs!631241 (= (= (toList!2954 lt!1567553) (toList!2954 lt!1567547)) (= lambda!140308 lambda!140202))))

(declare-fun bs!631242 () Bool)

(assert (= bs!631242 (and b!4355936 b!4355351)))

(assert (=> bs!631242 (= (= (toList!2954 lt!1567553) (toList!2954 lt!1567542)) (= lambda!140308 lambda!140216))))

(declare-fun bs!631243 () Bool)

(assert (= bs!631243 (and b!4355936 b!4355176)))

(assert (=> bs!631243 (= (= (toList!2954 lt!1567553) (Cons!48919 (h!54466 (toList!2954 lt!1567547)) (t!355963 (toList!2954 lt!1567547)))) (= lambda!140308 lambda!140201))))

(declare-fun bs!631244 () Bool)

(assert (= bs!631244 (and b!4355936 b!4355832)))

(assert (=> bs!631244 (= (= (toList!2954 lt!1567553) (toList!2954 lt!1567542)) (= lambda!140308 lambda!140281))))

(declare-fun bs!631245 () Bool)

(assert (= bs!631245 (and b!4355936 b!4355942)))

(assert (=> bs!631245 (= (= (toList!2954 lt!1567553) (t!355963 (toList!2954 lt!1567553))) (= lambda!140308 lambda!140306))))

(declare-fun bs!631246 () Bool)

(assert (= bs!631246 (and b!4355936 b!4355838)))

(assert (=> bs!631246 (= (= (toList!2954 lt!1567553) (t!355963 (toList!2954 lt!1567542))) (= lambda!140308 lambda!140277))))

(declare-fun bs!631247 () Bool)

(assert (= bs!631247 (and b!4355936 b!4355181)))

(assert (=> bs!631247 (= (= (toList!2954 lt!1567553) (t!355963 (toList!2954 lt!1567547))) (= lambda!140308 lambda!140200))))

(declare-fun bs!631248 () Bool)

(assert (= bs!631248 (and b!4355936 b!4355833)))

(assert (=> bs!631248 (= (= (toList!2954 lt!1567553) (Cons!48919 (h!54466 (toList!2954 lt!1567542)) (t!355963 (toList!2954 lt!1567542)))) (= lambda!140308 lambda!140279))))

(declare-fun bs!631249 () Bool)

(assert (= bs!631249 (and b!4355936 b!4355937)))

(assert (=> bs!631249 (= (= (toList!2954 lt!1567553) (Cons!48919 (h!54466 (toList!2954 lt!1567553)) (t!355963 (toList!2954 lt!1567553)))) (= lambda!140308 lambda!140307))))

(declare-fun bs!631250 () Bool)

(assert (= bs!631250 (and b!4355936 b!4355340)))

(assert (=> bs!631250 (= (= (toList!2954 lt!1567553) (toList!2954 lt!1567547)) (= lambda!140308 lambda!140214))))

(assert (=> b!4355936 true))

(declare-fun bs!631251 () Bool)

(declare-fun b!4355938 () Bool)

(assert (= bs!631251 (and b!4355938 b!4355524)))

(declare-fun lambda!140309 () Int)

(assert (=> bs!631251 (= lambda!140309 lambda!140246)))

(declare-fun bs!631252 () Bool)

(assert (= bs!631252 (and b!4355938 b!4355177)))

(assert (=> bs!631252 (= lambda!140309 lambda!140203)))

(declare-fun bs!631253 () Bool)

(assert (= bs!631253 (and b!4355938 b!4355341)))

(assert (=> bs!631253 (= lambda!140309 lambda!140215)))

(declare-fun bs!631254 () Bool)

(assert (= bs!631254 (and b!4355938 b!4355834)))

(assert (=> bs!631254 (= lambda!140309 lambda!140282)))

(declare-fun bs!631255 () Bool)

(assert (= bs!631255 (and b!4355938 b!4355352)))

(assert (=> bs!631255 (= lambda!140309 lambda!140217)))

(declare-fun b!4355935 () Bool)

(declare-fun e!2710748 () Unit!71399)

(declare-fun Unit!71586 () Unit!71399)

(assert (=> b!4355935 (= e!2710748 Unit!71586)))

(declare-fun res!1790184 () Bool)

(declare-fun e!2710746 () Bool)

(assert (=> b!4355936 (=> (not res!1790184) (not e!2710746))))

(declare-fun lt!1568456 () List!49046)

(assert (=> b!4355936 (= res!1790184 (forall!9113 lt!1568456 lambda!140308))))

(declare-fun e!2710749 () List!49046)

(assert (=> b!4355937 (= e!2710749 (Cons!48922 (_1!27449 (h!54466 (toList!2954 lt!1567553))) (getKeysList!122 (t!355963 (toList!2954 lt!1567553)))))))

(declare-fun c!740608 () Bool)

(assert (=> b!4355937 (= c!740608 (containsKey!681 (t!355963 (toList!2954 lt!1567553)) (_1!27449 (h!54466 (toList!2954 lt!1567553)))))))

(declare-fun lt!1568452 () Unit!71399)

(declare-fun e!2710747 () Unit!71399)

(assert (=> b!4355937 (= lt!1568452 e!2710747)))

(declare-fun c!740607 () Bool)

(assert (=> b!4355937 (= c!740607 (contains!11120 (getKeysList!122 (t!355963 (toList!2954 lt!1567553))) (_1!27449 (h!54466 (toList!2954 lt!1567553)))))))

(declare-fun lt!1568458 () Unit!71399)

(assert (=> b!4355937 (= lt!1568458 e!2710748)))

(declare-fun lt!1568457 () List!49046)

(assert (=> b!4355937 (= lt!1568457 (getKeysList!122 (t!355963 (toList!2954 lt!1567553))))))

(declare-fun lt!1568453 () Unit!71399)

(assert (=> b!4355937 (= lt!1568453 (lemmaForallContainsAddHeadPreserves!23 (t!355963 (toList!2954 lt!1567553)) lt!1568457 (h!54466 (toList!2954 lt!1567553))))))

(assert (=> b!4355937 (forall!9113 lt!1568457 lambda!140307)))

(declare-fun lt!1568455 () Unit!71399)

(assert (=> b!4355937 (= lt!1568455 lt!1568453)))

(assert (=> b!4355938 (= e!2710746 (= (content!7712 lt!1568456) (content!7712 (map!10640 (toList!2954 lt!1567553) lambda!140309))))))

(declare-fun b!4355939 () Bool)

(declare-fun res!1790185 () Bool)

(assert (=> b!4355939 (=> (not res!1790185) (not e!2710746))))

(assert (=> b!4355939 (= res!1790185 (= (length!58 lt!1568456) (length!59 (toList!2954 lt!1567553))))))

(declare-fun d!1287578 () Bool)

(assert (=> d!1287578 e!2710746))

(declare-fun res!1790186 () Bool)

(assert (=> d!1287578 (=> (not res!1790186) (not e!2710746))))

(assert (=> d!1287578 (= res!1790186 (noDuplicate!601 lt!1568456))))

(assert (=> d!1287578 (= lt!1568456 e!2710749)))

(declare-fun c!740609 () Bool)

(assert (=> d!1287578 (= c!740609 ((_ is Cons!48919) (toList!2954 lt!1567553)))))

(assert (=> d!1287578 (invariantList!674 (toList!2954 lt!1567553))))

(assert (=> d!1287578 (= (getKeysList!122 (toList!2954 lt!1567553)) lt!1568456)))

(declare-fun b!4355940 () Bool)

(assert (=> b!4355940 false))

(declare-fun Unit!71587 () Unit!71399)

(assert (=> b!4355940 (= e!2710747 Unit!71587)))

(declare-fun b!4355941 () Bool)

(declare-fun Unit!71588 () Unit!71399)

(assert (=> b!4355941 (= e!2710747 Unit!71588)))

(assert (=> b!4355942 false))

(declare-fun lt!1568454 () Unit!71399)

(assert (=> b!4355942 (= lt!1568454 (forallContained!1754 (getKeysList!122 (t!355963 (toList!2954 lt!1567553))) lambda!140306 (_1!27449 (h!54466 (toList!2954 lt!1567553)))))))

(declare-fun Unit!71589 () Unit!71399)

(assert (=> b!4355942 (= e!2710748 Unit!71589)))

(declare-fun b!4355943 () Bool)

(assert (=> b!4355943 (= e!2710749 Nil!48922)))

(assert (= (and d!1287578 c!740609) b!4355937))

(assert (= (and d!1287578 (not c!740609)) b!4355943))

(assert (= (and b!4355937 c!740608) b!4355940))

(assert (= (and b!4355937 (not c!740608)) b!4355941))

(assert (= (and b!4355937 c!740607) b!4355942))

(assert (= (and b!4355937 (not c!740607)) b!4355935))

(assert (= (and d!1287578 res!1790186) b!4355939))

(assert (= (and b!4355939 res!1790185) b!4355936))

(assert (= (and b!4355936 res!1790184) b!4355938))

(declare-fun m!4969539 () Bool)

(assert (=> b!4355937 m!4969539))

(declare-fun m!4969541 () Bool)

(assert (=> b!4355937 m!4969541))

(assert (=> b!4355937 m!4969539))

(declare-fun m!4969543 () Bool)

(assert (=> b!4355937 m!4969543))

(declare-fun m!4969545 () Bool)

(assert (=> b!4355937 m!4969545))

(declare-fun m!4969547 () Bool)

(assert (=> b!4355937 m!4969547))

(declare-fun m!4969549 () Bool)

(assert (=> b!4355936 m!4969549))

(declare-fun m!4969551 () Bool)

(assert (=> b!4355939 m!4969551))

(assert (=> b!4355939 m!4968577))

(declare-fun m!4969553 () Bool)

(assert (=> b!4355938 m!4969553))

(declare-fun m!4969555 () Bool)

(assert (=> b!4355938 m!4969555))

(assert (=> b!4355938 m!4969555))

(declare-fun m!4969557 () Bool)

(assert (=> b!4355938 m!4969557))

(assert (=> b!4355942 m!4969539))

(assert (=> b!4355942 m!4969539))

(declare-fun m!4969559 () Bool)

(assert (=> b!4355942 m!4969559))

(declare-fun m!4969561 () Bool)

(assert (=> d!1287578 m!4969561))

(assert (=> d!1287578 m!4968783))

(assert (=> b!4355064 d!1287578))

(assert (=> b!4354801 d!1286946))

(declare-fun d!1287580 () Bool)

(declare-fun choose!26890 (Hashable!4877 K!10280) (_ BitVec 64))

(assert (=> d!1287580 (= (hash!1543 hashF!1247 key!3918) (choose!26890 hashF!1247 key!3918))))

(declare-fun bs!631256 () Bool)

(assert (= bs!631256 d!1287580))

(declare-fun m!4969563 () Bool)

(assert (=> bs!631256 m!4969563))

(assert (=> d!1286966 d!1287580))

(declare-fun b!4355944 () Bool)

(declare-fun e!2710750 () Bool)

(declare-fun tp!1330083 () Bool)

(assert (=> b!4355944 (= e!2710750 (and tp_is_empty!25177 tp_is_empty!25179 tp!1330083))))

(assert (=> b!4355091 (= tp!1330078 e!2710750)))

(assert (= (and b!4355091 ((_ is Cons!48919) (_2!27450 (h!54467 (toList!2953 lm!1707))))) b!4355944))

(declare-fun b!4355945 () Bool)

(declare-fun e!2710751 () Bool)

(declare-fun tp!1330084 () Bool)

(declare-fun tp!1330085 () Bool)

(assert (=> b!4355945 (= e!2710751 (and tp!1330084 tp!1330085))))

(assert (=> b!4355091 (= tp!1330079 e!2710751)))

(assert (= (and b!4355091 ((_ is Cons!48920) (t!355964 (toList!2953 lm!1707)))) b!4355945))

(declare-fun b!4355946 () Bool)

(declare-fun e!2710752 () Bool)

(declare-fun tp!1330086 () Bool)

(assert (=> b!4355946 (= e!2710752 (and tp_is_empty!25177 tp_is_empty!25179 tp!1330086))))

(assert (=> b!4355096 (= tp!1330082 e!2710752)))

(assert (= (and b!4355096 ((_ is Cons!48919) (t!355963 (t!355963 newBucket!200)))) b!4355946))

(declare-fun b_lambda!131063 () Bool)

(assert (= b_lambda!131043 (or start!421280 b_lambda!131063)))

(declare-fun bs!631257 () Bool)

(declare-fun d!1287582 () Bool)

(assert (= bs!631257 (and d!1287582 start!421280)))

(assert (=> bs!631257 (= (dynLambda!20629 lambda!140085 (h!54467 (t!355964 (toList!2953 lm!1707)))) (noDuplicateKeys!485 (_2!27450 (h!54467 (t!355964 (toList!2953 lm!1707))))))))

(assert (=> bs!631257 m!4969363))

(assert (=> b!4355823 d!1287582))

(declare-fun b_lambda!131065 () Bool)

(assert (= b_lambda!131003 (or start!421280 b_lambda!131065)))

(declare-fun bs!631258 () Bool)

(declare-fun d!1287584 () Bool)

(assert (= bs!631258 (and d!1287584 start!421280)))

(assert (=> bs!631258 (= (dynLambda!20629 lambda!140085 (h!54467 (toList!2953 (+!627 lm!1707 (tuple2!48313 hash!377 newBucket!200))))) (noDuplicateKeys!485 (_2!27450 (h!54467 (toList!2953 (+!627 lm!1707 (tuple2!48313 hash!377 newBucket!200)))))))))

(declare-fun m!4969565 () Bool)

(assert (=> bs!631258 m!4969565))

(assert (=> b!4355583 d!1287584))

(declare-fun b_lambda!131067 () Bool)

(assert (= b_lambda!131013 (or b!4355039 b_lambda!131067)))

(declare-fun bs!631259 () Bool)

(declare-fun d!1287586 () Bool)

(assert (= bs!631259 (and d!1287586 b!4355039)))

(assert (=> bs!631259 (= (dynLambda!20630 lambda!140172 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (contains!11115 lt!1567836 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(assert (=> bs!631259 m!4967845))

(assert (=> b!4355609 d!1287586))

(declare-fun b_lambda!131069 () Bool)

(assert (= b_lambda!131061 (or d!1287072 b_lambda!131069)))

(declare-fun bs!631260 () Bool)

(declare-fun d!1287588 () Bool)

(assert (= bs!631260 (and d!1287588 d!1287072)))

(assert (=> bs!631260 (= (dynLambda!20629 lambda!140182 (h!54467 (t!355964 (toList!2953 lm!1707)))) (noDuplicateKeys!485 (_2!27450 (h!54467 (t!355964 (toList!2953 lm!1707))))))))

(assert (=> bs!631260 m!4969363))

(assert (=> b!4355925 d!1287588))

(declare-fun b_lambda!131071 () Bool)

(assert (= b_lambda!131011 (or b!4355039 b_lambda!131071)))

(assert (=> d!1287370 d!1287586))

(declare-fun b_lambda!131073 () Bool)

(assert (= b_lambda!130995 (or d!1287046 b_lambda!131073)))

(declare-fun bs!631261 () Bool)

(declare-fun d!1287590 () Bool)

(assert (= bs!631261 (and d!1287590 d!1287046)))

(assert (=> bs!631261 (= (dynLambda!20629 lambda!140174 (h!54467 (toList!2953 lt!1567543))) (noDuplicateKeys!485 (_2!27450 (h!54467 (toList!2953 lt!1567543)))))))

(assert (=> bs!631261 m!4968113))

(assert (=> b!4355393 d!1287590))

(declare-fun b_lambda!131075 () Bool)

(assert (= b_lambda!131007 (or d!1287078 b_lambda!131075)))

(declare-fun bs!631262 () Bool)

(declare-fun d!1287592 () Bool)

(assert (= bs!631262 (and d!1287592 d!1287078)))

(assert (=> bs!631262 (= (dynLambda!20629 lambda!140185 (h!54467 (toList!2953 lm!1707))) (allKeysSameHash!443 (_2!27450 (h!54467 (toList!2953 lm!1707))) (_1!27450 (h!54467 (toList!2953 lm!1707))) hashF!1247))))

(declare-fun m!4969567 () Bool)

(assert (=> bs!631262 m!4969567))

(assert (=> b!4355597 d!1287592))

(declare-fun b_lambda!131077 () Bool)

(assert (= b_lambda!131017 (or b!4355039 b_lambda!131077)))

(declare-fun bs!631263 () Bool)

(declare-fun d!1287594 () Bool)

(assert (= bs!631263 (and d!1287594 b!4355039)))

(assert (=> bs!631263 (= (dynLambda!20630 lambda!140171 (h!54466 (toList!2954 lt!1567542))) (contains!11115 lt!1567542 (_1!27449 (h!54466 (toList!2954 lt!1567542)))))))

(declare-fun m!4969569 () Bool)

(assert (=> bs!631263 m!4969569))

(assert (=> b!4355643 d!1287594))

(declare-fun b_lambda!131079 () Bool)

(assert (= b_lambda!130993 (or d!1287036 b_lambda!131079)))

(declare-fun bs!631264 () Bool)

(declare-fun d!1287596 () Bool)

(assert (= bs!631264 (and d!1287596 d!1287036)))

(assert (=> bs!631264 (= (dynLambda!20630 lambda!140173 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707))))) (contains!11115 lt!1567853 (_1!27449 (h!54466 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))))

(declare-fun m!4969571 () Bool)

(assert (=> bs!631264 m!4969571))

(assert (=> b!4355389 d!1287596))

(declare-fun b_lambda!131081 () Bool)

(assert (= b_lambda!130979 (or d!1287054 b_lambda!131081)))

(declare-fun bs!631265 () Bool)

(declare-fun d!1287598 () Bool)

(assert (= bs!631265 (and d!1287598 d!1287054)))

(assert (=> bs!631265 (= (dynLambda!20629 lambda!140175 (h!54467 (toList!2953 (+!627 lt!1567543 lt!1567548)))) (noDuplicateKeys!485 (_2!27450 (h!54467 (toList!2953 (+!627 lt!1567543 lt!1567548))))))))

(assert (=> bs!631265 m!4968559))

(assert (=> b!4355119 d!1287598))

(declare-fun b_lambda!131083 () Bool)

(assert (= b_lambda!130985 (or d!1287036 b_lambda!131083)))

(declare-fun bs!631266 () Bool)

(declare-fun d!1287600 () Bool)

(assert (= bs!631266 (and d!1287600 d!1287036)))

(assert (=> bs!631266 (= (dynLambda!20630 lambda!140173 (h!54466 (toList!2954 lt!1567542))) (contains!11115 lt!1567853 (_1!27449 (h!54466 (toList!2954 lt!1567542)))))))

(declare-fun m!4969573 () Bool)

(assert (=> bs!631266 m!4969573))

(assert (=> b!4355295 d!1287600))

(declare-fun b_lambda!131085 () Bool)

(assert (= b_lambda!131009 (or b!4355039 b_lambda!131085)))

(declare-fun bs!631267 () Bool)

(declare-fun d!1287602 () Bool)

(assert (= bs!631267 (and d!1287602 b!4355039)))

(assert (=> bs!631267 (= (dynLambda!20630 lambda!140172 (h!54466 (toList!2954 lt!1567542))) (contains!11115 lt!1567836 (_1!27449 (h!54466 (toList!2954 lt!1567542)))))))

(declare-fun m!4969575 () Bool)

(assert (=> bs!631267 m!4969575))

(assert (=> b!4355599 d!1287602))

(declare-fun b_lambda!131087 () Bool)

(assert (= b_lambda!131023 (or d!1287034 b_lambda!131087)))

(declare-fun bs!631268 () Bool)

(declare-fun d!1287604 () Bool)

(assert (= bs!631268 (and d!1287604 d!1287034)))

(assert (=> bs!631268 (= (dynLambda!20630 lambda!140109 (h!54466 newBucket!200)) (= (hash!1537 hashF!1247 (_1!27449 (h!54466 newBucket!200))) hash!377))))

(declare-fun m!4969577 () Bool)

(assert (=> bs!631268 m!4969577))

(assert (=> b!4355680 d!1287604))

(declare-fun b_lambda!131089 () Bool)

(assert (= b_lambda!130983 (or d!1287064 b_lambda!131089)))

(declare-fun bs!631269 () Bool)

(declare-fun d!1287606 () Bool)

(assert (= bs!631269 (and d!1287606 d!1287064)))

(assert (=> bs!631269 (= (dynLambda!20629 lambda!140181 (h!54467 (toList!2953 lt!1567543))) (noDuplicateKeys!485 (_2!27450 (h!54467 (toList!2953 lt!1567543)))))))

(assert (=> bs!631269 m!4968113))

(assert (=> b!4355235 d!1287606))

(declare-fun b_lambda!131091 () Bool)

(assert (= b_lambda!131045 (or start!421280 b_lambda!131091)))

(assert (=> d!1287486 d!1287090))

(declare-fun b_lambda!131093 () Bool)

(assert (= b_lambda!131001 (or start!421280 b_lambda!131093)))

(declare-fun bs!631270 () Bool)

(declare-fun d!1287608 () Bool)

(assert (= bs!631270 (and d!1287608 start!421280)))

(assert (=> bs!631270 (= (dynLambda!20629 lambda!140085 (h!54467 (t!355964 (toList!2953 lt!1567544)))) (noDuplicateKeys!485 (_2!27450 (h!54467 (t!355964 (toList!2953 lt!1567544))))))))

(declare-fun m!4969579 () Bool)

(assert (=> bs!631270 m!4969579))

(assert (=> b!4355581 d!1287608))

(declare-fun b_lambda!131095 () Bool)

(assert (= b_lambda!130981 (or d!1287028 b_lambda!131095)))

(declare-fun bs!631271 () Bool)

(declare-fun d!1287610 () Bool)

(assert (= bs!631271 (and d!1287610 d!1287028)))

(assert (=> bs!631271 (= (dynLambda!20629 lambda!140106 (h!54467 (toList!2953 lm!1707))) (noDuplicateKeys!485 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))

(assert (=> bs!631271 m!4967855))

(assert (=> b!4355221 d!1287610))

(declare-fun b_lambda!131097 () Bool)

(assert (= b_lambda!130991 (or d!1287062 b_lambda!131097)))

(declare-fun bs!631272 () Bool)

(declare-fun d!1287612 () Bool)

(assert (= bs!631272 (and d!1287612 d!1287062)))

(assert (=> bs!631272 (= (dynLambda!20629 lambda!140178 (h!54467 (toList!2953 lm!1707))) (noDuplicateKeys!485 (_2!27450 (h!54467 (toList!2953 lm!1707)))))))

(assert (=> bs!631272 m!4967855))

(assert (=> b!4355383 d!1287612))

(declare-fun b_lambda!131099 () Bool)

(assert (= b_lambda!131021 (or b!4355039 b_lambda!131099)))

(declare-fun bs!631273 () Bool)

(declare-fun d!1287614 () Bool)

(assert (= bs!631273 (and d!1287614 b!4355039)))

(assert (=> bs!631273 (= (dynLambda!20630 lambda!140172 (h!54466 (toList!2954 lt!1567845))) (contains!11115 lt!1567836 (_1!27449 (h!54466 (toList!2954 lt!1567845)))))))

(declare-fun m!4969581 () Bool)

(assert (=> bs!631273 m!4969581))

(assert (=> b!4355667 d!1287614))

(check-sat (not b!4355340) (not b!4355526) (not d!1287514) (not b!4355826) (not bm!302677) (not b!4355857) (not b_lambda!131077) (not b!4355611) (not b!4355614) (not b_lambda!131071) (not b_lambda!131089) (not bs!631272) (not b!4355424) (not b!4355946) (not bm!302713) (not d!1287230) (not b!4355400) (not d!1287252) (not d!1287504) (not b!4355238) (not d!1287274) (not bs!631271) (not d!1287182) (not d!1287484) (not b!4355832) (not b!4355794) (not bs!631266) (not b!4355618) (not b!4355793) (not d!1287110) (not b!4355268) (not bs!631269) (not d!1287546) (not b!4355573) (not b!4355406) (not bm!302675) (not bm!302701) (not b!4355239) (not b!4355178) (not b!4355825) (not b!4355586) (not d!1287482) (not d!1287394) (not b_lambda!131055) (not d!1287378) (not d!1287268) (not d!1287134) (not b!4355795) (not b!4355236) (not b_lambda!131063) (not d!1287266) (not b!4355672) (not b!4355620) (not d!1287578) (not b!4355824) (not b_lambda!131099) (not bm!302661) (not b!4355358) (not b!4355175) (not b!4355674) (not b!4355612) (not b!4355833) (not bm!302678) (not b!4355856) (not b_lambda!131091) (not b!4355341) (not b!4355899) (not b!4355685) (not bm!302670) (not b!4355945) (not b!4355697) (not b!4355558) (not b!4355497) (not b!4355903) (not d!1287342) (not b_lambda!131085) tp_is_empty!25179 (not b!4355670) (not b!4355566) (not b!4355386) (not d!1287318) (not b!4355905) (not bs!631265) (not b!4355906) (not b_lambda!130975) (not b!4355189) (not d!1287170) (not b!4355926) (not b!4355403) (not b_lambda!131083) (not b!4355838) (not b!4355790) (not b!4355939) (not b!4355800) (not d!1287370) (not b!4355552) (not b!4355624) (not b!4355575) (not b!4355222) (not b!4355608) (not b!4355679) (not bm!302711) (not d!1287158) (not b!4355554) (not b!4355676) (not b!4355908) (not b!4355528) (not d!1287220) (not d!1287148) (not bm!302636) (not d!1287284) (not d!1287474) (not b!4355557) (not b!4355694) (not b!4355859) (not b!4355181) (not b!4355944) (not b!4355546) (not d!1287334) (not b!4355240) (not b!4355423) (not bs!631259) (not d!1287254) (not b!4355598) (not d!1287168) (not b!4355713) (not b!4355266) (not d!1287376) (not d!1287332) (not b!4355177) (not bm!302714) (not b!4355854) (not b!4355578) (not d!1287326) (not b!4355799) (not b!4355681) (not b!4355934) (not b!4355675) (not b!4355938) (not d!1287184) (not b!4355234) (not b!4355565) (not b!4355527) (not d!1287228) (not b!4355523) (not b!4355936) (not d!1287354) (not bm!302660) (not b!4355691) (not bs!631257) (not bs!631270) (not b!4355412) (not d!1287348) (not d!1287328) (not b!4355846) (not b!4355669) (not d!1287302) (not b!4355390) (not d!1287272) (not bm!302700) (not bm!302635) (not bm!302712) (not b!4355365) (not bs!631260) (not d!1287430) (not b_lambda!131073) (not d!1287102) (not d!1287436) (not bm!302715) (not b_lambda!130971) (not d!1287402) (not d!1287198) (not b!4355491) (not d!1287438) (not b!4355296) (not b!4355388) (not b!4355796) (not b!4355615) (not d!1287364) (not b!4355522) (not b!4355494) (not b!4355610) (not b!4355600) (not d!1287128) (not b_lambda!131093) (not b_lambda!131087) (not b_lambda!131081) (not b_lambda!130977) (not b!4355696) (not b!4355621) (not b_lambda!131069) (not b!4355585) (not b!4355937) (not b!4355220) (not b!4355638) (not d!1287166) (not d!1287224) (not b!4355549) (not b!4355536) (not b!4355904) (not d!1287114) (not d!1287208) (not b!4355193) (not b_lambda!130999) (not bs!631268) (not d!1287260) (not bs!631262) (not b!4355582) (not bm!302710) (not b!4355668) (not b!4355693) (not bs!631273) (not d!1287412) (not d!1287300) tp_is_empty!25177 (not d!1287164) (not b_lambda!131079) (not b!4355489) (not b_lambda!131075) (not b!4355690) (not d!1287200) (not b!4355410) (not d!1287488) (not b!4355555) (not b!4355617) (not b_lambda!131067) (not d!1287336) (not b!4355524) (not bm!302662) (not d!1287280) (not b!4355871) (not b!4355706) (not b!4355493) (not d!1287426) (not bs!631264) (not d!1287340) (not b!4355241) (not b!4355637) (not b!4355801) (not b!4355196) (not b!4355289) (not b!4355191) (not b!4355673) (not b!4355339) (not b!4355584) (not b!4355829) (not d!1287248) (not b!4355384) (not b!4355622) (not b!4355572) (not b_lambda!131097) (not b!4355835) (not b!4355350) (not d!1287278) (not b_lambda!131065) (not b!4355397) (not bm!302681) (not bm!302658) (not bm!302676) (not bs!631258) (not b!4355176) (not b!4355495) (not b!4355378) (not b!4355345) (not b!4355352) (not b!4355520) (not b!4355417) (not b!4355560) (not b!4355391) (not b!4355488) (not b!4355644) (not bm!302682) (not d!1287566) (not b!4355580) (not b!4355855) (not b_lambda!130973) (not b!4355695) (not d!1287206) (not b!4355834) (not b!4355616) (not b!4355351) (not b!4355678) (not bs!631261) (not d!1287176) (not b!4355135) (not bm!302637) (not b_lambda!131095) (not bs!631263) (not b!4355942) (not b!4355120) (not b!4355563) (not b!4355852) (not d!1287162) (not b!4355845) (not d!1287572) (not d!1287532) (not d!1287362) (not b!4355414) (not b!4355543) (not d!1287240) (not b!4355394) (not d!1287580) (not bs!631267) (not b!4355316) (not b!4355190) (not b!4355356) (not b!4355392) (not b!4355712) (not b!4355237))
(check-sat)
