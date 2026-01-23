; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!423358 () Bool)

(assert start!423358)

(declare-fun b!4365629 () Bool)

(declare-fun res!1795802 () Bool)

(declare-fun e!2717006 () Bool)

(assert (=> b!4365629 (=> (not res!1795802) (not e!2717006))))

(declare-datatypes ((V!10659 0))(
  ( (V!10660 (val!16601 Int)) )
))
(declare-datatypes ((K!10413 0))(
  ( (K!10414 (val!16602 Int)) )
))
(declare-datatypes ((tuple2!48522 0))(
  ( (tuple2!48523 (_1!27555 K!10413) (_2!27555 V!10659)) )
))
(declare-datatypes ((List!49175 0))(
  ( (Nil!49051) (Cons!49051 (h!54624 tuple2!48522) (t!356095 List!49175)) )
))
(declare-datatypes ((tuple2!48524 0))(
  ( (tuple2!48525 (_1!27556 (_ BitVec 64)) (_2!27556 List!49175)) )
))
(declare-datatypes ((List!49176 0))(
  ( (Nil!49052) (Cons!49052 (h!54625 tuple2!48524) (t!356096 List!49176)) )
))
(declare-datatypes ((ListLongMap!1709 0))(
  ( (ListLongMap!1710 (toList!3059 List!49176)) )
))
(declare-fun lm!1707 () ListLongMap!1709)

(declare-fun key!3918 () K!10413)

(declare-datatypes ((ListMap!2303 0))(
  ( (ListMap!2304 (toList!3060 List!49175)) )
))
(declare-fun contains!11326 (ListMap!2303 K!10413) Bool)

(declare-fun extractMap!597 (List!49176) ListMap!2303)

(assert (=> b!4365629 (= res!1795802 (contains!11326 (extractMap!597 (toList!3059 lm!1707)) key!3918))))

(declare-fun b!4365630 () Bool)

(declare-fun res!1795801 () Bool)

(assert (=> b!4365630 (=> (not res!1795801) (not e!2717006))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!11327 (ListLongMap!1709 (_ BitVec 64)) Bool)

(assert (=> b!4365630 (= res!1795801 (contains!11327 lm!1707 hash!377))))

(declare-fun e!2717003 () Bool)

(declare-fun tp_is_empty!25389 () Bool)

(declare-fun tp_is_empty!25391 () Bool)

(declare-fun b!4365631 () Bool)

(declare-fun tp!1330648 () Bool)

(assert (=> b!4365631 (= e!2717003 (and tp_is_empty!25389 tp_is_empty!25391 tp!1330648))))

(declare-fun b!4365632 () Bool)

(declare-fun res!1795800 () Bool)

(assert (=> b!4365632 (=> (not res!1795800) (not e!2717006))))

(declare-datatypes ((Hashable!4930 0))(
  ( (HashableExt!4929 (__x!30633 Int)) )
))
(declare-fun hashF!1247 () Hashable!4930)

(declare-fun hash!1682 (Hashable!4930 K!10413) (_ BitVec 64))

(assert (=> b!4365632 (= res!1795800 (= (hash!1682 hashF!1247 key!3918) hash!377))))

(declare-fun b!4365633 () Bool)

(declare-fun lt!1578553 () List!49175)

(declare-fun e!2717005 () Bool)

(declare-datatypes ((Option!10510 0))(
  ( (None!10509) (Some!10509 (v!43443 List!49175)) )
))
(declare-fun getValueByKey!496 (List!49176 (_ BitVec 64)) Option!10510)

(assert (=> b!4365633 (= e!2717005 (not (= (getValueByKey!496 (toList!3059 lm!1707) hash!377) (Some!10509 lt!1578553))))))

(declare-fun res!1795798 () Bool)

(assert (=> start!423358 (=> (not res!1795798) (not e!2717006))))

(declare-fun lambda!142674 () Int)

(declare-fun forall!9197 (List!49176 Int) Bool)

(assert (=> start!423358 (= res!1795798 (forall!9197 (toList!3059 lm!1707) lambda!142674))))

(assert (=> start!423358 e!2717006))

(assert (=> start!423358 e!2717003))

(assert (=> start!423358 true))

(declare-fun e!2717004 () Bool)

(declare-fun inv!64600 (ListLongMap!1709) Bool)

(assert (=> start!423358 (and (inv!64600 lm!1707) e!2717004)))

(assert (=> start!423358 tp_is_empty!25389))

(declare-fun b!4365634 () Bool)

(declare-fun res!1795804 () Bool)

(assert (=> b!4365634 (=> (not res!1795804) (not e!2717006))))

(declare-fun allKeysSameHashInMap!642 (ListLongMap!1709 Hashable!4930) Bool)

(assert (=> b!4365634 (= res!1795804 (allKeysSameHashInMap!642 lm!1707 hashF!1247))))

(declare-fun b!4365635 () Bool)

(declare-fun res!1795799 () Bool)

(assert (=> b!4365635 (=> (not res!1795799) (not e!2717006))))

(declare-fun newBucket!200 () List!49175)

(declare-fun allKeysSameHash!496 (List!49175 (_ BitVec 64) Hashable!4930) Bool)

(assert (=> b!4365635 (= res!1795799 (allKeysSameHash!496 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4365636 () Bool)

(assert (=> b!4365636 (= e!2717006 e!2717005)))

(declare-fun res!1795803 () Bool)

(assert (=> b!4365636 (=> res!1795803 e!2717005)))

(declare-fun isStrictlySorted!125 (List!49176) Bool)

(assert (=> b!4365636 (= res!1795803 (not (isStrictlySorted!125 (toList!3059 lm!1707))))))

(declare-fun apply!11390 (ListLongMap!1709 (_ BitVec 64)) List!49175)

(assert (=> b!4365636 (= lt!1578553 (apply!11390 lm!1707 hash!377))))

(declare-fun b!4365637 () Bool)

(declare-fun tp!1330647 () Bool)

(assert (=> b!4365637 (= e!2717004 tp!1330647)))

(assert (= (and start!423358 res!1795798) b!4365634))

(assert (= (and b!4365634 res!1795804) b!4365632))

(assert (= (and b!4365632 res!1795800) b!4365635))

(assert (= (and b!4365635 res!1795799) b!4365629))

(assert (= (and b!4365629 res!1795802) b!4365630))

(assert (= (and b!4365630 res!1795801) b!4365636))

(assert (= (and b!4365636 (not res!1795803)) b!4365633))

(assert (= (and start!423358 (is-Cons!49051 newBucket!200)) b!4365631))

(assert (= start!423358 b!4365637))

(declare-fun m!4988335 () Bool)

(assert (=> b!4365634 m!4988335))

(declare-fun m!4988337 () Bool)

(assert (=> start!423358 m!4988337))

(declare-fun m!4988339 () Bool)

(assert (=> start!423358 m!4988339))

(declare-fun m!4988341 () Bool)

(assert (=> b!4365636 m!4988341))

(declare-fun m!4988343 () Bool)

(assert (=> b!4365636 m!4988343))

(declare-fun m!4988345 () Bool)

(assert (=> b!4365632 m!4988345))

(declare-fun m!4988347 () Bool)

(assert (=> b!4365633 m!4988347))

(declare-fun m!4988349 () Bool)

(assert (=> b!4365630 m!4988349))

(declare-fun m!4988351 () Bool)

(assert (=> b!4365629 m!4988351))

(assert (=> b!4365629 m!4988351))

(declare-fun m!4988353 () Bool)

(assert (=> b!4365629 m!4988353))

(declare-fun m!4988355 () Bool)

(assert (=> b!4365635 m!4988355))

(push 1)

(assert (not b!4365632))

(assert (not b!4365634))

(assert (not b!4365633))

(assert (not b!4365629))

(assert (not b!4365636))

(assert (not b!4365631))

(assert tp_is_empty!25389)

(assert tp_is_empty!25391)

(assert (not b!4365635))

(assert (not b!4365637))

(assert (not b!4365630))

(assert (not start!423358))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1292031 () Bool)

(declare-fun hash!1684 (Hashable!4930 K!10413) (_ BitVec 64))

(assert (=> d!1292031 (= (hash!1682 hashF!1247 key!3918) (hash!1684 hashF!1247 key!3918))))

(declare-fun bs!636973 () Bool)

(assert (= bs!636973 d!1292031))

(declare-fun m!4988379 () Bool)

(assert (=> bs!636973 m!4988379))

(assert (=> b!4365632 d!1292031))

(declare-fun b!4365673 () Bool)

(declare-fun e!2717023 () Option!10510)

(assert (=> b!4365673 (= e!2717023 (Some!10509 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))

(declare-fun b!4365675 () Bool)

(declare-fun e!2717024 () Option!10510)

(assert (=> b!4365675 (= e!2717024 (getValueByKey!496 (t!356096 (toList!3059 lm!1707)) hash!377))))

(declare-fun b!4365676 () Bool)

(assert (=> b!4365676 (= e!2717024 None!10509)))

(declare-fun b!4365674 () Bool)

(assert (=> b!4365674 (= e!2717023 e!2717024)))

(declare-fun c!742236 () Bool)

(assert (=> b!4365674 (= c!742236 (and (is-Cons!49052 (toList!3059 lm!1707)) (not (= (_1!27556 (h!54625 (toList!3059 lm!1707))) hash!377))))))

(declare-fun d!1292033 () Bool)

(declare-fun c!742235 () Bool)

(assert (=> d!1292033 (= c!742235 (and (is-Cons!49052 (toList!3059 lm!1707)) (= (_1!27556 (h!54625 (toList!3059 lm!1707))) hash!377)))))

(assert (=> d!1292033 (= (getValueByKey!496 (toList!3059 lm!1707) hash!377) e!2717023)))

(assert (= (and d!1292033 c!742235) b!4365673))

(assert (= (and d!1292033 (not c!742235)) b!4365674))

(assert (= (and b!4365674 c!742236) b!4365675))

(assert (= (and b!4365674 (not c!742236)) b!4365676))

(declare-fun m!4988381 () Bool)

(assert (=> b!4365675 m!4988381))

(assert (=> b!4365633 d!1292033))

(declare-fun d!1292035 () Bool)

(assert (=> d!1292035 true))

(assert (=> d!1292035 true))

(declare-fun lambda!142680 () Int)

(declare-fun forall!9199 (List!49175 Int) Bool)

(assert (=> d!1292035 (= (allKeysSameHash!496 newBucket!200 hash!377 hashF!1247) (forall!9199 newBucket!200 lambda!142680))))

(declare-fun bs!636974 () Bool)

(assert (= bs!636974 d!1292035))

(declare-fun m!4988383 () Bool)

(assert (=> bs!636974 m!4988383))

(assert (=> b!4365635 d!1292035))

(declare-fun b!4365705 () Bool)

(declare-fun e!2717046 () Bool)

(declare-datatypes ((List!49179 0))(
  ( (Nil!49055) (Cons!49055 (h!54629 K!10413) (t!356099 List!49179)) )
))
(declare-fun contains!11330 (List!49179 K!10413) Bool)

(declare-fun keys!16599 (ListMap!2303) List!49179)

(assert (=> b!4365705 (= e!2717046 (not (contains!11330 (keys!16599 (extractMap!597 (toList!3059 lm!1707))) key!3918)))))

(declare-fun b!4365706 () Bool)

(declare-datatypes ((Unit!73063 0))(
  ( (Unit!73064) )
))
(declare-fun e!2717043 () Unit!73063)

(declare-fun lt!1578582 () Unit!73063)

(assert (=> b!4365706 (= e!2717043 lt!1578582)))

(declare-fun lt!1578584 () Unit!73063)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!407 (List!49175 K!10413) Unit!73063)

(assert (=> b!4365706 (= lt!1578584 (lemmaContainsKeyImpliesGetValueByKeyDefined!407 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918))))

(declare-datatypes ((Option!10512 0))(
  ( (None!10511) (Some!10511 (v!43445 V!10659)) )
))
(declare-fun isDefined!7804 (Option!10512) Bool)

(declare-fun getValueByKey!498 (List!49175 K!10413) Option!10512)

(assert (=> b!4365706 (isDefined!7804 (getValueByKey!498 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918))))

(declare-fun lt!1578587 () Unit!73063)

(assert (=> b!4365706 (= lt!1578587 lt!1578584)))

(declare-fun lemmaInListThenGetKeysListContains!144 (List!49175 K!10413) Unit!73063)

(assert (=> b!4365706 (= lt!1578582 (lemmaInListThenGetKeysListContains!144 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918))))

(declare-fun call!303480 () Bool)

(assert (=> b!4365706 call!303480))

(declare-fun b!4365707 () Bool)

(declare-fun e!2717045 () List!49179)

(assert (=> b!4365707 (= e!2717045 (keys!16599 (extractMap!597 (toList!3059 lm!1707))))))

(declare-fun d!1292037 () Bool)

(declare-fun e!2717042 () Bool)

(assert (=> d!1292037 e!2717042))

(declare-fun res!1795836 () Bool)

(assert (=> d!1292037 (=> res!1795836 e!2717042)))

(assert (=> d!1292037 (= res!1795836 e!2717046)))

(declare-fun res!1795834 () Bool)

(assert (=> d!1292037 (=> (not res!1795834) (not e!2717046))))

(declare-fun lt!1578586 () Bool)

(assert (=> d!1292037 (= res!1795834 (not lt!1578586))))

(declare-fun lt!1578588 () Bool)

(assert (=> d!1292037 (= lt!1578586 lt!1578588)))

(declare-fun lt!1578585 () Unit!73063)

(assert (=> d!1292037 (= lt!1578585 e!2717043)))

(declare-fun c!742247 () Bool)

(assert (=> d!1292037 (= c!742247 lt!1578588)))

(declare-fun containsKey!775 (List!49175 K!10413) Bool)

(assert (=> d!1292037 (= lt!1578588 (containsKey!775 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918))))

(assert (=> d!1292037 (= (contains!11326 (extractMap!597 (toList!3059 lm!1707)) key!3918) lt!1578586)))

(declare-fun b!4365708 () Bool)

(declare-fun e!2717044 () Bool)

(assert (=> b!4365708 (= e!2717042 e!2717044)))

(declare-fun res!1795835 () Bool)

(assert (=> b!4365708 (=> (not res!1795835) (not e!2717044))))

(assert (=> b!4365708 (= res!1795835 (isDefined!7804 (getValueByKey!498 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918)))))

(declare-fun b!4365709 () Bool)

(assert (=> b!4365709 (= e!2717044 (contains!11330 (keys!16599 (extractMap!597 (toList!3059 lm!1707))) key!3918))))

(declare-fun bm!303475 () Bool)

(assert (=> bm!303475 (= call!303480 (contains!11330 e!2717045 key!3918))))

(declare-fun c!742246 () Bool)

(assert (=> bm!303475 (= c!742246 c!742247)))

(declare-fun b!4365710 () Bool)

(declare-fun e!2717041 () Unit!73063)

(declare-fun Unit!73065 () Unit!73063)

(assert (=> b!4365710 (= e!2717041 Unit!73065)))

(declare-fun b!4365711 () Bool)

(assert (=> b!4365711 false))

(declare-fun lt!1578583 () Unit!73063)

(declare-fun lt!1578581 () Unit!73063)

(assert (=> b!4365711 (= lt!1578583 lt!1578581)))

(assert (=> b!4365711 (containsKey!775 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!145 (List!49175 K!10413) Unit!73063)

(assert (=> b!4365711 (= lt!1578581 (lemmaInGetKeysListThenContainsKey!145 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918))))

(declare-fun Unit!73066 () Unit!73063)

(assert (=> b!4365711 (= e!2717041 Unit!73066)))

(declare-fun b!4365712 () Bool)

(assert (=> b!4365712 (= e!2717043 e!2717041)))

(declare-fun c!742245 () Bool)

(assert (=> b!4365712 (= c!742245 call!303480)))

(declare-fun b!4365713 () Bool)

(declare-fun getKeysList!147 (List!49175) List!49179)

(assert (=> b!4365713 (= e!2717045 (getKeysList!147 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))

(assert (= (and d!1292037 c!742247) b!4365706))

(assert (= (and d!1292037 (not c!742247)) b!4365712))

(assert (= (and b!4365712 c!742245) b!4365711))

(assert (= (and b!4365712 (not c!742245)) b!4365710))

(assert (= (or b!4365706 b!4365712) bm!303475))

(assert (= (and bm!303475 c!742246) b!4365713))

(assert (= (and bm!303475 (not c!742246)) b!4365707))

(assert (= (and d!1292037 res!1795834) b!4365705))

(assert (= (and d!1292037 (not res!1795836)) b!4365708))

(assert (= (and b!4365708 res!1795835) b!4365709))

(assert (=> b!4365705 m!4988351))

(declare-fun m!4988385 () Bool)

(assert (=> b!4365705 m!4988385))

(assert (=> b!4365705 m!4988385))

(declare-fun m!4988387 () Bool)

(assert (=> b!4365705 m!4988387))

(assert (=> b!4365709 m!4988351))

(assert (=> b!4365709 m!4988385))

(assert (=> b!4365709 m!4988385))

(assert (=> b!4365709 m!4988387))

(declare-fun m!4988389 () Bool)

(assert (=> b!4365706 m!4988389))

(declare-fun m!4988391 () Bool)

(assert (=> b!4365706 m!4988391))

(assert (=> b!4365706 m!4988391))

(declare-fun m!4988393 () Bool)

(assert (=> b!4365706 m!4988393))

(declare-fun m!4988395 () Bool)

(assert (=> b!4365706 m!4988395))

(declare-fun m!4988397 () Bool)

(assert (=> b!4365711 m!4988397))

(declare-fun m!4988399 () Bool)

(assert (=> b!4365711 m!4988399))

(declare-fun m!4988401 () Bool)

(assert (=> bm!303475 m!4988401))

(assert (=> d!1292037 m!4988397))

(declare-fun m!4988403 () Bool)

(assert (=> b!4365713 m!4988403))

(assert (=> b!4365708 m!4988391))

(assert (=> b!4365708 m!4988391))

(assert (=> b!4365708 m!4988393))

(assert (=> b!4365707 m!4988351))

(assert (=> b!4365707 m!4988385))

(assert (=> b!4365629 d!1292037))

(declare-fun bs!636975 () Bool)

(declare-fun d!1292041 () Bool)

(assert (= bs!636975 (and d!1292041 start!423358)))

(declare-fun lambda!142683 () Int)

(assert (=> bs!636975 (= lambda!142683 lambda!142674)))

(declare-fun lt!1578595 () ListMap!2303)

(declare-fun invariantList!699 (List!49175) Bool)

(assert (=> d!1292041 (invariantList!699 (toList!3060 lt!1578595))))

(declare-fun e!2717051 () ListMap!2303)

(assert (=> d!1292041 (= lt!1578595 e!2717051)))

(declare-fun c!742251 () Bool)

(assert (=> d!1292041 (= c!742251 (is-Cons!49052 (toList!3059 lm!1707)))))

(assert (=> d!1292041 (forall!9197 (toList!3059 lm!1707) lambda!142683)))

(assert (=> d!1292041 (= (extractMap!597 (toList!3059 lm!1707)) lt!1578595)))

(declare-fun b!4365721 () Bool)

(declare-fun addToMapMapFromBucket!226 (List!49175 ListMap!2303) ListMap!2303)

(assert (=> b!4365721 (= e!2717051 (addToMapMapFromBucket!226 (_2!27556 (h!54625 (toList!3059 lm!1707))) (extractMap!597 (t!356096 (toList!3059 lm!1707)))))))

(declare-fun b!4365722 () Bool)

(assert (=> b!4365722 (= e!2717051 (ListMap!2304 Nil!49051))))

(assert (= (and d!1292041 c!742251) b!4365721))

(assert (= (and d!1292041 (not c!742251)) b!4365722))

(declare-fun m!4988411 () Bool)

(assert (=> d!1292041 m!4988411))

(declare-fun m!4988413 () Bool)

(assert (=> d!1292041 m!4988413))

(declare-fun m!4988415 () Bool)

(assert (=> b!4365721 m!4988415))

(assert (=> b!4365721 m!4988415))

(declare-fun m!4988417 () Bool)

(assert (=> b!4365721 m!4988417))

(assert (=> b!4365629 d!1292041))

(declare-fun bs!636976 () Bool)

(declare-fun d!1292045 () Bool)

(assert (= bs!636976 (and d!1292045 start!423358)))

(declare-fun lambda!142686 () Int)

(assert (=> bs!636976 (not (= lambda!142686 lambda!142674))))

(declare-fun bs!636977 () Bool)

(assert (= bs!636977 (and d!1292045 d!1292041)))

(assert (=> bs!636977 (not (= lambda!142686 lambda!142683))))

(assert (=> d!1292045 true))

(assert (=> d!1292045 (= (allKeysSameHashInMap!642 lm!1707 hashF!1247) (forall!9197 (toList!3059 lm!1707) lambda!142686))))

(declare-fun bs!636978 () Bool)

(assert (= bs!636978 d!1292045))

(declare-fun m!4988419 () Bool)

(assert (=> bs!636978 m!4988419))

(assert (=> b!4365634 d!1292045))

(declare-fun d!1292047 () Bool)

(declare-fun res!1795842 () Bool)

(declare-fun e!2717056 () Bool)

(assert (=> d!1292047 (=> res!1795842 e!2717056)))

(assert (=> d!1292047 (= res!1795842 (is-Nil!49052 (toList!3059 lm!1707)))))

(assert (=> d!1292047 (= (forall!9197 (toList!3059 lm!1707) lambda!142674) e!2717056)))

(declare-fun b!4365729 () Bool)

(declare-fun e!2717057 () Bool)

(assert (=> b!4365729 (= e!2717056 e!2717057)))

(declare-fun res!1795843 () Bool)

(assert (=> b!4365729 (=> (not res!1795843) (not e!2717057))))

(declare-fun dynLambda!20662 (Int tuple2!48524) Bool)

(assert (=> b!4365729 (= res!1795843 (dynLambda!20662 lambda!142674 (h!54625 (toList!3059 lm!1707))))))

(declare-fun b!4365730 () Bool)

(assert (=> b!4365730 (= e!2717057 (forall!9197 (t!356096 (toList!3059 lm!1707)) lambda!142674))))

(assert (= (and d!1292047 (not res!1795842)) b!4365729))

(assert (= (and b!4365729 res!1795843) b!4365730))

(declare-fun b_lambda!132267 () Bool)

(assert (=> (not b_lambda!132267) (not b!4365729)))

(declare-fun m!4988421 () Bool)

(assert (=> b!4365729 m!4988421))

(declare-fun m!4988423 () Bool)

(assert (=> b!4365730 m!4988423))

(assert (=> start!423358 d!1292047))

(declare-fun d!1292049 () Bool)

(assert (=> d!1292049 (= (inv!64600 lm!1707) (isStrictlySorted!125 (toList!3059 lm!1707)))))

(declare-fun bs!636979 () Bool)

(assert (= bs!636979 d!1292049))

(assert (=> bs!636979 m!4988341))

(assert (=> start!423358 d!1292049))

(declare-fun d!1292051 () Bool)

(declare-fun res!1795848 () Bool)

(declare-fun e!2717062 () Bool)

(assert (=> d!1292051 (=> res!1795848 e!2717062)))

(assert (=> d!1292051 (= res!1795848 (or (is-Nil!49052 (toList!3059 lm!1707)) (is-Nil!49052 (t!356096 (toList!3059 lm!1707)))))))

(assert (=> d!1292051 (= (isStrictlySorted!125 (toList!3059 lm!1707)) e!2717062)))

(declare-fun b!4365735 () Bool)

(declare-fun e!2717063 () Bool)

(assert (=> b!4365735 (= e!2717062 e!2717063)))

(declare-fun res!1795849 () Bool)

(assert (=> b!4365735 (=> (not res!1795849) (not e!2717063))))

(assert (=> b!4365735 (= res!1795849 (bvslt (_1!27556 (h!54625 (toList!3059 lm!1707))) (_1!27556 (h!54625 (t!356096 (toList!3059 lm!1707))))))))

(declare-fun b!4365736 () Bool)

(assert (=> b!4365736 (= e!2717063 (isStrictlySorted!125 (t!356096 (toList!3059 lm!1707))))))

(assert (= (and d!1292051 (not res!1795848)) b!4365735))

(assert (= (and b!4365735 res!1795849) b!4365736))

(declare-fun m!4988425 () Bool)

(assert (=> b!4365736 m!4988425))

(assert (=> b!4365636 d!1292051))

(declare-fun d!1292053 () Bool)

(declare-fun get!15941 (Option!10510) List!49175)

(assert (=> d!1292053 (= (apply!11390 lm!1707 hash!377) (get!15941 (getValueByKey!496 (toList!3059 lm!1707) hash!377)))))

(declare-fun bs!636980 () Bool)

(assert (= bs!636980 d!1292053))

(assert (=> bs!636980 m!4988347))

(assert (=> bs!636980 m!4988347))

(declare-fun m!4988427 () Bool)

(assert (=> bs!636980 m!4988427))

(assert (=> b!4365636 d!1292053))

(declare-fun d!1292055 () Bool)

(declare-fun e!2717069 () Bool)

(assert (=> d!1292055 e!2717069))

(declare-fun res!1795852 () Bool)

(assert (=> d!1292055 (=> res!1795852 e!2717069)))

(declare-fun lt!1578604 () Bool)

(assert (=> d!1292055 (= res!1795852 (not lt!1578604))))

(declare-fun lt!1578607 () Bool)

(assert (=> d!1292055 (= lt!1578604 lt!1578607)))

(declare-fun lt!1578605 () Unit!73063)

(declare-fun e!2717068 () Unit!73063)

(assert (=> d!1292055 (= lt!1578605 e!2717068)))

(declare-fun c!742254 () Bool)

(assert (=> d!1292055 (= c!742254 lt!1578607)))

(declare-fun containsKey!776 (List!49176 (_ BitVec 64)) Bool)

(assert (=> d!1292055 (= lt!1578607 (containsKey!776 (toList!3059 lm!1707) hash!377))))

(assert (=> d!1292055 (= (contains!11327 lm!1707 hash!377) lt!1578604)))

(declare-fun b!4365743 () Bool)

(declare-fun lt!1578606 () Unit!73063)

(assert (=> b!4365743 (= e!2717068 lt!1578606)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!408 (List!49176 (_ BitVec 64)) Unit!73063)

(assert (=> b!4365743 (= lt!1578606 (lemmaContainsKeyImpliesGetValueByKeyDefined!408 (toList!3059 lm!1707) hash!377))))

(declare-fun isDefined!7805 (Option!10510) Bool)

(assert (=> b!4365743 (isDefined!7805 (getValueByKey!496 (toList!3059 lm!1707) hash!377))))

(declare-fun b!4365744 () Bool)

(declare-fun Unit!73067 () Unit!73063)

(assert (=> b!4365744 (= e!2717068 Unit!73067)))

(declare-fun b!4365745 () Bool)

(assert (=> b!4365745 (= e!2717069 (isDefined!7805 (getValueByKey!496 (toList!3059 lm!1707) hash!377)))))

(assert (= (and d!1292055 c!742254) b!4365743))

(assert (= (and d!1292055 (not c!742254)) b!4365744))

(assert (= (and d!1292055 (not res!1795852)) b!4365745))

(declare-fun m!4988429 () Bool)

(assert (=> d!1292055 m!4988429))

(declare-fun m!4988431 () Bool)

(assert (=> b!4365743 m!4988431))

(assert (=> b!4365743 m!4988347))

(assert (=> b!4365743 m!4988347))

(declare-fun m!4988433 () Bool)

(assert (=> b!4365743 m!4988433))

(assert (=> b!4365745 m!4988347))

(assert (=> b!4365745 m!4988347))

(assert (=> b!4365745 m!4988433))

(assert (=> b!4365630 d!1292055))

(declare-fun b!4365750 () Bool)

(declare-fun e!2717072 () Bool)

(declare-fun tp!1330659 () Bool)

(declare-fun tp!1330660 () Bool)

(assert (=> b!4365750 (= e!2717072 (and tp!1330659 tp!1330660))))

(assert (=> b!4365637 (= tp!1330647 e!2717072)))

(assert (= (and b!4365637 (is-Cons!49052 (toList!3059 lm!1707))) b!4365750))

(declare-fun e!2717075 () Bool)

(declare-fun b!4365755 () Bool)

(declare-fun tp!1330663 () Bool)

(assert (=> b!4365755 (= e!2717075 (and tp_is_empty!25389 tp_is_empty!25391 tp!1330663))))

(assert (=> b!4365631 (= tp!1330648 e!2717075)))

(assert (= (and b!4365631 (is-Cons!49051 (t!356095 newBucket!200))) b!4365755))

(declare-fun b_lambda!132269 () Bool)

(assert (= b_lambda!132267 (or start!423358 b_lambda!132269)))

(declare-fun bs!636981 () Bool)

(declare-fun d!1292057 () Bool)

(assert (= bs!636981 (and d!1292057 start!423358)))

(declare-fun noDuplicateKeys!538 (List!49175) Bool)

(assert (=> bs!636981 (= (dynLambda!20662 lambda!142674 (h!54625 (toList!3059 lm!1707))) (noDuplicateKeys!538 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))

(declare-fun m!4988435 () Bool)

(assert (=> bs!636981 m!4988435))

(assert (=> b!4365729 d!1292057))

(push 1)

(assert (not b!4365707))

(assert (not b!4365713))

(assert (not d!1292041))

(assert (not d!1292055))

(assert (not b!4365709))

(assert (not bm!303475))

(assert tp_is_empty!25391)

(assert (not b!4365705))

(assert (not d!1292031))

(assert (not d!1292053))

(assert (not b!4365708))

(assert (not b!4365736))

(assert (not b!4365750))

(assert (not b!4365675))

(assert (not b_lambda!132269))

(assert tp_is_empty!25389)

(assert (not b!4365721))

(assert (not b!4365711))

(assert (not d!1292045))

(assert (not b!4365745))

(assert (not d!1292049))

(assert (not d!1292035))

(assert (not b!4365743))

(assert (not d!1292037))

(assert (not b!4365755))

(assert (not b!4365706))

(assert (not b!4365730))

(assert (not bs!636981))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!1292049 d!1292051))

(declare-fun d!1292069 () Bool)

(declare-fun res!1795862 () Bool)

(declare-fun e!2717103 () Bool)

(assert (=> d!1292069 (=> res!1795862 e!2717103)))

(assert (=> d!1292069 (= res!1795862 (is-Nil!49052 (toList!3059 lm!1707)))))

(assert (=> d!1292069 (= (forall!9197 (toList!3059 lm!1707) lambda!142686) e!2717103)))

(declare-fun b!4365803 () Bool)

(declare-fun e!2717104 () Bool)

(assert (=> b!4365803 (= e!2717103 e!2717104)))

(declare-fun res!1795863 () Bool)

(assert (=> b!4365803 (=> (not res!1795863) (not e!2717104))))

(assert (=> b!4365803 (= res!1795863 (dynLambda!20662 lambda!142686 (h!54625 (toList!3059 lm!1707))))))

(declare-fun b!4365804 () Bool)

(assert (=> b!4365804 (= e!2717104 (forall!9197 (t!356096 (toList!3059 lm!1707)) lambda!142686))))

(assert (= (and d!1292069 (not res!1795862)) b!4365803))

(assert (= (and b!4365803 res!1795863) b!4365804))

(declare-fun b_lambda!132271 () Bool)

(assert (=> (not b_lambda!132271) (not b!4365803)))

(declare-fun m!4988471 () Bool)

(assert (=> b!4365803 m!4988471))

(declare-fun m!4988473 () Bool)

(assert (=> b!4365804 m!4988473))

(assert (=> d!1292045 d!1292069))

(declare-fun d!1292071 () Bool)

(assert (=> d!1292071 (isDefined!7805 (getValueByKey!496 (toList!3059 lm!1707) hash!377))))

(declare-fun lt!1578637 () Unit!73063)

(declare-fun choose!27122 (List!49176 (_ BitVec 64)) Unit!73063)

(assert (=> d!1292071 (= lt!1578637 (choose!27122 (toList!3059 lm!1707) hash!377))))

(declare-fun e!2717113 () Bool)

(assert (=> d!1292071 e!2717113))

(declare-fun res!1795872 () Bool)

(assert (=> d!1292071 (=> (not res!1795872) (not e!2717113))))

(assert (=> d!1292071 (= res!1795872 (isStrictlySorted!125 (toList!3059 lm!1707)))))

(assert (=> d!1292071 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!408 (toList!3059 lm!1707) hash!377) lt!1578637)))

(declare-fun b!4365813 () Bool)

(assert (=> b!4365813 (= e!2717113 (containsKey!776 (toList!3059 lm!1707) hash!377))))

(assert (= (and d!1292071 res!1795872) b!4365813))

(assert (=> d!1292071 m!4988347))

(assert (=> d!1292071 m!4988347))

(assert (=> d!1292071 m!4988433))

(declare-fun m!4988477 () Bool)

(assert (=> d!1292071 m!4988477))

(assert (=> d!1292071 m!4988341))

(assert (=> b!4365813 m!4988429))

(assert (=> b!4365743 d!1292071))

(declare-fun d!1292075 () Bool)

(declare-fun isEmpty!28224 (Option!10510) Bool)

(assert (=> d!1292075 (= (isDefined!7805 (getValueByKey!496 (toList!3059 lm!1707) hash!377)) (not (isEmpty!28224 (getValueByKey!496 (toList!3059 lm!1707) hash!377))))))

(declare-fun bs!636987 () Bool)

(assert (= bs!636987 d!1292075))

(assert (=> bs!636987 m!4988347))

(declare-fun m!4988479 () Bool)

(assert (=> bs!636987 m!4988479))

(assert (=> b!4365743 d!1292075))

(assert (=> b!4365743 d!1292033))

(declare-fun d!1292077 () Bool)

(declare-fun noDuplicatedKeys!125 (List!49175) Bool)

(assert (=> d!1292077 (= (invariantList!699 (toList!3060 lt!1578595)) (noDuplicatedKeys!125 (toList!3060 lt!1578595)))))

(declare-fun bs!636988 () Bool)

(assert (= bs!636988 d!1292077))

(declare-fun m!4988481 () Bool)

(assert (=> bs!636988 m!4988481))

(assert (=> d!1292041 d!1292077))

(declare-fun d!1292079 () Bool)

(declare-fun res!1795873 () Bool)

(declare-fun e!2717114 () Bool)

(assert (=> d!1292079 (=> res!1795873 e!2717114)))

(assert (=> d!1292079 (= res!1795873 (is-Nil!49052 (toList!3059 lm!1707)))))

(assert (=> d!1292079 (= (forall!9197 (toList!3059 lm!1707) lambda!142683) e!2717114)))

(declare-fun b!4365814 () Bool)

(declare-fun e!2717115 () Bool)

(assert (=> b!4365814 (= e!2717114 e!2717115)))

(declare-fun res!1795874 () Bool)

(assert (=> b!4365814 (=> (not res!1795874) (not e!2717115))))

(assert (=> b!4365814 (= res!1795874 (dynLambda!20662 lambda!142683 (h!54625 (toList!3059 lm!1707))))))

(declare-fun b!4365815 () Bool)

(assert (=> b!4365815 (= e!2717115 (forall!9197 (t!356096 (toList!3059 lm!1707)) lambda!142683))))

(assert (= (and d!1292079 (not res!1795873)) b!4365814))

(assert (= (and b!4365814 res!1795874) b!4365815))

(declare-fun b_lambda!132273 () Bool)

(assert (=> (not b_lambda!132273) (not b!4365814)))

(declare-fun m!4988483 () Bool)

(assert (=> b!4365814 m!4988483))

(declare-fun m!4988485 () Bool)

(assert (=> b!4365815 m!4988485))

(assert (=> d!1292041 d!1292079))

(declare-fun d!1292081 () Bool)

(declare-fun choose!27123 (Hashable!4930 K!10413) (_ BitVec 64))

(assert (=> d!1292081 (= (hash!1684 hashF!1247 key!3918) (choose!27123 hashF!1247 key!3918))))

(declare-fun bs!636990 () Bool)

(assert (= bs!636990 d!1292081))

(declare-fun m!4988487 () Bool)

(assert (=> bs!636990 m!4988487))

(assert (=> d!1292031 d!1292081))

(declare-fun d!1292083 () Bool)

(assert (=> d!1292083 (isDefined!7804 (getValueByKey!498 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918))))

(declare-fun lt!1578640 () Unit!73063)

(declare-fun choose!27124 (List!49175 K!10413) Unit!73063)

(assert (=> d!1292083 (= lt!1578640 (choose!27124 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918))))

(assert (=> d!1292083 (invariantList!699 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))

(assert (=> d!1292083 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!407 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918) lt!1578640)))

(declare-fun bs!636991 () Bool)

(assert (= bs!636991 d!1292083))

(assert (=> bs!636991 m!4988391))

(assert (=> bs!636991 m!4988391))

(assert (=> bs!636991 m!4988393))

(declare-fun m!4988491 () Bool)

(assert (=> bs!636991 m!4988491))

(declare-fun m!4988493 () Bool)

(assert (=> bs!636991 m!4988493))

(assert (=> b!4365706 d!1292083))

(declare-fun d!1292087 () Bool)

(declare-fun isEmpty!28225 (Option!10512) Bool)

(assert (=> d!1292087 (= (isDefined!7804 (getValueByKey!498 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918)) (not (isEmpty!28225 (getValueByKey!498 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918))))))

(declare-fun bs!636992 () Bool)

(assert (= bs!636992 d!1292087))

(assert (=> bs!636992 m!4988391))

(declare-fun m!4988495 () Bool)

(assert (=> bs!636992 m!4988495))

(assert (=> b!4365706 d!1292087))

(declare-fun b!4365831 () Bool)

(declare-fun e!2717126 () Option!10512)

(declare-fun e!2717127 () Option!10512)

(assert (=> b!4365831 (= e!2717126 e!2717127)))

(declare-fun c!742278 () Bool)

(assert (=> b!4365831 (= c!742278 (and (is-Cons!49051 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (not (= (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) key!3918))))))

(declare-fun b!4365833 () Bool)

(assert (=> b!4365833 (= e!2717127 None!10511)))

(declare-fun b!4365830 () Bool)

(assert (=> b!4365830 (= e!2717126 (Some!10511 (_2!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))))

(declare-fun b!4365832 () Bool)

(assert (=> b!4365832 (= e!2717127 (getValueByKey!498 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) key!3918))))

(declare-fun d!1292089 () Bool)

(declare-fun c!742277 () Bool)

(assert (=> d!1292089 (= c!742277 (and (is-Cons!49051 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (= (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) key!3918)))))

(assert (=> d!1292089 (= (getValueByKey!498 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918) e!2717126)))

(assert (= (and d!1292089 c!742277) b!4365830))

(assert (= (and d!1292089 (not c!742277)) b!4365831))

(assert (= (and b!4365831 c!742278) b!4365832))

(assert (= (and b!4365831 (not c!742278)) b!4365833))

(declare-fun m!4988501 () Bool)

(assert (=> b!4365832 m!4988501))

(assert (=> b!4365706 d!1292089))

(declare-fun d!1292093 () Bool)

(assert (=> d!1292093 (contains!11330 (getKeysList!147 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) key!3918)))

(declare-fun lt!1578643 () Unit!73063)

(declare-fun choose!27125 (List!49175 K!10413) Unit!73063)

(assert (=> d!1292093 (= lt!1578643 (choose!27125 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918))))

(assert (=> d!1292093 (invariantList!699 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))

(assert (=> d!1292093 (= (lemmaInListThenGetKeysListContains!144 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918) lt!1578643)))

(declare-fun bs!636994 () Bool)

(assert (= bs!636994 d!1292093))

(assert (=> bs!636994 m!4988403))

(assert (=> bs!636994 m!4988403))

(declare-fun m!4988503 () Bool)

(assert (=> bs!636994 m!4988503))

(declare-fun m!4988505 () Bool)

(assert (=> bs!636994 m!4988505))

(assert (=> bs!636994 m!4988493))

(assert (=> b!4365706 d!1292093))

(declare-fun d!1292097 () Bool)

(declare-fun lt!1578646 () Bool)

(declare-fun content!7770 (List!49179) (Set K!10413))

(assert (=> d!1292097 (= lt!1578646 (set.member key!3918 (content!7770 (keys!16599 (extractMap!597 (toList!3059 lm!1707))))))))

(declare-fun e!2717133 () Bool)

(assert (=> d!1292097 (= lt!1578646 e!2717133)))

(declare-fun res!1795886 () Bool)

(assert (=> d!1292097 (=> (not res!1795886) (not e!2717133))))

(assert (=> d!1292097 (= res!1795886 (is-Cons!49055 (keys!16599 (extractMap!597 (toList!3059 lm!1707)))))))

(assert (=> d!1292097 (= (contains!11330 (keys!16599 (extractMap!597 (toList!3059 lm!1707))) key!3918) lt!1578646)))

(declare-fun b!4365842 () Bool)

(declare-fun e!2717132 () Bool)

(assert (=> b!4365842 (= e!2717133 e!2717132)))

(declare-fun res!1795885 () Bool)

(assert (=> b!4365842 (=> res!1795885 e!2717132)))

(assert (=> b!4365842 (= res!1795885 (= (h!54629 (keys!16599 (extractMap!597 (toList!3059 lm!1707)))) key!3918))))

(declare-fun b!4365843 () Bool)

(assert (=> b!4365843 (= e!2717132 (contains!11330 (t!356099 (keys!16599 (extractMap!597 (toList!3059 lm!1707)))) key!3918))))

(assert (= (and d!1292097 res!1795886) b!4365842))

(assert (= (and b!4365842 (not res!1795885)) b!4365843))

(assert (=> d!1292097 m!4988385))

(declare-fun m!4988507 () Bool)

(assert (=> d!1292097 m!4988507))

(declare-fun m!4988509 () Bool)

(assert (=> d!1292097 m!4988509))

(declare-fun m!4988511 () Bool)

(assert (=> b!4365843 m!4988511))

(assert (=> b!4365705 d!1292097))

(declare-fun b!4365861 () Bool)

(assert (=> b!4365861 true))

(declare-fun d!1292099 () Bool)

(declare-fun e!2717142 () Bool)

(assert (=> d!1292099 e!2717142))

(declare-fun res!1795895 () Bool)

(assert (=> d!1292099 (=> (not res!1795895) (not e!2717142))))

(declare-fun lt!1578649 () List!49179)

(declare-fun noDuplicate!609 (List!49179) Bool)

(assert (=> d!1292099 (= res!1795895 (noDuplicate!609 lt!1578649))))

(assert (=> d!1292099 (= lt!1578649 (getKeysList!147 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))

(assert (=> d!1292099 (= (keys!16599 (extractMap!597 (toList!3059 lm!1707))) lt!1578649)))

(declare-fun b!4365860 () Bool)

(declare-fun res!1795893 () Bool)

(assert (=> b!4365860 (=> (not res!1795893) (not e!2717142))))

(declare-fun length!74 (List!49179) Int)

(declare-fun length!75 (List!49175) Int)

(assert (=> b!4365860 (= res!1795893 (= (length!74 lt!1578649) (length!75 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))))

(declare-fun res!1795894 () Bool)

(assert (=> b!4365861 (=> (not res!1795894) (not e!2717142))))

(declare-fun lambda!142700 () Int)

(declare-fun forall!9201 (List!49179 Int) Bool)

(assert (=> b!4365861 (= res!1795894 (forall!9201 lt!1578649 lambda!142700))))

(declare-fun lambda!142701 () Int)

(declare-fun b!4365862 () Bool)

(declare-fun map!10675 (List!49175 Int) List!49179)

(assert (=> b!4365862 (= e!2717142 (= (content!7770 lt!1578649) (content!7770 (map!10675 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) lambda!142701))))))

(assert (= (and d!1292099 res!1795895) b!4365860))

(assert (= (and b!4365860 res!1795893) b!4365861))

(assert (= (and b!4365861 res!1795894) b!4365862))

(declare-fun m!4988517 () Bool)

(assert (=> d!1292099 m!4988517))

(assert (=> d!1292099 m!4988403))

(declare-fun m!4988519 () Bool)

(assert (=> b!4365860 m!4988519))

(declare-fun m!4988521 () Bool)

(assert (=> b!4365860 m!4988521))

(declare-fun m!4988523 () Bool)

(assert (=> b!4365861 m!4988523))

(declare-fun m!4988525 () Bool)

(assert (=> b!4365862 m!4988525))

(declare-fun m!4988527 () Bool)

(assert (=> b!4365862 m!4988527))

(assert (=> b!4365862 m!4988527))

(declare-fun m!4988529 () Bool)

(assert (=> b!4365862 m!4988529))

(assert (=> b!4365705 d!1292099))

(assert (=> b!4365707 d!1292099))

(declare-fun d!1292103 () Bool)

(declare-fun res!1795896 () Bool)

(declare-fun e!2717143 () Bool)

(assert (=> d!1292103 (=> res!1795896 e!2717143)))

(assert (=> d!1292103 (= res!1795896 (is-Nil!49052 (t!356096 (toList!3059 lm!1707))))))

(assert (=> d!1292103 (= (forall!9197 (t!356096 (toList!3059 lm!1707)) lambda!142674) e!2717143)))

(declare-fun b!4365865 () Bool)

(declare-fun e!2717144 () Bool)

(assert (=> b!4365865 (= e!2717143 e!2717144)))

(declare-fun res!1795897 () Bool)

(assert (=> b!4365865 (=> (not res!1795897) (not e!2717144))))

(assert (=> b!4365865 (= res!1795897 (dynLambda!20662 lambda!142674 (h!54625 (t!356096 (toList!3059 lm!1707)))))))

(declare-fun b!4365866 () Bool)

(assert (=> b!4365866 (= e!2717144 (forall!9197 (t!356096 (t!356096 (toList!3059 lm!1707))) lambda!142674))))

(assert (= (and d!1292103 (not res!1795896)) b!4365865))

(assert (= (and b!4365865 res!1795897) b!4365866))

(declare-fun b_lambda!132279 () Bool)

(assert (=> (not b_lambda!132279) (not b!4365865)))

(declare-fun m!4988531 () Bool)

(assert (=> b!4365865 m!4988531))

(declare-fun m!4988533 () Bool)

(assert (=> b!4365866 m!4988533))

(assert (=> b!4365730 d!1292103))

(assert (=> b!4365745 d!1292075))

(assert (=> b!4365745 d!1292033))

(assert (=> b!4365708 d!1292087))

(assert (=> b!4365708 d!1292089))

(declare-fun d!1292105 () Bool)

(declare-fun res!1795902 () Bool)

(declare-fun e!2717149 () Bool)

(assert (=> d!1292105 (=> res!1795902 e!2717149)))

(assert (=> d!1292105 (= res!1795902 (is-Nil!49051 newBucket!200))))

(assert (=> d!1292105 (= (forall!9199 newBucket!200 lambda!142680) e!2717149)))

(declare-fun b!4365871 () Bool)

(declare-fun e!2717150 () Bool)

(assert (=> b!4365871 (= e!2717149 e!2717150)))

(declare-fun res!1795903 () Bool)

(assert (=> b!4365871 (=> (not res!1795903) (not e!2717150))))

(declare-fun dynLambda!20664 (Int tuple2!48522) Bool)

(assert (=> b!4365871 (= res!1795903 (dynLambda!20664 lambda!142680 (h!54624 newBucket!200)))))

(declare-fun b!4365872 () Bool)

(assert (=> b!4365872 (= e!2717150 (forall!9199 (t!356095 newBucket!200) lambda!142680))))

(assert (= (and d!1292105 (not res!1795902)) b!4365871))

(assert (= (and b!4365871 res!1795903) b!4365872))

(declare-fun b_lambda!132281 () Bool)

(assert (=> (not b_lambda!132281) (not b!4365871)))

(declare-fun m!4988535 () Bool)

(assert (=> b!4365871 m!4988535))

(declare-fun m!4988537 () Bool)

(assert (=> b!4365872 m!4988537))

(assert (=> d!1292035 d!1292105))

(declare-fun d!1292107 () Bool)

(declare-fun res!1795908 () Bool)

(declare-fun e!2717155 () Bool)

(assert (=> d!1292107 (=> res!1795908 e!2717155)))

(assert (=> d!1292107 (= res!1795908 (not (is-Cons!49051 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))

(assert (=> d!1292107 (= (noDuplicateKeys!538 (_2!27556 (h!54625 (toList!3059 lm!1707)))) e!2717155)))

(declare-fun b!4365877 () Bool)

(declare-fun e!2717156 () Bool)

(assert (=> b!4365877 (= e!2717155 e!2717156)))

(declare-fun res!1795909 () Bool)

(assert (=> b!4365877 (=> (not res!1795909) (not e!2717156))))

(declare-fun containsKey!779 (List!49175 K!10413) Bool)

(assert (=> b!4365877 (= res!1795909 (not (containsKey!779 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))))

(declare-fun b!4365878 () Bool)

(assert (=> b!4365878 (= e!2717156 (noDuplicateKeys!538 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))

(assert (= (and d!1292107 (not res!1795908)) b!4365877))

(assert (= (and b!4365877 res!1795909) b!4365878))

(declare-fun m!4988539 () Bool)

(assert (=> b!4365877 m!4988539))

(declare-fun m!4988541 () Bool)

(assert (=> b!4365878 m!4988541))

(assert (=> bs!636981 d!1292107))

(declare-fun d!1292109 () Bool)

(declare-fun lt!1578650 () Bool)

(assert (=> d!1292109 (= lt!1578650 (set.member key!3918 (content!7770 e!2717045)))))

(declare-fun e!2717158 () Bool)

(assert (=> d!1292109 (= lt!1578650 e!2717158)))

(declare-fun res!1795911 () Bool)

(assert (=> d!1292109 (=> (not res!1795911) (not e!2717158))))

(assert (=> d!1292109 (= res!1795911 (is-Cons!49055 e!2717045))))

(assert (=> d!1292109 (= (contains!11330 e!2717045 key!3918) lt!1578650)))

(declare-fun b!4365879 () Bool)

(declare-fun e!2717157 () Bool)

(assert (=> b!4365879 (= e!2717158 e!2717157)))

(declare-fun res!1795910 () Bool)

(assert (=> b!4365879 (=> res!1795910 e!2717157)))

(assert (=> b!4365879 (= res!1795910 (= (h!54629 e!2717045) key!3918))))

(declare-fun b!4365880 () Bool)

(assert (=> b!4365880 (= e!2717157 (contains!11330 (t!356099 e!2717045) key!3918))))

(assert (= (and d!1292109 res!1795911) b!4365879))

(assert (= (and b!4365879 (not res!1795910)) b!4365880))

(declare-fun m!4988543 () Bool)

(assert (=> d!1292109 m!4988543))

(declare-fun m!4988545 () Bool)

(assert (=> d!1292109 m!4988545))

(declare-fun m!4988547 () Bool)

(assert (=> b!4365880 m!4988547))

(assert (=> bm!303475 d!1292109))

(declare-fun d!1292111 () Bool)

(declare-fun res!1795912 () Bool)

(declare-fun e!2717159 () Bool)

(assert (=> d!1292111 (=> res!1795912 e!2717159)))

(assert (=> d!1292111 (= res!1795912 (or (is-Nil!49052 (t!356096 (toList!3059 lm!1707))) (is-Nil!49052 (t!356096 (t!356096 (toList!3059 lm!1707))))))))

(assert (=> d!1292111 (= (isStrictlySorted!125 (t!356096 (toList!3059 lm!1707))) e!2717159)))

(declare-fun b!4365881 () Bool)

(declare-fun e!2717160 () Bool)

(assert (=> b!4365881 (= e!2717159 e!2717160)))

(declare-fun res!1795913 () Bool)

(assert (=> b!4365881 (=> (not res!1795913) (not e!2717160))))

(assert (=> b!4365881 (= res!1795913 (bvslt (_1!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))) (_1!27556 (h!54625 (t!356096 (t!356096 (toList!3059 lm!1707)))))))))

(declare-fun b!4365882 () Bool)

(assert (=> b!4365882 (= e!2717160 (isStrictlySorted!125 (t!356096 (t!356096 (toList!3059 lm!1707)))))))

(assert (= (and d!1292111 (not res!1795912)) b!4365881))

(assert (= (and b!4365881 res!1795913) b!4365882))

(declare-fun m!4988549 () Bool)

(assert (=> b!4365882 m!4988549))

(assert (=> b!4365736 d!1292111))

(assert (=> b!4365709 d!1292097))

(assert (=> b!4365709 d!1292099))

(declare-fun d!1292113 () Bool)

(declare-fun res!1795918 () Bool)

(declare-fun e!2717165 () Bool)

(assert (=> d!1292113 (=> res!1795918 e!2717165)))

(assert (=> d!1292113 (= res!1795918 (and (is-Cons!49052 (toList!3059 lm!1707)) (= (_1!27556 (h!54625 (toList!3059 lm!1707))) hash!377)))))

(assert (=> d!1292113 (= (containsKey!776 (toList!3059 lm!1707) hash!377) e!2717165)))

(declare-fun b!4365887 () Bool)

(declare-fun e!2717166 () Bool)

(assert (=> b!4365887 (= e!2717165 e!2717166)))

(declare-fun res!1795919 () Bool)

(assert (=> b!4365887 (=> (not res!1795919) (not e!2717166))))

(assert (=> b!4365887 (= res!1795919 (and (or (not (is-Cons!49052 (toList!3059 lm!1707))) (bvsle (_1!27556 (h!54625 (toList!3059 lm!1707))) hash!377)) (is-Cons!49052 (toList!3059 lm!1707)) (bvslt (_1!27556 (h!54625 (toList!3059 lm!1707))) hash!377)))))

(declare-fun b!4365888 () Bool)

(assert (=> b!4365888 (= e!2717166 (containsKey!776 (t!356096 (toList!3059 lm!1707)) hash!377))))

(assert (= (and d!1292113 (not res!1795918)) b!4365887))

(assert (= (and b!4365887 res!1795919) b!4365888))

(declare-fun m!4988551 () Bool)

(assert (=> b!4365888 m!4988551))

(assert (=> d!1292055 d!1292113))

(declare-fun d!1292115 () Bool)

(declare-fun res!1795924 () Bool)

(declare-fun e!2717171 () Bool)

(assert (=> d!1292115 (=> res!1795924 e!2717171)))

(assert (=> d!1292115 (= res!1795924 (and (is-Cons!49051 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (= (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) key!3918)))))

(assert (=> d!1292115 (= (containsKey!775 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918) e!2717171)))

(declare-fun b!4365893 () Bool)

(declare-fun e!2717172 () Bool)

(assert (=> b!4365893 (= e!2717171 e!2717172)))

(declare-fun res!1795925 () Bool)

(assert (=> b!4365893 (=> (not res!1795925) (not e!2717172))))

(assert (=> b!4365893 (= res!1795925 (is-Cons!49051 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))

(declare-fun b!4365894 () Bool)

(assert (=> b!4365894 (= e!2717172 (containsKey!775 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) key!3918))))

(assert (= (and d!1292115 (not res!1795924)) b!4365893))

(assert (= (and b!4365893 res!1795925) b!4365894))

(declare-fun m!4988553 () Bool)

(assert (=> b!4365894 m!4988553))

(assert (=> b!4365711 d!1292115))

(declare-fun d!1292117 () Bool)

(assert (=> d!1292117 (containsKey!775 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918)))

(declare-fun lt!1578653 () Unit!73063)

(declare-fun choose!27126 (List!49175 K!10413) Unit!73063)

(assert (=> d!1292117 (= lt!1578653 (choose!27126 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918))))

(assert (=> d!1292117 (invariantList!699 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))

(assert (=> d!1292117 (= (lemmaInGetKeysListThenContainsKey!145 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918) lt!1578653)))

(declare-fun bs!636997 () Bool)

(assert (= bs!636997 d!1292117))

(assert (=> bs!636997 m!4988397))

(declare-fun m!4988555 () Bool)

(assert (=> bs!636997 m!4988555))

(assert (=> bs!636997 m!4988493))

(assert (=> b!4365711 d!1292117))

(declare-fun b!4365895 () Bool)

(declare-fun e!2717173 () Option!10510)

(assert (=> b!4365895 (= e!2717173 (Some!10509 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707))))))))

(declare-fun b!4365897 () Bool)

(declare-fun e!2717174 () Option!10510)

(assert (=> b!4365897 (= e!2717174 (getValueByKey!496 (t!356096 (t!356096 (toList!3059 lm!1707))) hash!377))))

(declare-fun b!4365898 () Bool)

(assert (=> b!4365898 (= e!2717174 None!10509)))

(declare-fun b!4365896 () Bool)

(assert (=> b!4365896 (= e!2717173 e!2717174)))

(declare-fun c!742280 () Bool)

(assert (=> b!4365896 (= c!742280 (and (is-Cons!49052 (t!356096 (toList!3059 lm!1707))) (not (= (_1!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))) hash!377))))))

(declare-fun d!1292119 () Bool)

(declare-fun c!742279 () Bool)

(assert (=> d!1292119 (= c!742279 (and (is-Cons!49052 (t!356096 (toList!3059 lm!1707))) (= (_1!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))) hash!377)))))

(assert (=> d!1292119 (= (getValueByKey!496 (t!356096 (toList!3059 lm!1707)) hash!377) e!2717173)))

(assert (= (and d!1292119 c!742279) b!4365895))

(assert (= (and d!1292119 (not c!742279)) b!4365896))

(assert (= (and b!4365896 c!742280) b!4365897))

(assert (= (and b!4365896 (not c!742280)) b!4365898))

(declare-fun m!4988557 () Bool)

(assert (=> b!4365897 m!4988557))

(assert (=> b!4365675 d!1292119))

(declare-fun bs!636998 () Bool)

(declare-fun b!4365924 () Bool)

(assert (= bs!636998 (and b!4365924 b!4365861)))

(declare-fun lambda!142710 () Int)

(assert (=> bs!636998 (= (= (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (= lambda!142710 lambda!142700))))

(assert (=> b!4365924 true))

(declare-fun bs!636999 () Bool)

(declare-fun b!4365918 () Bool)

(assert (= bs!636999 (and b!4365918 b!4365861)))

(declare-fun lambda!142711 () Int)

(assert (=> bs!636999 (= (= (Cons!49051 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (= lambda!142711 lambda!142700))))

(declare-fun bs!637000 () Bool)

(assert (= bs!637000 (and b!4365918 b!4365924)))

(assert (=> bs!637000 (= (= (Cons!49051 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (= lambda!142711 lambda!142710))))

(assert (=> b!4365918 true))

(declare-fun bs!637001 () Bool)

(declare-fun b!4365921 () Bool)

(assert (= bs!637001 (and b!4365921 b!4365861)))

(declare-fun lambda!142712 () Int)

(assert (=> bs!637001 (= lambda!142712 lambda!142700)))

(declare-fun bs!637002 () Bool)

(assert (= bs!637002 (and b!4365921 b!4365924)))

(assert (=> bs!637002 (= (= (toList!3060 (extractMap!597 (toList!3059 lm!1707))) (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (= lambda!142712 lambda!142710))))

(declare-fun bs!637003 () Bool)

(assert (= bs!637003 (and b!4365921 b!4365918)))

(assert (=> bs!637003 (= (= (toList!3060 (extractMap!597 (toList!3059 lm!1707))) (Cons!49051 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) (= lambda!142712 lambda!142711))))

(assert (=> b!4365921 true))

(declare-fun bs!637004 () Bool)

(declare-fun b!4365917 () Bool)

(assert (= bs!637004 (and b!4365917 b!4365862)))

(declare-fun lambda!142713 () Int)

(assert (=> bs!637004 (= lambda!142713 lambda!142701)))

(declare-fun lt!1578669 () List!49179)

(declare-fun e!2717185 () Bool)

(assert (=> b!4365917 (= e!2717185 (= (content!7770 lt!1578669) (content!7770 (map!10675 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) lambda!142713))))))

(declare-fun e!2717186 () List!49179)

(assert (=> b!4365918 (= e!2717186 (Cons!49055 (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (getKeysList!147 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))))

(declare-fun c!742287 () Bool)

(assert (=> b!4365918 (= c!742287 (containsKey!775 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))))

(declare-fun lt!1578670 () Unit!73063)

(declare-fun e!2717183 () Unit!73063)

(assert (=> b!4365918 (= lt!1578670 e!2717183)))

(declare-fun c!742288 () Bool)

(assert (=> b!4365918 (= c!742288 (contains!11330 (getKeysList!147 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))))

(declare-fun lt!1578673 () Unit!73063)

(declare-fun e!2717184 () Unit!73063)

(assert (=> b!4365918 (= lt!1578673 e!2717184)))

(declare-fun lt!1578674 () List!49179)

(assert (=> b!4365918 (= lt!1578674 (getKeysList!147 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))))

(declare-fun lt!1578671 () Unit!73063)

(declare-fun lemmaForallContainsAddHeadPreserves!31 (List!49175 List!49179 tuple2!48522) Unit!73063)

(assert (=> b!4365918 (= lt!1578671 (lemmaForallContainsAddHeadPreserves!31 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) lt!1578674 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))))

(assert (=> b!4365918 (forall!9201 lt!1578674 lambda!142711)))

(declare-fun lt!1578668 () Unit!73063)

(assert (=> b!4365918 (= lt!1578668 lt!1578671)))

(declare-fun b!4365919 () Bool)

(declare-fun Unit!73073 () Unit!73063)

(assert (=> b!4365919 (= e!2717183 Unit!73073)))

(declare-fun d!1292121 () Bool)

(assert (=> d!1292121 e!2717185))

(declare-fun res!1795934 () Bool)

(assert (=> d!1292121 (=> (not res!1795934) (not e!2717185))))

(assert (=> d!1292121 (= res!1795934 (noDuplicate!609 lt!1578669))))

(assert (=> d!1292121 (= lt!1578669 e!2717186)))

(declare-fun c!742289 () Bool)

(assert (=> d!1292121 (= c!742289 (is-Cons!49051 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))

(assert (=> d!1292121 (invariantList!699 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))

(assert (=> d!1292121 (= (getKeysList!147 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) lt!1578669)))

(declare-fun b!4365920 () Bool)

(declare-fun Unit!73074 () Unit!73063)

(assert (=> b!4365920 (= e!2717184 Unit!73074)))

(declare-fun res!1795933 () Bool)

(assert (=> b!4365921 (=> (not res!1795933) (not e!2717185))))

(assert (=> b!4365921 (= res!1795933 (forall!9201 lt!1578669 lambda!142712))))

(declare-fun b!4365922 () Bool)

(assert (=> b!4365922 false))

(declare-fun Unit!73075 () Unit!73063)

(assert (=> b!4365922 (= e!2717183 Unit!73075)))

(declare-fun b!4365923 () Bool)

(declare-fun res!1795932 () Bool)

(assert (=> b!4365923 (=> (not res!1795932) (not e!2717185))))

(assert (=> b!4365923 (= res!1795932 (= (length!74 lt!1578669) (length!75 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))))

(assert (=> b!4365924 false))

(declare-fun lt!1578672 () Unit!73063)

(declare-fun forallContained!1838 (List!49179 Int K!10413) Unit!73063)

(assert (=> b!4365924 (= lt!1578672 (forallContained!1838 (getKeysList!147 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) lambda!142710 (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))))

(declare-fun Unit!73076 () Unit!73063)

(assert (=> b!4365924 (= e!2717184 Unit!73076)))

(declare-fun b!4365925 () Bool)

(assert (=> b!4365925 (= e!2717186 Nil!49055)))

(assert (= (and d!1292121 c!742289) b!4365918))

(assert (= (and d!1292121 (not c!742289)) b!4365925))

(assert (= (and b!4365918 c!742287) b!4365922))

(assert (= (and b!4365918 (not c!742287)) b!4365919))

(assert (= (and b!4365918 c!742288) b!4365924))

(assert (= (and b!4365918 (not c!742288)) b!4365920))

(assert (= (and d!1292121 res!1795934) b!4365923))

(assert (= (and b!4365923 res!1795932) b!4365921))

(assert (= (and b!4365921 res!1795933) b!4365917))

(declare-fun m!4988559 () Bool)

(assert (=> b!4365917 m!4988559))

(declare-fun m!4988561 () Bool)

(assert (=> b!4365917 m!4988561))

(assert (=> b!4365917 m!4988561))

(declare-fun m!4988563 () Bool)

(assert (=> b!4365917 m!4988563))

(declare-fun m!4988565 () Bool)

(assert (=> b!4365924 m!4988565))

(assert (=> b!4365924 m!4988565))

(declare-fun m!4988567 () Bool)

(assert (=> b!4365924 m!4988567))

(declare-fun m!4988569 () Bool)

(assert (=> d!1292121 m!4988569))

(assert (=> d!1292121 m!4988493))

(declare-fun m!4988571 () Bool)

(assert (=> b!4365923 m!4988571))

(assert (=> b!4365923 m!4988521))

(declare-fun m!4988573 () Bool)

(assert (=> b!4365918 m!4988573))

(assert (=> b!4365918 m!4988565))

(declare-fun m!4988575 () Bool)

(assert (=> b!4365918 m!4988575))

(assert (=> b!4365918 m!4988565))

(declare-fun m!4988577 () Bool)

(assert (=> b!4365918 m!4988577))

(declare-fun m!4988579 () Bool)

(assert (=> b!4365918 m!4988579))

(declare-fun m!4988581 () Bool)

(assert (=> b!4365921 m!4988581))

(assert (=> b!4365713 d!1292121))

(declare-fun d!1292123 () Bool)

(assert (=> d!1292123 (= (get!15941 (getValueByKey!496 (toList!3059 lm!1707) hash!377)) (v!43443 (getValueByKey!496 (toList!3059 lm!1707) hash!377)))))

(assert (=> d!1292053 d!1292123))

(assert (=> d!1292053 d!1292033))

(declare-fun bs!637006 () Bool)

(declare-fun b!4365949 () Bool)

(assert (= bs!637006 (and b!4365949 d!1292035)))

(declare-fun lambda!142742 () Int)

(assert (=> bs!637006 (not (= lambda!142742 lambda!142680))))

(assert (=> b!4365949 true))

(declare-fun bs!637007 () Bool)

(declare-fun b!4365946 () Bool)

(assert (= bs!637007 (and b!4365946 d!1292035)))

(declare-fun lambda!142743 () Int)

(assert (=> bs!637007 (not (= lambda!142743 lambda!142680))))

(declare-fun bs!637008 () Bool)

(assert (= bs!637008 (and b!4365946 b!4365949)))

(assert (=> bs!637008 (= lambda!142743 lambda!142742)))

(assert (=> b!4365946 true))

(declare-fun lambda!142744 () Int)

(assert (=> bs!637007 (not (= lambda!142744 lambda!142680))))

(declare-fun lt!1578717 () ListMap!2303)

(assert (=> bs!637008 (= (= lt!1578717 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142744 lambda!142742))))

(assert (=> b!4365946 (= (= lt!1578717 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142744 lambda!142743))))

(assert (=> b!4365946 true))

(declare-fun bs!637010 () Bool)

(declare-fun d!1292125 () Bool)

(assert (= bs!637010 (and d!1292125 d!1292035)))

(declare-fun lambda!142745 () Int)

(assert (=> bs!637010 (not (= lambda!142745 lambda!142680))))

(declare-fun bs!637011 () Bool)

(assert (= bs!637011 (and d!1292125 b!4365949)))

(declare-fun lt!1578728 () ListMap!2303)

(assert (=> bs!637011 (= (= lt!1578728 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142745 lambda!142742))))

(declare-fun bs!637012 () Bool)

(assert (= bs!637012 (and d!1292125 b!4365946)))

(assert (=> bs!637012 (= (= lt!1578728 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142745 lambda!142743))))

(assert (=> bs!637012 (= (= lt!1578728 lt!1578717) (= lambda!142745 lambda!142744))))

(assert (=> d!1292125 true))

(declare-fun e!2717203 () ListMap!2303)

(assert (=> b!4365946 (= e!2717203 lt!1578717)))

(declare-fun lt!1578735 () ListMap!2303)

(declare-fun +!725 (ListMap!2303 tuple2!48522) ListMap!2303)

(assert (=> b!4365946 (= lt!1578735 (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))

(assert (=> b!4365946 (= lt!1578717 (addToMapMapFromBucket!226 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))) (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun lt!1578727 () Unit!73063)

(declare-fun call!303491 () Unit!73063)

(assert (=> b!4365946 (= lt!1578727 call!303491)))

(assert (=> b!4365946 (forall!9199 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) lambda!142743)))

(declare-fun lt!1578733 () Unit!73063)

(assert (=> b!4365946 (= lt!1578733 lt!1578727)))

(assert (=> b!4365946 (forall!9199 (toList!3060 lt!1578735) lambda!142744)))

(declare-fun lt!1578737 () Unit!73063)

(declare-fun Unit!73077 () Unit!73063)

(assert (=> b!4365946 (= lt!1578737 Unit!73077)))

(assert (=> b!4365946 (forall!9199 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))) lambda!142744)))

(declare-fun lt!1578732 () Unit!73063)

(declare-fun Unit!73078 () Unit!73063)

(assert (=> b!4365946 (= lt!1578732 Unit!73078)))

(declare-fun lt!1578729 () Unit!73063)

(declare-fun Unit!73079 () Unit!73063)

(assert (=> b!4365946 (= lt!1578729 Unit!73079)))

(declare-fun lt!1578722 () Unit!73063)

(declare-fun forallContained!1839 (List!49175 Int tuple2!48522) Unit!73063)

(assert (=> b!4365946 (= lt!1578722 (forallContained!1839 (toList!3060 lt!1578735) lambda!142744 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))

(assert (=> b!4365946 (contains!11326 lt!1578735 (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))

(declare-fun lt!1578718 () Unit!73063)

(declare-fun Unit!73080 () Unit!73063)

(assert (=> b!4365946 (= lt!1578718 Unit!73080)))

(assert (=> b!4365946 (contains!11326 lt!1578717 (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))

(declare-fun lt!1578734 () Unit!73063)

(declare-fun Unit!73081 () Unit!73063)

(assert (=> b!4365946 (= lt!1578734 Unit!73081)))

(assert (=> b!4365946 (forall!9199 (_2!27556 (h!54625 (toList!3059 lm!1707))) lambda!142744)))

(declare-fun lt!1578736 () Unit!73063)

(declare-fun Unit!73082 () Unit!73063)

(assert (=> b!4365946 (= lt!1578736 Unit!73082)))

(assert (=> b!4365946 (forall!9199 (toList!3060 lt!1578735) lambda!142744)))

(declare-fun lt!1578730 () Unit!73063)

(declare-fun Unit!73083 () Unit!73063)

(assert (=> b!4365946 (= lt!1578730 Unit!73083)))

(declare-fun lt!1578723 () Unit!73063)

(declare-fun Unit!73084 () Unit!73063)

(assert (=> b!4365946 (= lt!1578723 Unit!73084)))

(declare-fun lt!1578731 () Unit!73063)

(declare-fun addForallContainsKeyThenBeforeAdding!82 (ListMap!2303 ListMap!2303 K!10413 V!10659) Unit!73063)

(assert (=> b!4365946 (= lt!1578731 (addForallContainsKeyThenBeforeAdding!82 (extractMap!597 (t!356096 (toList!3059 lm!1707))) lt!1578717 (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (_2!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun call!303490 () Bool)

(assert (=> b!4365946 call!303490))

(declare-fun lt!1578719 () Unit!73063)

(assert (=> b!4365946 (= lt!1578719 lt!1578731)))

(assert (=> b!4365946 (forall!9199 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) lambda!142744)))

(declare-fun lt!1578724 () Unit!73063)

(declare-fun Unit!73085 () Unit!73063)

(assert (=> b!4365946 (= lt!1578724 Unit!73085)))

(declare-fun res!1795950 () Bool)

(declare-fun call!303492 () Bool)

(assert (=> b!4365946 (= res!1795950 call!303492)))

(declare-fun e!2717202 () Bool)

(assert (=> b!4365946 (=> (not res!1795950) (not e!2717202))))

(assert (=> b!4365946 e!2717202))

(declare-fun lt!1578721 () Unit!73063)

(declare-fun Unit!73086 () Unit!73063)

(assert (=> b!4365946 (= lt!1578721 Unit!73086)))

(declare-fun b!4365947 () Bool)

(declare-fun e!2717201 () Bool)

(assert (=> b!4365947 (= e!2717201 (invariantList!699 (toList!3060 lt!1578728)))))

(assert (=> d!1292125 e!2717201))

(declare-fun res!1795951 () Bool)

(assert (=> d!1292125 (=> (not res!1795951) (not e!2717201))))

(assert (=> d!1292125 (= res!1795951 (forall!9199 (_2!27556 (h!54625 (toList!3059 lm!1707))) lambda!142745))))

(assert (=> d!1292125 (= lt!1578728 e!2717203)))

(declare-fun c!742292 () Bool)

(assert (=> d!1292125 (= c!742292 (is-Nil!49051 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))

(assert (=> d!1292125 (noDuplicateKeys!538 (_2!27556 (h!54625 (toList!3059 lm!1707))))))

(assert (=> d!1292125 (= (addToMapMapFromBucket!226 (_2!27556 (h!54625 (toList!3059 lm!1707))) (extractMap!597 (t!356096 (toList!3059 lm!1707)))) lt!1578728)))

(declare-fun bm!303485 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!82 (ListMap!2303) Unit!73063)

(assert (=> bm!303485 (= call!303491 (lemmaContainsAllItsOwnKeys!82 (extractMap!597 (t!356096 (toList!3059 lm!1707)))))))

(declare-fun b!4365948 () Bool)

(declare-fun res!1795949 () Bool)

(assert (=> b!4365948 (=> (not res!1795949) (not e!2717201))))

(assert (=> b!4365948 (= res!1795949 (forall!9199 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) lambda!142745))))

(assert (=> b!4365949 (= e!2717203 (extractMap!597 (t!356096 (toList!3059 lm!1707))))))

(declare-fun lt!1578725 () Unit!73063)

(assert (=> b!4365949 (= lt!1578725 call!303491)))

(assert (=> b!4365949 call!303490))

(declare-fun lt!1578720 () Unit!73063)

(assert (=> b!4365949 (= lt!1578720 lt!1578725)))

(assert (=> b!4365949 call!303492))

(declare-fun lt!1578726 () Unit!73063)

(declare-fun Unit!73087 () Unit!73063)

(assert (=> b!4365949 (= lt!1578726 Unit!73087)))

(declare-fun bm!303486 () Bool)

(assert (=> bm!303486 (= call!303492 (forall!9199 (ite c!742292 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (_2!27556 (h!54625 (toList!3059 lm!1707)))) (ite c!742292 lambda!142742 lambda!142744)))))

(declare-fun b!4365950 () Bool)

(assert (=> b!4365950 (= e!2717202 (forall!9199 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) lambda!142744))))

(declare-fun bm!303487 () Bool)

(assert (=> bm!303487 (= call!303490 (forall!9199 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (ite c!742292 lambda!142742 lambda!142744)))))

(assert (= (and d!1292125 c!742292) b!4365949))

(assert (= (and d!1292125 (not c!742292)) b!4365946))

(assert (= (and b!4365946 res!1795950) b!4365950))

(assert (= (or b!4365949 b!4365946) bm!303485))

(assert (= (or b!4365949 b!4365946) bm!303486))

(assert (= (or b!4365949 b!4365946) bm!303487))

(assert (= (and d!1292125 res!1795951) b!4365948))

(assert (= (and b!4365948 res!1795949) b!4365947))

(declare-fun m!4988597 () Bool)

(assert (=> b!4365947 m!4988597))

(declare-fun m!4988599 () Bool)

(assert (=> d!1292125 m!4988599))

(assert (=> d!1292125 m!4988435))

(assert (=> bm!303485 m!4988415))

(declare-fun m!4988601 () Bool)

(assert (=> bm!303485 m!4988601))

(declare-fun m!4988603 () Bool)

(assert (=> bm!303486 m!4988603))

(declare-fun m!4988605 () Bool)

(assert (=> b!4365946 m!4988605))

(assert (=> b!4365946 m!4988415))

(declare-fun m!4988607 () Bool)

(assert (=> b!4365946 m!4988607))

(declare-fun m!4988609 () Bool)

(assert (=> b!4365946 m!4988609))

(declare-fun m!4988611 () Bool)

(assert (=> b!4365946 m!4988611))

(declare-fun m!4988615 () Bool)

(assert (=> b!4365946 m!4988615))

(declare-fun m!4988617 () Bool)

(assert (=> b!4365946 m!4988617))

(assert (=> b!4365946 m!4988415))

(declare-fun m!4988621 () Bool)

(assert (=> b!4365946 m!4988621))

(declare-fun m!4988623 () Bool)

(assert (=> b!4365946 m!4988623))

(declare-fun m!4988625 () Bool)

(assert (=> b!4365946 m!4988625))

(assert (=> b!4365946 m!4988605))

(declare-fun m!4988627 () Bool)

(assert (=> b!4365946 m!4988627))

(assert (=> b!4365946 m!4988607))

(declare-fun m!4988629 () Bool)

(assert (=> b!4365946 m!4988629))

(assert (=> b!4365950 m!4988615))

(declare-fun m!4988631 () Bool)

(assert (=> b!4365948 m!4988631))

(declare-fun m!4988633 () Bool)

(assert (=> bm!303487 m!4988633))

(assert (=> b!4365721 d!1292125))

(declare-fun bs!637014 () Bool)

(declare-fun d!1292141 () Bool)

(assert (= bs!637014 (and d!1292141 start!423358)))

(declare-fun lambda!142746 () Int)

(assert (=> bs!637014 (= lambda!142746 lambda!142674)))

(declare-fun bs!637015 () Bool)

(assert (= bs!637015 (and d!1292141 d!1292041)))

(assert (=> bs!637015 (= lambda!142746 lambda!142683)))

(declare-fun bs!637016 () Bool)

(assert (= bs!637016 (and d!1292141 d!1292045)))

(assert (=> bs!637016 (not (= lambda!142746 lambda!142686))))

(declare-fun lt!1578741 () ListMap!2303)

(assert (=> d!1292141 (invariantList!699 (toList!3060 lt!1578741))))

(declare-fun e!2717206 () ListMap!2303)

(assert (=> d!1292141 (= lt!1578741 e!2717206)))

(declare-fun c!742293 () Bool)

(assert (=> d!1292141 (= c!742293 (is-Cons!49052 (t!356096 (toList!3059 lm!1707))))))

(assert (=> d!1292141 (forall!9197 (t!356096 (toList!3059 lm!1707)) lambda!142746)))

(assert (=> d!1292141 (= (extractMap!597 (t!356096 (toList!3059 lm!1707))) lt!1578741)))

(declare-fun b!4365955 () Bool)

(assert (=> b!4365955 (= e!2717206 (addToMapMapFromBucket!226 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))) (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))))))

(declare-fun b!4365956 () Bool)

(assert (=> b!4365956 (= e!2717206 (ListMap!2304 Nil!49051))))

(assert (= (and d!1292141 c!742293) b!4365955))

(assert (= (and d!1292141 (not c!742293)) b!4365956))

(declare-fun m!4988635 () Bool)

(assert (=> d!1292141 m!4988635))

(declare-fun m!4988637 () Bool)

(assert (=> d!1292141 m!4988637))

(declare-fun m!4988639 () Bool)

(assert (=> b!4365955 m!4988639))

(assert (=> b!4365955 m!4988639))

(declare-fun m!4988641 () Bool)

(assert (=> b!4365955 m!4988641))

(assert (=> b!4365721 d!1292141))

(assert (=> d!1292037 d!1292115))

(declare-fun e!2717207 () Bool)

(declare-fun tp!1330673 () Bool)

(declare-fun b!4365957 () Bool)

(assert (=> b!4365957 (= e!2717207 (and tp_is_empty!25389 tp_is_empty!25391 tp!1330673))))

(assert (=> b!4365750 (= tp!1330659 e!2717207)))

(assert (= (and b!4365750 (is-Cons!49051 (_2!27556 (h!54625 (toList!3059 lm!1707))))) b!4365957))

(declare-fun b!4365958 () Bool)

(declare-fun e!2717208 () Bool)

(declare-fun tp!1330674 () Bool)

(declare-fun tp!1330675 () Bool)

(assert (=> b!4365958 (= e!2717208 (and tp!1330674 tp!1330675))))

(assert (=> b!4365750 (= tp!1330660 e!2717208)))

(assert (= (and b!4365750 (is-Cons!49052 (t!356096 (toList!3059 lm!1707)))) b!4365958))

(declare-fun tp!1330676 () Bool)

(declare-fun b!4365959 () Bool)

(declare-fun e!2717209 () Bool)

(assert (=> b!4365959 (= e!2717209 (and tp_is_empty!25389 tp_is_empty!25391 tp!1330676))))

(assert (=> b!4365755 (= tp!1330663 e!2717209)))

(assert (= (and b!4365755 (is-Cons!49051 (t!356095 (t!356095 newBucket!200)))) b!4365959))

(declare-fun b_lambda!132287 () Bool)

(assert (= b_lambda!132281 (or d!1292035 b_lambda!132287)))

(declare-fun bs!637017 () Bool)

(declare-fun d!1292143 () Bool)

(assert (= bs!637017 (and d!1292143 d!1292035)))

(assert (=> bs!637017 (= (dynLambda!20664 lambda!142680 (h!54624 newBucket!200)) (= (hash!1682 hashF!1247 (_1!27555 (h!54624 newBucket!200))) hash!377))))

(declare-fun m!4988643 () Bool)

(assert (=> bs!637017 m!4988643))

(assert (=> b!4365871 d!1292143))

(declare-fun b_lambda!132289 () Bool)

(assert (= b_lambda!132279 (or start!423358 b_lambda!132289)))

(declare-fun bs!637018 () Bool)

(declare-fun d!1292145 () Bool)

(assert (= bs!637018 (and d!1292145 start!423358)))

(assert (=> bs!637018 (= (dynLambda!20662 lambda!142674 (h!54625 (t!356096 (toList!3059 lm!1707)))) (noDuplicateKeys!538 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707))))))))

(declare-fun m!4988645 () Bool)

(assert (=> bs!637018 m!4988645))

(assert (=> b!4365865 d!1292145))

(declare-fun b_lambda!132291 () Bool)

(assert (= b_lambda!132271 (or d!1292045 b_lambda!132291)))

(declare-fun bs!637019 () Bool)

(declare-fun d!1292147 () Bool)

(assert (= bs!637019 (and d!1292147 d!1292045)))

(assert (=> bs!637019 (= (dynLambda!20662 lambda!142686 (h!54625 (toList!3059 lm!1707))) (allKeysSameHash!496 (_2!27556 (h!54625 (toList!3059 lm!1707))) (_1!27556 (h!54625 (toList!3059 lm!1707))) hashF!1247))))

(declare-fun m!4988647 () Bool)

(assert (=> bs!637019 m!4988647))

(assert (=> b!4365803 d!1292147))

(declare-fun b_lambda!132293 () Bool)

(assert (= b_lambda!132273 (or d!1292041 b_lambda!132293)))

(declare-fun bs!637020 () Bool)

(declare-fun d!1292149 () Bool)

(assert (= bs!637020 (and d!1292149 d!1292041)))

(assert (=> bs!637020 (= (dynLambda!20662 lambda!142683 (h!54625 (toList!3059 lm!1707))) (noDuplicateKeys!538 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))

(assert (=> bs!637020 m!4988435))

(assert (=> b!4365814 d!1292149))

(push 1)

(assert (not b!4365923))

(assert (not d!1292109))

(assert (not b!4365948))

(assert (not b_lambda!132291))

(assert (not b!4365924))

(assert (not b!4365804))

(assert (not b_lambda!132293))

(assert (not d!1292099))

(assert (not d!1292117))

(assert (not b!4365843))

(assert (not b!4365897))

(assert (not d!1292075))

(assert (not d!1292097))

(assert (not b!4365815))

(assert (not bs!637018))

(assert (not b!4365832))

(assert (not b_lambda!132289))

(assert (not d!1292081))

(assert (not b!4365882))

(assert (not bm!303485))

(assert (not b!4365880))

(assert (not b!4365877))

(assert (not b!4365878))

(assert (not b!4365872))

(assert (not d!1292125))

(assert (not b!4365950))

(assert (not b!4365955))

(assert (not b!4365894))

(assert (not b_lambda!132269))

(assert (not b!4365918))

(assert (not b!4365959))

(assert tp_is_empty!25389)

(assert (not bs!637020))

(assert (not d!1292141))

(assert (not d!1292071))

(assert (not b!4365921))

(assert (not bs!637017))

(assert (not bm!303487))

(assert tp_is_empty!25391)

(assert (not b!4365888))

(assert (not b!4365861))

(assert (not b!4365957))

(assert (not b!4365813))

(assert (not bm!303486))

(assert (not b!4365958))

(assert (not b!4365917))

(assert (not d!1292093))

(assert (not d!1292121))

(assert (not d!1292087))

(assert (not b!4365860))

(assert (not d!1292083))

(assert (not b!4365947))

(assert (not b_lambda!132287))

(assert (not b!4365946))

(assert (not b!4365866))

(assert (not bs!637019))

(assert (not d!1292077))

(assert (not b!4365862))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1292185 () Bool)

(declare-fun res!1796014 () Bool)

(declare-fun e!2717275 () Bool)

(assert (=> d!1292185 (=> res!1796014 e!2717275)))

(assert (=> d!1292185 (= res!1796014 (or (is-Nil!49052 (t!356096 (t!356096 (toList!3059 lm!1707)))) (is-Nil!49052 (t!356096 (t!356096 (t!356096 (toList!3059 lm!1707)))))))))

(assert (=> d!1292185 (= (isStrictlySorted!125 (t!356096 (t!356096 (toList!3059 lm!1707)))) e!2717275)))

(declare-fun b!4366066 () Bool)

(declare-fun e!2717276 () Bool)

(assert (=> b!4366066 (= e!2717275 e!2717276)))

(declare-fun res!1796015 () Bool)

(assert (=> b!4366066 (=> (not res!1796015) (not e!2717276))))

(assert (=> b!4366066 (= res!1796015 (bvslt (_1!27556 (h!54625 (t!356096 (t!356096 (toList!3059 lm!1707))))) (_1!27556 (h!54625 (t!356096 (t!356096 (t!356096 (toList!3059 lm!1707))))))))))

(declare-fun b!4366067 () Bool)

(assert (=> b!4366067 (= e!2717276 (isStrictlySorted!125 (t!356096 (t!356096 (t!356096 (toList!3059 lm!1707))))))))

(assert (= (and d!1292185 (not res!1796014)) b!4366066))

(assert (= (and b!4366066 res!1796015) b!4366067))

(declare-fun m!4988731 () Bool)

(assert (=> b!4366067 m!4988731))

(assert (=> b!4365882 d!1292185))

(declare-fun d!1292187 () Bool)

(declare-fun c!742316 () Bool)

(assert (=> d!1292187 (= c!742316 (is-Nil!49055 e!2717045))))

(declare-fun e!2717279 () (Set K!10413))

(assert (=> d!1292187 (= (content!7770 e!2717045) e!2717279)))

(declare-fun b!4366072 () Bool)

(assert (=> b!4366072 (= e!2717279 (as set.empty (Set K!10413)))))

(declare-fun b!4366073 () Bool)

(assert (=> b!4366073 (= e!2717279 (set.union (set.insert (h!54629 e!2717045) (as set.empty (Set K!10413))) (content!7770 (t!356099 e!2717045))))))

(assert (= (and d!1292187 c!742316) b!4366072))

(assert (= (and d!1292187 (not c!742316)) b!4366073))

(declare-fun m!4988733 () Bool)

(assert (=> b!4366073 m!4988733))

(declare-fun m!4988735 () Bool)

(assert (=> b!4366073 m!4988735))

(assert (=> d!1292109 d!1292187))

(assert (=> d!1292117 d!1292115))

(declare-fun d!1292189 () Bool)

(assert (=> d!1292189 (containsKey!775 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918)))

(assert (=> d!1292189 true))

(declare-fun _$15!562 () Unit!73063)

(assert (=> d!1292189 (= (choose!27126 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918) _$15!562)))

(declare-fun bs!637038 () Bool)

(assert (= bs!637038 d!1292189))

(assert (=> bs!637038 m!4988397))

(assert (=> d!1292117 d!1292189))

(declare-fun d!1292191 () Bool)

(assert (=> d!1292191 (= (invariantList!699 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (noDuplicatedKeys!125 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))

(declare-fun bs!637039 () Bool)

(assert (= bs!637039 d!1292191))

(declare-fun m!4988737 () Bool)

(assert (=> bs!637039 m!4988737))

(assert (=> d!1292117 d!1292191))

(declare-fun d!1292193 () Bool)

(declare-fun lt!1578842 () Bool)

(assert (=> d!1292193 (= lt!1578842 (set.member (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (content!7770 (getKeysList!147 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))))))

(declare-fun e!2717281 () Bool)

(assert (=> d!1292193 (= lt!1578842 e!2717281)))

(declare-fun res!1796017 () Bool)

(assert (=> d!1292193 (=> (not res!1796017) (not e!2717281))))

(assert (=> d!1292193 (= res!1796017 (is-Cons!49055 (getKeysList!147 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))))

(assert (=> d!1292193 (= (contains!11330 (getKeysList!147 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) lt!1578842)))

(declare-fun b!4366074 () Bool)

(declare-fun e!2717280 () Bool)

(assert (=> b!4366074 (= e!2717281 e!2717280)))

(declare-fun res!1796016 () Bool)

(assert (=> b!4366074 (=> res!1796016 e!2717280)))

(assert (=> b!4366074 (= res!1796016 (= (h!54629 (getKeysList!147 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))))

(declare-fun b!4366075 () Bool)

(assert (=> b!4366075 (= e!2717280 (contains!11330 (t!356099 (getKeysList!147 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))))

(assert (= (and d!1292193 res!1796017) b!4366074))

(assert (= (and b!4366074 (not res!1796016)) b!4366075))

(assert (=> d!1292193 m!4988565))

(declare-fun m!4988739 () Bool)

(assert (=> d!1292193 m!4988739))

(declare-fun m!4988741 () Bool)

(assert (=> d!1292193 m!4988741))

(declare-fun m!4988743 () Bool)

(assert (=> b!4366075 m!4988743))

(assert (=> b!4365918 d!1292193))

(declare-fun bs!637040 () Bool)

(declare-fun b!4366083 () Bool)

(assert (= bs!637040 (and b!4366083 b!4365861)))

(declare-fun lambda!142797 () Int)

(assert (=> bs!637040 (= (= (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (= lambda!142797 lambda!142700))))

(declare-fun bs!637041 () Bool)

(assert (= bs!637041 (and b!4366083 b!4365924)))

(assert (=> bs!637041 (= (= (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (= lambda!142797 lambda!142710))))

(declare-fun bs!637042 () Bool)

(assert (= bs!637042 (and b!4366083 b!4365918)))

(assert (=> bs!637042 (= (= (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (Cons!49051 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) (= lambda!142797 lambda!142711))))

(declare-fun bs!637043 () Bool)

(assert (= bs!637043 (and b!4366083 b!4365921)))

(assert (=> bs!637043 (= (= (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (= lambda!142797 lambda!142712))))

(assert (=> b!4366083 true))

(declare-fun bs!637045 () Bool)

(declare-fun b!4366077 () Bool)

(assert (= bs!637045 (and b!4366077 b!4365918)))

(declare-fun lambda!142799 () Int)

(assert (=> bs!637045 (= (= (Cons!49051 (h!54624 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) (Cons!49051 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) (= lambda!142799 lambda!142711))))

(declare-fun bs!637048 () Bool)

(assert (= bs!637048 (and b!4366077 b!4365924)))

(assert (=> bs!637048 (= (= (Cons!49051 (h!54624 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (= lambda!142799 lambda!142710))))

(declare-fun bs!637049 () Bool)

(assert (= bs!637049 (and b!4366077 b!4366083)))

(assert (=> bs!637049 (= (= (Cons!49051 (h!54624 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) (= lambda!142799 lambda!142797))))

(declare-fun bs!637050 () Bool)

(assert (= bs!637050 (and b!4366077 b!4365921)))

(assert (=> bs!637050 (= (= (Cons!49051 (h!54624 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (= lambda!142799 lambda!142712))))

(declare-fun bs!637051 () Bool)

(assert (= bs!637051 (and b!4366077 b!4365861)))

(assert (=> bs!637051 (= (= (Cons!49051 (h!54624 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (= lambda!142799 lambda!142700))))

(assert (=> b!4366077 true))

(declare-fun bs!637052 () Bool)

(declare-fun b!4366080 () Bool)

(assert (= bs!637052 (and b!4366080 b!4365918)))

(declare-fun lambda!142800 () Int)

(assert (=> bs!637052 (= (= (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (Cons!49051 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) (= lambda!142800 lambda!142711))))

(declare-fun bs!637053 () Bool)

(assert (= bs!637053 (and b!4366080 b!4365924)))

(assert (=> bs!637053 (= lambda!142800 lambda!142710)))

(declare-fun bs!637054 () Bool)

(assert (= bs!637054 (and b!4366080 b!4366083)))

(assert (=> bs!637054 (= (= (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) (= lambda!142800 lambda!142797))))

(declare-fun bs!637055 () Bool)

(assert (= bs!637055 (and b!4366080 b!4365921)))

(assert (=> bs!637055 (= (= (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (= lambda!142800 lambda!142712))))

(declare-fun bs!637056 () Bool)

(assert (= bs!637056 (and b!4366080 b!4365861)))

(assert (=> bs!637056 (= (= (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (= lambda!142800 lambda!142700))))

(declare-fun bs!637057 () Bool)

(assert (= bs!637057 (and b!4366080 b!4366077)))

(assert (=> bs!637057 (= (= (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (Cons!49051 (h!54624 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))) (= lambda!142800 lambda!142799))))

(assert (=> b!4366080 true))

(declare-fun bs!637058 () Bool)

(declare-fun b!4366076 () Bool)

(assert (= bs!637058 (and b!4366076 b!4365862)))

(declare-fun lambda!142801 () Int)

(assert (=> bs!637058 (= lambda!142801 lambda!142701)))

(declare-fun bs!637059 () Bool)

(assert (= bs!637059 (and b!4366076 b!4365917)))

(assert (=> bs!637059 (= lambda!142801 lambda!142713)))

(declare-fun lt!1578844 () List!49179)

(declare-fun e!2717284 () Bool)

(assert (=> b!4366076 (= e!2717284 (= (content!7770 lt!1578844) (content!7770 (map!10675 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) lambda!142801))))))

(declare-fun e!2717285 () List!49179)

(assert (=> b!4366077 (= e!2717285 (Cons!49055 (_1!27555 (h!54624 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) (getKeysList!147 (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))))))

(declare-fun c!742317 () Bool)

(assert (=> b!4366077 (= c!742317 (containsKey!775 (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (_1!27555 (h!54624 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))))))

(declare-fun lt!1578845 () Unit!73063)

(declare-fun e!2717282 () Unit!73063)

(assert (=> b!4366077 (= lt!1578845 e!2717282)))

(declare-fun c!742318 () Bool)

(assert (=> b!4366077 (= c!742318 (contains!11330 (getKeysList!147 (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) (_1!27555 (h!54624 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))))))

(declare-fun lt!1578848 () Unit!73063)

(declare-fun e!2717283 () Unit!73063)

(assert (=> b!4366077 (= lt!1578848 e!2717283)))

(declare-fun lt!1578849 () List!49179)

(assert (=> b!4366077 (= lt!1578849 (getKeysList!147 (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))))

(declare-fun lt!1578846 () Unit!73063)

(assert (=> b!4366077 (= lt!1578846 (lemmaForallContainsAddHeadPreserves!31 (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) lt!1578849 (h!54624 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))))

(assert (=> b!4366077 (forall!9201 lt!1578849 lambda!142799)))

(declare-fun lt!1578843 () Unit!73063)

(assert (=> b!4366077 (= lt!1578843 lt!1578846)))

(declare-fun b!4366078 () Bool)

(declare-fun Unit!73103 () Unit!73063)

(assert (=> b!4366078 (= e!2717282 Unit!73103)))

(declare-fun d!1292195 () Bool)

(assert (=> d!1292195 e!2717284))

(declare-fun res!1796020 () Bool)

(assert (=> d!1292195 (=> (not res!1796020) (not e!2717284))))

(assert (=> d!1292195 (= res!1796020 (noDuplicate!609 lt!1578844))))

(assert (=> d!1292195 (= lt!1578844 e!2717285)))

(declare-fun c!742319 () Bool)

(assert (=> d!1292195 (= c!742319 (is-Cons!49051 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))))

(assert (=> d!1292195 (invariantList!699 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))

(assert (=> d!1292195 (= (getKeysList!147 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) lt!1578844)))

(declare-fun b!4366079 () Bool)

(declare-fun Unit!73104 () Unit!73063)

(assert (=> b!4366079 (= e!2717283 Unit!73104)))

(declare-fun res!1796019 () Bool)

(assert (=> b!4366080 (=> (not res!1796019) (not e!2717284))))

(assert (=> b!4366080 (= res!1796019 (forall!9201 lt!1578844 lambda!142800))))

(declare-fun b!4366081 () Bool)

(assert (=> b!4366081 false))

(declare-fun Unit!73105 () Unit!73063)

(assert (=> b!4366081 (= e!2717282 Unit!73105)))

(declare-fun b!4366082 () Bool)

(declare-fun res!1796018 () Bool)

(assert (=> b!4366082 (=> (not res!1796018) (not e!2717284))))

(assert (=> b!4366082 (= res!1796018 (= (length!74 lt!1578844) (length!75 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))))

(assert (=> b!4366083 false))

(declare-fun lt!1578847 () Unit!73063)

(assert (=> b!4366083 (= lt!1578847 (forallContained!1838 (getKeysList!147 (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) lambda!142797 (_1!27555 (h!54624 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))))))

(declare-fun Unit!73106 () Unit!73063)

(assert (=> b!4366083 (= e!2717283 Unit!73106)))

(declare-fun b!4366084 () Bool)

(assert (=> b!4366084 (= e!2717285 Nil!49055)))

(assert (= (and d!1292195 c!742319) b!4366077))

(assert (= (and d!1292195 (not c!742319)) b!4366084))

(assert (= (and b!4366077 c!742317) b!4366081))

(assert (= (and b!4366077 (not c!742317)) b!4366078))

(assert (= (and b!4366077 c!742318) b!4366083))

(assert (= (and b!4366077 (not c!742318)) b!4366079))

(assert (= (and d!1292195 res!1796020) b!4366082))

(assert (= (and b!4366082 res!1796018) b!4366080))

(assert (= (and b!4366080 res!1796019) b!4366076))

(declare-fun m!4988793 () Bool)

(assert (=> b!4366076 m!4988793))

(declare-fun m!4988795 () Bool)

(assert (=> b!4366076 m!4988795))

(assert (=> b!4366076 m!4988795))

(declare-fun m!4988797 () Bool)

(assert (=> b!4366076 m!4988797))

(declare-fun m!4988799 () Bool)

(assert (=> b!4366083 m!4988799))

(assert (=> b!4366083 m!4988799))

(declare-fun m!4988801 () Bool)

(assert (=> b!4366083 m!4988801))

(declare-fun m!4988803 () Bool)

(assert (=> d!1292195 m!4988803))

(declare-fun m!4988805 () Bool)

(assert (=> d!1292195 m!4988805))

(declare-fun m!4988807 () Bool)

(assert (=> b!4366082 m!4988807))

(declare-fun m!4988809 () Bool)

(assert (=> b!4366082 m!4988809))

(declare-fun m!4988811 () Bool)

(assert (=> b!4366077 m!4988811))

(assert (=> b!4366077 m!4988799))

(declare-fun m!4988813 () Bool)

(assert (=> b!4366077 m!4988813))

(assert (=> b!4366077 m!4988799))

(declare-fun m!4988815 () Bool)

(assert (=> b!4366077 m!4988815))

(declare-fun m!4988817 () Bool)

(assert (=> b!4366077 m!4988817))

(declare-fun m!4988819 () Bool)

(assert (=> b!4366080 m!4988819))

(assert (=> b!4365918 d!1292195))

(declare-fun bs!637064 () Bool)

(declare-fun d!1292207 () Bool)

(assert (= bs!637064 (and d!1292207 b!4365918)))

(declare-fun lambda!142804 () Int)

(assert (=> bs!637064 (= lambda!142804 lambda!142711)))

(declare-fun bs!637065 () Bool)

(assert (= bs!637065 (and d!1292207 b!4365924)))

(assert (=> bs!637065 (= (= (Cons!49051 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (= lambda!142804 lambda!142710))))

(declare-fun bs!637066 () Bool)

(assert (= bs!637066 (and d!1292207 b!4366083)))

(assert (=> bs!637066 (= (= (Cons!49051 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) (= lambda!142804 lambda!142797))))

(declare-fun bs!637067 () Bool)

(assert (= bs!637067 (and d!1292207 b!4365861)))

(assert (=> bs!637067 (= (= (Cons!49051 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (= lambda!142804 lambda!142700))))

(declare-fun bs!637068 () Bool)

(assert (= bs!637068 (and d!1292207 b!4366077)))

(assert (=> bs!637068 (= (= (Cons!49051 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (Cons!49051 (h!54624 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))) (= lambda!142804 lambda!142799))))

(declare-fun bs!637069 () Bool)

(assert (= bs!637069 (and d!1292207 b!4366080)))

(assert (=> bs!637069 (= (= (Cons!49051 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (= lambda!142804 lambda!142800))))

(declare-fun bs!637070 () Bool)

(assert (= bs!637070 (and d!1292207 b!4365921)))

(assert (=> bs!637070 (= (= (Cons!49051 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (= lambda!142804 lambda!142712))))

(assert (=> d!1292207 true))

(assert (=> d!1292207 true))

(assert (=> d!1292207 (forall!9201 lt!1578674 lambda!142804)))

(declare-fun lt!1578853 () Unit!73063)

(declare-fun choose!27132 (List!49175 List!49179 tuple2!48522) Unit!73063)

(assert (=> d!1292207 (= lt!1578853 (choose!27132 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) lt!1578674 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))))

(assert (=> d!1292207 (invariantList!699 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))

(assert (=> d!1292207 (= (lemmaForallContainsAddHeadPreserves!31 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) lt!1578674 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) lt!1578853)))

(declare-fun bs!637071 () Bool)

(assert (= bs!637071 d!1292207))

(declare-fun m!4988821 () Bool)

(assert (=> bs!637071 m!4988821))

(declare-fun m!4988823 () Bool)

(assert (=> bs!637071 m!4988823))

(assert (=> bs!637071 m!4988805))

(assert (=> b!4365918 d!1292207))

(declare-fun d!1292209 () Bool)

(declare-fun res!1796025 () Bool)

(declare-fun e!2717294 () Bool)

(assert (=> d!1292209 (=> res!1796025 e!2717294)))

(assert (=> d!1292209 (= res!1796025 (is-Nil!49055 lt!1578674))))

(assert (=> d!1292209 (= (forall!9201 lt!1578674 lambda!142711) e!2717294)))

(declare-fun b!4366096 () Bool)

(declare-fun e!2717295 () Bool)

(assert (=> b!4366096 (= e!2717294 e!2717295)))

(declare-fun res!1796026 () Bool)

(assert (=> b!4366096 (=> (not res!1796026) (not e!2717295))))

(declare-fun dynLambda!20666 (Int K!10413) Bool)

(assert (=> b!4366096 (= res!1796026 (dynLambda!20666 lambda!142711 (h!54629 lt!1578674)))))

(declare-fun b!4366097 () Bool)

(assert (=> b!4366097 (= e!2717295 (forall!9201 (t!356099 lt!1578674) lambda!142711))))

(assert (= (and d!1292209 (not res!1796025)) b!4366096))

(assert (= (and b!4366096 res!1796026) b!4366097))

(declare-fun b_lambda!132307 () Bool)

(assert (=> (not b_lambda!132307) (not b!4366096)))

(declare-fun m!4988825 () Bool)

(assert (=> b!4366096 m!4988825))

(declare-fun m!4988827 () Bool)

(assert (=> b!4366097 m!4988827))

(assert (=> b!4365918 d!1292209))

(declare-fun d!1292211 () Bool)

(declare-fun res!1796027 () Bool)

(declare-fun e!2717296 () Bool)

(assert (=> d!1292211 (=> res!1796027 e!2717296)))

(assert (=> d!1292211 (= res!1796027 (and (is-Cons!49051 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (= (_1!27555 (h!54624 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))))))

(assert (=> d!1292211 (= (containsKey!775 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) e!2717296)))

(declare-fun b!4366098 () Bool)

(declare-fun e!2717297 () Bool)

(assert (=> b!4366098 (= e!2717296 e!2717297)))

(declare-fun res!1796028 () Bool)

(assert (=> b!4366098 (=> (not res!1796028) (not e!2717297))))

(assert (=> b!4366098 (= res!1796028 (is-Cons!49051 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))))

(declare-fun b!4366099 () Bool)

(assert (=> b!4366099 (= e!2717297 (containsKey!775 (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))))

(assert (= (and d!1292211 (not res!1796027)) b!4366098))

(assert (= (and b!4366098 res!1796028) b!4366099))

(declare-fun m!4988829 () Bool)

(assert (=> b!4366099 m!4988829))

(assert (=> b!4365918 d!1292211))

(declare-fun d!1292213 () Bool)

(declare-fun size!35849 (List!49179) Int)

(assert (=> d!1292213 (= (length!74 lt!1578649) (size!35849 lt!1578649))))

(declare-fun bs!637072 () Bool)

(assert (= bs!637072 d!1292213))

(declare-fun m!4988831 () Bool)

(assert (=> bs!637072 m!4988831))

(assert (=> b!4365860 d!1292213))

(declare-fun d!1292215 () Bool)

(declare-fun size!35850 (List!49175) Int)

(assert (=> d!1292215 (= (length!75 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (size!35850 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))

(declare-fun bs!637073 () Bool)

(assert (= bs!637073 d!1292215))

(declare-fun m!4988833 () Bool)

(assert (=> bs!637073 m!4988833))

(assert (=> b!4365860 d!1292215))

(declare-fun d!1292217 () Bool)

(declare-fun res!1796033 () Bool)

(declare-fun e!2717302 () Bool)

(assert (=> d!1292217 (=> res!1796033 e!2717302)))

(assert (=> d!1292217 (= res!1796033 (is-Nil!49055 lt!1578669))))

(assert (=> d!1292217 (= (noDuplicate!609 lt!1578669) e!2717302)))

(declare-fun b!4366104 () Bool)

(declare-fun e!2717303 () Bool)

(assert (=> b!4366104 (= e!2717302 e!2717303)))

(declare-fun res!1796034 () Bool)

(assert (=> b!4366104 (=> (not res!1796034) (not e!2717303))))

(assert (=> b!4366104 (= res!1796034 (not (contains!11330 (t!356099 lt!1578669) (h!54629 lt!1578669))))))

(declare-fun b!4366105 () Bool)

(assert (=> b!4366105 (= e!2717303 (noDuplicate!609 (t!356099 lt!1578669)))))

(assert (= (and d!1292217 (not res!1796033)) b!4366104))

(assert (= (and b!4366104 res!1796034) b!4366105))

(declare-fun m!4988835 () Bool)

(assert (=> b!4366104 m!4988835))

(declare-fun m!4988837 () Bool)

(assert (=> b!4366105 m!4988837))

(assert (=> d!1292121 d!1292217))

(assert (=> d!1292121 d!1292191))

(declare-fun d!1292219 () Bool)

(assert (=> d!1292219 (= (isEmpty!28224 (getValueByKey!496 (toList!3059 lm!1707) hash!377)) (not (is-Some!10509 (getValueByKey!496 (toList!3059 lm!1707) hash!377))))))

(assert (=> d!1292075 d!1292219))

(declare-fun d!1292221 () Bool)

(declare-fun c!742321 () Bool)

(assert (=> d!1292221 (= c!742321 (is-Nil!49055 lt!1578649))))

(declare-fun e!2717304 () (Set K!10413))

(assert (=> d!1292221 (= (content!7770 lt!1578649) e!2717304)))

(declare-fun b!4366106 () Bool)

(assert (=> b!4366106 (= e!2717304 (as set.empty (Set K!10413)))))

(declare-fun b!4366107 () Bool)

(assert (=> b!4366107 (= e!2717304 (set.union (set.insert (h!54629 lt!1578649) (as set.empty (Set K!10413))) (content!7770 (t!356099 lt!1578649))))))

(assert (= (and d!1292221 c!742321) b!4366106))

(assert (= (and d!1292221 (not c!742321)) b!4366107))

(declare-fun m!4988839 () Bool)

(assert (=> b!4366107 m!4988839))

(declare-fun m!4988841 () Bool)

(assert (=> b!4366107 m!4988841))

(assert (=> b!4365862 d!1292221))

(declare-fun d!1292223 () Bool)

(declare-fun c!742322 () Bool)

(assert (=> d!1292223 (= c!742322 (is-Nil!49055 (map!10675 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) lambda!142701)))))

(declare-fun e!2717305 () (Set K!10413))

(assert (=> d!1292223 (= (content!7770 (map!10675 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) lambda!142701)) e!2717305)))

(declare-fun b!4366108 () Bool)

(assert (=> b!4366108 (= e!2717305 (as set.empty (Set K!10413)))))

(declare-fun b!4366109 () Bool)

(assert (=> b!4366109 (= e!2717305 (set.union (set.insert (h!54629 (map!10675 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) lambda!142701)) (as set.empty (Set K!10413))) (content!7770 (t!356099 (map!10675 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) lambda!142701)))))))

(assert (= (and d!1292223 c!742322) b!4366108))

(assert (= (and d!1292223 (not c!742322)) b!4366109))

(declare-fun m!4988843 () Bool)

(assert (=> b!4366109 m!4988843))

(declare-fun m!4988845 () Bool)

(assert (=> b!4366109 m!4988845))

(assert (=> b!4365862 d!1292223))

(declare-fun d!1292225 () Bool)

(declare-fun lt!1578856 () List!49179)

(assert (=> d!1292225 (= (size!35849 lt!1578856) (size!35850 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))

(declare-fun e!2717308 () List!49179)

(assert (=> d!1292225 (= lt!1578856 e!2717308)))

(declare-fun c!742325 () Bool)

(assert (=> d!1292225 (= c!742325 (is-Nil!49051 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))

(assert (=> d!1292225 (= (map!10675 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) lambda!142701) lt!1578856)))

(declare-fun b!4366114 () Bool)

(assert (=> b!4366114 (= e!2717308 Nil!49055)))

(declare-fun b!4366115 () Bool)

(declare-fun $colon$colon!704 (List!49179 K!10413) List!49179)

(declare-fun dynLambda!20667 (Int tuple2!48522) K!10413)

(assert (=> b!4366115 (= e!2717308 ($colon$colon!704 (map!10675 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) lambda!142701) (dynLambda!20667 lambda!142701 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))))

(assert (= (and d!1292225 c!742325) b!4366114))

(assert (= (and d!1292225 (not c!742325)) b!4366115))

(declare-fun b_lambda!132309 () Bool)

(assert (=> (not b_lambda!132309) (not b!4366115)))

(declare-fun m!4988847 () Bool)

(assert (=> d!1292225 m!4988847))

(assert (=> d!1292225 m!4988833))

(declare-fun m!4988849 () Bool)

(assert (=> b!4366115 m!4988849))

(declare-fun m!4988851 () Bool)

(assert (=> b!4366115 m!4988851))

(assert (=> b!4366115 m!4988849))

(assert (=> b!4366115 m!4988851))

(declare-fun m!4988853 () Bool)

(assert (=> b!4366115 m!4988853))

(assert (=> b!4365862 d!1292225))

(declare-fun d!1292227 () Bool)

(declare-fun res!1796035 () Bool)

(declare-fun e!2717309 () Bool)

(assert (=> d!1292227 (=> res!1796035 e!2717309)))

(assert (=> d!1292227 (= res!1796035 (and (is-Cons!49052 (t!356096 (toList!3059 lm!1707))) (= (_1!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))) hash!377)))))

(assert (=> d!1292227 (= (containsKey!776 (t!356096 (toList!3059 lm!1707)) hash!377) e!2717309)))

(declare-fun b!4366116 () Bool)

(declare-fun e!2717310 () Bool)

(assert (=> b!4366116 (= e!2717309 e!2717310)))

(declare-fun res!1796036 () Bool)

(assert (=> b!4366116 (=> (not res!1796036) (not e!2717310))))

(assert (=> b!4366116 (= res!1796036 (and (or (not (is-Cons!49052 (t!356096 (toList!3059 lm!1707)))) (bvsle (_1!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))) hash!377)) (is-Cons!49052 (t!356096 (toList!3059 lm!1707))) (bvslt (_1!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))) hash!377)))))

(declare-fun b!4366117 () Bool)

(assert (=> b!4366117 (= e!2717310 (containsKey!776 (t!356096 (t!356096 (toList!3059 lm!1707))) hash!377))))

(assert (= (and d!1292227 (not res!1796035)) b!4366116))

(assert (= (and b!4366116 res!1796036) b!4366117))

(declare-fun m!4988855 () Bool)

(assert (=> b!4366117 m!4988855))

(assert (=> b!4365888 d!1292227))

(assert (=> d!1292083 d!1292087))

(assert (=> d!1292083 d!1292089))

(declare-fun d!1292229 () Bool)

(assert (=> d!1292229 (isDefined!7804 (getValueByKey!498 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918))))

(assert (=> d!1292229 true))

(declare-fun _$29!531 () Unit!73063)

(assert (=> d!1292229 (= (choose!27124 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918) _$29!531)))

(declare-fun bs!637074 () Bool)

(assert (= bs!637074 d!1292229))

(assert (=> bs!637074 m!4988391))

(assert (=> bs!637074 m!4988391))

(assert (=> bs!637074 m!4988393))

(assert (=> d!1292083 d!1292229))

(assert (=> d!1292083 d!1292191))

(declare-fun d!1292231 () Bool)

(assert (=> d!1292231 (dynLambda!20666 lambda!142710 (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))))

(declare-fun lt!1578859 () Unit!73063)

(declare-fun choose!27133 (List!49179 Int K!10413) Unit!73063)

(assert (=> d!1292231 (= lt!1578859 (choose!27133 (getKeysList!147 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) lambda!142710 (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))))

(declare-fun e!2717313 () Bool)

(assert (=> d!1292231 e!2717313))

(declare-fun res!1796039 () Bool)

(assert (=> d!1292231 (=> (not res!1796039) (not e!2717313))))

(assert (=> d!1292231 (= res!1796039 (forall!9201 (getKeysList!147 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) lambda!142710))))

(assert (=> d!1292231 (= (forallContained!1838 (getKeysList!147 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) lambda!142710 (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) lt!1578859)))

(declare-fun b!4366120 () Bool)

(assert (=> b!4366120 (= e!2717313 (contains!11330 (getKeysList!147 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))))

(assert (= (and d!1292231 res!1796039) b!4366120))

(declare-fun b_lambda!132311 () Bool)

(assert (=> (not b_lambda!132311) (not d!1292231)))

(declare-fun m!4988857 () Bool)

(assert (=> d!1292231 m!4988857))

(assert (=> d!1292231 m!4988565))

(declare-fun m!4988859 () Bool)

(assert (=> d!1292231 m!4988859))

(assert (=> d!1292231 m!4988565))

(declare-fun m!4988861 () Bool)

(assert (=> d!1292231 m!4988861))

(assert (=> b!4366120 m!4988565))

(assert (=> b!4366120 m!4988577))

(assert (=> b!4365924 d!1292231))

(assert (=> b!4365924 d!1292195))

(declare-fun d!1292233 () Bool)

(assert (=> d!1292233 (= (invariantList!699 (toList!3060 lt!1578728)) (noDuplicatedKeys!125 (toList!3060 lt!1578728)))))

(declare-fun bs!637075 () Bool)

(assert (= bs!637075 d!1292233))

(declare-fun m!4988863 () Bool)

(assert (=> bs!637075 m!4988863))

(assert (=> b!4365947 d!1292233))

(declare-fun d!1292235 () Bool)

(declare-fun lt!1578860 () Bool)

(assert (=> d!1292235 (= lt!1578860 (set.member key!3918 (content!7770 (getKeysList!147 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))))

(declare-fun e!2717315 () Bool)

(assert (=> d!1292235 (= lt!1578860 e!2717315)))

(declare-fun res!1796041 () Bool)

(assert (=> d!1292235 (=> (not res!1796041) (not e!2717315))))

(assert (=> d!1292235 (= res!1796041 (is-Cons!49055 (getKeysList!147 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))))

(assert (=> d!1292235 (= (contains!11330 (getKeysList!147 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) key!3918) lt!1578860)))

(declare-fun b!4366121 () Bool)

(declare-fun e!2717314 () Bool)

(assert (=> b!4366121 (= e!2717315 e!2717314)))

(declare-fun res!1796040 () Bool)

(assert (=> b!4366121 (=> res!1796040 e!2717314)))

(assert (=> b!4366121 (= res!1796040 (= (h!54629 (getKeysList!147 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) key!3918))))

(declare-fun b!4366122 () Bool)

(assert (=> b!4366122 (= e!2717314 (contains!11330 (t!356099 (getKeysList!147 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) key!3918))))

(assert (= (and d!1292235 res!1796041) b!4366121))

(assert (= (and b!4366121 (not res!1796040)) b!4366122))

(assert (=> d!1292235 m!4988403))

(declare-fun m!4988865 () Bool)

(assert (=> d!1292235 m!4988865))

(declare-fun m!4988867 () Bool)

(assert (=> d!1292235 m!4988867))

(declare-fun m!4988869 () Bool)

(assert (=> b!4366122 m!4988869))

(assert (=> d!1292093 d!1292235))

(assert (=> d!1292093 d!1292121))

(declare-fun d!1292237 () Bool)

(assert (=> d!1292237 (contains!11330 (getKeysList!147 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) key!3918)))

(assert (=> d!1292237 true))

(declare-fun _$14!777 () Unit!73063)

(assert (=> d!1292237 (= (choose!27125 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918) _$14!777)))

(declare-fun bs!637076 () Bool)

(assert (= bs!637076 d!1292237))

(assert (=> bs!637076 m!4988403))

(assert (=> bs!637076 m!4988403))

(assert (=> bs!637076 m!4988503))

(assert (=> d!1292093 d!1292237))

(assert (=> d!1292093 d!1292191))

(assert (=> d!1292071 d!1292075))

(assert (=> d!1292071 d!1292033))

(declare-fun d!1292239 () Bool)

(assert (=> d!1292239 (isDefined!7805 (getValueByKey!496 (toList!3059 lm!1707) hash!377))))

(assert (=> d!1292239 true))

(declare-fun _$13!1442 () Unit!73063)

(assert (=> d!1292239 (= (choose!27122 (toList!3059 lm!1707) hash!377) _$13!1442)))

(declare-fun bs!637077 () Bool)

(assert (= bs!637077 d!1292239))

(assert (=> bs!637077 m!4988347))

(assert (=> bs!637077 m!4988347))

(assert (=> bs!637077 m!4988433))

(assert (=> d!1292071 d!1292239))

(assert (=> d!1292071 d!1292051))

(declare-fun d!1292241 () Bool)

(declare-fun res!1796042 () Bool)

(declare-fun e!2717316 () Bool)

(assert (=> d!1292241 (=> res!1796042 e!2717316)))

(assert (=> d!1292241 (= res!1796042 (is-Nil!49051 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707))))))))

(assert (=> d!1292241 (= (forall!9199 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) lambda!142745) e!2717316)))

(declare-fun b!4366123 () Bool)

(declare-fun e!2717317 () Bool)

(assert (=> b!4366123 (= e!2717316 e!2717317)))

(declare-fun res!1796043 () Bool)

(assert (=> b!4366123 (=> (not res!1796043) (not e!2717317))))

(assert (=> b!4366123 (= res!1796043 (dynLambda!20664 lambda!142745 (h!54624 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))))))))

(declare-fun b!4366124 () Bool)

(assert (=> b!4366124 (= e!2717317 (forall!9199 (t!356095 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707))))) lambda!142745))))

(assert (= (and d!1292241 (not res!1796042)) b!4366123))

(assert (= (and b!4366123 res!1796043) b!4366124))

(declare-fun b_lambda!132313 () Bool)

(assert (=> (not b_lambda!132313) (not b!4366123)))

(declare-fun m!4988871 () Bool)

(assert (=> b!4366123 m!4988871))

(declare-fun m!4988873 () Bool)

(assert (=> b!4366124 m!4988873))

(assert (=> b!4365948 d!1292241))

(declare-fun d!1292243 () Bool)

(declare-fun res!1796044 () Bool)

(declare-fun e!2717318 () Bool)

(assert (=> d!1292243 (=> res!1796044 e!2717318)))

(assert (=> d!1292243 (= res!1796044 (is-Nil!49051 (ite c!742292 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (_2!27556 (h!54625 (toList!3059 lm!1707))))))))

(assert (=> d!1292243 (= (forall!9199 (ite c!742292 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (_2!27556 (h!54625 (toList!3059 lm!1707)))) (ite c!742292 lambda!142742 lambda!142744)) e!2717318)))

(declare-fun b!4366125 () Bool)

(declare-fun e!2717319 () Bool)

(assert (=> b!4366125 (= e!2717318 e!2717319)))

(declare-fun res!1796045 () Bool)

(assert (=> b!4366125 (=> (not res!1796045) (not e!2717319))))

(assert (=> b!4366125 (= res!1796045 (dynLambda!20664 (ite c!742292 lambda!142742 lambda!142744) (h!54624 (ite c!742292 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun b!4366126 () Bool)

(assert (=> b!4366126 (= e!2717319 (forall!9199 (t!356095 (ite c!742292 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (_2!27556 (h!54625 (toList!3059 lm!1707))))) (ite c!742292 lambda!142742 lambda!142744)))))

(assert (= (and d!1292243 (not res!1796044)) b!4366125))

(assert (= (and b!4366125 res!1796045) b!4366126))

(declare-fun b_lambda!132315 () Bool)

(assert (=> (not b_lambda!132315) (not b!4366125)))

(declare-fun m!4988875 () Bool)

(assert (=> b!4366125 m!4988875))

(declare-fun m!4988877 () Bool)

(assert (=> b!4366126 m!4988877))

(assert (=> bm!303486 d!1292243))

(declare-fun d!1292245 () Bool)

(assert (=> d!1292245 (= (hash!1682 hashF!1247 (_1!27555 (h!54624 newBucket!200))) (hash!1684 hashF!1247 (_1!27555 (h!54624 newBucket!200))))))

(declare-fun bs!637078 () Bool)

(assert (= bs!637078 d!1292245))

(declare-fun m!4988879 () Bool)

(assert (=> bs!637078 m!4988879))

(assert (=> bs!637017 d!1292245))

(declare-fun d!1292247 () Bool)

(declare-fun res!1796046 () Bool)

(declare-fun e!2717320 () Bool)

(assert (=> d!1292247 (=> res!1796046 e!2717320)))

(assert (=> d!1292247 (= res!1796046 (and (is-Cons!49051 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (= (_1!27555 (h!54624 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) key!3918)))))

(assert (=> d!1292247 (= (containsKey!775 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) key!3918) e!2717320)))

(declare-fun b!4366127 () Bool)

(declare-fun e!2717321 () Bool)

(assert (=> b!4366127 (= e!2717320 e!2717321)))

(declare-fun res!1796047 () Bool)

(assert (=> b!4366127 (=> (not res!1796047) (not e!2717321))))

(assert (=> b!4366127 (= res!1796047 (is-Cons!49051 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))))

(declare-fun b!4366128 () Bool)

(assert (=> b!4366128 (= e!2717321 (containsKey!775 (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) key!3918))))

(assert (= (and d!1292247 (not res!1796046)) b!4366127))

(assert (= (and b!4366127 res!1796047) b!4366128))

(declare-fun m!4988881 () Bool)

(assert (=> b!4366128 m!4988881))

(assert (=> b!4365894 d!1292247))

(declare-fun d!1292249 () Bool)

(declare-fun res!1796052 () Bool)

(declare-fun e!2717326 () Bool)

(assert (=> d!1292249 (=> res!1796052 e!2717326)))

(assert (=> d!1292249 (= res!1796052 (or (is-Nil!49051 (toList!3060 lt!1578595)) (is-Nil!49051 (t!356095 (toList!3060 lt!1578595)))))))

(assert (=> d!1292249 (= (noDuplicatedKeys!125 (toList!3060 lt!1578595)) e!2717326)))

(declare-fun b!4366133 () Bool)

(declare-fun e!2717327 () Bool)

(assert (=> b!4366133 (= e!2717326 e!2717327)))

(declare-fun res!1796053 () Bool)

(assert (=> b!4366133 (=> (not res!1796053) (not e!2717327))))

(assert (=> b!4366133 (= res!1796053 (not (containsKey!775 (t!356095 (toList!3060 lt!1578595)) (_1!27555 (h!54624 (toList!3060 lt!1578595))))))))

(declare-fun b!4366134 () Bool)

(assert (=> b!4366134 (= e!2717327 (noDuplicatedKeys!125 (t!356095 (toList!3060 lt!1578595))))))

(assert (= (and d!1292249 (not res!1796052)) b!4366133))

(assert (= (and b!4366133 res!1796053) b!4366134))

(declare-fun m!4988883 () Bool)

(assert (=> b!4366133 m!4988883))

(declare-fun m!4988885 () Bool)

(assert (=> b!4366134 m!4988885))

(assert (=> d!1292077 d!1292249))

(declare-fun d!1292251 () Bool)

(declare-fun res!1796054 () Bool)

(declare-fun e!2717328 () Bool)

(assert (=> d!1292251 (=> res!1796054 e!2717328)))

(assert (=> d!1292251 (= res!1796054 (is-Nil!49051 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707))))))))

(assert (=> d!1292251 (= (forall!9199 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (ite c!742292 lambda!142742 lambda!142744)) e!2717328)))

(declare-fun b!4366135 () Bool)

(declare-fun e!2717329 () Bool)

(assert (=> b!4366135 (= e!2717328 e!2717329)))

(declare-fun res!1796055 () Bool)

(assert (=> b!4366135 (=> (not res!1796055) (not e!2717329))))

(assert (=> b!4366135 (= res!1796055 (dynLambda!20664 (ite c!742292 lambda!142742 lambda!142744) (h!54624 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))))))))

(declare-fun b!4366136 () Bool)

(assert (=> b!4366136 (= e!2717329 (forall!9199 (t!356095 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707))))) (ite c!742292 lambda!142742 lambda!142744)))))

(assert (= (and d!1292251 (not res!1796054)) b!4366135))

(assert (= (and b!4366135 res!1796055) b!4366136))

(declare-fun b_lambda!132317 () Bool)

(assert (=> (not b_lambda!132317) (not b!4366135)))

(declare-fun m!4988887 () Bool)

(assert (=> b!4366135 m!4988887))

(declare-fun m!4988889 () Bool)

(assert (=> b!4366136 m!4988889))

(assert (=> bm!303487 d!1292251))

(declare-fun d!1292253 () Bool)

(declare-fun res!1796060 () Bool)

(declare-fun e!2717334 () Bool)

(assert (=> d!1292253 (=> res!1796060 e!2717334)))

(assert (=> d!1292253 (= res!1796060 (and (is-Cons!49051 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (= (_1!27555 (h!54624 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))))

(assert (=> d!1292253 (= (containsKey!779 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) e!2717334)))

(declare-fun b!4366141 () Bool)

(declare-fun e!2717335 () Bool)

(assert (=> b!4366141 (= e!2717334 e!2717335)))

(declare-fun res!1796061 () Bool)

(assert (=> b!4366141 (=> (not res!1796061) (not e!2717335))))

(assert (=> b!4366141 (= res!1796061 (is-Cons!49051 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))

(declare-fun b!4366142 () Bool)

(assert (=> b!4366142 (= e!2717335 (containsKey!779 (t!356095 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(assert (= (and d!1292253 (not res!1796060)) b!4366141))

(assert (= (and b!4366141 res!1796061) b!4366142))

(declare-fun m!4988891 () Bool)

(assert (=> b!4366142 m!4988891))

(assert (=> b!4365877 d!1292253))

(declare-fun d!1292255 () Bool)

(declare-fun c!742326 () Bool)

(assert (=> d!1292255 (= c!742326 (is-Nil!49055 (keys!16599 (extractMap!597 (toList!3059 lm!1707)))))))

(declare-fun e!2717336 () (Set K!10413))

(assert (=> d!1292255 (= (content!7770 (keys!16599 (extractMap!597 (toList!3059 lm!1707)))) e!2717336)))

(declare-fun b!4366143 () Bool)

(assert (=> b!4366143 (= e!2717336 (as set.empty (Set K!10413)))))

(declare-fun b!4366144 () Bool)

(assert (=> b!4366144 (= e!2717336 (set.union (set.insert (h!54629 (keys!16599 (extractMap!597 (toList!3059 lm!1707)))) (as set.empty (Set K!10413))) (content!7770 (t!356099 (keys!16599 (extractMap!597 (toList!3059 lm!1707)))))))))

(assert (= (and d!1292255 c!742326) b!4366143))

(assert (= (and d!1292255 (not c!742326)) b!4366144))

(declare-fun m!4988893 () Bool)

(assert (=> b!4366144 m!4988893))

(declare-fun m!4988895 () Bool)

(assert (=> b!4366144 m!4988895))

(assert (=> d!1292097 d!1292255))

(declare-fun d!1292257 () Bool)

(declare-fun res!1796062 () Bool)

(declare-fun e!2717337 () Bool)

(assert (=> d!1292257 (=> res!1796062 e!2717337)))

(assert (=> d!1292257 (= res!1796062 (is-Nil!49051 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))

(assert (=> d!1292257 (= (forall!9199 (_2!27556 (h!54625 (toList!3059 lm!1707))) lambda!142745) e!2717337)))

(declare-fun b!4366145 () Bool)

(declare-fun e!2717338 () Bool)

(assert (=> b!4366145 (= e!2717337 e!2717338)))

(declare-fun res!1796063 () Bool)

(assert (=> b!4366145 (=> (not res!1796063) (not e!2717338))))

(assert (=> b!4366145 (= res!1796063 (dynLambda!20664 lambda!142745 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))

(declare-fun b!4366146 () Bool)

(assert (=> b!4366146 (= e!2717338 (forall!9199 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))) lambda!142745))))

(assert (= (and d!1292257 (not res!1796062)) b!4366145))

(assert (= (and b!4366145 res!1796063) b!4366146))

(declare-fun b_lambda!132319 () Bool)

(assert (=> (not b_lambda!132319) (not b!4366145)))

(declare-fun m!4988897 () Bool)

(assert (=> b!4366145 m!4988897))

(declare-fun m!4988899 () Bool)

(assert (=> b!4366146 m!4988899))

(assert (=> d!1292125 d!1292257))

(assert (=> d!1292125 d!1292107))

(declare-fun d!1292259 () Bool)

(declare-fun res!1796064 () Bool)

(declare-fun e!2717339 () Bool)

(assert (=> d!1292259 (=> res!1796064 e!2717339)))

(assert (=> d!1292259 (= res!1796064 (is-Nil!49052 (t!356096 (toList!3059 lm!1707))))))

(assert (=> d!1292259 (= (forall!9197 (t!356096 (toList!3059 lm!1707)) lambda!142686) e!2717339)))

(declare-fun b!4366147 () Bool)

(declare-fun e!2717340 () Bool)

(assert (=> b!4366147 (= e!2717339 e!2717340)))

(declare-fun res!1796065 () Bool)

(assert (=> b!4366147 (=> (not res!1796065) (not e!2717340))))

(assert (=> b!4366147 (= res!1796065 (dynLambda!20662 lambda!142686 (h!54625 (t!356096 (toList!3059 lm!1707)))))))

(declare-fun b!4366148 () Bool)

(assert (=> b!4366148 (= e!2717340 (forall!9197 (t!356096 (t!356096 (toList!3059 lm!1707))) lambda!142686))))

(assert (= (and d!1292259 (not res!1796064)) b!4366147))

(assert (= (and b!4366147 res!1796065) b!4366148))

(declare-fun b_lambda!132321 () Bool)

(assert (=> (not b_lambda!132321) (not b!4366147)))

(declare-fun m!4988901 () Bool)

(assert (=> b!4366147 m!4988901))

(declare-fun m!4988903 () Bool)

(assert (=> b!4366148 m!4988903))

(assert (=> b!4365804 d!1292259))

(declare-fun d!1292261 () Bool)

(assert (=> d!1292261 (= (invariantList!699 (toList!3060 lt!1578741)) (noDuplicatedKeys!125 (toList!3060 lt!1578741)))))

(declare-fun bs!637079 () Bool)

(assert (= bs!637079 d!1292261))

(declare-fun m!4988905 () Bool)

(assert (=> bs!637079 m!4988905))

(assert (=> d!1292141 d!1292261))

(declare-fun d!1292263 () Bool)

(declare-fun res!1796066 () Bool)

(declare-fun e!2717341 () Bool)

(assert (=> d!1292263 (=> res!1796066 e!2717341)))

(assert (=> d!1292263 (= res!1796066 (is-Nil!49052 (t!356096 (toList!3059 lm!1707))))))

(assert (=> d!1292263 (= (forall!9197 (t!356096 (toList!3059 lm!1707)) lambda!142746) e!2717341)))

(declare-fun b!4366149 () Bool)

(declare-fun e!2717342 () Bool)

(assert (=> b!4366149 (= e!2717341 e!2717342)))

(declare-fun res!1796067 () Bool)

(assert (=> b!4366149 (=> (not res!1796067) (not e!2717342))))

(assert (=> b!4366149 (= res!1796067 (dynLambda!20662 lambda!142746 (h!54625 (t!356096 (toList!3059 lm!1707)))))))

(declare-fun b!4366150 () Bool)

(assert (=> b!4366150 (= e!2717342 (forall!9197 (t!356096 (t!356096 (toList!3059 lm!1707))) lambda!142746))))

(assert (= (and d!1292263 (not res!1796066)) b!4366149))

(assert (= (and b!4366149 res!1796067) b!4366150))

(declare-fun b_lambda!132323 () Bool)

(assert (=> (not b_lambda!132323) (not b!4366149)))

(declare-fun m!4988907 () Bool)

(assert (=> b!4366149 m!4988907))

(declare-fun m!4988909 () Bool)

(assert (=> b!4366150 m!4988909))

(assert (=> d!1292141 d!1292263))

(assert (=> bs!637020 d!1292107))

(assert (=> b!4365813 d!1292113))

(declare-fun bs!637080 () Bool)

(declare-fun b!4366154 () Bool)

(assert (= bs!637080 (and b!4366154 b!4365946)))

(declare-fun lambda!142805 () Int)

(assert (=> bs!637080 (= (= (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707)))) (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142805 lambda!142743))))

(assert (=> bs!637080 (= (= (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707)))) lt!1578717) (= lambda!142805 lambda!142744))))

(declare-fun bs!637081 () Bool)

(assert (= bs!637081 (and b!4366154 b!4365949)))

(assert (=> bs!637081 (= (= (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707)))) (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142805 lambda!142742))))

(declare-fun bs!637082 () Bool)

(assert (= bs!637082 (and b!4366154 d!1292035)))

(assert (=> bs!637082 (not (= lambda!142805 lambda!142680))))

(declare-fun bs!637083 () Bool)

(assert (= bs!637083 (and b!4366154 d!1292125)))

(assert (=> bs!637083 (= (= (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707)))) lt!1578728) (= lambda!142805 lambda!142745))))

(assert (=> b!4366154 true))

(declare-fun bs!637084 () Bool)

(declare-fun b!4366151 () Bool)

(assert (= bs!637084 (and b!4366151 b!4365946)))

(declare-fun lambda!142806 () Int)

(assert (=> bs!637084 (= (= (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707)))) (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142806 lambda!142743))))

(assert (=> bs!637084 (= (= (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707)))) lt!1578717) (= lambda!142806 lambda!142744))))

(declare-fun bs!637085 () Bool)

(assert (= bs!637085 (and b!4366151 b!4365949)))

(assert (=> bs!637085 (= (= (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707)))) (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142806 lambda!142742))))

(declare-fun bs!637086 () Bool)

(assert (= bs!637086 (and b!4366151 d!1292125)))

(assert (=> bs!637086 (= (= (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707)))) lt!1578728) (= lambda!142806 lambda!142745))))

(declare-fun bs!637087 () Bool)

(assert (= bs!637087 (and b!4366151 b!4366154)))

(assert (=> bs!637087 (= lambda!142806 lambda!142805)))

(declare-fun bs!637088 () Bool)

(assert (= bs!637088 (and b!4366151 d!1292035)))

(assert (=> bs!637088 (not (= lambda!142806 lambda!142680))))

(assert (=> b!4366151 true))

(declare-fun lambda!142807 () Int)

(declare-fun lt!1578861 () ListMap!2303)

(assert (=> bs!637084 (= (= lt!1578861 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142807 lambda!142743))))

(assert (=> bs!637084 (= (= lt!1578861 lt!1578717) (= lambda!142807 lambda!142744))))

(assert (=> b!4366151 (= (= lt!1578861 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) (= lambda!142807 lambda!142806))))

(assert (=> bs!637085 (= (= lt!1578861 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142807 lambda!142742))))

(assert (=> bs!637086 (= (= lt!1578861 lt!1578728) (= lambda!142807 lambda!142745))))

(assert (=> bs!637087 (= (= lt!1578861 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) (= lambda!142807 lambda!142805))))

(assert (=> bs!637088 (not (= lambda!142807 lambda!142680))))

(assert (=> b!4366151 true))

(declare-fun bs!637089 () Bool)

(declare-fun d!1292265 () Bool)

(assert (= bs!637089 (and d!1292265 b!4365946)))

(declare-fun lambda!142808 () Int)

(declare-fun lt!1578872 () ListMap!2303)

(assert (=> bs!637089 (= (= lt!1578872 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142808 lambda!142743))))

(assert (=> bs!637089 (= (= lt!1578872 lt!1578717) (= lambda!142808 lambda!142744))))

(declare-fun bs!637090 () Bool)

(assert (= bs!637090 (and d!1292265 b!4366151)))

(assert (=> bs!637090 (= (= lt!1578872 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) (= lambda!142808 lambda!142806))))

(declare-fun bs!637091 () Bool)

(assert (= bs!637091 (and d!1292265 b!4365949)))

(assert (=> bs!637091 (= (= lt!1578872 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142808 lambda!142742))))

(assert (=> bs!637090 (= (= lt!1578872 lt!1578861) (= lambda!142808 lambda!142807))))

(declare-fun bs!637092 () Bool)

(assert (= bs!637092 (and d!1292265 d!1292125)))

(assert (=> bs!637092 (= (= lt!1578872 lt!1578728) (= lambda!142808 lambda!142745))))

(declare-fun bs!637093 () Bool)

(assert (= bs!637093 (and d!1292265 b!4366154)))

(assert (=> bs!637093 (= (= lt!1578872 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) (= lambda!142808 lambda!142805))))

(declare-fun bs!637094 () Bool)

(assert (= bs!637094 (and d!1292265 d!1292035)))

(assert (=> bs!637094 (not (= lambda!142808 lambda!142680))))

(assert (=> d!1292265 true))

(declare-fun e!2717345 () ListMap!2303)

(assert (=> b!4366151 (= e!2717345 lt!1578861)))

(declare-fun lt!1578879 () ListMap!2303)

(assert (=> b!4366151 (= lt!1578879 (+!725 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707)))) (h!54624 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))))))))

(assert (=> b!4366151 (= lt!1578861 (addToMapMapFromBucket!226 (t!356095 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707))))) (+!725 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707)))) (h!54624 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707))))))))))

(declare-fun lt!1578871 () Unit!73063)

(declare-fun call!303503 () Unit!73063)

(assert (=> b!4366151 (= lt!1578871 call!303503)))

(assert (=> b!4366151 (forall!9199 (toList!3060 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) lambda!142806)))

(declare-fun lt!1578877 () Unit!73063)

(assert (=> b!4366151 (= lt!1578877 lt!1578871)))

(assert (=> b!4366151 (forall!9199 (toList!3060 lt!1578879) lambda!142807)))

(declare-fun lt!1578881 () Unit!73063)

(declare-fun Unit!73107 () Unit!73063)

(assert (=> b!4366151 (= lt!1578881 Unit!73107)))

(assert (=> b!4366151 (forall!9199 (t!356095 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707))))) lambda!142807)))

(declare-fun lt!1578876 () Unit!73063)

(declare-fun Unit!73108 () Unit!73063)

(assert (=> b!4366151 (= lt!1578876 Unit!73108)))

(declare-fun lt!1578873 () Unit!73063)

(declare-fun Unit!73109 () Unit!73063)

(assert (=> b!4366151 (= lt!1578873 Unit!73109)))

(declare-fun lt!1578866 () Unit!73063)

(assert (=> b!4366151 (= lt!1578866 (forallContained!1839 (toList!3060 lt!1578879) lambda!142807 (h!54624 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))))))))

(assert (=> b!4366151 (contains!11326 lt!1578879 (_1!27555 (h!54624 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))))))))

(declare-fun lt!1578862 () Unit!73063)

(declare-fun Unit!73110 () Unit!73063)

(assert (=> b!4366151 (= lt!1578862 Unit!73110)))

(assert (=> b!4366151 (contains!11326 lt!1578861 (_1!27555 (h!54624 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))))))))

(declare-fun lt!1578878 () Unit!73063)

(declare-fun Unit!73111 () Unit!73063)

(assert (=> b!4366151 (= lt!1578878 Unit!73111)))

(assert (=> b!4366151 (forall!9199 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))) lambda!142807)))

(declare-fun lt!1578880 () Unit!73063)

(declare-fun Unit!73112 () Unit!73063)

(assert (=> b!4366151 (= lt!1578880 Unit!73112)))

(assert (=> b!4366151 (forall!9199 (toList!3060 lt!1578879) lambda!142807)))

(declare-fun lt!1578874 () Unit!73063)

(declare-fun Unit!73113 () Unit!73063)

(assert (=> b!4366151 (= lt!1578874 Unit!73113)))

(declare-fun lt!1578867 () Unit!73063)

(declare-fun Unit!73114 () Unit!73063)

(assert (=> b!4366151 (= lt!1578867 Unit!73114)))

(declare-fun lt!1578875 () Unit!73063)

(assert (=> b!4366151 (= lt!1578875 (addForallContainsKeyThenBeforeAdding!82 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707)))) lt!1578861 (_1!27555 (h!54624 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))))) (_2!27555 (h!54624 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707))))))))))

(declare-fun call!303502 () Bool)

(assert (=> b!4366151 call!303502))

(declare-fun lt!1578863 () Unit!73063)

(assert (=> b!4366151 (= lt!1578863 lt!1578875)))

(assert (=> b!4366151 (forall!9199 (toList!3060 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) lambda!142807)))

(declare-fun lt!1578868 () Unit!73063)

(declare-fun Unit!73115 () Unit!73063)

(assert (=> b!4366151 (= lt!1578868 Unit!73115)))

(declare-fun res!1796069 () Bool)

(declare-fun call!303504 () Bool)

(assert (=> b!4366151 (= res!1796069 call!303504)))

(declare-fun e!2717344 () Bool)

(assert (=> b!4366151 (=> (not res!1796069) (not e!2717344))))

(assert (=> b!4366151 e!2717344))

(declare-fun lt!1578865 () Unit!73063)

(declare-fun Unit!73116 () Unit!73063)

(assert (=> b!4366151 (= lt!1578865 Unit!73116)))

(declare-fun b!4366152 () Bool)

(declare-fun e!2717343 () Bool)

(assert (=> b!4366152 (= e!2717343 (invariantList!699 (toList!3060 lt!1578872)))))

(assert (=> d!1292265 e!2717343))

(declare-fun res!1796070 () Bool)

(assert (=> d!1292265 (=> (not res!1796070) (not e!2717343))))

(assert (=> d!1292265 (= res!1796070 (forall!9199 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))) lambda!142808))))

(assert (=> d!1292265 (= lt!1578872 e!2717345)))

(declare-fun c!742327 () Bool)

(assert (=> d!1292265 (= c!742327 (is-Nil!49051 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707))))))))

(assert (=> d!1292265 (noDuplicateKeys!538 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))))))

(assert (=> d!1292265 (= (addToMapMapFromBucket!226 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))) (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) lt!1578872)))

(declare-fun bm!303497 () Bool)

(assert (=> bm!303497 (= call!303503 (lemmaContainsAllItsOwnKeys!82 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))))))

(declare-fun b!4366153 () Bool)

(declare-fun res!1796068 () Bool)

(assert (=> b!4366153 (=> (not res!1796068) (not e!2717343))))

(assert (=> b!4366153 (= res!1796068 (forall!9199 (toList!3060 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) lambda!142808))))

(assert (=> b!4366154 (= e!2717345 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707)))))))

(declare-fun lt!1578869 () Unit!73063)

(assert (=> b!4366154 (= lt!1578869 call!303503)))

(assert (=> b!4366154 call!303502))

(declare-fun lt!1578864 () Unit!73063)

(assert (=> b!4366154 (= lt!1578864 lt!1578869)))

(assert (=> b!4366154 call!303504))

(declare-fun lt!1578870 () Unit!73063)

(declare-fun Unit!73117 () Unit!73063)

(assert (=> b!4366154 (= lt!1578870 Unit!73117)))

(declare-fun bm!303498 () Bool)

(assert (=> bm!303498 (= call!303504 (forall!9199 (ite c!742327 (toList!3060 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707))))) (ite c!742327 lambda!142805 lambda!142807)))))

(declare-fun b!4366155 () Bool)

(assert (=> b!4366155 (= e!2717344 (forall!9199 (toList!3060 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) lambda!142807))))

(declare-fun bm!303499 () Bool)

(assert (=> bm!303499 (= call!303502 (forall!9199 (toList!3060 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) (ite c!742327 lambda!142805 lambda!142807)))))

(assert (= (and d!1292265 c!742327) b!4366154))

(assert (= (and d!1292265 (not c!742327)) b!4366151))

(assert (= (and b!4366151 res!1796069) b!4366155))

(assert (= (or b!4366154 b!4366151) bm!303497))

(assert (= (or b!4366154 b!4366151) bm!303498))

(assert (= (or b!4366154 b!4366151) bm!303499))

(assert (= (and d!1292265 res!1796070) b!4366153))

(assert (= (and b!4366153 res!1796068) b!4366152))

(declare-fun m!4988911 () Bool)

(assert (=> b!4366152 m!4988911))

(declare-fun m!4988913 () Bool)

(assert (=> d!1292265 m!4988913))

(assert (=> d!1292265 m!4988645))

(assert (=> bm!303497 m!4988639))

(declare-fun m!4988915 () Bool)

(assert (=> bm!303497 m!4988915))

(declare-fun m!4988917 () Bool)

(assert (=> bm!303498 m!4988917))

(declare-fun m!4988919 () Bool)

(assert (=> b!4366151 m!4988919))

(assert (=> b!4366151 m!4988639))

(declare-fun m!4988921 () Bool)

(assert (=> b!4366151 m!4988921))

(declare-fun m!4988923 () Bool)

(assert (=> b!4366151 m!4988923))

(declare-fun m!4988925 () Bool)

(assert (=> b!4366151 m!4988925))

(declare-fun m!4988927 () Bool)

(assert (=> b!4366151 m!4988927))

(declare-fun m!4988929 () Bool)

(assert (=> b!4366151 m!4988929))

(assert (=> b!4366151 m!4988639))

(declare-fun m!4988931 () Bool)

(assert (=> b!4366151 m!4988931))

(declare-fun m!4988933 () Bool)

(assert (=> b!4366151 m!4988933))

(declare-fun m!4988935 () Bool)

(assert (=> b!4366151 m!4988935))

(assert (=> b!4366151 m!4988919))

(declare-fun m!4988937 () Bool)

(assert (=> b!4366151 m!4988937))

(assert (=> b!4366151 m!4988921))

(declare-fun m!4988939 () Bool)

(assert (=> b!4366151 m!4988939))

(assert (=> b!4366155 m!4988927))

(declare-fun m!4988941 () Bool)

(assert (=> b!4366153 m!4988941))

(declare-fun m!4988943 () Bool)

(assert (=> bm!303499 m!4988943))

(assert (=> b!4365955 d!1292265))

(declare-fun bs!637095 () Bool)

(declare-fun d!1292267 () Bool)

(assert (= bs!637095 (and d!1292267 start!423358)))

(declare-fun lambda!142809 () Int)

(assert (=> bs!637095 (= lambda!142809 lambda!142674)))

(declare-fun bs!637096 () Bool)

(assert (= bs!637096 (and d!1292267 d!1292041)))

(assert (=> bs!637096 (= lambda!142809 lambda!142683)))

(declare-fun bs!637097 () Bool)

(assert (= bs!637097 (and d!1292267 d!1292045)))

(assert (=> bs!637097 (not (= lambda!142809 lambda!142686))))

(declare-fun bs!637098 () Bool)

(assert (= bs!637098 (and d!1292267 d!1292141)))

(assert (=> bs!637098 (= lambda!142809 lambda!142746)))

(declare-fun lt!1578882 () ListMap!2303)

(assert (=> d!1292267 (invariantList!699 (toList!3060 lt!1578882))))

(declare-fun e!2717346 () ListMap!2303)

(assert (=> d!1292267 (= lt!1578882 e!2717346)))

(declare-fun c!742328 () Bool)

(assert (=> d!1292267 (= c!742328 (is-Cons!49052 (t!356096 (t!356096 (toList!3059 lm!1707)))))))

(assert (=> d!1292267 (forall!9197 (t!356096 (t!356096 (toList!3059 lm!1707))) lambda!142809)))

(assert (=> d!1292267 (= (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707)))) lt!1578882)))

(declare-fun b!4366156 () Bool)

(assert (=> b!4366156 (= e!2717346 (addToMapMapFromBucket!226 (_2!27556 (h!54625 (t!356096 (t!356096 (toList!3059 lm!1707))))) (extractMap!597 (t!356096 (t!356096 (t!356096 (toList!3059 lm!1707)))))))))

(declare-fun b!4366157 () Bool)

(assert (=> b!4366157 (= e!2717346 (ListMap!2304 Nil!49051))))

(assert (= (and d!1292267 c!742328) b!4366156))

(assert (= (and d!1292267 (not c!742328)) b!4366157))

(declare-fun m!4988945 () Bool)

(assert (=> d!1292267 m!4988945))

(declare-fun m!4988947 () Bool)

(assert (=> d!1292267 m!4988947))

(declare-fun m!4988949 () Bool)

(assert (=> b!4366156 m!4988949))

(assert (=> b!4366156 m!4988949))

(declare-fun m!4988951 () Bool)

(assert (=> b!4366156 m!4988951))

(assert (=> b!4365955 d!1292267))

(declare-fun d!1292269 () Bool)

(declare-fun c!742329 () Bool)

(assert (=> d!1292269 (= c!742329 (is-Nil!49055 lt!1578669))))

(declare-fun e!2717347 () (Set K!10413))

(assert (=> d!1292269 (= (content!7770 lt!1578669) e!2717347)))

(declare-fun b!4366158 () Bool)

(assert (=> b!4366158 (= e!2717347 (as set.empty (Set K!10413)))))

(declare-fun b!4366159 () Bool)

(assert (=> b!4366159 (= e!2717347 (set.union (set.insert (h!54629 lt!1578669) (as set.empty (Set K!10413))) (content!7770 (t!356099 lt!1578669))))))

(assert (= (and d!1292269 c!742329) b!4366158))

(assert (= (and d!1292269 (not c!742329)) b!4366159))

(declare-fun m!4988953 () Bool)

(assert (=> b!4366159 m!4988953))

(declare-fun m!4988955 () Bool)

(assert (=> b!4366159 m!4988955))

(assert (=> b!4365917 d!1292269))

(declare-fun d!1292271 () Bool)

(declare-fun c!742330 () Bool)

(assert (=> d!1292271 (= c!742330 (is-Nil!49055 (map!10675 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) lambda!142713)))))

(declare-fun e!2717348 () (Set K!10413))

(assert (=> d!1292271 (= (content!7770 (map!10675 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) lambda!142713)) e!2717348)))

(declare-fun b!4366160 () Bool)

(assert (=> b!4366160 (= e!2717348 (as set.empty (Set K!10413)))))

(declare-fun b!4366161 () Bool)

(assert (=> b!4366161 (= e!2717348 (set.union (set.insert (h!54629 (map!10675 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) lambda!142713)) (as set.empty (Set K!10413))) (content!7770 (t!356099 (map!10675 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) lambda!142713)))))))

(assert (= (and d!1292271 c!742330) b!4366160))

(assert (= (and d!1292271 (not c!742330)) b!4366161))

(declare-fun m!4988957 () Bool)

(assert (=> b!4366161 m!4988957))

(declare-fun m!4988959 () Bool)

(assert (=> b!4366161 m!4988959))

(assert (=> b!4365917 d!1292271))

(declare-fun d!1292273 () Bool)

(declare-fun lt!1578883 () List!49179)

(assert (=> d!1292273 (= (size!35849 lt!1578883) (size!35850 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))

(declare-fun e!2717349 () List!49179)

(assert (=> d!1292273 (= lt!1578883 e!2717349)))

(declare-fun c!742331 () Bool)

(assert (=> d!1292273 (= c!742331 (is-Nil!49051 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))

(assert (=> d!1292273 (= (map!10675 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) lambda!142713) lt!1578883)))

(declare-fun b!4366162 () Bool)

(assert (=> b!4366162 (= e!2717349 Nil!49055)))

(declare-fun b!4366163 () Bool)

(assert (=> b!4366163 (= e!2717349 ($colon$colon!704 (map!10675 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) lambda!142713) (dynLambda!20667 lambda!142713 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))))

(assert (= (and d!1292273 c!742331) b!4366162))

(assert (= (and d!1292273 (not c!742331)) b!4366163))

(declare-fun b_lambda!132325 () Bool)

(assert (=> (not b_lambda!132325) (not b!4366163)))

(declare-fun m!4988961 () Bool)

(assert (=> d!1292273 m!4988961))

(assert (=> d!1292273 m!4988833))

(declare-fun m!4988963 () Bool)

(assert (=> b!4366163 m!4988963))

(declare-fun m!4988965 () Bool)

(assert (=> b!4366163 m!4988965))

(assert (=> b!4366163 m!4988963))

(assert (=> b!4366163 m!4988965))

(declare-fun m!4988967 () Bool)

(assert (=> b!4366163 m!4988967))

(assert (=> b!4365917 d!1292273))

(declare-fun b!4366164 () Bool)

(declare-fun e!2717350 () Option!10510)

(assert (=> b!4366164 (= e!2717350 (Some!10509 (_2!27556 (h!54625 (t!356096 (t!356096 (toList!3059 lm!1707)))))))))

(declare-fun b!4366166 () Bool)

(declare-fun e!2717351 () Option!10510)

(assert (=> b!4366166 (= e!2717351 (getValueByKey!496 (t!356096 (t!356096 (t!356096 (toList!3059 lm!1707)))) hash!377))))

(declare-fun b!4366167 () Bool)

(assert (=> b!4366167 (= e!2717351 None!10509)))

(declare-fun b!4366165 () Bool)

(assert (=> b!4366165 (= e!2717350 e!2717351)))

(declare-fun c!742333 () Bool)

(assert (=> b!4366165 (= c!742333 (and (is-Cons!49052 (t!356096 (t!356096 (toList!3059 lm!1707)))) (not (= (_1!27556 (h!54625 (t!356096 (t!356096 (toList!3059 lm!1707))))) hash!377))))))

(declare-fun d!1292275 () Bool)

(declare-fun c!742332 () Bool)

(assert (=> d!1292275 (= c!742332 (and (is-Cons!49052 (t!356096 (t!356096 (toList!3059 lm!1707)))) (= (_1!27556 (h!54625 (t!356096 (t!356096 (toList!3059 lm!1707))))) hash!377)))))

(assert (=> d!1292275 (= (getValueByKey!496 (t!356096 (t!356096 (toList!3059 lm!1707))) hash!377) e!2717350)))

(assert (= (and d!1292275 c!742332) b!4366164))

(assert (= (and d!1292275 (not c!742332)) b!4366165))

(assert (= (and b!4366165 c!742333) b!4366166))

(assert (= (and b!4366165 (not c!742333)) b!4366167))

(declare-fun m!4988969 () Bool)

(assert (=> b!4366166 m!4988969))

(assert (=> b!4365897 d!1292275))

(declare-fun d!1292277 () Bool)

(declare-fun res!1796071 () Bool)

(declare-fun e!2717352 () Bool)

(assert (=> d!1292277 (=> res!1796071 e!2717352)))

(assert (=> d!1292277 (= res!1796071 (is-Nil!49055 lt!1578669))))

(assert (=> d!1292277 (= (forall!9201 lt!1578669 lambda!142712) e!2717352)))

(declare-fun b!4366168 () Bool)

(declare-fun e!2717353 () Bool)

(assert (=> b!4366168 (= e!2717352 e!2717353)))

(declare-fun res!1796072 () Bool)

(assert (=> b!4366168 (=> (not res!1796072) (not e!2717353))))

(assert (=> b!4366168 (= res!1796072 (dynLambda!20666 lambda!142712 (h!54629 lt!1578669)))))

(declare-fun b!4366169 () Bool)

(assert (=> b!4366169 (= e!2717353 (forall!9201 (t!356099 lt!1578669) lambda!142712))))

(assert (= (and d!1292277 (not res!1796071)) b!4366168))

(assert (= (and b!4366168 res!1796072) b!4366169))

(declare-fun b_lambda!132327 () Bool)

(assert (=> (not b_lambda!132327) (not b!4366168)))

(declare-fun m!4988971 () Bool)

(assert (=> b!4366168 m!4988971))

(declare-fun m!4988973 () Bool)

(assert (=> b!4366169 m!4988973))

(assert (=> b!4365921 d!1292277))

(declare-fun b!4366171 () Bool)

(declare-fun e!2717354 () Option!10512)

(declare-fun e!2717355 () Option!10512)

(assert (=> b!4366171 (= e!2717354 e!2717355)))

(declare-fun c!742335 () Bool)

(assert (=> b!4366171 (= c!742335 (and (is-Cons!49051 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (not (= (_1!27555 (h!54624 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) key!3918))))))

(declare-fun b!4366173 () Bool)

(assert (=> b!4366173 (= e!2717355 None!10511)))

(declare-fun b!4366170 () Bool)

(assert (=> b!4366170 (= e!2717354 (Some!10511 (_2!27555 (h!54624 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))))))

(declare-fun b!4366172 () Bool)

(assert (=> b!4366172 (= e!2717355 (getValueByKey!498 (t!356095 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) key!3918))))

(declare-fun d!1292279 () Bool)

(declare-fun c!742334 () Bool)

(assert (=> d!1292279 (= c!742334 (and (is-Cons!49051 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (= (_1!27555 (h!54624 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) key!3918)))))

(assert (=> d!1292279 (= (getValueByKey!498 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) key!3918) e!2717354)))

(assert (= (and d!1292279 c!742334) b!4366170))

(assert (= (and d!1292279 (not c!742334)) b!4366171))

(assert (= (and b!4366171 c!742335) b!4366172))

(assert (= (and b!4366171 (not c!742335)) b!4366173))

(declare-fun m!4988975 () Bool)

(assert (=> b!4366172 m!4988975))

(assert (=> b!4365832 d!1292279))

(declare-fun d!1292281 () Bool)

(declare-fun res!1796073 () Bool)

(declare-fun e!2717356 () Bool)

(assert (=> d!1292281 (=> res!1796073 e!2717356)))

(assert (=> d!1292281 (= res!1796073 (is-Nil!49055 lt!1578649))))

(assert (=> d!1292281 (= (noDuplicate!609 lt!1578649) e!2717356)))

(declare-fun b!4366174 () Bool)

(declare-fun e!2717357 () Bool)

(assert (=> b!4366174 (= e!2717356 e!2717357)))

(declare-fun res!1796074 () Bool)

(assert (=> b!4366174 (=> (not res!1796074) (not e!2717357))))

(assert (=> b!4366174 (= res!1796074 (not (contains!11330 (t!356099 lt!1578649) (h!54629 lt!1578649))))))

(declare-fun b!4366175 () Bool)

(assert (=> b!4366175 (= e!2717357 (noDuplicate!609 (t!356099 lt!1578649)))))

(assert (= (and d!1292281 (not res!1796073)) b!4366174))

(assert (= (and b!4366174 res!1796074) b!4366175))

(declare-fun m!4988977 () Bool)

(assert (=> b!4366174 m!4988977))

(declare-fun m!4988979 () Bool)

(assert (=> b!4366175 m!4988979))

(assert (=> d!1292099 d!1292281))

(assert (=> d!1292099 d!1292121))

(declare-fun d!1292283 () Bool)

(declare-fun res!1796075 () Bool)

(declare-fun e!2717358 () Bool)

(assert (=> d!1292283 (=> res!1796075 e!2717358)))

(assert (=> d!1292283 (= res!1796075 (is-Nil!49055 lt!1578649))))

(assert (=> d!1292283 (= (forall!9201 lt!1578649 lambda!142700) e!2717358)))

(declare-fun b!4366176 () Bool)

(declare-fun e!2717359 () Bool)

(assert (=> b!4366176 (= e!2717358 e!2717359)))

(declare-fun res!1796076 () Bool)

(assert (=> b!4366176 (=> (not res!1796076) (not e!2717359))))

(assert (=> b!4366176 (= res!1796076 (dynLambda!20666 lambda!142700 (h!54629 lt!1578649)))))

(declare-fun b!4366177 () Bool)

(assert (=> b!4366177 (= e!2717359 (forall!9201 (t!356099 lt!1578649) lambda!142700))))

(assert (= (and d!1292283 (not res!1796075)) b!4366176))

(assert (= (and b!4366176 res!1796076) b!4366177))

(declare-fun b_lambda!132329 () Bool)

(assert (=> (not b_lambda!132329) (not b!4366176)))

(declare-fun m!4988981 () Bool)

(assert (=> b!4366176 m!4988981))

(declare-fun m!4988983 () Bool)

(assert (=> b!4366177 m!4988983))

(assert (=> b!4365861 d!1292283))

(declare-fun d!1292285 () Bool)

(assert (=> d!1292285 (= (length!74 lt!1578669) (size!35849 lt!1578669))))

(declare-fun bs!637099 () Bool)

(assert (= bs!637099 d!1292285))

(declare-fun m!4988985 () Bool)

(assert (=> bs!637099 m!4988985))

(assert (=> b!4365923 d!1292285))

(assert (=> b!4365923 d!1292215))

(declare-fun d!1292287 () Bool)

(declare-fun res!1796077 () Bool)

(declare-fun e!2717360 () Bool)

(assert (=> d!1292287 (=> res!1796077 e!2717360)))

(assert (=> d!1292287 (= res!1796077 (is-Nil!49051 (t!356095 newBucket!200)))))

(assert (=> d!1292287 (= (forall!9199 (t!356095 newBucket!200) lambda!142680) e!2717360)))

(declare-fun b!4366178 () Bool)

(declare-fun e!2717361 () Bool)

(assert (=> b!4366178 (= e!2717360 e!2717361)))

(declare-fun res!1796078 () Bool)

(assert (=> b!4366178 (=> (not res!1796078) (not e!2717361))))

(assert (=> b!4366178 (= res!1796078 (dynLambda!20664 lambda!142680 (h!54624 (t!356095 newBucket!200))))))

(declare-fun b!4366179 () Bool)

(assert (=> b!4366179 (= e!2717361 (forall!9199 (t!356095 (t!356095 newBucket!200)) lambda!142680))))

(assert (= (and d!1292287 (not res!1796077)) b!4366178))

(assert (= (and b!4366178 res!1796078) b!4366179))

(declare-fun b_lambda!132331 () Bool)

(assert (=> (not b_lambda!132331) (not b!4366178)))

(declare-fun m!4988987 () Bool)

(assert (=> b!4366178 m!4988987))

(declare-fun m!4988989 () Bool)

(assert (=> b!4366179 m!4988989))

(assert (=> b!4365872 d!1292287))

(declare-fun bs!637100 () Bool)

(declare-fun d!1292289 () Bool)

(assert (= bs!637100 (and d!1292289 d!1292265)))

(declare-fun lambda!142810 () Int)

(assert (=> bs!637100 (not (= lambda!142810 lambda!142808))))

(declare-fun bs!637101 () Bool)

(assert (= bs!637101 (and d!1292289 b!4365946)))

(assert (=> bs!637101 (not (= lambda!142810 lambda!142743))))

(assert (=> bs!637101 (not (= lambda!142810 lambda!142744))))

(declare-fun bs!637102 () Bool)

(assert (= bs!637102 (and d!1292289 b!4366151)))

(assert (=> bs!637102 (not (= lambda!142810 lambda!142806))))

(declare-fun bs!637103 () Bool)

(assert (= bs!637103 (and d!1292289 b!4365949)))

(assert (=> bs!637103 (not (= lambda!142810 lambda!142742))))

(assert (=> bs!637102 (not (= lambda!142810 lambda!142807))))

(declare-fun bs!637104 () Bool)

(assert (= bs!637104 (and d!1292289 d!1292125)))

(assert (=> bs!637104 (not (= lambda!142810 lambda!142745))))

(declare-fun bs!637105 () Bool)

(assert (= bs!637105 (and d!1292289 b!4366154)))

(assert (=> bs!637105 (not (= lambda!142810 lambda!142805))))

(declare-fun bs!637106 () Bool)

(assert (= bs!637106 (and d!1292289 d!1292035)))

(assert (=> bs!637106 (= (= (_1!27556 (h!54625 (toList!3059 lm!1707))) hash!377) (= lambda!142810 lambda!142680))))

(assert (=> d!1292289 true))

(assert (=> d!1292289 true))

(assert (=> d!1292289 (= (allKeysSameHash!496 (_2!27556 (h!54625 (toList!3059 lm!1707))) (_1!27556 (h!54625 (toList!3059 lm!1707))) hashF!1247) (forall!9199 (_2!27556 (h!54625 (toList!3059 lm!1707))) lambda!142810))))

(declare-fun bs!637107 () Bool)

(assert (= bs!637107 d!1292289))

(declare-fun m!4988991 () Bool)

(assert (=> bs!637107 m!4988991))

(assert (=> bs!637019 d!1292289))

(declare-fun d!1292291 () Bool)

(declare-fun lt!1578884 () Bool)

(assert (=> d!1292291 (= lt!1578884 (set.member key!3918 (content!7770 (t!356099 e!2717045))))))

(declare-fun e!2717363 () Bool)

(assert (=> d!1292291 (= lt!1578884 e!2717363)))

(declare-fun res!1796080 () Bool)

(assert (=> d!1292291 (=> (not res!1796080) (not e!2717363))))

(assert (=> d!1292291 (= res!1796080 (is-Cons!49055 (t!356099 e!2717045)))))

(assert (=> d!1292291 (= (contains!11330 (t!356099 e!2717045) key!3918) lt!1578884)))

(declare-fun b!4366180 () Bool)

(declare-fun e!2717362 () Bool)

(assert (=> b!4366180 (= e!2717363 e!2717362)))

(declare-fun res!1796079 () Bool)

(assert (=> b!4366180 (=> res!1796079 e!2717362)))

(assert (=> b!4366180 (= res!1796079 (= (h!54629 (t!356099 e!2717045)) key!3918))))

(declare-fun b!4366181 () Bool)

(assert (=> b!4366181 (= e!2717362 (contains!11330 (t!356099 (t!356099 e!2717045)) key!3918))))

(assert (= (and d!1292291 res!1796080) b!4366180))

(assert (= (and b!4366180 (not res!1796079)) b!4366181))

(assert (=> d!1292291 m!4988735))

(declare-fun m!4988993 () Bool)

(assert (=> d!1292291 m!4988993))

(declare-fun m!4988995 () Bool)

(assert (=> b!4366181 m!4988995))

(assert (=> b!4365880 d!1292291))

(declare-fun bs!637108 () Bool)

(declare-fun b!4366185 () Bool)

(assert (= bs!637108 (and b!4366185 d!1292265)))

(declare-fun lambda!142811 () Int)

(assert (=> bs!637108 (= (= (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) lt!1578872) (= lambda!142811 lambda!142808))))

(declare-fun bs!637109 () Bool)

(assert (= bs!637109 (and b!4366185 d!1292289)))

(assert (=> bs!637109 (not (= lambda!142811 lambda!142810))))

(declare-fun bs!637110 () Bool)

(assert (= bs!637110 (and b!4366185 b!4365946)))

(assert (=> bs!637110 (= (= (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142811 lambda!142743))))

(assert (=> bs!637110 (= (= (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) lt!1578717) (= lambda!142811 lambda!142744))))

(declare-fun bs!637111 () Bool)

(assert (= bs!637111 (and b!4366185 b!4366151)))

(assert (=> bs!637111 (= (= (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) (= lambda!142811 lambda!142806))))

(declare-fun bs!637112 () Bool)

(assert (= bs!637112 (and b!4366185 b!4365949)))

(assert (=> bs!637112 (= (= (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142811 lambda!142742))))

(assert (=> bs!637111 (= (= (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) lt!1578861) (= lambda!142811 lambda!142807))))

(declare-fun bs!637113 () Bool)

(assert (= bs!637113 (and b!4366185 d!1292125)))

(assert (=> bs!637113 (= (= (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) lt!1578728) (= lambda!142811 lambda!142745))))

(declare-fun bs!637114 () Bool)

(assert (= bs!637114 (and b!4366185 b!4366154)))

(assert (=> bs!637114 (= (= (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) (= lambda!142811 lambda!142805))))

(declare-fun bs!637115 () Bool)

(assert (= bs!637115 (and b!4366185 d!1292035)))

(assert (=> bs!637115 (not (= lambda!142811 lambda!142680))))

(assert (=> b!4366185 true))

(declare-fun bs!637116 () Bool)

(declare-fun b!4366182 () Bool)

(assert (= bs!637116 (and b!4366182 d!1292265)))

(declare-fun lambda!142812 () Int)

(assert (=> bs!637116 (= (= (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) lt!1578872) (= lambda!142812 lambda!142808))))

(declare-fun bs!637117 () Bool)

(assert (= bs!637117 (and b!4366182 d!1292289)))

(assert (=> bs!637117 (not (= lambda!142812 lambda!142810))))

(declare-fun bs!637118 () Bool)

(assert (= bs!637118 (and b!4366182 b!4365946)))

(assert (=> bs!637118 (= (= (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142812 lambda!142743))))

(assert (=> bs!637118 (= (= (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) lt!1578717) (= lambda!142812 lambda!142744))))

(declare-fun bs!637119 () Bool)

(assert (= bs!637119 (and b!4366182 b!4366151)))

(assert (=> bs!637119 (= (= (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) (= lambda!142812 lambda!142806))))

(declare-fun bs!637120 () Bool)

(assert (= bs!637120 (and b!4366182 b!4365949)))

(assert (=> bs!637120 (= (= (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142812 lambda!142742))))

(assert (=> bs!637119 (= (= (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) lt!1578861) (= lambda!142812 lambda!142807))))

(declare-fun bs!637121 () Bool)

(assert (= bs!637121 (and b!4366182 d!1292125)))

(assert (=> bs!637121 (= (= (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) lt!1578728) (= lambda!142812 lambda!142745))))

(declare-fun bs!637122 () Bool)

(assert (= bs!637122 (and b!4366182 b!4366185)))

(assert (=> bs!637122 (= lambda!142812 lambda!142811)))

(declare-fun bs!637123 () Bool)

(assert (= bs!637123 (and b!4366182 b!4366154)))

(assert (=> bs!637123 (= (= (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) (= lambda!142812 lambda!142805))))

(declare-fun bs!637124 () Bool)

(assert (= bs!637124 (and b!4366182 d!1292035)))

(assert (=> bs!637124 (not (= lambda!142812 lambda!142680))))

(assert (=> b!4366182 true))

(declare-fun lt!1578885 () ListMap!2303)

(declare-fun lambda!142813 () Int)

(assert (=> bs!637116 (= (= lt!1578885 lt!1578872) (= lambda!142813 lambda!142808))))

(assert (=> bs!637117 (not (= lambda!142813 lambda!142810))))

(assert (=> bs!637118 (= (= lt!1578885 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142813 lambda!142743))))

(assert (=> bs!637118 (= (= lt!1578885 lt!1578717) (= lambda!142813 lambda!142744))))

(assert (=> bs!637119 (= (= lt!1578885 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) (= lambda!142813 lambda!142806))))

(assert (=> bs!637120 (= (= lt!1578885 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142813 lambda!142742))))

(assert (=> bs!637119 (= (= lt!1578885 lt!1578861) (= lambda!142813 lambda!142807))))

(assert (=> b!4366182 (= (= lt!1578885 (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) (= lambda!142813 lambda!142812))))

(assert (=> bs!637121 (= (= lt!1578885 lt!1578728) (= lambda!142813 lambda!142745))))

(assert (=> bs!637122 (= (= lt!1578885 (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) (= lambda!142813 lambda!142811))))

(assert (=> bs!637123 (= (= lt!1578885 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) (= lambda!142813 lambda!142805))))

(assert (=> bs!637124 (not (= lambda!142813 lambda!142680))))

(assert (=> b!4366182 true))

(declare-fun bs!637125 () Bool)

(declare-fun d!1292293 () Bool)

(assert (= bs!637125 (and d!1292293 b!4366182)))

(declare-fun lambda!142814 () Int)

(declare-fun lt!1578896 () ListMap!2303)

(assert (=> bs!637125 (= (= lt!1578896 lt!1578885) (= lambda!142814 lambda!142813))))

(declare-fun bs!637126 () Bool)

(assert (= bs!637126 (and d!1292293 d!1292265)))

(assert (=> bs!637126 (= (= lt!1578896 lt!1578872) (= lambda!142814 lambda!142808))))

(declare-fun bs!637127 () Bool)

(assert (= bs!637127 (and d!1292293 d!1292289)))

(assert (=> bs!637127 (not (= lambda!142814 lambda!142810))))

(declare-fun bs!637128 () Bool)

(assert (= bs!637128 (and d!1292293 b!4365946)))

(assert (=> bs!637128 (= (= lt!1578896 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142814 lambda!142743))))

(assert (=> bs!637128 (= (= lt!1578896 lt!1578717) (= lambda!142814 lambda!142744))))

(declare-fun bs!637129 () Bool)

(assert (= bs!637129 (and d!1292293 b!4366151)))

(assert (=> bs!637129 (= (= lt!1578896 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) (= lambda!142814 lambda!142806))))

(declare-fun bs!637130 () Bool)

(assert (= bs!637130 (and d!1292293 b!4365949)))

(assert (=> bs!637130 (= (= lt!1578896 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142814 lambda!142742))))

(assert (=> bs!637129 (= (= lt!1578896 lt!1578861) (= lambda!142814 lambda!142807))))

(assert (=> bs!637125 (= (= lt!1578896 (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) (= lambda!142814 lambda!142812))))

(declare-fun bs!637131 () Bool)

(assert (= bs!637131 (and d!1292293 d!1292125)))

(assert (=> bs!637131 (= (= lt!1578896 lt!1578728) (= lambda!142814 lambda!142745))))

(declare-fun bs!637132 () Bool)

(assert (= bs!637132 (and d!1292293 b!4366185)))

(assert (=> bs!637132 (= (= lt!1578896 (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) (= lambda!142814 lambda!142811))))

(declare-fun bs!637133 () Bool)

(assert (= bs!637133 (and d!1292293 b!4366154)))

(assert (=> bs!637133 (= (= lt!1578896 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) (= lambda!142814 lambda!142805))))

(declare-fun bs!637134 () Bool)

(assert (= bs!637134 (and d!1292293 d!1292035)))

(assert (=> bs!637134 (not (= lambda!142814 lambda!142680))))

(assert (=> d!1292293 true))

(declare-fun e!2717366 () ListMap!2303)

(assert (=> b!4366182 (= e!2717366 lt!1578885)))

(declare-fun lt!1578903 () ListMap!2303)

(assert (=> b!4366182 (= lt!1578903 (+!725 (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (h!54624 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(assert (=> b!4366182 (= lt!1578885 (addToMapMapFromBucket!226 (t!356095 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (+!725 (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (h!54624 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))))

(declare-fun lt!1578895 () Unit!73063)

(declare-fun call!303506 () Unit!73063)

(assert (=> b!4366182 (= lt!1578895 call!303506)))

(assert (=> b!4366182 (forall!9199 (toList!3060 (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) lambda!142812)))

(declare-fun lt!1578901 () Unit!73063)

(assert (=> b!4366182 (= lt!1578901 lt!1578895)))

(assert (=> b!4366182 (forall!9199 (toList!3060 lt!1578903) lambda!142813)))

(declare-fun lt!1578905 () Unit!73063)

(declare-fun Unit!73118 () Unit!73063)

(assert (=> b!4366182 (= lt!1578905 Unit!73118)))

(assert (=> b!4366182 (forall!9199 (t!356095 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707))))) lambda!142813)))

(declare-fun lt!1578900 () Unit!73063)

(declare-fun Unit!73119 () Unit!73063)

(assert (=> b!4366182 (= lt!1578900 Unit!73119)))

(declare-fun lt!1578897 () Unit!73063)

(declare-fun Unit!73120 () Unit!73063)

(assert (=> b!4366182 (= lt!1578897 Unit!73120)))

(declare-fun lt!1578890 () Unit!73063)

(assert (=> b!4366182 (= lt!1578890 (forallContained!1839 (toList!3060 lt!1578903) lambda!142813 (h!54624 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(assert (=> b!4366182 (contains!11326 lt!1578903 (_1!27555 (h!54624 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun lt!1578886 () Unit!73063)

(declare-fun Unit!73121 () Unit!73063)

(assert (=> b!4366182 (= lt!1578886 Unit!73121)))

(assert (=> b!4366182 (contains!11326 lt!1578885 (_1!27555 (h!54624 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun lt!1578902 () Unit!73063)

(declare-fun Unit!73122 () Unit!73063)

(assert (=> b!4366182 (= lt!1578902 Unit!73122)))

(assert (=> b!4366182 (forall!9199 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))) lambda!142813)))

(declare-fun lt!1578904 () Unit!73063)

(declare-fun Unit!73123 () Unit!73063)

(assert (=> b!4366182 (= lt!1578904 Unit!73123)))

(assert (=> b!4366182 (forall!9199 (toList!3060 lt!1578903) lambda!142813)))

(declare-fun lt!1578898 () Unit!73063)

(declare-fun Unit!73124 () Unit!73063)

(assert (=> b!4366182 (= lt!1578898 Unit!73124)))

(declare-fun lt!1578891 () Unit!73063)

(declare-fun Unit!73125 () Unit!73063)

(assert (=> b!4366182 (= lt!1578891 Unit!73125)))

(declare-fun lt!1578899 () Unit!73063)

(assert (=> b!4366182 (= lt!1578899 (addForallContainsKeyThenBeforeAdding!82 (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) lt!1578885 (_1!27555 (h!54624 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) (_2!27555 (h!54624 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))))

(declare-fun call!303505 () Bool)

(assert (=> b!4366182 call!303505))

(declare-fun lt!1578887 () Unit!73063)

(assert (=> b!4366182 (= lt!1578887 lt!1578899)))

(assert (=> b!4366182 (forall!9199 (toList!3060 (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) lambda!142813)))

(declare-fun lt!1578892 () Unit!73063)

(declare-fun Unit!73126 () Unit!73063)

(assert (=> b!4366182 (= lt!1578892 Unit!73126)))

(declare-fun res!1796082 () Bool)

(declare-fun call!303507 () Bool)

(assert (=> b!4366182 (= res!1796082 call!303507)))

(declare-fun e!2717365 () Bool)

(assert (=> b!4366182 (=> (not res!1796082) (not e!2717365))))

(assert (=> b!4366182 e!2717365))

(declare-fun lt!1578889 () Unit!73063)

(declare-fun Unit!73127 () Unit!73063)

(assert (=> b!4366182 (= lt!1578889 Unit!73127)))

(declare-fun b!4366183 () Bool)

(declare-fun e!2717364 () Bool)

(assert (=> b!4366183 (= e!2717364 (invariantList!699 (toList!3060 lt!1578896)))))

(assert (=> d!1292293 e!2717364))

(declare-fun res!1796083 () Bool)

(assert (=> d!1292293 (=> (not res!1796083) (not e!2717364))))

(assert (=> d!1292293 (= res!1796083 (forall!9199 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))) lambda!142814))))

(assert (=> d!1292293 (= lt!1578896 e!2717366)))

(declare-fun c!742336 () Bool)

(assert (=> d!1292293 (= c!742336 (is-Nil!49051 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))

(assert (=> d!1292293 (noDuplicateKeys!538 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))

(assert (=> d!1292293 (= (addToMapMapFromBucket!226 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))) (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) lt!1578896)))

(declare-fun bm!303500 () Bool)

(assert (=> bm!303500 (= call!303506 (lemmaContainsAllItsOwnKeys!82 (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun b!4366184 () Bool)

(declare-fun res!1796081 () Bool)

(assert (=> b!4366184 (=> (not res!1796081) (not e!2717364))))

(assert (=> b!4366184 (= res!1796081 (forall!9199 (toList!3060 (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) lambda!142814))))

(assert (=> b!4366185 (= e!2717366 (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))

(declare-fun lt!1578893 () Unit!73063)

(assert (=> b!4366185 (= lt!1578893 call!303506)))

(assert (=> b!4366185 call!303505))

(declare-fun lt!1578888 () Unit!73063)

(assert (=> b!4366185 (= lt!1578888 lt!1578893)))

(assert (=> b!4366185 call!303507))

(declare-fun lt!1578894 () Unit!73063)

(declare-fun Unit!73128 () Unit!73063)

(assert (=> b!4366185 (= lt!1578894 Unit!73128)))

(declare-fun bm!303501 () Bool)

(assert (=> bm!303501 (= call!303507 (forall!9199 (ite c!742336 (toList!3060 (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (ite c!742336 lambda!142811 lambda!142813)))))

(declare-fun b!4366186 () Bool)

(assert (=> b!4366186 (= e!2717365 (forall!9199 (toList!3060 (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) lambda!142813))))

(declare-fun bm!303502 () Bool)

(assert (=> bm!303502 (= call!303505 (forall!9199 (toList!3060 (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) (ite c!742336 lambda!142811 lambda!142813)))))

(assert (= (and d!1292293 c!742336) b!4366185))

(assert (= (and d!1292293 (not c!742336)) b!4366182))

(assert (= (and b!4366182 res!1796082) b!4366186))

(assert (= (or b!4366185 b!4366182) bm!303500))

(assert (= (or b!4366185 b!4366182) bm!303501))

(assert (= (or b!4366185 b!4366182) bm!303502))

(assert (= (and d!1292293 res!1796083) b!4366184))

(assert (= (and b!4366184 res!1796081) b!4366183))

(declare-fun m!4988997 () Bool)

(assert (=> b!4366183 m!4988997))

(declare-fun m!4988999 () Bool)

(assert (=> d!1292293 m!4988999))

(assert (=> d!1292293 m!4988541))

(assert (=> bm!303500 m!4988607))

(declare-fun m!4989001 () Bool)

(assert (=> bm!303500 m!4989001))

(declare-fun m!4989003 () Bool)

(assert (=> bm!303501 m!4989003))

(declare-fun m!4989005 () Bool)

(assert (=> b!4366182 m!4989005))

(assert (=> b!4366182 m!4988607))

(declare-fun m!4989007 () Bool)

(assert (=> b!4366182 m!4989007))

(declare-fun m!4989009 () Bool)

(assert (=> b!4366182 m!4989009))

(declare-fun m!4989011 () Bool)

(assert (=> b!4366182 m!4989011))

(declare-fun m!4989013 () Bool)

(assert (=> b!4366182 m!4989013))

(declare-fun m!4989015 () Bool)

(assert (=> b!4366182 m!4989015))

(assert (=> b!4366182 m!4988607))

(declare-fun m!4989017 () Bool)

(assert (=> b!4366182 m!4989017))

(declare-fun m!4989019 () Bool)

(assert (=> b!4366182 m!4989019))

(declare-fun m!4989021 () Bool)

(assert (=> b!4366182 m!4989021))

(assert (=> b!4366182 m!4989005))

(declare-fun m!4989023 () Bool)

(assert (=> b!4366182 m!4989023))

(assert (=> b!4366182 m!4989007))

(declare-fun m!4989025 () Bool)

(assert (=> b!4366182 m!4989025))

(assert (=> b!4366186 m!4989013))

(declare-fun m!4989027 () Bool)

(assert (=> b!4366184 m!4989027))

(declare-fun m!4989029 () Bool)

(assert (=> bm!303502 m!4989029))

(assert (=> b!4365946 d!1292293))

(declare-fun d!1292295 () Bool)

(declare-fun e!2717369 () Bool)

(assert (=> d!1292295 e!2717369))

(declare-fun res!1796089 () Bool)

(assert (=> d!1292295 (=> (not res!1796089) (not e!2717369))))

(declare-fun lt!1578916 () ListMap!2303)

(assert (=> d!1292295 (= res!1796089 (contains!11326 lt!1578916 (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun lt!1578917 () List!49175)

(assert (=> d!1292295 (= lt!1578916 (ListMap!2304 lt!1578917))))

(declare-fun lt!1578915 () Unit!73063)

(declare-fun lt!1578914 () Unit!73063)

(assert (=> d!1292295 (= lt!1578915 lt!1578914)))

(assert (=> d!1292295 (= (getValueByKey!498 lt!1578917 (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) (Some!10511 (_2!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!270 (List!49175 K!10413 V!10659) Unit!73063)

(assert (=> d!1292295 (= lt!1578914 (lemmaContainsTupThenGetReturnValue!270 lt!1578917 (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (_2!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun insertNoDuplicatedKeys!123 (List!49175 K!10413 V!10659) List!49175)

(assert (=> d!1292295 (= lt!1578917 (insertNoDuplicatedKeys!123 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (_2!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(assert (=> d!1292295 (= (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) lt!1578916)))

(declare-fun b!4366191 () Bool)

(declare-fun res!1796088 () Bool)

(assert (=> b!4366191 (=> (not res!1796088) (not e!2717369))))

(assert (=> b!4366191 (= res!1796088 (= (getValueByKey!498 (toList!3060 lt!1578916) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) (Some!10511 (_2!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))))

(declare-fun b!4366192 () Bool)

(declare-fun contains!11332 (List!49175 tuple2!48522) Bool)

(assert (=> b!4366192 (= e!2717369 (contains!11332 (toList!3060 lt!1578916) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))

(assert (= (and d!1292295 res!1796089) b!4366191))

(assert (= (and b!4366191 res!1796088) b!4366192))

(declare-fun m!4989031 () Bool)

(assert (=> d!1292295 m!4989031))

(declare-fun m!4989033 () Bool)

(assert (=> d!1292295 m!4989033))

(declare-fun m!4989035 () Bool)

(assert (=> d!1292295 m!4989035))

(declare-fun m!4989037 () Bool)

(assert (=> d!1292295 m!4989037))

(declare-fun m!4989039 () Bool)

(assert (=> b!4366191 m!4989039))

(declare-fun m!4989041 () Bool)

(assert (=> b!4366192 m!4989041))

(assert (=> b!4365946 d!1292295))

(declare-fun d!1292297 () Bool)

(assert (=> d!1292297 (dynLambda!20664 lambda!142744 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))

(declare-fun lt!1578920 () Unit!73063)

(declare-fun choose!27134 (List!49175 Int tuple2!48522) Unit!73063)

(assert (=> d!1292297 (= lt!1578920 (choose!27134 (toList!3060 lt!1578735) lambda!142744 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))

(declare-fun e!2717372 () Bool)

(assert (=> d!1292297 e!2717372))

(declare-fun res!1796092 () Bool)

(assert (=> d!1292297 (=> (not res!1796092) (not e!2717372))))

(assert (=> d!1292297 (= res!1796092 (forall!9199 (toList!3060 lt!1578735) lambda!142744))))

(assert (=> d!1292297 (= (forallContained!1839 (toList!3060 lt!1578735) lambda!142744 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) lt!1578920)))

(declare-fun b!4366195 () Bool)

(assert (=> b!4366195 (= e!2717372 (contains!11332 (toList!3060 lt!1578735) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))

(assert (= (and d!1292297 res!1796092) b!4366195))

(declare-fun b_lambda!132333 () Bool)

(assert (=> (not b_lambda!132333) (not d!1292297)))

(declare-fun m!4989043 () Bool)

(assert (=> d!1292297 m!4989043))

(declare-fun m!4989045 () Bool)

(assert (=> d!1292297 m!4989045))

(assert (=> d!1292297 m!4988605))

(declare-fun m!4989047 () Bool)

(assert (=> b!4366195 m!4989047))

(assert (=> b!4365946 d!1292297))

(declare-fun d!1292299 () Bool)

(declare-fun res!1796093 () Bool)

(declare-fun e!2717373 () Bool)

(assert (=> d!1292299 (=> res!1796093 e!2717373)))

(assert (=> d!1292299 (= res!1796093 (is-Nil!49051 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707))))))))

(assert (=> d!1292299 (= (forall!9199 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) lambda!142743) e!2717373)))

(declare-fun b!4366196 () Bool)

(declare-fun e!2717374 () Bool)

(assert (=> b!4366196 (= e!2717373 e!2717374)))

(declare-fun res!1796094 () Bool)

(assert (=> b!4366196 (=> (not res!1796094) (not e!2717374))))

(assert (=> b!4366196 (= res!1796094 (dynLambda!20664 lambda!142743 (h!54624 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))))))))

(declare-fun b!4366197 () Bool)

(assert (=> b!4366197 (= e!2717374 (forall!9199 (t!356095 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707))))) lambda!142743))))

(assert (= (and d!1292299 (not res!1796093)) b!4366196))

(assert (= (and b!4366196 res!1796094) b!4366197))

(declare-fun b_lambda!132335 () Bool)

(assert (=> (not b_lambda!132335) (not b!4366196)))

(declare-fun m!4989049 () Bool)

(assert (=> b!4366196 m!4989049))

(declare-fun m!4989051 () Bool)

(assert (=> b!4366197 m!4989051))

(assert (=> b!4365946 d!1292299))

(declare-fun d!1292301 () Bool)

(declare-fun res!1796095 () Bool)

(declare-fun e!2717375 () Bool)

(assert (=> d!1292301 (=> res!1796095 e!2717375)))

(assert (=> d!1292301 (= res!1796095 (is-Nil!49051 (toList!3060 lt!1578735)))))

(assert (=> d!1292301 (= (forall!9199 (toList!3060 lt!1578735) lambda!142744) e!2717375)))

(declare-fun b!4366198 () Bool)

(declare-fun e!2717376 () Bool)

(assert (=> b!4366198 (= e!2717375 e!2717376)))

(declare-fun res!1796096 () Bool)

(assert (=> b!4366198 (=> (not res!1796096) (not e!2717376))))

(assert (=> b!4366198 (= res!1796096 (dynLambda!20664 lambda!142744 (h!54624 (toList!3060 lt!1578735))))))

(declare-fun b!4366199 () Bool)

(assert (=> b!4366199 (= e!2717376 (forall!9199 (t!356095 (toList!3060 lt!1578735)) lambda!142744))))

(assert (= (and d!1292301 (not res!1796095)) b!4366198))

(assert (= (and b!4366198 res!1796096) b!4366199))

(declare-fun b_lambda!132337 () Bool)

(assert (=> (not b_lambda!132337) (not b!4366198)))

(declare-fun m!4989053 () Bool)

(assert (=> b!4366198 m!4989053))

(declare-fun m!4989055 () Bool)

(assert (=> b!4366199 m!4989055))

(assert (=> b!4365946 d!1292301))

(declare-fun b!4366200 () Bool)

(declare-fun e!2717382 () Bool)

(assert (=> b!4366200 (= e!2717382 (not (contains!11330 (keys!16599 lt!1578717) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))))

(declare-fun b!4366201 () Bool)

(declare-fun e!2717379 () Unit!73063)

(declare-fun lt!1578922 () Unit!73063)

(assert (=> b!4366201 (= e!2717379 lt!1578922)))

(declare-fun lt!1578924 () Unit!73063)

(assert (=> b!4366201 (= lt!1578924 (lemmaContainsKeyImpliesGetValueByKeyDefined!407 (toList!3060 lt!1578717) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(assert (=> b!4366201 (isDefined!7804 (getValueByKey!498 (toList!3060 lt!1578717) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun lt!1578927 () Unit!73063)

(assert (=> b!4366201 (= lt!1578927 lt!1578924)))

(assert (=> b!4366201 (= lt!1578922 (lemmaInListThenGetKeysListContains!144 (toList!3060 lt!1578717) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun call!303508 () Bool)

(assert (=> b!4366201 call!303508))

(declare-fun b!4366202 () Bool)

(declare-fun e!2717381 () List!49179)

(assert (=> b!4366202 (= e!2717381 (keys!16599 lt!1578717))))

(declare-fun d!1292303 () Bool)

(declare-fun e!2717378 () Bool)

(assert (=> d!1292303 e!2717378))

(declare-fun res!1796099 () Bool)

(assert (=> d!1292303 (=> res!1796099 e!2717378)))

(assert (=> d!1292303 (= res!1796099 e!2717382)))

(declare-fun res!1796097 () Bool)

(assert (=> d!1292303 (=> (not res!1796097) (not e!2717382))))

(declare-fun lt!1578926 () Bool)

(assert (=> d!1292303 (= res!1796097 (not lt!1578926))))

(declare-fun lt!1578928 () Bool)

(assert (=> d!1292303 (= lt!1578926 lt!1578928)))

(declare-fun lt!1578925 () Unit!73063)

(assert (=> d!1292303 (= lt!1578925 e!2717379)))

(declare-fun c!742339 () Bool)

(assert (=> d!1292303 (= c!742339 lt!1578928)))

(assert (=> d!1292303 (= lt!1578928 (containsKey!775 (toList!3060 lt!1578717) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(assert (=> d!1292303 (= (contains!11326 lt!1578717 (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) lt!1578926)))

(declare-fun b!4366203 () Bool)

(declare-fun e!2717380 () Bool)

(assert (=> b!4366203 (= e!2717378 e!2717380)))

(declare-fun res!1796098 () Bool)

(assert (=> b!4366203 (=> (not res!1796098) (not e!2717380))))

(assert (=> b!4366203 (= res!1796098 (isDefined!7804 (getValueByKey!498 (toList!3060 lt!1578717) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))))

(declare-fun b!4366204 () Bool)

(assert (=> b!4366204 (= e!2717380 (contains!11330 (keys!16599 lt!1578717) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun bm!303503 () Bool)

(assert (=> bm!303503 (= call!303508 (contains!11330 e!2717381 (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun c!742338 () Bool)

(assert (=> bm!303503 (= c!742338 c!742339)))

(declare-fun b!4366205 () Bool)

(declare-fun e!2717377 () Unit!73063)

(declare-fun Unit!73129 () Unit!73063)

(assert (=> b!4366205 (= e!2717377 Unit!73129)))

(declare-fun b!4366206 () Bool)

(assert (=> b!4366206 false))

(declare-fun lt!1578923 () Unit!73063)

(declare-fun lt!1578921 () Unit!73063)

(assert (=> b!4366206 (= lt!1578923 lt!1578921)))

(assert (=> b!4366206 (containsKey!775 (toList!3060 lt!1578717) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))

(assert (=> b!4366206 (= lt!1578921 (lemmaInGetKeysListThenContainsKey!145 (toList!3060 lt!1578717) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun Unit!73130 () Unit!73063)

(assert (=> b!4366206 (= e!2717377 Unit!73130)))

(declare-fun b!4366207 () Bool)

(assert (=> b!4366207 (= e!2717379 e!2717377)))

(declare-fun c!742337 () Bool)

(assert (=> b!4366207 (= c!742337 call!303508)))

(declare-fun b!4366208 () Bool)

(assert (=> b!4366208 (= e!2717381 (getKeysList!147 (toList!3060 lt!1578717)))))

(assert (= (and d!1292303 c!742339) b!4366201))

(assert (= (and d!1292303 (not c!742339)) b!4366207))

(assert (= (and b!4366207 c!742337) b!4366206))

(assert (= (and b!4366207 (not c!742337)) b!4366205))

(assert (= (or b!4366201 b!4366207) bm!303503))

(assert (= (and bm!303503 c!742338) b!4366208))

(assert (= (and bm!303503 (not c!742338)) b!4366202))

(assert (= (and d!1292303 res!1796097) b!4366200))

(assert (= (and d!1292303 (not res!1796099)) b!4366203))

(assert (= (and b!4366203 res!1796098) b!4366204))

(declare-fun m!4989057 () Bool)

(assert (=> b!4366200 m!4989057))

(assert (=> b!4366200 m!4989057))

(declare-fun m!4989059 () Bool)

(assert (=> b!4366200 m!4989059))

(assert (=> b!4366204 m!4989057))

(assert (=> b!4366204 m!4989057))

(assert (=> b!4366204 m!4989059))

(declare-fun m!4989061 () Bool)

(assert (=> b!4366201 m!4989061))

(declare-fun m!4989063 () Bool)

(assert (=> b!4366201 m!4989063))

(assert (=> b!4366201 m!4989063))

(declare-fun m!4989065 () Bool)

(assert (=> b!4366201 m!4989065))

(declare-fun m!4989067 () Bool)

(assert (=> b!4366201 m!4989067))

(declare-fun m!4989069 () Bool)

(assert (=> b!4366206 m!4989069))

(declare-fun m!4989071 () Bool)

(assert (=> b!4366206 m!4989071))

(declare-fun m!4989073 () Bool)

(assert (=> bm!303503 m!4989073))

(assert (=> d!1292303 m!4989069))

(declare-fun m!4989075 () Bool)

(assert (=> b!4366208 m!4989075))

(assert (=> b!4366203 m!4989063))

(assert (=> b!4366203 m!4989063))

(assert (=> b!4366203 m!4989065))

(assert (=> b!4366202 m!4989057))

(assert (=> b!4365946 d!1292303))

(declare-fun d!1292305 () Bool)

(declare-fun res!1796100 () Bool)

(declare-fun e!2717383 () Bool)

(assert (=> d!1292305 (=> res!1796100 e!2717383)))

(assert (=> d!1292305 (= res!1796100 (is-Nil!49051 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))

(assert (=> d!1292305 (= (forall!9199 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))) lambda!142744) e!2717383)))

(declare-fun b!4366209 () Bool)

(declare-fun e!2717384 () Bool)

(assert (=> b!4366209 (= e!2717383 e!2717384)))

(declare-fun res!1796101 () Bool)

(assert (=> b!4366209 (=> (not res!1796101) (not e!2717384))))

(assert (=> b!4366209 (= res!1796101 (dynLambda!20664 lambda!142744 (h!54624 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun b!4366210 () Bool)

(assert (=> b!4366210 (= e!2717384 (forall!9199 (t!356095 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707))))) lambda!142744))))

(assert (= (and d!1292305 (not res!1796100)) b!4366209))

(assert (= (and b!4366209 res!1796101) b!4366210))

(declare-fun b_lambda!132339 () Bool)

(assert (=> (not b_lambda!132339) (not b!4366209)))

(declare-fun m!4989077 () Bool)

(assert (=> b!4366209 m!4989077))

(declare-fun m!4989079 () Bool)

(assert (=> b!4366210 m!4989079))

(assert (=> b!4365946 d!1292305))

(declare-fun b!4366211 () Bool)

(declare-fun e!2717390 () Bool)

(assert (=> b!4366211 (= e!2717390 (not (contains!11330 (keys!16599 lt!1578735) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))))

(declare-fun b!4366212 () Bool)

(declare-fun e!2717387 () Unit!73063)

(declare-fun lt!1578930 () Unit!73063)

(assert (=> b!4366212 (= e!2717387 lt!1578930)))

(declare-fun lt!1578932 () Unit!73063)

(assert (=> b!4366212 (= lt!1578932 (lemmaContainsKeyImpliesGetValueByKeyDefined!407 (toList!3060 lt!1578735) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(assert (=> b!4366212 (isDefined!7804 (getValueByKey!498 (toList!3060 lt!1578735) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun lt!1578935 () Unit!73063)

(assert (=> b!4366212 (= lt!1578935 lt!1578932)))

(assert (=> b!4366212 (= lt!1578930 (lemmaInListThenGetKeysListContains!144 (toList!3060 lt!1578735) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun call!303509 () Bool)

(assert (=> b!4366212 call!303509))

(declare-fun b!4366213 () Bool)

(declare-fun e!2717389 () List!49179)

(assert (=> b!4366213 (= e!2717389 (keys!16599 lt!1578735))))

(declare-fun d!1292307 () Bool)

(declare-fun e!2717386 () Bool)

(assert (=> d!1292307 e!2717386))

(declare-fun res!1796104 () Bool)

(assert (=> d!1292307 (=> res!1796104 e!2717386)))

(assert (=> d!1292307 (= res!1796104 e!2717390)))

(declare-fun res!1796102 () Bool)

(assert (=> d!1292307 (=> (not res!1796102) (not e!2717390))))

(declare-fun lt!1578934 () Bool)

(assert (=> d!1292307 (= res!1796102 (not lt!1578934))))

(declare-fun lt!1578936 () Bool)

(assert (=> d!1292307 (= lt!1578934 lt!1578936)))

(declare-fun lt!1578933 () Unit!73063)

(assert (=> d!1292307 (= lt!1578933 e!2717387)))

(declare-fun c!742342 () Bool)

(assert (=> d!1292307 (= c!742342 lt!1578936)))

(assert (=> d!1292307 (= lt!1578936 (containsKey!775 (toList!3060 lt!1578735) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(assert (=> d!1292307 (= (contains!11326 lt!1578735 (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) lt!1578934)))

(declare-fun b!4366214 () Bool)

(declare-fun e!2717388 () Bool)

(assert (=> b!4366214 (= e!2717386 e!2717388)))

(declare-fun res!1796103 () Bool)

(assert (=> b!4366214 (=> (not res!1796103) (not e!2717388))))

(assert (=> b!4366214 (= res!1796103 (isDefined!7804 (getValueByKey!498 (toList!3060 lt!1578735) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))))

(declare-fun b!4366215 () Bool)

(assert (=> b!4366215 (= e!2717388 (contains!11330 (keys!16599 lt!1578735) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun bm!303504 () Bool)

(assert (=> bm!303504 (= call!303509 (contains!11330 e!2717389 (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun c!742341 () Bool)

(assert (=> bm!303504 (= c!742341 c!742342)))

(declare-fun b!4366216 () Bool)

(declare-fun e!2717385 () Unit!73063)

(declare-fun Unit!73131 () Unit!73063)

(assert (=> b!4366216 (= e!2717385 Unit!73131)))

(declare-fun b!4366217 () Bool)

(assert (=> b!4366217 false))

(declare-fun lt!1578931 () Unit!73063)

(declare-fun lt!1578929 () Unit!73063)

(assert (=> b!4366217 (= lt!1578931 lt!1578929)))

(assert (=> b!4366217 (containsKey!775 (toList!3060 lt!1578735) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))

(assert (=> b!4366217 (= lt!1578929 (lemmaInGetKeysListThenContainsKey!145 (toList!3060 lt!1578735) (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun Unit!73132 () Unit!73063)

(assert (=> b!4366217 (= e!2717385 Unit!73132)))

(declare-fun b!4366218 () Bool)

(assert (=> b!4366218 (= e!2717387 e!2717385)))

(declare-fun c!742340 () Bool)

(assert (=> b!4366218 (= c!742340 call!303509)))

(declare-fun b!4366219 () Bool)

(assert (=> b!4366219 (= e!2717389 (getKeysList!147 (toList!3060 lt!1578735)))))

(assert (= (and d!1292307 c!742342) b!4366212))

(assert (= (and d!1292307 (not c!742342)) b!4366218))

(assert (= (and b!4366218 c!742340) b!4366217))

(assert (= (and b!4366218 (not c!742340)) b!4366216))

(assert (= (or b!4366212 b!4366218) bm!303504))

(assert (= (and bm!303504 c!742341) b!4366219))

(assert (= (and bm!303504 (not c!742341)) b!4366213))

(assert (= (and d!1292307 res!1796102) b!4366211))

(assert (= (and d!1292307 (not res!1796104)) b!4366214))

(assert (= (and b!4366214 res!1796103) b!4366215))

(declare-fun m!4989081 () Bool)

(assert (=> b!4366211 m!4989081))

(assert (=> b!4366211 m!4989081))

(declare-fun m!4989083 () Bool)

(assert (=> b!4366211 m!4989083))

(assert (=> b!4366215 m!4989081))

(assert (=> b!4366215 m!4989081))

(assert (=> b!4366215 m!4989083))

(declare-fun m!4989085 () Bool)

(assert (=> b!4366212 m!4989085))

(declare-fun m!4989087 () Bool)

(assert (=> b!4366212 m!4989087))

(assert (=> b!4366212 m!4989087))

(declare-fun m!4989089 () Bool)

(assert (=> b!4366212 m!4989089))

(declare-fun m!4989091 () Bool)

(assert (=> b!4366212 m!4989091))

(declare-fun m!4989093 () Bool)

(assert (=> b!4366217 m!4989093))

(declare-fun m!4989095 () Bool)

(assert (=> b!4366217 m!4989095))

(declare-fun m!4989097 () Bool)

(assert (=> bm!303504 m!4989097))

(assert (=> d!1292307 m!4989093))

(declare-fun m!4989099 () Bool)

(assert (=> b!4366219 m!4989099))

(assert (=> b!4366214 m!4989087))

(assert (=> b!4366214 m!4989087))

(assert (=> b!4366214 m!4989089))

(assert (=> b!4366213 m!4989081))

(assert (=> b!4365946 d!1292307))

(declare-fun d!1292309 () Bool)

(declare-fun res!1796105 () Bool)

(declare-fun e!2717391 () Bool)

(assert (=> d!1292309 (=> res!1796105 e!2717391)))

(assert (=> d!1292309 (= res!1796105 (is-Nil!49051 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))

(assert (=> d!1292309 (= (forall!9199 (_2!27556 (h!54625 (toList!3059 lm!1707))) lambda!142744) e!2717391)))

(declare-fun b!4366220 () Bool)

(declare-fun e!2717392 () Bool)

(assert (=> b!4366220 (= e!2717391 e!2717392)))

(declare-fun res!1796106 () Bool)

(assert (=> b!4366220 (=> (not res!1796106) (not e!2717392))))

(assert (=> b!4366220 (= res!1796106 (dynLambda!20664 lambda!142744 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))

(declare-fun b!4366221 () Bool)

(assert (=> b!4366221 (= e!2717392 (forall!9199 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))) lambda!142744))))

(assert (= (and d!1292309 (not res!1796105)) b!4366220))

(assert (= (and b!4366220 res!1796106) b!4366221))

(declare-fun b_lambda!132341 () Bool)

(assert (=> (not b_lambda!132341) (not b!4366220)))

(assert (=> b!4366220 m!4989043))

(assert (=> b!4366221 m!4988627))

(assert (=> b!4365946 d!1292309))

(declare-fun bs!637135 () Bool)

(declare-fun d!1292311 () Bool)

(assert (= bs!637135 (and d!1292311 b!4366182)))

(declare-fun lambda!142819 () Int)

(assert (=> bs!637135 (= (= lt!1578717 lt!1578885) (= lambda!142819 lambda!142813))))

(declare-fun bs!637136 () Bool)

(assert (= bs!637136 (and d!1292311 d!1292265)))

(assert (=> bs!637136 (= (= lt!1578717 lt!1578872) (= lambda!142819 lambda!142808))))

(declare-fun bs!637137 () Bool)

(assert (= bs!637137 (and d!1292311 d!1292289)))

(assert (=> bs!637137 (not (= lambda!142819 lambda!142810))))

(declare-fun bs!637138 () Bool)

(assert (= bs!637138 (and d!1292311 d!1292293)))

(assert (=> bs!637138 (= (= lt!1578717 lt!1578896) (= lambda!142819 lambda!142814))))

(declare-fun bs!637139 () Bool)

(assert (= bs!637139 (and d!1292311 b!4365946)))

(assert (=> bs!637139 (= (= lt!1578717 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142819 lambda!142743))))

(assert (=> bs!637139 (= lambda!142819 lambda!142744)))

(declare-fun bs!637140 () Bool)

(assert (= bs!637140 (and d!1292311 b!4366151)))

(assert (=> bs!637140 (= (= lt!1578717 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) (= lambda!142819 lambda!142806))))

(declare-fun bs!637141 () Bool)

(assert (= bs!637141 (and d!1292311 b!4365949)))

(assert (=> bs!637141 (= (= lt!1578717 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) (= lambda!142819 lambda!142742))))

(assert (=> bs!637140 (= (= lt!1578717 lt!1578861) (= lambda!142819 lambda!142807))))

(assert (=> bs!637135 (= (= lt!1578717 (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) (= lambda!142819 lambda!142812))))

(declare-fun bs!637142 () Bool)

(assert (= bs!637142 (and d!1292311 d!1292125)))

(assert (=> bs!637142 (= (= lt!1578717 lt!1578728) (= lambda!142819 lambda!142745))))

(declare-fun bs!637143 () Bool)

(assert (= bs!637143 (and d!1292311 b!4366185)))

(assert (=> bs!637143 (= (= lt!1578717 (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) (= lambda!142819 lambda!142811))))

(declare-fun bs!637144 () Bool)

(assert (= bs!637144 (and d!1292311 b!4366154)))

(assert (=> bs!637144 (= (= lt!1578717 (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) (= lambda!142819 lambda!142805))))

(declare-fun bs!637145 () Bool)

(assert (= bs!637145 (and d!1292311 d!1292035)))

(assert (=> bs!637145 (not (= lambda!142819 lambda!142680))))

(assert (=> d!1292311 true))

(assert (=> d!1292311 (forall!9199 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) lambda!142819)))

(declare-fun lt!1578939 () Unit!73063)

(declare-fun choose!27135 (ListMap!2303 ListMap!2303 K!10413 V!10659) Unit!73063)

(assert (=> d!1292311 (= lt!1578939 (choose!27135 (extractMap!597 (t!356096 (toList!3059 lm!1707))) lt!1578717 (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (_2!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(assert (=> d!1292311 (forall!9199 (toList!3060 (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (tuple2!48523 (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (_2!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))) lambda!142819)))

(assert (=> d!1292311 (= (addForallContainsKeyThenBeforeAdding!82 (extractMap!597 (t!356096 (toList!3059 lm!1707))) lt!1578717 (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (_2!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) lt!1578939)))

(declare-fun bs!637146 () Bool)

(assert (= bs!637146 d!1292311))

(declare-fun m!4989101 () Bool)

(assert (=> bs!637146 m!4989101))

(assert (=> bs!637146 m!4988415))

(declare-fun m!4989103 () Bool)

(assert (=> bs!637146 m!4989103))

(assert (=> bs!637146 m!4988415))

(declare-fun m!4989105 () Bool)

(assert (=> bs!637146 m!4989105))

(declare-fun m!4989107 () Bool)

(assert (=> bs!637146 m!4989107))

(assert (=> b!4365946 d!1292311))

(declare-fun d!1292313 () Bool)

(declare-fun res!1796107 () Bool)

(declare-fun e!2717393 () Bool)

(assert (=> d!1292313 (=> res!1796107 e!2717393)))

(assert (=> d!1292313 (= res!1796107 (is-Nil!49051 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707))))))))

(assert (=> d!1292313 (= (forall!9199 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) lambda!142744) e!2717393)))

(declare-fun b!4366223 () Bool)

(declare-fun e!2717394 () Bool)

(assert (=> b!4366223 (= e!2717393 e!2717394)))

(declare-fun res!1796108 () Bool)

(assert (=> b!4366223 (=> (not res!1796108) (not e!2717394))))

(assert (=> b!4366223 (= res!1796108 (dynLambda!20664 lambda!142744 (h!54624 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))))))))

(declare-fun b!4366224 () Bool)

(assert (=> b!4366224 (= e!2717394 (forall!9199 (t!356095 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707))))) lambda!142744))))

(assert (= (and d!1292313 (not res!1796107)) b!4366223))

(assert (= (and b!4366223 res!1796108) b!4366224))

(declare-fun b_lambda!132343 () Bool)

(assert (=> (not b_lambda!132343) (not b!4366223)))

(declare-fun m!4989109 () Bool)

(assert (=> b!4366223 m!4989109))

(declare-fun m!4989111 () Bool)

(assert (=> b!4366224 m!4989111))

(assert (=> b!4365946 d!1292313))

(declare-fun d!1292315 () Bool)

(declare-fun res!1796109 () Bool)

(declare-fun e!2717395 () Bool)

(assert (=> d!1292315 (=> res!1796109 e!2717395)))

(assert (=> d!1292315 (= res!1796109 (is-Nil!49052 (t!356096 (toList!3059 lm!1707))))))

(assert (=> d!1292315 (= (forall!9197 (t!356096 (toList!3059 lm!1707)) lambda!142683) e!2717395)))

(declare-fun b!4366225 () Bool)

(declare-fun e!2717396 () Bool)

(assert (=> b!4366225 (= e!2717395 e!2717396)))

(declare-fun res!1796110 () Bool)

(assert (=> b!4366225 (=> (not res!1796110) (not e!2717396))))

(assert (=> b!4366225 (= res!1796110 (dynLambda!20662 lambda!142683 (h!54625 (t!356096 (toList!3059 lm!1707)))))))

(declare-fun b!4366226 () Bool)

(assert (=> b!4366226 (= e!2717396 (forall!9197 (t!356096 (t!356096 (toList!3059 lm!1707))) lambda!142683))))

(assert (= (and d!1292315 (not res!1796109)) b!4366225))

(assert (= (and b!4366225 res!1796110) b!4366226))

(declare-fun b_lambda!132345 () Bool)

(assert (=> (not b_lambda!132345) (not b!4366225)))

(declare-fun m!4989113 () Bool)

(assert (=> b!4366225 m!4989113))

(declare-fun m!4989115 () Bool)

(assert (=> b!4366226 m!4989115))

(assert (=> b!4365815 d!1292315))

(declare-fun bs!637147 () Bool)

(declare-fun d!1292317 () Bool)

(assert (= bs!637147 (and d!1292317 b!4366182)))

(declare-fun lambda!142822 () Int)

(assert (=> bs!637147 (= (= (extractMap!597 (t!356096 (toList!3059 lm!1707))) lt!1578885) (= lambda!142822 lambda!142813))))

(declare-fun bs!637148 () Bool)

(assert (= bs!637148 (and d!1292317 d!1292265)))

(assert (=> bs!637148 (= (= (extractMap!597 (t!356096 (toList!3059 lm!1707))) lt!1578872) (= lambda!142822 lambda!142808))))

(declare-fun bs!637149 () Bool)

(assert (= bs!637149 (and d!1292317 d!1292289)))

(assert (=> bs!637149 (not (= lambda!142822 lambda!142810))))

(declare-fun bs!637150 () Bool)

(assert (= bs!637150 (and d!1292317 b!4365946)))

(assert (=> bs!637150 (= lambda!142822 lambda!142743)))

(assert (=> bs!637150 (= (= (extractMap!597 (t!356096 (toList!3059 lm!1707))) lt!1578717) (= lambda!142822 lambda!142744))))

(declare-fun bs!637151 () Bool)

(assert (= bs!637151 (and d!1292317 b!4366151)))

(assert (=> bs!637151 (= (= (extractMap!597 (t!356096 (toList!3059 lm!1707))) (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) (= lambda!142822 lambda!142806))))

(declare-fun bs!637152 () Bool)

(assert (= bs!637152 (and d!1292317 b!4365949)))

(assert (=> bs!637152 (= lambda!142822 lambda!142742)))

(assert (=> bs!637151 (= (= (extractMap!597 (t!356096 (toList!3059 lm!1707))) lt!1578861) (= lambda!142822 lambda!142807))))

(assert (=> bs!637147 (= (= (extractMap!597 (t!356096 (toList!3059 lm!1707))) (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) (= lambda!142822 lambda!142812))))

(declare-fun bs!637153 () Bool)

(assert (= bs!637153 (and d!1292317 d!1292125)))

(assert (=> bs!637153 (= (= (extractMap!597 (t!356096 (toList!3059 lm!1707))) lt!1578728) (= lambda!142822 lambda!142745))))

(declare-fun bs!637154 () Bool)

(assert (= bs!637154 (and d!1292317 d!1292293)))

(assert (=> bs!637154 (= (= (extractMap!597 (t!356096 (toList!3059 lm!1707))) lt!1578896) (= lambda!142822 lambda!142814))))

(declare-fun bs!637155 () Bool)

(assert (= bs!637155 (and d!1292317 d!1292311)))

(assert (=> bs!637155 (= (= (extractMap!597 (t!356096 (toList!3059 lm!1707))) lt!1578717) (= lambda!142822 lambda!142819))))

(declare-fun bs!637156 () Bool)

(assert (= bs!637156 (and d!1292317 b!4366185)))

(assert (=> bs!637156 (= (= (extractMap!597 (t!356096 (toList!3059 lm!1707))) (+!725 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) (= lambda!142822 lambda!142811))))

(declare-fun bs!637157 () Bool)

(assert (= bs!637157 (and d!1292317 b!4366154)))

(assert (=> bs!637157 (= (= (extractMap!597 (t!356096 (toList!3059 lm!1707))) (extractMap!597 (t!356096 (t!356096 (toList!3059 lm!1707))))) (= lambda!142822 lambda!142805))))

(declare-fun bs!637158 () Bool)

(assert (= bs!637158 (and d!1292317 d!1292035)))

(assert (=> bs!637158 (not (= lambda!142822 lambda!142680))))

(assert (=> d!1292317 true))

(assert (=> d!1292317 (forall!9199 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) lambda!142822)))

(declare-fun lt!1578942 () Unit!73063)

(declare-fun choose!27136 (ListMap!2303) Unit!73063)

(assert (=> d!1292317 (= lt!1578942 (choose!27136 (extractMap!597 (t!356096 (toList!3059 lm!1707)))))))

(assert (=> d!1292317 (= (lemmaContainsAllItsOwnKeys!82 (extractMap!597 (t!356096 (toList!3059 lm!1707)))) lt!1578942)))

(declare-fun bs!637159 () Bool)

(assert (= bs!637159 d!1292317))

(declare-fun m!4989117 () Bool)

(assert (=> bs!637159 m!4989117))

(assert (=> bs!637159 m!4988415))

(declare-fun m!4989119 () Bool)

(assert (=> bs!637159 m!4989119))

(assert (=> bm!303485 d!1292317))

(assert (=> b!4365950 d!1292313))

(declare-fun d!1292319 () Bool)

(assert (=> d!1292319 (= (isEmpty!28225 (getValueByKey!498 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918)) (not (is-Some!10511 (getValueByKey!498 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) key!3918))))))

(assert (=> d!1292087 d!1292319))

(declare-fun d!1292321 () Bool)

(declare-fun res!1796111 () Bool)

(declare-fun e!2717397 () Bool)

(assert (=> d!1292321 (=> res!1796111 e!2717397)))

(assert (=> d!1292321 (= res!1796111 (not (is-Cons!49051 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(assert (=> d!1292321 (= (noDuplicateKeys!538 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707))))) e!2717397)))

(declare-fun b!4366227 () Bool)

(declare-fun e!2717398 () Bool)

(assert (=> b!4366227 (= e!2717397 e!2717398)))

(declare-fun res!1796112 () Bool)

(assert (=> b!4366227 (=> (not res!1796112) (not e!2717398))))

(assert (=> b!4366227 (= res!1796112 (not (containsKey!779 (t!356095 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (_1!27555 (h!54624 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))))

(declare-fun b!4366228 () Bool)

(assert (=> b!4366228 (= e!2717398 (noDuplicateKeys!538 (t!356095 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(assert (= (and d!1292321 (not res!1796111)) b!4366227))

(assert (= (and b!4366227 res!1796112) b!4366228))

(declare-fun m!4989121 () Bool)

(assert (=> b!4366227 m!4989121))

(declare-fun m!4989123 () Bool)

(assert (=> b!4366228 m!4989123))

(assert (=> b!4365878 d!1292321))

(declare-fun d!1292323 () Bool)

(declare-fun lt!1578943 () Bool)

(assert (=> d!1292323 (= lt!1578943 (set.member key!3918 (content!7770 (t!356099 (keys!16599 (extractMap!597 (toList!3059 lm!1707)))))))))

(declare-fun e!2717400 () Bool)

(assert (=> d!1292323 (= lt!1578943 e!2717400)))

(declare-fun res!1796114 () Bool)

(assert (=> d!1292323 (=> (not res!1796114) (not e!2717400))))

(assert (=> d!1292323 (= res!1796114 (is-Cons!49055 (t!356099 (keys!16599 (extractMap!597 (toList!3059 lm!1707))))))))

(assert (=> d!1292323 (= (contains!11330 (t!356099 (keys!16599 (extractMap!597 (toList!3059 lm!1707)))) key!3918) lt!1578943)))

(declare-fun b!4366229 () Bool)

(declare-fun e!2717399 () Bool)

(assert (=> b!4366229 (= e!2717400 e!2717399)))

(declare-fun res!1796113 () Bool)

(assert (=> b!4366229 (=> res!1796113 e!2717399)))

(assert (=> b!4366229 (= res!1796113 (= (h!54629 (t!356099 (keys!16599 (extractMap!597 (toList!3059 lm!1707))))) key!3918))))

(declare-fun b!4366230 () Bool)

(assert (=> b!4366230 (= e!2717399 (contains!11330 (t!356099 (t!356099 (keys!16599 (extractMap!597 (toList!3059 lm!1707))))) key!3918))))

(assert (= (and d!1292323 res!1796114) b!4366229))

(assert (= (and b!4366229 (not res!1796113)) b!4366230))

(assert (=> d!1292323 m!4988895))

(declare-fun m!4989125 () Bool)

(assert (=> d!1292323 m!4989125))

(declare-fun m!4989127 () Bool)

(assert (=> b!4366230 m!4989127))

(assert (=> b!4365843 d!1292323))

(declare-fun d!1292325 () Bool)

(declare-fun res!1796115 () Bool)

(declare-fun e!2717401 () Bool)

(assert (=> d!1292325 (=> res!1796115 e!2717401)))

(assert (=> d!1292325 (= res!1796115 (is-Nil!49052 (t!356096 (t!356096 (toList!3059 lm!1707)))))))

(assert (=> d!1292325 (= (forall!9197 (t!356096 (t!356096 (toList!3059 lm!1707))) lambda!142674) e!2717401)))

(declare-fun b!4366231 () Bool)

(declare-fun e!2717402 () Bool)

(assert (=> b!4366231 (= e!2717401 e!2717402)))

(declare-fun res!1796116 () Bool)

(assert (=> b!4366231 (=> (not res!1796116) (not e!2717402))))

(assert (=> b!4366231 (= res!1796116 (dynLambda!20662 lambda!142674 (h!54625 (t!356096 (t!356096 (toList!3059 lm!1707))))))))

(declare-fun b!4366232 () Bool)

(assert (=> b!4366232 (= e!2717402 (forall!9197 (t!356096 (t!356096 (t!356096 (toList!3059 lm!1707)))) lambda!142674))))

(assert (= (and d!1292325 (not res!1796115)) b!4366231))

(assert (= (and b!4366231 res!1796116) b!4366232))

(declare-fun b_lambda!132347 () Bool)

(assert (=> (not b_lambda!132347) (not b!4366231)))

(declare-fun m!4989129 () Bool)

(assert (=> b!4366231 m!4989129))

(declare-fun m!4989131 () Bool)

(assert (=> b!4366232 m!4989131))

(assert (=> b!4365866 d!1292325))

(declare-fun d!1292327 () Bool)

(assert (=> d!1292327 true))

(assert (=> d!1292327 true))

(declare-fun res!1796119 () (_ BitVec 64))

(assert (=> d!1292327 (= (choose!27123 hashF!1247 key!3918) res!1796119)))

(assert (=> d!1292081 d!1292327))

(declare-fun d!1292329 () Bool)

(declare-fun res!1796120 () Bool)

(declare-fun e!2717403 () Bool)

(assert (=> d!1292329 (=> res!1796120 e!2717403)))

(assert (=> d!1292329 (= res!1796120 (not (is-Cons!49051 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))))))))

(assert (=> d!1292329 (= (noDuplicateKeys!538 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707))))) e!2717403)))

(declare-fun b!4366233 () Bool)

(declare-fun e!2717404 () Bool)

(assert (=> b!4366233 (= e!2717403 e!2717404)))

(declare-fun res!1796121 () Bool)

(assert (=> b!4366233 (=> (not res!1796121) (not e!2717404))))

(assert (=> b!4366233 (= res!1796121 (not (containsKey!779 (t!356095 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707))))) (_1!27555 (h!54624 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))))))))))

(declare-fun b!4366234 () Bool)

(assert (=> b!4366234 (= e!2717404 (noDuplicateKeys!538 (t!356095 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))))))))

(assert (= (and d!1292329 (not res!1796120)) b!4366233))

(assert (= (and b!4366233 res!1796121) b!4366234))

(declare-fun m!4989133 () Bool)

(assert (=> b!4366233 m!4989133))

(declare-fun m!4989135 () Bool)

(assert (=> b!4366234 m!4989135))

(assert (=> bs!637018 d!1292329))

(declare-fun e!2717405 () Bool)

(declare-fun tp!1330681 () Bool)

(declare-fun b!4366235 () Bool)

(assert (=> b!4366235 (= e!2717405 (and tp_is_empty!25389 tp_is_empty!25391 tp!1330681))))

(assert (=> b!4365957 (= tp!1330673 e!2717405)))

(assert (= (and b!4365957 (is-Cons!49051 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) b!4366235))

(declare-fun b!4366236 () Bool)

(declare-fun e!2717406 () Bool)

(declare-fun tp!1330682 () Bool)

(assert (=> b!4366236 (= e!2717406 (and tp_is_empty!25389 tp_is_empty!25391 tp!1330682))))

(assert (=> b!4365959 (= tp!1330676 e!2717406)))

(assert (= (and b!4365959 (is-Cons!49051 (t!356095 (t!356095 (t!356095 newBucket!200))))) b!4366236))

(declare-fun tp!1330683 () Bool)

(declare-fun e!2717407 () Bool)

(declare-fun b!4366237 () Bool)

(assert (=> b!4366237 (= e!2717407 (and tp_is_empty!25389 tp_is_empty!25391 tp!1330683))))

(assert (=> b!4365958 (= tp!1330674 e!2717407)))

(assert (= (and b!4365958 (is-Cons!49051 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))))) b!4366237))

(declare-fun b!4366238 () Bool)

(declare-fun e!2717408 () Bool)

(declare-fun tp!1330684 () Bool)

(declare-fun tp!1330685 () Bool)

(assert (=> b!4366238 (= e!2717408 (and tp!1330684 tp!1330685))))

(assert (=> b!4365958 (= tp!1330675 e!2717408)))

(assert (= (and b!4365958 (is-Cons!49052 (t!356096 (t!356096 (toList!3059 lm!1707))))) b!4366238))

(declare-fun b_lambda!132349 () Bool)

(assert (= b_lambda!132335 (or b!4365946 b_lambda!132349)))

(declare-fun bs!637160 () Bool)

(declare-fun d!1292331 () Bool)

(assert (= bs!637160 (and d!1292331 b!4365946)))

(assert (=> bs!637160 (= (dynLambda!20664 lambda!142743 (h!54624 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))))) (contains!11326 (extractMap!597 (t!356096 (toList!3059 lm!1707))) (_1!27555 (h!54624 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707))))))))))

(assert (=> bs!637160 m!4988415))

(declare-fun m!4989137 () Bool)

(assert (=> bs!637160 m!4989137))

(assert (=> b!4366196 d!1292331))

(declare-fun b_lambda!132351 () Bool)

(assert (= b_lambda!132327 (or b!4365921 b_lambda!132351)))

(declare-fun bs!637161 () Bool)

(declare-fun d!1292333 () Bool)

(assert (= bs!637161 (and d!1292333 b!4365921)))

(assert (=> bs!637161 (= (dynLambda!20666 lambda!142712 (h!54629 lt!1578669)) (containsKey!775 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) (h!54629 lt!1578669)))))

(declare-fun m!4989139 () Bool)

(assert (=> bs!637161 m!4989139))

(assert (=> b!4366168 d!1292333))

(declare-fun b_lambda!132353 () Bool)

(assert (= b_lambda!132319 (or d!1292125 b_lambda!132353)))

(declare-fun bs!637162 () Bool)

(declare-fun d!1292335 () Bool)

(assert (= bs!637162 (and d!1292335 d!1292125)))

(assert (=> bs!637162 (= (dynLambda!20664 lambda!142745 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (contains!11326 lt!1578728 (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(declare-fun m!4989141 () Bool)

(assert (=> bs!637162 m!4989141))

(assert (=> b!4366145 d!1292335))

(declare-fun b_lambda!132355 () Bool)

(assert (= b_lambda!132325 (or b!4365917 b_lambda!132355)))

(declare-fun bs!637163 () Bool)

(declare-fun d!1292337 () Bool)

(assert (= bs!637163 (and d!1292337 b!4365917)))

(assert (=> bs!637163 (= (dynLambda!20667 lambda!142713 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))))

(assert (=> b!4366163 d!1292337))

(declare-fun b_lambda!132357 () Bool)

(assert (= b_lambda!132345 (or d!1292041 b_lambda!132357)))

(declare-fun bs!637164 () Bool)

(declare-fun d!1292339 () Bool)

(assert (= bs!637164 (and d!1292339 d!1292041)))

(assert (=> bs!637164 (= (dynLambda!20662 lambda!142683 (h!54625 (t!356096 (toList!3059 lm!1707)))) (noDuplicateKeys!538 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707))))))))

(assert (=> bs!637164 m!4988645))

(assert (=> b!4366225 d!1292339))

(declare-fun b_lambda!132359 () Bool)

(assert (= b_lambda!132331 (or d!1292035 b_lambda!132359)))

(declare-fun bs!637165 () Bool)

(declare-fun d!1292341 () Bool)

(assert (= bs!637165 (and d!1292341 d!1292035)))

(assert (=> bs!637165 (= (dynLambda!20664 lambda!142680 (h!54624 (t!356095 newBucket!200))) (= (hash!1682 hashF!1247 (_1!27555 (h!54624 (t!356095 newBucket!200)))) hash!377))))

(declare-fun m!4989143 () Bool)

(assert (=> bs!637165 m!4989143))

(assert (=> b!4366178 d!1292341))

(declare-fun b_lambda!132361 () Bool)

(assert (= b_lambda!132311 (or b!4365924 b_lambda!132361)))

(declare-fun bs!637166 () Bool)

(declare-fun d!1292343 () Bool)

(assert (= bs!637166 (and d!1292343 b!4365924)))

(assert (=> bs!637166 (= (dynLambda!20666 lambda!142710 (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))) (containsKey!775 (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))))))))

(assert (=> bs!637166 m!4988579))

(assert (=> d!1292231 d!1292343))

(declare-fun b_lambda!132363 () Bool)

(assert (= b_lambda!132307 (or b!4365918 b_lambda!132363)))

(declare-fun bs!637167 () Bool)

(declare-fun d!1292345 () Bool)

(assert (= bs!637167 (and d!1292345 b!4365918)))

(assert (=> bs!637167 (= (dynLambda!20666 lambda!142711 (h!54629 lt!1578674)) (containsKey!775 (Cons!49051 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707)))) (t!356095 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (h!54629 lt!1578674)))))

(declare-fun m!4989145 () Bool)

(assert (=> bs!637167 m!4989145))

(assert (=> b!4366096 d!1292345))

(declare-fun b_lambda!132365 () Bool)

(assert (= b_lambda!132329 (or b!4365861 b_lambda!132365)))

(declare-fun bs!637168 () Bool)

(declare-fun d!1292347 () Bool)

(assert (= bs!637168 (and d!1292347 b!4365861)))

(assert (=> bs!637168 (= (dynLambda!20666 lambda!142700 (h!54629 lt!1578649)) (containsKey!775 (toList!3060 (extractMap!597 (toList!3059 lm!1707))) (h!54629 lt!1578649)))))

(declare-fun m!4989147 () Bool)

(assert (=> bs!637168 m!4989147))

(assert (=> b!4366176 d!1292347))

(declare-fun b_lambda!132367 () Bool)

(assert (= b_lambda!132343 (or b!4365946 b_lambda!132367)))

(declare-fun bs!637169 () Bool)

(declare-fun d!1292349 () Bool)

(assert (= bs!637169 (and d!1292349 b!4365946)))

(assert (=> bs!637169 (= (dynLambda!20664 lambda!142744 (h!54624 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))))) (contains!11326 lt!1578717 (_1!27555 (h!54624 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707))))))))))

(declare-fun m!4989149 () Bool)

(assert (=> bs!637169 m!4989149))

(assert (=> b!4366223 d!1292349))

(declare-fun b_lambda!132369 () Bool)

(assert (= b_lambda!132309 (or b!4365862 b_lambda!132369)))

(declare-fun bs!637170 () Bool)

(declare-fun d!1292351 () Bool)

(assert (= bs!637170 (and d!1292351 b!4365862)))

(assert (=> bs!637170 (= (dynLambda!20667 lambda!142701 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))) (_1!27555 (h!54624 (toList!3060 (extractMap!597 (toList!3059 lm!1707))))))))

(assert (=> b!4366115 d!1292351))

(declare-fun b_lambda!132371 () Bool)

(assert (= b_lambda!132339 (or b!4365946 b_lambda!132371)))

(declare-fun bs!637171 () Bool)

(declare-fun d!1292353 () Bool)

(assert (= bs!637171 (and d!1292353 b!4365946)))

(assert (=> bs!637171 (= (dynLambda!20664 lambda!142744 (h!54624 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707)))))) (contains!11326 lt!1578717 (_1!27555 (h!54624 (t!356095 (_2!27556 (h!54625 (toList!3059 lm!1707))))))))))

(declare-fun m!4989151 () Bool)

(assert (=> bs!637171 m!4989151))

(assert (=> b!4366209 d!1292353))

(declare-fun b_lambda!132373 () Bool)

(assert (= b_lambda!132313 (or d!1292125 b_lambda!132373)))

(declare-fun bs!637172 () Bool)

(declare-fun d!1292355 () Bool)

(assert (= bs!637172 (and d!1292355 d!1292125)))

(assert (=> bs!637172 (= (dynLambda!20664 lambda!142745 (h!54624 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707)))))) (contains!11326 lt!1578728 (_1!27555 (h!54624 (toList!3060 (extractMap!597 (t!356096 (toList!3059 lm!1707))))))))))

(declare-fun m!4989153 () Bool)

(assert (=> bs!637172 m!4989153))

(assert (=> b!4366123 d!1292355))

(declare-fun b_lambda!132375 () Bool)

(assert (= b_lambda!132333 (or b!4365946 b_lambda!132375)))

(declare-fun bs!637173 () Bool)

(declare-fun d!1292357 () Bool)

(assert (= bs!637173 (and d!1292357 b!4365946)))

(assert (=> bs!637173 (= (dynLambda!20664 lambda!142744 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707))))) (contains!11326 lt!1578717 (_1!27555 (h!54624 (_2!27556 (h!54625 (toList!3059 lm!1707)))))))))

(assert (=> bs!637173 m!4988617))

(assert (=> d!1292297 d!1292357))

(declare-fun b_lambda!132377 () Bool)

(assert (= b_lambda!132341 (or b!4365946 b_lambda!132377)))

(assert (=> b!4366220 d!1292357))

(declare-fun b_lambda!132379 () Bool)

(assert (= b_lambda!132321 (or d!1292045 b_lambda!132379)))

(declare-fun bs!637174 () Bool)

(declare-fun d!1292359 () Bool)

(assert (= bs!637174 (and d!1292359 d!1292045)))

(assert (=> bs!637174 (= (dynLambda!20662 lambda!142686 (h!54625 (t!356096 (toList!3059 lm!1707)))) (allKeysSameHash!496 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))) (_1!27556 (h!54625 (t!356096 (toList!3059 lm!1707)))) hashF!1247))))

(declare-fun m!4989155 () Bool)

(assert (=> bs!637174 m!4989155))

(assert (=> b!4366147 d!1292359))

(declare-fun b_lambda!132381 () Bool)

(assert (= b_lambda!132337 (or b!4365946 b_lambda!132381)))

(declare-fun bs!637175 () Bool)

(declare-fun d!1292361 () Bool)

(assert (= bs!637175 (and d!1292361 b!4365946)))

(assert (=> bs!637175 (= (dynLambda!20664 lambda!142744 (h!54624 (toList!3060 lt!1578735))) (contains!11326 lt!1578717 (_1!27555 (h!54624 (toList!3060 lt!1578735)))))))

(declare-fun m!4989157 () Bool)

(assert (=> bs!637175 m!4989157))

(assert (=> b!4366198 d!1292361))

(declare-fun b_lambda!132383 () Bool)

(assert (= b_lambda!132347 (or start!423358 b_lambda!132383)))

(declare-fun bs!637176 () Bool)

(declare-fun d!1292363 () Bool)

(assert (= bs!637176 (and d!1292363 start!423358)))

(assert (=> bs!637176 (= (dynLambda!20662 lambda!142674 (h!54625 (t!356096 (t!356096 (toList!3059 lm!1707))))) (noDuplicateKeys!538 (_2!27556 (h!54625 (t!356096 (t!356096 (toList!3059 lm!1707)))))))))

(declare-fun m!4989159 () Bool)

(assert (=> bs!637176 m!4989159))

(assert (=> b!4366231 d!1292363))

(declare-fun b_lambda!132385 () Bool)

(assert (= b_lambda!132323 (or d!1292141 b_lambda!132385)))

(declare-fun bs!637177 () Bool)

(declare-fun d!1292365 () Bool)

(assert (= bs!637177 (and d!1292365 d!1292141)))

(assert (=> bs!637177 (= (dynLambda!20662 lambda!142746 (h!54625 (t!356096 (toList!3059 lm!1707)))) (noDuplicateKeys!538 (_2!27556 (h!54625 (t!356096 (toList!3059 lm!1707))))))))

(assert (=> bs!637177 m!4988645))

(assert (=> b!4366149 d!1292365))

(push 1)

(assert (not b!4366191))

(assert (not b!4366161))

(assert (not b!4366067))

(assert (not b_lambda!132373))

(assert (not b!4366210))

(assert (not d!1292239))

(assert (not b!4366080))

(assert (not bm!303503))

(assert (not b!4366151))

(assert (not d!1292191))

(assert (not d!1292273))

(assert (not d!1292195))

(assert (not b!4366153))

(assert (not b_lambda!132317))

(assert (not b!4366235))

(assert (not b_lambda!132349))

(assert (not b!4366136))

(assert (not b!4366148))

(assert (not b_lambda!132355))

(assert (not b!4366215))

(assert (not d!1292317))

(assert (not b_lambda!132369))

(assert (not bs!637161))

(assert (not b!4366169))

(assert (not bs!637165))

(assert (not b!4366150))

(assert (not b!4366179))

(assert (not bs!637166))

(assert (not b_lambda!132385))

(assert (not b!4366134))

(assert (not bs!637169))

(assert (not b_lambda!132289))

(assert (not bs!637172))

(assert (not bs!637174))

(assert (not d!1292285))

(assert (not d!1292215))

(assert (not d!1292231))

(assert (not b_lambda!132377))

(assert (not b!4366082))

(assert (not b!4366126))

(assert (not b!4366075))

(assert (not b!4366177))

(assert (not b!4366206))

(assert (not bm!303502))

(assert (not b!4366124))

(assert (not bm!303501))

(assert (not b!4366097))

(assert (not d!1292193))

(assert (not b!4366077))

(assert (not b!4366142))

(assert (not b!4366128))

(assert (not bm!303497))

(assert (not b!4366186))

(assert (not b!4366199))

(assert (not b_lambda!132351))

(assert (not bm!303498))

(assert (not b!4366115))

(assert (not b!4366109))

(assert (not b!4366152))

(assert (not bs!637175))

(assert (not bm!303504))

(assert (not b!4366184))

(assert (not b_lambda!132379))

(assert (not b_lambda!132361))

(assert (not d!1292323))

(assert (not b!4366163))

(assert (not d!1292267))

(assert (not b!4366076))

(assert (not bs!637176))

(assert (not b_lambda!132269))

(assert (not bs!637164))

(assert (not d!1292311))

(assert (not b_lambda!132365))

(assert (not bs!637167))

(assert (not b!4366202))

(assert (not b_lambda!132383))

(assert (not b!4366183))

(assert tp_is_empty!25389)

(assert (not bs!637168))

(assert (not b!4366236))

(assert (not b!4366174))

(assert (not b!4366146))

(assert (not b!4366200))

(assert (not b!4366133))

(assert (not bs!637160))

(assert (not b!4366175))

(assert (not b!4366211))

(assert (not d!1292261))

(assert (not bs!637162))

(assert (not b!4366166))

(assert (not b!4366208))

(assert (not d!1292237))

(assert (not b!4366214))

(assert (not b!4366237))

(assert (not b!4366212))

(assert (not b!4366234))

(assert (not d!1292233))

(assert (not b!4366221))

(assert tp_is_empty!25391)

(assert (not b!4366159))

(assert (not b!4366228))

(assert (not bs!637177))

(assert (not d!1292235))

(assert (not d!1292207))

(assert (not bs!637171))

(assert (not d!1292265))

(assert (not b_lambda!132381))

(assert (not b!4366122))

(assert (not bm!303499))

(assert (not d!1292289))

(assert (not b!4366217))

(assert (not b!4366233))

(assert (not b_lambda!132367))

(assert (not b!4366204))

(assert (not b_lambda!132375))

(assert (not b_lambda!132363))

(assert (not b_lambda!132291))

(assert (not b_lambda!132371))

(assert (not b!4366219))

(assert (not b!4366195))

(assert (not b_lambda!132353))

(assert (not b!4366203))

(assert (not b!4366213))

(assert (not b!4366172))

(assert (not d!1292303))

(assert (not b!4366156))

(assert (not b!4366120))

(assert (not b!4366197))

(assert (not d!1292307))

(assert (not b!4366107))

(assert (not b_lambda!132359))

(assert (not d!1292297))

(assert (not b!4366144))

(assert (not d!1292189))

(assert (not d!1292229))

(assert (not b!4366226))

(assert (not b!4366224))

(assert (not d!1292291))

(assert (not b!4366117))

(assert (not b!4366238))

(assert (not b!4366182))

(assert (not b_lambda!132315))

(assert (not b!4366227))

(assert (not b!4366083))

(assert (not d!1292213))

(assert (not b!4366105))

(assert (not b!4366192))

(assert (not d!1292295))

(assert (not b!4366230))

(assert (not d!1292245))

(assert (not b_lambda!132287))

(assert (not b!4366155))

(assert (not b!4366232))

(assert (not d!1292293))

(assert (not b!4366104))

(assert (not b!4366181))

(assert (not b_lambda!132357))

(assert (not b!4366201))

(assert (not bm!303500))

(assert (not b!4366073))

(assert (not d!1292225))

(assert (not b!4366099))

(assert (not b_lambda!132293))

(assert (not bs!637173))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

