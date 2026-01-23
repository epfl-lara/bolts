; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419160 () Bool)

(assert start!419160)

(declare-fun b!4344053 () Bool)

(declare-fun e!2703264 () Bool)

(declare-datatypes ((V!10361 0))(
  ( (V!10362 (val!16363 Int)) )
))
(declare-datatypes ((K!10115 0))(
  ( (K!10116 (val!16364 Int)) )
))
(declare-datatypes ((tuple2!48046 0))(
  ( (tuple2!48047 (_1!27317 K!10115) (_2!27317 V!10361)) )
))
(declare-datatypes ((List!48881 0))(
  ( (Nil!48757) (Cons!48757 (h!54274 tuple2!48046) (t!355801 List!48881)) )
))
(declare-datatypes ((tuple2!48048 0))(
  ( (tuple2!48049 (_1!27318 (_ BitVec 64)) (_2!27318 List!48881)) )
))
(declare-datatypes ((List!48882 0))(
  ( (Nil!48758) (Cons!48758 (h!54275 tuple2!48048) (t!355802 List!48882)) )
))
(declare-datatypes ((ListLongMap!1471 0))(
  ( (ListLongMap!1472 (toList!2821 List!48882)) )
))
(declare-fun lt!1557424 () ListLongMap!1471)

(declare-fun lambda!137605 () Int)

(declare-fun forall!9005 (List!48882 Int) Bool)

(assert (=> b!4344053 (= e!2703264 (forall!9005 (toList!2821 lt!1557424) lambda!137605))))

(declare-datatypes ((ListMap!2065 0))(
  ( (ListMap!2066 (toList!2822 List!48881)) )
))
(declare-fun lt!1557415 () ListMap!2065)

(declare-fun lt!1557417 () ListMap!2065)

(declare-fun key!3918 () K!10115)

(declare-fun eq!209 (ListMap!2065 ListMap!2065) Bool)

(declare-fun -!220 (ListMap!2065 K!10115) ListMap!2065)

(assert (=> b!4344053 (eq!209 lt!1557415 (-!220 lt!1557417 key!3918))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun lm!1707 () ListLongMap!1471)

(declare-datatypes ((Hashable!4811 0))(
  ( (HashableExt!4810 (__x!30514 Int)) )
))
(declare-fun hashF!1247 () Hashable!4811)

(declare-datatypes ((Unit!70181 0))(
  ( (Unit!70182) )
))
(declare-fun lt!1557422 () Unit!70181)

(declare-fun lt!1557431 () List!48881)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!35 (ListLongMap!1471 (_ BitVec 64) List!48881 K!10115 Hashable!4811) Unit!70181)

(assert (=> b!4344053 (= lt!1557422 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!35 lm!1707 hash!377 lt!1557431 key!3918 hashF!1247))))

(declare-fun lt!1557433 () ListMap!2065)

(assert (=> b!4344053 (= lt!1557433 lt!1557415)))

(declare-fun extractMap!478 (List!48882) ListMap!2065)

(assert (=> b!4344053 (= lt!1557415 (extractMap!478 (toList!2821 lt!1557424)))))

(declare-fun lt!1557419 () List!48881)

(assert (=> b!4344053 (= lt!1557431 lt!1557419)))

(declare-fun +!509 (ListLongMap!1471 tuple2!48048) ListLongMap!1471)

(assert (=> b!4344053 (= lt!1557424 (+!509 lm!1707 (tuple2!48049 hash!377 lt!1557431)))))

(declare-fun newBucket!200 () List!48881)

(declare-fun tail!6917 (List!48881) List!48881)

(assert (=> b!4344053 (= lt!1557431 (tail!6917 newBucket!200))))

(declare-fun e!2703265 () Bool)

(assert (=> b!4344053 e!2703265))

(declare-fun res!1783233 () Bool)

(assert (=> b!4344053 (=> (not res!1783233) (not e!2703265))))

(declare-fun lt!1557427 () ListMap!2065)

(declare-fun lt!1557428 () ListMap!2065)

(assert (=> b!4344053 (= res!1783233 (eq!209 lt!1557427 lt!1557428))))

(declare-fun lt!1557420 () tuple2!48046)

(declare-fun +!510 (ListMap!2065 tuple2!48046) ListMap!2065)

(assert (=> b!4344053 (= lt!1557428 (+!510 lt!1557433 lt!1557420))))

(declare-fun lt!1557423 () ListMap!2065)

(declare-fun addToMapMapFromBucket!127 (List!48881 ListMap!2065) ListMap!2065)

(assert (=> b!4344053 (= lt!1557433 (addToMapMapFromBucket!127 lt!1557419 lt!1557423))))

(declare-fun lt!1557429 () Unit!70181)

(declare-fun newValue!99 () V!10361)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!38 (ListMap!2065 K!10115 V!10361 List!48881) Unit!70181)

(assert (=> b!4344053 (= lt!1557429 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!38 lt!1557423 key!3918 newValue!99 lt!1557419))))

(declare-fun lt!1557425 () ListMap!2065)

(assert (=> b!4344053 (= lt!1557425 lt!1557427)))

(assert (=> b!4344053 (= lt!1557427 (addToMapMapFromBucket!127 lt!1557419 (+!510 lt!1557423 lt!1557420)))))

(declare-fun lt!1557421 () ListMap!2065)

(assert (=> b!4344053 (= lt!1557421 lt!1557425)))

(declare-fun lt!1557432 () List!48881)

(assert (=> b!4344053 (= lt!1557425 (addToMapMapFromBucket!127 lt!1557432 lt!1557423))))

(assert (=> b!4344053 (= lt!1557421 (addToMapMapFromBucket!127 newBucket!200 lt!1557423))))

(declare-fun lt!1557416 () ListLongMap!1471)

(assert (=> b!4344053 (= lt!1557421 (extractMap!478 (toList!2821 lt!1557416)))))

(assert (=> b!4344053 (= lt!1557423 (extractMap!478 (t!355802 (toList!2821 lm!1707))))))

(declare-fun b!4344054 () Bool)

(declare-fun e!2703263 () Bool)

(declare-fun e!2703266 () Bool)

(assert (=> b!4344054 (= e!2703263 e!2703266)))

(declare-fun res!1783235 () Bool)

(assert (=> b!4344054 (=> (not res!1783235) (not e!2703266))))

(declare-fun contains!10866 (ListMap!2065 K!10115) Bool)

(assert (=> b!4344054 (= res!1783235 (contains!10866 lt!1557417 key!3918))))

(assert (=> b!4344054 (= lt!1557417 (extractMap!478 (toList!2821 lm!1707)))))

(declare-fun b!4344055 () Bool)

(declare-fun res!1783231 () Bool)

(assert (=> b!4344055 (=> (not res!1783231) (not e!2703263))))

(declare-fun allKeysSameHashInMap!523 (ListLongMap!1471 Hashable!4811) Bool)

(assert (=> b!4344055 (= res!1783231 (allKeysSameHashInMap!523 lm!1707 hashF!1247))))

(declare-fun b!4344056 () Bool)

(declare-fun res!1783229 () Bool)

(assert (=> b!4344056 (=> (not res!1783229) (not e!2703263))))

(declare-fun allKeysSameHash!377 (List!48881 (_ BitVec 64) Hashable!4811) Bool)

(assert (=> b!4344056 (= res!1783229 (allKeysSameHash!377 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4344057 () Bool)

(declare-fun res!1783239 () Bool)

(declare-fun e!2703268 () Bool)

(assert (=> b!4344057 (=> res!1783239 e!2703268)))

(declare-fun noDuplicateKeys!419 (List!48881) Bool)

(assert (=> b!4344057 (= res!1783239 (not (noDuplicateKeys!419 newBucket!200)))))

(declare-fun tp_is_empty!24915 () Bool)

(declare-fun tp!1329357 () Bool)

(declare-fun b!4344058 () Bool)

(declare-fun tp_is_empty!24913 () Bool)

(declare-fun e!2703262 () Bool)

(assert (=> b!4344058 (= e!2703262 (and tp_is_empty!24913 tp_is_empty!24915 tp!1329357))))

(declare-fun b!4344060 () Bool)

(declare-fun res!1783228 () Bool)

(assert (=> b!4344060 (=> (not res!1783228) (not e!2703266))))

(declare-fun contains!10867 (ListLongMap!1471 (_ BitVec 64)) Bool)

(assert (=> b!4344060 (= res!1783228 (contains!10867 lm!1707 hash!377))))

(declare-fun b!4344061 () Bool)

(declare-fun res!1783237 () Bool)

(declare-fun e!2703261 () Bool)

(assert (=> b!4344061 (=> (not res!1783237) (not e!2703261))))

(assert (=> b!4344061 (= res!1783237 (forall!9005 (toList!2821 lt!1557416) lambda!137605))))

(declare-fun b!4344062 () Bool)

(declare-fun e!2703267 () Bool)

(declare-fun tp!1329358 () Bool)

(assert (=> b!4344062 (= e!2703267 tp!1329358)))

(declare-fun b!4344063 () Bool)

(declare-fun lt!1557434 () tuple2!48048)

(get-info :version)

(assert (=> b!4344063 (= e!2703261 (or (not ((_ is Cons!48758) (toList!2821 lm!1707))) (not (= (_1!27318 (h!54275 (toList!2821 lm!1707))) hash!377)) (= lt!1557416 (ListLongMap!1472 (Cons!48758 lt!1557434 (t!355802 (toList!2821 lm!1707)))))))))

(declare-fun b!4344064 () Bool)

(assert (=> b!4344064 (= e!2703265 (eq!209 lt!1557425 lt!1557428))))

(declare-fun b!4344065 () Bool)

(declare-fun res!1783238 () Bool)

(assert (=> b!4344065 (=> (not res!1783238) (not e!2703263))))

(declare-fun hash!1382 (Hashable!4811 K!10115) (_ BitVec 64))

(assert (=> b!4344065 (= res!1783238 (= (hash!1382 hashF!1247 key!3918) hash!377))))

(declare-fun b!4344066 () Bool)

(assert (=> b!4344066 (= e!2703266 (not e!2703268))))

(declare-fun res!1783236 () Bool)

(assert (=> b!4344066 (=> res!1783236 e!2703268)))

(assert (=> b!4344066 (= res!1783236 (not (= newBucket!200 lt!1557432)))))

(assert (=> b!4344066 (= lt!1557432 (Cons!48757 lt!1557420 lt!1557419))))

(declare-fun lt!1557418 () List!48881)

(declare-fun removePairForKey!389 (List!48881 K!10115) List!48881)

(assert (=> b!4344066 (= lt!1557419 (removePairForKey!389 lt!1557418 key!3918))))

(assert (=> b!4344066 (= lt!1557420 (tuple2!48047 key!3918 newValue!99))))

(declare-fun lt!1557426 () Unit!70181)

(declare-fun lt!1557430 () tuple2!48048)

(declare-fun forallContained!1655 (List!48882 Int tuple2!48048) Unit!70181)

(assert (=> b!4344066 (= lt!1557426 (forallContained!1655 (toList!2821 lm!1707) lambda!137605 lt!1557430))))

(declare-fun contains!10868 (List!48882 tuple2!48048) Bool)

(assert (=> b!4344066 (contains!10868 (toList!2821 lm!1707) lt!1557430)))

(assert (=> b!4344066 (= lt!1557430 (tuple2!48049 hash!377 lt!1557418))))

(declare-fun lt!1557413 () Unit!70181)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!266 (List!48882 (_ BitVec 64) List!48881) Unit!70181)

(assert (=> b!4344066 (= lt!1557413 (lemmaGetValueByKeyImpliesContainsTuple!266 (toList!2821 lm!1707) hash!377 lt!1557418))))

(declare-fun apply!11271 (ListLongMap!1471 (_ BitVec 64)) List!48881)

(assert (=> b!4344066 (= lt!1557418 (apply!11271 lm!1707 hash!377))))

(declare-fun res!1783232 () Bool)

(assert (=> start!419160 (=> (not res!1783232) (not e!2703263))))

(assert (=> start!419160 (= res!1783232 (forall!9005 (toList!2821 lm!1707) lambda!137605))))

(assert (=> start!419160 e!2703263))

(assert (=> start!419160 e!2703262))

(assert (=> start!419160 true))

(declare-fun inv!64301 (ListLongMap!1471) Bool)

(assert (=> start!419160 (and (inv!64301 lm!1707) e!2703267)))

(assert (=> start!419160 tp_is_empty!24913))

(assert (=> start!419160 tp_is_empty!24915))

(declare-fun b!4344059 () Bool)

(assert (=> b!4344059 (= e!2703268 e!2703264)))

(declare-fun res!1783234 () Bool)

(assert (=> b!4344059 (=> res!1783234 e!2703264)))

(assert (=> b!4344059 (= res!1783234 (or (not ((_ is Cons!48758) (toList!2821 lm!1707))) (not (= (_1!27318 (h!54275 (toList!2821 lm!1707))) hash!377))))))

(assert (=> b!4344059 e!2703261))

(declare-fun res!1783230 () Bool)

(assert (=> b!4344059 (=> (not res!1783230) (not e!2703261))))

(assert (=> b!4344059 (= res!1783230 (forall!9005 (toList!2821 lt!1557416) lambda!137605))))

(assert (=> b!4344059 (= lt!1557416 (+!509 lm!1707 lt!1557434))))

(assert (=> b!4344059 (= lt!1557434 (tuple2!48049 hash!377 newBucket!200))))

(declare-fun lt!1557414 () Unit!70181)

(declare-fun addValidProp!73 (ListLongMap!1471 Int (_ BitVec 64) List!48881) Unit!70181)

(assert (=> b!4344059 (= lt!1557414 (addValidProp!73 lm!1707 lambda!137605 hash!377 newBucket!200))))

(assert (=> b!4344059 (forall!9005 (toList!2821 lm!1707) lambda!137605)))

(assert (= (and start!419160 res!1783232) b!4344055))

(assert (= (and b!4344055 res!1783231) b!4344065))

(assert (= (and b!4344065 res!1783238) b!4344056))

(assert (= (and b!4344056 res!1783229) b!4344054))

(assert (= (and b!4344054 res!1783235) b!4344060))

(assert (= (and b!4344060 res!1783228) b!4344066))

(assert (= (and b!4344066 (not res!1783236)) b!4344057))

(assert (= (and b!4344057 (not res!1783239)) b!4344059))

(assert (= (and b!4344059 res!1783230) b!4344061))

(assert (= (and b!4344061 res!1783237) b!4344063))

(assert (= (and b!4344059 (not res!1783234)) b!4344053))

(assert (= (and b!4344053 res!1783233) b!4344064))

(assert (= (and start!419160 ((_ is Cons!48757) newBucket!200)) b!4344058))

(assert (= start!419160 b!4344062))

(declare-fun m!4949789 () Bool)

(assert (=> b!4344064 m!4949789))

(declare-fun m!4949791 () Bool)

(assert (=> b!4344056 m!4949791))

(declare-fun m!4949793 () Bool)

(assert (=> b!4344057 m!4949793))

(declare-fun m!4949795 () Bool)

(assert (=> b!4344061 m!4949795))

(declare-fun m!4949797 () Bool)

(assert (=> b!4344055 m!4949797))

(assert (=> b!4344059 m!4949795))

(declare-fun m!4949799 () Bool)

(assert (=> b!4344059 m!4949799))

(declare-fun m!4949801 () Bool)

(assert (=> b!4344059 m!4949801))

(declare-fun m!4949803 () Bool)

(assert (=> b!4344059 m!4949803))

(assert (=> start!419160 m!4949803))

(declare-fun m!4949805 () Bool)

(assert (=> start!419160 m!4949805))

(declare-fun m!4949807 () Bool)

(assert (=> b!4344066 m!4949807))

(declare-fun m!4949809 () Bool)

(assert (=> b!4344066 m!4949809))

(declare-fun m!4949811 () Bool)

(assert (=> b!4344066 m!4949811))

(declare-fun m!4949813 () Bool)

(assert (=> b!4344066 m!4949813))

(declare-fun m!4949815 () Bool)

(assert (=> b!4344066 m!4949815))

(declare-fun m!4949817 () Bool)

(assert (=> b!4344060 m!4949817))

(declare-fun m!4949819 () Bool)

(assert (=> b!4344053 m!4949819))

(declare-fun m!4949821 () Bool)

(assert (=> b!4344053 m!4949821))

(declare-fun m!4949823 () Bool)

(assert (=> b!4344053 m!4949823))

(declare-fun m!4949825 () Bool)

(assert (=> b!4344053 m!4949825))

(declare-fun m!4949827 () Bool)

(assert (=> b!4344053 m!4949827))

(declare-fun m!4949829 () Bool)

(assert (=> b!4344053 m!4949829))

(declare-fun m!4949831 () Bool)

(assert (=> b!4344053 m!4949831))

(assert (=> b!4344053 m!4949819))

(declare-fun m!4949833 () Bool)

(assert (=> b!4344053 m!4949833))

(declare-fun m!4949835 () Bool)

(assert (=> b!4344053 m!4949835))

(declare-fun m!4949837 () Bool)

(assert (=> b!4344053 m!4949837))

(declare-fun m!4949839 () Bool)

(assert (=> b!4344053 m!4949839))

(declare-fun m!4949841 () Bool)

(assert (=> b!4344053 m!4949841))

(declare-fun m!4949843 () Bool)

(assert (=> b!4344053 m!4949843))

(declare-fun m!4949845 () Bool)

(assert (=> b!4344053 m!4949845))

(declare-fun m!4949847 () Bool)

(assert (=> b!4344053 m!4949847))

(assert (=> b!4344053 m!4949839))

(declare-fun m!4949849 () Bool)

(assert (=> b!4344053 m!4949849))

(declare-fun m!4949851 () Bool)

(assert (=> b!4344053 m!4949851))

(declare-fun m!4949853 () Bool)

(assert (=> b!4344054 m!4949853))

(declare-fun m!4949855 () Bool)

(assert (=> b!4344054 m!4949855))

(declare-fun m!4949857 () Bool)

(assert (=> b!4344065 m!4949857))

(check-sat (not b!4344060) tp_is_empty!24915 (not b!4344064) (not b!4344053) (not b!4344054) (not b!4344061) (not b!4344056) (not b!4344057) (not b!4344058) (not b!4344055) (not b!4344066) (not b!4344059) (not b!4344065) (not b!4344062) tp_is_empty!24913 (not start!419160))
(check-sat)
(get-model)

(declare-fun d!1282681 () Bool)

(declare-fun e!2703292 () Bool)

(assert (=> d!1282681 e!2703292))

(declare-fun res!1783251 () Bool)

(assert (=> d!1282681 (=> (not res!1783251) (not e!2703292))))

(declare-fun lt!1557464 () ListMap!2065)

(assert (=> d!1282681 (= res!1783251 (not (contains!10866 lt!1557464 key!3918)))))

(declare-fun removePresrvNoDuplicatedKeys!26 (List!48881 K!10115) List!48881)

(assert (=> d!1282681 (= lt!1557464 (ListMap!2066 (removePresrvNoDuplicatedKeys!26 (toList!2822 lt!1557417) key!3918)))))

(assert (=> d!1282681 (= (-!220 lt!1557417 key!3918) lt!1557464)))

(declare-fun b!4344108 () Bool)

(declare-datatypes ((List!48884 0))(
  ( (Nil!48760) (Cons!48760 (h!54279 K!10115) (t!355804 List!48884)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7638 (List!48884) (InoxSet K!10115))

(declare-fun keys!16424 (ListMap!2065) List!48884)

(assert (=> b!4344108 (= e!2703292 (= ((_ map and) (content!7638 (keys!16424 lt!1557417)) ((_ map not) (store ((as const (Array K!10115 Bool)) false) key!3918 true))) (content!7638 (keys!16424 lt!1557464))))))

(assert (= (and d!1282681 res!1783251) b!4344108))

(declare-fun m!4949895 () Bool)

(assert (=> d!1282681 m!4949895))

(declare-fun m!4949897 () Bool)

(assert (=> d!1282681 m!4949897))

(declare-fun m!4949899 () Bool)

(assert (=> b!4344108 m!4949899))

(declare-fun m!4949901 () Bool)

(assert (=> b!4344108 m!4949901))

(declare-fun m!4949903 () Bool)

(assert (=> b!4344108 m!4949903))

(declare-fun m!4949905 () Bool)

(assert (=> b!4344108 m!4949905))

(declare-fun m!4949907 () Bool)

(assert (=> b!4344108 m!4949907))

(assert (=> b!4344108 m!4949901))

(assert (=> b!4344108 m!4949905))

(assert (=> b!4344053 d!1282681))

(declare-fun b!4344180 () Bool)

(assert (=> b!4344180 true))

(declare-fun bs!626861 () Bool)

(declare-fun b!4344181 () Bool)

(assert (= bs!626861 (and b!4344181 b!4344180)))

(declare-fun lambda!137681 () Int)

(declare-fun lambda!137680 () Int)

(assert (=> bs!626861 (= lambda!137681 lambda!137680)))

(assert (=> b!4344181 true))

(declare-fun lambda!137682 () Int)

(declare-fun lt!1557622 () ListMap!2065)

(assert (=> bs!626861 (= (= lt!1557622 lt!1557423) (= lambda!137682 lambda!137680))))

(assert (=> b!4344181 (= (= lt!1557622 lt!1557423) (= lambda!137682 lambda!137681))))

(assert (=> b!4344181 true))

(declare-fun bs!626862 () Bool)

(declare-fun d!1282691 () Bool)

(assert (= bs!626862 (and d!1282691 b!4344180)))

(declare-fun lambda!137683 () Int)

(declare-fun lt!1557640 () ListMap!2065)

(assert (=> bs!626862 (= (= lt!1557640 lt!1557423) (= lambda!137683 lambda!137680))))

(declare-fun bs!626863 () Bool)

(assert (= bs!626863 (and d!1282691 b!4344181)))

(assert (=> bs!626863 (= (= lt!1557640 lt!1557423) (= lambda!137683 lambda!137681))))

(assert (=> bs!626863 (= (= lt!1557640 lt!1557622) (= lambda!137683 lambda!137682))))

(assert (=> d!1282691 true))

(declare-fun b!4344179 () Bool)

(declare-fun e!2703337 () Bool)

(declare-fun forall!9007 (List!48881 Int) Bool)

(assert (=> b!4344179 (= e!2703337 (forall!9007 (toList!2822 lt!1557423) lambda!137682))))

(declare-fun e!2703339 () ListMap!2065)

(assert (=> b!4344180 (= e!2703339 lt!1557423)))

(declare-fun lt!1557629 () Unit!70181)

(declare-fun call!302009 () Unit!70181)

(assert (=> b!4344180 (= lt!1557629 call!302009)))

(declare-fun call!302008 () Bool)

(assert (=> b!4344180 call!302008))

(declare-fun lt!1557628 () Unit!70181)

(assert (=> b!4344180 (= lt!1557628 lt!1557629)))

(declare-fun call!302010 () Bool)

(assert (=> b!4344180 call!302010))

(declare-fun lt!1557623 () Unit!70181)

(declare-fun Unit!70197 () Unit!70181)

(assert (=> b!4344180 (= lt!1557623 Unit!70197)))

(assert (=> b!4344181 (= e!2703339 lt!1557622)))

(declare-fun lt!1557642 () ListMap!2065)

(assert (=> b!4344181 (= lt!1557642 (+!510 lt!1557423 (h!54274 lt!1557432)))))

(assert (=> b!4344181 (= lt!1557622 (addToMapMapFromBucket!127 (t!355801 lt!1557432) (+!510 lt!1557423 (h!54274 lt!1557432))))))

(declare-fun lt!1557638 () Unit!70181)

(assert (=> b!4344181 (= lt!1557638 call!302009)))

(assert (=> b!4344181 (forall!9007 (toList!2822 lt!1557423) lambda!137681)))

(declare-fun lt!1557639 () Unit!70181)

(assert (=> b!4344181 (= lt!1557639 lt!1557638)))

(assert (=> b!4344181 call!302010))

(declare-fun lt!1557627 () Unit!70181)

(declare-fun Unit!70198 () Unit!70181)

(assert (=> b!4344181 (= lt!1557627 Unit!70198)))

(assert (=> b!4344181 (forall!9007 (t!355801 lt!1557432) lambda!137682)))

(declare-fun lt!1557641 () Unit!70181)

(declare-fun Unit!70199 () Unit!70181)

(assert (=> b!4344181 (= lt!1557641 Unit!70199)))

(declare-fun lt!1557624 () Unit!70181)

(declare-fun Unit!70200 () Unit!70181)

(assert (=> b!4344181 (= lt!1557624 Unit!70200)))

(declare-fun lt!1557626 () Unit!70181)

(declare-fun forallContained!1657 (List!48881 Int tuple2!48046) Unit!70181)

(assert (=> b!4344181 (= lt!1557626 (forallContained!1657 (toList!2822 lt!1557642) lambda!137682 (h!54274 lt!1557432)))))

(assert (=> b!4344181 (contains!10866 lt!1557642 (_1!27317 (h!54274 lt!1557432)))))

(declare-fun lt!1557634 () Unit!70181)

(declare-fun Unit!70201 () Unit!70181)

(assert (=> b!4344181 (= lt!1557634 Unit!70201)))

(assert (=> b!4344181 (contains!10866 lt!1557622 (_1!27317 (h!54274 lt!1557432)))))

(declare-fun lt!1557637 () Unit!70181)

(declare-fun Unit!70202 () Unit!70181)

(assert (=> b!4344181 (= lt!1557637 Unit!70202)))

(assert (=> b!4344181 call!302008))

(declare-fun lt!1557633 () Unit!70181)

(declare-fun Unit!70203 () Unit!70181)

(assert (=> b!4344181 (= lt!1557633 Unit!70203)))

(assert (=> b!4344181 (forall!9007 (toList!2822 lt!1557642) lambda!137682)))

(declare-fun lt!1557631 () Unit!70181)

(declare-fun Unit!70204 () Unit!70181)

(assert (=> b!4344181 (= lt!1557631 Unit!70204)))

(declare-fun lt!1557625 () Unit!70181)

(declare-fun Unit!70205 () Unit!70181)

(assert (=> b!4344181 (= lt!1557625 Unit!70205)))

(declare-fun lt!1557636 () Unit!70181)

(declare-fun addForallContainsKeyThenBeforeAdding!37 (ListMap!2065 ListMap!2065 K!10115 V!10361) Unit!70181)

(assert (=> b!4344181 (= lt!1557636 (addForallContainsKeyThenBeforeAdding!37 lt!1557423 lt!1557622 (_1!27317 (h!54274 lt!1557432)) (_2!27317 (h!54274 lt!1557432))))))

(assert (=> b!4344181 (forall!9007 (toList!2822 lt!1557423) lambda!137682)))

(declare-fun lt!1557630 () Unit!70181)

(assert (=> b!4344181 (= lt!1557630 lt!1557636)))

(assert (=> b!4344181 (forall!9007 (toList!2822 lt!1557423) lambda!137682)))

(declare-fun lt!1557632 () Unit!70181)

(declare-fun Unit!70206 () Unit!70181)

(assert (=> b!4344181 (= lt!1557632 Unit!70206)))

(declare-fun res!1783300 () Bool)

(assert (=> b!4344181 (= res!1783300 (forall!9007 lt!1557432 lambda!137682))))

(assert (=> b!4344181 (=> (not res!1783300) (not e!2703337))))

(assert (=> b!4344181 e!2703337))

(declare-fun lt!1557635 () Unit!70181)

(declare-fun Unit!70207 () Unit!70181)

(assert (=> b!4344181 (= lt!1557635 Unit!70207)))

(declare-fun c!738705 () Bool)

(declare-fun bm!302003 () Bool)

(assert (=> bm!302003 (= call!302010 (forall!9007 (ite c!738705 (toList!2822 lt!1557423) (toList!2822 lt!1557642)) (ite c!738705 lambda!137680 lambda!137682)))))

(declare-fun e!2703338 () Bool)

(assert (=> d!1282691 e!2703338))

(declare-fun res!1783299 () Bool)

(assert (=> d!1282691 (=> (not res!1783299) (not e!2703338))))

(assert (=> d!1282691 (= res!1783299 (forall!9007 lt!1557432 lambda!137683))))

(assert (=> d!1282691 (= lt!1557640 e!2703339)))

(assert (=> d!1282691 (= c!738705 ((_ is Nil!48757) lt!1557432))))

(assert (=> d!1282691 (noDuplicateKeys!419 lt!1557432)))

(assert (=> d!1282691 (= (addToMapMapFromBucket!127 lt!1557432 lt!1557423) lt!1557640)))

(declare-fun bm!302004 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!37 (ListMap!2065) Unit!70181)

(assert (=> bm!302004 (= call!302009 (lemmaContainsAllItsOwnKeys!37 lt!1557423))))

(declare-fun b!4344182 () Bool)

(declare-fun res!1783301 () Bool)

(assert (=> b!4344182 (=> (not res!1783301) (not e!2703338))))

(assert (=> b!4344182 (= res!1783301 (forall!9007 (toList!2822 lt!1557423) lambda!137683))))

(declare-fun bm!302005 () Bool)

(assert (=> bm!302005 (= call!302008 (forall!9007 (ite c!738705 (toList!2822 lt!1557423) lt!1557432) (ite c!738705 lambda!137680 lambda!137682)))))

(declare-fun b!4344183 () Bool)

(declare-fun invariantList!644 (List!48881) Bool)

(assert (=> b!4344183 (= e!2703338 (invariantList!644 (toList!2822 lt!1557640)))))

(assert (= (and d!1282691 c!738705) b!4344180))

(assert (= (and d!1282691 (not c!738705)) b!4344181))

(assert (= (and b!4344181 res!1783300) b!4344179))

(assert (= (or b!4344180 b!4344181) bm!302004))

(assert (= (or b!4344180 b!4344181) bm!302003))

(assert (= (or b!4344180 b!4344181) bm!302005))

(assert (= (and d!1282691 res!1783299) b!4344182))

(assert (= (and b!4344182 res!1783301) b!4344183))

(declare-fun m!4950045 () Bool)

(assert (=> bm!302003 m!4950045))

(declare-fun m!4950047 () Bool)

(assert (=> bm!302004 m!4950047))

(declare-fun m!4950049 () Bool)

(assert (=> bm!302005 m!4950049))

(declare-fun m!4950051 () Bool)

(assert (=> d!1282691 m!4950051))

(declare-fun m!4950053 () Bool)

(assert (=> d!1282691 m!4950053))

(declare-fun m!4950055 () Bool)

(assert (=> b!4344182 m!4950055))

(declare-fun m!4950057 () Bool)

(assert (=> b!4344181 m!4950057))

(declare-fun m!4950059 () Bool)

(assert (=> b!4344181 m!4950059))

(declare-fun m!4950061 () Bool)

(assert (=> b!4344181 m!4950061))

(declare-fun m!4950063 () Bool)

(assert (=> b!4344181 m!4950063))

(declare-fun m!4950065 () Bool)

(assert (=> b!4344181 m!4950065))

(declare-fun m!4950067 () Bool)

(assert (=> b!4344181 m!4950067))

(declare-fun m!4950069 () Bool)

(assert (=> b!4344181 m!4950069))

(declare-fun m!4950071 () Bool)

(assert (=> b!4344181 m!4950071))

(assert (=> b!4344181 m!4950057))

(declare-fun m!4950073 () Bool)

(assert (=> b!4344181 m!4950073))

(declare-fun m!4950075 () Bool)

(assert (=> b!4344181 m!4950075))

(declare-fun m!4950077 () Bool)

(assert (=> b!4344181 m!4950077))

(assert (=> b!4344181 m!4950071))

(declare-fun m!4950079 () Bool)

(assert (=> b!4344183 m!4950079))

(assert (=> b!4344179 m!4950071))

(assert (=> b!4344053 d!1282691))

(declare-fun bs!626887 () Bool)

(declare-fun d!1282723 () Bool)

(assert (= bs!626887 (and d!1282723 start!419160)))

(declare-fun lambda!137691 () Int)

(assert (=> bs!626887 (= lambda!137691 lambda!137605)))

(declare-fun lt!1557670 () ListMap!2065)

(assert (=> d!1282723 (invariantList!644 (toList!2822 lt!1557670))))

(declare-fun e!2703346 () ListMap!2065)

(assert (=> d!1282723 (= lt!1557670 e!2703346)))

(declare-fun c!738710 () Bool)

(assert (=> d!1282723 (= c!738710 ((_ is Cons!48758) (toList!2821 lt!1557424)))))

(assert (=> d!1282723 (forall!9005 (toList!2821 lt!1557424) lambda!137691)))

(assert (=> d!1282723 (= (extractMap!478 (toList!2821 lt!1557424)) lt!1557670)))

(declare-fun b!4344197 () Bool)

(assert (=> b!4344197 (= e!2703346 (addToMapMapFromBucket!127 (_2!27318 (h!54275 (toList!2821 lt!1557424))) (extractMap!478 (t!355802 (toList!2821 lt!1557424)))))))

(declare-fun b!4344198 () Bool)

(assert (=> b!4344198 (= e!2703346 (ListMap!2066 Nil!48757))))

(assert (= (and d!1282723 c!738710) b!4344197))

(assert (= (and d!1282723 (not c!738710)) b!4344198))

(declare-fun m!4950135 () Bool)

(assert (=> d!1282723 m!4950135))

(declare-fun m!4950137 () Bool)

(assert (=> d!1282723 m!4950137))

(declare-fun m!4950139 () Bool)

(assert (=> b!4344197 m!4950139))

(assert (=> b!4344197 m!4950139))

(declare-fun m!4950141 () Bool)

(assert (=> b!4344197 m!4950141))

(assert (=> b!4344053 d!1282723))

(declare-fun d!1282733 () Bool)

(assert (=> d!1282733 (= (tail!6917 newBucket!200) (t!355801 newBucket!200))))

(assert (=> b!4344053 d!1282733))

(declare-fun d!1282735 () Bool)

(assert (=> d!1282735 (eq!209 (addToMapMapFromBucket!127 lt!1557419 (+!510 lt!1557423 (tuple2!48047 key!3918 newValue!99))) (+!510 (addToMapMapFromBucket!127 lt!1557419 lt!1557423) (tuple2!48047 key!3918 newValue!99)))))

(declare-fun lt!1557697 () Unit!70181)

(declare-fun choose!26628 (ListMap!2065 K!10115 V!10361 List!48881) Unit!70181)

(assert (=> d!1282735 (= lt!1557697 (choose!26628 lt!1557423 key!3918 newValue!99 lt!1557419))))

(declare-fun containsKey!582 (List!48881 K!10115) Bool)

(assert (=> d!1282735 (not (containsKey!582 lt!1557419 key!3918))))

(assert (=> d!1282735 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!38 lt!1557423 key!3918 newValue!99 lt!1557419) lt!1557697)))

(declare-fun bs!626912 () Bool)

(assert (= bs!626912 d!1282735))

(assert (=> bs!626912 m!4949845))

(declare-fun m!4950155 () Bool)

(assert (=> bs!626912 m!4950155))

(assert (=> bs!626912 m!4949845))

(declare-fun m!4950157 () Bool)

(assert (=> bs!626912 m!4950157))

(declare-fun m!4950159 () Bool)

(assert (=> bs!626912 m!4950159))

(declare-fun m!4950161 () Bool)

(assert (=> bs!626912 m!4950161))

(declare-fun m!4950163 () Bool)

(assert (=> bs!626912 m!4950163))

(assert (=> bs!626912 m!4950161))

(assert (=> bs!626912 m!4950157))

(declare-fun m!4950165 () Bool)

(assert (=> bs!626912 m!4950165))

(assert (=> bs!626912 m!4950159))

(assert (=> b!4344053 d!1282735))

(declare-fun bs!626913 () Bool)

(declare-fun b!4344208 () Bool)

(assert (= bs!626913 (and b!4344208 b!4344180)))

(declare-fun lambda!137696 () Int)

(assert (=> bs!626913 (= (= (+!510 lt!1557423 lt!1557420) lt!1557423) (= lambda!137696 lambda!137680))))

(declare-fun bs!626914 () Bool)

(assert (= bs!626914 (and b!4344208 b!4344181)))

(assert (=> bs!626914 (= (= (+!510 lt!1557423 lt!1557420) lt!1557423) (= lambda!137696 lambda!137681))))

(assert (=> bs!626914 (= (= (+!510 lt!1557423 lt!1557420) lt!1557622) (= lambda!137696 lambda!137682))))

(declare-fun bs!626915 () Bool)

(assert (= bs!626915 (and b!4344208 d!1282691)))

(assert (=> bs!626915 (= (= (+!510 lt!1557423 lt!1557420) lt!1557640) (= lambda!137696 lambda!137683))))

(assert (=> b!4344208 true))

(declare-fun bs!626916 () Bool)

(declare-fun b!4344209 () Bool)

(assert (= bs!626916 (and b!4344209 b!4344181)))

(declare-fun lambda!137697 () Int)

(assert (=> bs!626916 (= (= (+!510 lt!1557423 lt!1557420) lt!1557423) (= lambda!137697 lambda!137681))))

(declare-fun bs!626917 () Bool)

(assert (= bs!626917 (and b!4344209 d!1282691)))

(assert (=> bs!626917 (= (= (+!510 lt!1557423 lt!1557420) lt!1557640) (= lambda!137697 lambda!137683))))

(assert (=> bs!626916 (= (= (+!510 lt!1557423 lt!1557420) lt!1557622) (= lambda!137697 lambda!137682))))

(declare-fun bs!626918 () Bool)

(assert (= bs!626918 (and b!4344209 b!4344208)))

(assert (=> bs!626918 (= lambda!137697 lambda!137696)))

(declare-fun bs!626919 () Bool)

(assert (= bs!626919 (and b!4344209 b!4344180)))

(assert (=> bs!626919 (= (= (+!510 lt!1557423 lt!1557420) lt!1557423) (= lambda!137697 lambda!137680))))

(assert (=> b!4344209 true))

(declare-fun lambda!137698 () Int)

(declare-fun lt!1557698 () ListMap!2065)

(assert (=> bs!626916 (= (= lt!1557698 lt!1557423) (= lambda!137698 lambda!137681))))

(assert (=> bs!626917 (= (= lt!1557698 lt!1557640) (= lambda!137698 lambda!137683))))

(assert (=> b!4344209 (= (= lt!1557698 (+!510 lt!1557423 lt!1557420)) (= lambda!137698 lambda!137697))))

(assert (=> bs!626916 (= (= lt!1557698 lt!1557622) (= lambda!137698 lambda!137682))))

(assert (=> bs!626918 (= (= lt!1557698 (+!510 lt!1557423 lt!1557420)) (= lambda!137698 lambda!137696))))

(assert (=> bs!626919 (= (= lt!1557698 lt!1557423) (= lambda!137698 lambda!137680))))

(assert (=> b!4344209 true))

(declare-fun bs!626930 () Bool)

(declare-fun d!1282739 () Bool)

(assert (= bs!626930 (and d!1282739 b!4344209)))

(declare-fun lambda!137700 () Int)

(declare-fun lt!1557716 () ListMap!2065)

(assert (=> bs!626930 (= (= lt!1557716 lt!1557698) (= lambda!137700 lambda!137698))))

(declare-fun bs!626932 () Bool)

(assert (= bs!626932 (and d!1282739 b!4344181)))

(assert (=> bs!626932 (= (= lt!1557716 lt!1557423) (= lambda!137700 lambda!137681))))

(declare-fun bs!626934 () Bool)

(assert (= bs!626934 (and d!1282739 d!1282691)))

(assert (=> bs!626934 (= (= lt!1557716 lt!1557640) (= lambda!137700 lambda!137683))))

(assert (=> bs!626930 (= (= lt!1557716 (+!510 lt!1557423 lt!1557420)) (= lambda!137700 lambda!137697))))

(assert (=> bs!626932 (= (= lt!1557716 lt!1557622) (= lambda!137700 lambda!137682))))

(declare-fun bs!626937 () Bool)

(assert (= bs!626937 (and d!1282739 b!4344208)))

(assert (=> bs!626937 (= (= lt!1557716 (+!510 lt!1557423 lt!1557420)) (= lambda!137700 lambda!137696))))

(declare-fun bs!626939 () Bool)

(assert (= bs!626939 (and d!1282739 b!4344180)))

(assert (=> bs!626939 (= (= lt!1557716 lt!1557423) (= lambda!137700 lambda!137680))))

(assert (=> d!1282739 true))

(declare-fun b!4344207 () Bool)

(declare-fun e!2703353 () Bool)

(assert (=> b!4344207 (= e!2703353 (forall!9007 (toList!2822 (+!510 lt!1557423 lt!1557420)) lambda!137698))))

(declare-fun e!2703355 () ListMap!2065)

(assert (=> b!4344208 (= e!2703355 (+!510 lt!1557423 lt!1557420))))

(declare-fun lt!1557705 () Unit!70181)

(declare-fun call!302018 () Unit!70181)

(assert (=> b!4344208 (= lt!1557705 call!302018)))

(declare-fun call!302017 () Bool)

(assert (=> b!4344208 call!302017))

(declare-fun lt!1557704 () Unit!70181)

(assert (=> b!4344208 (= lt!1557704 lt!1557705)))

(declare-fun call!302019 () Bool)

(assert (=> b!4344208 call!302019))

(declare-fun lt!1557699 () Unit!70181)

(declare-fun Unit!70211 () Unit!70181)

(assert (=> b!4344208 (= lt!1557699 Unit!70211)))

(assert (=> b!4344209 (= e!2703355 lt!1557698)))

(declare-fun lt!1557718 () ListMap!2065)

(assert (=> b!4344209 (= lt!1557718 (+!510 (+!510 lt!1557423 lt!1557420) (h!54274 lt!1557419)))))

(assert (=> b!4344209 (= lt!1557698 (addToMapMapFromBucket!127 (t!355801 lt!1557419) (+!510 (+!510 lt!1557423 lt!1557420) (h!54274 lt!1557419))))))

(declare-fun lt!1557714 () Unit!70181)

(assert (=> b!4344209 (= lt!1557714 call!302018)))

(assert (=> b!4344209 (forall!9007 (toList!2822 (+!510 lt!1557423 lt!1557420)) lambda!137697)))

(declare-fun lt!1557715 () Unit!70181)

(assert (=> b!4344209 (= lt!1557715 lt!1557714)))

(assert (=> b!4344209 call!302019))

(declare-fun lt!1557703 () Unit!70181)

(declare-fun Unit!70216 () Unit!70181)

(assert (=> b!4344209 (= lt!1557703 Unit!70216)))

(assert (=> b!4344209 (forall!9007 (t!355801 lt!1557419) lambda!137698)))

(declare-fun lt!1557717 () Unit!70181)

(declare-fun Unit!70218 () Unit!70181)

(assert (=> b!4344209 (= lt!1557717 Unit!70218)))

(declare-fun lt!1557700 () Unit!70181)

(declare-fun Unit!70219 () Unit!70181)

(assert (=> b!4344209 (= lt!1557700 Unit!70219)))

(declare-fun lt!1557702 () Unit!70181)

(assert (=> b!4344209 (= lt!1557702 (forallContained!1657 (toList!2822 lt!1557718) lambda!137698 (h!54274 lt!1557419)))))

(assert (=> b!4344209 (contains!10866 lt!1557718 (_1!27317 (h!54274 lt!1557419)))))

(declare-fun lt!1557710 () Unit!70181)

(declare-fun Unit!70220 () Unit!70181)

(assert (=> b!4344209 (= lt!1557710 Unit!70220)))

(assert (=> b!4344209 (contains!10866 lt!1557698 (_1!27317 (h!54274 lt!1557419)))))

(declare-fun lt!1557713 () Unit!70181)

(declare-fun Unit!70222 () Unit!70181)

(assert (=> b!4344209 (= lt!1557713 Unit!70222)))

(assert (=> b!4344209 call!302017))

(declare-fun lt!1557709 () Unit!70181)

(declare-fun Unit!70223 () Unit!70181)

(assert (=> b!4344209 (= lt!1557709 Unit!70223)))

(assert (=> b!4344209 (forall!9007 (toList!2822 lt!1557718) lambda!137698)))

(declare-fun lt!1557707 () Unit!70181)

(declare-fun Unit!70225 () Unit!70181)

(assert (=> b!4344209 (= lt!1557707 Unit!70225)))

(declare-fun lt!1557701 () Unit!70181)

(declare-fun Unit!70226 () Unit!70181)

(assert (=> b!4344209 (= lt!1557701 Unit!70226)))

(declare-fun lt!1557712 () Unit!70181)

(assert (=> b!4344209 (= lt!1557712 (addForallContainsKeyThenBeforeAdding!37 (+!510 lt!1557423 lt!1557420) lt!1557698 (_1!27317 (h!54274 lt!1557419)) (_2!27317 (h!54274 lt!1557419))))))

(assert (=> b!4344209 (forall!9007 (toList!2822 (+!510 lt!1557423 lt!1557420)) lambda!137698)))

(declare-fun lt!1557706 () Unit!70181)

(assert (=> b!4344209 (= lt!1557706 lt!1557712)))

(assert (=> b!4344209 (forall!9007 (toList!2822 (+!510 lt!1557423 lt!1557420)) lambda!137698)))

(declare-fun lt!1557708 () Unit!70181)

(declare-fun Unit!70227 () Unit!70181)

(assert (=> b!4344209 (= lt!1557708 Unit!70227)))

(declare-fun res!1783312 () Bool)

(assert (=> b!4344209 (= res!1783312 (forall!9007 lt!1557419 lambda!137698))))

(assert (=> b!4344209 (=> (not res!1783312) (not e!2703353))))

(assert (=> b!4344209 e!2703353))

(declare-fun lt!1557711 () Unit!70181)

(declare-fun Unit!70228 () Unit!70181)

(assert (=> b!4344209 (= lt!1557711 Unit!70228)))

(declare-fun c!738712 () Bool)

(declare-fun bm!302012 () Bool)

(assert (=> bm!302012 (= call!302019 (forall!9007 (ite c!738712 (toList!2822 (+!510 lt!1557423 lt!1557420)) (toList!2822 lt!1557718)) (ite c!738712 lambda!137696 lambda!137698)))))

(declare-fun e!2703354 () Bool)

(assert (=> d!1282739 e!2703354))

(declare-fun res!1783311 () Bool)

(assert (=> d!1282739 (=> (not res!1783311) (not e!2703354))))

(assert (=> d!1282739 (= res!1783311 (forall!9007 lt!1557419 lambda!137700))))

(assert (=> d!1282739 (= lt!1557716 e!2703355)))

(assert (=> d!1282739 (= c!738712 ((_ is Nil!48757) lt!1557419))))

(assert (=> d!1282739 (noDuplicateKeys!419 lt!1557419)))

(assert (=> d!1282739 (= (addToMapMapFromBucket!127 lt!1557419 (+!510 lt!1557423 lt!1557420)) lt!1557716)))

(declare-fun bm!302013 () Bool)

(assert (=> bm!302013 (= call!302018 (lemmaContainsAllItsOwnKeys!37 (+!510 lt!1557423 lt!1557420)))))

(declare-fun b!4344210 () Bool)

(declare-fun res!1783313 () Bool)

(assert (=> b!4344210 (=> (not res!1783313) (not e!2703354))))

(assert (=> b!4344210 (= res!1783313 (forall!9007 (toList!2822 (+!510 lt!1557423 lt!1557420)) lambda!137700))))

(declare-fun bm!302014 () Bool)

(assert (=> bm!302014 (= call!302017 (forall!9007 (ite c!738712 (toList!2822 (+!510 lt!1557423 lt!1557420)) lt!1557419) (ite c!738712 lambda!137696 lambda!137698)))))

(declare-fun b!4344211 () Bool)

(assert (=> b!4344211 (= e!2703354 (invariantList!644 (toList!2822 lt!1557716)))))

(assert (= (and d!1282739 c!738712) b!4344208))

(assert (= (and d!1282739 (not c!738712)) b!4344209))

(assert (= (and b!4344209 res!1783312) b!4344207))

(assert (= (or b!4344208 b!4344209) bm!302013))

(assert (= (or b!4344208 b!4344209) bm!302012))

(assert (= (or b!4344208 b!4344209) bm!302014))

(assert (= (and d!1282739 res!1783311) b!4344210))

(assert (= (and b!4344210 res!1783313) b!4344211))

(declare-fun m!4950197 () Bool)

(assert (=> bm!302012 m!4950197))

(assert (=> bm!302013 m!4949839))

(declare-fun m!4950199 () Bool)

(assert (=> bm!302013 m!4950199))

(declare-fun m!4950201 () Bool)

(assert (=> bm!302014 m!4950201))

(declare-fun m!4950203 () Bool)

(assert (=> d!1282739 m!4950203))

(declare-fun m!4950205 () Bool)

(assert (=> d!1282739 m!4950205))

(declare-fun m!4950207 () Bool)

(assert (=> b!4344210 m!4950207))

(assert (=> b!4344209 m!4949839))

(declare-fun m!4950209 () Bool)

(assert (=> b!4344209 m!4950209))

(declare-fun m!4950211 () Bool)

(assert (=> b!4344209 m!4950211))

(declare-fun m!4950213 () Bool)

(assert (=> b!4344209 m!4950213))

(declare-fun m!4950215 () Bool)

(assert (=> b!4344209 m!4950215))

(declare-fun m!4950217 () Bool)

(assert (=> b!4344209 m!4950217))

(declare-fun m!4950219 () Bool)

(assert (=> b!4344209 m!4950219))

(declare-fun m!4950221 () Bool)

(assert (=> b!4344209 m!4950221))

(declare-fun m!4950223 () Bool)

(assert (=> b!4344209 m!4950223))

(assert (=> b!4344209 m!4950209))

(declare-fun m!4950225 () Bool)

(assert (=> b!4344209 m!4950225))

(declare-fun m!4950227 () Bool)

(assert (=> b!4344209 m!4950227))

(assert (=> b!4344209 m!4949839))

(declare-fun m!4950229 () Bool)

(assert (=> b!4344209 m!4950229))

(assert (=> b!4344209 m!4950223))

(declare-fun m!4950231 () Bool)

(assert (=> b!4344211 m!4950231))

(assert (=> b!4344207 m!4950223))

(assert (=> b!4344053 d!1282739))

(declare-fun bs!626960 () Bool)

(declare-fun d!1282743 () Bool)

(assert (= bs!626960 (and d!1282743 start!419160)))

(declare-fun lambda!137706 () Int)

(assert (=> bs!626960 (= lambda!137706 lambda!137605)))

(declare-fun bs!626961 () Bool)

(assert (= bs!626961 (and d!1282743 d!1282723)))

(assert (=> bs!626961 (= lambda!137706 lambda!137691)))

(assert (=> d!1282743 (eq!209 (extractMap!478 (toList!2821 (+!509 lm!1707 (tuple2!48049 hash!377 lt!1557431)))) (-!220 (extractMap!478 (toList!2821 lm!1707)) key!3918))))

(declare-fun lt!1557750 () Unit!70181)

(declare-fun choose!26629 (ListLongMap!1471 (_ BitVec 64) List!48881 K!10115 Hashable!4811) Unit!70181)

(assert (=> d!1282743 (= lt!1557750 (choose!26629 lm!1707 hash!377 lt!1557431 key!3918 hashF!1247))))

(assert (=> d!1282743 (forall!9005 (toList!2821 lm!1707) lambda!137706)))

(assert (=> d!1282743 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!35 lm!1707 hash!377 lt!1557431 key!3918 hashF!1247) lt!1557750)))

(declare-fun bs!626962 () Bool)

(assert (= bs!626962 d!1282743))

(assert (=> bs!626962 m!4949847))

(assert (=> bs!626962 m!4949855))

(assert (=> bs!626962 m!4949855))

(declare-fun m!4950279 () Bool)

(assert (=> bs!626962 m!4950279))

(declare-fun m!4950281 () Bool)

(assert (=> bs!626962 m!4950281))

(declare-fun m!4950283 () Bool)

(assert (=> bs!626962 m!4950283))

(declare-fun m!4950289 () Bool)

(assert (=> bs!626962 m!4950289))

(assert (=> bs!626962 m!4950279))

(declare-fun m!4950291 () Bool)

(assert (=> bs!626962 m!4950291))

(assert (=> bs!626962 m!4950289))

(assert (=> b!4344053 d!1282743))

(declare-fun bs!626963 () Bool)

(declare-fun d!1282759 () Bool)

(assert (= bs!626963 (and d!1282759 start!419160)))

(declare-fun lambda!137707 () Int)

(assert (=> bs!626963 (= lambda!137707 lambda!137605)))

(declare-fun bs!626964 () Bool)

(assert (= bs!626964 (and d!1282759 d!1282723)))

(assert (=> bs!626964 (= lambda!137707 lambda!137691)))

(declare-fun bs!626965 () Bool)

(assert (= bs!626965 (and d!1282759 d!1282743)))

(assert (=> bs!626965 (= lambda!137707 lambda!137706)))

(declare-fun lt!1557752 () ListMap!2065)

(assert (=> d!1282759 (invariantList!644 (toList!2822 lt!1557752))))

(declare-fun e!2703377 () ListMap!2065)

(assert (=> d!1282759 (= lt!1557752 e!2703377)))

(declare-fun c!738714 () Bool)

(assert (=> d!1282759 (= c!738714 ((_ is Cons!48758) (toList!2821 lt!1557416)))))

(assert (=> d!1282759 (forall!9005 (toList!2821 lt!1557416) lambda!137707)))

(assert (=> d!1282759 (= (extractMap!478 (toList!2821 lt!1557416)) lt!1557752)))

(declare-fun b!4344235 () Bool)

(assert (=> b!4344235 (= e!2703377 (addToMapMapFromBucket!127 (_2!27318 (h!54275 (toList!2821 lt!1557416))) (extractMap!478 (t!355802 (toList!2821 lt!1557416)))))))

(declare-fun b!4344236 () Bool)

(assert (=> b!4344236 (= e!2703377 (ListMap!2066 Nil!48757))))

(assert (= (and d!1282759 c!738714) b!4344235))

(assert (= (and d!1282759 (not c!738714)) b!4344236))

(declare-fun m!4950293 () Bool)

(assert (=> d!1282759 m!4950293))

(declare-fun m!4950295 () Bool)

(assert (=> d!1282759 m!4950295))

(declare-fun m!4950297 () Bool)

(assert (=> b!4344235 m!4950297))

(assert (=> b!4344235 m!4950297))

(declare-fun m!4950299 () Bool)

(assert (=> b!4344235 m!4950299))

(assert (=> b!4344053 d!1282759))

(declare-fun d!1282761 () Bool)

(declare-fun e!2703392 () Bool)

(assert (=> d!1282761 e!2703392))

(declare-fun res!1783339 () Bool)

(assert (=> d!1282761 (=> (not res!1783339) (not e!2703392))))

(declare-fun lt!1557765 () ListLongMap!1471)

(assert (=> d!1282761 (= res!1783339 (contains!10867 lt!1557765 (_1!27318 (tuple2!48049 hash!377 lt!1557431))))))

(declare-fun lt!1557767 () List!48882)

(assert (=> d!1282761 (= lt!1557765 (ListLongMap!1472 lt!1557767))))

(declare-fun lt!1557764 () Unit!70181)

(declare-fun lt!1557766 () Unit!70181)

(assert (=> d!1282761 (= lt!1557764 lt!1557766)))

(declare-datatypes ((Option!10400 0))(
  ( (None!10399) (Some!10399 (v!43177 List!48881)) )
))
(declare-fun getValueByKey!386 (List!48882 (_ BitVec 64)) Option!10400)

(assert (=> d!1282761 (= (getValueByKey!386 lt!1557767 (_1!27318 (tuple2!48049 hash!377 lt!1557431))) (Some!10399 (_2!27318 (tuple2!48049 hash!377 lt!1557431))))))

(declare-fun lemmaContainsTupThenGetReturnValue!169 (List!48882 (_ BitVec 64) List!48881) Unit!70181)

(assert (=> d!1282761 (= lt!1557766 (lemmaContainsTupThenGetReturnValue!169 lt!1557767 (_1!27318 (tuple2!48049 hash!377 lt!1557431)) (_2!27318 (tuple2!48049 hash!377 lt!1557431))))))

(declare-fun insertStrictlySorted!101 (List!48882 (_ BitVec 64) List!48881) List!48882)

(assert (=> d!1282761 (= lt!1557767 (insertStrictlySorted!101 (toList!2821 lm!1707) (_1!27318 (tuple2!48049 hash!377 lt!1557431)) (_2!27318 (tuple2!48049 hash!377 lt!1557431))))))

(assert (=> d!1282761 (= (+!509 lm!1707 (tuple2!48049 hash!377 lt!1557431)) lt!1557765)))

(declare-fun b!4344263 () Bool)

(declare-fun res!1783340 () Bool)

(assert (=> b!4344263 (=> (not res!1783340) (not e!2703392))))

(assert (=> b!4344263 (= res!1783340 (= (getValueByKey!386 (toList!2821 lt!1557765) (_1!27318 (tuple2!48049 hash!377 lt!1557431))) (Some!10399 (_2!27318 (tuple2!48049 hash!377 lt!1557431)))))))

(declare-fun b!4344264 () Bool)

(assert (=> b!4344264 (= e!2703392 (contains!10868 (toList!2821 lt!1557765) (tuple2!48049 hash!377 lt!1557431)))))

(assert (= (and d!1282761 res!1783339) b!4344263))

(assert (= (and b!4344263 res!1783340) b!4344264))

(declare-fun m!4950317 () Bool)

(assert (=> d!1282761 m!4950317))

(declare-fun m!4950319 () Bool)

(assert (=> d!1282761 m!4950319))

(declare-fun m!4950321 () Bool)

(assert (=> d!1282761 m!4950321))

(declare-fun m!4950323 () Bool)

(assert (=> d!1282761 m!4950323))

(declare-fun m!4950325 () Bool)

(assert (=> b!4344263 m!4950325))

(declare-fun m!4950327 () Bool)

(assert (=> b!4344264 m!4950327))

(assert (=> b!4344053 d!1282761))

(declare-fun d!1282773 () Bool)

(declare-fun content!7640 (List!48881) (InoxSet tuple2!48046))

(assert (=> d!1282773 (= (eq!209 lt!1557415 (-!220 lt!1557417 key!3918)) (= (content!7640 (toList!2822 lt!1557415)) (content!7640 (toList!2822 (-!220 lt!1557417 key!3918)))))))

(declare-fun bs!626971 () Bool)

(assert (= bs!626971 d!1282773))

(declare-fun m!4950329 () Bool)

(assert (=> bs!626971 m!4950329))

(declare-fun m!4950331 () Bool)

(assert (=> bs!626971 m!4950331))

(assert (=> b!4344053 d!1282773))

(declare-fun bs!626972 () Bool)

(declare-fun b!4344266 () Bool)

(assert (= bs!626972 (and b!4344266 b!4344209)))

(declare-fun lambda!137708 () Int)

(assert (=> bs!626972 (= (= lt!1557423 lt!1557698) (= lambda!137708 lambda!137698))))

(declare-fun bs!626973 () Bool)

(assert (= bs!626973 (and b!4344266 b!4344181)))

(assert (=> bs!626973 (= lambda!137708 lambda!137681)))

(declare-fun bs!626974 () Bool)

(assert (= bs!626974 (and b!4344266 d!1282691)))

(assert (=> bs!626974 (= (= lt!1557423 lt!1557640) (= lambda!137708 lambda!137683))))

(assert (=> bs!626972 (= (= lt!1557423 (+!510 lt!1557423 lt!1557420)) (= lambda!137708 lambda!137697))))

(assert (=> bs!626973 (= (= lt!1557423 lt!1557622) (= lambda!137708 lambda!137682))))

(declare-fun bs!626975 () Bool)

(assert (= bs!626975 (and b!4344266 b!4344208)))

(assert (=> bs!626975 (= (= lt!1557423 (+!510 lt!1557423 lt!1557420)) (= lambda!137708 lambda!137696))))

(declare-fun bs!626976 () Bool)

(assert (= bs!626976 (and b!4344266 d!1282739)))

(assert (=> bs!626976 (= (= lt!1557423 lt!1557716) (= lambda!137708 lambda!137700))))

(declare-fun bs!626977 () Bool)

(assert (= bs!626977 (and b!4344266 b!4344180)))

(assert (=> bs!626977 (= lambda!137708 lambda!137680)))

(assert (=> b!4344266 true))

(declare-fun bs!626978 () Bool)

(declare-fun b!4344267 () Bool)

(assert (= bs!626978 (and b!4344267 b!4344209)))

(declare-fun lambda!137709 () Int)

(assert (=> bs!626978 (= (= lt!1557423 lt!1557698) (= lambda!137709 lambda!137698))))

(declare-fun bs!626979 () Bool)

(assert (= bs!626979 (and b!4344267 b!4344181)))

(assert (=> bs!626979 (= lambda!137709 lambda!137681)))

(declare-fun bs!626980 () Bool)

(assert (= bs!626980 (and b!4344267 d!1282691)))

(assert (=> bs!626980 (= (= lt!1557423 lt!1557640) (= lambda!137709 lambda!137683))))

(assert (=> bs!626978 (= (= lt!1557423 (+!510 lt!1557423 lt!1557420)) (= lambda!137709 lambda!137697))))

(assert (=> bs!626979 (= (= lt!1557423 lt!1557622) (= lambda!137709 lambda!137682))))

(declare-fun bs!626981 () Bool)

(assert (= bs!626981 (and b!4344267 b!4344266)))

(assert (=> bs!626981 (= lambda!137709 lambda!137708)))

(declare-fun bs!626982 () Bool)

(assert (= bs!626982 (and b!4344267 b!4344208)))

(assert (=> bs!626982 (= (= lt!1557423 (+!510 lt!1557423 lt!1557420)) (= lambda!137709 lambda!137696))))

(declare-fun bs!626983 () Bool)

(assert (= bs!626983 (and b!4344267 d!1282739)))

(assert (=> bs!626983 (= (= lt!1557423 lt!1557716) (= lambda!137709 lambda!137700))))

(declare-fun bs!626984 () Bool)

(assert (= bs!626984 (and b!4344267 b!4344180)))

(assert (=> bs!626984 (= lambda!137709 lambda!137680)))

(assert (=> b!4344267 true))

(declare-fun lambda!137710 () Int)

(declare-fun lt!1557768 () ListMap!2065)

(assert (=> bs!626978 (= (= lt!1557768 lt!1557698) (= lambda!137710 lambda!137698))))

(assert (=> bs!626979 (= (= lt!1557768 lt!1557423) (= lambda!137710 lambda!137681))))

(assert (=> bs!626980 (= (= lt!1557768 lt!1557640) (= lambda!137710 lambda!137683))))

(assert (=> bs!626978 (= (= lt!1557768 (+!510 lt!1557423 lt!1557420)) (= lambda!137710 lambda!137697))))

(assert (=> bs!626979 (= (= lt!1557768 lt!1557622) (= lambda!137710 lambda!137682))))

(assert (=> bs!626981 (= (= lt!1557768 lt!1557423) (= lambda!137710 lambda!137708))))

(assert (=> bs!626982 (= (= lt!1557768 (+!510 lt!1557423 lt!1557420)) (= lambda!137710 lambda!137696))))

(assert (=> b!4344267 (= (= lt!1557768 lt!1557423) (= lambda!137710 lambda!137709))))

(assert (=> bs!626983 (= (= lt!1557768 lt!1557716) (= lambda!137710 lambda!137700))))

(assert (=> bs!626984 (= (= lt!1557768 lt!1557423) (= lambda!137710 lambda!137680))))

(assert (=> b!4344267 true))

(declare-fun bs!626985 () Bool)

(declare-fun d!1282775 () Bool)

(assert (= bs!626985 (and d!1282775 b!4344209)))

(declare-fun lambda!137711 () Int)

(declare-fun lt!1557786 () ListMap!2065)

(assert (=> bs!626985 (= (= lt!1557786 lt!1557698) (= lambda!137711 lambda!137698))))

(declare-fun bs!626986 () Bool)

(assert (= bs!626986 (and d!1282775 b!4344181)))

(assert (=> bs!626986 (= (= lt!1557786 lt!1557423) (= lambda!137711 lambda!137681))))

(declare-fun bs!626987 () Bool)

(assert (= bs!626987 (and d!1282775 d!1282691)))

(assert (=> bs!626987 (= (= lt!1557786 lt!1557640) (= lambda!137711 lambda!137683))))

(assert (=> bs!626985 (= (= lt!1557786 (+!510 lt!1557423 lt!1557420)) (= lambda!137711 lambda!137697))))

(assert (=> bs!626986 (= (= lt!1557786 lt!1557622) (= lambda!137711 lambda!137682))))

(declare-fun bs!626988 () Bool)

(assert (= bs!626988 (and d!1282775 b!4344266)))

(assert (=> bs!626988 (= (= lt!1557786 lt!1557423) (= lambda!137711 lambda!137708))))

(declare-fun bs!626989 () Bool)

(assert (= bs!626989 (and d!1282775 b!4344208)))

(assert (=> bs!626989 (= (= lt!1557786 (+!510 lt!1557423 lt!1557420)) (= lambda!137711 lambda!137696))))

(declare-fun bs!626990 () Bool)

(assert (= bs!626990 (and d!1282775 b!4344267)))

(assert (=> bs!626990 (= (= lt!1557786 lt!1557768) (= lambda!137711 lambda!137710))))

(assert (=> bs!626990 (= (= lt!1557786 lt!1557423) (= lambda!137711 lambda!137709))))

(declare-fun bs!626991 () Bool)

(assert (= bs!626991 (and d!1282775 d!1282739)))

(assert (=> bs!626991 (= (= lt!1557786 lt!1557716) (= lambda!137711 lambda!137700))))

(declare-fun bs!626992 () Bool)

(assert (= bs!626992 (and d!1282775 b!4344180)))

(assert (=> bs!626992 (= (= lt!1557786 lt!1557423) (= lambda!137711 lambda!137680))))

(assert (=> d!1282775 true))

(declare-fun b!4344265 () Bool)

(declare-fun e!2703393 () Bool)

(assert (=> b!4344265 (= e!2703393 (forall!9007 (toList!2822 lt!1557423) lambda!137710))))

(declare-fun e!2703395 () ListMap!2065)

(assert (=> b!4344266 (= e!2703395 lt!1557423)))

(declare-fun lt!1557775 () Unit!70181)

(declare-fun call!302024 () Unit!70181)

(assert (=> b!4344266 (= lt!1557775 call!302024)))

(declare-fun call!302023 () Bool)

(assert (=> b!4344266 call!302023))

(declare-fun lt!1557774 () Unit!70181)

(assert (=> b!4344266 (= lt!1557774 lt!1557775)))

(declare-fun call!302025 () Bool)

(assert (=> b!4344266 call!302025))

(declare-fun lt!1557769 () Unit!70181)

(declare-fun Unit!70240 () Unit!70181)

(assert (=> b!4344266 (= lt!1557769 Unit!70240)))

(assert (=> b!4344267 (= e!2703395 lt!1557768)))

(declare-fun lt!1557788 () ListMap!2065)

(assert (=> b!4344267 (= lt!1557788 (+!510 lt!1557423 (h!54274 newBucket!200)))))

(assert (=> b!4344267 (= lt!1557768 (addToMapMapFromBucket!127 (t!355801 newBucket!200) (+!510 lt!1557423 (h!54274 newBucket!200))))))

(declare-fun lt!1557784 () Unit!70181)

(assert (=> b!4344267 (= lt!1557784 call!302024)))

(assert (=> b!4344267 (forall!9007 (toList!2822 lt!1557423) lambda!137709)))

(declare-fun lt!1557785 () Unit!70181)

(assert (=> b!4344267 (= lt!1557785 lt!1557784)))

(assert (=> b!4344267 call!302025))

(declare-fun lt!1557773 () Unit!70181)

(declare-fun Unit!70242 () Unit!70181)

(assert (=> b!4344267 (= lt!1557773 Unit!70242)))

(assert (=> b!4344267 (forall!9007 (t!355801 newBucket!200) lambda!137710)))

(declare-fun lt!1557787 () Unit!70181)

(declare-fun Unit!70243 () Unit!70181)

(assert (=> b!4344267 (= lt!1557787 Unit!70243)))

(declare-fun lt!1557770 () Unit!70181)

(declare-fun Unit!70244 () Unit!70181)

(assert (=> b!4344267 (= lt!1557770 Unit!70244)))

(declare-fun lt!1557772 () Unit!70181)

(assert (=> b!4344267 (= lt!1557772 (forallContained!1657 (toList!2822 lt!1557788) lambda!137710 (h!54274 newBucket!200)))))

(assert (=> b!4344267 (contains!10866 lt!1557788 (_1!27317 (h!54274 newBucket!200)))))

(declare-fun lt!1557780 () Unit!70181)

(declare-fun Unit!70245 () Unit!70181)

(assert (=> b!4344267 (= lt!1557780 Unit!70245)))

(assert (=> b!4344267 (contains!10866 lt!1557768 (_1!27317 (h!54274 newBucket!200)))))

(declare-fun lt!1557783 () Unit!70181)

(declare-fun Unit!70246 () Unit!70181)

(assert (=> b!4344267 (= lt!1557783 Unit!70246)))

(assert (=> b!4344267 call!302023))

(declare-fun lt!1557779 () Unit!70181)

(declare-fun Unit!70247 () Unit!70181)

(assert (=> b!4344267 (= lt!1557779 Unit!70247)))

(assert (=> b!4344267 (forall!9007 (toList!2822 lt!1557788) lambda!137710)))

(declare-fun lt!1557777 () Unit!70181)

(declare-fun Unit!70248 () Unit!70181)

(assert (=> b!4344267 (= lt!1557777 Unit!70248)))

(declare-fun lt!1557771 () Unit!70181)

(declare-fun Unit!70249 () Unit!70181)

(assert (=> b!4344267 (= lt!1557771 Unit!70249)))

(declare-fun lt!1557782 () Unit!70181)

(assert (=> b!4344267 (= lt!1557782 (addForallContainsKeyThenBeforeAdding!37 lt!1557423 lt!1557768 (_1!27317 (h!54274 newBucket!200)) (_2!27317 (h!54274 newBucket!200))))))

(assert (=> b!4344267 (forall!9007 (toList!2822 lt!1557423) lambda!137710)))

(declare-fun lt!1557776 () Unit!70181)

(assert (=> b!4344267 (= lt!1557776 lt!1557782)))

(assert (=> b!4344267 (forall!9007 (toList!2822 lt!1557423) lambda!137710)))

(declare-fun lt!1557778 () Unit!70181)

(declare-fun Unit!70250 () Unit!70181)

(assert (=> b!4344267 (= lt!1557778 Unit!70250)))

(declare-fun res!1783342 () Bool)

(assert (=> b!4344267 (= res!1783342 (forall!9007 newBucket!200 lambda!137710))))

(assert (=> b!4344267 (=> (not res!1783342) (not e!2703393))))

(assert (=> b!4344267 e!2703393))

(declare-fun lt!1557781 () Unit!70181)

(declare-fun Unit!70251 () Unit!70181)

(assert (=> b!4344267 (= lt!1557781 Unit!70251)))

(declare-fun c!738721 () Bool)

(declare-fun bm!302018 () Bool)

(assert (=> bm!302018 (= call!302025 (forall!9007 (ite c!738721 (toList!2822 lt!1557423) (toList!2822 lt!1557788)) (ite c!738721 lambda!137708 lambda!137710)))))

(declare-fun e!2703394 () Bool)

(assert (=> d!1282775 e!2703394))

(declare-fun res!1783341 () Bool)

(assert (=> d!1282775 (=> (not res!1783341) (not e!2703394))))

(assert (=> d!1282775 (= res!1783341 (forall!9007 newBucket!200 lambda!137711))))

(assert (=> d!1282775 (= lt!1557786 e!2703395)))

(assert (=> d!1282775 (= c!738721 ((_ is Nil!48757) newBucket!200))))

(assert (=> d!1282775 (noDuplicateKeys!419 newBucket!200)))

(assert (=> d!1282775 (= (addToMapMapFromBucket!127 newBucket!200 lt!1557423) lt!1557786)))

(declare-fun bm!302019 () Bool)

(assert (=> bm!302019 (= call!302024 (lemmaContainsAllItsOwnKeys!37 lt!1557423))))

(declare-fun b!4344268 () Bool)

(declare-fun res!1783343 () Bool)

(assert (=> b!4344268 (=> (not res!1783343) (not e!2703394))))

(assert (=> b!4344268 (= res!1783343 (forall!9007 (toList!2822 lt!1557423) lambda!137711))))

(declare-fun bm!302020 () Bool)

(assert (=> bm!302020 (= call!302023 (forall!9007 (ite c!738721 (toList!2822 lt!1557423) newBucket!200) (ite c!738721 lambda!137708 lambda!137710)))))

(declare-fun b!4344269 () Bool)

(assert (=> b!4344269 (= e!2703394 (invariantList!644 (toList!2822 lt!1557786)))))

(assert (= (and d!1282775 c!738721) b!4344266))

(assert (= (and d!1282775 (not c!738721)) b!4344267))

(assert (= (and b!4344267 res!1783342) b!4344265))

(assert (= (or b!4344266 b!4344267) bm!302019))

(assert (= (or b!4344266 b!4344267) bm!302018))

(assert (= (or b!4344266 b!4344267) bm!302020))

(assert (= (and d!1282775 res!1783341) b!4344268))

(assert (= (and b!4344268 res!1783343) b!4344269))

(declare-fun m!4950333 () Bool)

(assert (=> bm!302018 m!4950333))

(assert (=> bm!302019 m!4950047))

(declare-fun m!4950335 () Bool)

(assert (=> bm!302020 m!4950335))

(declare-fun m!4950337 () Bool)

(assert (=> d!1282775 m!4950337))

(assert (=> d!1282775 m!4949793))

(declare-fun m!4950339 () Bool)

(assert (=> b!4344268 m!4950339))

(declare-fun m!4950341 () Bool)

(assert (=> b!4344267 m!4950341))

(declare-fun m!4950343 () Bool)

(assert (=> b!4344267 m!4950343))

(declare-fun m!4950345 () Bool)

(assert (=> b!4344267 m!4950345))

(declare-fun m!4950347 () Bool)

(assert (=> b!4344267 m!4950347))

(declare-fun m!4950349 () Bool)

(assert (=> b!4344267 m!4950349))

(declare-fun m!4950351 () Bool)

(assert (=> b!4344267 m!4950351))

(declare-fun m!4950353 () Bool)

(assert (=> b!4344267 m!4950353))

(declare-fun m!4950355 () Bool)

(assert (=> b!4344267 m!4950355))

(assert (=> b!4344267 m!4950341))

(declare-fun m!4950357 () Bool)

(assert (=> b!4344267 m!4950357))

(declare-fun m!4950359 () Bool)

(assert (=> b!4344267 m!4950359))

(declare-fun m!4950361 () Bool)

(assert (=> b!4344267 m!4950361))

(assert (=> b!4344267 m!4950355))

(declare-fun m!4950363 () Bool)

(assert (=> b!4344269 m!4950363))

(assert (=> b!4344265 m!4950355))

(assert (=> b!4344053 d!1282775))

(declare-fun d!1282777 () Bool)

(declare-fun e!2703398 () Bool)

(assert (=> d!1282777 e!2703398))

(declare-fun res!1783348 () Bool)

(assert (=> d!1282777 (=> (not res!1783348) (not e!2703398))))

(declare-fun lt!1557799 () ListMap!2065)

(assert (=> d!1282777 (= res!1783348 (contains!10866 lt!1557799 (_1!27317 lt!1557420)))))

(declare-fun lt!1557798 () List!48881)

(assert (=> d!1282777 (= lt!1557799 (ListMap!2066 lt!1557798))))

(declare-fun lt!1557800 () Unit!70181)

(declare-fun lt!1557797 () Unit!70181)

(assert (=> d!1282777 (= lt!1557800 lt!1557797)))

(declare-datatypes ((Option!10401 0))(
  ( (None!10400) (Some!10400 (v!43178 V!10361)) )
))
(declare-fun getValueByKey!387 (List!48881 K!10115) Option!10401)

(assert (=> d!1282777 (= (getValueByKey!387 lt!1557798 (_1!27317 lt!1557420)) (Some!10400 (_2!27317 lt!1557420)))))

(declare-fun lemmaContainsTupThenGetReturnValue!170 (List!48881 K!10115 V!10361) Unit!70181)

(assert (=> d!1282777 (= lt!1557797 (lemmaContainsTupThenGetReturnValue!170 lt!1557798 (_1!27317 lt!1557420) (_2!27317 lt!1557420)))))

(declare-fun insertNoDuplicatedKeys!77 (List!48881 K!10115 V!10361) List!48881)

(assert (=> d!1282777 (= lt!1557798 (insertNoDuplicatedKeys!77 (toList!2822 lt!1557433) (_1!27317 lt!1557420) (_2!27317 lt!1557420)))))

(assert (=> d!1282777 (= (+!510 lt!1557433 lt!1557420) lt!1557799)))

(declare-fun b!4344274 () Bool)

(declare-fun res!1783349 () Bool)

(assert (=> b!4344274 (=> (not res!1783349) (not e!2703398))))

(assert (=> b!4344274 (= res!1783349 (= (getValueByKey!387 (toList!2822 lt!1557799) (_1!27317 lt!1557420)) (Some!10400 (_2!27317 lt!1557420))))))

(declare-fun b!4344275 () Bool)

(declare-fun contains!10871 (List!48881 tuple2!48046) Bool)

(assert (=> b!4344275 (= e!2703398 (contains!10871 (toList!2822 lt!1557799) lt!1557420))))

(assert (= (and d!1282777 res!1783348) b!4344274))

(assert (= (and b!4344274 res!1783349) b!4344275))

(declare-fun m!4950365 () Bool)

(assert (=> d!1282777 m!4950365))

(declare-fun m!4950367 () Bool)

(assert (=> d!1282777 m!4950367))

(declare-fun m!4950369 () Bool)

(assert (=> d!1282777 m!4950369))

(declare-fun m!4950371 () Bool)

(assert (=> d!1282777 m!4950371))

(declare-fun m!4950373 () Bool)

(assert (=> b!4344274 m!4950373))

(declare-fun m!4950375 () Bool)

(assert (=> b!4344275 m!4950375))

(assert (=> b!4344053 d!1282777))

(declare-fun d!1282779 () Bool)

(assert (=> d!1282779 (= (eq!209 lt!1557427 lt!1557428) (= (content!7640 (toList!2822 lt!1557427)) (content!7640 (toList!2822 lt!1557428))))))

(declare-fun bs!626993 () Bool)

(assert (= bs!626993 d!1282779))

(declare-fun m!4950377 () Bool)

(assert (=> bs!626993 m!4950377))

(declare-fun m!4950379 () Bool)

(assert (=> bs!626993 m!4950379))

(assert (=> b!4344053 d!1282779))

(declare-fun d!1282781 () Bool)

(declare-fun res!1783354 () Bool)

(declare-fun e!2703403 () Bool)

(assert (=> d!1282781 (=> res!1783354 e!2703403)))

(assert (=> d!1282781 (= res!1783354 ((_ is Nil!48758) (toList!2821 lt!1557424)))))

(assert (=> d!1282781 (= (forall!9005 (toList!2821 lt!1557424) lambda!137605) e!2703403)))

(declare-fun b!4344280 () Bool)

(declare-fun e!2703404 () Bool)

(assert (=> b!4344280 (= e!2703403 e!2703404)))

(declare-fun res!1783355 () Bool)

(assert (=> b!4344280 (=> (not res!1783355) (not e!2703404))))

(declare-fun dynLambda!20589 (Int tuple2!48048) Bool)

(assert (=> b!4344280 (= res!1783355 (dynLambda!20589 lambda!137605 (h!54275 (toList!2821 lt!1557424))))))

(declare-fun b!4344281 () Bool)

(assert (=> b!4344281 (= e!2703404 (forall!9005 (t!355802 (toList!2821 lt!1557424)) lambda!137605))))

(assert (= (and d!1282781 (not res!1783354)) b!4344280))

(assert (= (and b!4344280 res!1783355) b!4344281))

(declare-fun b_lambda!129991 () Bool)

(assert (=> (not b_lambda!129991) (not b!4344280)))

(declare-fun m!4950381 () Bool)

(assert (=> b!4344280 m!4950381))

(declare-fun m!4950383 () Bool)

(assert (=> b!4344281 m!4950383))

(assert (=> b!4344053 d!1282781))

(declare-fun d!1282783 () Bool)

(declare-fun e!2703405 () Bool)

(assert (=> d!1282783 e!2703405))

(declare-fun res!1783356 () Bool)

(assert (=> d!1282783 (=> (not res!1783356) (not e!2703405))))

(declare-fun lt!1557803 () ListMap!2065)

(assert (=> d!1282783 (= res!1783356 (contains!10866 lt!1557803 (_1!27317 lt!1557420)))))

(declare-fun lt!1557802 () List!48881)

(assert (=> d!1282783 (= lt!1557803 (ListMap!2066 lt!1557802))))

(declare-fun lt!1557804 () Unit!70181)

(declare-fun lt!1557801 () Unit!70181)

(assert (=> d!1282783 (= lt!1557804 lt!1557801)))

(assert (=> d!1282783 (= (getValueByKey!387 lt!1557802 (_1!27317 lt!1557420)) (Some!10400 (_2!27317 lt!1557420)))))

(assert (=> d!1282783 (= lt!1557801 (lemmaContainsTupThenGetReturnValue!170 lt!1557802 (_1!27317 lt!1557420) (_2!27317 lt!1557420)))))

(assert (=> d!1282783 (= lt!1557802 (insertNoDuplicatedKeys!77 (toList!2822 lt!1557423) (_1!27317 lt!1557420) (_2!27317 lt!1557420)))))

(assert (=> d!1282783 (= (+!510 lt!1557423 lt!1557420) lt!1557803)))

(declare-fun b!4344282 () Bool)

(declare-fun res!1783357 () Bool)

(assert (=> b!4344282 (=> (not res!1783357) (not e!2703405))))

(assert (=> b!4344282 (= res!1783357 (= (getValueByKey!387 (toList!2822 lt!1557803) (_1!27317 lt!1557420)) (Some!10400 (_2!27317 lt!1557420))))))

(declare-fun b!4344283 () Bool)

(assert (=> b!4344283 (= e!2703405 (contains!10871 (toList!2822 lt!1557803) lt!1557420))))

(assert (= (and d!1282783 res!1783356) b!4344282))

(assert (= (and b!4344282 res!1783357) b!4344283))

(declare-fun m!4950385 () Bool)

(assert (=> d!1282783 m!4950385))

(declare-fun m!4950387 () Bool)

(assert (=> d!1282783 m!4950387))

(declare-fun m!4950389 () Bool)

(assert (=> d!1282783 m!4950389))

(declare-fun m!4950391 () Bool)

(assert (=> d!1282783 m!4950391))

(declare-fun m!4950393 () Bool)

(assert (=> b!4344282 m!4950393))

(declare-fun m!4950395 () Bool)

(assert (=> b!4344283 m!4950395))

(assert (=> b!4344053 d!1282783))

(declare-fun bs!626994 () Bool)

(declare-fun d!1282785 () Bool)

(assert (= bs!626994 (and d!1282785 start!419160)))

(declare-fun lambda!137712 () Int)

(assert (=> bs!626994 (= lambda!137712 lambda!137605)))

(declare-fun bs!626995 () Bool)

(assert (= bs!626995 (and d!1282785 d!1282723)))

(assert (=> bs!626995 (= lambda!137712 lambda!137691)))

(declare-fun bs!626996 () Bool)

(assert (= bs!626996 (and d!1282785 d!1282743)))

(assert (=> bs!626996 (= lambda!137712 lambda!137706)))

(declare-fun bs!626997 () Bool)

(assert (= bs!626997 (and d!1282785 d!1282759)))

(assert (=> bs!626997 (= lambda!137712 lambda!137707)))

(declare-fun lt!1557805 () ListMap!2065)

(assert (=> d!1282785 (invariantList!644 (toList!2822 lt!1557805))))

(declare-fun e!2703406 () ListMap!2065)

(assert (=> d!1282785 (= lt!1557805 e!2703406)))

(declare-fun c!738722 () Bool)

(assert (=> d!1282785 (= c!738722 ((_ is Cons!48758) (t!355802 (toList!2821 lm!1707))))))

(assert (=> d!1282785 (forall!9005 (t!355802 (toList!2821 lm!1707)) lambda!137712)))

(assert (=> d!1282785 (= (extractMap!478 (t!355802 (toList!2821 lm!1707))) lt!1557805)))

(declare-fun b!4344284 () Bool)

(assert (=> b!4344284 (= e!2703406 (addToMapMapFromBucket!127 (_2!27318 (h!54275 (t!355802 (toList!2821 lm!1707)))) (extractMap!478 (t!355802 (t!355802 (toList!2821 lm!1707))))))))

(declare-fun b!4344285 () Bool)

(assert (=> b!4344285 (= e!2703406 (ListMap!2066 Nil!48757))))

(assert (= (and d!1282785 c!738722) b!4344284))

(assert (= (and d!1282785 (not c!738722)) b!4344285))

(declare-fun m!4950397 () Bool)

(assert (=> d!1282785 m!4950397))

(declare-fun m!4950399 () Bool)

(assert (=> d!1282785 m!4950399))

(declare-fun m!4950401 () Bool)

(assert (=> b!4344284 m!4950401))

(assert (=> b!4344284 m!4950401))

(declare-fun m!4950403 () Bool)

(assert (=> b!4344284 m!4950403))

(assert (=> b!4344053 d!1282785))

(declare-fun bs!626998 () Bool)

(declare-fun b!4344287 () Bool)

(assert (= bs!626998 (and b!4344287 b!4344209)))

(declare-fun lambda!137713 () Int)

(assert (=> bs!626998 (= (= lt!1557423 lt!1557698) (= lambda!137713 lambda!137698))))

(declare-fun bs!626999 () Bool)

(assert (= bs!626999 (and b!4344287 b!4344181)))

(assert (=> bs!626999 (= lambda!137713 lambda!137681)))

(declare-fun bs!627000 () Bool)

(assert (= bs!627000 (and b!4344287 d!1282691)))

(assert (=> bs!627000 (= (= lt!1557423 lt!1557640) (= lambda!137713 lambda!137683))))

(assert (=> bs!626998 (= (= lt!1557423 (+!510 lt!1557423 lt!1557420)) (= lambda!137713 lambda!137697))))

(assert (=> bs!626999 (= (= lt!1557423 lt!1557622) (= lambda!137713 lambda!137682))))

(declare-fun bs!627001 () Bool)

(assert (= bs!627001 (and b!4344287 b!4344266)))

(assert (=> bs!627001 (= lambda!137713 lambda!137708)))

(declare-fun bs!627002 () Bool)

(assert (= bs!627002 (and b!4344287 b!4344208)))

(assert (=> bs!627002 (= (= lt!1557423 (+!510 lt!1557423 lt!1557420)) (= lambda!137713 lambda!137696))))

(declare-fun bs!627003 () Bool)

(assert (= bs!627003 (and b!4344287 b!4344267)))

(assert (=> bs!627003 (= (= lt!1557423 lt!1557768) (= lambda!137713 lambda!137710))))

(declare-fun bs!627004 () Bool)

(assert (= bs!627004 (and b!4344287 d!1282739)))

(assert (=> bs!627004 (= (= lt!1557423 lt!1557716) (= lambda!137713 lambda!137700))))

(declare-fun bs!627005 () Bool)

(assert (= bs!627005 (and b!4344287 b!4344180)))

(assert (=> bs!627005 (= lambda!137713 lambda!137680)))

(assert (=> bs!627003 (= lambda!137713 lambda!137709)))

(declare-fun bs!627006 () Bool)

(assert (= bs!627006 (and b!4344287 d!1282775)))

(assert (=> bs!627006 (= (= lt!1557423 lt!1557786) (= lambda!137713 lambda!137711))))

(assert (=> b!4344287 true))

(declare-fun bs!627007 () Bool)

(declare-fun b!4344288 () Bool)

(assert (= bs!627007 (and b!4344288 b!4344209)))

(declare-fun lambda!137714 () Int)

(assert (=> bs!627007 (= (= lt!1557423 lt!1557698) (= lambda!137714 lambda!137698))))

(declare-fun bs!627008 () Bool)

(assert (= bs!627008 (and b!4344288 b!4344181)))

(assert (=> bs!627008 (= lambda!137714 lambda!137681)))

(declare-fun bs!627009 () Bool)

(assert (= bs!627009 (and b!4344288 d!1282691)))

(assert (=> bs!627009 (= (= lt!1557423 lt!1557640) (= lambda!137714 lambda!137683))))

(assert (=> bs!627007 (= (= lt!1557423 (+!510 lt!1557423 lt!1557420)) (= lambda!137714 lambda!137697))))

(assert (=> bs!627008 (= (= lt!1557423 lt!1557622) (= lambda!137714 lambda!137682))))

(declare-fun bs!627010 () Bool)

(assert (= bs!627010 (and b!4344288 b!4344266)))

(assert (=> bs!627010 (= lambda!137714 lambda!137708)))

(declare-fun bs!627011 () Bool)

(assert (= bs!627011 (and b!4344288 b!4344208)))

(assert (=> bs!627011 (= (= lt!1557423 (+!510 lt!1557423 lt!1557420)) (= lambda!137714 lambda!137696))))

(declare-fun bs!627012 () Bool)

(assert (= bs!627012 (and b!4344288 b!4344267)))

(assert (=> bs!627012 (= (= lt!1557423 lt!1557768) (= lambda!137714 lambda!137710))))

(declare-fun bs!627013 () Bool)

(assert (= bs!627013 (and b!4344288 b!4344287)))

(assert (=> bs!627013 (= lambda!137714 lambda!137713)))

(declare-fun bs!627014 () Bool)

(assert (= bs!627014 (and b!4344288 d!1282739)))

(assert (=> bs!627014 (= (= lt!1557423 lt!1557716) (= lambda!137714 lambda!137700))))

(declare-fun bs!627015 () Bool)

(assert (= bs!627015 (and b!4344288 b!4344180)))

(assert (=> bs!627015 (= lambda!137714 lambda!137680)))

(assert (=> bs!627012 (= lambda!137714 lambda!137709)))

(declare-fun bs!627016 () Bool)

(assert (= bs!627016 (and b!4344288 d!1282775)))

(assert (=> bs!627016 (= (= lt!1557423 lt!1557786) (= lambda!137714 lambda!137711))))

(assert (=> b!4344288 true))

(declare-fun lambda!137715 () Int)

(declare-fun lt!1557806 () ListMap!2065)

(assert (=> bs!627007 (= (= lt!1557806 lt!1557698) (= lambda!137715 lambda!137698))))

(assert (=> bs!627008 (= (= lt!1557806 lt!1557423) (= lambda!137715 lambda!137681))))

(assert (=> bs!627009 (= (= lt!1557806 lt!1557640) (= lambda!137715 lambda!137683))))

(assert (=> bs!627007 (= (= lt!1557806 (+!510 lt!1557423 lt!1557420)) (= lambda!137715 lambda!137697))))

(assert (=> bs!627008 (= (= lt!1557806 lt!1557622) (= lambda!137715 lambda!137682))))

(assert (=> bs!627010 (= (= lt!1557806 lt!1557423) (= lambda!137715 lambda!137708))))

(assert (=> bs!627011 (= (= lt!1557806 (+!510 lt!1557423 lt!1557420)) (= lambda!137715 lambda!137696))))

(assert (=> bs!627012 (= (= lt!1557806 lt!1557768) (= lambda!137715 lambda!137710))))

(assert (=> b!4344288 (= (= lt!1557806 lt!1557423) (= lambda!137715 lambda!137714))))

(assert (=> bs!627013 (= (= lt!1557806 lt!1557423) (= lambda!137715 lambda!137713))))

(assert (=> bs!627014 (= (= lt!1557806 lt!1557716) (= lambda!137715 lambda!137700))))

(assert (=> bs!627015 (= (= lt!1557806 lt!1557423) (= lambda!137715 lambda!137680))))

(assert (=> bs!627012 (= (= lt!1557806 lt!1557423) (= lambda!137715 lambda!137709))))

(assert (=> bs!627016 (= (= lt!1557806 lt!1557786) (= lambda!137715 lambda!137711))))

(assert (=> b!4344288 true))

(declare-fun bs!627017 () Bool)

(declare-fun d!1282787 () Bool)

(assert (= bs!627017 (and d!1282787 b!4344209)))

(declare-fun lambda!137716 () Int)

(declare-fun lt!1557824 () ListMap!2065)

(assert (=> bs!627017 (= (= lt!1557824 lt!1557698) (= lambda!137716 lambda!137698))))

(declare-fun bs!627018 () Bool)

(assert (= bs!627018 (and d!1282787 b!4344181)))

(assert (=> bs!627018 (= (= lt!1557824 lt!1557423) (= lambda!137716 lambda!137681))))

(assert (=> bs!627017 (= (= lt!1557824 (+!510 lt!1557423 lt!1557420)) (= lambda!137716 lambda!137697))))

(assert (=> bs!627018 (= (= lt!1557824 lt!1557622) (= lambda!137716 lambda!137682))))

(declare-fun bs!627019 () Bool)

(assert (= bs!627019 (and d!1282787 b!4344266)))

(assert (=> bs!627019 (= (= lt!1557824 lt!1557423) (= lambda!137716 lambda!137708))))

(declare-fun bs!627020 () Bool)

(assert (= bs!627020 (and d!1282787 b!4344208)))

(assert (=> bs!627020 (= (= lt!1557824 (+!510 lt!1557423 lt!1557420)) (= lambda!137716 lambda!137696))))

(declare-fun bs!627021 () Bool)

(assert (= bs!627021 (and d!1282787 b!4344267)))

(assert (=> bs!627021 (= (= lt!1557824 lt!1557768) (= lambda!137716 lambda!137710))))

(declare-fun bs!627022 () Bool)

(assert (= bs!627022 (and d!1282787 b!4344288)))

(assert (=> bs!627022 (= (= lt!1557824 lt!1557423) (= lambda!137716 lambda!137714))))

(declare-fun bs!627023 () Bool)

(assert (= bs!627023 (and d!1282787 b!4344287)))

(assert (=> bs!627023 (= (= lt!1557824 lt!1557423) (= lambda!137716 lambda!137713))))

(declare-fun bs!627024 () Bool)

(assert (= bs!627024 (and d!1282787 d!1282739)))

(assert (=> bs!627024 (= (= lt!1557824 lt!1557716) (= lambda!137716 lambda!137700))))

(declare-fun bs!627025 () Bool)

(assert (= bs!627025 (and d!1282787 b!4344180)))

(assert (=> bs!627025 (= (= lt!1557824 lt!1557423) (= lambda!137716 lambda!137680))))

(assert (=> bs!627022 (= (= lt!1557824 lt!1557806) (= lambda!137716 lambda!137715))))

(declare-fun bs!627026 () Bool)

(assert (= bs!627026 (and d!1282787 d!1282691)))

(assert (=> bs!627026 (= (= lt!1557824 lt!1557640) (= lambda!137716 lambda!137683))))

(assert (=> bs!627021 (= (= lt!1557824 lt!1557423) (= lambda!137716 lambda!137709))))

(declare-fun bs!627027 () Bool)

(assert (= bs!627027 (and d!1282787 d!1282775)))

(assert (=> bs!627027 (= (= lt!1557824 lt!1557786) (= lambda!137716 lambda!137711))))

(assert (=> d!1282787 true))

(declare-fun b!4344286 () Bool)

(declare-fun e!2703407 () Bool)

(assert (=> b!4344286 (= e!2703407 (forall!9007 (toList!2822 lt!1557423) lambda!137715))))

(declare-fun e!2703409 () ListMap!2065)

(assert (=> b!4344287 (= e!2703409 lt!1557423)))

(declare-fun lt!1557813 () Unit!70181)

(declare-fun call!302027 () Unit!70181)

(assert (=> b!4344287 (= lt!1557813 call!302027)))

(declare-fun call!302026 () Bool)

(assert (=> b!4344287 call!302026))

(declare-fun lt!1557812 () Unit!70181)

(assert (=> b!4344287 (= lt!1557812 lt!1557813)))

(declare-fun call!302028 () Bool)

(assert (=> b!4344287 call!302028))

(declare-fun lt!1557807 () Unit!70181)

(declare-fun Unit!70263 () Unit!70181)

(assert (=> b!4344287 (= lt!1557807 Unit!70263)))

(assert (=> b!4344288 (= e!2703409 lt!1557806)))

(declare-fun lt!1557826 () ListMap!2065)

(assert (=> b!4344288 (= lt!1557826 (+!510 lt!1557423 (h!54274 lt!1557419)))))

(assert (=> b!4344288 (= lt!1557806 (addToMapMapFromBucket!127 (t!355801 lt!1557419) (+!510 lt!1557423 (h!54274 lt!1557419))))))

(declare-fun lt!1557822 () Unit!70181)

(assert (=> b!4344288 (= lt!1557822 call!302027)))

(assert (=> b!4344288 (forall!9007 (toList!2822 lt!1557423) lambda!137714)))

(declare-fun lt!1557823 () Unit!70181)

(assert (=> b!4344288 (= lt!1557823 lt!1557822)))

(assert (=> b!4344288 call!302028))

(declare-fun lt!1557811 () Unit!70181)

(declare-fun Unit!70264 () Unit!70181)

(assert (=> b!4344288 (= lt!1557811 Unit!70264)))

(assert (=> b!4344288 (forall!9007 (t!355801 lt!1557419) lambda!137715)))

(declare-fun lt!1557825 () Unit!70181)

(declare-fun Unit!70265 () Unit!70181)

(assert (=> b!4344288 (= lt!1557825 Unit!70265)))

(declare-fun lt!1557808 () Unit!70181)

(declare-fun Unit!70266 () Unit!70181)

(assert (=> b!4344288 (= lt!1557808 Unit!70266)))

(declare-fun lt!1557810 () Unit!70181)

(assert (=> b!4344288 (= lt!1557810 (forallContained!1657 (toList!2822 lt!1557826) lambda!137715 (h!54274 lt!1557419)))))

(assert (=> b!4344288 (contains!10866 lt!1557826 (_1!27317 (h!54274 lt!1557419)))))

(declare-fun lt!1557818 () Unit!70181)

(declare-fun Unit!70267 () Unit!70181)

(assert (=> b!4344288 (= lt!1557818 Unit!70267)))

(assert (=> b!4344288 (contains!10866 lt!1557806 (_1!27317 (h!54274 lt!1557419)))))

(declare-fun lt!1557821 () Unit!70181)

(declare-fun Unit!70268 () Unit!70181)

(assert (=> b!4344288 (= lt!1557821 Unit!70268)))

(assert (=> b!4344288 call!302026))

(declare-fun lt!1557817 () Unit!70181)

(declare-fun Unit!70269 () Unit!70181)

(assert (=> b!4344288 (= lt!1557817 Unit!70269)))

(assert (=> b!4344288 (forall!9007 (toList!2822 lt!1557826) lambda!137715)))

(declare-fun lt!1557815 () Unit!70181)

(declare-fun Unit!70270 () Unit!70181)

(assert (=> b!4344288 (= lt!1557815 Unit!70270)))

(declare-fun lt!1557809 () Unit!70181)

(declare-fun Unit!70271 () Unit!70181)

(assert (=> b!4344288 (= lt!1557809 Unit!70271)))

(declare-fun lt!1557820 () Unit!70181)

(assert (=> b!4344288 (= lt!1557820 (addForallContainsKeyThenBeforeAdding!37 lt!1557423 lt!1557806 (_1!27317 (h!54274 lt!1557419)) (_2!27317 (h!54274 lt!1557419))))))

(assert (=> b!4344288 (forall!9007 (toList!2822 lt!1557423) lambda!137715)))

(declare-fun lt!1557814 () Unit!70181)

(assert (=> b!4344288 (= lt!1557814 lt!1557820)))

(assert (=> b!4344288 (forall!9007 (toList!2822 lt!1557423) lambda!137715)))

(declare-fun lt!1557816 () Unit!70181)

(declare-fun Unit!70272 () Unit!70181)

(assert (=> b!4344288 (= lt!1557816 Unit!70272)))

(declare-fun res!1783359 () Bool)

(assert (=> b!4344288 (= res!1783359 (forall!9007 lt!1557419 lambda!137715))))

(assert (=> b!4344288 (=> (not res!1783359) (not e!2703407))))

(assert (=> b!4344288 e!2703407))

(declare-fun lt!1557819 () Unit!70181)

(declare-fun Unit!70273 () Unit!70181)

(assert (=> b!4344288 (= lt!1557819 Unit!70273)))

(declare-fun bm!302021 () Bool)

(declare-fun c!738723 () Bool)

(assert (=> bm!302021 (= call!302028 (forall!9007 (ite c!738723 (toList!2822 lt!1557423) (toList!2822 lt!1557826)) (ite c!738723 lambda!137713 lambda!137715)))))

(declare-fun e!2703408 () Bool)

(assert (=> d!1282787 e!2703408))

(declare-fun res!1783358 () Bool)

(assert (=> d!1282787 (=> (not res!1783358) (not e!2703408))))

(assert (=> d!1282787 (= res!1783358 (forall!9007 lt!1557419 lambda!137716))))

(assert (=> d!1282787 (= lt!1557824 e!2703409)))

(assert (=> d!1282787 (= c!738723 ((_ is Nil!48757) lt!1557419))))

(assert (=> d!1282787 (noDuplicateKeys!419 lt!1557419)))

(assert (=> d!1282787 (= (addToMapMapFromBucket!127 lt!1557419 lt!1557423) lt!1557824)))

(declare-fun bm!302022 () Bool)

(assert (=> bm!302022 (= call!302027 (lemmaContainsAllItsOwnKeys!37 lt!1557423))))

(declare-fun b!4344289 () Bool)

(declare-fun res!1783360 () Bool)

(assert (=> b!4344289 (=> (not res!1783360) (not e!2703408))))

(assert (=> b!4344289 (= res!1783360 (forall!9007 (toList!2822 lt!1557423) lambda!137716))))

(declare-fun bm!302023 () Bool)

(assert (=> bm!302023 (= call!302026 (forall!9007 (ite c!738723 (toList!2822 lt!1557423) lt!1557419) (ite c!738723 lambda!137713 lambda!137715)))))

(declare-fun b!4344290 () Bool)

(assert (=> b!4344290 (= e!2703408 (invariantList!644 (toList!2822 lt!1557824)))))

(assert (= (and d!1282787 c!738723) b!4344287))

(assert (= (and d!1282787 (not c!738723)) b!4344288))

(assert (= (and b!4344288 res!1783359) b!4344286))

(assert (= (or b!4344287 b!4344288) bm!302022))

(assert (= (or b!4344287 b!4344288) bm!302021))

(assert (= (or b!4344287 b!4344288) bm!302023))

(assert (= (and d!1282787 res!1783358) b!4344289))

(assert (= (and b!4344289 res!1783360) b!4344290))

(declare-fun m!4950405 () Bool)

(assert (=> bm!302021 m!4950405))

(assert (=> bm!302022 m!4950047))

(declare-fun m!4950407 () Bool)

(assert (=> bm!302023 m!4950407))

(declare-fun m!4950409 () Bool)

(assert (=> d!1282787 m!4950409))

(assert (=> d!1282787 m!4950205))

(declare-fun m!4950411 () Bool)

(assert (=> b!4344289 m!4950411))

(declare-fun m!4950413 () Bool)

(assert (=> b!4344288 m!4950413))

(declare-fun m!4950415 () Bool)

(assert (=> b!4344288 m!4950415))

(declare-fun m!4950417 () Bool)

(assert (=> b!4344288 m!4950417))

(declare-fun m!4950419 () Bool)

(assert (=> b!4344288 m!4950419))

(declare-fun m!4950421 () Bool)

(assert (=> b!4344288 m!4950421))

(declare-fun m!4950423 () Bool)

(assert (=> b!4344288 m!4950423))

(declare-fun m!4950425 () Bool)

(assert (=> b!4344288 m!4950425))

(declare-fun m!4950427 () Bool)

(assert (=> b!4344288 m!4950427))

(assert (=> b!4344288 m!4950413))

(declare-fun m!4950429 () Bool)

(assert (=> b!4344288 m!4950429))

(declare-fun m!4950431 () Bool)

(assert (=> b!4344288 m!4950431))

(declare-fun m!4950433 () Bool)

(assert (=> b!4344288 m!4950433))

(assert (=> b!4344288 m!4950427))

(declare-fun m!4950435 () Bool)

(assert (=> b!4344290 m!4950435))

(assert (=> b!4344286 m!4950427))

(assert (=> b!4344053 d!1282787))

(declare-fun d!1282789 () Bool)

(assert (=> d!1282789 (= (eq!209 lt!1557425 lt!1557428) (= (content!7640 (toList!2822 lt!1557425)) (content!7640 (toList!2822 lt!1557428))))))

(declare-fun bs!627028 () Bool)

(assert (= bs!627028 d!1282789))

(declare-fun m!4950437 () Bool)

(assert (=> bs!627028 m!4950437))

(assert (=> bs!627028 m!4950379))

(assert (=> b!4344064 d!1282789))

(declare-fun d!1282791 () Bool)

(declare-fun e!2703414 () Bool)

(assert (=> d!1282791 e!2703414))

(declare-fun res!1783363 () Bool)

(assert (=> d!1282791 (=> res!1783363 e!2703414)))

(declare-fun lt!1557837 () Bool)

(assert (=> d!1282791 (= res!1783363 (not lt!1557837))))

(declare-fun lt!1557836 () Bool)

(assert (=> d!1282791 (= lt!1557837 lt!1557836)))

(declare-fun lt!1557835 () Unit!70181)

(declare-fun e!2703415 () Unit!70181)

(assert (=> d!1282791 (= lt!1557835 e!2703415)))

(declare-fun c!738726 () Bool)

(assert (=> d!1282791 (= c!738726 lt!1557836)))

(declare-fun containsKey!583 (List!48882 (_ BitVec 64)) Bool)

(assert (=> d!1282791 (= lt!1557836 (containsKey!583 (toList!2821 lm!1707) hash!377))))

(assert (=> d!1282791 (= (contains!10867 lm!1707 hash!377) lt!1557837)))

(declare-fun b!4344297 () Bool)

(declare-fun lt!1557838 () Unit!70181)

(assert (=> b!4344297 (= e!2703415 lt!1557838)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!299 (List!48882 (_ BitVec 64)) Unit!70181)

(assert (=> b!4344297 (= lt!1557838 (lemmaContainsKeyImpliesGetValueByKeyDefined!299 (toList!2821 lm!1707) hash!377))))

(declare-fun isDefined!7696 (Option!10400) Bool)

(assert (=> b!4344297 (isDefined!7696 (getValueByKey!386 (toList!2821 lm!1707) hash!377))))

(declare-fun b!4344298 () Bool)

(declare-fun Unit!70274 () Unit!70181)

(assert (=> b!4344298 (= e!2703415 Unit!70274)))

(declare-fun b!4344299 () Bool)

(assert (=> b!4344299 (= e!2703414 (isDefined!7696 (getValueByKey!386 (toList!2821 lm!1707) hash!377)))))

(assert (= (and d!1282791 c!738726) b!4344297))

(assert (= (and d!1282791 (not c!738726)) b!4344298))

(assert (= (and d!1282791 (not res!1783363)) b!4344299))

(declare-fun m!4950439 () Bool)

(assert (=> d!1282791 m!4950439))

(declare-fun m!4950441 () Bool)

(assert (=> b!4344297 m!4950441))

(declare-fun m!4950443 () Bool)

(assert (=> b!4344297 m!4950443))

(assert (=> b!4344297 m!4950443))

(declare-fun m!4950445 () Bool)

(assert (=> b!4344297 m!4950445))

(assert (=> b!4344299 m!4950443))

(assert (=> b!4344299 m!4950443))

(assert (=> b!4344299 m!4950445))

(assert (=> b!4344060 d!1282791))

(declare-fun d!1282793 () Bool)

(declare-fun res!1783364 () Bool)

(declare-fun e!2703416 () Bool)

(assert (=> d!1282793 (=> res!1783364 e!2703416)))

(assert (=> d!1282793 (= res!1783364 ((_ is Nil!48758) (toList!2821 lt!1557416)))))

(assert (=> d!1282793 (= (forall!9005 (toList!2821 lt!1557416) lambda!137605) e!2703416)))

(declare-fun b!4344300 () Bool)

(declare-fun e!2703417 () Bool)

(assert (=> b!4344300 (= e!2703416 e!2703417)))

(declare-fun res!1783365 () Bool)

(assert (=> b!4344300 (=> (not res!1783365) (not e!2703417))))

(assert (=> b!4344300 (= res!1783365 (dynLambda!20589 lambda!137605 (h!54275 (toList!2821 lt!1557416))))))

(declare-fun b!4344301 () Bool)

(assert (=> b!4344301 (= e!2703417 (forall!9005 (t!355802 (toList!2821 lt!1557416)) lambda!137605))))

(assert (= (and d!1282793 (not res!1783364)) b!4344300))

(assert (= (and b!4344300 res!1783365) b!4344301))

(declare-fun b_lambda!129993 () Bool)

(assert (=> (not b_lambda!129993) (not b!4344300)))

(declare-fun m!4950447 () Bool)

(assert (=> b!4344300 m!4950447))

(declare-fun m!4950449 () Bool)

(assert (=> b!4344301 m!4950449))

(assert (=> b!4344061 d!1282793))

(declare-fun d!1282795 () Bool)

(declare-fun res!1783366 () Bool)

(declare-fun e!2703418 () Bool)

(assert (=> d!1282795 (=> res!1783366 e!2703418)))

(assert (=> d!1282795 (= res!1783366 ((_ is Nil!48758) (toList!2821 lm!1707)))))

(assert (=> d!1282795 (= (forall!9005 (toList!2821 lm!1707) lambda!137605) e!2703418)))

(declare-fun b!4344302 () Bool)

(declare-fun e!2703419 () Bool)

(assert (=> b!4344302 (= e!2703418 e!2703419)))

(declare-fun res!1783367 () Bool)

(assert (=> b!4344302 (=> (not res!1783367) (not e!2703419))))

(assert (=> b!4344302 (= res!1783367 (dynLambda!20589 lambda!137605 (h!54275 (toList!2821 lm!1707))))))

(declare-fun b!4344303 () Bool)

(assert (=> b!4344303 (= e!2703419 (forall!9005 (t!355802 (toList!2821 lm!1707)) lambda!137605))))

(assert (= (and d!1282795 (not res!1783366)) b!4344302))

(assert (= (and b!4344302 res!1783367) b!4344303))

(declare-fun b_lambda!129995 () Bool)

(assert (=> (not b_lambda!129995) (not b!4344302)))

(declare-fun m!4950451 () Bool)

(assert (=> b!4344302 m!4950451))

(declare-fun m!4950453 () Bool)

(assert (=> b!4344303 m!4950453))

(assert (=> start!419160 d!1282795))

(declare-fun d!1282797 () Bool)

(declare-fun isStrictlySorted!70 (List!48882) Bool)

(assert (=> d!1282797 (= (inv!64301 lm!1707) (isStrictlySorted!70 (toList!2821 lm!1707)))))

(declare-fun bs!627029 () Bool)

(assert (= bs!627029 d!1282797))

(declare-fun m!4950455 () Bool)

(assert (=> bs!627029 m!4950455))

(assert (=> start!419160 d!1282797))

(declare-fun d!1282799 () Bool)

(declare-fun res!1783372 () Bool)

(declare-fun e!2703424 () Bool)

(assert (=> d!1282799 (=> res!1783372 e!2703424)))

(assert (=> d!1282799 (= res!1783372 (not ((_ is Cons!48757) newBucket!200)))))

(assert (=> d!1282799 (= (noDuplicateKeys!419 newBucket!200) e!2703424)))

(declare-fun b!4344308 () Bool)

(declare-fun e!2703425 () Bool)

(assert (=> b!4344308 (= e!2703424 e!2703425)))

(declare-fun res!1783373 () Bool)

(assert (=> b!4344308 (=> (not res!1783373) (not e!2703425))))

(assert (=> b!4344308 (= res!1783373 (not (containsKey!582 (t!355801 newBucket!200) (_1!27317 (h!54274 newBucket!200)))))))

(declare-fun b!4344309 () Bool)

(assert (=> b!4344309 (= e!2703425 (noDuplicateKeys!419 (t!355801 newBucket!200)))))

(assert (= (and d!1282799 (not res!1783372)) b!4344308))

(assert (= (and b!4344308 res!1783373) b!4344309))

(declare-fun m!4950457 () Bool)

(assert (=> b!4344308 m!4950457))

(declare-fun m!4950459 () Bool)

(assert (=> b!4344309 m!4950459))

(assert (=> b!4344057 d!1282799))

(assert (=> b!4344059 d!1282793))

(declare-fun d!1282801 () Bool)

(declare-fun e!2703426 () Bool)

(assert (=> d!1282801 e!2703426))

(declare-fun res!1783374 () Bool)

(assert (=> d!1282801 (=> (not res!1783374) (not e!2703426))))

(declare-fun lt!1557840 () ListLongMap!1471)

(assert (=> d!1282801 (= res!1783374 (contains!10867 lt!1557840 (_1!27318 lt!1557434)))))

(declare-fun lt!1557842 () List!48882)

(assert (=> d!1282801 (= lt!1557840 (ListLongMap!1472 lt!1557842))))

(declare-fun lt!1557839 () Unit!70181)

(declare-fun lt!1557841 () Unit!70181)

(assert (=> d!1282801 (= lt!1557839 lt!1557841)))

(assert (=> d!1282801 (= (getValueByKey!386 lt!1557842 (_1!27318 lt!1557434)) (Some!10399 (_2!27318 lt!1557434)))))

(assert (=> d!1282801 (= lt!1557841 (lemmaContainsTupThenGetReturnValue!169 lt!1557842 (_1!27318 lt!1557434) (_2!27318 lt!1557434)))))

(assert (=> d!1282801 (= lt!1557842 (insertStrictlySorted!101 (toList!2821 lm!1707) (_1!27318 lt!1557434) (_2!27318 lt!1557434)))))

(assert (=> d!1282801 (= (+!509 lm!1707 lt!1557434) lt!1557840)))

(declare-fun b!4344310 () Bool)

(declare-fun res!1783375 () Bool)

(assert (=> b!4344310 (=> (not res!1783375) (not e!2703426))))

(assert (=> b!4344310 (= res!1783375 (= (getValueByKey!386 (toList!2821 lt!1557840) (_1!27318 lt!1557434)) (Some!10399 (_2!27318 lt!1557434))))))

(declare-fun b!4344311 () Bool)

(assert (=> b!4344311 (= e!2703426 (contains!10868 (toList!2821 lt!1557840) lt!1557434))))

(assert (= (and d!1282801 res!1783374) b!4344310))

(assert (= (and b!4344310 res!1783375) b!4344311))

(declare-fun m!4950461 () Bool)

(assert (=> d!1282801 m!4950461))

(declare-fun m!4950463 () Bool)

(assert (=> d!1282801 m!4950463))

(declare-fun m!4950465 () Bool)

(assert (=> d!1282801 m!4950465))

(declare-fun m!4950467 () Bool)

(assert (=> d!1282801 m!4950467))

(declare-fun m!4950469 () Bool)

(assert (=> b!4344310 m!4950469))

(declare-fun m!4950471 () Bool)

(assert (=> b!4344311 m!4950471))

(assert (=> b!4344059 d!1282801))

(declare-fun d!1282803 () Bool)

(assert (=> d!1282803 (forall!9005 (toList!2821 (+!509 lm!1707 (tuple2!48049 hash!377 newBucket!200))) lambda!137605)))

(declare-fun lt!1557845 () Unit!70181)

(declare-fun choose!26632 (ListLongMap!1471 Int (_ BitVec 64) List!48881) Unit!70181)

(assert (=> d!1282803 (= lt!1557845 (choose!26632 lm!1707 lambda!137605 hash!377 newBucket!200))))

(declare-fun e!2703429 () Bool)

(assert (=> d!1282803 e!2703429))

(declare-fun res!1783378 () Bool)

(assert (=> d!1282803 (=> (not res!1783378) (not e!2703429))))

(assert (=> d!1282803 (= res!1783378 (forall!9005 (toList!2821 lm!1707) lambda!137605))))

(assert (=> d!1282803 (= (addValidProp!73 lm!1707 lambda!137605 hash!377 newBucket!200) lt!1557845)))

(declare-fun b!4344315 () Bool)

(assert (=> b!4344315 (= e!2703429 (dynLambda!20589 lambda!137605 (tuple2!48049 hash!377 newBucket!200)))))

(assert (= (and d!1282803 res!1783378) b!4344315))

(declare-fun b_lambda!129997 () Bool)

(assert (=> (not b_lambda!129997) (not b!4344315)))

(declare-fun m!4950473 () Bool)

(assert (=> d!1282803 m!4950473))

(declare-fun m!4950475 () Bool)

(assert (=> d!1282803 m!4950475))

(declare-fun m!4950477 () Bool)

(assert (=> d!1282803 m!4950477))

(assert (=> d!1282803 m!4949803))

(declare-fun m!4950479 () Bool)

(assert (=> b!4344315 m!4950479))

(assert (=> b!4344059 d!1282803))

(assert (=> b!4344059 d!1282795))

(declare-fun d!1282805 () Bool)

(declare-fun hash!1386 (Hashable!4811 K!10115) (_ BitVec 64))

(assert (=> d!1282805 (= (hash!1382 hashF!1247 key!3918) (hash!1386 hashF!1247 key!3918))))

(declare-fun bs!627030 () Bool)

(assert (= bs!627030 d!1282805))

(declare-fun m!4950481 () Bool)

(assert (=> bs!627030 m!4950481))

(assert (=> b!4344065 d!1282805))

(declare-fun b!4344334 () Bool)

(declare-fun e!2703445 () Bool)

(declare-fun contains!10872 (List!48884 K!10115) Bool)

(assert (=> b!4344334 (= e!2703445 (not (contains!10872 (keys!16424 lt!1557417) key!3918)))))

(declare-fun b!4344335 () Bool)

(declare-fun e!2703443 () Unit!70181)

(declare-fun lt!1557869 () Unit!70181)

(assert (=> b!4344335 (= e!2703443 lt!1557869)))

(declare-fun lt!1557864 () Unit!70181)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!300 (List!48881 K!10115) Unit!70181)

(assert (=> b!4344335 (= lt!1557864 (lemmaContainsKeyImpliesGetValueByKeyDefined!300 (toList!2822 lt!1557417) key!3918))))

(declare-fun isDefined!7697 (Option!10401) Bool)

(assert (=> b!4344335 (isDefined!7697 (getValueByKey!387 (toList!2822 lt!1557417) key!3918))))

(declare-fun lt!1557867 () Unit!70181)

(assert (=> b!4344335 (= lt!1557867 lt!1557864)))

(declare-fun lemmaInListThenGetKeysListContains!89 (List!48881 K!10115) Unit!70181)

(assert (=> b!4344335 (= lt!1557869 (lemmaInListThenGetKeysListContains!89 (toList!2822 lt!1557417) key!3918))))

(declare-fun call!302031 () Bool)

(assert (=> b!4344335 call!302031))

(declare-fun b!4344337 () Bool)

(assert (=> b!4344337 false))

(declare-fun lt!1557868 () Unit!70181)

(declare-fun lt!1557863 () Unit!70181)

(assert (=> b!4344337 (= lt!1557868 lt!1557863)))

(declare-fun containsKey!584 (List!48881 K!10115) Bool)

(assert (=> b!4344337 (containsKey!584 (toList!2822 lt!1557417) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!90 (List!48881 K!10115) Unit!70181)

(assert (=> b!4344337 (= lt!1557863 (lemmaInGetKeysListThenContainsKey!90 (toList!2822 lt!1557417) key!3918))))

(declare-fun e!2703446 () Unit!70181)

(declare-fun Unit!70275 () Unit!70181)

(assert (=> b!4344337 (= e!2703446 Unit!70275)))

(declare-fun b!4344338 () Bool)

(declare-fun e!2703447 () Bool)

(assert (=> b!4344338 (= e!2703447 (contains!10872 (keys!16424 lt!1557417) key!3918))))

(declare-fun b!4344339 () Bool)

(declare-fun e!2703442 () List!48884)

(declare-fun getKeysList!92 (List!48881) List!48884)

(assert (=> b!4344339 (= e!2703442 (getKeysList!92 (toList!2822 lt!1557417)))))

(declare-fun bm!302026 () Bool)

(assert (=> bm!302026 (= call!302031 (contains!10872 e!2703442 key!3918))))

(declare-fun c!738733 () Bool)

(declare-fun c!738735 () Bool)

(assert (=> bm!302026 (= c!738733 c!738735)))

(declare-fun b!4344340 () Bool)

(assert (=> b!4344340 (= e!2703443 e!2703446)))

(declare-fun c!738734 () Bool)

(assert (=> b!4344340 (= c!738734 call!302031)))

(declare-fun b!4344341 () Bool)

(assert (=> b!4344341 (= e!2703442 (keys!16424 lt!1557417))))

(declare-fun b!4344342 () Bool)

(declare-fun e!2703444 () Bool)

(assert (=> b!4344342 (= e!2703444 e!2703447)))

(declare-fun res!1783385 () Bool)

(assert (=> b!4344342 (=> (not res!1783385) (not e!2703447))))

(assert (=> b!4344342 (= res!1783385 (isDefined!7697 (getValueByKey!387 (toList!2822 lt!1557417) key!3918)))))

(declare-fun d!1282807 () Bool)

(assert (=> d!1282807 e!2703444))

(declare-fun res!1783386 () Bool)

(assert (=> d!1282807 (=> res!1783386 e!2703444)))

(assert (=> d!1282807 (= res!1783386 e!2703445)))

(declare-fun res!1783387 () Bool)

(assert (=> d!1282807 (=> (not res!1783387) (not e!2703445))))

(declare-fun lt!1557865 () Bool)

(assert (=> d!1282807 (= res!1783387 (not lt!1557865))))

(declare-fun lt!1557862 () Bool)

(assert (=> d!1282807 (= lt!1557865 lt!1557862)))

(declare-fun lt!1557866 () Unit!70181)

(assert (=> d!1282807 (= lt!1557866 e!2703443)))

(assert (=> d!1282807 (= c!738735 lt!1557862)))

(assert (=> d!1282807 (= lt!1557862 (containsKey!584 (toList!2822 lt!1557417) key!3918))))

(assert (=> d!1282807 (= (contains!10866 lt!1557417 key!3918) lt!1557865)))

(declare-fun b!4344336 () Bool)

(declare-fun Unit!70276 () Unit!70181)

(assert (=> b!4344336 (= e!2703446 Unit!70276)))

(assert (= (and d!1282807 c!738735) b!4344335))

(assert (= (and d!1282807 (not c!738735)) b!4344340))

(assert (= (and b!4344340 c!738734) b!4344337))

(assert (= (and b!4344340 (not c!738734)) b!4344336))

(assert (= (or b!4344335 b!4344340) bm!302026))

(assert (= (and bm!302026 c!738733) b!4344339))

(assert (= (and bm!302026 (not c!738733)) b!4344341))

(assert (= (and d!1282807 res!1783387) b!4344334))

(assert (= (and d!1282807 (not res!1783386)) b!4344342))

(assert (= (and b!4344342 res!1783385) b!4344338))

(declare-fun m!4950483 () Bool)

(assert (=> b!4344335 m!4950483))

(declare-fun m!4950485 () Bool)

(assert (=> b!4344335 m!4950485))

(assert (=> b!4344335 m!4950485))

(declare-fun m!4950487 () Bool)

(assert (=> b!4344335 m!4950487))

(declare-fun m!4950489 () Bool)

(assert (=> b!4344335 m!4950489))

(assert (=> b!4344342 m!4950485))

(assert (=> b!4344342 m!4950485))

(assert (=> b!4344342 m!4950487))

(declare-fun m!4950491 () Bool)

(assert (=> b!4344339 m!4950491))

(declare-fun m!4950493 () Bool)

(assert (=> b!4344337 m!4950493))

(declare-fun m!4950495 () Bool)

(assert (=> b!4344337 m!4950495))

(declare-fun m!4950497 () Bool)

(assert (=> bm!302026 m!4950497))

(assert (=> b!4344338 m!4949901))

(assert (=> b!4344338 m!4949901))

(declare-fun m!4950499 () Bool)

(assert (=> b!4344338 m!4950499))

(assert (=> d!1282807 m!4950493))

(assert (=> b!4344341 m!4949901))

(assert (=> b!4344334 m!4949901))

(assert (=> b!4344334 m!4949901))

(assert (=> b!4344334 m!4950499))

(assert (=> b!4344054 d!1282807))

(declare-fun bs!627031 () Bool)

(declare-fun d!1282809 () Bool)

(assert (= bs!627031 (and d!1282809 d!1282785)))

(declare-fun lambda!137717 () Int)

(assert (=> bs!627031 (= lambda!137717 lambda!137712)))

(declare-fun bs!627032 () Bool)

(assert (= bs!627032 (and d!1282809 d!1282723)))

(assert (=> bs!627032 (= lambda!137717 lambda!137691)))

(declare-fun bs!627033 () Bool)

(assert (= bs!627033 (and d!1282809 d!1282759)))

(assert (=> bs!627033 (= lambda!137717 lambda!137707)))

(declare-fun bs!627034 () Bool)

(assert (= bs!627034 (and d!1282809 d!1282743)))

(assert (=> bs!627034 (= lambda!137717 lambda!137706)))

(declare-fun bs!627035 () Bool)

(assert (= bs!627035 (and d!1282809 start!419160)))

(assert (=> bs!627035 (= lambda!137717 lambda!137605)))

(declare-fun lt!1557870 () ListMap!2065)

(assert (=> d!1282809 (invariantList!644 (toList!2822 lt!1557870))))

(declare-fun e!2703448 () ListMap!2065)

(assert (=> d!1282809 (= lt!1557870 e!2703448)))

(declare-fun c!738736 () Bool)

(assert (=> d!1282809 (= c!738736 ((_ is Cons!48758) (toList!2821 lm!1707)))))

(assert (=> d!1282809 (forall!9005 (toList!2821 lm!1707) lambda!137717)))

(assert (=> d!1282809 (= (extractMap!478 (toList!2821 lm!1707)) lt!1557870)))

(declare-fun b!4344343 () Bool)

(assert (=> b!4344343 (= e!2703448 (addToMapMapFromBucket!127 (_2!27318 (h!54275 (toList!2821 lm!1707))) (extractMap!478 (t!355802 (toList!2821 lm!1707)))))))

(declare-fun b!4344344 () Bool)

(assert (=> b!4344344 (= e!2703448 (ListMap!2066 Nil!48757))))

(assert (= (and d!1282809 c!738736) b!4344343))

(assert (= (and d!1282809 (not c!738736)) b!4344344))

(declare-fun m!4950501 () Bool)

(assert (=> d!1282809 m!4950501))

(declare-fun m!4950503 () Bool)

(assert (=> d!1282809 m!4950503))

(assert (=> b!4344343 m!4949821))

(assert (=> b!4344343 m!4949821))

(declare-fun m!4950505 () Bool)

(assert (=> b!4344343 m!4950505))

(assert (=> b!4344054 d!1282809))

(declare-fun bs!627036 () Bool)

(declare-fun d!1282811 () Bool)

(assert (= bs!627036 (and d!1282811 d!1282785)))

(declare-fun lambda!137720 () Int)

(assert (=> bs!627036 (not (= lambda!137720 lambda!137712))))

(declare-fun bs!627037 () Bool)

(assert (= bs!627037 (and d!1282811 d!1282723)))

(assert (=> bs!627037 (not (= lambda!137720 lambda!137691))))

(declare-fun bs!627038 () Bool)

(assert (= bs!627038 (and d!1282811 d!1282809)))

(assert (=> bs!627038 (not (= lambda!137720 lambda!137717))))

(declare-fun bs!627039 () Bool)

(assert (= bs!627039 (and d!1282811 d!1282759)))

(assert (=> bs!627039 (not (= lambda!137720 lambda!137707))))

(declare-fun bs!627040 () Bool)

(assert (= bs!627040 (and d!1282811 d!1282743)))

(assert (=> bs!627040 (not (= lambda!137720 lambda!137706))))

(declare-fun bs!627041 () Bool)

(assert (= bs!627041 (and d!1282811 start!419160)))

(assert (=> bs!627041 (not (= lambda!137720 lambda!137605))))

(assert (=> d!1282811 true))

(assert (=> d!1282811 (= (allKeysSameHashInMap!523 lm!1707 hashF!1247) (forall!9005 (toList!2821 lm!1707) lambda!137720))))

(declare-fun bs!627042 () Bool)

(assert (= bs!627042 d!1282811))

(declare-fun m!4950507 () Bool)

(assert (=> bs!627042 m!4950507))

(assert (=> b!4344055 d!1282811))

(declare-fun d!1282813 () Bool)

(declare-fun get!15826 (Option!10400) List!48881)

(assert (=> d!1282813 (= (apply!11271 lm!1707 hash!377) (get!15826 (getValueByKey!386 (toList!2821 lm!1707) hash!377)))))

(declare-fun bs!627043 () Bool)

(assert (= bs!627043 d!1282813))

(assert (=> bs!627043 m!4950443))

(assert (=> bs!627043 m!4950443))

(declare-fun m!4950509 () Bool)

(assert (=> bs!627043 m!4950509))

(assert (=> b!4344066 d!1282813))

(declare-fun d!1282815 () Bool)

(declare-fun lt!1557873 () Bool)

(declare-fun content!7642 (List!48882) (InoxSet tuple2!48048))

(assert (=> d!1282815 (= lt!1557873 (select (content!7642 (toList!2821 lm!1707)) lt!1557430))))

(declare-fun e!2703454 () Bool)

(assert (=> d!1282815 (= lt!1557873 e!2703454)))

(declare-fun res!1783392 () Bool)

(assert (=> d!1282815 (=> (not res!1783392) (not e!2703454))))

(assert (=> d!1282815 (= res!1783392 ((_ is Cons!48758) (toList!2821 lm!1707)))))

(assert (=> d!1282815 (= (contains!10868 (toList!2821 lm!1707) lt!1557430) lt!1557873)))

(declare-fun b!4344351 () Bool)

(declare-fun e!2703453 () Bool)

(assert (=> b!4344351 (= e!2703454 e!2703453)))

(declare-fun res!1783393 () Bool)

(assert (=> b!4344351 (=> res!1783393 e!2703453)))

(assert (=> b!4344351 (= res!1783393 (= (h!54275 (toList!2821 lm!1707)) lt!1557430))))

(declare-fun b!4344352 () Bool)

(assert (=> b!4344352 (= e!2703453 (contains!10868 (t!355802 (toList!2821 lm!1707)) lt!1557430))))

(assert (= (and d!1282815 res!1783392) b!4344351))

(assert (= (and b!4344351 (not res!1783393)) b!4344352))

(declare-fun m!4950511 () Bool)

(assert (=> d!1282815 m!4950511))

(declare-fun m!4950513 () Bool)

(assert (=> d!1282815 m!4950513))

(declare-fun m!4950515 () Bool)

(assert (=> b!4344352 m!4950515))

(assert (=> b!4344066 d!1282815))

(declare-fun d!1282817 () Bool)

(assert (=> d!1282817 (contains!10868 (toList!2821 lm!1707) (tuple2!48049 hash!377 lt!1557418))))

(declare-fun lt!1557876 () Unit!70181)

(declare-fun choose!26633 (List!48882 (_ BitVec 64) List!48881) Unit!70181)

(assert (=> d!1282817 (= lt!1557876 (choose!26633 (toList!2821 lm!1707) hash!377 lt!1557418))))

(declare-fun e!2703457 () Bool)

(assert (=> d!1282817 e!2703457))

(declare-fun res!1783396 () Bool)

(assert (=> d!1282817 (=> (not res!1783396) (not e!2703457))))

(assert (=> d!1282817 (= res!1783396 (isStrictlySorted!70 (toList!2821 lm!1707)))))

(assert (=> d!1282817 (= (lemmaGetValueByKeyImpliesContainsTuple!266 (toList!2821 lm!1707) hash!377 lt!1557418) lt!1557876)))

(declare-fun b!4344355 () Bool)

(assert (=> b!4344355 (= e!2703457 (= (getValueByKey!386 (toList!2821 lm!1707) hash!377) (Some!10399 lt!1557418)))))

(assert (= (and d!1282817 res!1783396) b!4344355))

(declare-fun m!4950517 () Bool)

(assert (=> d!1282817 m!4950517))

(declare-fun m!4950519 () Bool)

(assert (=> d!1282817 m!4950519))

(assert (=> d!1282817 m!4950455))

(assert (=> b!4344355 m!4950443))

(assert (=> b!4344066 d!1282817))

(declare-fun d!1282819 () Bool)

(assert (=> d!1282819 (dynLambda!20589 lambda!137605 lt!1557430)))

(declare-fun lt!1557879 () Unit!70181)

(declare-fun choose!26634 (List!48882 Int tuple2!48048) Unit!70181)

(assert (=> d!1282819 (= lt!1557879 (choose!26634 (toList!2821 lm!1707) lambda!137605 lt!1557430))))

(declare-fun e!2703460 () Bool)

(assert (=> d!1282819 e!2703460))

(declare-fun res!1783399 () Bool)

(assert (=> d!1282819 (=> (not res!1783399) (not e!2703460))))

(assert (=> d!1282819 (= res!1783399 (forall!9005 (toList!2821 lm!1707) lambda!137605))))

(assert (=> d!1282819 (= (forallContained!1655 (toList!2821 lm!1707) lambda!137605 lt!1557430) lt!1557879)))

(declare-fun b!4344358 () Bool)

(assert (=> b!4344358 (= e!2703460 (contains!10868 (toList!2821 lm!1707) lt!1557430))))

(assert (= (and d!1282819 res!1783399) b!4344358))

(declare-fun b_lambda!129999 () Bool)

(assert (=> (not b_lambda!129999) (not d!1282819)))

(declare-fun m!4950521 () Bool)

(assert (=> d!1282819 m!4950521))

(declare-fun m!4950523 () Bool)

(assert (=> d!1282819 m!4950523))

(assert (=> d!1282819 m!4949803))

(assert (=> b!4344358 m!4949807))

(assert (=> b!4344066 d!1282819))

(declare-fun b!4344369 () Bool)

(declare-fun e!2703465 () List!48881)

(assert (=> b!4344369 (= e!2703465 (Cons!48757 (h!54274 lt!1557418) (removePairForKey!389 (t!355801 lt!1557418) key!3918)))))

(declare-fun d!1282821 () Bool)

(declare-fun lt!1557882 () List!48881)

(assert (=> d!1282821 (not (containsKey!582 lt!1557882 key!3918))))

(declare-fun e!2703466 () List!48881)

(assert (=> d!1282821 (= lt!1557882 e!2703466)))

(declare-fun c!738741 () Bool)

(assert (=> d!1282821 (= c!738741 (and ((_ is Cons!48757) lt!1557418) (= (_1!27317 (h!54274 lt!1557418)) key!3918)))))

(assert (=> d!1282821 (noDuplicateKeys!419 lt!1557418)))

(assert (=> d!1282821 (= (removePairForKey!389 lt!1557418 key!3918) lt!1557882)))

(declare-fun b!4344367 () Bool)

(assert (=> b!4344367 (= e!2703466 (t!355801 lt!1557418))))

(declare-fun b!4344368 () Bool)

(assert (=> b!4344368 (= e!2703466 e!2703465)))

(declare-fun c!738742 () Bool)

(assert (=> b!4344368 (= c!738742 ((_ is Cons!48757) lt!1557418))))

(declare-fun b!4344370 () Bool)

(assert (=> b!4344370 (= e!2703465 Nil!48757)))

(assert (= (and d!1282821 c!738741) b!4344367))

(assert (= (and d!1282821 (not c!738741)) b!4344368))

(assert (= (and b!4344368 c!738742) b!4344369))

(assert (= (and b!4344368 (not c!738742)) b!4344370))

(declare-fun m!4950525 () Bool)

(assert (=> b!4344369 m!4950525))

(declare-fun m!4950527 () Bool)

(assert (=> d!1282821 m!4950527))

(declare-fun m!4950529 () Bool)

(assert (=> d!1282821 m!4950529))

(assert (=> b!4344066 d!1282821))

(declare-fun bs!627044 () Bool)

(declare-fun d!1282823 () Bool)

(assert (= bs!627044 (and d!1282823 b!4344209)))

(declare-fun lambda!137723 () Int)

(assert (=> bs!627044 (not (= lambda!137723 lambda!137698))))

(declare-fun bs!627045 () Bool)

(assert (= bs!627045 (and d!1282823 b!4344181)))

(assert (=> bs!627045 (not (= lambda!137723 lambda!137681))))

(assert (=> bs!627044 (not (= lambda!137723 lambda!137697))))

(declare-fun bs!627046 () Bool)

(assert (= bs!627046 (and d!1282823 b!4344266)))

(assert (=> bs!627046 (not (= lambda!137723 lambda!137708))))

(declare-fun bs!627047 () Bool)

(assert (= bs!627047 (and d!1282823 b!4344208)))

(assert (=> bs!627047 (not (= lambda!137723 lambda!137696))))

(declare-fun bs!627048 () Bool)

(assert (= bs!627048 (and d!1282823 b!4344267)))

(assert (=> bs!627048 (not (= lambda!137723 lambda!137710))))

(declare-fun bs!627049 () Bool)

(assert (= bs!627049 (and d!1282823 b!4344288)))

(assert (=> bs!627049 (not (= lambda!137723 lambda!137714))))

(declare-fun bs!627050 () Bool)

(assert (= bs!627050 (and d!1282823 b!4344287)))

(assert (=> bs!627050 (not (= lambda!137723 lambda!137713))))

(declare-fun bs!627051 () Bool)

(assert (= bs!627051 (and d!1282823 d!1282739)))

(assert (=> bs!627051 (not (= lambda!137723 lambda!137700))))

(declare-fun bs!627052 () Bool)

(assert (= bs!627052 (and d!1282823 b!4344180)))

(assert (=> bs!627052 (not (= lambda!137723 lambda!137680))))

(assert (=> bs!627049 (not (= lambda!137723 lambda!137715))))

(declare-fun bs!627053 () Bool)

(assert (= bs!627053 (and d!1282823 d!1282691)))

(assert (=> bs!627053 (not (= lambda!137723 lambda!137683))))

(assert (=> bs!627045 (not (= lambda!137723 lambda!137682))))

(declare-fun bs!627054 () Bool)

(assert (= bs!627054 (and d!1282823 d!1282787)))

(assert (=> bs!627054 (not (= lambda!137723 lambda!137716))))

(assert (=> bs!627048 (not (= lambda!137723 lambda!137709))))

(declare-fun bs!627055 () Bool)

(assert (= bs!627055 (and d!1282823 d!1282775)))

(assert (=> bs!627055 (not (= lambda!137723 lambda!137711))))

(assert (=> d!1282823 true))

(assert (=> d!1282823 true))

(assert (=> d!1282823 (= (allKeysSameHash!377 newBucket!200 hash!377 hashF!1247) (forall!9007 newBucket!200 lambda!137723))))

(declare-fun bs!627056 () Bool)

(assert (= bs!627056 d!1282823))

(declare-fun m!4950531 () Bool)

(assert (=> bs!627056 m!4950531))

(assert (=> b!4344056 d!1282823))

(declare-fun b!4344379 () Bool)

(declare-fun e!2703469 () Bool)

(declare-fun tp!1329372 () Bool)

(declare-fun tp!1329373 () Bool)

(assert (=> b!4344379 (= e!2703469 (and tp!1329372 tp!1329373))))

(assert (=> b!4344062 (= tp!1329358 e!2703469)))

(assert (= (and b!4344062 ((_ is Cons!48758) (toList!2821 lm!1707))) b!4344379))

(declare-fun e!2703472 () Bool)

(declare-fun tp!1329376 () Bool)

(declare-fun b!4344384 () Bool)

(assert (=> b!4344384 (= e!2703472 (and tp_is_empty!24913 tp_is_empty!24915 tp!1329376))))

(assert (=> b!4344058 (= tp!1329357 e!2703472)))

(assert (= (and b!4344058 ((_ is Cons!48757) (t!355801 newBucket!200))) b!4344384))

(declare-fun b_lambda!130001 () Bool)

(assert (= b_lambda!129999 (or start!419160 b_lambda!130001)))

(declare-fun bs!627057 () Bool)

(declare-fun d!1282825 () Bool)

(assert (= bs!627057 (and d!1282825 start!419160)))

(assert (=> bs!627057 (= (dynLambda!20589 lambda!137605 lt!1557430) (noDuplicateKeys!419 (_2!27318 lt!1557430)))))

(declare-fun m!4950533 () Bool)

(assert (=> bs!627057 m!4950533))

(assert (=> d!1282819 d!1282825))

(declare-fun b_lambda!130003 () Bool)

(assert (= b_lambda!129991 (or start!419160 b_lambda!130003)))

(declare-fun bs!627058 () Bool)

(declare-fun d!1282827 () Bool)

(assert (= bs!627058 (and d!1282827 start!419160)))

(assert (=> bs!627058 (= (dynLambda!20589 lambda!137605 (h!54275 (toList!2821 lt!1557424))) (noDuplicateKeys!419 (_2!27318 (h!54275 (toList!2821 lt!1557424)))))))

(declare-fun m!4950535 () Bool)

(assert (=> bs!627058 m!4950535))

(assert (=> b!4344280 d!1282827))

(declare-fun b_lambda!130005 () Bool)

(assert (= b_lambda!129993 (or start!419160 b_lambda!130005)))

(declare-fun bs!627059 () Bool)

(declare-fun d!1282829 () Bool)

(assert (= bs!627059 (and d!1282829 start!419160)))

(assert (=> bs!627059 (= (dynLambda!20589 lambda!137605 (h!54275 (toList!2821 lt!1557416))) (noDuplicateKeys!419 (_2!27318 (h!54275 (toList!2821 lt!1557416)))))))

(declare-fun m!4950537 () Bool)

(assert (=> bs!627059 m!4950537))

(assert (=> b!4344300 d!1282829))

(declare-fun b_lambda!130007 () Bool)

(assert (= b_lambda!129997 (or start!419160 b_lambda!130007)))

(declare-fun bs!627060 () Bool)

(declare-fun d!1282831 () Bool)

(assert (= bs!627060 (and d!1282831 start!419160)))

(assert (=> bs!627060 (= (dynLambda!20589 lambda!137605 (tuple2!48049 hash!377 newBucket!200)) (noDuplicateKeys!419 (_2!27318 (tuple2!48049 hash!377 newBucket!200))))))

(declare-fun m!4950539 () Bool)

(assert (=> bs!627060 m!4950539))

(assert (=> b!4344315 d!1282831))

(declare-fun b_lambda!130009 () Bool)

(assert (= b_lambda!129995 (or start!419160 b_lambda!130009)))

(declare-fun bs!627061 () Bool)

(declare-fun d!1282833 () Bool)

(assert (= bs!627061 (and d!1282833 start!419160)))

(assert (=> bs!627061 (= (dynLambda!20589 lambda!137605 (h!54275 (toList!2821 lm!1707))) (noDuplicateKeys!419 (_2!27318 (h!54275 (toList!2821 lm!1707)))))))

(declare-fun m!4950541 () Bool)

(assert (=> bs!627061 m!4950541))

(assert (=> b!4344302 d!1282833))

(check-sat (not d!1282819) (not b!4344334) (not d!1282803) (not b!4344337) (not b!4344309) (not b!4344299) (not d!1282775) (not b!4344311) (not b!4344289) (not d!1282813) (not d!1282791) (not d!1282773) (not bm!302019) (not b!4344297) (not b!4344342) (not d!1282761) (not d!1282743) (not d!1282777) (not d!1282817) (not b!4344281) (not bm!302026) (not bm!302014) tp_is_empty!24915 (not b!4344283) (not b!4344384) (not bm!302012) (not d!1282807) (not b!4344282) (not d!1282821) (not d!1282723) (not d!1282823) (not d!1282789) (not d!1282779) (not b!4344288) (not d!1282759) (not b!4344290) (not b!4344369) (not b!4344343) (not b_lambda!130001) (not b_lambda!130009) (not b!4344209) (not bs!627060) (not b!4344303) (not b!4344182) (not b!4344268) (not b_lambda!130003) (not d!1282739) (not b!4344335) (not bm!302003) (not d!1282811) (not bm!302013) (not b!4344267) (not b!4344235) (not bm!302021) (not b!4344352) (not b!4344379) (not b!4344284) (not bm!302022) (not b!4344265) (not d!1282801) (not b!4344308) (not b!4344274) (not b!4344264) (not bs!627058) (not bm!302005) (not d!1282783) (not bm!302004) (not b!4344275) (not b!4344197) (not b!4344339) (not d!1282815) (not b!4344310) (not d!1282809) (not b!4344269) (not b!4344211) (not b!4344286) (not b!4344179) (not bs!627059) (not d!1282797) (not d!1282681) (not b!4344207) (not b!4344301) (not b_lambda!130007) (not bs!627061) tp_is_empty!24913 (not d!1282735) (not b!4344210) (not bm!302023) (not b_lambda!130005) (not b!4344355) (not bm!302020) (not b!4344183) (not b!4344263) (not d!1282787) (not b!4344338) (not d!1282691) (not bm!302018) (not b!4344181) (not d!1282785) (not b!4344358) (not d!1282805) (not b!4344341) (not b!4344108) (not bs!627057))
(check-sat)
