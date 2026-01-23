; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!424224 () Bool)

(assert start!424224)

(declare-fun b!4369667 () Bool)

(declare-fun e!2719594 () Bool)

(declare-datatypes ((K!10465 0))(
  ( (K!10466 (val!16643 Int)) )
))
(declare-datatypes ((V!10711 0))(
  ( (V!10712 (val!16644 Int)) )
))
(declare-datatypes ((tuple2!48606 0))(
  ( (tuple2!48607 (_1!27597 K!10465) (_2!27597 V!10711)) )
))
(declare-datatypes ((List!49228 0))(
  ( (Nil!49104) (Cons!49104 (h!54689 tuple2!48606) (t!356150 List!49228)) )
))
(declare-fun lt!1581206 () List!49228)

(declare-fun key!3918 () K!10465)

(declare-fun containsKey!811 (List!49228 K!10465) Bool)

(assert (=> b!4369667 (= e!2719594 (not (containsKey!811 lt!1581206 key!3918)))))

(declare-fun e!2719597 () Bool)

(assert (=> b!4369667 e!2719597))

(declare-fun res!1798103 () Bool)

(assert (=> b!4369667 (=> (not res!1798103) (not e!2719597))))

(declare-datatypes ((ListMap!2345 0))(
  ( (ListMap!2346 (toList!3101 List!49228)) )
))
(declare-fun lt!1581209 () ListMap!2345)

(declare-fun lt!1581208 () ListMap!2345)

(assert (=> b!4369667 (= res!1798103 (= lt!1581209 lt!1581208))))

(declare-fun lt!1581212 () List!49228)

(declare-fun lt!1581217 () ListMap!2345)

(declare-fun addToMapMapFromBucket!240 (List!49228 ListMap!2345) ListMap!2345)

(assert (=> b!4369667 (= lt!1581208 (addToMapMapFromBucket!240 lt!1581212 lt!1581217))))

(declare-fun newBucket!200 () List!49228)

(assert (=> b!4369667 (= lt!1581209 (addToMapMapFromBucket!240 newBucket!200 lt!1581217))))

(declare-datatypes ((tuple2!48608 0))(
  ( (tuple2!48609 (_1!27598 (_ BitVec 64)) (_2!27598 List!49228)) )
))
(declare-datatypes ((List!49229 0))(
  ( (Nil!49105) (Cons!49105 (h!54690 tuple2!48608) (t!356151 List!49229)) )
))
(declare-datatypes ((ListLongMap!1751 0))(
  ( (ListLongMap!1752 (toList!3102 List!49229)) )
))
(declare-fun lt!1581211 () ListLongMap!1751)

(declare-fun extractMap!618 (List!49229) ListMap!2345)

(assert (=> b!4369667 (= lt!1581209 (extractMap!618 (toList!3102 lt!1581211)))))

(declare-fun lm!1707 () ListLongMap!1751)

(assert (=> b!4369667 (= lt!1581217 (extractMap!618 (t!356151 (toList!3102 lm!1707))))))

(declare-fun b!4369668 () Bool)

(declare-fun res!1798106 () Bool)

(declare-fun e!2719593 () Bool)

(assert (=> b!4369668 (=> (not res!1798106) (not e!2719593))))

(declare-datatypes ((Hashable!4951 0))(
  ( (HashableExt!4950 (__x!30654 Int)) )
))
(declare-fun hashF!1247 () Hashable!4951)

(declare-fun allKeysSameHashInMap!663 (ListLongMap!1751 Hashable!4951) Bool)

(assert (=> b!4369668 (= res!1798106 (allKeysSameHashInMap!663 lm!1707 hashF!1247))))

(declare-fun b!4369669 () Bool)

(declare-fun res!1798107 () Bool)

(declare-fun e!2719595 () Bool)

(assert (=> b!4369669 (=> res!1798107 e!2719595)))

(declare-fun noDuplicateKeys!559 (List!49228) Bool)

(assert (=> b!4369669 (= res!1798107 (not (noDuplicateKeys!559 newBucket!200)))))

(declare-fun b!4369670 () Bool)

(declare-fun res!1798099 () Bool)

(assert (=> b!4369670 (=> (not res!1798099) (not e!2719593))))

(declare-fun contains!11403 (ListMap!2345 K!10465) Bool)

(assert (=> b!4369670 (= res!1798099 (contains!11403 (extractMap!618 (toList!3102 lm!1707)) key!3918))))

(declare-fun b!4369671 () Bool)

(declare-fun res!1798102 () Bool)

(assert (=> b!4369671 (=> (not res!1798102) (not e!2719593))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!11404 (ListLongMap!1751 (_ BitVec 64)) Bool)

(assert (=> b!4369671 (= res!1798102 (contains!11404 lm!1707 hash!377))))

(declare-fun b!4369672 () Bool)

(assert (=> b!4369672 (= e!2719593 (not e!2719595))))

(declare-fun res!1798100 () Bool)

(assert (=> b!4369672 (=> res!1798100 e!2719595)))

(assert (=> b!4369672 (= res!1798100 (not (= newBucket!200 lt!1581212)))))

(declare-fun lt!1581218 () tuple2!48606)

(assert (=> b!4369672 (= lt!1581212 (Cons!49104 lt!1581218 lt!1581206))))

(declare-fun lt!1581213 () List!49228)

(declare-fun removePairForKey!527 (List!49228 K!10465) List!49228)

(assert (=> b!4369672 (= lt!1581206 (removePairForKey!527 lt!1581213 key!3918))))

(declare-fun newValue!99 () V!10711)

(assert (=> b!4369672 (= lt!1581218 (tuple2!48607 key!3918 newValue!99))))

(declare-fun lt!1581210 () tuple2!48608)

(declare-fun lambda!143539 () Int)

(declare-datatypes ((Unit!73428 0))(
  ( (Unit!73429) )
))
(declare-fun lt!1581215 () Unit!73428)

(declare-fun forallContained!1873 (List!49229 Int tuple2!48608) Unit!73428)

(assert (=> b!4369672 (= lt!1581215 (forallContained!1873 (toList!3102 lm!1707) lambda!143539 lt!1581210))))

(declare-fun contains!11405 (List!49229 tuple2!48608) Bool)

(assert (=> b!4369672 (contains!11405 (toList!3102 lm!1707) lt!1581210)))

(assert (=> b!4369672 (= lt!1581210 (tuple2!48609 hash!377 lt!1581213))))

(declare-fun lt!1581207 () Unit!73428)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!404 (List!49229 (_ BitVec 64) List!49228) Unit!73428)

(assert (=> b!4369672 (= lt!1581207 (lemmaGetValueByKeyImpliesContainsTuple!404 (toList!3102 lm!1707) hash!377 lt!1581213))))

(declare-fun apply!11411 (ListLongMap!1751 (_ BitVec 64)) List!49228)

(assert (=> b!4369672 (= lt!1581213 (apply!11411 lm!1707 hash!377))))

(declare-fun b!4369673 () Bool)

(declare-fun e!2719598 () Bool)

(declare-fun tp!1330925 () Bool)

(assert (=> b!4369673 (= e!2719598 tp!1330925)))

(declare-fun b!4369674 () Bool)

(declare-fun res!1798098 () Bool)

(declare-fun e!2719596 () Bool)

(assert (=> b!4369674 (=> (not res!1798098) (not e!2719596))))

(declare-fun forall!9235 (List!49229 Int) Bool)

(assert (=> b!4369674 (= res!1798098 (forall!9235 (toList!3102 lt!1581211) lambda!143539))))

(declare-fun b!4369675 () Bool)

(assert (=> b!4369675 (= e!2719595 e!2719594)))

(declare-fun res!1798104 () Bool)

(assert (=> b!4369675 (=> res!1798104 e!2719594)))

(get-info :version)

(assert (=> b!4369675 (= res!1798104 (or (not ((_ is Cons!49105) (toList!3102 lm!1707))) (not (= (_1!27598 (h!54690 (toList!3102 lm!1707))) hash!377))))))

(assert (=> b!4369675 e!2719596))

(declare-fun res!1798105 () Bool)

(assert (=> b!4369675 (=> (not res!1798105) (not e!2719596))))

(assert (=> b!4369675 (= res!1798105 (forall!9235 (toList!3102 lt!1581211) lambda!143539))))

(declare-fun lt!1581214 () tuple2!48608)

(declare-fun +!749 (ListLongMap!1751 tuple2!48608) ListLongMap!1751)

(assert (=> b!4369675 (= lt!1581211 (+!749 lm!1707 lt!1581214))))

(assert (=> b!4369675 (= lt!1581214 (tuple2!48609 hash!377 newBucket!200))))

(declare-fun lt!1581216 () Unit!73428)

(declare-fun addValidProp!205 (ListLongMap!1751 Int (_ BitVec 64) List!49228) Unit!73428)

(assert (=> b!4369675 (= lt!1581216 (addValidProp!205 lm!1707 lambda!143539 hash!377 newBucket!200))))

(assert (=> b!4369675 (forall!9235 (toList!3102 lm!1707) lambda!143539)))

(declare-fun res!1798096 () Bool)

(assert (=> start!424224 (=> (not res!1798096) (not e!2719593))))

(assert (=> start!424224 (= res!1798096 (forall!9235 (toList!3102 lm!1707) lambda!143539))))

(assert (=> start!424224 e!2719593))

(declare-fun e!2719592 () Bool)

(assert (=> start!424224 e!2719592))

(assert (=> start!424224 true))

(declare-fun inv!64651 (ListLongMap!1751) Bool)

(assert (=> start!424224 (and (inv!64651 lm!1707) e!2719598)))

(declare-fun tp_is_empty!25473 () Bool)

(assert (=> start!424224 tp_is_empty!25473))

(declare-fun tp_is_empty!25475 () Bool)

(assert (=> start!424224 tp_is_empty!25475))

(declare-fun tp!1330926 () Bool)

(declare-fun b!4369676 () Bool)

(assert (=> b!4369676 (= e!2719592 (and tp_is_empty!25473 tp_is_empty!25475 tp!1330926))))

(declare-fun b!4369677 () Bool)

(declare-fun +!750 (ListMap!2345 tuple2!48606) ListMap!2345)

(assert (=> b!4369677 (= e!2719597 (= lt!1581208 (addToMapMapFromBucket!240 lt!1581206 (+!750 lt!1581217 lt!1581218))))))

(declare-fun b!4369678 () Bool)

(declare-fun res!1798097 () Bool)

(assert (=> b!4369678 (=> (not res!1798097) (not e!2719593))))

(declare-fun hash!1714 (Hashable!4951 K!10465) (_ BitVec 64))

(assert (=> b!4369678 (= res!1798097 (= (hash!1714 hashF!1247 key!3918) hash!377))))

(declare-fun b!4369679 () Bool)

(declare-fun res!1798101 () Bool)

(assert (=> b!4369679 (=> (not res!1798101) (not e!2719593))))

(declare-fun allKeysSameHash!517 (List!49228 (_ BitVec 64) Hashable!4951) Bool)

(assert (=> b!4369679 (= res!1798101 (allKeysSameHash!517 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4369680 () Bool)

(assert (=> b!4369680 (= e!2719596 (or (not ((_ is Cons!49105) (toList!3102 lm!1707))) (not (= (_1!27598 (h!54690 (toList!3102 lm!1707))) hash!377)) (= lt!1581211 (ListLongMap!1752 (Cons!49105 lt!1581214 (t!356151 (toList!3102 lm!1707)))))))))

(assert (= (and start!424224 res!1798096) b!4369668))

(assert (= (and b!4369668 res!1798106) b!4369678))

(assert (= (and b!4369678 res!1798097) b!4369679))

(assert (= (and b!4369679 res!1798101) b!4369670))

(assert (= (and b!4369670 res!1798099) b!4369671))

(assert (= (and b!4369671 res!1798102) b!4369672))

(assert (= (and b!4369672 (not res!1798100)) b!4369669))

(assert (= (and b!4369669 (not res!1798107)) b!4369675))

(assert (= (and b!4369675 res!1798105) b!4369674))

(assert (= (and b!4369674 res!1798098) b!4369680))

(assert (= (and b!4369675 (not res!1798104)) b!4369667))

(assert (= (and b!4369667 res!1798103) b!4369677))

(assert (= (and start!424224 ((_ is Cons!49104) newBucket!200)) b!4369676))

(assert (= start!424224 b!4369673))

(declare-fun m!4993627 () Bool)

(assert (=> b!4369674 m!4993627))

(declare-fun m!4993629 () Bool)

(assert (=> b!4369677 m!4993629))

(assert (=> b!4369677 m!4993629))

(declare-fun m!4993631 () Bool)

(assert (=> b!4369677 m!4993631))

(declare-fun m!4993633 () Bool)

(assert (=> b!4369668 m!4993633))

(declare-fun m!4993635 () Bool)

(assert (=> b!4369678 m!4993635))

(declare-fun m!4993637 () Bool)

(assert (=> b!4369670 m!4993637))

(assert (=> b!4369670 m!4993637))

(declare-fun m!4993639 () Bool)

(assert (=> b!4369670 m!4993639))

(declare-fun m!4993641 () Bool)

(assert (=> b!4369672 m!4993641))

(declare-fun m!4993643 () Bool)

(assert (=> b!4369672 m!4993643))

(declare-fun m!4993645 () Bool)

(assert (=> b!4369672 m!4993645))

(declare-fun m!4993647 () Bool)

(assert (=> b!4369672 m!4993647))

(declare-fun m!4993649 () Bool)

(assert (=> b!4369672 m!4993649))

(declare-fun m!4993651 () Bool)

(assert (=> b!4369667 m!4993651))

(declare-fun m!4993653 () Bool)

(assert (=> b!4369667 m!4993653))

(declare-fun m!4993655 () Bool)

(assert (=> b!4369667 m!4993655))

(declare-fun m!4993657 () Bool)

(assert (=> b!4369667 m!4993657))

(declare-fun m!4993659 () Bool)

(assert (=> b!4369667 m!4993659))

(declare-fun m!4993661 () Bool)

(assert (=> b!4369669 m!4993661))

(declare-fun m!4993663 () Bool)

(assert (=> b!4369671 m!4993663))

(declare-fun m!4993665 () Bool)

(assert (=> start!424224 m!4993665))

(declare-fun m!4993667 () Bool)

(assert (=> start!424224 m!4993667))

(declare-fun m!4993669 () Bool)

(assert (=> b!4369679 m!4993669))

(assert (=> b!4369675 m!4993627))

(declare-fun m!4993671 () Bool)

(assert (=> b!4369675 m!4993671))

(declare-fun m!4993673 () Bool)

(assert (=> b!4369675 m!4993673))

(assert (=> b!4369675 m!4993665))

(check-sat (not b!4369679) (not b!4369669) (not b!4369671) tp_is_empty!25473 (not b!4369674) (not start!424224) (not b!4369675) (not b!4369670) (not b!4369668) (not b!4369676) (not b!4369673) (not b!4369677) tp_is_empty!25475 (not b!4369678) (not b!4369667) (not b!4369672))
(check-sat)
(get-model)

(declare-fun d!1293951 () Bool)

(declare-fun lt!1581232 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7786 (List!49229) (InoxSet tuple2!48608))

(assert (=> d!1293951 (= lt!1581232 (select (content!7786 (toList!3102 lm!1707)) lt!1581210))))

(declare-fun e!2719620 () Bool)

(assert (=> d!1293951 (= lt!1581232 e!2719620)))

(declare-fun res!1798123 () Bool)

(assert (=> d!1293951 (=> (not res!1798123) (not e!2719620))))

(assert (=> d!1293951 (= res!1798123 ((_ is Cons!49105) (toList!3102 lm!1707)))))

(assert (=> d!1293951 (= (contains!11405 (toList!3102 lm!1707) lt!1581210) lt!1581232)))

(declare-fun b!4369708 () Bool)

(declare-fun e!2719621 () Bool)

(assert (=> b!4369708 (= e!2719620 e!2719621)))

(declare-fun res!1798124 () Bool)

(assert (=> b!4369708 (=> res!1798124 e!2719621)))

(assert (=> b!4369708 (= res!1798124 (= (h!54690 (toList!3102 lm!1707)) lt!1581210))))

(declare-fun b!4369709 () Bool)

(assert (=> b!4369709 (= e!2719621 (contains!11405 (t!356151 (toList!3102 lm!1707)) lt!1581210))))

(assert (= (and d!1293951 res!1798123) b!4369708))

(assert (= (and b!4369708 (not res!1798124)) b!4369709))

(declare-fun m!4993699 () Bool)

(assert (=> d!1293951 m!4993699))

(declare-fun m!4993701 () Bool)

(assert (=> d!1293951 m!4993701))

(declare-fun m!4993703 () Bool)

(assert (=> b!4369709 m!4993703))

(assert (=> b!4369672 d!1293951))

(declare-fun b!4369720 () Bool)

(declare-fun e!2719628 () List!49228)

(declare-fun e!2719627 () List!49228)

(assert (=> b!4369720 (= e!2719628 e!2719627)))

(declare-fun c!742908 () Bool)

(assert (=> b!4369720 (= c!742908 ((_ is Cons!49104) lt!1581213))))

(declare-fun b!4369721 () Bool)

(assert (=> b!4369721 (= e!2719627 (Cons!49104 (h!54689 lt!1581213) (removePairForKey!527 (t!356150 lt!1581213) key!3918)))))

(declare-fun d!1293959 () Bool)

(declare-fun lt!1581236 () List!49228)

(assert (=> d!1293959 (not (containsKey!811 lt!1581236 key!3918))))

(assert (=> d!1293959 (= lt!1581236 e!2719628)))

(declare-fun c!742907 () Bool)

(assert (=> d!1293959 (= c!742907 (and ((_ is Cons!49104) lt!1581213) (= (_1!27597 (h!54689 lt!1581213)) key!3918)))))

(assert (=> d!1293959 (noDuplicateKeys!559 lt!1581213)))

(assert (=> d!1293959 (= (removePairForKey!527 lt!1581213 key!3918) lt!1581236)))

(declare-fun b!4369722 () Bool)

(assert (=> b!4369722 (= e!2719627 Nil!49104)))

(declare-fun b!4369719 () Bool)

(assert (=> b!4369719 (= e!2719628 (t!356150 lt!1581213))))

(assert (= (and d!1293959 c!742907) b!4369719))

(assert (= (and d!1293959 (not c!742907)) b!4369720))

(assert (= (and b!4369720 c!742908) b!4369721))

(assert (= (and b!4369720 (not c!742908)) b!4369722))

(declare-fun m!4993707 () Bool)

(assert (=> b!4369721 m!4993707))

(declare-fun m!4993709 () Bool)

(assert (=> d!1293959 m!4993709))

(declare-fun m!4993711 () Bool)

(assert (=> d!1293959 m!4993711))

(assert (=> b!4369672 d!1293959))

(declare-fun d!1293963 () Bool)

(assert (=> d!1293963 (contains!11405 (toList!3102 lm!1707) (tuple2!48609 hash!377 lt!1581213))))

(declare-fun lt!1581239 () Unit!73428)

(declare-fun choose!27202 (List!49229 (_ BitVec 64) List!49228) Unit!73428)

(assert (=> d!1293963 (= lt!1581239 (choose!27202 (toList!3102 lm!1707) hash!377 lt!1581213))))

(declare-fun e!2719631 () Bool)

(assert (=> d!1293963 e!2719631))

(declare-fun res!1798128 () Bool)

(assert (=> d!1293963 (=> (not res!1798128) (not e!2719631))))

(declare-fun isStrictlySorted!138 (List!49229) Bool)

(assert (=> d!1293963 (= res!1798128 (isStrictlySorted!138 (toList!3102 lm!1707)))))

(assert (=> d!1293963 (= (lemmaGetValueByKeyImpliesContainsTuple!404 (toList!3102 lm!1707) hash!377 lt!1581213) lt!1581239)))

(declare-fun b!4369725 () Bool)

(declare-datatypes ((Option!10535 0))(
  ( (None!10534) (Some!10534 (v!43502 List!49228)) )
))
(declare-fun getValueByKey!521 (List!49229 (_ BitVec 64)) Option!10535)

(assert (=> b!4369725 (= e!2719631 (= (getValueByKey!521 (toList!3102 lm!1707) hash!377) (Some!10534 lt!1581213)))))

(assert (= (and d!1293963 res!1798128) b!4369725))

(declare-fun m!4993713 () Bool)

(assert (=> d!1293963 m!4993713))

(declare-fun m!4993715 () Bool)

(assert (=> d!1293963 m!4993715))

(declare-fun m!4993717 () Bool)

(assert (=> d!1293963 m!4993717))

(declare-fun m!4993719 () Bool)

(assert (=> b!4369725 m!4993719))

(assert (=> b!4369672 d!1293963))

(declare-fun d!1293965 () Bool)

(declare-fun dynLambda!20689 (Int tuple2!48608) Bool)

(assert (=> d!1293965 (dynLambda!20689 lambda!143539 lt!1581210)))

(declare-fun lt!1581242 () Unit!73428)

(declare-fun choose!27203 (List!49229 Int tuple2!48608) Unit!73428)

(assert (=> d!1293965 (= lt!1581242 (choose!27203 (toList!3102 lm!1707) lambda!143539 lt!1581210))))

(declare-fun e!2719634 () Bool)

(assert (=> d!1293965 e!2719634))

(declare-fun res!1798131 () Bool)

(assert (=> d!1293965 (=> (not res!1798131) (not e!2719634))))

(assert (=> d!1293965 (= res!1798131 (forall!9235 (toList!3102 lm!1707) lambda!143539))))

(assert (=> d!1293965 (= (forallContained!1873 (toList!3102 lm!1707) lambda!143539 lt!1581210) lt!1581242)))

(declare-fun b!4369728 () Bool)

(assert (=> b!4369728 (= e!2719634 (contains!11405 (toList!3102 lm!1707) lt!1581210))))

(assert (= (and d!1293965 res!1798131) b!4369728))

(declare-fun b_lambda!132895 () Bool)

(assert (=> (not b_lambda!132895) (not d!1293965)))

(declare-fun m!4993721 () Bool)

(assert (=> d!1293965 m!4993721))

(declare-fun m!4993723 () Bool)

(assert (=> d!1293965 m!4993723))

(assert (=> d!1293965 m!4993665))

(assert (=> b!4369728 m!4993647))

(assert (=> b!4369672 d!1293965))

(declare-fun d!1293967 () Bool)

(declare-fun get!15963 (Option!10535) List!49228)

(assert (=> d!1293967 (= (apply!11411 lm!1707 hash!377) (get!15963 (getValueByKey!521 (toList!3102 lm!1707) hash!377)))))

(declare-fun bs!637981 () Bool)

(assert (= bs!637981 d!1293967))

(assert (=> bs!637981 m!4993719))

(assert (=> bs!637981 m!4993719))

(declare-fun m!4993725 () Bool)

(assert (=> bs!637981 m!4993725))

(assert (=> b!4369672 d!1293967))

(declare-fun d!1293969 () Bool)

(declare-fun e!2719640 () Bool)

(assert (=> d!1293969 e!2719640))

(declare-fun res!1798134 () Bool)

(assert (=> d!1293969 (=> res!1798134 e!2719640)))

(declare-fun lt!1581251 () Bool)

(assert (=> d!1293969 (= res!1798134 (not lt!1581251))))

(declare-fun lt!1581253 () Bool)

(assert (=> d!1293969 (= lt!1581251 lt!1581253)))

(declare-fun lt!1581254 () Unit!73428)

(declare-fun e!2719639 () Unit!73428)

(assert (=> d!1293969 (= lt!1581254 e!2719639)))

(declare-fun c!742911 () Bool)

(assert (=> d!1293969 (= c!742911 lt!1581253)))

(declare-fun containsKey!813 (List!49229 (_ BitVec 64)) Bool)

(assert (=> d!1293969 (= lt!1581253 (containsKey!813 (toList!3102 lm!1707) hash!377))))

(assert (=> d!1293969 (= (contains!11404 lm!1707 hash!377) lt!1581251)))

(declare-fun b!4369735 () Bool)

(declare-fun lt!1581252 () Unit!73428)

(assert (=> b!4369735 (= e!2719639 lt!1581252)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!431 (List!49229 (_ BitVec 64)) Unit!73428)

(assert (=> b!4369735 (= lt!1581252 (lemmaContainsKeyImpliesGetValueByKeyDefined!431 (toList!3102 lm!1707) hash!377))))

(declare-fun isDefined!7828 (Option!10535) Bool)

(assert (=> b!4369735 (isDefined!7828 (getValueByKey!521 (toList!3102 lm!1707) hash!377))))

(declare-fun b!4369736 () Bool)

(declare-fun Unit!73453 () Unit!73428)

(assert (=> b!4369736 (= e!2719639 Unit!73453)))

(declare-fun b!4369737 () Bool)

(assert (=> b!4369737 (= e!2719640 (isDefined!7828 (getValueByKey!521 (toList!3102 lm!1707) hash!377)))))

(assert (= (and d!1293969 c!742911) b!4369735))

(assert (= (and d!1293969 (not c!742911)) b!4369736))

(assert (= (and d!1293969 (not res!1798134)) b!4369737))

(declare-fun m!4993727 () Bool)

(assert (=> d!1293969 m!4993727))

(declare-fun m!4993729 () Bool)

(assert (=> b!4369735 m!4993729))

(assert (=> b!4369735 m!4993719))

(assert (=> b!4369735 m!4993719))

(declare-fun m!4993731 () Bool)

(assert (=> b!4369735 m!4993731))

(assert (=> b!4369737 m!4993719))

(assert (=> b!4369737 m!4993719))

(assert (=> b!4369737 m!4993731))

(assert (=> b!4369671 d!1293969))

(declare-fun d!1293971 () Bool)

(declare-fun res!1798139 () Bool)

(declare-fun e!2719645 () Bool)

(assert (=> d!1293971 (=> res!1798139 e!2719645)))

(assert (=> d!1293971 (= res!1798139 ((_ is Nil!49105) (toList!3102 lt!1581211)))))

(assert (=> d!1293971 (= (forall!9235 (toList!3102 lt!1581211) lambda!143539) e!2719645)))

(declare-fun b!4369742 () Bool)

(declare-fun e!2719646 () Bool)

(assert (=> b!4369742 (= e!2719645 e!2719646)))

(declare-fun res!1798140 () Bool)

(assert (=> b!4369742 (=> (not res!1798140) (not e!2719646))))

(assert (=> b!4369742 (= res!1798140 (dynLambda!20689 lambda!143539 (h!54690 (toList!3102 lt!1581211))))))

(declare-fun b!4369743 () Bool)

(assert (=> b!4369743 (= e!2719646 (forall!9235 (t!356151 (toList!3102 lt!1581211)) lambda!143539))))

(assert (= (and d!1293971 (not res!1798139)) b!4369742))

(assert (= (and b!4369742 res!1798140) b!4369743))

(declare-fun b_lambda!132897 () Bool)

(assert (=> (not b_lambda!132897) (not b!4369742)))

(declare-fun m!4993733 () Bool)

(assert (=> b!4369742 m!4993733))

(declare-fun m!4993735 () Bool)

(assert (=> b!4369743 m!4993735))

(assert (=> b!4369675 d!1293971))

(declare-fun d!1293973 () Bool)

(declare-fun e!2719649 () Bool)

(assert (=> d!1293973 e!2719649))

(declare-fun res!1798146 () Bool)

(assert (=> d!1293973 (=> (not res!1798146) (not e!2719649))))

(declare-fun lt!1581264 () ListLongMap!1751)

(assert (=> d!1293973 (= res!1798146 (contains!11404 lt!1581264 (_1!27598 lt!1581214)))))

(declare-fun lt!1581263 () List!49229)

(assert (=> d!1293973 (= lt!1581264 (ListLongMap!1752 lt!1581263))))

(declare-fun lt!1581266 () Unit!73428)

(declare-fun lt!1581265 () Unit!73428)

(assert (=> d!1293973 (= lt!1581266 lt!1581265)))

(assert (=> d!1293973 (= (getValueByKey!521 lt!1581263 (_1!27598 lt!1581214)) (Some!10534 (_2!27598 lt!1581214)))))

(declare-fun lemmaContainsTupThenGetReturnValue!285 (List!49229 (_ BitVec 64) List!49228) Unit!73428)

(assert (=> d!1293973 (= lt!1581265 (lemmaContainsTupThenGetReturnValue!285 lt!1581263 (_1!27598 lt!1581214) (_2!27598 lt!1581214)))))

(declare-fun insertStrictlySorted!165 (List!49229 (_ BitVec 64) List!49228) List!49229)

(assert (=> d!1293973 (= lt!1581263 (insertStrictlySorted!165 (toList!3102 lm!1707) (_1!27598 lt!1581214) (_2!27598 lt!1581214)))))

(assert (=> d!1293973 (= (+!749 lm!1707 lt!1581214) lt!1581264)))

(declare-fun b!4369748 () Bool)

(declare-fun res!1798145 () Bool)

(assert (=> b!4369748 (=> (not res!1798145) (not e!2719649))))

(assert (=> b!4369748 (= res!1798145 (= (getValueByKey!521 (toList!3102 lt!1581264) (_1!27598 lt!1581214)) (Some!10534 (_2!27598 lt!1581214))))))

(declare-fun b!4369749 () Bool)

(assert (=> b!4369749 (= e!2719649 (contains!11405 (toList!3102 lt!1581264) lt!1581214))))

(assert (= (and d!1293973 res!1798146) b!4369748))

(assert (= (and b!4369748 res!1798145) b!4369749))

(declare-fun m!4993737 () Bool)

(assert (=> d!1293973 m!4993737))

(declare-fun m!4993739 () Bool)

(assert (=> d!1293973 m!4993739))

(declare-fun m!4993741 () Bool)

(assert (=> d!1293973 m!4993741))

(declare-fun m!4993743 () Bool)

(assert (=> d!1293973 m!4993743))

(declare-fun m!4993745 () Bool)

(assert (=> b!4369748 m!4993745))

(declare-fun m!4993747 () Bool)

(assert (=> b!4369749 m!4993747))

(assert (=> b!4369675 d!1293973))

(declare-fun d!1293975 () Bool)

(assert (=> d!1293975 (forall!9235 (toList!3102 (+!749 lm!1707 (tuple2!48609 hash!377 newBucket!200))) lambda!143539)))

(declare-fun lt!1581287 () Unit!73428)

(declare-fun choose!27204 (ListLongMap!1751 Int (_ BitVec 64) List!49228) Unit!73428)

(assert (=> d!1293975 (= lt!1581287 (choose!27204 lm!1707 lambda!143539 hash!377 newBucket!200))))

(declare-fun e!2719654 () Bool)

(assert (=> d!1293975 e!2719654))

(declare-fun res!1798149 () Bool)

(assert (=> d!1293975 (=> (not res!1798149) (not e!2719654))))

(assert (=> d!1293975 (= res!1798149 (forall!9235 (toList!3102 lm!1707) lambda!143539))))

(assert (=> d!1293975 (= (addValidProp!205 lm!1707 lambda!143539 hash!377 newBucket!200) lt!1581287)))

(declare-fun b!4369757 () Bool)

(assert (=> b!4369757 (= e!2719654 (dynLambda!20689 lambda!143539 (tuple2!48609 hash!377 newBucket!200)))))

(assert (= (and d!1293975 res!1798149) b!4369757))

(declare-fun b_lambda!132899 () Bool)

(assert (=> (not b_lambda!132899) (not b!4369757)))

(declare-fun m!4993749 () Bool)

(assert (=> d!1293975 m!4993749))

(declare-fun m!4993751 () Bool)

(assert (=> d!1293975 m!4993751))

(declare-fun m!4993753 () Bool)

(assert (=> d!1293975 m!4993753))

(assert (=> d!1293975 m!4993665))

(declare-fun m!4993755 () Bool)

(assert (=> b!4369757 m!4993755))

(assert (=> b!4369675 d!1293975))

(declare-fun d!1293977 () Bool)

(declare-fun res!1798150 () Bool)

(declare-fun e!2719655 () Bool)

(assert (=> d!1293977 (=> res!1798150 e!2719655)))

(assert (=> d!1293977 (= res!1798150 ((_ is Nil!49105) (toList!3102 lm!1707)))))

(assert (=> d!1293977 (= (forall!9235 (toList!3102 lm!1707) lambda!143539) e!2719655)))

(declare-fun b!4369758 () Bool)

(declare-fun e!2719656 () Bool)

(assert (=> b!4369758 (= e!2719655 e!2719656)))

(declare-fun res!1798151 () Bool)

(assert (=> b!4369758 (=> (not res!1798151) (not e!2719656))))

(assert (=> b!4369758 (= res!1798151 (dynLambda!20689 lambda!143539 (h!54690 (toList!3102 lm!1707))))))

(declare-fun b!4369759 () Bool)

(assert (=> b!4369759 (= e!2719656 (forall!9235 (t!356151 (toList!3102 lm!1707)) lambda!143539))))

(assert (= (and d!1293977 (not res!1798150)) b!4369758))

(assert (= (and b!4369758 res!1798151) b!4369759))

(declare-fun b_lambda!132901 () Bool)

(assert (=> (not b_lambda!132901) (not b!4369758)))

(declare-fun m!4993757 () Bool)

(assert (=> b!4369758 m!4993757))

(declare-fun m!4993759 () Bool)

(assert (=> b!4369759 m!4993759))

(assert (=> b!4369675 d!1293977))

(assert (=> b!4369674 d!1293971))

(declare-fun d!1293979 () Bool)

(declare-fun hash!1715 (Hashable!4951 K!10465) (_ BitVec 64))

(assert (=> d!1293979 (= (hash!1714 hashF!1247 key!3918) (hash!1715 hashF!1247 key!3918))))

(declare-fun bs!637982 () Bool)

(assert (= bs!637982 d!1293979))

(declare-fun m!4993761 () Bool)

(assert (=> bs!637982 m!4993761))

(assert (=> b!4369678 d!1293979))

(declare-fun b!4369893 () Bool)

(assert (=> b!4369893 true))

(declare-fun bs!638046 () Bool)

(declare-fun b!4369895 () Bool)

(assert (= bs!638046 (and b!4369895 b!4369893)))

(declare-fun lambda!143620 () Int)

(declare-fun lambda!143619 () Int)

(assert (=> bs!638046 (= lambda!143620 lambda!143619)))

(assert (=> b!4369895 true))

(declare-fun lambda!143621 () Int)

(declare-fun lt!1581486 () ListMap!2345)

(assert (=> bs!638046 (= (= lt!1581486 lt!1581217) (= lambda!143621 lambda!143619))))

(assert (=> b!4369895 (= (= lt!1581486 lt!1581217) (= lambda!143621 lambda!143620))))

(assert (=> b!4369895 true))

(declare-fun bs!638047 () Bool)

(declare-fun d!1293981 () Bool)

(assert (= bs!638047 (and d!1293981 b!4369893)))

(declare-fun lt!1581501 () ListMap!2345)

(declare-fun lambda!143622 () Int)

(assert (=> bs!638047 (= (= lt!1581501 lt!1581217) (= lambda!143622 lambda!143619))))

(declare-fun bs!638048 () Bool)

(assert (= bs!638048 (and d!1293981 b!4369895)))

(assert (=> bs!638048 (= (= lt!1581501 lt!1581217) (= lambda!143622 lambda!143620))))

(assert (=> bs!638048 (= (= lt!1581501 lt!1581486) (= lambda!143622 lambda!143621))))

(assert (=> d!1293981 true))

(declare-fun b!4369891 () Bool)

(declare-fun e!2719742 () Bool)

(declare-fun call!303720 () Bool)

(assert (=> b!4369891 (= e!2719742 call!303720)))

(declare-fun b!4369892 () Bool)

(declare-fun res!1798220 () Bool)

(declare-fun e!2719740 () Bool)

(assert (=> b!4369892 (=> (not res!1798220) (not e!2719740))))

(declare-fun forall!9237 (List!49228 Int) Bool)

(assert (=> b!4369892 (= res!1798220 (forall!9237 (toList!3101 lt!1581217) lambda!143622))))

(declare-fun lt!1581490 () ListMap!2345)

(declare-fun call!303721 () Bool)

(declare-fun bm!303715 () Bool)

(declare-fun c!742936 () Bool)

(assert (=> bm!303715 (= call!303721 (forall!9237 (ite c!742936 (toList!3101 lt!1581217) (toList!3101 lt!1581490)) (ite c!742936 lambda!143619 lambda!143621)))))

(declare-fun bm!303716 () Bool)

(declare-fun call!303722 () Unit!73428)

(declare-fun lemmaContainsAllItsOwnKeys!93 (ListMap!2345) Unit!73428)

(assert (=> bm!303716 (= call!303722 (lemmaContainsAllItsOwnKeys!93 lt!1581217))))

(assert (=> d!1293981 e!2719740))

(declare-fun res!1798222 () Bool)

(assert (=> d!1293981 (=> (not res!1798222) (not e!2719740))))

(assert (=> d!1293981 (= res!1798222 (forall!9237 lt!1581212 lambda!143622))))

(declare-fun e!2719741 () ListMap!2345)

(assert (=> d!1293981 (= lt!1581501 e!2719741)))

(assert (=> d!1293981 (= c!742936 ((_ is Nil!49104) lt!1581212))))

(assert (=> d!1293981 (noDuplicateKeys!559 lt!1581212)))

(assert (=> d!1293981 (= (addToMapMapFromBucket!240 lt!1581212 lt!1581217) lt!1581501)))

(assert (=> b!4369893 (= e!2719741 lt!1581217)))

(declare-fun lt!1581496 () Unit!73428)

(assert (=> b!4369893 (= lt!1581496 call!303722)))

(assert (=> b!4369893 call!303720))

(declare-fun lt!1581504 () Unit!73428)

(assert (=> b!4369893 (= lt!1581504 lt!1581496)))

(assert (=> b!4369893 call!303721))

(declare-fun lt!1581492 () Unit!73428)

(declare-fun Unit!73458 () Unit!73428)

(assert (=> b!4369893 (= lt!1581492 Unit!73458)))

(declare-fun b!4369894 () Bool)

(declare-fun invariantList!711 (List!49228) Bool)

(assert (=> b!4369894 (= e!2719740 (invariantList!711 (toList!3101 lt!1581501)))))

(declare-fun bm!303717 () Bool)

(assert (=> bm!303717 (= call!303720 (forall!9237 (toList!3101 lt!1581217) (ite c!742936 lambda!143619 lambda!143621)))))

(assert (=> b!4369895 (= e!2719741 lt!1581486)))

(assert (=> b!4369895 (= lt!1581490 (+!750 lt!1581217 (h!54689 lt!1581212)))))

(assert (=> b!4369895 (= lt!1581486 (addToMapMapFromBucket!240 (t!356150 lt!1581212) (+!750 lt!1581217 (h!54689 lt!1581212))))))

(declare-fun lt!1581505 () Unit!73428)

(assert (=> b!4369895 (= lt!1581505 call!303722)))

(assert (=> b!4369895 (forall!9237 (toList!3101 lt!1581217) lambda!143620)))

(declare-fun lt!1581499 () Unit!73428)

(assert (=> b!4369895 (= lt!1581499 lt!1581505)))

(assert (=> b!4369895 (forall!9237 (toList!3101 lt!1581490) lambda!143621)))

(declare-fun lt!1581488 () Unit!73428)

(declare-fun Unit!73463 () Unit!73428)

(assert (=> b!4369895 (= lt!1581488 Unit!73463)))

(assert (=> b!4369895 (forall!9237 (t!356150 lt!1581212) lambda!143621)))

(declare-fun lt!1581495 () Unit!73428)

(declare-fun Unit!73465 () Unit!73428)

(assert (=> b!4369895 (= lt!1581495 Unit!73465)))

(declare-fun lt!1581500 () Unit!73428)

(declare-fun Unit!73466 () Unit!73428)

(assert (=> b!4369895 (= lt!1581500 Unit!73466)))

(declare-fun lt!1581502 () Unit!73428)

(declare-fun forallContained!1875 (List!49228 Int tuple2!48606) Unit!73428)

(assert (=> b!4369895 (= lt!1581502 (forallContained!1875 (toList!3101 lt!1581490) lambda!143621 (h!54689 lt!1581212)))))

(assert (=> b!4369895 (contains!11403 lt!1581490 (_1!27597 (h!54689 lt!1581212)))))

(declare-fun lt!1581485 () Unit!73428)

(declare-fun Unit!73468 () Unit!73428)

(assert (=> b!4369895 (= lt!1581485 Unit!73468)))

(assert (=> b!4369895 (contains!11403 lt!1581486 (_1!27597 (h!54689 lt!1581212)))))

(declare-fun lt!1581487 () Unit!73428)

(declare-fun Unit!73469 () Unit!73428)

(assert (=> b!4369895 (= lt!1581487 Unit!73469)))

(assert (=> b!4369895 (forall!9237 lt!1581212 lambda!143621)))

(declare-fun lt!1581493 () Unit!73428)

(declare-fun Unit!73471 () Unit!73428)

(assert (=> b!4369895 (= lt!1581493 Unit!73471)))

(assert (=> b!4369895 call!303721))

(declare-fun lt!1581491 () Unit!73428)

(declare-fun Unit!73472 () Unit!73428)

(assert (=> b!4369895 (= lt!1581491 Unit!73472)))

(declare-fun lt!1581498 () Unit!73428)

(declare-fun Unit!73473 () Unit!73428)

(assert (=> b!4369895 (= lt!1581498 Unit!73473)))

(declare-fun lt!1581489 () Unit!73428)

(declare-fun addForallContainsKeyThenBeforeAdding!93 (ListMap!2345 ListMap!2345 K!10465 V!10711) Unit!73428)

(assert (=> b!4369895 (= lt!1581489 (addForallContainsKeyThenBeforeAdding!93 lt!1581217 lt!1581486 (_1!27597 (h!54689 lt!1581212)) (_2!27597 (h!54689 lt!1581212))))))

(assert (=> b!4369895 (forall!9237 (toList!3101 lt!1581217) lambda!143621)))

(declare-fun lt!1581497 () Unit!73428)

(assert (=> b!4369895 (= lt!1581497 lt!1581489)))

(assert (=> b!4369895 (forall!9237 (toList!3101 lt!1581217) lambda!143621)))

(declare-fun lt!1581494 () Unit!73428)

(declare-fun Unit!73474 () Unit!73428)

(assert (=> b!4369895 (= lt!1581494 Unit!73474)))

(declare-fun res!1798221 () Bool)

(assert (=> b!4369895 (= res!1798221 (forall!9237 lt!1581212 lambda!143621))))

(assert (=> b!4369895 (=> (not res!1798221) (not e!2719742))))

(assert (=> b!4369895 e!2719742))

(declare-fun lt!1581503 () Unit!73428)

(declare-fun Unit!73475 () Unit!73428)

(assert (=> b!4369895 (= lt!1581503 Unit!73475)))

(assert (= (and d!1293981 c!742936) b!4369893))

(assert (= (and d!1293981 (not c!742936)) b!4369895))

(assert (= (and b!4369895 res!1798221) b!4369891))

(assert (= (or b!4369893 b!4369895) bm!303716))

(assert (= (or b!4369893 b!4369891) bm!303717))

(assert (= (or b!4369893 b!4369895) bm!303715))

(assert (= (and d!1293981 res!1798222) b!4369892))

(assert (= (and b!4369892 res!1798220) b!4369894))

(declare-fun m!4993969 () Bool)

(assert (=> bm!303717 m!4993969))

(declare-fun m!4993971 () Bool)

(assert (=> b!4369892 m!4993971))

(declare-fun m!4993973 () Bool)

(assert (=> b!4369895 m!4993973))

(declare-fun m!4993975 () Bool)

(assert (=> b!4369895 m!4993975))

(declare-fun m!4993977 () Bool)

(assert (=> b!4369895 m!4993977))

(declare-fun m!4993979 () Bool)

(assert (=> b!4369895 m!4993979))

(declare-fun m!4993981 () Bool)

(assert (=> b!4369895 m!4993981))

(declare-fun m!4993983 () Bool)

(assert (=> b!4369895 m!4993983))

(declare-fun m!4993985 () Bool)

(assert (=> b!4369895 m!4993985))

(declare-fun m!4993987 () Bool)

(assert (=> b!4369895 m!4993987))

(assert (=> b!4369895 m!4993987))

(declare-fun m!4993989 () Bool)

(assert (=> b!4369895 m!4993989))

(assert (=> b!4369895 m!4993985))

(declare-fun m!4993991 () Bool)

(assert (=> b!4369895 m!4993991))

(assert (=> b!4369895 m!4993981))

(declare-fun m!4993993 () Bool)

(assert (=> b!4369895 m!4993993))

(declare-fun m!4993995 () Bool)

(assert (=> bm!303715 m!4993995))

(declare-fun m!4993997 () Bool)

(assert (=> b!4369894 m!4993997))

(declare-fun m!4993999 () Bool)

(assert (=> bm!303716 m!4993999))

(declare-fun m!4994001 () Bool)

(assert (=> d!1293981 m!4994001))

(declare-fun m!4994003 () Bool)

(assert (=> d!1293981 m!4994003))

(assert (=> b!4369667 d!1293981))

(declare-fun bs!638049 () Bool)

(declare-fun d!1294027 () Bool)

(assert (= bs!638049 (and d!1294027 start!424224)))

(declare-fun lambda!143625 () Int)

(assert (=> bs!638049 (= lambda!143625 lambda!143539)))

(declare-fun lt!1581508 () ListMap!2345)

(assert (=> d!1294027 (invariantList!711 (toList!3101 lt!1581508))))

(declare-fun e!2719745 () ListMap!2345)

(assert (=> d!1294027 (= lt!1581508 e!2719745)))

(declare-fun c!742939 () Bool)

(assert (=> d!1294027 (= c!742939 ((_ is Cons!49105) (toList!3102 lt!1581211)))))

(assert (=> d!1294027 (forall!9235 (toList!3102 lt!1581211) lambda!143625)))

(assert (=> d!1294027 (= (extractMap!618 (toList!3102 lt!1581211)) lt!1581508)))

(declare-fun b!4369902 () Bool)

(assert (=> b!4369902 (= e!2719745 (addToMapMapFromBucket!240 (_2!27598 (h!54690 (toList!3102 lt!1581211))) (extractMap!618 (t!356151 (toList!3102 lt!1581211)))))))

(declare-fun b!4369903 () Bool)

(assert (=> b!4369903 (= e!2719745 (ListMap!2346 Nil!49104))))

(assert (= (and d!1294027 c!742939) b!4369902))

(assert (= (and d!1294027 (not c!742939)) b!4369903))

(declare-fun m!4994005 () Bool)

(assert (=> d!1294027 m!4994005))

(declare-fun m!4994007 () Bool)

(assert (=> d!1294027 m!4994007))

(declare-fun m!4994009 () Bool)

(assert (=> b!4369902 m!4994009))

(assert (=> b!4369902 m!4994009))

(declare-fun m!4994011 () Bool)

(assert (=> b!4369902 m!4994011))

(assert (=> b!4369667 d!1294027))

(declare-fun bs!638050 () Bool)

(declare-fun b!4369906 () Bool)

(assert (= bs!638050 (and b!4369906 b!4369893)))

(declare-fun lambda!143626 () Int)

(assert (=> bs!638050 (= lambda!143626 lambda!143619)))

(declare-fun bs!638051 () Bool)

(assert (= bs!638051 (and b!4369906 b!4369895)))

(assert (=> bs!638051 (= lambda!143626 lambda!143620)))

(assert (=> bs!638051 (= (= lt!1581217 lt!1581486) (= lambda!143626 lambda!143621))))

(declare-fun bs!638052 () Bool)

(assert (= bs!638052 (and b!4369906 d!1293981)))

(assert (=> bs!638052 (= (= lt!1581217 lt!1581501) (= lambda!143626 lambda!143622))))

(assert (=> b!4369906 true))

(declare-fun bs!638053 () Bool)

(declare-fun b!4369908 () Bool)

(assert (= bs!638053 (and b!4369908 b!4369895)))

(declare-fun lambda!143627 () Int)

(assert (=> bs!638053 (= (= lt!1581217 lt!1581486) (= lambda!143627 lambda!143621))))

(declare-fun bs!638054 () Bool)

(assert (= bs!638054 (and b!4369908 b!4369906)))

(assert (=> bs!638054 (= lambda!143627 lambda!143626)))

(assert (=> bs!638053 (= lambda!143627 lambda!143620)))

(declare-fun bs!638055 () Bool)

(assert (= bs!638055 (and b!4369908 d!1293981)))

(assert (=> bs!638055 (= (= lt!1581217 lt!1581501) (= lambda!143627 lambda!143622))))

(declare-fun bs!638056 () Bool)

(assert (= bs!638056 (and b!4369908 b!4369893)))

(assert (=> bs!638056 (= lambda!143627 lambda!143619)))

(assert (=> b!4369908 true))

(declare-fun lt!1581510 () ListMap!2345)

(declare-fun lambda!143628 () Int)

(assert (=> bs!638053 (= (= lt!1581510 lt!1581486) (= lambda!143628 lambda!143621))))

(assert (=> b!4369908 (= (= lt!1581510 lt!1581217) (= lambda!143628 lambda!143627))))

(assert (=> bs!638054 (= (= lt!1581510 lt!1581217) (= lambda!143628 lambda!143626))))

(assert (=> bs!638053 (= (= lt!1581510 lt!1581217) (= lambda!143628 lambda!143620))))

(assert (=> bs!638055 (= (= lt!1581510 lt!1581501) (= lambda!143628 lambda!143622))))

(assert (=> bs!638056 (= (= lt!1581510 lt!1581217) (= lambda!143628 lambda!143619))))

(assert (=> b!4369908 true))

(declare-fun bs!638057 () Bool)

(declare-fun d!1294029 () Bool)

(assert (= bs!638057 (and d!1294029 b!4369895)))

(declare-fun lambda!143629 () Int)

(declare-fun lt!1581525 () ListMap!2345)

(assert (=> bs!638057 (= (= lt!1581525 lt!1581486) (= lambda!143629 lambda!143621))))

(declare-fun bs!638058 () Bool)

(assert (= bs!638058 (and d!1294029 b!4369908)))

(assert (=> bs!638058 (= (= lt!1581525 lt!1581217) (= lambda!143629 lambda!143627))))

(assert (=> bs!638058 (= (= lt!1581525 lt!1581510) (= lambda!143629 lambda!143628))))

(declare-fun bs!638059 () Bool)

(assert (= bs!638059 (and d!1294029 b!4369906)))

(assert (=> bs!638059 (= (= lt!1581525 lt!1581217) (= lambda!143629 lambda!143626))))

(assert (=> bs!638057 (= (= lt!1581525 lt!1581217) (= lambda!143629 lambda!143620))))

(declare-fun bs!638060 () Bool)

(assert (= bs!638060 (and d!1294029 d!1293981)))

(assert (=> bs!638060 (= (= lt!1581525 lt!1581501) (= lambda!143629 lambda!143622))))

(declare-fun bs!638061 () Bool)

(assert (= bs!638061 (and d!1294029 b!4369893)))

(assert (=> bs!638061 (= (= lt!1581525 lt!1581217) (= lambda!143629 lambda!143619))))

(assert (=> d!1294029 true))

(declare-fun b!4369904 () Bool)

(declare-fun e!2719748 () Bool)

(declare-fun call!303723 () Bool)

(assert (=> b!4369904 (= e!2719748 call!303723)))

(declare-fun b!4369905 () Bool)

(declare-fun res!1798223 () Bool)

(declare-fun e!2719746 () Bool)

(assert (=> b!4369905 (=> (not res!1798223) (not e!2719746))))

(assert (=> b!4369905 (= res!1798223 (forall!9237 (toList!3101 lt!1581217) lambda!143629))))

(declare-fun call!303724 () Bool)

(declare-fun bm!303718 () Bool)

(declare-fun c!742940 () Bool)

(declare-fun lt!1581514 () ListMap!2345)

(assert (=> bm!303718 (= call!303724 (forall!9237 (ite c!742940 (toList!3101 lt!1581217) (toList!3101 lt!1581514)) (ite c!742940 lambda!143626 lambda!143628)))))

(declare-fun bm!303719 () Bool)

(declare-fun call!303725 () Unit!73428)

(assert (=> bm!303719 (= call!303725 (lemmaContainsAllItsOwnKeys!93 lt!1581217))))

(assert (=> d!1294029 e!2719746))

(declare-fun res!1798225 () Bool)

(assert (=> d!1294029 (=> (not res!1798225) (not e!2719746))))

(assert (=> d!1294029 (= res!1798225 (forall!9237 newBucket!200 lambda!143629))))

(declare-fun e!2719747 () ListMap!2345)

(assert (=> d!1294029 (= lt!1581525 e!2719747)))

(assert (=> d!1294029 (= c!742940 ((_ is Nil!49104) newBucket!200))))

(assert (=> d!1294029 (noDuplicateKeys!559 newBucket!200)))

(assert (=> d!1294029 (= (addToMapMapFromBucket!240 newBucket!200 lt!1581217) lt!1581525)))

(assert (=> b!4369906 (= e!2719747 lt!1581217)))

(declare-fun lt!1581520 () Unit!73428)

(assert (=> b!4369906 (= lt!1581520 call!303725)))

(assert (=> b!4369906 call!303723))

(declare-fun lt!1581528 () Unit!73428)

(assert (=> b!4369906 (= lt!1581528 lt!1581520)))

(assert (=> b!4369906 call!303724))

(declare-fun lt!1581516 () Unit!73428)

(declare-fun Unit!73478 () Unit!73428)

(assert (=> b!4369906 (= lt!1581516 Unit!73478)))

(declare-fun b!4369907 () Bool)

(assert (=> b!4369907 (= e!2719746 (invariantList!711 (toList!3101 lt!1581525)))))

(declare-fun bm!303720 () Bool)

(assert (=> bm!303720 (= call!303723 (forall!9237 (toList!3101 lt!1581217) (ite c!742940 lambda!143626 lambda!143628)))))

(assert (=> b!4369908 (= e!2719747 lt!1581510)))

(assert (=> b!4369908 (= lt!1581514 (+!750 lt!1581217 (h!54689 newBucket!200)))))

(assert (=> b!4369908 (= lt!1581510 (addToMapMapFromBucket!240 (t!356150 newBucket!200) (+!750 lt!1581217 (h!54689 newBucket!200))))))

(declare-fun lt!1581529 () Unit!73428)

(assert (=> b!4369908 (= lt!1581529 call!303725)))

(assert (=> b!4369908 (forall!9237 (toList!3101 lt!1581217) lambda!143627)))

(declare-fun lt!1581523 () Unit!73428)

(assert (=> b!4369908 (= lt!1581523 lt!1581529)))

(assert (=> b!4369908 (forall!9237 (toList!3101 lt!1581514) lambda!143628)))

(declare-fun lt!1581512 () Unit!73428)

(declare-fun Unit!73479 () Unit!73428)

(assert (=> b!4369908 (= lt!1581512 Unit!73479)))

(assert (=> b!4369908 (forall!9237 (t!356150 newBucket!200) lambda!143628)))

(declare-fun lt!1581519 () Unit!73428)

(declare-fun Unit!73480 () Unit!73428)

(assert (=> b!4369908 (= lt!1581519 Unit!73480)))

(declare-fun lt!1581524 () Unit!73428)

(declare-fun Unit!73481 () Unit!73428)

(assert (=> b!4369908 (= lt!1581524 Unit!73481)))

(declare-fun lt!1581526 () Unit!73428)

(assert (=> b!4369908 (= lt!1581526 (forallContained!1875 (toList!3101 lt!1581514) lambda!143628 (h!54689 newBucket!200)))))

(assert (=> b!4369908 (contains!11403 lt!1581514 (_1!27597 (h!54689 newBucket!200)))))

(declare-fun lt!1581509 () Unit!73428)

(declare-fun Unit!73482 () Unit!73428)

(assert (=> b!4369908 (= lt!1581509 Unit!73482)))

(assert (=> b!4369908 (contains!11403 lt!1581510 (_1!27597 (h!54689 newBucket!200)))))

(declare-fun lt!1581511 () Unit!73428)

(declare-fun Unit!73483 () Unit!73428)

(assert (=> b!4369908 (= lt!1581511 Unit!73483)))

(assert (=> b!4369908 (forall!9237 newBucket!200 lambda!143628)))

(declare-fun lt!1581517 () Unit!73428)

(declare-fun Unit!73484 () Unit!73428)

(assert (=> b!4369908 (= lt!1581517 Unit!73484)))

(assert (=> b!4369908 call!303724))

(declare-fun lt!1581515 () Unit!73428)

(declare-fun Unit!73485 () Unit!73428)

(assert (=> b!4369908 (= lt!1581515 Unit!73485)))

(declare-fun lt!1581522 () Unit!73428)

(declare-fun Unit!73486 () Unit!73428)

(assert (=> b!4369908 (= lt!1581522 Unit!73486)))

(declare-fun lt!1581513 () Unit!73428)

(assert (=> b!4369908 (= lt!1581513 (addForallContainsKeyThenBeforeAdding!93 lt!1581217 lt!1581510 (_1!27597 (h!54689 newBucket!200)) (_2!27597 (h!54689 newBucket!200))))))

(assert (=> b!4369908 (forall!9237 (toList!3101 lt!1581217) lambda!143628)))

(declare-fun lt!1581521 () Unit!73428)

(assert (=> b!4369908 (= lt!1581521 lt!1581513)))

(assert (=> b!4369908 (forall!9237 (toList!3101 lt!1581217) lambda!143628)))

(declare-fun lt!1581518 () Unit!73428)

(declare-fun Unit!73487 () Unit!73428)

(assert (=> b!4369908 (= lt!1581518 Unit!73487)))

(declare-fun res!1798224 () Bool)

(assert (=> b!4369908 (= res!1798224 (forall!9237 newBucket!200 lambda!143628))))

(assert (=> b!4369908 (=> (not res!1798224) (not e!2719748))))

(assert (=> b!4369908 e!2719748))

(declare-fun lt!1581527 () Unit!73428)

(declare-fun Unit!73488 () Unit!73428)

(assert (=> b!4369908 (= lt!1581527 Unit!73488)))

(assert (= (and d!1294029 c!742940) b!4369906))

(assert (= (and d!1294029 (not c!742940)) b!4369908))

(assert (= (and b!4369908 res!1798224) b!4369904))

(assert (= (or b!4369906 b!4369908) bm!303719))

(assert (= (or b!4369906 b!4369904) bm!303720))

(assert (= (or b!4369906 b!4369908) bm!303718))

(assert (= (and d!1294029 res!1798225) b!4369905))

(assert (= (and b!4369905 res!1798223) b!4369907))

(declare-fun m!4994013 () Bool)

(assert (=> bm!303720 m!4994013))

(declare-fun m!4994015 () Bool)

(assert (=> b!4369905 m!4994015))

(declare-fun m!4994017 () Bool)

(assert (=> b!4369908 m!4994017))

(declare-fun m!4994019 () Bool)

(assert (=> b!4369908 m!4994019))

(declare-fun m!4994021 () Bool)

(assert (=> b!4369908 m!4994021))

(declare-fun m!4994023 () Bool)

(assert (=> b!4369908 m!4994023))

(declare-fun m!4994025 () Bool)

(assert (=> b!4369908 m!4994025))

(declare-fun m!4994027 () Bool)

(assert (=> b!4369908 m!4994027))

(declare-fun m!4994029 () Bool)

(assert (=> b!4369908 m!4994029))

(declare-fun m!4994031 () Bool)

(assert (=> b!4369908 m!4994031))

(assert (=> b!4369908 m!4994031))

(declare-fun m!4994033 () Bool)

(assert (=> b!4369908 m!4994033))

(assert (=> b!4369908 m!4994029))

(declare-fun m!4994035 () Bool)

(assert (=> b!4369908 m!4994035))

(assert (=> b!4369908 m!4994025))

(declare-fun m!4994037 () Bool)

(assert (=> b!4369908 m!4994037))

(declare-fun m!4994039 () Bool)

(assert (=> bm!303718 m!4994039))

(declare-fun m!4994041 () Bool)

(assert (=> b!4369907 m!4994041))

(assert (=> bm!303719 m!4993999))

(declare-fun m!4994043 () Bool)

(assert (=> d!1294029 m!4994043))

(assert (=> d!1294029 m!4993661))

(assert (=> b!4369667 d!1294029))

(declare-fun bs!638062 () Bool)

(declare-fun d!1294031 () Bool)

(assert (= bs!638062 (and d!1294031 start!424224)))

(declare-fun lambda!143630 () Int)

(assert (=> bs!638062 (= lambda!143630 lambda!143539)))

(declare-fun bs!638063 () Bool)

(assert (= bs!638063 (and d!1294031 d!1294027)))

(assert (=> bs!638063 (= lambda!143630 lambda!143625)))

(declare-fun lt!1581530 () ListMap!2345)

(assert (=> d!1294031 (invariantList!711 (toList!3101 lt!1581530))))

(declare-fun e!2719749 () ListMap!2345)

(assert (=> d!1294031 (= lt!1581530 e!2719749)))

(declare-fun c!742941 () Bool)

(assert (=> d!1294031 (= c!742941 ((_ is Cons!49105) (t!356151 (toList!3102 lm!1707))))))

(assert (=> d!1294031 (forall!9235 (t!356151 (toList!3102 lm!1707)) lambda!143630)))

(assert (=> d!1294031 (= (extractMap!618 (t!356151 (toList!3102 lm!1707))) lt!1581530)))

(declare-fun b!4369909 () Bool)

(assert (=> b!4369909 (= e!2719749 (addToMapMapFromBucket!240 (_2!27598 (h!54690 (t!356151 (toList!3102 lm!1707)))) (extractMap!618 (t!356151 (t!356151 (toList!3102 lm!1707))))))))

(declare-fun b!4369910 () Bool)

(assert (=> b!4369910 (= e!2719749 (ListMap!2346 Nil!49104))))

(assert (= (and d!1294031 c!742941) b!4369909))

(assert (= (and d!1294031 (not c!742941)) b!4369910))

(declare-fun m!4994045 () Bool)

(assert (=> d!1294031 m!4994045))

(declare-fun m!4994047 () Bool)

(assert (=> d!1294031 m!4994047))

(declare-fun m!4994049 () Bool)

(assert (=> b!4369909 m!4994049))

(assert (=> b!4369909 m!4994049))

(declare-fun m!4994051 () Bool)

(assert (=> b!4369909 m!4994051))

(assert (=> b!4369667 d!1294031))

(declare-fun d!1294033 () Bool)

(declare-fun res!1798230 () Bool)

(declare-fun e!2719754 () Bool)

(assert (=> d!1294033 (=> res!1798230 e!2719754)))

(assert (=> d!1294033 (= res!1798230 (and ((_ is Cons!49104) lt!1581206) (= (_1!27597 (h!54689 lt!1581206)) key!3918)))))

(assert (=> d!1294033 (= (containsKey!811 lt!1581206 key!3918) e!2719754)))

(declare-fun b!4369915 () Bool)

(declare-fun e!2719755 () Bool)

(assert (=> b!4369915 (= e!2719754 e!2719755)))

(declare-fun res!1798231 () Bool)

(assert (=> b!4369915 (=> (not res!1798231) (not e!2719755))))

(assert (=> b!4369915 (= res!1798231 ((_ is Cons!49104) lt!1581206))))

(declare-fun b!4369916 () Bool)

(assert (=> b!4369916 (= e!2719755 (containsKey!811 (t!356150 lt!1581206) key!3918))))

(assert (= (and d!1294033 (not res!1798230)) b!4369915))

(assert (= (and b!4369915 res!1798231) b!4369916))

(declare-fun m!4994053 () Bool)

(assert (=> b!4369916 m!4994053))

(assert (=> b!4369667 d!1294033))

(declare-fun bs!638064 () Bool)

(declare-fun b!4369919 () Bool)

(assert (= bs!638064 (and b!4369919 b!4369895)))

(declare-fun lambda!143631 () Int)

(assert (=> bs!638064 (= (= (+!750 lt!1581217 lt!1581218) lt!1581486) (= lambda!143631 lambda!143621))))

(declare-fun bs!638065 () Bool)

(assert (= bs!638065 (and b!4369919 d!1294029)))

(assert (=> bs!638065 (= (= (+!750 lt!1581217 lt!1581218) lt!1581525) (= lambda!143631 lambda!143629))))

(declare-fun bs!638066 () Bool)

(assert (= bs!638066 (and b!4369919 b!4369908)))

(assert (=> bs!638066 (= (= (+!750 lt!1581217 lt!1581218) lt!1581217) (= lambda!143631 lambda!143627))))

(assert (=> bs!638066 (= (= (+!750 lt!1581217 lt!1581218) lt!1581510) (= lambda!143631 lambda!143628))))

(declare-fun bs!638067 () Bool)

(assert (= bs!638067 (and b!4369919 b!4369906)))

(assert (=> bs!638067 (= (= (+!750 lt!1581217 lt!1581218) lt!1581217) (= lambda!143631 lambda!143626))))

(assert (=> bs!638064 (= (= (+!750 lt!1581217 lt!1581218) lt!1581217) (= lambda!143631 lambda!143620))))

(declare-fun bs!638068 () Bool)

(assert (= bs!638068 (and b!4369919 d!1293981)))

(assert (=> bs!638068 (= (= (+!750 lt!1581217 lt!1581218) lt!1581501) (= lambda!143631 lambda!143622))))

(declare-fun bs!638069 () Bool)

(assert (= bs!638069 (and b!4369919 b!4369893)))

(assert (=> bs!638069 (= (= (+!750 lt!1581217 lt!1581218) lt!1581217) (= lambda!143631 lambda!143619))))

(assert (=> b!4369919 true))

(declare-fun bs!638070 () Bool)

(declare-fun b!4369921 () Bool)

(assert (= bs!638070 (and b!4369921 b!4369895)))

(declare-fun lambda!143632 () Int)

(assert (=> bs!638070 (= (= (+!750 lt!1581217 lt!1581218) lt!1581486) (= lambda!143632 lambda!143621))))

(declare-fun bs!638071 () Bool)

(assert (= bs!638071 (and b!4369921 b!4369919)))

(assert (=> bs!638071 (= lambda!143632 lambda!143631)))

(declare-fun bs!638072 () Bool)

(assert (= bs!638072 (and b!4369921 d!1294029)))

(assert (=> bs!638072 (= (= (+!750 lt!1581217 lt!1581218) lt!1581525) (= lambda!143632 lambda!143629))))

(declare-fun bs!638073 () Bool)

(assert (= bs!638073 (and b!4369921 b!4369908)))

(assert (=> bs!638073 (= (= (+!750 lt!1581217 lt!1581218) lt!1581217) (= lambda!143632 lambda!143627))))

(assert (=> bs!638073 (= (= (+!750 lt!1581217 lt!1581218) lt!1581510) (= lambda!143632 lambda!143628))))

(declare-fun bs!638074 () Bool)

(assert (= bs!638074 (and b!4369921 b!4369906)))

(assert (=> bs!638074 (= (= (+!750 lt!1581217 lt!1581218) lt!1581217) (= lambda!143632 lambda!143626))))

(assert (=> bs!638070 (= (= (+!750 lt!1581217 lt!1581218) lt!1581217) (= lambda!143632 lambda!143620))))

(declare-fun bs!638075 () Bool)

(assert (= bs!638075 (and b!4369921 d!1293981)))

(assert (=> bs!638075 (= (= (+!750 lt!1581217 lt!1581218) lt!1581501) (= lambda!143632 lambda!143622))))

(declare-fun bs!638076 () Bool)

(assert (= bs!638076 (and b!4369921 b!4369893)))

(assert (=> bs!638076 (= (= (+!750 lt!1581217 lt!1581218) lt!1581217) (= lambda!143632 lambda!143619))))

(assert (=> b!4369921 true))

(declare-fun lambda!143633 () Int)

(declare-fun lt!1581532 () ListMap!2345)

(assert (=> bs!638070 (= (= lt!1581532 lt!1581486) (= lambda!143633 lambda!143621))))

(assert (=> b!4369921 (= (= lt!1581532 (+!750 lt!1581217 lt!1581218)) (= lambda!143633 lambda!143632))))

(assert (=> bs!638071 (= (= lt!1581532 (+!750 lt!1581217 lt!1581218)) (= lambda!143633 lambda!143631))))

(assert (=> bs!638072 (= (= lt!1581532 lt!1581525) (= lambda!143633 lambda!143629))))

(assert (=> bs!638073 (= (= lt!1581532 lt!1581217) (= lambda!143633 lambda!143627))))

(assert (=> bs!638073 (= (= lt!1581532 lt!1581510) (= lambda!143633 lambda!143628))))

(assert (=> bs!638074 (= (= lt!1581532 lt!1581217) (= lambda!143633 lambda!143626))))

(assert (=> bs!638070 (= (= lt!1581532 lt!1581217) (= lambda!143633 lambda!143620))))

(assert (=> bs!638075 (= (= lt!1581532 lt!1581501) (= lambda!143633 lambda!143622))))

(assert (=> bs!638076 (= (= lt!1581532 lt!1581217) (= lambda!143633 lambda!143619))))

(assert (=> b!4369921 true))

(declare-fun bs!638077 () Bool)

(declare-fun d!1294035 () Bool)

(assert (= bs!638077 (and d!1294035 b!4369895)))

(declare-fun lambda!143634 () Int)

(declare-fun lt!1581547 () ListMap!2345)

(assert (=> bs!638077 (= (= lt!1581547 lt!1581486) (= lambda!143634 lambda!143621))))

(declare-fun bs!638078 () Bool)

(assert (= bs!638078 (and d!1294035 b!4369921)))

(assert (=> bs!638078 (= (= lt!1581547 (+!750 lt!1581217 lt!1581218)) (= lambda!143634 lambda!143632))))

(declare-fun bs!638079 () Bool)

(assert (= bs!638079 (and d!1294035 b!4369919)))

(assert (=> bs!638079 (= (= lt!1581547 (+!750 lt!1581217 lt!1581218)) (= lambda!143634 lambda!143631))))

(declare-fun bs!638080 () Bool)

(assert (= bs!638080 (and d!1294035 d!1294029)))

(assert (=> bs!638080 (= (= lt!1581547 lt!1581525) (= lambda!143634 lambda!143629))))

(declare-fun bs!638081 () Bool)

(assert (= bs!638081 (and d!1294035 b!4369908)))

(assert (=> bs!638081 (= (= lt!1581547 lt!1581217) (= lambda!143634 lambda!143627))))

(assert (=> bs!638081 (= (= lt!1581547 lt!1581510) (= lambda!143634 lambda!143628))))

(declare-fun bs!638082 () Bool)

(assert (= bs!638082 (and d!1294035 b!4369906)))

(assert (=> bs!638082 (= (= lt!1581547 lt!1581217) (= lambda!143634 lambda!143626))))

(assert (=> bs!638077 (= (= lt!1581547 lt!1581217) (= lambda!143634 lambda!143620))))

(assert (=> bs!638078 (= (= lt!1581547 lt!1581532) (= lambda!143634 lambda!143633))))

(declare-fun bs!638083 () Bool)

(assert (= bs!638083 (and d!1294035 d!1293981)))

(assert (=> bs!638083 (= (= lt!1581547 lt!1581501) (= lambda!143634 lambda!143622))))

(declare-fun bs!638084 () Bool)

(assert (= bs!638084 (and d!1294035 b!4369893)))

(assert (=> bs!638084 (= (= lt!1581547 lt!1581217) (= lambda!143634 lambda!143619))))

(assert (=> d!1294035 true))

(declare-fun b!4369917 () Bool)

(declare-fun e!2719758 () Bool)

(declare-fun call!303726 () Bool)

(assert (=> b!4369917 (= e!2719758 call!303726)))

(declare-fun b!4369918 () Bool)

(declare-fun res!1798232 () Bool)

(declare-fun e!2719756 () Bool)

(assert (=> b!4369918 (=> (not res!1798232) (not e!2719756))))

(assert (=> b!4369918 (= res!1798232 (forall!9237 (toList!3101 (+!750 lt!1581217 lt!1581218)) lambda!143634))))

(declare-fun bm!303721 () Bool)

(declare-fun call!303727 () Bool)

(declare-fun lt!1581536 () ListMap!2345)

(declare-fun c!742942 () Bool)

(assert (=> bm!303721 (= call!303727 (forall!9237 (ite c!742942 (toList!3101 (+!750 lt!1581217 lt!1581218)) (toList!3101 lt!1581536)) (ite c!742942 lambda!143631 lambda!143633)))))

(declare-fun bm!303722 () Bool)

(declare-fun call!303728 () Unit!73428)

(assert (=> bm!303722 (= call!303728 (lemmaContainsAllItsOwnKeys!93 (+!750 lt!1581217 lt!1581218)))))

(assert (=> d!1294035 e!2719756))

(declare-fun res!1798234 () Bool)

(assert (=> d!1294035 (=> (not res!1798234) (not e!2719756))))

(assert (=> d!1294035 (= res!1798234 (forall!9237 lt!1581206 lambda!143634))))

(declare-fun e!2719757 () ListMap!2345)

(assert (=> d!1294035 (= lt!1581547 e!2719757)))

(assert (=> d!1294035 (= c!742942 ((_ is Nil!49104) lt!1581206))))

(assert (=> d!1294035 (noDuplicateKeys!559 lt!1581206)))

(assert (=> d!1294035 (= (addToMapMapFromBucket!240 lt!1581206 (+!750 lt!1581217 lt!1581218)) lt!1581547)))

(assert (=> b!4369919 (= e!2719757 (+!750 lt!1581217 lt!1581218))))

(declare-fun lt!1581542 () Unit!73428)

(assert (=> b!4369919 (= lt!1581542 call!303728)))

(assert (=> b!4369919 call!303726))

(declare-fun lt!1581550 () Unit!73428)

(assert (=> b!4369919 (= lt!1581550 lt!1581542)))

(assert (=> b!4369919 call!303727))

(declare-fun lt!1581538 () Unit!73428)

(declare-fun Unit!73489 () Unit!73428)

(assert (=> b!4369919 (= lt!1581538 Unit!73489)))

(declare-fun b!4369920 () Bool)

(assert (=> b!4369920 (= e!2719756 (invariantList!711 (toList!3101 lt!1581547)))))

(declare-fun bm!303723 () Bool)

(assert (=> bm!303723 (= call!303726 (forall!9237 (toList!3101 (+!750 lt!1581217 lt!1581218)) (ite c!742942 lambda!143631 lambda!143633)))))

(assert (=> b!4369921 (= e!2719757 lt!1581532)))

(assert (=> b!4369921 (= lt!1581536 (+!750 (+!750 lt!1581217 lt!1581218) (h!54689 lt!1581206)))))

(assert (=> b!4369921 (= lt!1581532 (addToMapMapFromBucket!240 (t!356150 lt!1581206) (+!750 (+!750 lt!1581217 lt!1581218) (h!54689 lt!1581206))))))

(declare-fun lt!1581551 () Unit!73428)

(assert (=> b!4369921 (= lt!1581551 call!303728)))

(assert (=> b!4369921 (forall!9237 (toList!3101 (+!750 lt!1581217 lt!1581218)) lambda!143632)))

(declare-fun lt!1581545 () Unit!73428)

(assert (=> b!4369921 (= lt!1581545 lt!1581551)))

(assert (=> b!4369921 (forall!9237 (toList!3101 lt!1581536) lambda!143633)))

(declare-fun lt!1581534 () Unit!73428)

(declare-fun Unit!73490 () Unit!73428)

(assert (=> b!4369921 (= lt!1581534 Unit!73490)))

(assert (=> b!4369921 (forall!9237 (t!356150 lt!1581206) lambda!143633)))

(declare-fun lt!1581541 () Unit!73428)

(declare-fun Unit!73491 () Unit!73428)

(assert (=> b!4369921 (= lt!1581541 Unit!73491)))

(declare-fun lt!1581546 () Unit!73428)

(declare-fun Unit!73492 () Unit!73428)

(assert (=> b!4369921 (= lt!1581546 Unit!73492)))

(declare-fun lt!1581548 () Unit!73428)

(assert (=> b!4369921 (= lt!1581548 (forallContained!1875 (toList!3101 lt!1581536) lambda!143633 (h!54689 lt!1581206)))))

(assert (=> b!4369921 (contains!11403 lt!1581536 (_1!27597 (h!54689 lt!1581206)))))

(declare-fun lt!1581531 () Unit!73428)

(declare-fun Unit!73493 () Unit!73428)

(assert (=> b!4369921 (= lt!1581531 Unit!73493)))

(assert (=> b!4369921 (contains!11403 lt!1581532 (_1!27597 (h!54689 lt!1581206)))))

(declare-fun lt!1581533 () Unit!73428)

(declare-fun Unit!73494 () Unit!73428)

(assert (=> b!4369921 (= lt!1581533 Unit!73494)))

(assert (=> b!4369921 (forall!9237 lt!1581206 lambda!143633)))

(declare-fun lt!1581539 () Unit!73428)

(declare-fun Unit!73495 () Unit!73428)

(assert (=> b!4369921 (= lt!1581539 Unit!73495)))

(assert (=> b!4369921 call!303727))

(declare-fun lt!1581537 () Unit!73428)

(declare-fun Unit!73496 () Unit!73428)

(assert (=> b!4369921 (= lt!1581537 Unit!73496)))

(declare-fun lt!1581544 () Unit!73428)

(declare-fun Unit!73497 () Unit!73428)

(assert (=> b!4369921 (= lt!1581544 Unit!73497)))

(declare-fun lt!1581535 () Unit!73428)

(assert (=> b!4369921 (= lt!1581535 (addForallContainsKeyThenBeforeAdding!93 (+!750 lt!1581217 lt!1581218) lt!1581532 (_1!27597 (h!54689 lt!1581206)) (_2!27597 (h!54689 lt!1581206))))))

(assert (=> b!4369921 (forall!9237 (toList!3101 (+!750 lt!1581217 lt!1581218)) lambda!143633)))

(declare-fun lt!1581543 () Unit!73428)

(assert (=> b!4369921 (= lt!1581543 lt!1581535)))

(assert (=> b!4369921 (forall!9237 (toList!3101 (+!750 lt!1581217 lt!1581218)) lambda!143633)))

(declare-fun lt!1581540 () Unit!73428)

(declare-fun Unit!73498 () Unit!73428)

(assert (=> b!4369921 (= lt!1581540 Unit!73498)))

(declare-fun res!1798233 () Bool)

(assert (=> b!4369921 (= res!1798233 (forall!9237 lt!1581206 lambda!143633))))

(assert (=> b!4369921 (=> (not res!1798233) (not e!2719758))))

(assert (=> b!4369921 e!2719758))

(declare-fun lt!1581549 () Unit!73428)

(declare-fun Unit!73499 () Unit!73428)

(assert (=> b!4369921 (= lt!1581549 Unit!73499)))

(assert (= (and d!1294035 c!742942) b!4369919))

(assert (= (and d!1294035 (not c!742942)) b!4369921))

(assert (= (and b!4369921 res!1798233) b!4369917))

(assert (= (or b!4369919 b!4369921) bm!303722))

(assert (= (or b!4369919 b!4369917) bm!303723))

(assert (= (or b!4369919 b!4369921) bm!303721))

(assert (= (and d!1294035 res!1798234) b!4369918))

(assert (= (and b!4369918 res!1798232) b!4369920))

(declare-fun m!4994055 () Bool)

(assert (=> bm!303723 m!4994055))

(declare-fun m!4994057 () Bool)

(assert (=> b!4369918 m!4994057))

(declare-fun m!4994059 () Bool)

(assert (=> b!4369921 m!4994059))

(declare-fun m!4994061 () Bool)

(assert (=> b!4369921 m!4994061))

(declare-fun m!4994063 () Bool)

(assert (=> b!4369921 m!4994063))

(assert (=> b!4369921 m!4993629))

(declare-fun m!4994065 () Bool)

(assert (=> b!4369921 m!4994065))

(declare-fun m!4994067 () Bool)

(assert (=> b!4369921 m!4994067))

(declare-fun m!4994069 () Bool)

(assert (=> b!4369921 m!4994069))

(assert (=> b!4369921 m!4993629))

(declare-fun m!4994071 () Bool)

(assert (=> b!4369921 m!4994071))

(declare-fun m!4994073 () Bool)

(assert (=> b!4369921 m!4994073))

(assert (=> b!4369921 m!4994073))

(declare-fun m!4994075 () Bool)

(assert (=> b!4369921 m!4994075))

(assert (=> b!4369921 m!4994071))

(declare-fun m!4994077 () Bool)

(assert (=> b!4369921 m!4994077))

(assert (=> b!4369921 m!4994067))

(declare-fun m!4994079 () Bool)

(assert (=> b!4369921 m!4994079))

(declare-fun m!4994081 () Bool)

(assert (=> bm!303721 m!4994081))

(declare-fun m!4994083 () Bool)

(assert (=> b!4369920 m!4994083))

(assert (=> bm!303722 m!4993629))

(declare-fun m!4994085 () Bool)

(assert (=> bm!303722 m!4994085))

(declare-fun m!4994087 () Bool)

(assert (=> d!1294035 m!4994087))

(declare-fun m!4994089 () Bool)

(assert (=> d!1294035 m!4994089))

(assert (=> b!4369677 d!1294035))

(declare-fun d!1294037 () Bool)

(declare-fun e!2719761 () Bool)

(assert (=> d!1294037 e!2719761))

(declare-fun res!1798240 () Bool)

(assert (=> d!1294037 (=> (not res!1798240) (not e!2719761))))

(declare-fun lt!1581563 () ListMap!2345)

(assert (=> d!1294037 (= res!1798240 (contains!11403 lt!1581563 (_1!27597 lt!1581218)))))

(declare-fun lt!1581561 () List!49228)

(assert (=> d!1294037 (= lt!1581563 (ListMap!2346 lt!1581561))))

(declare-fun lt!1581560 () Unit!73428)

(declare-fun lt!1581562 () Unit!73428)

(assert (=> d!1294037 (= lt!1581560 lt!1581562)))

(declare-datatypes ((Option!10536 0))(
  ( (None!10535) (Some!10535 (v!43503 V!10711)) )
))
(declare-fun getValueByKey!522 (List!49228 K!10465) Option!10536)

(assert (=> d!1294037 (= (getValueByKey!522 lt!1581561 (_1!27597 lt!1581218)) (Some!10535 (_2!27597 lt!1581218)))))

(declare-fun lemmaContainsTupThenGetReturnValue!286 (List!49228 K!10465 V!10711) Unit!73428)

(assert (=> d!1294037 (= lt!1581562 (lemmaContainsTupThenGetReturnValue!286 lt!1581561 (_1!27597 lt!1581218) (_2!27597 lt!1581218)))))

(declare-fun insertNoDuplicatedKeys!129 (List!49228 K!10465 V!10711) List!49228)

(assert (=> d!1294037 (= lt!1581561 (insertNoDuplicatedKeys!129 (toList!3101 lt!1581217) (_1!27597 lt!1581218) (_2!27597 lt!1581218)))))

(assert (=> d!1294037 (= (+!750 lt!1581217 lt!1581218) lt!1581563)))

(declare-fun b!4369926 () Bool)

(declare-fun res!1798239 () Bool)

(assert (=> b!4369926 (=> (not res!1798239) (not e!2719761))))

(assert (=> b!4369926 (= res!1798239 (= (getValueByKey!522 (toList!3101 lt!1581563) (_1!27597 lt!1581218)) (Some!10535 (_2!27597 lt!1581218))))))

(declare-fun b!4369927 () Bool)

(declare-fun contains!11408 (List!49228 tuple2!48606) Bool)

(assert (=> b!4369927 (= e!2719761 (contains!11408 (toList!3101 lt!1581563) lt!1581218))))

(assert (= (and d!1294037 res!1798240) b!4369926))

(assert (= (and b!4369926 res!1798239) b!4369927))

(declare-fun m!4994091 () Bool)

(assert (=> d!1294037 m!4994091))

(declare-fun m!4994093 () Bool)

(assert (=> d!1294037 m!4994093))

(declare-fun m!4994095 () Bool)

(assert (=> d!1294037 m!4994095))

(declare-fun m!4994097 () Bool)

(assert (=> d!1294037 m!4994097))

(declare-fun m!4994099 () Bool)

(assert (=> b!4369926 m!4994099))

(declare-fun m!4994101 () Bool)

(assert (=> b!4369927 m!4994101))

(assert (=> b!4369677 d!1294037))

(declare-fun b!4369946 () Bool)

(declare-datatypes ((List!49231 0))(
  ( (Nil!49107) (Cons!49107 (h!54694 K!10465) (t!356153 List!49231)) )
))
(declare-fun e!2719778 () List!49231)

(declare-fun getKeysList!159 (List!49228) List!49231)

(assert (=> b!4369946 (= e!2719778 (getKeysList!159 (toList!3101 (extractMap!618 (toList!3102 lm!1707)))))))

(declare-fun b!4369947 () Bool)

(assert (=> b!4369947 false))

(declare-fun lt!1581587 () Unit!73428)

(declare-fun lt!1581585 () Unit!73428)

(assert (=> b!4369947 (= lt!1581587 lt!1581585)))

(declare-fun containsKey!815 (List!49228 K!10465) Bool)

(assert (=> b!4369947 (containsKey!815 (toList!3101 (extractMap!618 (toList!3102 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!157 (List!49228 K!10465) Unit!73428)

(assert (=> b!4369947 (= lt!1581585 (lemmaInGetKeysListThenContainsKey!157 (toList!3101 (extractMap!618 (toList!3102 lm!1707))) key!3918))))

(declare-fun e!2719779 () Unit!73428)

(declare-fun Unit!73500 () Unit!73428)

(assert (=> b!4369947 (= e!2719779 Unit!73500)))

(declare-fun b!4369948 () Bool)

(declare-fun keys!16635 (ListMap!2345) List!49231)

(assert (=> b!4369948 (= e!2719778 (keys!16635 (extractMap!618 (toList!3102 lm!1707))))))

(declare-fun d!1294039 () Bool)

(declare-fun e!2719775 () Bool)

(assert (=> d!1294039 e!2719775))

(declare-fun res!1798248 () Bool)

(assert (=> d!1294039 (=> res!1798248 e!2719775)))

(declare-fun e!2719777 () Bool)

(assert (=> d!1294039 (= res!1798248 e!2719777)))

(declare-fun res!1798247 () Bool)

(assert (=> d!1294039 (=> (not res!1798247) (not e!2719777))))

(declare-fun lt!1581581 () Bool)

(assert (=> d!1294039 (= res!1798247 (not lt!1581581))))

(declare-fun lt!1581583 () Bool)

(assert (=> d!1294039 (= lt!1581581 lt!1581583)))

(declare-fun lt!1581580 () Unit!73428)

(declare-fun e!2719774 () Unit!73428)

(assert (=> d!1294039 (= lt!1581580 e!2719774)))

(declare-fun c!742949 () Bool)

(assert (=> d!1294039 (= c!742949 lt!1581583)))

(assert (=> d!1294039 (= lt!1581583 (containsKey!815 (toList!3101 (extractMap!618 (toList!3102 lm!1707))) key!3918))))

(assert (=> d!1294039 (= (contains!11403 (extractMap!618 (toList!3102 lm!1707)) key!3918) lt!1581581)))

(declare-fun bm!303726 () Bool)

(declare-fun call!303731 () Bool)

(declare-fun contains!11409 (List!49231 K!10465) Bool)

(assert (=> bm!303726 (= call!303731 (contains!11409 e!2719778 key!3918))))

(declare-fun c!742951 () Bool)

(assert (=> bm!303726 (= c!742951 c!742949)))

(declare-fun b!4369949 () Bool)

(declare-fun e!2719776 () Bool)

(assert (=> b!4369949 (= e!2719775 e!2719776)))

(declare-fun res!1798249 () Bool)

(assert (=> b!4369949 (=> (not res!1798249) (not e!2719776))))

(declare-fun isDefined!7830 (Option!10536) Bool)

(assert (=> b!4369949 (= res!1798249 (isDefined!7830 (getValueByKey!522 (toList!3101 (extractMap!618 (toList!3102 lm!1707))) key!3918)))))

(declare-fun b!4369950 () Bool)

(declare-fun lt!1581582 () Unit!73428)

(assert (=> b!4369950 (= e!2719774 lt!1581582)))

(declare-fun lt!1581584 () Unit!73428)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!433 (List!49228 K!10465) Unit!73428)

(assert (=> b!4369950 (= lt!1581584 (lemmaContainsKeyImpliesGetValueByKeyDefined!433 (toList!3101 (extractMap!618 (toList!3102 lm!1707))) key!3918))))

(assert (=> b!4369950 (isDefined!7830 (getValueByKey!522 (toList!3101 (extractMap!618 (toList!3102 lm!1707))) key!3918))))

(declare-fun lt!1581586 () Unit!73428)

(assert (=> b!4369950 (= lt!1581586 lt!1581584)))

(declare-fun lemmaInListThenGetKeysListContains!156 (List!49228 K!10465) Unit!73428)

(assert (=> b!4369950 (= lt!1581582 (lemmaInListThenGetKeysListContains!156 (toList!3101 (extractMap!618 (toList!3102 lm!1707))) key!3918))))

(assert (=> b!4369950 call!303731))

(declare-fun b!4369951 () Bool)

(declare-fun Unit!73501 () Unit!73428)

(assert (=> b!4369951 (= e!2719779 Unit!73501)))

(declare-fun b!4369952 () Bool)

(assert (=> b!4369952 (= e!2719774 e!2719779)))

(declare-fun c!742950 () Bool)

(assert (=> b!4369952 (= c!742950 call!303731)))

(declare-fun b!4369953 () Bool)

(assert (=> b!4369953 (= e!2719776 (contains!11409 (keys!16635 (extractMap!618 (toList!3102 lm!1707))) key!3918))))

(declare-fun b!4369954 () Bool)

(assert (=> b!4369954 (= e!2719777 (not (contains!11409 (keys!16635 (extractMap!618 (toList!3102 lm!1707))) key!3918)))))

(assert (= (and d!1294039 c!742949) b!4369950))

(assert (= (and d!1294039 (not c!742949)) b!4369952))

(assert (= (and b!4369952 c!742950) b!4369947))

(assert (= (and b!4369952 (not c!742950)) b!4369951))

(assert (= (or b!4369950 b!4369952) bm!303726))

(assert (= (and bm!303726 c!742951) b!4369946))

(assert (= (and bm!303726 (not c!742951)) b!4369948))

(assert (= (and d!1294039 res!1798247) b!4369954))

(assert (= (and d!1294039 (not res!1798248)) b!4369949))

(assert (= (and b!4369949 res!1798249) b!4369953))

(declare-fun m!4994103 () Bool)

(assert (=> b!4369950 m!4994103))

(declare-fun m!4994105 () Bool)

(assert (=> b!4369950 m!4994105))

(assert (=> b!4369950 m!4994105))

(declare-fun m!4994107 () Bool)

(assert (=> b!4369950 m!4994107))

(declare-fun m!4994109 () Bool)

(assert (=> b!4369950 m!4994109))

(assert (=> b!4369954 m!4993637))

(declare-fun m!4994111 () Bool)

(assert (=> b!4369954 m!4994111))

(assert (=> b!4369954 m!4994111))

(declare-fun m!4994113 () Bool)

(assert (=> b!4369954 m!4994113))

(assert (=> b!4369949 m!4994105))

(assert (=> b!4369949 m!4994105))

(assert (=> b!4369949 m!4994107))

(declare-fun m!4994115 () Bool)

(assert (=> bm!303726 m!4994115))

(declare-fun m!4994117 () Bool)

(assert (=> b!4369946 m!4994117))

(declare-fun m!4994119 () Bool)

(assert (=> b!4369947 m!4994119))

(declare-fun m!4994121 () Bool)

(assert (=> b!4369947 m!4994121))

(assert (=> d!1294039 m!4994119))

(assert (=> b!4369953 m!4993637))

(assert (=> b!4369953 m!4994111))

(assert (=> b!4369953 m!4994111))

(assert (=> b!4369953 m!4994113))

(assert (=> b!4369948 m!4993637))

(assert (=> b!4369948 m!4994111))

(assert (=> b!4369670 d!1294039))

(declare-fun bs!638085 () Bool)

(declare-fun d!1294041 () Bool)

(assert (= bs!638085 (and d!1294041 start!424224)))

(declare-fun lambda!143635 () Int)

(assert (=> bs!638085 (= lambda!143635 lambda!143539)))

(declare-fun bs!638086 () Bool)

(assert (= bs!638086 (and d!1294041 d!1294027)))

(assert (=> bs!638086 (= lambda!143635 lambda!143625)))

(declare-fun bs!638087 () Bool)

(assert (= bs!638087 (and d!1294041 d!1294031)))

(assert (=> bs!638087 (= lambda!143635 lambda!143630)))

(declare-fun lt!1581588 () ListMap!2345)

(assert (=> d!1294041 (invariantList!711 (toList!3101 lt!1581588))))

(declare-fun e!2719780 () ListMap!2345)

(assert (=> d!1294041 (= lt!1581588 e!2719780)))

(declare-fun c!742952 () Bool)

(assert (=> d!1294041 (= c!742952 ((_ is Cons!49105) (toList!3102 lm!1707)))))

(assert (=> d!1294041 (forall!9235 (toList!3102 lm!1707) lambda!143635)))

(assert (=> d!1294041 (= (extractMap!618 (toList!3102 lm!1707)) lt!1581588)))

(declare-fun b!4369955 () Bool)

(assert (=> b!4369955 (= e!2719780 (addToMapMapFromBucket!240 (_2!27598 (h!54690 (toList!3102 lm!1707))) (extractMap!618 (t!356151 (toList!3102 lm!1707)))))))

(declare-fun b!4369956 () Bool)

(assert (=> b!4369956 (= e!2719780 (ListMap!2346 Nil!49104))))

(assert (= (and d!1294041 c!742952) b!4369955))

(assert (= (and d!1294041 (not c!742952)) b!4369956))

(declare-fun m!4994123 () Bool)

(assert (=> d!1294041 m!4994123))

(declare-fun m!4994125 () Bool)

(assert (=> d!1294041 m!4994125))

(assert (=> b!4369955 m!4993655))

(assert (=> b!4369955 m!4993655))

(declare-fun m!4994127 () Bool)

(assert (=> b!4369955 m!4994127))

(assert (=> b!4369670 d!1294041))

(declare-fun d!1294043 () Bool)

(declare-fun res!1798254 () Bool)

(declare-fun e!2719785 () Bool)

(assert (=> d!1294043 (=> res!1798254 e!2719785)))

(assert (=> d!1294043 (= res!1798254 (not ((_ is Cons!49104) newBucket!200)))))

(assert (=> d!1294043 (= (noDuplicateKeys!559 newBucket!200) e!2719785)))

(declare-fun b!4369961 () Bool)

(declare-fun e!2719786 () Bool)

(assert (=> b!4369961 (= e!2719785 e!2719786)))

(declare-fun res!1798255 () Bool)

(assert (=> b!4369961 (=> (not res!1798255) (not e!2719786))))

(assert (=> b!4369961 (= res!1798255 (not (containsKey!811 (t!356150 newBucket!200) (_1!27597 (h!54689 newBucket!200)))))))

(declare-fun b!4369962 () Bool)

(assert (=> b!4369962 (= e!2719786 (noDuplicateKeys!559 (t!356150 newBucket!200)))))

(assert (= (and d!1294043 (not res!1798254)) b!4369961))

(assert (= (and b!4369961 res!1798255) b!4369962))

(declare-fun m!4994129 () Bool)

(assert (=> b!4369961 m!4994129))

(declare-fun m!4994131 () Bool)

(assert (=> b!4369962 m!4994131))

(assert (=> b!4369669 d!1294043))

(declare-fun bs!638088 () Bool)

(declare-fun d!1294045 () Bool)

(assert (= bs!638088 (and d!1294045 b!4369895)))

(declare-fun lambda!143638 () Int)

(assert (=> bs!638088 (not (= lambda!143638 lambda!143621))))

(declare-fun bs!638089 () Bool)

(assert (= bs!638089 (and d!1294045 b!4369921)))

(assert (=> bs!638089 (not (= lambda!143638 lambda!143632))))

(declare-fun bs!638090 () Bool)

(assert (= bs!638090 (and d!1294045 b!4369919)))

(assert (=> bs!638090 (not (= lambda!143638 lambda!143631))))

(declare-fun bs!638091 () Bool)

(assert (= bs!638091 (and d!1294045 d!1294029)))

(assert (=> bs!638091 (not (= lambda!143638 lambda!143629))))

(declare-fun bs!638092 () Bool)

(assert (= bs!638092 (and d!1294045 b!4369908)))

(assert (=> bs!638092 (not (= lambda!143638 lambda!143627))))

(declare-fun bs!638093 () Bool)

(assert (= bs!638093 (and d!1294045 d!1294035)))

(assert (=> bs!638093 (not (= lambda!143638 lambda!143634))))

(assert (=> bs!638092 (not (= lambda!143638 lambda!143628))))

(declare-fun bs!638094 () Bool)

(assert (= bs!638094 (and d!1294045 b!4369906)))

(assert (=> bs!638094 (not (= lambda!143638 lambda!143626))))

(assert (=> bs!638088 (not (= lambda!143638 lambda!143620))))

(assert (=> bs!638089 (not (= lambda!143638 lambda!143633))))

(declare-fun bs!638095 () Bool)

(assert (= bs!638095 (and d!1294045 d!1293981)))

(assert (=> bs!638095 (not (= lambda!143638 lambda!143622))))

(declare-fun bs!638096 () Bool)

(assert (= bs!638096 (and d!1294045 b!4369893)))

(assert (=> bs!638096 (not (= lambda!143638 lambda!143619))))

(assert (=> d!1294045 true))

(assert (=> d!1294045 true))

(assert (=> d!1294045 (= (allKeysSameHash!517 newBucket!200 hash!377 hashF!1247) (forall!9237 newBucket!200 lambda!143638))))

(declare-fun bs!638097 () Bool)

(assert (= bs!638097 d!1294045))

(declare-fun m!4994133 () Bool)

(assert (=> bs!638097 m!4994133))

(assert (=> b!4369679 d!1294045))

(assert (=> start!424224 d!1293977))

(declare-fun d!1294047 () Bool)

(assert (=> d!1294047 (= (inv!64651 lm!1707) (isStrictlySorted!138 (toList!3102 lm!1707)))))

(declare-fun bs!638098 () Bool)

(assert (= bs!638098 d!1294047))

(assert (=> bs!638098 m!4993717))

(assert (=> start!424224 d!1294047))

(declare-fun bs!638099 () Bool)

(declare-fun d!1294049 () Bool)

(assert (= bs!638099 (and d!1294049 start!424224)))

(declare-fun lambda!143641 () Int)

(assert (=> bs!638099 (not (= lambda!143641 lambda!143539))))

(declare-fun bs!638100 () Bool)

(assert (= bs!638100 (and d!1294049 d!1294027)))

(assert (=> bs!638100 (not (= lambda!143641 lambda!143625))))

(declare-fun bs!638101 () Bool)

(assert (= bs!638101 (and d!1294049 d!1294031)))

(assert (=> bs!638101 (not (= lambda!143641 lambda!143630))))

(declare-fun bs!638102 () Bool)

(assert (= bs!638102 (and d!1294049 d!1294041)))

(assert (=> bs!638102 (not (= lambda!143641 lambda!143635))))

(assert (=> d!1294049 true))

(assert (=> d!1294049 (= (allKeysSameHashInMap!663 lm!1707 hashF!1247) (forall!9235 (toList!3102 lm!1707) lambda!143641))))

(declare-fun bs!638103 () Bool)

(assert (= bs!638103 d!1294049))

(declare-fun m!4994135 () Bool)

(assert (=> bs!638103 m!4994135))

(assert (=> b!4369668 d!1294049))

(declare-fun tp!1330938 () Bool)

(declare-fun b!4369973 () Bool)

(declare-fun e!2719789 () Bool)

(assert (=> b!4369973 (= e!2719789 (and tp_is_empty!25473 tp_is_empty!25475 tp!1330938))))

(assert (=> b!4369676 (= tp!1330926 e!2719789)))

(assert (= (and b!4369676 ((_ is Cons!49104) (t!356150 newBucket!200))) b!4369973))

(declare-fun b!4369978 () Bool)

(declare-fun e!2719792 () Bool)

(declare-fun tp!1330943 () Bool)

(declare-fun tp!1330944 () Bool)

(assert (=> b!4369978 (= e!2719792 (and tp!1330943 tp!1330944))))

(assert (=> b!4369673 (= tp!1330925 e!2719792)))

(assert (= (and b!4369673 ((_ is Cons!49105) (toList!3102 lm!1707))) b!4369978))

(declare-fun b_lambda!132917 () Bool)

(assert (= b_lambda!132895 (or start!424224 b_lambda!132917)))

(declare-fun bs!638104 () Bool)

(declare-fun d!1294051 () Bool)

(assert (= bs!638104 (and d!1294051 start!424224)))

(assert (=> bs!638104 (= (dynLambda!20689 lambda!143539 lt!1581210) (noDuplicateKeys!559 (_2!27598 lt!1581210)))))

(declare-fun m!4994137 () Bool)

(assert (=> bs!638104 m!4994137))

(assert (=> d!1293965 d!1294051))

(declare-fun b_lambda!132919 () Bool)

(assert (= b_lambda!132897 (or start!424224 b_lambda!132919)))

(declare-fun bs!638105 () Bool)

(declare-fun d!1294053 () Bool)

(assert (= bs!638105 (and d!1294053 start!424224)))

(assert (=> bs!638105 (= (dynLambda!20689 lambda!143539 (h!54690 (toList!3102 lt!1581211))) (noDuplicateKeys!559 (_2!27598 (h!54690 (toList!3102 lt!1581211)))))))

(declare-fun m!4994139 () Bool)

(assert (=> bs!638105 m!4994139))

(assert (=> b!4369742 d!1294053))

(declare-fun b_lambda!132921 () Bool)

(assert (= b_lambda!132901 (or start!424224 b_lambda!132921)))

(declare-fun bs!638106 () Bool)

(declare-fun d!1294055 () Bool)

(assert (= bs!638106 (and d!1294055 start!424224)))

(assert (=> bs!638106 (= (dynLambda!20689 lambda!143539 (h!54690 (toList!3102 lm!1707))) (noDuplicateKeys!559 (_2!27598 (h!54690 (toList!3102 lm!1707)))))))

(declare-fun m!4994141 () Bool)

(assert (=> bs!638106 m!4994141))

(assert (=> b!4369758 d!1294055))

(declare-fun b_lambda!132923 () Bool)

(assert (= b_lambda!132899 (or start!424224 b_lambda!132923)))

(declare-fun bs!638107 () Bool)

(declare-fun d!1294057 () Bool)

(assert (= bs!638107 (and d!1294057 start!424224)))

(assert (=> bs!638107 (= (dynLambda!20689 lambda!143539 (tuple2!48609 hash!377 newBucket!200)) (noDuplicateKeys!559 (_2!27598 (tuple2!48609 hash!377 newBucket!200))))))

(declare-fun m!4994143 () Bool)

(assert (=> bs!638107 m!4994143))

(assert (=> b!4369757 d!1294057))

(check-sat (not b!4369918) (not bm!303719) (not b!4369908) (not bm!303715) (not b!4369759) (not b!4369954) (not b!4369946) (not b!4369743) (not bs!638107) (not b_lambda!132923) (not bm!303718) (not b!4369920) (not b!4369948) (not b_lambda!132921) (not d!1294049) (not d!1294029) (not b!4369973) (not b_lambda!132919) (not d!1294035) (not b!4369955) (not bm!303723) (not bs!638104) (not b_lambda!132917) (not b!4369895) (not d!1293951) (not bm!303722) tp_is_empty!25475 (not bs!638106) (not d!1294027) (not b!4369916) (not bm!303717) (not b!4369962) (not b!4369947) (not b!4369907) (not b!4369902) (not b!4369725) (not d!1293973) (not d!1294039) (not b!4369709) (not d!1293959) (not b!4369892) (not d!1294031) tp_is_empty!25473 (not b!4369927) (not b!4369749) (not b!4369894) (not bs!638105) (not d!1294041) (not b!4369737) (not b!4369950) (not b!4369728) (not d!1293969) (not b!4369748) (not d!1293965) (not d!1293981) (not b!4369909) (not b!4369721) (not bm!303716) (not d!1293979) (not bm!303721) (not d!1293975) (not b!4369905) (not d!1293967) (not b!4369735) (not d!1294037) (not d!1293963) (not d!1294047) (not b!4369921) (not b!4369978) (not bm!303726) (not bm!303720) (not b!4369961) (not b!4369953) (not b!4369926) (not d!1294045) (not b!4369949))
(check-sat)
