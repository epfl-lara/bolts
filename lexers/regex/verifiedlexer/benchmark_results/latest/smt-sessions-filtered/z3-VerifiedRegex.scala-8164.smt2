; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!420188 () Bool)

(assert start!420188)

(declare-fun b!4349567 () Bool)

(declare-fun e!2706708 () Bool)

(declare-datatypes ((V!10471 0))(
  ( (V!10472 (val!16451 Int)) )
))
(declare-datatypes ((K!10225 0))(
  ( (K!10226 (val!16452 Int)) )
))
(declare-datatypes ((tuple2!48222 0))(
  ( (tuple2!48223 (_1!27405 K!10225) (_2!27405 V!10471)) )
))
(declare-datatypes ((List!48985 0))(
  ( (Nil!48861) (Cons!48861 (h!54394 tuple2!48222) (t!355905 List!48985)) )
))
(declare-datatypes ((tuple2!48224 0))(
  ( (tuple2!48225 (_1!27406 (_ BitVec 64)) (_2!27406 List!48985)) )
))
(declare-datatypes ((List!48986 0))(
  ( (Nil!48862) (Cons!48862 (h!54395 tuple2!48224) (t!355906 List!48986)) )
))
(declare-datatypes ((ListLongMap!1559 0))(
  ( (ListLongMap!1560 (toList!2909 List!48986)) )
))
(declare-fun lm!1707 () ListLongMap!1559)

(declare-fun isEmpty!28169 (ListLongMap!1559) Bool)

(assert (=> b!4349567 (= e!2706708 (not (isEmpty!28169 lm!1707)))))

(declare-fun e!2706714 () Bool)

(assert (=> b!4349567 e!2706714))

(declare-fun res!1786719 () Bool)

(assert (=> b!4349567 (=> (not res!1786719) (not e!2706714))))

(declare-datatypes ((ListMap!2153 0))(
  ( (ListMap!2154 (toList!2910 List!48985)) )
))
(declare-fun lt!1563608 () ListMap!2153)

(declare-fun key!3918 () K!10225)

(declare-fun contains!11024 (ListMap!2153 K!10225) Bool)

(assert (=> b!4349567 (= res!1786719 (contains!11024 lt!1563608 key!3918))))

(declare-datatypes ((Unit!70923 0))(
  ( (Unit!70924) )
))
(declare-fun lt!1563614 () Unit!70923)

(declare-fun newValue!99 () V!10471)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!6 (List!48985 K!10225 V!10471 ListMap!2153) Unit!70923)

(assert (=> b!4349567 (= lt!1563614 (lemmaAddToMapContainsAndNotInListThenInAcc!6 (_2!27406 (h!54395 (toList!2909 lm!1707))) key!3918 newValue!99 lt!1563608))))

(declare-fun extractMap!522 (List!48986) ListMap!2153)

(assert (=> b!4349567 (= lt!1563608 (extractMap!522 (t!355906 (toList!2909 lm!1707))))))

(declare-fun e!2706712 () Bool)

(assert (=> b!4349567 e!2706712))

(declare-fun res!1786723 () Bool)

(assert (=> b!4349567 (=> (not res!1786723) (not e!2706712))))

(declare-fun containsKey!630 (List!48985 K!10225) Bool)

(declare-fun apply!11315 (ListLongMap!1559 (_ BitVec 64)) List!48985)

(assert (=> b!4349567 (= res!1786723 (not (containsKey!630 (apply!11315 lm!1707 (_1!27406 (h!54395 (toList!2909 lm!1707)))) key!3918)))))

(declare-datatypes ((Hashable!4855 0))(
  ( (HashableExt!4854 (__x!30558 Int)) )
))
(declare-fun hashF!1247 () Hashable!4855)

(declare-fun lt!1563615 () Unit!70923)

(declare-fun lemmaNotSameHashThenCannotContainKey!10 (ListLongMap!1559 K!10225 (_ BitVec 64) Hashable!4855) Unit!70923)

(assert (=> b!4349567 (= lt!1563615 (lemmaNotSameHashThenCannotContainKey!10 lm!1707 key!3918 (_1!27406 (h!54395 (toList!2909 lm!1707))) hashF!1247))))

(declare-fun b!4349568 () Bool)

(declare-fun res!1786714 () Bool)

(declare-fun e!2706711 () Bool)

(assert (=> b!4349568 (=> res!1786714 e!2706711)))

(declare-fun newBucket!200 () List!48985)

(declare-fun noDuplicateKeys!463 (List!48985) Bool)

(assert (=> b!4349568 (= res!1786714 (not (noDuplicateKeys!463 newBucket!200)))))

(declare-fun b!4349569 () Bool)

(declare-fun e!2706709 () Bool)

(assert (=> b!4349569 (= e!2706709 (not e!2706711))))

(declare-fun res!1786717 () Bool)

(assert (=> b!4349569 (=> res!1786717 e!2706711)))

(declare-fun lt!1563613 () List!48985)

(declare-fun removePairForKey!433 (List!48985 K!10225) List!48985)

(assert (=> b!4349569 (= res!1786717 (not (= newBucket!200 (Cons!48861 (tuple2!48223 key!3918 newValue!99) (removePairForKey!433 lt!1563613 key!3918)))))))

(declare-fun lt!1563616 () Unit!70923)

(declare-fun lambda!139091 () Int)

(declare-fun lt!1563612 () tuple2!48224)

(declare-fun forallContained!1717 (List!48986 Int tuple2!48224) Unit!70923)

(assert (=> b!4349569 (= lt!1563616 (forallContained!1717 (toList!2909 lm!1707) lambda!139091 lt!1563612))))

(declare-fun contains!11025 (List!48986 tuple2!48224) Bool)

(assert (=> b!4349569 (contains!11025 (toList!2909 lm!1707) lt!1563612)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4349569 (= lt!1563612 (tuple2!48225 hash!377 lt!1563613))))

(declare-fun lt!1563609 () Unit!70923)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!310 (List!48986 (_ BitVec 64) List!48985) Unit!70923)

(assert (=> b!4349569 (= lt!1563609 (lemmaGetValueByKeyImpliesContainsTuple!310 (toList!2909 lm!1707) hash!377 lt!1563613))))

(assert (=> b!4349569 (= lt!1563613 (apply!11315 lm!1707 hash!377))))

(declare-fun b!4349570 () Bool)

(declare-fun res!1786720 () Bool)

(assert (=> b!4349570 (=> (not res!1786720) (not e!2706709))))

(declare-fun allKeysSameHashInMap!567 (ListLongMap!1559 Hashable!4855) Bool)

(assert (=> b!4349570 (= res!1786720 (allKeysSameHashInMap!567 lm!1707 hashF!1247))))

(declare-fun b!4349571 () Bool)

(assert (=> b!4349571 (= e!2706711 e!2706708)))

(declare-fun res!1786715 () Bool)

(assert (=> b!4349571 (=> res!1786715 e!2706708)))

(get-info :version)

(assert (=> b!4349571 (= res!1786715 (or (and ((_ is Cons!48862) (toList!2909 lm!1707)) (= (_1!27406 (h!54395 (toList!2909 lm!1707))) hash!377)) (not ((_ is Cons!48862) (toList!2909 lm!1707))) (= (_1!27406 (h!54395 (toList!2909 lm!1707))) hash!377)))))

(declare-fun e!2706713 () Bool)

(assert (=> b!4349571 e!2706713))

(declare-fun res!1786721 () Bool)

(assert (=> b!4349571 (=> (not res!1786721) (not e!2706713))))

(declare-fun lt!1563610 () ListLongMap!1559)

(declare-fun forall!9069 (List!48986 Int) Bool)

(assert (=> b!4349571 (= res!1786721 (forall!9069 (toList!2909 lt!1563610) lambda!139091))))

(declare-fun +!588 (ListLongMap!1559 tuple2!48224) ListLongMap!1559)

(assert (=> b!4349571 (= lt!1563610 (+!588 lm!1707 (tuple2!48225 hash!377 newBucket!200)))))

(declare-fun lt!1563611 () Unit!70923)

(declare-fun addValidProp!117 (ListLongMap!1559 Int (_ BitVec 64) List!48985) Unit!70923)

(assert (=> b!4349571 (= lt!1563611 (addValidProp!117 lm!1707 lambda!139091 hash!377 newBucket!200))))

(assert (=> b!4349571 (forall!9069 (toList!2909 lm!1707) lambda!139091)))

(declare-fun b!4349572 () Bool)

(declare-fun res!1786716 () Bool)

(assert (=> b!4349572 (=> (not res!1786716) (not e!2706709))))

(assert (=> b!4349572 (= res!1786716 (contains!11024 (extractMap!522 (toList!2909 lm!1707)) key!3918))))

(declare-fun b!4349573 () Bool)

(assert (=> b!4349573 (= e!2706712 (not (containsKey!630 (_2!27406 (h!54395 (toList!2909 lm!1707))) key!3918)))))

(declare-fun tp_is_empty!25091 () Bool)

(declare-fun tp!1329782 () Bool)

(declare-fun tp_is_empty!25089 () Bool)

(declare-fun b!4349574 () Bool)

(declare-fun e!2706710 () Bool)

(assert (=> b!4349574 (= e!2706710 (and tp_is_empty!25089 tp_is_empty!25091 tp!1329782))))

(declare-fun b!4349575 () Bool)

(assert (=> b!4349575 (= e!2706713 (forall!9069 (toList!2909 lt!1563610) lambda!139091))))

(declare-fun b!4349576 () Bool)

(declare-fun e!2706707 () Bool)

(declare-fun tp!1329781 () Bool)

(assert (=> b!4349576 (= e!2706707 tp!1329781)))

(declare-fun b!4349577 () Bool)

(declare-fun tail!6953 (ListLongMap!1559) ListLongMap!1559)

(assert (=> b!4349577 (= e!2706714 (contains!11024 (extractMap!522 (toList!2909 (tail!6953 lm!1707))) key!3918))))

(declare-fun res!1786722 () Bool)

(assert (=> start!420188 (=> (not res!1786722) (not e!2706709))))

(assert (=> start!420188 (= res!1786722 (forall!9069 (toList!2909 lm!1707) lambda!139091))))

(assert (=> start!420188 e!2706709))

(assert (=> start!420188 e!2706710))

(assert (=> start!420188 true))

(declare-fun inv!64411 (ListLongMap!1559) Bool)

(assert (=> start!420188 (and (inv!64411 lm!1707) e!2706707)))

(assert (=> start!420188 tp_is_empty!25089))

(assert (=> start!420188 tp_is_empty!25091))

(declare-fun b!4349578 () Bool)

(declare-fun res!1786725 () Bool)

(assert (=> b!4349578 (=> (not res!1786725) (not e!2706709))))

(declare-fun hash!1466 (Hashable!4855 K!10225) (_ BitVec 64))

(assert (=> b!4349578 (= res!1786725 (= (hash!1466 hashF!1247 key!3918) hash!377))))

(declare-fun b!4349579 () Bool)

(declare-fun res!1786724 () Bool)

(assert (=> b!4349579 (=> (not res!1786724) (not e!2706709))))

(declare-fun allKeysSameHash!421 (List!48985 (_ BitVec 64) Hashable!4855) Bool)

(assert (=> b!4349579 (= res!1786724 (allKeysSameHash!421 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4349580 () Bool)

(declare-fun res!1786718 () Bool)

(assert (=> b!4349580 (=> (not res!1786718) (not e!2706709))))

(declare-fun contains!11026 (ListLongMap!1559 (_ BitVec 64)) Bool)

(assert (=> b!4349580 (= res!1786718 (contains!11026 lm!1707 hash!377))))

(assert (= (and start!420188 res!1786722) b!4349570))

(assert (= (and b!4349570 res!1786720) b!4349578))

(assert (= (and b!4349578 res!1786725) b!4349579))

(assert (= (and b!4349579 res!1786724) b!4349572))

(assert (= (and b!4349572 res!1786716) b!4349580))

(assert (= (and b!4349580 res!1786718) b!4349569))

(assert (= (and b!4349569 (not res!1786717)) b!4349568))

(assert (= (and b!4349568 (not res!1786714)) b!4349571))

(assert (= (and b!4349571 res!1786721) b!4349575))

(assert (= (and b!4349571 (not res!1786715)) b!4349567))

(assert (= (and b!4349567 res!1786723) b!4349573))

(assert (= (and b!4349567 res!1786719) b!4349577))

(assert (= (and start!420188 ((_ is Cons!48861) newBucket!200)) b!4349574))

(assert (= start!420188 b!4349576))

(declare-fun m!4959199 () Bool)

(assert (=> b!4349575 m!4959199))

(declare-fun m!4959201 () Bool)

(assert (=> b!4349578 m!4959201))

(assert (=> b!4349571 m!4959199))

(declare-fun m!4959203 () Bool)

(assert (=> b!4349571 m!4959203))

(declare-fun m!4959205 () Bool)

(assert (=> b!4349571 m!4959205))

(declare-fun m!4959207 () Bool)

(assert (=> b!4349571 m!4959207))

(declare-fun m!4959209 () Bool)

(assert (=> b!4349572 m!4959209))

(assert (=> b!4349572 m!4959209))

(declare-fun m!4959211 () Bool)

(assert (=> b!4349572 m!4959211))

(assert (=> start!420188 m!4959207))

(declare-fun m!4959213 () Bool)

(assert (=> start!420188 m!4959213))

(declare-fun m!4959215 () Bool)

(assert (=> b!4349577 m!4959215))

(declare-fun m!4959217 () Bool)

(assert (=> b!4349577 m!4959217))

(assert (=> b!4349577 m!4959217))

(declare-fun m!4959219 () Bool)

(assert (=> b!4349577 m!4959219))

(declare-fun m!4959221 () Bool)

(assert (=> b!4349580 m!4959221))

(declare-fun m!4959223 () Bool)

(assert (=> b!4349573 m!4959223))

(declare-fun m!4959225 () Bool)

(assert (=> b!4349569 m!4959225))

(declare-fun m!4959227 () Bool)

(assert (=> b!4349569 m!4959227))

(declare-fun m!4959229 () Bool)

(assert (=> b!4349569 m!4959229))

(declare-fun m!4959231 () Bool)

(assert (=> b!4349569 m!4959231))

(declare-fun m!4959233 () Bool)

(assert (=> b!4349569 m!4959233))

(declare-fun m!4959235 () Bool)

(assert (=> b!4349567 m!4959235))

(declare-fun m!4959237 () Bool)

(assert (=> b!4349567 m!4959237))

(declare-fun m!4959239 () Bool)

(assert (=> b!4349567 m!4959239))

(declare-fun m!4959241 () Bool)

(assert (=> b!4349567 m!4959241))

(declare-fun m!4959243 () Bool)

(assert (=> b!4349567 m!4959243))

(declare-fun m!4959245 () Bool)

(assert (=> b!4349567 m!4959245))

(assert (=> b!4349567 m!4959245))

(declare-fun m!4959247 () Bool)

(assert (=> b!4349567 m!4959247))

(declare-fun m!4959249 () Bool)

(assert (=> b!4349568 m!4959249))

(declare-fun m!4959251 () Bool)

(assert (=> b!4349570 m!4959251))

(declare-fun m!4959253 () Bool)

(assert (=> b!4349579 m!4959253))

(check-sat (not b!4349580) (not b!4349574) (not b!4349569) (not b!4349578) (not b!4349568) (not b!4349573) (not b!4349576) (not b!4349572) (not b!4349575) tp_is_empty!25091 (not b!4349577) (not b!4349570) tp_is_empty!25089 (not b!4349571) (not start!420188) (not b!4349579) (not b!4349567))
(check-sat)
(get-model)

(declare-fun d!1284565 () Bool)

(declare-fun res!1786739 () Bool)

(declare-fun e!2706731 () Bool)

(assert (=> d!1284565 (=> res!1786739 e!2706731)))

(assert (=> d!1284565 (= res!1786739 ((_ is Nil!48862) (toList!2909 lt!1563610)))))

(assert (=> d!1284565 (= (forall!9069 (toList!2909 lt!1563610) lambda!139091) e!2706731)))

(declare-fun b!4349600 () Bool)

(declare-fun e!2706732 () Bool)

(assert (=> b!4349600 (= e!2706731 e!2706732)))

(declare-fun res!1786740 () Bool)

(assert (=> b!4349600 (=> (not res!1786740) (not e!2706732))))

(declare-fun dynLambda!20608 (Int tuple2!48224) Bool)

(assert (=> b!4349600 (= res!1786740 (dynLambda!20608 lambda!139091 (h!54395 (toList!2909 lt!1563610))))))

(declare-fun b!4349601 () Bool)

(assert (=> b!4349601 (= e!2706732 (forall!9069 (t!355906 (toList!2909 lt!1563610)) lambda!139091))))

(assert (= (and d!1284565 (not res!1786739)) b!4349600))

(assert (= (and b!4349600 res!1786740) b!4349601))

(declare-fun b_lambda!130427 () Bool)

(assert (=> (not b_lambda!130427) (not b!4349600)))

(declare-fun m!4959269 () Bool)

(assert (=> b!4349600 m!4959269))

(declare-fun m!4959271 () Bool)

(assert (=> b!4349601 m!4959271))

(assert (=> b!4349571 d!1284565))

(declare-fun d!1284571 () Bool)

(declare-fun e!2706735 () Bool)

(assert (=> d!1284571 e!2706735))

(declare-fun res!1786745 () Bool)

(assert (=> d!1284571 (=> (not res!1786745) (not e!2706735))))

(declare-fun lt!1563637 () ListLongMap!1559)

(assert (=> d!1284571 (= res!1786745 (contains!11026 lt!1563637 (_1!27406 (tuple2!48225 hash!377 newBucket!200))))))

(declare-fun lt!1563640 () List!48986)

(assert (=> d!1284571 (= lt!1563637 (ListLongMap!1560 lt!1563640))))

(declare-fun lt!1563638 () Unit!70923)

(declare-fun lt!1563639 () Unit!70923)

(assert (=> d!1284571 (= lt!1563638 lt!1563639)))

(declare-datatypes ((Option!10432 0))(
  ( (None!10431) (Some!10431 (v!43249 List!48985)) )
))
(declare-fun getValueByKey!418 (List!48986 (_ BitVec 64)) Option!10432)

(assert (=> d!1284571 (= (getValueByKey!418 lt!1563640 (_1!27406 (tuple2!48225 hash!377 newBucket!200))) (Some!10431 (_2!27406 (tuple2!48225 hash!377 newBucket!200))))))

(declare-fun lemmaContainsTupThenGetReturnValue!193 (List!48986 (_ BitVec 64) List!48985) Unit!70923)

(assert (=> d!1284571 (= lt!1563639 (lemmaContainsTupThenGetReturnValue!193 lt!1563640 (_1!27406 (tuple2!48225 hash!377 newBucket!200)) (_2!27406 (tuple2!48225 hash!377 newBucket!200))))))

(declare-fun insertStrictlySorted!116 (List!48986 (_ BitVec 64) List!48985) List!48986)

(assert (=> d!1284571 (= lt!1563640 (insertStrictlySorted!116 (toList!2909 lm!1707) (_1!27406 (tuple2!48225 hash!377 newBucket!200)) (_2!27406 (tuple2!48225 hash!377 newBucket!200))))))

(assert (=> d!1284571 (= (+!588 lm!1707 (tuple2!48225 hash!377 newBucket!200)) lt!1563637)))

(declare-fun b!4349606 () Bool)

(declare-fun res!1786746 () Bool)

(assert (=> b!4349606 (=> (not res!1786746) (not e!2706735))))

(assert (=> b!4349606 (= res!1786746 (= (getValueByKey!418 (toList!2909 lt!1563637) (_1!27406 (tuple2!48225 hash!377 newBucket!200))) (Some!10431 (_2!27406 (tuple2!48225 hash!377 newBucket!200)))))))

(declare-fun b!4349607 () Bool)

(assert (=> b!4349607 (= e!2706735 (contains!11025 (toList!2909 lt!1563637) (tuple2!48225 hash!377 newBucket!200)))))

(assert (= (and d!1284571 res!1786745) b!4349606))

(assert (= (and b!4349606 res!1786746) b!4349607))

(declare-fun m!4959273 () Bool)

(assert (=> d!1284571 m!4959273))

(declare-fun m!4959275 () Bool)

(assert (=> d!1284571 m!4959275))

(declare-fun m!4959277 () Bool)

(assert (=> d!1284571 m!4959277))

(declare-fun m!4959279 () Bool)

(assert (=> d!1284571 m!4959279))

(declare-fun m!4959281 () Bool)

(assert (=> b!4349606 m!4959281))

(declare-fun m!4959283 () Bool)

(assert (=> b!4349607 m!4959283))

(assert (=> b!4349571 d!1284571))

(declare-fun d!1284573 () Bool)

(assert (=> d!1284573 (forall!9069 (toList!2909 (+!588 lm!1707 (tuple2!48225 hash!377 newBucket!200))) lambda!139091)))

(declare-fun lt!1563659 () Unit!70923)

(declare-fun choose!26741 (ListLongMap!1559 Int (_ BitVec 64) List!48985) Unit!70923)

(assert (=> d!1284573 (= lt!1563659 (choose!26741 lm!1707 lambda!139091 hash!377 newBucket!200))))

(declare-fun e!2706750 () Bool)

(assert (=> d!1284573 e!2706750))

(declare-fun res!1786755 () Bool)

(assert (=> d!1284573 (=> (not res!1786755) (not e!2706750))))

(assert (=> d!1284573 (= res!1786755 (forall!9069 (toList!2909 lm!1707) lambda!139091))))

(assert (=> d!1284573 (= (addValidProp!117 lm!1707 lambda!139091 hash!377 newBucket!200) lt!1563659)))

(declare-fun b!4349629 () Bool)

(assert (=> b!4349629 (= e!2706750 (dynLambda!20608 lambda!139091 (tuple2!48225 hash!377 newBucket!200)))))

(assert (= (and d!1284573 res!1786755) b!4349629))

(declare-fun b_lambda!130429 () Bool)

(assert (=> (not b_lambda!130429) (not b!4349629)))

(assert (=> d!1284573 m!4959203))

(declare-fun m!4959285 () Bool)

(assert (=> d!1284573 m!4959285))

(declare-fun m!4959287 () Bool)

(assert (=> d!1284573 m!4959287))

(assert (=> d!1284573 m!4959207))

(declare-fun m!4959289 () Bool)

(assert (=> b!4349629 m!4959289))

(assert (=> b!4349571 d!1284573))

(declare-fun d!1284575 () Bool)

(declare-fun res!1786756 () Bool)

(declare-fun e!2706751 () Bool)

(assert (=> d!1284575 (=> res!1786756 e!2706751)))

(assert (=> d!1284575 (= res!1786756 ((_ is Nil!48862) (toList!2909 lm!1707)))))

(assert (=> d!1284575 (= (forall!9069 (toList!2909 lm!1707) lambda!139091) e!2706751)))

(declare-fun b!4349630 () Bool)

(declare-fun e!2706752 () Bool)

(assert (=> b!4349630 (= e!2706751 e!2706752)))

(declare-fun res!1786757 () Bool)

(assert (=> b!4349630 (=> (not res!1786757) (not e!2706752))))

(assert (=> b!4349630 (= res!1786757 (dynLambda!20608 lambda!139091 (h!54395 (toList!2909 lm!1707))))))

(declare-fun b!4349631 () Bool)

(assert (=> b!4349631 (= e!2706752 (forall!9069 (t!355906 (toList!2909 lm!1707)) lambda!139091))))

(assert (= (and d!1284575 (not res!1786756)) b!4349630))

(assert (= (and b!4349630 res!1786757) b!4349631))

(declare-fun b_lambda!130431 () Bool)

(assert (=> (not b_lambda!130431) (not b!4349630)))

(declare-fun m!4959291 () Bool)

(assert (=> b!4349630 m!4959291))

(declare-fun m!4959293 () Bool)

(assert (=> b!4349631 m!4959293))

(assert (=> b!4349571 d!1284575))

(declare-fun bs!628571 () Bool)

(declare-fun d!1284577 () Bool)

(assert (= bs!628571 (and d!1284577 start!420188)))

(declare-fun lambda!139094 () Int)

(assert (=> bs!628571 (not (= lambda!139094 lambda!139091))))

(assert (=> d!1284577 true))

(assert (=> d!1284577 (= (allKeysSameHashInMap!567 lm!1707 hashF!1247) (forall!9069 (toList!2909 lm!1707) lambda!139094))))

(declare-fun bs!628572 () Bool)

(assert (= bs!628572 d!1284577))

(declare-fun m!4959295 () Bool)

(assert (=> bs!628572 m!4959295))

(assert (=> b!4349570 d!1284577))

(declare-fun d!1284579 () Bool)

(declare-fun get!15864 (Option!10432) List!48985)

(assert (=> d!1284579 (= (apply!11315 lm!1707 hash!377) (get!15864 (getValueByKey!418 (toList!2909 lm!1707) hash!377)))))

(declare-fun bs!628573 () Bool)

(assert (= bs!628573 d!1284579))

(declare-fun m!4959317 () Bool)

(assert (=> bs!628573 m!4959317))

(assert (=> bs!628573 m!4959317))

(declare-fun m!4959319 () Bool)

(assert (=> bs!628573 m!4959319))

(assert (=> b!4349569 d!1284579))

(declare-fun d!1284583 () Bool)

(declare-fun lt!1563673 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7678 (List!48986) (InoxSet tuple2!48224))

(assert (=> d!1284583 (= lt!1563673 (select (content!7678 (toList!2909 lm!1707)) lt!1563612))))

(declare-fun e!2706764 () Bool)

(assert (=> d!1284583 (= lt!1563673 e!2706764)))

(declare-fun res!1786765 () Bool)

(assert (=> d!1284583 (=> (not res!1786765) (not e!2706764))))

(assert (=> d!1284583 (= res!1786765 ((_ is Cons!48862) (toList!2909 lm!1707)))))

(assert (=> d!1284583 (= (contains!11025 (toList!2909 lm!1707) lt!1563612) lt!1563673)))

(declare-fun b!4349647 () Bool)

(declare-fun e!2706763 () Bool)

(assert (=> b!4349647 (= e!2706764 e!2706763)))

(declare-fun res!1786766 () Bool)

(assert (=> b!4349647 (=> res!1786766 e!2706763)))

(assert (=> b!4349647 (= res!1786766 (= (h!54395 (toList!2909 lm!1707)) lt!1563612))))

(declare-fun b!4349648 () Bool)

(assert (=> b!4349648 (= e!2706763 (contains!11025 (t!355906 (toList!2909 lm!1707)) lt!1563612))))

(assert (= (and d!1284583 res!1786765) b!4349647))

(assert (= (and b!4349647 (not res!1786766)) b!4349648))

(declare-fun m!4959321 () Bool)

(assert (=> d!1284583 m!4959321))

(declare-fun m!4959323 () Bool)

(assert (=> d!1284583 m!4959323))

(declare-fun m!4959325 () Bool)

(assert (=> b!4349648 m!4959325))

(assert (=> b!4349569 d!1284583))

(declare-fun d!1284585 () Bool)

(assert (=> d!1284585 (contains!11025 (toList!2909 lm!1707) (tuple2!48225 hash!377 lt!1563613))))

(declare-fun lt!1563676 () Unit!70923)

(declare-fun choose!26744 (List!48986 (_ BitVec 64) List!48985) Unit!70923)

(assert (=> d!1284585 (= lt!1563676 (choose!26744 (toList!2909 lm!1707) hash!377 lt!1563613))))

(declare-fun e!2706767 () Bool)

(assert (=> d!1284585 e!2706767))

(declare-fun res!1786769 () Bool)

(assert (=> d!1284585 (=> (not res!1786769) (not e!2706767))))

(declare-fun isStrictlySorted!86 (List!48986) Bool)

(assert (=> d!1284585 (= res!1786769 (isStrictlySorted!86 (toList!2909 lm!1707)))))

(assert (=> d!1284585 (= (lemmaGetValueByKeyImpliesContainsTuple!310 (toList!2909 lm!1707) hash!377 lt!1563613) lt!1563676)))

(declare-fun b!4349651 () Bool)

(assert (=> b!4349651 (= e!2706767 (= (getValueByKey!418 (toList!2909 lm!1707) hash!377) (Some!10431 lt!1563613)))))

(assert (= (and d!1284585 res!1786769) b!4349651))

(declare-fun m!4959331 () Bool)

(assert (=> d!1284585 m!4959331))

(declare-fun m!4959333 () Bool)

(assert (=> d!1284585 m!4959333))

(declare-fun m!4959335 () Bool)

(assert (=> d!1284585 m!4959335))

(assert (=> b!4349651 m!4959317))

(assert (=> b!4349569 d!1284585))

(declare-fun d!1284589 () Bool)

(assert (=> d!1284589 (dynLambda!20608 lambda!139091 lt!1563612)))

(declare-fun lt!1563682 () Unit!70923)

(declare-fun choose!26745 (List!48986 Int tuple2!48224) Unit!70923)

(assert (=> d!1284589 (= lt!1563682 (choose!26745 (toList!2909 lm!1707) lambda!139091 lt!1563612))))

(declare-fun e!2706770 () Bool)

(assert (=> d!1284589 e!2706770))

(declare-fun res!1786772 () Bool)

(assert (=> d!1284589 (=> (not res!1786772) (not e!2706770))))

(assert (=> d!1284589 (= res!1786772 (forall!9069 (toList!2909 lm!1707) lambda!139091))))

(assert (=> d!1284589 (= (forallContained!1717 (toList!2909 lm!1707) lambda!139091 lt!1563612) lt!1563682)))

(declare-fun b!4349654 () Bool)

(assert (=> b!4349654 (= e!2706770 (contains!11025 (toList!2909 lm!1707) lt!1563612))))

(assert (= (and d!1284589 res!1786772) b!4349654))

(declare-fun b_lambda!130433 () Bool)

(assert (=> (not b_lambda!130433) (not d!1284589)))

(declare-fun m!4959341 () Bool)

(assert (=> d!1284589 m!4959341))

(declare-fun m!4959343 () Bool)

(assert (=> d!1284589 m!4959343))

(assert (=> d!1284589 m!4959207))

(assert (=> b!4349654 m!4959225))

(assert (=> b!4349569 d!1284589))

(declare-fun b!4349666 () Bool)

(declare-fun e!2706776 () List!48985)

(assert (=> b!4349666 (= e!2706776 Nil!48861)))

(declare-fun b!4349665 () Bool)

(assert (=> b!4349665 (= e!2706776 (Cons!48861 (h!54394 lt!1563613) (removePairForKey!433 (t!355905 lt!1563613) key!3918)))))

(declare-fun b!4349663 () Bool)

(declare-fun e!2706775 () List!48985)

(assert (=> b!4349663 (= e!2706775 (t!355905 lt!1563613))))

(declare-fun b!4349664 () Bool)

(assert (=> b!4349664 (= e!2706775 e!2706776)))

(declare-fun c!739415 () Bool)

(assert (=> b!4349664 (= c!739415 ((_ is Cons!48861) lt!1563613))))

(declare-fun d!1284593 () Bool)

(declare-fun lt!1563685 () List!48985)

(assert (=> d!1284593 (not (containsKey!630 lt!1563685 key!3918))))

(assert (=> d!1284593 (= lt!1563685 e!2706775)))

(declare-fun c!739416 () Bool)

(assert (=> d!1284593 (= c!739416 (and ((_ is Cons!48861) lt!1563613) (= (_1!27405 (h!54394 lt!1563613)) key!3918)))))

(assert (=> d!1284593 (noDuplicateKeys!463 lt!1563613)))

(assert (=> d!1284593 (= (removePairForKey!433 lt!1563613 key!3918) lt!1563685)))

(assert (= (and d!1284593 c!739416) b!4349663))

(assert (= (and d!1284593 (not c!739416)) b!4349664))

(assert (= (and b!4349664 c!739415) b!4349665))

(assert (= (and b!4349664 (not c!739415)) b!4349666))

(declare-fun m!4959345 () Bool)

(assert (=> b!4349665 m!4959345))

(declare-fun m!4959347 () Bool)

(assert (=> d!1284593 m!4959347))

(declare-fun m!4959349 () Bool)

(assert (=> d!1284593 m!4959349))

(assert (=> b!4349569 d!1284593))

(declare-fun d!1284595 () Bool)

(declare-fun e!2706785 () Bool)

(assert (=> d!1284595 e!2706785))

(declare-fun res!1786775 () Bool)

(assert (=> d!1284595 (=> res!1786775 e!2706785)))

(declare-fun lt!1563697 () Bool)

(assert (=> d!1284595 (= res!1786775 (not lt!1563697))))

(declare-fun lt!1563699 () Bool)

(assert (=> d!1284595 (= lt!1563697 lt!1563699)))

(declare-fun lt!1563698 () Unit!70923)

(declare-fun e!2706784 () Unit!70923)

(assert (=> d!1284595 (= lt!1563698 e!2706784)))

(declare-fun c!739422 () Bool)

(assert (=> d!1284595 (= c!739422 lt!1563699)))

(declare-fun containsKey!633 (List!48986 (_ BitVec 64)) Bool)

(assert (=> d!1284595 (= lt!1563699 (containsKey!633 (toList!2909 lm!1707) hash!377))))

(assert (=> d!1284595 (= (contains!11026 lm!1707 hash!377) lt!1563697)))

(declare-fun b!4349679 () Bool)

(declare-fun lt!1563700 () Unit!70923)

(assert (=> b!4349679 (= e!2706784 lt!1563700)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!331 (List!48986 (_ BitVec 64)) Unit!70923)

(assert (=> b!4349679 (= lt!1563700 (lemmaContainsKeyImpliesGetValueByKeyDefined!331 (toList!2909 lm!1707) hash!377))))

(declare-fun isDefined!7728 (Option!10432) Bool)

(assert (=> b!4349679 (isDefined!7728 (getValueByKey!418 (toList!2909 lm!1707) hash!377))))

(declare-fun b!4349680 () Bool)

(declare-fun Unit!70930 () Unit!70923)

(assert (=> b!4349680 (= e!2706784 Unit!70930)))

(declare-fun b!4349681 () Bool)

(assert (=> b!4349681 (= e!2706785 (isDefined!7728 (getValueByKey!418 (toList!2909 lm!1707) hash!377)))))

(assert (= (and d!1284595 c!739422) b!4349679))

(assert (= (and d!1284595 (not c!739422)) b!4349680))

(assert (= (and d!1284595 (not res!1786775)) b!4349681))

(declare-fun m!4959359 () Bool)

(assert (=> d!1284595 m!4959359))

(declare-fun m!4959361 () Bool)

(assert (=> b!4349679 m!4959361))

(assert (=> b!4349679 m!4959317))

(assert (=> b!4349679 m!4959317))

(declare-fun m!4959363 () Bool)

(assert (=> b!4349679 m!4959363))

(assert (=> b!4349681 m!4959317))

(assert (=> b!4349681 m!4959317))

(assert (=> b!4349681 m!4959363))

(assert (=> b!4349580 d!1284595))

(declare-fun d!1284599 () Bool)

(assert (=> d!1284599 true))

(assert (=> d!1284599 true))

(declare-fun lambda!139103 () Int)

(declare-fun forall!9070 (List!48985 Int) Bool)

(assert (=> d!1284599 (= (allKeysSameHash!421 newBucket!200 hash!377 hashF!1247) (forall!9070 newBucket!200 lambda!139103))))

(declare-fun bs!628580 () Bool)

(assert (= bs!628580 d!1284599))

(declare-fun m!4959367 () Bool)

(assert (=> bs!628580 m!4959367))

(assert (=> b!4349579 d!1284599))

(declare-fun d!1284603 () Bool)

(declare-fun res!1786786 () Bool)

(declare-fun e!2706796 () Bool)

(assert (=> d!1284603 (=> res!1786786 e!2706796)))

(assert (=> d!1284603 (= res!1786786 (not ((_ is Cons!48861) newBucket!200)))))

(assert (=> d!1284603 (= (noDuplicateKeys!463 newBucket!200) e!2706796)))

(declare-fun b!4349696 () Bool)

(declare-fun e!2706797 () Bool)

(assert (=> b!4349696 (= e!2706796 e!2706797)))

(declare-fun res!1786787 () Bool)

(assert (=> b!4349696 (=> (not res!1786787) (not e!2706797))))

(assert (=> b!4349696 (= res!1786787 (not (containsKey!630 (t!355905 newBucket!200) (_1!27405 (h!54394 newBucket!200)))))))

(declare-fun b!4349697 () Bool)

(assert (=> b!4349697 (= e!2706797 (noDuplicateKeys!463 (t!355905 newBucket!200)))))

(assert (= (and d!1284603 (not res!1786786)) b!4349696))

(assert (= (and b!4349696 res!1786787) b!4349697))

(declare-fun m!4959375 () Bool)

(assert (=> b!4349696 m!4959375))

(declare-fun m!4959377 () Bool)

(assert (=> b!4349697 m!4959377))

(assert (=> b!4349568 d!1284603))

(declare-fun b!4349751 () Bool)

(declare-datatypes ((List!48988 0))(
  ( (Nil!48864) (Cons!48864 (h!54399 K!10225) (t!355908 List!48988)) )
))
(declare-fun e!2706839 () List!48988)

(declare-fun keys!16484 (ListMap!2153) List!48988)

(assert (=> b!4349751 (= e!2706839 (keys!16484 lt!1563608))))

(declare-fun b!4349752 () Bool)

(declare-fun e!2706835 () Bool)

(declare-fun contains!11028 (List!48988 K!10225) Bool)

(assert (=> b!4349752 (= e!2706835 (contains!11028 (keys!16484 lt!1563608) key!3918))))

(declare-fun b!4349753 () Bool)

(declare-fun e!2706836 () Unit!70923)

(declare-fun Unit!70931 () Unit!70923)

(assert (=> b!4349753 (= e!2706836 Unit!70931)))

(declare-fun bm!302323 () Bool)

(declare-fun call!302328 () Bool)

(assert (=> bm!302323 (= call!302328 (contains!11028 e!2706839 key!3918))))

(declare-fun c!739439 () Bool)

(declare-fun c!739441 () Bool)

(assert (=> bm!302323 (= c!739439 c!739441)))

(declare-fun d!1284607 () Bool)

(declare-fun e!2706838 () Bool)

(assert (=> d!1284607 e!2706838))

(declare-fun res!1786810 () Bool)

(assert (=> d!1284607 (=> res!1786810 e!2706838)))

(declare-fun e!2706840 () Bool)

(assert (=> d!1284607 (= res!1786810 e!2706840)))

(declare-fun res!1786809 () Bool)

(assert (=> d!1284607 (=> (not res!1786809) (not e!2706840))))

(declare-fun lt!1563739 () Bool)

(assert (=> d!1284607 (= res!1786809 (not lt!1563739))))

(declare-fun lt!1563745 () Bool)

(assert (=> d!1284607 (= lt!1563739 lt!1563745)))

(declare-fun lt!1563738 () Unit!70923)

(declare-fun e!2706837 () Unit!70923)

(assert (=> d!1284607 (= lt!1563738 e!2706837)))

(assert (=> d!1284607 (= c!739441 lt!1563745)))

(declare-fun containsKey!634 (List!48985 K!10225) Bool)

(assert (=> d!1284607 (= lt!1563745 (containsKey!634 (toList!2910 lt!1563608) key!3918))))

(assert (=> d!1284607 (= (contains!11024 lt!1563608 key!3918) lt!1563739)))

(declare-fun b!4349754 () Bool)

(assert (=> b!4349754 false))

(declare-fun lt!1563742 () Unit!70923)

(declare-fun lt!1563744 () Unit!70923)

(assert (=> b!4349754 (= lt!1563742 lt!1563744)))

(assert (=> b!4349754 (containsKey!634 (toList!2910 lt!1563608) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!106 (List!48985 K!10225) Unit!70923)

(assert (=> b!4349754 (= lt!1563744 (lemmaInGetKeysListThenContainsKey!106 (toList!2910 lt!1563608) key!3918))))

(declare-fun Unit!70932 () Unit!70923)

(assert (=> b!4349754 (= e!2706836 Unit!70932)))

(declare-fun b!4349755 () Bool)

(assert (=> b!4349755 (= e!2706838 e!2706835)))

(declare-fun res!1786811 () Bool)

(assert (=> b!4349755 (=> (not res!1786811) (not e!2706835))))

(declare-datatypes ((Option!10433 0))(
  ( (None!10432) (Some!10432 (v!43250 V!10471)) )
))
(declare-fun isDefined!7729 (Option!10433) Bool)

(declare-fun getValueByKey!419 (List!48985 K!10225) Option!10433)

(assert (=> b!4349755 (= res!1786811 (isDefined!7729 (getValueByKey!419 (toList!2910 lt!1563608) key!3918)))))

(declare-fun b!4349756 () Bool)

(assert (=> b!4349756 (= e!2706840 (not (contains!11028 (keys!16484 lt!1563608) key!3918)))))

(declare-fun b!4349757 () Bool)

(assert (=> b!4349757 (= e!2706837 e!2706836)))

(declare-fun c!739440 () Bool)

(assert (=> b!4349757 (= c!739440 call!302328)))

(declare-fun b!4349758 () Bool)

(declare-fun getKeysList!108 (List!48985) List!48988)

(assert (=> b!4349758 (= e!2706839 (getKeysList!108 (toList!2910 lt!1563608)))))

(declare-fun b!4349759 () Bool)

(declare-fun lt!1563743 () Unit!70923)

(assert (=> b!4349759 (= e!2706837 lt!1563743)))

(declare-fun lt!1563741 () Unit!70923)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!332 (List!48985 K!10225) Unit!70923)

(assert (=> b!4349759 (= lt!1563741 (lemmaContainsKeyImpliesGetValueByKeyDefined!332 (toList!2910 lt!1563608) key!3918))))

(assert (=> b!4349759 (isDefined!7729 (getValueByKey!419 (toList!2910 lt!1563608) key!3918))))

(declare-fun lt!1563740 () Unit!70923)

(assert (=> b!4349759 (= lt!1563740 lt!1563741)))

(declare-fun lemmaInListThenGetKeysListContains!105 (List!48985 K!10225) Unit!70923)

(assert (=> b!4349759 (= lt!1563743 (lemmaInListThenGetKeysListContains!105 (toList!2910 lt!1563608) key!3918))))

(assert (=> b!4349759 call!302328))

(assert (= (and d!1284607 c!739441) b!4349759))

(assert (= (and d!1284607 (not c!739441)) b!4349757))

(assert (= (and b!4349757 c!739440) b!4349754))

(assert (= (and b!4349757 (not c!739440)) b!4349753))

(assert (= (or b!4349759 b!4349757) bm!302323))

(assert (= (and bm!302323 c!739439) b!4349758))

(assert (= (and bm!302323 (not c!739439)) b!4349751))

(assert (= (and d!1284607 res!1786809) b!4349756))

(assert (= (and d!1284607 (not res!1786810)) b!4349755))

(assert (= (and b!4349755 res!1786811) b!4349752))

(declare-fun m!4959431 () Bool)

(assert (=> b!4349754 m!4959431))

(declare-fun m!4959433 () Bool)

(assert (=> b!4349754 m!4959433))

(declare-fun m!4959435 () Bool)

(assert (=> bm!302323 m!4959435))

(declare-fun m!4959437 () Bool)

(assert (=> b!4349756 m!4959437))

(assert (=> b!4349756 m!4959437))

(declare-fun m!4959439 () Bool)

(assert (=> b!4349756 m!4959439))

(assert (=> b!4349752 m!4959437))

(assert (=> b!4349752 m!4959437))

(assert (=> b!4349752 m!4959439))

(assert (=> d!1284607 m!4959431))

(declare-fun m!4959441 () Bool)

(assert (=> b!4349759 m!4959441))

(declare-fun m!4959443 () Bool)

(assert (=> b!4349759 m!4959443))

(assert (=> b!4349759 m!4959443))

(declare-fun m!4959445 () Bool)

(assert (=> b!4349759 m!4959445))

(declare-fun m!4959447 () Bool)

(assert (=> b!4349759 m!4959447))

(declare-fun m!4959449 () Bool)

(assert (=> b!4349758 m!4959449))

(assert (=> b!4349751 m!4959437))

(assert (=> b!4349755 m!4959443))

(assert (=> b!4349755 m!4959443))

(assert (=> b!4349755 m!4959445))

(assert (=> b!4349567 d!1284607))

(declare-fun d!1284625 () Bool)

(assert (=> d!1284625 (= (apply!11315 lm!1707 (_1!27406 (h!54395 (toList!2909 lm!1707)))) (get!15864 (getValueByKey!418 (toList!2909 lm!1707) (_1!27406 (h!54395 (toList!2909 lm!1707))))))))

(declare-fun bs!628586 () Bool)

(assert (= bs!628586 d!1284625))

(declare-fun m!4959451 () Bool)

(assert (=> bs!628586 m!4959451))

(assert (=> bs!628586 m!4959451))

(declare-fun m!4959453 () Bool)

(assert (=> bs!628586 m!4959453))

(assert (=> b!4349567 d!1284625))

(declare-fun d!1284627 () Bool)

(declare-fun res!1786820 () Bool)

(declare-fun e!2706847 () Bool)

(assert (=> d!1284627 (=> res!1786820 e!2706847)))

(assert (=> d!1284627 (= res!1786820 (and ((_ is Cons!48861) (apply!11315 lm!1707 (_1!27406 (h!54395 (toList!2909 lm!1707))))) (= (_1!27405 (h!54394 (apply!11315 lm!1707 (_1!27406 (h!54395 (toList!2909 lm!1707)))))) key!3918)))))

(assert (=> d!1284627 (= (containsKey!630 (apply!11315 lm!1707 (_1!27406 (h!54395 (toList!2909 lm!1707)))) key!3918) e!2706847)))

(declare-fun b!4349768 () Bool)

(declare-fun e!2706848 () Bool)

(assert (=> b!4349768 (= e!2706847 e!2706848)))

(declare-fun res!1786821 () Bool)

(assert (=> b!4349768 (=> (not res!1786821) (not e!2706848))))

(assert (=> b!4349768 (= res!1786821 ((_ is Cons!48861) (apply!11315 lm!1707 (_1!27406 (h!54395 (toList!2909 lm!1707))))))))

(declare-fun b!4349769 () Bool)

(assert (=> b!4349769 (= e!2706848 (containsKey!630 (t!355905 (apply!11315 lm!1707 (_1!27406 (h!54395 (toList!2909 lm!1707))))) key!3918))))

(assert (= (and d!1284627 (not res!1786820)) b!4349768))

(assert (= (and b!4349768 res!1786821) b!4349769))

(declare-fun m!4959455 () Bool)

(assert (=> b!4349769 m!4959455))

(assert (=> b!4349567 d!1284627))

(declare-fun bs!628587 () Bool)

(declare-fun d!1284629 () Bool)

(assert (= bs!628587 (and d!1284629 start!420188)))

(declare-fun lambda!139107 () Int)

(assert (=> bs!628587 (= lambda!139107 lambda!139091)))

(declare-fun bs!628588 () Bool)

(assert (= bs!628588 (and d!1284629 d!1284577)))

(assert (=> bs!628588 (not (= lambda!139107 lambda!139094))))

(assert (=> d!1284629 (not (containsKey!630 (apply!11315 lm!1707 (_1!27406 (h!54395 (toList!2909 lm!1707)))) key!3918))))

(declare-fun lt!1563760 () Unit!70923)

(declare-fun choose!26747 (ListLongMap!1559 K!10225 (_ BitVec 64) Hashable!4855) Unit!70923)

(assert (=> d!1284629 (= lt!1563760 (choose!26747 lm!1707 key!3918 (_1!27406 (h!54395 (toList!2909 lm!1707))) hashF!1247))))

(assert (=> d!1284629 (forall!9069 (toList!2909 lm!1707) lambda!139107)))

(assert (=> d!1284629 (= (lemmaNotSameHashThenCannotContainKey!10 lm!1707 key!3918 (_1!27406 (h!54395 (toList!2909 lm!1707))) hashF!1247) lt!1563760)))

(declare-fun bs!628589 () Bool)

(assert (= bs!628589 d!1284629))

(assert (=> bs!628589 m!4959245))

(assert (=> bs!628589 m!4959245))

(assert (=> bs!628589 m!4959247))

(declare-fun m!4959469 () Bool)

(assert (=> bs!628589 m!4959469))

(declare-fun m!4959471 () Bool)

(assert (=> bs!628589 m!4959471))

(assert (=> b!4349567 d!1284629))

(declare-fun d!1284633 () Bool)

(assert (=> d!1284633 (contains!11024 lt!1563608 key!3918)))

(declare-fun lt!1563766 () Unit!70923)

(declare-fun choose!26748 (List!48985 K!10225 V!10471 ListMap!2153) Unit!70923)

(assert (=> d!1284633 (= lt!1563766 (choose!26748 (_2!27406 (h!54395 (toList!2909 lm!1707))) key!3918 newValue!99 lt!1563608))))

(assert (=> d!1284633 (noDuplicateKeys!463 (_2!27406 (h!54395 (toList!2909 lm!1707))))))

(assert (=> d!1284633 (= (lemmaAddToMapContainsAndNotInListThenInAcc!6 (_2!27406 (h!54395 (toList!2909 lm!1707))) key!3918 newValue!99 lt!1563608) lt!1563766)))

(declare-fun bs!628590 () Bool)

(assert (= bs!628590 d!1284633))

(assert (=> bs!628590 m!4959241))

(declare-fun m!4959485 () Bool)

(assert (=> bs!628590 m!4959485))

(declare-fun m!4959487 () Bool)

(assert (=> bs!628590 m!4959487))

(assert (=> b!4349567 d!1284633))

(declare-fun bs!628604 () Bool)

(declare-fun d!1284641 () Bool)

(assert (= bs!628604 (and d!1284641 start!420188)))

(declare-fun lambda!139117 () Int)

(assert (=> bs!628604 (= lambda!139117 lambda!139091)))

(declare-fun bs!628605 () Bool)

(assert (= bs!628605 (and d!1284641 d!1284577)))

(assert (=> bs!628605 (not (= lambda!139117 lambda!139094))))

(declare-fun bs!628607 () Bool)

(assert (= bs!628607 (and d!1284641 d!1284629)))

(assert (=> bs!628607 (= lambda!139117 lambda!139107)))

(declare-fun lt!1563778 () ListMap!2153)

(declare-fun invariantList!660 (List!48985) Bool)

(assert (=> d!1284641 (invariantList!660 (toList!2910 lt!1563778))))

(declare-fun e!2706877 () ListMap!2153)

(assert (=> d!1284641 (= lt!1563778 e!2706877)))

(declare-fun c!739448 () Bool)

(assert (=> d!1284641 (= c!739448 ((_ is Cons!48862) (t!355906 (toList!2909 lm!1707))))))

(assert (=> d!1284641 (forall!9069 (t!355906 (toList!2909 lm!1707)) lambda!139117)))

(assert (=> d!1284641 (= (extractMap!522 (t!355906 (toList!2909 lm!1707))) lt!1563778)))

(declare-fun b!4349816 () Bool)

(declare-fun addToMapMapFromBucket!167 (List!48985 ListMap!2153) ListMap!2153)

(assert (=> b!4349816 (= e!2706877 (addToMapMapFromBucket!167 (_2!27406 (h!54395 (t!355906 (toList!2909 lm!1707)))) (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))))))

(declare-fun b!4349817 () Bool)

(assert (=> b!4349817 (= e!2706877 (ListMap!2154 Nil!48861))))

(assert (= (and d!1284641 c!739448) b!4349816))

(assert (= (and d!1284641 (not c!739448)) b!4349817))

(declare-fun m!4959531 () Bool)

(assert (=> d!1284641 m!4959531))

(declare-fun m!4959533 () Bool)

(assert (=> d!1284641 m!4959533))

(declare-fun m!4959535 () Bool)

(assert (=> b!4349816 m!4959535))

(assert (=> b!4349816 m!4959535))

(declare-fun m!4959537 () Bool)

(assert (=> b!4349816 m!4959537))

(assert (=> b!4349567 d!1284641))

(declare-fun d!1284663 () Bool)

(declare-fun isEmpty!28171 (List!48986) Bool)

(assert (=> d!1284663 (= (isEmpty!28169 lm!1707) (isEmpty!28171 (toList!2909 lm!1707)))))

(declare-fun bs!628611 () Bool)

(assert (= bs!628611 d!1284663))

(declare-fun m!4959539 () Bool)

(assert (=> bs!628611 m!4959539))

(assert (=> b!4349567 d!1284663))

(declare-fun d!1284665 () Bool)

(declare-fun hash!1470 (Hashable!4855 K!10225) (_ BitVec 64))

(assert (=> d!1284665 (= (hash!1466 hashF!1247 key!3918) (hash!1470 hashF!1247 key!3918))))

(declare-fun bs!628612 () Bool)

(assert (= bs!628612 d!1284665))

(declare-fun m!4959541 () Bool)

(assert (=> bs!628612 m!4959541))

(assert (=> b!4349578 d!1284665))

(declare-fun b!4349819 () Bool)

(declare-fun e!2706883 () List!48988)

(assert (=> b!4349819 (= e!2706883 (keys!16484 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))))

(declare-fun b!4349820 () Bool)

(declare-fun e!2706879 () Bool)

(assert (=> b!4349820 (= e!2706879 (contains!11028 (keys!16484 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918))))

(declare-fun b!4349821 () Bool)

(declare-fun e!2706880 () Unit!70923)

(declare-fun Unit!70935 () Unit!70923)

(assert (=> b!4349821 (= e!2706880 Unit!70935)))

(declare-fun bm!302325 () Bool)

(declare-fun call!302330 () Bool)

(assert (=> bm!302325 (= call!302330 (contains!11028 e!2706883 key!3918))))

(declare-fun c!739449 () Bool)

(declare-fun c!739451 () Bool)

(assert (=> bm!302325 (= c!739449 c!739451)))

(declare-fun d!1284667 () Bool)

(declare-fun e!2706882 () Bool)

(assert (=> d!1284667 e!2706882))

(declare-fun res!1786841 () Bool)

(assert (=> d!1284667 (=> res!1786841 e!2706882)))

(declare-fun e!2706884 () Bool)

(assert (=> d!1284667 (= res!1786841 e!2706884)))

(declare-fun res!1786840 () Bool)

(assert (=> d!1284667 (=> (not res!1786840) (not e!2706884))))

(declare-fun lt!1563780 () Bool)

(assert (=> d!1284667 (= res!1786840 (not lt!1563780))))

(declare-fun lt!1563786 () Bool)

(assert (=> d!1284667 (= lt!1563780 lt!1563786)))

(declare-fun lt!1563779 () Unit!70923)

(declare-fun e!2706881 () Unit!70923)

(assert (=> d!1284667 (= lt!1563779 e!2706881)))

(assert (=> d!1284667 (= c!739451 lt!1563786)))

(assert (=> d!1284667 (= lt!1563786 (containsKey!634 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918))))

(assert (=> d!1284667 (= (contains!11024 (extractMap!522 (toList!2909 (tail!6953 lm!1707))) key!3918) lt!1563780)))

(declare-fun b!4349822 () Bool)

(assert (=> b!4349822 false))

(declare-fun lt!1563783 () Unit!70923)

(declare-fun lt!1563785 () Unit!70923)

(assert (=> b!4349822 (= lt!1563783 lt!1563785)))

(assert (=> b!4349822 (containsKey!634 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918)))

(assert (=> b!4349822 (= lt!1563785 (lemmaInGetKeysListThenContainsKey!106 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918))))

(declare-fun Unit!70936 () Unit!70923)

(assert (=> b!4349822 (= e!2706880 Unit!70936)))

(declare-fun b!4349823 () Bool)

(assert (=> b!4349823 (= e!2706882 e!2706879)))

(declare-fun res!1786842 () Bool)

(assert (=> b!4349823 (=> (not res!1786842) (not e!2706879))))

(assert (=> b!4349823 (= res!1786842 (isDefined!7729 (getValueByKey!419 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918)))))

(declare-fun b!4349824 () Bool)

(assert (=> b!4349824 (= e!2706884 (not (contains!11028 (keys!16484 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918)))))

(declare-fun b!4349825 () Bool)

(assert (=> b!4349825 (= e!2706881 e!2706880)))

(declare-fun c!739450 () Bool)

(assert (=> b!4349825 (= c!739450 call!302330)))

(declare-fun b!4349826 () Bool)

(assert (=> b!4349826 (= e!2706883 (getKeysList!108 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))))))

(declare-fun b!4349827 () Bool)

(declare-fun lt!1563784 () Unit!70923)

(assert (=> b!4349827 (= e!2706881 lt!1563784)))

(declare-fun lt!1563782 () Unit!70923)

(assert (=> b!4349827 (= lt!1563782 (lemmaContainsKeyImpliesGetValueByKeyDefined!332 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918))))

(assert (=> b!4349827 (isDefined!7729 (getValueByKey!419 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918))))

(declare-fun lt!1563781 () Unit!70923)

(assert (=> b!4349827 (= lt!1563781 lt!1563782)))

(assert (=> b!4349827 (= lt!1563784 (lemmaInListThenGetKeysListContains!105 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918))))

(assert (=> b!4349827 call!302330))

(assert (= (and d!1284667 c!739451) b!4349827))

(assert (= (and d!1284667 (not c!739451)) b!4349825))

(assert (= (and b!4349825 c!739450) b!4349822))

(assert (= (and b!4349825 (not c!739450)) b!4349821))

(assert (= (or b!4349827 b!4349825) bm!302325))

(assert (= (and bm!302325 c!739449) b!4349826))

(assert (= (and bm!302325 (not c!739449)) b!4349819))

(assert (= (and d!1284667 res!1786840) b!4349824))

(assert (= (and d!1284667 (not res!1786841)) b!4349823))

(assert (= (and b!4349823 res!1786842) b!4349820))

(declare-fun m!4959543 () Bool)

(assert (=> b!4349822 m!4959543))

(declare-fun m!4959545 () Bool)

(assert (=> b!4349822 m!4959545))

(declare-fun m!4959547 () Bool)

(assert (=> bm!302325 m!4959547))

(assert (=> b!4349824 m!4959217))

(declare-fun m!4959549 () Bool)

(assert (=> b!4349824 m!4959549))

(assert (=> b!4349824 m!4959549))

(declare-fun m!4959551 () Bool)

(assert (=> b!4349824 m!4959551))

(assert (=> b!4349820 m!4959217))

(assert (=> b!4349820 m!4959549))

(assert (=> b!4349820 m!4959549))

(assert (=> b!4349820 m!4959551))

(assert (=> d!1284667 m!4959543))

(declare-fun m!4959553 () Bool)

(assert (=> b!4349827 m!4959553))

(declare-fun m!4959555 () Bool)

(assert (=> b!4349827 m!4959555))

(assert (=> b!4349827 m!4959555))

(declare-fun m!4959557 () Bool)

(assert (=> b!4349827 m!4959557))

(declare-fun m!4959559 () Bool)

(assert (=> b!4349827 m!4959559))

(declare-fun m!4959561 () Bool)

(assert (=> b!4349826 m!4959561))

(assert (=> b!4349819 m!4959217))

(assert (=> b!4349819 m!4959549))

(assert (=> b!4349823 m!4959555))

(assert (=> b!4349823 m!4959555))

(assert (=> b!4349823 m!4959557))

(assert (=> b!4349577 d!1284667))

(declare-fun bs!628613 () Bool)

(declare-fun d!1284669 () Bool)

(assert (= bs!628613 (and d!1284669 start!420188)))

(declare-fun lambda!139118 () Int)

(assert (=> bs!628613 (= lambda!139118 lambda!139091)))

(declare-fun bs!628614 () Bool)

(assert (= bs!628614 (and d!1284669 d!1284577)))

(assert (=> bs!628614 (not (= lambda!139118 lambda!139094))))

(declare-fun bs!628615 () Bool)

(assert (= bs!628615 (and d!1284669 d!1284629)))

(assert (=> bs!628615 (= lambda!139118 lambda!139107)))

(declare-fun bs!628616 () Bool)

(assert (= bs!628616 (and d!1284669 d!1284641)))

(assert (=> bs!628616 (= lambda!139118 lambda!139117)))

(declare-fun lt!1563787 () ListMap!2153)

(assert (=> d!1284669 (invariantList!660 (toList!2910 lt!1563787))))

(declare-fun e!2706885 () ListMap!2153)

(assert (=> d!1284669 (= lt!1563787 e!2706885)))

(declare-fun c!739452 () Bool)

(assert (=> d!1284669 (= c!739452 ((_ is Cons!48862) (toList!2909 (tail!6953 lm!1707))))))

(assert (=> d!1284669 (forall!9069 (toList!2909 (tail!6953 lm!1707)) lambda!139118)))

(assert (=> d!1284669 (= (extractMap!522 (toList!2909 (tail!6953 lm!1707))) lt!1563787)))

(declare-fun b!4349828 () Bool)

(assert (=> b!4349828 (= e!2706885 (addToMapMapFromBucket!167 (_2!27406 (h!54395 (toList!2909 (tail!6953 lm!1707)))) (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707))))))))

(declare-fun b!4349829 () Bool)

(assert (=> b!4349829 (= e!2706885 (ListMap!2154 Nil!48861))))

(assert (= (and d!1284669 c!739452) b!4349828))

(assert (= (and d!1284669 (not c!739452)) b!4349829))

(declare-fun m!4959563 () Bool)

(assert (=> d!1284669 m!4959563))

(declare-fun m!4959565 () Bool)

(assert (=> d!1284669 m!4959565))

(declare-fun m!4959567 () Bool)

(assert (=> b!4349828 m!4959567))

(assert (=> b!4349828 m!4959567))

(declare-fun m!4959569 () Bool)

(assert (=> b!4349828 m!4959569))

(assert (=> b!4349577 d!1284669))

(declare-fun d!1284671 () Bool)

(declare-fun tail!6955 (List!48986) List!48986)

(assert (=> d!1284671 (= (tail!6953 lm!1707) (ListLongMap!1560 (tail!6955 (toList!2909 lm!1707))))))

(declare-fun bs!628617 () Bool)

(assert (= bs!628617 d!1284671))

(declare-fun m!4959571 () Bool)

(assert (=> bs!628617 m!4959571))

(assert (=> b!4349577 d!1284671))

(assert (=> start!420188 d!1284575))

(declare-fun d!1284673 () Bool)

(assert (=> d!1284673 (= (inv!64411 lm!1707) (isStrictlySorted!86 (toList!2909 lm!1707)))))

(declare-fun bs!628618 () Bool)

(assert (= bs!628618 d!1284673))

(assert (=> bs!628618 m!4959335))

(assert (=> start!420188 d!1284673))

(assert (=> b!4349575 d!1284565))

(declare-fun d!1284675 () Bool)

(declare-fun res!1786843 () Bool)

(declare-fun e!2706886 () Bool)

(assert (=> d!1284675 (=> res!1786843 e!2706886)))

(assert (=> d!1284675 (= res!1786843 (and ((_ is Cons!48861) (_2!27406 (h!54395 (toList!2909 lm!1707)))) (= (_1!27405 (h!54394 (_2!27406 (h!54395 (toList!2909 lm!1707))))) key!3918)))))

(assert (=> d!1284675 (= (containsKey!630 (_2!27406 (h!54395 (toList!2909 lm!1707))) key!3918) e!2706886)))

(declare-fun b!4349830 () Bool)

(declare-fun e!2706887 () Bool)

(assert (=> b!4349830 (= e!2706886 e!2706887)))

(declare-fun res!1786844 () Bool)

(assert (=> b!4349830 (=> (not res!1786844) (not e!2706887))))

(assert (=> b!4349830 (= res!1786844 ((_ is Cons!48861) (_2!27406 (h!54395 (toList!2909 lm!1707)))))))

(declare-fun b!4349831 () Bool)

(assert (=> b!4349831 (= e!2706887 (containsKey!630 (t!355905 (_2!27406 (h!54395 (toList!2909 lm!1707)))) key!3918))))

(assert (= (and d!1284675 (not res!1786843)) b!4349830))

(assert (= (and b!4349830 res!1786844) b!4349831))

(declare-fun m!4959573 () Bool)

(assert (=> b!4349831 m!4959573))

(assert (=> b!4349573 d!1284675))

(declare-fun b!4349832 () Bool)

(declare-fun e!2706892 () List!48988)

(assert (=> b!4349832 (= e!2706892 (keys!16484 (extractMap!522 (toList!2909 lm!1707))))))

(declare-fun b!4349833 () Bool)

(declare-fun e!2706888 () Bool)

(assert (=> b!4349833 (= e!2706888 (contains!11028 (keys!16484 (extractMap!522 (toList!2909 lm!1707))) key!3918))))

(declare-fun b!4349834 () Bool)

(declare-fun e!2706889 () Unit!70923)

(declare-fun Unit!70937 () Unit!70923)

(assert (=> b!4349834 (= e!2706889 Unit!70937)))

(declare-fun bm!302326 () Bool)

(declare-fun call!302331 () Bool)

(assert (=> bm!302326 (= call!302331 (contains!11028 e!2706892 key!3918))))

(declare-fun c!739453 () Bool)

(declare-fun c!739455 () Bool)

(assert (=> bm!302326 (= c!739453 c!739455)))

(declare-fun d!1284677 () Bool)

(declare-fun e!2706891 () Bool)

(assert (=> d!1284677 e!2706891))

(declare-fun res!1786846 () Bool)

(assert (=> d!1284677 (=> res!1786846 e!2706891)))

(declare-fun e!2706893 () Bool)

(assert (=> d!1284677 (= res!1786846 e!2706893)))

(declare-fun res!1786845 () Bool)

(assert (=> d!1284677 (=> (not res!1786845) (not e!2706893))))

(declare-fun lt!1563789 () Bool)

(assert (=> d!1284677 (= res!1786845 (not lt!1563789))))

(declare-fun lt!1563795 () Bool)

(assert (=> d!1284677 (= lt!1563789 lt!1563795)))

(declare-fun lt!1563788 () Unit!70923)

(declare-fun e!2706890 () Unit!70923)

(assert (=> d!1284677 (= lt!1563788 e!2706890)))

(assert (=> d!1284677 (= c!739455 lt!1563795)))

(assert (=> d!1284677 (= lt!1563795 (containsKey!634 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) key!3918))))

(assert (=> d!1284677 (= (contains!11024 (extractMap!522 (toList!2909 lm!1707)) key!3918) lt!1563789)))

(declare-fun b!4349835 () Bool)

(assert (=> b!4349835 false))

(declare-fun lt!1563792 () Unit!70923)

(declare-fun lt!1563794 () Unit!70923)

(assert (=> b!4349835 (= lt!1563792 lt!1563794)))

(assert (=> b!4349835 (containsKey!634 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) key!3918)))

(assert (=> b!4349835 (= lt!1563794 (lemmaInGetKeysListThenContainsKey!106 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) key!3918))))

(declare-fun Unit!70938 () Unit!70923)

(assert (=> b!4349835 (= e!2706889 Unit!70938)))

(declare-fun b!4349836 () Bool)

(assert (=> b!4349836 (= e!2706891 e!2706888)))

(declare-fun res!1786847 () Bool)

(assert (=> b!4349836 (=> (not res!1786847) (not e!2706888))))

(assert (=> b!4349836 (= res!1786847 (isDefined!7729 (getValueByKey!419 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) key!3918)))))

(declare-fun b!4349837 () Bool)

(assert (=> b!4349837 (= e!2706893 (not (contains!11028 (keys!16484 (extractMap!522 (toList!2909 lm!1707))) key!3918)))))

(declare-fun b!4349838 () Bool)

(assert (=> b!4349838 (= e!2706890 e!2706889)))

(declare-fun c!739454 () Bool)

(assert (=> b!4349838 (= c!739454 call!302331)))

(declare-fun b!4349839 () Bool)

(assert (=> b!4349839 (= e!2706892 (getKeysList!108 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))))))

(declare-fun b!4349840 () Bool)

(declare-fun lt!1563793 () Unit!70923)

(assert (=> b!4349840 (= e!2706890 lt!1563793)))

(declare-fun lt!1563791 () Unit!70923)

(assert (=> b!4349840 (= lt!1563791 (lemmaContainsKeyImpliesGetValueByKeyDefined!332 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) key!3918))))

(assert (=> b!4349840 (isDefined!7729 (getValueByKey!419 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) key!3918))))

(declare-fun lt!1563790 () Unit!70923)

(assert (=> b!4349840 (= lt!1563790 lt!1563791)))

(assert (=> b!4349840 (= lt!1563793 (lemmaInListThenGetKeysListContains!105 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) key!3918))))

(assert (=> b!4349840 call!302331))

(assert (= (and d!1284677 c!739455) b!4349840))

(assert (= (and d!1284677 (not c!739455)) b!4349838))

(assert (= (and b!4349838 c!739454) b!4349835))

(assert (= (and b!4349838 (not c!739454)) b!4349834))

(assert (= (or b!4349840 b!4349838) bm!302326))

(assert (= (and bm!302326 c!739453) b!4349839))

(assert (= (and bm!302326 (not c!739453)) b!4349832))

(assert (= (and d!1284677 res!1786845) b!4349837))

(assert (= (and d!1284677 (not res!1786846)) b!4349836))

(assert (= (and b!4349836 res!1786847) b!4349833))

(declare-fun m!4959575 () Bool)

(assert (=> b!4349835 m!4959575))

(declare-fun m!4959577 () Bool)

(assert (=> b!4349835 m!4959577))

(declare-fun m!4959579 () Bool)

(assert (=> bm!302326 m!4959579))

(assert (=> b!4349837 m!4959209))

(declare-fun m!4959581 () Bool)

(assert (=> b!4349837 m!4959581))

(assert (=> b!4349837 m!4959581))

(declare-fun m!4959583 () Bool)

(assert (=> b!4349837 m!4959583))

(assert (=> b!4349833 m!4959209))

(assert (=> b!4349833 m!4959581))

(assert (=> b!4349833 m!4959581))

(assert (=> b!4349833 m!4959583))

(assert (=> d!1284677 m!4959575))

(declare-fun m!4959585 () Bool)

(assert (=> b!4349840 m!4959585))

(declare-fun m!4959587 () Bool)

(assert (=> b!4349840 m!4959587))

(assert (=> b!4349840 m!4959587))

(declare-fun m!4959589 () Bool)

(assert (=> b!4349840 m!4959589))

(declare-fun m!4959591 () Bool)

(assert (=> b!4349840 m!4959591))

(declare-fun m!4959593 () Bool)

(assert (=> b!4349839 m!4959593))

(assert (=> b!4349832 m!4959209))

(assert (=> b!4349832 m!4959581))

(assert (=> b!4349836 m!4959587))

(assert (=> b!4349836 m!4959587))

(assert (=> b!4349836 m!4959589))

(assert (=> b!4349572 d!1284677))

(declare-fun bs!628619 () Bool)

(declare-fun d!1284679 () Bool)

(assert (= bs!628619 (and d!1284679 d!1284629)))

(declare-fun lambda!139119 () Int)

(assert (=> bs!628619 (= lambda!139119 lambda!139107)))

(declare-fun bs!628620 () Bool)

(assert (= bs!628620 (and d!1284679 start!420188)))

(assert (=> bs!628620 (= lambda!139119 lambda!139091)))

(declare-fun bs!628621 () Bool)

(assert (= bs!628621 (and d!1284679 d!1284577)))

(assert (=> bs!628621 (not (= lambda!139119 lambda!139094))))

(declare-fun bs!628622 () Bool)

(assert (= bs!628622 (and d!1284679 d!1284669)))

(assert (=> bs!628622 (= lambda!139119 lambda!139118)))

(declare-fun bs!628623 () Bool)

(assert (= bs!628623 (and d!1284679 d!1284641)))

(assert (=> bs!628623 (= lambda!139119 lambda!139117)))

(declare-fun lt!1563796 () ListMap!2153)

(assert (=> d!1284679 (invariantList!660 (toList!2910 lt!1563796))))

(declare-fun e!2706894 () ListMap!2153)

(assert (=> d!1284679 (= lt!1563796 e!2706894)))

(declare-fun c!739456 () Bool)

(assert (=> d!1284679 (= c!739456 ((_ is Cons!48862) (toList!2909 lm!1707)))))

(assert (=> d!1284679 (forall!9069 (toList!2909 lm!1707) lambda!139119)))

(assert (=> d!1284679 (= (extractMap!522 (toList!2909 lm!1707)) lt!1563796)))

(declare-fun b!4349841 () Bool)

(assert (=> b!4349841 (= e!2706894 (addToMapMapFromBucket!167 (_2!27406 (h!54395 (toList!2909 lm!1707))) (extractMap!522 (t!355906 (toList!2909 lm!1707)))))))

(declare-fun b!4349842 () Bool)

(assert (=> b!4349842 (= e!2706894 (ListMap!2154 Nil!48861))))

(assert (= (and d!1284679 c!739456) b!4349841))

(assert (= (and d!1284679 (not c!739456)) b!4349842))

(declare-fun m!4959595 () Bool)

(assert (=> d!1284679 m!4959595))

(declare-fun m!4959597 () Bool)

(assert (=> d!1284679 m!4959597))

(assert (=> b!4349841 m!4959235))

(assert (=> b!4349841 m!4959235))

(declare-fun m!4959599 () Bool)

(assert (=> b!4349841 m!4959599))

(assert (=> b!4349572 d!1284679))

(declare-fun b!4349847 () Bool)

(declare-fun e!2706897 () Bool)

(declare-fun tp!1329796 () Bool)

(declare-fun tp!1329797 () Bool)

(assert (=> b!4349847 (= e!2706897 (and tp!1329796 tp!1329797))))

(assert (=> b!4349576 (= tp!1329781 e!2706897)))

(assert (= (and b!4349576 ((_ is Cons!48862) (toList!2909 lm!1707))) b!4349847))

(declare-fun e!2706900 () Bool)

(declare-fun tp!1329800 () Bool)

(declare-fun b!4349852 () Bool)

(assert (=> b!4349852 (= e!2706900 (and tp_is_empty!25089 tp_is_empty!25091 tp!1329800))))

(assert (=> b!4349574 (= tp!1329782 e!2706900)))

(assert (= (and b!4349574 ((_ is Cons!48861) (t!355905 newBucket!200))) b!4349852))

(declare-fun b_lambda!130451 () Bool)

(assert (= b_lambda!130429 (or start!420188 b_lambda!130451)))

(declare-fun bs!628624 () Bool)

(declare-fun d!1284681 () Bool)

(assert (= bs!628624 (and d!1284681 start!420188)))

(assert (=> bs!628624 (= (dynLambda!20608 lambda!139091 (tuple2!48225 hash!377 newBucket!200)) (noDuplicateKeys!463 (_2!27406 (tuple2!48225 hash!377 newBucket!200))))))

(declare-fun m!4959601 () Bool)

(assert (=> bs!628624 m!4959601))

(assert (=> b!4349629 d!1284681))

(declare-fun b_lambda!130453 () Bool)

(assert (= b_lambda!130431 (or start!420188 b_lambda!130453)))

(declare-fun bs!628625 () Bool)

(declare-fun d!1284683 () Bool)

(assert (= bs!628625 (and d!1284683 start!420188)))

(assert (=> bs!628625 (= (dynLambda!20608 lambda!139091 (h!54395 (toList!2909 lm!1707))) (noDuplicateKeys!463 (_2!27406 (h!54395 (toList!2909 lm!1707)))))))

(assert (=> bs!628625 m!4959487))

(assert (=> b!4349630 d!1284683))

(declare-fun b_lambda!130455 () Bool)

(assert (= b_lambda!130427 (or start!420188 b_lambda!130455)))

(declare-fun bs!628626 () Bool)

(declare-fun d!1284685 () Bool)

(assert (= bs!628626 (and d!1284685 start!420188)))

(assert (=> bs!628626 (= (dynLambda!20608 lambda!139091 (h!54395 (toList!2909 lt!1563610))) (noDuplicateKeys!463 (_2!27406 (h!54395 (toList!2909 lt!1563610)))))))

(declare-fun m!4959603 () Bool)

(assert (=> bs!628626 m!4959603))

(assert (=> b!4349600 d!1284685))

(declare-fun b_lambda!130457 () Bool)

(assert (= b_lambda!130433 (or start!420188 b_lambda!130457)))

(declare-fun bs!628627 () Bool)

(declare-fun d!1284687 () Bool)

(assert (= bs!628627 (and d!1284687 start!420188)))

(assert (=> bs!628627 (= (dynLambda!20608 lambda!139091 lt!1563612) (noDuplicateKeys!463 (_2!27406 lt!1563612)))))

(declare-fun m!4959605 () Bool)

(assert (=> bs!628627 m!4959605))

(assert (=> d!1284589 d!1284687))

(check-sat (not d!1284595) (not bm!302326) (not b!4349820) (not d!1284625) (not b!4349833) (not d!1284667) (not b!4349648) (not b!4349758) (not b!4349752) (not b!4349832) (not d!1284677) (not d!1284663) (not b_lambda!130451) (not b!4349665) (not d!1284593) (not d!1284641) (not b!4349696) (not d!1284633) (not b!4349824) (not b!4349759) (not bs!628626) (not bs!628624) (not b!4349831) (not b!4349697) (not b!4349606) (not b!4349631) (not d!1284599) (not b!4349837) (not b!4349681) (not d!1284671) (not b!4349654) (not d!1284585) (not d!1284577) (not d!1284571) (not b_lambda!130455) (not b!4349769) (not d!1284629) (not d!1284673) (not b!4349841) (not d!1284579) (not b!4349679) (not b!4349816) (not bs!628627) (not d!1284607) (not bm!302325) (not bs!628625) (not b!4349819) (not b!4349755) (not b_lambda!130453) (not d!1284589) (not b!4349754) (not b!4349828) (not b!4349607) tp_is_empty!25091 (not b!4349822) (not d!1284583) (not b!4349651) (not b!4349839) (not b!4349751) (not d!1284679) (not b!4349835) (not b_lambda!130457) (not b!4349847) (not b!4349852) (not b!4349827) (not b!4349840) (not d!1284669) (not d!1284665) (not b!4349836) (not bm!302323) (not b!4349756) (not b!4349601) (not b!4349823) tp_is_empty!25089 (not d!1284573) (not b!4349826))
(check-sat)
(get-model)

(declare-fun lt!1563825 () Bool)

(declare-fun d!1284759 () Bool)

(assert (=> d!1284759 (= lt!1563825 (select (content!7678 (toList!2909 lm!1707)) (tuple2!48225 hash!377 lt!1563613)))))

(declare-fun e!2706975 () Bool)

(assert (=> d!1284759 (= lt!1563825 e!2706975)))

(declare-fun res!1786910 () Bool)

(assert (=> d!1284759 (=> (not res!1786910) (not e!2706975))))

(assert (=> d!1284759 (= res!1786910 ((_ is Cons!48862) (toList!2909 lm!1707)))))

(assert (=> d!1284759 (= (contains!11025 (toList!2909 lm!1707) (tuple2!48225 hash!377 lt!1563613)) lt!1563825)))

(declare-fun b!4349961 () Bool)

(declare-fun e!2706974 () Bool)

(assert (=> b!4349961 (= e!2706975 e!2706974)))

(declare-fun res!1786911 () Bool)

(assert (=> b!4349961 (=> res!1786911 e!2706974)))

(assert (=> b!4349961 (= res!1786911 (= (h!54395 (toList!2909 lm!1707)) (tuple2!48225 hash!377 lt!1563613)))))

(declare-fun b!4349962 () Bool)

(assert (=> b!4349962 (= e!2706974 (contains!11025 (t!355906 (toList!2909 lm!1707)) (tuple2!48225 hash!377 lt!1563613)))))

(assert (= (and d!1284759 res!1786910) b!4349961))

(assert (= (and b!4349961 (not res!1786911)) b!4349962))

(assert (=> d!1284759 m!4959321))

(declare-fun m!4959735 () Bool)

(assert (=> d!1284759 m!4959735))

(declare-fun m!4959737 () Bool)

(assert (=> b!4349962 m!4959737))

(assert (=> d!1284585 d!1284759))

(declare-fun d!1284761 () Bool)

(assert (=> d!1284761 (contains!11025 (toList!2909 lm!1707) (tuple2!48225 hash!377 lt!1563613))))

(assert (=> d!1284761 true))

(declare-fun _$14!738 () Unit!70923)

(assert (=> d!1284761 (= (choose!26744 (toList!2909 lm!1707) hash!377 lt!1563613) _$14!738)))

(declare-fun bs!628640 () Bool)

(assert (= bs!628640 d!1284761))

(assert (=> bs!628640 m!4959331))

(assert (=> d!1284585 d!1284761))

(declare-fun d!1284763 () Bool)

(declare-fun res!1786916 () Bool)

(declare-fun e!2706980 () Bool)

(assert (=> d!1284763 (=> res!1786916 e!2706980)))

(assert (=> d!1284763 (= res!1786916 (or ((_ is Nil!48862) (toList!2909 lm!1707)) ((_ is Nil!48862) (t!355906 (toList!2909 lm!1707)))))))

(assert (=> d!1284763 (= (isStrictlySorted!86 (toList!2909 lm!1707)) e!2706980)))

(declare-fun b!4349967 () Bool)

(declare-fun e!2706981 () Bool)

(assert (=> b!4349967 (= e!2706980 e!2706981)))

(declare-fun res!1786917 () Bool)

(assert (=> b!4349967 (=> (not res!1786917) (not e!2706981))))

(assert (=> b!4349967 (= res!1786917 (bvslt (_1!27406 (h!54395 (toList!2909 lm!1707))) (_1!27406 (h!54395 (t!355906 (toList!2909 lm!1707))))))))

(declare-fun b!4349968 () Bool)

(assert (=> b!4349968 (= e!2706981 (isStrictlySorted!86 (t!355906 (toList!2909 lm!1707))))))

(assert (= (and d!1284763 (not res!1786916)) b!4349967))

(assert (= (and b!4349967 res!1786917) b!4349968))

(declare-fun m!4959739 () Bool)

(assert (=> b!4349968 m!4959739))

(assert (=> d!1284585 d!1284763))

(declare-fun bs!628664 () Bool)

(declare-fun b!4350064 () Bool)

(assert (= bs!628664 (and b!4350064 d!1284599)))

(declare-fun lambda!139170 () Int)

(assert (=> bs!628664 (not (= lambda!139170 lambda!139103))))

(assert (=> b!4350064 true))

(declare-fun bs!628665 () Bool)

(declare-fun b!4350065 () Bool)

(assert (= bs!628665 (and b!4350065 d!1284599)))

(declare-fun lambda!139171 () Int)

(assert (=> bs!628665 (not (= lambda!139171 lambda!139103))))

(declare-fun bs!628666 () Bool)

(assert (= bs!628666 (and b!4350065 b!4350064)))

(assert (=> bs!628666 (= lambda!139171 lambda!139170)))

(assert (=> b!4350065 true))

(declare-fun lambda!139172 () Int)

(assert (=> bs!628665 (not (= lambda!139172 lambda!139103))))

(declare-fun lt!1563899 () ListMap!2153)

(assert (=> bs!628666 (= (= lt!1563899 (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139172 lambda!139170))))

(assert (=> b!4350065 (= (= lt!1563899 (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139172 lambda!139171))))

(assert (=> b!4350065 true))

(declare-fun bs!628667 () Bool)

(declare-fun d!1284765 () Bool)

(assert (= bs!628667 (and d!1284765 d!1284599)))

(declare-fun lambda!139173 () Int)

(assert (=> bs!628667 (not (= lambda!139173 lambda!139103))))

(declare-fun bs!628668 () Bool)

(assert (= bs!628668 (and d!1284765 b!4350064)))

(declare-fun lt!1563901 () ListMap!2153)

(assert (=> bs!628668 (= (= lt!1563901 (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139173 lambda!139170))))

(declare-fun bs!628669 () Bool)

(assert (= bs!628669 (and d!1284765 b!4350065)))

(assert (=> bs!628669 (= (= lt!1563901 (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139173 lambda!139171))))

(assert (=> bs!628669 (= (= lt!1563901 lt!1563899) (= lambda!139173 lambda!139172))))

(assert (=> d!1284765 true))

(declare-fun c!739502 () Bool)

(declare-fun lt!1563909 () ListMap!2153)

(declare-fun bm!302342 () Bool)

(declare-fun call!302347 () Bool)

(assert (=> bm!302342 (= call!302347 (forall!9070 (ite c!739502 (toList!2910 (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (toList!2910 lt!1563909)) (ite c!739502 lambda!139170 lambda!139172)))))

(declare-fun bm!302343 () Bool)

(declare-fun call!302349 () Bool)

(assert (=> bm!302343 (= call!302349 (forall!9070 (toList!2910 (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (ite c!739502 lambda!139170 lambda!139171)))))

(declare-fun b!4350061 () Bool)

(declare-fun e!2707038 () Bool)

(assert (=> b!4350061 (= e!2707038 (forall!9070 (toList!2910 (extractMap!522 (t!355906 (toList!2909 lm!1707)))) lambda!139172))))

(declare-fun e!2707037 () Bool)

(assert (=> d!1284765 e!2707037))

(declare-fun res!1786962 () Bool)

(assert (=> d!1284765 (=> (not res!1786962) (not e!2707037))))

(assert (=> d!1284765 (= res!1786962 (forall!9070 (_2!27406 (h!54395 (toList!2909 lm!1707))) lambda!139173))))

(declare-fun e!2707036 () ListMap!2153)

(assert (=> d!1284765 (= lt!1563901 e!2707036)))

(assert (=> d!1284765 (= c!739502 ((_ is Nil!48861) (_2!27406 (h!54395 (toList!2909 lm!1707)))))))

(assert (=> d!1284765 (noDuplicateKeys!463 (_2!27406 (h!54395 (toList!2909 lm!1707))))))

(assert (=> d!1284765 (= (addToMapMapFromBucket!167 (_2!27406 (h!54395 (toList!2909 lm!1707))) (extractMap!522 (t!355906 (toList!2909 lm!1707)))) lt!1563901)))

(declare-fun bm!302344 () Bool)

(declare-fun call!302348 () Unit!70923)

(declare-fun lemmaContainsAllItsOwnKeys!50 (ListMap!2153) Unit!70923)

(assert (=> bm!302344 (= call!302348 (lemmaContainsAllItsOwnKeys!50 (extractMap!522 (t!355906 (toList!2909 lm!1707)))))))

(declare-fun b!4350062 () Bool)

(assert (=> b!4350062 (= e!2707037 (invariantList!660 (toList!2910 lt!1563901)))))

(declare-fun b!4350063 () Bool)

(declare-fun res!1786964 () Bool)

(assert (=> b!4350063 (=> (not res!1786964) (not e!2707037))))

(assert (=> b!4350063 (= res!1786964 (forall!9070 (toList!2910 (extractMap!522 (t!355906 (toList!2909 lm!1707)))) lambda!139173))))

(assert (=> b!4350064 (= e!2707036 (extractMap!522 (t!355906 (toList!2909 lm!1707))))))

(declare-fun lt!1563917 () Unit!70923)

(assert (=> b!4350064 (= lt!1563917 call!302348)))

(assert (=> b!4350064 call!302347))

(declare-fun lt!1563918 () Unit!70923)

(assert (=> b!4350064 (= lt!1563918 lt!1563917)))

(assert (=> b!4350064 call!302349))

(declare-fun lt!1563916 () Unit!70923)

(declare-fun Unit!70940 () Unit!70923)

(assert (=> b!4350064 (= lt!1563916 Unit!70940)))

(assert (=> b!4350065 (= e!2707036 lt!1563899)))

(declare-fun +!589 (ListMap!2153 tuple2!48222) ListMap!2153)

(assert (=> b!4350065 (= lt!1563909 (+!589 (extractMap!522 (t!355906 (toList!2909 lm!1707))) (h!54394 (_2!27406 (h!54395 (toList!2909 lm!1707))))))))

(assert (=> b!4350065 (= lt!1563899 (addToMapMapFromBucket!167 (t!355905 (_2!27406 (h!54395 (toList!2909 lm!1707)))) (+!589 (extractMap!522 (t!355906 (toList!2909 lm!1707))) (h!54394 (_2!27406 (h!54395 (toList!2909 lm!1707)))))))))

(declare-fun lt!1563902 () Unit!70923)

(assert (=> b!4350065 (= lt!1563902 call!302348)))

(assert (=> b!4350065 call!302349))

(declare-fun lt!1563910 () Unit!70923)

(assert (=> b!4350065 (= lt!1563910 lt!1563902)))

(assert (=> b!4350065 call!302347))

(declare-fun lt!1563900 () Unit!70923)

(declare-fun Unit!70941 () Unit!70923)

(assert (=> b!4350065 (= lt!1563900 Unit!70941)))

(assert (=> b!4350065 (forall!9070 (t!355905 (_2!27406 (h!54395 (toList!2909 lm!1707)))) lambda!139172)))

(declare-fun lt!1563912 () Unit!70923)

(declare-fun Unit!70942 () Unit!70923)

(assert (=> b!4350065 (= lt!1563912 Unit!70942)))

(declare-fun lt!1563908 () Unit!70923)

(declare-fun Unit!70943 () Unit!70923)

(assert (=> b!4350065 (= lt!1563908 Unit!70943)))

(declare-fun lt!1563911 () Unit!70923)

(declare-fun forallContained!1718 (List!48985 Int tuple2!48222) Unit!70923)

(assert (=> b!4350065 (= lt!1563911 (forallContained!1718 (toList!2910 lt!1563909) lambda!139172 (h!54394 (_2!27406 (h!54395 (toList!2909 lm!1707))))))))

(assert (=> b!4350065 (contains!11024 lt!1563909 (_1!27405 (h!54394 (_2!27406 (h!54395 (toList!2909 lm!1707))))))))

(declare-fun lt!1563915 () Unit!70923)

(declare-fun Unit!70944 () Unit!70923)

(assert (=> b!4350065 (= lt!1563915 Unit!70944)))

(assert (=> b!4350065 (contains!11024 lt!1563899 (_1!27405 (h!54394 (_2!27406 (h!54395 (toList!2909 lm!1707))))))))

(declare-fun lt!1563907 () Unit!70923)

(declare-fun Unit!70945 () Unit!70923)

(assert (=> b!4350065 (= lt!1563907 Unit!70945)))

(assert (=> b!4350065 (forall!9070 (_2!27406 (h!54395 (toList!2909 lm!1707))) lambda!139172)))

(declare-fun lt!1563903 () Unit!70923)

(declare-fun Unit!70946 () Unit!70923)

(assert (=> b!4350065 (= lt!1563903 Unit!70946)))

(assert (=> b!4350065 (forall!9070 (toList!2910 lt!1563909) lambda!139172)))

(declare-fun lt!1563904 () Unit!70923)

(declare-fun Unit!70947 () Unit!70923)

(assert (=> b!4350065 (= lt!1563904 Unit!70947)))

(declare-fun lt!1563914 () Unit!70923)

(declare-fun Unit!70948 () Unit!70923)

(assert (=> b!4350065 (= lt!1563914 Unit!70948)))

(declare-fun lt!1563906 () Unit!70923)

(declare-fun addForallContainsKeyThenBeforeAdding!50 (ListMap!2153 ListMap!2153 K!10225 V!10471) Unit!70923)

(assert (=> b!4350065 (= lt!1563906 (addForallContainsKeyThenBeforeAdding!50 (extractMap!522 (t!355906 (toList!2909 lm!1707))) lt!1563899 (_1!27405 (h!54394 (_2!27406 (h!54395 (toList!2909 lm!1707))))) (_2!27405 (h!54394 (_2!27406 (h!54395 (toList!2909 lm!1707)))))))))

(assert (=> b!4350065 (forall!9070 (toList!2910 (extractMap!522 (t!355906 (toList!2909 lm!1707)))) lambda!139172)))

(declare-fun lt!1563919 () Unit!70923)

(assert (=> b!4350065 (= lt!1563919 lt!1563906)))

(assert (=> b!4350065 (forall!9070 (toList!2910 (extractMap!522 (t!355906 (toList!2909 lm!1707)))) lambda!139172)))

(declare-fun lt!1563913 () Unit!70923)

(declare-fun Unit!70949 () Unit!70923)

(assert (=> b!4350065 (= lt!1563913 Unit!70949)))

(declare-fun res!1786963 () Bool)

(assert (=> b!4350065 (= res!1786963 (forall!9070 (_2!27406 (h!54395 (toList!2909 lm!1707))) lambda!139172))))

(assert (=> b!4350065 (=> (not res!1786963) (not e!2707038))))

(assert (=> b!4350065 e!2707038))

(declare-fun lt!1563905 () Unit!70923)

(declare-fun Unit!70950 () Unit!70923)

(assert (=> b!4350065 (= lt!1563905 Unit!70950)))

(assert (= (and d!1284765 c!739502) b!4350064))

(assert (= (and d!1284765 (not c!739502)) b!4350065))

(assert (= (and b!4350065 res!1786963) b!4350061))

(assert (= (or b!4350064 b!4350065) bm!302344))

(assert (= (or b!4350064 b!4350065) bm!302342))

(assert (= (or b!4350064 b!4350065) bm!302343))

(assert (= (and d!1284765 res!1786962) b!4350063))

(assert (= (and b!4350063 res!1786964) b!4350062))

(declare-fun m!4959833 () Bool)

(assert (=> d!1284765 m!4959833))

(assert (=> d!1284765 m!4959487))

(declare-fun m!4959835 () Bool)

(assert (=> b!4350065 m!4959835))

(declare-fun m!4959837 () Bool)

(assert (=> b!4350065 m!4959837))

(declare-fun m!4959839 () Bool)

(assert (=> b!4350065 m!4959839))

(declare-fun m!4959841 () Bool)

(assert (=> b!4350065 m!4959841))

(declare-fun m!4959843 () Bool)

(assert (=> b!4350065 m!4959843))

(assert (=> b!4350065 m!4959235))

(assert (=> b!4350065 m!4959837))

(assert (=> b!4350065 m!4959843))

(declare-fun m!4959845 () Bool)

(assert (=> b!4350065 m!4959845))

(assert (=> b!4350065 m!4959235))

(declare-fun m!4959847 () Bool)

(assert (=> b!4350065 m!4959847))

(declare-fun m!4959849 () Bool)

(assert (=> b!4350065 m!4959849))

(declare-fun m!4959851 () Bool)

(assert (=> b!4350065 m!4959851))

(assert (=> b!4350065 m!4959841))

(declare-fun m!4959853 () Bool)

(assert (=> b!4350065 m!4959853))

(assert (=> b!4350061 m!4959841))

(declare-fun m!4959855 () Bool)

(assert (=> b!4350062 m!4959855))

(declare-fun m!4959857 () Bool)

(assert (=> b!4350063 m!4959857))

(assert (=> bm!302344 m!4959235))

(declare-fun m!4959859 () Bool)

(assert (=> bm!302344 m!4959859))

(declare-fun m!4959861 () Bool)

(assert (=> bm!302342 m!4959861))

(declare-fun m!4959863 () Bool)

(assert (=> bm!302343 m!4959863))

(assert (=> b!4349841 d!1284765))

(assert (=> b!4349841 d!1284641))

(declare-fun d!1284801 () Bool)

(assert (=> d!1284801 (isDefined!7729 (getValueByKey!419 (toList!2910 lt!1563608) key!3918))))

(declare-fun lt!1563922 () Unit!70923)

(declare-fun choose!26753 (List!48985 K!10225) Unit!70923)

(assert (=> d!1284801 (= lt!1563922 (choose!26753 (toList!2910 lt!1563608) key!3918))))

(assert (=> d!1284801 (invariantList!660 (toList!2910 lt!1563608))))

(assert (=> d!1284801 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!332 (toList!2910 lt!1563608) key!3918) lt!1563922)))

(declare-fun bs!628670 () Bool)

(assert (= bs!628670 d!1284801))

(assert (=> bs!628670 m!4959443))

(assert (=> bs!628670 m!4959443))

(assert (=> bs!628670 m!4959445))

(declare-fun m!4959865 () Bool)

(assert (=> bs!628670 m!4959865))

(declare-fun m!4959867 () Bool)

(assert (=> bs!628670 m!4959867))

(assert (=> b!4349759 d!1284801))

(declare-fun d!1284803 () Bool)

(declare-fun isEmpty!28174 (Option!10433) Bool)

(assert (=> d!1284803 (= (isDefined!7729 (getValueByKey!419 (toList!2910 lt!1563608) key!3918)) (not (isEmpty!28174 (getValueByKey!419 (toList!2910 lt!1563608) key!3918))))))

(declare-fun bs!628671 () Bool)

(assert (= bs!628671 d!1284803))

(assert (=> bs!628671 m!4959443))

(declare-fun m!4959869 () Bool)

(assert (=> bs!628671 m!4959869))

(assert (=> b!4349759 d!1284803))

(declare-fun b!4350077 () Bool)

(declare-fun e!2707043 () Option!10433)

(declare-fun e!2707044 () Option!10433)

(assert (=> b!4350077 (= e!2707043 e!2707044)))

(declare-fun c!739508 () Bool)

(assert (=> b!4350077 (= c!739508 (and ((_ is Cons!48861) (toList!2910 lt!1563608)) (not (= (_1!27405 (h!54394 (toList!2910 lt!1563608))) key!3918))))))

(declare-fun b!4350076 () Bool)

(assert (=> b!4350076 (= e!2707043 (Some!10432 (_2!27405 (h!54394 (toList!2910 lt!1563608)))))))

(declare-fun d!1284805 () Bool)

(declare-fun c!739507 () Bool)

(assert (=> d!1284805 (= c!739507 (and ((_ is Cons!48861) (toList!2910 lt!1563608)) (= (_1!27405 (h!54394 (toList!2910 lt!1563608))) key!3918)))))

(assert (=> d!1284805 (= (getValueByKey!419 (toList!2910 lt!1563608) key!3918) e!2707043)))

(declare-fun b!4350079 () Bool)

(assert (=> b!4350079 (= e!2707044 None!10432)))

(declare-fun b!4350078 () Bool)

(assert (=> b!4350078 (= e!2707044 (getValueByKey!419 (t!355905 (toList!2910 lt!1563608)) key!3918))))

(assert (= (and d!1284805 c!739507) b!4350076))

(assert (= (and d!1284805 (not c!739507)) b!4350077))

(assert (= (and b!4350077 c!739508) b!4350078))

(assert (= (and b!4350077 (not c!739508)) b!4350079))

(declare-fun m!4959871 () Bool)

(assert (=> b!4350078 m!4959871))

(assert (=> b!4349759 d!1284805))

(declare-fun d!1284807 () Bool)

(assert (=> d!1284807 (contains!11028 (getKeysList!108 (toList!2910 lt!1563608)) key!3918)))

(declare-fun lt!1563925 () Unit!70923)

(declare-fun choose!26754 (List!48985 K!10225) Unit!70923)

(assert (=> d!1284807 (= lt!1563925 (choose!26754 (toList!2910 lt!1563608) key!3918))))

(assert (=> d!1284807 (invariantList!660 (toList!2910 lt!1563608))))

(assert (=> d!1284807 (= (lemmaInListThenGetKeysListContains!105 (toList!2910 lt!1563608) key!3918) lt!1563925)))

(declare-fun bs!628672 () Bool)

(assert (= bs!628672 d!1284807))

(assert (=> bs!628672 m!4959449))

(assert (=> bs!628672 m!4959449))

(declare-fun m!4959873 () Bool)

(assert (=> bs!628672 m!4959873))

(declare-fun m!4959875 () Bool)

(assert (=> bs!628672 m!4959875))

(assert (=> bs!628672 m!4959867))

(assert (=> b!4349759 d!1284807))

(declare-fun d!1284809 () Bool)

(declare-fun noDuplicatedKeys!111 (List!48985) Bool)

(assert (=> d!1284809 (= (invariantList!660 (toList!2910 lt!1563778)) (noDuplicatedKeys!111 (toList!2910 lt!1563778)))))

(declare-fun bs!628673 () Bool)

(assert (= bs!628673 d!1284809))

(declare-fun m!4959877 () Bool)

(assert (=> bs!628673 m!4959877))

(assert (=> d!1284641 d!1284809))

(declare-fun d!1284811 () Bool)

(declare-fun res!1786965 () Bool)

(declare-fun e!2707045 () Bool)

(assert (=> d!1284811 (=> res!1786965 e!2707045)))

(assert (=> d!1284811 (= res!1786965 ((_ is Nil!48862) (t!355906 (toList!2909 lm!1707))))))

(assert (=> d!1284811 (= (forall!9069 (t!355906 (toList!2909 lm!1707)) lambda!139117) e!2707045)))

(declare-fun b!4350080 () Bool)

(declare-fun e!2707046 () Bool)

(assert (=> b!4350080 (= e!2707045 e!2707046)))

(declare-fun res!1786966 () Bool)

(assert (=> b!4350080 (=> (not res!1786966) (not e!2707046))))

(assert (=> b!4350080 (= res!1786966 (dynLambda!20608 lambda!139117 (h!54395 (t!355906 (toList!2909 lm!1707)))))))

(declare-fun b!4350081 () Bool)

(assert (=> b!4350081 (= e!2707046 (forall!9069 (t!355906 (t!355906 (toList!2909 lm!1707))) lambda!139117))))

(assert (= (and d!1284811 (not res!1786965)) b!4350080))

(assert (= (and b!4350080 res!1786966) b!4350081))

(declare-fun b_lambda!130471 () Bool)

(assert (=> (not b_lambda!130471) (not b!4350080)))

(declare-fun m!4959879 () Bool)

(assert (=> b!4350080 m!4959879))

(declare-fun m!4959881 () Bool)

(assert (=> b!4350081 m!4959881))

(assert (=> d!1284641 d!1284811))

(declare-fun b!4350090 () Bool)

(declare-fun e!2707051 () Option!10432)

(assert (=> b!4350090 (= e!2707051 (Some!10431 (_2!27406 (h!54395 (toList!2909 lt!1563637)))))))

(declare-fun b!4350092 () Bool)

(declare-fun e!2707052 () Option!10432)

(assert (=> b!4350092 (= e!2707052 (getValueByKey!418 (t!355906 (toList!2909 lt!1563637)) (_1!27406 (tuple2!48225 hash!377 newBucket!200))))))

(declare-fun b!4350091 () Bool)

(assert (=> b!4350091 (= e!2707051 e!2707052)))

(declare-fun c!739514 () Bool)

(assert (=> b!4350091 (= c!739514 (and ((_ is Cons!48862) (toList!2909 lt!1563637)) (not (= (_1!27406 (h!54395 (toList!2909 lt!1563637))) (_1!27406 (tuple2!48225 hash!377 newBucket!200))))))))

(declare-fun b!4350093 () Bool)

(assert (=> b!4350093 (= e!2707052 None!10431)))

(declare-fun d!1284813 () Bool)

(declare-fun c!739513 () Bool)

(assert (=> d!1284813 (= c!739513 (and ((_ is Cons!48862) (toList!2909 lt!1563637)) (= (_1!27406 (h!54395 (toList!2909 lt!1563637))) (_1!27406 (tuple2!48225 hash!377 newBucket!200)))))))

(assert (=> d!1284813 (= (getValueByKey!418 (toList!2909 lt!1563637) (_1!27406 (tuple2!48225 hash!377 newBucket!200))) e!2707051)))

(assert (= (and d!1284813 c!739513) b!4350090))

(assert (= (and d!1284813 (not c!739513)) b!4350091))

(assert (= (and b!4350091 c!739514) b!4350092))

(assert (= (and b!4350091 (not c!739514)) b!4350093))

(declare-fun m!4959883 () Bool)

(assert (=> b!4350092 m!4959883))

(assert (=> b!4349606 d!1284813))

(declare-fun d!1284815 () Bool)

(assert (=> d!1284815 (isDefined!7729 (getValueByKey!419 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918))))

(declare-fun lt!1563926 () Unit!70923)

(assert (=> d!1284815 (= lt!1563926 (choose!26753 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918))))

(assert (=> d!1284815 (invariantList!660 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))))

(assert (=> d!1284815 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!332 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918) lt!1563926)))

(declare-fun bs!628674 () Bool)

(assert (= bs!628674 d!1284815))

(assert (=> bs!628674 m!4959555))

(assert (=> bs!628674 m!4959555))

(assert (=> bs!628674 m!4959557))

(declare-fun m!4959885 () Bool)

(assert (=> bs!628674 m!4959885))

(declare-fun m!4959887 () Bool)

(assert (=> bs!628674 m!4959887))

(assert (=> b!4349827 d!1284815))

(declare-fun d!1284817 () Bool)

(assert (=> d!1284817 (= (isDefined!7729 (getValueByKey!419 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918)) (not (isEmpty!28174 (getValueByKey!419 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918))))))

(declare-fun bs!628675 () Bool)

(assert (= bs!628675 d!1284817))

(assert (=> bs!628675 m!4959555))

(declare-fun m!4959889 () Bool)

(assert (=> bs!628675 m!4959889))

(assert (=> b!4349827 d!1284817))

(declare-fun b!4350095 () Bool)

(declare-fun e!2707053 () Option!10433)

(declare-fun e!2707054 () Option!10433)

(assert (=> b!4350095 (= e!2707053 e!2707054)))

(declare-fun c!739516 () Bool)

(assert (=> b!4350095 (= c!739516 (and ((_ is Cons!48861) (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (not (= (_1!27405 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))) key!3918))))))

(declare-fun b!4350094 () Bool)

(assert (=> b!4350094 (= e!2707053 (Some!10432 (_2!27405 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))))))))

(declare-fun d!1284819 () Bool)

(declare-fun c!739515 () Bool)

(assert (=> d!1284819 (= c!739515 (and ((_ is Cons!48861) (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (= (_1!27405 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))) key!3918)))))

(assert (=> d!1284819 (= (getValueByKey!419 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918) e!2707053)))

(declare-fun b!4350097 () Bool)

(assert (=> b!4350097 (= e!2707054 None!10432)))

(declare-fun b!4350096 () Bool)

(assert (=> b!4350096 (= e!2707054 (getValueByKey!419 (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) key!3918))))

(assert (= (and d!1284819 c!739515) b!4350094))

(assert (= (and d!1284819 (not c!739515)) b!4350095))

(assert (= (and b!4350095 c!739516) b!4350096))

(assert (= (and b!4350095 (not c!739516)) b!4350097))

(declare-fun m!4959891 () Bool)

(assert (=> b!4350096 m!4959891))

(assert (=> b!4349827 d!1284819))

(declare-fun d!1284821 () Bool)

(assert (=> d!1284821 (contains!11028 (getKeysList!108 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) key!3918)))

(declare-fun lt!1563929 () Unit!70923)

(assert (=> d!1284821 (= lt!1563929 (choose!26754 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918))))

(assert (=> d!1284821 (invariantList!660 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))))

(assert (=> d!1284821 (= (lemmaInListThenGetKeysListContains!105 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918) lt!1563929)))

(declare-fun bs!628676 () Bool)

(assert (= bs!628676 d!1284821))

(assert (=> bs!628676 m!4959561))

(assert (=> bs!628676 m!4959561))

(declare-fun m!4959893 () Bool)

(assert (=> bs!628676 m!4959893))

(declare-fun m!4959895 () Bool)

(assert (=> bs!628676 m!4959895))

(assert (=> bs!628676 m!4959887))

(assert (=> b!4349827 d!1284821))

(declare-fun d!1284823 () Bool)

(assert (=> d!1284823 (= (invariantList!660 (toList!2910 lt!1563796)) (noDuplicatedKeys!111 (toList!2910 lt!1563796)))))

(declare-fun bs!628677 () Bool)

(assert (= bs!628677 d!1284823))

(declare-fun m!4959897 () Bool)

(assert (=> bs!628677 m!4959897))

(assert (=> d!1284679 d!1284823))

(declare-fun d!1284825 () Bool)

(declare-fun res!1786967 () Bool)

(declare-fun e!2707057 () Bool)

(assert (=> d!1284825 (=> res!1786967 e!2707057)))

(assert (=> d!1284825 (= res!1786967 ((_ is Nil!48862) (toList!2909 lm!1707)))))

(assert (=> d!1284825 (= (forall!9069 (toList!2909 lm!1707) lambda!139119) e!2707057)))

(declare-fun b!4350102 () Bool)

(declare-fun e!2707058 () Bool)

(assert (=> b!4350102 (= e!2707057 e!2707058)))

(declare-fun res!1786968 () Bool)

(assert (=> b!4350102 (=> (not res!1786968) (not e!2707058))))

(assert (=> b!4350102 (= res!1786968 (dynLambda!20608 lambda!139119 (h!54395 (toList!2909 lm!1707))))))

(declare-fun b!4350103 () Bool)

(assert (=> b!4350103 (= e!2707058 (forall!9069 (t!355906 (toList!2909 lm!1707)) lambda!139119))))

(assert (= (and d!1284825 (not res!1786967)) b!4350102))

(assert (= (and b!4350102 res!1786968) b!4350103))

(declare-fun b_lambda!130473 () Bool)

(assert (=> (not b_lambda!130473) (not b!4350102)))

(declare-fun m!4959899 () Bool)

(assert (=> b!4350102 m!4959899))

(declare-fun m!4959901 () Bool)

(assert (=> b!4350103 m!4959901))

(assert (=> d!1284679 d!1284825))

(declare-fun d!1284827 () Bool)

(declare-fun res!1786969 () Bool)

(declare-fun e!2707059 () Bool)

(assert (=> d!1284827 (=> res!1786969 e!2707059)))

(assert (=> d!1284827 (= res!1786969 ((_ is Nil!48862) (t!355906 (toList!2909 lt!1563610))))))

(assert (=> d!1284827 (= (forall!9069 (t!355906 (toList!2909 lt!1563610)) lambda!139091) e!2707059)))

(declare-fun b!4350104 () Bool)

(declare-fun e!2707060 () Bool)

(assert (=> b!4350104 (= e!2707059 e!2707060)))

(declare-fun res!1786970 () Bool)

(assert (=> b!4350104 (=> (not res!1786970) (not e!2707060))))

(assert (=> b!4350104 (= res!1786970 (dynLambda!20608 lambda!139091 (h!54395 (t!355906 (toList!2909 lt!1563610)))))))

(declare-fun b!4350105 () Bool)

(assert (=> b!4350105 (= e!2707060 (forall!9069 (t!355906 (t!355906 (toList!2909 lt!1563610))) lambda!139091))))

(assert (= (and d!1284827 (not res!1786969)) b!4350104))

(assert (= (and b!4350104 res!1786970) b!4350105))

(declare-fun b_lambda!130475 () Bool)

(assert (=> (not b_lambda!130475) (not b!4350104)))

(declare-fun m!4959903 () Bool)

(assert (=> b!4350104 m!4959903))

(declare-fun m!4959905 () Bool)

(assert (=> b!4350105 m!4959905))

(assert (=> b!4349601 d!1284827))

(assert (=> b!4349755 d!1284803))

(assert (=> b!4349755 d!1284805))

(declare-fun b!4350143 () Bool)

(assert (=> b!4350143 true))

(declare-fun bs!628683 () Bool)

(declare-fun b!4350141 () Bool)

(assert (= bs!628683 (and b!4350141 b!4350143)))

(declare-fun lambda!139215 () Int)

(declare-fun lambda!139213 () Int)

(assert (=> bs!628683 (= (= (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))) (= lambda!139215 lambda!139213))))

(assert (=> b!4350141 true))

(declare-fun bs!628685 () Bool)

(declare-fun b!4350144 () Bool)

(assert (= bs!628685 (and b!4350144 b!4350143)))

(declare-fun lambda!139216 () Int)

(assert (=> bs!628685 (= (= (toList!2910 (extractMap!522 (toList!2909 lm!1707))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))) (= lambda!139216 lambda!139213))))

(declare-fun bs!628686 () Bool)

(assert (= bs!628686 (and b!4350144 b!4350141)))

(assert (=> bs!628686 (= (= (toList!2910 (extractMap!522 (toList!2909 lm!1707))) (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))))) (= lambda!139216 lambda!139215))))

(assert (=> b!4350144 true))

(declare-fun b!4350137 () Bool)

(declare-fun e!2707076 () List!48988)

(assert (=> b!4350137 (= e!2707076 Nil!48864)))

(declare-fun b!4350138 () Bool)

(declare-fun e!2707077 () Unit!70923)

(declare-fun Unit!70955 () Unit!70923)

(assert (=> b!4350138 (= e!2707077 Unit!70955)))

(declare-fun b!4350139 () Bool)

(declare-fun e!2707079 () Unit!70923)

(declare-fun Unit!70956 () Unit!70923)

(assert (=> b!4350139 (= e!2707079 Unit!70956)))

(declare-fun d!1284829 () Bool)

(declare-fun e!2707078 () Bool)

(assert (=> d!1284829 e!2707078))

(declare-fun res!1786987 () Bool)

(assert (=> d!1284829 (=> (not res!1786987) (not e!2707078))))

(declare-fun lt!1564011 () List!48988)

(declare-fun noDuplicate!596 (List!48988) Bool)

(assert (=> d!1284829 (= res!1786987 (noDuplicate!596 lt!1564011))))

(assert (=> d!1284829 (= lt!1564011 e!2707076)))

(declare-fun c!739526 () Bool)

(assert (=> d!1284829 (= c!739526 ((_ is Cons!48861) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))))))

(assert (=> d!1284829 (invariantList!660 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))))

(assert (=> d!1284829 (= (getKeysList!108 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) lt!1564011)))

(declare-fun b!4350140 () Bool)

(assert (=> b!4350140 false))

(declare-fun Unit!70957 () Unit!70923)

(assert (=> b!4350140 (= e!2707079 Unit!70957)))

(assert (=> b!4350141 (= e!2707076 (Cons!48864 (_1!27405 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))) (getKeysList!108 (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))))))))

(declare-fun c!739528 () Bool)

(assert (=> b!4350141 (= c!739528 (containsKey!634 (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (_1!27405 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))))))))

(declare-fun lt!1564006 () Unit!70923)

(assert (=> b!4350141 (= lt!1564006 e!2707079)))

(declare-fun c!739527 () Bool)

(assert (=> b!4350141 (= c!739527 (contains!11028 (getKeysList!108 (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))) (_1!27405 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))))))))

(declare-fun lt!1564008 () Unit!70923)

(assert (=> b!4350141 (= lt!1564008 e!2707077)))

(declare-fun lt!1564007 () List!48988)

(assert (=> b!4350141 (= lt!1564007 (getKeysList!108 (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))))))

(declare-fun lt!1564010 () Unit!70923)

(declare-fun lemmaForallContainsAddHeadPreserves!18 (List!48985 List!48988 tuple2!48222) Unit!70923)

(assert (=> b!4350141 (= lt!1564010 (lemmaForallContainsAddHeadPreserves!18 (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) lt!1564007 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))))))

(declare-fun forall!9073 (List!48988 Int) Bool)

(assert (=> b!4350141 (forall!9073 lt!1564007 lambda!139215)))

(declare-fun lt!1564009 () Unit!70923)

(assert (=> b!4350141 (= lt!1564009 lt!1564010)))

(declare-fun b!4350142 () Bool)

(declare-fun res!1786986 () Bool)

(assert (=> b!4350142 (=> (not res!1786986) (not e!2707078))))

(declare-fun length!48 (List!48988) Int)

(declare-fun length!49 (List!48985) Int)

(assert (=> b!4350142 (= res!1786986 (= (length!48 lt!1564011) (length!49 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))))))

(assert (=> b!4350143 false))

(declare-fun lt!1564005 () Unit!70923)

(declare-fun forallContained!1720 (List!48988 Int K!10225) Unit!70923)

(assert (=> b!4350143 (= lt!1564005 (forallContained!1720 (getKeysList!108 (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))) lambda!139213 (_1!27405 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))))))))

(declare-fun Unit!70958 () Unit!70923)

(assert (=> b!4350143 (= e!2707077 Unit!70958)))

(declare-fun res!1786988 () Bool)

(assert (=> b!4350144 (=> (not res!1786988) (not e!2707078))))

(assert (=> b!4350144 (= res!1786988 (forall!9073 lt!1564011 lambda!139216))))

(declare-fun b!4350145 () Bool)

(declare-fun lambda!139217 () Int)

(declare-fun content!7680 (List!48988) (InoxSet K!10225))

(declare-fun map!10624 (List!48985 Int) List!48988)

(assert (=> b!4350145 (= e!2707078 (= (content!7680 lt!1564011) (content!7680 (map!10624 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) lambda!139217))))))

(assert (= (and d!1284829 c!739526) b!4350141))

(assert (= (and d!1284829 (not c!739526)) b!4350137))

(assert (= (and b!4350141 c!739528) b!4350140))

(assert (= (and b!4350141 (not c!739528)) b!4350139))

(assert (= (and b!4350141 c!739527) b!4350143))

(assert (= (and b!4350141 (not c!739527)) b!4350138))

(assert (= (and d!1284829 res!1786987) b!4350142))

(assert (= (and b!4350142 res!1786986) b!4350144))

(assert (= (and b!4350144 res!1786988) b!4350145))

(declare-fun m!4959907 () Bool)

(assert (=> b!4350142 m!4959907))

(declare-fun m!4959909 () Bool)

(assert (=> b!4350142 m!4959909))

(declare-fun m!4959911 () Bool)

(assert (=> b!4350144 m!4959911))

(declare-fun m!4959913 () Bool)

(assert (=> b!4350141 m!4959913))

(declare-fun m!4959915 () Bool)

(assert (=> b!4350141 m!4959915))

(declare-fun m!4959917 () Bool)

(assert (=> b!4350141 m!4959917))

(assert (=> b!4350141 m!4959915))

(declare-fun m!4959921 () Bool)

(assert (=> b!4350141 m!4959921))

(declare-fun m!4959925 () Bool)

(assert (=> b!4350141 m!4959925))

(declare-fun m!4959927 () Bool)

(assert (=> b!4350145 m!4959927))

(declare-fun m!4959931 () Bool)

(assert (=> b!4350145 m!4959931))

(assert (=> b!4350145 m!4959931))

(declare-fun m!4959935 () Bool)

(assert (=> b!4350145 m!4959935))

(assert (=> b!4350143 m!4959915))

(assert (=> b!4350143 m!4959915))

(declare-fun m!4959939 () Bool)

(assert (=> b!4350143 m!4959939))

(declare-fun m!4959943 () Bool)

(assert (=> d!1284829 m!4959943))

(declare-fun m!4959945 () Bool)

(assert (=> d!1284829 m!4959945))

(assert (=> b!4349839 d!1284829))

(declare-fun d!1284831 () Bool)

(declare-fun lt!1564035 () Bool)

(assert (=> d!1284831 (= lt!1564035 (select (content!7680 e!2706839) key!3918))))

(declare-fun e!2707087 () Bool)

(assert (=> d!1284831 (= lt!1564035 e!2707087)))

(declare-fun res!1786997 () Bool)

(assert (=> d!1284831 (=> (not res!1786997) (not e!2707087))))

(assert (=> d!1284831 (= res!1786997 ((_ is Cons!48864) e!2706839))))

(assert (=> d!1284831 (= (contains!11028 e!2706839 key!3918) lt!1564035)))

(declare-fun b!4350157 () Bool)

(declare-fun e!2707088 () Bool)

(assert (=> b!4350157 (= e!2707087 e!2707088)))

(declare-fun res!1786996 () Bool)

(assert (=> b!4350157 (=> res!1786996 e!2707088)))

(assert (=> b!4350157 (= res!1786996 (= (h!54399 e!2706839) key!3918))))

(declare-fun b!4350158 () Bool)

(assert (=> b!4350158 (= e!2707088 (contains!11028 (t!355908 e!2706839) key!3918))))

(assert (= (and d!1284831 res!1786997) b!4350157))

(assert (= (and b!4350157 (not res!1786996)) b!4350158))

(declare-fun m!4959969 () Bool)

(assert (=> d!1284831 m!4959969))

(declare-fun m!4959971 () Bool)

(assert (=> d!1284831 m!4959971))

(declare-fun m!4959973 () Bool)

(assert (=> b!4350158 m!4959973))

(assert (=> bm!302323 d!1284831))

(assert (=> b!4349823 d!1284817))

(assert (=> b!4349823 d!1284819))

(declare-fun d!1284835 () Bool)

(declare-fun lt!1564036 () Bool)

(assert (=> d!1284835 (= lt!1564036 (select (content!7680 (keys!16484 (extractMap!522 (toList!2909 lm!1707)))) key!3918))))

(declare-fun e!2707089 () Bool)

(assert (=> d!1284835 (= lt!1564036 e!2707089)))

(declare-fun res!1786999 () Bool)

(assert (=> d!1284835 (=> (not res!1786999) (not e!2707089))))

(assert (=> d!1284835 (= res!1786999 ((_ is Cons!48864) (keys!16484 (extractMap!522 (toList!2909 lm!1707)))))))

(assert (=> d!1284835 (= (contains!11028 (keys!16484 (extractMap!522 (toList!2909 lm!1707))) key!3918) lt!1564036)))

(declare-fun b!4350159 () Bool)

(declare-fun e!2707090 () Bool)

(assert (=> b!4350159 (= e!2707089 e!2707090)))

(declare-fun res!1786998 () Bool)

(assert (=> b!4350159 (=> res!1786998 e!2707090)))

(assert (=> b!4350159 (= res!1786998 (= (h!54399 (keys!16484 (extractMap!522 (toList!2909 lm!1707)))) key!3918))))

(declare-fun b!4350160 () Bool)

(assert (=> b!4350160 (= e!2707090 (contains!11028 (t!355908 (keys!16484 (extractMap!522 (toList!2909 lm!1707)))) key!3918))))

(assert (= (and d!1284835 res!1786999) b!4350159))

(assert (= (and b!4350159 (not res!1786998)) b!4350160))

(assert (=> d!1284835 m!4959581))

(declare-fun m!4959975 () Bool)

(assert (=> d!1284835 m!4959975))

(declare-fun m!4959977 () Bool)

(assert (=> d!1284835 m!4959977))

(declare-fun m!4959979 () Bool)

(assert (=> b!4350160 m!4959979))

(assert (=> b!4349837 d!1284835))

(declare-fun bs!628709 () Bool)

(declare-fun b!4350176 () Bool)

(assert (= bs!628709 (and b!4350176 b!4350143)))

(declare-fun lambda!139227 () Int)

(assert (=> bs!628709 (= (= (toList!2910 (extractMap!522 (toList!2909 lm!1707))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))) (= lambda!139227 lambda!139213))))

(declare-fun bs!628710 () Bool)

(assert (= bs!628710 (and b!4350176 b!4350141)))

(assert (=> bs!628710 (= (= (toList!2910 (extractMap!522 (toList!2909 lm!1707))) (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))))) (= lambda!139227 lambda!139215))))

(declare-fun bs!628711 () Bool)

(assert (= bs!628711 (and b!4350176 b!4350144)))

(assert (=> bs!628711 (= lambda!139227 lambda!139216)))

(assert (=> b!4350176 true))

(declare-fun bs!628712 () Bool)

(declare-fun b!4350177 () Bool)

(assert (= bs!628712 (and b!4350177 b!4350145)))

(declare-fun lambda!139228 () Int)

(assert (=> bs!628712 (= lambda!139228 lambda!139217)))

(declare-fun d!1284837 () Bool)

(declare-fun e!2707098 () Bool)

(assert (=> d!1284837 e!2707098))

(declare-fun res!1787009 () Bool)

(assert (=> d!1284837 (=> (not res!1787009) (not e!2707098))))

(declare-fun lt!1564040 () List!48988)

(assert (=> d!1284837 (= res!1787009 (noDuplicate!596 lt!1564040))))

(assert (=> d!1284837 (= lt!1564040 (getKeysList!108 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))))))

(assert (=> d!1284837 (= (keys!16484 (extractMap!522 (toList!2909 lm!1707))) lt!1564040)))

(declare-fun b!4350175 () Bool)

(declare-fun res!1787008 () Bool)

(assert (=> b!4350175 (=> (not res!1787008) (not e!2707098))))

(assert (=> b!4350175 (= res!1787008 (= (length!48 lt!1564040) (length!49 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))))))

(declare-fun res!1787010 () Bool)

(assert (=> b!4350176 (=> (not res!1787010) (not e!2707098))))

(assert (=> b!4350176 (= res!1787010 (forall!9073 lt!1564040 lambda!139227))))

(assert (=> b!4350177 (= e!2707098 (= (content!7680 lt!1564040) (content!7680 (map!10624 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) lambda!139228))))))

(assert (= (and d!1284837 res!1787009) b!4350175))

(assert (= (and b!4350175 res!1787008) b!4350176))

(assert (= (and b!4350176 res!1787010) b!4350177))

(declare-fun m!4960037 () Bool)

(assert (=> d!1284837 m!4960037))

(assert (=> d!1284837 m!4959593))

(declare-fun m!4960039 () Bool)

(assert (=> b!4350175 m!4960039))

(assert (=> b!4350175 m!4959909))

(declare-fun m!4960041 () Bool)

(assert (=> b!4350176 m!4960041))

(declare-fun m!4960043 () Bool)

(assert (=> b!4350177 m!4960043))

(declare-fun m!4960045 () Bool)

(assert (=> b!4350177 m!4960045))

(assert (=> b!4350177 m!4960045))

(declare-fun m!4960047 () Bool)

(assert (=> b!4350177 m!4960047))

(assert (=> b!4349837 d!1284837))

(declare-fun d!1284851 () Bool)

(declare-fun lt!1564048 () Bool)

(assert (=> d!1284851 (= lt!1564048 (select (content!7680 (keys!16484 lt!1563608)) key!3918))))

(declare-fun e!2707105 () Bool)

(assert (=> d!1284851 (= lt!1564048 e!2707105)))

(declare-fun res!1787017 () Bool)

(assert (=> d!1284851 (=> (not res!1787017) (not e!2707105))))

(assert (=> d!1284851 (= res!1787017 ((_ is Cons!48864) (keys!16484 lt!1563608)))))

(assert (=> d!1284851 (= (contains!11028 (keys!16484 lt!1563608) key!3918) lt!1564048)))

(declare-fun b!4350191 () Bool)

(declare-fun e!2707106 () Bool)

(assert (=> b!4350191 (= e!2707105 e!2707106)))

(declare-fun res!1787016 () Bool)

(assert (=> b!4350191 (=> res!1787016 e!2707106)))

(assert (=> b!4350191 (= res!1787016 (= (h!54399 (keys!16484 lt!1563608)) key!3918))))

(declare-fun b!4350192 () Bool)

(assert (=> b!4350192 (= e!2707106 (contains!11028 (t!355908 (keys!16484 lt!1563608)) key!3918))))

(assert (= (and d!1284851 res!1787017) b!4350191))

(assert (= (and b!4350191 (not res!1787016)) b!4350192))

(assert (=> d!1284851 m!4959437))

(declare-fun m!4960049 () Bool)

(assert (=> d!1284851 m!4960049))

(declare-fun m!4960051 () Bool)

(assert (=> d!1284851 m!4960051))

(declare-fun m!4960053 () Bool)

(assert (=> b!4350192 m!4960053))

(assert (=> b!4349752 d!1284851))

(declare-fun bs!628723 () Bool)

(declare-fun b!4350194 () Bool)

(assert (= bs!628723 (and b!4350194 b!4350143)))

(declare-fun lambda!139231 () Int)

(assert (=> bs!628723 (= (= (toList!2910 lt!1563608) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))) (= lambda!139231 lambda!139213))))

(declare-fun bs!628725 () Bool)

(assert (= bs!628725 (and b!4350194 b!4350141)))

(assert (=> bs!628725 (= (= (toList!2910 lt!1563608) (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))))) (= lambda!139231 lambda!139215))))

(declare-fun bs!628727 () Bool)

(assert (= bs!628727 (and b!4350194 b!4350144)))

(assert (=> bs!628727 (= (= (toList!2910 lt!1563608) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (= lambda!139231 lambda!139216))))

(declare-fun bs!628729 () Bool)

(assert (= bs!628729 (and b!4350194 b!4350176)))

(assert (=> bs!628729 (= (= (toList!2910 lt!1563608) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (= lambda!139231 lambda!139227))))

(assert (=> b!4350194 true))

(declare-fun bs!628730 () Bool)

(declare-fun b!4350195 () Bool)

(assert (= bs!628730 (and b!4350195 b!4350145)))

(declare-fun lambda!139233 () Int)

(assert (=> bs!628730 (= lambda!139233 lambda!139217)))

(declare-fun bs!628732 () Bool)

(assert (= bs!628732 (and b!4350195 b!4350177)))

(assert (=> bs!628732 (= lambda!139233 lambda!139228)))

(declare-fun d!1284853 () Bool)

(declare-fun e!2707107 () Bool)

(assert (=> d!1284853 e!2707107))

(declare-fun res!1787019 () Bool)

(assert (=> d!1284853 (=> (not res!1787019) (not e!2707107))))

(declare-fun lt!1564049 () List!48988)

(assert (=> d!1284853 (= res!1787019 (noDuplicate!596 lt!1564049))))

(assert (=> d!1284853 (= lt!1564049 (getKeysList!108 (toList!2910 lt!1563608)))))

(assert (=> d!1284853 (= (keys!16484 lt!1563608) lt!1564049)))

(declare-fun b!4350193 () Bool)

(declare-fun res!1787018 () Bool)

(assert (=> b!4350193 (=> (not res!1787018) (not e!2707107))))

(assert (=> b!4350193 (= res!1787018 (= (length!48 lt!1564049) (length!49 (toList!2910 lt!1563608))))))

(declare-fun res!1787020 () Bool)

(assert (=> b!4350194 (=> (not res!1787020) (not e!2707107))))

(assert (=> b!4350194 (= res!1787020 (forall!9073 lt!1564049 lambda!139231))))

(assert (=> b!4350195 (= e!2707107 (= (content!7680 lt!1564049) (content!7680 (map!10624 (toList!2910 lt!1563608) lambda!139233))))))

(assert (= (and d!1284853 res!1787019) b!4350193))

(assert (= (and b!4350193 res!1787018) b!4350194))

(assert (= (and b!4350194 res!1787020) b!4350195))

(declare-fun m!4960055 () Bool)

(assert (=> d!1284853 m!4960055))

(assert (=> d!1284853 m!4959449))

(declare-fun m!4960057 () Bool)

(assert (=> b!4350193 m!4960057))

(declare-fun m!4960059 () Bool)

(assert (=> b!4350193 m!4960059))

(declare-fun m!4960061 () Bool)

(assert (=> b!4350194 m!4960061))

(declare-fun m!4960063 () Bool)

(assert (=> b!4350195 m!4960063))

(declare-fun m!4960065 () Bool)

(assert (=> b!4350195 m!4960065))

(assert (=> b!4350195 m!4960065))

(declare-fun m!4960067 () Bool)

(assert (=> b!4350195 m!4960067))

(assert (=> b!4349752 d!1284853))

(declare-fun d!1284855 () Bool)

(declare-fun lt!1564050 () Bool)

(assert (=> d!1284855 (= lt!1564050 (select (content!7680 e!2706883) key!3918))))

(declare-fun e!2707108 () Bool)

(assert (=> d!1284855 (= lt!1564050 e!2707108)))

(declare-fun res!1787022 () Bool)

(assert (=> d!1284855 (=> (not res!1787022) (not e!2707108))))

(assert (=> d!1284855 (= res!1787022 ((_ is Cons!48864) e!2706883))))

(assert (=> d!1284855 (= (contains!11028 e!2706883 key!3918) lt!1564050)))

(declare-fun b!4350196 () Bool)

(declare-fun e!2707109 () Bool)

(assert (=> b!4350196 (= e!2707108 e!2707109)))

(declare-fun res!1787021 () Bool)

(assert (=> b!4350196 (=> res!1787021 e!2707109)))

(assert (=> b!4350196 (= res!1787021 (= (h!54399 e!2706883) key!3918))))

(declare-fun b!4350197 () Bool)

(assert (=> b!4350197 (= e!2707109 (contains!11028 (t!355908 e!2706883) key!3918))))

(assert (= (and d!1284855 res!1787022) b!4350196))

(assert (= (and b!4350196 (not res!1787021)) b!4350197))

(declare-fun m!4960069 () Bool)

(assert (=> d!1284855 m!4960069))

(declare-fun m!4960071 () Bool)

(assert (=> d!1284855 m!4960071))

(declare-fun m!4960073 () Bool)

(assert (=> b!4350197 m!4960073))

(assert (=> bm!302325 d!1284855))

(declare-fun d!1284857 () Bool)

(declare-fun res!1787029 () Bool)

(declare-fun e!2707116 () Bool)

(assert (=> d!1284857 (=> res!1787029 e!2707116)))

(assert (=> d!1284857 (= res!1787029 (and ((_ is Cons!48861) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (= (_1!27405 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))) key!3918)))))

(assert (=> d!1284857 (= (containsKey!634 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) key!3918) e!2707116)))

(declare-fun b!4350204 () Bool)

(declare-fun e!2707117 () Bool)

(assert (=> b!4350204 (= e!2707116 e!2707117)))

(declare-fun res!1787030 () Bool)

(assert (=> b!4350204 (=> (not res!1787030) (not e!2707117))))

(assert (=> b!4350204 (= res!1787030 ((_ is Cons!48861) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))))))

(declare-fun b!4350205 () Bool)

(assert (=> b!4350205 (= e!2707117 (containsKey!634 (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) key!3918))))

(assert (= (and d!1284857 (not res!1787029)) b!4350204))

(assert (= (and b!4350204 res!1787030) b!4350205))

(declare-fun m!4960105 () Bool)

(assert (=> b!4350205 m!4960105))

(assert (=> b!4349835 d!1284857))

(declare-fun d!1284865 () Bool)

(assert (=> d!1284865 (containsKey!634 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) key!3918)))

(declare-fun lt!1564060 () Unit!70923)

(declare-fun choose!26756 (List!48985 K!10225) Unit!70923)

(assert (=> d!1284865 (= lt!1564060 (choose!26756 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) key!3918))))

(assert (=> d!1284865 (invariantList!660 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))))

(assert (=> d!1284865 (= (lemmaInGetKeysListThenContainsKey!106 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) key!3918) lt!1564060)))

(declare-fun bs!628754 () Bool)

(assert (= bs!628754 d!1284865))

(assert (=> bs!628754 m!4959575))

(declare-fun m!4960107 () Bool)

(assert (=> bs!628754 m!4960107))

(assert (=> bs!628754 m!4959945))

(assert (=> b!4349835 d!1284865))

(declare-fun d!1284869 () Bool)

(declare-fun res!1787034 () Bool)

(declare-fun e!2707122 () Bool)

(assert (=> d!1284869 (=> res!1787034 e!2707122)))

(assert (=> d!1284869 (= res!1787034 (not ((_ is Cons!48861) (_2!27406 (h!54395 (toList!2909 lm!1707))))))))

(assert (=> d!1284869 (= (noDuplicateKeys!463 (_2!27406 (h!54395 (toList!2909 lm!1707)))) e!2707122)))

(declare-fun b!4350215 () Bool)

(declare-fun e!2707123 () Bool)

(assert (=> b!4350215 (= e!2707122 e!2707123)))

(declare-fun res!1787035 () Bool)

(assert (=> b!4350215 (=> (not res!1787035) (not e!2707123))))

(assert (=> b!4350215 (= res!1787035 (not (containsKey!630 (t!355905 (_2!27406 (h!54395 (toList!2909 lm!1707)))) (_1!27405 (h!54394 (_2!27406 (h!54395 (toList!2909 lm!1707))))))))))

(declare-fun b!4350216 () Bool)

(assert (=> b!4350216 (= e!2707123 (noDuplicateKeys!463 (t!355905 (_2!27406 (h!54395 (toList!2909 lm!1707))))))))

(assert (= (and d!1284869 (not res!1787034)) b!4350215))

(assert (= (and b!4350215 res!1787035) b!4350216))

(declare-fun m!4960109 () Bool)

(assert (=> b!4350215 m!4960109))

(declare-fun m!4960111 () Bool)

(assert (=> b!4350216 m!4960111))

(assert (=> bs!628625 d!1284869))

(assert (=> d!1284673 d!1284763))

(declare-fun d!1284871 () Bool)

(declare-fun res!1787036 () Bool)

(declare-fun e!2707124 () Bool)

(assert (=> d!1284871 (=> res!1787036 e!2707124)))

(assert (=> d!1284871 (= res!1787036 ((_ is Nil!48862) (toList!2909 (+!588 lm!1707 (tuple2!48225 hash!377 newBucket!200)))))))

(assert (=> d!1284871 (= (forall!9069 (toList!2909 (+!588 lm!1707 (tuple2!48225 hash!377 newBucket!200))) lambda!139091) e!2707124)))

(declare-fun b!4350217 () Bool)

(declare-fun e!2707125 () Bool)

(assert (=> b!4350217 (= e!2707124 e!2707125)))

(declare-fun res!1787037 () Bool)

(assert (=> b!4350217 (=> (not res!1787037) (not e!2707125))))

(assert (=> b!4350217 (= res!1787037 (dynLambda!20608 lambda!139091 (h!54395 (toList!2909 (+!588 lm!1707 (tuple2!48225 hash!377 newBucket!200))))))))

(declare-fun b!4350218 () Bool)

(assert (=> b!4350218 (= e!2707125 (forall!9069 (t!355906 (toList!2909 (+!588 lm!1707 (tuple2!48225 hash!377 newBucket!200)))) lambda!139091))))

(assert (= (and d!1284871 (not res!1787036)) b!4350217))

(assert (= (and b!4350217 res!1787037) b!4350218))

(declare-fun b_lambda!130481 () Bool)

(assert (=> (not b_lambda!130481) (not b!4350217)))

(declare-fun m!4960113 () Bool)

(assert (=> b!4350217 m!4960113))

(declare-fun m!4960115 () Bool)

(assert (=> b!4350218 m!4960115))

(assert (=> d!1284573 d!1284871))

(assert (=> d!1284573 d!1284571))

(declare-fun d!1284873 () Bool)

(assert (=> d!1284873 (forall!9069 (toList!2909 (+!588 lm!1707 (tuple2!48225 hash!377 newBucket!200))) lambda!139091)))

(assert (=> d!1284873 true))

(declare-fun _$31!205 () Unit!70923)

(assert (=> d!1284873 (= (choose!26741 lm!1707 lambda!139091 hash!377 newBucket!200) _$31!205)))

(declare-fun bs!628781 () Bool)

(assert (= bs!628781 d!1284873))

(assert (=> bs!628781 m!4959203))

(assert (=> bs!628781 m!4959285))

(assert (=> d!1284573 d!1284873))

(assert (=> d!1284573 d!1284575))

(declare-fun d!1284879 () Bool)

(declare-fun res!1787040 () Bool)

(declare-fun e!2707128 () Bool)

(assert (=> d!1284879 (=> res!1787040 e!2707128)))

(assert (=> d!1284879 (= res!1787040 (and ((_ is Cons!48861) (t!355905 newBucket!200)) (= (_1!27405 (h!54394 (t!355905 newBucket!200))) (_1!27405 (h!54394 newBucket!200)))))))

(assert (=> d!1284879 (= (containsKey!630 (t!355905 newBucket!200) (_1!27405 (h!54394 newBucket!200))) e!2707128)))

(declare-fun b!4350222 () Bool)

(declare-fun e!2707129 () Bool)

(assert (=> b!4350222 (= e!2707128 e!2707129)))

(declare-fun res!1787041 () Bool)

(assert (=> b!4350222 (=> (not res!1787041) (not e!2707129))))

(assert (=> b!4350222 (= res!1787041 ((_ is Cons!48861) (t!355905 newBucket!200)))))

(declare-fun b!4350223 () Bool)

(assert (=> b!4350223 (= e!2707129 (containsKey!630 (t!355905 (t!355905 newBucket!200)) (_1!27405 (h!54394 newBucket!200))))))

(assert (= (and d!1284879 (not res!1787040)) b!4350222))

(assert (= (and b!4350222 res!1787041) b!4350223))

(declare-fun m!4960145 () Bool)

(assert (=> b!4350223 m!4960145))

(assert (=> b!4349696 d!1284879))

(declare-fun d!1284881 () Bool)

(declare-fun lt!1564061 () Bool)

(assert (=> d!1284881 (= lt!1564061 (select (content!7680 (keys!16484 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) key!3918))))

(declare-fun e!2707130 () Bool)

(assert (=> d!1284881 (= lt!1564061 e!2707130)))

(declare-fun res!1787043 () Bool)

(assert (=> d!1284881 (=> (not res!1787043) (not e!2707130))))

(assert (=> d!1284881 (= res!1787043 ((_ is Cons!48864) (keys!16484 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))))))

(assert (=> d!1284881 (= (contains!11028 (keys!16484 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918) lt!1564061)))

(declare-fun b!4350224 () Bool)

(declare-fun e!2707131 () Bool)

(assert (=> b!4350224 (= e!2707130 e!2707131)))

(declare-fun res!1787042 () Bool)

(assert (=> b!4350224 (=> res!1787042 e!2707131)))

(assert (=> b!4350224 (= res!1787042 (= (h!54399 (keys!16484 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) key!3918))))

(declare-fun b!4350225 () Bool)

(assert (=> b!4350225 (= e!2707131 (contains!11028 (t!355908 (keys!16484 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) key!3918))))

(assert (= (and d!1284881 res!1787043) b!4350224))

(assert (= (and b!4350224 (not res!1787042)) b!4350225))

(assert (=> d!1284881 m!4959549))

(declare-fun m!4960147 () Bool)

(assert (=> d!1284881 m!4960147))

(declare-fun m!4960149 () Bool)

(assert (=> d!1284881 m!4960149))

(declare-fun m!4960151 () Bool)

(assert (=> b!4350225 m!4960151))

(assert (=> b!4349820 d!1284881))

(declare-fun bs!628782 () Bool)

(declare-fun b!4350227 () Bool)

(assert (= bs!628782 (and b!4350227 b!4350143)))

(declare-fun lambda!139239 () Int)

(assert (=> bs!628782 (= (= (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))) (= lambda!139239 lambda!139213))))

(declare-fun bs!628783 () Bool)

(assert (= bs!628783 (and b!4350227 b!4350176)))

(assert (=> bs!628783 (= (= (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (= lambda!139239 lambda!139227))))

(declare-fun bs!628784 () Bool)

(assert (= bs!628784 (and b!4350227 b!4350141)))

(assert (=> bs!628784 (= (= (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))))) (= lambda!139239 lambda!139215))))

(declare-fun bs!628785 () Bool)

(assert (= bs!628785 (and b!4350227 b!4350144)))

(assert (=> bs!628785 (= (= (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (= lambda!139239 lambda!139216))))

(declare-fun bs!628786 () Bool)

(assert (= bs!628786 (and b!4350227 b!4350194)))

(assert (=> bs!628786 (= (= (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) (toList!2910 lt!1563608)) (= lambda!139239 lambda!139231))))

(assert (=> b!4350227 true))

(declare-fun bs!628787 () Bool)

(declare-fun b!4350228 () Bool)

(assert (= bs!628787 (and b!4350228 b!4350145)))

(declare-fun lambda!139240 () Int)

(assert (=> bs!628787 (= lambda!139240 lambda!139217)))

(declare-fun bs!628788 () Bool)

(assert (= bs!628788 (and b!4350228 b!4350177)))

(assert (=> bs!628788 (= lambda!139240 lambda!139228)))

(declare-fun bs!628789 () Bool)

(assert (= bs!628789 (and b!4350228 b!4350195)))

(assert (=> bs!628789 (= lambda!139240 lambda!139233)))

(declare-fun d!1284883 () Bool)

(declare-fun e!2707132 () Bool)

(assert (=> d!1284883 e!2707132))

(declare-fun res!1787045 () Bool)

(assert (=> d!1284883 (=> (not res!1787045) (not e!2707132))))

(declare-fun lt!1564062 () List!48988)

(assert (=> d!1284883 (= res!1787045 (noDuplicate!596 lt!1564062))))

(assert (=> d!1284883 (= lt!1564062 (getKeysList!108 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))))))

(assert (=> d!1284883 (= (keys!16484 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) lt!1564062)))

(declare-fun b!4350226 () Bool)

(declare-fun res!1787044 () Bool)

(assert (=> b!4350226 (=> (not res!1787044) (not e!2707132))))

(assert (=> b!4350226 (= res!1787044 (= (length!48 lt!1564062) (length!49 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))))))

(declare-fun res!1787046 () Bool)

(assert (=> b!4350227 (=> (not res!1787046) (not e!2707132))))

(assert (=> b!4350227 (= res!1787046 (forall!9073 lt!1564062 lambda!139239))))

(assert (=> b!4350228 (= e!2707132 (= (content!7680 lt!1564062) (content!7680 (map!10624 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) lambda!139240))))))

(assert (= (and d!1284883 res!1787045) b!4350226))

(assert (= (and b!4350226 res!1787044) b!4350227))

(assert (= (and b!4350227 res!1787046) b!4350228))

(declare-fun m!4960153 () Bool)

(assert (=> d!1284883 m!4960153))

(assert (=> d!1284883 m!4959561))

(declare-fun m!4960155 () Bool)

(assert (=> b!4350226 m!4960155))

(declare-fun m!4960157 () Bool)

(assert (=> b!4350226 m!4960157))

(declare-fun m!4960159 () Bool)

(assert (=> b!4350227 m!4960159))

(declare-fun m!4960161 () Bool)

(assert (=> b!4350228 m!4960161))

(declare-fun m!4960163 () Bool)

(assert (=> b!4350228 m!4960163))

(assert (=> b!4350228 m!4960163))

(declare-fun m!4960165 () Bool)

(assert (=> b!4350228 m!4960165))

(assert (=> b!4349820 d!1284883))

(declare-fun d!1284885 () Bool)

(declare-fun res!1787047 () Bool)

(declare-fun e!2707133 () Bool)

(assert (=> d!1284885 (=> res!1787047 e!2707133)))

(assert (=> d!1284885 (= res!1787047 (and ((_ is Cons!48861) lt!1563685) (= (_1!27405 (h!54394 lt!1563685)) key!3918)))))

(assert (=> d!1284885 (= (containsKey!630 lt!1563685 key!3918) e!2707133)))

(declare-fun b!4350230 () Bool)

(declare-fun e!2707134 () Bool)

(assert (=> b!4350230 (= e!2707133 e!2707134)))

(declare-fun res!1787048 () Bool)

(assert (=> b!4350230 (=> (not res!1787048) (not e!2707134))))

(assert (=> b!4350230 (= res!1787048 ((_ is Cons!48861) lt!1563685))))

(declare-fun b!4350231 () Bool)

(assert (=> b!4350231 (= e!2707134 (containsKey!630 (t!355905 lt!1563685) key!3918))))

(assert (= (and d!1284885 (not res!1787047)) b!4350230))

(assert (= (and b!4350230 res!1787048) b!4350231))

(declare-fun m!4960167 () Bool)

(assert (=> b!4350231 m!4960167))

(assert (=> d!1284593 d!1284885))

(declare-fun d!1284887 () Bool)

(declare-fun res!1787049 () Bool)

(declare-fun e!2707135 () Bool)

(assert (=> d!1284887 (=> res!1787049 e!2707135)))

(assert (=> d!1284887 (= res!1787049 (not ((_ is Cons!48861) lt!1563613)))))

(assert (=> d!1284887 (= (noDuplicateKeys!463 lt!1563613) e!2707135)))

(declare-fun b!4350232 () Bool)

(declare-fun e!2707136 () Bool)

(assert (=> b!4350232 (= e!2707135 e!2707136)))

(declare-fun res!1787050 () Bool)

(assert (=> b!4350232 (=> (not res!1787050) (not e!2707136))))

(assert (=> b!4350232 (= res!1787050 (not (containsKey!630 (t!355905 lt!1563613) (_1!27405 (h!54394 lt!1563613)))))))

(declare-fun b!4350233 () Bool)

(assert (=> b!4350233 (= e!2707136 (noDuplicateKeys!463 (t!355905 lt!1563613)))))

(assert (= (and d!1284887 (not res!1787049)) b!4350232))

(assert (= (and b!4350232 res!1787050) b!4350233))

(declare-fun m!4960169 () Bool)

(assert (=> b!4350232 m!4960169))

(declare-fun m!4960171 () Bool)

(assert (=> b!4350233 m!4960171))

(assert (=> d!1284593 d!1284887))

(assert (=> b!4349832 d!1284837))

(declare-fun d!1284889 () Bool)

(declare-fun res!1787051 () Bool)

(declare-fun e!2707137 () Bool)

(assert (=> d!1284889 (=> res!1787051 e!2707137)))

(assert (=> d!1284889 (= res!1787051 (not ((_ is Cons!48861) (_2!27406 (tuple2!48225 hash!377 newBucket!200)))))))

(assert (=> d!1284889 (= (noDuplicateKeys!463 (_2!27406 (tuple2!48225 hash!377 newBucket!200))) e!2707137)))

(declare-fun b!4350234 () Bool)

(declare-fun e!2707138 () Bool)

(assert (=> b!4350234 (= e!2707137 e!2707138)))

(declare-fun res!1787052 () Bool)

(assert (=> b!4350234 (=> (not res!1787052) (not e!2707138))))

(assert (=> b!4350234 (= res!1787052 (not (containsKey!630 (t!355905 (_2!27406 (tuple2!48225 hash!377 newBucket!200))) (_1!27405 (h!54394 (_2!27406 (tuple2!48225 hash!377 newBucket!200)))))))))

(declare-fun b!4350235 () Bool)

(assert (=> b!4350235 (= e!2707138 (noDuplicateKeys!463 (t!355905 (_2!27406 (tuple2!48225 hash!377 newBucket!200)))))))

(assert (= (and d!1284889 (not res!1787051)) b!4350234))

(assert (= (and b!4350234 res!1787052) b!4350235))

(declare-fun m!4960173 () Bool)

(assert (=> b!4350234 m!4960173))

(declare-fun m!4960175 () Bool)

(assert (=> b!4350235 m!4960175))

(assert (=> bs!628624 d!1284889))

(assert (=> b!4349654 d!1284583))

(declare-fun d!1284891 () Bool)

(declare-fun res!1787057 () Bool)

(declare-fun e!2707143 () Bool)

(assert (=> d!1284891 (=> res!1787057 e!2707143)))

(assert (=> d!1284891 (= res!1787057 ((_ is Nil!48861) newBucket!200))))

(assert (=> d!1284891 (= (forall!9070 newBucket!200 lambda!139103) e!2707143)))

(declare-fun b!4350240 () Bool)

(declare-fun e!2707144 () Bool)

(assert (=> b!4350240 (= e!2707143 e!2707144)))

(declare-fun res!1787058 () Bool)

(assert (=> b!4350240 (=> (not res!1787058) (not e!2707144))))

(declare-fun dynLambda!20611 (Int tuple2!48222) Bool)

(assert (=> b!4350240 (= res!1787058 (dynLambda!20611 lambda!139103 (h!54394 newBucket!200)))))

(declare-fun b!4350241 () Bool)

(assert (=> b!4350241 (= e!2707144 (forall!9070 (t!355905 newBucket!200) lambda!139103))))

(assert (= (and d!1284891 (not res!1787057)) b!4350240))

(assert (= (and b!4350240 res!1787058) b!4350241))

(declare-fun b_lambda!130485 () Bool)

(assert (=> (not b_lambda!130485) (not b!4350240)))

(declare-fun m!4960179 () Bool)

(assert (=> b!4350240 m!4960179))

(declare-fun m!4960181 () Bool)

(assert (=> b!4350241 m!4960181))

(assert (=> d!1284599 d!1284891))

(declare-fun d!1284899 () Bool)

(declare-fun res!1787059 () Bool)

(declare-fun e!2707145 () Bool)

(assert (=> d!1284899 (=> res!1787059 e!2707145)))

(assert (=> d!1284899 (= res!1787059 (not ((_ is Cons!48861) (_2!27406 lt!1563612))))))

(assert (=> d!1284899 (= (noDuplicateKeys!463 (_2!27406 lt!1563612)) e!2707145)))

(declare-fun b!4350242 () Bool)

(declare-fun e!2707146 () Bool)

(assert (=> b!4350242 (= e!2707145 e!2707146)))

(declare-fun res!1787060 () Bool)

(assert (=> b!4350242 (=> (not res!1787060) (not e!2707146))))

(assert (=> b!4350242 (= res!1787060 (not (containsKey!630 (t!355905 (_2!27406 lt!1563612)) (_1!27405 (h!54394 (_2!27406 lt!1563612))))))))

(declare-fun b!4350243 () Bool)

(assert (=> b!4350243 (= e!2707146 (noDuplicateKeys!463 (t!355905 (_2!27406 lt!1563612))))))

(assert (= (and d!1284899 (not res!1787059)) b!4350242))

(assert (= (and b!4350242 res!1787060) b!4350243))

(declare-fun m!4960183 () Bool)

(assert (=> b!4350242 m!4960183))

(declare-fun m!4960185 () Bool)

(assert (=> b!4350243 m!4960185))

(assert (=> bs!628627 d!1284899))

(declare-fun d!1284901 () Bool)

(assert (=> d!1284901 (= (get!15864 (getValueByKey!418 (toList!2909 lm!1707) (_1!27406 (h!54395 (toList!2909 lm!1707))))) (v!43249 (getValueByKey!418 (toList!2909 lm!1707) (_1!27406 (h!54395 (toList!2909 lm!1707))))))))

(assert (=> d!1284625 d!1284901))

(declare-fun b!4350248 () Bool)

(declare-fun e!2707151 () Option!10432)

(assert (=> b!4350248 (= e!2707151 (Some!10431 (_2!27406 (h!54395 (toList!2909 lm!1707)))))))

(declare-fun b!4350250 () Bool)

(declare-fun e!2707152 () Option!10432)

(assert (=> b!4350250 (= e!2707152 (getValueByKey!418 (t!355906 (toList!2909 lm!1707)) (_1!27406 (h!54395 (toList!2909 lm!1707)))))))

(declare-fun b!4350249 () Bool)

(assert (=> b!4350249 (= e!2707151 e!2707152)))

(declare-fun c!739540 () Bool)

(assert (=> b!4350249 (= c!739540 (and ((_ is Cons!48862) (toList!2909 lm!1707)) (not (= (_1!27406 (h!54395 (toList!2909 lm!1707))) (_1!27406 (h!54395 (toList!2909 lm!1707)))))))))

(declare-fun b!4350251 () Bool)

(assert (=> b!4350251 (= e!2707152 None!10431)))

(declare-fun d!1284903 () Bool)

(declare-fun c!739539 () Bool)

(assert (=> d!1284903 (= c!739539 (and ((_ is Cons!48862) (toList!2909 lm!1707)) (= (_1!27406 (h!54395 (toList!2909 lm!1707))) (_1!27406 (h!54395 (toList!2909 lm!1707))))))))

(assert (=> d!1284903 (= (getValueByKey!418 (toList!2909 lm!1707) (_1!27406 (h!54395 (toList!2909 lm!1707)))) e!2707151)))

(assert (= (and d!1284903 c!739539) b!4350248))

(assert (= (and d!1284903 (not c!739539)) b!4350249))

(assert (= (and b!4350249 c!739540) b!4350250))

(assert (= (and b!4350249 (not c!739540)) b!4350251))

(declare-fun m!4960187 () Bool)

(assert (=> b!4350250 m!4960187))

(assert (=> d!1284625 d!1284903))

(declare-fun b!4350255 () Bool)

(declare-fun e!2707154 () List!48985)

(assert (=> b!4350255 (= e!2707154 Nil!48861)))

(declare-fun b!4350254 () Bool)

(assert (=> b!4350254 (= e!2707154 (Cons!48861 (h!54394 (t!355905 lt!1563613)) (removePairForKey!433 (t!355905 (t!355905 lt!1563613)) key!3918)))))

(declare-fun b!4350252 () Bool)

(declare-fun e!2707153 () List!48985)

(assert (=> b!4350252 (= e!2707153 (t!355905 (t!355905 lt!1563613)))))

(declare-fun b!4350253 () Bool)

(assert (=> b!4350253 (= e!2707153 e!2707154)))

(declare-fun c!739541 () Bool)

(assert (=> b!4350253 (= c!739541 ((_ is Cons!48861) (t!355905 lt!1563613)))))

(declare-fun d!1284905 () Bool)

(declare-fun lt!1564063 () List!48985)

(assert (=> d!1284905 (not (containsKey!630 lt!1564063 key!3918))))

(assert (=> d!1284905 (= lt!1564063 e!2707153)))

(declare-fun c!739542 () Bool)

(assert (=> d!1284905 (= c!739542 (and ((_ is Cons!48861) (t!355905 lt!1563613)) (= (_1!27405 (h!54394 (t!355905 lt!1563613))) key!3918)))))

(assert (=> d!1284905 (noDuplicateKeys!463 (t!355905 lt!1563613))))

(assert (=> d!1284905 (= (removePairForKey!433 (t!355905 lt!1563613) key!3918) lt!1564063)))

(assert (= (and d!1284905 c!739542) b!4350252))

(assert (= (and d!1284905 (not c!739542)) b!4350253))

(assert (= (and b!4350253 c!739541) b!4350254))

(assert (= (and b!4350253 (not c!739541)) b!4350255))

(declare-fun m!4960189 () Bool)

(assert (=> b!4350254 m!4960189))

(declare-fun m!4960191 () Bool)

(assert (=> d!1284905 m!4960191))

(assert (=> d!1284905 m!4960171))

(assert (=> b!4349665 d!1284905))

(declare-fun bs!628792 () Bool)

(declare-fun b!4350262 () Bool)

(assert (= bs!628792 (and b!4350262 b!4350143)))

(declare-fun lambda!139241 () Int)

(assert (=> bs!628792 (= (= (t!355905 (toList!2910 lt!1563608)) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))) (= lambda!139241 lambda!139213))))

(declare-fun bs!628793 () Bool)

(assert (= bs!628793 (and b!4350262 b!4350176)))

(assert (=> bs!628793 (= (= (t!355905 (toList!2910 lt!1563608)) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (= lambda!139241 lambda!139227))))

(declare-fun bs!628794 () Bool)

(assert (= bs!628794 (and b!4350262 b!4350144)))

(assert (=> bs!628794 (= (= (t!355905 (toList!2910 lt!1563608)) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (= lambda!139241 lambda!139216))))

(declare-fun bs!628795 () Bool)

(assert (= bs!628795 (and b!4350262 b!4350194)))

(assert (=> bs!628795 (= (= (t!355905 (toList!2910 lt!1563608)) (toList!2910 lt!1563608)) (= lambda!139241 lambda!139231))))

(declare-fun bs!628796 () Bool)

(assert (= bs!628796 (and b!4350262 b!4350227)))

(assert (=> bs!628796 (= (= (t!355905 (toList!2910 lt!1563608)) (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (= lambda!139241 lambda!139239))))

(declare-fun bs!628797 () Bool)

(assert (= bs!628797 (and b!4350262 b!4350141)))

(assert (=> bs!628797 (= (= (t!355905 (toList!2910 lt!1563608)) (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))))) (= lambda!139241 lambda!139215))))

(assert (=> b!4350262 true))

(declare-fun bs!628799 () Bool)

(declare-fun b!4350260 () Bool)

(assert (= bs!628799 (and b!4350260 b!4350143)))

(declare-fun lambda!139243 () Int)

(assert (=> bs!628799 (= (= (Cons!48861 (h!54394 (toList!2910 lt!1563608)) (t!355905 (toList!2910 lt!1563608))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))) (= lambda!139243 lambda!139213))))

(declare-fun bs!628801 () Bool)

(assert (= bs!628801 (and b!4350260 b!4350262)))

(assert (=> bs!628801 (= (= (Cons!48861 (h!54394 (toList!2910 lt!1563608)) (t!355905 (toList!2910 lt!1563608))) (t!355905 (toList!2910 lt!1563608))) (= lambda!139243 lambda!139241))))

(declare-fun bs!628803 () Bool)

(assert (= bs!628803 (and b!4350260 b!4350176)))

(assert (=> bs!628803 (= (= (Cons!48861 (h!54394 (toList!2910 lt!1563608)) (t!355905 (toList!2910 lt!1563608))) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (= lambda!139243 lambda!139227))))

(declare-fun bs!628805 () Bool)

(assert (= bs!628805 (and b!4350260 b!4350144)))

(assert (=> bs!628805 (= (= (Cons!48861 (h!54394 (toList!2910 lt!1563608)) (t!355905 (toList!2910 lt!1563608))) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (= lambda!139243 lambda!139216))))

(declare-fun bs!628807 () Bool)

(assert (= bs!628807 (and b!4350260 b!4350194)))

(assert (=> bs!628807 (= (= (Cons!48861 (h!54394 (toList!2910 lt!1563608)) (t!355905 (toList!2910 lt!1563608))) (toList!2910 lt!1563608)) (= lambda!139243 lambda!139231))))

(declare-fun bs!628809 () Bool)

(assert (= bs!628809 (and b!4350260 b!4350227)))

(assert (=> bs!628809 (= (= (Cons!48861 (h!54394 (toList!2910 lt!1563608)) (t!355905 (toList!2910 lt!1563608))) (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (= lambda!139243 lambda!139239))))

(declare-fun bs!628810 () Bool)

(assert (= bs!628810 (and b!4350260 b!4350141)))

(assert (=> bs!628810 (= (= (Cons!48861 (h!54394 (toList!2910 lt!1563608)) (t!355905 (toList!2910 lt!1563608))) (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))))) (= lambda!139243 lambda!139215))))

(assert (=> b!4350260 true))

(declare-fun bs!628812 () Bool)

(declare-fun b!4350263 () Bool)

(assert (= bs!628812 (and b!4350263 b!4350143)))

(declare-fun lambda!139244 () Int)

(assert (=> bs!628812 (= (= (toList!2910 lt!1563608) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))) (= lambda!139244 lambda!139213))))

(declare-fun bs!628813 () Bool)

(assert (= bs!628813 (and b!4350263 b!4350262)))

(assert (=> bs!628813 (= (= (toList!2910 lt!1563608) (t!355905 (toList!2910 lt!1563608))) (= lambda!139244 lambda!139241))))

(declare-fun bs!628814 () Bool)

(assert (= bs!628814 (and b!4350263 b!4350260)))

(assert (=> bs!628814 (= (= (toList!2910 lt!1563608) (Cons!48861 (h!54394 (toList!2910 lt!1563608)) (t!355905 (toList!2910 lt!1563608)))) (= lambda!139244 lambda!139243))))

(declare-fun bs!628815 () Bool)

(assert (= bs!628815 (and b!4350263 b!4350176)))

(assert (=> bs!628815 (= (= (toList!2910 lt!1563608) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (= lambda!139244 lambda!139227))))

(declare-fun bs!628816 () Bool)

(assert (= bs!628816 (and b!4350263 b!4350144)))

(assert (=> bs!628816 (= (= (toList!2910 lt!1563608) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (= lambda!139244 lambda!139216))))

(declare-fun bs!628818 () Bool)

(assert (= bs!628818 (and b!4350263 b!4350194)))

(assert (=> bs!628818 (= lambda!139244 lambda!139231)))

(declare-fun bs!628819 () Bool)

(assert (= bs!628819 (and b!4350263 b!4350227)))

(assert (=> bs!628819 (= (= (toList!2910 lt!1563608) (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (= lambda!139244 lambda!139239))))

(declare-fun bs!628821 () Bool)

(assert (= bs!628821 (and b!4350263 b!4350141)))

(assert (=> bs!628821 (= (= (toList!2910 lt!1563608) (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))))) (= lambda!139244 lambda!139215))))

(assert (=> b!4350263 true))

(declare-fun bs!628825 () Bool)

(declare-fun b!4350264 () Bool)

(assert (= bs!628825 (and b!4350264 b!4350145)))

(declare-fun lambda!139246 () Int)

(assert (=> bs!628825 (= lambda!139246 lambda!139217)))

(declare-fun bs!628826 () Bool)

(assert (= bs!628826 (and b!4350264 b!4350177)))

(assert (=> bs!628826 (= lambda!139246 lambda!139228)))

(declare-fun bs!628827 () Bool)

(assert (= bs!628827 (and b!4350264 b!4350195)))

(assert (=> bs!628827 (= lambda!139246 lambda!139233)))

(declare-fun bs!628829 () Bool)

(assert (= bs!628829 (and b!4350264 b!4350228)))

(assert (=> bs!628829 (= lambda!139246 lambda!139240)))

(declare-fun b!4350256 () Bool)

(declare-fun e!2707155 () List!48988)

(assert (=> b!4350256 (= e!2707155 Nil!48864)))

(declare-fun b!4350257 () Bool)

(declare-fun e!2707156 () Unit!70923)

(declare-fun Unit!70981 () Unit!70923)

(assert (=> b!4350257 (= e!2707156 Unit!70981)))

(declare-fun b!4350258 () Bool)

(declare-fun e!2707158 () Unit!70923)

(declare-fun Unit!70982 () Unit!70923)

(assert (=> b!4350258 (= e!2707158 Unit!70982)))

(declare-fun d!1284907 () Bool)

(declare-fun e!2707157 () Bool)

(assert (=> d!1284907 e!2707157))

(declare-fun res!1787066 () Bool)

(assert (=> d!1284907 (=> (not res!1787066) (not e!2707157))))

(declare-fun lt!1564070 () List!48988)

(assert (=> d!1284907 (= res!1787066 (noDuplicate!596 lt!1564070))))

(assert (=> d!1284907 (= lt!1564070 e!2707155)))

(declare-fun c!739543 () Bool)

(assert (=> d!1284907 (= c!739543 ((_ is Cons!48861) (toList!2910 lt!1563608)))))

(assert (=> d!1284907 (invariantList!660 (toList!2910 lt!1563608))))

(assert (=> d!1284907 (= (getKeysList!108 (toList!2910 lt!1563608)) lt!1564070)))

(declare-fun b!4350259 () Bool)

(assert (=> b!4350259 false))

(declare-fun Unit!70983 () Unit!70923)

(assert (=> b!4350259 (= e!2707158 Unit!70983)))

(assert (=> b!4350260 (= e!2707155 (Cons!48864 (_1!27405 (h!54394 (toList!2910 lt!1563608))) (getKeysList!108 (t!355905 (toList!2910 lt!1563608)))))))

(declare-fun c!739545 () Bool)

(assert (=> b!4350260 (= c!739545 (containsKey!634 (t!355905 (toList!2910 lt!1563608)) (_1!27405 (h!54394 (toList!2910 lt!1563608)))))))

(declare-fun lt!1564065 () Unit!70923)

(assert (=> b!4350260 (= lt!1564065 e!2707158)))

(declare-fun c!739544 () Bool)

(assert (=> b!4350260 (= c!739544 (contains!11028 (getKeysList!108 (t!355905 (toList!2910 lt!1563608))) (_1!27405 (h!54394 (toList!2910 lt!1563608)))))))

(declare-fun lt!1564067 () Unit!70923)

(assert (=> b!4350260 (= lt!1564067 e!2707156)))

(declare-fun lt!1564066 () List!48988)

(assert (=> b!4350260 (= lt!1564066 (getKeysList!108 (t!355905 (toList!2910 lt!1563608))))))

(declare-fun lt!1564069 () Unit!70923)

(assert (=> b!4350260 (= lt!1564069 (lemmaForallContainsAddHeadPreserves!18 (t!355905 (toList!2910 lt!1563608)) lt!1564066 (h!54394 (toList!2910 lt!1563608))))))

(assert (=> b!4350260 (forall!9073 lt!1564066 lambda!139243)))

(declare-fun lt!1564068 () Unit!70923)

(assert (=> b!4350260 (= lt!1564068 lt!1564069)))

(declare-fun b!4350261 () Bool)

(declare-fun res!1787065 () Bool)

(assert (=> b!4350261 (=> (not res!1787065) (not e!2707157))))

(assert (=> b!4350261 (= res!1787065 (= (length!48 lt!1564070) (length!49 (toList!2910 lt!1563608))))))

(assert (=> b!4350262 false))

(declare-fun lt!1564064 () Unit!70923)

(assert (=> b!4350262 (= lt!1564064 (forallContained!1720 (getKeysList!108 (t!355905 (toList!2910 lt!1563608))) lambda!139241 (_1!27405 (h!54394 (toList!2910 lt!1563608)))))))

(declare-fun Unit!70984 () Unit!70923)

(assert (=> b!4350262 (= e!2707156 Unit!70984)))

(declare-fun res!1787067 () Bool)

(assert (=> b!4350263 (=> (not res!1787067) (not e!2707157))))

(assert (=> b!4350263 (= res!1787067 (forall!9073 lt!1564070 lambda!139244))))

(assert (=> b!4350264 (= e!2707157 (= (content!7680 lt!1564070) (content!7680 (map!10624 (toList!2910 lt!1563608) lambda!139246))))))

(assert (= (and d!1284907 c!739543) b!4350260))

(assert (= (and d!1284907 (not c!739543)) b!4350256))

(assert (= (and b!4350260 c!739545) b!4350259))

(assert (= (and b!4350260 (not c!739545)) b!4350258))

(assert (= (and b!4350260 c!739544) b!4350262))

(assert (= (and b!4350260 (not c!739544)) b!4350257))

(assert (= (and d!1284907 res!1787066) b!4350261))

(assert (= (and b!4350261 res!1787065) b!4350263))

(assert (= (and b!4350263 res!1787067) b!4350264))

(declare-fun m!4960195 () Bool)

(assert (=> b!4350261 m!4960195))

(assert (=> b!4350261 m!4960059))

(declare-fun m!4960197 () Bool)

(assert (=> b!4350263 m!4960197))

(declare-fun m!4960199 () Bool)

(assert (=> b!4350260 m!4960199))

(declare-fun m!4960201 () Bool)

(assert (=> b!4350260 m!4960201))

(declare-fun m!4960203 () Bool)

(assert (=> b!4350260 m!4960203))

(assert (=> b!4350260 m!4960201))

(declare-fun m!4960205 () Bool)

(assert (=> b!4350260 m!4960205))

(declare-fun m!4960207 () Bool)

(assert (=> b!4350260 m!4960207))

(declare-fun m!4960209 () Bool)

(assert (=> b!4350264 m!4960209))

(declare-fun m!4960211 () Bool)

(assert (=> b!4350264 m!4960211))

(assert (=> b!4350264 m!4960211))

(declare-fun m!4960213 () Bool)

(assert (=> b!4350264 m!4960213))

(assert (=> b!4350262 m!4960201))

(assert (=> b!4350262 m!4960201))

(declare-fun m!4960215 () Bool)

(assert (=> b!4350262 m!4960215))

(declare-fun m!4960217 () Bool)

(assert (=> d!1284907 m!4960217))

(assert (=> d!1284907 m!4959867))

(assert (=> b!4349758 d!1284907))

(declare-fun d!1284911 () Bool)

(declare-fun choose!26757 (Hashable!4855 K!10225) (_ BitVec 64))

(assert (=> d!1284911 (= (hash!1470 hashF!1247 key!3918) (choose!26757 hashF!1247 key!3918))))

(declare-fun bs!628832 () Bool)

(assert (= bs!628832 d!1284911))

(declare-fun m!4960219 () Bool)

(assert (=> bs!628832 m!4960219))

(assert (=> d!1284665 d!1284911))

(declare-fun d!1284913 () Bool)

(declare-fun res!1787073 () Bool)

(declare-fun e!2707164 () Bool)

(assert (=> d!1284913 (=> res!1787073 e!2707164)))

(assert (=> d!1284913 (= res!1787073 (and ((_ is Cons!48861) (toList!2910 lt!1563608)) (= (_1!27405 (h!54394 (toList!2910 lt!1563608))) key!3918)))))

(assert (=> d!1284913 (= (containsKey!634 (toList!2910 lt!1563608) key!3918) e!2707164)))

(declare-fun b!4350272 () Bool)

(declare-fun e!2707165 () Bool)

(assert (=> b!4350272 (= e!2707164 e!2707165)))

(declare-fun res!1787074 () Bool)

(assert (=> b!4350272 (=> (not res!1787074) (not e!2707165))))

(assert (=> b!4350272 (= res!1787074 ((_ is Cons!48861) (toList!2910 lt!1563608)))))

(declare-fun b!4350273 () Bool)

(assert (=> b!4350273 (= e!2707165 (containsKey!634 (t!355905 (toList!2910 lt!1563608)) key!3918))))

(assert (= (and d!1284913 (not res!1787073)) b!4350272))

(assert (= (and b!4350272 res!1787074) b!4350273))

(declare-fun m!4960221 () Bool)

(assert (=> b!4350273 m!4960221))

(assert (=> d!1284607 d!1284913))

(declare-fun d!1284915 () Bool)

(assert (=> d!1284915 (isDefined!7729 (getValueByKey!419 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) key!3918))))

(declare-fun lt!1564092 () Unit!70923)

(assert (=> d!1284915 (= lt!1564092 (choose!26753 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) key!3918))))

(assert (=> d!1284915 (invariantList!660 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))))

(assert (=> d!1284915 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!332 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) key!3918) lt!1564092)))

(declare-fun bs!628835 () Bool)

(assert (= bs!628835 d!1284915))

(assert (=> bs!628835 m!4959587))

(assert (=> bs!628835 m!4959587))

(assert (=> bs!628835 m!4959589))

(declare-fun m!4960223 () Bool)

(assert (=> bs!628835 m!4960223))

(assert (=> bs!628835 m!4959945))

(assert (=> b!4349840 d!1284915))

(declare-fun d!1284917 () Bool)

(assert (=> d!1284917 (= (isDefined!7729 (getValueByKey!419 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) key!3918)) (not (isEmpty!28174 (getValueByKey!419 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) key!3918))))))

(declare-fun bs!628838 () Bool)

(assert (= bs!628838 d!1284917))

(assert (=> bs!628838 m!4959587))

(declare-fun m!4960225 () Bool)

(assert (=> bs!628838 m!4960225))

(assert (=> b!4349840 d!1284917))

(declare-fun b!4350275 () Bool)

(declare-fun e!2707166 () Option!10433)

(declare-fun e!2707167 () Option!10433)

(assert (=> b!4350275 (= e!2707166 e!2707167)))

(declare-fun c!739548 () Bool)

(assert (=> b!4350275 (= c!739548 (and ((_ is Cons!48861) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (not (= (_1!27405 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))) key!3918))))))

(declare-fun b!4350274 () Bool)

(assert (=> b!4350274 (= e!2707166 (Some!10432 (_2!27405 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))))))))

(declare-fun d!1284919 () Bool)

(declare-fun c!739547 () Bool)

(assert (=> d!1284919 (= c!739547 (and ((_ is Cons!48861) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (= (_1!27405 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))) key!3918)))))

(assert (=> d!1284919 (= (getValueByKey!419 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) key!3918) e!2707166)))

(declare-fun b!4350277 () Bool)

(assert (=> b!4350277 (= e!2707167 None!10432)))

(declare-fun b!4350276 () Bool)

(assert (=> b!4350276 (= e!2707167 (getValueByKey!419 (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) key!3918))))

(assert (= (and d!1284919 c!739547) b!4350274))

(assert (= (and d!1284919 (not c!739547)) b!4350275))

(assert (= (and b!4350275 c!739548) b!4350276))

(assert (= (and b!4350275 (not c!739548)) b!4350277))

(declare-fun m!4960227 () Bool)

(assert (=> b!4350276 m!4960227))

(assert (=> b!4349840 d!1284919))

(declare-fun d!1284921 () Bool)

(assert (=> d!1284921 (contains!11028 (getKeysList!108 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) key!3918)))

(declare-fun lt!1564093 () Unit!70923)

(assert (=> d!1284921 (= lt!1564093 (choose!26754 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) key!3918))))

(assert (=> d!1284921 (invariantList!660 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))))

(assert (=> d!1284921 (= (lemmaInListThenGetKeysListContains!105 (toList!2910 (extractMap!522 (toList!2909 lm!1707))) key!3918) lt!1564093)))

(declare-fun bs!628844 () Bool)

(assert (= bs!628844 d!1284921))

(assert (=> bs!628844 m!4959593))

(assert (=> bs!628844 m!4959593))

(declare-fun m!4960229 () Bool)

(assert (=> bs!628844 m!4960229))

(declare-fun m!4960231 () Bool)

(assert (=> bs!628844 m!4960231))

(assert (=> bs!628844 m!4959945))

(assert (=> b!4349840 d!1284921))

(declare-fun d!1284923 () Bool)

(declare-fun lt!1564094 () Bool)

(assert (=> d!1284923 (= lt!1564094 (select (content!7678 (toList!2909 lt!1563637)) (tuple2!48225 hash!377 newBucket!200)))))

(declare-fun e!2707169 () Bool)

(assert (=> d!1284923 (= lt!1564094 e!2707169)))

(declare-fun res!1787075 () Bool)

(assert (=> d!1284923 (=> (not res!1787075) (not e!2707169))))

(assert (=> d!1284923 (= res!1787075 ((_ is Cons!48862) (toList!2909 lt!1563637)))))

(assert (=> d!1284923 (= (contains!11025 (toList!2909 lt!1563637) (tuple2!48225 hash!377 newBucket!200)) lt!1564094)))

(declare-fun b!4350278 () Bool)

(declare-fun e!2707168 () Bool)

(assert (=> b!4350278 (= e!2707169 e!2707168)))

(declare-fun res!1787076 () Bool)

(assert (=> b!4350278 (=> res!1787076 e!2707168)))

(assert (=> b!4350278 (= res!1787076 (= (h!54395 (toList!2909 lt!1563637)) (tuple2!48225 hash!377 newBucket!200)))))

(declare-fun b!4350279 () Bool)

(assert (=> b!4350279 (= e!2707168 (contains!11025 (t!355906 (toList!2909 lt!1563637)) (tuple2!48225 hash!377 newBucket!200)))))

(assert (= (and d!1284923 res!1787075) b!4350278))

(assert (= (and b!4350278 (not res!1787076)) b!4350279))

(declare-fun m!4960233 () Bool)

(assert (=> d!1284923 m!4960233))

(declare-fun m!4960235 () Bool)

(assert (=> d!1284923 m!4960235))

(declare-fun m!4960237 () Bool)

(assert (=> b!4350279 m!4960237))

(assert (=> b!4349607 d!1284923))

(declare-fun d!1284925 () Bool)

(declare-fun c!739552 () Bool)

(assert (=> d!1284925 (= c!739552 ((_ is Nil!48862) (toList!2909 lm!1707)))))

(declare-fun e!2707173 () (InoxSet tuple2!48224))

(assert (=> d!1284925 (= (content!7678 (toList!2909 lm!1707)) e!2707173)))

(declare-fun b!4350286 () Bool)

(assert (=> b!4350286 (= e!2707173 ((as const (Array tuple2!48224 Bool)) false))))

(declare-fun b!4350287 () Bool)

(assert (=> b!4350287 (= e!2707173 ((_ map or) (store ((as const (Array tuple2!48224 Bool)) false) (h!54395 (toList!2909 lm!1707)) true) (content!7678 (t!355906 (toList!2909 lm!1707)))))))

(assert (= (and d!1284925 c!739552) b!4350286))

(assert (= (and d!1284925 (not c!739552)) b!4350287))

(declare-fun m!4960275 () Bool)

(assert (=> b!4350287 m!4960275))

(declare-fun m!4960277 () Bool)

(assert (=> b!4350287 m!4960277))

(assert (=> d!1284583 d!1284925))

(assert (=> b!4349756 d!1284851))

(assert (=> b!4349756 d!1284853))

(declare-fun bs!628852 () Bool)

(declare-fun b!4350294 () Bool)

(assert (= bs!628852 (and b!4350294 b!4350143)))

(declare-fun lambda!139250 () Int)

(assert (=> bs!628852 (= (= (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))) (= lambda!139250 lambda!139213))))

(declare-fun bs!628853 () Bool)

(assert (= bs!628853 (and b!4350294 b!4350262)))

(assert (=> bs!628853 (= (= (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (t!355905 (toList!2910 lt!1563608))) (= lambda!139250 lambda!139241))))

(declare-fun bs!628854 () Bool)

(assert (= bs!628854 (and b!4350294 b!4350260)))

(assert (=> bs!628854 (= (= (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (Cons!48861 (h!54394 (toList!2910 lt!1563608)) (t!355905 (toList!2910 lt!1563608)))) (= lambda!139250 lambda!139243))))

(declare-fun bs!628855 () Bool)

(assert (= bs!628855 (and b!4350294 b!4350263)))

(assert (=> bs!628855 (= (= (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (toList!2910 lt!1563608)) (= lambda!139250 lambda!139244))))

(declare-fun bs!628856 () Bool)

(assert (= bs!628856 (and b!4350294 b!4350176)))

(assert (=> bs!628856 (= (= (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (= lambda!139250 lambda!139227))))

(declare-fun bs!628857 () Bool)

(assert (= bs!628857 (and b!4350294 b!4350144)))

(assert (=> bs!628857 (= (= (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (= lambda!139250 lambda!139216))))

(declare-fun bs!628858 () Bool)

(assert (= bs!628858 (and b!4350294 b!4350194)))

(assert (=> bs!628858 (= (= (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (toList!2910 lt!1563608)) (= lambda!139250 lambda!139231))))

(declare-fun bs!628859 () Bool)

(assert (= bs!628859 (and b!4350294 b!4350227)))

(assert (=> bs!628859 (= (= (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (= lambda!139250 lambda!139239))))

(declare-fun bs!628860 () Bool)

(assert (= bs!628860 (and b!4350294 b!4350141)))

(assert (=> bs!628860 (= (= (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))))) (= lambda!139250 lambda!139215))))

(assert (=> b!4350294 true))

(declare-fun bs!628861 () Bool)

(declare-fun b!4350292 () Bool)

(assert (= bs!628861 (and b!4350292 b!4350143)))

(declare-fun lambda!139251 () Int)

(assert (=> bs!628861 (= (= (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))) (= lambda!139251 lambda!139213))))

(declare-fun bs!628862 () Bool)

(assert (= bs!628862 (and b!4350292 b!4350262)))

(assert (=> bs!628862 (= (= (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))) (t!355905 (toList!2910 lt!1563608))) (= lambda!139251 lambda!139241))))

(declare-fun bs!628863 () Bool)

(assert (= bs!628863 (and b!4350292 b!4350294)))

(assert (=> bs!628863 (= (= (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))) (= lambda!139251 lambda!139250))))

(declare-fun bs!628864 () Bool)

(assert (= bs!628864 (and b!4350292 b!4350260)))

(assert (=> bs!628864 (= (= (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))) (Cons!48861 (h!54394 (toList!2910 lt!1563608)) (t!355905 (toList!2910 lt!1563608)))) (= lambda!139251 lambda!139243))))

(declare-fun bs!628865 () Bool)

(assert (= bs!628865 (and b!4350292 b!4350263)))

(assert (=> bs!628865 (= (= (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))) (toList!2910 lt!1563608)) (= lambda!139251 lambda!139244))))

(declare-fun bs!628866 () Bool)

(assert (= bs!628866 (and b!4350292 b!4350176)))

(assert (=> bs!628866 (= (= (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (= lambda!139251 lambda!139227))))

(declare-fun bs!628867 () Bool)

(assert (= bs!628867 (and b!4350292 b!4350144)))

(assert (=> bs!628867 (= (= (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (= lambda!139251 lambda!139216))))

(declare-fun bs!628868 () Bool)

(assert (= bs!628868 (and b!4350292 b!4350194)))

(assert (=> bs!628868 (= (= (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))) (toList!2910 lt!1563608)) (= lambda!139251 lambda!139231))))

(declare-fun bs!628869 () Bool)

(assert (= bs!628869 (and b!4350292 b!4350227)))

(assert (=> bs!628869 (= (= (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))) (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (= lambda!139251 lambda!139239))))

(declare-fun bs!628870 () Bool)

(assert (= bs!628870 (and b!4350292 b!4350141)))

(assert (=> bs!628870 (= (= (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))) (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))))) (= lambda!139251 lambda!139215))))

(assert (=> b!4350292 true))

(declare-fun bs!628871 () Bool)

(declare-fun b!4350295 () Bool)

(assert (= bs!628871 (and b!4350295 b!4350143)))

(declare-fun lambda!139252 () Int)

(assert (=> bs!628871 (= (= (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707))))) (= lambda!139252 lambda!139213))))

(declare-fun bs!628872 () Bool)

(assert (= bs!628872 (and b!4350295 b!4350262)))

(assert (=> bs!628872 (= (= (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) (t!355905 (toList!2910 lt!1563608))) (= lambda!139252 lambda!139241))))

(declare-fun bs!628873 () Bool)

(assert (= bs!628873 (and b!4350295 b!4350294)))

(assert (=> bs!628873 (= (= (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))) (= lambda!139252 lambda!139250))))

(declare-fun bs!628874 () Bool)

(assert (= bs!628874 (and b!4350295 b!4350260)))

(assert (=> bs!628874 (= (= (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) (Cons!48861 (h!54394 (toList!2910 lt!1563608)) (t!355905 (toList!2910 lt!1563608)))) (= lambda!139252 lambda!139243))))

(declare-fun bs!628875 () Bool)

(assert (= bs!628875 (and b!4350295 b!4350176)))

(assert (=> bs!628875 (= (= (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (= lambda!139252 lambda!139227))))

(declare-fun bs!628876 () Bool)

(assert (= bs!628876 (and b!4350295 b!4350144)))

(assert (=> bs!628876 (= (= (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (= lambda!139252 lambda!139216))))

(declare-fun bs!628877 () Bool)

(assert (= bs!628877 (and b!4350295 b!4350194)))

(assert (=> bs!628877 (= (= (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) (toList!2910 lt!1563608)) (= lambda!139252 lambda!139231))))

(declare-fun bs!628878 () Bool)

(assert (= bs!628878 (and b!4350295 b!4350292)))

(assert (=> bs!628878 (= (= (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))))) (= lambda!139252 lambda!139251))))

(declare-fun bs!628879 () Bool)

(assert (= bs!628879 (and b!4350295 b!4350263)))

(assert (=> bs!628879 (= (= (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) (toList!2910 lt!1563608)) (= lambda!139252 lambda!139244))))

(declare-fun bs!628880 () Bool)

(assert (= bs!628880 (and b!4350295 b!4350227)))

(assert (=> bs!628880 (= lambda!139252 lambda!139239)))

(declare-fun bs!628881 () Bool)

(assert (= bs!628881 (and b!4350295 b!4350141)))

(assert (=> bs!628881 (= (= (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) (Cons!48861 (h!54394 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))) (t!355905 (toList!2910 (extractMap!522 (toList!2909 lm!1707)))))) (= lambda!139252 lambda!139215))))

(assert (=> b!4350295 true))

(declare-fun bs!628882 () Bool)

(declare-fun b!4350296 () Bool)

(assert (= bs!628882 (and b!4350296 b!4350177)))

(declare-fun lambda!139253 () Int)

(assert (=> bs!628882 (= lambda!139253 lambda!139228)))

(declare-fun bs!628883 () Bool)

(assert (= bs!628883 (and b!4350296 b!4350145)))

(assert (=> bs!628883 (= lambda!139253 lambda!139217)))

(declare-fun bs!628884 () Bool)

(assert (= bs!628884 (and b!4350296 b!4350264)))

(assert (=> bs!628884 (= lambda!139253 lambda!139246)))

(declare-fun bs!628885 () Bool)

(assert (= bs!628885 (and b!4350296 b!4350195)))

(assert (=> bs!628885 (= lambda!139253 lambda!139233)))

(declare-fun bs!628886 () Bool)

(assert (= bs!628886 (and b!4350296 b!4350228)))

(assert (=> bs!628886 (= lambda!139253 lambda!139240)))

(declare-fun b!4350288 () Bool)

(declare-fun e!2707174 () List!48988)

(assert (=> b!4350288 (= e!2707174 Nil!48864)))

(declare-fun b!4350289 () Bool)

(declare-fun e!2707175 () Unit!70923)

(declare-fun Unit!70989 () Unit!70923)

(assert (=> b!4350289 (= e!2707175 Unit!70989)))

(declare-fun b!4350290 () Bool)

(declare-fun e!2707177 () Unit!70923)

(declare-fun Unit!70990 () Unit!70923)

(assert (=> b!4350290 (= e!2707177 Unit!70990)))

(declare-fun d!1284929 () Bool)

(declare-fun e!2707176 () Bool)

(assert (=> d!1284929 e!2707176))

(declare-fun res!1787078 () Bool)

(assert (=> d!1284929 (=> (not res!1787078) (not e!2707176))))

(declare-fun lt!1564102 () List!48988)

(assert (=> d!1284929 (= res!1787078 (noDuplicate!596 lt!1564102))))

(assert (=> d!1284929 (= lt!1564102 e!2707174)))

(declare-fun c!739553 () Bool)

(assert (=> d!1284929 (= c!739553 ((_ is Cons!48861) (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))))))

(assert (=> d!1284929 (invariantList!660 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))))

(assert (=> d!1284929 (= (getKeysList!108 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) lt!1564102)))

(declare-fun b!4350291 () Bool)

(assert (=> b!4350291 false))

(declare-fun Unit!70991 () Unit!70923)

(assert (=> b!4350291 (= e!2707177 Unit!70991)))

(assert (=> b!4350292 (= e!2707174 (Cons!48864 (_1!27405 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))) (getKeysList!108 (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))))))))

(declare-fun c!739555 () Bool)

(assert (=> b!4350292 (= c!739555 (containsKey!634 (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (_1!27405 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))))))))

(declare-fun lt!1564097 () Unit!70923)

(assert (=> b!4350292 (= lt!1564097 e!2707177)))

(declare-fun c!739554 () Bool)

(assert (=> b!4350292 (= c!739554 (contains!11028 (getKeysList!108 (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))) (_1!27405 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))))))))

(declare-fun lt!1564099 () Unit!70923)

(assert (=> b!4350292 (= lt!1564099 e!2707175)))

(declare-fun lt!1564098 () List!48988)

(assert (=> b!4350292 (= lt!1564098 (getKeysList!108 (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))))))

(declare-fun lt!1564101 () Unit!70923)

(assert (=> b!4350292 (= lt!1564101 (lemmaForallContainsAddHeadPreserves!18 (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) lt!1564098 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))))))

(assert (=> b!4350292 (forall!9073 lt!1564098 lambda!139251)))

(declare-fun lt!1564100 () Unit!70923)

(assert (=> b!4350292 (= lt!1564100 lt!1564101)))

(declare-fun b!4350293 () Bool)

(declare-fun res!1787077 () Bool)

(assert (=> b!4350293 (=> (not res!1787077) (not e!2707176))))

(assert (=> b!4350293 (= res!1787077 (= (length!48 lt!1564102) (length!49 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))))))

(assert (=> b!4350294 false))

(declare-fun lt!1564096 () Unit!70923)

(assert (=> b!4350294 (= lt!1564096 (forallContained!1720 (getKeysList!108 (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))) lambda!139250 (_1!27405 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))))))))

(declare-fun Unit!70992 () Unit!70923)

(assert (=> b!4350294 (= e!2707175 Unit!70992)))

(declare-fun res!1787079 () Bool)

(assert (=> b!4350295 (=> (not res!1787079) (not e!2707176))))

(assert (=> b!4350295 (= res!1787079 (forall!9073 lt!1564102 lambda!139252))))

(assert (=> b!4350296 (= e!2707176 (= (content!7680 lt!1564102) (content!7680 (map!10624 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) lambda!139253))))))

(assert (= (and d!1284929 c!739553) b!4350292))

(assert (= (and d!1284929 (not c!739553)) b!4350288))

(assert (= (and b!4350292 c!739555) b!4350291))

(assert (= (and b!4350292 (not c!739555)) b!4350290))

(assert (= (and b!4350292 c!739554) b!4350294))

(assert (= (and b!4350292 (not c!739554)) b!4350289))

(assert (= (and d!1284929 res!1787078) b!4350293))

(assert (= (and b!4350293 res!1787077) b!4350295))

(assert (= (and b!4350295 res!1787079) b!4350296))

(declare-fun m!4960299 () Bool)

(assert (=> b!4350293 m!4960299))

(assert (=> b!4350293 m!4960157))

(declare-fun m!4960301 () Bool)

(assert (=> b!4350295 m!4960301))

(declare-fun m!4960303 () Bool)

(assert (=> b!4350292 m!4960303))

(declare-fun m!4960305 () Bool)

(assert (=> b!4350292 m!4960305))

(declare-fun m!4960307 () Bool)

(assert (=> b!4350292 m!4960307))

(assert (=> b!4350292 m!4960305))

(declare-fun m!4960309 () Bool)

(assert (=> b!4350292 m!4960309))

(declare-fun m!4960311 () Bool)

(assert (=> b!4350292 m!4960311))

(declare-fun m!4960313 () Bool)

(assert (=> b!4350296 m!4960313))

(declare-fun m!4960315 () Bool)

(assert (=> b!4350296 m!4960315))

(assert (=> b!4350296 m!4960315))

(declare-fun m!4960317 () Bool)

(assert (=> b!4350296 m!4960317))

(assert (=> b!4350294 m!4960305))

(assert (=> b!4350294 m!4960305))

(declare-fun m!4960319 () Bool)

(assert (=> b!4350294 m!4960319))

(declare-fun m!4960321 () Bool)

(assert (=> d!1284929 m!4960321))

(assert (=> d!1284929 m!4959887))

(assert (=> b!4349826 d!1284929))

(assert (=> b!4349754 d!1284913))

(declare-fun d!1284939 () Bool)

(assert (=> d!1284939 (containsKey!634 (toList!2910 lt!1563608) key!3918)))

(declare-fun lt!1564106 () Unit!70923)

(assert (=> d!1284939 (= lt!1564106 (choose!26756 (toList!2910 lt!1563608) key!3918))))

(assert (=> d!1284939 (invariantList!660 (toList!2910 lt!1563608))))

(assert (=> d!1284939 (= (lemmaInGetKeysListThenContainsKey!106 (toList!2910 lt!1563608) key!3918) lt!1564106)))

(declare-fun bs!628888 () Bool)

(assert (= bs!628888 d!1284939))

(assert (=> bs!628888 m!4959431))

(declare-fun m!4960329 () Bool)

(assert (=> bs!628888 m!4960329))

(assert (=> bs!628888 m!4959867))

(assert (=> b!4349754 d!1284939))

(assert (=> d!1284633 d!1284607))

(declare-fun d!1284943 () Bool)

(assert (=> d!1284943 (contains!11024 lt!1563608 key!3918)))

(assert (=> d!1284943 true))

(declare-fun _$11!1137 () Unit!70923)

(assert (=> d!1284943 (= (choose!26748 (_2!27406 (h!54395 (toList!2909 lm!1707))) key!3918 newValue!99 lt!1563608) _$11!1137)))

(declare-fun bs!628892 () Bool)

(assert (= bs!628892 d!1284943))

(assert (=> bs!628892 m!4959241))

(assert (=> d!1284633 d!1284943))

(assert (=> d!1284633 d!1284869))

(assert (=> b!4349824 d!1284881))

(assert (=> b!4349824 d!1284883))

(declare-fun d!1284961 () Bool)

(declare-fun res!1787092 () Bool)

(declare-fun e!2707197 () Bool)

(assert (=> d!1284961 (=> res!1787092 e!2707197)))

(assert (=> d!1284961 (= res!1787092 (not ((_ is Cons!48861) (_2!27406 (h!54395 (toList!2909 lt!1563610))))))))

(assert (=> d!1284961 (= (noDuplicateKeys!463 (_2!27406 (h!54395 (toList!2909 lt!1563610)))) e!2707197)))

(declare-fun b!4350320 () Bool)

(declare-fun e!2707198 () Bool)

(assert (=> b!4350320 (= e!2707197 e!2707198)))

(declare-fun res!1787093 () Bool)

(assert (=> b!4350320 (=> (not res!1787093) (not e!2707198))))

(assert (=> b!4350320 (= res!1787093 (not (containsKey!630 (t!355905 (_2!27406 (h!54395 (toList!2909 lt!1563610)))) (_1!27405 (h!54394 (_2!27406 (h!54395 (toList!2909 lt!1563610))))))))))

(declare-fun b!4350321 () Bool)

(assert (=> b!4350321 (= e!2707198 (noDuplicateKeys!463 (t!355905 (_2!27406 (h!54395 (toList!2909 lt!1563610))))))))

(assert (= (and d!1284961 (not res!1787092)) b!4350320))

(assert (= (and b!4350320 res!1787093) b!4350321))

(declare-fun m!4960355 () Bool)

(assert (=> b!4350320 m!4960355))

(declare-fun m!4960357 () Bool)

(assert (=> b!4350321 m!4960357))

(assert (=> bs!628626 d!1284961))

(assert (=> b!4349836 d!1284917))

(assert (=> b!4349836 d!1284919))

(declare-fun d!1284967 () Bool)

(declare-fun res!1787094 () Bool)

(declare-fun e!2707199 () Bool)

(assert (=> d!1284967 (=> res!1787094 e!2707199)))

(assert (=> d!1284967 (= res!1787094 ((_ is Nil!48862) (toList!2909 lm!1707)))))

(assert (=> d!1284967 (= (forall!9069 (toList!2909 lm!1707) lambda!139094) e!2707199)))

(declare-fun b!4350322 () Bool)

(declare-fun e!2707200 () Bool)

(assert (=> b!4350322 (= e!2707199 e!2707200)))

(declare-fun res!1787095 () Bool)

(assert (=> b!4350322 (=> (not res!1787095) (not e!2707200))))

(assert (=> b!4350322 (= res!1787095 (dynLambda!20608 lambda!139094 (h!54395 (toList!2909 lm!1707))))))

(declare-fun b!4350323 () Bool)

(assert (=> b!4350323 (= e!2707200 (forall!9069 (t!355906 (toList!2909 lm!1707)) lambda!139094))))

(assert (= (and d!1284967 (not res!1787094)) b!4350322))

(assert (= (and b!4350322 res!1787095) b!4350323))

(declare-fun b_lambda!130509 () Bool)

(assert (=> (not b_lambda!130509) (not b!4350322)))

(declare-fun m!4960363 () Bool)

(assert (=> b!4350322 m!4960363))

(declare-fun m!4960365 () Bool)

(assert (=> b!4350323 m!4960365))

(assert (=> d!1284577 d!1284967))

(declare-fun d!1284977 () Bool)

(declare-fun lt!1564111 () Bool)

(assert (=> d!1284977 (= lt!1564111 (select (content!7678 (t!355906 (toList!2909 lm!1707))) lt!1563612))))

(declare-fun e!2707202 () Bool)

(assert (=> d!1284977 (= lt!1564111 e!2707202)))

(declare-fun res!1787096 () Bool)

(assert (=> d!1284977 (=> (not res!1787096) (not e!2707202))))

(assert (=> d!1284977 (= res!1787096 ((_ is Cons!48862) (t!355906 (toList!2909 lm!1707))))))

(assert (=> d!1284977 (= (contains!11025 (t!355906 (toList!2909 lm!1707)) lt!1563612) lt!1564111)))

(declare-fun b!4350324 () Bool)

(declare-fun e!2707201 () Bool)

(assert (=> b!4350324 (= e!2707202 e!2707201)))

(declare-fun res!1787097 () Bool)

(assert (=> b!4350324 (=> res!1787097 e!2707201)))

(assert (=> b!4350324 (= res!1787097 (= (h!54395 (t!355906 (toList!2909 lm!1707))) lt!1563612))))

(declare-fun b!4350325 () Bool)

(assert (=> b!4350325 (= e!2707201 (contains!11025 (t!355906 (t!355906 (toList!2909 lm!1707))) lt!1563612))))

(assert (= (and d!1284977 res!1787096) b!4350324))

(assert (= (and b!4350324 (not res!1787097)) b!4350325))

(assert (=> d!1284977 m!4960277))

(declare-fun m!4960371 () Bool)

(assert (=> d!1284977 m!4960371))

(declare-fun m!4960373 () Bool)

(assert (=> b!4350325 m!4960373))

(assert (=> b!4349648 d!1284977))

(declare-fun d!1284985 () Bool)

(declare-fun res!1787098 () Bool)

(declare-fun e!2707203 () Bool)

(assert (=> d!1284985 (=> res!1787098 e!2707203)))

(assert (=> d!1284985 (= res!1787098 (and ((_ is Cons!48861) (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) (= (_1!27405 (h!54394 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))) key!3918)))))

(assert (=> d!1284985 (= (containsKey!634 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918) e!2707203)))

(declare-fun b!4350326 () Bool)

(declare-fun e!2707204 () Bool)

(assert (=> b!4350326 (= e!2707203 e!2707204)))

(declare-fun res!1787099 () Bool)

(assert (=> b!4350326 (=> (not res!1787099) (not e!2707204))))

(assert (=> b!4350326 (= res!1787099 ((_ is Cons!48861) (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))))))

(declare-fun b!4350327 () Bool)

(assert (=> b!4350327 (= e!2707204 (containsKey!634 (t!355905 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707))))) key!3918))))

(assert (= (and d!1284985 (not res!1787098)) b!4350326))

(assert (= (and b!4350326 res!1787099) b!4350327))

(declare-fun m!4960375 () Bool)

(assert (=> b!4350327 m!4960375))

(assert (=> b!4349822 d!1284985))

(declare-fun d!1284987 () Bool)

(assert (=> d!1284987 (containsKey!634 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918)))

(declare-fun lt!1564112 () Unit!70923)

(assert (=> d!1284987 (= lt!1564112 (choose!26756 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918))))

(assert (=> d!1284987 (invariantList!660 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))))))

(assert (=> d!1284987 (= (lemmaInGetKeysListThenContainsKey!106 (toList!2910 (extractMap!522 (toList!2909 (tail!6953 lm!1707)))) key!3918) lt!1564112)))

(declare-fun bs!628902 () Bool)

(assert (= bs!628902 d!1284987))

(assert (=> bs!628902 m!4959543))

(declare-fun m!4960377 () Bool)

(assert (=> bs!628902 m!4960377))

(assert (=> bs!628902 m!4959887))

(assert (=> b!4349822 d!1284987))

(assert (=> b!4349751 d!1284853))

(declare-fun d!1284989 () Bool)

(assert (=> d!1284989 (dynLambda!20608 lambda!139091 lt!1563612)))

(assert (=> d!1284989 true))

(declare-fun _$7!1453 () Unit!70923)

(assert (=> d!1284989 (= (choose!26745 (toList!2909 lm!1707) lambda!139091 lt!1563612) _$7!1453)))

(declare-fun b_lambda!130511 () Bool)

(assert (=> (not b_lambda!130511) (not d!1284989)))

(declare-fun bs!628903 () Bool)

(assert (= bs!628903 d!1284989))

(assert (=> bs!628903 m!4959341))

(assert (=> d!1284589 d!1284989))

(assert (=> d!1284589 d!1284575))

(declare-fun d!1284991 () Bool)

(declare-fun res!1787100 () Bool)

(declare-fun e!2707205 () Bool)

(assert (=> d!1284991 (=> res!1787100 e!2707205)))

(assert (=> d!1284991 (= res!1787100 (not ((_ is Cons!48861) (t!355905 newBucket!200))))))

(assert (=> d!1284991 (= (noDuplicateKeys!463 (t!355905 newBucket!200)) e!2707205)))

(declare-fun b!4350328 () Bool)

(declare-fun e!2707206 () Bool)

(assert (=> b!4350328 (= e!2707205 e!2707206)))

(declare-fun res!1787101 () Bool)

(assert (=> b!4350328 (=> (not res!1787101) (not e!2707206))))

(assert (=> b!4350328 (= res!1787101 (not (containsKey!630 (t!355905 (t!355905 newBucket!200)) (_1!27405 (h!54394 (t!355905 newBucket!200))))))))

(declare-fun b!4350329 () Bool)

(assert (=> b!4350329 (= e!2707206 (noDuplicateKeys!463 (t!355905 (t!355905 newBucket!200))))))

(assert (= (and d!1284991 (not res!1787100)) b!4350328))

(assert (= (and b!4350328 res!1787101) b!4350329))

(declare-fun m!4960379 () Bool)

(assert (=> b!4350328 m!4960379))

(declare-fun m!4960381 () Bool)

(assert (=> b!4350329 m!4960381))

(assert (=> b!4349697 d!1284991))

(declare-fun d!1284993 () Bool)

(declare-fun lt!1564113 () Bool)

(assert (=> d!1284993 (= lt!1564113 (select (content!7680 e!2706892) key!3918))))

(declare-fun e!2707207 () Bool)

(assert (=> d!1284993 (= lt!1564113 e!2707207)))

(declare-fun res!1787103 () Bool)

(assert (=> d!1284993 (=> (not res!1787103) (not e!2707207))))

(assert (=> d!1284993 (= res!1787103 ((_ is Cons!48864) e!2706892))))

(assert (=> d!1284993 (= (contains!11028 e!2706892 key!3918) lt!1564113)))

(declare-fun b!4350330 () Bool)

(declare-fun e!2707208 () Bool)

(assert (=> b!4350330 (= e!2707207 e!2707208)))

(declare-fun res!1787102 () Bool)

(assert (=> b!4350330 (=> res!1787102 e!2707208)))

(assert (=> b!4350330 (= res!1787102 (= (h!54399 e!2706892) key!3918))))

(declare-fun b!4350331 () Bool)

(assert (=> b!4350331 (= e!2707208 (contains!11028 (t!355908 e!2706892) key!3918))))

(assert (= (and d!1284993 res!1787103) b!4350330))

(assert (= (and b!4350330 (not res!1787102)) b!4350331))

(declare-fun m!4960383 () Bool)

(assert (=> d!1284993 m!4960383))

(declare-fun m!4960385 () Bool)

(assert (=> d!1284993 m!4960385))

(declare-fun m!4960387 () Bool)

(assert (=> b!4350331 m!4960387))

(assert (=> bm!302326 d!1284993))

(declare-fun d!1284995 () Bool)

(assert (=> d!1284995 (= (isEmpty!28171 (toList!2909 lm!1707)) ((_ is Nil!48862) (toList!2909 lm!1707)))))

(assert (=> d!1284663 d!1284995))

(assert (=> d!1284629 d!1284627))

(assert (=> d!1284629 d!1284625))

(declare-fun d!1284997 () Bool)

(assert (=> d!1284997 (not (containsKey!630 (apply!11315 lm!1707 (_1!27406 (h!54395 (toList!2909 lm!1707)))) key!3918))))

(assert (=> d!1284997 true))

(declare-fun _$39!256 () Unit!70923)

(assert (=> d!1284997 (= (choose!26747 lm!1707 key!3918 (_1!27406 (h!54395 (toList!2909 lm!1707))) hashF!1247) _$39!256)))

(declare-fun bs!628904 () Bool)

(assert (= bs!628904 d!1284997))

(assert (=> bs!628904 m!4959245))

(assert (=> bs!628904 m!4959245))

(assert (=> bs!628904 m!4959247))

(assert (=> d!1284629 d!1284997))

(declare-fun d!1284999 () Bool)

(declare-fun res!1787104 () Bool)

(declare-fun e!2707209 () Bool)

(assert (=> d!1284999 (=> res!1787104 e!2707209)))

(assert (=> d!1284999 (= res!1787104 ((_ is Nil!48862) (toList!2909 lm!1707)))))

(assert (=> d!1284999 (= (forall!9069 (toList!2909 lm!1707) lambda!139107) e!2707209)))

(declare-fun b!4350332 () Bool)

(declare-fun e!2707210 () Bool)

(assert (=> b!4350332 (= e!2707209 e!2707210)))

(declare-fun res!1787105 () Bool)

(assert (=> b!4350332 (=> (not res!1787105) (not e!2707210))))

(assert (=> b!4350332 (= res!1787105 (dynLambda!20608 lambda!139107 (h!54395 (toList!2909 lm!1707))))))

(declare-fun b!4350333 () Bool)

(assert (=> b!4350333 (= e!2707210 (forall!9069 (t!355906 (toList!2909 lm!1707)) lambda!139107))))

(assert (= (and d!1284999 (not res!1787104)) b!4350332))

(assert (= (and b!4350332 res!1787105) b!4350333))

(declare-fun b_lambda!130513 () Bool)

(assert (=> (not b_lambda!130513) (not b!4350332)))

(declare-fun m!4960389 () Bool)

(assert (=> b!4350332 m!4960389))

(declare-fun m!4960391 () Bool)

(assert (=> b!4350333 m!4960391))

(assert (=> d!1284629 d!1284999))

(assert (=> b!4349833 d!1284835))

(assert (=> b!4349833 d!1284837))

(declare-fun d!1285001 () Bool)

(assert (=> d!1285001 (= (get!15864 (getValueByKey!418 (toList!2909 lm!1707) hash!377)) (v!43249 (getValueByKey!418 (toList!2909 lm!1707) hash!377)))))

(assert (=> d!1284579 d!1285001))

(declare-fun b!4350334 () Bool)

(declare-fun e!2707211 () Option!10432)

(assert (=> b!4350334 (= e!2707211 (Some!10431 (_2!27406 (h!54395 (toList!2909 lm!1707)))))))

(declare-fun b!4350336 () Bool)

(declare-fun e!2707212 () Option!10432)

(assert (=> b!4350336 (= e!2707212 (getValueByKey!418 (t!355906 (toList!2909 lm!1707)) hash!377))))

(declare-fun b!4350335 () Bool)

(assert (=> b!4350335 (= e!2707211 e!2707212)))

(declare-fun c!739561 () Bool)

(assert (=> b!4350335 (= c!739561 (and ((_ is Cons!48862) (toList!2909 lm!1707)) (not (= (_1!27406 (h!54395 (toList!2909 lm!1707))) hash!377))))))

(declare-fun b!4350337 () Bool)

(assert (=> b!4350337 (= e!2707212 None!10431)))

(declare-fun d!1285003 () Bool)

(declare-fun c!739560 () Bool)

(assert (=> d!1285003 (= c!739560 (and ((_ is Cons!48862) (toList!2909 lm!1707)) (= (_1!27406 (h!54395 (toList!2909 lm!1707))) hash!377)))))

(assert (=> d!1285003 (= (getValueByKey!418 (toList!2909 lm!1707) hash!377) e!2707211)))

(assert (= (and d!1285003 c!739560) b!4350334))

(assert (= (and d!1285003 (not c!739560)) b!4350335))

(assert (= (and b!4350335 c!739561) b!4350336))

(assert (= (and b!4350335 (not c!739561)) b!4350337))

(declare-fun m!4960393 () Bool)

(assert (=> b!4350336 m!4960393))

(assert (=> d!1284579 d!1285003))

(declare-fun bs!628905 () Bool)

(declare-fun b!4350341 () Bool)

(assert (= bs!628905 (and b!4350341 b!4350065)))

(declare-fun lambda!139254 () Int)

(assert (=> bs!628905 (= (= (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707)))) (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139254 lambda!139171))))

(declare-fun bs!628906 () Bool)

(assert (= bs!628906 (and b!4350341 d!1284765)))

(assert (=> bs!628906 (= (= (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707)))) lt!1563901) (= lambda!139254 lambda!139173))))

(assert (=> bs!628905 (= (= (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707)))) lt!1563899) (= lambda!139254 lambda!139172))))

(declare-fun bs!628907 () Bool)

(assert (= bs!628907 (and b!4350341 d!1284599)))

(assert (=> bs!628907 (not (= lambda!139254 lambda!139103))))

(declare-fun bs!628908 () Bool)

(assert (= bs!628908 (and b!4350341 b!4350064)))

(assert (=> bs!628908 (= (= (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707)))) (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139254 lambda!139170))))

(assert (=> b!4350341 true))

(declare-fun bs!628909 () Bool)

(declare-fun b!4350342 () Bool)

(assert (= bs!628909 (and b!4350342 b!4350065)))

(declare-fun lambda!139255 () Int)

(assert (=> bs!628909 (= (= (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707)))) (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139255 lambda!139171))))

(declare-fun bs!628910 () Bool)

(assert (= bs!628910 (and b!4350342 d!1284765)))

(assert (=> bs!628910 (= (= (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707)))) lt!1563901) (= lambda!139255 lambda!139173))))

(declare-fun bs!628911 () Bool)

(assert (= bs!628911 (and b!4350342 b!4350341)))

(assert (=> bs!628911 (= lambda!139255 lambda!139254)))

(assert (=> bs!628909 (= (= (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707)))) lt!1563899) (= lambda!139255 lambda!139172))))

(declare-fun bs!628912 () Bool)

(assert (= bs!628912 (and b!4350342 d!1284599)))

(assert (=> bs!628912 (not (= lambda!139255 lambda!139103))))

(declare-fun bs!628913 () Bool)

(assert (= bs!628913 (and b!4350342 b!4350064)))

(assert (=> bs!628913 (= (= (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707)))) (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139255 lambda!139170))))

(assert (=> b!4350342 true))

(declare-fun lt!1564114 () ListMap!2153)

(declare-fun lambda!139256 () Int)

(assert (=> bs!628909 (= (= lt!1564114 (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139256 lambda!139171))))

(assert (=> bs!628910 (= (= lt!1564114 lt!1563901) (= lambda!139256 lambda!139173))))

(assert (=> bs!628911 (= (= lt!1564114 (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))) (= lambda!139256 lambda!139254))))

(assert (=> bs!628909 (= (= lt!1564114 lt!1563899) (= lambda!139256 lambda!139172))))

(assert (=> b!4350342 (= (= lt!1564114 (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))) (= lambda!139256 lambda!139255))))

(assert (=> bs!628912 (not (= lambda!139256 lambda!139103))))

(assert (=> bs!628913 (= (= lt!1564114 (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139256 lambda!139170))))

(assert (=> b!4350342 true))

(declare-fun bs!628914 () Bool)

(declare-fun d!1285005 () Bool)

(assert (= bs!628914 (and d!1285005 b!4350065)))

(declare-fun lambda!139257 () Int)

(declare-fun lt!1564116 () ListMap!2153)

(assert (=> bs!628914 (= (= lt!1564116 (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139257 lambda!139171))))

(declare-fun bs!628915 () Bool)

(assert (= bs!628915 (and d!1285005 d!1284765)))

(assert (=> bs!628915 (= (= lt!1564116 lt!1563901) (= lambda!139257 lambda!139173))))

(declare-fun bs!628916 () Bool)

(assert (= bs!628916 (and d!1285005 b!4350341)))

(assert (=> bs!628916 (= (= lt!1564116 (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))) (= lambda!139257 lambda!139254))))

(assert (=> bs!628914 (= (= lt!1564116 lt!1563899) (= lambda!139257 lambda!139172))))

(declare-fun bs!628917 () Bool)

(assert (= bs!628917 (and d!1285005 b!4350342)))

(assert (=> bs!628917 (= (= lt!1564116 lt!1564114) (= lambda!139257 lambda!139256))))

(assert (=> bs!628917 (= (= lt!1564116 (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))) (= lambda!139257 lambda!139255))))

(declare-fun bs!628918 () Bool)

(assert (= bs!628918 (and d!1285005 d!1284599)))

(assert (=> bs!628918 (not (= lambda!139257 lambda!139103))))

(declare-fun bs!628919 () Bool)

(assert (= bs!628919 (and d!1285005 b!4350064)))

(assert (=> bs!628919 (= (= lt!1564116 (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139257 lambda!139170))))

(assert (=> d!1285005 true))

(declare-fun lt!1564124 () ListMap!2153)

(declare-fun c!739562 () Bool)

(declare-fun bm!302360 () Bool)

(declare-fun call!302365 () Bool)

(assert (=> bm!302360 (= call!302365 (forall!9070 (ite c!739562 (toList!2910 (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))) (toList!2910 lt!1564124)) (ite c!739562 lambda!139254 lambda!139256)))))

(declare-fun bm!302361 () Bool)

(declare-fun call!302367 () Bool)

(assert (=> bm!302361 (= call!302367 (forall!9070 (toList!2910 (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))) (ite c!739562 lambda!139254 lambda!139255)))))

(declare-fun b!4350338 () Bool)

(declare-fun e!2707215 () Bool)

(assert (=> b!4350338 (= e!2707215 (forall!9070 (toList!2910 (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))) lambda!139256))))

(declare-fun e!2707214 () Bool)

(assert (=> d!1285005 e!2707214))

(declare-fun res!1787106 () Bool)

(assert (=> d!1285005 (=> (not res!1787106) (not e!2707214))))

(assert (=> d!1285005 (= res!1787106 (forall!9070 (_2!27406 (h!54395 (t!355906 (toList!2909 lm!1707)))) lambda!139257))))

(declare-fun e!2707213 () ListMap!2153)

(assert (=> d!1285005 (= lt!1564116 e!2707213)))

(assert (=> d!1285005 (= c!739562 ((_ is Nil!48861) (_2!27406 (h!54395 (t!355906 (toList!2909 lm!1707))))))))

(assert (=> d!1285005 (noDuplicateKeys!463 (_2!27406 (h!54395 (t!355906 (toList!2909 lm!1707)))))))

(assert (=> d!1285005 (= (addToMapMapFromBucket!167 (_2!27406 (h!54395 (t!355906 (toList!2909 lm!1707)))) (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))) lt!1564116)))

(declare-fun bm!302362 () Bool)

(declare-fun call!302366 () Unit!70923)

(assert (=> bm!302362 (= call!302366 (lemmaContainsAllItsOwnKeys!50 (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))))))

(declare-fun b!4350339 () Bool)

(assert (=> b!4350339 (= e!2707214 (invariantList!660 (toList!2910 lt!1564116)))))

(declare-fun b!4350340 () Bool)

(declare-fun res!1787108 () Bool)

(assert (=> b!4350340 (=> (not res!1787108) (not e!2707214))))

(assert (=> b!4350340 (= res!1787108 (forall!9070 (toList!2910 (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))) lambda!139257))))

(assert (=> b!4350341 (= e!2707213 (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707)))))))

(declare-fun lt!1564132 () Unit!70923)

(assert (=> b!4350341 (= lt!1564132 call!302366)))

(assert (=> b!4350341 call!302365))

(declare-fun lt!1564133 () Unit!70923)

(assert (=> b!4350341 (= lt!1564133 lt!1564132)))

(assert (=> b!4350341 call!302367))

(declare-fun lt!1564131 () Unit!70923)

(declare-fun Unit!70997 () Unit!70923)

(assert (=> b!4350341 (= lt!1564131 Unit!70997)))

(assert (=> b!4350342 (= e!2707213 lt!1564114)))

(assert (=> b!4350342 (= lt!1564124 (+!589 (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707)))) (h!54394 (_2!27406 (h!54395 (t!355906 (toList!2909 lm!1707)))))))))

(assert (=> b!4350342 (= lt!1564114 (addToMapMapFromBucket!167 (t!355905 (_2!27406 (h!54395 (t!355906 (toList!2909 lm!1707))))) (+!589 (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707)))) (h!54394 (_2!27406 (h!54395 (t!355906 (toList!2909 lm!1707))))))))))

(declare-fun lt!1564117 () Unit!70923)

(assert (=> b!4350342 (= lt!1564117 call!302366)))

(assert (=> b!4350342 call!302367))

(declare-fun lt!1564125 () Unit!70923)

(assert (=> b!4350342 (= lt!1564125 lt!1564117)))

(assert (=> b!4350342 call!302365))

(declare-fun lt!1564115 () Unit!70923)

(declare-fun Unit!70998 () Unit!70923)

(assert (=> b!4350342 (= lt!1564115 Unit!70998)))

(assert (=> b!4350342 (forall!9070 (t!355905 (_2!27406 (h!54395 (t!355906 (toList!2909 lm!1707))))) lambda!139256)))

(declare-fun lt!1564127 () Unit!70923)

(declare-fun Unit!70999 () Unit!70923)

(assert (=> b!4350342 (= lt!1564127 Unit!70999)))

(declare-fun lt!1564123 () Unit!70923)

(declare-fun Unit!71000 () Unit!70923)

(assert (=> b!4350342 (= lt!1564123 Unit!71000)))

(declare-fun lt!1564126 () Unit!70923)

(assert (=> b!4350342 (= lt!1564126 (forallContained!1718 (toList!2910 lt!1564124) lambda!139256 (h!54394 (_2!27406 (h!54395 (t!355906 (toList!2909 lm!1707)))))))))

(assert (=> b!4350342 (contains!11024 lt!1564124 (_1!27405 (h!54394 (_2!27406 (h!54395 (t!355906 (toList!2909 lm!1707)))))))))

(declare-fun lt!1564130 () Unit!70923)

(declare-fun Unit!71001 () Unit!70923)

(assert (=> b!4350342 (= lt!1564130 Unit!71001)))

(assert (=> b!4350342 (contains!11024 lt!1564114 (_1!27405 (h!54394 (_2!27406 (h!54395 (t!355906 (toList!2909 lm!1707)))))))))

(declare-fun lt!1564122 () Unit!70923)

(declare-fun Unit!71002 () Unit!70923)

(assert (=> b!4350342 (= lt!1564122 Unit!71002)))

(assert (=> b!4350342 (forall!9070 (_2!27406 (h!54395 (t!355906 (toList!2909 lm!1707)))) lambda!139256)))

(declare-fun lt!1564118 () Unit!70923)

(declare-fun Unit!71003 () Unit!70923)

(assert (=> b!4350342 (= lt!1564118 Unit!71003)))

(assert (=> b!4350342 (forall!9070 (toList!2910 lt!1564124) lambda!139256)))

(declare-fun lt!1564119 () Unit!70923)

(declare-fun Unit!71004 () Unit!70923)

(assert (=> b!4350342 (= lt!1564119 Unit!71004)))

(declare-fun lt!1564129 () Unit!70923)

(declare-fun Unit!71005 () Unit!70923)

(assert (=> b!4350342 (= lt!1564129 Unit!71005)))

(declare-fun lt!1564121 () Unit!70923)

(assert (=> b!4350342 (= lt!1564121 (addForallContainsKeyThenBeforeAdding!50 (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707)))) lt!1564114 (_1!27405 (h!54394 (_2!27406 (h!54395 (t!355906 (toList!2909 lm!1707)))))) (_2!27405 (h!54394 (_2!27406 (h!54395 (t!355906 (toList!2909 lm!1707))))))))))

(assert (=> b!4350342 (forall!9070 (toList!2910 (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))) lambda!139256)))

(declare-fun lt!1564134 () Unit!70923)

(assert (=> b!4350342 (= lt!1564134 lt!1564121)))

(assert (=> b!4350342 (forall!9070 (toList!2910 (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))) lambda!139256)))

(declare-fun lt!1564128 () Unit!70923)

(declare-fun Unit!71006 () Unit!70923)

(assert (=> b!4350342 (= lt!1564128 Unit!71006)))

(declare-fun res!1787107 () Bool)

(assert (=> b!4350342 (= res!1787107 (forall!9070 (_2!27406 (h!54395 (t!355906 (toList!2909 lm!1707)))) lambda!139256))))

(assert (=> b!4350342 (=> (not res!1787107) (not e!2707215))))

(assert (=> b!4350342 e!2707215))

(declare-fun lt!1564120 () Unit!70923)

(declare-fun Unit!71007 () Unit!70923)

(assert (=> b!4350342 (= lt!1564120 Unit!71007)))

(assert (= (and d!1285005 c!739562) b!4350341))

(assert (= (and d!1285005 (not c!739562)) b!4350342))

(assert (= (and b!4350342 res!1787107) b!4350338))

(assert (= (or b!4350341 b!4350342) bm!302362))

(assert (= (or b!4350341 b!4350342) bm!302360))

(assert (= (or b!4350341 b!4350342) bm!302361))

(assert (= (and d!1285005 res!1787106) b!4350340))

(assert (= (and b!4350340 res!1787108) b!4350339))

(declare-fun m!4960395 () Bool)

(assert (=> d!1285005 m!4960395))

(declare-fun m!4960397 () Bool)

(assert (=> d!1285005 m!4960397))

(declare-fun m!4960399 () Bool)

(assert (=> b!4350342 m!4960399))

(declare-fun m!4960401 () Bool)

(assert (=> b!4350342 m!4960401))

(declare-fun m!4960403 () Bool)

(assert (=> b!4350342 m!4960403))

(declare-fun m!4960405 () Bool)

(assert (=> b!4350342 m!4960405))

(declare-fun m!4960407 () Bool)

(assert (=> b!4350342 m!4960407))

(assert (=> b!4350342 m!4959535))

(assert (=> b!4350342 m!4960401))

(assert (=> b!4350342 m!4960407))

(declare-fun m!4960409 () Bool)

(assert (=> b!4350342 m!4960409))

(assert (=> b!4350342 m!4959535))

(declare-fun m!4960411 () Bool)

(assert (=> b!4350342 m!4960411))

(declare-fun m!4960413 () Bool)

(assert (=> b!4350342 m!4960413))

(declare-fun m!4960415 () Bool)

(assert (=> b!4350342 m!4960415))

(assert (=> b!4350342 m!4960405))

(declare-fun m!4960417 () Bool)

(assert (=> b!4350342 m!4960417))

(assert (=> b!4350338 m!4960405))

(declare-fun m!4960419 () Bool)

(assert (=> b!4350339 m!4960419))

(declare-fun m!4960421 () Bool)

(assert (=> b!4350340 m!4960421))

(assert (=> bm!302362 m!4959535))

(declare-fun m!4960423 () Bool)

(assert (=> bm!302362 m!4960423))

(declare-fun m!4960425 () Bool)

(assert (=> bm!302360 m!4960425))

(declare-fun m!4960427 () Bool)

(assert (=> bm!302361 m!4960427))

(assert (=> b!4349816 d!1285005))

(declare-fun bs!628920 () Bool)

(declare-fun d!1285007 () Bool)

(assert (= bs!628920 (and d!1285007 d!1284629)))

(declare-fun lambda!139258 () Int)

(assert (=> bs!628920 (= lambda!139258 lambda!139107)))

(declare-fun bs!628921 () Bool)

(assert (= bs!628921 (and d!1285007 start!420188)))

(assert (=> bs!628921 (= lambda!139258 lambda!139091)))

(declare-fun bs!628922 () Bool)

(assert (= bs!628922 (and d!1285007 d!1284577)))

(assert (=> bs!628922 (not (= lambda!139258 lambda!139094))))

(declare-fun bs!628923 () Bool)

(assert (= bs!628923 (and d!1285007 d!1284669)))

(assert (=> bs!628923 (= lambda!139258 lambda!139118)))

(declare-fun bs!628924 () Bool)

(assert (= bs!628924 (and d!1285007 d!1284679)))

(assert (=> bs!628924 (= lambda!139258 lambda!139119)))

(declare-fun bs!628925 () Bool)

(assert (= bs!628925 (and d!1285007 d!1284641)))

(assert (=> bs!628925 (= lambda!139258 lambda!139117)))

(declare-fun lt!1564135 () ListMap!2153)

(assert (=> d!1285007 (invariantList!660 (toList!2910 lt!1564135))))

(declare-fun e!2707216 () ListMap!2153)

(assert (=> d!1285007 (= lt!1564135 e!2707216)))

(declare-fun c!739563 () Bool)

(assert (=> d!1285007 (= c!739563 ((_ is Cons!48862) (t!355906 (t!355906 (toList!2909 lm!1707)))))))

(assert (=> d!1285007 (forall!9069 (t!355906 (t!355906 (toList!2909 lm!1707))) lambda!139258)))

(assert (=> d!1285007 (= (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707)))) lt!1564135)))

(declare-fun b!4350343 () Bool)

(assert (=> b!4350343 (= e!2707216 (addToMapMapFromBucket!167 (_2!27406 (h!54395 (t!355906 (t!355906 (toList!2909 lm!1707))))) (extractMap!522 (t!355906 (t!355906 (t!355906 (toList!2909 lm!1707)))))))))

(declare-fun b!4350344 () Bool)

(assert (=> b!4350344 (= e!2707216 (ListMap!2154 Nil!48861))))

(assert (= (and d!1285007 c!739563) b!4350343))

(assert (= (and d!1285007 (not c!739563)) b!4350344))

(declare-fun m!4960429 () Bool)

(assert (=> d!1285007 m!4960429))

(declare-fun m!4960431 () Bool)

(assert (=> d!1285007 m!4960431))

(declare-fun m!4960433 () Bool)

(assert (=> b!4350343 m!4960433))

(assert (=> b!4350343 m!4960433))

(declare-fun m!4960435 () Bool)

(assert (=> b!4350343 m!4960435))

(assert (=> b!4349816 d!1285007))

(declare-fun bs!628926 () Bool)

(declare-fun b!4350348 () Bool)

(assert (= bs!628926 (and b!4350348 b!4350065)))

(declare-fun lambda!139259 () Int)

(assert (=> bs!628926 (= (= (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139259 lambda!139171))))

(declare-fun bs!628927 () Bool)

(assert (= bs!628927 (and b!4350348 d!1284765)))

(assert (=> bs!628927 (= (= (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) lt!1563901) (= lambda!139259 lambda!139173))))

(declare-fun bs!628928 () Bool)

(assert (= bs!628928 (and b!4350348 b!4350341)))

(assert (=> bs!628928 (= (= (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))) (= lambda!139259 lambda!139254))))

(declare-fun bs!628929 () Bool)

(assert (= bs!628929 (and b!4350348 d!1285005)))

(assert (=> bs!628929 (= (= (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) lt!1564116) (= lambda!139259 lambda!139257))))

(assert (=> bs!628926 (= (= (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) lt!1563899) (= lambda!139259 lambda!139172))))

(declare-fun bs!628930 () Bool)

(assert (= bs!628930 (and b!4350348 b!4350342)))

(assert (=> bs!628930 (= (= (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) lt!1564114) (= lambda!139259 lambda!139256))))

(assert (=> bs!628930 (= (= (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))) (= lambda!139259 lambda!139255))))

(declare-fun bs!628931 () Bool)

(assert (= bs!628931 (and b!4350348 d!1284599)))

(assert (=> bs!628931 (not (= lambda!139259 lambda!139103))))

(declare-fun bs!628932 () Bool)

(assert (= bs!628932 (and b!4350348 b!4350064)))

(assert (=> bs!628932 (= (= (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139259 lambda!139170))))

(assert (=> b!4350348 true))

(declare-fun bs!628933 () Bool)

(declare-fun b!4350349 () Bool)

(assert (= bs!628933 (and b!4350349 b!4350065)))

(declare-fun lambda!139260 () Int)

(assert (=> bs!628933 (= (= (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139260 lambda!139171))))

(declare-fun bs!628934 () Bool)

(assert (= bs!628934 (and b!4350349 d!1284765)))

(assert (=> bs!628934 (= (= (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) lt!1563901) (= lambda!139260 lambda!139173))))

(declare-fun bs!628935 () Bool)

(assert (= bs!628935 (and b!4350349 b!4350341)))

(assert (=> bs!628935 (= (= (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))) (= lambda!139260 lambda!139254))))

(declare-fun bs!628936 () Bool)

(assert (= bs!628936 (and b!4350349 d!1285005)))

(assert (=> bs!628936 (= (= (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) lt!1564116) (= lambda!139260 lambda!139257))))

(assert (=> bs!628933 (= (= (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) lt!1563899) (= lambda!139260 lambda!139172))))

(declare-fun bs!628937 () Bool)

(assert (= bs!628937 (and b!4350349 b!4350342)))

(assert (=> bs!628937 (= (= (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) lt!1564114) (= lambda!139260 lambda!139256))))

(assert (=> bs!628937 (= (= (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))) (= lambda!139260 lambda!139255))))

(declare-fun bs!628938 () Bool)

(assert (= bs!628938 (and b!4350349 d!1284599)))

(assert (=> bs!628938 (not (= lambda!139260 lambda!139103))))

(declare-fun bs!628939 () Bool)

(assert (= bs!628939 (and b!4350349 b!4350348)))

(assert (=> bs!628939 (= lambda!139260 lambda!139259)))

(declare-fun bs!628940 () Bool)

(assert (= bs!628940 (and b!4350349 b!4350064)))

(assert (=> bs!628940 (= (= (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139260 lambda!139170))))

(assert (=> b!4350349 true))

(declare-fun lt!1564136 () ListMap!2153)

(declare-fun lambda!139261 () Int)

(assert (=> bs!628933 (= (= lt!1564136 (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139261 lambda!139171))))

(assert (=> bs!628934 (= (= lt!1564136 lt!1563901) (= lambda!139261 lambda!139173))))

(assert (=> bs!628936 (= (= lt!1564136 lt!1564116) (= lambda!139261 lambda!139257))))

(assert (=> bs!628933 (= (= lt!1564136 lt!1563899) (= lambda!139261 lambda!139172))))

(assert (=> bs!628937 (= (= lt!1564136 lt!1564114) (= lambda!139261 lambda!139256))))

(assert (=> bs!628937 (= (= lt!1564136 (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))) (= lambda!139261 lambda!139255))))

(assert (=> bs!628938 (not (= lambda!139261 lambda!139103))))

(assert (=> b!4350349 (= (= lt!1564136 (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707))))) (= lambda!139261 lambda!139260))))

(assert (=> bs!628935 (= (= lt!1564136 (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))) (= lambda!139261 lambda!139254))))

(assert (=> bs!628939 (= (= lt!1564136 (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707))))) (= lambda!139261 lambda!139259))))

(assert (=> bs!628940 (= (= lt!1564136 (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139261 lambda!139170))))

(assert (=> b!4350349 true))

(declare-fun bs!628941 () Bool)

(declare-fun d!1285009 () Bool)

(assert (= bs!628941 (and d!1285009 b!4350065)))

(declare-fun lambda!139262 () Int)

(declare-fun lt!1564138 () ListMap!2153)

(assert (=> bs!628941 (= (= lt!1564138 (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139262 lambda!139171))))

(declare-fun bs!628942 () Bool)

(assert (= bs!628942 (and d!1285009 d!1284765)))

(assert (=> bs!628942 (= (= lt!1564138 lt!1563901) (= lambda!139262 lambda!139173))))

(declare-fun bs!628943 () Bool)

(assert (= bs!628943 (and d!1285009 d!1285005)))

(assert (=> bs!628943 (= (= lt!1564138 lt!1564116) (= lambda!139262 lambda!139257))))

(assert (=> bs!628941 (= (= lt!1564138 lt!1563899) (= lambda!139262 lambda!139172))))

(declare-fun bs!628944 () Bool)

(assert (= bs!628944 (and d!1285009 b!4350342)))

(assert (=> bs!628944 (= (= lt!1564138 lt!1564114) (= lambda!139262 lambda!139256))))

(declare-fun bs!628945 () Bool)

(assert (= bs!628945 (and d!1285009 b!4350349)))

(assert (=> bs!628945 (= (= lt!1564138 lt!1564136) (= lambda!139262 lambda!139261))))

(assert (=> bs!628944 (= (= lt!1564138 (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))) (= lambda!139262 lambda!139255))))

(declare-fun bs!628946 () Bool)

(assert (= bs!628946 (and d!1285009 d!1284599)))

(assert (=> bs!628946 (not (= lambda!139262 lambda!139103))))

(assert (=> bs!628945 (= (= lt!1564138 (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707))))) (= lambda!139262 lambda!139260))))

(declare-fun bs!628947 () Bool)

(assert (= bs!628947 (and d!1285009 b!4350341)))

(assert (=> bs!628947 (= (= lt!1564138 (extractMap!522 (t!355906 (t!355906 (toList!2909 lm!1707))))) (= lambda!139262 lambda!139254))))

(declare-fun bs!628948 () Bool)

(assert (= bs!628948 (and d!1285009 b!4350348)))

(assert (=> bs!628948 (= (= lt!1564138 (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707))))) (= lambda!139262 lambda!139259))))

(declare-fun bs!628949 () Bool)

(assert (= bs!628949 (and d!1285009 b!4350064)))

(assert (=> bs!628949 (= (= lt!1564138 (extractMap!522 (t!355906 (toList!2909 lm!1707)))) (= lambda!139262 lambda!139170))))

(assert (=> d!1285009 true))

(declare-fun lt!1564146 () ListMap!2153)

(declare-fun bm!302363 () Bool)

(declare-fun call!302368 () Bool)

(declare-fun c!739564 () Bool)

(assert (=> bm!302363 (= call!302368 (forall!9070 (ite c!739564 (toList!2910 (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707))))) (toList!2910 lt!1564146)) (ite c!739564 lambda!139259 lambda!139261)))))

(declare-fun bm!302364 () Bool)

(declare-fun call!302370 () Bool)

(assert (=> bm!302364 (= call!302370 (forall!9070 (toList!2910 (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707))))) (ite c!739564 lambda!139259 lambda!139260)))))

(declare-fun b!4350345 () Bool)

(declare-fun e!2707219 () Bool)

(assert (=> b!4350345 (= e!2707219 (forall!9070 (toList!2910 (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707))))) lambda!139261))))

(declare-fun e!2707218 () Bool)

(assert (=> d!1285009 e!2707218))

(declare-fun res!1787109 () Bool)

(assert (=> d!1285009 (=> (not res!1787109) (not e!2707218))))

(assert (=> d!1285009 (= res!1787109 (forall!9070 (_2!27406 (h!54395 (toList!2909 (tail!6953 lm!1707)))) lambda!139262))))

(declare-fun e!2707217 () ListMap!2153)

(assert (=> d!1285009 (= lt!1564138 e!2707217)))

(assert (=> d!1285009 (= c!739564 ((_ is Nil!48861) (_2!27406 (h!54395 (toList!2909 (tail!6953 lm!1707))))))))

(assert (=> d!1285009 (noDuplicateKeys!463 (_2!27406 (h!54395 (toList!2909 (tail!6953 lm!1707)))))))

(assert (=> d!1285009 (= (addToMapMapFromBucket!167 (_2!27406 (h!54395 (toList!2909 (tail!6953 lm!1707)))) (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707))))) lt!1564138)))

(declare-fun bm!302365 () Bool)

(declare-fun call!302369 () Unit!70923)

(assert (=> bm!302365 (= call!302369 (lemmaContainsAllItsOwnKeys!50 (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707))))))))

(declare-fun b!4350346 () Bool)

(assert (=> b!4350346 (= e!2707218 (invariantList!660 (toList!2910 lt!1564138)))))

(declare-fun b!4350347 () Bool)

(declare-fun res!1787111 () Bool)

(assert (=> b!4350347 (=> (not res!1787111) (not e!2707218))))

(assert (=> b!4350347 (= res!1787111 (forall!9070 (toList!2910 (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707))))) lambda!139262))))

(assert (=> b!4350348 (= e!2707217 (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))))))

(declare-fun lt!1564154 () Unit!70923)

(assert (=> b!4350348 (= lt!1564154 call!302369)))

(assert (=> b!4350348 call!302368))

(declare-fun lt!1564155 () Unit!70923)

(assert (=> b!4350348 (= lt!1564155 lt!1564154)))

(assert (=> b!4350348 call!302370))

(declare-fun lt!1564153 () Unit!70923)

(declare-fun Unit!71019 () Unit!70923)

(assert (=> b!4350348 (= lt!1564153 Unit!71019)))

(assert (=> b!4350349 (= e!2707217 lt!1564136)))

(assert (=> b!4350349 (= lt!1564146 (+!589 (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) (h!54394 (_2!27406 (h!54395 (toList!2909 (tail!6953 lm!1707)))))))))

(assert (=> b!4350349 (= lt!1564136 (addToMapMapFromBucket!167 (t!355905 (_2!27406 (h!54395 (toList!2909 (tail!6953 lm!1707))))) (+!589 (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) (h!54394 (_2!27406 (h!54395 (toList!2909 (tail!6953 lm!1707))))))))))

(declare-fun lt!1564139 () Unit!70923)

(assert (=> b!4350349 (= lt!1564139 call!302369)))

(assert (=> b!4350349 call!302370))

(declare-fun lt!1564147 () Unit!70923)

(assert (=> b!4350349 (= lt!1564147 lt!1564139)))

(assert (=> b!4350349 call!302368))

(declare-fun lt!1564137 () Unit!70923)

(declare-fun Unit!71020 () Unit!70923)

(assert (=> b!4350349 (= lt!1564137 Unit!71020)))

(assert (=> b!4350349 (forall!9070 (t!355905 (_2!27406 (h!54395 (toList!2909 (tail!6953 lm!1707))))) lambda!139261)))

(declare-fun lt!1564149 () Unit!70923)

(declare-fun Unit!71021 () Unit!70923)

(assert (=> b!4350349 (= lt!1564149 Unit!71021)))

(declare-fun lt!1564145 () Unit!70923)

(declare-fun Unit!71022 () Unit!70923)

(assert (=> b!4350349 (= lt!1564145 Unit!71022)))

(declare-fun lt!1564148 () Unit!70923)

(assert (=> b!4350349 (= lt!1564148 (forallContained!1718 (toList!2910 lt!1564146) lambda!139261 (h!54394 (_2!27406 (h!54395 (toList!2909 (tail!6953 lm!1707)))))))))

(assert (=> b!4350349 (contains!11024 lt!1564146 (_1!27405 (h!54394 (_2!27406 (h!54395 (toList!2909 (tail!6953 lm!1707)))))))))

(declare-fun lt!1564152 () Unit!70923)

(declare-fun Unit!71023 () Unit!70923)

(assert (=> b!4350349 (= lt!1564152 Unit!71023)))

(assert (=> b!4350349 (contains!11024 lt!1564136 (_1!27405 (h!54394 (_2!27406 (h!54395 (toList!2909 (tail!6953 lm!1707)))))))))

(declare-fun lt!1564144 () Unit!70923)

(declare-fun Unit!71024 () Unit!70923)

(assert (=> b!4350349 (= lt!1564144 Unit!71024)))

(assert (=> b!4350349 (forall!9070 (_2!27406 (h!54395 (toList!2909 (tail!6953 lm!1707)))) lambda!139261)))

(declare-fun lt!1564140 () Unit!70923)

(declare-fun Unit!71025 () Unit!70923)

(assert (=> b!4350349 (= lt!1564140 Unit!71025)))

(assert (=> b!4350349 (forall!9070 (toList!2910 lt!1564146) lambda!139261)))

(declare-fun lt!1564141 () Unit!70923)

(declare-fun Unit!71026 () Unit!70923)

(assert (=> b!4350349 (= lt!1564141 Unit!71026)))

(declare-fun lt!1564151 () Unit!70923)

(declare-fun Unit!71027 () Unit!70923)

(assert (=> b!4350349 (= lt!1564151 Unit!71027)))

(declare-fun lt!1564143 () Unit!70923)

(assert (=> b!4350349 (= lt!1564143 (addForallContainsKeyThenBeforeAdding!50 (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) lt!1564136 (_1!27405 (h!54394 (_2!27406 (h!54395 (toList!2909 (tail!6953 lm!1707)))))) (_2!27405 (h!54394 (_2!27406 (h!54395 (toList!2909 (tail!6953 lm!1707))))))))))

(assert (=> b!4350349 (forall!9070 (toList!2910 (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707))))) lambda!139261)))

(declare-fun lt!1564156 () Unit!70923)

(assert (=> b!4350349 (= lt!1564156 lt!1564143)))

(assert (=> b!4350349 (forall!9070 (toList!2910 (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707))))) lambda!139261)))

(declare-fun lt!1564150 () Unit!70923)

(declare-fun Unit!71028 () Unit!70923)

(assert (=> b!4350349 (= lt!1564150 Unit!71028)))

(declare-fun res!1787110 () Bool)

(assert (=> b!4350349 (= res!1787110 (forall!9070 (_2!27406 (h!54395 (toList!2909 (tail!6953 lm!1707)))) lambda!139261))))

(assert (=> b!4350349 (=> (not res!1787110) (not e!2707219))))

(assert (=> b!4350349 e!2707219))

(declare-fun lt!1564142 () Unit!70923)

(declare-fun Unit!71029 () Unit!70923)

(assert (=> b!4350349 (= lt!1564142 Unit!71029)))

(assert (= (and d!1285009 c!739564) b!4350348))

(assert (= (and d!1285009 (not c!739564)) b!4350349))

(assert (= (and b!4350349 res!1787110) b!4350345))

(assert (= (or b!4350348 b!4350349) bm!302365))

(assert (= (or b!4350348 b!4350349) bm!302363))

(assert (= (or b!4350348 b!4350349) bm!302364))

(assert (= (and d!1285009 res!1787109) b!4350347))

(assert (= (and b!4350347 res!1787111) b!4350346))

(declare-fun m!4960437 () Bool)

(assert (=> d!1285009 m!4960437))

(declare-fun m!4960439 () Bool)

(assert (=> d!1285009 m!4960439))

(declare-fun m!4960441 () Bool)

(assert (=> b!4350349 m!4960441))

(declare-fun m!4960443 () Bool)

(assert (=> b!4350349 m!4960443))

(declare-fun m!4960445 () Bool)

(assert (=> b!4350349 m!4960445))

(declare-fun m!4960447 () Bool)

(assert (=> b!4350349 m!4960447))

(declare-fun m!4960449 () Bool)

(assert (=> b!4350349 m!4960449))

(assert (=> b!4350349 m!4959567))

(assert (=> b!4350349 m!4960443))

(assert (=> b!4350349 m!4960449))

(declare-fun m!4960451 () Bool)

(assert (=> b!4350349 m!4960451))

(assert (=> b!4350349 m!4959567))

(declare-fun m!4960453 () Bool)

(assert (=> b!4350349 m!4960453))

(declare-fun m!4960455 () Bool)

(assert (=> b!4350349 m!4960455))

(declare-fun m!4960457 () Bool)

(assert (=> b!4350349 m!4960457))

(assert (=> b!4350349 m!4960447))

(declare-fun m!4960459 () Bool)

(assert (=> b!4350349 m!4960459))

(assert (=> b!4350345 m!4960447))

(declare-fun m!4960461 () Bool)

(assert (=> b!4350346 m!4960461))

(declare-fun m!4960463 () Bool)

(assert (=> b!4350347 m!4960463))

(assert (=> bm!302365 m!4959567))

(declare-fun m!4960465 () Bool)

(assert (=> bm!302365 m!4960465))

(declare-fun m!4960467 () Bool)

(assert (=> bm!302363 m!4960467))

(declare-fun m!4960469 () Bool)

(assert (=> bm!302364 m!4960469))

(assert (=> b!4349828 d!1285009))

(declare-fun bs!628950 () Bool)

(declare-fun d!1285011 () Bool)

(assert (= bs!628950 (and d!1285011 d!1285007)))

(declare-fun lambda!139263 () Int)

(assert (=> bs!628950 (= lambda!139263 lambda!139258)))

(declare-fun bs!628951 () Bool)

(assert (= bs!628951 (and d!1285011 d!1284629)))

(assert (=> bs!628951 (= lambda!139263 lambda!139107)))

(declare-fun bs!628952 () Bool)

(assert (= bs!628952 (and d!1285011 start!420188)))

(assert (=> bs!628952 (= lambda!139263 lambda!139091)))

(declare-fun bs!628953 () Bool)

(assert (= bs!628953 (and d!1285011 d!1284577)))

(assert (=> bs!628953 (not (= lambda!139263 lambda!139094))))

(declare-fun bs!628954 () Bool)

(assert (= bs!628954 (and d!1285011 d!1284669)))

(assert (=> bs!628954 (= lambda!139263 lambda!139118)))

(declare-fun bs!628955 () Bool)

(assert (= bs!628955 (and d!1285011 d!1284679)))

(assert (=> bs!628955 (= lambda!139263 lambda!139119)))

(declare-fun bs!628956 () Bool)

(assert (= bs!628956 (and d!1285011 d!1284641)))

(assert (=> bs!628956 (= lambda!139263 lambda!139117)))

(declare-fun lt!1564157 () ListMap!2153)

(assert (=> d!1285011 (invariantList!660 (toList!2910 lt!1564157))))

(declare-fun e!2707220 () ListMap!2153)

(assert (=> d!1285011 (= lt!1564157 e!2707220)))

(declare-fun c!739565 () Bool)

(assert (=> d!1285011 (= c!739565 ((_ is Cons!48862) (t!355906 (toList!2909 (tail!6953 lm!1707)))))))

(assert (=> d!1285011 (forall!9069 (t!355906 (toList!2909 (tail!6953 lm!1707))) lambda!139263)))

(assert (=> d!1285011 (= (extractMap!522 (t!355906 (toList!2909 (tail!6953 lm!1707)))) lt!1564157)))

(declare-fun b!4350350 () Bool)

(assert (=> b!4350350 (= e!2707220 (addToMapMapFromBucket!167 (_2!27406 (h!54395 (t!355906 (toList!2909 (tail!6953 lm!1707))))) (extractMap!522 (t!355906 (t!355906 (toList!2909 (tail!6953 lm!1707)))))))))

(declare-fun b!4350351 () Bool)

(assert (=> b!4350351 (= e!2707220 (ListMap!2154 Nil!48861))))

(assert (= (and d!1285011 c!739565) b!4350350))

(assert (= (and d!1285011 (not c!739565)) b!4350351))

(declare-fun m!4960471 () Bool)

(assert (=> d!1285011 m!4960471))

(declare-fun m!4960473 () Bool)

(assert (=> d!1285011 m!4960473))

(declare-fun m!4960475 () Bool)

(assert (=> b!4350350 m!4960475))

(assert (=> b!4350350 m!4960475))

(declare-fun m!4960477 () Bool)

(assert (=> b!4350350 m!4960477))

(assert (=> b!4349828 d!1285011))

(declare-fun d!1285013 () Bool)

(declare-fun e!2707222 () Bool)

(assert (=> d!1285013 e!2707222))

(declare-fun res!1787112 () Bool)

(assert (=> d!1285013 (=> res!1787112 e!2707222)))

(declare-fun lt!1564158 () Bool)

(assert (=> d!1285013 (= res!1787112 (not lt!1564158))))

(declare-fun lt!1564160 () Bool)

(assert (=> d!1285013 (= lt!1564158 lt!1564160)))

(declare-fun lt!1564159 () Unit!70923)

(declare-fun e!2707221 () Unit!70923)

(assert (=> d!1285013 (= lt!1564159 e!2707221)))

(declare-fun c!739566 () Bool)

(assert (=> d!1285013 (= c!739566 lt!1564160)))

(assert (=> d!1285013 (= lt!1564160 (containsKey!633 (toList!2909 lt!1563637) (_1!27406 (tuple2!48225 hash!377 newBucket!200))))))

(assert (=> d!1285013 (= (contains!11026 lt!1563637 (_1!27406 (tuple2!48225 hash!377 newBucket!200))) lt!1564158)))

(declare-fun b!4350352 () Bool)

(declare-fun lt!1564161 () Unit!70923)

(assert (=> b!4350352 (= e!2707221 lt!1564161)))

(assert (=> b!4350352 (= lt!1564161 (lemmaContainsKeyImpliesGetValueByKeyDefined!331 (toList!2909 lt!1563637) (_1!27406 (tuple2!48225 hash!377 newBucket!200))))))

(assert (=> b!4350352 (isDefined!7728 (getValueByKey!418 (toList!2909 lt!1563637) (_1!27406 (tuple2!48225 hash!377 newBucket!200))))))

(declare-fun b!4350353 () Bool)

(declare-fun Unit!71030 () Unit!70923)

(assert (=> b!4350353 (= e!2707221 Unit!71030)))

(declare-fun b!4350354 () Bool)

(assert (=> b!4350354 (= e!2707222 (isDefined!7728 (getValueByKey!418 (toList!2909 lt!1563637) (_1!27406 (tuple2!48225 hash!377 newBucket!200)))))))

(assert (= (and d!1285013 c!739566) b!4350352))

(assert (= (and d!1285013 (not c!739566)) b!4350353))

(assert (= (and d!1285013 (not res!1787112)) b!4350354))

(declare-fun m!4960479 () Bool)

(assert (=> d!1285013 m!4960479))

(declare-fun m!4960481 () Bool)

(assert (=> b!4350352 m!4960481))

(assert (=> b!4350352 m!4959281))

(assert (=> b!4350352 m!4959281))

(declare-fun m!4960483 () Bool)

(assert (=> b!4350352 m!4960483))

(assert (=> b!4350354 m!4959281))

(assert (=> b!4350354 m!4959281))

(assert (=> b!4350354 m!4960483))

(assert (=> d!1284571 d!1285013))

(declare-fun b!4350355 () Bool)

(declare-fun e!2707223 () Option!10432)

(assert (=> b!4350355 (= e!2707223 (Some!10431 (_2!27406 (h!54395 lt!1563640))))))

(declare-fun e!2707224 () Option!10432)

(declare-fun b!4350357 () Bool)

(assert (=> b!4350357 (= e!2707224 (getValueByKey!418 (t!355906 lt!1563640) (_1!27406 (tuple2!48225 hash!377 newBucket!200))))))

(declare-fun b!4350356 () Bool)

(assert (=> b!4350356 (= e!2707223 e!2707224)))

(declare-fun c!739568 () Bool)

(assert (=> b!4350356 (= c!739568 (and ((_ is Cons!48862) lt!1563640) (not (= (_1!27406 (h!54395 lt!1563640)) (_1!27406 (tuple2!48225 hash!377 newBucket!200))))))))

(declare-fun b!4350358 () Bool)

(assert (=> b!4350358 (= e!2707224 None!10431)))

(declare-fun c!739567 () Bool)

(declare-fun d!1285015 () Bool)

(assert (=> d!1285015 (= c!739567 (and ((_ is Cons!48862) lt!1563640) (= (_1!27406 (h!54395 lt!1563640)) (_1!27406 (tuple2!48225 hash!377 newBucket!200)))))))

(assert (=> d!1285015 (= (getValueByKey!418 lt!1563640 (_1!27406 (tuple2!48225 hash!377 newBucket!200))) e!2707223)))

(assert (= (and d!1285015 c!739567) b!4350355))

(assert (= (and d!1285015 (not c!739567)) b!4350356))

(assert (= (and b!4350356 c!739568) b!4350357))

(assert (= (and b!4350356 (not c!739568)) b!4350358))

(declare-fun m!4960485 () Bool)

(assert (=> b!4350357 m!4960485))

(assert (=> d!1284571 d!1285015))

(declare-fun d!1285017 () Bool)

(assert (=> d!1285017 (= (getValueByKey!418 lt!1563640 (_1!27406 (tuple2!48225 hash!377 newBucket!200))) (Some!10431 (_2!27406 (tuple2!48225 hash!377 newBucket!200))))))

(declare-fun lt!1564164 () Unit!70923)

(declare-fun choose!26759 (List!48986 (_ BitVec 64) List!48985) Unit!70923)

(assert (=> d!1285017 (= lt!1564164 (choose!26759 lt!1563640 (_1!27406 (tuple2!48225 hash!377 newBucket!200)) (_2!27406 (tuple2!48225 hash!377 newBucket!200))))))

(declare-fun e!2707227 () Bool)

(assert (=> d!1285017 e!2707227))

(declare-fun res!1787117 () Bool)

(assert (=> d!1285017 (=> (not res!1787117) (not e!2707227))))

(assert (=> d!1285017 (= res!1787117 (isStrictlySorted!86 lt!1563640))))

(assert (=> d!1285017 (= (lemmaContainsTupThenGetReturnValue!193 lt!1563640 (_1!27406 (tuple2!48225 hash!377 newBucket!200)) (_2!27406 (tuple2!48225 hash!377 newBucket!200))) lt!1564164)))

(declare-fun b!4350363 () Bool)

(declare-fun res!1787118 () Bool)

(assert (=> b!4350363 (=> (not res!1787118) (not e!2707227))))

(assert (=> b!4350363 (= res!1787118 (containsKey!633 lt!1563640 (_1!27406 (tuple2!48225 hash!377 newBucket!200))))))

(declare-fun b!4350364 () Bool)

(assert (=> b!4350364 (= e!2707227 (contains!11025 lt!1563640 (tuple2!48225 (_1!27406 (tuple2!48225 hash!377 newBucket!200)) (_2!27406 (tuple2!48225 hash!377 newBucket!200)))))))

(assert (= (and d!1285017 res!1787117) b!4350363))

(assert (= (and b!4350363 res!1787118) b!4350364))

(assert (=> d!1285017 m!4959275))

(declare-fun m!4960487 () Bool)

(assert (=> d!1285017 m!4960487))

(declare-fun m!4960489 () Bool)

(assert (=> d!1285017 m!4960489))

(declare-fun m!4960491 () Bool)

(assert (=> b!4350363 m!4960491))

(declare-fun m!4960493 () Bool)

(assert (=> b!4350364 m!4960493))

(assert (=> d!1284571 d!1285017))

(declare-fun b!4350385 () Bool)

(declare-fun e!2707239 () List!48986)

(declare-fun call!302379 () List!48986)

(assert (=> b!4350385 (= e!2707239 call!302379)))

(declare-fun e!2707242 () List!48986)

(declare-fun bm!302372 () Bool)

(declare-fun c!739578 () Bool)

(declare-fun $colon$colon!679 (List!48986 tuple2!48224) List!48986)

(assert (=> bm!302372 (= call!302379 ($colon$colon!679 e!2707242 (ite c!739578 (h!54395 (toList!2909 lm!1707)) (tuple2!48225 (_1!27406 (tuple2!48225 hash!377 newBucket!200)) (_2!27406 (tuple2!48225 hash!377 newBucket!200))))))))

(declare-fun c!739577 () Bool)

(assert (=> bm!302372 (= c!739577 c!739578)))

(declare-fun b!4350386 () Bool)

(assert (=> b!4350386 (= e!2707242 (insertStrictlySorted!116 (t!355906 (toList!2909 lm!1707)) (_1!27406 (tuple2!48225 hash!377 newBucket!200)) (_2!27406 (tuple2!48225 hash!377 newBucket!200))))))

(declare-fun d!1285019 () Bool)

(declare-fun e!2707241 () Bool)

(assert (=> d!1285019 e!2707241))

(declare-fun res!1787124 () Bool)

(assert (=> d!1285019 (=> (not res!1787124) (not e!2707241))))

(declare-fun lt!1564167 () List!48986)

(assert (=> d!1285019 (= res!1787124 (isStrictlySorted!86 lt!1564167))))

(assert (=> d!1285019 (= lt!1564167 e!2707239)))

(assert (=> d!1285019 (= c!739578 (and ((_ is Cons!48862) (toList!2909 lm!1707)) (bvslt (_1!27406 (h!54395 (toList!2909 lm!1707))) (_1!27406 (tuple2!48225 hash!377 newBucket!200)))))))

(assert (=> d!1285019 (isStrictlySorted!86 (toList!2909 lm!1707))))

(assert (=> d!1285019 (= (insertStrictlySorted!116 (toList!2909 lm!1707) (_1!27406 (tuple2!48225 hash!377 newBucket!200)) (_2!27406 (tuple2!48225 hash!377 newBucket!200))) lt!1564167)))

(declare-fun bm!302373 () Bool)

(declare-fun call!302378 () List!48986)

(declare-fun call!302377 () List!48986)

(assert (=> bm!302373 (= call!302378 call!302377)))

(declare-fun b!4350387 () Bool)

(declare-fun e!2707238 () List!48986)

(assert (=> b!4350387 (= e!2707238 call!302378)))

(declare-fun b!4350388 () Bool)

(declare-fun res!1787123 () Bool)

(assert (=> b!4350388 (=> (not res!1787123) (not e!2707241))))

(assert (=> b!4350388 (= res!1787123 (containsKey!633 lt!1564167 (_1!27406 (tuple2!48225 hash!377 newBucket!200))))))

(declare-fun b!4350389 () Bool)

(declare-fun e!2707240 () List!48986)

(assert (=> b!4350389 (= e!2707240 call!302377)))

(declare-fun c!739579 () Bool)

(declare-fun b!4350390 () Bool)

(assert (=> b!4350390 (= c!739579 (and ((_ is Cons!48862) (toList!2909 lm!1707)) (bvsgt (_1!27406 (h!54395 (toList!2909 lm!1707))) (_1!27406 (tuple2!48225 hash!377 newBucket!200)))))))

(assert (=> b!4350390 (= e!2707240 e!2707238)))

(declare-fun b!4350391 () Bool)

(declare-fun c!739580 () Bool)

(assert (=> b!4350391 (= e!2707242 (ite c!739580 (t!355906 (toList!2909 lm!1707)) (ite c!739579 (Cons!48862 (h!54395 (toList!2909 lm!1707)) (t!355906 (toList!2909 lm!1707))) Nil!48862)))))

(declare-fun b!4350392 () Bool)

(assert (=> b!4350392 (= e!2707241 (contains!11025 lt!1564167 (tuple2!48225 (_1!27406 (tuple2!48225 hash!377 newBucket!200)) (_2!27406 (tuple2!48225 hash!377 newBucket!200)))))))

(declare-fun bm!302374 () Bool)

(assert (=> bm!302374 (= call!302377 call!302379)))

(declare-fun b!4350393 () Bool)

(assert (=> b!4350393 (= e!2707238 call!302378)))

(declare-fun b!4350394 () Bool)

(assert (=> b!4350394 (= e!2707239 e!2707240)))

(assert (=> b!4350394 (= c!739580 (and ((_ is Cons!48862) (toList!2909 lm!1707)) (= (_1!27406 (h!54395 (toList!2909 lm!1707))) (_1!27406 (tuple2!48225 hash!377 newBucket!200)))))))

(assert (= (and d!1285019 c!739578) b!4350385))

(assert (= (and d!1285019 (not c!739578)) b!4350394))

(assert (= (and b!4350394 c!739580) b!4350389))

(assert (= (and b!4350394 (not c!739580)) b!4350390))

(assert (= (and b!4350390 c!739579) b!4350387))

(assert (= (and b!4350390 (not c!739579)) b!4350393))

(assert (= (or b!4350387 b!4350393) bm!302373))

(assert (= (or b!4350389 bm!302373) bm!302374))

(assert (= (or b!4350385 bm!302374) bm!302372))

(assert (= (and bm!302372 c!739577) b!4350386))

(assert (= (and bm!302372 (not c!739577)) b!4350391))

(assert (= (and d!1285019 res!1787124) b!4350388))

(assert (= (and b!4350388 res!1787123) b!4350392))

(declare-fun m!4960495 () Bool)

(assert (=> b!4350388 m!4960495))

(declare-fun m!4960497 () Bool)

(assert (=> b!4350386 m!4960497))

(declare-fun m!4960499 () Bool)

(assert (=> b!4350392 m!4960499))

(declare-fun m!4960501 () Bool)

(assert (=> bm!302372 m!4960501))

(declare-fun m!4960503 () Bool)

(assert (=> d!1285019 m!4960503))

(assert (=> d!1285019 m!4959335))

(assert (=> d!1284571 d!1285019))

(assert (=> b!4349819 d!1284883))

(assert (=> d!1284667 d!1284985))

(declare-fun d!1285021 () Bool)

(declare-fun res!1787125 () Bool)

(declare-fun e!2707243 () Bool)

(assert (=> d!1285021 (=> res!1787125 e!2707243)))

(assert (=> d!1285021 (= res!1787125 (and ((_ is Cons!48861) (t!355905 (apply!11315 lm!1707 (_1!27406 (h!54395 (toList!2909 lm!1707)))))) (= (_1!27405 (h!54394 (t!355905 (apply!11315 lm!1707 (_1!27406 (h!54395 (toList!2909 lm!1707))))))) key!3918)))))

(assert (=> d!1285021 (= (containsKey!630 (t!355905 (apply!11315 lm!1707 (_1!27406 (h!54395 (toList!2909 lm!1707))))) key!3918) e!2707243)))

(declare-fun b!4350395 () Bool)

(declare-fun e!2707244 () Bool)

(assert (=> b!4350395 (= e!2707243 e!2707244)))

(declare-fun res!1787126 () Bool)

(assert (=> b!4350395 (=> (not res!1787126) (not e!2707244))))

(assert (=> b!4350395 (= res!1787126 ((_ is Cons!48861) (t!355905 (apply!11315 lm!1707 (_1!27406 (h!54395 (toList!2909 lm!1707)))))))))

(declare-fun b!4350396 () Bool)

(assert (=> b!4350396 (= e!2707244 (containsKey!630 (t!355905 (t!355905 (apply!11315 lm!1707 (_1!27406 (h!54395 (toList!2909 lm!1707)))))) key!3918))))

(assert (= (and d!1285021 (not res!1787125)) b!4350395))

(assert (= (and b!4350395 res!1787126) b!4350396))

(declare-fun m!4960505 () Bool)

(assert (=> b!4350396 m!4960505))

(assert (=> b!4349769 d!1285021))

(assert (=> d!1284677 d!1284857))

(declare-fun d!1285023 () Bool)

(declare-fun isEmpty!28175 (Option!10432) Bool)

(assert (=> d!1285023 (= (isDefined!7728 (getValueByKey!418 (toList!2909 lm!1707) hash!377)) (not (isEmpty!28175 (getValueByKey!418 (toList!2909 lm!1707) hash!377))))))

(declare-fun bs!628957 () Bool)

(assert (= bs!628957 d!1285023))

(assert (=> bs!628957 m!4959317))

(declare-fun m!4960507 () Bool)

(assert (=> bs!628957 m!4960507))

(assert (=> b!4349681 d!1285023))

(assert (=> b!4349681 d!1285003))

(declare-fun d!1285025 () Bool)

(declare-fun res!1787131 () Bool)

(declare-fun e!2707249 () Bool)

(assert (=> d!1285025 (=> res!1787131 e!2707249)))

(assert (=> d!1285025 (= res!1787131 (and ((_ is Cons!48862) (toList!2909 lm!1707)) (= (_1!27406 (h!54395 (toList!2909 lm!1707))) hash!377)))))

(assert (=> d!1285025 (= (containsKey!633 (toList!2909 lm!1707) hash!377) e!2707249)))

(declare-fun b!4350401 () Bool)

(declare-fun e!2707250 () Bool)

(assert (=> b!4350401 (= e!2707249 e!2707250)))

(declare-fun res!1787132 () Bool)

(assert (=> b!4350401 (=> (not res!1787132) (not e!2707250))))

(assert (=> b!4350401 (= res!1787132 (and (or (not ((_ is Cons!48862) (toList!2909 lm!1707))) (bvsle (_1!27406 (h!54395 (toList!2909 lm!1707))) hash!377)) ((_ is Cons!48862) (toList!2909 lm!1707)) (bvslt (_1!27406 (h!54395 (toList!2909 lm!1707))) hash!377)))))

(declare-fun b!4350402 () Bool)

(assert (=> b!4350402 (= e!2707250 (containsKey!633 (t!355906 (toList!2909 lm!1707)) hash!377))))

(assert (= (and d!1285025 (not res!1787131)) b!4350401))

(assert (= (and b!4350401 res!1787132) b!4350402))

(declare-fun m!4960509 () Bool)

(assert (=> b!4350402 m!4960509))

(assert (=> d!1284595 d!1285025))

(declare-fun d!1285027 () Bool)

(declare-fun res!1787133 () Bool)

(declare-fun e!2707251 () Bool)

(assert (=> d!1285027 (=> res!1787133 e!2707251)))

(assert (=> d!1285027 (= res!1787133 ((_ is Nil!48862) (t!355906 (toList!2909 lm!1707))))))

(assert (=> d!1285027 (= (forall!9069 (t!355906 (toList!2909 lm!1707)) lambda!139091) e!2707251)))

(declare-fun b!4350403 () Bool)

(declare-fun e!2707252 () Bool)

(assert (=> b!4350403 (= e!2707251 e!2707252)))

(declare-fun res!1787134 () Bool)

(assert (=> b!4350403 (=> (not res!1787134) (not e!2707252))))

(assert (=> b!4350403 (= res!1787134 (dynLambda!20608 lambda!139091 (h!54395 (t!355906 (toList!2909 lm!1707)))))))

(declare-fun b!4350404 () Bool)

(assert (=> b!4350404 (= e!2707252 (forall!9069 (t!355906 (t!355906 (toList!2909 lm!1707))) lambda!139091))))

(assert (= (and d!1285027 (not res!1787133)) b!4350403))

(assert (= (and b!4350403 res!1787134) b!4350404))

(declare-fun b_lambda!130515 () Bool)

(assert (=> (not b_lambda!130515) (not b!4350403)))

(declare-fun m!4960511 () Bool)

(assert (=> b!4350403 m!4960511))

(declare-fun m!4960513 () Bool)

(assert (=> b!4350404 m!4960513))

(assert (=> b!4349631 d!1285027))

(declare-fun d!1285029 () Bool)

(assert (=> d!1285029 (= (tail!6955 (toList!2909 lm!1707)) (t!355906 (toList!2909 lm!1707)))))

(assert (=> d!1284671 d!1285029))

(declare-fun d!1285031 () Bool)

(assert (=> d!1285031 (= (invariantList!660 (toList!2910 lt!1563787)) (noDuplicatedKeys!111 (toList!2910 lt!1563787)))))

(declare-fun bs!628958 () Bool)

(assert (= bs!628958 d!1285031))

(declare-fun m!4960515 () Bool)

(assert (=> bs!628958 m!4960515))

(assert (=> d!1284669 d!1285031))

(declare-fun d!1285033 () Bool)

(declare-fun res!1787135 () Bool)

(declare-fun e!2707253 () Bool)

(assert (=> d!1285033 (=> res!1787135 e!2707253)))

(assert (=> d!1285033 (= res!1787135 ((_ is Nil!48862) (toList!2909 (tail!6953 lm!1707))))))

(assert (=> d!1285033 (= (forall!9069 (toList!2909 (tail!6953 lm!1707)) lambda!139118) e!2707253)))

(declare-fun b!4350405 () Bool)

(declare-fun e!2707254 () Bool)

(assert (=> b!4350405 (= e!2707253 e!2707254)))

(declare-fun res!1787136 () Bool)

(assert (=> b!4350405 (=> (not res!1787136) (not e!2707254))))

(assert (=> b!4350405 (= res!1787136 (dynLambda!20608 lambda!139118 (h!54395 (toList!2909 (tail!6953 lm!1707)))))))

(declare-fun b!4350406 () Bool)

(assert (=> b!4350406 (= e!2707254 (forall!9069 (t!355906 (toList!2909 (tail!6953 lm!1707))) lambda!139118))))

(assert (= (and d!1285033 (not res!1787135)) b!4350405))

(assert (= (and b!4350405 res!1787136) b!4350406))

(declare-fun b_lambda!130517 () Bool)

(assert (=> (not b_lambda!130517) (not b!4350405)))

(declare-fun m!4960517 () Bool)

(assert (=> b!4350405 m!4960517))

(declare-fun m!4960519 () Bool)

(assert (=> b!4350406 m!4960519))

(assert (=> d!1284669 d!1285033))

(assert (=> b!4349651 d!1285003))

(declare-fun d!1285035 () Bool)

(assert (=> d!1285035 (isDefined!7728 (getValueByKey!418 (toList!2909 lm!1707) hash!377))))

(declare-fun lt!1564170 () Unit!70923)

(declare-fun choose!26760 (List!48986 (_ BitVec 64)) Unit!70923)

(assert (=> d!1285035 (= lt!1564170 (choose!26760 (toList!2909 lm!1707) hash!377))))

(declare-fun e!2707257 () Bool)

(assert (=> d!1285035 e!2707257))

(declare-fun res!1787139 () Bool)

(assert (=> d!1285035 (=> (not res!1787139) (not e!2707257))))

(assert (=> d!1285035 (= res!1787139 (isStrictlySorted!86 (toList!2909 lm!1707)))))

(assert (=> d!1285035 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!331 (toList!2909 lm!1707) hash!377) lt!1564170)))

(declare-fun b!4350409 () Bool)

(assert (=> b!4350409 (= e!2707257 (containsKey!633 (toList!2909 lm!1707) hash!377))))

(assert (= (and d!1285035 res!1787139) b!4350409))

(assert (=> d!1285035 m!4959317))

(assert (=> d!1285035 m!4959317))

(assert (=> d!1285035 m!4959363))

(declare-fun m!4960521 () Bool)

(assert (=> d!1285035 m!4960521))

(assert (=> d!1285035 m!4959335))

(assert (=> b!4350409 m!4959359))

(assert (=> b!4349679 d!1285035))

(assert (=> b!4349679 d!1285023))

(assert (=> b!4349679 d!1285003))

(declare-fun d!1285037 () Bool)

(declare-fun res!1787140 () Bool)

(declare-fun e!2707258 () Bool)

(assert (=> d!1285037 (=> res!1787140 e!2707258)))

(assert (=> d!1285037 (= res!1787140 (and ((_ is Cons!48861) (t!355905 (_2!27406 (h!54395 (toList!2909 lm!1707))))) (= (_1!27405 (h!54394 (t!355905 (_2!27406 (h!54395 (toList!2909 lm!1707)))))) key!3918)))))

(assert (=> d!1285037 (= (containsKey!630 (t!355905 (_2!27406 (h!54395 (toList!2909 lm!1707)))) key!3918) e!2707258)))

(declare-fun b!4350410 () Bool)

(declare-fun e!2707259 () Bool)

(assert (=> b!4350410 (= e!2707258 e!2707259)))

(declare-fun res!1787141 () Bool)

(assert (=> b!4350410 (=> (not res!1787141) (not e!2707259))))

(assert (=> b!4350410 (= res!1787141 ((_ is Cons!48861) (t!355905 (_2!27406 (h!54395 (toList!2909 lm!1707))))))))

(declare-fun b!4350411 () Bool)

(assert (=> b!4350411 (= e!2707259 (containsKey!630 (t!355905 (t!355905 (_2!27406 (h!54395 (toList!2909 lm!1707))))) key!3918))))

(assert (= (and d!1285037 (not res!1787140)) b!4350410))

(assert (= (and b!4350410 res!1787141) b!4350411))

(declare-fun m!4960523 () Bool)

(assert (=> b!4350411 m!4960523))

(assert (=> b!4349831 d!1285037))

(declare-fun e!2707260 () Bool)

(declare-fun b!4350412 () Bool)

(declare-fun tp!1329805 () Bool)

(assert (=> b!4350412 (= e!2707260 (and tp_is_empty!25089 tp_is_empty!25091 tp!1329805))))

(assert (=> b!4349852 (= tp!1329800 e!2707260)))

(assert (= (and b!4349852 ((_ is Cons!48861) (t!355905 (t!355905 newBucket!200)))) b!4350412))

(declare-fun b!4350413 () Bool)

(declare-fun tp!1329806 () Bool)

(declare-fun e!2707261 () Bool)

(assert (=> b!4350413 (= e!2707261 (and tp_is_empty!25089 tp_is_empty!25091 tp!1329806))))

(assert (=> b!4349847 (= tp!1329796 e!2707261)))

(assert (= (and b!4349847 ((_ is Cons!48861) (_2!27406 (h!54395 (toList!2909 lm!1707))))) b!4350413))

(declare-fun b!4350414 () Bool)

(declare-fun e!2707262 () Bool)

(declare-fun tp!1329807 () Bool)

(declare-fun tp!1329808 () Bool)

(assert (=> b!4350414 (= e!2707262 (and tp!1329807 tp!1329808))))

(assert (=> b!4349847 (= tp!1329797 e!2707262)))

(assert (= (and b!4349847 ((_ is Cons!48862) (t!355906 (toList!2909 lm!1707)))) b!4350414))

(declare-fun b_lambda!130519 () Bool)

(assert (= b_lambda!130481 (or start!420188 b_lambda!130519)))

(declare-fun bs!628959 () Bool)

(declare-fun d!1285039 () Bool)

(assert (= bs!628959 (and d!1285039 start!420188)))

(assert (=> bs!628959 (= (dynLambda!20608 lambda!139091 (h!54395 (toList!2909 (+!588 lm!1707 (tuple2!48225 hash!377 newBucket!200))))) (noDuplicateKeys!463 (_2!27406 (h!54395 (toList!2909 (+!588 lm!1707 (tuple2!48225 hash!377 newBucket!200)))))))))

(declare-fun m!4960525 () Bool)

(assert (=> bs!628959 m!4960525))

(assert (=> b!4350217 d!1285039))

(declare-fun b_lambda!130521 () Bool)

(assert (= b_lambda!130471 (or d!1284641 b_lambda!130521)))

(declare-fun bs!628960 () Bool)

(declare-fun d!1285041 () Bool)

(assert (= bs!628960 (and d!1285041 d!1284641)))

(assert (=> bs!628960 (= (dynLambda!20608 lambda!139117 (h!54395 (t!355906 (toList!2909 lm!1707)))) (noDuplicateKeys!463 (_2!27406 (h!54395 (t!355906 (toList!2909 lm!1707))))))))

(assert (=> bs!628960 m!4960397))

(assert (=> b!4350080 d!1285041))

(declare-fun b_lambda!130523 () Bool)

(assert (= b_lambda!130473 (or d!1284679 b_lambda!130523)))

(declare-fun bs!628961 () Bool)

(declare-fun d!1285043 () Bool)

(assert (= bs!628961 (and d!1285043 d!1284679)))

(assert (=> bs!628961 (= (dynLambda!20608 lambda!139119 (h!54395 (toList!2909 lm!1707))) (noDuplicateKeys!463 (_2!27406 (h!54395 (toList!2909 lm!1707)))))))

(assert (=> bs!628961 m!4959487))

(assert (=> b!4350102 d!1285043))

(declare-fun b_lambda!130525 () Bool)

(assert (= b_lambda!130517 (or d!1284669 b_lambda!130525)))

(declare-fun bs!628962 () Bool)

(declare-fun d!1285045 () Bool)

(assert (= bs!628962 (and d!1285045 d!1284669)))

(assert (=> bs!628962 (= (dynLambda!20608 lambda!139118 (h!54395 (toList!2909 (tail!6953 lm!1707)))) (noDuplicateKeys!463 (_2!27406 (h!54395 (toList!2909 (tail!6953 lm!1707))))))))

(assert (=> bs!628962 m!4960439))

(assert (=> b!4350405 d!1285045))

(declare-fun b_lambda!130527 () Bool)

(assert (= b_lambda!130511 (or start!420188 b_lambda!130527)))

(assert (=> d!1284989 d!1284687))

(declare-fun b_lambda!130529 () Bool)

(assert (= b_lambda!130475 (or start!420188 b_lambda!130529)))

(declare-fun bs!628963 () Bool)

(declare-fun d!1285047 () Bool)

(assert (= bs!628963 (and d!1285047 start!420188)))

(assert (=> bs!628963 (= (dynLambda!20608 lambda!139091 (h!54395 (t!355906 (toList!2909 lt!1563610)))) (noDuplicateKeys!463 (_2!27406 (h!54395 (t!355906 (toList!2909 lt!1563610))))))))

(declare-fun m!4960527 () Bool)

(assert (=> bs!628963 m!4960527))

(assert (=> b!4350104 d!1285047))

(declare-fun b_lambda!130531 () Bool)

(assert (= b_lambda!130485 (or d!1284599 b_lambda!130531)))

(declare-fun bs!628964 () Bool)

(declare-fun d!1285049 () Bool)

(assert (= bs!628964 (and d!1285049 d!1284599)))

(assert (=> bs!628964 (= (dynLambda!20611 lambda!139103 (h!54394 newBucket!200)) (= (hash!1466 hashF!1247 (_1!27405 (h!54394 newBucket!200))) hash!377))))

(declare-fun m!4960529 () Bool)

(assert (=> bs!628964 m!4960529))

(assert (=> b!4350240 d!1285049))

(declare-fun b_lambda!130533 () Bool)

(assert (= b_lambda!130513 (or d!1284629 b_lambda!130533)))

(declare-fun bs!628965 () Bool)

(declare-fun d!1285051 () Bool)

(assert (= bs!628965 (and d!1285051 d!1284629)))

(assert (=> bs!628965 (= (dynLambda!20608 lambda!139107 (h!54395 (toList!2909 lm!1707))) (noDuplicateKeys!463 (_2!27406 (h!54395 (toList!2909 lm!1707)))))))

(assert (=> bs!628965 m!4959487))

(assert (=> b!4350332 d!1285051))

(declare-fun b_lambda!130535 () Bool)

(assert (= b_lambda!130515 (or start!420188 b_lambda!130535)))

(declare-fun bs!628966 () Bool)

(declare-fun d!1285053 () Bool)

(assert (= bs!628966 (and d!1285053 start!420188)))

(assert (=> bs!628966 (= (dynLambda!20608 lambda!139091 (h!54395 (t!355906 (toList!2909 lm!1707)))) (noDuplicateKeys!463 (_2!27406 (h!54395 (t!355906 (toList!2909 lm!1707))))))))

(assert (=> bs!628966 m!4960397))

(assert (=> b!4350403 d!1285053))

(declare-fun b_lambda!130537 () Bool)

(assert (= b_lambda!130509 (or d!1284577 b_lambda!130537)))

(declare-fun bs!628967 () Bool)

(declare-fun d!1285055 () Bool)

(assert (= bs!628967 (and d!1285055 d!1284577)))

(assert (=> bs!628967 (= (dynLambda!20608 lambda!139094 (h!54395 (toList!2909 lm!1707))) (allKeysSameHash!421 (_2!27406 (h!54395 (toList!2909 lm!1707))) (_1!27406 (h!54395 (toList!2909 lm!1707))) hashF!1247))))

(declare-fun m!4960531 () Bool)

(assert (=> bs!628967 m!4960531))

(assert (=> b!4350322 d!1285055))

(check-sat (not b_lambda!130451) (not b!4350329) (not b!4350349) (not b!4350350) (not b!4350195) (not b!4350414) (not bs!628964) (not b!4350295) (not b!4350215) (not b!4350261) (not b!4350081) (not d!1284759) (not b!4350339) (not d!1284829) (not d!1284865) (not b!4350273) (not d!1284923) (not b!4350192) (not d!1284873) (not bs!628959) (not b_lambda!130525) (not d!1284803) (not bs!628963) (not b!4350388) (not d!1285011) (not b!4350404) (not b!4350293) (not d!1284765) (not b!4350333) (not bm!302365) (not b!4350386) (not bs!628960) (not b!4350078) (not b_lambda!130529) (not b!4350250) (not d!1284977) (not d!1284881) (not d!1284911) (not b!4350325) (not b!4350363) (not b_lambda!130519) (not d!1284905) (not b!4350260) (not b!4350323) (not d!1284817) (not bs!628962) (not d!1284917) (not d!1284993) (not b!4350294) (not bm!302372) (not d!1285031) (not d!1285009) (not bs!628967) (not d!1284807) (not d!1284823) (not bs!628965) (not d!1285005) (not bm!302344) (not b_lambda!130455) (not b!4350402) (not b!4350227) (not b!4350354) (not b!4350216) (not b!4350143) (not b!4350228) (not b!4350062) (not d!1284997) (not d!1285035) (not d!1284851) (not b!4350263) (not b!4350175) (not b!4350352) (not d!1285017) (not b!4350413) (not b!4350343) (not d!1284921) (not d!1284915) (not b!4350177) (not b!4350223) (not b!4350142) (not d!1284929) (not bm!302363) (not d!1284853) (not bs!628966) (not b!4350287) (not b!4350345) (not d!1284907) (not b!4350346) (not b!4350396) (not b!4350357) (not b!4350105) (not d!1284883) (not d!1284761) (not b!4350254) (not b!4350103) (not d!1284821) (not d!1284801) (not bs!628961) (not b!4350321) (not b!4350276) (not b!4350205) (not b_lambda!130527) (not b_lambda!130533) (not b!4350065) (not d!1284815) (not b_lambda!130523) (not b!4350234) (not b!4350176) (not bm!302361) (not b!4350364) (not b_lambda!130453) (not b!4350145) (not b!4350262) (not d!1284855) (not b!4350336) (not b!4350232) (not d!1285019) (not b!4350327) tp_is_empty!25091 (not b!4350063) (not b!4350241) (not b!4350340) (not b!4350279) (not b!4350158) (not b!4350412) (not b_lambda!130521) (not b!4350392) (not b!4350409) (not b!4350096) (not b_lambda!130531) (not b!4349968) (not b!4350342) (not b!4350296) (not b!4349962) (not b!4350264) (not b_lambda!130535) (not bm!302342) (not b!4350231) (not b!4350331) (not b!4350338) (not b!4350141) (not b!4350243) (not d!1285013) (not b!4350225) (not d!1284809) (not b!4350144) (not b!4350242) (not bm!302360) (not b_lambda!130457) (not b!4350411) (not d!1284837) (not bm!302343) (not b!4350226) (not b!4350328) (not d!1284987) (not d!1285023) (not b!4350292) (not b!4350235) (not b!4350197) (not b!4350194) (not b!4350218) (not b!4350193) (not d!1284943) (not b_lambda!130537) (not d!1284831) (not bm!302364) (not b!4350160) (not bm!302362) (not b!4350406) (not b!4350233) (not d!1284835) tp_is_empty!25089 (not b!4350347) (not b!4350092) (not d!1284939) (not d!1285007) (not b!4350320) (not b!4350061))
(check-sat)
