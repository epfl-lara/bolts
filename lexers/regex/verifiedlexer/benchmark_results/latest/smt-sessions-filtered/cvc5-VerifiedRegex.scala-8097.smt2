; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417400 () Bool)

(assert start!417400)

(declare-fun b!4331207 () Bool)

(declare-fun e!2695203 () Bool)

(declare-fun tp!1328452 () Bool)

(assert (=> b!4331207 (= e!2695203 tp!1328452)))

(declare-fun tp_is_empty!24549 () Bool)

(declare-fun e!2695202 () Bool)

(declare-fun tp_is_empty!24551 () Bool)

(declare-fun tp!1328451 () Bool)

(declare-fun b!4331208 () Bool)

(assert (=> b!4331208 (= e!2695202 (and tp_is_empty!24549 tp_is_empty!24551 tp!1328451))))

(declare-fun b!4331209 () Bool)

(declare-fun res!1775435 () Bool)

(declare-fun e!2695204 () Bool)

(assert (=> b!4331209 (=> (not res!1775435) (not e!2695204))))

(declare-datatypes ((K!9888 0))(
  ( (K!9889 (val!16181 Int)) )
))
(declare-datatypes ((V!10134 0))(
  ( (V!10135 (val!16182 Int)) )
))
(declare-datatypes ((tuple2!47682 0))(
  ( (tuple2!47683 (_1!27135 K!9888) (_2!27135 V!10134)) )
))
(declare-datatypes ((List!48669 0))(
  ( (Nil!48545) (Cons!48545 (h!54026 tuple2!47682) (t!355583 List!48669)) )
))
(declare-datatypes ((tuple2!47684 0))(
  ( (tuple2!47685 (_1!27136 (_ BitVec 64)) (_2!27136 List!48669)) )
))
(declare-datatypes ((List!48670 0))(
  ( (Nil!48546) (Cons!48546 (h!54027 tuple2!47684) (t!355584 List!48670)) )
))
(declare-datatypes ((ListLongMap!1289 0))(
  ( (ListLongMap!1290 (toList!2645 List!48670)) )
))
(declare-fun lm!2227 () ListLongMap!1289)

(declare-datatypes ((Hashable!4720 0))(
  ( (HashableExt!4719 (__x!30423 Int)) )
))
(declare-fun hashF!1461 () Hashable!4720)

(declare-fun allKeysSameHashInMap!432 (ListLongMap!1289 Hashable!4720) Bool)

(assert (=> b!4331209 (= res!1775435 (allKeysSameHashInMap!432 lm!2227 hashF!1461))))

(declare-fun b!4331210 () Bool)

(declare-fun e!2695205 () Bool)

(assert (=> b!4331210 (= e!2695204 e!2695205)))

(declare-fun res!1775430 () Bool)

(assert (=> b!4331210 (=> res!1775430 e!2695205)))

(declare-fun lt!1545620 () ListLongMap!1289)

(declare-fun lambda!134613 () Int)

(declare-fun forall!8877 (List!48670 Int) Bool)

(assert (=> b!4331210 (= res!1775430 (not (forall!8877 (toList!2645 lt!1545620) lambda!134613)))))

(declare-fun hash!427 () (_ BitVec 64))

(declare-fun newBucket!230 () List!48669)

(declare-fun +!382 (ListLongMap!1289 tuple2!47684) ListLongMap!1289)

(assert (=> b!4331210 (= lt!1545620 (+!382 lm!2227 (tuple2!47685 hash!427 newBucket!230)))))

(declare-fun res!1775433 () Bool)

(assert (=> start!417400 (=> (not res!1775433) (not e!2695204))))

(assert (=> start!417400 (= res!1775433 (forall!8877 (toList!2645 lm!2227) lambda!134613))))

(assert (=> start!417400 e!2695204))

(declare-fun inv!64075 (ListLongMap!1289) Bool)

(assert (=> start!417400 (and (inv!64075 lm!2227) e!2695203)))

(assert (=> start!417400 true))

(assert (=> start!417400 e!2695202))

(declare-fun b!4331211 () Bool)

(declare-fun res!1775431 () Bool)

(assert (=> b!4331211 (=> (not res!1775431) (not e!2695204))))

(declare-fun noDuplicateKeys!340 (List!48669) Bool)

(assert (=> b!4331211 (= res!1775431 (noDuplicateKeys!340 newBucket!230))))

(declare-fun b!4331212 () Bool)

(declare-fun res!1775432 () Bool)

(assert (=> b!4331212 (=> (not res!1775432) (not e!2695204))))

(declare-fun allKeysSameHash!288 (List!48669 (_ BitVec 64) Hashable!4720) Bool)

(assert (=> b!4331212 (= res!1775432 (allKeysSameHash!288 newBucket!230 hash!427 hashF!1461))))

(declare-fun b!4331213 () Bool)

(declare-fun res!1775434 () Bool)

(assert (=> b!4331213 (=> (not res!1775434) (not e!2695204))))

(assert (=> b!4331213 (= res!1775434 (not (is-Cons!48546 (toList!2645 lm!2227))))))

(declare-fun b!4331214 () Bool)

(assert (=> b!4331214 (= e!2695205 (not (allKeysSameHashInMap!432 lt!1545620 hashF!1461)))))

(assert (= (and start!417400 res!1775433) b!4331209))

(assert (= (and b!4331209 res!1775435) b!4331211))

(assert (= (and b!4331211 res!1775431) b!4331212))

(assert (= (and b!4331212 res!1775432) b!4331213))

(assert (= (and b!4331213 res!1775434) b!4331210))

(assert (= (and b!4331210 (not res!1775430)) b!4331214))

(assert (= start!417400 b!4331207))

(assert (= (and start!417400 (is-Cons!48545 newBucket!230)) b!4331208))

(declare-fun m!4925559 () Bool)

(assert (=> b!4331214 m!4925559))

(declare-fun m!4925561 () Bool)

(assert (=> b!4331212 m!4925561))

(declare-fun m!4925563 () Bool)

(assert (=> b!4331210 m!4925563))

(declare-fun m!4925565 () Bool)

(assert (=> b!4331210 m!4925565))

(declare-fun m!4925567 () Bool)

(assert (=> start!417400 m!4925567))

(declare-fun m!4925569 () Bool)

(assert (=> start!417400 m!4925569))

(declare-fun m!4925571 () Bool)

(assert (=> b!4331211 m!4925571))

(declare-fun m!4925573 () Bool)

(assert (=> b!4331209 m!4925573))

(push 1)

(assert (not b!4331214))

(assert (not b!4331207))

(assert tp_is_empty!24549)

(assert (not b!4331209))

(assert (not b!4331208))

(assert (not b!4331212))

(assert (not b!4331211))

(assert tp_is_empty!24551)

(assert (not b!4331210))

(assert (not start!417400))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!607909 () Bool)

(declare-fun d!1273290 () Bool)

(assert (= bs!607909 (and d!1273290 start!417400)))

(declare-fun lambda!134621 () Int)

(assert (=> bs!607909 (not (= lambda!134621 lambda!134613))))

(assert (=> d!1273290 true))

(assert (=> d!1273290 (= (allKeysSameHashInMap!432 lt!1545620 hashF!1461) (forall!8877 (toList!2645 lt!1545620) lambda!134621))))

(declare-fun bs!607910 () Bool)

(assert (= bs!607910 d!1273290))

(declare-fun m!4925591 () Bool)

(assert (=> bs!607910 m!4925591))

(assert (=> b!4331214 d!1273290))

(declare-fun bs!607911 () Bool)

(declare-fun d!1273292 () Bool)

(assert (= bs!607911 (and d!1273292 start!417400)))

(declare-fun lambda!134622 () Int)

(assert (=> bs!607911 (not (= lambda!134622 lambda!134613))))

(declare-fun bs!607912 () Bool)

(assert (= bs!607912 (and d!1273292 d!1273290)))

(assert (=> bs!607912 (= lambda!134622 lambda!134621)))

(assert (=> d!1273292 true))

(assert (=> d!1273292 (= (allKeysSameHashInMap!432 lm!2227 hashF!1461) (forall!8877 (toList!2645 lm!2227) lambda!134622))))

(declare-fun bs!607913 () Bool)

(assert (= bs!607913 d!1273292))

(declare-fun m!4925593 () Bool)

(assert (=> bs!607913 m!4925593))

(assert (=> b!4331209 d!1273292))

(declare-fun d!1273294 () Bool)

(declare-fun res!1775458 () Bool)

(declare-fun e!2695222 () Bool)

(assert (=> d!1273294 (=> res!1775458 e!2695222)))

(assert (=> d!1273294 (= res!1775458 (is-Nil!48546 (toList!2645 lm!2227)))))

(assert (=> d!1273294 (= (forall!8877 (toList!2645 lm!2227) lambda!134613) e!2695222)))

(declare-fun b!4331245 () Bool)

(declare-fun e!2695223 () Bool)

(assert (=> b!4331245 (= e!2695222 e!2695223)))

(declare-fun res!1775459 () Bool)

(assert (=> b!4331245 (=> (not res!1775459) (not e!2695223))))

(declare-fun dynLambda!20546 (Int tuple2!47684) Bool)

(assert (=> b!4331245 (= res!1775459 (dynLambda!20546 lambda!134613 (h!54027 (toList!2645 lm!2227))))))

(declare-fun b!4331246 () Bool)

(assert (=> b!4331246 (= e!2695223 (forall!8877 (t!355584 (toList!2645 lm!2227)) lambda!134613))))

(assert (= (and d!1273294 (not res!1775458)) b!4331245))

(assert (= (and b!4331245 res!1775459) b!4331246))

(declare-fun b_lambda!127891 () Bool)

(assert (=> (not b_lambda!127891) (not b!4331245)))

(declare-fun m!4925595 () Bool)

(assert (=> b!4331245 m!4925595))

(declare-fun m!4925597 () Bool)

(assert (=> b!4331246 m!4925597))

(assert (=> start!417400 d!1273294))

(declare-fun d!1273296 () Bool)

(declare-fun isStrictlySorted!36 (List!48670) Bool)

(assert (=> d!1273296 (= (inv!64075 lm!2227) (isStrictlySorted!36 (toList!2645 lm!2227)))))

(declare-fun bs!607914 () Bool)

(assert (= bs!607914 d!1273296))

(declare-fun m!4925599 () Bool)

(assert (=> bs!607914 m!4925599))

(assert (=> start!417400 d!1273296))

(declare-fun d!1273298 () Bool)

(assert (=> d!1273298 true))

(assert (=> d!1273298 true))

(declare-fun lambda!134625 () Int)

(declare-fun forall!8879 (List!48669 Int) Bool)

(assert (=> d!1273298 (= (allKeysSameHash!288 newBucket!230 hash!427 hashF!1461) (forall!8879 newBucket!230 lambda!134625))))

(declare-fun bs!607915 () Bool)

(assert (= bs!607915 d!1273298))

(declare-fun m!4925601 () Bool)

(assert (=> bs!607915 m!4925601))

(assert (=> b!4331212 d!1273298))

(declare-fun d!1273300 () Bool)

(declare-fun res!1775460 () Bool)

(declare-fun e!2695224 () Bool)

(assert (=> d!1273300 (=> res!1775460 e!2695224)))

(assert (=> d!1273300 (= res!1775460 (is-Nil!48546 (toList!2645 lt!1545620)))))

(assert (=> d!1273300 (= (forall!8877 (toList!2645 lt!1545620) lambda!134613) e!2695224)))

(declare-fun b!4331251 () Bool)

(declare-fun e!2695225 () Bool)

(assert (=> b!4331251 (= e!2695224 e!2695225)))

(declare-fun res!1775461 () Bool)

(assert (=> b!4331251 (=> (not res!1775461) (not e!2695225))))

(assert (=> b!4331251 (= res!1775461 (dynLambda!20546 lambda!134613 (h!54027 (toList!2645 lt!1545620))))))

(declare-fun b!4331252 () Bool)

(assert (=> b!4331252 (= e!2695225 (forall!8877 (t!355584 (toList!2645 lt!1545620)) lambda!134613))))

(assert (= (and d!1273300 (not res!1775460)) b!4331251))

(assert (= (and b!4331251 res!1775461) b!4331252))

(declare-fun b_lambda!127893 () Bool)

(assert (=> (not b_lambda!127893) (not b!4331251)))

(declare-fun m!4925603 () Bool)

(assert (=> b!4331251 m!4925603))

(declare-fun m!4925605 () Bool)

(assert (=> b!4331252 m!4925605))

(assert (=> b!4331210 d!1273300))

(declare-fun d!1273302 () Bool)

(declare-fun e!2695228 () Bool)

(assert (=> d!1273302 e!2695228))

(declare-fun res!1775466 () Bool)

(assert (=> d!1273302 (=> (not res!1775466) (not e!2695228))))

(declare-fun lt!1545635 () ListLongMap!1289)

(declare-fun contains!10559 (ListLongMap!1289 (_ BitVec 64)) Bool)

(assert (=> d!1273302 (= res!1775466 (contains!10559 lt!1545635 (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))

(declare-fun lt!1545634 () List!48670)

(assert (=> d!1273302 (= lt!1545635 (ListLongMap!1290 lt!1545634))))

(declare-datatypes ((Unit!68151 0))(
  ( (Unit!68152) )
))
(declare-fun lt!1545633 () Unit!68151)

(declare-fun lt!1545632 () Unit!68151)

(assert (=> d!1273302 (= lt!1545633 lt!1545632)))

(declare-datatypes ((Option!10334 0))(
  ( (None!10333) (Some!10333 (v!43031 List!48669)) )
))
(declare-fun getValueByKey!320 (List!48670 (_ BitVec 64)) Option!10334)

(assert (=> d!1273302 (= (getValueByKey!320 lt!1545634 (_1!27136 (tuple2!47685 hash!427 newBucket!230))) (Some!10333 (_2!27136 (tuple2!47685 hash!427 newBucket!230))))))

(declare-fun lemmaContainsTupThenGetReturnValue!113 (List!48670 (_ BitVec 64) List!48669) Unit!68151)

(assert (=> d!1273302 (= lt!1545632 (lemmaContainsTupThenGetReturnValue!113 lt!1545634 (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230))))))

(declare-fun insertStrictlySorted!68 (List!48670 (_ BitVec 64) List!48669) List!48670)

(assert (=> d!1273302 (= lt!1545634 (insertStrictlySorted!68 (toList!2645 lm!2227) (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230))))))

(assert (=> d!1273302 (= (+!382 lm!2227 (tuple2!47685 hash!427 newBucket!230)) lt!1545635)))

(declare-fun b!4331259 () Bool)

(declare-fun res!1775467 () Bool)

(assert (=> b!4331259 (=> (not res!1775467) (not e!2695228))))

(assert (=> b!4331259 (= res!1775467 (= (getValueByKey!320 (toList!2645 lt!1545635) (_1!27136 (tuple2!47685 hash!427 newBucket!230))) (Some!10333 (_2!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(declare-fun b!4331260 () Bool)

(declare-fun contains!10560 (List!48670 tuple2!47684) Bool)

(assert (=> b!4331260 (= e!2695228 (contains!10560 (toList!2645 lt!1545635) (tuple2!47685 hash!427 newBucket!230)))))

(assert (= (and d!1273302 res!1775466) b!4331259))

(assert (= (and b!4331259 res!1775467) b!4331260))

(declare-fun m!4925609 () Bool)

(assert (=> d!1273302 m!4925609))

(declare-fun m!4925611 () Bool)

(assert (=> d!1273302 m!4925611))

(declare-fun m!4925613 () Bool)

(assert (=> d!1273302 m!4925613))

(declare-fun m!4925615 () Bool)

(assert (=> d!1273302 m!4925615))

(declare-fun m!4925617 () Bool)

(assert (=> b!4331259 m!4925617))

(declare-fun m!4925619 () Bool)

(assert (=> b!4331260 m!4925619))

(assert (=> b!4331210 d!1273302))

(declare-fun d!1273308 () Bool)

(declare-fun res!1775476 () Bool)

(declare-fun e!2695237 () Bool)

(assert (=> d!1273308 (=> res!1775476 e!2695237)))

(assert (=> d!1273308 (= res!1775476 (not (is-Cons!48545 newBucket!230)))))

(assert (=> d!1273308 (= (noDuplicateKeys!340 newBucket!230) e!2695237)))

(declare-fun b!4331269 () Bool)

(declare-fun e!2695238 () Bool)

(assert (=> b!4331269 (= e!2695237 e!2695238)))

(declare-fun res!1775477 () Bool)

(assert (=> b!4331269 (=> (not res!1775477) (not e!2695238))))

(declare-fun containsKey!481 (List!48669 K!9888) Bool)

(assert (=> b!4331269 (= res!1775477 (not (containsKey!481 (t!355583 newBucket!230) (_1!27135 (h!54026 newBucket!230)))))))

(declare-fun b!4331270 () Bool)

(assert (=> b!4331270 (= e!2695238 (noDuplicateKeys!340 (t!355583 newBucket!230)))))

(assert (= (and d!1273308 (not res!1775476)) b!4331269))

(assert (= (and b!4331269 res!1775477) b!4331270))

(declare-fun m!4925621 () Bool)

(assert (=> b!4331269 m!4925621))

(declare-fun m!4925623 () Bool)

(assert (=> b!4331270 m!4925623))

(assert (=> b!4331211 d!1273308))

(declare-fun b!4331275 () Bool)

(declare-fun e!2695241 () Bool)

(declare-fun tp!1328461 () Bool)

(assert (=> b!4331275 (= e!2695241 (and tp_is_empty!24549 tp_is_empty!24551 tp!1328461))))

(assert (=> b!4331208 (= tp!1328451 e!2695241)))

(assert (= (and b!4331208 (is-Cons!48545 (t!355583 newBucket!230))) b!4331275))

(declare-fun b!4331280 () Bool)

(declare-fun e!2695244 () Bool)

(declare-fun tp!1328466 () Bool)

(declare-fun tp!1328467 () Bool)

(assert (=> b!4331280 (= e!2695244 (and tp!1328466 tp!1328467))))

(assert (=> b!4331207 (= tp!1328452 e!2695244)))

(assert (= (and b!4331207 (is-Cons!48546 (toList!2645 lm!2227))) b!4331280))

(declare-fun b_lambda!127895 () Bool)

(assert (= b_lambda!127891 (or start!417400 b_lambda!127895)))

(declare-fun bs!607918 () Bool)

(declare-fun d!1273310 () Bool)

(assert (= bs!607918 (and d!1273310 start!417400)))

(assert (=> bs!607918 (= (dynLambda!20546 lambda!134613 (h!54027 (toList!2645 lm!2227))) (noDuplicateKeys!340 (_2!27136 (h!54027 (toList!2645 lm!2227)))))))

(declare-fun m!4925625 () Bool)

(assert (=> bs!607918 m!4925625))

(assert (=> b!4331245 d!1273310))

(declare-fun b_lambda!127897 () Bool)

(assert (= b_lambda!127893 (or start!417400 b_lambda!127897)))

(declare-fun bs!607919 () Bool)

(declare-fun d!1273312 () Bool)

(assert (= bs!607919 (and d!1273312 start!417400)))

(assert (=> bs!607919 (= (dynLambda!20546 lambda!134613 (h!54027 (toList!2645 lt!1545620))) (noDuplicateKeys!340 (_2!27136 (h!54027 (toList!2645 lt!1545620)))))))

(declare-fun m!4925627 () Bool)

(assert (=> bs!607919 m!4925627))

(assert (=> b!4331251 d!1273312))

(push 1)

(assert (not b!4331260))

(assert tp_is_empty!24549)

(assert (not b!4331246))

(assert (not b!4331252))

(assert tp_is_empty!24551)

(assert (not b!4331275))

(assert (not d!1273298))

(assert (not b!4331269))

(assert (not b!4331259))

(assert (not d!1273302))

(assert (not d!1273292))

(assert (not bs!607918))

(assert (not d!1273296))

(assert (not d!1273290))

(assert (not b!4331270))

(assert (not b_lambda!127895))

(assert (not b!4331280))

(assert (not b_lambda!127897))

(assert (not bs!607919))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1273330 () Bool)

(declare-fun res!1775494 () Bool)

(declare-fun e!2695264 () Bool)

(assert (=> d!1273330 (=> res!1775494 e!2695264)))

(assert (=> d!1273330 (= res!1775494 (is-Nil!48546 (toList!2645 lt!1545620)))))

(assert (=> d!1273330 (= (forall!8877 (toList!2645 lt!1545620) lambda!134621) e!2695264)))

(declare-fun b!4331311 () Bool)

(declare-fun e!2695265 () Bool)

(assert (=> b!4331311 (= e!2695264 e!2695265)))

(declare-fun res!1775495 () Bool)

(assert (=> b!4331311 (=> (not res!1775495) (not e!2695265))))

(assert (=> b!4331311 (= res!1775495 (dynLambda!20546 lambda!134621 (h!54027 (toList!2645 lt!1545620))))))

(declare-fun b!4331312 () Bool)

(assert (=> b!4331312 (= e!2695265 (forall!8877 (t!355584 (toList!2645 lt!1545620)) lambda!134621))))

(assert (= (and d!1273330 (not res!1775494)) b!4331311))

(assert (= (and b!4331311 res!1775495) b!4331312))

(declare-fun b_lambda!127907 () Bool)

(assert (=> (not b_lambda!127907) (not b!4331311)))

(declare-fun m!4925663 () Bool)

(assert (=> b!4331311 m!4925663))

(declare-fun m!4925665 () Bool)

(assert (=> b!4331312 m!4925665))

(assert (=> d!1273290 d!1273330))

(declare-fun d!1273332 () Bool)

(declare-fun e!2695270 () Bool)

(assert (=> d!1273332 e!2695270))

(declare-fun res!1775498 () Bool)

(assert (=> d!1273332 (=> res!1775498 e!2695270)))

(declare-fun lt!1545656 () Bool)

(assert (=> d!1273332 (= res!1775498 (not lt!1545656))))

(declare-fun lt!1545659 () Bool)

(assert (=> d!1273332 (= lt!1545656 lt!1545659)))

(declare-fun lt!1545657 () Unit!68151)

(declare-fun e!2695271 () Unit!68151)

(assert (=> d!1273332 (= lt!1545657 e!2695271)))

(declare-fun c!736788 () Bool)

(assert (=> d!1273332 (= c!736788 lt!1545659)))

(declare-fun containsKey!483 (List!48670 (_ BitVec 64)) Bool)

(assert (=> d!1273332 (= lt!1545659 (containsKey!483 (toList!2645 lt!1545635) (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))

(assert (=> d!1273332 (= (contains!10559 lt!1545635 (_1!27136 (tuple2!47685 hash!427 newBucket!230))) lt!1545656)))

(declare-fun b!4331319 () Bool)

(declare-fun lt!1545658 () Unit!68151)

(assert (=> b!4331319 (= e!2695271 lt!1545658)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!236 (List!48670 (_ BitVec 64)) Unit!68151)

(assert (=> b!4331319 (= lt!1545658 (lemmaContainsKeyImpliesGetValueByKeyDefined!236 (toList!2645 lt!1545635) (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))

(declare-fun isDefined!7632 (Option!10334) Bool)

(assert (=> b!4331319 (isDefined!7632 (getValueByKey!320 (toList!2645 lt!1545635) (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))

(declare-fun b!4331320 () Bool)

(declare-fun Unit!68155 () Unit!68151)

(assert (=> b!4331320 (= e!2695271 Unit!68155)))

(declare-fun b!4331321 () Bool)

(assert (=> b!4331321 (= e!2695270 (isDefined!7632 (getValueByKey!320 (toList!2645 lt!1545635) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(assert (= (and d!1273332 c!736788) b!4331319))

(assert (= (and d!1273332 (not c!736788)) b!4331320))

(assert (= (and d!1273332 (not res!1775498)) b!4331321))

(declare-fun m!4925667 () Bool)

(assert (=> d!1273332 m!4925667))

(declare-fun m!4925669 () Bool)

(assert (=> b!4331319 m!4925669))

(assert (=> b!4331319 m!4925617))

(assert (=> b!4331319 m!4925617))

(declare-fun m!4925671 () Bool)

(assert (=> b!4331319 m!4925671))

(assert (=> b!4331321 m!4925617))

(assert (=> b!4331321 m!4925617))

(assert (=> b!4331321 m!4925671))

(assert (=> d!1273302 d!1273332))

(declare-fun c!736793 () Bool)

(declare-fun d!1273334 () Bool)

(assert (=> d!1273334 (= c!736793 (and (is-Cons!48546 lt!1545634) (= (_1!27136 (h!54027 lt!1545634)) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(declare-fun e!2695276 () Option!10334)

(assert (=> d!1273334 (= (getValueByKey!320 lt!1545634 (_1!27136 (tuple2!47685 hash!427 newBucket!230))) e!2695276)))

(declare-fun b!4331330 () Bool)

(assert (=> b!4331330 (= e!2695276 (Some!10333 (_2!27136 (h!54027 lt!1545634))))))

(declare-fun e!2695277 () Option!10334)

(declare-fun b!4331332 () Bool)

(assert (=> b!4331332 (= e!2695277 (getValueByKey!320 (t!355584 lt!1545634) (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))

(declare-fun b!4331333 () Bool)

(assert (=> b!4331333 (= e!2695277 None!10333)))

(declare-fun b!4331331 () Bool)

(assert (=> b!4331331 (= e!2695276 e!2695277)))

(declare-fun c!736794 () Bool)

(assert (=> b!4331331 (= c!736794 (and (is-Cons!48546 lt!1545634) (not (= (_1!27136 (h!54027 lt!1545634)) (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))))

(assert (= (and d!1273334 c!736793) b!4331330))

(assert (= (and d!1273334 (not c!736793)) b!4331331))

(assert (= (and b!4331331 c!736794) b!4331332))

(assert (= (and b!4331331 (not c!736794)) b!4331333))

(declare-fun m!4925673 () Bool)

(assert (=> b!4331332 m!4925673))

(assert (=> d!1273302 d!1273334))

(declare-fun d!1273336 () Bool)

(assert (=> d!1273336 (= (getValueByKey!320 lt!1545634 (_1!27136 (tuple2!47685 hash!427 newBucket!230))) (Some!10333 (_2!27136 (tuple2!47685 hash!427 newBucket!230))))))

(declare-fun lt!1545662 () Unit!68151)

(declare-fun choose!26487 (List!48670 (_ BitVec 64) List!48669) Unit!68151)

(assert (=> d!1273336 (= lt!1545662 (choose!26487 lt!1545634 (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230))))))

(declare-fun e!2695280 () Bool)

(assert (=> d!1273336 e!2695280))

(declare-fun res!1775503 () Bool)

(assert (=> d!1273336 (=> (not res!1775503) (not e!2695280))))

(assert (=> d!1273336 (= res!1775503 (isStrictlySorted!36 lt!1545634))))

(assert (=> d!1273336 (= (lemmaContainsTupThenGetReturnValue!113 lt!1545634 (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230))) lt!1545662)))

(declare-fun b!4331338 () Bool)

(declare-fun res!1775504 () Bool)

(assert (=> b!4331338 (=> (not res!1775504) (not e!2695280))))

(assert (=> b!4331338 (= res!1775504 (containsKey!483 lt!1545634 (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))

(declare-fun b!4331339 () Bool)

(assert (=> b!4331339 (= e!2695280 (contains!10560 lt!1545634 (tuple2!47685 (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(assert (= (and d!1273336 res!1775503) b!4331338))

(assert (= (and b!4331338 res!1775504) b!4331339))

(assert (=> d!1273336 m!4925611))

(declare-fun m!4925675 () Bool)

(assert (=> d!1273336 m!4925675))

(declare-fun m!4925677 () Bool)

(assert (=> d!1273336 m!4925677))

(declare-fun m!4925679 () Bool)

(assert (=> b!4331338 m!4925679))

(declare-fun m!4925681 () Bool)

(assert (=> b!4331339 m!4925681))

(assert (=> d!1273302 d!1273336))

(declare-fun e!2695294 () List!48670)

(declare-fun c!736803 () Bool)

(declare-fun c!736806 () Bool)

(declare-fun b!4331360 () Bool)

(assert (=> b!4331360 (= e!2695294 (ite c!736806 (t!355584 (toList!2645 lm!2227)) (ite c!736803 (Cons!48546 (h!54027 (toList!2645 lm!2227)) (t!355584 (toList!2645 lm!2227))) Nil!48546)))))

(declare-fun b!4331361 () Bool)

(declare-fun e!2695292 () List!48670)

(declare-fun call!301065 () List!48670)

(assert (=> b!4331361 (= e!2695292 call!301065)))

(declare-fun b!4331362 () Bool)

(assert (=> b!4331362 (= e!2695292 call!301065)))

(declare-fun bm!301059 () Bool)

(declare-fun call!301066 () List!48670)

(declare-fun call!301064 () List!48670)

(assert (=> bm!301059 (= call!301066 call!301064)))

(declare-fun b!4331363 () Bool)

(assert (=> b!4331363 (= e!2695294 (insertStrictlySorted!68 (t!355584 (toList!2645 lm!2227)) (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230))))))

(declare-fun b!4331364 () Bool)

(declare-fun lt!1545665 () List!48670)

(declare-fun e!2695293 () Bool)

(assert (=> b!4331364 (= e!2695293 (contains!10560 lt!1545665 (tuple2!47685 (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(declare-fun b!4331365 () Bool)

(declare-fun res!1775510 () Bool)

(assert (=> b!4331365 (=> (not res!1775510) (not e!2695293))))

(assert (=> b!4331365 (= res!1775510 (containsKey!483 lt!1545665 (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))

(declare-fun b!4331366 () Bool)

(declare-fun e!2695291 () List!48670)

(declare-fun e!2695295 () List!48670)

(assert (=> b!4331366 (= e!2695291 e!2695295)))

(assert (=> b!4331366 (= c!736806 (and (is-Cons!48546 (toList!2645 lm!2227)) (= (_1!27136 (h!54027 (toList!2645 lm!2227))) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(declare-fun d!1273338 () Bool)

(assert (=> d!1273338 e!2695293))

(declare-fun res!1775509 () Bool)

(assert (=> d!1273338 (=> (not res!1775509) (not e!2695293))))

(assert (=> d!1273338 (= res!1775509 (isStrictlySorted!36 lt!1545665))))

(assert (=> d!1273338 (= lt!1545665 e!2695291)))

(declare-fun c!736804 () Bool)

(assert (=> d!1273338 (= c!736804 (and (is-Cons!48546 (toList!2645 lm!2227)) (bvslt (_1!27136 (h!54027 (toList!2645 lm!2227))) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(assert (=> d!1273338 (isStrictlySorted!36 (toList!2645 lm!2227))))

(assert (=> d!1273338 (= (insertStrictlySorted!68 (toList!2645 lm!2227) (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230))) lt!1545665)))

(declare-fun b!4331367 () Bool)

(assert (=> b!4331367 (= e!2695291 call!301064)))

(declare-fun bm!301060 () Bool)

(assert (=> bm!301060 (= call!301065 call!301066)))

(declare-fun b!4331368 () Bool)

(assert (=> b!4331368 (= e!2695295 call!301066)))

(declare-fun b!4331369 () Bool)

(assert (=> b!4331369 (= c!736803 (and (is-Cons!48546 (toList!2645 lm!2227)) (bvsgt (_1!27136 (h!54027 (toList!2645 lm!2227))) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(assert (=> b!4331369 (= e!2695295 e!2695292)))

(declare-fun bm!301061 () Bool)

(declare-fun $colon$colon!666 (List!48670 tuple2!47684) List!48670)

(assert (=> bm!301061 (= call!301064 ($colon$colon!666 e!2695294 (ite c!736804 (h!54027 (toList!2645 lm!2227)) (tuple2!47685 (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230))))))))

(declare-fun c!736805 () Bool)

(assert (=> bm!301061 (= c!736805 c!736804)))

(assert (= (and d!1273338 c!736804) b!4331367))

(assert (= (and d!1273338 (not c!736804)) b!4331366))

(assert (= (and b!4331366 c!736806) b!4331368))

(assert (= (and b!4331366 (not c!736806)) b!4331369))

(assert (= (and b!4331369 c!736803) b!4331361))

(assert (= (and b!4331369 (not c!736803)) b!4331362))

(assert (= (or b!4331361 b!4331362) bm!301060))

(assert (= (or b!4331368 bm!301060) bm!301059))

(assert (= (or b!4331367 bm!301059) bm!301061))

(assert (= (and bm!301061 c!736805) b!4331363))

(assert (= (and bm!301061 (not c!736805)) b!4331360))

(assert (= (and d!1273338 res!1775509) b!4331365))

(assert (= (and b!4331365 res!1775510) b!4331364))

(declare-fun m!4925683 () Bool)

(assert (=> b!4331364 m!4925683))

(declare-fun m!4925685 () Bool)

(assert (=> bm!301061 m!4925685))

(declare-fun m!4925687 () Bool)

(assert (=> b!4331365 m!4925687))

(declare-fun m!4925689 () Bool)

(assert (=> d!1273338 m!4925689))

(assert (=> d!1273338 m!4925599))

(declare-fun m!4925691 () Bool)

(assert (=> b!4331363 m!4925691))

(assert (=> d!1273302 d!1273338))

(declare-fun d!1273340 () Bool)

(declare-fun res!1775511 () Bool)

(declare-fun e!2695296 () Bool)

(assert (=> d!1273340 (=> res!1775511 e!2695296)))

(assert (=> d!1273340 (= res!1775511 (is-Nil!48546 (t!355584 (toList!2645 lm!2227))))))

(assert (=> d!1273340 (= (forall!8877 (t!355584 (toList!2645 lm!2227)) lambda!134613) e!2695296)))

(declare-fun b!4331370 () Bool)

(declare-fun e!2695297 () Bool)

(assert (=> b!4331370 (= e!2695296 e!2695297)))

(declare-fun res!1775512 () Bool)

(assert (=> b!4331370 (=> (not res!1775512) (not e!2695297))))

(assert (=> b!4331370 (= res!1775512 (dynLambda!20546 lambda!134613 (h!54027 (t!355584 (toList!2645 lm!2227)))))))

(declare-fun b!4331371 () Bool)

(assert (=> b!4331371 (= e!2695297 (forall!8877 (t!355584 (t!355584 (toList!2645 lm!2227))) lambda!134613))))

(assert (= (and d!1273340 (not res!1775511)) b!4331370))

(assert (= (and b!4331370 res!1775512) b!4331371))

(declare-fun b_lambda!127909 () Bool)

(assert (=> (not b_lambda!127909) (not b!4331370)))

(declare-fun m!4925693 () Bool)

(assert (=> b!4331370 m!4925693))

(declare-fun m!4925695 () Bool)

(assert (=> b!4331371 m!4925695))

(assert (=> b!4331246 d!1273340))

(declare-fun d!1273342 () Bool)

(declare-fun res!1775513 () Bool)

(declare-fun e!2695298 () Bool)

(assert (=> d!1273342 (=> res!1775513 e!2695298)))

(assert (=> d!1273342 (= res!1775513 (not (is-Cons!48545 (_2!27136 (h!54027 (toList!2645 lt!1545620))))))))

(assert (=> d!1273342 (= (noDuplicateKeys!340 (_2!27136 (h!54027 (toList!2645 lt!1545620)))) e!2695298)))

(declare-fun b!4331372 () Bool)

(declare-fun e!2695299 () Bool)

(assert (=> b!4331372 (= e!2695298 e!2695299)))

(declare-fun res!1775514 () Bool)

(assert (=> b!4331372 (=> (not res!1775514) (not e!2695299))))

(assert (=> b!4331372 (= res!1775514 (not (containsKey!481 (t!355583 (_2!27136 (h!54027 (toList!2645 lt!1545620)))) (_1!27135 (h!54026 (_2!27136 (h!54027 (toList!2645 lt!1545620))))))))))

(declare-fun b!4331373 () Bool)

(assert (=> b!4331373 (= e!2695299 (noDuplicateKeys!340 (t!355583 (_2!27136 (h!54027 (toList!2645 lt!1545620))))))))

(assert (= (and d!1273342 (not res!1775513)) b!4331372))

(assert (= (and b!4331372 res!1775514) b!4331373))

(declare-fun m!4925697 () Bool)

(assert (=> b!4331372 m!4925697))

(declare-fun m!4925699 () Bool)

(assert (=> b!4331373 m!4925699))

(assert (=> bs!607919 d!1273342))

(declare-fun d!1273344 () Bool)

(declare-fun res!1775519 () Bool)

(declare-fun e!2695304 () Bool)

(assert (=> d!1273344 (=> res!1775519 e!2695304)))

(assert (=> d!1273344 (= res!1775519 (or (is-Nil!48546 (toList!2645 lm!2227)) (is-Nil!48546 (t!355584 (toList!2645 lm!2227)))))))

(assert (=> d!1273344 (= (isStrictlySorted!36 (toList!2645 lm!2227)) e!2695304)))

(declare-fun b!4331378 () Bool)

(declare-fun e!2695305 () Bool)

(assert (=> b!4331378 (= e!2695304 e!2695305)))

(declare-fun res!1775520 () Bool)

(assert (=> b!4331378 (=> (not res!1775520) (not e!2695305))))

(assert (=> b!4331378 (= res!1775520 (bvslt (_1!27136 (h!54027 (toList!2645 lm!2227))) (_1!27136 (h!54027 (t!355584 (toList!2645 lm!2227))))))))

(declare-fun b!4331379 () Bool)

(assert (=> b!4331379 (= e!2695305 (isStrictlySorted!36 (t!355584 (toList!2645 lm!2227))))))

(assert (= (and d!1273344 (not res!1775519)) b!4331378))

(assert (= (and b!4331378 res!1775520) b!4331379))

(declare-fun m!4925701 () Bool)

(assert (=> b!4331379 m!4925701))

(assert (=> d!1273296 d!1273344))

(declare-fun d!1273346 () Bool)

(declare-fun c!736807 () Bool)

(assert (=> d!1273346 (= c!736807 (and (is-Cons!48546 (toList!2645 lt!1545635)) (= (_1!27136 (h!54027 (toList!2645 lt!1545635))) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(declare-fun e!2695306 () Option!10334)

(assert (=> d!1273346 (= (getValueByKey!320 (toList!2645 lt!1545635) (_1!27136 (tuple2!47685 hash!427 newBucket!230))) e!2695306)))

(declare-fun b!4331380 () Bool)

(assert (=> b!4331380 (= e!2695306 (Some!10333 (_2!27136 (h!54027 (toList!2645 lt!1545635)))))))

(declare-fun e!2695307 () Option!10334)

(declare-fun b!4331382 () Bool)

(assert (=> b!4331382 (= e!2695307 (getValueByKey!320 (t!355584 (toList!2645 lt!1545635)) (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))

(declare-fun b!4331383 () Bool)

(assert (=> b!4331383 (= e!2695307 None!10333)))

(declare-fun b!4331381 () Bool)

(assert (=> b!4331381 (= e!2695306 e!2695307)))

(declare-fun c!736808 () Bool)

(assert (=> b!4331381 (= c!736808 (and (is-Cons!48546 (toList!2645 lt!1545635)) (not (= (_1!27136 (h!54027 (toList!2645 lt!1545635))) (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))))

(assert (= (and d!1273346 c!736807) b!4331380))

(assert (= (and d!1273346 (not c!736807)) b!4331381))

(assert (= (and b!4331381 c!736808) b!4331382))

(assert (= (and b!4331381 (not c!736808)) b!4331383))

(declare-fun m!4925703 () Bool)

(assert (=> b!4331382 m!4925703))

(assert (=> b!4331259 d!1273346))

(declare-fun d!1273348 () Bool)

(declare-fun res!1775521 () Bool)

(declare-fun e!2695308 () Bool)

(assert (=> d!1273348 (=> res!1775521 e!2695308)))

(assert (=> d!1273348 (= res!1775521 (is-Nil!48546 (toList!2645 lm!2227)))))

(assert (=> d!1273348 (= (forall!8877 (toList!2645 lm!2227) lambda!134622) e!2695308)))

(declare-fun b!4331384 () Bool)

(declare-fun e!2695309 () Bool)

(assert (=> b!4331384 (= e!2695308 e!2695309)))

(declare-fun res!1775522 () Bool)

(assert (=> b!4331384 (=> (not res!1775522) (not e!2695309))))

(assert (=> b!4331384 (= res!1775522 (dynLambda!20546 lambda!134622 (h!54027 (toList!2645 lm!2227))))))

(declare-fun b!4331385 () Bool)

(assert (=> b!4331385 (= e!2695309 (forall!8877 (t!355584 (toList!2645 lm!2227)) lambda!134622))))

(assert (= (and d!1273348 (not res!1775521)) b!4331384))

(assert (= (and b!4331384 res!1775522) b!4331385))

(declare-fun b_lambda!127911 () Bool)

(assert (=> (not b_lambda!127911) (not b!4331384)))

(declare-fun m!4925705 () Bool)

(assert (=> b!4331384 m!4925705))

(declare-fun m!4925707 () Bool)

(assert (=> b!4331385 m!4925707))

(assert (=> d!1273292 d!1273348))

(declare-fun lt!1545668 () Bool)

(declare-fun d!1273350 () Bool)

(declare-fun content!7585 (List!48670) (Set tuple2!47684))

(assert (=> d!1273350 (= lt!1545668 (set.member (tuple2!47685 hash!427 newBucket!230) (content!7585 (toList!2645 lt!1545635))))))

(declare-fun e!2695314 () Bool)

(assert (=> d!1273350 (= lt!1545668 e!2695314)))

(declare-fun res!1775527 () Bool)

(assert (=> d!1273350 (=> (not res!1775527) (not e!2695314))))

(assert (=> d!1273350 (= res!1775527 (is-Cons!48546 (toList!2645 lt!1545635)))))

(assert (=> d!1273350 (= (contains!10560 (toList!2645 lt!1545635) (tuple2!47685 hash!427 newBucket!230)) lt!1545668)))

(declare-fun b!4331390 () Bool)

(declare-fun e!2695315 () Bool)

(assert (=> b!4331390 (= e!2695314 e!2695315)))

(declare-fun res!1775528 () Bool)

(assert (=> b!4331390 (=> res!1775528 e!2695315)))

(assert (=> b!4331390 (= res!1775528 (= (h!54027 (toList!2645 lt!1545635)) (tuple2!47685 hash!427 newBucket!230)))))

(declare-fun b!4331391 () Bool)

(assert (=> b!4331391 (= e!2695315 (contains!10560 (t!355584 (toList!2645 lt!1545635)) (tuple2!47685 hash!427 newBucket!230)))))

(assert (= (and d!1273350 res!1775527) b!4331390))

(assert (= (and b!4331390 (not res!1775528)) b!4331391))

(declare-fun m!4925709 () Bool)

(assert (=> d!1273350 m!4925709))

(declare-fun m!4925711 () Bool)

(assert (=> d!1273350 m!4925711))

(declare-fun m!4925713 () Bool)

(assert (=> b!4331391 m!4925713))

(assert (=> b!4331260 d!1273350))

(declare-fun d!1273352 () Bool)

(declare-fun res!1775533 () Bool)

(declare-fun e!2695320 () Bool)

(assert (=> d!1273352 (=> res!1775533 e!2695320)))

(assert (=> d!1273352 (= res!1775533 (is-Nil!48545 newBucket!230))))

(assert (=> d!1273352 (= (forall!8879 newBucket!230 lambda!134625) e!2695320)))

(declare-fun b!4331396 () Bool)

(declare-fun e!2695321 () Bool)

(assert (=> b!4331396 (= e!2695320 e!2695321)))

(declare-fun res!1775534 () Bool)

(assert (=> b!4331396 (=> (not res!1775534) (not e!2695321))))

(declare-fun dynLambda!20548 (Int tuple2!47682) Bool)

(assert (=> b!4331396 (= res!1775534 (dynLambda!20548 lambda!134625 (h!54026 newBucket!230)))))

(declare-fun b!4331397 () Bool)

(assert (=> b!4331397 (= e!2695321 (forall!8879 (t!355583 newBucket!230) lambda!134625))))

(assert (= (and d!1273352 (not res!1775533)) b!4331396))

(assert (= (and b!4331396 res!1775534) b!4331397))

(declare-fun b_lambda!127913 () Bool)

(assert (=> (not b_lambda!127913) (not b!4331396)))

(declare-fun m!4925715 () Bool)

(assert (=> b!4331396 m!4925715))

(declare-fun m!4925717 () Bool)

(assert (=> b!4331397 m!4925717))

(assert (=> d!1273298 d!1273352))

(declare-fun d!1273354 () Bool)

(declare-fun res!1775535 () Bool)

(declare-fun e!2695322 () Bool)

(assert (=> d!1273354 (=> res!1775535 e!2695322)))

(assert (=> d!1273354 (= res!1775535 (not (is-Cons!48545 (t!355583 newBucket!230))))))

(assert (=> d!1273354 (= (noDuplicateKeys!340 (t!355583 newBucket!230)) e!2695322)))

(declare-fun b!4331398 () Bool)

(declare-fun e!2695323 () Bool)

(assert (=> b!4331398 (= e!2695322 e!2695323)))

(declare-fun res!1775536 () Bool)

(assert (=> b!4331398 (=> (not res!1775536) (not e!2695323))))

(assert (=> b!4331398 (= res!1775536 (not (containsKey!481 (t!355583 (t!355583 newBucket!230)) (_1!27135 (h!54026 (t!355583 newBucket!230))))))))

(declare-fun b!4331399 () Bool)

(assert (=> b!4331399 (= e!2695323 (noDuplicateKeys!340 (t!355583 (t!355583 newBucket!230))))))

(assert (= (and d!1273354 (not res!1775535)) b!4331398))

(assert (= (and b!4331398 res!1775536) b!4331399))

(declare-fun m!4925719 () Bool)

(assert (=> b!4331398 m!4925719))

(declare-fun m!4925721 () Bool)

(assert (=> b!4331399 m!4925721))

(assert (=> b!4331270 d!1273354))

(declare-fun d!1273356 () Bool)

(declare-fun res!1775537 () Bool)

(declare-fun e!2695324 () Bool)

(assert (=> d!1273356 (=> res!1775537 e!2695324)))

(assert (=> d!1273356 (= res!1775537 (is-Nil!48546 (t!355584 (toList!2645 lt!1545620))))))

(assert (=> d!1273356 (= (forall!8877 (t!355584 (toList!2645 lt!1545620)) lambda!134613) e!2695324)))

(declare-fun b!4331400 () Bool)

(declare-fun e!2695325 () Bool)

(assert (=> b!4331400 (= e!2695324 e!2695325)))

(declare-fun res!1775538 () Bool)

(assert (=> b!4331400 (=> (not res!1775538) (not e!2695325))))

(assert (=> b!4331400 (= res!1775538 (dynLambda!20546 lambda!134613 (h!54027 (t!355584 (toList!2645 lt!1545620)))))))

(declare-fun b!4331401 () Bool)

(assert (=> b!4331401 (= e!2695325 (forall!8877 (t!355584 (t!355584 (toList!2645 lt!1545620))) lambda!134613))))

(assert (= (and d!1273356 (not res!1775537)) b!4331400))

(assert (= (and b!4331400 res!1775538) b!4331401))

(declare-fun b_lambda!127915 () Bool)

(assert (=> (not b_lambda!127915) (not b!4331400)))

(declare-fun m!4925723 () Bool)

(assert (=> b!4331400 m!4925723))

(declare-fun m!4925725 () Bool)

(assert (=> b!4331401 m!4925725))

(assert (=> b!4331252 d!1273356))

(declare-fun d!1273358 () Bool)

(declare-fun res!1775543 () Bool)

(declare-fun e!2695330 () Bool)

(assert (=> d!1273358 (=> res!1775543 e!2695330)))

(assert (=> d!1273358 (= res!1775543 (and (is-Cons!48545 (t!355583 newBucket!230)) (= (_1!27135 (h!54026 (t!355583 newBucket!230))) (_1!27135 (h!54026 newBucket!230)))))))

(assert (=> d!1273358 (= (containsKey!481 (t!355583 newBucket!230) (_1!27135 (h!54026 newBucket!230))) e!2695330)))

(declare-fun b!4331406 () Bool)

(declare-fun e!2695331 () Bool)

(assert (=> b!4331406 (= e!2695330 e!2695331)))

(declare-fun res!1775544 () Bool)

(assert (=> b!4331406 (=> (not res!1775544) (not e!2695331))))

(assert (=> b!4331406 (= res!1775544 (is-Cons!48545 (t!355583 newBucket!230)))))

(declare-fun b!4331407 () Bool)

(assert (=> b!4331407 (= e!2695331 (containsKey!481 (t!355583 (t!355583 newBucket!230)) (_1!27135 (h!54026 newBucket!230))))))

(assert (= (and d!1273358 (not res!1775543)) b!4331406))

(assert (= (and b!4331406 res!1775544) b!4331407))

(declare-fun m!4925727 () Bool)

(assert (=> b!4331407 m!4925727))

(assert (=> b!4331269 d!1273358))

(declare-fun d!1273360 () Bool)

(declare-fun res!1775545 () Bool)

(declare-fun e!2695332 () Bool)

(assert (=> d!1273360 (=> res!1775545 e!2695332)))

(assert (=> d!1273360 (= res!1775545 (not (is-Cons!48545 (_2!27136 (h!54027 (toList!2645 lm!2227))))))))

(assert (=> d!1273360 (= (noDuplicateKeys!340 (_2!27136 (h!54027 (toList!2645 lm!2227)))) e!2695332)))

(declare-fun b!4331408 () Bool)

(declare-fun e!2695333 () Bool)

(assert (=> b!4331408 (= e!2695332 e!2695333)))

(declare-fun res!1775546 () Bool)

(assert (=> b!4331408 (=> (not res!1775546) (not e!2695333))))

(assert (=> b!4331408 (= res!1775546 (not (containsKey!481 (t!355583 (_2!27136 (h!54027 (toList!2645 lm!2227)))) (_1!27135 (h!54026 (_2!27136 (h!54027 (toList!2645 lm!2227))))))))))

(declare-fun b!4331409 () Bool)

(assert (=> b!4331409 (= e!2695333 (noDuplicateKeys!340 (t!355583 (_2!27136 (h!54027 (toList!2645 lm!2227))))))))

(assert (= (and d!1273360 (not res!1775545)) b!4331408))

(assert (= (and b!4331408 res!1775546) b!4331409))

(declare-fun m!4925729 () Bool)

(assert (=> b!4331408 m!4925729))

(declare-fun m!4925731 () Bool)

(assert (=> b!4331409 m!4925731))

(assert (=> bs!607918 d!1273360))

(declare-fun tp!1328477 () Bool)

(declare-fun e!2695334 () Bool)

(declare-fun b!4331410 () Bool)

(assert (=> b!4331410 (= e!2695334 (and tp_is_empty!24549 tp_is_empty!24551 tp!1328477))))

(assert (=> b!4331275 (= tp!1328461 e!2695334)))

(assert (= (and b!4331275 (is-Cons!48545 (t!355583 (t!355583 newBucket!230)))) b!4331410))

(declare-fun b!4331411 () Bool)

(declare-fun tp!1328478 () Bool)

(declare-fun e!2695335 () Bool)

(assert (=> b!4331411 (= e!2695335 (and tp_is_empty!24549 tp_is_empty!24551 tp!1328478))))

(assert (=> b!4331280 (= tp!1328466 e!2695335)))

(assert (= (and b!4331280 (is-Cons!48545 (_2!27136 (h!54027 (toList!2645 lm!2227))))) b!4331411))

(declare-fun b!4331412 () Bool)

(declare-fun e!2695336 () Bool)

(declare-fun tp!1328479 () Bool)

(declare-fun tp!1328480 () Bool)

(assert (=> b!4331412 (= e!2695336 (and tp!1328479 tp!1328480))))

(assert (=> b!4331280 (= tp!1328467 e!2695336)))

(assert (= (and b!4331280 (is-Cons!48546 (t!355584 (toList!2645 lm!2227)))) b!4331412))

(declare-fun b_lambda!127917 () Bool)

(assert (= b_lambda!127911 (or d!1273292 b_lambda!127917)))

(declare-fun bs!607927 () Bool)

(declare-fun d!1273362 () Bool)

(assert (= bs!607927 (and d!1273362 d!1273292)))

(assert (=> bs!607927 (= (dynLambda!20546 lambda!134622 (h!54027 (toList!2645 lm!2227))) (allKeysSameHash!288 (_2!27136 (h!54027 (toList!2645 lm!2227))) (_1!27136 (h!54027 (toList!2645 lm!2227))) hashF!1461))))

(declare-fun m!4925733 () Bool)

(assert (=> bs!607927 m!4925733))

(assert (=> b!4331384 d!1273362))

(declare-fun b_lambda!127919 () Bool)

(assert (= b_lambda!127915 (or start!417400 b_lambda!127919)))

(declare-fun bs!607928 () Bool)

(declare-fun d!1273364 () Bool)

(assert (= bs!607928 (and d!1273364 start!417400)))

(assert (=> bs!607928 (= (dynLambda!20546 lambda!134613 (h!54027 (t!355584 (toList!2645 lt!1545620)))) (noDuplicateKeys!340 (_2!27136 (h!54027 (t!355584 (toList!2645 lt!1545620))))))))

(declare-fun m!4925735 () Bool)

(assert (=> bs!607928 m!4925735))

(assert (=> b!4331400 d!1273364))

(declare-fun b_lambda!127921 () Bool)

(assert (= b_lambda!127909 (or start!417400 b_lambda!127921)))

(declare-fun bs!607929 () Bool)

(declare-fun d!1273366 () Bool)

(assert (= bs!607929 (and d!1273366 start!417400)))

(assert (=> bs!607929 (= (dynLambda!20546 lambda!134613 (h!54027 (t!355584 (toList!2645 lm!2227)))) (noDuplicateKeys!340 (_2!27136 (h!54027 (t!355584 (toList!2645 lm!2227))))))))

(declare-fun m!4925737 () Bool)

(assert (=> bs!607929 m!4925737))

(assert (=> b!4331370 d!1273366))

(declare-fun b_lambda!127923 () Bool)

(assert (= b_lambda!127913 (or d!1273298 b_lambda!127923)))

(declare-fun bs!607930 () Bool)

(declare-fun d!1273368 () Bool)

(assert (= bs!607930 (and d!1273368 d!1273298)))

(declare-fun hash!1262 (Hashable!4720 K!9888) (_ BitVec 64))

(assert (=> bs!607930 (= (dynLambda!20548 lambda!134625 (h!54026 newBucket!230)) (= (hash!1262 hashF!1461 (_1!27135 (h!54026 newBucket!230))) hash!427))))

(declare-fun m!4925739 () Bool)

(assert (=> bs!607930 m!4925739))

(assert (=> b!4331396 d!1273368))

(declare-fun b_lambda!127925 () Bool)

(assert (= b_lambda!127907 (or d!1273290 b_lambda!127925)))

(declare-fun bs!607931 () Bool)

(declare-fun d!1273370 () Bool)

(assert (= bs!607931 (and d!1273370 d!1273290)))

(assert (=> bs!607931 (= (dynLambda!20546 lambda!134621 (h!54027 (toList!2645 lt!1545620))) (allKeysSameHash!288 (_2!27136 (h!54027 (toList!2645 lt!1545620))) (_1!27136 (h!54027 (toList!2645 lt!1545620))) hashF!1461))))

(declare-fun m!4925741 () Bool)

(assert (=> bs!607931 m!4925741))

(assert (=> b!4331311 d!1273370))

(push 1)

(assert (not b!4331409))

(assert (not bs!607928))

(assert (not b!4331332))

(assert (not b!4331407))

(assert tp_is_empty!24549)

(assert (not b!4331401))

(assert (not b!4331411))

(assert (not b_lambda!127921))

(assert (not bs!607930))

(assert tp_is_empty!24551)

(assert (not b!4331338))

(assert (not b!4331364))

(assert (not d!1273338))

(assert (not b!4331365))

(assert (not b!4331363))

(assert (not b_lambda!127925))

(assert (not bm!301061))

(assert (not b!4331410))

(assert (not b!4331382))

(assert (not b!4331321))

(assert (not b!4331385))

(assert (not b_lambda!127923))

(assert (not bs!607931))

(assert (not b_lambda!127895))

(assert (not bs!607927))

(assert (not b!4331412))

(assert (not b!4331399))

(assert (not b_lambda!127917))

(assert (not b!4331312))

(assert (not d!1273336))

(assert (not bs!607929))

(assert (not b!4331391))

(assert (not b!4331371))

(assert (not d!1273332))

(assert (not b!4331319))

(assert (not b_lambda!127919))

(assert (not b!4331397))

(assert (not b!4331408))

(assert (not b!4331379))

(assert (not b!4331339))

(assert (not b!4331373))

(assert (not b_lambda!127897))

(assert (not d!1273350))

(assert (not b!4331398))

(assert (not b!4331372))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1273414 () Bool)

(declare-fun hash!1264 (Hashable!4720 K!9888) (_ BitVec 64))

(assert (=> d!1273414 (= (hash!1262 hashF!1461 (_1!27135 (h!54026 newBucket!230))) (hash!1264 hashF!1461 (_1!27135 (h!54026 newBucket!230))))))

(declare-fun bs!607937 () Bool)

(assert (= bs!607937 d!1273414))

(declare-fun m!4925823 () Bool)

(assert (=> bs!607937 m!4925823))

(assert (=> bs!607930 d!1273414))

(declare-fun d!1273416 () Bool)

(declare-fun res!1775600 () Bool)

(declare-fun e!2695410 () Bool)

(assert (=> d!1273416 (=> res!1775600 e!2695410)))

(assert (=> d!1273416 (= res!1775600 (and (is-Cons!48545 (t!355583 (_2!27136 (h!54027 (toList!2645 lm!2227))))) (= (_1!27135 (h!54026 (t!355583 (_2!27136 (h!54027 (toList!2645 lm!2227)))))) (_1!27135 (h!54026 (_2!27136 (h!54027 (toList!2645 lm!2227))))))))))

(assert (=> d!1273416 (= (containsKey!481 (t!355583 (_2!27136 (h!54027 (toList!2645 lm!2227)))) (_1!27135 (h!54026 (_2!27136 (h!54027 (toList!2645 lm!2227)))))) e!2695410)))

(declare-fun b!4331515 () Bool)

(declare-fun e!2695411 () Bool)

(assert (=> b!4331515 (= e!2695410 e!2695411)))

(declare-fun res!1775601 () Bool)

(assert (=> b!4331515 (=> (not res!1775601) (not e!2695411))))

(assert (=> b!4331515 (= res!1775601 (is-Cons!48545 (t!355583 (_2!27136 (h!54027 (toList!2645 lm!2227))))))))

(declare-fun b!4331516 () Bool)

(assert (=> b!4331516 (= e!2695411 (containsKey!481 (t!355583 (t!355583 (_2!27136 (h!54027 (toList!2645 lm!2227))))) (_1!27135 (h!54026 (_2!27136 (h!54027 (toList!2645 lm!2227)))))))))

(assert (= (and d!1273416 (not res!1775600)) b!4331515))

(assert (= (and b!4331515 res!1775601) b!4331516))

(declare-fun m!4925825 () Bool)

(assert (=> b!4331516 m!4925825))

(assert (=> b!4331408 d!1273416))

(declare-fun d!1273418 () Bool)

(declare-fun res!1775606 () Bool)

(declare-fun e!2695416 () Bool)

(assert (=> d!1273418 (=> res!1775606 e!2695416)))

(assert (=> d!1273418 (= res!1775606 (and (is-Cons!48546 (toList!2645 lt!1545635)) (= (_1!27136 (h!54027 (toList!2645 lt!1545635))) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(assert (=> d!1273418 (= (containsKey!483 (toList!2645 lt!1545635) (_1!27136 (tuple2!47685 hash!427 newBucket!230))) e!2695416)))

(declare-fun b!4331521 () Bool)

(declare-fun e!2695417 () Bool)

(assert (=> b!4331521 (= e!2695416 e!2695417)))

(declare-fun res!1775607 () Bool)

(assert (=> b!4331521 (=> (not res!1775607) (not e!2695417))))

(assert (=> b!4331521 (= res!1775607 (and (or (not (is-Cons!48546 (toList!2645 lt!1545635))) (bvsle (_1!27136 (h!54027 (toList!2645 lt!1545635))) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))) (is-Cons!48546 (toList!2645 lt!1545635)) (bvslt (_1!27136 (h!54027 (toList!2645 lt!1545635))) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(declare-fun b!4331522 () Bool)

(assert (=> b!4331522 (= e!2695417 (containsKey!483 (t!355584 (toList!2645 lt!1545635)) (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))

(assert (= (and d!1273418 (not res!1775606)) b!4331521))

(assert (= (and b!4331521 res!1775607) b!4331522))

(declare-fun m!4925827 () Bool)

(assert (=> b!4331522 m!4925827))

(assert (=> d!1273332 d!1273418))

(declare-fun lt!1545690 () Bool)

(declare-fun d!1273420 () Bool)

(assert (=> d!1273420 (= lt!1545690 (set.member (tuple2!47685 (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230))) (content!7585 lt!1545665)))))

(declare-fun e!2695418 () Bool)

(assert (=> d!1273420 (= lt!1545690 e!2695418)))

(declare-fun res!1775608 () Bool)

(assert (=> d!1273420 (=> (not res!1775608) (not e!2695418))))

(assert (=> d!1273420 (= res!1775608 (is-Cons!48546 lt!1545665))))

(assert (=> d!1273420 (= (contains!10560 lt!1545665 (tuple2!47685 (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230)))) lt!1545690)))

(declare-fun b!4331523 () Bool)

(declare-fun e!2695419 () Bool)

(assert (=> b!4331523 (= e!2695418 e!2695419)))

(declare-fun res!1775609 () Bool)

(assert (=> b!4331523 (=> res!1775609 e!2695419)))

(assert (=> b!4331523 (= res!1775609 (= (h!54027 lt!1545665) (tuple2!47685 (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(declare-fun b!4331524 () Bool)

(assert (=> b!4331524 (= e!2695419 (contains!10560 (t!355584 lt!1545665) (tuple2!47685 (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(assert (= (and d!1273420 res!1775608) b!4331523))

(assert (= (and b!4331523 (not res!1775609)) b!4331524))

(declare-fun m!4925829 () Bool)

(assert (=> d!1273420 m!4925829))

(declare-fun m!4925831 () Bool)

(assert (=> d!1273420 m!4925831))

(declare-fun m!4925833 () Bool)

(assert (=> b!4331524 m!4925833))

(assert (=> b!4331364 d!1273420))

(declare-fun lt!1545691 () Bool)

(declare-fun d!1273422 () Bool)

(assert (=> d!1273422 (= lt!1545691 (set.member (tuple2!47685 hash!427 newBucket!230) (content!7585 (t!355584 (toList!2645 lt!1545635)))))))

(declare-fun e!2695420 () Bool)

(assert (=> d!1273422 (= lt!1545691 e!2695420)))

(declare-fun res!1775610 () Bool)

(assert (=> d!1273422 (=> (not res!1775610) (not e!2695420))))

(assert (=> d!1273422 (= res!1775610 (is-Cons!48546 (t!355584 (toList!2645 lt!1545635))))))

(assert (=> d!1273422 (= (contains!10560 (t!355584 (toList!2645 lt!1545635)) (tuple2!47685 hash!427 newBucket!230)) lt!1545691)))

(declare-fun b!4331525 () Bool)

(declare-fun e!2695421 () Bool)

(assert (=> b!4331525 (= e!2695420 e!2695421)))

(declare-fun res!1775611 () Bool)

(assert (=> b!4331525 (=> res!1775611 e!2695421)))

(assert (=> b!4331525 (= res!1775611 (= (h!54027 (t!355584 (toList!2645 lt!1545635))) (tuple2!47685 hash!427 newBucket!230)))))

(declare-fun b!4331526 () Bool)

(assert (=> b!4331526 (= e!2695421 (contains!10560 (t!355584 (t!355584 (toList!2645 lt!1545635))) (tuple2!47685 hash!427 newBucket!230)))))

(assert (= (and d!1273422 res!1775610) b!4331525))

(assert (= (and b!4331525 (not res!1775611)) b!4331526))

(declare-fun m!4925835 () Bool)

(assert (=> d!1273422 m!4925835))

(declare-fun m!4925837 () Bool)

(assert (=> d!1273422 m!4925837))

(declare-fun m!4925839 () Bool)

(assert (=> b!4331526 m!4925839))

(assert (=> b!4331391 d!1273422))

(declare-fun d!1273424 () Bool)

(declare-fun res!1775612 () Bool)

(declare-fun e!2695422 () Bool)

(assert (=> d!1273424 (=> res!1775612 e!2695422)))

(assert (=> d!1273424 (= res!1775612 (not (is-Cons!48545 (t!355583 (_2!27136 (h!54027 (toList!2645 lm!2227)))))))))

(assert (=> d!1273424 (= (noDuplicateKeys!340 (t!355583 (_2!27136 (h!54027 (toList!2645 lm!2227))))) e!2695422)))

(declare-fun b!4331527 () Bool)

(declare-fun e!2695423 () Bool)

(assert (=> b!4331527 (= e!2695422 e!2695423)))

(declare-fun res!1775613 () Bool)

(assert (=> b!4331527 (=> (not res!1775613) (not e!2695423))))

(assert (=> b!4331527 (= res!1775613 (not (containsKey!481 (t!355583 (t!355583 (_2!27136 (h!54027 (toList!2645 lm!2227))))) (_1!27135 (h!54026 (t!355583 (_2!27136 (h!54027 (toList!2645 lm!2227)))))))))))

(declare-fun b!4331528 () Bool)

(assert (=> b!4331528 (= e!2695423 (noDuplicateKeys!340 (t!355583 (t!355583 (_2!27136 (h!54027 (toList!2645 lm!2227)))))))))

(assert (= (and d!1273424 (not res!1775612)) b!4331527))

(assert (= (and b!4331527 res!1775613) b!4331528))

(declare-fun m!4925841 () Bool)

(assert (=> b!4331527 m!4925841))

(declare-fun m!4925843 () Bool)

(assert (=> b!4331528 m!4925843))

(assert (=> b!4331409 d!1273424))

(declare-fun d!1273426 () Bool)

(declare-fun res!1775614 () Bool)

(declare-fun e!2695424 () Bool)

(assert (=> d!1273426 (=> res!1775614 e!2695424)))

(assert (=> d!1273426 (= res!1775614 (and (is-Cons!48546 lt!1545665) (= (_1!27136 (h!54027 lt!1545665)) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(assert (=> d!1273426 (= (containsKey!483 lt!1545665 (_1!27136 (tuple2!47685 hash!427 newBucket!230))) e!2695424)))

(declare-fun b!4331529 () Bool)

(declare-fun e!2695425 () Bool)

(assert (=> b!4331529 (= e!2695424 e!2695425)))

(declare-fun res!1775615 () Bool)

(assert (=> b!4331529 (=> (not res!1775615) (not e!2695425))))

(assert (=> b!4331529 (= res!1775615 (and (or (not (is-Cons!48546 lt!1545665)) (bvsle (_1!27136 (h!54027 lt!1545665)) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))) (is-Cons!48546 lt!1545665) (bvslt (_1!27136 (h!54027 lt!1545665)) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(declare-fun b!4331530 () Bool)

(assert (=> b!4331530 (= e!2695425 (containsKey!483 (t!355584 lt!1545665) (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))

(assert (= (and d!1273426 (not res!1775614)) b!4331529))

(assert (= (and b!4331529 res!1775615) b!4331530))

(declare-fun m!4925845 () Bool)

(assert (=> b!4331530 m!4925845))

(assert (=> b!4331365 d!1273426))

(declare-fun d!1273428 () Bool)

(declare-fun res!1775616 () Bool)

(declare-fun e!2695426 () Bool)

(assert (=> d!1273428 (=> res!1775616 e!2695426)))

(assert (=> d!1273428 (= res!1775616 (is-Nil!48546 (t!355584 (t!355584 (toList!2645 lt!1545620)))))))

(assert (=> d!1273428 (= (forall!8877 (t!355584 (t!355584 (toList!2645 lt!1545620))) lambda!134613) e!2695426)))

(declare-fun b!4331531 () Bool)

(declare-fun e!2695427 () Bool)

(assert (=> b!4331531 (= e!2695426 e!2695427)))

(declare-fun res!1775617 () Bool)

(assert (=> b!4331531 (=> (not res!1775617) (not e!2695427))))

(assert (=> b!4331531 (= res!1775617 (dynLambda!20546 lambda!134613 (h!54027 (t!355584 (t!355584 (toList!2645 lt!1545620))))))))

(declare-fun b!4331532 () Bool)

(assert (=> b!4331532 (= e!2695427 (forall!8877 (t!355584 (t!355584 (t!355584 (toList!2645 lt!1545620)))) lambda!134613))))

(assert (= (and d!1273428 (not res!1775616)) b!4331531))

(assert (= (and b!4331531 res!1775617) b!4331532))

(declare-fun b_lambda!127947 () Bool)

(assert (=> (not b_lambda!127947) (not b!4331531)))

(declare-fun m!4925847 () Bool)

(assert (=> b!4331531 m!4925847))

(declare-fun m!4925849 () Bool)

(assert (=> b!4331532 m!4925849))

(assert (=> b!4331401 d!1273428))

(declare-fun c!736832 () Bool)

(declare-fun b!4331533 () Bool)

(declare-fun c!736835 () Bool)

(declare-fun e!2695431 () List!48670)

(assert (=> b!4331533 (= e!2695431 (ite c!736835 (t!355584 (t!355584 (toList!2645 lm!2227))) (ite c!736832 (Cons!48546 (h!54027 (t!355584 (toList!2645 lm!2227))) (t!355584 (t!355584 (toList!2645 lm!2227)))) Nil!48546)))))

(declare-fun b!4331534 () Bool)

(declare-fun e!2695429 () List!48670)

(declare-fun call!301077 () List!48670)

(assert (=> b!4331534 (= e!2695429 call!301077)))

(declare-fun b!4331535 () Bool)

(assert (=> b!4331535 (= e!2695429 call!301077)))

(declare-fun bm!301071 () Bool)

(declare-fun call!301078 () List!48670)

(declare-fun call!301076 () List!48670)

(assert (=> bm!301071 (= call!301078 call!301076)))

(declare-fun b!4331536 () Bool)

(assert (=> b!4331536 (= e!2695431 (insertStrictlySorted!68 (t!355584 (t!355584 (toList!2645 lm!2227))) (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230))))))

(declare-fun b!4331537 () Bool)

(declare-fun e!2695430 () Bool)

(declare-fun lt!1545692 () List!48670)

(assert (=> b!4331537 (= e!2695430 (contains!10560 lt!1545692 (tuple2!47685 (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(declare-fun b!4331538 () Bool)

(declare-fun res!1775619 () Bool)

(assert (=> b!4331538 (=> (not res!1775619) (not e!2695430))))

(assert (=> b!4331538 (= res!1775619 (containsKey!483 lt!1545692 (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))

(declare-fun b!4331539 () Bool)

(declare-fun e!2695428 () List!48670)

(declare-fun e!2695432 () List!48670)

(assert (=> b!4331539 (= e!2695428 e!2695432)))

(assert (=> b!4331539 (= c!736835 (and (is-Cons!48546 (t!355584 (toList!2645 lm!2227))) (= (_1!27136 (h!54027 (t!355584 (toList!2645 lm!2227)))) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(declare-fun d!1273430 () Bool)

(assert (=> d!1273430 e!2695430))

(declare-fun res!1775618 () Bool)

(assert (=> d!1273430 (=> (not res!1775618) (not e!2695430))))

(assert (=> d!1273430 (= res!1775618 (isStrictlySorted!36 lt!1545692))))

(assert (=> d!1273430 (= lt!1545692 e!2695428)))

(declare-fun c!736833 () Bool)

(assert (=> d!1273430 (= c!736833 (and (is-Cons!48546 (t!355584 (toList!2645 lm!2227))) (bvslt (_1!27136 (h!54027 (t!355584 (toList!2645 lm!2227)))) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(assert (=> d!1273430 (isStrictlySorted!36 (t!355584 (toList!2645 lm!2227)))))

(assert (=> d!1273430 (= (insertStrictlySorted!68 (t!355584 (toList!2645 lm!2227)) (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230))) lt!1545692)))

(declare-fun b!4331540 () Bool)

(assert (=> b!4331540 (= e!2695428 call!301076)))

(declare-fun bm!301072 () Bool)

(assert (=> bm!301072 (= call!301077 call!301078)))

(declare-fun b!4331541 () Bool)

(assert (=> b!4331541 (= e!2695432 call!301078)))

(declare-fun b!4331542 () Bool)

(assert (=> b!4331542 (= c!736832 (and (is-Cons!48546 (t!355584 (toList!2645 lm!2227))) (bvsgt (_1!27136 (h!54027 (t!355584 (toList!2645 lm!2227)))) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(assert (=> b!4331542 (= e!2695432 e!2695429)))

(declare-fun bm!301073 () Bool)

(assert (=> bm!301073 (= call!301076 ($colon$colon!666 e!2695431 (ite c!736833 (h!54027 (t!355584 (toList!2645 lm!2227))) (tuple2!47685 (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230))))))))

(declare-fun c!736834 () Bool)

(assert (=> bm!301073 (= c!736834 c!736833)))

(assert (= (and d!1273430 c!736833) b!4331540))

(assert (= (and d!1273430 (not c!736833)) b!4331539))

(assert (= (and b!4331539 c!736835) b!4331541))

(assert (= (and b!4331539 (not c!736835)) b!4331542))

(assert (= (and b!4331542 c!736832) b!4331534))

(assert (= (and b!4331542 (not c!736832)) b!4331535))

(assert (= (or b!4331534 b!4331535) bm!301072))

(assert (= (or b!4331541 bm!301072) bm!301071))

(assert (= (or b!4331540 bm!301071) bm!301073))

(assert (= (and bm!301073 c!736834) b!4331536))

(assert (= (and bm!301073 (not c!736834)) b!4331533))

(assert (= (and d!1273430 res!1775618) b!4331538))

(assert (= (and b!4331538 res!1775619) b!4331537))

(declare-fun m!4925851 () Bool)

(assert (=> b!4331537 m!4925851))

(declare-fun m!4925853 () Bool)

(assert (=> bm!301073 m!4925853))

(declare-fun m!4925855 () Bool)

(assert (=> b!4331538 m!4925855))

(declare-fun m!4925857 () Bool)

(assert (=> d!1273430 m!4925857))

(assert (=> d!1273430 m!4925701))

(declare-fun m!4925859 () Bool)

(assert (=> b!4331536 m!4925859))

(assert (=> b!4331363 d!1273430))

(declare-fun d!1273432 () Bool)

(declare-fun res!1775620 () Bool)

(declare-fun e!2695433 () Bool)

(assert (=> d!1273432 (=> res!1775620 e!2695433)))

(assert (=> d!1273432 (= res!1775620 (and (is-Cons!48545 (t!355583 (_2!27136 (h!54027 (toList!2645 lt!1545620))))) (= (_1!27135 (h!54026 (t!355583 (_2!27136 (h!54027 (toList!2645 lt!1545620)))))) (_1!27135 (h!54026 (_2!27136 (h!54027 (toList!2645 lt!1545620))))))))))

(assert (=> d!1273432 (= (containsKey!481 (t!355583 (_2!27136 (h!54027 (toList!2645 lt!1545620)))) (_1!27135 (h!54026 (_2!27136 (h!54027 (toList!2645 lt!1545620)))))) e!2695433)))

(declare-fun b!4331543 () Bool)

(declare-fun e!2695434 () Bool)

(assert (=> b!4331543 (= e!2695433 e!2695434)))

(declare-fun res!1775621 () Bool)

(assert (=> b!4331543 (=> (not res!1775621) (not e!2695434))))

(assert (=> b!4331543 (= res!1775621 (is-Cons!48545 (t!355583 (_2!27136 (h!54027 (toList!2645 lt!1545620))))))))

(declare-fun b!4331544 () Bool)

(assert (=> b!4331544 (= e!2695434 (containsKey!481 (t!355583 (t!355583 (_2!27136 (h!54027 (toList!2645 lt!1545620))))) (_1!27135 (h!54026 (_2!27136 (h!54027 (toList!2645 lt!1545620)))))))))

(assert (= (and d!1273432 (not res!1775620)) b!4331543))

(assert (= (and b!4331543 res!1775621) b!4331544))

(declare-fun m!4925861 () Bool)

(assert (=> b!4331544 m!4925861))

(assert (=> b!4331372 d!1273432))

(declare-fun d!1273434 () Bool)

(declare-fun res!1775622 () Bool)

(declare-fun e!2695435 () Bool)

(assert (=> d!1273434 (=> res!1775622 e!2695435)))

(assert (=> d!1273434 (= res!1775622 (is-Nil!48545 (t!355583 newBucket!230)))))

(assert (=> d!1273434 (= (forall!8879 (t!355583 newBucket!230) lambda!134625) e!2695435)))

(declare-fun b!4331545 () Bool)

(declare-fun e!2695436 () Bool)

(assert (=> b!4331545 (= e!2695435 e!2695436)))

(declare-fun res!1775623 () Bool)

(assert (=> b!4331545 (=> (not res!1775623) (not e!2695436))))

(assert (=> b!4331545 (= res!1775623 (dynLambda!20548 lambda!134625 (h!54026 (t!355583 newBucket!230))))))

(declare-fun b!4331546 () Bool)

(assert (=> b!4331546 (= e!2695436 (forall!8879 (t!355583 (t!355583 newBucket!230)) lambda!134625))))

(assert (= (and d!1273434 (not res!1775622)) b!4331545))

(assert (= (and b!4331545 res!1775623) b!4331546))

(declare-fun b_lambda!127949 () Bool)

(assert (=> (not b_lambda!127949) (not b!4331545)))

(declare-fun m!4925863 () Bool)

(assert (=> b!4331545 m!4925863))

(declare-fun m!4925865 () Bool)

(assert (=> b!4331546 m!4925865))

(assert (=> b!4331397 d!1273434))

(declare-fun d!1273436 () Bool)

(declare-fun isEmpty!28151 (Option!10334) Bool)

(assert (=> d!1273436 (= (isDefined!7632 (getValueByKey!320 (toList!2645 lt!1545635) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))) (not (isEmpty!28151 (getValueByKey!320 (toList!2645 lt!1545635) (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))))

(declare-fun bs!607938 () Bool)

(assert (= bs!607938 d!1273436))

(assert (=> bs!607938 m!4925617))

(declare-fun m!4925867 () Bool)

(assert (=> bs!607938 m!4925867))

(assert (=> b!4331321 d!1273436))

(assert (=> b!4331321 d!1273346))

(declare-fun d!1273438 () Bool)

(declare-fun res!1775624 () Bool)

(declare-fun e!2695437 () Bool)

(assert (=> d!1273438 (=> res!1775624 e!2695437)))

(assert (=> d!1273438 (= res!1775624 (not (is-Cons!48545 (t!355583 (_2!27136 (h!54027 (toList!2645 lt!1545620)))))))))

(assert (=> d!1273438 (= (noDuplicateKeys!340 (t!355583 (_2!27136 (h!54027 (toList!2645 lt!1545620))))) e!2695437)))

(declare-fun b!4331547 () Bool)

(declare-fun e!2695438 () Bool)

(assert (=> b!4331547 (= e!2695437 e!2695438)))

(declare-fun res!1775625 () Bool)

(assert (=> b!4331547 (=> (not res!1775625) (not e!2695438))))

(assert (=> b!4331547 (= res!1775625 (not (containsKey!481 (t!355583 (t!355583 (_2!27136 (h!54027 (toList!2645 lt!1545620))))) (_1!27135 (h!54026 (t!355583 (_2!27136 (h!54027 (toList!2645 lt!1545620)))))))))))

(declare-fun b!4331548 () Bool)

(assert (=> b!4331548 (= e!2695438 (noDuplicateKeys!340 (t!355583 (t!355583 (_2!27136 (h!54027 (toList!2645 lt!1545620)))))))))

(assert (= (and d!1273438 (not res!1775624)) b!4331547))

(assert (= (and b!4331547 res!1775625) b!4331548))

(declare-fun m!4925869 () Bool)

(assert (=> b!4331547 m!4925869))

(declare-fun m!4925871 () Bool)

(assert (=> b!4331548 m!4925871))

(assert (=> b!4331373 d!1273438))

(declare-fun c!736836 () Bool)

(declare-fun d!1273440 () Bool)

(assert (=> d!1273440 (= c!736836 (and (is-Cons!48546 (t!355584 (toList!2645 lt!1545635))) (= (_1!27136 (h!54027 (t!355584 (toList!2645 lt!1545635)))) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(declare-fun e!2695439 () Option!10334)

(assert (=> d!1273440 (= (getValueByKey!320 (t!355584 (toList!2645 lt!1545635)) (_1!27136 (tuple2!47685 hash!427 newBucket!230))) e!2695439)))

(declare-fun b!4331549 () Bool)

(assert (=> b!4331549 (= e!2695439 (Some!10333 (_2!27136 (h!54027 (t!355584 (toList!2645 lt!1545635))))))))

(declare-fun e!2695440 () Option!10334)

(declare-fun b!4331551 () Bool)

(assert (=> b!4331551 (= e!2695440 (getValueByKey!320 (t!355584 (t!355584 (toList!2645 lt!1545635))) (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))

(declare-fun b!4331552 () Bool)

(assert (=> b!4331552 (= e!2695440 None!10333)))

(declare-fun b!4331550 () Bool)

(assert (=> b!4331550 (= e!2695439 e!2695440)))

(declare-fun c!736837 () Bool)

(assert (=> b!4331550 (= c!736837 (and (is-Cons!48546 (t!355584 (toList!2645 lt!1545635))) (not (= (_1!27136 (h!54027 (t!355584 (toList!2645 lt!1545635)))) (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))))

(assert (= (and d!1273440 c!736836) b!4331549))

(assert (= (and d!1273440 (not c!736836)) b!4331550))

(assert (= (and b!4331550 c!736837) b!4331551))

(assert (= (and b!4331550 (not c!736837)) b!4331552))

(declare-fun m!4925873 () Bool)

(assert (=> b!4331551 m!4925873))

(assert (=> b!4331382 d!1273440))

(declare-fun d!1273442 () Bool)

(declare-fun res!1775626 () Bool)

(declare-fun e!2695441 () Bool)

(assert (=> d!1273442 (=> res!1775626 e!2695441)))

(assert (=> d!1273442 (= res!1775626 (not (is-Cons!48545 (_2!27136 (h!54027 (t!355584 (toList!2645 lm!2227)))))))))

(assert (=> d!1273442 (= (noDuplicateKeys!340 (_2!27136 (h!54027 (t!355584 (toList!2645 lm!2227))))) e!2695441)))

(declare-fun b!4331553 () Bool)

(declare-fun e!2695442 () Bool)

(assert (=> b!4331553 (= e!2695441 e!2695442)))

(declare-fun res!1775627 () Bool)

(assert (=> b!4331553 (=> (not res!1775627) (not e!2695442))))

(assert (=> b!4331553 (= res!1775627 (not (containsKey!481 (t!355583 (_2!27136 (h!54027 (t!355584 (toList!2645 lm!2227))))) (_1!27135 (h!54026 (_2!27136 (h!54027 (t!355584 (toList!2645 lm!2227)))))))))))

(declare-fun b!4331554 () Bool)

(assert (=> b!4331554 (= e!2695442 (noDuplicateKeys!340 (t!355583 (_2!27136 (h!54027 (t!355584 (toList!2645 lm!2227)))))))))

(assert (= (and d!1273442 (not res!1775626)) b!4331553))

(assert (= (and b!4331553 res!1775627) b!4331554))

(declare-fun m!4925875 () Bool)

(assert (=> b!4331553 m!4925875))

(declare-fun m!4925877 () Bool)

(assert (=> b!4331554 m!4925877))

(assert (=> bs!607929 d!1273442))

(declare-fun d!1273444 () Bool)

(assert (=> d!1273444 (isDefined!7632 (getValueByKey!320 (toList!2645 lt!1545635) (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))

(declare-fun lt!1545695 () Unit!68151)

(declare-fun choose!26489 (List!48670 (_ BitVec 64)) Unit!68151)

(assert (=> d!1273444 (= lt!1545695 (choose!26489 (toList!2645 lt!1545635) (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))

(declare-fun e!2695445 () Bool)

(assert (=> d!1273444 e!2695445))

(declare-fun res!1775630 () Bool)

(assert (=> d!1273444 (=> (not res!1775630) (not e!2695445))))

(assert (=> d!1273444 (= res!1775630 (isStrictlySorted!36 (toList!2645 lt!1545635)))))

(assert (=> d!1273444 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!236 (toList!2645 lt!1545635) (_1!27136 (tuple2!47685 hash!427 newBucket!230))) lt!1545695)))

(declare-fun b!4331557 () Bool)

(assert (=> b!4331557 (= e!2695445 (containsKey!483 (toList!2645 lt!1545635) (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))

(assert (= (and d!1273444 res!1775630) b!4331557))

(assert (=> d!1273444 m!4925617))

(assert (=> d!1273444 m!4925617))

(assert (=> d!1273444 m!4925671))

(declare-fun m!4925879 () Bool)

(assert (=> d!1273444 m!4925879))

(declare-fun m!4925881 () Bool)

(assert (=> d!1273444 m!4925881))

(assert (=> b!4331557 m!4925667))

(assert (=> b!4331319 d!1273444))

(assert (=> b!4331319 d!1273436))

(assert (=> b!4331319 d!1273346))

(declare-fun d!1273446 () Bool)

(declare-fun res!1775631 () Bool)

(declare-fun e!2695446 () Bool)

(assert (=> d!1273446 (=> res!1775631 e!2695446)))

(assert (=> d!1273446 (= res!1775631 (and (is-Cons!48546 lt!1545634) (= (_1!27136 (h!54027 lt!1545634)) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(assert (=> d!1273446 (= (containsKey!483 lt!1545634 (_1!27136 (tuple2!47685 hash!427 newBucket!230))) e!2695446)))

(declare-fun b!4331558 () Bool)

(declare-fun e!2695447 () Bool)

(assert (=> b!4331558 (= e!2695446 e!2695447)))

(declare-fun res!1775632 () Bool)

(assert (=> b!4331558 (=> (not res!1775632) (not e!2695447))))

(assert (=> b!4331558 (= res!1775632 (and (or (not (is-Cons!48546 lt!1545634)) (bvsle (_1!27136 (h!54027 lt!1545634)) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))) (is-Cons!48546 lt!1545634) (bvslt (_1!27136 (h!54027 lt!1545634)) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(declare-fun b!4331559 () Bool)

(assert (=> b!4331559 (= e!2695447 (containsKey!483 (t!355584 lt!1545634) (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))

(assert (= (and d!1273446 (not res!1775631)) b!4331558))

(assert (= (and b!4331558 res!1775632) b!4331559))

(declare-fun m!4925883 () Bool)

(assert (=> b!4331559 m!4925883))

(assert (=> b!4331338 d!1273446))

(declare-fun d!1273448 () Bool)

(declare-fun res!1775633 () Bool)

(declare-fun e!2695448 () Bool)

(assert (=> d!1273448 (=> res!1775633 e!2695448)))

(assert (=> d!1273448 (= res!1775633 (is-Nil!48546 (t!355584 (toList!2645 lt!1545620))))))

(assert (=> d!1273448 (= (forall!8877 (t!355584 (toList!2645 lt!1545620)) lambda!134621) e!2695448)))

(declare-fun b!4331560 () Bool)

(declare-fun e!2695449 () Bool)

(assert (=> b!4331560 (= e!2695448 e!2695449)))

(declare-fun res!1775634 () Bool)

(assert (=> b!4331560 (=> (not res!1775634) (not e!2695449))))

(assert (=> b!4331560 (= res!1775634 (dynLambda!20546 lambda!134621 (h!54027 (t!355584 (toList!2645 lt!1545620)))))))

(declare-fun b!4331561 () Bool)

(assert (=> b!4331561 (= e!2695449 (forall!8877 (t!355584 (t!355584 (toList!2645 lt!1545620))) lambda!134621))))

(assert (= (and d!1273448 (not res!1775633)) b!4331560))

(assert (= (and b!4331560 res!1775634) b!4331561))

(declare-fun b_lambda!127951 () Bool)

(assert (=> (not b_lambda!127951) (not b!4331560)))

(declare-fun m!4925885 () Bool)

(assert (=> b!4331560 m!4925885))

(declare-fun m!4925887 () Bool)

(assert (=> b!4331561 m!4925887))

(assert (=> b!4331312 d!1273448))

(assert (=> d!1273336 d!1273334))

(declare-fun d!1273450 () Bool)

(assert (=> d!1273450 (= (getValueByKey!320 lt!1545634 (_1!27136 (tuple2!47685 hash!427 newBucket!230))) (Some!10333 (_2!27136 (tuple2!47685 hash!427 newBucket!230))))))

(assert (=> d!1273450 true))

(declare-fun _$23!177 () Unit!68151)

(assert (=> d!1273450 (= (choose!26487 lt!1545634 (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230))) _$23!177)))

(declare-fun bs!607939 () Bool)

(assert (= bs!607939 d!1273450))

(assert (=> bs!607939 m!4925611))

(assert (=> d!1273336 d!1273450))

(declare-fun d!1273452 () Bool)

(declare-fun res!1775635 () Bool)

(declare-fun e!2695450 () Bool)

(assert (=> d!1273452 (=> res!1775635 e!2695450)))

(assert (=> d!1273452 (= res!1775635 (or (is-Nil!48546 lt!1545634) (is-Nil!48546 (t!355584 lt!1545634))))))

(assert (=> d!1273452 (= (isStrictlySorted!36 lt!1545634) e!2695450)))

(declare-fun b!4331562 () Bool)

(declare-fun e!2695451 () Bool)

(assert (=> b!4331562 (= e!2695450 e!2695451)))

(declare-fun res!1775636 () Bool)

(assert (=> b!4331562 (=> (not res!1775636) (not e!2695451))))

(assert (=> b!4331562 (= res!1775636 (bvslt (_1!27136 (h!54027 lt!1545634)) (_1!27136 (h!54027 (t!355584 lt!1545634)))))))

(declare-fun b!4331563 () Bool)

(assert (=> b!4331563 (= e!2695451 (isStrictlySorted!36 (t!355584 lt!1545634)))))

(assert (= (and d!1273452 (not res!1775635)) b!4331562))

(assert (= (and b!4331562 res!1775636) b!4331563))

(declare-fun m!4925889 () Bool)

(assert (=> b!4331563 m!4925889))

(assert (=> d!1273336 d!1273452))

(declare-fun d!1273454 () Bool)

(declare-fun c!736840 () Bool)

(assert (=> d!1273454 (= c!736840 (is-Nil!48546 (toList!2645 lt!1545635)))))

(declare-fun e!2695454 () (Set tuple2!47684))

(assert (=> d!1273454 (= (content!7585 (toList!2645 lt!1545635)) e!2695454)))

(declare-fun b!4331568 () Bool)

(assert (=> b!4331568 (= e!2695454 (as set.empty (Set tuple2!47684)))))

(declare-fun b!4331569 () Bool)

(assert (=> b!4331569 (= e!2695454 (set.union (set.insert (h!54027 (toList!2645 lt!1545635)) (as set.empty (Set tuple2!47684))) (content!7585 (t!355584 (toList!2645 lt!1545635)))))))

(assert (= (and d!1273454 c!736840) b!4331568))

(assert (= (and d!1273454 (not c!736840)) b!4331569))

(declare-fun m!4925891 () Bool)

(assert (=> b!4331569 m!4925891))

(assert (=> b!4331569 m!4925835))

(assert (=> d!1273350 d!1273454))

(declare-fun d!1273456 () Bool)

(declare-fun lt!1545696 () Bool)

(assert (=> d!1273456 (= lt!1545696 (set.member (tuple2!47685 (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230))) (content!7585 lt!1545634)))))

(declare-fun e!2695455 () Bool)

(assert (=> d!1273456 (= lt!1545696 e!2695455)))

(declare-fun res!1775637 () Bool)

(assert (=> d!1273456 (=> (not res!1775637) (not e!2695455))))

(assert (=> d!1273456 (= res!1775637 (is-Cons!48546 lt!1545634))))

(assert (=> d!1273456 (= (contains!10560 lt!1545634 (tuple2!47685 (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230)))) lt!1545696)))

(declare-fun b!4331570 () Bool)

(declare-fun e!2695456 () Bool)

(assert (=> b!4331570 (= e!2695455 e!2695456)))

(declare-fun res!1775638 () Bool)

(assert (=> b!4331570 (=> res!1775638 e!2695456)))

(assert (=> b!4331570 (= res!1775638 (= (h!54027 lt!1545634) (tuple2!47685 (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(declare-fun b!4331571 () Bool)

(assert (=> b!4331571 (= e!2695456 (contains!10560 (t!355584 lt!1545634) (tuple2!47685 (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(assert (= (and d!1273456 res!1775637) b!4331570))

(assert (= (and b!4331570 (not res!1775638)) b!4331571))

(declare-fun m!4925893 () Bool)

(assert (=> d!1273456 m!4925893))

(declare-fun m!4925895 () Bool)

(assert (=> d!1273456 m!4925895))

(declare-fun m!4925897 () Bool)

(assert (=> b!4331571 m!4925897))

(assert (=> b!4331339 d!1273456))

(declare-fun d!1273458 () Bool)

(declare-fun res!1775639 () Bool)

(declare-fun e!2695457 () Bool)

(assert (=> d!1273458 (=> res!1775639 e!2695457)))

(assert (=> d!1273458 (= res!1775639 (and (is-Cons!48545 (t!355583 (t!355583 newBucket!230))) (= (_1!27135 (h!54026 (t!355583 (t!355583 newBucket!230)))) (_1!27135 (h!54026 newBucket!230)))))))

(assert (=> d!1273458 (= (containsKey!481 (t!355583 (t!355583 newBucket!230)) (_1!27135 (h!54026 newBucket!230))) e!2695457)))

(declare-fun b!4331572 () Bool)

(declare-fun e!2695458 () Bool)

(assert (=> b!4331572 (= e!2695457 e!2695458)))

(declare-fun res!1775640 () Bool)

(assert (=> b!4331572 (=> (not res!1775640) (not e!2695458))))

(assert (=> b!4331572 (= res!1775640 (is-Cons!48545 (t!355583 (t!355583 newBucket!230))))))

(declare-fun b!4331573 () Bool)

(assert (=> b!4331573 (= e!2695458 (containsKey!481 (t!355583 (t!355583 (t!355583 newBucket!230))) (_1!27135 (h!54026 newBucket!230))))))

(assert (= (and d!1273458 (not res!1775639)) b!4331572))

(assert (= (and b!4331572 res!1775640) b!4331573))

(declare-fun m!4925899 () Bool)

(assert (=> b!4331573 m!4925899))

(assert (=> b!4331407 d!1273458))

(declare-fun d!1273460 () Bool)

(declare-fun res!1775641 () Bool)

(declare-fun e!2695459 () Bool)

(assert (=> d!1273460 (=> res!1775641 e!2695459)))

(assert (=> d!1273460 (= res!1775641 (not (is-Cons!48545 (_2!27136 (h!54027 (t!355584 (toList!2645 lt!1545620)))))))))

(assert (=> d!1273460 (= (noDuplicateKeys!340 (_2!27136 (h!54027 (t!355584 (toList!2645 lt!1545620))))) e!2695459)))

(declare-fun b!4331574 () Bool)

(declare-fun e!2695460 () Bool)

(assert (=> b!4331574 (= e!2695459 e!2695460)))

(declare-fun res!1775642 () Bool)

(assert (=> b!4331574 (=> (not res!1775642) (not e!2695460))))

(assert (=> b!4331574 (= res!1775642 (not (containsKey!481 (t!355583 (_2!27136 (h!54027 (t!355584 (toList!2645 lt!1545620))))) (_1!27135 (h!54026 (_2!27136 (h!54027 (t!355584 (toList!2645 lt!1545620)))))))))))

(declare-fun b!4331575 () Bool)

(assert (=> b!4331575 (= e!2695460 (noDuplicateKeys!340 (t!355583 (_2!27136 (h!54027 (t!355584 (toList!2645 lt!1545620)))))))))

(assert (= (and d!1273460 (not res!1775641)) b!4331574))

(assert (= (and b!4331574 res!1775642) b!4331575))

(declare-fun m!4925901 () Bool)

(assert (=> b!4331574 m!4925901))

(declare-fun m!4925903 () Bool)

(assert (=> b!4331575 m!4925903))

(assert (=> bs!607928 d!1273460))

(declare-fun d!1273462 () Bool)

(declare-fun res!1775643 () Bool)

(declare-fun e!2695461 () Bool)

(assert (=> d!1273462 (=> res!1775643 e!2695461)))

(assert (=> d!1273462 (= res!1775643 (not (is-Cons!48545 (t!355583 (t!355583 newBucket!230)))))))

(assert (=> d!1273462 (= (noDuplicateKeys!340 (t!355583 (t!355583 newBucket!230))) e!2695461)))

(declare-fun b!4331576 () Bool)

(declare-fun e!2695462 () Bool)

(assert (=> b!4331576 (= e!2695461 e!2695462)))

(declare-fun res!1775644 () Bool)

(assert (=> b!4331576 (=> (not res!1775644) (not e!2695462))))

(assert (=> b!4331576 (= res!1775644 (not (containsKey!481 (t!355583 (t!355583 (t!355583 newBucket!230))) (_1!27135 (h!54026 (t!355583 (t!355583 newBucket!230)))))))))

(declare-fun b!4331577 () Bool)

(assert (=> b!4331577 (= e!2695462 (noDuplicateKeys!340 (t!355583 (t!355583 (t!355583 newBucket!230)))))))

(assert (= (and d!1273462 (not res!1775643)) b!4331576))

(assert (= (and b!4331576 res!1775644) b!4331577))

(declare-fun m!4925905 () Bool)

(assert (=> b!4331576 m!4925905))

(declare-fun m!4925907 () Bool)

(assert (=> b!4331577 m!4925907))

(assert (=> b!4331399 d!1273462))

(declare-fun c!736841 () Bool)

(declare-fun d!1273464 () Bool)

(assert (=> d!1273464 (= c!736841 (and (is-Cons!48546 (t!355584 lt!1545634)) (= (_1!27136 (h!54027 (t!355584 lt!1545634))) (_1!27136 (tuple2!47685 hash!427 newBucket!230)))))))

(declare-fun e!2695463 () Option!10334)

(assert (=> d!1273464 (= (getValueByKey!320 (t!355584 lt!1545634) (_1!27136 (tuple2!47685 hash!427 newBucket!230))) e!2695463)))

(declare-fun b!4331578 () Bool)

(assert (=> b!4331578 (= e!2695463 (Some!10333 (_2!27136 (h!54027 (t!355584 lt!1545634)))))))

(declare-fun e!2695464 () Option!10334)

(declare-fun b!4331580 () Bool)

(assert (=> b!4331580 (= e!2695464 (getValueByKey!320 (t!355584 (t!355584 lt!1545634)) (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))

(declare-fun b!4331581 () Bool)

(assert (=> b!4331581 (= e!2695464 None!10333)))

(declare-fun b!4331579 () Bool)

(assert (=> b!4331579 (= e!2695463 e!2695464)))

(declare-fun c!736842 () Bool)

(assert (=> b!4331579 (= c!736842 (and (is-Cons!48546 (t!355584 lt!1545634)) (not (= (_1!27136 (h!54027 (t!355584 lt!1545634))) (_1!27136 (tuple2!47685 hash!427 newBucket!230))))))))

(assert (= (and d!1273464 c!736841) b!4331578))

(assert (= (and d!1273464 (not c!736841)) b!4331579))

(assert (= (and b!4331579 c!736842) b!4331580))

(assert (= (and b!4331579 (not c!736842)) b!4331581))

(declare-fun m!4925909 () Bool)

(assert (=> b!4331580 m!4925909))

(assert (=> b!4331332 d!1273464))

(declare-fun d!1273466 () Bool)

(declare-fun res!1775645 () Bool)

(declare-fun e!2695465 () Bool)

(assert (=> d!1273466 (=> res!1775645 e!2695465)))

(assert (=> d!1273466 (= res!1775645 (or (is-Nil!48546 (t!355584 (toList!2645 lm!2227))) (is-Nil!48546 (t!355584 (t!355584 (toList!2645 lm!2227))))))))

(assert (=> d!1273466 (= (isStrictlySorted!36 (t!355584 (toList!2645 lm!2227))) e!2695465)))

(declare-fun b!4331582 () Bool)

(declare-fun e!2695466 () Bool)

(assert (=> b!4331582 (= e!2695465 e!2695466)))

(declare-fun res!1775646 () Bool)

(assert (=> b!4331582 (=> (not res!1775646) (not e!2695466))))

(assert (=> b!4331582 (= res!1775646 (bvslt (_1!27136 (h!54027 (t!355584 (toList!2645 lm!2227)))) (_1!27136 (h!54027 (t!355584 (t!355584 (toList!2645 lm!2227)))))))))

(declare-fun b!4331583 () Bool)

(assert (=> b!4331583 (= e!2695466 (isStrictlySorted!36 (t!355584 (t!355584 (toList!2645 lm!2227)))))))

(assert (= (and d!1273466 (not res!1775645)) b!4331582))

(assert (= (and b!4331582 res!1775646) b!4331583))

(declare-fun m!4925911 () Bool)

(assert (=> b!4331583 m!4925911))

(assert (=> b!4331379 d!1273466))

(declare-fun bs!607940 () Bool)

(declare-fun d!1273468 () Bool)

(assert (= bs!607940 (and d!1273468 d!1273298)))

(declare-fun lambda!134633 () Int)

(assert (=> bs!607940 (= (= (_1!27136 (h!54027 (toList!2645 lt!1545620))) hash!427) (= lambda!134633 lambda!134625))))

(assert (=> d!1273468 true))

(assert (=> d!1273468 true))

(assert (=> d!1273468 (= (allKeysSameHash!288 (_2!27136 (h!54027 (toList!2645 lt!1545620))) (_1!27136 (h!54027 (toList!2645 lt!1545620))) hashF!1461) (forall!8879 (_2!27136 (h!54027 (toList!2645 lt!1545620))) lambda!134633))))

(declare-fun bs!607941 () Bool)

(assert (= bs!607941 d!1273468))

(declare-fun m!4925913 () Bool)

(assert (=> bs!607941 m!4925913))

(assert (=> bs!607931 d!1273468))

(declare-fun d!1273470 () Bool)

(declare-fun res!1775647 () Bool)

(declare-fun e!2695467 () Bool)

(assert (=> d!1273470 (=> res!1775647 e!2695467)))

(assert (=> d!1273470 (= res!1775647 (and (is-Cons!48545 (t!355583 (t!355583 newBucket!230))) (= (_1!27135 (h!54026 (t!355583 (t!355583 newBucket!230)))) (_1!27135 (h!54026 (t!355583 newBucket!230))))))))

(assert (=> d!1273470 (= (containsKey!481 (t!355583 (t!355583 newBucket!230)) (_1!27135 (h!54026 (t!355583 newBucket!230)))) e!2695467)))

(declare-fun b!4331584 () Bool)

(declare-fun e!2695468 () Bool)

(assert (=> b!4331584 (= e!2695467 e!2695468)))

(declare-fun res!1775648 () Bool)

(assert (=> b!4331584 (=> (not res!1775648) (not e!2695468))))

(assert (=> b!4331584 (= res!1775648 (is-Cons!48545 (t!355583 (t!355583 newBucket!230))))))

(declare-fun b!4331585 () Bool)

(assert (=> b!4331585 (= e!2695468 (containsKey!481 (t!355583 (t!355583 (t!355583 newBucket!230))) (_1!27135 (h!54026 (t!355583 newBucket!230)))))))

(assert (= (and d!1273470 (not res!1775647)) b!4331584))

(assert (= (and b!4331584 res!1775648) b!4331585))

(declare-fun m!4925915 () Bool)

(assert (=> b!4331585 m!4925915))

(assert (=> b!4331398 d!1273470))

(declare-fun bs!607942 () Bool)

(declare-fun d!1273472 () Bool)

(assert (= bs!607942 (and d!1273472 d!1273298)))

(declare-fun lambda!134634 () Int)

(assert (=> bs!607942 (= (= (_1!27136 (h!54027 (toList!2645 lm!2227))) hash!427) (= lambda!134634 lambda!134625))))

(declare-fun bs!607943 () Bool)

(assert (= bs!607943 (and d!1273472 d!1273468)))

(assert (=> bs!607943 (= (= (_1!27136 (h!54027 (toList!2645 lm!2227))) (_1!27136 (h!54027 (toList!2645 lt!1545620)))) (= lambda!134634 lambda!134633))))

(assert (=> d!1273472 true))

(assert (=> d!1273472 true))

(assert (=> d!1273472 (= (allKeysSameHash!288 (_2!27136 (h!54027 (toList!2645 lm!2227))) (_1!27136 (h!54027 (toList!2645 lm!2227))) hashF!1461) (forall!8879 (_2!27136 (h!54027 (toList!2645 lm!2227))) lambda!134634))))

(declare-fun bs!607944 () Bool)

(assert (= bs!607944 d!1273472))

(declare-fun m!4925917 () Bool)

(assert (=> bs!607944 m!4925917))

(assert (=> bs!607927 d!1273472))

(declare-fun d!1273474 () Bool)

(assert (=> d!1273474 (= ($colon$colon!666 e!2695294 (ite c!736804 (h!54027 (toList!2645 lm!2227)) (tuple2!47685 (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230))))) (Cons!48546 (ite c!736804 (h!54027 (toList!2645 lm!2227)) (tuple2!47685 (_1!27136 (tuple2!47685 hash!427 newBucket!230)) (_2!27136 (tuple2!47685 hash!427 newBucket!230)))) e!2695294))))

(assert (=> bm!301061 d!1273474))

(declare-fun d!1273476 () Bool)

(declare-fun res!1775649 () Bool)

(declare-fun e!2695469 () Bool)

(assert (=> d!1273476 (=> res!1775649 e!2695469)))

(assert (=> d!1273476 (= res!1775649 (is-Nil!48546 (t!355584 (toList!2645 lm!2227))))))

(assert (=> d!1273476 (= (forall!8877 (t!355584 (toList!2645 lm!2227)) lambda!134622) e!2695469)))

(declare-fun b!4331586 () Bool)

(declare-fun e!2695470 () Bool)

(assert (=> b!4331586 (= e!2695469 e!2695470)))

(declare-fun res!1775650 () Bool)

(assert (=> b!4331586 (=> (not res!1775650) (not e!2695470))))

(assert (=> b!4331586 (= res!1775650 (dynLambda!20546 lambda!134622 (h!54027 (t!355584 (toList!2645 lm!2227)))))))

(declare-fun b!4331587 () Bool)

(assert (=> b!4331587 (= e!2695470 (forall!8877 (t!355584 (t!355584 (toList!2645 lm!2227))) lambda!134622))))

(assert (= (and d!1273476 (not res!1775649)) b!4331586))

(assert (= (and b!4331586 res!1775650) b!4331587))

(declare-fun b_lambda!127953 () Bool)

(assert (=> (not b_lambda!127953) (not b!4331586)))

(declare-fun m!4925919 () Bool)

(assert (=> b!4331586 m!4925919))

(declare-fun m!4925921 () Bool)

(assert (=> b!4331587 m!4925921))

(assert (=> b!4331385 d!1273476))

(declare-fun d!1273478 () Bool)

(declare-fun res!1775651 () Bool)

(declare-fun e!2695471 () Bool)

(assert (=> d!1273478 (=> res!1775651 e!2695471)))

(assert (=> d!1273478 (= res!1775651 (or (is-Nil!48546 lt!1545665) (is-Nil!48546 (t!355584 lt!1545665))))))

(assert (=> d!1273478 (= (isStrictlySorted!36 lt!1545665) e!2695471)))

(declare-fun b!4331588 () Bool)

(declare-fun e!2695472 () Bool)

(assert (=> b!4331588 (= e!2695471 e!2695472)))

(declare-fun res!1775652 () Bool)

(assert (=> b!4331588 (=> (not res!1775652) (not e!2695472))))

(assert (=> b!4331588 (= res!1775652 (bvslt (_1!27136 (h!54027 lt!1545665)) (_1!27136 (h!54027 (t!355584 lt!1545665)))))))

(declare-fun b!4331589 () Bool)

(assert (=> b!4331589 (= e!2695472 (isStrictlySorted!36 (t!355584 lt!1545665)))))

(assert (= (and d!1273478 (not res!1775651)) b!4331588))

(assert (= (and b!4331588 res!1775652) b!4331589))

(declare-fun m!4925923 () Bool)

(assert (=> b!4331589 m!4925923))

(assert (=> d!1273338 d!1273478))

(assert (=> d!1273338 d!1273344))

(declare-fun d!1273480 () Bool)

(declare-fun res!1775653 () Bool)

(declare-fun e!2695473 () Bool)

(assert (=> d!1273480 (=> res!1775653 e!2695473)))

(assert (=> d!1273480 (= res!1775653 (is-Nil!48546 (t!355584 (t!355584 (toList!2645 lm!2227)))))))

(assert (=> d!1273480 (= (forall!8877 (t!355584 (t!355584 (toList!2645 lm!2227))) lambda!134613) e!2695473)))

(declare-fun b!4331590 () Bool)

(declare-fun e!2695474 () Bool)

(assert (=> b!4331590 (= e!2695473 e!2695474)))

(declare-fun res!1775654 () Bool)

(assert (=> b!4331590 (=> (not res!1775654) (not e!2695474))))

(assert (=> b!4331590 (= res!1775654 (dynLambda!20546 lambda!134613 (h!54027 (t!355584 (t!355584 (toList!2645 lm!2227))))))))

(declare-fun b!4331591 () Bool)

(assert (=> b!4331591 (= e!2695474 (forall!8877 (t!355584 (t!355584 (t!355584 (toList!2645 lm!2227)))) lambda!134613))))

(assert (= (and d!1273480 (not res!1775653)) b!4331590))

(assert (= (and b!4331590 res!1775654) b!4331591))

(declare-fun b_lambda!127955 () Bool)

(assert (=> (not b_lambda!127955) (not b!4331590)))

(declare-fun m!4925925 () Bool)

(assert (=> b!4331590 m!4925925))

(declare-fun m!4925927 () Bool)

(assert (=> b!4331591 m!4925927))

(assert (=> b!4331371 d!1273480))

(declare-fun b!4331592 () Bool)

(declare-fun e!2695475 () Bool)

(declare-fun tp!1328485 () Bool)

(assert (=> b!4331592 (= e!2695475 (and tp_is_empty!24549 tp_is_empty!24551 tp!1328485))))

(assert (=> b!4331411 (= tp!1328478 e!2695475)))

(assert (= (and b!4331411 (is-Cons!48545 (t!355583 (_2!27136 (h!54027 (toList!2645 lm!2227)))))) b!4331592))

(declare-fun tp!1328486 () Bool)

(declare-fun e!2695476 () Bool)

(declare-fun b!4331593 () Bool)

(assert (=> b!4331593 (= e!2695476 (and tp_is_empty!24549 tp_is_empty!24551 tp!1328486))))

(assert (=> b!4331410 (= tp!1328477 e!2695476)))

(assert (= (and b!4331410 (is-Cons!48545 (t!355583 (t!355583 (t!355583 newBucket!230))))) b!4331593))

(declare-fun tp!1328487 () Bool)

(declare-fun b!4331594 () Bool)

(declare-fun e!2695477 () Bool)

(assert (=> b!4331594 (= e!2695477 (and tp_is_empty!24549 tp_is_empty!24551 tp!1328487))))

(assert (=> b!4331412 (= tp!1328479 e!2695477)))

(assert (= (and b!4331412 (is-Cons!48545 (_2!27136 (h!54027 (t!355584 (toList!2645 lm!2227)))))) b!4331594))

(declare-fun b!4331595 () Bool)

(declare-fun e!2695478 () Bool)

(declare-fun tp!1328488 () Bool)

(declare-fun tp!1328489 () Bool)

(assert (=> b!4331595 (= e!2695478 (and tp!1328488 tp!1328489))))

(assert (=> b!4331412 (= tp!1328480 e!2695478)))

(assert (= (and b!4331412 (is-Cons!48546 (t!355584 (t!355584 (toList!2645 lm!2227))))) b!4331595))

(declare-fun b_lambda!127957 () Bool)

(assert (= b_lambda!127947 (or start!417400 b_lambda!127957)))

(declare-fun bs!607945 () Bool)

(declare-fun d!1273482 () Bool)

(assert (= bs!607945 (and d!1273482 start!417400)))

(assert (=> bs!607945 (= (dynLambda!20546 lambda!134613 (h!54027 (t!355584 (t!355584 (toList!2645 lt!1545620))))) (noDuplicateKeys!340 (_2!27136 (h!54027 (t!355584 (t!355584 (toList!2645 lt!1545620)))))))))

(declare-fun m!4925929 () Bool)

(assert (=> bs!607945 m!4925929))

(assert (=> b!4331531 d!1273482))

(declare-fun b_lambda!127959 () Bool)

(assert (= b_lambda!127953 (or d!1273292 b_lambda!127959)))

(declare-fun bs!607946 () Bool)

(declare-fun d!1273484 () Bool)

(assert (= bs!607946 (and d!1273484 d!1273292)))

(assert (=> bs!607946 (= (dynLambda!20546 lambda!134622 (h!54027 (t!355584 (toList!2645 lm!2227)))) (allKeysSameHash!288 (_2!27136 (h!54027 (t!355584 (toList!2645 lm!2227)))) (_1!27136 (h!54027 (t!355584 (toList!2645 lm!2227)))) hashF!1461))))

(declare-fun m!4925931 () Bool)

(assert (=> bs!607946 m!4925931))

(assert (=> b!4331586 d!1273484))

(declare-fun b_lambda!127961 () Bool)

(assert (= b_lambda!127951 (or d!1273290 b_lambda!127961)))

(declare-fun bs!607947 () Bool)

(declare-fun d!1273486 () Bool)

(assert (= bs!607947 (and d!1273486 d!1273290)))

(assert (=> bs!607947 (= (dynLambda!20546 lambda!134621 (h!54027 (t!355584 (toList!2645 lt!1545620)))) (allKeysSameHash!288 (_2!27136 (h!54027 (t!355584 (toList!2645 lt!1545620)))) (_1!27136 (h!54027 (t!355584 (toList!2645 lt!1545620)))) hashF!1461))))

(declare-fun m!4925933 () Bool)

(assert (=> bs!607947 m!4925933))

(assert (=> b!4331560 d!1273486))

(declare-fun b_lambda!127963 () Bool)

(assert (= b_lambda!127955 (or start!417400 b_lambda!127963)))

(declare-fun bs!607948 () Bool)

(declare-fun d!1273488 () Bool)

(assert (= bs!607948 (and d!1273488 start!417400)))

(assert (=> bs!607948 (= (dynLambda!20546 lambda!134613 (h!54027 (t!355584 (t!355584 (toList!2645 lm!2227))))) (noDuplicateKeys!340 (_2!27136 (h!54027 (t!355584 (t!355584 (toList!2645 lm!2227)))))))))

(declare-fun m!4925935 () Bool)

(assert (=> bs!607948 m!4925935))

(assert (=> b!4331590 d!1273488))

(declare-fun b_lambda!127965 () Bool)

(assert (= b_lambda!127949 (or d!1273298 b_lambda!127965)))

(declare-fun bs!607949 () Bool)

(declare-fun d!1273490 () Bool)

(assert (= bs!607949 (and d!1273490 d!1273298)))

(assert (=> bs!607949 (= (dynLambda!20548 lambda!134625 (h!54026 (t!355583 newBucket!230))) (= (hash!1262 hashF!1461 (_1!27135 (h!54026 (t!355583 newBucket!230)))) hash!427))))

(declare-fun m!4925937 () Bool)

(assert (=> bs!607949 m!4925937))

(assert (=> b!4331545 d!1273490))

(push 1)

(assert (not d!1273436))

(assert (not b!4331553))

(assert (not b!4331557))

(assert (not b!4331585))

(assert (not b!4331575))

(assert (not b!4331571))

(assert (not b!4331583))

(assert (not d!1273450))

(assert (not d!1273414))

(assert (not b!4331548))

(assert (not b_lambda!127925))

(assert (not b!4331516))

(assert (not b!4331573))

(assert (not b!4331576))

(assert (not b!4331532))

(assert (not b!4331592))

(assert (not bs!607949))

(assert (not b!4331524))

(assert (not b!4331561))

(assert (not b_lambda!127923))

(assert (not b!4331569))

(assert (not b!4331551))

(assert (not b!4331547))

(assert (not b!4331544))

(assert (not bs!607948))

(assert tp_is_empty!24549)

(assert (not b!4331522))

(assert (not bs!607946))

(assert (not b!4331530))

(assert (not b!4331587))

(assert (not b_lambda!127895))

(assert (not b!4331538))

(assert (not b!4331591))

(assert (not b!4331563))

(assert (not b!4331593))

(assert (not b!4331595))

(assert (not b!4331594))

(assert (not b!4331577))

(assert (not b_lambda!127921))

(assert (not d!1273444))

(assert (not b_lambda!127917))

(assert (not d!1273472))

(assert (not d!1273468))

(assert (not b!4331537))

(assert (not bs!607945))

(assert (not b!4331559))

(assert tp_is_empty!24551)

(assert (not b!4331528))

(assert (not b_lambda!127963))

(assert (not b_lambda!127959))

(assert (not b_lambda!127965))

(assert (not d!1273430))

(assert (not b_lambda!127919))

(assert (not b_lambda!127957))

(assert (not bs!607947))

(assert (not b!4331536))

(assert (not d!1273456))

(assert (not b!4331526))

(assert (not d!1273422))

(assert (not b!4331527))

(assert (not b!4331554))

(assert (not b!4331580))

(assert (not bm!301073))

(assert (not b!4331546))

(assert (not b_lambda!127897))

(assert (not b!4331574))

(assert (not d!1273420))

(assert (not b_lambda!127961))

(assert (not b!4331589))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

