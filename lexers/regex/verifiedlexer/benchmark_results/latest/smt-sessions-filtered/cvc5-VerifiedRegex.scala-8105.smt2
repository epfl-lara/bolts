; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417516 () Bool)

(assert start!417516)

(declare-fun b!4331993 () Bool)

(declare-fun res!1775938 () Bool)

(declare-fun e!2695681 () Bool)

(assert (=> b!4331993 (=> (not res!1775938) (not e!2695681))))

(declare-datatypes ((K!9928 0))(
  ( (K!9929 (val!16213 Int)) )
))
(declare-datatypes ((V!10174 0))(
  ( (V!10175 (val!16214 Int)) )
))
(declare-datatypes ((tuple2!47746 0))(
  ( (tuple2!47747 (_1!27167 K!9928) (_2!27167 V!10174)) )
))
(declare-datatypes ((List!48701 0))(
  ( (Nil!48577) (Cons!48577 (h!54060 tuple2!47746) (t!355617 List!48701)) )
))
(declare-fun newBucket!200 () List!48701)

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4736 0))(
  ( (HashableExt!4735 (__x!30439 Int)) )
))
(declare-fun hashF!1247 () Hashable!4736)

(declare-fun allKeysSameHash!302 (List!48701 (_ BitVec 64) Hashable!4736) Bool)

(assert (=> b!4331993 (= res!1775938 (allKeysSameHash!302 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4331994 () Bool)

(declare-fun res!1775940 () Bool)

(assert (=> b!4331994 (=> (not res!1775940) (not e!2695681))))

(declare-fun key!3918 () K!9928)

(declare-fun hash!1277 (Hashable!4736 K!9928) (_ BitVec 64))

(assert (=> b!4331994 (= res!1775940 (= (hash!1277 hashF!1247 key!3918) hash!377))))

(declare-fun tp_is_empty!24615 () Bool)

(declare-fun tp_is_empty!24613 () Bool)

(declare-fun b!4331995 () Bool)

(declare-fun tp!1328584 () Bool)

(declare-fun e!2695682 () Bool)

(assert (=> b!4331995 (= e!2695682 (and tp_is_empty!24613 tp_is_empty!24615 tp!1328584))))

(declare-fun b!4331997 () Bool)

(declare-fun res!1775939 () Bool)

(assert (=> b!4331997 (=> (not res!1775939) (not e!2695681))))

(declare-datatypes ((tuple2!47748 0))(
  ( (tuple2!47749 (_1!27168 (_ BitVec 64)) (_2!27168 List!48701)) )
))
(declare-datatypes ((List!48702 0))(
  ( (Nil!48578) (Cons!48578 (h!54061 tuple2!47748) (t!355618 List!48702)) )
))
(declare-datatypes ((ListLongMap!1321 0))(
  ( (ListLongMap!1322 (toList!2671 List!48702)) )
))
(declare-fun lm!1707 () ListLongMap!1321)

(declare-fun contains!10589 (ListLongMap!1321 (_ BitVec 64)) Bool)

(assert (=> b!4331997 (= res!1775939 (contains!10589 lm!1707 hash!377))))

(declare-fun b!4331998 () Bool)

(declare-fun res!1775941 () Bool)

(assert (=> b!4331998 (=> (not res!1775941) (not e!2695681))))

(declare-datatypes ((ListMap!1915 0))(
  ( (ListMap!1916 (toList!2672 List!48701)) )
))
(declare-fun contains!10590 (ListMap!1915 K!9928) Bool)

(declare-fun extractMap!403 (List!48702) ListMap!1915)

(assert (=> b!4331998 (= res!1775941 (contains!10590 (extractMap!403 (toList!2671 lm!1707)) key!3918))))

(declare-fun b!4331999 () Bool)

(declare-fun res!1775943 () Bool)

(assert (=> b!4331999 (=> (not res!1775943) (not e!2695681))))

(declare-fun allKeysSameHashInMap!448 (ListLongMap!1321 Hashable!4736) Bool)

(assert (=> b!4331999 (= res!1775943 (allKeysSameHashInMap!448 lm!1707 hashF!1247))))

(declare-fun b!4332000 () Bool)

(declare-fun lt!1545772 () List!48701)

(declare-fun noDuplicateKeys!344 (List!48701) Bool)

(assert (=> b!4332000 (= e!2695681 (not (noDuplicateKeys!344 lt!1545772)))))

(declare-fun lt!1545775 () tuple2!47748)

(declare-fun lambda!134695 () Int)

(declare-datatypes ((Unit!68169 0))(
  ( (Unit!68170) )
))
(declare-fun lt!1545773 () Unit!68169)

(declare-fun forallContained!1549 (List!48702 Int tuple2!47748) Unit!68169)

(assert (=> b!4332000 (= lt!1545773 (forallContained!1549 (toList!2671 lm!1707) lambda!134695 lt!1545775))))

(declare-fun contains!10591 (List!48702 tuple2!47748) Bool)

(assert (=> b!4332000 (contains!10591 (toList!2671 lm!1707) lt!1545775)))

(assert (=> b!4332000 (= lt!1545775 (tuple2!47749 hash!377 lt!1545772))))

(declare-fun lt!1545774 () Unit!68169)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!191 (List!48702 (_ BitVec 64) List!48701) Unit!68169)

(assert (=> b!4332000 (= lt!1545774 (lemmaGetValueByKeyImpliesContainsTuple!191 (toList!2671 lm!1707) hash!377 lt!1545772))))

(declare-fun apply!11196 (ListLongMap!1321 (_ BitVec 64)) List!48701)

(assert (=> b!4332000 (= lt!1545772 (apply!11196 lm!1707 hash!377))))

(declare-fun b!4331996 () Bool)

(declare-fun e!2695680 () Bool)

(declare-fun tp!1328583 () Bool)

(assert (=> b!4331996 (= e!2695680 tp!1328583)))

(declare-fun res!1775942 () Bool)

(assert (=> start!417516 (=> (not res!1775942) (not e!2695681))))

(declare-fun forall!8895 (List!48702 Int) Bool)

(assert (=> start!417516 (= res!1775942 (forall!8895 (toList!2671 lm!1707) lambda!134695))))

(assert (=> start!417516 e!2695681))

(assert (=> start!417516 e!2695682))

(assert (=> start!417516 true))

(declare-fun inv!64115 (ListLongMap!1321) Bool)

(assert (=> start!417516 (and (inv!64115 lm!1707) e!2695680)))

(assert (=> start!417516 tp_is_empty!24613))

(assert (= (and start!417516 res!1775942) b!4331999))

(assert (= (and b!4331999 res!1775943) b!4331994))

(assert (= (and b!4331994 res!1775940) b!4331993))

(assert (= (and b!4331993 res!1775938) b!4331998))

(assert (= (and b!4331998 res!1775941) b!4331997))

(assert (= (and b!4331997 res!1775939) b!4332000))

(assert (= (and start!417516 (is-Cons!48577 newBucket!200)) b!4331995))

(assert (= start!417516 b!4331996))

(declare-fun m!4926295 () Bool)

(assert (=> b!4331998 m!4926295))

(assert (=> b!4331998 m!4926295))

(declare-fun m!4926297 () Bool)

(assert (=> b!4331998 m!4926297))

(declare-fun m!4926299 () Bool)

(assert (=> b!4331999 m!4926299))

(declare-fun m!4926301 () Bool)

(assert (=> b!4331997 m!4926301))

(declare-fun m!4926303 () Bool)

(assert (=> b!4332000 m!4926303))

(declare-fun m!4926305 () Bool)

(assert (=> b!4332000 m!4926305))

(declare-fun m!4926307 () Bool)

(assert (=> b!4332000 m!4926307))

(declare-fun m!4926309 () Bool)

(assert (=> b!4332000 m!4926309))

(declare-fun m!4926311 () Bool)

(assert (=> b!4332000 m!4926311))

(declare-fun m!4926313 () Bool)

(assert (=> b!4331993 m!4926313))

(declare-fun m!4926315 () Bool)

(assert (=> b!4331994 m!4926315))

(declare-fun m!4926317 () Bool)

(assert (=> start!417516 m!4926317))

(declare-fun m!4926319 () Bool)

(assert (=> start!417516 m!4926319))

(push 1)

(assert (not b!4331996))

(assert (not b!4331997))

(assert (not b!4331995))

(assert (not b!4332000))

(assert (not b!4331999))

(assert tp_is_empty!24613)

(assert (not b!4331994))

(assert (not b!4331998))

(assert (not b!4331993))

(assert tp_is_empty!24615)

(assert (not start!417516))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1273578 () Bool)

(declare-fun res!1775966 () Bool)

(declare-fun e!2695696 () Bool)

(assert (=> d!1273578 (=> res!1775966 e!2695696)))

(assert (=> d!1273578 (= res!1775966 (is-Nil!48578 (toList!2671 lm!1707)))))

(assert (=> d!1273578 (= (forall!8895 (toList!2671 lm!1707) lambda!134695) e!2695696)))

(declare-fun b!4332029 () Bool)

(declare-fun e!2695697 () Bool)

(assert (=> b!4332029 (= e!2695696 e!2695697)))

(declare-fun res!1775967 () Bool)

(assert (=> b!4332029 (=> (not res!1775967) (not e!2695697))))

(declare-fun dynLambda!20550 (Int tuple2!47748) Bool)

(assert (=> b!4332029 (= res!1775967 (dynLambda!20550 lambda!134695 (h!54061 (toList!2671 lm!1707))))))

(declare-fun b!4332030 () Bool)

(assert (=> b!4332030 (= e!2695697 (forall!8895 (t!355618 (toList!2671 lm!1707)) lambda!134695))))

(assert (= (and d!1273578 (not res!1775966)) b!4332029))

(assert (= (and b!4332029 res!1775967) b!4332030))

(declare-fun b_lambda!127987 () Bool)

(assert (=> (not b_lambda!127987) (not b!4332029)))

(declare-fun m!4926347 () Bool)

(assert (=> b!4332029 m!4926347))

(declare-fun m!4926349 () Bool)

(assert (=> b!4332030 m!4926349))

(assert (=> start!417516 d!1273578))

(declare-fun d!1273580 () Bool)

(declare-fun isStrictlySorted!38 (List!48702) Bool)

(assert (=> d!1273580 (= (inv!64115 lm!1707) (isStrictlySorted!38 (toList!2671 lm!1707)))))

(declare-fun bs!607979 () Bool)

(assert (= bs!607979 d!1273580))

(declare-fun m!4926351 () Bool)

(assert (=> bs!607979 m!4926351))

(assert (=> start!417516 d!1273580))

(declare-fun d!1273584 () Bool)

(declare-datatypes ((Option!10336 0))(
  ( (None!10335) (Some!10335 (v!43039 List!48701)) )
))
(declare-fun get!15757 (Option!10336) List!48701)

(declare-fun getValueByKey!322 (List!48702 (_ BitVec 64)) Option!10336)

(assert (=> d!1273584 (= (apply!11196 lm!1707 hash!377) (get!15757 (getValueByKey!322 (toList!2671 lm!1707) hash!377)))))

(declare-fun bs!607980 () Bool)

(assert (= bs!607980 d!1273584))

(declare-fun m!4926353 () Bool)

(assert (=> bs!607980 m!4926353))

(assert (=> bs!607980 m!4926353))

(declare-fun m!4926355 () Bool)

(assert (=> bs!607980 m!4926355))

(assert (=> b!4332000 d!1273584))

(declare-fun d!1273586 () Bool)

(declare-fun res!1775972 () Bool)

(declare-fun e!2695702 () Bool)

(assert (=> d!1273586 (=> res!1775972 e!2695702)))

(assert (=> d!1273586 (= res!1775972 (not (is-Cons!48577 lt!1545772)))))

(assert (=> d!1273586 (= (noDuplicateKeys!344 lt!1545772) e!2695702)))

(declare-fun b!4332037 () Bool)

(declare-fun e!2695703 () Bool)

(assert (=> b!4332037 (= e!2695702 e!2695703)))

(declare-fun res!1775973 () Bool)

(assert (=> b!4332037 (=> (not res!1775973) (not e!2695703))))

(declare-fun containsKey!485 (List!48701 K!9928) Bool)

(assert (=> b!4332037 (= res!1775973 (not (containsKey!485 (t!355617 lt!1545772) (_1!27167 (h!54060 lt!1545772)))))))

(declare-fun b!4332038 () Bool)

(assert (=> b!4332038 (= e!2695703 (noDuplicateKeys!344 (t!355617 lt!1545772)))))

(assert (= (and d!1273586 (not res!1775972)) b!4332037))

(assert (= (and b!4332037 res!1775973) b!4332038))

(declare-fun m!4926357 () Bool)

(assert (=> b!4332037 m!4926357))

(declare-fun m!4926359 () Bool)

(assert (=> b!4332038 m!4926359))

(assert (=> b!4332000 d!1273586))

(declare-fun d!1273588 () Bool)

(assert (=> d!1273588 (contains!10591 (toList!2671 lm!1707) (tuple2!47749 hash!377 lt!1545772))))

(declare-fun lt!1545790 () Unit!68169)

(declare-fun choose!26490 (List!48702 (_ BitVec 64) List!48701) Unit!68169)

(assert (=> d!1273588 (= lt!1545790 (choose!26490 (toList!2671 lm!1707) hash!377 lt!1545772))))

(declare-fun e!2695706 () Bool)

(assert (=> d!1273588 e!2695706))

(declare-fun res!1775976 () Bool)

(assert (=> d!1273588 (=> (not res!1775976) (not e!2695706))))

(assert (=> d!1273588 (= res!1775976 (isStrictlySorted!38 (toList!2671 lm!1707)))))

(assert (=> d!1273588 (= (lemmaGetValueByKeyImpliesContainsTuple!191 (toList!2671 lm!1707) hash!377 lt!1545772) lt!1545790)))

(declare-fun b!4332043 () Bool)

(assert (=> b!4332043 (= e!2695706 (= (getValueByKey!322 (toList!2671 lm!1707) hash!377) (Some!10335 lt!1545772)))))

(assert (= (and d!1273588 res!1775976) b!4332043))

(declare-fun m!4926365 () Bool)

(assert (=> d!1273588 m!4926365))

(declare-fun m!4926367 () Bool)

(assert (=> d!1273588 m!4926367))

(assert (=> d!1273588 m!4926351))

(assert (=> b!4332043 m!4926353))

(assert (=> b!4332000 d!1273588))

(declare-fun d!1273594 () Bool)

(declare-fun lt!1545793 () Bool)

(declare-fun content!7587 (List!48702) (Set tuple2!47748))

(assert (=> d!1273594 (= lt!1545793 (set.member lt!1545775 (content!7587 (toList!2671 lm!1707))))))

(declare-fun e!2695711 () Bool)

(assert (=> d!1273594 (= lt!1545793 e!2695711)))

(declare-fun res!1775981 () Bool)

(assert (=> d!1273594 (=> (not res!1775981) (not e!2695711))))

(assert (=> d!1273594 (= res!1775981 (is-Cons!48578 (toList!2671 lm!1707)))))

(assert (=> d!1273594 (= (contains!10591 (toList!2671 lm!1707) lt!1545775) lt!1545793)))

(declare-fun b!4332048 () Bool)

(declare-fun e!2695712 () Bool)

(assert (=> b!4332048 (= e!2695711 e!2695712)))

(declare-fun res!1775982 () Bool)

(assert (=> b!4332048 (=> res!1775982 e!2695712)))

(assert (=> b!4332048 (= res!1775982 (= (h!54061 (toList!2671 lm!1707)) lt!1545775))))

(declare-fun b!4332049 () Bool)

(assert (=> b!4332049 (= e!2695712 (contains!10591 (t!355618 (toList!2671 lm!1707)) lt!1545775))))

(assert (= (and d!1273594 res!1775981) b!4332048))

(assert (= (and b!4332048 (not res!1775982)) b!4332049))

(declare-fun m!4926369 () Bool)

(assert (=> d!1273594 m!4926369))

(declare-fun m!4926371 () Bool)

(assert (=> d!1273594 m!4926371))

(declare-fun m!4926373 () Bool)

(assert (=> b!4332049 m!4926373))

(assert (=> b!4332000 d!1273594))

(declare-fun d!1273596 () Bool)

(assert (=> d!1273596 (dynLambda!20550 lambda!134695 lt!1545775)))

(declare-fun lt!1545796 () Unit!68169)

(declare-fun choose!26491 (List!48702 Int tuple2!47748) Unit!68169)

(assert (=> d!1273596 (= lt!1545796 (choose!26491 (toList!2671 lm!1707) lambda!134695 lt!1545775))))

(declare-fun e!2695715 () Bool)

(assert (=> d!1273596 e!2695715))

(declare-fun res!1775985 () Bool)

(assert (=> d!1273596 (=> (not res!1775985) (not e!2695715))))

(assert (=> d!1273596 (= res!1775985 (forall!8895 (toList!2671 lm!1707) lambda!134695))))

(assert (=> d!1273596 (= (forallContained!1549 (toList!2671 lm!1707) lambda!134695 lt!1545775) lt!1545796)))

(declare-fun b!4332052 () Bool)

(assert (=> b!4332052 (= e!2695715 (contains!10591 (toList!2671 lm!1707) lt!1545775))))

(assert (= (and d!1273596 res!1775985) b!4332052))

(declare-fun b_lambda!127989 () Bool)

(assert (=> (not b_lambda!127989) (not d!1273596)))

(declare-fun m!4926375 () Bool)

(assert (=> d!1273596 m!4926375))

(declare-fun m!4926377 () Bool)

(assert (=> d!1273596 m!4926377))

(assert (=> d!1273596 m!4926317))

(assert (=> b!4332052 m!4926307))

(assert (=> b!4332000 d!1273596))

(declare-fun d!1273598 () Bool)

(declare-fun hash!1279 (Hashable!4736 K!9928) (_ BitVec 64))

(assert (=> d!1273598 (= (hash!1277 hashF!1247 key!3918) (hash!1279 hashF!1247 key!3918))))

(declare-fun bs!607983 () Bool)

(assert (= bs!607983 d!1273598))

(declare-fun m!4926379 () Bool)

(assert (=> bs!607983 m!4926379))

(assert (=> b!4331994 d!1273598))

(declare-fun bs!607984 () Bool)

(declare-fun d!1273600 () Bool)

(assert (= bs!607984 (and d!1273600 start!417516)))

(declare-fun lambda!134706 () Int)

(assert (=> bs!607984 (not (= lambda!134706 lambda!134695))))

(assert (=> d!1273600 true))

(assert (=> d!1273600 (= (allKeysSameHashInMap!448 lm!1707 hashF!1247) (forall!8895 (toList!2671 lm!1707) lambda!134706))))

(declare-fun bs!607985 () Bool)

(assert (= bs!607985 d!1273600))

(declare-fun m!4926381 () Bool)

(assert (=> bs!607985 m!4926381))

(assert (=> b!4331999 d!1273600))

(declare-fun d!1273602 () Bool)

(assert (=> d!1273602 true))

(assert (=> d!1273602 true))

(declare-fun lambda!134709 () Int)

(declare-fun forall!8897 (List!48701 Int) Bool)

(assert (=> d!1273602 (= (allKeysSameHash!302 newBucket!200 hash!377 hashF!1247) (forall!8897 newBucket!200 lambda!134709))))

(declare-fun bs!607986 () Bool)

(assert (= bs!607986 d!1273602))

(declare-fun m!4926383 () Bool)

(assert (=> bs!607986 m!4926383))

(assert (=> b!4331993 d!1273602))

(declare-fun b!4332094 () Bool)

(declare-fun e!2695743 () Unit!68169)

(declare-fun lt!1545829 () Unit!68169)

(assert (=> b!4332094 (= e!2695743 lt!1545829)))

(declare-fun lt!1545830 () Unit!68169)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!238 (List!48701 K!9928) Unit!68169)

(assert (=> b!4332094 (= lt!1545830 (lemmaContainsKeyImpliesGetValueByKeyDefined!238 (toList!2672 (extractMap!403 (toList!2671 lm!1707))) key!3918))))

(declare-datatypes ((Option!10337 0))(
  ( (None!10336) (Some!10336 (v!43040 V!10174)) )
))
(declare-fun isDefined!7634 (Option!10337) Bool)

(declare-fun getValueByKey!323 (List!48701 K!9928) Option!10337)

(assert (=> b!4332094 (isDefined!7634 (getValueByKey!323 (toList!2672 (extractMap!403 (toList!2671 lm!1707))) key!3918))))

(declare-fun lt!1545827 () Unit!68169)

(assert (=> b!4332094 (= lt!1545827 lt!1545830)))

(declare-fun lemmaInListThenGetKeysListContains!59 (List!48701 K!9928) Unit!68169)

(assert (=> b!4332094 (= lt!1545829 (lemmaInListThenGetKeysListContains!59 (toList!2672 (extractMap!403 (toList!2671 lm!1707))) key!3918))))

(declare-fun call!301084 () Bool)

(assert (=> b!4332094 call!301084))

(declare-fun b!4332095 () Bool)

(assert (=> b!4332095 false))

(declare-fun lt!1545826 () Unit!68169)

(declare-fun lt!1545825 () Unit!68169)

(assert (=> b!4332095 (= lt!1545826 lt!1545825)))

(declare-fun containsKey!486 (List!48701 K!9928) Bool)

(assert (=> b!4332095 (containsKey!486 (toList!2672 (extractMap!403 (toList!2671 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!59 (List!48701 K!9928) Unit!68169)

(assert (=> b!4332095 (= lt!1545825 (lemmaInGetKeysListThenContainsKey!59 (toList!2672 (extractMap!403 (toList!2671 lm!1707))) key!3918))))

(declare-fun e!2695742 () Unit!68169)

(declare-fun Unit!68173 () Unit!68169)

(assert (=> b!4332095 (= e!2695742 Unit!68173)))

(declare-fun b!4332096 () Bool)

(declare-datatypes ((List!48705 0))(
  ( (Nil!48581) (Cons!48581 (h!54066 K!9928) (t!355621 List!48705)) )
))
(declare-fun e!2695745 () List!48705)

(declare-fun getKeysList!62 (List!48701) List!48705)

(assert (=> b!4332096 (= e!2695745 (getKeysList!62 (toList!2672 (extractMap!403 (toList!2671 lm!1707)))))))

(declare-fun d!1273604 () Bool)

(declare-fun e!2695744 () Bool)

(assert (=> d!1273604 e!2695744))

(declare-fun res!1776003 () Bool)

(assert (=> d!1273604 (=> res!1776003 e!2695744)))

(declare-fun e!2695740 () Bool)

(assert (=> d!1273604 (= res!1776003 e!2695740)))

(declare-fun res!1776001 () Bool)

(assert (=> d!1273604 (=> (not res!1776001) (not e!2695740))))

(declare-fun lt!1545828 () Bool)

(assert (=> d!1273604 (= res!1776001 (not lt!1545828))))

(declare-fun lt!1545832 () Bool)

(assert (=> d!1273604 (= lt!1545828 lt!1545832)))

(declare-fun lt!1545831 () Unit!68169)

(assert (=> d!1273604 (= lt!1545831 e!2695743)))

(declare-fun c!736863 () Bool)

(assert (=> d!1273604 (= c!736863 lt!1545832)))

(assert (=> d!1273604 (= lt!1545832 (containsKey!486 (toList!2672 (extractMap!403 (toList!2671 lm!1707))) key!3918))))

(assert (=> d!1273604 (= (contains!10590 (extractMap!403 (toList!2671 lm!1707)) key!3918) lt!1545828)))

(declare-fun b!4332097 () Bool)

(declare-fun e!2695741 () Bool)

(declare-fun contains!10595 (List!48705 K!9928) Bool)

(declare-fun keys!16317 (ListMap!1915) List!48705)

(assert (=> b!4332097 (= e!2695741 (contains!10595 (keys!16317 (extractMap!403 (toList!2671 lm!1707))) key!3918))))

(declare-fun b!4332098 () Bool)

(assert (=> b!4332098 (= e!2695743 e!2695742)))

(declare-fun c!736864 () Bool)

(assert (=> b!4332098 (= c!736864 call!301084)))

(declare-fun b!4332099 () Bool)

(assert (=> b!4332099 (= e!2695745 (keys!16317 (extractMap!403 (toList!2671 lm!1707))))))

(declare-fun b!4332100 () Bool)

(assert (=> b!4332100 (= e!2695744 e!2695741)))

(declare-fun res!1776002 () Bool)

(assert (=> b!4332100 (=> (not res!1776002) (not e!2695741))))

(assert (=> b!4332100 (= res!1776002 (isDefined!7634 (getValueByKey!323 (toList!2672 (extractMap!403 (toList!2671 lm!1707))) key!3918)))))

(declare-fun b!4332101 () Bool)

(assert (=> b!4332101 (= e!2695740 (not (contains!10595 (keys!16317 (extractMap!403 (toList!2671 lm!1707))) key!3918)))))

(declare-fun bm!301079 () Bool)

(assert (=> bm!301079 (= call!301084 (contains!10595 e!2695745 key!3918))))

(declare-fun c!736865 () Bool)

(assert (=> bm!301079 (= c!736865 c!736863)))

(declare-fun b!4332102 () Bool)

(declare-fun Unit!68174 () Unit!68169)

(assert (=> b!4332102 (= e!2695742 Unit!68174)))

(assert (= (and d!1273604 c!736863) b!4332094))

(assert (= (and d!1273604 (not c!736863)) b!4332098))

(assert (= (and b!4332098 c!736864) b!4332095))

(assert (= (and b!4332098 (not c!736864)) b!4332102))

(assert (= (or b!4332094 b!4332098) bm!301079))

(assert (= (and bm!301079 c!736865) b!4332096))

(assert (= (and bm!301079 (not c!736865)) b!4332099))

(assert (= (and d!1273604 res!1776001) b!4332101))

(assert (= (and d!1273604 (not res!1776003)) b!4332100))

(assert (= (and b!4332100 res!1776002) b!4332097))

(assert (=> b!4332097 m!4926295))

(declare-fun m!4926401 () Bool)

(assert (=> b!4332097 m!4926401))

(assert (=> b!4332097 m!4926401))

(declare-fun m!4926403 () Bool)

(assert (=> b!4332097 m!4926403))

(assert (=> b!4332101 m!4926295))

(assert (=> b!4332101 m!4926401))

(assert (=> b!4332101 m!4926401))

(assert (=> b!4332101 m!4926403))

(assert (=> b!4332099 m!4926295))

(assert (=> b!4332099 m!4926401))

(declare-fun m!4926405 () Bool)

(assert (=> b!4332094 m!4926405))

(declare-fun m!4926407 () Bool)

(assert (=> b!4332094 m!4926407))

(assert (=> b!4332094 m!4926407))

(declare-fun m!4926409 () Bool)

(assert (=> b!4332094 m!4926409))

(declare-fun m!4926411 () Bool)

(assert (=> b!4332094 m!4926411))

(declare-fun m!4926413 () Bool)

(assert (=> b!4332095 m!4926413))

(declare-fun m!4926415 () Bool)

(assert (=> b!4332095 m!4926415))

(assert (=> d!1273604 m!4926413))

(declare-fun m!4926417 () Bool)

(assert (=> bm!301079 m!4926417))

(declare-fun m!4926419 () Bool)

(assert (=> b!4332096 m!4926419))

(assert (=> b!4332100 m!4926407))

(assert (=> b!4332100 m!4926407))

(assert (=> b!4332100 m!4926409))

(assert (=> b!4331998 d!1273604))

(declare-fun bs!607991 () Bool)

(declare-fun d!1273614 () Bool)

(assert (= bs!607991 (and d!1273614 start!417516)))

(declare-fun lambda!134715 () Int)

(assert (=> bs!607991 (= lambda!134715 lambda!134695)))

(declare-fun bs!607992 () Bool)

(assert (= bs!607992 (and d!1273614 d!1273600)))

(assert (=> bs!607992 (not (= lambda!134715 lambda!134706))))

(declare-fun lt!1545838 () ListMap!1915)

(declare-fun invariantList!612 (List!48701) Bool)

(assert (=> d!1273614 (invariantList!612 (toList!2672 lt!1545838))))

(declare-fun e!2695751 () ListMap!1915)

(assert (=> d!1273614 (= lt!1545838 e!2695751)))

(declare-fun c!736868 () Bool)

(assert (=> d!1273614 (= c!736868 (is-Cons!48578 (toList!2671 lm!1707)))))

(assert (=> d!1273614 (forall!8895 (toList!2671 lm!1707) lambda!134715)))

(assert (=> d!1273614 (= (extractMap!403 (toList!2671 lm!1707)) lt!1545838)))

(declare-fun b!4332110 () Bool)

(declare-fun addToMapMapFromBucket!60 (List!48701 ListMap!1915) ListMap!1915)

(assert (=> b!4332110 (= e!2695751 (addToMapMapFromBucket!60 (_2!27168 (h!54061 (toList!2671 lm!1707))) (extractMap!403 (t!355618 (toList!2671 lm!1707)))))))

(declare-fun b!4332111 () Bool)

(assert (=> b!4332111 (= e!2695751 (ListMap!1916 Nil!48577))))

(assert (= (and d!1273614 c!736868) b!4332110))

(assert (= (and d!1273614 (not c!736868)) b!4332111))

(declare-fun m!4926427 () Bool)

(assert (=> d!1273614 m!4926427))

(declare-fun m!4926429 () Bool)

(assert (=> d!1273614 m!4926429))

(declare-fun m!4926431 () Bool)

(assert (=> b!4332110 m!4926431))

(assert (=> b!4332110 m!4926431))

(declare-fun m!4926433 () Bool)

(assert (=> b!4332110 m!4926433))

(assert (=> b!4331998 d!1273614))

(declare-fun d!1273620 () Bool)

(declare-fun e!2695765 () Bool)

(assert (=> d!1273620 e!2695765))

(declare-fun res!1776015 () Bool)

(assert (=> d!1273620 (=> res!1776015 e!2695765)))

(declare-fun lt!1545851 () Bool)

(assert (=> d!1273620 (= res!1776015 (not lt!1545851))))

(declare-fun lt!1545852 () Bool)

(assert (=> d!1273620 (= lt!1545851 lt!1545852)))

(declare-fun lt!1545853 () Unit!68169)

(declare-fun e!2695763 () Unit!68169)

(assert (=> d!1273620 (= lt!1545853 e!2695763)))

(declare-fun c!736871 () Bool)

(assert (=> d!1273620 (= c!736871 lt!1545852)))

(declare-fun containsKey!487 (List!48702 (_ BitVec 64)) Bool)

(assert (=> d!1273620 (= lt!1545852 (containsKey!487 (toList!2671 lm!1707) hash!377))))

(assert (=> d!1273620 (= (contains!10589 lm!1707 hash!377) lt!1545851)))

(declare-fun b!4332124 () Bool)

(declare-fun lt!1545850 () Unit!68169)

(assert (=> b!4332124 (= e!2695763 lt!1545850)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!239 (List!48702 (_ BitVec 64)) Unit!68169)

(assert (=> b!4332124 (= lt!1545850 (lemmaContainsKeyImpliesGetValueByKeyDefined!239 (toList!2671 lm!1707) hash!377))))

(declare-fun isDefined!7635 (Option!10336) Bool)

(assert (=> b!4332124 (isDefined!7635 (getValueByKey!322 (toList!2671 lm!1707) hash!377))))

(declare-fun b!4332125 () Bool)

(declare-fun Unit!68175 () Unit!68169)

(assert (=> b!4332125 (= e!2695763 Unit!68175)))

(declare-fun b!4332126 () Bool)

(assert (=> b!4332126 (= e!2695765 (isDefined!7635 (getValueByKey!322 (toList!2671 lm!1707) hash!377)))))

(assert (= (and d!1273620 c!736871) b!4332124))

(assert (= (and d!1273620 (not c!736871)) b!4332125))

(assert (= (and d!1273620 (not res!1776015)) b!4332126))

(declare-fun m!4926441 () Bool)

(assert (=> d!1273620 m!4926441))

(declare-fun m!4926443 () Bool)

(assert (=> b!4332124 m!4926443))

(assert (=> b!4332124 m!4926353))

(assert (=> b!4332124 m!4926353))

(declare-fun m!4926445 () Bool)

(assert (=> b!4332124 m!4926445))

(assert (=> b!4332126 m!4926353))

(assert (=> b!4332126 m!4926353))

(assert (=> b!4332126 m!4926445))

(assert (=> b!4331997 d!1273620))

(declare-fun b!4332135 () Bool)

(declare-fun e!2695770 () Bool)

(declare-fun tp!1328595 () Bool)

(declare-fun tp!1328596 () Bool)

(assert (=> b!4332135 (= e!2695770 (and tp!1328595 tp!1328596))))

(assert (=> b!4331996 (= tp!1328583 e!2695770)))

(assert (= (and b!4331996 (is-Cons!48578 (toList!2671 lm!1707))) b!4332135))

(declare-fun e!2695773 () Bool)

(declare-fun b!4332140 () Bool)

(declare-fun tp!1328599 () Bool)

(assert (=> b!4332140 (= e!2695773 (and tp_is_empty!24613 tp_is_empty!24615 tp!1328599))))

(assert (=> b!4331995 (= tp!1328584 e!2695773)))

(assert (= (and b!4331995 (is-Cons!48577 (t!355617 newBucket!200))) b!4332140))

(declare-fun b_lambda!127995 () Bool)

(assert (= b_lambda!127987 (or start!417516 b_lambda!127995)))

(declare-fun bs!607993 () Bool)

(declare-fun d!1273624 () Bool)

(assert (= bs!607993 (and d!1273624 start!417516)))

(assert (=> bs!607993 (= (dynLambda!20550 lambda!134695 (h!54061 (toList!2671 lm!1707))) (noDuplicateKeys!344 (_2!27168 (h!54061 (toList!2671 lm!1707)))))))

(declare-fun m!4926447 () Bool)

(assert (=> bs!607993 m!4926447))

(assert (=> b!4332029 d!1273624))

(declare-fun b_lambda!127997 () Bool)

(assert (= b_lambda!127989 (or start!417516 b_lambda!127997)))

(declare-fun bs!607994 () Bool)

(declare-fun d!1273626 () Bool)

(assert (= bs!607994 (and d!1273626 start!417516)))

(assert (=> bs!607994 (= (dynLambda!20550 lambda!134695 lt!1545775) (noDuplicateKeys!344 (_2!27168 lt!1545775)))))

(declare-fun m!4926449 () Bool)

(assert (=> bs!607994 m!4926449))

(assert (=> d!1273596 d!1273626))

(push 1)

(assert (not b!4332140))

(assert (not b!4332135))

(assert (not d!1273604))

(assert (not b!4332094))

(assert (not b!4332101))

(assert (not b!4332126))

(assert (not b!4332100))

(assert (not d!1273620))

(assert (not d!1273598))

(assert (not b!4332037))

(assert (not b!4332096))

(assert (not d!1273584))

(assert (not d!1273588))

(assert (not d!1273580))

(assert (not b!4332043))

(assert (not b!4332030))

(assert (not b!4332099))

(assert (not b_lambda!127995))

(assert (not d!1273602))

(assert (not b!4332097))

(assert (not bs!607993))

(assert (not b!4332049))

(assert (not b!4332095))

(assert (not b!4332110))

(assert (not bs!607994))

(assert (not bm!301079))

(assert tp_is_empty!24613)

(assert (not b!4332124))

(assert (not b!4332038))

(assert (not d!1273614))

(assert (not b_lambda!127997))

(assert (not b!4332052))

(assert tp_is_empty!24615)

(assert (not d!1273594))

(assert (not d!1273600))

(assert (not d!1273596))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

