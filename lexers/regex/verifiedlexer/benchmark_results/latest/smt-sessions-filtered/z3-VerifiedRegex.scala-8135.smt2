; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!418648 () Bool)

(assert start!418648)

(declare-fun b!4338309 () Bool)

(declare-fun res!1779901 () Bool)

(declare-fun e!2699384 () Bool)

(assert (=> b!4338309 (=> (not res!1779901) (not e!2699384))))

(declare-datatypes ((V!10326 0))(
  ( (V!10327 (val!16335 Int)) )
))
(declare-datatypes ((K!10080 0))(
  ( (K!10081 (val!16336 Int)) )
))
(declare-datatypes ((tuple2!47990 0))(
  ( (tuple2!47991 (_1!27289 K!10080) (_2!27289 V!10326)) )
))
(declare-datatypes ((List!48847 0))(
  ( (Nil!48723) (Cons!48723 (h!54234 tuple2!47990) (t!355763 List!48847)) )
))
(declare-datatypes ((tuple2!47992 0))(
  ( (tuple2!47993 (_1!27290 (_ BitVec 64)) (_2!27290 List!48847)) )
))
(declare-datatypes ((List!48848 0))(
  ( (Nil!48724) (Cons!48724 (h!54235 tuple2!47992) (t!355764 List!48848)) )
))
(declare-datatypes ((ListLongMap!1443 0))(
  ( (ListLongMap!1444 (toList!2793 List!48848)) )
))
(declare-fun lm!1707 () ListLongMap!1443)

(declare-fun key!3918 () K!10080)

(declare-datatypes ((ListMap!2037 0))(
  ( (ListMap!2038 (toList!2794 List!48847)) )
))
(declare-fun contains!10812 (ListMap!2037 K!10080) Bool)

(declare-fun extractMap!464 (List!48848) ListMap!2037)

(assert (=> b!4338309 (= res!1779901 (contains!10812 (extractMap!464 (toList!2793 lm!1707)) key!3918))))

(declare-fun b!4338310 () Bool)

(declare-fun e!2699382 () Bool)

(assert (=> b!4338310 (= e!2699384 (not e!2699382))))

(declare-fun res!1779894 () Bool)

(assert (=> b!4338310 (=> res!1779894 e!2699382)))

(declare-fun newBucket!200 () List!48847)

(declare-fun lt!1552544 () List!48847)

(assert (=> b!4338310 (= res!1779894 (not (= newBucket!200 lt!1552544)))))

(declare-fun lt!1552534 () tuple2!47990)

(declare-fun lt!1552547 () List!48847)

(assert (=> b!4338310 (= lt!1552544 (Cons!48723 lt!1552534 lt!1552547))))

(declare-fun lt!1552533 () List!48847)

(declare-fun removePairForKey!375 (List!48847 K!10080) List!48847)

(assert (=> b!4338310 (= lt!1552547 (removePairForKey!375 lt!1552533 key!3918))))

(declare-fun newValue!99 () V!10326)

(assert (=> b!4338310 (= lt!1552534 (tuple2!47991 key!3918 newValue!99))))

(declare-fun lambda!136629 () Int)

(declare-fun lt!1552545 () tuple2!47992)

(declare-datatypes ((Unit!69077 0))(
  ( (Unit!69078) )
))
(declare-fun lt!1552548 () Unit!69077)

(declare-fun forallContained!1633 (List!48848 Int tuple2!47992) Unit!69077)

(assert (=> b!4338310 (= lt!1552548 (forallContained!1633 (toList!2793 lm!1707) lambda!136629 lt!1552545))))

(declare-fun contains!10813 (List!48848 tuple2!47992) Bool)

(assert (=> b!4338310 (contains!10813 (toList!2793 lm!1707) lt!1552545)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4338310 (= lt!1552545 (tuple2!47993 hash!377 lt!1552533))))

(declare-fun lt!1552546 () Unit!69077)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!252 (List!48848 (_ BitVec 64) List!48847) Unit!69077)

(assert (=> b!4338310 (= lt!1552546 (lemmaGetValueByKeyImpliesContainsTuple!252 (toList!2793 lm!1707) hash!377 lt!1552533))))

(declare-fun apply!11257 (ListLongMap!1443 (_ BitVec 64)) List!48847)

(assert (=> b!4338310 (= lt!1552533 (apply!11257 lm!1707 hash!377))))

(declare-fun b!4338311 () Bool)

(declare-fun e!2699388 () Bool)

(declare-fun lt!1552542 () ListMap!2037)

(declare-fun lt!1552541 () ListMap!2037)

(declare-fun eq!195 (ListMap!2037 ListMap!2037) Bool)

(assert (=> b!4338311 (= e!2699388 (eq!195 lt!1552542 lt!1552541))))

(declare-fun b!4338312 () Bool)

(declare-fun res!1779896 () Bool)

(assert (=> b!4338312 (=> (not res!1779896) (not e!2699384))))

(declare-datatypes ((Hashable!4797 0))(
  ( (HashableExt!4796 (__x!30500 Int)) )
))
(declare-fun hashF!1247 () Hashable!4797)

(declare-fun allKeysSameHash!363 (List!48847 (_ BitVec 64) Hashable!4797) Bool)

(assert (=> b!4338312 (= res!1779896 (allKeysSameHash!363 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4338313 () Bool)

(declare-fun res!1779902 () Bool)

(assert (=> b!4338313 (=> (not res!1779902) (not e!2699384))))

(declare-fun hash!1362 (Hashable!4797 K!10080) (_ BitVec 64))

(assert (=> b!4338313 (= res!1779902 (= (hash!1362 hashF!1247 key!3918) hash!377))))

(declare-fun b!4338314 () Bool)

(declare-fun res!1779898 () Bool)

(assert (=> b!4338314 (=> (not res!1779898) (not e!2699384))))

(declare-fun contains!10814 (ListLongMap!1443 (_ BitVec 64)) Bool)

(assert (=> b!4338314 (= res!1779898 (contains!10814 lm!1707 hash!377))))

(declare-fun b!4338315 () Bool)

(declare-fun res!1779897 () Bool)

(declare-fun e!2699383 () Bool)

(assert (=> b!4338315 (=> (not res!1779897) (not e!2699383))))

(declare-fun lt!1552543 () ListLongMap!1443)

(declare-fun forall!8983 (List!48848 Int) Bool)

(assert (=> b!4338315 (= res!1779897 (forall!8983 (toList!2793 lt!1552543) lambda!136629))))

(declare-fun tp_is_empty!24859 () Bool)

(declare-fun tp!1329202 () Bool)

(declare-fun tp_is_empty!24857 () Bool)

(declare-fun b!4338316 () Bool)

(declare-fun e!2699386 () Bool)

(assert (=> b!4338316 (= e!2699386 (and tp_is_empty!24857 tp_is_empty!24859 tp!1329202))))

(declare-fun b!4338317 () Bool)

(declare-fun e!2699385 () Bool)

(assert (=> b!4338317 (= e!2699385 (forall!8983 (t!355764 (toList!2793 lm!1707)) lambda!136629))))

(declare-fun lt!1552539 () List!48847)

(assert (=> b!4338317 (= lt!1552539 lt!1552547)))

(declare-fun lt!1552540 () ListLongMap!1443)

(declare-fun +!481 (ListLongMap!1443 tuple2!47992) ListLongMap!1443)

(assert (=> b!4338317 (= lt!1552540 (+!481 lm!1707 (tuple2!47993 hash!377 lt!1552539)))))

(declare-fun tail!6903 (List!48847) List!48847)

(assert (=> b!4338317 (= lt!1552539 (tail!6903 newBucket!200))))

(assert (=> b!4338317 e!2699388))

(declare-fun res!1779899 () Bool)

(assert (=> b!4338317 (=> (not res!1779899) (not e!2699388))))

(declare-fun lt!1552531 () ListMap!2037)

(assert (=> b!4338317 (= res!1779899 (eq!195 lt!1552531 lt!1552541))))

(declare-fun lt!1552532 () ListMap!2037)

(declare-fun +!482 (ListMap!2037 tuple2!47990) ListMap!2037)

(declare-fun addToMapMapFromBucket!113 (List!48847 ListMap!2037) ListMap!2037)

(assert (=> b!4338317 (= lt!1552541 (+!482 (addToMapMapFromBucket!113 lt!1552547 lt!1552532) lt!1552534))))

(declare-fun lt!1552538 () Unit!69077)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!24 (ListMap!2037 K!10080 V!10326 List!48847) Unit!69077)

(assert (=> b!4338317 (= lt!1552538 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!24 lt!1552532 key!3918 newValue!99 lt!1552547))))

(assert (=> b!4338317 (= lt!1552542 lt!1552531)))

(assert (=> b!4338317 (= lt!1552531 (addToMapMapFromBucket!113 lt!1552547 (+!482 lt!1552532 lt!1552534)))))

(declare-fun lt!1552536 () ListMap!2037)

(assert (=> b!4338317 (= lt!1552536 lt!1552542)))

(assert (=> b!4338317 (= lt!1552542 (addToMapMapFromBucket!113 lt!1552544 lt!1552532))))

(assert (=> b!4338317 (= lt!1552536 (addToMapMapFromBucket!113 newBucket!200 lt!1552532))))

(assert (=> b!4338317 (= lt!1552536 (extractMap!464 (toList!2793 lt!1552543)))))

(assert (=> b!4338317 (= lt!1552532 (extractMap!464 (t!355764 (toList!2793 lm!1707))))))

(declare-fun res!1779895 () Bool)

(assert (=> start!418648 (=> (not res!1779895) (not e!2699384))))

(assert (=> start!418648 (= res!1779895 (forall!8983 (toList!2793 lm!1707) lambda!136629))))

(assert (=> start!418648 e!2699384))

(assert (=> start!418648 e!2699386))

(assert (=> start!418648 true))

(declare-fun e!2699387 () Bool)

(declare-fun inv!64266 (ListLongMap!1443) Bool)

(assert (=> start!418648 (and (inv!64266 lm!1707) e!2699387)))

(assert (=> start!418648 tp_is_empty!24857))

(assert (=> start!418648 tp_is_empty!24859))

(declare-fun lt!1552535 () tuple2!47992)

(declare-fun b!4338318 () Bool)

(get-info :version)

(assert (=> b!4338318 (= e!2699383 (or (not ((_ is Cons!48724) (toList!2793 lm!1707))) (not (= (_1!27290 (h!54235 (toList!2793 lm!1707))) hash!377)) (= lt!1552543 (ListLongMap!1444 (Cons!48724 lt!1552535 (t!355764 (toList!2793 lm!1707)))))))))

(declare-fun b!4338319 () Bool)

(declare-fun res!1779903 () Bool)

(assert (=> b!4338319 (=> res!1779903 e!2699382)))

(declare-fun noDuplicateKeys!405 (List!48847) Bool)

(assert (=> b!4338319 (= res!1779903 (not (noDuplicateKeys!405 newBucket!200)))))

(declare-fun b!4338320 () Bool)

(declare-fun tp!1329201 () Bool)

(assert (=> b!4338320 (= e!2699387 tp!1329201)))

(declare-fun b!4338321 () Bool)

(assert (=> b!4338321 (= e!2699382 e!2699385)))

(declare-fun res!1779900 () Bool)

(assert (=> b!4338321 (=> res!1779900 e!2699385)))

(assert (=> b!4338321 (= res!1779900 (or (not ((_ is Cons!48724) (toList!2793 lm!1707))) (not (= (_1!27290 (h!54235 (toList!2793 lm!1707))) hash!377))))))

(assert (=> b!4338321 e!2699383))

(declare-fun res!1779892 () Bool)

(assert (=> b!4338321 (=> (not res!1779892) (not e!2699383))))

(assert (=> b!4338321 (= res!1779892 (forall!8983 (toList!2793 lt!1552543) lambda!136629))))

(assert (=> b!4338321 (= lt!1552543 (+!481 lm!1707 lt!1552535))))

(assert (=> b!4338321 (= lt!1552535 (tuple2!47993 hash!377 newBucket!200))))

(declare-fun lt!1552537 () Unit!69077)

(declare-fun addValidProp!59 (ListLongMap!1443 Int (_ BitVec 64) List!48847) Unit!69077)

(assert (=> b!4338321 (= lt!1552537 (addValidProp!59 lm!1707 lambda!136629 hash!377 newBucket!200))))

(assert (=> b!4338321 (forall!8983 (toList!2793 lm!1707) lambda!136629)))

(declare-fun b!4338322 () Bool)

(declare-fun res!1779893 () Bool)

(assert (=> b!4338322 (=> (not res!1779893) (not e!2699384))))

(declare-fun allKeysSameHashInMap!509 (ListLongMap!1443 Hashable!4797) Bool)

(assert (=> b!4338322 (= res!1779893 (allKeysSameHashInMap!509 lm!1707 hashF!1247))))

(assert (= (and start!418648 res!1779895) b!4338322))

(assert (= (and b!4338322 res!1779893) b!4338313))

(assert (= (and b!4338313 res!1779902) b!4338312))

(assert (= (and b!4338312 res!1779896) b!4338309))

(assert (= (and b!4338309 res!1779901) b!4338314))

(assert (= (and b!4338314 res!1779898) b!4338310))

(assert (= (and b!4338310 (not res!1779894)) b!4338319))

(assert (= (and b!4338319 (not res!1779903)) b!4338321))

(assert (= (and b!4338321 res!1779892) b!4338315))

(assert (= (and b!4338315 res!1779897) b!4338318))

(assert (= (and b!4338321 (not res!1779900)) b!4338317))

(assert (= (and b!4338317 res!1779899) b!4338311))

(assert (= (and start!418648 ((_ is Cons!48723) newBucket!200)) b!4338316))

(assert (= start!418648 b!4338320))

(declare-fun m!4935205 () Bool)

(assert (=> b!4338313 m!4935205))

(declare-fun m!4935207 () Bool)

(assert (=> b!4338321 m!4935207))

(declare-fun m!4935209 () Bool)

(assert (=> b!4338321 m!4935209))

(declare-fun m!4935211 () Bool)

(assert (=> b!4338321 m!4935211))

(declare-fun m!4935213 () Bool)

(assert (=> b!4338321 m!4935213))

(assert (=> b!4338315 m!4935207))

(declare-fun m!4935215 () Bool)

(assert (=> b!4338311 m!4935215))

(declare-fun m!4935217 () Bool)

(assert (=> b!4338319 m!4935217))

(declare-fun m!4935219 () Bool)

(assert (=> b!4338310 m!4935219))

(declare-fun m!4935221 () Bool)

(assert (=> b!4338310 m!4935221))

(declare-fun m!4935223 () Bool)

(assert (=> b!4338310 m!4935223))

(declare-fun m!4935225 () Bool)

(assert (=> b!4338310 m!4935225))

(declare-fun m!4935227 () Bool)

(assert (=> b!4338310 m!4935227))

(declare-fun m!4935229 () Bool)

(assert (=> b!4338314 m!4935229))

(declare-fun m!4935231 () Bool)

(assert (=> b!4338317 m!4935231))

(declare-fun m!4935233 () Bool)

(assert (=> b!4338317 m!4935233))

(declare-fun m!4935235 () Bool)

(assert (=> b!4338317 m!4935235))

(declare-fun m!4935237 () Bool)

(assert (=> b!4338317 m!4935237))

(declare-fun m!4935239 () Bool)

(assert (=> b!4338317 m!4935239))

(declare-fun m!4935241 () Bool)

(assert (=> b!4338317 m!4935241))

(declare-fun m!4935243 () Bool)

(assert (=> b!4338317 m!4935243))

(declare-fun m!4935245 () Bool)

(assert (=> b!4338317 m!4935245))

(declare-fun m!4935247 () Bool)

(assert (=> b!4338317 m!4935247))

(assert (=> b!4338317 m!4935231))

(declare-fun m!4935249 () Bool)

(assert (=> b!4338317 m!4935249))

(declare-fun m!4935251 () Bool)

(assert (=> b!4338317 m!4935251))

(declare-fun m!4935253 () Bool)

(assert (=> b!4338317 m!4935253))

(assert (=> b!4338317 m!4935249))

(declare-fun m!4935255 () Bool)

(assert (=> b!4338317 m!4935255))

(assert (=> start!418648 m!4935213))

(declare-fun m!4935257 () Bool)

(assert (=> start!418648 m!4935257))

(declare-fun m!4935259 () Bool)

(assert (=> b!4338312 m!4935259))

(declare-fun m!4935261 () Bool)

(assert (=> b!4338322 m!4935261))

(declare-fun m!4935263 () Bool)

(assert (=> b!4338309 m!4935263))

(assert (=> b!4338309 m!4935263))

(declare-fun m!4935265 () Bool)

(assert (=> b!4338309 m!4935265))

(check-sat tp_is_empty!24859 (not b!4338313) (not b!4338310) (not b!4338312) (not b!4338315) (not b!4338321) (not b!4338314) tp_is_empty!24857 (not b!4338322) (not b!4338319) (not start!418648) (not b!4338316) (not b!4338320) (not b!4338311) (not b!4338317) (not b!4338309))
(check-sat)
(get-model)

(declare-fun d!1275174 () Bool)

(declare-fun hash!1363 (Hashable!4797 K!10080) (_ BitVec 64))

(assert (=> d!1275174 (= (hash!1362 hashF!1247 key!3918) (hash!1363 hashF!1247 key!3918))))

(declare-fun bs!609677 () Bool)

(assert (= bs!609677 d!1275174))

(declare-fun m!4935287 () Bool)

(assert (=> bs!609677 m!4935287))

(assert (=> b!4338313 d!1275174))

(declare-fun d!1275176 () Bool)

(assert (=> d!1275176 true))

(assert (=> d!1275176 true))

(declare-fun lambda!136635 () Int)

(declare-fun forall!8985 (List!48847 Int) Bool)

(assert (=> d!1275176 (= (allKeysSameHash!363 newBucket!200 hash!377 hashF!1247) (forall!8985 newBucket!200 lambda!136635))))

(declare-fun bs!609678 () Bool)

(assert (= bs!609678 d!1275176))

(declare-fun m!4935301 () Bool)

(assert (=> bs!609678 m!4935301))

(assert (=> b!4338312 d!1275176))

(declare-fun d!1275180 () Bool)

(declare-fun res!1779920 () Bool)

(declare-fun e!2699402 () Bool)

(assert (=> d!1275180 (=> res!1779920 e!2699402)))

(assert (=> d!1275180 (= res!1779920 ((_ is Nil!48724) (toList!2793 lm!1707)))))

(assert (=> d!1275180 (= (forall!8983 (toList!2793 lm!1707) lambda!136629) e!2699402)))

(declare-fun b!4338349 () Bool)

(declare-fun e!2699403 () Bool)

(assert (=> b!4338349 (= e!2699402 e!2699403)))

(declare-fun res!1779921 () Bool)

(assert (=> b!4338349 (=> (not res!1779921) (not e!2699403))))

(declare-fun dynLambda!20576 (Int tuple2!47992) Bool)

(assert (=> b!4338349 (= res!1779921 (dynLambda!20576 lambda!136629 (h!54235 (toList!2793 lm!1707))))))

(declare-fun b!4338350 () Bool)

(assert (=> b!4338350 (= e!2699403 (forall!8983 (t!355764 (toList!2793 lm!1707)) lambda!136629))))

(assert (= (and d!1275180 (not res!1779920)) b!4338349))

(assert (= (and b!4338349 res!1779921) b!4338350))

(declare-fun b_lambda!128459 () Bool)

(assert (=> (not b_lambda!128459) (not b!4338349)))

(declare-fun m!4935303 () Bool)

(assert (=> b!4338349 m!4935303))

(assert (=> b!4338350 m!4935241))

(assert (=> start!418648 d!1275180))

(declare-fun d!1275182 () Bool)

(declare-fun isStrictlySorted!63 (List!48848) Bool)

(assert (=> d!1275182 (= (inv!64266 lm!1707) (isStrictlySorted!63 (toList!2793 lm!1707)))))

(declare-fun bs!609679 () Bool)

(assert (= bs!609679 d!1275182))

(declare-fun m!4935305 () Bool)

(assert (=> bs!609679 m!4935305))

(assert (=> start!418648 d!1275182))

(declare-fun bs!609680 () Bool)

(declare-fun d!1275184 () Bool)

(assert (= bs!609680 (and d!1275184 start!418648)))

(declare-fun lambda!136638 () Int)

(assert (=> bs!609680 (not (= lambda!136638 lambda!136629))))

(assert (=> d!1275184 true))

(assert (=> d!1275184 (= (allKeysSameHashInMap!509 lm!1707 hashF!1247) (forall!8983 (toList!2793 lm!1707) lambda!136638))))

(declare-fun bs!609681 () Bool)

(assert (= bs!609681 d!1275184))

(declare-fun m!4935307 () Bool)

(assert (=> bs!609681 m!4935307))

(assert (=> b!4338322 d!1275184))

(declare-fun d!1275186 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7624 (List!48847) (InoxSet tuple2!47990))

(assert (=> d!1275186 (= (eq!195 lt!1552542 lt!1552541) (= (content!7624 (toList!2794 lt!1552542)) (content!7624 (toList!2794 lt!1552541))))))

(declare-fun bs!609682 () Bool)

(assert (= bs!609682 d!1275186))

(declare-fun m!4935309 () Bool)

(assert (=> bs!609682 m!4935309))

(declare-fun m!4935311 () Bool)

(assert (=> bs!609682 m!4935311))

(assert (=> b!4338311 d!1275186))

(declare-fun d!1275188 () Bool)

(declare-fun res!1779922 () Bool)

(declare-fun e!2699404 () Bool)

(assert (=> d!1275188 (=> res!1779922 e!2699404)))

(assert (=> d!1275188 (= res!1779922 ((_ is Nil!48724) (toList!2793 lt!1552543)))))

(assert (=> d!1275188 (= (forall!8983 (toList!2793 lt!1552543) lambda!136629) e!2699404)))

(declare-fun b!4338353 () Bool)

(declare-fun e!2699405 () Bool)

(assert (=> b!4338353 (= e!2699404 e!2699405)))

(declare-fun res!1779923 () Bool)

(assert (=> b!4338353 (=> (not res!1779923) (not e!2699405))))

(assert (=> b!4338353 (= res!1779923 (dynLambda!20576 lambda!136629 (h!54235 (toList!2793 lt!1552543))))))

(declare-fun b!4338354 () Bool)

(assert (=> b!4338354 (= e!2699405 (forall!8983 (t!355764 (toList!2793 lt!1552543)) lambda!136629))))

(assert (= (and d!1275188 (not res!1779922)) b!4338353))

(assert (= (and b!4338353 res!1779923) b!4338354))

(declare-fun b_lambda!128461 () Bool)

(assert (=> (not b_lambda!128461) (not b!4338353)))

(declare-fun m!4935313 () Bool)

(assert (=> b!4338353 m!4935313))

(declare-fun m!4935315 () Bool)

(assert (=> b!4338354 m!4935315))

(assert (=> b!4338315 d!1275188))

(declare-fun d!1275190 () Bool)

(declare-fun e!2699410 () Bool)

(assert (=> d!1275190 e!2699410))

(declare-fun res!1779926 () Bool)

(assert (=> d!1275190 (=> res!1779926 e!2699410)))

(declare-fun lt!1552587 () Bool)

(assert (=> d!1275190 (= res!1779926 (not lt!1552587))))

(declare-fun lt!1552585 () Bool)

(assert (=> d!1275190 (= lt!1552587 lt!1552585)))

(declare-fun lt!1552584 () Unit!69077)

(declare-fun e!2699411 () Unit!69077)

(assert (=> d!1275190 (= lt!1552584 e!2699411)))

(declare-fun c!737596 () Bool)

(assert (=> d!1275190 (= c!737596 lt!1552585)))

(declare-fun containsKey!561 (List!48848 (_ BitVec 64)) Bool)

(assert (=> d!1275190 (= lt!1552585 (containsKey!561 (toList!2793 lm!1707) hash!377))))

(assert (=> d!1275190 (= (contains!10814 lm!1707 hash!377) lt!1552587)))

(declare-fun b!4338361 () Bool)

(declare-fun lt!1552586 () Unit!69077)

(assert (=> b!4338361 (= e!2699411 lt!1552586)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!285 (List!48848 (_ BitVec 64)) Unit!69077)

(assert (=> b!4338361 (= lt!1552586 (lemmaContainsKeyImpliesGetValueByKeyDefined!285 (toList!2793 lm!1707) hash!377))))

(declare-datatypes ((Option!10388 0))(
  ( (None!10387) (Some!10387 (v!43147 List!48847)) )
))
(declare-fun isDefined!7682 (Option!10388) Bool)

(declare-fun getValueByKey!374 (List!48848 (_ BitVec 64)) Option!10388)

(assert (=> b!4338361 (isDefined!7682 (getValueByKey!374 (toList!2793 lm!1707) hash!377))))

(declare-fun b!4338362 () Bool)

(declare-fun Unit!69112 () Unit!69077)

(assert (=> b!4338362 (= e!2699411 Unit!69112)))

(declare-fun b!4338363 () Bool)

(assert (=> b!4338363 (= e!2699410 (isDefined!7682 (getValueByKey!374 (toList!2793 lm!1707) hash!377)))))

(assert (= (and d!1275190 c!737596) b!4338361))

(assert (= (and d!1275190 (not c!737596)) b!4338362))

(assert (= (and d!1275190 (not res!1779926)) b!4338363))

(declare-fun m!4935317 () Bool)

(assert (=> d!1275190 m!4935317))

(declare-fun m!4935319 () Bool)

(assert (=> b!4338361 m!4935319))

(declare-fun m!4935321 () Bool)

(assert (=> b!4338361 m!4935321))

(assert (=> b!4338361 m!4935321))

(declare-fun m!4935323 () Bool)

(assert (=> b!4338361 m!4935323))

(assert (=> b!4338363 m!4935321))

(assert (=> b!4338363 m!4935321))

(assert (=> b!4338363 m!4935323))

(assert (=> b!4338314 d!1275190))

(declare-fun d!1275192 () Bool)

(assert (=> d!1275192 (= (eq!195 lt!1552531 lt!1552541) (= (content!7624 (toList!2794 lt!1552531)) (content!7624 (toList!2794 lt!1552541))))))

(declare-fun bs!609683 () Bool)

(assert (= bs!609683 d!1275192))

(declare-fun m!4935325 () Bool)

(assert (=> bs!609683 m!4935325))

(assert (=> bs!609683 m!4935311))

(assert (=> b!4338317 d!1275192))

(declare-fun d!1275194 () Bool)

(declare-fun e!2699414 () Bool)

(assert (=> d!1275194 e!2699414))

(declare-fun res!1779932 () Bool)

(assert (=> d!1275194 (=> (not res!1779932) (not e!2699414))))

(declare-fun lt!1552598 () ListMap!2037)

(assert (=> d!1275194 (= res!1779932 (contains!10812 lt!1552598 (_1!27289 lt!1552534)))))

(declare-fun lt!1552596 () List!48847)

(assert (=> d!1275194 (= lt!1552598 (ListMap!2038 lt!1552596))))

(declare-fun lt!1552599 () Unit!69077)

(declare-fun lt!1552597 () Unit!69077)

(assert (=> d!1275194 (= lt!1552599 lt!1552597)))

(declare-datatypes ((Option!10389 0))(
  ( (None!10388) (Some!10388 (v!43148 V!10326)) )
))
(declare-fun getValueByKey!375 (List!48847 K!10080) Option!10389)

(assert (=> d!1275194 (= (getValueByKey!375 lt!1552596 (_1!27289 lt!1552534)) (Some!10388 (_2!27289 lt!1552534)))))

(declare-fun lemmaContainsTupThenGetReturnValue!157 (List!48847 K!10080 V!10326) Unit!69077)

(assert (=> d!1275194 (= lt!1552597 (lemmaContainsTupThenGetReturnValue!157 lt!1552596 (_1!27289 lt!1552534) (_2!27289 lt!1552534)))))

(declare-fun insertNoDuplicatedKeys!71 (List!48847 K!10080 V!10326) List!48847)

(assert (=> d!1275194 (= lt!1552596 (insertNoDuplicatedKeys!71 (toList!2794 lt!1552532) (_1!27289 lt!1552534) (_2!27289 lt!1552534)))))

(assert (=> d!1275194 (= (+!482 lt!1552532 lt!1552534) lt!1552598)))

(declare-fun b!4338368 () Bool)

(declare-fun res!1779931 () Bool)

(assert (=> b!4338368 (=> (not res!1779931) (not e!2699414))))

(assert (=> b!4338368 (= res!1779931 (= (getValueByKey!375 (toList!2794 lt!1552598) (_1!27289 lt!1552534)) (Some!10388 (_2!27289 lt!1552534))))))

(declare-fun b!4338369 () Bool)

(declare-fun contains!10816 (List!48847 tuple2!47990) Bool)

(assert (=> b!4338369 (= e!2699414 (contains!10816 (toList!2794 lt!1552598) lt!1552534))))

(assert (= (and d!1275194 res!1779932) b!4338368))

(assert (= (and b!4338368 res!1779931) b!4338369))

(declare-fun m!4935327 () Bool)

(assert (=> d!1275194 m!4935327))

(declare-fun m!4935329 () Bool)

(assert (=> d!1275194 m!4935329))

(declare-fun m!4935331 () Bool)

(assert (=> d!1275194 m!4935331))

(declare-fun m!4935333 () Bool)

(assert (=> d!1275194 m!4935333))

(declare-fun m!4935335 () Bool)

(assert (=> b!4338368 m!4935335))

(declare-fun m!4935337 () Bool)

(assert (=> b!4338369 m!4935337))

(assert (=> b!4338317 d!1275194))

(declare-fun bs!609784 () Bool)

(declare-fun b!4338516 () Bool)

(assert (= bs!609784 (and b!4338516 d!1275176)))

(declare-fun lambda!136719 () Int)

(assert (=> bs!609784 (not (= lambda!136719 lambda!136635))))

(assert (=> b!4338516 true))

(declare-fun bs!609785 () Bool)

(declare-fun b!4338519 () Bool)

(assert (= bs!609785 (and b!4338519 d!1275176)))

(declare-fun lambda!136720 () Int)

(assert (=> bs!609785 (not (= lambda!136720 lambda!136635))))

(declare-fun bs!609786 () Bool)

(assert (= bs!609786 (and b!4338519 b!4338516)))

(assert (=> bs!609786 (= lambda!136720 lambda!136719)))

(assert (=> b!4338519 true))

(declare-fun lambda!136721 () Int)

(assert (=> bs!609785 (not (= lambda!136721 lambda!136635))))

(declare-fun lt!1552837 () ListMap!2037)

(assert (=> bs!609786 (= (= lt!1552837 lt!1552532) (= lambda!136721 lambda!136719))))

(assert (=> b!4338519 (= (= lt!1552837 lt!1552532) (= lambda!136721 lambda!136720))))

(assert (=> b!4338519 true))

(declare-fun bs!609787 () Bool)

(declare-fun d!1275196 () Bool)

(assert (= bs!609787 (and d!1275196 d!1275176)))

(declare-fun lambda!136722 () Int)

(assert (=> bs!609787 (not (= lambda!136722 lambda!136635))))

(declare-fun bs!609788 () Bool)

(assert (= bs!609788 (and d!1275196 b!4338516)))

(declare-fun lt!1552852 () ListMap!2037)

(assert (=> bs!609788 (= (= lt!1552852 lt!1552532) (= lambda!136722 lambda!136719))))

(declare-fun bs!609789 () Bool)

(assert (= bs!609789 (and d!1275196 b!4338519)))

(assert (=> bs!609789 (= (= lt!1552852 lt!1552532) (= lambda!136722 lambda!136720))))

(assert (=> bs!609789 (= (= lt!1552852 lt!1552837) (= lambda!136722 lambda!136721))))

(assert (=> d!1275196 true))

(declare-fun e!2699510 () ListMap!2037)

(assert (=> b!4338516 (= e!2699510 lt!1552532)))

(declare-fun lt!1552834 () Unit!69077)

(declare-fun call!301542 () Unit!69077)

(assert (=> b!4338516 (= lt!1552834 call!301542)))

(declare-fun call!301543 () Bool)

(assert (=> b!4338516 call!301543))

(declare-fun lt!1552846 () Unit!69077)

(assert (=> b!4338516 (= lt!1552846 lt!1552834)))

(declare-fun call!301541 () Bool)

(assert (=> b!4338516 call!301541))

(declare-fun lt!1552845 () Unit!69077)

(declare-fun Unit!69114 () Unit!69077)

(assert (=> b!4338516 (= lt!1552845 Unit!69114)))

(declare-fun bm!301536 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!31 (ListMap!2037) Unit!69077)

(assert (=> bm!301536 (= call!301542 (lemmaContainsAllItsOwnKeys!31 lt!1552532))))

(declare-fun bm!301537 () Bool)

(declare-fun c!737625 () Bool)

(assert (=> bm!301537 (= call!301543 (forall!8985 (toList!2794 lt!1552532) (ite c!737625 lambda!136719 lambda!136721)))))

(declare-fun b!4338517 () Bool)

(declare-fun e!2699512 () Bool)

(assert (=> b!4338517 (= e!2699512 (forall!8985 (toList!2794 lt!1552532) lambda!136721))))

(declare-fun b!4338518 () Bool)

(declare-fun e!2699511 () Bool)

(declare-fun invariantList!638 (List!48847) Bool)

(assert (=> b!4338518 (= e!2699511 (invariantList!638 (toList!2794 lt!1552852)))))

(assert (=> b!4338519 (= e!2699510 lt!1552837)))

(declare-fun lt!1552838 () ListMap!2037)

(assert (=> b!4338519 (= lt!1552838 (+!482 lt!1552532 (h!54234 lt!1552544)))))

(assert (=> b!4338519 (= lt!1552837 (addToMapMapFromBucket!113 (t!355763 lt!1552544) (+!482 lt!1552532 (h!54234 lt!1552544))))))

(declare-fun lt!1552847 () Unit!69077)

(assert (=> b!4338519 (= lt!1552847 call!301542)))

(assert (=> b!4338519 (forall!8985 (toList!2794 lt!1552532) lambda!136720)))

(declare-fun lt!1552849 () Unit!69077)

(assert (=> b!4338519 (= lt!1552849 lt!1552847)))

(assert (=> b!4338519 call!301541))

(declare-fun lt!1552850 () Unit!69077)

(declare-fun Unit!69118 () Unit!69077)

(assert (=> b!4338519 (= lt!1552850 Unit!69118)))

(assert (=> b!4338519 (forall!8985 (t!355763 lt!1552544) lambda!136721)))

(declare-fun lt!1552832 () Unit!69077)

(declare-fun Unit!69119 () Unit!69077)

(assert (=> b!4338519 (= lt!1552832 Unit!69119)))

(declare-fun lt!1552836 () Unit!69077)

(declare-fun Unit!69121 () Unit!69077)

(assert (=> b!4338519 (= lt!1552836 Unit!69121)))

(declare-fun lt!1552839 () Unit!69077)

(declare-fun forallContained!1635 (List!48847 Int tuple2!47990) Unit!69077)

(assert (=> b!4338519 (= lt!1552839 (forallContained!1635 (toList!2794 lt!1552838) lambda!136721 (h!54234 lt!1552544)))))

(assert (=> b!4338519 (contains!10812 lt!1552838 (_1!27289 (h!54234 lt!1552544)))))

(declare-fun lt!1552842 () Unit!69077)

(declare-fun Unit!69124 () Unit!69077)

(assert (=> b!4338519 (= lt!1552842 Unit!69124)))

(assert (=> b!4338519 (contains!10812 lt!1552837 (_1!27289 (h!54234 lt!1552544)))))

(declare-fun lt!1552851 () Unit!69077)

(declare-fun Unit!69126 () Unit!69077)

(assert (=> b!4338519 (= lt!1552851 Unit!69126)))

(assert (=> b!4338519 (forall!8985 lt!1552544 lambda!136721)))

(declare-fun lt!1552833 () Unit!69077)

(declare-fun Unit!69128 () Unit!69077)

(assert (=> b!4338519 (= lt!1552833 Unit!69128)))

(assert (=> b!4338519 (forall!8985 (toList!2794 lt!1552838) lambda!136721)))

(declare-fun lt!1552843 () Unit!69077)

(declare-fun Unit!69129 () Unit!69077)

(assert (=> b!4338519 (= lt!1552843 Unit!69129)))

(declare-fun lt!1552835 () Unit!69077)

(declare-fun Unit!69130 () Unit!69077)

(assert (=> b!4338519 (= lt!1552835 Unit!69130)))

(declare-fun lt!1552840 () Unit!69077)

(declare-fun addForallContainsKeyThenBeforeAdding!31 (ListMap!2037 ListMap!2037 K!10080 V!10326) Unit!69077)

(assert (=> b!4338519 (= lt!1552840 (addForallContainsKeyThenBeforeAdding!31 lt!1552532 lt!1552837 (_1!27289 (h!54234 lt!1552544)) (_2!27289 (h!54234 lt!1552544))))))

(assert (=> b!4338519 call!301543))

(declare-fun lt!1552841 () Unit!69077)

(assert (=> b!4338519 (= lt!1552841 lt!1552840)))

(assert (=> b!4338519 (forall!8985 (toList!2794 lt!1552532) lambda!136721)))

(declare-fun lt!1552844 () Unit!69077)

(declare-fun Unit!69133 () Unit!69077)

(assert (=> b!4338519 (= lt!1552844 Unit!69133)))

(declare-fun res!1780004 () Bool)

(assert (=> b!4338519 (= res!1780004 (forall!8985 lt!1552544 lambda!136721))))

(assert (=> b!4338519 (=> (not res!1780004) (not e!2699512))))

(assert (=> b!4338519 e!2699512))

(declare-fun lt!1552848 () Unit!69077)

(declare-fun Unit!69134 () Unit!69077)

(assert (=> b!4338519 (= lt!1552848 Unit!69134)))

(declare-fun b!4338520 () Bool)

(declare-fun res!1780006 () Bool)

(assert (=> b!4338520 (=> (not res!1780006) (not e!2699511))))

(assert (=> b!4338520 (= res!1780006 (forall!8985 (toList!2794 lt!1552532) lambda!136722))))

(assert (=> d!1275196 e!2699511))

(declare-fun res!1780005 () Bool)

(assert (=> d!1275196 (=> (not res!1780005) (not e!2699511))))

(assert (=> d!1275196 (= res!1780005 (forall!8985 lt!1552544 lambda!136722))))

(assert (=> d!1275196 (= lt!1552852 e!2699510)))

(assert (=> d!1275196 (= c!737625 ((_ is Nil!48723) lt!1552544))))

(assert (=> d!1275196 (noDuplicateKeys!405 lt!1552544)))

(assert (=> d!1275196 (= (addToMapMapFromBucket!113 lt!1552544 lt!1552532) lt!1552852)))

(declare-fun bm!301538 () Bool)

(assert (=> bm!301538 (= call!301541 (forall!8985 (ite c!737625 (toList!2794 lt!1552532) (toList!2794 lt!1552838)) (ite c!737625 lambda!136719 lambda!136721)))))

(assert (= (and d!1275196 c!737625) b!4338516))

(assert (= (and d!1275196 (not c!737625)) b!4338519))

(assert (= (and b!4338519 res!1780004) b!4338517))

(assert (= (or b!4338516 b!4338519) bm!301536))

(assert (= (or b!4338516 b!4338519) bm!301537))

(assert (= (or b!4338516 b!4338519) bm!301538))

(assert (= (and d!1275196 res!1780005) b!4338520))

(assert (= (and b!4338520 res!1780006) b!4338518))

(declare-fun m!4935621 () Bool)

(assert (=> bm!301538 m!4935621))

(declare-fun m!4935623 () Bool)

(assert (=> bm!301537 m!4935623))

(declare-fun m!4935625 () Bool)

(assert (=> b!4338520 m!4935625))

(declare-fun m!4935627 () Bool)

(assert (=> b!4338519 m!4935627))

(declare-fun m!4935629 () Bool)

(assert (=> b!4338519 m!4935629))

(declare-fun m!4935631 () Bool)

(assert (=> b!4338519 m!4935631))

(declare-fun m!4935633 () Bool)

(assert (=> b!4338519 m!4935633))

(declare-fun m!4935635 () Bool)

(assert (=> b!4338519 m!4935635))

(declare-fun m!4935637 () Bool)

(assert (=> b!4338519 m!4935637))

(declare-fun m!4935639 () Bool)

(assert (=> b!4338519 m!4935639))

(assert (=> b!4338519 m!4935639))

(declare-fun m!4935641 () Bool)

(assert (=> b!4338519 m!4935641))

(declare-fun m!4935643 () Bool)

(assert (=> b!4338519 m!4935643))

(assert (=> b!4338519 m!4935637))

(declare-fun m!4935645 () Bool)

(assert (=> b!4338519 m!4935645))

(declare-fun m!4935647 () Bool)

(assert (=> b!4338519 m!4935647))

(declare-fun m!4935649 () Bool)

(assert (=> d!1275196 m!4935649))

(declare-fun m!4935651 () Bool)

(assert (=> d!1275196 m!4935651))

(declare-fun m!4935653 () Bool)

(assert (=> bm!301536 m!4935653))

(assert (=> b!4338517 m!4935635))

(declare-fun m!4935655 () Bool)

(assert (=> b!4338518 m!4935655))

(assert (=> b!4338317 d!1275196))

(declare-fun d!1275262 () Bool)

(declare-fun res!1780007 () Bool)

(declare-fun e!2699513 () Bool)

(assert (=> d!1275262 (=> res!1780007 e!2699513)))

(assert (=> d!1275262 (= res!1780007 ((_ is Nil!48724) (t!355764 (toList!2793 lm!1707))))))

(assert (=> d!1275262 (= (forall!8983 (t!355764 (toList!2793 lm!1707)) lambda!136629) e!2699513)))

(declare-fun b!4338523 () Bool)

(declare-fun e!2699514 () Bool)

(assert (=> b!4338523 (= e!2699513 e!2699514)))

(declare-fun res!1780008 () Bool)

(assert (=> b!4338523 (=> (not res!1780008) (not e!2699514))))

(assert (=> b!4338523 (= res!1780008 (dynLambda!20576 lambda!136629 (h!54235 (t!355764 (toList!2793 lm!1707)))))))

(declare-fun b!4338524 () Bool)

(assert (=> b!4338524 (= e!2699514 (forall!8983 (t!355764 (t!355764 (toList!2793 lm!1707))) lambda!136629))))

(assert (= (and d!1275262 (not res!1780007)) b!4338523))

(assert (= (and b!4338523 res!1780008) b!4338524))

(declare-fun b_lambda!128483 () Bool)

(assert (=> (not b_lambda!128483) (not b!4338523)))

(declare-fun m!4935657 () Bool)

(assert (=> b!4338523 m!4935657))

(declare-fun m!4935659 () Bool)

(assert (=> b!4338524 m!4935659))

(assert (=> b!4338317 d!1275262))

(declare-fun d!1275264 () Bool)

(assert (=> d!1275264 (= (tail!6903 newBucket!200) (t!355763 newBucket!200))))

(assert (=> b!4338317 d!1275264))

(declare-fun bs!609790 () Bool)

(declare-fun b!4338525 () Bool)

(assert (= bs!609790 (and b!4338525 b!4338516)))

(declare-fun lambda!136723 () Int)

(assert (=> bs!609790 (= lambda!136723 lambda!136719)))

(declare-fun bs!609791 () Bool)

(assert (= bs!609791 (and b!4338525 b!4338519)))

(assert (=> bs!609791 (= (= lt!1552532 lt!1552837) (= lambda!136723 lambda!136721))))

(assert (=> bs!609791 (= lambda!136723 lambda!136720)))

(declare-fun bs!609792 () Bool)

(assert (= bs!609792 (and b!4338525 d!1275196)))

(assert (=> bs!609792 (= (= lt!1552532 lt!1552852) (= lambda!136723 lambda!136722))))

(declare-fun bs!609793 () Bool)

(assert (= bs!609793 (and b!4338525 d!1275176)))

(assert (=> bs!609793 (not (= lambda!136723 lambda!136635))))

(assert (=> b!4338525 true))

(declare-fun bs!609794 () Bool)

(declare-fun b!4338528 () Bool)

(assert (= bs!609794 (and b!4338528 b!4338525)))

(declare-fun lambda!136724 () Int)

(assert (=> bs!609794 (= lambda!136724 lambda!136723)))

(declare-fun bs!609795 () Bool)

(assert (= bs!609795 (and b!4338528 b!4338516)))

(assert (=> bs!609795 (= lambda!136724 lambda!136719)))

(declare-fun bs!609796 () Bool)

(assert (= bs!609796 (and b!4338528 b!4338519)))

(assert (=> bs!609796 (= (= lt!1552532 lt!1552837) (= lambda!136724 lambda!136721))))

(assert (=> bs!609796 (= lambda!136724 lambda!136720)))

(declare-fun bs!609797 () Bool)

(assert (= bs!609797 (and b!4338528 d!1275196)))

(assert (=> bs!609797 (= (= lt!1552532 lt!1552852) (= lambda!136724 lambda!136722))))

(declare-fun bs!609798 () Bool)

(assert (= bs!609798 (and b!4338528 d!1275176)))

(assert (=> bs!609798 (not (= lambda!136724 lambda!136635))))

(assert (=> b!4338528 true))

(declare-fun lt!1552858 () ListMap!2037)

(declare-fun lambda!136725 () Int)

(assert (=> bs!609794 (= (= lt!1552858 lt!1552532) (= lambda!136725 lambda!136723))))

(assert (=> bs!609795 (= (= lt!1552858 lt!1552532) (= lambda!136725 lambda!136719))))

(assert (=> b!4338528 (= (= lt!1552858 lt!1552532) (= lambda!136725 lambda!136724))))

(assert (=> bs!609796 (= (= lt!1552858 lt!1552837) (= lambda!136725 lambda!136721))))

(assert (=> bs!609796 (= (= lt!1552858 lt!1552532) (= lambda!136725 lambda!136720))))

(assert (=> bs!609797 (= (= lt!1552858 lt!1552852) (= lambda!136725 lambda!136722))))

(assert (=> bs!609798 (not (= lambda!136725 lambda!136635))))

(assert (=> b!4338528 true))

(declare-fun bs!609799 () Bool)

(declare-fun d!1275266 () Bool)

(assert (= bs!609799 (and d!1275266 b!4338528)))

(declare-fun lt!1552873 () ListMap!2037)

(declare-fun lambda!136726 () Int)

(assert (=> bs!609799 (= (= lt!1552873 lt!1552858) (= lambda!136726 lambda!136725))))

(declare-fun bs!609800 () Bool)

(assert (= bs!609800 (and d!1275266 b!4338525)))

(assert (=> bs!609800 (= (= lt!1552873 lt!1552532) (= lambda!136726 lambda!136723))))

(declare-fun bs!609801 () Bool)

(assert (= bs!609801 (and d!1275266 b!4338516)))

(assert (=> bs!609801 (= (= lt!1552873 lt!1552532) (= lambda!136726 lambda!136719))))

(assert (=> bs!609799 (= (= lt!1552873 lt!1552532) (= lambda!136726 lambda!136724))))

(declare-fun bs!609802 () Bool)

(assert (= bs!609802 (and d!1275266 b!4338519)))

(assert (=> bs!609802 (= (= lt!1552873 lt!1552837) (= lambda!136726 lambda!136721))))

(assert (=> bs!609802 (= (= lt!1552873 lt!1552532) (= lambda!136726 lambda!136720))))

(declare-fun bs!609803 () Bool)

(assert (= bs!609803 (and d!1275266 d!1275196)))

(assert (=> bs!609803 (= (= lt!1552873 lt!1552852) (= lambda!136726 lambda!136722))))

(declare-fun bs!609804 () Bool)

(assert (= bs!609804 (and d!1275266 d!1275176)))

(assert (=> bs!609804 (not (= lambda!136726 lambda!136635))))

(assert (=> d!1275266 true))

(declare-fun e!2699515 () ListMap!2037)

(assert (=> b!4338525 (= e!2699515 lt!1552532)))

(declare-fun lt!1552855 () Unit!69077)

(declare-fun call!301545 () Unit!69077)

(assert (=> b!4338525 (= lt!1552855 call!301545)))

(declare-fun call!301546 () Bool)

(assert (=> b!4338525 call!301546))

(declare-fun lt!1552867 () Unit!69077)

(assert (=> b!4338525 (= lt!1552867 lt!1552855)))

(declare-fun call!301544 () Bool)

(assert (=> b!4338525 call!301544))

(declare-fun lt!1552866 () Unit!69077)

(declare-fun Unit!69135 () Unit!69077)

(assert (=> b!4338525 (= lt!1552866 Unit!69135)))

(declare-fun bm!301539 () Bool)

(assert (=> bm!301539 (= call!301545 (lemmaContainsAllItsOwnKeys!31 lt!1552532))))

(declare-fun c!737626 () Bool)

(declare-fun bm!301540 () Bool)

(assert (=> bm!301540 (= call!301546 (forall!8985 (toList!2794 lt!1552532) (ite c!737626 lambda!136723 lambda!136725)))))

(declare-fun b!4338526 () Bool)

(declare-fun e!2699517 () Bool)

(assert (=> b!4338526 (= e!2699517 (forall!8985 (toList!2794 lt!1552532) lambda!136725))))

(declare-fun b!4338527 () Bool)

(declare-fun e!2699516 () Bool)

(assert (=> b!4338527 (= e!2699516 (invariantList!638 (toList!2794 lt!1552873)))))

(assert (=> b!4338528 (= e!2699515 lt!1552858)))

(declare-fun lt!1552859 () ListMap!2037)

(assert (=> b!4338528 (= lt!1552859 (+!482 lt!1552532 (h!54234 lt!1552547)))))

(assert (=> b!4338528 (= lt!1552858 (addToMapMapFromBucket!113 (t!355763 lt!1552547) (+!482 lt!1552532 (h!54234 lt!1552547))))))

(declare-fun lt!1552868 () Unit!69077)

(assert (=> b!4338528 (= lt!1552868 call!301545)))

(assert (=> b!4338528 (forall!8985 (toList!2794 lt!1552532) lambda!136724)))

(declare-fun lt!1552870 () Unit!69077)

(assert (=> b!4338528 (= lt!1552870 lt!1552868)))

(assert (=> b!4338528 call!301544))

(declare-fun lt!1552871 () Unit!69077)

(declare-fun Unit!69136 () Unit!69077)

(assert (=> b!4338528 (= lt!1552871 Unit!69136)))

(assert (=> b!4338528 (forall!8985 (t!355763 lt!1552547) lambda!136725)))

(declare-fun lt!1552853 () Unit!69077)

(declare-fun Unit!69137 () Unit!69077)

(assert (=> b!4338528 (= lt!1552853 Unit!69137)))

(declare-fun lt!1552857 () Unit!69077)

(declare-fun Unit!69138 () Unit!69077)

(assert (=> b!4338528 (= lt!1552857 Unit!69138)))

(declare-fun lt!1552860 () Unit!69077)

(assert (=> b!4338528 (= lt!1552860 (forallContained!1635 (toList!2794 lt!1552859) lambda!136725 (h!54234 lt!1552547)))))

(assert (=> b!4338528 (contains!10812 lt!1552859 (_1!27289 (h!54234 lt!1552547)))))

(declare-fun lt!1552863 () Unit!69077)

(declare-fun Unit!69139 () Unit!69077)

(assert (=> b!4338528 (= lt!1552863 Unit!69139)))

(assert (=> b!4338528 (contains!10812 lt!1552858 (_1!27289 (h!54234 lt!1552547)))))

(declare-fun lt!1552872 () Unit!69077)

(declare-fun Unit!69140 () Unit!69077)

(assert (=> b!4338528 (= lt!1552872 Unit!69140)))

(assert (=> b!4338528 (forall!8985 lt!1552547 lambda!136725)))

(declare-fun lt!1552854 () Unit!69077)

(declare-fun Unit!69141 () Unit!69077)

(assert (=> b!4338528 (= lt!1552854 Unit!69141)))

(assert (=> b!4338528 (forall!8985 (toList!2794 lt!1552859) lambda!136725)))

(declare-fun lt!1552864 () Unit!69077)

(declare-fun Unit!69142 () Unit!69077)

(assert (=> b!4338528 (= lt!1552864 Unit!69142)))

(declare-fun lt!1552856 () Unit!69077)

(declare-fun Unit!69143 () Unit!69077)

(assert (=> b!4338528 (= lt!1552856 Unit!69143)))

(declare-fun lt!1552861 () Unit!69077)

(assert (=> b!4338528 (= lt!1552861 (addForallContainsKeyThenBeforeAdding!31 lt!1552532 lt!1552858 (_1!27289 (h!54234 lt!1552547)) (_2!27289 (h!54234 lt!1552547))))))

(assert (=> b!4338528 call!301546))

(declare-fun lt!1552862 () Unit!69077)

(assert (=> b!4338528 (= lt!1552862 lt!1552861)))

(assert (=> b!4338528 (forall!8985 (toList!2794 lt!1552532) lambda!136725)))

(declare-fun lt!1552865 () Unit!69077)

(declare-fun Unit!69144 () Unit!69077)

(assert (=> b!4338528 (= lt!1552865 Unit!69144)))

(declare-fun res!1780009 () Bool)

(assert (=> b!4338528 (= res!1780009 (forall!8985 lt!1552547 lambda!136725))))

(assert (=> b!4338528 (=> (not res!1780009) (not e!2699517))))

(assert (=> b!4338528 e!2699517))

(declare-fun lt!1552869 () Unit!69077)

(declare-fun Unit!69145 () Unit!69077)

(assert (=> b!4338528 (= lt!1552869 Unit!69145)))

(declare-fun b!4338529 () Bool)

(declare-fun res!1780011 () Bool)

(assert (=> b!4338529 (=> (not res!1780011) (not e!2699516))))

(assert (=> b!4338529 (= res!1780011 (forall!8985 (toList!2794 lt!1552532) lambda!136726))))

(assert (=> d!1275266 e!2699516))

(declare-fun res!1780010 () Bool)

(assert (=> d!1275266 (=> (not res!1780010) (not e!2699516))))

(assert (=> d!1275266 (= res!1780010 (forall!8985 lt!1552547 lambda!136726))))

(assert (=> d!1275266 (= lt!1552873 e!2699515)))

(assert (=> d!1275266 (= c!737626 ((_ is Nil!48723) lt!1552547))))

(assert (=> d!1275266 (noDuplicateKeys!405 lt!1552547)))

(assert (=> d!1275266 (= (addToMapMapFromBucket!113 lt!1552547 lt!1552532) lt!1552873)))

(declare-fun bm!301541 () Bool)

(assert (=> bm!301541 (= call!301544 (forall!8985 (ite c!737626 (toList!2794 lt!1552532) (toList!2794 lt!1552859)) (ite c!737626 lambda!136723 lambda!136725)))))

(assert (= (and d!1275266 c!737626) b!4338525))

(assert (= (and d!1275266 (not c!737626)) b!4338528))

(assert (= (and b!4338528 res!1780009) b!4338526))

(assert (= (or b!4338525 b!4338528) bm!301539))

(assert (= (or b!4338525 b!4338528) bm!301540))

(assert (= (or b!4338525 b!4338528) bm!301541))

(assert (= (and d!1275266 res!1780010) b!4338529))

(assert (= (and b!4338529 res!1780011) b!4338527))

(declare-fun m!4935661 () Bool)

(assert (=> bm!301541 m!4935661))

(declare-fun m!4935663 () Bool)

(assert (=> bm!301540 m!4935663))

(declare-fun m!4935665 () Bool)

(assert (=> b!4338529 m!4935665))

(declare-fun m!4935667 () Bool)

(assert (=> b!4338528 m!4935667))

(declare-fun m!4935669 () Bool)

(assert (=> b!4338528 m!4935669))

(declare-fun m!4935671 () Bool)

(assert (=> b!4338528 m!4935671))

(declare-fun m!4935673 () Bool)

(assert (=> b!4338528 m!4935673))

(declare-fun m!4935675 () Bool)

(assert (=> b!4338528 m!4935675))

(declare-fun m!4935677 () Bool)

(assert (=> b!4338528 m!4935677))

(declare-fun m!4935679 () Bool)

(assert (=> b!4338528 m!4935679))

(assert (=> b!4338528 m!4935679))

(declare-fun m!4935681 () Bool)

(assert (=> b!4338528 m!4935681))

(declare-fun m!4935683 () Bool)

(assert (=> b!4338528 m!4935683))

(assert (=> b!4338528 m!4935677))

(declare-fun m!4935685 () Bool)

(assert (=> b!4338528 m!4935685))

(declare-fun m!4935687 () Bool)

(assert (=> b!4338528 m!4935687))

(declare-fun m!4935689 () Bool)

(assert (=> d!1275266 m!4935689))

(declare-fun m!4935691 () Bool)

(assert (=> d!1275266 m!4935691))

(assert (=> bm!301539 m!4935653))

(assert (=> b!4338526 m!4935675))

(declare-fun m!4935693 () Bool)

(assert (=> b!4338527 m!4935693))

(assert (=> b!4338317 d!1275266))

(declare-fun bs!609805 () Bool)

(declare-fun b!4338530 () Bool)

(assert (= bs!609805 (and b!4338530 b!4338528)))

(declare-fun lambda!136727 () Int)

(assert (=> bs!609805 (= (= lt!1552532 lt!1552858) (= lambda!136727 lambda!136725))))

(declare-fun bs!609806 () Bool)

(assert (= bs!609806 (and b!4338530 b!4338525)))

(assert (=> bs!609806 (= lambda!136727 lambda!136723)))

(declare-fun bs!609807 () Bool)

(assert (= bs!609807 (and b!4338530 b!4338516)))

(assert (=> bs!609807 (= lambda!136727 lambda!136719)))

(assert (=> bs!609805 (= lambda!136727 lambda!136724)))

(declare-fun bs!609808 () Bool)

(assert (= bs!609808 (and b!4338530 d!1275266)))

(assert (=> bs!609808 (= (= lt!1552532 lt!1552873) (= lambda!136727 lambda!136726))))

(declare-fun bs!609809 () Bool)

(assert (= bs!609809 (and b!4338530 b!4338519)))

(assert (=> bs!609809 (= (= lt!1552532 lt!1552837) (= lambda!136727 lambda!136721))))

(assert (=> bs!609809 (= lambda!136727 lambda!136720)))

(declare-fun bs!609810 () Bool)

(assert (= bs!609810 (and b!4338530 d!1275196)))

(assert (=> bs!609810 (= (= lt!1552532 lt!1552852) (= lambda!136727 lambda!136722))))

(declare-fun bs!609811 () Bool)

(assert (= bs!609811 (and b!4338530 d!1275176)))

(assert (=> bs!609811 (not (= lambda!136727 lambda!136635))))

(assert (=> b!4338530 true))

(declare-fun bs!609812 () Bool)

(declare-fun b!4338533 () Bool)

(assert (= bs!609812 (and b!4338533 b!4338528)))

(declare-fun lambda!136728 () Int)

(assert (=> bs!609812 (= (= lt!1552532 lt!1552858) (= lambda!136728 lambda!136725))))

(declare-fun bs!609813 () Bool)

(assert (= bs!609813 (and b!4338533 b!4338525)))

(assert (=> bs!609813 (= lambda!136728 lambda!136723)))

(declare-fun bs!609814 () Bool)

(assert (= bs!609814 (and b!4338533 b!4338516)))

(assert (=> bs!609814 (= lambda!136728 lambda!136719)))

(assert (=> bs!609812 (= lambda!136728 lambda!136724)))

(declare-fun bs!609815 () Bool)

(assert (= bs!609815 (and b!4338533 d!1275266)))

(assert (=> bs!609815 (= (= lt!1552532 lt!1552873) (= lambda!136728 lambda!136726))))

(declare-fun bs!609816 () Bool)

(assert (= bs!609816 (and b!4338533 b!4338519)))

(assert (=> bs!609816 (= (= lt!1552532 lt!1552837) (= lambda!136728 lambda!136721))))

(declare-fun bs!609817 () Bool)

(assert (= bs!609817 (and b!4338533 b!4338530)))

(assert (=> bs!609817 (= lambda!136728 lambda!136727)))

(assert (=> bs!609816 (= lambda!136728 lambda!136720)))

(declare-fun bs!609818 () Bool)

(assert (= bs!609818 (and b!4338533 d!1275196)))

(assert (=> bs!609818 (= (= lt!1552532 lt!1552852) (= lambda!136728 lambda!136722))))

(declare-fun bs!609819 () Bool)

(assert (= bs!609819 (and b!4338533 d!1275176)))

(assert (=> bs!609819 (not (= lambda!136728 lambda!136635))))

(assert (=> b!4338533 true))

(declare-fun lambda!136729 () Int)

(declare-fun lt!1552879 () ListMap!2037)

(assert (=> bs!609812 (= (= lt!1552879 lt!1552858) (= lambda!136729 lambda!136725))))

(assert (=> bs!609813 (= (= lt!1552879 lt!1552532) (= lambda!136729 lambda!136723))))

(assert (=> bs!609814 (= (= lt!1552879 lt!1552532) (= lambda!136729 lambda!136719))))

(assert (=> bs!609812 (= (= lt!1552879 lt!1552532) (= lambda!136729 lambda!136724))))

(assert (=> bs!609815 (= (= lt!1552879 lt!1552873) (= lambda!136729 lambda!136726))))

(assert (=> b!4338533 (= (= lt!1552879 lt!1552532) (= lambda!136729 lambda!136728))))

(assert (=> bs!609816 (= (= lt!1552879 lt!1552837) (= lambda!136729 lambda!136721))))

(assert (=> bs!609817 (= (= lt!1552879 lt!1552532) (= lambda!136729 lambda!136727))))

(assert (=> bs!609816 (= (= lt!1552879 lt!1552532) (= lambda!136729 lambda!136720))))

(assert (=> bs!609818 (= (= lt!1552879 lt!1552852) (= lambda!136729 lambda!136722))))

(assert (=> bs!609819 (not (= lambda!136729 lambda!136635))))

(assert (=> b!4338533 true))

(declare-fun bs!609820 () Bool)

(declare-fun d!1275268 () Bool)

(assert (= bs!609820 (and d!1275268 b!4338528)))

(declare-fun lt!1552894 () ListMap!2037)

(declare-fun lambda!136730 () Int)

(assert (=> bs!609820 (= (= lt!1552894 lt!1552858) (= lambda!136730 lambda!136725))))

(declare-fun bs!609821 () Bool)

(assert (= bs!609821 (and d!1275268 b!4338525)))

(assert (=> bs!609821 (= (= lt!1552894 lt!1552532) (= lambda!136730 lambda!136723))))

(declare-fun bs!609822 () Bool)

(assert (= bs!609822 (and d!1275268 b!4338516)))

(assert (=> bs!609822 (= (= lt!1552894 lt!1552532) (= lambda!136730 lambda!136719))))

(assert (=> bs!609820 (= (= lt!1552894 lt!1552532) (= lambda!136730 lambda!136724))))

(declare-fun bs!609823 () Bool)

(assert (= bs!609823 (and d!1275268 b!4338533)))

(assert (=> bs!609823 (= (= lt!1552894 lt!1552879) (= lambda!136730 lambda!136729))))

(declare-fun bs!609824 () Bool)

(assert (= bs!609824 (and d!1275268 d!1275266)))

(assert (=> bs!609824 (= (= lt!1552894 lt!1552873) (= lambda!136730 lambda!136726))))

(assert (=> bs!609823 (= (= lt!1552894 lt!1552532) (= lambda!136730 lambda!136728))))

(declare-fun bs!609825 () Bool)

(assert (= bs!609825 (and d!1275268 b!4338519)))

(assert (=> bs!609825 (= (= lt!1552894 lt!1552837) (= lambda!136730 lambda!136721))))

(declare-fun bs!609826 () Bool)

(assert (= bs!609826 (and d!1275268 b!4338530)))

(assert (=> bs!609826 (= (= lt!1552894 lt!1552532) (= lambda!136730 lambda!136727))))

(assert (=> bs!609825 (= (= lt!1552894 lt!1552532) (= lambda!136730 lambda!136720))))

(declare-fun bs!609827 () Bool)

(assert (= bs!609827 (and d!1275268 d!1275196)))

(assert (=> bs!609827 (= (= lt!1552894 lt!1552852) (= lambda!136730 lambda!136722))))

(declare-fun bs!609828 () Bool)

(assert (= bs!609828 (and d!1275268 d!1275176)))

(assert (=> bs!609828 (not (= lambda!136730 lambda!136635))))

(assert (=> d!1275268 true))

(declare-fun e!2699518 () ListMap!2037)

(assert (=> b!4338530 (= e!2699518 lt!1552532)))

(declare-fun lt!1552876 () Unit!69077)

(declare-fun call!301548 () Unit!69077)

(assert (=> b!4338530 (= lt!1552876 call!301548)))

(declare-fun call!301549 () Bool)

(assert (=> b!4338530 call!301549))

(declare-fun lt!1552888 () Unit!69077)

(assert (=> b!4338530 (= lt!1552888 lt!1552876)))

(declare-fun call!301547 () Bool)

(assert (=> b!4338530 call!301547))

(declare-fun lt!1552887 () Unit!69077)

(declare-fun Unit!69148 () Unit!69077)

(assert (=> b!4338530 (= lt!1552887 Unit!69148)))

(declare-fun bm!301542 () Bool)

(assert (=> bm!301542 (= call!301548 (lemmaContainsAllItsOwnKeys!31 lt!1552532))))

(declare-fun bm!301543 () Bool)

(declare-fun c!737627 () Bool)

(assert (=> bm!301543 (= call!301549 (forall!8985 (toList!2794 lt!1552532) (ite c!737627 lambda!136727 lambda!136729)))))

(declare-fun b!4338531 () Bool)

(declare-fun e!2699520 () Bool)

(assert (=> b!4338531 (= e!2699520 (forall!8985 (toList!2794 lt!1552532) lambda!136729))))

(declare-fun b!4338532 () Bool)

(declare-fun e!2699519 () Bool)

(assert (=> b!4338532 (= e!2699519 (invariantList!638 (toList!2794 lt!1552894)))))

(assert (=> b!4338533 (= e!2699518 lt!1552879)))

(declare-fun lt!1552880 () ListMap!2037)

(assert (=> b!4338533 (= lt!1552880 (+!482 lt!1552532 (h!54234 newBucket!200)))))

(assert (=> b!4338533 (= lt!1552879 (addToMapMapFromBucket!113 (t!355763 newBucket!200) (+!482 lt!1552532 (h!54234 newBucket!200))))))

(declare-fun lt!1552889 () Unit!69077)

(assert (=> b!4338533 (= lt!1552889 call!301548)))

(assert (=> b!4338533 (forall!8985 (toList!2794 lt!1552532) lambda!136728)))

(declare-fun lt!1552891 () Unit!69077)

(assert (=> b!4338533 (= lt!1552891 lt!1552889)))

(assert (=> b!4338533 call!301547))

(declare-fun lt!1552892 () Unit!69077)

(declare-fun Unit!69150 () Unit!69077)

(assert (=> b!4338533 (= lt!1552892 Unit!69150)))

(assert (=> b!4338533 (forall!8985 (t!355763 newBucket!200) lambda!136729)))

(declare-fun lt!1552874 () Unit!69077)

(declare-fun Unit!69151 () Unit!69077)

(assert (=> b!4338533 (= lt!1552874 Unit!69151)))

(declare-fun lt!1552878 () Unit!69077)

(declare-fun Unit!69152 () Unit!69077)

(assert (=> b!4338533 (= lt!1552878 Unit!69152)))

(declare-fun lt!1552881 () Unit!69077)

(assert (=> b!4338533 (= lt!1552881 (forallContained!1635 (toList!2794 lt!1552880) lambda!136729 (h!54234 newBucket!200)))))

(assert (=> b!4338533 (contains!10812 lt!1552880 (_1!27289 (h!54234 newBucket!200)))))

(declare-fun lt!1552884 () Unit!69077)

(declare-fun Unit!69153 () Unit!69077)

(assert (=> b!4338533 (= lt!1552884 Unit!69153)))

(assert (=> b!4338533 (contains!10812 lt!1552879 (_1!27289 (h!54234 newBucket!200)))))

(declare-fun lt!1552893 () Unit!69077)

(declare-fun Unit!69154 () Unit!69077)

(assert (=> b!4338533 (= lt!1552893 Unit!69154)))

(assert (=> b!4338533 (forall!8985 newBucket!200 lambda!136729)))

(declare-fun lt!1552875 () Unit!69077)

(declare-fun Unit!69155 () Unit!69077)

(assert (=> b!4338533 (= lt!1552875 Unit!69155)))

(assert (=> b!4338533 (forall!8985 (toList!2794 lt!1552880) lambda!136729)))

(declare-fun lt!1552885 () Unit!69077)

(declare-fun Unit!69156 () Unit!69077)

(assert (=> b!4338533 (= lt!1552885 Unit!69156)))

(declare-fun lt!1552877 () Unit!69077)

(declare-fun Unit!69157 () Unit!69077)

(assert (=> b!4338533 (= lt!1552877 Unit!69157)))

(declare-fun lt!1552882 () Unit!69077)

(assert (=> b!4338533 (= lt!1552882 (addForallContainsKeyThenBeforeAdding!31 lt!1552532 lt!1552879 (_1!27289 (h!54234 newBucket!200)) (_2!27289 (h!54234 newBucket!200))))))

(assert (=> b!4338533 call!301549))

(declare-fun lt!1552883 () Unit!69077)

(assert (=> b!4338533 (= lt!1552883 lt!1552882)))

(assert (=> b!4338533 (forall!8985 (toList!2794 lt!1552532) lambda!136729)))

(declare-fun lt!1552886 () Unit!69077)

(declare-fun Unit!69158 () Unit!69077)

(assert (=> b!4338533 (= lt!1552886 Unit!69158)))

(declare-fun res!1780012 () Bool)

(assert (=> b!4338533 (= res!1780012 (forall!8985 newBucket!200 lambda!136729))))

(assert (=> b!4338533 (=> (not res!1780012) (not e!2699520))))

(assert (=> b!4338533 e!2699520))

(declare-fun lt!1552890 () Unit!69077)

(declare-fun Unit!69159 () Unit!69077)

(assert (=> b!4338533 (= lt!1552890 Unit!69159)))

(declare-fun b!4338534 () Bool)

(declare-fun res!1780014 () Bool)

(assert (=> b!4338534 (=> (not res!1780014) (not e!2699519))))

(assert (=> b!4338534 (= res!1780014 (forall!8985 (toList!2794 lt!1552532) lambda!136730))))

(assert (=> d!1275268 e!2699519))

(declare-fun res!1780013 () Bool)

(assert (=> d!1275268 (=> (not res!1780013) (not e!2699519))))

(assert (=> d!1275268 (= res!1780013 (forall!8985 newBucket!200 lambda!136730))))

(assert (=> d!1275268 (= lt!1552894 e!2699518)))

(assert (=> d!1275268 (= c!737627 ((_ is Nil!48723) newBucket!200))))

(assert (=> d!1275268 (noDuplicateKeys!405 newBucket!200)))

(assert (=> d!1275268 (= (addToMapMapFromBucket!113 newBucket!200 lt!1552532) lt!1552894)))

(declare-fun bm!301544 () Bool)

(assert (=> bm!301544 (= call!301547 (forall!8985 (ite c!737627 (toList!2794 lt!1552532) (toList!2794 lt!1552880)) (ite c!737627 lambda!136727 lambda!136729)))))

(assert (= (and d!1275268 c!737627) b!4338530))

(assert (= (and d!1275268 (not c!737627)) b!4338533))

(assert (= (and b!4338533 res!1780012) b!4338531))

(assert (= (or b!4338530 b!4338533) bm!301542))

(assert (= (or b!4338530 b!4338533) bm!301543))

(assert (= (or b!4338530 b!4338533) bm!301544))

(assert (= (and d!1275268 res!1780013) b!4338534))

(assert (= (and b!4338534 res!1780014) b!4338532))

(declare-fun m!4935695 () Bool)

(assert (=> bm!301544 m!4935695))

(declare-fun m!4935697 () Bool)

(assert (=> bm!301543 m!4935697))

(declare-fun m!4935699 () Bool)

(assert (=> b!4338534 m!4935699))

(declare-fun m!4935701 () Bool)

(assert (=> b!4338533 m!4935701))

(declare-fun m!4935703 () Bool)

(assert (=> b!4338533 m!4935703))

(declare-fun m!4935705 () Bool)

(assert (=> b!4338533 m!4935705))

(declare-fun m!4935707 () Bool)

(assert (=> b!4338533 m!4935707))

(declare-fun m!4935709 () Bool)

(assert (=> b!4338533 m!4935709))

(declare-fun m!4935711 () Bool)

(assert (=> b!4338533 m!4935711))

(declare-fun m!4935713 () Bool)

(assert (=> b!4338533 m!4935713))

(assert (=> b!4338533 m!4935713))

(declare-fun m!4935715 () Bool)

(assert (=> b!4338533 m!4935715))

(declare-fun m!4935717 () Bool)

(assert (=> b!4338533 m!4935717))

(assert (=> b!4338533 m!4935711))

(declare-fun m!4935719 () Bool)

(assert (=> b!4338533 m!4935719))

(declare-fun m!4935721 () Bool)

(assert (=> b!4338533 m!4935721))

(declare-fun m!4935723 () Bool)

(assert (=> d!1275268 m!4935723))

(assert (=> d!1275268 m!4935217))

(assert (=> bm!301542 m!4935653))

(assert (=> b!4338531 m!4935709))

(declare-fun m!4935725 () Bool)

(assert (=> b!4338532 m!4935725))

(assert (=> b!4338317 d!1275268))

(declare-fun d!1275270 () Bool)

(declare-fun e!2699523 () Bool)

(assert (=> d!1275270 e!2699523))

(declare-fun res!1780019 () Bool)

(assert (=> d!1275270 (=> (not res!1780019) (not e!2699523))))

(declare-fun lt!1552903 () ListLongMap!1443)

(assert (=> d!1275270 (= res!1780019 (contains!10814 lt!1552903 (_1!27290 (tuple2!47993 hash!377 lt!1552539))))))

(declare-fun lt!1552904 () List!48848)

(assert (=> d!1275270 (= lt!1552903 (ListLongMap!1444 lt!1552904))))

(declare-fun lt!1552906 () Unit!69077)

(declare-fun lt!1552905 () Unit!69077)

(assert (=> d!1275270 (= lt!1552906 lt!1552905)))

(assert (=> d!1275270 (= (getValueByKey!374 lt!1552904 (_1!27290 (tuple2!47993 hash!377 lt!1552539))) (Some!10387 (_2!27290 (tuple2!47993 hash!377 lt!1552539))))))

(declare-fun lemmaContainsTupThenGetReturnValue!158 (List!48848 (_ BitVec 64) List!48847) Unit!69077)

(assert (=> d!1275270 (= lt!1552905 (lemmaContainsTupThenGetReturnValue!158 lt!1552904 (_1!27290 (tuple2!47993 hash!377 lt!1552539)) (_2!27290 (tuple2!47993 hash!377 lt!1552539))))))

(declare-fun insertStrictlySorted!95 (List!48848 (_ BitVec 64) List!48847) List!48848)

(assert (=> d!1275270 (= lt!1552904 (insertStrictlySorted!95 (toList!2793 lm!1707) (_1!27290 (tuple2!47993 hash!377 lt!1552539)) (_2!27290 (tuple2!47993 hash!377 lt!1552539))))))

(assert (=> d!1275270 (= (+!481 lm!1707 (tuple2!47993 hash!377 lt!1552539)) lt!1552903)))

(declare-fun b!4338539 () Bool)

(declare-fun res!1780020 () Bool)

(assert (=> b!4338539 (=> (not res!1780020) (not e!2699523))))

(assert (=> b!4338539 (= res!1780020 (= (getValueByKey!374 (toList!2793 lt!1552903) (_1!27290 (tuple2!47993 hash!377 lt!1552539))) (Some!10387 (_2!27290 (tuple2!47993 hash!377 lt!1552539)))))))

(declare-fun b!4338540 () Bool)

(assert (=> b!4338540 (= e!2699523 (contains!10813 (toList!2793 lt!1552903) (tuple2!47993 hash!377 lt!1552539)))))

(assert (= (and d!1275270 res!1780019) b!4338539))

(assert (= (and b!4338539 res!1780020) b!4338540))

(declare-fun m!4935727 () Bool)

(assert (=> d!1275270 m!4935727))

(declare-fun m!4935729 () Bool)

(assert (=> d!1275270 m!4935729))

(declare-fun m!4935731 () Bool)

(assert (=> d!1275270 m!4935731))

(declare-fun m!4935733 () Bool)

(assert (=> d!1275270 m!4935733))

(declare-fun m!4935735 () Bool)

(assert (=> b!4338539 m!4935735))

(declare-fun m!4935737 () Bool)

(assert (=> b!4338540 m!4935737))

(assert (=> b!4338317 d!1275270))

(declare-fun bs!609829 () Bool)

(declare-fun d!1275272 () Bool)

(assert (= bs!609829 (and d!1275272 start!418648)))

(declare-fun lambda!136733 () Int)

(assert (=> bs!609829 (= lambda!136733 lambda!136629)))

(declare-fun bs!609830 () Bool)

(assert (= bs!609830 (and d!1275272 d!1275184)))

(assert (=> bs!609830 (not (= lambda!136733 lambda!136638))))

(declare-fun lt!1552909 () ListMap!2037)

(assert (=> d!1275272 (invariantList!638 (toList!2794 lt!1552909))))

(declare-fun e!2699526 () ListMap!2037)

(assert (=> d!1275272 (= lt!1552909 e!2699526)))

(declare-fun c!737630 () Bool)

(assert (=> d!1275272 (= c!737630 ((_ is Cons!48724) (t!355764 (toList!2793 lm!1707))))))

(assert (=> d!1275272 (forall!8983 (t!355764 (toList!2793 lm!1707)) lambda!136733)))

(assert (=> d!1275272 (= (extractMap!464 (t!355764 (toList!2793 lm!1707))) lt!1552909)))

(declare-fun b!4338545 () Bool)

(assert (=> b!4338545 (= e!2699526 (addToMapMapFromBucket!113 (_2!27290 (h!54235 (t!355764 (toList!2793 lm!1707)))) (extractMap!464 (t!355764 (t!355764 (toList!2793 lm!1707))))))))

(declare-fun b!4338546 () Bool)

(assert (=> b!4338546 (= e!2699526 (ListMap!2038 Nil!48723))))

(assert (= (and d!1275272 c!737630) b!4338545))

(assert (= (and d!1275272 (not c!737630)) b!4338546))

(declare-fun m!4935739 () Bool)

(assert (=> d!1275272 m!4935739))

(declare-fun m!4935741 () Bool)

(assert (=> d!1275272 m!4935741))

(declare-fun m!4935743 () Bool)

(assert (=> b!4338545 m!4935743))

(assert (=> b!4338545 m!4935743))

(declare-fun m!4935745 () Bool)

(assert (=> b!4338545 m!4935745))

(assert (=> b!4338317 d!1275272))

(declare-fun bs!609831 () Bool)

(declare-fun d!1275274 () Bool)

(assert (= bs!609831 (and d!1275274 start!418648)))

(declare-fun lambda!136734 () Int)

(assert (=> bs!609831 (= lambda!136734 lambda!136629)))

(declare-fun bs!609832 () Bool)

(assert (= bs!609832 (and d!1275274 d!1275184)))

(assert (=> bs!609832 (not (= lambda!136734 lambda!136638))))

(declare-fun bs!609833 () Bool)

(assert (= bs!609833 (and d!1275274 d!1275272)))

(assert (=> bs!609833 (= lambda!136734 lambda!136733)))

(declare-fun lt!1552910 () ListMap!2037)

(assert (=> d!1275274 (invariantList!638 (toList!2794 lt!1552910))))

(declare-fun e!2699527 () ListMap!2037)

(assert (=> d!1275274 (= lt!1552910 e!2699527)))

(declare-fun c!737631 () Bool)

(assert (=> d!1275274 (= c!737631 ((_ is Cons!48724) (toList!2793 lt!1552543)))))

(assert (=> d!1275274 (forall!8983 (toList!2793 lt!1552543) lambda!136734)))

(assert (=> d!1275274 (= (extractMap!464 (toList!2793 lt!1552543)) lt!1552910)))

(declare-fun b!4338547 () Bool)

(assert (=> b!4338547 (= e!2699527 (addToMapMapFromBucket!113 (_2!27290 (h!54235 (toList!2793 lt!1552543))) (extractMap!464 (t!355764 (toList!2793 lt!1552543)))))))

(declare-fun b!4338548 () Bool)

(assert (=> b!4338548 (= e!2699527 (ListMap!2038 Nil!48723))))

(assert (= (and d!1275274 c!737631) b!4338547))

(assert (= (and d!1275274 (not c!737631)) b!4338548))

(declare-fun m!4935747 () Bool)

(assert (=> d!1275274 m!4935747))

(declare-fun m!4935749 () Bool)

(assert (=> d!1275274 m!4935749))

(declare-fun m!4935751 () Bool)

(assert (=> b!4338547 m!4935751))

(assert (=> b!4338547 m!4935751))

(declare-fun m!4935753 () Bool)

(assert (=> b!4338547 m!4935753))

(assert (=> b!4338317 d!1275274))

(declare-fun bs!609834 () Bool)

(declare-fun b!4338549 () Bool)

(assert (= bs!609834 (and b!4338549 d!1275268)))

(declare-fun lambda!136735 () Int)

(assert (=> bs!609834 (= (= (+!482 lt!1552532 lt!1552534) lt!1552894) (= lambda!136735 lambda!136730))))

(declare-fun bs!609835 () Bool)

(assert (= bs!609835 (and b!4338549 b!4338528)))

(assert (=> bs!609835 (= (= (+!482 lt!1552532 lt!1552534) lt!1552858) (= lambda!136735 lambda!136725))))

(declare-fun bs!609836 () Bool)

(assert (= bs!609836 (and b!4338549 b!4338525)))

(assert (=> bs!609836 (= (= (+!482 lt!1552532 lt!1552534) lt!1552532) (= lambda!136735 lambda!136723))))

(declare-fun bs!609837 () Bool)

(assert (= bs!609837 (and b!4338549 b!4338516)))

(assert (=> bs!609837 (= (= (+!482 lt!1552532 lt!1552534) lt!1552532) (= lambda!136735 lambda!136719))))

(assert (=> bs!609835 (= (= (+!482 lt!1552532 lt!1552534) lt!1552532) (= lambda!136735 lambda!136724))))

(declare-fun bs!609838 () Bool)

(assert (= bs!609838 (and b!4338549 b!4338533)))

(assert (=> bs!609838 (= (= (+!482 lt!1552532 lt!1552534) lt!1552879) (= lambda!136735 lambda!136729))))

(declare-fun bs!609839 () Bool)

(assert (= bs!609839 (and b!4338549 d!1275266)))

(assert (=> bs!609839 (= (= (+!482 lt!1552532 lt!1552534) lt!1552873) (= lambda!136735 lambda!136726))))

(assert (=> bs!609838 (= (= (+!482 lt!1552532 lt!1552534) lt!1552532) (= lambda!136735 lambda!136728))))

(declare-fun bs!609840 () Bool)

(assert (= bs!609840 (and b!4338549 b!4338519)))

(assert (=> bs!609840 (= (= (+!482 lt!1552532 lt!1552534) lt!1552837) (= lambda!136735 lambda!136721))))

(declare-fun bs!609841 () Bool)

(assert (= bs!609841 (and b!4338549 b!4338530)))

(assert (=> bs!609841 (= (= (+!482 lt!1552532 lt!1552534) lt!1552532) (= lambda!136735 lambda!136727))))

(assert (=> bs!609840 (= (= (+!482 lt!1552532 lt!1552534) lt!1552532) (= lambda!136735 lambda!136720))))

(declare-fun bs!609842 () Bool)

(assert (= bs!609842 (and b!4338549 d!1275196)))

(assert (=> bs!609842 (= (= (+!482 lt!1552532 lt!1552534) lt!1552852) (= lambda!136735 lambda!136722))))

(declare-fun bs!609843 () Bool)

(assert (= bs!609843 (and b!4338549 d!1275176)))

(assert (=> bs!609843 (not (= lambda!136735 lambda!136635))))

(assert (=> b!4338549 true))

(declare-fun bs!609844 () Bool)

(declare-fun b!4338552 () Bool)

(assert (= bs!609844 (and b!4338552 d!1275268)))

(declare-fun lambda!136736 () Int)

(assert (=> bs!609844 (= (= (+!482 lt!1552532 lt!1552534) lt!1552894) (= lambda!136736 lambda!136730))))

(declare-fun bs!609845 () Bool)

(assert (= bs!609845 (and b!4338552 b!4338549)))

(assert (=> bs!609845 (= lambda!136736 lambda!136735)))

(declare-fun bs!609846 () Bool)

(assert (= bs!609846 (and b!4338552 b!4338528)))

(assert (=> bs!609846 (= (= (+!482 lt!1552532 lt!1552534) lt!1552858) (= lambda!136736 lambda!136725))))

(declare-fun bs!609847 () Bool)

(assert (= bs!609847 (and b!4338552 b!4338525)))

(assert (=> bs!609847 (= (= (+!482 lt!1552532 lt!1552534) lt!1552532) (= lambda!136736 lambda!136723))))

(declare-fun bs!609848 () Bool)

(assert (= bs!609848 (and b!4338552 b!4338516)))

(assert (=> bs!609848 (= (= (+!482 lt!1552532 lt!1552534) lt!1552532) (= lambda!136736 lambda!136719))))

(assert (=> bs!609846 (= (= (+!482 lt!1552532 lt!1552534) lt!1552532) (= lambda!136736 lambda!136724))))

(declare-fun bs!609849 () Bool)

(assert (= bs!609849 (and b!4338552 b!4338533)))

(assert (=> bs!609849 (= (= (+!482 lt!1552532 lt!1552534) lt!1552879) (= lambda!136736 lambda!136729))))

(declare-fun bs!609850 () Bool)

(assert (= bs!609850 (and b!4338552 d!1275266)))

(assert (=> bs!609850 (= (= (+!482 lt!1552532 lt!1552534) lt!1552873) (= lambda!136736 lambda!136726))))

(assert (=> bs!609849 (= (= (+!482 lt!1552532 lt!1552534) lt!1552532) (= lambda!136736 lambda!136728))))

(declare-fun bs!609851 () Bool)

(assert (= bs!609851 (and b!4338552 b!4338519)))

(assert (=> bs!609851 (= (= (+!482 lt!1552532 lt!1552534) lt!1552837) (= lambda!136736 lambda!136721))))

(declare-fun bs!609852 () Bool)

(assert (= bs!609852 (and b!4338552 b!4338530)))

(assert (=> bs!609852 (= (= (+!482 lt!1552532 lt!1552534) lt!1552532) (= lambda!136736 lambda!136727))))

(assert (=> bs!609851 (= (= (+!482 lt!1552532 lt!1552534) lt!1552532) (= lambda!136736 lambda!136720))))

(declare-fun bs!609853 () Bool)

(assert (= bs!609853 (and b!4338552 d!1275196)))

(assert (=> bs!609853 (= (= (+!482 lt!1552532 lt!1552534) lt!1552852) (= lambda!136736 lambda!136722))))

(declare-fun bs!609854 () Bool)

(assert (= bs!609854 (and b!4338552 d!1275176)))

(assert (=> bs!609854 (not (= lambda!136736 lambda!136635))))

(assert (=> b!4338552 true))

(declare-fun lambda!136737 () Int)

(declare-fun lt!1552916 () ListMap!2037)

(assert (=> bs!609844 (= (= lt!1552916 lt!1552894) (= lambda!136737 lambda!136730))))

(assert (=> bs!609845 (= (= lt!1552916 (+!482 lt!1552532 lt!1552534)) (= lambda!136737 lambda!136735))))

(assert (=> bs!609846 (= (= lt!1552916 lt!1552858) (= lambda!136737 lambda!136725))))

(assert (=> bs!609847 (= (= lt!1552916 lt!1552532) (= lambda!136737 lambda!136723))))

(assert (=> bs!609848 (= (= lt!1552916 lt!1552532) (= lambda!136737 lambda!136719))))

(assert (=> bs!609849 (= (= lt!1552916 lt!1552879) (= lambda!136737 lambda!136729))))

(assert (=> bs!609850 (= (= lt!1552916 lt!1552873) (= lambda!136737 lambda!136726))))

(assert (=> bs!609849 (= (= lt!1552916 lt!1552532) (= lambda!136737 lambda!136728))))

(assert (=> bs!609851 (= (= lt!1552916 lt!1552837) (= lambda!136737 lambda!136721))))

(assert (=> bs!609852 (= (= lt!1552916 lt!1552532) (= lambda!136737 lambda!136727))))

(assert (=> bs!609851 (= (= lt!1552916 lt!1552532) (= lambda!136737 lambda!136720))))

(assert (=> b!4338552 (= (= lt!1552916 (+!482 lt!1552532 lt!1552534)) (= lambda!136737 lambda!136736))))

(assert (=> bs!609846 (= (= lt!1552916 lt!1552532) (= lambda!136737 lambda!136724))))

(assert (=> bs!609853 (= (= lt!1552916 lt!1552852) (= lambda!136737 lambda!136722))))

(assert (=> bs!609854 (not (= lambda!136737 lambda!136635))))

(assert (=> b!4338552 true))

(declare-fun bs!609855 () Bool)

(declare-fun d!1275276 () Bool)

(assert (= bs!609855 (and d!1275276 d!1275268)))

(declare-fun lambda!136738 () Int)

(declare-fun lt!1552931 () ListMap!2037)

(assert (=> bs!609855 (= (= lt!1552931 lt!1552894) (= lambda!136738 lambda!136730))))

(declare-fun bs!609856 () Bool)

(assert (= bs!609856 (and d!1275276 b!4338549)))

(assert (=> bs!609856 (= (= lt!1552931 (+!482 lt!1552532 lt!1552534)) (= lambda!136738 lambda!136735))))

(declare-fun bs!609857 () Bool)

(assert (= bs!609857 (and d!1275276 b!4338528)))

(assert (=> bs!609857 (= (= lt!1552931 lt!1552858) (= lambda!136738 lambda!136725))))

(declare-fun bs!609858 () Bool)

(assert (= bs!609858 (and d!1275276 b!4338525)))

(assert (=> bs!609858 (= (= lt!1552931 lt!1552532) (= lambda!136738 lambda!136723))))

(declare-fun bs!609859 () Bool)

(assert (= bs!609859 (and d!1275276 b!4338516)))

(assert (=> bs!609859 (= (= lt!1552931 lt!1552532) (= lambda!136738 lambda!136719))))

(declare-fun bs!609860 () Bool)

(assert (= bs!609860 (and d!1275276 b!4338533)))

(assert (=> bs!609860 (= (= lt!1552931 lt!1552879) (= lambda!136738 lambda!136729))))

(declare-fun bs!609861 () Bool)

(assert (= bs!609861 (and d!1275276 d!1275266)))

(assert (=> bs!609861 (= (= lt!1552931 lt!1552873) (= lambda!136738 lambda!136726))))

(assert (=> bs!609860 (= (= lt!1552931 lt!1552532) (= lambda!136738 lambda!136728))))

(declare-fun bs!609862 () Bool)

(assert (= bs!609862 (and d!1275276 b!4338530)))

(assert (=> bs!609862 (= (= lt!1552931 lt!1552532) (= lambda!136738 lambda!136727))))

(declare-fun bs!609863 () Bool)

(assert (= bs!609863 (and d!1275276 b!4338519)))

(assert (=> bs!609863 (= (= lt!1552931 lt!1552532) (= lambda!136738 lambda!136720))))

(declare-fun bs!609864 () Bool)

(assert (= bs!609864 (and d!1275276 b!4338552)))

(assert (=> bs!609864 (= (= lt!1552931 (+!482 lt!1552532 lt!1552534)) (= lambda!136738 lambda!136736))))

(assert (=> bs!609857 (= (= lt!1552931 lt!1552532) (= lambda!136738 lambda!136724))))

(assert (=> bs!609864 (= (= lt!1552931 lt!1552916) (= lambda!136738 lambda!136737))))

(assert (=> bs!609863 (= (= lt!1552931 lt!1552837) (= lambda!136738 lambda!136721))))

(declare-fun bs!609865 () Bool)

(assert (= bs!609865 (and d!1275276 d!1275196)))

(assert (=> bs!609865 (= (= lt!1552931 lt!1552852) (= lambda!136738 lambda!136722))))

(declare-fun bs!609866 () Bool)

(assert (= bs!609866 (and d!1275276 d!1275176)))

(assert (=> bs!609866 (not (= lambda!136738 lambda!136635))))

(assert (=> d!1275276 true))

(declare-fun e!2699528 () ListMap!2037)

(assert (=> b!4338549 (= e!2699528 (+!482 lt!1552532 lt!1552534))))

(declare-fun lt!1552913 () Unit!69077)

(declare-fun call!301551 () Unit!69077)

(assert (=> b!4338549 (= lt!1552913 call!301551)))

(declare-fun call!301552 () Bool)

(assert (=> b!4338549 call!301552))

(declare-fun lt!1552925 () Unit!69077)

(assert (=> b!4338549 (= lt!1552925 lt!1552913)))

(declare-fun call!301550 () Bool)

(assert (=> b!4338549 call!301550))

(declare-fun lt!1552924 () Unit!69077)

(declare-fun Unit!69160 () Unit!69077)

(assert (=> b!4338549 (= lt!1552924 Unit!69160)))

(declare-fun bm!301545 () Bool)

(assert (=> bm!301545 (= call!301551 (lemmaContainsAllItsOwnKeys!31 (+!482 lt!1552532 lt!1552534)))))

(declare-fun c!737632 () Bool)

(declare-fun bm!301546 () Bool)

(assert (=> bm!301546 (= call!301552 (forall!8985 (toList!2794 (+!482 lt!1552532 lt!1552534)) (ite c!737632 lambda!136735 lambda!136737)))))

(declare-fun e!2699530 () Bool)

(declare-fun b!4338550 () Bool)

(assert (=> b!4338550 (= e!2699530 (forall!8985 (toList!2794 (+!482 lt!1552532 lt!1552534)) lambda!136737))))

(declare-fun b!4338551 () Bool)

(declare-fun e!2699529 () Bool)

(assert (=> b!4338551 (= e!2699529 (invariantList!638 (toList!2794 lt!1552931)))))

(assert (=> b!4338552 (= e!2699528 lt!1552916)))

(declare-fun lt!1552917 () ListMap!2037)

(assert (=> b!4338552 (= lt!1552917 (+!482 (+!482 lt!1552532 lt!1552534) (h!54234 lt!1552547)))))

(assert (=> b!4338552 (= lt!1552916 (addToMapMapFromBucket!113 (t!355763 lt!1552547) (+!482 (+!482 lt!1552532 lt!1552534) (h!54234 lt!1552547))))))

(declare-fun lt!1552926 () Unit!69077)

(assert (=> b!4338552 (= lt!1552926 call!301551)))

(assert (=> b!4338552 (forall!8985 (toList!2794 (+!482 lt!1552532 lt!1552534)) lambda!136736)))

(declare-fun lt!1552928 () Unit!69077)

(assert (=> b!4338552 (= lt!1552928 lt!1552926)))

(assert (=> b!4338552 call!301550))

(declare-fun lt!1552929 () Unit!69077)

(declare-fun Unit!69161 () Unit!69077)

(assert (=> b!4338552 (= lt!1552929 Unit!69161)))

(assert (=> b!4338552 (forall!8985 (t!355763 lt!1552547) lambda!136737)))

(declare-fun lt!1552911 () Unit!69077)

(declare-fun Unit!69162 () Unit!69077)

(assert (=> b!4338552 (= lt!1552911 Unit!69162)))

(declare-fun lt!1552915 () Unit!69077)

(declare-fun Unit!69163 () Unit!69077)

(assert (=> b!4338552 (= lt!1552915 Unit!69163)))

(declare-fun lt!1552918 () Unit!69077)

(assert (=> b!4338552 (= lt!1552918 (forallContained!1635 (toList!2794 lt!1552917) lambda!136737 (h!54234 lt!1552547)))))

(assert (=> b!4338552 (contains!10812 lt!1552917 (_1!27289 (h!54234 lt!1552547)))))

(declare-fun lt!1552921 () Unit!69077)

(declare-fun Unit!69164 () Unit!69077)

(assert (=> b!4338552 (= lt!1552921 Unit!69164)))

(assert (=> b!4338552 (contains!10812 lt!1552916 (_1!27289 (h!54234 lt!1552547)))))

(declare-fun lt!1552930 () Unit!69077)

(declare-fun Unit!69165 () Unit!69077)

(assert (=> b!4338552 (= lt!1552930 Unit!69165)))

(assert (=> b!4338552 (forall!8985 lt!1552547 lambda!136737)))

(declare-fun lt!1552912 () Unit!69077)

(declare-fun Unit!69166 () Unit!69077)

(assert (=> b!4338552 (= lt!1552912 Unit!69166)))

(assert (=> b!4338552 (forall!8985 (toList!2794 lt!1552917) lambda!136737)))

(declare-fun lt!1552922 () Unit!69077)

(declare-fun Unit!69167 () Unit!69077)

(assert (=> b!4338552 (= lt!1552922 Unit!69167)))

(declare-fun lt!1552914 () Unit!69077)

(declare-fun Unit!69168 () Unit!69077)

(assert (=> b!4338552 (= lt!1552914 Unit!69168)))

(declare-fun lt!1552919 () Unit!69077)

(assert (=> b!4338552 (= lt!1552919 (addForallContainsKeyThenBeforeAdding!31 (+!482 lt!1552532 lt!1552534) lt!1552916 (_1!27289 (h!54234 lt!1552547)) (_2!27289 (h!54234 lt!1552547))))))

(assert (=> b!4338552 call!301552))

(declare-fun lt!1552920 () Unit!69077)

(assert (=> b!4338552 (= lt!1552920 lt!1552919)))

(assert (=> b!4338552 (forall!8985 (toList!2794 (+!482 lt!1552532 lt!1552534)) lambda!136737)))

(declare-fun lt!1552923 () Unit!69077)

(declare-fun Unit!69169 () Unit!69077)

(assert (=> b!4338552 (= lt!1552923 Unit!69169)))

(declare-fun res!1780021 () Bool)

(assert (=> b!4338552 (= res!1780021 (forall!8985 lt!1552547 lambda!136737))))

(assert (=> b!4338552 (=> (not res!1780021) (not e!2699530))))

(assert (=> b!4338552 e!2699530))

(declare-fun lt!1552927 () Unit!69077)

(declare-fun Unit!69170 () Unit!69077)

(assert (=> b!4338552 (= lt!1552927 Unit!69170)))

(declare-fun b!4338553 () Bool)

(declare-fun res!1780023 () Bool)

(assert (=> b!4338553 (=> (not res!1780023) (not e!2699529))))

(assert (=> b!4338553 (= res!1780023 (forall!8985 (toList!2794 (+!482 lt!1552532 lt!1552534)) lambda!136738))))

(assert (=> d!1275276 e!2699529))

(declare-fun res!1780022 () Bool)

(assert (=> d!1275276 (=> (not res!1780022) (not e!2699529))))

(assert (=> d!1275276 (= res!1780022 (forall!8985 lt!1552547 lambda!136738))))

(assert (=> d!1275276 (= lt!1552931 e!2699528)))

(assert (=> d!1275276 (= c!737632 ((_ is Nil!48723) lt!1552547))))

(assert (=> d!1275276 (noDuplicateKeys!405 lt!1552547)))

(assert (=> d!1275276 (= (addToMapMapFromBucket!113 lt!1552547 (+!482 lt!1552532 lt!1552534)) lt!1552931)))

(declare-fun bm!301547 () Bool)

(assert (=> bm!301547 (= call!301550 (forall!8985 (ite c!737632 (toList!2794 (+!482 lt!1552532 lt!1552534)) (toList!2794 lt!1552917)) (ite c!737632 lambda!136735 lambda!136737)))))

(assert (= (and d!1275276 c!737632) b!4338549))

(assert (= (and d!1275276 (not c!737632)) b!4338552))

(assert (= (and b!4338552 res!1780021) b!4338550))

(assert (= (or b!4338549 b!4338552) bm!301545))

(assert (= (or b!4338549 b!4338552) bm!301546))

(assert (= (or b!4338549 b!4338552) bm!301547))

(assert (= (and d!1275276 res!1780022) b!4338553))

(assert (= (and b!4338553 res!1780023) b!4338551))

(declare-fun m!4935755 () Bool)

(assert (=> bm!301547 m!4935755))

(declare-fun m!4935757 () Bool)

(assert (=> bm!301546 m!4935757))

(declare-fun m!4935759 () Bool)

(assert (=> b!4338553 m!4935759))

(declare-fun m!4935761 () Bool)

(assert (=> b!4338552 m!4935761))

(declare-fun m!4935763 () Bool)

(assert (=> b!4338552 m!4935763))

(declare-fun m!4935765 () Bool)

(assert (=> b!4338552 m!4935765))

(assert (=> b!4338552 m!4935231))

(declare-fun m!4935767 () Bool)

(assert (=> b!4338552 m!4935767))

(declare-fun m!4935769 () Bool)

(assert (=> b!4338552 m!4935769))

(assert (=> b!4338552 m!4935231))

(declare-fun m!4935771 () Bool)

(assert (=> b!4338552 m!4935771))

(declare-fun m!4935773 () Bool)

(assert (=> b!4338552 m!4935773))

(assert (=> b!4338552 m!4935773))

(declare-fun m!4935775 () Bool)

(assert (=> b!4338552 m!4935775))

(declare-fun m!4935777 () Bool)

(assert (=> b!4338552 m!4935777))

(assert (=> b!4338552 m!4935771))

(declare-fun m!4935779 () Bool)

(assert (=> b!4338552 m!4935779))

(declare-fun m!4935781 () Bool)

(assert (=> b!4338552 m!4935781))

(declare-fun m!4935783 () Bool)

(assert (=> d!1275276 m!4935783))

(assert (=> d!1275276 m!4935691))

(assert (=> bm!301545 m!4935231))

(declare-fun m!4935785 () Bool)

(assert (=> bm!301545 m!4935785))

(assert (=> b!4338550 m!4935769))

(declare-fun m!4935787 () Bool)

(assert (=> b!4338551 m!4935787))

(assert (=> b!4338317 d!1275276))

(declare-fun d!1275278 () Bool)

(declare-fun e!2699531 () Bool)

(assert (=> d!1275278 e!2699531))

(declare-fun res!1780025 () Bool)

(assert (=> d!1275278 (=> (not res!1780025) (not e!2699531))))

(declare-fun lt!1552934 () ListMap!2037)

(assert (=> d!1275278 (= res!1780025 (contains!10812 lt!1552934 (_1!27289 lt!1552534)))))

(declare-fun lt!1552932 () List!48847)

(assert (=> d!1275278 (= lt!1552934 (ListMap!2038 lt!1552932))))

(declare-fun lt!1552935 () Unit!69077)

(declare-fun lt!1552933 () Unit!69077)

(assert (=> d!1275278 (= lt!1552935 lt!1552933)))

(assert (=> d!1275278 (= (getValueByKey!375 lt!1552932 (_1!27289 lt!1552534)) (Some!10388 (_2!27289 lt!1552534)))))

(assert (=> d!1275278 (= lt!1552933 (lemmaContainsTupThenGetReturnValue!157 lt!1552932 (_1!27289 lt!1552534) (_2!27289 lt!1552534)))))

(assert (=> d!1275278 (= lt!1552932 (insertNoDuplicatedKeys!71 (toList!2794 (addToMapMapFromBucket!113 lt!1552547 lt!1552532)) (_1!27289 lt!1552534) (_2!27289 lt!1552534)))))

(assert (=> d!1275278 (= (+!482 (addToMapMapFromBucket!113 lt!1552547 lt!1552532) lt!1552534) lt!1552934)))

(declare-fun b!4338554 () Bool)

(declare-fun res!1780024 () Bool)

(assert (=> b!4338554 (=> (not res!1780024) (not e!2699531))))

(assert (=> b!4338554 (= res!1780024 (= (getValueByKey!375 (toList!2794 lt!1552934) (_1!27289 lt!1552534)) (Some!10388 (_2!27289 lt!1552534))))))

(declare-fun b!4338555 () Bool)

(assert (=> b!4338555 (= e!2699531 (contains!10816 (toList!2794 lt!1552934) lt!1552534))))

(assert (= (and d!1275278 res!1780025) b!4338554))

(assert (= (and b!4338554 res!1780024) b!4338555))

(declare-fun m!4935789 () Bool)

(assert (=> d!1275278 m!4935789))

(declare-fun m!4935791 () Bool)

(assert (=> d!1275278 m!4935791))

(declare-fun m!4935793 () Bool)

(assert (=> d!1275278 m!4935793))

(declare-fun m!4935795 () Bool)

(assert (=> d!1275278 m!4935795))

(declare-fun m!4935797 () Bool)

(assert (=> b!4338554 m!4935797))

(declare-fun m!4935799 () Bool)

(assert (=> b!4338555 m!4935799))

(assert (=> b!4338317 d!1275278))

(declare-fun d!1275280 () Bool)

(assert (=> d!1275280 (eq!195 (addToMapMapFromBucket!113 lt!1552547 (+!482 lt!1552532 (tuple2!47991 key!3918 newValue!99))) (+!482 (addToMapMapFromBucket!113 lt!1552547 lt!1552532) (tuple2!47991 key!3918 newValue!99)))))

(declare-fun lt!1552938 () Unit!69077)

(declare-fun choose!26579 (ListMap!2037 K!10080 V!10326 List!48847) Unit!69077)

(assert (=> d!1275280 (= lt!1552938 (choose!26579 lt!1552532 key!3918 newValue!99 lt!1552547))))

(declare-fun containsKey!565 (List!48847 K!10080) Bool)

(assert (=> d!1275280 (not (containsKey!565 lt!1552547 key!3918))))

(assert (=> d!1275280 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!24 lt!1552532 key!3918 newValue!99 lt!1552547) lt!1552938)))

(declare-fun bs!609867 () Bool)

(assert (= bs!609867 d!1275280))

(declare-fun m!4935801 () Bool)

(assert (=> bs!609867 m!4935801))

(declare-fun m!4935803 () Bool)

(assert (=> bs!609867 m!4935803))

(assert (=> bs!609867 m!4935249))

(declare-fun m!4935805 () Bool)

(assert (=> bs!609867 m!4935805))

(declare-fun m!4935807 () Bool)

(assert (=> bs!609867 m!4935807))

(assert (=> bs!609867 m!4935249))

(declare-fun m!4935809 () Bool)

(assert (=> bs!609867 m!4935809))

(assert (=> bs!609867 m!4935805))

(assert (=> bs!609867 m!4935807))

(assert (=> bs!609867 m!4935809))

(declare-fun m!4935811 () Bool)

(assert (=> bs!609867 m!4935811))

(assert (=> b!4338317 d!1275280))

(assert (=> b!4338321 d!1275188))

(declare-fun d!1275282 () Bool)

(declare-fun e!2699532 () Bool)

(assert (=> d!1275282 e!2699532))

(declare-fun res!1780026 () Bool)

(assert (=> d!1275282 (=> (not res!1780026) (not e!2699532))))

(declare-fun lt!1552939 () ListLongMap!1443)

(assert (=> d!1275282 (= res!1780026 (contains!10814 lt!1552939 (_1!27290 lt!1552535)))))

(declare-fun lt!1552940 () List!48848)

(assert (=> d!1275282 (= lt!1552939 (ListLongMap!1444 lt!1552940))))

(declare-fun lt!1552942 () Unit!69077)

(declare-fun lt!1552941 () Unit!69077)

(assert (=> d!1275282 (= lt!1552942 lt!1552941)))

(assert (=> d!1275282 (= (getValueByKey!374 lt!1552940 (_1!27290 lt!1552535)) (Some!10387 (_2!27290 lt!1552535)))))

(assert (=> d!1275282 (= lt!1552941 (lemmaContainsTupThenGetReturnValue!158 lt!1552940 (_1!27290 lt!1552535) (_2!27290 lt!1552535)))))

(assert (=> d!1275282 (= lt!1552940 (insertStrictlySorted!95 (toList!2793 lm!1707) (_1!27290 lt!1552535) (_2!27290 lt!1552535)))))

(assert (=> d!1275282 (= (+!481 lm!1707 lt!1552535) lt!1552939)))

(declare-fun b!4338556 () Bool)

(declare-fun res!1780027 () Bool)

(assert (=> b!4338556 (=> (not res!1780027) (not e!2699532))))

(assert (=> b!4338556 (= res!1780027 (= (getValueByKey!374 (toList!2793 lt!1552939) (_1!27290 lt!1552535)) (Some!10387 (_2!27290 lt!1552535))))))

(declare-fun b!4338557 () Bool)

(assert (=> b!4338557 (= e!2699532 (contains!10813 (toList!2793 lt!1552939) lt!1552535))))

(assert (= (and d!1275282 res!1780026) b!4338556))

(assert (= (and b!4338556 res!1780027) b!4338557))

(declare-fun m!4935813 () Bool)

(assert (=> d!1275282 m!4935813))

(declare-fun m!4935815 () Bool)

(assert (=> d!1275282 m!4935815))

(declare-fun m!4935817 () Bool)

(assert (=> d!1275282 m!4935817))

(declare-fun m!4935819 () Bool)

(assert (=> d!1275282 m!4935819))

(declare-fun m!4935821 () Bool)

(assert (=> b!4338556 m!4935821))

(declare-fun m!4935823 () Bool)

(assert (=> b!4338557 m!4935823))

(assert (=> b!4338321 d!1275282))

(declare-fun d!1275284 () Bool)

(assert (=> d!1275284 (forall!8983 (toList!2793 (+!481 lm!1707 (tuple2!47993 hash!377 newBucket!200))) lambda!136629)))

(declare-fun lt!1552945 () Unit!69077)

(declare-fun choose!26580 (ListLongMap!1443 Int (_ BitVec 64) List!48847) Unit!69077)

(assert (=> d!1275284 (= lt!1552945 (choose!26580 lm!1707 lambda!136629 hash!377 newBucket!200))))

(declare-fun e!2699535 () Bool)

(assert (=> d!1275284 e!2699535))

(declare-fun res!1780030 () Bool)

(assert (=> d!1275284 (=> (not res!1780030) (not e!2699535))))

(assert (=> d!1275284 (= res!1780030 (forall!8983 (toList!2793 lm!1707) lambda!136629))))

(assert (=> d!1275284 (= (addValidProp!59 lm!1707 lambda!136629 hash!377 newBucket!200) lt!1552945)))

(declare-fun b!4338561 () Bool)

(assert (=> b!4338561 (= e!2699535 (dynLambda!20576 lambda!136629 (tuple2!47993 hash!377 newBucket!200)))))

(assert (= (and d!1275284 res!1780030) b!4338561))

(declare-fun b_lambda!128485 () Bool)

(assert (=> (not b_lambda!128485) (not b!4338561)))

(declare-fun m!4935825 () Bool)

(assert (=> d!1275284 m!4935825))

(declare-fun m!4935827 () Bool)

(assert (=> d!1275284 m!4935827))

(declare-fun m!4935829 () Bool)

(assert (=> d!1275284 m!4935829))

(assert (=> d!1275284 m!4935213))

(declare-fun m!4935831 () Bool)

(assert (=> b!4338561 m!4935831))

(assert (=> b!4338321 d!1275284))

(assert (=> b!4338321 d!1275180))

(declare-fun d!1275286 () Bool)

(declare-fun get!15813 (Option!10388) List!48847)

(assert (=> d!1275286 (= (apply!11257 lm!1707 hash!377) (get!15813 (getValueByKey!374 (toList!2793 lm!1707) hash!377)))))

(declare-fun bs!609868 () Bool)

(assert (= bs!609868 d!1275286))

(assert (=> bs!609868 m!4935321))

(assert (=> bs!609868 m!4935321))

(declare-fun m!4935833 () Bool)

(assert (=> bs!609868 m!4935833))

(assert (=> b!4338310 d!1275286))

(declare-fun d!1275288 () Bool)

(assert (=> d!1275288 (contains!10813 (toList!2793 lm!1707) (tuple2!47993 hash!377 lt!1552533))))

(declare-fun lt!1552948 () Unit!69077)

(declare-fun choose!26581 (List!48848 (_ BitVec 64) List!48847) Unit!69077)

(assert (=> d!1275288 (= lt!1552948 (choose!26581 (toList!2793 lm!1707) hash!377 lt!1552533))))

(declare-fun e!2699538 () Bool)

(assert (=> d!1275288 e!2699538))

(declare-fun res!1780033 () Bool)

(assert (=> d!1275288 (=> (not res!1780033) (not e!2699538))))

(assert (=> d!1275288 (= res!1780033 (isStrictlySorted!63 (toList!2793 lm!1707)))))

(assert (=> d!1275288 (= (lemmaGetValueByKeyImpliesContainsTuple!252 (toList!2793 lm!1707) hash!377 lt!1552533) lt!1552948)))

(declare-fun b!4338564 () Bool)

(assert (=> b!4338564 (= e!2699538 (= (getValueByKey!374 (toList!2793 lm!1707) hash!377) (Some!10387 lt!1552533)))))

(assert (= (and d!1275288 res!1780033) b!4338564))

(declare-fun m!4935835 () Bool)

(assert (=> d!1275288 m!4935835))

(declare-fun m!4935837 () Bool)

(assert (=> d!1275288 m!4935837))

(assert (=> d!1275288 m!4935305))

(assert (=> b!4338564 m!4935321))

(assert (=> b!4338310 d!1275288))

(declare-fun d!1275290 () Bool)

(declare-fun lt!1552951 () Bool)

(declare-fun content!7626 (List!48848) (InoxSet tuple2!47992))

(assert (=> d!1275290 (= lt!1552951 (select (content!7626 (toList!2793 lm!1707)) lt!1552545))))

(declare-fun e!2699544 () Bool)

(assert (=> d!1275290 (= lt!1552951 e!2699544)))

(declare-fun res!1780039 () Bool)

(assert (=> d!1275290 (=> (not res!1780039) (not e!2699544))))

(assert (=> d!1275290 (= res!1780039 ((_ is Cons!48724) (toList!2793 lm!1707)))))

(assert (=> d!1275290 (= (contains!10813 (toList!2793 lm!1707) lt!1552545) lt!1552951)))

(declare-fun b!4338569 () Bool)

(declare-fun e!2699543 () Bool)

(assert (=> b!4338569 (= e!2699544 e!2699543)))

(declare-fun res!1780038 () Bool)

(assert (=> b!4338569 (=> res!1780038 e!2699543)))

(assert (=> b!4338569 (= res!1780038 (= (h!54235 (toList!2793 lm!1707)) lt!1552545))))

(declare-fun b!4338570 () Bool)

(assert (=> b!4338570 (= e!2699543 (contains!10813 (t!355764 (toList!2793 lm!1707)) lt!1552545))))

(assert (= (and d!1275290 res!1780039) b!4338569))

(assert (= (and b!4338569 (not res!1780038)) b!4338570))

(declare-fun m!4935839 () Bool)

(assert (=> d!1275290 m!4935839))

(declare-fun m!4935841 () Bool)

(assert (=> d!1275290 m!4935841))

(declare-fun m!4935843 () Bool)

(assert (=> b!4338570 m!4935843))

(assert (=> b!4338310 d!1275290))

(declare-fun d!1275292 () Bool)

(assert (=> d!1275292 (dynLambda!20576 lambda!136629 lt!1552545)))

(declare-fun lt!1552954 () Unit!69077)

(declare-fun choose!26582 (List!48848 Int tuple2!47992) Unit!69077)

(assert (=> d!1275292 (= lt!1552954 (choose!26582 (toList!2793 lm!1707) lambda!136629 lt!1552545))))

(declare-fun e!2699547 () Bool)

(assert (=> d!1275292 e!2699547))

(declare-fun res!1780042 () Bool)

(assert (=> d!1275292 (=> (not res!1780042) (not e!2699547))))

(assert (=> d!1275292 (= res!1780042 (forall!8983 (toList!2793 lm!1707) lambda!136629))))

(assert (=> d!1275292 (= (forallContained!1633 (toList!2793 lm!1707) lambda!136629 lt!1552545) lt!1552954)))

(declare-fun b!4338573 () Bool)

(assert (=> b!4338573 (= e!2699547 (contains!10813 (toList!2793 lm!1707) lt!1552545))))

(assert (= (and d!1275292 res!1780042) b!4338573))

(declare-fun b_lambda!128487 () Bool)

(assert (=> (not b_lambda!128487) (not d!1275292)))

(declare-fun m!4935845 () Bool)

(assert (=> d!1275292 m!4935845))

(declare-fun m!4935847 () Bool)

(assert (=> d!1275292 m!4935847))

(assert (=> d!1275292 m!4935213))

(assert (=> b!4338573 m!4935219))

(assert (=> b!4338310 d!1275292))

(declare-fun b!4338583 () Bool)

(declare-fun e!2699552 () List!48847)

(declare-fun e!2699553 () List!48847)

(assert (=> b!4338583 (= e!2699552 e!2699553)))

(declare-fun c!737637 () Bool)

(assert (=> b!4338583 (= c!737637 ((_ is Cons!48723) lt!1552533))))

(declare-fun b!4338582 () Bool)

(assert (=> b!4338582 (= e!2699552 (t!355763 lt!1552533))))

(declare-fun b!4338584 () Bool)

(assert (=> b!4338584 (= e!2699553 (Cons!48723 (h!54234 lt!1552533) (removePairForKey!375 (t!355763 lt!1552533) key!3918)))))

(declare-fun b!4338585 () Bool)

(assert (=> b!4338585 (= e!2699553 Nil!48723)))

(declare-fun d!1275294 () Bool)

(declare-fun lt!1552957 () List!48847)

(assert (=> d!1275294 (not (containsKey!565 lt!1552957 key!3918))))

(assert (=> d!1275294 (= lt!1552957 e!2699552)))

(declare-fun c!737638 () Bool)

(assert (=> d!1275294 (= c!737638 (and ((_ is Cons!48723) lt!1552533) (= (_1!27289 (h!54234 lt!1552533)) key!3918)))))

(assert (=> d!1275294 (noDuplicateKeys!405 lt!1552533)))

(assert (=> d!1275294 (= (removePairForKey!375 lt!1552533 key!3918) lt!1552957)))

(assert (= (and d!1275294 c!737638) b!4338582))

(assert (= (and d!1275294 (not c!737638)) b!4338583))

(assert (= (and b!4338583 c!737637) b!4338584))

(assert (= (and b!4338583 (not c!737637)) b!4338585))

(declare-fun m!4935849 () Bool)

(assert (=> b!4338584 m!4935849))

(declare-fun m!4935851 () Bool)

(assert (=> d!1275294 m!4935851))

(declare-fun m!4935853 () Bool)

(assert (=> d!1275294 m!4935853))

(assert (=> b!4338310 d!1275294))

(declare-fun b!4338604 () Bool)

(declare-fun e!2699566 () Unit!69077)

(declare-fun e!2699568 () Unit!69077)

(assert (=> b!4338604 (= e!2699566 e!2699568)))

(declare-fun c!737645 () Bool)

(declare-fun call!301555 () Bool)

(assert (=> b!4338604 (= c!737645 call!301555)))

(declare-fun b!4338605 () Bool)

(declare-fun e!2699570 () Bool)

(declare-datatypes ((List!48850 0))(
  ( (Nil!48726) (Cons!48726 (h!54239 K!10080) (t!355766 List!48850)) )
))
(declare-fun contains!10818 (List!48850 K!10080) Bool)

(declare-fun keys!16402 (ListMap!2037) List!48850)

(assert (=> b!4338605 (= e!2699570 (contains!10818 (keys!16402 (extractMap!464 (toList!2793 lm!1707))) key!3918))))

(declare-fun b!4338606 () Bool)

(assert (=> b!4338606 false))

(declare-fun lt!1552981 () Unit!69077)

(declare-fun lt!1552974 () Unit!69077)

(assert (=> b!4338606 (= lt!1552981 lt!1552974)))

(declare-fun containsKey!566 (List!48847 K!10080) Bool)

(assert (=> b!4338606 (containsKey!566 (toList!2794 (extractMap!464 (toList!2793 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!84 (List!48847 K!10080) Unit!69077)

(assert (=> b!4338606 (= lt!1552974 (lemmaInGetKeysListThenContainsKey!84 (toList!2794 (extractMap!464 (toList!2793 lm!1707))) key!3918))))

(declare-fun Unit!69171 () Unit!69077)

(assert (=> b!4338606 (= e!2699568 Unit!69171)))

(declare-fun d!1275296 () Bool)

(declare-fun e!2699567 () Bool)

(assert (=> d!1275296 e!2699567))

(declare-fun res!1780050 () Bool)

(assert (=> d!1275296 (=> res!1780050 e!2699567)))

(declare-fun e!2699571 () Bool)

(assert (=> d!1275296 (= res!1780050 e!2699571)))

(declare-fun res!1780051 () Bool)

(assert (=> d!1275296 (=> (not res!1780051) (not e!2699571))))

(declare-fun lt!1552976 () Bool)

(assert (=> d!1275296 (= res!1780051 (not lt!1552976))))

(declare-fun lt!1552980 () Bool)

(assert (=> d!1275296 (= lt!1552976 lt!1552980)))

(declare-fun lt!1552975 () Unit!69077)

(assert (=> d!1275296 (= lt!1552975 e!2699566)))

(declare-fun c!737646 () Bool)

(assert (=> d!1275296 (= c!737646 lt!1552980)))

(assert (=> d!1275296 (= lt!1552980 (containsKey!566 (toList!2794 (extractMap!464 (toList!2793 lm!1707))) key!3918))))

(assert (=> d!1275296 (= (contains!10812 (extractMap!464 (toList!2793 lm!1707)) key!3918) lt!1552976)))

(declare-fun b!4338607 () Bool)

(declare-fun lt!1552978 () Unit!69077)

(assert (=> b!4338607 (= e!2699566 lt!1552978)))

(declare-fun lt!1552979 () Unit!69077)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!288 (List!48847 K!10080) Unit!69077)

(assert (=> b!4338607 (= lt!1552979 (lemmaContainsKeyImpliesGetValueByKeyDefined!288 (toList!2794 (extractMap!464 (toList!2793 lm!1707))) key!3918))))

(declare-fun isDefined!7685 (Option!10389) Bool)

(assert (=> b!4338607 (isDefined!7685 (getValueByKey!375 (toList!2794 (extractMap!464 (toList!2793 lm!1707))) key!3918))))

(declare-fun lt!1552977 () Unit!69077)

(assert (=> b!4338607 (= lt!1552977 lt!1552979)))

(declare-fun lemmaInListThenGetKeysListContains!83 (List!48847 K!10080) Unit!69077)

(assert (=> b!4338607 (= lt!1552978 (lemmaInListThenGetKeysListContains!83 (toList!2794 (extractMap!464 (toList!2793 lm!1707))) key!3918))))

(assert (=> b!4338607 call!301555))

(declare-fun b!4338608 () Bool)

(assert (=> b!4338608 (= e!2699567 e!2699570)))

(declare-fun res!1780049 () Bool)

(assert (=> b!4338608 (=> (not res!1780049) (not e!2699570))))

(assert (=> b!4338608 (= res!1780049 (isDefined!7685 (getValueByKey!375 (toList!2794 (extractMap!464 (toList!2793 lm!1707))) key!3918)))))

(declare-fun b!4338609 () Bool)

(declare-fun e!2699569 () List!48850)

(assert (=> b!4338609 (= e!2699569 (keys!16402 (extractMap!464 (toList!2793 lm!1707))))))

(declare-fun b!4338610 () Bool)

(declare-fun getKeysList!86 (List!48847) List!48850)

(assert (=> b!4338610 (= e!2699569 (getKeysList!86 (toList!2794 (extractMap!464 (toList!2793 lm!1707)))))))

(declare-fun b!4338611 () Bool)

(assert (=> b!4338611 (= e!2699571 (not (contains!10818 (keys!16402 (extractMap!464 (toList!2793 lm!1707))) key!3918)))))

(declare-fun bm!301550 () Bool)

(assert (=> bm!301550 (= call!301555 (contains!10818 e!2699569 key!3918))))

(declare-fun c!737647 () Bool)

(assert (=> bm!301550 (= c!737647 c!737646)))

(declare-fun b!4338612 () Bool)

(declare-fun Unit!69172 () Unit!69077)

(assert (=> b!4338612 (= e!2699568 Unit!69172)))

(assert (= (and d!1275296 c!737646) b!4338607))

(assert (= (and d!1275296 (not c!737646)) b!4338604))

(assert (= (and b!4338604 c!737645) b!4338606))

(assert (= (and b!4338604 (not c!737645)) b!4338612))

(assert (= (or b!4338607 b!4338604) bm!301550))

(assert (= (and bm!301550 c!737647) b!4338610))

(assert (= (and bm!301550 (not c!737647)) b!4338609))

(assert (= (and d!1275296 res!1780051) b!4338611))

(assert (= (and d!1275296 (not res!1780050)) b!4338608))

(assert (= (and b!4338608 res!1780049) b!4338605))

(declare-fun m!4935855 () Bool)

(assert (=> b!4338608 m!4935855))

(assert (=> b!4338608 m!4935855))

(declare-fun m!4935857 () Bool)

(assert (=> b!4338608 m!4935857))

(declare-fun m!4935859 () Bool)

(assert (=> b!4338610 m!4935859))

(assert (=> b!4338609 m!4935263))

(declare-fun m!4935861 () Bool)

(assert (=> b!4338609 m!4935861))

(declare-fun m!4935863 () Bool)

(assert (=> b!4338606 m!4935863))

(declare-fun m!4935865 () Bool)

(assert (=> b!4338606 m!4935865))

(assert (=> d!1275296 m!4935863))

(declare-fun m!4935867 () Bool)

(assert (=> b!4338607 m!4935867))

(assert (=> b!4338607 m!4935855))

(assert (=> b!4338607 m!4935855))

(assert (=> b!4338607 m!4935857))

(declare-fun m!4935869 () Bool)

(assert (=> b!4338607 m!4935869))

(assert (=> b!4338605 m!4935263))

(assert (=> b!4338605 m!4935861))

(assert (=> b!4338605 m!4935861))

(declare-fun m!4935871 () Bool)

(assert (=> b!4338605 m!4935871))

(assert (=> b!4338611 m!4935263))

(assert (=> b!4338611 m!4935861))

(assert (=> b!4338611 m!4935861))

(assert (=> b!4338611 m!4935871))

(declare-fun m!4935873 () Bool)

(assert (=> bm!301550 m!4935873))

(assert (=> b!4338309 d!1275296))

(declare-fun bs!609869 () Bool)

(declare-fun d!1275298 () Bool)

(assert (= bs!609869 (and d!1275298 start!418648)))

(declare-fun lambda!136739 () Int)

(assert (=> bs!609869 (= lambda!136739 lambda!136629)))

(declare-fun bs!609870 () Bool)

(assert (= bs!609870 (and d!1275298 d!1275184)))

(assert (=> bs!609870 (not (= lambda!136739 lambda!136638))))

(declare-fun bs!609871 () Bool)

(assert (= bs!609871 (and d!1275298 d!1275272)))

(assert (=> bs!609871 (= lambda!136739 lambda!136733)))

(declare-fun bs!609872 () Bool)

(assert (= bs!609872 (and d!1275298 d!1275274)))

(assert (=> bs!609872 (= lambda!136739 lambda!136734)))

(declare-fun lt!1552982 () ListMap!2037)

(assert (=> d!1275298 (invariantList!638 (toList!2794 lt!1552982))))

(declare-fun e!2699572 () ListMap!2037)

(assert (=> d!1275298 (= lt!1552982 e!2699572)))

(declare-fun c!737648 () Bool)

(assert (=> d!1275298 (= c!737648 ((_ is Cons!48724) (toList!2793 lm!1707)))))

(assert (=> d!1275298 (forall!8983 (toList!2793 lm!1707) lambda!136739)))

(assert (=> d!1275298 (= (extractMap!464 (toList!2793 lm!1707)) lt!1552982)))

(declare-fun b!4338613 () Bool)

(assert (=> b!4338613 (= e!2699572 (addToMapMapFromBucket!113 (_2!27290 (h!54235 (toList!2793 lm!1707))) (extractMap!464 (t!355764 (toList!2793 lm!1707)))))))

(declare-fun b!4338614 () Bool)

(assert (=> b!4338614 (= e!2699572 (ListMap!2038 Nil!48723))))

(assert (= (and d!1275298 c!737648) b!4338613))

(assert (= (and d!1275298 (not c!737648)) b!4338614))

(declare-fun m!4935875 () Bool)

(assert (=> d!1275298 m!4935875))

(declare-fun m!4935877 () Bool)

(assert (=> d!1275298 m!4935877))

(assert (=> b!4338613 m!4935237))

(assert (=> b!4338613 m!4935237))

(declare-fun m!4935879 () Bool)

(assert (=> b!4338613 m!4935879))

(assert (=> b!4338309 d!1275298))

(declare-fun d!1275300 () Bool)

(declare-fun res!1780056 () Bool)

(declare-fun e!2699577 () Bool)

(assert (=> d!1275300 (=> res!1780056 e!2699577)))

(assert (=> d!1275300 (= res!1780056 (not ((_ is Cons!48723) newBucket!200)))))

(assert (=> d!1275300 (= (noDuplicateKeys!405 newBucket!200) e!2699577)))

(declare-fun b!4338619 () Bool)

(declare-fun e!2699578 () Bool)

(assert (=> b!4338619 (= e!2699577 e!2699578)))

(declare-fun res!1780057 () Bool)

(assert (=> b!4338619 (=> (not res!1780057) (not e!2699578))))

(assert (=> b!4338619 (= res!1780057 (not (containsKey!565 (t!355763 newBucket!200) (_1!27289 (h!54234 newBucket!200)))))))

(declare-fun b!4338620 () Bool)

(assert (=> b!4338620 (= e!2699578 (noDuplicateKeys!405 (t!355763 newBucket!200)))))

(assert (= (and d!1275300 (not res!1780056)) b!4338619))

(assert (= (and b!4338619 res!1780057) b!4338620))

(declare-fun m!4935881 () Bool)

(assert (=> b!4338619 m!4935881))

(declare-fun m!4935883 () Bool)

(assert (=> b!4338620 m!4935883))

(assert (=> b!4338319 d!1275300))

(declare-fun tp!1329214 () Bool)

(declare-fun b!4338625 () Bool)

(declare-fun e!2699581 () Bool)

(assert (=> b!4338625 (= e!2699581 (and tp_is_empty!24857 tp_is_empty!24859 tp!1329214))))

(assert (=> b!4338316 (= tp!1329202 e!2699581)))

(assert (= (and b!4338316 ((_ is Cons!48723) (t!355763 newBucket!200))) b!4338625))

(declare-fun b!4338630 () Bool)

(declare-fun e!2699584 () Bool)

(declare-fun tp!1329219 () Bool)

(declare-fun tp!1329220 () Bool)

(assert (=> b!4338630 (= e!2699584 (and tp!1329219 tp!1329220))))

(assert (=> b!4338320 (= tp!1329201 e!2699584)))

(assert (= (and b!4338320 ((_ is Cons!48724) (toList!2793 lm!1707))) b!4338630))

(declare-fun b_lambda!128489 () Bool)

(assert (= b_lambda!128459 (or start!418648 b_lambda!128489)))

(declare-fun bs!609873 () Bool)

(declare-fun d!1275302 () Bool)

(assert (= bs!609873 (and d!1275302 start!418648)))

(assert (=> bs!609873 (= (dynLambda!20576 lambda!136629 (h!54235 (toList!2793 lm!1707))) (noDuplicateKeys!405 (_2!27290 (h!54235 (toList!2793 lm!1707)))))))

(declare-fun m!4935885 () Bool)

(assert (=> bs!609873 m!4935885))

(assert (=> b!4338349 d!1275302))

(declare-fun b_lambda!128491 () Bool)

(assert (= b_lambda!128483 (or start!418648 b_lambda!128491)))

(declare-fun bs!609874 () Bool)

(declare-fun d!1275304 () Bool)

(assert (= bs!609874 (and d!1275304 start!418648)))

(assert (=> bs!609874 (= (dynLambda!20576 lambda!136629 (h!54235 (t!355764 (toList!2793 lm!1707)))) (noDuplicateKeys!405 (_2!27290 (h!54235 (t!355764 (toList!2793 lm!1707))))))))

(declare-fun m!4935887 () Bool)

(assert (=> bs!609874 m!4935887))

(assert (=> b!4338523 d!1275304))

(declare-fun b_lambda!128493 () Bool)

(assert (= b_lambda!128485 (or start!418648 b_lambda!128493)))

(declare-fun bs!609875 () Bool)

(declare-fun d!1275306 () Bool)

(assert (= bs!609875 (and d!1275306 start!418648)))

(assert (=> bs!609875 (= (dynLambda!20576 lambda!136629 (tuple2!47993 hash!377 newBucket!200)) (noDuplicateKeys!405 (_2!27290 (tuple2!47993 hash!377 newBucket!200))))))

(declare-fun m!4935889 () Bool)

(assert (=> bs!609875 m!4935889))

(assert (=> b!4338561 d!1275306))

(declare-fun b_lambda!128495 () Bool)

(assert (= b_lambda!128487 (or start!418648 b_lambda!128495)))

(declare-fun bs!609876 () Bool)

(declare-fun d!1275308 () Bool)

(assert (= bs!609876 (and d!1275308 start!418648)))

(assert (=> bs!609876 (= (dynLambda!20576 lambda!136629 lt!1552545) (noDuplicateKeys!405 (_2!27290 lt!1552545)))))

(declare-fun m!4935891 () Bool)

(assert (=> bs!609876 m!4935891))

(assert (=> d!1275292 d!1275308))

(declare-fun b_lambda!128497 () Bool)

(assert (= b_lambda!128461 (or start!418648 b_lambda!128497)))

(declare-fun bs!609877 () Bool)

(declare-fun d!1275310 () Bool)

(assert (= bs!609877 (and d!1275310 start!418648)))

(assert (=> bs!609877 (= (dynLambda!20576 lambda!136629 (h!54235 (toList!2793 lt!1552543))) (noDuplicateKeys!405 (_2!27290 (h!54235 (toList!2793 lt!1552543)))))))

(declare-fun m!4935893 () Bool)

(assert (=> bs!609877 m!4935893))

(assert (=> b!4338353 d!1275310))

(check-sat tp_is_empty!24859 (not bs!609876) (not d!1275194) (not bm!301538) (not d!1275290) (not d!1275186) (not d!1275278) (not bm!301542) (not d!1275266) (not bs!609874) (not b!4338517) (not d!1275282) (not b!4338557) (not bm!301545) (not b!4338540) (not d!1275270) (not d!1275196) (not b!4338552) (not b!4338606) (not b!4338625) (not b!4338554) (not b!4338608) (not b!4338369) (not b!4338555) (not b_lambda!128489) (not b!4338553) (not b!4338570) (not b!4338539) (not b!4338551) (not b!4338605) (not d!1275192) (not d!1275190) (not d!1275182) (not bs!609873) (not b!4338564) (not b!4338547) (not bm!301539) (not bm!301543) (not b!4338573) (not d!1275292) (not d!1275280) (not b!4338613) (not b!4338619) (not b!4338361) (not b!4338584) (not d!1275288) (not b!4338630) (not d!1275286) (not b!4338518) (not d!1275274) (not b!4338354) (not bs!609875) (not b!4338531) (not b!4338528) (not bm!301537) (not b!4338609) (not d!1275184) (not b_lambda!128497) (not d!1275276) (not bs!609877) (not b!4338532) (not d!1275298) (not d!1275272) (not b!4338529) (not b!4338533) (not bm!301536) (not bm!301541) (not bm!301546) (not d!1275296) (not b_lambda!128493) (not b!4338363) (not b!4338526) (not d!1275176) tp_is_empty!24857 (not d!1275294) (not b!4338545) (not b!4338610) (not b!4338607) (not b!4338550) (not b!4338527) (not d!1275268) (not b!4338534) (not b!4338368) (not b!4338520) (not bm!301550) (not b_lambda!128495) (not b_lambda!128491) (not b!4338611) (not bm!301547) (not b!4338524) (not b!4338620) (not b!4338556) (not b!4338350) (not d!1275174) (not d!1275284) (not bm!301540) (not bm!301544) (not b!4338519))
(check-sat)
