; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!427908 () Bool)

(assert start!427908)

(declare-fun b!4401260 () Bool)

(declare-fun e!2740500 () Bool)

(declare-datatypes ((V!10891 0))(
  ( (V!10892 (val!16787 Int)) )
))
(declare-datatypes ((K!10645 0))(
  ( (K!10646 (val!16788 Int)) )
))
(declare-datatypes ((tuple2!48894 0))(
  ( (tuple2!48895 (_1!27741 K!10645) (_2!27741 V!10891)) )
))
(declare-datatypes ((List!49412 0))(
  ( (Nil!49288) (Cons!49288 (h!54915 tuple2!48894) (t!356346 List!49412)) )
))
(declare-datatypes ((tuple2!48896 0))(
  ( (tuple2!48897 (_1!27742 (_ BitVec 64)) (_2!27742 List!49412)) )
))
(declare-datatypes ((List!49413 0))(
  ( (Nil!49289) (Cons!49289 (h!54916 tuple2!48896) (t!356347 List!49413)) )
))
(declare-datatypes ((ListLongMap!1895 0))(
  ( (ListLongMap!1896 (toList!3245 List!49413)) )
))
(declare-fun lt!1606221 () ListLongMap!1895)

(declare-fun lambda!149007 () Int)

(declare-fun forall!9372 (List!49413 Int) Bool)

(assert (=> b!4401260 (= e!2740500 (forall!9372 (toList!3245 lt!1606221) lambda!149007))))

(declare-fun b!4401261 () Bool)

(declare-fun res!1815437 () Bool)

(declare-fun e!2740503 () Bool)

(assert (=> b!4401261 (=> res!1815437 e!2740503)))

(declare-fun newBucket!200 () List!49412)

(declare-fun noDuplicateKeys!631 (List!49412) Bool)

(assert (=> b!4401261 (= res!1815437 (not (noDuplicateKeys!631 newBucket!200)))))

(declare-fun b!4401262 () Bool)

(declare-fun res!1815445 () Bool)

(declare-fun e!2740502 () Bool)

(assert (=> b!4401262 (=> (not res!1815445) (not e!2740502))))

(declare-fun lm!1707 () ListLongMap!1895)

(declare-fun key!3918 () K!10645)

(declare-datatypes ((ListMap!2489 0))(
  ( (ListMap!2490 (toList!3246 List!49412)) )
))
(declare-fun contains!11681 (ListMap!2489 K!10645) Bool)

(declare-fun extractMap!690 (List!49413) ListMap!2489)

(assert (=> b!4401262 (= res!1815445 (contains!11681 (extractMap!690 (toList!3245 lm!1707)) key!3918))))

(declare-fun b!4401263 () Bool)

(declare-fun e!2740498 () Bool)

(declare-fun tp!1331862 () Bool)

(assert (=> b!4401263 (= e!2740498 tp!1331862)))

(declare-fun b!4401264 () Bool)

(declare-fun e!2740499 () Bool)

(declare-fun containsKey!941 (List!49412 K!10645) Bool)

(assert (=> b!4401264 (= e!2740499 (not (containsKey!941 (_2!27742 (h!54916 (toList!3245 lm!1707))) key!3918)))))

(declare-fun b!4401265 () Bool)

(declare-fun res!1815438 () Bool)

(assert (=> b!4401265 (=> (not res!1815438) (not e!2740502))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!5023 0))(
  ( (HashableExt!5022 (__x!30726 Int)) )
))
(declare-fun hashF!1247 () Hashable!5023)

(declare-fun allKeysSameHash!589 (List!49412 (_ BitVec 64) Hashable!5023) Bool)

(assert (=> b!4401265 (= res!1815438 (allKeysSameHash!589 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4401266 () Bool)

(declare-fun res!1815439 () Bool)

(assert (=> b!4401266 (=> (not res!1815439) (not e!2740502))))

(declare-fun allKeysSameHashInMap!735 (ListLongMap!1895 Hashable!5023) Bool)

(assert (=> b!4401266 (= res!1815439 (allKeysSameHashInMap!735 lm!1707 hashF!1247))))

(declare-fun res!1815442 () Bool)

(assert (=> start!427908 (=> (not res!1815442) (not e!2740502))))

(assert (=> start!427908 (= res!1815442 (forall!9372 (toList!3245 lm!1707) lambda!149007))))

(assert (=> start!427908 e!2740502))

(declare-fun e!2740504 () Bool)

(assert (=> start!427908 e!2740504))

(assert (=> start!427908 true))

(declare-fun inv!64831 (ListLongMap!1895) Bool)

(assert (=> start!427908 (and (inv!64831 lm!1707) e!2740498)))

(declare-fun tp_is_empty!25761 () Bool)

(assert (=> start!427908 tp_is_empty!25761))

(declare-fun tp_is_empty!25763 () Bool)

(assert (=> start!427908 tp_is_empty!25763))

(declare-fun b!4401267 () Bool)

(declare-fun e!2740501 () Bool)

(assert (=> b!4401267 (= e!2740503 e!2740501)))

(declare-fun res!1815443 () Bool)

(assert (=> b!4401267 (=> res!1815443 e!2740501)))

(get-info :version)

(assert (=> b!4401267 (= res!1815443 (or (and ((_ is Cons!49289) (toList!3245 lm!1707)) (= (_1!27742 (h!54916 (toList!3245 lm!1707))) hash!377)) (not ((_ is Cons!49289) (toList!3245 lm!1707))) (= (_1!27742 (h!54916 (toList!3245 lm!1707))) hash!377)))))

(assert (=> b!4401267 e!2740500))

(declare-fun res!1815441 () Bool)

(assert (=> b!4401267 (=> (not res!1815441) (not e!2740500))))

(assert (=> b!4401267 (= res!1815441 (forall!9372 (toList!3245 lt!1606221) lambda!149007))))

(declare-fun lt!1606215 () tuple2!48896)

(declare-fun +!877 (ListLongMap!1895 tuple2!48896) ListLongMap!1895)

(assert (=> b!4401267 (= lt!1606221 (+!877 lm!1707 lt!1606215))))

(assert (=> b!4401267 (= lt!1606215 (tuple2!48897 hash!377 newBucket!200))))

(declare-datatypes ((Unit!78867 0))(
  ( (Unit!78868) )
))
(declare-fun lt!1606222 () Unit!78867)

(declare-fun addValidProp!277 (ListLongMap!1895 Int (_ BitVec 64) List!49412) Unit!78867)

(assert (=> b!4401267 (= lt!1606222 (addValidProp!277 lm!1707 lambda!149007 hash!377 newBucket!200))))

(assert (=> b!4401267 (forall!9372 (toList!3245 lm!1707) lambda!149007)))

(declare-fun b!4401268 () Bool)

(declare-fun tp!1331861 () Bool)

(assert (=> b!4401268 (= e!2740504 (and tp_is_empty!25761 tp_is_empty!25763 tp!1331861))))

(declare-fun b!4401269 () Bool)

(assert (=> b!4401269 (= e!2740502 (not e!2740503))))

(declare-fun res!1815444 () Bool)

(assert (=> b!4401269 (=> res!1815444 e!2740503)))

(declare-fun lt!1606218 () List!49412)

(declare-fun lt!1606214 () tuple2!48894)

(declare-fun removePairForKey!599 (List!49412 K!10645) List!49412)

(assert (=> b!4401269 (= res!1815444 (not (= newBucket!200 (Cons!49288 lt!1606214 (removePairForKey!599 lt!1606218 key!3918)))))))

(declare-fun newValue!99 () V!10891)

(assert (=> b!4401269 (= lt!1606214 (tuple2!48895 key!3918 newValue!99))))

(declare-fun lt!1606212 () tuple2!48896)

(declare-fun lt!1606213 () Unit!78867)

(declare-fun forallContained!2007 (List!49413 Int tuple2!48896) Unit!78867)

(assert (=> b!4401269 (= lt!1606213 (forallContained!2007 (toList!3245 lm!1707) lambda!149007 lt!1606212))))

(declare-fun contains!11682 (List!49413 tuple2!48896) Bool)

(assert (=> b!4401269 (contains!11682 (toList!3245 lm!1707) lt!1606212)))

(assert (=> b!4401269 (= lt!1606212 (tuple2!48897 hash!377 lt!1606218))))

(declare-fun lt!1606223 () Unit!78867)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!476 (List!49413 (_ BitVec 64) List!49412) Unit!78867)

(assert (=> b!4401269 (= lt!1606223 (lemmaGetValueByKeyImpliesContainsTuple!476 (toList!3245 lm!1707) hash!377 lt!1606218))))

(declare-fun apply!11483 (ListLongMap!1895 (_ BitVec 64)) List!49412)

(assert (=> b!4401269 (= lt!1606218 (apply!11483 lm!1707 hash!377))))

(declare-fun b!4401270 () Bool)

(declare-fun head!9108 (ListLongMap!1895) tuple2!48896)

(assert (=> b!4401270 (= e!2740501 (not (= (head!9108 lm!1707) lt!1606215)))))

(declare-fun lt!1606217 () ListLongMap!1895)

(declare-fun lt!1606219 () ListMap!2489)

(declare-fun eq!337 (ListMap!2489 ListMap!2489) Bool)

(declare-fun +!878 (ListMap!2489 tuple2!48894) ListMap!2489)

(assert (=> b!4401270 (eq!337 (extractMap!690 (toList!3245 (+!877 lt!1606217 lt!1606215))) (+!878 lt!1606219 lt!1606214))))

(declare-fun lt!1606216 () Unit!78867)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!135 (ListLongMap!1895 (_ BitVec 64) List!49412 K!10645 V!10891 Hashable!5023) Unit!78867)

(assert (=> b!4401270 (= lt!1606216 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!135 lt!1606217 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> b!4401270 (contains!11681 lt!1606219 key!3918)))

(assert (=> b!4401270 (= lt!1606219 (extractMap!690 (toList!3245 lt!1606217)))))

(declare-fun tail!7119 (ListLongMap!1895) ListLongMap!1895)

(assert (=> b!4401270 (= lt!1606217 (tail!7119 lm!1707))))

(declare-fun lt!1606220 () ListMap!2489)

(assert (=> b!4401270 (contains!11681 lt!1606220 key!3918)))

(declare-fun lt!1606224 () Unit!78867)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!90 (List!49412 K!10645 V!10891 ListMap!2489) Unit!78867)

(assert (=> b!4401270 (= lt!1606224 (lemmaAddToMapContainsAndNotInListThenInAcc!90 (_2!27742 (h!54916 (toList!3245 lm!1707))) key!3918 newValue!99 lt!1606220))))

(assert (=> b!4401270 (= lt!1606220 (extractMap!690 (t!356347 (toList!3245 lm!1707))))))

(assert (=> b!4401270 e!2740499))

(declare-fun res!1815447 () Bool)

(assert (=> b!4401270 (=> (not res!1815447) (not e!2740499))))

(assert (=> b!4401270 (= res!1815447 (not (containsKey!941 (apply!11483 lm!1707 (_1!27742 (h!54916 (toList!3245 lm!1707)))) key!3918)))))

(declare-fun lt!1606211 () Unit!78867)

(declare-fun lemmaNotSameHashThenCannotContainKey!102 (ListLongMap!1895 K!10645 (_ BitVec 64) Hashable!5023) Unit!78867)

(assert (=> b!4401270 (= lt!1606211 (lemmaNotSameHashThenCannotContainKey!102 lm!1707 key!3918 (_1!27742 (h!54916 (toList!3245 lm!1707))) hashF!1247))))

(declare-fun b!4401271 () Bool)

(declare-fun res!1815440 () Bool)

(assert (=> b!4401271 (=> (not res!1815440) (not e!2740502))))

(declare-fun contains!11683 (ListLongMap!1895 (_ BitVec 64)) Bool)

(assert (=> b!4401271 (= res!1815440 (contains!11683 lm!1707 hash!377))))

(declare-fun b!4401272 () Bool)

(declare-fun res!1815446 () Bool)

(assert (=> b!4401272 (=> (not res!1815446) (not e!2740502))))

(declare-fun hash!1877 (Hashable!5023 K!10645) (_ BitVec 64))

(assert (=> b!4401272 (= res!1815446 (= (hash!1877 hashF!1247 key!3918) hash!377))))

(assert (= (and start!427908 res!1815442) b!4401266))

(assert (= (and b!4401266 res!1815439) b!4401272))

(assert (= (and b!4401272 res!1815446) b!4401265))

(assert (= (and b!4401265 res!1815438) b!4401262))

(assert (= (and b!4401262 res!1815445) b!4401271))

(assert (= (and b!4401271 res!1815440) b!4401269))

(assert (= (and b!4401269 (not res!1815444)) b!4401261))

(assert (= (and b!4401261 (not res!1815437)) b!4401267))

(assert (= (and b!4401267 res!1815441) b!4401260))

(assert (= (and b!4401267 (not res!1815443)) b!4401270))

(assert (= (and b!4401270 res!1815447) b!4401264))

(assert (= (and start!427908 ((_ is Cons!49288) newBucket!200)) b!4401268))

(assert (= start!427908 b!4401263))

(declare-fun m!5064415 () Bool)

(assert (=> b!4401271 m!5064415))

(declare-fun m!5064417 () Bool)

(assert (=> b!4401265 m!5064417))

(declare-fun m!5064419 () Bool)

(assert (=> b!4401269 m!5064419))

(declare-fun m!5064421 () Bool)

(assert (=> b!4401269 m!5064421))

(declare-fun m!5064423 () Bool)

(assert (=> b!4401269 m!5064423))

(declare-fun m!5064425 () Bool)

(assert (=> b!4401269 m!5064425))

(declare-fun m!5064427 () Bool)

(assert (=> b!4401269 m!5064427))

(declare-fun m!5064429 () Bool)

(assert (=> b!4401267 m!5064429))

(declare-fun m!5064431 () Bool)

(assert (=> b!4401267 m!5064431))

(declare-fun m!5064433 () Bool)

(assert (=> b!4401267 m!5064433))

(declare-fun m!5064435 () Bool)

(assert (=> b!4401267 m!5064435))

(declare-fun m!5064437 () Bool)

(assert (=> b!4401270 m!5064437))

(declare-fun m!5064439 () Bool)

(assert (=> b!4401270 m!5064439))

(declare-fun m!5064441 () Bool)

(assert (=> b!4401270 m!5064441))

(declare-fun m!5064443 () Bool)

(assert (=> b!4401270 m!5064443))

(declare-fun m!5064445 () Bool)

(assert (=> b!4401270 m!5064445))

(assert (=> b!4401270 m!5064439))

(declare-fun m!5064447 () Bool)

(assert (=> b!4401270 m!5064447))

(declare-fun m!5064449 () Bool)

(assert (=> b!4401270 m!5064449))

(declare-fun m!5064451 () Bool)

(assert (=> b!4401270 m!5064451))

(declare-fun m!5064453 () Bool)

(assert (=> b!4401270 m!5064453))

(declare-fun m!5064455 () Bool)

(assert (=> b!4401270 m!5064455))

(declare-fun m!5064457 () Bool)

(assert (=> b!4401270 m!5064457))

(declare-fun m!5064459 () Bool)

(assert (=> b!4401270 m!5064459))

(declare-fun m!5064461 () Bool)

(assert (=> b!4401270 m!5064461))

(assert (=> b!4401270 m!5064447))

(declare-fun m!5064463 () Bool)

(assert (=> b!4401270 m!5064463))

(assert (=> b!4401270 m!5064463))

(declare-fun m!5064465 () Bool)

(assert (=> b!4401270 m!5064465))

(declare-fun m!5064467 () Bool)

(assert (=> b!4401272 m!5064467))

(declare-fun m!5064469 () Bool)

(assert (=> b!4401266 m!5064469))

(declare-fun m!5064471 () Bool)

(assert (=> b!4401261 m!5064471))

(assert (=> b!4401260 m!5064429))

(declare-fun m!5064473 () Bool)

(assert (=> b!4401264 m!5064473))

(declare-fun m!5064475 () Bool)

(assert (=> b!4401262 m!5064475))

(assert (=> b!4401262 m!5064475))

(declare-fun m!5064477 () Bool)

(assert (=> b!4401262 m!5064477))

(assert (=> start!427908 m!5064435))

(declare-fun m!5064479 () Bool)

(assert (=> start!427908 m!5064479))

(check-sat (not b!4401266) (not b!4401272) (not b!4401260) (not start!427908) (not b!4401261) tp_is_empty!25761 (not b!4401262) (not b!4401270) (not b!4401263) (not b!4401268) (not b!4401269) (not b!4401264) (not b!4401271) (not b!4401267) tp_is_empty!25763 (not b!4401265))
(check-sat)
(get-model)

(declare-fun d!1327271 () Bool)

(declare-fun res!1815458 () Bool)

(declare-fun e!2740515 () Bool)

(assert (=> d!1327271 (=> res!1815458 e!2740515)))

(assert (=> d!1327271 (= res!1815458 ((_ is Nil!49289) (toList!3245 lt!1606221)))))

(assert (=> d!1327271 (= (forall!9372 (toList!3245 lt!1606221) lambda!149007) e!2740515)))

(declare-fun b!4401283 () Bool)

(declare-fun e!2740516 () Bool)

(assert (=> b!4401283 (= e!2740515 e!2740516)))

(declare-fun res!1815459 () Bool)

(assert (=> b!4401283 (=> (not res!1815459) (not e!2740516))))

(declare-fun dynLambda!20766 (Int tuple2!48896) Bool)

(assert (=> b!4401283 (= res!1815459 (dynLambda!20766 lambda!149007 (h!54916 (toList!3245 lt!1606221))))))

(declare-fun b!4401284 () Bool)

(assert (=> b!4401284 (= e!2740516 (forall!9372 (t!356347 (toList!3245 lt!1606221)) lambda!149007))))

(assert (= (and d!1327271 (not res!1815458)) b!4401283))

(assert (= (and b!4401283 res!1815459) b!4401284))

(declare-fun b_lambda!139859 () Bool)

(assert (=> (not b_lambda!139859) (not b!4401283)))

(declare-fun m!5064487 () Bool)

(assert (=> b!4401283 m!5064487))

(declare-fun m!5064489 () Bool)

(assert (=> b!4401284 m!5064489))

(assert (=> b!4401260 d!1327271))

(declare-fun d!1327275 () Bool)

(declare-fun e!2740529 () Bool)

(assert (=> d!1327275 e!2740529))

(declare-fun res!1815473 () Bool)

(assert (=> d!1327275 (=> res!1815473 e!2740529)))

(declare-fun lt!1606251 () Bool)

(assert (=> d!1327275 (= res!1815473 (not lt!1606251))))

(declare-fun lt!1606248 () Bool)

(assert (=> d!1327275 (= lt!1606251 lt!1606248)))

(declare-fun lt!1606249 () Unit!78867)

(declare-fun e!2740530 () Unit!78867)

(assert (=> d!1327275 (= lt!1606249 e!2740530)))

(declare-fun c!749301 () Bool)

(assert (=> d!1327275 (= c!749301 lt!1606248)))

(declare-fun containsKey!943 (List!49413 (_ BitVec 64)) Bool)

(assert (=> d!1327275 (= lt!1606248 (containsKey!943 (toList!3245 lm!1707) hash!377))))

(assert (=> d!1327275 (= (contains!11683 lm!1707 hash!377) lt!1606251)))

(declare-fun b!4401305 () Bool)

(declare-fun lt!1606250 () Unit!78867)

(assert (=> b!4401305 (= e!2740530 lt!1606250)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!511 (List!49413 (_ BitVec 64)) Unit!78867)

(assert (=> b!4401305 (= lt!1606250 (lemmaContainsKeyImpliesGetValueByKeyDefined!511 (toList!3245 lm!1707) hash!377))))

(declare-datatypes ((Option!10616 0))(
  ( (None!10615) (Some!10615 (v!43725 List!49412)) )
))
(declare-fun isDefined!7908 (Option!10616) Bool)

(declare-fun getValueByKey!602 (List!49413 (_ BitVec 64)) Option!10616)

(assert (=> b!4401305 (isDefined!7908 (getValueByKey!602 (toList!3245 lm!1707) hash!377))))

(declare-fun b!4401306 () Bool)

(declare-fun Unit!78875 () Unit!78867)

(assert (=> b!4401306 (= e!2740530 Unit!78875)))

(declare-fun b!4401307 () Bool)

(assert (=> b!4401307 (= e!2740529 (isDefined!7908 (getValueByKey!602 (toList!3245 lm!1707) hash!377)))))

(assert (= (and d!1327275 c!749301) b!4401305))

(assert (= (and d!1327275 (not c!749301)) b!4401306))

(assert (= (and d!1327275 (not res!1815473)) b!4401307))

(declare-fun m!5064519 () Bool)

(assert (=> d!1327275 m!5064519))

(declare-fun m!5064521 () Bool)

(assert (=> b!4401305 m!5064521))

(declare-fun m!5064523 () Bool)

(assert (=> b!4401305 m!5064523))

(assert (=> b!4401305 m!5064523))

(declare-fun m!5064525 () Bool)

(assert (=> b!4401305 m!5064525))

(assert (=> b!4401307 m!5064523))

(assert (=> b!4401307 m!5064523))

(assert (=> b!4401307 m!5064525))

(assert (=> b!4401271 d!1327275))

(declare-fun d!1327287 () Bool)

(declare-fun get!16046 (Option!10616) List!49412)

(assert (=> d!1327287 (= (apply!11483 lm!1707 hash!377) (get!16046 (getValueByKey!602 (toList!3245 lm!1707) hash!377)))))

(declare-fun bs!728625 () Bool)

(assert (= bs!728625 d!1327287))

(assert (=> bs!728625 m!5064523))

(assert (=> bs!728625 m!5064523))

(declare-fun m!5064527 () Bool)

(assert (=> bs!728625 m!5064527))

(assert (=> b!4401269 d!1327287))

(declare-fun d!1327289 () Bool)

(assert (=> d!1327289 (contains!11682 (toList!3245 lm!1707) (tuple2!48897 hash!377 lt!1606218))))

(declare-fun lt!1606266 () Unit!78867)

(declare-fun choose!27603 (List!49413 (_ BitVec 64) List!49412) Unit!78867)

(assert (=> d!1327289 (= lt!1606266 (choose!27603 (toList!3245 lm!1707) hash!377 lt!1606218))))

(declare-fun e!2740535 () Bool)

(assert (=> d!1327289 e!2740535))

(declare-fun res!1815476 () Bool)

(assert (=> d!1327289 (=> (not res!1815476) (not e!2740535))))

(declare-fun isStrictlySorted!178 (List!49413) Bool)

(assert (=> d!1327289 (= res!1815476 (isStrictlySorted!178 (toList!3245 lm!1707)))))

(assert (=> d!1327289 (= (lemmaGetValueByKeyImpliesContainsTuple!476 (toList!3245 lm!1707) hash!377 lt!1606218) lt!1606266)))

(declare-fun b!4401314 () Bool)

(assert (=> b!4401314 (= e!2740535 (= (getValueByKey!602 (toList!3245 lm!1707) hash!377) (Some!10615 lt!1606218)))))

(assert (= (and d!1327289 res!1815476) b!4401314))

(declare-fun m!5064529 () Bool)

(assert (=> d!1327289 m!5064529))

(declare-fun m!5064531 () Bool)

(assert (=> d!1327289 m!5064531))

(declare-fun m!5064533 () Bool)

(assert (=> d!1327289 m!5064533))

(assert (=> b!4401314 m!5064523))

(assert (=> b!4401269 d!1327289))

(declare-fun b!4401346 () Bool)

(declare-fun e!2740557 () List!49412)

(assert (=> b!4401346 (= e!2740557 (t!356346 lt!1606218))))

(declare-fun b!4401349 () Bool)

(declare-fun e!2740556 () List!49412)

(assert (=> b!4401349 (= e!2740556 Nil!49288)))

(declare-fun d!1327291 () Bool)

(declare-fun lt!1606281 () List!49412)

(assert (=> d!1327291 (not (containsKey!941 lt!1606281 key!3918))))

(assert (=> d!1327291 (= lt!1606281 e!2740557)))

(declare-fun c!749316 () Bool)

(assert (=> d!1327291 (= c!749316 (and ((_ is Cons!49288) lt!1606218) (= (_1!27741 (h!54915 lt!1606218)) key!3918)))))

(assert (=> d!1327291 (noDuplicateKeys!631 lt!1606218)))

(assert (=> d!1327291 (= (removePairForKey!599 lt!1606218 key!3918) lt!1606281)))

(declare-fun b!4401347 () Bool)

(assert (=> b!4401347 (= e!2740557 e!2740556)))

(declare-fun c!749315 () Bool)

(assert (=> b!4401347 (= c!749315 ((_ is Cons!49288) lt!1606218))))

(declare-fun b!4401348 () Bool)

(assert (=> b!4401348 (= e!2740556 (Cons!49288 (h!54915 lt!1606218) (removePairForKey!599 (t!356346 lt!1606218) key!3918)))))

(assert (= (and d!1327291 c!749316) b!4401346))

(assert (= (and d!1327291 (not c!749316)) b!4401347))

(assert (= (and b!4401347 c!749315) b!4401348))

(assert (= (and b!4401347 (not c!749315)) b!4401349))

(declare-fun m!5064555 () Bool)

(assert (=> d!1327291 m!5064555))

(declare-fun m!5064557 () Bool)

(assert (=> d!1327291 m!5064557))

(declare-fun m!5064559 () Bool)

(assert (=> b!4401348 m!5064559))

(assert (=> b!4401269 d!1327291))

(declare-fun d!1327295 () Bool)

(declare-fun lt!1606286 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7873 (List!49413) (InoxSet tuple2!48896))

(assert (=> d!1327295 (= lt!1606286 (select (content!7873 (toList!3245 lm!1707)) lt!1606212))))

(declare-fun e!2740565 () Bool)

(assert (=> d!1327295 (= lt!1606286 e!2740565)))

(declare-fun res!1815490 () Bool)

(assert (=> d!1327295 (=> (not res!1815490) (not e!2740565))))

(assert (=> d!1327295 (= res!1815490 ((_ is Cons!49289) (toList!3245 lm!1707)))))

(assert (=> d!1327295 (= (contains!11682 (toList!3245 lm!1707) lt!1606212) lt!1606286)))

(declare-fun b!4401358 () Bool)

(declare-fun e!2740564 () Bool)

(assert (=> b!4401358 (= e!2740565 e!2740564)))

(declare-fun res!1815491 () Bool)

(assert (=> b!4401358 (=> res!1815491 e!2740564)))

(assert (=> b!4401358 (= res!1815491 (= (h!54916 (toList!3245 lm!1707)) lt!1606212))))

(declare-fun b!4401359 () Bool)

(assert (=> b!4401359 (= e!2740564 (contains!11682 (t!356347 (toList!3245 lm!1707)) lt!1606212))))

(assert (= (and d!1327295 res!1815490) b!4401358))

(assert (= (and b!4401358 (not res!1815491)) b!4401359))

(declare-fun m!5064561 () Bool)

(assert (=> d!1327295 m!5064561))

(declare-fun m!5064563 () Bool)

(assert (=> d!1327295 m!5064563))

(declare-fun m!5064565 () Bool)

(assert (=> b!4401359 m!5064565))

(assert (=> b!4401269 d!1327295))

(declare-fun d!1327297 () Bool)

(assert (=> d!1327297 (dynLambda!20766 lambda!149007 lt!1606212)))

(declare-fun lt!1606295 () Unit!78867)

(declare-fun choose!27605 (List!49413 Int tuple2!48896) Unit!78867)

(assert (=> d!1327297 (= lt!1606295 (choose!27605 (toList!3245 lm!1707) lambda!149007 lt!1606212))))

(declare-fun e!2740576 () Bool)

(assert (=> d!1327297 e!2740576))

(declare-fun res!1815497 () Bool)

(assert (=> d!1327297 (=> (not res!1815497) (not e!2740576))))

(assert (=> d!1327297 (= res!1815497 (forall!9372 (toList!3245 lm!1707) lambda!149007))))

(assert (=> d!1327297 (= (forallContained!2007 (toList!3245 lm!1707) lambda!149007 lt!1606212) lt!1606295)))

(declare-fun b!4401375 () Bool)

(assert (=> b!4401375 (= e!2740576 (contains!11682 (toList!3245 lm!1707) lt!1606212))))

(assert (= (and d!1327297 res!1815497) b!4401375))

(declare-fun b_lambda!139867 () Bool)

(assert (=> (not b_lambda!139867) (not d!1327297)))

(declare-fun m!5064583 () Bool)

(assert (=> d!1327297 m!5064583))

(declare-fun m!5064585 () Bool)

(assert (=> d!1327297 m!5064585))

(assert (=> d!1327297 m!5064435))

(assert (=> b!4401375 m!5064425))

(assert (=> b!4401269 d!1327297))

(declare-fun d!1327305 () Bool)

(assert (=> d!1327305 (= (apply!11483 lm!1707 (_1!27742 (h!54916 (toList!3245 lm!1707)))) (get!16046 (getValueByKey!602 (toList!3245 lm!1707) (_1!27742 (h!54916 (toList!3245 lm!1707))))))))

(declare-fun bs!728628 () Bool)

(assert (= bs!728628 d!1327305))

(declare-fun m!5064587 () Bool)

(assert (=> bs!728628 m!5064587))

(assert (=> bs!728628 m!5064587))

(declare-fun m!5064589 () Bool)

(assert (=> bs!728628 m!5064589))

(assert (=> b!4401270 d!1327305))

(declare-fun d!1327307 () Bool)

(declare-fun res!1815509 () Bool)

(declare-fun e!2740590 () Bool)

(assert (=> d!1327307 (=> res!1815509 e!2740590)))

(assert (=> d!1327307 (= res!1815509 (and ((_ is Cons!49288) (apply!11483 lm!1707 (_1!27742 (h!54916 (toList!3245 lm!1707))))) (= (_1!27741 (h!54915 (apply!11483 lm!1707 (_1!27742 (h!54916 (toList!3245 lm!1707)))))) key!3918)))))

(assert (=> d!1327307 (= (containsKey!941 (apply!11483 lm!1707 (_1!27742 (h!54916 (toList!3245 lm!1707)))) key!3918) e!2740590)))

(declare-fun b!4401391 () Bool)

(declare-fun e!2740591 () Bool)

(assert (=> b!4401391 (= e!2740590 e!2740591)))

(declare-fun res!1815510 () Bool)

(assert (=> b!4401391 (=> (not res!1815510) (not e!2740591))))

(assert (=> b!4401391 (= res!1815510 ((_ is Cons!49288) (apply!11483 lm!1707 (_1!27742 (h!54916 (toList!3245 lm!1707))))))))

(declare-fun b!4401392 () Bool)

(assert (=> b!4401392 (= e!2740591 (containsKey!941 (t!356346 (apply!11483 lm!1707 (_1!27742 (h!54916 (toList!3245 lm!1707))))) key!3918))))

(assert (= (and d!1327307 (not res!1815509)) b!4401391))

(assert (= (and b!4401391 res!1815510) b!4401392))

(declare-fun m!5064597 () Bool)

(assert (=> b!4401392 m!5064597))

(assert (=> b!4401270 d!1327307))

(declare-fun b!4401449 () Bool)

(declare-fun e!2740630 () Bool)

(declare-datatypes ((List!49415 0))(
  ( (Nil!49291) (Cons!49291 (h!54920 K!10645) (t!356349 List!49415)) )
))
(declare-fun contains!11686 (List!49415 K!10645) Bool)

(declare-fun keys!16753 (ListMap!2489) List!49415)

(assert (=> b!4401449 (= e!2740630 (contains!11686 (keys!16753 lt!1606219) key!3918))))

(declare-fun b!4401450 () Bool)

(declare-fun e!2740631 () Unit!78867)

(declare-fun e!2740633 () Unit!78867)

(assert (=> b!4401450 (= e!2740631 e!2740633)))

(declare-fun c!749342 () Bool)

(declare-fun call!306277 () Bool)

(assert (=> b!4401450 (= c!749342 call!306277)))

(declare-fun b!4401451 () Bool)

(declare-fun e!2740632 () Bool)

(assert (=> b!4401451 (= e!2740632 (not (contains!11686 (keys!16753 lt!1606219) key!3918)))))

(declare-fun b!4401452 () Bool)

(declare-fun Unit!78876 () Unit!78867)

(assert (=> b!4401452 (= e!2740633 Unit!78876)))

(declare-fun b!4401453 () Bool)

(assert (=> b!4401453 false))

(declare-fun lt!1606360 () Unit!78867)

(declare-fun lt!1606365 () Unit!78867)

(assert (=> b!4401453 (= lt!1606360 lt!1606365)))

(declare-fun containsKey!945 (List!49412 K!10645) Bool)

(assert (=> b!4401453 (containsKey!945 (toList!3246 lt!1606219) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!197 (List!49412 K!10645) Unit!78867)

(assert (=> b!4401453 (= lt!1606365 (lemmaInGetKeysListThenContainsKey!197 (toList!3246 lt!1606219) key!3918))))

(declare-fun Unit!78877 () Unit!78867)

(assert (=> b!4401453 (= e!2740633 Unit!78877)))

(declare-fun b!4401454 () Bool)

(declare-fun e!2740635 () List!49415)

(declare-fun getKeysList!199 (List!49412) List!49415)

(assert (=> b!4401454 (= e!2740635 (getKeysList!199 (toList!3246 lt!1606219)))))

(declare-fun bm!306272 () Bool)

(assert (=> bm!306272 (= call!306277 (contains!11686 e!2740635 key!3918))))

(declare-fun c!749340 () Bool)

(declare-fun c!749341 () Bool)

(assert (=> bm!306272 (= c!749340 c!749341)))

(declare-fun b!4401456 () Bool)

(declare-fun e!2740634 () Bool)

(assert (=> b!4401456 (= e!2740634 e!2740630)))

(declare-fun res!1815539 () Bool)

(assert (=> b!4401456 (=> (not res!1815539) (not e!2740630))))

(declare-datatypes ((Option!10617 0))(
  ( (None!10616) (Some!10616 (v!43726 V!10891)) )
))
(declare-fun isDefined!7910 (Option!10617) Bool)

(declare-fun getValueByKey!603 (List!49412 K!10645) Option!10617)

(assert (=> b!4401456 (= res!1815539 (isDefined!7910 (getValueByKey!603 (toList!3246 lt!1606219) key!3918)))))

(declare-fun b!4401457 () Bool)

(declare-fun lt!1606366 () Unit!78867)

(assert (=> b!4401457 (= e!2740631 lt!1606366)))

(declare-fun lt!1606361 () Unit!78867)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!513 (List!49412 K!10645) Unit!78867)

(assert (=> b!4401457 (= lt!1606361 (lemmaContainsKeyImpliesGetValueByKeyDefined!513 (toList!3246 lt!1606219) key!3918))))

(assert (=> b!4401457 (isDefined!7910 (getValueByKey!603 (toList!3246 lt!1606219) key!3918))))

(declare-fun lt!1606363 () Unit!78867)

(assert (=> b!4401457 (= lt!1606363 lt!1606361)))

(declare-fun lemmaInListThenGetKeysListContains!196 (List!49412 K!10645) Unit!78867)

(assert (=> b!4401457 (= lt!1606366 (lemmaInListThenGetKeysListContains!196 (toList!3246 lt!1606219) key!3918))))

(assert (=> b!4401457 call!306277))

(declare-fun d!1327311 () Bool)

(assert (=> d!1327311 e!2740634))

(declare-fun res!1815541 () Bool)

(assert (=> d!1327311 (=> res!1815541 e!2740634)))

(assert (=> d!1327311 (= res!1815541 e!2740632)))

(declare-fun res!1815540 () Bool)

(assert (=> d!1327311 (=> (not res!1815540) (not e!2740632))))

(declare-fun lt!1606364 () Bool)

(assert (=> d!1327311 (= res!1815540 (not lt!1606364))))

(declare-fun lt!1606362 () Bool)

(assert (=> d!1327311 (= lt!1606364 lt!1606362)))

(declare-fun lt!1606359 () Unit!78867)

(assert (=> d!1327311 (= lt!1606359 e!2740631)))

(assert (=> d!1327311 (= c!749341 lt!1606362)))

(assert (=> d!1327311 (= lt!1606362 (containsKey!945 (toList!3246 lt!1606219) key!3918))))

(assert (=> d!1327311 (= (contains!11681 lt!1606219 key!3918) lt!1606364)))

(declare-fun b!4401455 () Bool)

(assert (=> b!4401455 (= e!2740635 (keys!16753 lt!1606219))))

(assert (= (and d!1327311 c!749341) b!4401457))

(assert (= (and d!1327311 (not c!749341)) b!4401450))

(assert (= (and b!4401450 c!749342) b!4401453))

(assert (= (and b!4401450 (not c!749342)) b!4401452))

(assert (= (or b!4401457 b!4401450) bm!306272))

(assert (= (and bm!306272 c!749340) b!4401454))

(assert (= (and bm!306272 (not c!749340)) b!4401455))

(assert (= (and d!1327311 res!1815540) b!4401451))

(assert (= (and d!1327311 (not res!1815541)) b!4401456))

(assert (= (and b!4401456 res!1815539) b!4401449))

(declare-fun m!5064709 () Bool)

(assert (=> b!4401449 m!5064709))

(assert (=> b!4401449 m!5064709))

(declare-fun m!5064711 () Bool)

(assert (=> b!4401449 m!5064711))

(declare-fun m!5064713 () Bool)

(assert (=> d!1327311 m!5064713))

(declare-fun m!5064715 () Bool)

(assert (=> b!4401454 m!5064715))

(declare-fun m!5064717 () Bool)

(assert (=> bm!306272 m!5064717))

(declare-fun m!5064719 () Bool)

(assert (=> b!4401456 m!5064719))

(assert (=> b!4401456 m!5064719))

(declare-fun m!5064721 () Bool)

(assert (=> b!4401456 m!5064721))

(assert (=> b!4401453 m!5064713))

(declare-fun m!5064723 () Bool)

(assert (=> b!4401453 m!5064723))

(declare-fun m!5064725 () Bool)

(assert (=> b!4401457 m!5064725))

(assert (=> b!4401457 m!5064719))

(assert (=> b!4401457 m!5064719))

(assert (=> b!4401457 m!5064721))

(declare-fun m!5064727 () Bool)

(assert (=> b!4401457 m!5064727))

(assert (=> b!4401451 m!5064709))

(assert (=> b!4401451 m!5064709))

(assert (=> b!4401451 m!5064711))

(assert (=> b!4401455 m!5064709))

(assert (=> b!4401270 d!1327311))

(declare-fun bs!728667 () Bool)

(declare-fun d!1327343 () Bool)

(assert (= bs!728667 (and d!1327343 start!427908)))

(declare-fun lambda!149028 () Int)

(assert (=> bs!728667 (= lambda!149028 lambda!149007)))

(assert (=> d!1327343 (eq!337 (extractMap!690 (toList!3245 (+!877 lt!1606217 (tuple2!48897 hash!377 newBucket!200)))) (+!878 (extractMap!690 (toList!3245 lt!1606217)) (tuple2!48895 key!3918 newValue!99)))))

(declare-fun lt!1606385 () Unit!78867)

(declare-fun choose!27606 (ListLongMap!1895 (_ BitVec 64) List!49412 K!10645 V!10891 Hashable!5023) Unit!78867)

(assert (=> d!1327343 (= lt!1606385 (choose!27606 lt!1606217 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1327343 (forall!9372 (toList!3245 lt!1606217) lambda!149028)))

(assert (=> d!1327343 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!135 lt!1606217 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1606385)))

(declare-fun bs!728668 () Bool)

(assert (= bs!728668 d!1327343))

(assert (=> bs!728668 m!5064441))

(declare-fun m!5064769 () Bool)

(assert (=> bs!728668 m!5064769))

(declare-fun m!5064771 () Bool)

(assert (=> bs!728668 m!5064771))

(declare-fun m!5064773 () Bool)

(assert (=> bs!728668 m!5064773))

(declare-fun m!5064775 () Bool)

(assert (=> bs!728668 m!5064775))

(assert (=> bs!728668 m!5064441))

(assert (=> bs!728668 m!5064771))

(declare-fun m!5064777 () Bool)

(assert (=> bs!728668 m!5064777))

(assert (=> bs!728668 m!5064769))

(declare-fun m!5064779 () Bool)

(assert (=> bs!728668 m!5064779))

(assert (=> b!4401270 d!1327343))

(declare-fun bs!728669 () Bool)

(declare-fun d!1327363 () Bool)

(assert (= bs!728669 (and d!1327363 start!427908)))

(declare-fun lambda!149031 () Int)

(assert (=> bs!728669 (= lambda!149031 lambda!149007)))

(declare-fun bs!728670 () Bool)

(assert (= bs!728670 (and d!1327363 d!1327343)))

(assert (=> bs!728670 (= lambda!149031 lambda!149028)))

(declare-fun lt!1606388 () ListMap!2489)

(declare-fun invariantList!752 (List!49412) Bool)

(assert (=> d!1327363 (invariantList!752 (toList!3246 lt!1606388))))

(declare-fun e!2740659 () ListMap!2489)

(assert (=> d!1327363 (= lt!1606388 e!2740659)))

(declare-fun c!749349 () Bool)

(assert (=> d!1327363 (= c!749349 ((_ is Cons!49289) (toList!3245 lt!1606217)))))

(assert (=> d!1327363 (forall!9372 (toList!3245 lt!1606217) lambda!149031)))

(assert (=> d!1327363 (= (extractMap!690 (toList!3245 lt!1606217)) lt!1606388)))

(declare-fun b!4401495 () Bool)

(declare-fun addToMapMapFromBucket!297 (List!49412 ListMap!2489) ListMap!2489)

(assert (=> b!4401495 (= e!2740659 (addToMapMapFromBucket!297 (_2!27742 (h!54916 (toList!3245 lt!1606217))) (extractMap!690 (t!356347 (toList!3245 lt!1606217)))))))

(declare-fun b!4401496 () Bool)

(assert (=> b!4401496 (= e!2740659 (ListMap!2490 Nil!49288))))

(assert (= (and d!1327363 c!749349) b!4401495))

(assert (= (and d!1327363 (not c!749349)) b!4401496))

(declare-fun m!5064781 () Bool)

(assert (=> d!1327363 m!5064781))

(declare-fun m!5064783 () Bool)

(assert (=> d!1327363 m!5064783))

(declare-fun m!5064785 () Bool)

(assert (=> b!4401495 m!5064785))

(assert (=> b!4401495 m!5064785))

(declare-fun m!5064787 () Bool)

(assert (=> b!4401495 m!5064787))

(assert (=> b!4401270 d!1327363))

(declare-fun bs!728671 () Bool)

(declare-fun d!1327365 () Bool)

(assert (= bs!728671 (and d!1327365 start!427908)))

(declare-fun lambda!149034 () Int)

(assert (=> bs!728671 (= lambda!149034 lambda!149007)))

(declare-fun bs!728672 () Bool)

(assert (= bs!728672 (and d!1327365 d!1327343)))

(assert (=> bs!728672 (= lambda!149034 lambda!149028)))

(declare-fun bs!728673 () Bool)

(assert (= bs!728673 (and d!1327365 d!1327363)))

(assert (=> bs!728673 (= lambda!149034 lambda!149031)))

(assert (=> d!1327365 (not (containsKey!941 (apply!11483 lm!1707 (_1!27742 (h!54916 (toList!3245 lm!1707)))) key!3918))))

(declare-fun lt!1606391 () Unit!78867)

(declare-fun choose!27607 (ListLongMap!1895 K!10645 (_ BitVec 64) Hashable!5023) Unit!78867)

(assert (=> d!1327365 (= lt!1606391 (choose!27607 lm!1707 key!3918 (_1!27742 (h!54916 (toList!3245 lm!1707))) hashF!1247))))

(assert (=> d!1327365 (forall!9372 (toList!3245 lm!1707) lambda!149034)))

(assert (=> d!1327365 (= (lemmaNotSameHashThenCannotContainKey!102 lm!1707 key!3918 (_1!27742 (h!54916 (toList!3245 lm!1707))) hashF!1247) lt!1606391)))

(declare-fun bs!728674 () Bool)

(assert (= bs!728674 d!1327365))

(assert (=> bs!728674 m!5064463))

(assert (=> bs!728674 m!5064463))

(assert (=> bs!728674 m!5064465))

(declare-fun m!5064789 () Bool)

(assert (=> bs!728674 m!5064789))

(declare-fun m!5064791 () Bool)

(assert (=> bs!728674 m!5064791))

(assert (=> b!4401270 d!1327365))

(declare-fun d!1327367 () Bool)

(declare-fun e!2740662 () Bool)

(assert (=> d!1327367 e!2740662))

(declare-fun res!1815557 () Bool)

(assert (=> d!1327367 (=> (not res!1815557) (not e!2740662))))

(declare-fun lt!1606402 () ListLongMap!1895)

(assert (=> d!1327367 (= res!1815557 (contains!11683 lt!1606402 (_1!27742 lt!1606215)))))

(declare-fun lt!1606400 () List!49413)

(assert (=> d!1327367 (= lt!1606402 (ListLongMap!1896 lt!1606400))))

(declare-fun lt!1606401 () Unit!78867)

(declare-fun lt!1606403 () Unit!78867)

(assert (=> d!1327367 (= lt!1606401 lt!1606403)))

(assert (=> d!1327367 (= (getValueByKey!602 lt!1606400 (_1!27742 lt!1606215)) (Some!10615 (_2!27742 lt!1606215)))))

(declare-fun lemmaContainsTupThenGetReturnValue!348 (List!49413 (_ BitVec 64) List!49412) Unit!78867)

(assert (=> d!1327367 (= lt!1606403 (lemmaContainsTupThenGetReturnValue!348 lt!1606400 (_1!27742 lt!1606215) (_2!27742 lt!1606215)))))

(declare-fun insertStrictlySorted!206 (List!49413 (_ BitVec 64) List!49412) List!49413)

(assert (=> d!1327367 (= lt!1606400 (insertStrictlySorted!206 (toList!3245 lt!1606217) (_1!27742 lt!1606215) (_2!27742 lt!1606215)))))

(assert (=> d!1327367 (= (+!877 lt!1606217 lt!1606215) lt!1606402)))

(declare-fun b!4401501 () Bool)

(declare-fun res!1815558 () Bool)

(assert (=> b!4401501 (=> (not res!1815558) (not e!2740662))))

(assert (=> b!4401501 (= res!1815558 (= (getValueByKey!602 (toList!3245 lt!1606402) (_1!27742 lt!1606215)) (Some!10615 (_2!27742 lt!1606215))))))

(declare-fun b!4401502 () Bool)

(assert (=> b!4401502 (= e!2740662 (contains!11682 (toList!3245 lt!1606402) lt!1606215))))

(assert (= (and d!1327367 res!1815557) b!4401501))

(assert (= (and b!4401501 res!1815558) b!4401502))

(declare-fun m!5064793 () Bool)

(assert (=> d!1327367 m!5064793))

(declare-fun m!5064795 () Bool)

(assert (=> d!1327367 m!5064795))

(declare-fun m!5064797 () Bool)

(assert (=> d!1327367 m!5064797))

(declare-fun m!5064799 () Bool)

(assert (=> d!1327367 m!5064799))

(declare-fun m!5064801 () Bool)

(assert (=> b!4401501 m!5064801))

(declare-fun m!5064803 () Bool)

(assert (=> b!4401502 m!5064803))

(assert (=> b!4401270 d!1327367))

(declare-fun d!1327369 () Bool)

(declare-fun content!7874 (List!49412) (InoxSet tuple2!48894))

(assert (=> d!1327369 (= (eq!337 (extractMap!690 (toList!3245 (+!877 lt!1606217 lt!1606215))) (+!878 lt!1606219 lt!1606214)) (= (content!7874 (toList!3246 (extractMap!690 (toList!3245 (+!877 lt!1606217 lt!1606215))))) (content!7874 (toList!3246 (+!878 lt!1606219 lt!1606214)))))))

(declare-fun bs!728675 () Bool)

(assert (= bs!728675 d!1327369))

(declare-fun m!5064805 () Bool)

(assert (=> bs!728675 m!5064805))

(declare-fun m!5064807 () Bool)

(assert (=> bs!728675 m!5064807))

(assert (=> b!4401270 d!1327369))

(declare-fun bs!728676 () Bool)

(declare-fun d!1327371 () Bool)

(assert (= bs!728676 (and d!1327371 start!427908)))

(declare-fun lambda!149035 () Int)

(assert (=> bs!728676 (= lambda!149035 lambda!149007)))

(declare-fun bs!728677 () Bool)

(assert (= bs!728677 (and d!1327371 d!1327343)))

(assert (=> bs!728677 (= lambda!149035 lambda!149028)))

(declare-fun bs!728678 () Bool)

(assert (= bs!728678 (and d!1327371 d!1327363)))

(assert (=> bs!728678 (= lambda!149035 lambda!149031)))

(declare-fun bs!728679 () Bool)

(assert (= bs!728679 (and d!1327371 d!1327365)))

(assert (=> bs!728679 (= lambda!149035 lambda!149034)))

(declare-fun lt!1606404 () ListMap!2489)

(assert (=> d!1327371 (invariantList!752 (toList!3246 lt!1606404))))

(declare-fun e!2740663 () ListMap!2489)

(assert (=> d!1327371 (= lt!1606404 e!2740663)))

(declare-fun c!749350 () Bool)

(assert (=> d!1327371 (= c!749350 ((_ is Cons!49289) (toList!3245 (+!877 lt!1606217 lt!1606215))))))

(assert (=> d!1327371 (forall!9372 (toList!3245 (+!877 lt!1606217 lt!1606215)) lambda!149035)))

(assert (=> d!1327371 (= (extractMap!690 (toList!3245 (+!877 lt!1606217 lt!1606215))) lt!1606404)))

(declare-fun b!4401503 () Bool)

(assert (=> b!4401503 (= e!2740663 (addToMapMapFromBucket!297 (_2!27742 (h!54916 (toList!3245 (+!877 lt!1606217 lt!1606215)))) (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))))))

(declare-fun b!4401504 () Bool)

(assert (=> b!4401504 (= e!2740663 (ListMap!2490 Nil!49288))))

(assert (= (and d!1327371 c!749350) b!4401503))

(assert (= (and d!1327371 (not c!749350)) b!4401504))

(declare-fun m!5064809 () Bool)

(assert (=> d!1327371 m!5064809))

(declare-fun m!5064811 () Bool)

(assert (=> d!1327371 m!5064811))

(declare-fun m!5064813 () Bool)

(assert (=> b!4401503 m!5064813))

(assert (=> b!4401503 m!5064813))

(declare-fun m!5064815 () Bool)

(assert (=> b!4401503 m!5064815))

(assert (=> b!4401270 d!1327371))

(declare-fun d!1327373 () Bool)

(assert (=> d!1327373 (contains!11681 lt!1606220 key!3918)))

(declare-fun lt!1606407 () Unit!78867)

(declare-fun choose!27608 (List!49412 K!10645 V!10891 ListMap!2489) Unit!78867)

(assert (=> d!1327373 (= lt!1606407 (choose!27608 (_2!27742 (h!54916 (toList!3245 lm!1707))) key!3918 newValue!99 lt!1606220))))

(assert (=> d!1327373 (noDuplicateKeys!631 (_2!27742 (h!54916 (toList!3245 lm!1707))))))

(assert (=> d!1327373 (= (lemmaAddToMapContainsAndNotInListThenInAcc!90 (_2!27742 (h!54916 (toList!3245 lm!1707))) key!3918 newValue!99 lt!1606220) lt!1606407)))

(declare-fun bs!728680 () Bool)

(assert (= bs!728680 d!1327373))

(assert (=> bs!728680 m!5064461))

(declare-fun m!5064817 () Bool)

(assert (=> bs!728680 m!5064817))

(declare-fun m!5064819 () Bool)

(assert (=> bs!728680 m!5064819))

(assert (=> b!4401270 d!1327373))

(declare-fun d!1327375 () Bool)

(declare-fun tail!7121 (List!49413) List!49413)

(assert (=> d!1327375 (= (tail!7119 lm!1707) (ListLongMap!1896 (tail!7121 (toList!3245 lm!1707))))))

(declare-fun bs!728681 () Bool)

(assert (= bs!728681 d!1327375))

(declare-fun m!5064821 () Bool)

(assert (=> bs!728681 m!5064821))

(assert (=> b!4401270 d!1327375))

(declare-fun d!1327377 () Bool)

(declare-fun e!2740666 () Bool)

(assert (=> d!1327377 e!2740666))

(declare-fun res!1815563 () Bool)

(assert (=> d!1327377 (=> (not res!1815563) (not e!2740666))))

(declare-fun lt!1606417 () ListMap!2489)

(assert (=> d!1327377 (= res!1815563 (contains!11681 lt!1606417 (_1!27741 lt!1606214)))))

(declare-fun lt!1606416 () List!49412)

(assert (=> d!1327377 (= lt!1606417 (ListMap!2490 lt!1606416))))

(declare-fun lt!1606419 () Unit!78867)

(declare-fun lt!1606418 () Unit!78867)

(assert (=> d!1327377 (= lt!1606419 lt!1606418)))

(assert (=> d!1327377 (= (getValueByKey!603 lt!1606416 (_1!27741 lt!1606214)) (Some!10616 (_2!27741 lt!1606214)))))

(declare-fun lemmaContainsTupThenGetReturnValue!349 (List!49412 K!10645 V!10891) Unit!78867)

(assert (=> d!1327377 (= lt!1606418 (lemmaContainsTupThenGetReturnValue!349 lt!1606416 (_1!27741 lt!1606214) (_2!27741 lt!1606214)))))

(declare-fun insertNoDuplicatedKeys!151 (List!49412 K!10645 V!10891) List!49412)

(assert (=> d!1327377 (= lt!1606416 (insertNoDuplicatedKeys!151 (toList!3246 lt!1606219) (_1!27741 lt!1606214) (_2!27741 lt!1606214)))))

(assert (=> d!1327377 (= (+!878 lt!1606219 lt!1606214) lt!1606417)))

(declare-fun b!4401509 () Bool)

(declare-fun res!1815564 () Bool)

(assert (=> b!4401509 (=> (not res!1815564) (not e!2740666))))

(assert (=> b!4401509 (= res!1815564 (= (getValueByKey!603 (toList!3246 lt!1606417) (_1!27741 lt!1606214)) (Some!10616 (_2!27741 lt!1606214))))))

(declare-fun b!4401510 () Bool)

(declare-fun contains!11687 (List!49412 tuple2!48894) Bool)

(assert (=> b!4401510 (= e!2740666 (contains!11687 (toList!3246 lt!1606417) lt!1606214))))

(assert (= (and d!1327377 res!1815563) b!4401509))

(assert (= (and b!4401509 res!1815564) b!4401510))

(declare-fun m!5064823 () Bool)

(assert (=> d!1327377 m!5064823))

(declare-fun m!5064825 () Bool)

(assert (=> d!1327377 m!5064825))

(declare-fun m!5064827 () Bool)

(assert (=> d!1327377 m!5064827))

(declare-fun m!5064829 () Bool)

(assert (=> d!1327377 m!5064829))

(declare-fun m!5064831 () Bool)

(assert (=> b!4401509 m!5064831))

(declare-fun m!5064833 () Bool)

(assert (=> b!4401510 m!5064833))

(assert (=> b!4401270 d!1327377))

(declare-fun bs!728682 () Bool)

(declare-fun d!1327379 () Bool)

(assert (= bs!728682 (and d!1327379 d!1327365)))

(declare-fun lambda!149036 () Int)

(assert (=> bs!728682 (= lambda!149036 lambda!149034)))

(declare-fun bs!728683 () Bool)

(assert (= bs!728683 (and d!1327379 d!1327343)))

(assert (=> bs!728683 (= lambda!149036 lambda!149028)))

(declare-fun bs!728684 () Bool)

(assert (= bs!728684 (and d!1327379 d!1327371)))

(assert (=> bs!728684 (= lambda!149036 lambda!149035)))

(declare-fun bs!728685 () Bool)

(assert (= bs!728685 (and d!1327379 start!427908)))

(assert (=> bs!728685 (= lambda!149036 lambda!149007)))

(declare-fun bs!728686 () Bool)

(assert (= bs!728686 (and d!1327379 d!1327363)))

(assert (=> bs!728686 (= lambda!149036 lambda!149031)))

(declare-fun lt!1606420 () ListMap!2489)

(assert (=> d!1327379 (invariantList!752 (toList!3246 lt!1606420))))

(declare-fun e!2740667 () ListMap!2489)

(assert (=> d!1327379 (= lt!1606420 e!2740667)))

(declare-fun c!749351 () Bool)

(assert (=> d!1327379 (= c!749351 ((_ is Cons!49289) (t!356347 (toList!3245 lm!1707))))))

(assert (=> d!1327379 (forall!9372 (t!356347 (toList!3245 lm!1707)) lambda!149036)))

(assert (=> d!1327379 (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) lt!1606420)))

(declare-fun b!4401511 () Bool)

(assert (=> b!4401511 (= e!2740667 (addToMapMapFromBucket!297 (_2!27742 (h!54916 (t!356347 (toList!3245 lm!1707)))) (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))))))

(declare-fun b!4401512 () Bool)

(assert (=> b!4401512 (= e!2740667 (ListMap!2490 Nil!49288))))

(assert (= (and d!1327379 c!749351) b!4401511))

(assert (= (and d!1327379 (not c!749351)) b!4401512))

(declare-fun m!5064835 () Bool)

(assert (=> d!1327379 m!5064835))

(declare-fun m!5064837 () Bool)

(assert (=> d!1327379 m!5064837))

(declare-fun m!5064839 () Bool)

(assert (=> b!4401511 m!5064839))

(assert (=> b!4401511 m!5064839))

(declare-fun m!5064841 () Bool)

(assert (=> b!4401511 m!5064841))

(assert (=> b!4401270 d!1327379))

(declare-fun d!1327381 () Bool)

(declare-fun head!9110 (List!49413) tuple2!48896)

(assert (=> d!1327381 (= (head!9108 lm!1707) (head!9110 (toList!3245 lm!1707)))))

(declare-fun bs!728687 () Bool)

(assert (= bs!728687 d!1327381))

(declare-fun m!5064843 () Bool)

(assert (=> bs!728687 m!5064843))

(assert (=> b!4401270 d!1327381))

(declare-fun b!4401513 () Bool)

(declare-fun e!2740668 () Bool)

(assert (=> b!4401513 (= e!2740668 (contains!11686 (keys!16753 lt!1606220) key!3918))))

(declare-fun b!4401514 () Bool)

(declare-fun e!2740669 () Unit!78867)

(declare-fun e!2740671 () Unit!78867)

(assert (=> b!4401514 (= e!2740669 e!2740671)))

(declare-fun c!749354 () Bool)

(declare-fun call!306278 () Bool)

(assert (=> b!4401514 (= c!749354 call!306278)))

(declare-fun b!4401515 () Bool)

(declare-fun e!2740670 () Bool)

(assert (=> b!4401515 (= e!2740670 (not (contains!11686 (keys!16753 lt!1606220) key!3918)))))

(declare-fun b!4401516 () Bool)

(declare-fun Unit!78879 () Unit!78867)

(assert (=> b!4401516 (= e!2740671 Unit!78879)))

(declare-fun b!4401517 () Bool)

(assert (=> b!4401517 false))

(declare-fun lt!1606422 () Unit!78867)

(declare-fun lt!1606427 () Unit!78867)

(assert (=> b!4401517 (= lt!1606422 lt!1606427)))

(assert (=> b!4401517 (containsKey!945 (toList!3246 lt!1606220) key!3918)))

(assert (=> b!4401517 (= lt!1606427 (lemmaInGetKeysListThenContainsKey!197 (toList!3246 lt!1606220) key!3918))))

(declare-fun Unit!78880 () Unit!78867)

(assert (=> b!4401517 (= e!2740671 Unit!78880)))

(declare-fun b!4401518 () Bool)

(declare-fun e!2740673 () List!49415)

(assert (=> b!4401518 (= e!2740673 (getKeysList!199 (toList!3246 lt!1606220)))))

(declare-fun bm!306273 () Bool)

(assert (=> bm!306273 (= call!306278 (contains!11686 e!2740673 key!3918))))

(declare-fun c!749352 () Bool)

(declare-fun c!749353 () Bool)

(assert (=> bm!306273 (= c!749352 c!749353)))

(declare-fun b!4401520 () Bool)

(declare-fun e!2740672 () Bool)

(assert (=> b!4401520 (= e!2740672 e!2740668)))

(declare-fun res!1815565 () Bool)

(assert (=> b!4401520 (=> (not res!1815565) (not e!2740668))))

(assert (=> b!4401520 (= res!1815565 (isDefined!7910 (getValueByKey!603 (toList!3246 lt!1606220) key!3918)))))

(declare-fun b!4401521 () Bool)

(declare-fun lt!1606428 () Unit!78867)

(assert (=> b!4401521 (= e!2740669 lt!1606428)))

(declare-fun lt!1606423 () Unit!78867)

(assert (=> b!4401521 (= lt!1606423 (lemmaContainsKeyImpliesGetValueByKeyDefined!513 (toList!3246 lt!1606220) key!3918))))

(assert (=> b!4401521 (isDefined!7910 (getValueByKey!603 (toList!3246 lt!1606220) key!3918))))

(declare-fun lt!1606425 () Unit!78867)

(assert (=> b!4401521 (= lt!1606425 lt!1606423)))

(assert (=> b!4401521 (= lt!1606428 (lemmaInListThenGetKeysListContains!196 (toList!3246 lt!1606220) key!3918))))

(assert (=> b!4401521 call!306278))

(declare-fun d!1327383 () Bool)

(assert (=> d!1327383 e!2740672))

(declare-fun res!1815567 () Bool)

(assert (=> d!1327383 (=> res!1815567 e!2740672)))

(assert (=> d!1327383 (= res!1815567 e!2740670)))

(declare-fun res!1815566 () Bool)

(assert (=> d!1327383 (=> (not res!1815566) (not e!2740670))))

(declare-fun lt!1606426 () Bool)

(assert (=> d!1327383 (= res!1815566 (not lt!1606426))))

(declare-fun lt!1606424 () Bool)

(assert (=> d!1327383 (= lt!1606426 lt!1606424)))

(declare-fun lt!1606421 () Unit!78867)

(assert (=> d!1327383 (= lt!1606421 e!2740669)))

(assert (=> d!1327383 (= c!749353 lt!1606424)))

(assert (=> d!1327383 (= lt!1606424 (containsKey!945 (toList!3246 lt!1606220) key!3918))))

(assert (=> d!1327383 (= (contains!11681 lt!1606220 key!3918) lt!1606426)))

(declare-fun b!4401519 () Bool)

(assert (=> b!4401519 (= e!2740673 (keys!16753 lt!1606220))))

(assert (= (and d!1327383 c!749353) b!4401521))

(assert (= (and d!1327383 (not c!749353)) b!4401514))

(assert (= (and b!4401514 c!749354) b!4401517))

(assert (= (and b!4401514 (not c!749354)) b!4401516))

(assert (= (or b!4401521 b!4401514) bm!306273))

(assert (= (and bm!306273 c!749352) b!4401518))

(assert (= (and bm!306273 (not c!749352)) b!4401519))

(assert (= (and d!1327383 res!1815566) b!4401515))

(assert (= (and d!1327383 (not res!1815567)) b!4401520))

(assert (= (and b!4401520 res!1815565) b!4401513))

(declare-fun m!5064845 () Bool)

(assert (=> b!4401513 m!5064845))

(assert (=> b!4401513 m!5064845))

(declare-fun m!5064847 () Bool)

(assert (=> b!4401513 m!5064847))

(declare-fun m!5064849 () Bool)

(assert (=> d!1327383 m!5064849))

(declare-fun m!5064851 () Bool)

(assert (=> b!4401518 m!5064851))

(declare-fun m!5064853 () Bool)

(assert (=> bm!306273 m!5064853))

(declare-fun m!5064855 () Bool)

(assert (=> b!4401520 m!5064855))

(assert (=> b!4401520 m!5064855))

(declare-fun m!5064857 () Bool)

(assert (=> b!4401520 m!5064857))

(assert (=> b!4401517 m!5064849))

(declare-fun m!5064859 () Bool)

(assert (=> b!4401517 m!5064859))

(declare-fun m!5064861 () Bool)

(assert (=> b!4401521 m!5064861))

(assert (=> b!4401521 m!5064855))

(assert (=> b!4401521 m!5064855))

(assert (=> b!4401521 m!5064857))

(declare-fun m!5064863 () Bool)

(assert (=> b!4401521 m!5064863))

(assert (=> b!4401515 m!5064845))

(assert (=> b!4401515 m!5064845))

(assert (=> b!4401515 m!5064847))

(assert (=> b!4401519 m!5064845))

(assert (=> b!4401270 d!1327383))

(declare-fun d!1327385 () Bool)

(declare-fun hash!1883 (Hashable!5023 K!10645) (_ BitVec 64))

(assert (=> d!1327385 (= (hash!1877 hashF!1247 key!3918) (hash!1883 hashF!1247 key!3918))))

(declare-fun bs!728688 () Bool)

(assert (= bs!728688 d!1327385))

(declare-fun m!5064865 () Bool)

(assert (=> bs!728688 m!5064865))

(assert (=> b!4401272 d!1327385))

(declare-fun d!1327387 () Bool)

(declare-fun res!1815572 () Bool)

(declare-fun e!2740678 () Bool)

(assert (=> d!1327387 (=> res!1815572 e!2740678)))

(assert (=> d!1327387 (= res!1815572 (not ((_ is Cons!49288) newBucket!200)))))

(assert (=> d!1327387 (= (noDuplicateKeys!631 newBucket!200) e!2740678)))

(declare-fun b!4401526 () Bool)

(declare-fun e!2740679 () Bool)

(assert (=> b!4401526 (= e!2740678 e!2740679)))

(declare-fun res!1815573 () Bool)

(assert (=> b!4401526 (=> (not res!1815573) (not e!2740679))))

(assert (=> b!4401526 (= res!1815573 (not (containsKey!941 (t!356346 newBucket!200) (_1!27741 (h!54915 newBucket!200)))))))

(declare-fun b!4401527 () Bool)

(assert (=> b!4401527 (= e!2740679 (noDuplicateKeys!631 (t!356346 newBucket!200)))))

(assert (= (and d!1327387 (not res!1815572)) b!4401526))

(assert (= (and b!4401526 res!1815573) b!4401527))

(declare-fun m!5064867 () Bool)

(assert (=> b!4401526 m!5064867))

(declare-fun m!5064869 () Bool)

(assert (=> b!4401527 m!5064869))

(assert (=> b!4401261 d!1327387))

(declare-fun d!1327389 () Bool)

(declare-fun res!1815574 () Bool)

(declare-fun e!2740680 () Bool)

(assert (=> d!1327389 (=> res!1815574 e!2740680)))

(assert (=> d!1327389 (= res!1815574 ((_ is Nil!49289) (toList!3245 lm!1707)))))

(assert (=> d!1327389 (= (forall!9372 (toList!3245 lm!1707) lambda!149007) e!2740680)))

(declare-fun b!4401528 () Bool)

(declare-fun e!2740681 () Bool)

(assert (=> b!4401528 (= e!2740680 e!2740681)))

(declare-fun res!1815575 () Bool)

(assert (=> b!4401528 (=> (not res!1815575) (not e!2740681))))

(assert (=> b!4401528 (= res!1815575 (dynLambda!20766 lambda!149007 (h!54916 (toList!3245 lm!1707))))))

(declare-fun b!4401529 () Bool)

(assert (=> b!4401529 (= e!2740681 (forall!9372 (t!356347 (toList!3245 lm!1707)) lambda!149007))))

(assert (= (and d!1327389 (not res!1815574)) b!4401528))

(assert (= (and b!4401528 res!1815575) b!4401529))

(declare-fun b_lambda!139877 () Bool)

(assert (=> (not b_lambda!139877) (not b!4401528)))

(declare-fun m!5064871 () Bool)

(assert (=> b!4401528 m!5064871))

(declare-fun m!5064873 () Bool)

(assert (=> b!4401529 m!5064873))

(assert (=> start!427908 d!1327389))

(declare-fun d!1327391 () Bool)

(assert (=> d!1327391 (= (inv!64831 lm!1707) (isStrictlySorted!178 (toList!3245 lm!1707)))))

(declare-fun bs!728689 () Bool)

(assert (= bs!728689 d!1327391))

(assert (=> bs!728689 m!5064533))

(assert (=> start!427908 d!1327391))

(declare-fun b!4401530 () Bool)

(declare-fun e!2740682 () Bool)

(assert (=> b!4401530 (= e!2740682 (contains!11686 (keys!16753 (extractMap!690 (toList!3245 lm!1707))) key!3918))))

(declare-fun b!4401531 () Bool)

(declare-fun e!2740683 () Unit!78867)

(declare-fun e!2740685 () Unit!78867)

(assert (=> b!4401531 (= e!2740683 e!2740685)))

(declare-fun c!749357 () Bool)

(declare-fun call!306279 () Bool)

(assert (=> b!4401531 (= c!749357 call!306279)))

(declare-fun b!4401532 () Bool)

(declare-fun e!2740684 () Bool)

(assert (=> b!4401532 (= e!2740684 (not (contains!11686 (keys!16753 (extractMap!690 (toList!3245 lm!1707))) key!3918)))))

(declare-fun b!4401533 () Bool)

(declare-fun Unit!78881 () Unit!78867)

(assert (=> b!4401533 (= e!2740685 Unit!78881)))

(declare-fun b!4401534 () Bool)

(assert (=> b!4401534 false))

(declare-fun lt!1606430 () Unit!78867)

(declare-fun lt!1606435 () Unit!78867)

(assert (=> b!4401534 (= lt!1606430 lt!1606435)))

(assert (=> b!4401534 (containsKey!945 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) key!3918)))

(assert (=> b!4401534 (= lt!1606435 (lemmaInGetKeysListThenContainsKey!197 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) key!3918))))

(declare-fun Unit!78882 () Unit!78867)

(assert (=> b!4401534 (= e!2740685 Unit!78882)))

(declare-fun b!4401535 () Bool)

(declare-fun e!2740687 () List!49415)

(assert (=> b!4401535 (= e!2740687 (getKeysList!199 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))))))

(declare-fun bm!306274 () Bool)

(assert (=> bm!306274 (= call!306279 (contains!11686 e!2740687 key!3918))))

(declare-fun c!749355 () Bool)

(declare-fun c!749356 () Bool)

(assert (=> bm!306274 (= c!749355 c!749356)))

(declare-fun b!4401537 () Bool)

(declare-fun e!2740686 () Bool)

(assert (=> b!4401537 (= e!2740686 e!2740682)))

(declare-fun res!1815576 () Bool)

(assert (=> b!4401537 (=> (not res!1815576) (not e!2740682))))

(assert (=> b!4401537 (= res!1815576 (isDefined!7910 (getValueByKey!603 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) key!3918)))))

(declare-fun b!4401538 () Bool)

(declare-fun lt!1606436 () Unit!78867)

(assert (=> b!4401538 (= e!2740683 lt!1606436)))

(declare-fun lt!1606431 () Unit!78867)

(assert (=> b!4401538 (= lt!1606431 (lemmaContainsKeyImpliesGetValueByKeyDefined!513 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) key!3918))))

(assert (=> b!4401538 (isDefined!7910 (getValueByKey!603 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) key!3918))))

(declare-fun lt!1606433 () Unit!78867)

(assert (=> b!4401538 (= lt!1606433 lt!1606431)))

(assert (=> b!4401538 (= lt!1606436 (lemmaInListThenGetKeysListContains!196 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) key!3918))))

(assert (=> b!4401538 call!306279))

(declare-fun d!1327393 () Bool)

(assert (=> d!1327393 e!2740686))

(declare-fun res!1815578 () Bool)

(assert (=> d!1327393 (=> res!1815578 e!2740686)))

(assert (=> d!1327393 (= res!1815578 e!2740684)))

(declare-fun res!1815577 () Bool)

(assert (=> d!1327393 (=> (not res!1815577) (not e!2740684))))

(declare-fun lt!1606434 () Bool)

(assert (=> d!1327393 (= res!1815577 (not lt!1606434))))

(declare-fun lt!1606432 () Bool)

(assert (=> d!1327393 (= lt!1606434 lt!1606432)))

(declare-fun lt!1606429 () Unit!78867)

(assert (=> d!1327393 (= lt!1606429 e!2740683)))

(assert (=> d!1327393 (= c!749356 lt!1606432)))

(assert (=> d!1327393 (= lt!1606432 (containsKey!945 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) key!3918))))

(assert (=> d!1327393 (= (contains!11681 (extractMap!690 (toList!3245 lm!1707)) key!3918) lt!1606434)))

(declare-fun b!4401536 () Bool)

(assert (=> b!4401536 (= e!2740687 (keys!16753 (extractMap!690 (toList!3245 lm!1707))))))

(assert (= (and d!1327393 c!749356) b!4401538))

(assert (= (and d!1327393 (not c!749356)) b!4401531))

(assert (= (and b!4401531 c!749357) b!4401534))

(assert (= (and b!4401531 (not c!749357)) b!4401533))

(assert (= (or b!4401538 b!4401531) bm!306274))

(assert (= (and bm!306274 c!749355) b!4401535))

(assert (= (and bm!306274 (not c!749355)) b!4401536))

(assert (= (and d!1327393 res!1815577) b!4401532))

(assert (= (and d!1327393 (not res!1815578)) b!4401537))

(assert (= (and b!4401537 res!1815576) b!4401530))

(assert (=> b!4401530 m!5064475))

(declare-fun m!5064875 () Bool)

(assert (=> b!4401530 m!5064875))

(assert (=> b!4401530 m!5064875))

(declare-fun m!5064877 () Bool)

(assert (=> b!4401530 m!5064877))

(declare-fun m!5064879 () Bool)

(assert (=> d!1327393 m!5064879))

(declare-fun m!5064881 () Bool)

(assert (=> b!4401535 m!5064881))

(declare-fun m!5064883 () Bool)

(assert (=> bm!306274 m!5064883))

(declare-fun m!5064885 () Bool)

(assert (=> b!4401537 m!5064885))

(assert (=> b!4401537 m!5064885))

(declare-fun m!5064887 () Bool)

(assert (=> b!4401537 m!5064887))

(assert (=> b!4401534 m!5064879))

(declare-fun m!5064889 () Bool)

(assert (=> b!4401534 m!5064889))

(declare-fun m!5064891 () Bool)

(assert (=> b!4401538 m!5064891))

(assert (=> b!4401538 m!5064885))

(assert (=> b!4401538 m!5064885))

(assert (=> b!4401538 m!5064887))

(declare-fun m!5064893 () Bool)

(assert (=> b!4401538 m!5064893))

(assert (=> b!4401532 m!5064475))

(assert (=> b!4401532 m!5064875))

(assert (=> b!4401532 m!5064875))

(assert (=> b!4401532 m!5064877))

(assert (=> b!4401536 m!5064475))

(assert (=> b!4401536 m!5064875))

(assert (=> b!4401262 d!1327393))

(declare-fun bs!728690 () Bool)

(declare-fun d!1327395 () Bool)

(assert (= bs!728690 (and d!1327395 d!1327365)))

(declare-fun lambda!149037 () Int)

(assert (=> bs!728690 (= lambda!149037 lambda!149034)))

(declare-fun bs!728691 () Bool)

(assert (= bs!728691 (and d!1327395 d!1327379)))

(assert (=> bs!728691 (= lambda!149037 lambda!149036)))

(declare-fun bs!728692 () Bool)

(assert (= bs!728692 (and d!1327395 d!1327343)))

(assert (=> bs!728692 (= lambda!149037 lambda!149028)))

(declare-fun bs!728693 () Bool)

(assert (= bs!728693 (and d!1327395 d!1327371)))

(assert (=> bs!728693 (= lambda!149037 lambda!149035)))

(declare-fun bs!728694 () Bool)

(assert (= bs!728694 (and d!1327395 start!427908)))

(assert (=> bs!728694 (= lambda!149037 lambda!149007)))

(declare-fun bs!728695 () Bool)

(assert (= bs!728695 (and d!1327395 d!1327363)))

(assert (=> bs!728695 (= lambda!149037 lambda!149031)))

(declare-fun lt!1606437 () ListMap!2489)

(assert (=> d!1327395 (invariantList!752 (toList!3246 lt!1606437))))

(declare-fun e!2740688 () ListMap!2489)

(assert (=> d!1327395 (= lt!1606437 e!2740688)))

(declare-fun c!749358 () Bool)

(assert (=> d!1327395 (= c!749358 ((_ is Cons!49289) (toList!3245 lm!1707)))))

(assert (=> d!1327395 (forall!9372 (toList!3245 lm!1707) lambda!149037)))

(assert (=> d!1327395 (= (extractMap!690 (toList!3245 lm!1707)) lt!1606437)))

(declare-fun b!4401539 () Bool)

(assert (=> b!4401539 (= e!2740688 (addToMapMapFromBucket!297 (_2!27742 (h!54916 (toList!3245 lm!1707))) (extractMap!690 (t!356347 (toList!3245 lm!1707)))))))

(declare-fun b!4401540 () Bool)

(assert (=> b!4401540 (= e!2740688 (ListMap!2490 Nil!49288))))

(assert (= (and d!1327395 c!749358) b!4401539))

(assert (= (and d!1327395 (not c!749358)) b!4401540))

(declare-fun m!5064895 () Bool)

(assert (=> d!1327395 m!5064895))

(declare-fun m!5064897 () Bool)

(assert (=> d!1327395 m!5064897))

(assert (=> b!4401539 m!5064437))

(assert (=> b!4401539 m!5064437))

(declare-fun m!5064899 () Bool)

(assert (=> b!4401539 m!5064899))

(assert (=> b!4401262 d!1327395))

(declare-fun d!1327397 () Bool)

(assert (=> d!1327397 true))

(assert (=> d!1327397 true))

(declare-fun lambda!149040 () Int)

(declare-fun forall!9374 (List!49412 Int) Bool)

(assert (=> d!1327397 (= (allKeysSameHash!589 newBucket!200 hash!377 hashF!1247) (forall!9374 newBucket!200 lambda!149040))))

(declare-fun bs!728696 () Bool)

(assert (= bs!728696 d!1327397))

(declare-fun m!5064901 () Bool)

(assert (=> bs!728696 m!5064901))

(assert (=> b!4401265 d!1327397))

(declare-fun bs!728697 () Bool)

(declare-fun d!1327399 () Bool)

(assert (= bs!728697 (and d!1327399 d!1327365)))

(declare-fun lambda!149043 () Int)

(assert (=> bs!728697 (not (= lambda!149043 lambda!149034))))

(declare-fun bs!728698 () Bool)

(assert (= bs!728698 (and d!1327399 d!1327379)))

(assert (=> bs!728698 (not (= lambda!149043 lambda!149036))))

(declare-fun bs!728699 () Bool)

(assert (= bs!728699 (and d!1327399 d!1327395)))

(assert (=> bs!728699 (not (= lambda!149043 lambda!149037))))

(declare-fun bs!728700 () Bool)

(assert (= bs!728700 (and d!1327399 d!1327343)))

(assert (=> bs!728700 (not (= lambda!149043 lambda!149028))))

(declare-fun bs!728701 () Bool)

(assert (= bs!728701 (and d!1327399 d!1327371)))

(assert (=> bs!728701 (not (= lambda!149043 lambda!149035))))

(declare-fun bs!728702 () Bool)

(assert (= bs!728702 (and d!1327399 start!427908)))

(assert (=> bs!728702 (not (= lambda!149043 lambda!149007))))

(declare-fun bs!728703 () Bool)

(assert (= bs!728703 (and d!1327399 d!1327363)))

(assert (=> bs!728703 (not (= lambda!149043 lambda!149031))))

(assert (=> d!1327399 true))

(assert (=> d!1327399 (= (allKeysSameHashInMap!735 lm!1707 hashF!1247) (forall!9372 (toList!3245 lm!1707) lambda!149043))))

(declare-fun bs!728704 () Bool)

(assert (= bs!728704 d!1327399))

(declare-fun m!5064903 () Bool)

(assert (=> bs!728704 m!5064903))

(assert (=> b!4401266 d!1327399))

(declare-fun d!1327401 () Bool)

(declare-fun res!1815579 () Bool)

(declare-fun e!2740689 () Bool)

(assert (=> d!1327401 (=> res!1815579 e!2740689)))

(assert (=> d!1327401 (= res!1815579 (and ((_ is Cons!49288) (_2!27742 (h!54916 (toList!3245 lm!1707)))) (= (_1!27741 (h!54915 (_2!27742 (h!54916 (toList!3245 lm!1707))))) key!3918)))))

(assert (=> d!1327401 (= (containsKey!941 (_2!27742 (h!54916 (toList!3245 lm!1707))) key!3918) e!2740689)))

(declare-fun b!4401547 () Bool)

(declare-fun e!2740690 () Bool)

(assert (=> b!4401547 (= e!2740689 e!2740690)))

(declare-fun res!1815580 () Bool)

(assert (=> b!4401547 (=> (not res!1815580) (not e!2740690))))

(assert (=> b!4401547 (= res!1815580 ((_ is Cons!49288) (_2!27742 (h!54916 (toList!3245 lm!1707)))))))

(declare-fun b!4401548 () Bool)

(assert (=> b!4401548 (= e!2740690 (containsKey!941 (t!356346 (_2!27742 (h!54916 (toList!3245 lm!1707)))) key!3918))))

(assert (= (and d!1327401 (not res!1815579)) b!4401547))

(assert (= (and b!4401547 res!1815580) b!4401548))

(declare-fun m!5064905 () Bool)

(assert (=> b!4401548 m!5064905))

(assert (=> b!4401264 d!1327401))

(assert (=> b!4401267 d!1327271))

(declare-fun d!1327403 () Bool)

(declare-fun e!2740691 () Bool)

(assert (=> d!1327403 e!2740691))

(declare-fun res!1815581 () Bool)

(assert (=> d!1327403 (=> (not res!1815581) (not e!2740691))))

(declare-fun lt!1606440 () ListLongMap!1895)

(assert (=> d!1327403 (= res!1815581 (contains!11683 lt!1606440 (_1!27742 lt!1606215)))))

(declare-fun lt!1606438 () List!49413)

(assert (=> d!1327403 (= lt!1606440 (ListLongMap!1896 lt!1606438))))

(declare-fun lt!1606439 () Unit!78867)

(declare-fun lt!1606441 () Unit!78867)

(assert (=> d!1327403 (= lt!1606439 lt!1606441)))

(assert (=> d!1327403 (= (getValueByKey!602 lt!1606438 (_1!27742 lt!1606215)) (Some!10615 (_2!27742 lt!1606215)))))

(assert (=> d!1327403 (= lt!1606441 (lemmaContainsTupThenGetReturnValue!348 lt!1606438 (_1!27742 lt!1606215) (_2!27742 lt!1606215)))))

(assert (=> d!1327403 (= lt!1606438 (insertStrictlySorted!206 (toList!3245 lm!1707) (_1!27742 lt!1606215) (_2!27742 lt!1606215)))))

(assert (=> d!1327403 (= (+!877 lm!1707 lt!1606215) lt!1606440)))

(declare-fun b!4401549 () Bool)

(declare-fun res!1815582 () Bool)

(assert (=> b!4401549 (=> (not res!1815582) (not e!2740691))))

(assert (=> b!4401549 (= res!1815582 (= (getValueByKey!602 (toList!3245 lt!1606440) (_1!27742 lt!1606215)) (Some!10615 (_2!27742 lt!1606215))))))

(declare-fun b!4401550 () Bool)

(assert (=> b!4401550 (= e!2740691 (contains!11682 (toList!3245 lt!1606440) lt!1606215))))

(assert (= (and d!1327403 res!1815581) b!4401549))

(assert (= (and b!4401549 res!1815582) b!4401550))

(declare-fun m!5064907 () Bool)

(assert (=> d!1327403 m!5064907))

(declare-fun m!5064909 () Bool)

(assert (=> d!1327403 m!5064909))

(declare-fun m!5064911 () Bool)

(assert (=> d!1327403 m!5064911))

(declare-fun m!5064913 () Bool)

(assert (=> d!1327403 m!5064913))

(declare-fun m!5064915 () Bool)

(assert (=> b!4401549 m!5064915))

(declare-fun m!5064917 () Bool)

(assert (=> b!4401550 m!5064917))

(assert (=> b!4401267 d!1327403))

(declare-fun d!1327405 () Bool)

(assert (=> d!1327405 (forall!9372 (toList!3245 (+!877 lm!1707 (tuple2!48897 hash!377 newBucket!200))) lambda!149007)))

(declare-fun lt!1606444 () Unit!78867)

(declare-fun choose!27609 (ListLongMap!1895 Int (_ BitVec 64) List!49412) Unit!78867)

(assert (=> d!1327405 (= lt!1606444 (choose!27609 lm!1707 lambda!149007 hash!377 newBucket!200))))

(declare-fun e!2740694 () Bool)

(assert (=> d!1327405 e!2740694))

(declare-fun res!1815585 () Bool)

(assert (=> d!1327405 (=> (not res!1815585) (not e!2740694))))

(assert (=> d!1327405 (= res!1815585 (forall!9372 (toList!3245 lm!1707) lambda!149007))))

(assert (=> d!1327405 (= (addValidProp!277 lm!1707 lambda!149007 hash!377 newBucket!200) lt!1606444)))

(declare-fun b!4401554 () Bool)

(assert (=> b!4401554 (= e!2740694 (dynLambda!20766 lambda!149007 (tuple2!48897 hash!377 newBucket!200)))))

(assert (= (and d!1327405 res!1815585) b!4401554))

(declare-fun b_lambda!139879 () Bool)

(assert (=> (not b_lambda!139879) (not b!4401554)))

(declare-fun m!5064919 () Bool)

(assert (=> d!1327405 m!5064919))

(declare-fun m!5064921 () Bool)

(assert (=> d!1327405 m!5064921))

(declare-fun m!5064923 () Bool)

(assert (=> d!1327405 m!5064923))

(assert (=> d!1327405 m!5064435))

(declare-fun m!5064925 () Bool)

(assert (=> b!4401554 m!5064925))

(assert (=> b!4401267 d!1327405))

(assert (=> b!4401267 d!1327389))

(declare-fun e!2740697 () Bool)

(declare-fun b!4401559 () Bool)

(declare-fun tp!1331874 () Bool)

(assert (=> b!4401559 (= e!2740697 (and tp_is_empty!25761 tp_is_empty!25763 tp!1331874))))

(assert (=> b!4401268 (= tp!1331861 e!2740697)))

(assert (= (and b!4401268 ((_ is Cons!49288) (t!356346 newBucket!200))) b!4401559))

(declare-fun b!4401564 () Bool)

(declare-fun e!2740700 () Bool)

(declare-fun tp!1331879 () Bool)

(declare-fun tp!1331880 () Bool)

(assert (=> b!4401564 (= e!2740700 (and tp!1331879 tp!1331880))))

(assert (=> b!4401263 (= tp!1331862 e!2740700)))

(assert (= (and b!4401263 ((_ is Cons!49289) (toList!3245 lm!1707))) b!4401564))

(declare-fun b_lambda!139881 () Bool)

(assert (= b_lambda!139879 (or start!427908 b_lambda!139881)))

(declare-fun bs!728705 () Bool)

(declare-fun d!1327407 () Bool)

(assert (= bs!728705 (and d!1327407 start!427908)))

(assert (=> bs!728705 (= (dynLambda!20766 lambda!149007 (tuple2!48897 hash!377 newBucket!200)) (noDuplicateKeys!631 (_2!27742 (tuple2!48897 hash!377 newBucket!200))))))

(declare-fun m!5064927 () Bool)

(assert (=> bs!728705 m!5064927))

(assert (=> b!4401554 d!1327407))

(declare-fun b_lambda!139883 () Bool)

(assert (= b_lambda!139859 (or start!427908 b_lambda!139883)))

(declare-fun bs!728706 () Bool)

(declare-fun d!1327409 () Bool)

(assert (= bs!728706 (and d!1327409 start!427908)))

(assert (=> bs!728706 (= (dynLambda!20766 lambda!149007 (h!54916 (toList!3245 lt!1606221))) (noDuplicateKeys!631 (_2!27742 (h!54916 (toList!3245 lt!1606221)))))))

(declare-fun m!5064929 () Bool)

(assert (=> bs!728706 m!5064929))

(assert (=> b!4401283 d!1327409))

(declare-fun b_lambda!139885 () Bool)

(assert (= b_lambda!139877 (or start!427908 b_lambda!139885)))

(declare-fun bs!728707 () Bool)

(declare-fun d!1327411 () Bool)

(assert (= bs!728707 (and d!1327411 start!427908)))

(assert (=> bs!728707 (= (dynLambda!20766 lambda!149007 (h!54916 (toList!3245 lm!1707))) (noDuplicateKeys!631 (_2!27742 (h!54916 (toList!3245 lm!1707)))))))

(assert (=> bs!728707 m!5064819))

(assert (=> b!4401528 d!1327411))

(declare-fun b_lambda!139887 () Bool)

(assert (= b_lambda!139867 (or start!427908 b_lambda!139887)))

(declare-fun bs!728708 () Bool)

(declare-fun d!1327413 () Bool)

(assert (= bs!728708 (and d!1327413 start!427908)))

(assert (=> bs!728708 (= (dynLambda!20766 lambda!149007 lt!1606212) (noDuplicateKeys!631 (_2!27742 lt!1606212)))))

(declare-fun m!5064931 () Bool)

(assert (=> bs!728708 m!5064931))

(assert (=> d!1327297 d!1327413))

(check-sat (not b!4401449) (not b!4401550) (not b!4401509) (not d!1327377) (not b!4401457) (not b_lambda!139881) (not b!4401513) (not d!1327397) (not d!1327383) (not d!1327395) (not d!1327381) (not d!1327367) (not b!4401559) (not d!1327363) (not b!4401503) (not d!1327291) (not b!4401359) (not b!4401534) (not b_lambda!139883) (not d!1327287) (not d!1327391) (not b!4401538) (not d!1327275) (not d!1327379) (not b!4401502) (not b!4401501) (not b!4401529) (not d!1327385) (not b!4401453) (not bs!728706) (not bm!306274) (not b!4401536) (not b_lambda!139885) (not b!4401511) (not d!1327365) (not b!4401307) (not b!4401518) (not d!1327405) (not bs!728707) (not d!1327371) (not d!1327311) (not d!1327399) (not d!1327393) (not b!4401539) (not b!4401564) (not b!4401314) tp_is_empty!25761 (not bs!728708) (not bm!306272) (not d!1327305) (not d!1327369) (not b!4401375) (not b!4401520) (not d!1327289) (not bs!728705) (not b!4401530) (not d!1327297) (not b!4401517) (not b!4401532) (not b!4401451) (not d!1327403) (not b!4401535) (not b!4401537) (not b!4401305) (not b!4401549) (not b!4401548) (not b!4401454) (not b!4401519) (not b!4401455) tp_is_empty!25763 (not d!1327373) (not b!4401510) (not b!4401392) (not b!4401526) (not b!4401348) (not d!1327343) (not b!4401495) (not b!4401515) (not b_lambda!139887) (not bm!306273) (not b!4401521) (not b!4401527) (not b!4401284) (not d!1327295) (not d!1327375) (not b!4401456))
(check-sat)
(get-model)

(declare-fun b!4401604 () Bool)

(declare-fun e!2740723 () List!49412)

(assert (=> b!4401604 (= e!2740723 (t!356346 (t!356346 lt!1606218)))))

(declare-fun b!4401607 () Bool)

(declare-fun e!2740722 () List!49412)

(assert (=> b!4401607 (= e!2740722 Nil!49288)))

(declare-fun d!1327429 () Bool)

(declare-fun lt!1606456 () List!49412)

(assert (=> d!1327429 (not (containsKey!941 lt!1606456 key!3918))))

(assert (=> d!1327429 (= lt!1606456 e!2740723)))

(declare-fun c!749375 () Bool)

(assert (=> d!1327429 (= c!749375 (and ((_ is Cons!49288) (t!356346 lt!1606218)) (= (_1!27741 (h!54915 (t!356346 lt!1606218))) key!3918)))))

(assert (=> d!1327429 (noDuplicateKeys!631 (t!356346 lt!1606218))))

(assert (=> d!1327429 (= (removePairForKey!599 (t!356346 lt!1606218) key!3918) lt!1606456)))

(declare-fun b!4401605 () Bool)

(assert (=> b!4401605 (= e!2740723 e!2740722)))

(declare-fun c!749374 () Bool)

(assert (=> b!4401605 (= c!749374 ((_ is Cons!49288) (t!356346 lt!1606218)))))

(declare-fun b!4401606 () Bool)

(assert (=> b!4401606 (= e!2740722 (Cons!49288 (h!54915 (t!356346 lt!1606218)) (removePairForKey!599 (t!356346 (t!356346 lt!1606218)) key!3918)))))

(assert (= (and d!1327429 c!749375) b!4401604))

(assert (= (and d!1327429 (not c!749375)) b!4401605))

(assert (= (and b!4401605 c!749374) b!4401606))

(assert (= (and b!4401605 (not c!749374)) b!4401607))

(declare-fun m!5064965 () Bool)

(assert (=> d!1327429 m!5064965))

(declare-fun m!5064967 () Bool)

(assert (=> d!1327429 m!5064967))

(declare-fun m!5064969 () Bool)

(assert (=> b!4401606 m!5064969))

(assert (=> b!4401348 d!1327429))

(declare-fun d!1327431 () Bool)

(declare-fun res!1815599 () Bool)

(declare-fun e!2740728 () Bool)

(assert (=> d!1327431 (=> res!1815599 e!2740728)))

(assert (=> d!1327431 (= res!1815599 (and ((_ is Cons!49288) (toList!3246 lt!1606220)) (= (_1!27741 (h!54915 (toList!3246 lt!1606220))) key!3918)))))

(assert (=> d!1327431 (= (containsKey!945 (toList!3246 lt!1606220) key!3918) e!2740728)))

(declare-fun b!4401612 () Bool)

(declare-fun e!2740729 () Bool)

(assert (=> b!4401612 (= e!2740728 e!2740729)))

(declare-fun res!1815600 () Bool)

(assert (=> b!4401612 (=> (not res!1815600) (not e!2740729))))

(assert (=> b!4401612 (= res!1815600 ((_ is Cons!49288) (toList!3246 lt!1606220)))))

(declare-fun b!4401613 () Bool)

(assert (=> b!4401613 (= e!2740729 (containsKey!945 (t!356346 (toList!3246 lt!1606220)) key!3918))))

(assert (= (and d!1327431 (not res!1815599)) b!4401612))

(assert (= (and b!4401612 res!1815600) b!4401613))

(declare-fun m!5064971 () Bool)

(assert (=> b!4401613 m!5064971))

(assert (=> d!1327383 d!1327431))

(declare-fun d!1327433 () Bool)

(declare-fun isEmpty!28284 (Option!10616) Bool)

(assert (=> d!1327433 (= (isDefined!7908 (getValueByKey!602 (toList!3245 lm!1707) hash!377)) (not (isEmpty!28284 (getValueByKey!602 (toList!3245 lm!1707) hash!377))))))

(declare-fun bs!728710 () Bool)

(assert (= bs!728710 d!1327433))

(assert (=> bs!728710 m!5064523))

(declare-fun m!5064973 () Bool)

(assert (=> bs!728710 m!5064973))

(assert (=> b!4401307 d!1327433))

(declare-fun d!1327435 () Bool)

(declare-fun c!749390 () Bool)

(assert (=> d!1327435 (= c!749390 (and ((_ is Cons!49289) (toList!3245 lm!1707)) (= (_1!27742 (h!54916 (toList!3245 lm!1707))) hash!377)))))

(declare-fun e!2740746 () Option!10616)

(assert (=> d!1327435 (= (getValueByKey!602 (toList!3245 lm!1707) hash!377) e!2740746)))

(declare-fun b!4401647 () Bool)

(declare-fun e!2740747 () Option!10616)

(assert (=> b!4401647 (= e!2740747 None!10615)))

(declare-fun b!4401645 () Bool)

(assert (=> b!4401645 (= e!2740746 e!2740747)))

(declare-fun c!749391 () Bool)

(assert (=> b!4401645 (= c!749391 (and ((_ is Cons!49289) (toList!3245 lm!1707)) (not (= (_1!27742 (h!54916 (toList!3245 lm!1707))) hash!377))))))

(declare-fun b!4401646 () Bool)

(assert (=> b!4401646 (= e!2740747 (getValueByKey!602 (t!356347 (toList!3245 lm!1707)) hash!377))))

(declare-fun b!4401644 () Bool)

(assert (=> b!4401644 (= e!2740746 (Some!10615 (_2!27742 (h!54916 (toList!3245 lm!1707)))))))

(assert (= (and d!1327435 c!749390) b!4401644))

(assert (= (and d!1327435 (not c!749390)) b!4401645))

(assert (= (and b!4401645 c!749391) b!4401646))

(assert (= (and b!4401645 (not c!749391)) b!4401647))

(declare-fun m!5064975 () Bool)

(assert (=> b!4401646 m!5064975))

(assert (=> b!4401307 d!1327435))

(declare-fun d!1327437 () Bool)

(declare-fun res!1815603 () Bool)

(declare-fun e!2740748 () Bool)

(assert (=> d!1327437 (=> res!1815603 e!2740748)))

(assert (=> d!1327437 (= res!1815603 (and ((_ is Cons!49288) (t!356346 (apply!11483 lm!1707 (_1!27742 (h!54916 (toList!3245 lm!1707)))))) (= (_1!27741 (h!54915 (t!356346 (apply!11483 lm!1707 (_1!27742 (h!54916 (toList!3245 lm!1707))))))) key!3918)))))

(assert (=> d!1327437 (= (containsKey!941 (t!356346 (apply!11483 lm!1707 (_1!27742 (h!54916 (toList!3245 lm!1707))))) key!3918) e!2740748)))

(declare-fun b!4401648 () Bool)

(declare-fun e!2740749 () Bool)

(assert (=> b!4401648 (= e!2740748 e!2740749)))

(declare-fun res!1815604 () Bool)

(assert (=> b!4401648 (=> (not res!1815604) (not e!2740749))))

(assert (=> b!4401648 (= res!1815604 ((_ is Cons!49288) (t!356346 (apply!11483 lm!1707 (_1!27742 (h!54916 (toList!3245 lm!1707)))))))))

(declare-fun b!4401649 () Bool)

(assert (=> b!4401649 (= e!2740749 (containsKey!941 (t!356346 (t!356346 (apply!11483 lm!1707 (_1!27742 (h!54916 (toList!3245 lm!1707)))))) key!3918))))

(assert (= (and d!1327437 (not res!1815603)) b!4401648))

(assert (= (and b!4401648 res!1815604) b!4401649))

(declare-fun m!5064977 () Bool)

(assert (=> b!4401649 m!5064977))

(assert (=> b!4401392 d!1327437))

(declare-fun d!1327439 () Bool)

(assert (=> d!1327439 (= (tail!7121 (toList!3245 lm!1707)) (t!356347 (toList!3245 lm!1707)))))

(assert (=> d!1327375 d!1327439))

(declare-fun d!1327441 () Bool)

(declare-fun res!1815605 () Bool)

(declare-fun e!2740750 () Bool)

(assert (=> d!1327441 (=> res!1815605 e!2740750)))

(assert (=> d!1327441 (= res!1815605 (not ((_ is Cons!49288) (_2!27742 (h!54916 (toList!3245 lm!1707))))))))

(assert (=> d!1327441 (= (noDuplicateKeys!631 (_2!27742 (h!54916 (toList!3245 lm!1707)))) e!2740750)))

(declare-fun b!4401650 () Bool)

(declare-fun e!2740751 () Bool)

(assert (=> b!4401650 (= e!2740750 e!2740751)))

(declare-fun res!1815606 () Bool)

(assert (=> b!4401650 (=> (not res!1815606) (not e!2740751))))

(assert (=> b!4401650 (= res!1815606 (not (containsKey!941 (t!356346 (_2!27742 (h!54916 (toList!3245 lm!1707)))) (_1!27741 (h!54915 (_2!27742 (h!54916 (toList!3245 lm!1707))))))))))

(declare-fun b!4401651 () Bool)

(assert (=> b!4401651 (= e!2740751 (noDuplicateKeys!631 (t!356346 (_2!27742 (h!54916 (toList!3245 lm!1707))))))))

(assert (= (and d!1327441 (not res!1815605)) b!4401650))

(assert (= (and b!4401650 res!1815606) b!4401651))

(declare-fun m!5064979 () Bool)

(assert (=> b!4401650 m!5064979))

(declare-fun m!5064981 () Bool)

(assert (=> b!4401651 m!5064981))

(assert (=> bs!728707 d!1327441))

(declare-fun d!1327443 () Bool)

(declare-fun c!749392 () Bool)

(assert (=> d!1327443 (= c!749392 (and ((_ is Cons!49289) (toList!3245 lt!1606402)) (= (_1!27742 (h!54916 (toList!3245 lt!1606402))) (_1!27742 lt!1606215))))))

(declare-fun e!2740752 () Option!10616)

(assert (=> d!1327443 (= (getValueByKey!602 (toList!3245 lt!1606402) (_1!27742 lt!1606215)) e!2740752)))

(declare-fun b!4401655 () Bool)

(declare-fun e!2740753 () Option!10616)

(assert (=> b!4401655 (= e!2740753 None!10615)))

(declare-fun b!4401653 () Bool)

(assert (=> b!4401653 (= e!2740752 e!2740753)))

(declare-fun c!749393 () Bool)

(assert (=> b!4401653 (= c!749393 (and ((_ is Cons!49289) (toList!3245 lt!1606402)) (not (= (_1!27742 (h!54916 (toList!3245 lt!1606402))) (_1!27742 lt!1606215)))))))

(declare-fun b!4401654 () Bool)

(assert (=> b!4401654 (= e!2740753 (getValueByKey!602 (t!356347 (toList!3245 lt!1606402)) (_1!27742 lt!1606215)))))

(declare-fun b!4401652 () Bool)

(assert (=> b!4401652 (= e!2740752 (Some!10615 (_2!27742 (h!54916 (toList!3245 lt!1606402)))))))

(assert (= (and d!1327443 c!749392) b!4401652))

(assert (= (and d!1327443 (not c!749392)) b!4401653))

(assert (= (and b!4401653 c!749393) b!4401654))

(assert (= (and b!4401653 (not c!749393)) b!4401655))

(declare-fun m!5064983 () Bool)

(assert (=> b!4401654 m!5064983))

(assert (=> b!4401501 d!1327443))

(declare-fun d!1327445 () Bool)

(declare-fun lt!1606481 () Bool)

(declare-fun content!7875 (List!49415) (InoxSet K!10645))

(assert (=> d!1327445 (= lt!1606481 (select (content!7875 (keys!16753 (extractMap!690 (toList!3245 lm!1707)))) key!3918))))

(declare-fun e!2740760 () Bool)

(assert (=> d!1327445 (= lt!1606481 e!2740760)))

(declare-fun res!1815617 () Bool)

(assert (=> d!1327445 (=> (not res!1815617) (not e!2740760))))

(assert (=> d!1327445 (= res!1815617 ((_ is Cons!49291) (keys!16753 (extractMap!690 (toList!3245 lm!1707)))))))

(assert (=> d!1327445 (= (contains!11686 (keys!16753 (extractMap!690 (toList!3245 lm!1707))) key!3918) lt!1606481)))

(declare-fun b!4401666 () Bool)

(declare-fun e!2740761 () Bool)

(assert (=> b!4401666 (= e!2740760 e!2740761)))

(declare-fun res!1815618 () Bool)

(assert (=> b!4401666 (=> res!1815618 e!2740761)))

(assert (=> b!4401666 (= res!1815618 (= (h!54920 (keys!16753 (extractMap!690 (toList!3245 lm!1707)))) key!3918))))

(declare-fun b!4401667 () Bool)

(assert (=> b!4401667 (= e!2740761 (contains!11686 (t!356349 (keys!16753 (extractMap!690 (toList!3245 lm!1707)))) key!3918))))

(assert (= (and d!1327445 res!1815617) b!4401666))

(assert (= (and b!4401666 (not res!1815618)) b!4401667))

(assert (=> d!1327445 m!5064875))

(declare-fun m!5064985 () Bool)

(assert (=> d!1327445 m!5064985))

(declare-fun m!5064987 () Bool)

(assert (=> d!1327445 m!5064987))

(declare-fun m!5064989 () Bool)

(assert (=> b!4401667 m!5064989))

(assert (=> b!4401530 d!1327445))

(declare-fun b!4401693 () Bool)

(assert (=> b!4401693 true))

(declare-fun d!1327447 () Bool)

(declare-fun e!2740775 () Bool)

(assert (=> d!1327447 e!2740775))

(declare-fun res!1815633 () Bool)

(assert (=> d!1327447 (=> (not res!1815633) (not e!2740775))))

(declare-fun lt!1606495 () List!49415)

(declare-fun noDuplicate!639 (List!49415) Bool)

(assert (=> d!1327447 (= res!1815633 (noDuplicate!639 lt!1606495))))

(assert (=> d!1327447 (= lt!1606495 (getKeysList!199 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))))))

(assert (=> d!1327447 (= (keys!16753 (extractMap!690 (toList!3245 lm!1707))) lt!1606495)))

(declare-fun b!4401692 () Bool)

(declare-fun res!1815635 () Bool)

(assert (=> b!4401692 (=> (not res!1815635) (not e!2740775))))

(declare-fun length!134 (List!49415) Int)

(declare-fun length!135 (List!49412) Int)

(assert (=> b!4401692 (= res!1815635 (= (length!134 lt!1606495) (length!135 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))))))

(declare-fun res!1815634 () Bool)

(assert (=> b!4401693 (=> (not res!1815634) (not e!2740775))))

(declare-fun lambda!149048 () Int)

(declare-fun forall!9375 (List!49415 Int) Bool)

(assert (=> b!4401693 (= res!1815634 (forall!9375 lt!1606495 lambda!149048))))

(declare-fun lambda!149049 () Int)

(declare-fun b!4401694 () Bool)

(declare-fun map!10751 (List!49412 Int) List!49415)

(assert (=> b!4401694 (= e!2740775 (= (content!7875 lt!1606495) (content!7875 (map!10751 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) lambda!149049))))))

(assert (= (and d!1327447 res!1815633) b!4401692))

(assert (= (and b!4401692 res!1815635) b!4401693))

(assert (= (and b!4401693 res!1815634) b!4401694))

(declare-fun m!5065029 () Bool)

(assert (=> d!1327447 m!5065029))

(assert (=> d!1327447 m!5064881))

(declare-fun m!5065031 () Bool)

(assert (=> b!4401692 m!5065031))

(declare-fun m!5065035 () Bool)

(assert (=> b!4401692 m!5065035))

(declare-fun m!5065037 () Bool)

(assert (=> b!4401693 m!5065037))

(declare-fun m!5065041 () Bool)

(assert (=> b!4401694 m!5065041))

(declare-fun m!5065043 () Bool)

(assert (=> b!4401694 m!5065043))

(assert (=> b!4401694 m!5065043))

(declare-fun m!5065045 () Bool)

(assert (=> b!4401694 m!5065045))

(assert (=> b!4401530 d!1327447))

(declare-fun d!1327453 () Bool)

(declare-fun res!1815638 () Bool)

(declare-fun e!2740778 () Bool)

(assert (=> d!1327453 (=> res!1815638 e!2740778)))

(assert (=> d!1327453 (= res!1815638 ((_ is Nil!49289) (t!356347 (toList!3245 lt!1606221))))))

(assert (=> d!1327453 (= (forall!9372 (t!356347 (toList!3245 lt!1606221)) lambda!149007) e!2740778)))

(declare-fun b!4401699 () Bool)

(declare-fun e!2740779 () Bool)

(assert (=> b!4401699 (= e!2740778 e!2740779)))

(declare-fun res!1815639 () Bool)

(assert (=> b!4401699 (=> (not res!1815639) (not e!2740779))))

(assert (=> b!4401699 (= res!1815639 (dynLambda!20766 lambda!149007 (h!54916 (t!356347 (toList!3245 lt!1606221)))))))

(declare-fun b!4401700 () Bool)

(assert (=> b!4401700 (= e!2740779 (forall!9372 (t!356347 (t!356347 (toList!3245 lt!1606221))) lambda!149007))))

(assert (= (and d!1327453 (not res!1815638)) b!4401699))

(assert (= (and b!4401699 res!1815639) b!4401700))

(declare-fun b_lambda!139891 () Bool)

(assert (=> (not b_lambda!139891) (not b!4401699)))

(declare-fun m!5065047 () Bool)

(assert (=> b!4401699 m!5065047))

(declare-fun m!5065049 () Bool)

(assert (=> b!4401700 m!5065049))

(assert (=> b!4401284 d!1327453))

(assert (=> b!4401532 d!1327445))

(assert (=> b!4401532 d!1327447))

(declare-fun bs!728716 () Bool)

(declare-fun b!4401746 () Bool)

(assert (= bs!728716 (and b!4401746 b!4401693)))

(declare-fun lambda!149064 () Int)

(assert (=> bs!728716 (= (= (t!356346 (toList!3246 lt!1606220)) (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (= lambda!149064 lambda!149048))))

(assert (=> b!4401746 true))

(declare-fun bs!728717 () Bool)

(declare-fun b!4401747 () Bool)

(assert (= bs!728717 (and b!4401747 b!4401693)))

(declare-fun lambda!149065 () Int)

(assert (=> bs!728717 (= (= (Cons!49288 (h!54915 (toList!3246 lt!1606220)) (t!356346 (toList!3246 lt!1606220))) (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (= lambda!149065 lambda!149048))))

(declare-fun bs!728718 () Bool)

(assert (= bs!728718 (and b!4401747 b!4401746)))

(assert (=> bs!728718 (= (= (Cons!49288 (h!54915 (toList!3246 lt!1606220)) (t!356346 (toList!3246 lt!1606220))) (t!356346 (toList!3246 lt!1606220))) (= lambda!149065 lambda!149064))))

(assert (=> b!4401747 true))

(declare-fun bs!728719 () Bool)

(declare-fun b!4401751 () Bool)

(assert (= bs!728719 (and b!4401751 b!4401693)))

(declare-fun lambda!149066 () Int)

(assert (=> bs!728719 (= (= (toList!3246 lt!1606220) (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (= lambda!149066 lambda!149048))))

(declare-fun bs!728720 () Bool)

(assert (= bs!728720 (and b!4401751 b!4401746)))

(assert (=> bs!728720 (= (= (toList!3246 lt!1606220) (t!356346 (toList!3246 lt!1606220))) (= lambda!149066 lambda!149064))))

(declare-fun bs!728721 () Bool)

(assert (= bs!728721 (and b!4401751 b!4401747)))

(assert (=> bs!728721 (= (= (toList!3246 lt!1606220) (Cons!49288 (h!54915 (toList!3246 lt!1606220)) (t!356346 (toList!3246 lt!1606220)))) (= lambda!149066 lambda!149065))))

(assert (=> b!4401751 true))

(declare-fun bs!728722 () Bool)

(declare-fun b!4401752 () Bool)

(assert (= bs!728722 (and b!4401752 b!4401694)))

(declare-fun lambda!149067 () Int)

(assert (=> bs!728722 (= lambda!149067 lambda!149049)))

(assert (=> b!4401746 false))

(declare-fun lt!1606526 () Unit!78867)

(declare-fun forallContained!2008 (List!49415 Int K!10645) Unit!78867)

(assert (=> b!4401746 (= lt!1606526 (forallContained!2008 (getKeysList!199 (t!356346 (toList!3246 lt!1606220))) lambda!149064 (_1!27741 (h!54915 (toList!3246 lt!1606220)))))))

(declare-fun e!2740804 () Unit!78867)

(declare-fun Unit!78886 () Unit!78867)

(assert (=> b!4401746 (= e!2740804 Unit!78886)))

(declare-fun e!2740803 () List!49415)

(assert (=> b!4401747 (= e!2740803 (Cons!49291 (_1!27741 (h!54915 (toList!3246 lt!1606220))) (getKeysList!199 (t!356346 (toList!3246 lt!1606220)))))))

(declare-fun c!749409 () Bool)

(assert (=> b!4401747 (= c!749409 (containsKey!945 (t!356346 (toList!3246 lt!1606220)) (_1!27741 (h!54915 (toList!3246 lt!1606220)))))))

(declare-fun lt!1606523 () Unit!78867)

(declare-fun e!2740805 () Unit!78867)

(assert (=> b!4401747 (= lt!1606523 e!2740805)))

(declare-fun c!749411 () Bool)

(assert (=> b!4401747 (= c!749411 (contains!11686 (getKeysList!199 (t!356346 (toList!3246 lt!1606220))) (_1!27741 (h!54915 (toList!3246 lt!1606220)))))))

(declare-fun lt!1606524 () Unit!78867)

(assert (=> b!4401747 (= lt!1606524 e!2740804)))

(declare-fun lt!1606525 () List!49415)

(assert (=> b!4401747 (= lt!1606525 (getKeysList!199 (t!356346 (toList!3246 lt!1606220))))))

(declare-fun lt!1606522 () Unit!78867)

(declare-fun lemmaForallContainsAddHeadPreserves!61 (List!49412 List!49415 tuple2!48894) Unit!78867)

(assert (=> b!4401747 (= lt!1606522 (lemmaForallContainsAddHeadPreserves!61 (t!356346 (toList!3246 lt!1606220)) lt!1606525 (h!54915 (toList!3246 lt!1606220))))))

(assert (=> b!4401747 (forall!9375 lt!1606525 lambda!149065)))

(declare-fun lt!1606520 () Unit!78867)

(assert (=> b!4401747 (= lt!1606520 lt!1606522)))

(declare-fun b!4401748 () Bool)

(declare-fun res!1815665 () Bool)

(declare-fun e!2740806 () Bool)

(assert (=> b!4401748 (=> (not res!1815665) (not e!2740806))))

(declare-fun lt!1606521 () List!49415)

(assert (=> b!4401748 (= res!1815665 (= (length!134 lt!1606521) (length!135 (toList!3246 lt!1606220))))))

(declare-fun b!4401749 () Bool)

(assert (=> b!4401749 (= e!2740803 Nil!49291)))

(declare-fun d!1327455 () Bool)

(assert (=> d!1327455 e!2740806))

(declare-fun res!1815664 () Bool)

(assert (=> d!1327455 (=> (not res!1815664) (not e!2740806))))

(assert (=> d!1327455 (= res!1815664 (noDuplicate!639 lt!1606521))))

(assert (=> d!1327455 (= lt!1606521 e!2740803)))

(declare-fun c!749410 () Bool)

(assert (=> d!1327455 (= c!749410 ((_ is Cons!49288) (toList!3246 lt!1606220)))))

(assert (=> d!1327455 (invariantList!752 (toList!3246 lt!1606220))))

(assert (=> d!1327455 (= (getKeysList!199 (toList!3246 lt!1606220)) lt!1606521)))

(declare-fun b!4401750 () Bool)

(assert (=> b!4401750 false))

(declare-fun Unit!78888 () Unit!78867)

(assert (=> b!4401750 (= e!2740805 Unit!78888)))

(declare-fun res!1815663 () Bool)

(assert (=> b!4401751 (=> (not res!1815663) (not e!2740806))))

(assert (=> b!4401751 (= res!1815663 (forall!9375 lt!1606521 lambda!149066))))

(assert (=> b!4401752 (= e!2740806 (= (content!7875 lt!1606521) (content!7875 (map!10751 (toList!3246 lt!1606220) lambda!149067))))))

(declare-fun b!4401753 () Bool)

(declare-fun Unit!78889 () Unit!78867)

(assert (=> b!4401753 (= e!2740804 Unit!78889)))

(declare-fun b!4401754 () Bool)

(declare-fun Unit!78890 () Unit!78867)

(assert (=> b!4401754 (= e!2740805 Unit!78890)))

(assert (= (and d!1327455 c!749410) b!4401747))

(assert (= (and d!1327455 (not c!749410)) b!4401749))

(assert (= (and b!4401747 c!749409) b!4401750))

(assert (= (and b!4401747 (not c!749409)) b!4401754))

(assert (= (and b!4401747 c!749411) b!4401746))

(assert (= (and b!4401747 (not c!749411)) b!4401753))

(assert (= (and d!1327455 res!1815664) b!4401748))

(assert (= (and b!4401748 res!1815665) b!4401751))

(assert (= (and b!4401751 res!1815663) b!4401752))

(declare-fun m!5065101 () Bool)

(assert (=> b!4401752 m!5065101))

(declare-fun m!5065103 () Bool)

(assert (=> b!4401752 m!5065103))

(assert (=> b!4401752 m!5065103))

(declare-fun m!5065105 () Bool)

(assert (=> b!4401752 m!5065105))

(declare-fun m!5065107 () Bool)

(assert (=> d!1327455 m!5065107))

(declare-fun m!5065109 () Bool)

(assert (=> d!1327455 m!5065109))

(declare-fun m!5065111 () Bool)

(assert (=> b!4401746 m!5065111))

(assert (=> b!4401746 m!5065111))

(declare-fun m!5065113 () Bool)

(assert (=> b!4401746 m!5065113))

(declare-fun m!5065115 () Bool)

(assert (=> b!4401747 m!5065115))

(assert (=> b!4401747 m!5065111))

(assert (=> b!4401747 m!5065111))

(declare-fun m!5065117 () Bool)

(assert (=> b!4401747 m!5065117))

(declare-fun m!5065119 () Bool)

(assert (=> b!4401747 m!5065119))

(declare-fun m!5065121 () Bool)

(assert (=> b!4401747 m!5065121))

(declare-fun m!5065123 () Bool)

(assert (=> b!4401751 m!5065123))

(declare-fun m!5065125 () Bool)

(assert (=> b!4401748 m!5065125))

(declare-fun m!5065127 () Bool)

(assert (=> b!4401748 m!5065127))

(assert (=> b!4401518 d!1327455))

(declare-fun d!1327481 () Bool)

(declare-fun res!1815666 () Bool)

(declare-fun e!2740807 () Bool)

(assert (=> d!1327481 (=> res!1815666 e!2740807)))

(assert (=> d!1327481 (= res!1815666 (and ((_ is Cons!49288) lt!1606281) (= (_1!27741 (h!54915 lt!1606281)) key!3918)))))

(assert (=> d!1327481 (= (containsKey!941 lt!1606281 key!3918) e!2740807)))

(declare-fun b!4401757 () Bool)

(declare-fun e!2740808 () Bool)

(assert (=> b!4401757 (= e!2740807 e!2740808)))

(declare-fun res!1815667 () Bool)

(assert (=> b!4401757 (=> (not res!1815667) (not e!2740808))))

(assert (=> b!4401757 (= res!1815667 ((_ is Cons!49288) lt!1606281))))

(declare-fun b!4401758 () Bool)

(assert (=> b!4401758 (= e!2740808 (containsKey!941 (t!356346 lt!1606281) key!3918))))

(assert (= (and d!1327481 (not res!1815666)) b!4401757))

(assert (= (and b!4401757 res!1815667) b!4401758))

(declare-fun m!5065129 () Bool)

(assert (=> b!4401758 m!5065129))

(assert (=> d!1327291 d!1327481))

(declare-fun d!1327483 () Bool)

(declare-fun res!1815668 () Bool)

(declare-fun e!2740809 () Bool)

(assert (=> d!1327483 (=> res!1815668 e!2740809)))

(assert (=> d!1327483 (= res!1815668 (not ((_ is Cons!49288) lt!1606218)))))

(assert (=> d!1327483 (= (noDuplicateKeys!631 lt!1606218) e!2740809)))

(declare-fun b!4401759 () Bool)

(declare-fun e!2740810 () Bool)

(assert (=> b!4401759 (= e!2740809 e!2740810)))

(declare-fun res!1815669 () Bool)

(assert (=> b!4401759 (=> (not res!1815669) (not e!2740810))))

(assert (=> b!4401759 (= res!1815669 (not (containsKey!941 (t!356346 lt!1606218) (_1!27741 (h!54915 lt!1606218)))))))

(declare-fun b!4401760 () Bool)

(assert (=> b!4401760 (= e!2740810 (noDuplicateKeys!631 (t!356346 lt!1606218)))))

(assert (= (and d!1327483 (not res!1815668)) b!4401759))

(assert (= (and b!4401759 res!1815669) b!4401760))

(declare-fun m!5065131 () Bool)

(assert (=> b!4401759 m!5065131))

(assert (=> b!4401760 m!5064967))

(assert (=> d!1327291 d!1327483))

(assert (=> d!1327365 d!1327307))

(assert (=> d!1327365 d!1327305))

(declare-fun d!1327485 () Bool)

(assert (=> d!1327485 (not (containsKey!941 (apply!11483 lm!1707 (_1!27742 (h!54916 (toList!3245 lm!1707)))) key!3918))))

(assert (=> d!1327485 true))

(declare-fun _$39!331 () Unit!78867)

(assert (=> d!1327485 (= (choose!27607 lm!1707 key!3918 (_1!27742 (h!54916 (toList!3245 lm!1707))) hashF!1247) _$39!331)))

(declare-fun bs!728723 () Bool)

(assert (= bs!728723 d!1327485))

(assert (=> bs!728723 m!5064463))

(assert (=> bs!728723 m!5064463))

(assert (=> bs!728723 m!5064465))

(assert (=> d!1327365 d!1327485))

(declare-fun d!1327487 () Bool)

(declare-fun res!1815670 () Bool)

(declare-fun e!2740811 () Bool)

(assert (=> d!1327487 (=> res!1815670 e!2740811)))

(assert (=> d!1327487 (= res!1815670 ((_ is Nil!49289) (toList!3245 lm!1707)))))

(assert (=> d!1327487 (= (forall!9372 (toList!3245 lm!1707) lambda!149034) e!2740811)))

(declare-fun b!4401761 () Bool)

(declare-fun e!2740812 () Bool)

(assert (=> b!4401761 (= e!2740811 e!2740812)))

(declare-fun res!1815671 () Bool)

(assert (=> b!4401761 (=> (not res!1815671) (not e!2740812))))

(assert (=> b!4401761 (= res!1815671 (dynLambda!20766 lambda!149034 (h!54916 (toList!3245 lm!1707))))))

(declare-fun b!4401762 () Bool)

(assert (=> b!4401762 (= e!2740812 (forall!9372 (t!356347 (toList!3245 lm!1707)) lambda!149034))))

(assert (= (and d!1327487 (not res!1815670)) b!4401761))

(assert (= (and b!4401761 res!1815671) b!4401762))

(declare-fun b_lambda!139897 () Bool)

(assert (=> (not b_lambda!139897) (not b!4401761)))

(declare-fun m!5065133 () Bool)

(assert (=> b!4401761 m!5065133))

(declare-fun m!5065135 () Bool)

(assert (=> b!4401762 m!5065135))

(assert (=> d!1327365 d!1327487))

(declare-fun d!1327489 () Bool)

(declare-fun res!1815672 () Bool)

(declare-fun e!2740813 () Bool)

(assert (=> d!1327489 (=> res!1815672 e!2740813)))

(assert (=> d!1327489 (= res!1815672 (and ((_ is Cons!49288) (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (= (_1!27741 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))) key!3918)))))

(assert (=> d!1327489 (= (containsKey!945 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) key!3918) e!2740813)))

(declare-fun b!4401763 () Bool)

(declare-fun e!2740814 () Bool)

(assert (=> b!4401763 (= e!2740813 e!2740814)))

(declare-fun res!1815673 () Bool)

(assert (=> b!4401763 (=> (not res!1815673) (not e!2740814))))

(assert (=> b!4401763 (= res!1815673 ((_ is Cons!49288) (toList!3246 (extractMap!690 (toList!3245 lm!1707)))))))

(declare-fun b!4401764 () Bool)

(assert (=> b!4401764 (= e!2740814 (containsKey!945 (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) key!3918))))

(assert (= (and d!1327489 (not res!1815672)) b!4401763))

(assert (= (and b!4401763 res!1815673) b!4401764))

(declare-fun m!5065137 () Bool)

(assert (=> b!4401764 m!5065137))

(assert (=> b!4401534 d!1327489))

(declare-fun d!1327491 () Bool)

(assert (=> d!1327491 (containsKey!945 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) key!3918)))

(declare-fun lt!1606529 () Unit!78867)

(declare-fun choose!27612 (List!49412 K!10645) Unit!78867)

(assert (=> d!1327491 (= lt!1606529 (choose!27612 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) key!3918))))

(assert (=> d!1327491 (invariantList!752 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))))

(assert (=> d!1327491 (= (lemmaInGetKeysListThenContainsKey!197 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) key!3918) lt!1606529)))

(declare-fun bs!728724 () Bool)

(assert (= bs!728724 d!1327491))

(assert (=> bs!728724 m!5064879))

(declare-fun m!5065139 () Bool)

(assert (=> bs!728724 m!5065139))

(declare-fun m!5065141 () Bool)

(assert (=> bs!728724 m!5065141))

(assert (=> b!4401534 d!1327491))

(declare-fun bs!728725 () Bool)

(declare-fun b!4401766 () Bool)

(assert (= bs!728725 (and b!4401766 b!4401693)))

(declare-fun lambda!149068 () Int)

(assert (=> bs!728725 (= (= (toList!3246 lt!1606220) (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (= lambda!149068 lambda!149048))))

(declare-fun bs!728726 () Bool)

(assert (= bs!728726 (and b!4401766 b!4401746)))

(assert (=> bs!728726 (= (= (toList!3246 lt!1606220) (t!356346 (toList!3246 lt!1606220))) (= lambda!149068 lambda!149064))))

(declare-fun bs!728727 () Bool)

(assert (= bs!728727 (and b!4401766 b!4401747)))

(assert (=> bs!728727 (= (= (toList!3246 lt!1606220) (Cons!49288 (h!54915 (toList!3246 lt!1606220)) (t!356346 (toList!3246 lt!1606220)))) (= lambda!149068 lambda!149065))))

(declare-fun bs!728728 () Bool)

(assert (= bs!728728 (and b!4401766 b!4401751)))

(assert (=> bs!728728 (= lambda!149068 lambda!149066)))

(assert (=> b!4401766 true))

(declare-fun bs!728729 () Bool)

(declare-fun b!4401767 () Bool)

(assert (= bs!728729 (and b!4401767 b!4401694)))

(declare-fun lambda!149069 () Int)

(assert (=> bs!728729 (= lambda!149069 lambda!149049)))

(declare-fun bs!728730 () Bool)

(assert (= bs!728730 (and b!4401767 b!4401752)))

(assert (=> bs!728730 (= lambda!149069 lambda!149067)))

(declare-fun d!1327493 () Bool)

(declare-fun e!2740815 () Bool)

(assert (=> d!1327493 e!2740815))

(declare-fun res!1815674 () Bool)

(assert (=> d!1327493 (=> (not res!1815674) (not e!2740815))))

(declare-fun lt!1606530 () List!49415)

(assert (=> d!1327493 (= res!1815674 (noDuplicate!639 lt!1606530))))

(assert (=> d!1327493 (= lt!1606530 (getKeysList!199 (toList!3246 lt!1606220)))))

(assert (=> d!1327493 (= (keys!16753 lt!1606220) lt!1606530)))

(declare-fun b!4401765 () Bool)

(declare-fun res!1815676 () Bool)

(assert (=> b!4401765 (=> (not res!1815676) (not e!2740815))))

(assert (=> b!4401765 (= res!1815676 (= (length!134 lt!1606530) (length!135 (toList!3246 lt!1606220))))))

(declare-fun res!1815675 () Bool)

(assert (=> b!4401766 (=> (not res!1815675) (not e!2740815))))

(assert (=> b!4401766 (= res!1815675 (forall!9375 lt!1606530 lambda!149068))))

(assert (=> b!4401767 (= e!2740815 (= (content!7875 lt!1606530) (content!7875 (map!10751 (toList!3246 lt!1606220) lambda!149069))))))

(assert (= (and d!1327493 res!1815674) b!4401765))

(assert (= (and b!4401765 res!1815676) b!4401766))

(assert (= (and b!4401766 res!1815675) b!4401767))

(declare-fun m!5065143 () Bool)

(assert (=> d!1327493 m!5065143))

(assert (=> d!1327493 m!5064851))

(declare-fun m!5065145 () Bool)

(assert (=> b!4401765 m!5065145))

(assert (=> b!4401765 m!5065127))

(declare-fun m!5065147 () Bool)

(assert (=> b!4401766 m!5065147))

(declare-fun m!5065149 () Bool)

(assert (=> b!4401767 m!5065149))

(declare-fun m!5065151 () Bool)

(assert (=> b!4401767 m!5065151))

(assert (=> b!4401767 m!5065151))

(declare-fun m!5065153 () Bool)

(assert (=> b!4401767 m!5065153))

(assert (=> b!4401519 d!1327493))

(assert (=> d!1327373 d!1327383))

(declare-fun d!1327495 () Bool)

(assert (=> d!1327495 (contains!11681 lt!1606220 key!3918)))

(assert (=> d!1327495 true))

(declare-fun _$11!1206 () Unit!78867)

(assert (=> d!1327495 (= (choose!27608 (_2!27742 (h!54916 (toList!3245 lm!1707))) key!3918 newValue!99 lt!1606220) _$11!1206)))

(declare-fun bs!728731 () Bool)

(assert (= bs!728731 d!1327495))

(assert (=> bs!728731 m!5064461))

(assert (=> d!1327373 d!1327495))

(assert (=> d!1327373 d!1327441))

(declare-fun d!1327497 () Bool)

(declare-fun lt!1606531 () Bool)

(assert (=> d!1327497 (= lt!1606531 (select (content!7875 e!2740687) key!3918))))

(declare-fun e!2740816 () Bool)

(assert (=> d!1327497 (= lt!1606531 e!2740816)))

(declare-fun res!1815677 () Bool)

(assert (=> d!1327497 (=> (not res!1815677) (not e!2740816))))

(assert (=> d!1327497 (= res!1815677 ((_ is Cons!49291) e!2740687))))

(assert (=> d!1327497 (= (contains!11686 e!2740687 key!3918) lt!1606531)))

(declare-fun b!4401768 () Bool)

(declare-fun e!2740817 () Bool)

(assert (=> b!4401768 (= e!2740816 e!2740817)))

(declare-fun res!1815678 () Bool)

(assert (=> b!4401768 (=> res!1815678 e!2740817)))

(assert (=> b!4401768 (= res!1815678 (= (h!54920 e!2740687) key!3918))))

(declare-fun b!4401769 () Bool)

(assert (=> b!4401769 (= e!2740817 (contains!11686 (t!356349 e!2740687) key!3918))))

(assert (= (and d!1327497 res!1815677) b!4401768))

(assert (= (and b!4401768 (not res!1815678)) b!4401769))

(declare-fun m!5065155 () Bool)

(assert (=> d!1327497 m!5065155))

(declare-fun m!5065157 () Bool)

(assert (=> d!1327497 m!5065157))

(declare-fun m!5065159 () Bool)

(assert (=> b!4401769 m!5065159))

(assert (=> bm!306274 d!1327497))

(declare-fun d!1327499 () Bool)

(declare-fun noDuplicatedKeys!156 (List!49412) Bool)

(assert (=> d!1327499 (= (invariantList!752 (toList!3246 lt!1606404)) (noDuplicatedKeys!156 (toList!3246 lt!1606404)))))

(declare-fun bs!728732 () Bool)

(assert (= bs!728732 d!1327499))

(declare-fun m!5065161 () Bool)

(assert (=> bs!728732 m!5065161))

(assert (=> d!1327371 d!1327499))

(declare-fun d!1327501 () Bool)

(declare-fun res!1815679 () Bool)

(declare-fun e!2740818 () Bool)

(assert (=> d!1327501 (=> res!1815679 e!2740818)))

(assert (=> d!1327501 (= res!1815679 ((_ is Nil!49289) (toList!3245 (+!877 lt!1606217 lt!1606215))))))

(assert (=> d!1327501 (= (forall!9372 (toList!3245 (+!877 lt!1606217 lt!1606215)) lambda!149035) e!2740818)))

(declare-fun b!4401770 () Bool)

(declare-fun e!2740819 () Bool)

(assert (=> b!4401770 (= e!2740818 e!2740819)))

(declare-fun res!1815680 () Bool)

(assert (=> b!4401770 (=> (not res!1815680) (not e!2740819))))

(assert (=> b!4401770 (= res!1815680 (dynLambda!20766 lambda!149035 (h!54916 (toList!3245 (+!877 lt!1606217 lt!1606215)))))))

(declare-fun b!4401771 () Bool)

(assert (=> b!4401771 (= e!2740819 (forall!9372 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))) lambda!149035))))

(assert (= (and d!1327501 (not res!1815679)) b!4401770))

(assert (= (and b!4401770 res!1815680) b!4401771))

(declare-fun b_lambda!139899 () Bool)

(assert (=> (not b_lambda!139899) (not b!4401770)))

(declare-fun m!5065163 () Bool)

(assert (=> b!4401770 m!5065163))

(declare-fun m!5065165 () Bool)

(assert (=> b!4401771 m!5065165))

(assert (=> d!1327371 d!1327501))

(declare-fun d!1327503 () Bool)

(assert (=> d!1327503 (isDefined!7910 (getValueByKey!603 (toList!3246 lt!1606220) key!3918))))

(declare-fun lt!1606534 () Unit!78867)

(declare-fun choose!27613 (List!49412 K!10645) Unit!78867)

(assert (=> d!1327503 (= lt!1606534 (choose!27613 (toList!3246 lt!1606220) key!3918))))

(assert (=> d!1327503 (invariantList!752 (toList!3246 lt!1606220))))

(assert (=> d!1327503 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!513 (toList!3246 lt!1606220) key!3918) lt!1606534)))

(declare-fun bs!728733 () Bool)

(assert (= bs!728733 d!1327503))

(assert (=> bs!728733 m!5064855))

(assert (=> bs!728733 m!5064855))

(assert (=> bs!728733 m!5064857))

(declare-fun m!5065167 () Bool)

(assert (=> bs!728733 m!5065167))

(assert (=> bs!728733 m!5065109))

(assert (=> b!4401521 d!1327503))

(declare-fun d!1327505 () Bool)

(declare-fun isEmpty!28286 (Option!10617) Bool)

(assert (=> d!1327505 (= (isDefined!7910 (getValueByKey!603 (toList!3246 lt!1606220) key!3918)) (not (isEmpty!28286 (getValueByKey!603 (toList!3246 lt!1606220) key!3918))))))

(declare-fun bs!728734 () Bool)

(assert (= bs!728734 d!1327505))

(assert (=> bs!728734 m!5064855))

(declare-fun m!5065169 () Bool)

(assert (=> bs!728734 m!5065169))

(assert (=> b!4401521 d!1327505))

(declare-fun b!4401782 () Bool)

(declare-fun e!2740825 () Option!10617)

(assert (=> b!4401782 (= e!2740825 (getValueByKey!603 (t!356346 (toList!3246 lt!1606220)) key!3918))))

(declare-fun b!4401781 () Bool)

(declare-fun e!2740824 () Option!10617)

(assert (=> b!4401781 (= e!2740824 e!2740825)))

(declare-fun c!749417 () Bool)

(assert (=> b!4401781 (= c!749417 (and ((_ is Cons!49288) (toList!3246 lt!1606220)) (not (= (_1!27741 (h!54915 (toList!3246 lt!1606220))) key!3918))))))

(declare-fun d!1327507 () Bool)

(declare-fun c!749416 () Bool)

(assert (=> d!1327507 (= c!749416 (and ((_ is Cons!49288) (toList!3246 lt!1606220)) (= (_1!27741 (h!54915 (toList!3246 lt!1606220))) key!3918)))))

(assert (=> d!1327507 (= (getValueByKey!603 (toList!3246 lt!1606220) key!3918) e!2740824)))

(declare-fun b!4401780 () Bool)

(assert (=> b!4401780 (= e!2740824 (Some!10616 (_2!27741 (h!54915 (toList!3246 lt!1606220)))))))

(declare-fun b!4401783 () Bool)

(assert (=> b!4401783 (= e!2740825 None!10616)))

(assert (= (and d!1327507 c!749416) b!4401780))

(assert (= (and d!1327507 (not c!749416)) b!4401781))

(assert (= (and b!4401781 c!749417) b!4401782))

(assert (= (and b!4401781 (not c!749417)) b!4401783))

(declare-fun m!5065171 () Bool)

(assert (=> b!4401782 m!5065171))

(assert (=> b!4401521 d!1327507))

(declare-fun d!1327509 () Bool)

(assert (=> d!1327509 (contains!11686 (getKeysList!199 (toList!3246 lt!1606220)) key!3918)))

(declare-fun lt!1606537 () Unit!78867)

(declare-fun choose!27615 (List!49412 K!10645) Unit!78867)

(assert (=> d!1327509 (= lt!1606537 (choose!27615 (toList!3246 lt!1606220) key!3918))))

(assert (=> d!1327509 (invariantList!752 (toList!3246 lt!1606220))))

(assert (=> d!1327509 (= (lemmaInListThenGetKeysListContains!196 (toList!3246 lt!1606220) key!3918) lt!1606537)))

(declare-fun bs!728735 () Bool)

(assert (= bs!728735 d!1327509))

(assert (=> bs!728735 m!5064851))

(assert (=> bs!728735 m!5064851))

(declare-fun m!5065173 () Bool)

(assert (=> bs!728735 m!5065173))

(declare-fun m!5065175 () Bool)

(assert (=> bs!728735 m!5065175))

(assert (=> bs!728735 m!5065109))

(assert (=> b!4401521 d!1327509))

(declare-fun d!1327511 () Bool)

(declare-fun res!1815681 () Bool)

(declare-fun e!2740826 () Bool)

(assert (=> d!1327511 (=> res!1815681 e!2740826)))

(assert (=> d!1327511 (= res!1815681 (and ((_ is Cons!49288) (toList!3246 lt!1606219)) (= (_1!27741 (h!54915 (toList!3246 lt!1606219))) key!3918)))))

(assert (=> d!1327511 (= (containsKey!945 (toList!3246 lt!1606219) key!3918) e!2740826)))

(declare-fun b!4401784 () Bool)

(declare-fun e!2740827 () Bool)

(assert (=> b!4401784 (= e!2740826 e!2740827)))

(declare-fun res!1815682 () Bool)

(assert (=> b!4401784 (=> (not res!1815682) (not e!2740827))))

(assert (=> b!4401784 (= res!1815682 ((_ is Cons!49288) (toList!3246 lt!1606219)))))

(declare-fun b!4401785 () Bool)

(assert (=> b!4401785 (= e!2740827 (containsKey!945 (t!356346 (toList!3246 lt!1606219)) key!3918))))

(assert (= (and d!1327511 (not res!1815681)) b!4401784))

(assert (= (and b!4401784 res!1815682) b!4401785))

(declare-fun m!5065177 () Bool)

(assert (=> b!4401785 m!5065177))

(assert (=> b!4401453 d!1327511))

(declare-fun d!1327513 () Bool)

(assert (=> d!1327513 (containsKey!945 (toList!3246 lt!1606219) key!3918)))

(declare-fun lt!1606538 () Unit!78867)

(assert (=> d!1327513 (= lt!1606538 (choose!27612 (toList!3246 lt!1606219) key!3918))))

(assert (=> d!1327513 (invariantList!752 (toList!3246 lt!1606219))))

(assert (=> d!1327513 (= (lemmaInGetKeysListThenContainsKey!197 (toList!3246 lt!1606219) key!3918) lt!1606538)))

(declare-fun bs!728736 () Bool)

(assert (= bs!728736 d!1327513))

(assert (=> bs!728736 m!5064713))

(declare-fun m!5065179 () Bool)

(assert (=> bs!728736 m!5065179))

(declare-fun m!5065181 () Bool)

(assert (=> bs!728736 m!5065181))

(assert (=> b!4401453 d!1327513))

(declare-fun d!1327515 () Bool)

(declare-fun c!749418 () Bool)

(assert (=> d!1327515 (= c!749418 (and ((_ is Cons!49289) (toList!3245 lt!1606440)) (= (_1!27742 (h!54916 (toList!3245 lt!1606440))) (_1!27742 lt!1606215))))))

(declare-fun e!2740828 () Option!10616)

(assert (=> d!1327515 (= (getValueByKey!602 (toList!3245 lt!1606440) (_1!27742 lt!1606215)) e!2740828)))

(declare-fun b!4401789 () Bool)

(declare-fun e!2740829 () Option!10616)

(assert (=> b!4401789 (= e!2740829 None!10615)))

(declare-fun b!4401787 () Bool)

(assert (=> b!4401787 (= e!2740828 e!2740829)))

(declare-fun c!749419 () Bool)

(assert (=> b!4401787 (= c!749419 (and ((_ is Cons!49289) (toList!3245 lt!1606440)) (not (= (_1!27742 (h!54916 (toList!3245 lt!1606440))) (_1!27742 lt!1606215)))))))

(declare-fun b!4401788 () Bool)

(assert (=> b!4401788 (= e!2740829 (getValueByKey!602 (t!356347 (toList!3245 lt!1606440)) (_1!27742 lt!1606215)))))

(declare-fun b!4401786 () Bool)

(assert (=> b!4401786 (= e!2740828 (Some!10615 (_2!27742 (h!54916 (toList!3245 lt!1606440)))))))

(assert (= (and d!1327515 c!749418) b!4401786))

(assert (= (and d!1327515 (not c!749418)) b!4401787))

(assert (= (and b!4401787 c!749419) b!4401788))

(assert (= (and b!4401787 (not c!749419)) b!4401789))

(declare-fun m!5065183 () Bool)

(assert (=> b!4401788 m!5065183))

(assert (=> b!4401549 d!1327515))

(assert (=> b!4401536 d!1327447))

(declare-fun d!1327517 () Bool)

(declare-fun choose!27617 (Hashable!5023 K!10645) (_ BitVec 64))

(assert (=> d!1327517 (= (hash!1883 hashF!1247 key!3918) (choose!27617 hashF!1247 key!3918))))

(declare-fun bs!728737 () Bool)

(assert (= bs!728737 d!1327517))

(declare-fun m!5065185 () Bool)

(assert (=> bs!728737 m!5065185))

(assert (=> d!1327385 d!1327517))

(declare-fun d!1327519 () Bool)

(declare-fun c!749422 () Bool)

(assert (=> d!1327519 (= c!749422 ((_ is Nil!49289) (toList!3245 lm!1707)))))

(declare-fun e!2740832 () (InoxSet tuple2!48896))

(assert (=> d!1327519 (= (content!7873 (toList!3245 lm!1707)) e!2740832)))

(declare-fun b!4401794 () Bool)

(assert (=> b!4401794 (= e!2740832 ((as const (Array tuple2!48896 Bool)) false))))

(declare-fun b!4401795 () Bool)

(assert (=> b!4401795 (= e!2740832 ((_ map or) (store ((as const (Array tuple2!48896 Bool)) false) (h!54916 (toList!3245 lm!1707)) true) (content!7873 (t!356347 (toList!3245 lm!1707)))))))

(assert (= (and d!1327519 c!749422) b!4401794))

(assert (= (and d!1327519 (not c!749422)) b!4401795))

(declare-fun m!5065187 () Bool)

(assert (=> b!4401795 m!5065187))

(declare-fun m!5065189 () Bool)

(assert (=> b!4401795 m!5065189))

(assert (=> d!1327295 d!1327519))

(declare-fun d!1327521 () Bool)

(declare-fun res!1815687 () Bool)

(declare-fun e!2740837 () Bool)

(assert (=> d!1327521 (=> res!1815687 e!2740837)))

(assert (=> d!1327521 (= res!1815687 ((_ is Nil!49288) newBucket!200))))

(assert (=> d!1327521 (= (forall!9374 newBucket!200 lambda!149040) e!2740837)))

(declare-fun b!4401800 () Bool)

(declare-fun e!2740838 () Bool)

(assert (=> b!4401800 (= e!2740837 e!2740838)))

(declare-fun res!1815688 () Bool)

(assert (=> b!4401800 (=> (not res!1815688) (not e!2740838))))

(declare-fun dynLambda!20768 (Int tuple2!48894) Bool)

(assert (=> b!4401800 (= res!1815688 (dynLambda!20768 lambda!149040 (h!54915 newBucket!200)))))

(declare-fun b!4401801 () Bool)

(assert (=> b!4401801 (= e!2740838 (forall!9374 (t!356346 newBucket!200) lambda!149040))))

(assert (= (and d!1327521 (not res!1815687)) b!4401800))

(assert (= (and b!4401800 res!1815688) b!4401801))

(declare-fun b_lambda!139901 () Bool)

(assert (=> (not b_lambda!139901) (not b!4401800)))

(declare-fun m!5065191 () Bool)

(assert (=> b!4401800 m!5065191))

(declare-fun m!5065193 () Bool)

(assert (=> b!4401801 m!5065193))

(assert (=> d!1327397 d!1327521))

(declare-fun bs!728781 () Bool)

(declare-fun b!4401871 () Bool)

(assert (= bs!728781 (and b!4401871 d!1327397)))

(declare-fun lambda!149136 () Int)

(assert (=> bs!728781 (not (= lambda!149136 lambda!149040))))

(assert (=> b!4401871 true))

(declare-fun bs!728782 () Bool)

(declare-fun b!4401874 () Bool)

(assert (= bs!728782 (and b!4401874 d!1327397)))

(declare-fun lambda!149137 () Int)

(assert (=> bs!728782 (not (= lambda!149137 lambda!149040))))

(declare-fun bs!728783 () Bool)

(assert (= bs!728783 (and b!4401874 b!4401871)))

(assert (=> bs!728783 (= lambda!149137 lambda!149136)))

(assert (=> b!4401874 true))

(declare-fun lambda!149139 () Int)

(assert (=> bs!728782 (not (= lambda!149139 lambda!149040))))

(declare-fun lt!1606688 () ListMap!2489)

(assert (=> bs!728783 (= (= lt!1606688 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149139 lambda!149136))))

(assert (=> b!4401874 (= (= lt!1606688 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149139 lambda!149137))))

(assert (=> b!4401874 true))

(declare-fun bs!728786 () Bool)

(declare-fun d!1327523 () Bool)

(assert (= bs!728786 (and d!1327523 d!1327397)))

(declare-fun lambda!149141 () Int)

(assert (=> bs!728786 (not (= lambda!149141 lambda!149040))))

(declare-fun bs!728787 () Bool)

(assert (= bs!728787 (and d!1327523 b!4401871)))

(declare-fun lt!1606684 () ListMap!2489)

(assert (=> bs!728787 (= (= lt!1606684 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149141 lambda!149136))))

(declare-fun bs!728788 () Bool)

(assert (= bs!728788 (and d!1327523 b!4401874)))

(assert (=> bs!728788 (= (= lt!1606684 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149141 lambda!149137))))

(assert (=> bs!728788 (= (= lt!1606684 lt!1606688) (= lambda!149141 lambda!149139))))

(assert (=> d!1327523 true))

(declare-fun c!749433 () Bool)

(declare-fun call!306312 () Bool)

(declare-fun bm!306306 () Bool)

(assert (=> bm!306306 (= call!306312 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (ite c!749433 lambda!149136 lambda!149139)))))

(declare-fun bm!306307 () Bool)

(declare-fun call!306313 () Bool)

(assert (=> bm!306307 (= call!306313 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (ite c!749433 lambda!149136 lambda!149137)))))

(declare-fun b!4401872 () Bool)

(declare-fun e!2740890 () Bool)

(assert (=> b!4401872 (= e!2740890 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) lambda!149139))))

(declare-fun b!4401873 () Bool)

(declare-fun res!1815735 () Bool)

(declare-fun e!2740889 () Bool)

(assert (=> b!4401873 (=> (not res!1815735) (not e!2740889))))

(assert (=> b!4401873 (= res!1815735 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) lambda!149141))))

(declare-fun bm!306308 () Bool)

(declare-fun call!306311 () Unit!78867)

(declare-fun lemmaContainsAllItsOwnKeys!131 (ListMap!2489) Unit!78867)

(assert (=> bm!306308 (= call!306311 (lemmaContainsAllItsOwnKeys!131 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))))))

(assert (=> d!1327523 e!2740889))

(declare-fun res!1815737 () Bool)

(assert (=> d!1327523 (=> (not res!1815737) (not e!2740889))))

(assert (=> d!1327523 (= res!1815737 (forall!9374 (_2!27742 (h!54916 (toList!3245 lt!1606217))) lambda!149141))))

(declare-fun e!2740888 () ListMap!2489)

(assert (=> d!1327523 (= lt!1606684 e!2740888)))

(assert (=> d!1327523 (= c!749433 ((_ is Nil!49288) (_2!27742 (h!54916 (toList!3245 lt!1606217)))))))

(assert (=> d!1327523 (noDuplicateKeys!631 (_2!27742 (h!54916 (toList!3245 lt!1606217))))))

(assert (=> d!1327523 (= (addToMapMapFromBucket!297 (_2!27742 (h!54916 (toList!3245 lt!1606217))) (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) lt!1606684)))

(assert (=> b!4401871 (= e!2740888 (extractMap!690 (t!356347 (toList!3245 lt!1606217))))))

(declare-fun lt!1606692 () Unit!78867)

(assert (=> b!4401871 (= lt!1606692 call!306311)))

(assert (=> b!4401871 call!306313))

(declare-fun lt!1606679 () Unit!78867)

(assert (=> b!4401871 (= lt!1606679 lt!1606692)))

(assert (=> b!4401871 call!306312))

(declare-fun lt!1606680 () Unit!78867)

(declare-fun Unit!78902 () Unit!78867)

(assert (=> b!4401871 (= lt!1606680 Unit!78902)))

(assert (=> b!4401874 (= e!2740888 lt!1606688)))

(declare-fun lt!1606699 () ListMap!2489)

(assert (=> b!4401874 (= lt!1606699 (+!878 (extractMap!690 (t!356347 (toList!3245 lt!1606217))) (h!54915 (_2!27742 (h!54916 (toList!3245 lt!1606217))))))))

(assert (=> b!4401874 (= lt!1606688 (addToMapMapFromBucket!297 (t!356346 (_2!27742 (h!54916 (toList!3245 lt!1606217)))) (+!878 (extractMap!690 (t!356347 (toList!3245 lt!1606217))) (h!54915 (_2!27742 (h!54916 (toList!3245 lt!1606217)))))))))

(declare-fun lt!1606689 () Unit!78867)

(assert (=> b!4401874 (= lt!1606689 call!306311)))

(assert (=> b!4401874 call!306313))

(declare-fun lt!1606682 () Unit!78867)

(assert (=> b!4401874 (= lt!1606682 lt!1606689)))

(assert (=> b!4401874 (forall!9374 (toList!3246 lt!1606699) lambda!149139)))

(declare-fun lt!1606687 () Unit!78867)

(declare-fun Unit!78903 () Unit!78867)

(assert (=> b!4401874 (= lt!1606687 Unit!78903)))

(assert (=> b!4401874 (forall!9374 (t!356346 (_2!27742 (h!54916 (toList!3245 lt!1606217)))) lambda!149139)))

(declare-fun lt!1606696 () Unit!78867)

(declare-fun Unit!78904 () Unit!78867)

(assert (=> b!4401874 (= lt!1606696 Unit!78904)))

(declare-fun lt!1606686 () Unit!78867)

(declare-fun Unit!78905 () Unit!78867)

(assert (=> b!4401874 (= lt!1606686 Unit!78905)))

(declare-fun lt!1606690 () Unit!78867)

(declare-fun forallContained!2010 (List!49412 Int tuple2!48894) Unit!78867)

(assert (=> b!4401874 (= lt!1606690 (forallContained!2010 (toList!3246 lt!1606699) lambda!149139 (h!54915 (_2!27742 (h!54916 (toList!3245 lt!1606217))))))))

(assert (=> b!4401874 (contains!11681 lt!1606699 (_1!27741 (h!54915 (_2!27742 (h!54916 (toList!3245 lt!1606217))))))))

(declare-fun lt!1606691 () Unit!78867)

(declare-fun Unit!78906 () Unit!78867)

(assert (=> b!4401874 (= lt!1606691 Unit!78906)))

(assert (=> b!4401874 (contains!11681 lt!1606688 (_1!27741 (h!54915 (_2!27742 (h!54916 (toList!3245 lt!1606217))))))))

(declare-fun lt!1606698 () Unit!78867)

(declare-fun Unit!78907 () Unit!78867)

(assert (=> b!4401874 (= lt!1606698 Unit!78907)))

(assert (=> b!4401874 (forall!9374 (_2!27742 (h!54916 (toList!3245 lt!1606217))) lambda!149139)))

(declare-fun lt!1606695 () Unit!78867)

(declare-fun Unit!78908 () Unit!78867)

(assert (=> b!4401874 (= lt!1606695 Unit!78908)))

(assert (=> b!4401874 (forall!9374 (toList!3246 lt!1606699) lambda!149139)))

(declare-fun lt!1606693 () Unit!78867)

(declare-fun Unit!78909 () Unit!78867)

(assert (=> b!4401874 (= lt!1606693 Unit!78909)))

(declare-fun lt!1606697 () Unit!78867)

(declare-fun Unit!78910 () Unit!78867)

(assert (=> b!4401874 (= lt!1606697 Unit!78910)))

(declare-fun lt!1606681 () Unit!78867)

(declare-fun addForallContainsKeyThenBeforeAdding!131 (ListMap!2489 ListMap!2489 K!10645 V!10891) Unit!78867)

(assert (=> b!4401874 (= lt!1606681 (addForallContainsKeyThenBeforeAdding!131 (extractMap!690 (t!356347 (toList!3245 lt!1606217))) lt!1606688 (_1!27741 (h!54915 (_2!27742 (h!54916 (toList!3245 lt!1606217))))) (_2!27741 (h!54915 (_2!27742 (h!54916 (toList!3245 lt!1606217)))))))))

(assert (=> b!4401874 call!306312))

(declare-fun lt!1606683 () Unit!78867)

(assert (=> b!4401874 (= lt!1606683 lt!1606681)))

(assert (=> b!4401874 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) lambda!149139)))

(declare-fun lt!1606685 () Unit!78867)

(declare-fun Unit!78911 () Unit!78867)

(assert (=> b!4401874 (= lt!1606685 Unit!78911)))

(declare-fun res!1815736 () Bool)

(assert (=> b!4401874 (= res!1815736 (forall!9374 (_2!27742 (h!54916 (toList!3245 lt!1606217))) lambda!149139))))

(assert (=> b!4401874 (=> (not res!1815736) (not e!2740890))))

(assert (=> b!4401874 e!2740890))

(declare-fun lt!1606694 () Unit!78867)

(declare-fun Unit!78912 () Unit!78867)

(assert (=> b!4401874 (= lt!1606694 Unit!78912)))

(declare-fun b!4401875 () Bool)

(assert (=> b!4401875 (= e!2740889 (invariantList!752 (toList!3246 lt!1606684)))))

(assert (= (and d!1327523 c!749433) b!4401871))

(assert (= (and d!1327523 (not c!749433)) b!4401874))

(assert (= (and b!4401874 res!1815736) b!4401872))

(assert (= (or b!4401871 b!4401874) bm!306308))

(assert (= (or b!4401871 b!4401874) bm!306307))

(assert (= (or b!4401871 b!4401874) bm!306306))

(assert (= (and d!1327523 res!1815737) b!4401873))

(assert (= (and b!4401873 res!1815735) b!4401875))

(assert (=> b!4401874 m!5064785))

(declare-fun m!5065383 () Bool)

(assert (=> b!4401874 m!5065383))

(declare-fun m!5065385 () Bool)

(assert (=> b!4401874 m!5065385))

(declare-fun m!5065387 () Bool)

(assert (=> b!4401874 m!5065387))

(assert (=> b!4401874 m!5064785))

(assert (=> b!4401874 m!5065385))

(declare-fun m!5065389 () Bool)

(assert (=> b!4401874 m!5065389))

(declare-fun m!5065391 () Bool)

(assert (=> b!4401874 m!5065391))

(declare-fun m!5065393 () Bool)

(assert (=> b!4401874 m!5065393))

(assert (=> b!4401874 m!5065389))

(declare-fun m!5065395 () Bool)

(assert (=> b!4401874 m!5065395))

(assert (=> b!4401874 m!5065391))

(declare-fun m!5065397 () Bool)

(assert (=> b!4401874 m!5065397))

(declare-fun m!5065399 () Bool)

(assert (=> b!4401874 m!5065399))

(declare-fun m!5065401 () Bool)

(assert (=> b!4401874 m!5065401))

(declare-fun m!5065403 () Bool)

(assert (=> b!4401873 m!5065403))

(declare-fun m!5065405 () Bool)

(assert (=> bm!306306 m!5065405))

(declare-fun m!5065407 () Bool)

(assert (=> d!1327523 m!5065407))

(declare-fun m!5065409 () Bool)

(assert (=> d!1327523 m!5065409))

(declare-fun m!5065411 () Bool)

(assert (=> b!4401875 m!5065411))

(declare-fun m!5065413 () Bool)

(assert (=> bm!306307 m!5065413))

(assert (=> b!4401872 m!5065393))

(assert (=> bm!306308 m!5064785))

(declare-fun m!5065415 () Bool)

(assert (=> bm!306308 m!5065415))

(assert (=> b!4401495 d!1327523))

(declare-fun bs!728793 () Bool)

(declare-fun d!1327577 () Bool)

(assert (= bs!728793 (and d!1327577 d!1327399)))

(declare-fun lambda!149144 () Int)

(assert (=> bs!728793 (not (= lambda!149144 lambda!149043))))

(declare-fun bs!728794 () Bool)

(assert (= bs!728794 (and d!1327577 d!1327365)))

(assert (=> bs!728794 (= lambda!149144 lambda!149034)))

(declare-fun bs!728795 () Bool)

(assert (= bs!728795 (and d!1327577 d!1327379)))

(assert (=> bs!728795 (= lambda!149144 lambda!149036)))

(declare-fun bs!728796 () Bool)

(assert (= bs!728796 (and d!1327577 d!1327395)))

(assert (=> bs!728796 (= lambda!149144 lambda!149037)))

(declare-fun bs!728797 () Bool)

(assert (= bs!728797 (and d!1327577 d!1327343)))

(assert (=> bs!728797 (= lambda!149144 lambda!149028)))

(declare-fun bs!728798 () Bool)

(assert (= bs!728798 (and d!1327577 d!1327371)))

(assert (=> bs!728798 (= lambda!149144 lambda!149035)))

(declare-fun bs!728799 () Bool)

(assert (= bs!728799 (and d!1327577 start!427908)))

(assert (=> bs!728799 (= lambda!149144 lambda!149007)))

(declare-fun bs!728800 () Bool)

(assert (= bs!728800 (and d!1327577 d!1327363)))

(assert (=> bs!728800 (= lambda!149144 lambda!149031)))

(declare-fun lt!1606704 () ListMap!2489)

(assert (=> d!1327577 (invariantList!752 (toList!3246 lt!1606704))))

(declare-fun e!2740907 () ListMap!2489)

(assert (=> d!1327577 (= lt!1606704 e!2740907)))

(declare-fun c!749438 () Bool)

(assert (=> d!1327577 (= c!749438 ((_ is Cons!49289) (t!356347 (toList!3245 lt!1606217))))))

(assert (=> d!1327577 (forall!9372 (t!356347 (toList!3245 lt!1606217)) lambda!149144)))

(assert (=> d!1327577 (= (extractMap!690 (t!356347 (toList!3245 lt!1606217))) lt!1606704)))

(declare-fun b!4401902 () Bool)

(assert (=> b!4401902 (= e!2740907 (addToMapMapFromBucket!297 (_2!27742 (h!54916 (t!356347 (toList!3245 lt!1606217)))) (extractMap!690 (t!356347 (t!356347 (toList!3245 lt!1606217))))))))

(declare-fun b!4401903 () Bool)

(assert (=> b!4401903 (= e!2740907 (ListMap!2490 Nil!49288))))

(assert (= (and d!1327577 c!749438) b!4401902))

(assert (= (and d!1327577 (not c!749438)) b!4401903))

(declare-fun m!5065419 () Bool)

(assert (=> d!1327577 m!5065419))

(declare-fun m!5065421 () Bool)

(assert (=> d!1327577 m!5065421))

(declare-fun m!5065423 () Bool)

(assert (=> b!4401902 m!5065423))

(assert (=> b!4401902 m!5065423))

(declare-fun m!5065425 () Bool)

(assert (=> b!4401902 m!5065425))

(assert (=> b!4401495 d!1327577))

(declare-fun d!1327581 () Bool)

(declare-fun res!1815754 () Bool)

(declare-fun e!2740911 () Bool)

(assert (=> d!1327581 (=> res!1815754 e!2740911)))

(assert (=> d!1327581 (= res!1815754 (not ((_ is Cons!49288) (_2!27742 (tuple2!48897 hash!377 newBucket!200)))))))

(assert (=> d!1327581 (= (noDuplicateKeys!631 (_2!27742 (tuple2!48897 hash!377 newBucket!200))) e!2740911)))

(declare-fun b!4401910 () Bool)

(declare-fun e!2740912 () Bool)

(assert (=> b!4401910 (= e!2740911 e!2740912)))

(declare-fun res!1815755 () Bool)

(assert (=> b!4401910 (=> (not res!1815755) (not e!2740912))))

(assert (=> b!4401910 (= res!1815755 (not (containsKey!941 (t!356346 (_2!27742 (tuple2!48897 hash!377 newBucket!200))) (_1!27741 (h!54915 (_2!27742 (tuple2!48897 hash!377 newBucket!200)))))))))

(declare-fun b!4401911 () Bool)

(assert (=> b!4401911 (= e!2740912 (noDuplicateKeys!631 (t!356346 (_2!27742 (tuple2!48897 hash!377 newBucket!200)))))))

(assert (= (and d!1327581 (not res!1815754)) b!4401910))

(assert (= (and b!4401910 res!1815755) b!4401911))

(declare-fun m!5065431 () Bool)

(assert (=> b!4401910 m!5065431))

(declare-fun m!5065433 () Bool)

(assert (=> b!4401911 m!5065433))

(assert (=> bs!728705 d!1327581))

(declare-fun d!1327585 () Bool)

(assert (=> d!1327585 (= (invariantList!752 (toList!3246 lt!1606420)) (noDuplicatedKeys!156 (toList!3246 lt!1606420)))))

(declare-fun bs!728801 () Bool)

(assert (= bs!728801 d!1327585))

(declare-fun m!5065439 () Bool)

(assert (=> bs!728801 m!5065439))

(assert (=> d!1327379 d!1327585))

(declare-fun d!1327589 () Bool)

(declare-fun res!1815758 () Bool)

(declare-fun e!2740915 () Bool)

(assert (=> d!1327589 (=> res!1815758 e!2740915)))

(assert (=> d!1327589 (= res!1815758 ((_ is Nil!49289) (t!356347 (toList!3245 lm!1707))))))

(assert (=> d!1327589 (= (forall!9372 (t!356347 (toList!3245 lm!1707)) lambda!149036) e!2740915)))

(declare-fun b!4401914 () Bool)

(declare-fun e!2740916 () Bool)

(assert (=> b!4401914 (= e!2740915 e!2740916)))

(declare-fun res!1815759 () Bool)

(assert (=> b!4401914 (=> (not res!1815759) (not e!2740916))))

(assert (=> b!4401914 (= res!1815759 (dynLambda!20766 lambda!149036 (h!54916 (t!356347 (toList!3245 lm!1707)))))))

(declare-fun b!4401915 () Bool)

(assert (=> b!4401915 (= e!2740916 (forall!9372 (t!356347 (t!356347 (toList!3245 lm!1707))) lambda!149036))))

(assert (= (and d!1327589 (not res!1815758)) b!4401914))

(assert (= (and b!4401914 res!1815759) b!4401915))

(declare-fun b_lambda!139909 () Bool)

(assert (=> (not b_lambda!139909) (not b!4401914)))

(declare-fun m!5065441 () Bool)

(assert (=> b!4401914 m!5065441))

(declare-fun m!5065443 () Bool)

(assert (=> b!4401915 m!5065443))

(assert (=> d!1327379 d!1327589))

(declare-fun d!1327591 () Bool)

(assert (=> d!1327591 (= (head!9110 (toList!3245 lm!1707)) (h!54916 (toList!3245 lm!1707)))))

(assert (=> d!1327381 d!1327591))

(declare-fun d!1327593 () Bool)

(assert (=> d!1327593 (isDefined!7910 (getValueByKey!603 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) key!3918))))

(declare-fun lt!1606706 () Unit!78867)

(assert (=> d!1327593 (= lt!1606706 (choose!27613 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) key!3918))))

(assert (=> d!1327593 (invariantList!752 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))))

(assert (=> d!1327593 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!513 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) key!3918) lt!1606706)))

(declare-fun bs!728803 () Bool)

(assert (= bs!728803 d!1327593))

(assert (=> bs!728803 m!5064885))

(assert (=> bs!728803 m!5064885))

(assert (=> bs!728803 m!5064887))

(declare-fun m!5065445 () Bool)

(assert (=> bs!728803 m!5065445))

(assert (=> bs!728803 m!5065141))

(assert (=> b!4401538 d!1327593))

(declare-fun d!1327597 () Bool)

(assert (=> d!1327597 (= (isDefined!7910 (getValueByKey!603 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) key!3918)) (not (isEmpty!28286 (getValueByKey!603 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) key!3918))))))

(declare-fun bs!728804 () Bool)

(assert (= bs!728804 d!1327597))

(assert (=> bs!728804 m!5064885))

(declare-fun m!5065447 () Bool)

(assert (=> bs!728804 m!5065447))

(assert (=> b!4401538 d!1327597))

(declare-fun b!4401920 () Bool)

(declare-fun e!2740920 () Option!10617)

(assert (=> b!4401920 (= e!2740920 (getValueByKey!603 (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) key!3918))))

(declare-fun b!4401919 () Bool)

(declare-fun e!2740919 () Option!10617)

(assert (=> b!4401919 (= e!2740919 e!2740920)))

(declare-fun c!749443 () Bool)

(assert (=> b!4401919 (= c!749443 (and ((_ is Cons!49288) (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (not (= (_1!27741 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))) key!3918))))))

(declare-fun d!1327599 () Bool)

(declare-fun c!749442 () Bool)

(assert (=> d!1327599 (= c!749442 (and ((_ is Cons!49288) (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (= (_1!27741 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))) key!3918)))))

(assert (=> d!1327599 (= (getValueByKey!603 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) key!3918) e!2740919)))

(declare-fun b!4401918 () Bool)

(assert (=> b!4401918 (= e!2740919 (Some!10616 (_2!27741 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))))))))

(declare-fun b!4401921 () Bool)

(assert (=> b!4401921 (= e!2740920 None!10616)))

(assert (= (and d!1327599 c!749442) b!4401918))

(assert (= (and d!1327599 (not c!749442)) b!4401919))

(assert (= (and b!4401919 c!749443) b!4401920))

(assert (= (and b!4401919 (not c!749443)) b!4401921))

(declare-fun m!5065453 () Bool)

(assert (=> b!4401920 m!5065453))

(assert (=> b!4401538 d!1327599))

(declare-fun d!1327603 () Bool)

(assert (=> d!1327603 (contains!11686 (getKeysList!199 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) key!3918)))

(declare-fun lt!1606711 () Unit!78867)

(assert (=> d!1327603 (= lt!1606711 (choose!27615 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) key!3918))))

(assert (=> d!1327603 (invariantList!752 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))))

(assert (=> d!1327603 (= (lemmaInListThenGetKeysListContains!196 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) key!3918) lt!1606711)))

(declare-fun bs!728805 () Bool)

(assert (= bs!728805 d!1327603))

(assert (=> bs!728805 m!5064881))

(assert (=> bs!728805 m!5064881))

(declare-fun m!5065455 () Bool)

(assert (=> bs!728805 m!5065455))

(declare-fun m!5065457 () Bool)

(assert (=> bs!728805 m!5065457))

(assert (=> bs!728805 m!5065141))

(assert (=> b!4401538 d!1327603))

(declare-fun d!1327605 () Bool)

(declare-fun lt!1606712 () Bool)

(assert (=> d!1327605 (= lt!1606712 (select (content!7875 e!2740635) key!3918))))

(declare-fun e!2740923 () Bool)

(assert (=> d!1327605 (= lt!1606712 e!2740923)))

(declare-fun res!1815763 () Bool)

(assert (=> d!1327605 (=> (not res!1815763) (not e!2740923))))

(assert (=> d!1327605 (= res!1815763 ((_ is Cons!49291) e!2740635))))

(assert (=> d!1327605 (= (contains!11686 e!2740635 key!3918) lt!1606712)))

(declare-fun b!4401925 () Bool)

(declare-fun e!2740924 () Bool)

(assert (=> b!4401925 (= e!2740923 e!2740924)))

(declare-fun res!1815764 () Bool)

(assert (=> b!4401925 (=> res!1815764 e!2740924)))

(assert (=> b!4401925 (= res!1815764 (= (h!54920 e!2740635) key!3918))))

(declare-fun b!4401926 () Bool)

(assert (=> b!4401926 (= e!2740924 (contains!11686 (t!356349 e!2740635) key!3918))))

(assert (= (and d!1327605 res!1815763) b!4401925))

(assert (= (and b!4401925 (not res!1815764)) b!4401926))

(declare-fun m!5065465 () Bool)

(assert (=> d!1327605 m!5065465))

(declare-fun m!5065467 () Bool)

(assert (=> d!1327605 m!5065467))

(declare-fun m!5065469 () Bool)

(assert (=> b!4401926 m!5065469))

(assert (=> bm!306272 d!1327605))

(declare-fun d!1327607 () Bool)

(declare-fun c!749449 () Bool)

(assert (=> d!1327607 (= c!749449 ((_ is Nil!49288) (toList!3246 (extractMap!690 (toList!3245 (+!877 lt!1606217 lt!1606215))))))))

(declare-fun e!2740929 () (InoxSet tuple2!48894))

(assert (=> d!1327607 (= (content!7874 (toList!3246 (extractMap!690 (toList!3245 (+!877 lt!1606217 lt!1606215))))) e!2740929)))

(declare-fun b!4401935 () Bool)

(assert (=> b!4401935 (= e!2740929 ((as const (Array tuple2!48894 Bool)) false))))

(declare-fun b!4401936 () Bool)

(assert (=> b!4401936 (= e!2740929 ((_ map or) (store ((as const (Array tuple2!48894 Bool)) false) (h!54915 (toList!3246 (extractMap!690 (toList!3245 (+!877 lt!1606217 lt!1606215))))) true) (content!7874 (t!356346 (toList!3246 (extractMap!690 (toList!3245 (+!877 lt!1606217 lt!1606215))))))))))

(assert (= (and d!1327607 c!749449) b!4401935))

(assert (= (and d!1327607 (not c!749449)) b!4401936))

(declare-fun m!5065473 () Bool)

(assert (=> b!4401936 m!5065473))

(declare-fun m!5065475 () Bool)

(assert (=> b!4401936 m!5065475))

(assert (=> d!1327369 d!1327607))

(declare-fun d!1327613 () Bool)

(declare-fun c!749450 () Bool)

(assert (=> d!1327613 (= c!749450 ((_ is Nil!49288) (toList!3246 (+!878 lt!1606219 lt!1606214))))))

(declare-fun e!2740930 () (InoxSet tuple2!48894))

(assert (=> d!1327613 (= (content!7874 (toList!3246 (+!878 lt!1606219 lt!1606214))) e!2740930)))

(declare-fun b!4401937 () Bool)

(assert (=> b!4401937 (= e!2740930 ((as const (Array tuple2!48894 Bool)) false))))

(declare-fun b!4401938 () Bool)

(assert (=> b!4401938 (= e!2740930 ((_ map or) (store ((as const (Array tuple2!48894 Bool)) false) (h!54915 (toList!3246 (+!878 lt!1606219 lt!1606214))) true) (content!7874 (t!356346 (toList!3246 (+!878 lt!1606219 lt!1606214))))))))

(assert (= (and d!1327613 c!749450) b!4401937))

(assert (= (and d!1327613 (not c!749450)) b!4401938))

(declare-fun m!5065477 () Bool)

(assert (=> b!4401938 m!5065477))

(declare-fun m!5065479 () Bool)

(assert (=> b!4401938 m!5065479))

(assert (=> d!1327369 d!1327613))

(declare-fun d!1327615 () Bool)

(declare-fun res!1815765 () Bool)

(declare-fun e!2740931 () Bool)

(assert (=> d!1327615 (=> res!1815765 e!2740931)))

(assert (=> d!1327615 (= res!1815765 (and ((_ is Cons!49288) (t!356346 newBucket!200)) (= (_1!27741 (h!54915 (t!356346 newBucket!200))) (_1!27741 (h!54915 newBucket!200)))))))

(assert (=> d!1327615 (= (containsKey!941 (t!356346 newBucket!200) (_1!27741 (h!54915 newBucket!200))) e!2740931)))

(declare-fun b!4401939 () Bool)

(declare-fun e!2740932 () Bool)

(assert (=> b!4401939 (= e!2740931 e!2740932)))

(declare-fun res!1815766 () Bool)

(assert (=> b!4401939 (=> (not res!1815766) (not e!2740932))))

(assert (=> b!4401939 (= res!1815766 ((_ is Cons!49288) (t!356346 newBucket!200)))))

(declare-fun b!4401940 () Bool)

(assert (=> b!4401940 (= e!2740932 (containsKey!941 (t!356346 (t!356346 newBucket!200)) (_1!27741 (h!54915 newBucket!200))))))

(assert (= (and d!1327615 (not res!1815765)) b!4401939))

(assert (= (and b!4401939 res!1815766) b!4401940))

(declare-fun m!5065481 () Bool)

(assert (=> b!4401940 m!5065481))

(assert (=> b!4401526 d!1327615))

(declare-fun d!1327617 () Bool)

(assert (=> d!1327617 (= (isDefined!7910 (getValueByKey!603 (toList!3246 lt!1606219) key!3918)) (not (isEmpty!28286 (getValueByKey!603 (toList!3246 lt!1606219) key!3918))))))

(declare-fun bs!728806 () Bool)

(assert (= bs!728806 d!1327617))

(assert (=> bs!728806 m!5064719))

(declare-fun m!5065483 () Bool)

(assert (=> bs!728806 m!5065483))

(assert (=> b!4401456 d!1327617))

(declare-fun b!4401943 () Bool)

(declare-fun e!2740934 () Option!10617)

(assert (=> b!4401943 (= e!2740934 (getValueByKey!603 (t!356346 (toList!3246 lt!1606219)) key!3918))))

(declare-fun b!4401942 () Bool)

(declare-fun e!2740933 () Option!10617)

(assert (=> b!4401942 (= e!2740933 e!2740934)))

(declare-fun c!749452 () Bool)

(assert (=> b!4401942 (= c!749452 (and ((_ is Cons!49288) (toList!3246 lt!1606219)) (not (= (_1!27741 (h!54915 (toList!3246 lt!1606219))) key!3918))))))

(declare-fun d!1327619 () Bool)

(declare-fun c!749451 () Bool)

(assert (=> d!1327619 (= c!749451 (and ((_ is Cons!49288) (toList!3246 lt!1606219)) (= (_1!27741 (h!54915 (toList!3246 lt!1606219))) key!3918)))))

(assert (=> d!1327619 (= (getValueByKey!603 (toList!3246 lt!1606219) key!3918) e!2740933)))

(declare-fun b!4401941 () Bool)

(assert (=> b!4401941 (= e!2740933 (Some!10616 (_2!27741 (h!54915 (toList!3246 lt!1606219)))))))

(declare-fun b!4401944 () Bool)

(assert (=> b!4401944 (= e!2740934 None!10616)))

(assert (= (and d!1327619 c!749451) b!4401941))

(assert (= (and d!1327619 (not c!749451)) b!4401942))

(assert (= (and b!4401942 c!749452) b!4401943))

(assert (= (and b!4401942 (not c!749452)) b!4401944))

(declare-fun m!5065485 () Bool)

(assert (=> b!4401943 m!5065485))

(assert (=> b!4401456 d!1327619))

(declare-fun bs!728807 () Bool)

(declare-fun b!4401949 () Bool)

(assert (= bs!728807 (and b!4401949 b!4401874)))

(declare-fun lambda!149145 () Int)

(assert (=> bs!728807 (= (= (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707)))) (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149145 lambda!149137))))

(declare-fun bs!728808 () Bool)

(assert (= bs!728808 (and b!4401949 d!1327523)))

(assert (=> bs!728808 (= (= (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707)))) lt!1606684) (= lambda!149145 lambda!149141))))

(declare-fun bs!728809 () Bool)

(assert (= bs!728809 (and b!4401949 b!4401871)))

(assert (=> bs!728809 (= (= (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707)))) (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149145 lambda!149136))))

(assert (=> bs!728807 (= (= (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707)))) lt!1606688) (= lambda!149145 lambda!149139))))

(declare-fun bs!728810 () Bool)

(assert (= bs!728810 (and b!4401949 d!1327397)))

(assert (=> bs!728810 (not (= lambda!149145 lambda!149040))))

(assert (=> b!4401949 true))

(declare-fun bs!728811 () Bool)

(declare-fun b!4401952 () Bool)

(assert (= bs!728811 (and b!4401952 b!4401874)))

(declare-fun lambda!149146 () Int)

(assert (=> bs!728811 (= (= (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707)))) (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149146 lambda!149137))))

(declare-fun bs!728812 () Bool)

(assert (= bs!728812 (and b!4401952 d!1327523)))

(assert (=> bs!728812 (= (= (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707)))) lt!1606684) (= lambda!149146 lambda!149141))))

(declare-fun bs!728813 () Bool)

(assert (= bs!728813 (and b!4401952 b!4401871)))

(assert (=> bs!728813 (= (= (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707)))) (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149146 lambda!149136))))

(declare-fun bs!728814 () Bool)

(assert (= bs!728814 (and b!4401952 b!4401949)))

(assert (=> bs!728814 (= lambda!149146 lambda!149145)))

(assert (=> bs!728811 (= (= (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707)))) lt!1606688) (= lambda!149146 lambda!149139))))

(declare-fun bs!728815 () Bool)

(assert (= bs!728815 (and b!4401952 d!1327397)))

(assert (=> bs!728815 (not (= lambda!149146 lambda!149040))))

(assert (=> b!4401952 true))

(declare-fun lambda!149147 () Int)

(declare-fun lt!1606724 () ListMap!2489)

(assert (=> bs!728811 (= (= lt!1606724 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149147 lambda!149137))))

(assert (=> bs!728812 (= (= lt!1606724 lt!1606684) (= lambda!149147 lambda!149141))))

(assert (=> bs!728813 (= (= lt!1606724 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149147 lambda!149136))))

(assert (=> bs!728814 (= (= lt!1606724 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149147 lambda!149145))))

(assert (=> bs!728811 (= (= lt!1606724 lt!1606688) (= lambda!149147 lambda!149139))))

(assert (=> bs!728815 (not (= lambda!149147 lambda!149040))))

(assert (=> b!4401952 (= (= lt!1606724 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149147 lambda!149146))))

(assert (=> b!4401952 true))

(declare-fun bs!728816 () Bool)

(declare-fun d!1327621 () Bool)

(assert (= bs!728816 (and d!1327621 b!4401874)))

(declare-fun lambda!149148 () Int)

(declare-fun lt!1606720 () ListMap!2489)

(assert (=> bs!728816 (= (= lt!1606720 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149148 lambda!149137))))

(declare-fun bs!728817 () Bool)

(assert (= bs!728817 (and d!1327621 d!1327523)))

(assert (=> bs!728817 (= (= lt!1606720 lt!1606684) (= lambda!149148 lambda!149141))))

(declare-fun bs!728818 () Bool)

(assert (= bs!728818 (and d!1327621 b!4401871)))

(assert (=> bs!728818 (= (= lt!1606720 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149148 lambda!149136))))

(declare-fun bs!728819 () Bool)

(assert (= bs!728819 (and d!1327621 b!4401949)))

(assert (=> bs!728819 (= (= lt!1606720 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149148 lambda!149145))))

(declare-fun bs!728820 () Bool)

(assert (= bs!728820 (and d!1327621 b!4401952)))

(assert (=> bs!728820 (= (= lt!1606720 lt!1606724) (= lambda!149148 lambda!149147))))

(assert (=> bs!728816 (= (= lt!1606720 lt!1606688) (= lambda!149148 lambda!149139))))

(declare-fun bs!728821 () Bool)

(assert (= bs!728821 (and d!1327621 d!1327397)))

(assert (=> bs!728821 (not (= lambda!149148 lambda!149040))))

(assert (=> bs!728820 (= (= lt!1606720 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149148 lambda!149146))))

(assert (=> d!1327621 true))

(declare-fun bm!306309 () Bool)

(declare-fun c!749453 () Bool)

(declare-fun call!306315 () Bool)

(assert (=> bm!306309 (= call!306315 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (ite c!749453 lambda!149145 lambda!149147)))))

(declare-fun bm!306310 () Bool)

(declare-fun call!306316 () Bool)

(assert (=> bm!306310 (= call!306316 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (ite c!749453 lambda!149145 lambda!149146)))))

(declare-fun b!4401950 () Bool)

(declare-fun e!2740939 () Bool)

(assert (=> b!4401950 (= e!2740939 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) lambda!149147))))

(declare-fun b!4401951 () Bool)

(declare-fun res!1815771 () Bool)

(declare-fun e!2740938 () Bool)

(assert (=> b!4401951 (=> (not res!1815771) (not e!2740938))))

(assert (=> b!4401951 (= res!1815771 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) lambda!149148))))

(declare-fun bm!306311 () Bool)

(declare-fun call!306314 () Unit!78867)

(assert (=> bm!306311 (= call!306314 (lemmaContainsAllItsOwnKeys!131 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))))))

(assert (=> d!1327621 e!2740938))

(declare-fun res!1815773 () Bool)

(assert (=> d!1327621 (=> (not res!1815773) (not e!2740938))))

(assert (=> d!1327621 (= res!1815773 (forall!9374 (_2!27742 (h!54916 (t!356347 (toList!3245 lm!1707)))) lambda!149148))))

(declare-fun e!2740937 () ListMap!2489)

(assert (=> d!1327621 (= lt!1606720 e!2740937)))

(assert (=> d!1327621 (= c!749453 ((_ is Nil!49288) (_2!27742 (h!54916 (t!356347 (toList!3245 lm!1707))))))))

(assert (=> d!1327621 (noDuplicateKeys!631 (_2!27742 (h!54916 (t!356347 (toList!3245 lm!1707)))))))

(assert (=> d!1327621 (= (addToMapMapFromBucket!297 (_2!27742 (h!54916 (t!356347 (toList!3245 lm!1707)))) (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) lt!1606720)))

(assert (=> b!4401949 (= e!2740937 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707)))))))

(declare-fun lt!1606728 () Unit!78867)

(assert (=> b!4401949 (= lt!1606728 call!306314)))

(assert (=> b!4401949 call!306316))

(declare-fun lt!1606715 () Unit!78867)

(assert (=> b!4401949 (= lt!1606715 lt!1606728)))

(assert (=> b!4401949 call!306315))

(declare-fun lt!1606716 () Unit!78867)

(declare-fun Unit!78924 () Unit!78867)

(assert (=> b!4401949 (= lt!1606716 Unit!78924)))

(assert (=> b!4401952 (= e!2740937 lt!1606724)))

(declare-fun lt!1606735 () ListMap!2489)

(assert (=> b!4401952 (= lt!1606735 (+!878 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707)))) (h!54915 (_2!27742 (h!54916 (t!356347 (toList!3245 lm!1707)))))))))

(assert (=> b!4401952 (= lt!1606724 (addToMapMapFromBucket!297 (t!356346 (_2!27742 (h!54916 (t!356347 (toList!3245 lm!1707))))) (+!878 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707)))) (h!54915 (_2!27742 (h!54916 (t!356347 (toList!3245 lm!1707))))))))))

(declare-fun lt!1606725 () Unit!78867)

(assert (=> b!4401952 (= lt!1606725 call!306314)))

(assert (=> b!4401952 call!306316))

(declare-fun lt!1606718 () Unit!78867)

(assert (=> b!4401952 (= lt!1606718 lt!1606725)))

(assert (=> b!4401952 (forall!9374 (toList!3246 lt!1606735) lambda!149147)))

(declare-fun lt!1606723 () Unit!78867)

(declare-fun Unit!78925 () Unit!78867)

(assert (=> b!4401952 (= lt!1606723 Unit!78925)))

(assert (=> b!4401952 (forall!9374 (t!356346 (_2!27742 (h!54916 (t!356347 (toList!3245 lm!1707))))) lambda!149147)))

(declare-fun lt!1606732 () Unit!78867)

(declare-fun Unit!78926 () Unit!78867)

(assert (=> b!4401952 (= lt!1606732 Unit!78926)))

(declare-fun lt!1606722 () Unit!78867)

(declare-fun Unit!78927 () Unit!78867)

(assert (=> b!4401952 (= lt!1606722 Unit!78927)))

(declare-fun lt!1606726 () Unit!78867)

(assert (=> b!4401952 (= lt!1606726 (forallContained!2010 (toList!3246 lt!1606735) lambda!149147 (h!54915 (_2!27742 (h!54916 (t!356347 (toList!3245 lm!1707)))))))))

(assert (=> b!4401952 (contains!11681 lt!1606735 (_1!27741 (h!54915 (_2!27742 (h!54916 (t!356347 (toList!3245 lm!1707)))))))))

(declare-fun lt!1606727 () Unit!78867)

(declare-fun Unit!78928 () Unit!78867)

(assert (=> b!4401952 (= lt!1606727 Unit!78928)))

(assert (=> b!4401952 (contains!11681 lt!1606724 (_1!27741 (h!54915 (_2!27742 (h!54916 (t!356347 (toList!3245 lm!1707)))))))))

(declare-fun lt!1606734 () Unit!78867)

(declare-fun Unit!78929 () Unit!78867)

(assert (=> b!4401952 (= lt!1606734 Unit!78929)))

(assert (=> b!4401952 (forall!9374 (_2!27742 (h!54916 (t!356347 (toList!3245 lm!1707)))) lambda!149147)))

(declare-fun lt!1606731 () Unit!78867)

(declare-fun Unit!78930 () Unit!78867)

(assert (=> b!4401952 (= lt!1606731 Unit!78930)))

(assert (=> b!4401952 (forall!9374 (toList!3246 lt!1606735) lambda!149147)))

(declare-fun lt!1606729 () Unit!78867)

(declare-fun Unit!78931 () Unit!78867)

(assert (=> b!4401952 (= lt!1606729 Unit!78931)))

(declare-fun lt!1606733 () Unit!78867)

(declare-fun Unit!78932 () Unit!78867)

(assert (=> b!4401952 (= lt!1606733 Unit!78932)))

(declare-fun lt!1606717 () Unit!78867)

(assert (=> b!4401952 (= lt!1606717 (addForallContainsKeyThenBeforeAdding!131 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707)))) lt!1606724 (_1!27741 (h!54915 (_2!27742 (h!54916 (t!356347 (toList!3245 lm!1707)))))) (_2!27741 (h!54915 (_2!27742 (h!54916 (t!356347 (toList!3245 lm!1707))))))))))

(assert (=> b!4401952 call!306315))

(declare-fun lt!1606719 () Unit!78867)

(assert (=> b!4401952 (= lt!1606719 lt!1606717)))

(assert (=> b!4401952 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) lambda!149147)))

(declare-fun lt!1606721 () Unit!78867)

(declare-fun Unit!78933 () Unit!78867)

(assert (=> b!4401952 (= lt!1606721 Unit!78933)))

(declare-fun res!1815772 () Bool)

(assert (=> b!4401952 (= res!1815772 (forall!9374 (_2!27742 (h!54916 (t!356347 (toList!3245 lm!1707)))) lambda!149147))))

(assert (=> b!4401952 (=> (not res!1815772) (not e!2740939))))

(assert (=> b!4401952 e!2740939))

(declare-fun lt!1606730 () Unit!78867)

(declare-fun Unit!78934 () Unit!78867)

(assert (=> b!4401952 (= lt!1606730 Unit!78934)))

(declare-fun b!4401953 () Bool)

(assert (=> b!4401953 (= e!2740938 (invariantList!752 (toList!3246 lt!1606720)))))

(assert (= (and d!1327621 c!749453) b!4401949))

(assert (= (and d!1327621 (not c!749453)) b!4401952))

(assert (= (and b!4401952 res!1815772) b!4401950))

(assert (= (or b!4401949 b!4401952) bm!306311))

(assert (= (or b!4401949 b!4401952) bm!306310))

(assert (= (or b!4401949 b!4401952) bm!306309))

(assert (= (and d!1327621 res!1815773) b!4401951))

(assert (= (and b!4401951 res!1815771) b!4401953))

(assert (=> b!4401952 m!5064839))

(declare-fun m!5065495 () Bool)

(assert (=> b!4401952 m!5065495))

(declare-fun m!5065497 () Bool)

(assert (=> b!4401952 m!5065497))

(declare-fun m!5065499 () Bool)

(assert (=> b!4401952 m!5065499))

(assert (=> b!4401952 m!5064839))

(assert (=> b!4401952 m!5065497))

(declare-fun m!5065501 () Bool)

(assert (=> b!4401952 m!5065501))

(declare-fun m!5065503 () Bool)

(assert (=> b!4401952 m!5065503))

(declare-fun m!5065505 () Bool)

(assert (=> b!4401952 m!5065505))

(assert (=> b!4401952 m!5065501))

(declare-fun m!5065507 () Bool)

(assert (=> b!4401952 m!5065507))

(assert (=> b!4401952 m!5065503))

(declare-fun m!5065509 () Bool)

(assert (=> b!4401952 m!5065509))

(declare-fun m!5065511 () Bool)

(assert (=> b!4401952 m!5065511))

(declare-fun m!5065513 () Bool)

(assert (=> b!4401952 m!5065513))

(declare-fun m!5065515 () Bool)

(assert (=> b!4401951 m!5065515))

(declare-fun m!5065517 () Bool)

(assert (=> bm!306309 m!5065517))

(declare-fun m!5065519 () Bool)

(assert (=> d!1327621 m!5065519))

(declare-fun m!5065521 () Bool)

(assert (=> d!1327621 m!5065521))

(declare-fun m!5065523 () Bool)

(assert (=> b!4401953 m!5065523))

(declare-fun m!5065525 () Bool)

(assert (=> bm!306310 m!5065525))

(assert (=> b!4401950 m!5065505))

(assert (=> bm!306311 m!5064839))

(declare-fun m!5065527 () Bool)

(assert (=> bm!306311 m!5065527))

(assert (=> b!4401511 d!1327621))

(declare-fun bs!728822 () Bool)

(declare-fun d!1327625 () Bool)

(assert (= bs!728822 (and d!1327625 d!1327399)))

(declare-fun lambda!149149 () Int)

(assert (=> bs!728822 (not (= lambda!149149 lambda!149043))))

(declare-fun bs!728823 () Bool)

(assert (= bs!728823 (and d!1327625 d!1327365)))

(assert (=> bs!728823 (= lambda!149149 lambda!149034)))

(declare-fun bs!728824 () Bool)

(assert (= bs!728824 (and d!1327625 d!1327379)))

(assert (=> bs!728824 (= lambda!149149 lambda!149036)))

(declare-fun bs!728825 () Bool)

(assert (= bs!728825 (and d!1327625 d!1327577)))

(assert (=> bs!728825 (= lambda!149149 lambda!149144)))

(declare-fun bs!728826 () Bool)

(assert (= bs!728826 (and d!1327625 d!1327395)))

(assert (=> bs!728826 (= lambda!149149 lambda!149037)))

(declare-fun bs!728827 () Bool)

(assert (= bs!728827 (and d!1327625 d!1327343)))

(assert (=> bs!728827 (= lambda!149149 lambda!149028)))

(declare-fun bs!728828 () Bool)

(assert (= bs!728828 (and d!1327625 d!1327371)))

(assert (=> bs!728828 (= lambda!149149 lambda!149035)))

(declare-fun bs!728829 () Bool)

(assert (= bs!728829 (and d!1327625 start!427908)))

(assert (=> bs!728829 (= lambda!149149 lambda!149007)))

(declare-fun bs!728830 () Bool)

(assert (= bs!728830 (and d!1327625 d!1327363)))

(assert (=> bs!728830 (= lambda!149149 lambda!149031)))

(declare-fun lt!1606737 () ListMap!2489)

(assert (=> d!1327625 (invariantList!752 (toList!3246 lt!1606737))))

(declare-fun e!2740941 () ListMap!2489)

(assert (=> d!1327625 (= lt!1606737 e!2740941)))

(declare-fun c!749454 () Bool)

(assert (=> d!1327625 (= c!749454 ((_ is Cons!49289) (t!356347 (t!356347 (toList!3245 lm!1707)))))))

(assert (=> d!1327625 (forall!9372 (t!356347 (t!356347 (toList!3245 lm!1707))) lambda!149149)))

(assert (=> d!1327625 (= (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707)))) lt!1606737)))

(declare-fun b!4401956 () Bool)

(assert (=> b!4401956 (= e!2740941 (addToMapMapFromBucket!297 (_2!27742 (h!54916 (t!356347 (t!356347 (toList!3245 lm!1707))))) (extractMap!690 (t!356347 (t!356347 (t!356347 (toList!3245 lm!1707)))))))))

(declare-fun b!4401957 () Bool)

(assert (=> b!4401957 (= e!2740941 (ListMap!2490 Nil!49288))))

(assert (= (and d!1327625 c!749454) b!4401956))

(assert (= (and d!1327625 (not c!749454)) b!4401957))

(declare-fun m!5065529 () Bool)

(assert (=> d!1327625 m!5065529))

(declare-fun m!5065531 () Bool)

(assert (=> d!1327625 m!5065531))

(declare-fun m!5065533 () Bool)

(assert (=> b!4401956 m!5065533))

(assert (=> b!4401956 m!5065533))

(declare-fun m!5065535 () Bool)

(assert (=> b!4401956 m!5065535))

(assert (=> b!4401511 d!1327625))

(declare-fun d!1327627 () Bool)

(assert (=> d!1327627 (isDefined!7908 (getValueByKey!602 (toList!3245 lm!1707) hash!377))))

(declare-fun lt!1606742 () Unit!78867)

(declare-fun choose!27619 (List!49413 (_ BitVec 64)) Unit!78867)

(assert (=> d!1327627 (= lt!1606742 (choose!27619 (toList!3245 lm!1707) hash!377))))

(declare-fun e!2740954 () Bool)

(assert (=> d!1327627 e!2740954))

(declare-fun res!1815782 () Bool)

(assert (=> d!1327627 (=> (not res!1815782) (not e!2740954))))

(assert (=> d!1327627 (= res!1815782 (isStrictlySorted!178 (toList!3245 lm!1707)))))

(assert (=> d!1327627 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!511 (toList!3245 lm!1707) hash!377) lt!1606742)))

(declare-fun b!4401980 () Bool)

(assert (=> b!4401980 (= e!2740954 (containsKey!943 (toList!3245 lm!1707) hash!377))))

(assert (= (and d!1327627 res!1815782) b!4401980))

(assert (=> d!1327627 m!5064523))

(assert (=> d!1327627 m!5064523))

(assert (=> d!1327627 m!5064525))

(declare-fun m!5065537 () Bool)

(assert (=> d!1327627 m!5065537))

(assert (=> d!1327627 m!5064533))

(assert (=> b!4401980 m!5064519))

(assert (=> b!4401305 d!1327627))

(assert (=> b!4401305 d!1327433))

(assert (=> b!4401305 d!1327435))

(assert (=> d!1327311 d!1327511))

(declare-fun lt!1606743 () Bool)

(declare-fun d!1327629 () Bool)

(assert (=> d!1327629 (= lt!1606743 (select (content!7873 (toList!3245 lm!1707)) (tuple2!48897 hash!377 lt!1606218)))))

(declare-fun e!2740956 () Bool)

(assert (=> d!1327629 (= lt!1606743 e!2740956)))

(declare-fun res!1815783 () Bool)

(assert (=> d!1327629 (=> (not res!1815783) (not e!2740956))))

(assert (=> d!1327629 (= res!1815783 ((_ is Cons!49289) (toList!3245 lm!1707)))))

(assert (=> d!1327629 (= (contains!11682 (toList!3245 lm!1707) (tuple2!48897 hash!377 lt!1606218)) lt!1606743)))

(declare-fun b!4401981 () Bool)

(declare-fun e!2740955 () Bool)

(assert (=> b!4401981 (= e!2740956 e!2740955)))

(declare-fun res!1815784 () Bool)

(assert (=> b!4401981 (=> res!1815784 e!2740955)))

(assert (=> b!4401981 (= res!1815784 (= (h!54916 (toList!3245 lm!1707)) (tuple2!48897 hash!377 lt!1606218)))))

(declare-fun b!4401982 () Bool)

(assert (=> b!4401982 (= e!2740955 (contains!11682 (t!356347 (toList!3245 lm!1707)) (tuple2!48897 hash!377 lt!1606218)))))

(assert (= (and d!1327629 res!1815783) b!4401981))

(assert (= (and b!4401981 (not res!1815784)) b!4401982))

(assert (=> d!1327629 m!5064561))

(declare-fun m!5065539 () Bool)

(assert (=> d!1327629 m!5065539))

(declare-fun m!5065541 () Bool)

(assert (=> b!4401982 m!5065541))

(assert (=> d!1327289 d!1327629))

(declare-fun d!1327631 () Bool)

(assert (=> d!1327631 (contains!11682 (toList!3245 lm!1707) (tuple2!48897 hash!377 lt!1606218))))

(assert (=> d!1327631 true))

(declare-fun _$14!903 () Unit!78867)

(assert (=> d!1327631 (= (choose!27603 (toList!3245 lm!1707) hash!377 lt!1606218) _$14!903)))

(declare-fun bs!728831 () Bool)

(assert (= bs!728831 d!1327631))

(assert (=> bs!728831 m!5064529))

(assert (=> d!1327289 d!1327631))

(declare-fun d!1327633 () Bool)

(declare-fun res!1815793 () Bool)

(declare-fun e!2740968 () Bool)

(assert (=> d!1327633 (=> res!1815793 e!2740968)))

(assert (=> d!1327633 (= res!1815793 (or ((_ is Nil!49289) (toList!3245 lm!1707)) ((_ is Nil!49289) (t!356347 (toList!3245 lm!1707)))))))

(assert (=> d!1327633 (= (isStrictlySorted!178 (toList!3245 lm!1707)) e!2740968)))

(declare-fun b!4401999 () Bool)

(declare-fun e!2740969 () Bool)

(assert (=> b!4401999 (= e!2740968 e!2740969)))

(declare-fun res!1815794 () Bool)

(assert (=> b!4401999 (=> (not res!1815794) (not e!2740969))))

(assert (=> b!4401999 (= res!1815794 (bvslt (_1!27742 (h!54916 (toList!3245 lm!1707))) (_1!27742 (h!54916 (t!356347 (toList!3245 lm!1707))))))))

(declare-fun b!4402000 () Bool)

(assert (=> b!4402000 (= e!2740969 (isStrictlySorted!178 (t!356347 (toList!3245 lm!1707))))))

(assert (= (and d!1327633 (not res!1815793)) b!4401999))

(assert (= (and b!4401999 res!1815794) b!4402000))

(declare-fun m!5065557 () Bool)

(assert (=> b!4402000 m!5065557))

(assert (=> d!1327289 d!1327633))

(declare-fun b!4402005 () Bool)

(declare-fun e!2740973 () Option!10617)

(assert (=> b!4402005 (= e!2740973 (getValueByKey!603 (t!356346 (toList!3246 lt!1606417)) (_1!27741 lt!1606214)))))

(declare-fun b!4402004 () Bool)

(declare-fun e!2740972 () Option!10617)

(assert (=> b!4402004 (= e!2740972 e!2740973)))

(declare-fun c!749468 () Bool)

(assert (=> b!4402004 (= c!749468 (and ((_ is Cons!49288) (toList!3246 lt!1606417)) (not (= (_1!27741 (h!54915 (toList!3246 lt!1606417))) (_1!27741 lt!1606214)))))))

(declare-fun d!1327639 () Bool)

(declare-fun c!749467 () Bool)

(assert (=> d!1327639 (= c!749467 (and ((_ is Cons!49288) (toList!3246 lt!1606417)) (= (_1!27741 (h!54915 (toList!3246 lt!1606417))) (_1!27741 lt!1606214))))))

(assert (=> d!1327639 (= (getValueByKey!603 (toList!3246 lt!1606417) (_1!27741 lt!1606214)) e!2740972)))

(declare-fun b!4402003 () Bool)

(assert (=> b!4402003 (= e!2740972 (Some!10616 (_2!27741 (h!54915 (toList!3246 lt!1606417)))))))

(declare-fun b!4402006 () Bool)

(assert (=> b!4402006 (= e!2740973 None!10616)))

(assert (= (and d!1327639 c!749467) b!4402003))

(assert (= (and d!1327639 (not c!749467)) b!4402004))

(assert (= (and b!4402004 c!749468) b!4402005))

(assert (= (and b!4402004 (not c!749468)) b!4402006))

(declare-fun m!5065561 () Bool)

(assert (=> b!4402005 m!5065561))

(assert (=> b!4401509 d!1327639))

(declare-fun d!1327643 () Bool)

(declare-fun lt!1606745 () Bool)

(assert (=> d!1327643 (= lt!1606745 (select (content!7875 (keys!16753 lt!1606220)) key!3918))))

(declare-fun e!2740974 () Bool)

(assert (=> d!1327643 (= lt!1606745 e!2740974)))

(declare-fun res!1815797 () Bool)

(assert (=> d!1327643 (=> (not res!1815797) (not e!2740974))))

(assert (=> d!1327643 (= res!1815797 ((_ is Cons!49291) (keys!16753 lt!1606220)))))

(assert (=> d!1327643 (= (contains!11686 (keys!16753 lt!1606220) key!3918) lt!1606745)))

(declare-fun b!4402007 () Bool)

(declare-fun e!2740975 () Bool)

(assert (=> b!4402007 (= e!2740974 e!2740975)))

(declare-fun res!1815798 () Bool)

(assert (=> b!4402007 (=> res!1815798 e!2740975)))

(assert (=> b!4402007 (= res!1815798 (= (h!54920 (keys!16753 lt!1606220)) key!3918))))

(declare-fun b!4402008 () Bool)

(assert (=> b!4402008 (= e!2740975 (contains!11686 (t!356349 (keys!16753 lt!1606220)) key!3918))))

(assert (= (and d!1327643 res!1815797) b!4402007))

(assert (= (and b!4402007 (not res!1815798)) b!4402008))

(assert (=> d!1327643 m!5064845))

(declare-fun m!5065563 () Bool)

(assert (=> d!1327643 m!5065563))

(declare-fun m!5065565 () Bool)

(assert (=> d!1327643 m!5065565))

(declare-fun m!5065567 () Bool)

(assert (=> b!4402008 m!5065567))

(assert (=> b!4401513 d!1327643))

(assert (=> b!4401513 d!1327493))

(declare-fun d!1327645 () Bool)

(declare-fun lt!1606748 () Bool)

(assert (=> d!1327645 (= lt!1606748 (select (content!7874 (toList!3246 lt!1606417)) lt!1606214))))

(declare-fun e!2740980 () Bool)

(assert (=> d!1327645 (= lt!1606748 e!2740980)))

(declare-fun res!1815803 () Bool)

(assert (=> d!1327645 (=> (not res!1815803) (not e!2740980))))

(assert (=> d!1327645 (= res!1815803 ((_ is Cons!49288) (toList!3246 lt!1606417)))))

(assert (=> d!1327645 (= (contains!11687 (toList!3246 lt!1606417) lt!1606214) lt!1606748)))

(declare-fun b!4402013 () Bool)

(declare-fun e!2740981 () Bool)

(assert (=> b!4402013 (= e!2740980 e!2740981)))

(declare-fun res!1815804 () Bool)

(assert (=> b!4402013 (=> res!1815804 e!2740981)))

(assert (=> b!4402013 (= res!1815804 (= (h!54915 (toList!3246 lt!1606417)) lt!1606214))))

(declare-fun b!4402014 () Bool)

(assert (=> b!4402014 (= e!2740981 (contains!11687 (t!356346 (toList!3246 lt!1606417)) lt!1606214))))

(assert (= (and d!1327645 res!1815803) b!4402013))

(assert (= (and b!4402013 (not res!1815804)) b!4402014))

(declare-fun m!5065569 () Bool)

(assert (=> d!1327645 m!5065569))

(declare-fun m!5065571 () Bool)

(assert (=> d!1327645 m!5065571))

(declare-fun m!5065573 () Bool)

(assert (=> b!4402014 m!5065573))

(assert (=> b!4401510 d!1327645))

(assert (=> d!1327393 d!1327489))

(declare-fun d!1327647 () Bool)

(declare-fun e!2740982 () Bool)

(assert (=> d!1327647 e!2740982))

(declare-fun res!1815805 () Bool)

(assert (=> d!1327647 (=> res!1815805 e!2740982)))

(declare-fun lt!1606752 () Bool)

(assert (=> d!1327647 (= res!1815805 (not lt!1606752))))

(declare-fun lt!1606749 () Bool)

(assert (=> d!1327647 (= lt!1606752 lt!1606749)))

(declare-fun lt!1606750 () Unit!78867)

(declare-fun e!2740983 () Unit!78867)

(assert (=> d!1327647 (= lt!1606750 e!2740983)))

(declare-fun c!749469 () Bool)

(assert (=> d!1327647 (= c!749469 lt!1606749)))

(assert (=> d!1327647 (= lt!1606749 (containsKey!943 (toList!3245 lt!1606440) (_1!27742 lt!1606215)))))

(assert (=> d!1327647 (= (contains!11683 lt!1606440 (_1!27742 lt!1606215)) lt!1606752)))

(declare-fun b!4402015 () Bool)

(declare-fun lt!1606751 () Unit!78867)

(assert (=> b!4402015 (= e!2740983 lt!1606751)))

(assert (=> b!4402015 (= lt!1606751 (lemmaContainsKeyImpliesGetValueByKeyDefined!511 (toList!3245 lt!1606440) (_1!27742 lt!1606215)))))

(assert (=> b!4402015 (isDefined!7908 (getValueByKey!602 (toList!3245 lt!1606440) (_1!27742 lt!1606215)))))

(declare-fun b!4402016 () Bool)

(declare-fun Unit!78935 () Unit!78867)

(assert (=> b!4402016 (= e!2740983 Unit!78935)))

(declare-fun b!4402017 () Bool)

(assert (=> b!4402017 (= e!2740982 (isDefined!7908 (getValueByKey!602 (toList!3245 lt!1606440) (_1!27742 lt!1606215))))))

(assert (= (and d!1327647 c!749469) b!4402015))

(assert (= (and d!1327647 (not c!749469)) b!4402016))

(assert (= (and d!1327647 (not res!1815805)) b!4402017))

(declare-fun m!5065575 () Bool)

(assert (=> d!1327647 m!5065575))

(declare-fun m!5065577 () Bool)

(assert (=> b!4402015 m!5065577))

(assert (=> b!4402015 m!5064915))

(assert (=> b!4402015 m!5064915))

(declare-fun m!5065579 () Bool)

(assert (=> b!4402015 m!5065579))

(assert (=> b!4402017 m!5064915))

(assert (=> b!4402017 m!5064915))

(assert (=> b!4402017 m!5065579))

(assert (=> d!1327403 d!1327647))

(declare-fun d!1327653 () Bool)

(declare-fun c!749470 () Bool)

(assert (=> d!1327653 (= c!749470 (and ((_ is Cons!49289) lt!1606438) (= (_1!27742 (h!54916 lt!1606438)) (_1!27742 lt!1606215))))))

(declare-fun e!2740986 () Option!10616)

(assert (=> d!1327653 (= (getValueByKey!602 lt!1606438 (_1!27742 lt!1606215)) e!2740986)))

(declare-fun b!4402023 () Bool)

(declare-fun e!2740987 () Option!10616)

(assert (=> b!4402023 (= e!2740987 None!10615)))

(declare-fun b!4402021 () Bool)

(assert (=> b!4402021 (= e!2740986 e!2740987)))

(declare-fun c!749471 () Bool)

(assert (=> b!4402021 (= c!749471 (and ((_ is Cons!49289) lt!1606438) (not (= (_1!27742 (h!54916 lt!1606438)) (_1!27742 lt!1606215)))))))

(declare-fun b!4402022 () Bool)

(assert (=> b!4402022 (= e!2740987 (getValueByKey!602 (t!356347 lt!1606438) (_1!27742 lt!1606215)))))

(declare-fun b!4402020 () Bool)

(assert (=> b!4402020 (= e!2740986 (Some!10615 (_2!27742 (h!54916 lt!1606438))))))

(assert (= (and d!1327653 c!749470) b!4402020))

(assert (= (and d!1327653 (not c!749470)) b!4402021))

(assert (= (and b!4402021 c!749471) b!4402022))

(assert (= (and b!4402021 (not c!749471)) b!4402023))

(declare-fun m!5065585 () Bool)

(assert (=> b!4402022 m!5065585))

(assert (=> d!1327403 d!1327653))

(declare-fun d!1327657 () Bool)

(assert (=> d!1327657 (= (getValueByKey!602 lt!1606438 (_1!27742 lt!1606215)) (Some!10615 (_2!27742 lt!1606215)))))

(declare-fun lt!1606759 () Unit!78867)

(declare-fun choose!27620 (List!49413 (_ BitVec 64) List!49412) Unit!78867)

(assert (=> d!1327657 (= lt!1606759 (choose!27620 lt!1606438 (_1!27742 lt!1606215) (_2!27742 lt!1606215)))))

(declare-fun e!2740995 () Bool)

(assert (=> d!1327657 e!2740995))

(declare-fun res!1815815 () Bool)

(assert (=> d!1327657 (=> (not res!1815815) (not e!2740995))))

(assert (=> d!1327657 (= res!1815815 (isStrictlySorted!178 lt!1606438))))

(assert (=> d!1327657 (= (lemmaContainsTupThenGetReturnValue!348 lt!1606438 (_1!27742 lt!1606215) (_2!27742 lt!1606215)) lt!1606759)))

(declare-fun b!4402035 () Bool)

(declare-fun res!1815816 () Bool)

(assert (=> b!4402035 (=> (not res!1815816) (not e!2740995))))

(assert (=> b!4402035 (= res!1815816 (containsKey!943 lt!1606438 (_1!27742 lt!1606215)))))

(declare-fun b!4402036 () Bool)

(assert (=> b!4402036 (= e!2740995 (contains!11682 lt!1606438 (tuple2!48897 (_1!27742 lt!1606215) (_2!27742 lt!1606215))))))

(assert (= (and d!1327657 res!1815815) b!4402035))

(assert (= (and b!4402035 res!1815816) b!4402036))

(assert (=> d!1327657 m!5064909))

(declare-fun m!5065593 () Bool)

(assert (=> d!1327657 m!5065593))

(declare-fun m!5065595 () Bool)

(assert (=> d!1327657 m!5065595))

(declare-fun m!5065597 () Bool)

(assert (=> b!4402035 m!5065597))

(declare-fun m!5065599 () Bool)

(assert (=> b!4402036 m!5065599))

(assert (=> d!1327403 d!1327657))

(declare-fun b!4402079 () Bool)

(declare-fun c!749487 () Bool)

(assert (=> b!4402079 (= c!749487 (and ((_ is Cons!49289) (toList!3245 lm!1707)) (bvsgt (_1!27742 (h!54916 (toList!3245 lm!1707))) (_1!27742 lt!1606215))))))

(declare-fun e!2741026 () List!49413)

(declare-fun e!2741024 () List!49413)

(assert (=> b!4402079 (= e!2741026 e!2741024)))

(declare-fun c!749486 () Bool)

(declare-fun b!4402080 () Bool)

(declare-fun e!2741025 () List!49413)

(assert (=> b!4402080 (= e!2741025 (ite c!749486 (t!356347 (toList!3245 lm!1707)) (ite c!749487 (Cons!49289 (h!54916 (toList!3245 lm!1707)) (t!356347 (toList!3245 lm!1707))) Nil!49289)))))

(declare-fun b!4402081 () Bool)

(assert (=> b!4402081 (= e!2741025 (insertStrictlySorted!206 (t!356347 (toList!3245 lm!1707)) (_1!27742 lt!1606215) (_2!27742 lt!1606215)))))

(declare-fun bm!306327 () Bool)

(declare-fun call!306333 () List!49413)

(declare-fun c!749489 () Bool)

(declare-fun $colon$colon!753 (List!49413 tuple2!48896) List!49413)

(assert (=> bm!306327 (= call!306333 ($colon$colon!753 e!2741025 (ite c!749489 (h!54916 (toList!3245 lm!1707)) (tuple2!48897 (_1!27742 lt!1606215) (_2!27742 lt!1606215)))))))

(declare-fun c!749488 () Bool)

(assert (=> bm!306327 (= c!749488 c!749489)))

(declare-fun b!4402082 () Bool)

(declare-fun call!306334 () List!49413)

(assert (=> b!4402082 (= e!2741024 call!306334)))

(declare-fun bm!306328 () Bool)

(declare-fun call!306332 () List!49413)

(assert (=> bm!306328 (= call!306332 call!306333)))

(declare-fun b!4402083 () Bool)

(assert (=> b!4402083 (= e!2741026 call!306332)))

(declare-fun d!1327665 () Bool)

(declare-fun e!2741027 () Bool)

(assert (=> d!1327665 e!2741027))

(declare-fun res!1815836 () Bool)

(assert (=> d!1327665 (=> (not res!1815836) (not e!2741027))))

(declare-fun lt!1606766 () List!49413)

(assert (=> d!1327665 (= res!1815836 (isStrictlySorted!178 lt!1606766))))

(declare-fun e!2741028 () List!49413)

(assert (=> d!1327665 (= lt!1606766 e!2741028)))

(assert (=> d!1327665 (= c!749489 (and ((_ is Cons!49289) (toList!3245 lm!1707)) (bvslt (_1!27742 (h!54916 (toList!3245 lm!1707))) (_1!27742 lt!1606215))))))

(assert (=> d!1327665 (isStrictlySorted!178 (toList!3245 lm!1707))))

(assert (=> d!1327665 (= (insertStrictlySorted!206 (toList!3245 lm!1707) (_1!27742 lt!1606215) (_2!27742 lt!1606215)) lt!1606766)))

(declare-fun b!4402084 () Bool)

(assert (=> b!4402084 (= e!2741028 call!306333)))

(declare-fun bm!306329 () Bool)

(assert (=> bm!306329 (= call!306334 call!306332)))

(declare-fun b!4402085 () Bool)

(assert (=> b!4402085 (= e!2741028 e!2741026)))

(assert (=> b!4402085 (= c!749486 (and ((_ is Cons!49289) (toList!3245 lm!1707)) (= (_1!27742 (h!54916 (toList!3245 lm!1707))) (_1!27742 lt!1606215))))))

(declare-fun b!4402086 () Bool)

(assert (=> b!4402086 (= e!2741027 (contains!11682 lt!1606766 (tuple2!48897 (_1!27742 lt!1606215) (_2!27742 lt!1606215))))))

(declare-fun b!4402087 () Bool)

(assert (=> b!4402087 (= e!2741024 call!306334)))

(declare-fun b!4402088 () Bool)

(declare-fun res!1815835 () Bool)

(assert (=> b!4402088 (=> (not res!1815835) (not e!2741027))))

(assert (=> b!4402088 (= res!1815835 (containsKey!943 lt!1606766 (_1!27742 lt!1606215)))))

(assert (= (and d!1327665 c!749489) b!4402084))

(assert (= (and d!1327665 (not c!749489)) b!4402085))

(assert (= (and b!4402085 c!749486) b!4402083))

(assert (= (and b!4402085 (not c!749486)) b!4402079))

(assert (= (and b!4402079 c!749487) b!4402082))

(assert (= (and b!4402079 (not c!749487)) b!4402087))

(assert (= (or b!4402082 b!4402087) bm!306329))

(assert (= (or b!4402083 bm!306329) bm!306328))

(assert (= (or b!4402084 bm!306328) bm!306327))

(assert (= (and bm!306327 c!749488) b!4402081))

(assert (= (and bm!306327 (not c!749488)) b!4402080))

(assert (= (and d!1327665 res!1815836) b!4402088))

(assert (= (and b!4402088 res!1815835) b!4402086))

(declare-fun m!5065637 () Bool)

(assert (=> b!4402088 m!5065637))

(declare-fun m!5065639 () Bool)

(assert (=> bm!306327 m!5065639))

(declare-fun m!5065641 () Bool)

(assert (=> b!4402081 m!5065641))

(declare-fun m!5065643 () Bool)

(assert (=> b!4402086 m!5065643))

(declare-fun m!5065645 () Bool)

(assert (=> d!1327665 m!5065645))

(assert (=> d!1327665 m!5064533))

(assert (=> d!1327403 d!1327665))

(assert (=> b!4401515 d!1327643))

(assert (=> b!4401515 d!1327493))

(declare-fun d!1327687 () Bool)

(declare-fun res!1815837 () Bool)

(declare-fun e!2741029 () Bool)

(assert (=> d!1327687 (=> res!1815837 e!2741029)))

(assert (=> d!1327687 (= res!1815837 ((_ is Nil!49289) (toList!3245 (+!877 lm!1707 (tuple2!48897 hash!377 newBucket!200)))))))

(assert (=> d!1327687 (= (forall!9372 (toList!3245 (+!877 lm!1707 (tuple2!48897 hash!377 newBucket!200))) lambda!149007) e!2741029)))

(declare-fun b!4402089 () Bool)

(declare-fun e!2741030 () Bool)

(assert (=> b!4402089 (= e!2741029 e!2741030)))

(declare-fun res!1815838 () Bool)

(assert (=> b!4402089 (=> (not res!1815838) (not e!2741030))))

(assert (=> b!4402089 (= res!1815838 (dynLambda!20766 lambda!149007 (h!54916 (toList!3245 (+!877 lm!1707 (tuple2!48897 hash!377 newBucket!200))))))))

(declare-fun b!4402090 () Bool)

(assert (=> b!4402090 (= e!2741030 (forall!9372 (t!356347 (toList!3245 (+!877 lm!1707 (tuple2!48897 hash!377 newBucket!200)))) lambda!149007))))

(assert (= (and d!1327687 (not res!1815837)) b!4402089))

(assert (= (and b!4402089 res!1815838) b!4402090))

(declare-fun b_lambda!139919 () Bool)

(assert (=> (not b_lambda!139919) (not b!4402089)))

(declare-fun m!5065647 () Bool)

(assert (=> b!4402089 m!5065647))

(declare-fun m!5065649 () Bool)

(assert (=> b!4402090 m!5065649))

(assert (=> d!1327405 d!1327687))

(declare-fun d!1327689 () Bool)

(declare-fun e!2741031 () Bool)

(assert (=> d!1327689 e!2741031))

(declare-fun res!1815839 () Bool)

(assert (=> d!1327689 (=> (not res!1815839) (not e!2741031))))

(declare-fun lt!1606769 () ListLongMap!1895)

(assert (=> d!1327689 (= res!1815839 (contains!11683 lt!1606769 (_1!27742 (tuple2!48897 hash!377 newBucket!200))))))

(declare-fun lt!1606767 () List!49413)

(assert (=> d!1327689 (= lt!1606769 (ListLongMap!1896 lt!1606767))))

(declare-fun lt!1606768 () Unit!78867)

(declare-fun lt!1606770 () Unit!78867)

(assert (=> d!1327689 (= lt!1606768 lt!1606770)))

(assert (=> d!1327689 (= (getValueByKey!602 lt!1606767 (_1!27742 (tuple2!48897 hash!377 newBucket!200))) (Some!10615 (_2!27742 (tuple2!48897 hash!377 newBucket!200))))))

(assert (=> d!1327689 (= lt!1606770 (lemmaContainsTupThenGetReturnValue!348 lt!1606767 (_1!27742 (tuple2!48897 hash!377 newBucket!200)) (_2!27742 (tuple2!48897 hash!377 newBucket!200))))))

(assert (=> d!1327689 (= lt!1606767 (insertStrictlySorted!206 (toList!3245 lm!1707) (_1!27742 (tuple2!48897 hash!377 newBucket!200)) (_2!27742 (tuple2!48897 hash!377 newBucket!200))))))

(assert (=> d!1327689 (= (+!877 lm!1707 (tuple2!48897 hash!377 newBucket!200)) lt!1606769)))

(declare-fun b!4402091 () Bool)

(declare-fun res!1815840 () Bool)

(assert (=> b!4402091 (=> (not res!1815840) (not e!2741031))))

(assert (=> b!4402091 (= res!1815840 (= (getValueByKey!602 (toList!3245 lt!1606769) (_1!27742 (tuple2!48897 hash!377 newBucket!200))) (Some!10615 (_2!27742 (tuple2!48897 hash!377 newBucket!200)))))))

(declare-fun b!4402092 () Bool)

(assert (=> b!4402092 (= e!2741031 (contains!11682 (toList!3245 lt!1606769) (tuple2!48897 hash!377 newBucket!200)))))

(assert (= (and d!1327689 res!1815839) b!4402091))

(assert (= (and b!4402091 res!1815840) b!4402092))

(declare-fun m!5065651 () Bool)

(assert (=> d!1327689 m!5065651))

(declare-fun m!5065653 () Bool)

(assert (=> d!1327689 m!5065653))

(declare-fun m!5065655 () Bool)

(assert (=> d!1327689 m!5065655))

(declare-fun m!5065657 () Bool)

(assert (=> d!1327689 m!5065657))

(declare-fun m!5065659 () Bool)

(assert (=> b!4402091 m!5065659))

(declare-fun m!5065661 () Bool)

(assert (=> b!4402092 m!5065661))

(assert (=> d!1327405 d!1327689))

(declare-fun d!1327691 () Bool)

(assert (=> d!1327691 (forall!9372 (toList!3245 (+!877 lm!1707 (tuple2!48897 hash!377 newBucket!200))) lambda!149007)))

(assert (=> d!1327691 true))

(declare-fun _$31!334 () Unit!78867)

(assert (=> d!1327691 (= (choose!27609 lm!1707 lambda!149007 hash!377 newBucket!200) _$31!334)))

(declare-fun bs!728837 () Bool)

(assert (= bs!728837 d!1327691))

(assert (=> bs!728837 m!5064919))

(assert (=> bs!728837 m!5064921))

(assert (=> d!1327405 d!1327691))

(assert (=> d!1327405 d!1327389))

(assert (=> b!4401517 d!1327431))

(declare-fun d!1327693 () Bool)

(assert (=> d!1327693 (containsKey!945 (toList!3246 lt!1606220) key!3918)))

(declare-fun lt!1606771 () Unit!78867)

(assert (=> d!1327693 (= lt!1606771 (choose!27612 (toList!3246 lt!1606220) key!3918))))

(assert (=> d!1327693 (invariantList!752 (toList!3246 lt!1606220))))

(assert (=> d!1327693 (= (lemmaInGetKeysListThenContainsKey!197 (toList!3246 lt!1606220) key!3918) lt!1606771)))

(declare-fun bs!728838 () Bool)

(assert (= bs!728838 d!1327693))

(assert (=> bs!728838 m!5064849))

(declare-fun m!5065663 () Bool)

(assert (=> bs!728838 m!5065663))

(assert (=> bs!728838 m!5065109))

(assert (=> b!4401517 d!1327693))

(declare-fun d!1327695 () Bool)

(declare-fun lt!1606772 () Bool)

(assert (=> d!1327695 (= lt!1606772 (select (content!7873 (toList!3245 lt!1606402)) lt!1606215))))

(declare-fun e!2741033 () Bool)

(assert (=> d!1327695 (= lt!1606772 e!2741033)))

(declare-fun res!1815841 () Bool)

(assert (=> d!1327695 (=> (not res!1815841) (not e!2741033))))

(assert (=> d!1327695 (= res!1815841 ((_ is Cons!49289) (toList!3245 lt!1606402)))))

(assert (=> d!1327695 (= (contains!11682 (toList!3245 lt!1606402) lt!1606215) lt!1606772)))

(declare-fun b!4402094 () Bool)

(declare-fun e!2741032 () Bool)

(assert (=> b!4402094 (= e!2741033 e!2741032)))

(declare-fun res!1815842 () Bool)

(assert (=> b!4402094 (=> res!1815842 e!2741032)))

(assert (=> b!4402094 (= res!1815842 (= (h!54916 (toList!3245 lt!1606402)) lt!1606215))))

(declare-fun b!4402095 () Bool)

(assert (=> b!4402095 (= e!2741032 (contains!11682 (t!356347 (toList!3245 lt!1606402)) lt!1606215))))

(assert (= (and d!1327695 res!1815841) b!4402094))

(assert (= (and b!4402094 (not res!1815842)) b!4402095))

(declare-fun m!5065665 () Bool)

(assert (=> d!1327695 m!5065665))

(declare-fun m!5065667 () Bool)

(assert (=> d!1327695 m!5065667))

(declare-fun m!5065669 () Bool)

(assert (=> b!4402095 m!5065669))

(assert (=> b!4401502 d!1327695))

(declare-fun d!1327697 () Bool)

(declare-fun res!1815843 () Bool)

(declare-fun e!2741034 () Bool)

(assert (=> d!1327697 (=> res!1815843 e!2741034)))

(assert (=> d!1327697 (= res!1815843 (not ((_ is Cons!49288) (_2!27742 lt!1606212))))))

(assert (=> d!1327697 (= (noDuplicateKeys!631 (_2!27742 lt!1606212)) e!2741034)))

(declare-fun b!4402096 () Bool)

(declare-fun e!2741035 () Bool)

(assert (=> b!4402096 (= e!2741034 e!2741035)))

(declare-fun res!1815844 () Bool)

(assert (=> b!4402096 (=> (not res!1815844) (not e!2741035))))

(assert (=> b!4402096 (= res!1815844 (not (containsKey!941 (t!356346 (_2!27742 lt!1606212)) (_1!27741 (h!54915 (_2!27742 lt!1606212))))))))

(declare-fun b!4402097 () Bool)

(assert (=> b!4402097 (= e!2741035 (noDuplicateKeys!631 (t!356346 (_2!27742 lt!1606212))))))

(assert (= (and d!1327697 (not res!1815843)) b!4402096))

(assert (= (and b!4402096 res!1815844) b!4402097))

(declare-fun m!5065671 () Bool)

(assert (=> b!4402096 m!5065671))

(declare-fun m!5065673 () Bool)

(assert (=> b!4402097 m!5065673))

(assert (=> bs!728708 d!1327697))

(declare-fun d!1327699 () Bool)

(assert (=> d!1327699 (dynLambda!20766 lambda!149007 lt!1606212)))

(assert (=> d!1327699 true))

(declare-fun _$7!1619 () Unit!78867)

(assert (=> d!1327699 (= (choose!27605 (toList!3245 lm!1707) lambda!149007 lt!1606212) _$7!1619)))

(declare-fun b_lambda!139921 () Bool)

(assert (=> (not b_lambda!139921) (not d!1327699)))

(declare-fun bs!728839 () Bool)

(assert (= bs!728839 d!1327699))

(assert (=> bs!728839 m!5064583))

(assert (=> d!1327297 d!1327699))

(assert (=> d!1327297 d!1327389))

(declare-fun d!1327701 () Bool)

(declare-fun lt!1606773 () Bool)

(assert (=> d!1327701 (= lt!1606773 (select (content!7875 e!2740673) key!3918))))

(declare-fun e!2741036 () Bool)

(assert (=> d!1327701 (= lt!1606773 e!2741036)))

(declare-fun res!1815845 () Bool)

(assert (=> d!1327701 (=> (not res!1815845) (not e!2741036))))

(assert (=> d!1327701 (= res!1815845 ((_ is Cons!49291) e!2740673))))

(assert (=> d!1327701 (= (contains!11686 e!2740673 key!3918) lt!1606773)))

(declare-fun b!4402098 () Bool)

(declare-fun e!2741037 () Bool)

(assert (=> b!4402098 (= e!2741036 e!2741037)))

(declare-fun res!1815846 () Bool)

(assert (=> b!4402098 (=> res!1815846 e!2741037)))

(assert (=> b!4402098 (= res!1815846 (= (h!54920 e!2740673) key!3918))))

(declare-fun b!4402099 () Bool)

(assert (=> b!4402099 (= e!2741037 (contains!11686 (t!356349 e!2740673) key!3918))))

(assert (= (and d!1327701 res!1815845) b!4402098))

(assert (= (and b!4402098 (not res!1815846)) b!4402099))

(declare-fun m!5065675 () Bool)

(assert (=> d!1327701 m!5065675))

(declare-fun m!5065677 () Bool)

(assert (=> d!1327701 m!5065677))

(declare-fun m!5065679 () Bool)

(assert (=> b!4402099 m!5065679))

(assert (=> bm!306273 d!1327701))

(assert (=> b!4401520 d!1327505))

(assert (=> b!4401520 d!1327507))

(declare-fun d!1327703 () Bool)

(declare-fun lt!1606774 () Bool)

(assert (=> d!1327703 (= lt!1606774 (select (content!7875 (keys!16753 lt!1606219)) key!3918))))

(declare-fun e!2741038 () Bool)

(assert (=> d!1327703 (= lt!1606774 e!2741038)))

(declare-fun res!1815847 () Bool)

(assert (=> d!1327703 (=> (not res!1815847) (not e!2741038))))

(assert (=> d!1327703 (= res!1815847 ((_ is Cons!49291) (keys!16753 lt!1606219)))))

(assert (=> d!1327703 (= (contains!11686 (keys!16753 lt!1606219) key!3918) lt!1606774)))

(declare-fun b!4402100 () Bool)

(declare-fun e!2741039 () Bool)

(assert (=> b!4402100 (= e!2741038 e!2741039)))

(declare-fun res!1815848 () Bool)

(assert (=> b!4402100 (=> res!1815848 e!2741039)))

(assert (=> b!4402100 (= res!1815848 (= (h!54920 (keys!16753 lt!1606219)) key!3918))))

(declare-fun b!4402101 () Bool)

(assert (=> b!4402101 (= e!2741039 (contains!11686 (t!356349 (keys!16753 lt!1606219)) key!3918))))

(assert (= (and d!1327703 res!1815847) b!4402100))

(assert (= (and b!4402100 (not res!1815848)) b!4402101))

(assert (=> d!1327703 m!5064709))

(declare-fun m!5065681 () Bool)

(assert (=> d!1327703 m!5065681))

(declare-fun m!5065683 () Bool)

(assert (=> d!1327703 m!5065683))

(declare-fun m!5065685 () Bool)

(assert (=> b!4402101 m!5065685))

(assert (=> b!4401451 d!1327703))

(declare-fun bs!728840 () Bool)

(declare-fun b!4402105 () Bool)

(assert (= bs!728840 (and b!4402105 b!4401693)))

(declare-fun lambda!149150 () Int)

(assert (=> bs!728840 (= (= (toList!3246 lt!1606219) (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (= lambda!149150 lambda!149048))))

(declare-fun bs!728841 () Bool)

(assert (= bs!728841 (and b!4402105 b!4401746)))

(assert (=> bs!728841 (= (= (toList!3246 lt!1606219) (t!356346 (toList!3246 lt!1606220))) (= lambda!149150 lambda!149064))))

(declare-fun bs!728842 () Bool)

(assert (= bs!728842 (and b!4402105 b!4401766)))

(assert (=> bs!728842 (= (= (toList!3246 lt!1606219) (toList!3246 lt!1606220)) (= lambda!149150 lambda!149068))))

(declare-fun bs!728843 () Bool)

(assert (= bs!728843 (and b!4402105 b!4401747)))

(assert (=> bs!728843 (= (= (toList!3246 lt!1606219) (Cons!49288 (h!54915 (toList!3246 lt!1606220)) (t!356346 (toList!3246 lt!1606220)))) (= lambda!149150 lambda!149065))))

(declare-fun bs!728844 () Bool)

(assert (= bs!728844 (and b!4402105 b!4401751)))

(assert (=> bs!728844 (= (= (toList!3246 lt!1606219) (toList!3246 lt!1606220)) (= lambda!149150 lambda!149066))))

(assert (=> b!4402105 true))

(declare-fun bs!728845 () Bool)

(declare-fun b!4402106 () Bool)

(assert (= bs!728845 (and b!4402106 b!4401694)))

(declare-fun lambda!149151 () Int)

(assert (=> bs!728845 (= lambda!149151 lambda!149049)))

(declare-fun bs!728846 () Bool)

(assert (= bs!728846 (and b!4402106 b!4401752)))

(assert (=> bs!728846 (= lambda!149151 lambda!149067)))

(declare-fun bs!728847 () Bool)

(assert (= bs!728847 (and b!4402106 b!4401767)))

(assert (=> bs!728847 (= lambda!149151 lambda!149069)))

(declare-fun d!1327705 () Bool)

(declare-fun e!2741040 () Bool)

(assert (=> d!1327705 e!2741040))

(declare-fun res!1815849 () Bool)

(assert (=> d!1327705 (=> (not res!1815849) (not e!2741040))))

(declare-fun lt!1606777 () List!49415)

(assert (=> d!1327705 (= res!1815849 (noDuplicate!639 lt!1606777))))

(assert (=> d!1327705 (= lt!1606777 (getKeysList!199 (toList!3246 lt!1606219)))))

(assert (=> d!1327705 (= (keys!16753 lt!1606219) lt!1606777)))

(declare-fun b!4402104 () Bool)

(declare-fun res!1815851 () Bool)

(assert (=> b!4402104 (=> (not res!1815851) (not e!2741040))))

(assert (=> b!4402104 (= res!1815851 (= (length!134 lt!1606777) (length!135 (toList!3246 lt!1606219))))))

(declare-fun res!1815850 () Bool)

(assert (=> b!4402105 (=> (not res!1815850) (not e!2741040))))

(assert (=> b!4402105 (= res!1815850 (forall!9375 lt!1606777 lambda!149150))))

(assert (=> b!4402106 (= e!2741040 (= (content!7875 lt!1606777) (content!7875 (map!10751 (toList!3246 lt!1606219) lambda!149151))))))

(assert (= (and d!1327705 res!1815849) b!4402104))

(assert (= (and b!4402104 res!1815851) b!4402105))

(assert (= (and b!4402105 res!1815850) b!4402106))

(declare-fun m!5065687 () Bool)

(assert (=> d!1327705 m!5065687))

(assert (=> d!1327705 m!5064715))

(declare-fun m!5065689 () Bool)

(assert (=> b!4402104 m!5065689))

(declare-fun m!5065691 () Bool)

(assert (=> b!4402104 m!5065691))

(declare-fun m!5065693 () Bool)

(assert (=> b!4402105 m!5065693))

(declare-fun m!5065695 () Bool)

(assert (=> b!4402106 m!5065695))

(declare-fun m!5065697 () Bool)

(assert (=> b!4402106 m!5065697))

(assert (=> b!4402106 m!5065697))

(declare-fun m!5065699 () Bool)

(assert (=> b!4402106 m!5065699))

(assert (=> b!4401451 d!1327705))

(declare-fun d!1327707 () Bool)

(declare-fun res!1815852 () Bool)

(declare-fun e!2741047 () Bool)

(assert (=> d!1327707 (=> res!1815852 e!2741047)))

(assert (=> d!1327707 (= res!1815852 ((_ is Nil!49289) (toList!3245 lm!1707)))))

(assert (=> d!1327707 (= (forall!9372 (toList!3245 lm!1707) lambda!149043) e!2741047)))

(declare-fun b!4402117 () Bool)

(declare-fun e!2741048 () Bool)

(assert (=> b!4402117 (= e!2741047 e!2741048)))

(declare-fun res!1815853 () Bool)

(assert (=> b!4402117 (=> (not res!1815853) (not e!2741048))))

(assert (=> b!4402117 (= res!1815853 (dynLambda!20766 lambda!149043 (h!54916 (toList!3245 lm!1707))))))

(declare-fun b!4402118 () Bool)

(assert (=> b!4402118 (= e!2741048 (forall!9372 (t!356347 (toList!3245 lm!1707)) lambda!149043))))

(assert (= (and d!1327707 (not res!1815852)) b!4402117))

(assert (= (and b!4402117 res!1815853) b!4402118))

(declare-fun b_lambda!139923 () Bool)

(assert (=> (not b_lambda!139923) (not b!4402117)))

(declare-fun m!5065701 () Bool)

(assert (=> b!4402117 m!5065701))

(declare-fun m!5065703 () Bool)

(assert (=> b!4402118 m!5065703))

(assert (=> d!1327399 d!1327707))

(assert (=> b!4401449 d!1327703))

(assert (=> b!4401449 d!1327705))

(declare-fun bs!728848 () Bool)

(declare-fun b!4402119 () Bool)

(assert (= bs!728848 (and b!4402119 b!4401693)))

(declare-fun lambda!149156 () Int)

(assert (=> bs!728848 (= (= (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (= lambda!149156 lambda!149048))))

(declare-fun bs!728849 () Bool)

(assert (= bs!728849 (and b!4402119 b!4401746)))

(assert (=> bs!728849 (= (= (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (t!356346 (toList!3246 lt!1606220))) (= lambda!149156 lambda!149064))))

(declare-fun bs!728850 () Bool)

(assert (= bs!728850 (and b!4402119 b!4401766)))

(assert (=> bs!728850 (= (= (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (toList!3246 lt!1606220)) (= lambda!149156 lambda!149068))))

(declare-fun bs!728851 () Bool)

(assert (= bs!728851 (and b!4402119 b!4401747)))

(assert (=> bs!728851 (= (= (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (Cons!49288 (h!54915 (toList!3246 lt!1606220)) (t!356346 (toList!3246 lt!1606220)))) (= lambda!149156 lambda!149065))))

(declare-fun bs!728852 () Bool)

(assert (= bs!728852 (and b!4402119 b!4402105)))

(assert (=> bs!728852 (= (= (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (toList!3246 lt!1606219)) (= lambda!149156 lambda!149150))))

(declare-fun bs!728853 () Bool)

(assert (= bs!728853 (and b!4402119 b!4401751)))

(assert (=> bs!728853 (= (= (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (toList!3246 lt!1606220)) (= lambda!149156 lambda!149066))))

(assert (=> b!4402119 true))

(declare-fun bs!728854 () Bool)

(declare-fun b!4402120 () Bool)

(assert (= bs!728854 (and b!4402120 b!4401693)))

(declare-fun lambda!149157 () Int)

(assert (=> bs!728854 (= (= (Cons!49288 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))) (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (= lambda!149157 lambda!149048))))

(declare-fun bs!728855 () Bool)

(assert (= bs!728855 (and b!4402120 b!4401746)))

(assert (=> bs!728855 (= (= (Cons!49288 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))) (t!356346 (toList!3246 lt!1606220))) (= lambda!149157 lambda!149064))))

(declare-fun bs!728856 () Bool)

(assert (= bs!728856 (and b!4402120 b!4402119)))

(assert (=> bs!728856 (= (= (Cons!49288 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))) (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))) (= lambda!149157 lambda!149156))))

(declare-fun bs!728857 () Bool)

(assert (= bs!728857 (and b!4402120 b!4401766)))

(assert (=> bs!728857 (= (= (Cons!49288 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))) (toList!3246 lt!1606220)) (= lambda!149157 lambda!149068))))

(declare-fun bs!728858 () Bool)

(assert (= bs!728858 (and b!4402120 b!4401747)))

(assert (=> bs!728858 (= (= (Cons!49288 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))) (Cons!49288 (h!54915 (toList!3246 lt!1606220)) (t!356346 (toList!3246 lt!1606220)))) (= lambda!149157 lambda!149065))))

(declare-fun bs!728859 () Bool)

(assert (= bs!728859 (and b!4402120 b!4402105)))

(assert (=> bs!728859 (= (= (Cons!49288 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))) (toList!3246 lt!1606219)) (= lambda!149157 lambda!149150))))

(declare-fun bs!728860 () Bool)

(assert (= bs!728860 (and b!4402120 b!4401751)))

(assert (=> bs!728860 (= (= (Cons!49288 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))) (toList!3246 lt!1606220)) (= lambda!149157 lambda!149066))))

(assert (=> b!4402120 true))

(declare-fun bs!728861 () Bool)

(declare-fun b!4402124 () Bool)

(assert (= bs!728861 (and b!4402124 b!4402120)))

(declare-fun lambda!149162 () Int)

(assert (=> bs!728861 (= (= (toList!3246 (extractMap!690 (toList!3245 lm!1707))) (Cons!49288 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))))) (= lambda!149162 lambda!149157))))

(declare-fun bs!728862 () Bool)

(assert (= bs!728862 (and b!4402124 b!4401693)))

(assert (=> bs!728862 (= lambda!149162 lambda!149048)))

(declare-fun bs!728863 () Bool)

(assert (= bs!728863 (and b!4402124 b!4401746)))

(assert (=> bs!728863 (= (= (toList!3246 (extractMap!690 (toList!3245 lm!1707))) (t!356346 (toList!3246 lt!1606220))) (= lambda!149162 lambda!149064))))

(declare-fun bs!728864 () Bool)

(assert (= bs!728864 (and b!4402124 b!4402119)))

(assert (=> bs!728864 (= (= (toList!3246 (extractMap!690 (toList!3245 lm!1707))) (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))) (= lambda!149162 lambda!149156))))

(declare-fun bs!728865 () Bool)

(assert (= bs!728865 (and b!4402124 b!4401766)))

(assert (=> bs!728865 (= (= (toList!3246 (extractMap!690 (toList!3245 lm!1707))) (toList!3246 lt!1606220)) (= lambda!149162 lambda!149068))))

(declare-fun bs!728866 () Bool)

(assert (= bs!728866 (and b!4402124 b!4401747)))

(assert (=> bs!728866 (= (= (toList!3246 (extractMap!690 (toList!3245 lm!1707))) (Cons!49288 (h!54915 (toList!3246 lt!1606220)) (t!356346 (toList!3246 lt!1606220)))) (= lambda!149162 lambda!149065))))

(declare-fun bs!728867 () Bool)

(assert (= bs!728867 (and b!4402124 b!4402105)))

(assert (=> bs!728867 (= (= (toList!3246 (extractMap!690 (toList!3245 lm!1707))) (toList!3246 lt!1606219)) (= lambda!149162 lambda!149150))))

(declare-fun bs!728868 () Bool)

(assert (= bs!728868 (and b!4402124 b!4401751)))

(assert (=> bs!728868 (= (= (toList!3246 (extractMap!690 (toList!3245 lm!1707))) (toList!3246 lt!1606220)) (= lambda!149162 lambda!149066))))

(assert (=> b!4402124 true))

(declare-fun bs!728869 () Bool)

(declare-fun b!4402125 () Bool)

(assert (= bs!728869 (and b!4402125 b!4401694)))

(declare-fun lambda!149163 () Int)

(assert (=> bs!728869 (= lambda!149163 lambda!149049)))

(declare-fun bs!728870 () Bool)

(assert (= bs!728870 (and b!4402125 b!4401752)))

(assert (=> bs!728870 (= lambda!149163 lambda!149067)))

(declare-fun bs!728871 () Bool)

(assert (= bs!728871 (and b!4402125 b!4401767)))

(assert (=> bs!728871 (= lambda!149163 lambda!149069)))

(declare-fun bs!728872 () Bool)

(assert (= bs!728872 (and b!4402125 b!4402106)))

(assert (=> bs!728872 (= lambda!149163 lambda!149151)))

(assert (=> b!4402119 false))

(declare-fun lt!1606796 () Unit!78867)

(assert (=> b!4402119 (= lt!1606796 (forallContained!2008 (getKeysList!199 (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))) lambda!149156 (_1!27741 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))))))))

(declare-fun e!2741050 () Unit!78867)

(declare-fun Unit!78937 () Unit!78867)

(assert (=> b!4402119 (= e!2741050 Unit!78937)))

(declare-fun e!2741049 () List!49415)

(assert (=> b!4402120 (= e!2741049 (Cons!49291 (_1!27741 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))) (getKeysList!199 (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))))))))

(declare-fun c!749496 () Bool)

(assert (=> b!4402120 (= c!749496 (containsKey!945 (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (_1!27741 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))))))))

(declare-fun lt!1606793 () Unit!78867)

(declare-fun e!2741051 () Unit!78867)

(assert (=> b!4402120 (= lt!1606793 e!2741051)))

(declare-fun c!749498 () Bool)

(assert (=> b!4402120 (= c!749498 (contains!11686 (getKeysList!199 (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))) (_1!27741 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))))))))

(declare-fun lt!1606794 () Unit!78867)

(assert (=> b!4402120 (= lt!1606794 e!2741050)))

(declare-fun lt!1606795 () List!49415)

(assert (=> b!4402120 (= lt!1606795 (getKeysList!199 (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))))))

(declare-fun lt!1606792 () Unit!78867)

(assert (=> b!4402120 (= lt!1606792 (lemmaForallContainsAddHeadPreserves!61 (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) lt!1606795 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))))))

(assert (=> b!4402120 (forall!9375 lt!1606795 lambda!149157)))

(declare-fun lt!1606790 () Unit!78867)

(assert (=> b!4402120 (= lt!1606790 lt!1606792)))

(declare-fun b!4402121 () Bool)

(declare-fun res!1815856 () Bool)

(declare-fun e!2741052 () Bool)

(assert (=> b!4402121 (=> (not res!1815856) (not e!2741052))))

(declare-fun lt!1606791 () List!49415)

(assert (=> b!4402121 (= res!1815856 (= (length!134 lt!1606791) (length!135 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))))))

(declare-fun b!4402122 () Bool)

(assert (=> b!4402122 (= e!2741049 Nil!49291)))

(declare-fun d!1327709 () Bool)

(assert (=> d!1327709 e!2741052))

(declare-fun res!1815855 () Bool)

(assert (=> d!1327709 (=> (not res!1815855) (not e!2741052))))

(assert (=> d!1327709 (= res!1815855 (noDuplicate!639 lt!1606791))))

(assert (=> d!1327709 (= lt!1606791 e!2741049)))

(declare-fun c!749497 () Bool)

(assert (=> d!1327709 (= c!749497 ((_ is Cons!49288) (toList!3246 (extractMap!690 (toList!3245 lm!1707)))))))

(assert (=> d!1327709 (invariantList!752 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))))

(assert (=> d!1327709 (= (getKeysList!199 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) lt!1606791)))

(declare-fun b!4402123 () Bool)

(assert (=> b!4402123 false))

(declare-fun Unit!78938 () Unit!78867)

(assert (=> b!4402123 (= e!2741051 Unit!78938)))

(declare-fun res!1815854 () Bool)

(assert (=> b!4402124 (=> (not res!1815854) (not e!2741052))))

(assert (=> b!4402124 (= res!1815854 (forall!9375 lt!1606791 lambda!149162))))

(assert (=> b!4402125 (= e!2741052 (= (content!7875 lt!1606791) (content!7875 (map!10751 (toList!3246 (extractMap!690 (toList!3245 lm!1707))) lambda!149163))))))

(declare-fun b!4402126 () Bool)

(declare-fun Unit!78939 () Unit!78867)

(assert (=> b!4402126 (= e!2741050 Unit!78939)))

(declare-fun b!4402127 () Bool)

(declare-fun Unit!78940 () Unit!78867)

(assert (=> b!4402127 (= e!2741051 Unit!78940)))

(assert (= (and d!1327709 c!749497) b!4402120))

(assert (= (and d!1327709 (not c!749497)) b!4402122))

(assert (= (and b!4402120 c!749496) b!4402123))

(assert (= (and b!4402120 (not c!749496)) b!4402127))

(assert (= (and b!4402120 c!749498) b!4402119))

(assert (= (and b!4402120 (not c!749498)) b!4402126))

(assert (= (and d!1327709 res!1815855) b!4402121))

(assert (= (and b!4402121 res!1815856) b!4402124))

(assert (= (and b!4402124 res!1815854) b!4402125))

(declare-fun m!5065705 () Bool)

(assert (=> b!4402125 m!5065705))

(declare-fun m!5065707 () Bool)

(assert (=> b!4402125 m!5065707))

(assert (=> b!4402125 m!5065707))

(declare-fun m!5065709 () Bool)

(assert (=> b!4402125 m!5065709))

(declare-fun m!5065711 () Bool)

(assert (=> d!1327709 m!5065711))

(assert (=> d!1327709 m!5065141))

(declare-fun m!5065713 () Bool)

(assert (=> b!4402119 m!5065713))

(assert (=> b!4402119 m!5065713))

(declare-fun m!5065715 () Bool)

(assert (=> b!4402119 m!5065715))

(declare-fun m!5065717 () Bool)

(assert (=> b!4402120 m!5065717))

(assert (=> b!4402120 m!5065713))

(assert (=> b!4402120 m!5065713))

(declare-fun m!5065719 () Bool)

(assert (=> b!4402120 m!5065719))

(declare-fun m!5065721 () Bool)

(assert (=> b!4402120 m!5065721))

(declare-fun m!5065723 () Bool)

(assert (=> b!4402120 m!5065723))

(declare-fun m!5065725 () Bool)

(assert (=> b!4402124 m!5065725))

(declare-fun m!5065727 () Bool)

(assert (=> b!4402121 m!5065727))

(assert (=> b!4402121 m!5065035))

(assert (=> b!4401535 d!1327709))

(declare-fun b!4402134 () Bool)

(declare-fun e!2741055 () Bool)

(assert (=> b!4402134 (= e!2741055 (contains!11686 (keys!16753 lt!1606417) (_1!27741 lt!1606214)))))

(declare-fun b!4402135 () Bool)

(declare-fun e!2741056 () Unit!78867)

(declare-fun e!2741058 () Unit!78867)

(assert (=> b!4402135 (= e!2741056 e!2741058)))

(declare-fun c!749501 () Bool)

(declare-fun call!306335 () Bool)

(assert (=> b!4402135 (= c!749501 call!306335)))

(declare-fun b!4402136 () Bool)

(declare-fun e!2741057 () Bool)

(assert (=> b!4402136 (= e!2741057 (not (contains!11686 (keys!16753 lt!1606417) (_1!27741 lt!1606214))))))

(declare-fun b!4402137 () Bool)

(declare-fun Unit!78941 () Unit!78867)

(assert (=> b!4402137 (= e!2741058 Unit!78941)))

(declare-fun b!4402138 () Bool)

(assert (=> b!4402138 false))

(declare-fun lt!1606798 () Unit!78867)

(declare-fun lt!1606803 () Unit!78867)

(assert (=> b!4402138 (= lt!1606798 lt!1606803)))

(assert (=> b!4402138 (containsKey!945 (toList!3246 lt!1606417) (_1!27741 lt!1606214))))

(assert (=> b!4402138 (= lt!1606803 (lemmaInGetKeysListThenContainsKey!197 (toList!3246 lt!1606417) (_1!27741 lt!1606214)))))

(declare-fun Unit!78942 () Unit!78867)

(assert (=> b!4402138 (= e!2741058 Unit!78942)))

(declare-fun b!4402139 () Bool)

(declare-fun e!2741060 () List!49415)

(assert (=> b!4402139 (= e!2741060 (getKeysList!199 (toList!3246 lt!1606417)))))

(declare-fun bm!306330 () Bool)

(assert (=> bm!306330 (= call!306335 (contains!11686 e!2741060 (_1!27741 lt!1606214)))))

(declare-fun c!749499 () Bool)

(declare-fun c!749500 () Bool)

(assert (=> bm!306330 (= c!749499 c!749500)))

(declare-fun b!4402141 () Bool)

(declare-fun e!2741059 () Bool)

(assert (=> b!4402141 (= e!2741059 e!2741055)))

(declare-fun res!1815863 () Bool)

(assert (=> b!4402141 (=> (not res!1815863) (not e!2741055))))

(assert (=> b!4402141 (= res!1815863 (isDefined!7910 (getValueByKey!603 (toList!3246 lt!1606417) (_1!27741 lt!1606214))))))

(declare-fun b!4402142 () Bool)

(declare-fun lt!1606804 () Unit!78867)

(assert (=> b!4402142 (= e!2741056 lt!1606804)))

(declare-fun lt!1606799 () Unit!78867)

(assert (=> b!4402142 (= lt!1606799 (lemmaContainsKeyImpliesGetValueByKeyDefined!513 (toList!3246 lt!1606417) (_1!27741 lt!1606214)))))

(assert (=> b!4402142 (isDefined!7910 (getValueByKey!603 (toList!3246 lt!1606417) (_1!27741 lt!1606214)))))

(declare-fun lt!1606801 () Unit!78867)

(assert (=> b!4402142 (= lt!1606801 lt!1606799)))

(assert (=> b!4402142 (= lt!1606804 (lemmaInListThenGetKeysListContains!196 (toList!3246 lt!1606417) (_1!27741 lt!1606214)))))

(assert (=> b!4402142 call!306335))

(declare-fun d!1327711 () Bool)

(assert (=> d!1327711 e!2741059))

(declare-fun res!1815865 () Bool)

(assert (=> d!1327711 (=> res!1815865 e!2741059)))

(assert (=> d!1327711 (= res!1815865 e!2741057)))

(declare-fun res!1815864 () Bool)

(assert (=> d!1327711 (=> (not res!1815864) (not e!2741057))))

(declare-fun lt!1606802 () Bool)

(assert (=> d!1327711 (= res!1815864 (not lt!1606802))))

(declare-fun lt!1606800 () Bool)

(assert (=> d!1327711 (= lt!1606802 lt!1606800)))

(declare-fun lt!1606797 () Unit!78867)

(assert (=> d!1327711 (= lt!1606797 e!2741056)))

(assert (=> d!1327711 (= c!749500 lt!1606800)))

(assert (=> d!1327711 (= lt!1606800 (containsKey!945 (toList!3246 lt!1606417) (_1!27741 lt!1606214)))))

(assert (=> d!1327711 (= (contains!11681 lt!1606417 (_1!27741 lt!1606214)) lt!1606802)))

(declare-fun b!4402140 () Bool)

(assert (=> b!4402140 (= e!2741060 (keys!16753 lt!1606417))))

(assert (= (and d!1327711 c!749500) b!4402142))

(assert (= (and d!1327711 (not c!749500)) b!4402135))

(assert (= (and b!4402135 c!749501) b!4402138))

(assert (= (and b!4402135 (not c!749501)) b!4402137))

(assert (= (or b!4402142 b!4402135) bm!306330))

(assert (= (and bm!306330 c!749499) b!4402139))

(assert (= (and bm!306330 (not c!749499)) b!4402140))

(assert (= (and d!1327711 res!1815864) b!4402136))

(assert (= (and d!1327711 (not res!1815865)) b!4402141))

(assert (= (and b!4402141 res!1815863) b!4402134))

(declare-fun m!5065729 () Bool)

(assert (=> b!4402134 m!5065729))

(assert (=> b!4402134 m!5065729))

(declare-fun m!5065731 () Bool)

(assert (=> b!4402134 m!5065731))

(declare-fun m!5065733 () Bool)

(assert (=> d!1327711 m!5065733))

(declare-fun m!5065735 () Bool)

(assert (=> b!4402139 m!5065735))

(declare-fun m!5065737 () Bool)

(assert (=> bm!306330 m!5065737))

(assert (=> b!4402141 m!5064831))

(assert (=> b!4402141 m!5064831))

(declare-fun m!5065739 () Bool)

(assert (=> b!4402141 m!5065739))

(assert (=> b!4402138 m!5065733))

(declare-fun m!5065741 () Bool)

(assert (=> b!4402138 m!5065741))

(declare-fun m!5065743 () Bool)

(assert (=> b!4402142 m!5065743))

(assert (=> b!4402142 m!5064831))

(assert (=> b!4402142 m!5064831))

(assert (=> b!4402142 m!5065739))

(declare-fun m!5065745 () Bool)

(assert (=> b!4402142 m!5065745))

(assert (=> b!4402136 m!5065729))

(assert (=> b!4402136 m!5065729))

(assert (=> b!4402136 m!5065731))

(assert (=> b!4402140 m!5065729))

(assert (=> d!1327377 d!1327711))

(declare-fun b!4402154 () Bool)

(declare-fun e!2741066 () Option!10617)

(assert (=> b!4402154 (= e!2741066 (getValueByKey!603 (t!356346 lt!1606416) (_1!27741 lt!1606214)))))

(declare-fun b!4402153 () Bool)

(declare-fun e!2741065 () Option!10617)

(assert (=> b!4402153 (= e!2741065 e!2741066)))

(declare-fun c!749506 () Bool)

(assert (=> b!4402153 (= c!749506 (and ((_ is Cons!49288) lt!1606416) (not (= (_1!27741 (h!54915 lt!1606416)) (_1!27741 lt!1606214)))))))

(declare-fun d!1327713 () Bool)

(declare-fun c!749505 () Bool)

(assert (=> d!1327713 (= c!749505 (and ((_ is Cons!49288) lt!1606416) (= (_1!27741 (h!54915 lt!1606416)) (_1!27741 lt!1606214))))))

(assert (=> d!1327713 (= (getValueByKey!603 lt!1606416 (_1!27741 lt!1606214)) e!2741065)))

(declare-fun b!4402152 () Bool)

(assert (=> b!4402152 (= e!2741065 (Some!10616 (_2!27741 (h!54915 lt!1606416))))))

(declare-fun b!4402155 () Bool)

(assert (=> b!4402155 (= e!2741066 None!10616)))

(assert (= (and d!1327713 c!749505) b!4402152))

(assert (= (and d!1327713 (not c!749505)) b!4402153))

(assert (= (and b!4402153 c!749506) b!4402154))

(assert (= (and b!4402153 (not c!749506)) b!4402155))

(declare-fun m!5065747 () Bool)

(assert (=> b!4402154 m!5065747))

(assert (=> d!1327377 d!1327713))

(declare-fun d!1327715 () Bool)

(assert (=> d!1327715 (= (getValueByKey!603 lt!1606416 (_1!27741 lt!1606214)) (Some!10616 (_2!27741 lt!1606214)))))

(declare-fun lt!1606814 () Unit!78867)

(declare-fun choose!27623 (List!49412 K!10645 V!10891) Unit!78867)

(assert (=> d!1327715 (= lt!1606814 (choose!27623 lt!1606416 (_1!27741 lt!1606214) (_2!27741 lt!1606214)))))

(declare-fun e!2741069 () Bool)

(assert (=> d!1327715 e!2741069))

(declare-fun res!1815873 () Bool)

(assert (=> d!1327715 (=> (not res!1815873) (not e!2741069))))

(assert (=> d!1327715 (= res!1815873 (invariantList!752 lt!1606416))))

(assert (=> d!1327715 (= (lemmaContainsTupThenGetReturnValue!349 lt!1606416 (_1!27741 lt!1606214) (_2!27741 lt!1606214)) lt!1606814)))

(declare-fun b!4402162 () Bool)

(declare-fun res!1815874 () Bool)

(assert (=> b!4402162 (=> (not res!1815874) (not e!2741069))))

(assert (=> b!4402162 (= res!1815874 (containsKey!945 lt!1606416 (_1!27741 lt!1606214)))))

(declare-fun b!4402163 () Bool)

(assert (=> b!4402163 (= e!2741069 (contains!11687 lt!1606416 (tuple2!48895 (_1!27741 lt!1606214) (_2!27741 lt!1606214))))))

(assert (= (and d!1327715 res!1815873) b!4402162))

(assert (= (and b!4402162 res!1815874) b!4402163))

(assert (=> d!1327715 m!5064825))

(declare-fun m!5065773 () Bool)

(assert (=> d!1327715 m!5065773))

(declare-fun m!5065775 () Bool)

(assert (=> d!1327715 m!5065775))

(declare-fun m!5065779 () Bool)

(assert (=> b!4402162 m!5065779))

(declare-fun m!5065783 () Bool)

(assert (=> b!4402163 m!5065783))

(assert (=> d!1327377 d!1327715))

(declare-fun b!4402231 () Bool)

(declare-fun e!2741109 () List!49412)

(declare-fun call!306348 () List!49412)

(assert (=> b!4402231 (= e!2741109 call!306348)))

(declare-fun b!4402232 () Bool)

(assert (=> b!4402232 false))

(declare-fun lt!1606880 () Unit!78867)

(declare-fun lt!1606886 () Unit!78867)

(assert (=> b!4402232 (= lt!1606880 lt!1606886)))

(assert (=> b!4402232 (containsKey!945 (t!356346 (toList!3246 lt!1606219)) (_1!27741 (h!54915 (toList!3246 lt!1606219))))))

(assert (=> b!4402232 (= lt!1606886 (lemmaInGetKeysListThenContainsKey!197 (t!356346 (toList!3246 lt!1606219)) (_1!27741 (h!54915 (toList!3246 lt!1606219)))))))

(declare-fun lt!1606884 () Unit!78867)

(declare-fun lt!1606879 () Unit!78867)

(assert (=> b!4402232 (= lt!1606884 lt!1606879)))

(declare-fun call!306350 () List!49415)

(assert (=> b!4402232 (contains!11686 call!306350 (_1!27741 (h!54915 (toList!3246 lt!1606219))))))

(declare-fun lt!1606883 () List!49412)

(assert (=> b!4402232 (= lt!1606879 (lemmaInListThenGetKeysListContains!196 lt!1606883 (_1!27741 (h!54915 (toList!3246 lt!1606219)))))))

(assert (=> b!4402232 (= lt!1606883 (insertNoDuplicatedKeys!151 (t!356346 (toList!3246 lt!1606219)) (_1!27741 lt!1606214) (_2!27741 lt!1606214)))))

(declare-fun e!2741115 () Unit!78867)

(declare-fun Unit!78943 () Unit!78867)

(assert (=> b!4402232 (= e!2741115 Unit!78943)))

(declare-fun c!749529 () Bool)

(declare-fun call!306347 () List!49412)

(declare-fun bm!306342 () Bool)

(declare-fun e!2741110 () List!49412)

(declare-fun c!749527 () Bool)

(declare-fun c!749528 () Bool)

(declare-fun $colon$colon!755 (List!49412 tuple2!48894) List!49412)

(assert (=> bm!306342 (= call!306347 ($colon$colon!755 (ite c!749528 (t!356346 (toList!3246 lt!1606219)) (ite c!749527 (toList!3246 lt!1606219) e!2741110)) (ite (or c!749528 c!749527) (tuple2!48895 (_1!27741 lt!1606214) (_2!27741 lt!1606214)) (ite c!749529 (h!54915 (toList!3246 lt!1606219)) (tuple2!48895 (_1!27741 lt!1606214) (_2!27741 lt!1606214))))))))

(declare-fun b!4402233 () Bool)

(declare-fun e!2741112 () List!49412)

(declare-fun lt!1606885 () List!49412)

(assert (=> b!4402233 (= e!2741112 lt!1606885)))

(declare-fun call!306349 () List!49412)

(assert (=> b!4402233 (= lt!1606885 call!306349)))

(declare-fun c!749526 () Bool)

(assert (=> b!4402233 (= c!749526 (containsKey!945 (insertNoDuplicatedKeys!151 (t!356346 (toList!3246 lt!1606219)) (_1!27741 lt!1606214) (_2!27741 lt!1606214)) (_1!27741 (h!54915 (toList!3246 lt!1606219)))))))

(declare-fun lt!1606881 () Unit!78867)

(assert (=> b!4402233 (= lt!1606881 e!2741115)))

(declare-fun b!4402234 () Bool)

(declare-fun res!1815905 () Bool)

(declare-fun e!2741111 () Bool)

(assert (=> b!4402234 (=> (not res!1815905) (not e!2741111))))

(declare-fun lt!1606878 () List!49412)

(assert (=> b!4402234 (= res!1815905 (containsKey!945 lt!1606878 (_1!27741 lt!1606214)))))

(declare-fun bm!306343 () Bool)

(assert (=> bm!306343 (= call!306350 (getKeysList!199 (ite c!749528 (toList!3246 lt!1606219) lt!1606883)))))

(declare-fun b!4402235 () Bool)

(declare-fun e!2741114 () Bool)

(assert (=> b!4402235 (= e!2741114 (not (containsKey!945 (toList!3246 lt!1606219) (_1!27741 lt!1606214))))))

(declare-fun b!4402237 () Bool)

(assert (=> b!4402237 (= e!2741112 call!306349)))

(declare-fun bm!306344 () Bool)

(assert (=> bm!306344 (= call!306349 call!306348)))

(declare-fun c!749530 () Bool)

(assert (=> bm!306344 (= c!749530 c!749529)))

(declare-fun b!4402238 () Bool)

(declare-fun res!1815904 () Bool)

(assert (=> b!4402238 (=> (not res!1815904) (not e!2741111))))

(assert (=> b!4402238 (= res!1815904 (contains!11687 lt!1606878 (tuple2!48895 (_1!27741 lt!1606214) (_2!27741 lt!1606214))))))

(declare-fun b!4402239 () Bool)

(declare-fun e!2741113 () List!49412)

(assert (=> b!4402239 (= e!2741113 e!2741109)))

(declare-fun res!1815906 () Bool)

(assert (=> b!4402239 (= res!1815906 ((_ is Cons!49288) (toList!3246 lt!1606219)))))

(assert (=> b!4402239 (=> (not res!1815906) (not e!2741114))))

(assert (=> b!4402239 (= c!749527 e!2741114)))

(declare-fun b!4402240 () Bool)

(assert (=> b!4402240 (= e!2741113 call!306347)))

(declare-fun lt!1606877 () List!49415)

(assert (=> b!4402240 (= lt!1606877 call!306350)))

(declare-fun lt!1606887 () Unit!78867)

(declare-fun lemmaSubseqRefl!88 (List!49415) Unit!78867)

(assert (=> b!4402240 (= lt!1606887 (lemmaSubseqRefl!88 lt!1606877))))

(declare-fun subseq!604 (List!49415 List!49415) Bool)

(assert (=> b!4402240 (subseq!604 lt!1606877 lt!1606877)))

(declare-fun lt!1606882 () Unit!78867)

(assert (=> b!4402240 (= lt!1606882 lt!1606887)))

(declare-fun b!4402241 () Bool)

(assert (=> b!4402241 (= e!2741111 (= (content!7875 (getKeysList!199 lt!1606878)) ((_ map or) (content!7875 (getKeysList!199 (toList!3246 lt!1606219))) (store ((as const (Array K!10645 Bool)) false) (_1!27741 lt!1606214) true))))))

(declare-fun b!4402242 () Bool)

(assert (=> b!4402242 (= c!749529 ((_ is Cons!49288) (toList!3246 lt!1606219)))))

(assert (=> b!4402242 (= e!2741109 e!2741112)))

(declare-fun b!4402243 () Bool)

(assert (=> b!4402243 (= e!2741110 (insertNoDuplicatedKeys!151 (t!356346 (toList!3246 lt!1606219)) (_1!27741 lt!1606214) (_2!27741 lt!1606214)))))

(declare-fun bm!306345 () Bool)

(assert (=> bm!306345 (= call!306348 call!306347)))

(declare-fun b!4402244 () Bool)

(declare-fun Unit!78947 () Unit!78867)

(assert (=> b!4402244 (= e!2741115 Unit!78947)))

(declare-fun b!4402236 () Bool)

(assert (=> b!4402236 (= e!2741110 Nil!49288)))

(declare-fun d!1327721 () Bool)

(assert (=> d!1327721 e!2741111))

(declare-fun res!1815907 () Bool)

(assert (=> d!1327721 (=> (not res!1815907) (not e!2741111))))

(assert (=> d!1327721 (= res!1815907 (invariantList!752 lt!1606878))))

(assert (=> d!1327721 (= lt!1606878 e!2741113)))

(assert (=> d!1327721 (= c!749528 (and ((_ is Cons!49288) (toList!3246 lt!1606219)) (= (_1!27741 (h!54915 (toList!3246 lt!1606219))) (_1!27741 lt!1606214))))))

(assert (=> d!1327721 (invariantList!752 (toList!3246 lt!1606219))))

(assert (=> d!1327721 (= (insertNoDuplicatedKeys!151 (toList!3246 lt!1606219) (_1!27741 lt!1606214) (_2!27741 lt!1606214)) lt!1606878)))

(assert (= (and d!1327721 c!749528) b!4402240))

(assert (= (and d!1327721 (not c!749528)) b!4402239))

(assert (= (and b!4402239 res!1815906) b!4402235))

(assert (= (and b!4402239 c!749527) b!4402231))

(assert (= (and b!4402239 (not c!749527)) b!4402242))

(assert (= (and b!4402242 c!749529) b!4402233))

(assert (= (and b!4402242 (not c!749529)) b!4402237))

(assert (= (and b!4402233 c!749526) b!4402232))

(assert (= (and b!4402233 (not c!749526)) b!4402244))

(assert (= (or b!4402233 b!4402237) bm!306344))

(assert (= (and bm!306344 c!749530) b!4402243))

(assert (= (and bm!306344 (not c!749530)) b!4402236))

(assert (= (or b!4402231 bm!306344) bm!306345))

(assert (= (or b!4402240 b!4402232) bm!306343))

(assert (= (or b!4402240 bm!306345) bm!306342))

(assert (= (and d!1327721 res!1815907) b!4402234))

(assert (= (and b!4402234 res!1815905) b!4402238))

(assert (= (and b!4402238 res!1815904) b!4402241))

(declare-fun m!5065865 () Bool)

(assert (=> b!4402235 m!5065865))

(declare-fun m!5065867 () Bool)

(assert (=> b!4402232 m!5065867))

(declare-fun m!5065869 () Bool)

(assert (=> b!4402232 m!5065869))

(declare-fun m!5065871 () Bool)

(assert (=> b!4402232 m!5065871))

(declare-fun m!5065873 () Bool)

(assert (=> b!4402232 m!5065873))

(declare-fun m!5065875 () Bool)

(assert (=> b!4402232 m!5065875))

(declare-fun m!5065877 () Bool)

(assert (=> bm!306343 m!5065877))

(assert (=> b!4402243 m!5065873))

(assert (=> b!4402233 m!5065873))

(assert (=> b!4402233 m!5065873))

(declare-fun m!5065879 () Bool)

(assert (=> b!4402233 m!5065879))

(declare-fun m!5065881 () Bool)

(assert (=> d!1327721 m!5065881))

(assert (=> d!1327721 m!5065181))

(declare-fun m!5065883 () Bool)

(assert (=> b!4402241 m!5065883))

(declare-fun m!5065885 () Bool)

(assert (=> b!4402241 m!5065885))

(assert (=> b!4402241 m!5064715))

(declare-fun m!5065887 () Bool)

(assert (=> b!4402241 m!5065887))

(assert (=> b!4402241 m!5064715))

(declare-fun m!5065889 () Bool)

(assert (=> b!4402241 m!5065889))

(assert (=> b!4402241 m!5065883))

(declare-fun m!5065891 () Bool)

(assert (=> b!4402238 m!5065891))

(declare-fun m!5065893 () Bool)

(assert (=> b!4402234 m!5065893))

(declare-fun m!5065895 () Bool)

(assert (=> b!4402240 m!5065895))

(declare-fun m!5065897 () Bool)

(assert (=> b!4402240 m!5065897))

(declare-fun m!5065899 () Bool)

(assert (=> bm!306342 m!5065899))

(assert (=> d!1327377 d!1327721))

(declare-fun bs!728978 () Bool)

(declare-fun b!4402245 () Bool)

(assert (= bs!728978 (and b!4402245 b!4401874)))

(declare-fun lambda!149180 () Int)

(assert (=> bs!728978 (= (= (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149180 lambda!149137))))

(declare-fun bs!728979 () Bool)

(assert (= bs!728979 (and b!4402245 d!1327523)))

(assert (=> bs!728979 (= (= (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) lt!1606684) (= lambda!149180 lambda!149141))))

(declare-fun bs!728980 () Bool)

(assert (= bs!728980 (and b!4402245 b!4401871)))

(assert (=> bs!728980 (= (= (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149180 lambda!149136))))

(declare-fun bs!728981 () Bool)

(assert (= bs!728981 (and b!4402245 b!4401949)))

(assert (=> bs!728981 (= (= (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149180 lambda!149145))))

(declare-fun bs!728982 () Bool)

(assert (= bs!728982 (and b!4402245 b!4401952)))

(assert (=> bs!728982 (= (= (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) lt!1606724) (= lambda!149180 lambda!149147))))

(assert (=> bs!728978 (= (= (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) lt!1606688) (= lambda!149180 lambda!149139))))

(declare-fun bs!728983 () Bool)

(assert (= bs!728983 (and b!4402245 d!1327397)))

(assert (=> bs!728983 (not (= lambda!149180 lambda!149040))))

(declare-fun bs!728984 () Bool)

(assert (= bs!728984 (and b!4402245 d!1327621)))

(assert (=> bs!728984 (= (= (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) lt!1606720) (= lambda!149180 lambda!149148))))

(assert (=> bs!728982 (= (= (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149180 lambda!149146))))

(assert (=> b!4402245 true))

(declare-fun bs!728985 () Bool)

(declare-fun b!4402248 () Bool)

(assert (= bs!728985 (and b!4402248 d!1327523)))

(declare-fun lambda!149181 () Int)

(assert (=> bs!728985 (= (= (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) lt!1606684) (= lambda!149181 lambda!149141))))

(declare-fun bs!728986 () Bool)

(assert (= bs!728986 (and b!4402248 b!4401871)))

(assert (=> bs!728986 (= (= (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149181 lambda!149136))))

(declare-fun bs!728987 () Bool)

(assert (= bs!728987 (and b!4402248 b!4401949)))

(assert (=> bs!728987 (= (= (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149181 lambda!149145))))

(declare-fun bs!728988 () Bool)

(assert (= bs!728988 (and b!4402248 b!4401952)))

(assert (=> bs!728988 (= (= (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) lt!1606724) (= lambda!149181 lambda!149147))))

(declare-fun bs!728989 () Bool)

(assert (= bs!728989 (and b!4402248 b!4401874)))

(assert (=> bs!728989 (= (= (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) lt!1606688) (= lambda!149181 lambda!149139))))

(declare-fun bs!728990 () Bool)

(assert (= bs!728990 (and b!4402248 d!1327397)))

(assert (=> bs!728990 (not (= lambda!149181 lambda!149040))))

(declare-fun bs!728991 () Bool)

(assert (= bs!728991 (and b!4402248 d!1327621)))

(assert (=> bs!728991 (= (= (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) lt!1606720) (= lambda!149181 lambda!149148))))

(assert (=> bs!728988 (= (= (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149181 lambda!149146))))

(assert (=> bs!728989 (= (= (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149181 lambda!149137))))

(declare-fun bs!728992 () Bool)

(assert (= bs!728992 (and b!4402248 b!4402245)))

(assert (=> bs!728992 (= lambda!149181 lambda!149180)))

(assert (=> b!4402248 true))

(declare-fun lambda!149182 () Int)

(declare-fun lt!1606897 () ListMap!2489)

(assert (=> b!4402248 (= (= lt!1606897 (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))) (= lambda!149182 lambda!149181))))

(assert (=> bs!728985 (= (= lt!1606897 lt!1606684) (= lambda!149182 lambda!149141))))

(assert (=> bs!728986 (= (= lt!1606897 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149182 lambda!149136))))

(assert (=> bs!728987 (= (= lt!1606897 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149182 lambda!149145))))

(assert (=> bs!728988 (= (= lt!1606897 lt!1606724) (= lambda!149182 lambda!149147))))

(assert (=> bs!728989 (= (= lt!1606897 lt!1606688) (= lambda!149182 lambda!149139))))

(assert (=> bs!728990 (not (= lambda!149182 lambda!149040))))

(assert (=> bs!728991 (= (= lt!1606897 lt!1606720) (= lambda!149182 lambda!149148))))

(assert (=> bs!728988 (= (= lt!1606897 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149182 lambda!149146))))

(assert (=> bs!728989 (= (= lt!1606897 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149182 lambda!149137))))

(assert (=> bs!728992 (= (= lt!1606897 (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))) (= lambda!149182 lambda!149180))))

(assert (=> b!4402248 true))

(declare-fun bs!729003 () Bool)

(declare-fun d!1327747 () Bool)

(assert (= bs!729003 (and d!1327747 b!4402248)))

(declare-fun lambda!149184 () Int)

(declare-fun lt!1606893 () ListMap!2489)

(assert (=> bs!729003 (= (= lt!1606893 (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))) (= lambda!149184 lambda!149181))))

(assert (=> bs!729003 (= (= lt!1606893 lt!1606897) (= lambda!149184 lambda!149182))))

(declare-fun bs!729004 () Bool)

(assert (= bs!729004 (and d!1327747 d!1327523)))

(assert (=> bs!729004 (= (= lt!1606893 lt!1606684) (= lambda!149184 lambda!149141))))

(declare-fun bs!729005 () Bool)

(assert (= bs!729005 (and d!1327747 b!4401871)))

(assert (=> bs!729005 (= (= lt!1606893 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149184 lambda!149136))))

(declare-fun bs!729007 () Bool)

(assert (= bs!729007 (and d!1327747 b!4401949)))

(assert (=> bs!729007 (= (= lt!1606893 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149184 lambda!149145))))

(declare-fun bs!729008 () Bool)

(assert (= bs!729008 (and d!1327747 b!4401952)))

(assert (=> bs!729008 (= (= lt!1606893 lt!1606724) (= lambda!149184 lambda!149147))))

(declare-fun bs!729010 () Bool)

(assert (= bs!729010 (and d!1327747 b!4401874)))

(assert (=> bs!729010 (= (= lt!1606893 lt!1606688) (= lambda!149184 lambda!149139))))

(declare-fun bs!729012 () Bool)

(assert (= bs!729012 (and d!1327747 d!1327397)))

(assert (=> bs!729012 (not (= lambda!149184 lambda!149040))))

(declare-fun bs!729013 () Bool)

(assert (= bs!729013 (and d!1327747 d!1327621)))

(assert (=> bs!729013 (= (= lt!1606893 lt!1606720) (= lambda!149184 lambda!149148))))

(assert (=> bs!729008 (= (= lt!1606893 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149184 lambda!149146))))

(assert (=> bs!729010 (= (= lt!1606893 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149184 lambda!149137))))

(declare-fun bs!729015 () Bool)

(assert (= bs!729015 (and d!1327747 b!4402245)))

(assert (=> bs!729015 (= (= lt!1606893 (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))) (= lambda!149184 lambda!149180))))

(assert (=> d!1327747 true))

(declare-fun call!306352 () Bool)

(declare-fun c!749531 () Bool)

(declare-fun bm!306346 () Bool)

(assert (=> bm!306346 (= call!306352 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))) (ite c!749531 lambda!149180 lambda!149182)))))

(declare-fun call!306353 () Bool)

(declare-fun bm!306347 () Bool)

(assert (=> bm!306347 (= call!306353 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))) (ite c!749531 lambda!149180 lambda!149181)))))

(declare-fun b!4402246 () Bool)

(declare-fun e!2741118 () Bool)

(assert (=> b!4402246 (= e!2741118 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))) lambda!149182))))

(declare-fun b!4402247 () Bool)

(declare-fun res!1815908 () Bool)

(declare-fun e!2741117 () Bool)

(assert (=> b!4402247 (=> (not res!1815908) (not e!2741117))))

(assert (=> b!4402247 (= res!1815908 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))) lambda!149184))))

(declare-fun bm!306348 () Bool)

(declare-fun call!306351 () Unit!78867)

(assert (=> bm!306348 (= call!306351 (lemmaContainsAllItsOwnKeys!131 (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))))))

(assert (=> d!1327747 e!2741117))

(declare-fun res!1815910 () Bool)

(assert (=> d!1327747 (=> (not res!1815910) (not e!2741117))))

(assert (=> d!1327747 (= res!1815910 (forall!9374 (_2!27742 (h!54916 (toList!3245 (+!877 lt!1606217 lt!1606215)))) lambda!149184))))

(declare-fun e!2741116 () ListMap!2489)

(assert (=> d!1327747 (= lt!1606893 e!2741116)))

(assert (=> d!1327747 (= c!749531 ((_ is Nil!49288) (_2!27742 (h!54916 (toList!3245 (+!877 lt!1606217 lt!1606215))))))))

(assert (=> d!1327747 (noDuplicateKeys!631 (_2!27742 (h!54916 (toList!3245 (+!877 lt!1606217 lt!1606215)))))))

(assert (=> d!1327747 (= (addToMapMapFromBucket!297 (_2!27742 (h!54916 (toList!3245 (+!877 lt!1606217 lt!1606215)))) (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))) lt!1606893)))

(assert (=> b!4402245 (= e!2741116 (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))))))

(declare-fun lt!1606901 () Unit!78867)

(assert (=> b!4402245 (= lt!1606901 call!306351)))

(assert (=> b!4402245 call!306353))

(declare-fun lt!1606888 () Unit!78867)

(assert (=> b!4402245 (= lt!1606888 lt!1606901)))

(assert (=> b!4402245 call!306352))

(declare-fun lt!1606889 () Unit!78867)

(declare-fun Unit!78949 () Unit!78867)

(assert (=> b!4402245 (= lt!1606889 Unit!78949)))

(assert (=> b!4402248 (= e!2741116 lt!1606897)))

(declare-fun lt!1606908 () ListMap!2489)

(assert (=> b!4402248 (= lt!1606908 (+!878 (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) (h!54915 (_2!27742 (h!54916 (toList!3245 (+!877 lt!1606217 lt!1606215)))))))))

(assert (=> b!4402248 (= lt!1606897 (addToMapMapFromBucket!297 (t!356346 (_2!27742 (h!54916 (toList!3245 (+!877 lt!1606217 lt!1606215))))) (+!878 (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) (h!54915 (_2!27742 (h!54916 (toList!3245 (+!877 lt!1606217 lt!1606215))))))))))

(declare-fun lt!1606898 () Unit!78867)

(assert (=> b!4402248 (= lt!1606898 call!306351)))

(assert (=> b!4402248 call!306353))

(declare-fun lt!1606891 () Unit!78867)

(assert (=> b!4402248 (= lt!1606891 lt!1606898)))

(assert (=> b!4402248 (forall!9374 (toList!3246 lt!1606908) lambda!149182)))

(declare-fun lt!1606896 () Unit!78867)

(declare-fun Unit!78950 () Unit!78867)

(assert (=> b!4402248 (= lt!1606896 Unit!78950)))

(assert (=> b!4402248 (forall!9374 (t!356346 (_2!27742 (h!54916 (toList!3245 (+!877 lt!1606217 lt!1606215))))) lambda!149182)))

(declare-fun lt!1606905 () Unit!78867)

(declare-fun Unit!78951 () Unit!78867)

(assert (=> b!4402248 (= lt!1606905 Unit!78951)))

(declare-fun lt!1606895 () Unit!78867)

(declare-fun Unit!78952 () Unit!78867)

(assert (=> b!4402248 (= lt!1606895 Unit!78952)))

(declare-fun lt!1606899 () Unit!78867)

(assert (=> b!4402248 (= lt!1606899 (forallContained!2010 (toList!3246 lt!1606908) lambda!149182 (h!54915 (_2!27742 (h!54916 (toList!3245 (+!877 lt!1606217 lt!1606215)))))))))

(assert (=> b!4402248 (contains!11681 lt!1606908 (_1!27741 (h!54915 (_2!27742 (h!54916 (toList!3245 (+!877 lt!1606217 lt!1606215)))))))))

(declare-fun lt!1606900 () Unit!78867)

(declare-fun Unit!78953 () Unit!78867)

(assert (=> b!4402248 (= lt!1606900 Unit!78953)))

(assert (=> b!4402248 (contains!11681 lt!1606897 (_1!27741 (h!54915 (_2!27742 (h!54916 (toList!3245 (+!877 lt!1606217 lt!1606215)))))))))

(declare-fun lt!1606907 () Unit!78867)

(declare-fun Unit!78954 () Unit!78867)

(assert (=> b!4402248 (= lt!1606907 Unit!78954)))

(assert (=> b!4402248 (forall!9374 (_2!27742 (h!54916 (toList!3245 (+!877 lt!1606217 lt!1606215)))) lambda!149182)))

(declare-fun lt!1606904 () Unit!78867)

(declare-fun Unit!78955 () Unit!78867)

(assert (=> b!4402248 (= lt!1606904 Unit!78955)))

(assert (=> b!4402248 (forall!9374 (toList!3246 lt!1606908) lambda!149182)))

(declare-fun lt!1606902 () Unit!78867)

(declare-fun Unit!78956 () Unit!78867)

(assert (=> b!4402248 (= lt!1606902 Unit!78956)))

(declare-fun lt!1606906 () Unit!78867)

(declare-fun Unit!78957 () Unit!78867)

(assert (=> b!4402248 (= lt!1606906 Unit!78957)))

(declare-fun lt!1606890 () Unit!78867)

(assert (=> b!4402248 (= lt!1606890 (addForallContainsKeyThenBeforeAdding!131 (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) lt!1606897 (_1!27741 (h!54915 (_2!27742 (h!54916 (toList!3245 (+!877 lt!1606217 lt!1606215)))))) (_2!27741 (h!54915 (_2!27742 (h!54916 (toList!3245 (+!877 lt!1606217 lt!1606215))))))))))

(assert (=> b!4402248 call!306352))

(declare-fun lt!1606892 () Unit!78867)

(assert (=> b!4402248 (= lt!1606892 lt!1606890)))

(assert (=> b!4402248 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))) lambda!149182)))

(declare-fun lt!1606894 () Unit!78867)

(declare-fun Unit!78958 () Unit!78867)

(assert (=> b!4402248 (= lt!1606894 Unit!78958)))

(declare-fun res!1815909 () Bool)

(assert (=> b!4402248 (= res!1815909 (forall!9374 (_2!27742 (h!54916 (toList!3245 (+!877 lt!1606217 lt!1606215)))) lambda!149182))))

(assert (=> b!4402248 (=> (not res!1815909) (not e!2741118))))

(assert (=> b!4402248 e!2741118))

(declare-fun lt!1606903 () Unit!78867)

(declare-fun Unit!78959 () Unit!78867)

(assert (=> b!4402248 (= lt!1606903 Unit!78959)))

(declare-fun b!4402249 () Bool)

(assert (=> b!4402249 (= e!2741117 (invariantList!752 (toList!3246 lt!1606893)))))

(assert (= (and d!1327747 c!749531) b!4402245))

(assert (= (and d!1327747 (not c!749531)) b!4402248))

(assert (= (and b!4402248 res!1815909) b!4402246))

(assert (= (or b!4402245 b!4402248) bm!306348))

(assert (= (or b!4402245 b!4402248) bm!306347))

(assert (= (or b!4402245 b!4402248) bm!306346))

(assert (= (and d!1327747 res!1815910) b!4402247))

(assert (= (and b!4402247 res!1815908) b!4402249))

(assert (=> b!4402248 m!5064813))

(declare-fun m!5065937 () Bool)

(assert (=> b!4402248 m!5065937))

(declare-fun m!5065939 () Bool)

(assert (=> b!4402248 m!5065939))

(declare-fun m!5065941 () Bool)

(assert (=> b!4402248 m!5065941))

(assert (=> b!4402248 m!5064813))

(assert (=> b!4402248 m!5065939))

(declare-fun m!5065943 () Bool)

(assert (=> b!4402248 m!5065943))

(declare-fun m!5065945 () Bool)

(assert (=> b!4402248 m!5065945))

(declare-fun m!5065947 () Bool)

(assert (=> b!4402248 m!5065947))

(assert (=> b!4402248 m!5065943))

(declare-fun m!5065949 () Bool)

(assert (=> b!4402248 m!5065949))

(assert (=> b!4402248 m!5065945))

(declare-fun m!5065951 () Bool)

(assert (=> b!4402248 m!5065951))

(declare-fun m!5065953 () Bool)

(assert (=> b!4402248 m!5065953))

(declare-fun m!5065955 () Bool)

(assert (=> b!4402248 m!5065955))

(declare-fun m!5065957 () Bool)

(assert (=> b!4402247 m!5065957))

(declare-fun m!5065959 () Bool)

(assert (=> bm!306346 m!5065959))

(declare-fun m!5065961 () Bool)

(assert (=> d!1327747 m!5065961))

(declare-fun m!5065963 () Bool)

(assert (=> d!1327747 m!5065963))

(declare-fun m!5065965 () Bool)

(assert (=> b!4402249 m!5065965))

(declare-fun m!5065967 () Bool)

(assert (=> bm!306347 m!5065967))

(assert (=> b!4402246 m!5065947))

(assert (=> bm!306348 m!5064813))

(declare-fun m!5065969 () Bool)

(assert (=> bm!306348 m!5065969))

(assert (=> b!4401503 d!1327747))

(declare-fun bs!729023 () Bool)

(declare-fun d!1327757 () Bool)

(assert (= bs!729023 (and d!1327757 d!1327365)))

(declare-fun lambda!149187 () Int)

(assert (=> bs!729023 (= lambda!149187 lambda!149034)))

(declare-fun bs!729024 () Bool)

(assert (= bs!729024 (and d!1327757 d!1327379)))

(assert (=> bs!729024 (= lambda!149187 lambda!149036)))

(declare-fun bs!729025 () Bool)

(assert (= bs!729025 (and d!1327757 d!1327577)))

(assert (=> bs!729025 (= lambda!149187 lambda!149144)))

(declare-fun bs!729026 () Bool)

(assert (= bs!729026 (and d!1327757 d!1327395)))

(assert (=> bs!729026 (= lambda!149187 lambda!149037)))

(declare-fun bs!729027 () Bool)

(assert (= bs!729027 (and d!1327757 d!1327343)))

(assert (=> bs!729027 (= lambda!149187 lambda!149028)))

(declare-fun bs!729028 () Bool)

(assert (= bs!729028 (and d!1327757 d!1327371)))

(assert (=> bs!729028 (= lambda!149187 lambda!149035)))

(declare-fun bs!729029 () Bool)

(assert (= bs!729029 (and d!1327757 d!1327399)))

(assert (=> bs!729029 (not (= lambda!149187 lambda!149043))))

(declare-fun bs!729030 () Bool)

(assert (= bs!729030 (and d!1327757 d!1327625)))

(assert (=> bs!729030 (= lambda!149187 lambda!149149)))

(declare-fun bs!729031 () Bool)

(assert (= bs!729031 (and d!1327757 start!427908)))

(assert (=> bs!729031 (= lambda!149187 lambda!149007)))

(declare-fun bs!729032 () Bool)

(assert (= bs!729032 (and d!1327757 d!1327363)))

(assert (=> bs!729032 (= lambda!149187 lambda!149031)))

(declare-fun lt!1606931 () ListMap!2489)

(assert (=> d!1327757 (invariantList!752 (toList!3246 lt!1606931))))

(declare-fun e!2741128 () ListMap!2489)

(assert (=> d!1327757 (= lt!1606931 e!2741128)))

(declare-fun c!749533 () Bool)

(assert (=> d!1327757 (= c!749533 ((_ is Cons!49289) (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))))))

(assert (=> d!1327757 (forall!9372 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))) lambda!149187)))

(assert (=> d!1327757 (= (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))) lt!1606931)))

(declare-fun b!4402261 () Bool)

(assert (=> b!4402261 (= e!2741128 (addToMapMapFromBucket!297 (_2!27742 (h!54916 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))) (extractMap!690 (t!356347 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215)))))))))

(declare-fun b!4402262 () Bool)

(assert (=> b!4402262 (= e!2741128 (ListMap!2490 Nil!49288))))

(assert (= (and d!1327757 c!749533) b!4402261))

(assert (= (and d!1327757 (not c!749533)) b!4402262))

(declare-fun m!5065971 () Bool)

(assert (=> d!1327757 m!5065971))

(declare-fun m!5065973 () Bool)

(assert (=> d!1327757 m!5065973))

(declare-fun m!5065975 () Bool)

(assert (=> b!4402261 m!5065975))

(assert (=> b!4402261 m!5065975))

(declare-fun m!5065977 () Bool)

(assert (=> b!4402261 m!5065977))

(assert (=> b!4401503 d!1327757))

(declare-fun d!1327759 () Bool)

(declare-fun res!1815920 () Bool)

(declare-fun e!2741129 () Bool)

(assert (=> d!1327759 (=> res!1815920 e!2741129)))

(assert (=> d!1327759 (= res!1815920 ((_ is Nil!49289) (t!356347 (toList!3245 lm!1707))))))

(assert (=> d!1327759 (= (forall!9372 (t!356347 (toList!3245 lm!1707)) lambda!149007) e!2741129)))

(declare-fun b!4402263 () Bool)

(declare-fun e!2741130 () Bool)

(assert (=> b!4402263 (= e!2741129 e!2741130)))

(declare-fun res!1815921 () Bool)

(assert (=> b!4402263 (=> (not res!1815921) (not e!2741130))))

(assert (=> b!4402263 (= res!1815921 (dynLambda!20766 lambda!149007 (h!54916 (t!356347 (toList!3245 lm!1707)))))))

(declare-fun b!4402264 () Bool)

(assert (=> b!4402264 (= e!2741130 (forall!9372 (t!356347 (t!356347 (toList!3245 lm!1707))) lambda!149007))))

(assert (= (and d!1327759 (not res!1815920)) b!4402263))

(assert (= (and b!4402263 res!1815921) b!4402264))

(declare-fun b_lambda!139927 () Bool)

(assert (=> (not b_lambda!139927) (not b!4402263)))

(declare-fun m!5065979 () Bool)

(assert (=> b!4402263 m!5065979))

(declare-fun m!5065981 () Bool)

(assert (=> b!4402264 m!5065981))

(assert (=> b!4401529 d!1327759))

(declare-fun d!1327761 () Bool)

(declare-fun lt!1606932 () Bool)

(assert (=> d!1327761 (= lt!1606932 (select (content!7873 (t!356347 (toList!3245 lm!1707))) lt!1606212))))

(declare-fun e!2741132 () Bool)

(assert (=> d!1327761 (= lt!1606932 e!2741132)))

(declare-fun res!1815922 () Bool)

(assert (=> d!1327761 (=> (not res!1815922) (not e!2741132))))

(assert (=> d!1327761 (= res!1815922 ((_ is Cons!49289) (t!356347 (toList!3245 lm!1707))))))

(assert (=> d!1327761 (= (contains!11682 (t!356347 (toList!3245 lm!1707)) lt!1606212) lt!1606932)))

(declare-fun b!4402265 () Bool)

(declare-fun e!2741131 () Bool)

(assert (=> b!4402265 (= e!2741132 e!2741131)))

(declare-fun res!1815923 () Bool)

(assert (=> b!4402265 (=> res!1815923 e!2741131)))

(assert (=> b!4402265 (= res!1815923 (= (h!54916 (t!356347 (toList!3245 lm!1707))) lt!1606212))))

(declare-fun b!4402266 () Bool)

(assert (=> b!4402266 (= e!2741131 (contains!11682 (t!356347 (t!356347 (toList!3245 lm!1707))) lt!1606212))))

(assert (= (and d!1327761 res!1815922) b!4402265))

(assert (= (and b!4402265 (not res!1815923)) b!4402266))

(assert (=> d!1327761 m!5065189))

(declare-fun m!5065983 () Bool)

(assert (=> d!1327761 m!5065983))

(declare-fun m!5065985 () Bool)

(assert (=> b!4402266 m!5065985))

(assert (=> b!4401359 d!1327761))

(declare-fun bs!729045 () Bool)

(declare-fun d!1327763 () Bool)

(assert (= bs!729045 (and d!1327763 d!1327379)))

(declare-fun lambda!149189 () Int)

(assert (=> bs!729045 (= lambda!149189 lambda!149036)))

(declare-fun bs!729046 () Bool)

(assert (= bs!729046 (and d!1327763 d!1327577)))

(assert (=> bs!729046 (= lambda!149189 lambda!149144)))

(declare-fun bs!729047 () Bool)

(assert (= bs!729047 (and d!1327763 d!1327395)))

(assert (=> bs!729047 (= lambda!149189 lambda!149037)))

(declare-fun bs!729048 () Bool)

(assert (= bs!729048 (and d!1327763 d!1327343)))

(assert (=> bs!729048 (= lambda!149189 lambda!149028)))

(declare-fun bs!729049 () Bool)

(assert (= bs!729049 (and d!1327763 d!1327371)))

(assert (=> bs!729049 (= lambda!149189 lambda!149035)))

(declare-fun bs!729050 () Bool)

(assert (= bs!729050 (and d!1327763 d!1327399)))

(assert (=> bs!729050 (not (= lambda!149189 lambda!149043))))

(declare-fun bs!729051 () Bool)

(assert (= bs!729051 (and d!1327763 d!1327625)))

(assert (=> bs!729051 (= lambda!149189 lambda!149149)))

(declare-fun bs!729052 () Bool)

(assert (= bs!729052 (and d!1327763 start!427908)))

(assert (=> bs!729052 (= lambda!149189 lambda!149007)))

(declare-fun bs!729053 () Bool)

(assert (= bs!729053 (and d!1327763 d!1327363)))

(assert (=> bs!729053 (= lambda!149189 lambda!149031)))

(declare-fun bs!729054 () Bool)

(assert (= bs!729054 (and d!1327763 d!1327365)))

(assert (=> bs!729054 (= lambda!149189 lambda!149034)))

(declare-fun bs!729055 () Bool)

(assert (= bs!729055 (and d!1327763 d!1327757)))

(assert (=> bs!729055 (= lambda!149189 lambda!149187)))

(declare-fun lt!1606933 () ListMap!2489)

(assert (=> d!1327763 (invariantList!752 (toList!3246 lt!1606933))))

(declare-fun e!2741133 () ListMap!2489)

(assert (=> d!1327763 (= lt!1606933 e!2741133)))

(declare-fun c!749534 () Bool)

(assert (=> d!1327763 (= c!749534 ((_ is Cons!49289) (toList!3245 (+!877 lt!1606217 (tuple2!48897 hash!377 newBucket!200)))))))

(assert (=> d!1327763 (forall!9372 (toList!3245 (+!877 lt!1606217 (tuple2!48897 hash!377 newBucket!200))) lambda!149189)))

(assert (=> d!1327763 (= (extractMap!690 (toList!3245 (+!877 lt!1606217 (tuple2!48897 hash!377 newBucket!200)))) lt!1606933)))

(declare-fun b!4402267 () Bool)

(assert (=> b!4402267 (= e!2741133 (addToMapMapFromBucket!297 (_2!27742 (h!54916 (toList!3245 (+!877 lt!1606217 (tuple2!48897 hash!377 newBucket!200))))) (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 (tuple2!48897 hash!377 newBucket!200)))))))))

(declare-fun b!4402268 () Bool)

(assert (=> b!4402268 (= e!2741133 (ListMap!2490 Nil!49288))))

(assert (= (and d!1327763 c!749534) b!4402267))

(assert (= (and d!1327763 (not c!749534)) b!4402268))

(declare-fun m!5065987 () Bool)

(assert (=> d!1327763 m!5065987))

(declare-fun m!5065989 () Bool)

(assert (=> d!1327763 m!5065989))

(declare-fun m!5065991 () Bool)

(assert (=> b!4402267 m!5065991))

(assert (=> b!4402267 m!5065991))

(declare-fun m!5065993 () Bool)

(assert (=> b!4402267 m!5065993))

(assert (=> d!1327343 d!1327763))

(declare-fun d!1327765 () Bool)

(declare-fun e!2741134 () Bool)

(assert (=> d!1327765 e!2741134))

(declare-fun res!1815924 () Bool)

(assert (=> d!1327765 (=> (not res!1815924) (not e!2741134))))

(declare-fun lt!1606936 () ListLongMap!1895)

(assert (=> d!1327765 (= res!1815924 (contains!11683 lt!1606936 (_1!27742 (tuple2!48897 hash!377 newBucket!200))))))

(declare-fun lt!1606934 () List!49413)

(assert (=> d!1327765 (= lt!1606936 (ListLongMap!1896 lt!1606934))))

(declare-fun lt!1606935 () Unit!78867)

(declare-fun lt!1606937 () Unit!78867)

(assert (=> d!1327765 (= lt!1606935 lt!1606937)))

(assert (=> d!1327765 (= (getValueByKey!602 lt!1606934 (_1!27742 (tuple2!48897 hash!377 newBucket!200))) (Some!10615 (_2!27742 (tuple2!48897 hash!377 newBucket!200))))))

(assert (=> d!1327765 (= lt!1606937 (lemmaContainsTupThenGetReturnValue!348 lt!1606934 (_1!27742 (tuple2!48897 hash!377 newBucket!200)) (_2!27742 (tuple2!48897 hash!377 newBucket!200))))))

(assert (=> d!1327765 (= lt!1606934 (insertStrictlySorted!206 (toList!3245 lt!1606217) (_1!27742 (tuple2!48897 hash!377 newBucket!200)) (_2!27742 (tuple2!48897 hash!377 newBucket!200))))))

(assert (=> d!1327765 (= (+!877 lt!1606217 (tuple2!48897 hash!377 newBucket!200)) lt!1606936)))

(declare-fun b!4402269 () Bool)

(declare-fun res!1815925 () Bool)

(assert (=> b!4402269 (=> (not res!1815925) (not e!2741134))))

(assert (=> b!4402269 (= res!1815925 (= (getValueByKey!602 (toList!3245 lt!1606936) (_1!27742 (tuple2!48897 hash!377 newBucket!200))) (Some!10615 (_2!27742 (tuple2!48897 hash!377 newBucket!200)))))))

(declare-fun b!4402270 () Bool)

(assert (=> b!4402270 (= e!2741134 (contains!11682 (toList!3245 lt!1606936) (tuple2!48897 hash!377 newBucket!200)))))

(assert (= (and d!1327765 res!1815924) b!4402269))

(assert (= (and b!4402269 res!1815925) b!4402270))

(declare-fun m!5066005 () Bool)

(assert (=> d!1327765 m!5066005))

(declare-fun m!5066009 () Bool)

(assert (=> d!1327765 m!5066009))

(declare-fun m!5066013 () Bool)

(assert (=> d!1327765 m!5066013))

(declare-fun m!5066017 () Bool)

(assert (=> d!1327765 m!5066017))

(declare-fun m!5066019 () Bool)

(assert (=> b!4402269 m!5066019))

(declare-fun m!5066023 () Bool)

(assert (=> b!4402270 m!5066023))

(assert (=> d!1327343 d!1327765))

(declare-fun d!1327767 () Bool)

(declare-fun e!2741135 () Bool)

(assert (=> d!1327767 e!2741135))

(declare-fun res!1815926 () Bool)

(assert (=> d!1327767 (=> (not res!1815926) (not e!2741135))))

(declare-fun lt!1606939 () ListMap!2489)

(assert (=> d!1327767 (= res!1815926 (contains!11681 lt!1606939 (_1!27741 (tuple2!48895 key!3918 newValue!99))))))

(declare-fun lt!1606938 () List!49412)

(assert (=> d!1327767 (= lt!1606939 (ListMap!2490 lt!1606938))))

(declare-fun lt!1606941 () Unit!78867)

(declare-fun lt!1606940 () Unit!78867)

(assert (=> d!1327767 (= lt!1606941 lt!1606940)))

(assert (=> d!1327767 (= (getValueByKey!603 lt!1606938 (_1!27741 (tuple2!48895 key!3918 newValue!99))) (Some!10616 (_2!27741 (tuple2!48895 key!3918 newValue!99))))))

(assert (=> d!1327767 (= lt!1606940 (lemmaContainsTupThenGetReturnValue!349 lt!1606938 (_1!27741 (tuple2!48895 key!3918 newValue!99)) (_2!27741 (tuple2!48895 key!3918 newValue!99))))))

(assert (=> d!1327767 (= lt!1606938 (insertNoDuplicatedKeys!151 (toList!3246 (extractMap!690 (toList!3245 lt!1606217))) (_1!27741 (tuple2!48895 key!3918 newValue!99)) (_2!27741 (tuple2!48895 key!3918 newValue!99))))))

(assert (=> d!1327767 (= (+!878 (extractMap!690 (toList!3245 lt!1606217)) (tuple2!48895 key!3918 newValue!99)) lt!1606939)))

(declare-fun b!4402271 () Bool)

(declare-fun res!1815927 () Bool)

(assert (=> b!4402271 (=> (not res!1815927) (not e!2741135))))

(assert (=> b!4402271 (= res!1815927 (= (getValueByKey!603 (toList!3246 lt!1606939) (_1!27741 (tuple2!48895 key!3918 newValue!99))) (Some!10616 (_2!27741 (tuple2!48895 key!3918 newValue!99)))))))

(declare-fun b!4402272 () Bool)

(assert (=> b!4402272 (= e!2741135 (contains!11687 (toList!3246 lt!1606939) (tuple2!48895 key!3918 newValue!99)))))

(assert (= (and d!1327767 res!1815926) b!4402271))

(assert (= (and b!4402271 res!1815927) b!4402272))

(declare-fun m!5066043 () Bool)

(assert (=> d!1327767 m!5066043))

(declare-fun m!5066045 () Bool)

(assert (=> d!1327767 m!5066045))

(declare-fun m!5066047 () Bool)

(assert (=> d!1327767 m!5066047))

(declare-fun m!5066049 () Bool)

(assert (=> d!1327767 m!5066049))

(declare-fun m!5066051 () Bool)

(assert (=> b!4402271 m!5066051))

(declare-fun m!5066053 () Bool)

(assert (=> b!4402272 m!5066053))

(assert (=> d!1327343 d!1327767))

(assert (=> d!1327343 d!1327363))

(declare-fun d!1327771 () Bool)

(assert (=> d!1327771 (eq!337 (extractMap!690 (toList!3245 (+!877 lt!1606217 (tuple2!48897 hash!377 newBucket!200)))) (+!878 (extractMap!690 (toList!3245 lt!1606217)) (tuple2!48895 key!3918 newValue!99)))))

(assert (=> d!1327771 true))

(declare-fun _$10!176 () Unit!78867)

(assert (=> d!1327771 (= (choose!27606 lt!1606217 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) _$10!176)))

(declare-fun bs!729078 () Bool)

(assert (= bs!729078 d!1327771))

(assert (=> bs!729078 m!5064779))

(assert (=> bs!729078 m!5064769))

(assert (=> bs!729078 m!5064771))

(assert (=> bs!729078 m!5064773))

(assert (=> bs!729078 m!5064769))

(assert (=> bs!729078 m!5064441))

(assert (=> bs!729078 m!5064441))

(assert (=> bs!729078 m!5064771))

(assert (=> d!1327343 d!1327771))

(declare-fun d!1327785 () Bool)

(declare-fun res!1815934 () Bool)

(declare-fun e!2741142 () Bool)

(assert (=> d!1327785 (=> res!1815934 e!2741142)))

(assert (=> d!1327785 (= res!1815934 ((_ is Nil!49289) (toList!3245 lt!1606217)))))

(assert (=> d!1327785 (= (forall!9372 (toList!3245 lt!1606217) lambda!149028) e!2741142)))

(declare-fun b!4402283 () Bool)

(declare-fun e!2741143 () Bool)

(assert (=> b!4402283 (= e!2741142 e!2741143)))

(declare-fun res!1815935 () Bool)

(assert (=> b!4402283 (=> (not res!1815935) (not e!2741143))))

(assert (=> b!4402283 (= res!1815935 (dynLambda!20766 lambda!149028 (h!54916 (toList!3245 lt!1606217))))))

(declare-fun b!4402284 () Bool)

(assert (=> b!4402284 (= e!2741143 (forall!9372 (t!356347 (toList!3245 lt!1606217)) lambda!149028))))

(assert (= (and d!1327785 (not res!1815934)) b!4402283))

(assert (= (and b!4402283 res!1815935) b!4402284))

(declare-fun b_lambda!139931 () Bool)

(assert (=> (not b_lambda!139931) (not b!4402283)))

(declare-fun m!5066103 () Bool)

(assert (=> b!4402283 m!5066103))

(declare-fun m!5066105 () Bool)

(assert (=> b!4402284 m!5066105))

(assert (=> d!1327343 d!1327785))

(declare-fun d!1327787 () Bool)

(assert (=> d!1327787 (= (eq!337 (extractMap!690 (toList!3245 (+!877 lt!1606217 (tuple2!48897 hash!377 newBucket!200)))) (+!878 (extractMap!690 (toList!3245 lt!1606217)) (tuple2!48895 key!3918 newValue!99))) (= (content!7874 (toList!3246 (extractMap!690 (toList!3245 (+!877 lt!1606217 (tuple2!48897 hash!377 newBucket!200)))))) (content!7874 (toList!3246 (+!878 (extractMap!690 (toList!3245 lt!1606217)) (tuple2!48895 key!3918 newValue!99))))))))

(declare-fun bs!729079 () Bool)

(assert (= bs!729079 d!1327787))

(declare-fun m!5066107 () Bool)

(assert (=> bs!729079 m!5066107))

(declare-fun m!5066109 () Bool)

(assert (=> bs!729079 m!5066109))

(assert (=> d!1327343 d!1327787))

(declare-fun d!1327789 () Bool)

(assert (=> d!1327789 (= (get!16046 (getValueByKey!602 (toList!3245 lm!1707) hash!377)) (v!43725 (getValueByKey!602 (toList!3245 lm!1707) hash!377)))))

(assert (=> d!1327287 d!1327789))

(assert (=> d!1327287 d!1327435))

(declare-fun d!1327791 () Bool)

(declare-fun lt!1606952 () Bool)

(assert (=> d!1327791 (= lt!1606952 (select (content!7873 (toList!3245 lt!1606440)) lt!1606215))))

(declare-fun e!2741145 () Bool)

(assert (=> d!1327791 (= lt!1606952 e!2741145)))

(declare-fun res!1815936 () Bool)

(assert (=> d!1327791 (=> (not res!1815936) (not e!2741145))))

(assert (=> d!1327791 (= res!1815936 ((_ is Cons!49289) (toList!3245 lt!1606440)))))

(assert (=> d!1327791 (= (contains!11682 (toList!3245 lt!1606440) lt!1606215) lt!1606952)))

(declare-fun b!4402285 () Bool)

(declare-fun e!2741144 () Bool)

(assert (=> b!4402285 (= e!2741145 e!2741144)))

(declare-fun res!1815937 () Bool)

(assert (=> b!4402285 (=> res!1815937 e!2741144)))

(assert (=> b!4402285 (= res!1815937 (= (h!54916 (toList!3245 lt!1606440)) lt!1606215))))

(declare-fun b!4402286 () Bool)

(assert (=> b!4402286 (= e!2741144 (contains!11682 (t!356347 (toList!3245 lt!1606440)) lt!1606215))))

(assert (= (and d!1327791 res!1815936) b!4402285))

(assert (= (and b!4402285 (not res!1815937)) b!4402286))

(declare-fun m!5066111 () Bool)

(assert (=> d!1327791 m!5066111))

(declare-fun m!5066113 () Bool)

(assert (=> d!1327791 m!5066113))

(declare-fun m!5066115 () Bool)

(assert (=> b!4402286 m!5066115))

(assert (=> b!4401550 d!1327791))

(assert (=> b!4401537 d!1327597))

(assert (=> b!4401537 d!1327599))

(declare-fun d!1327793 () Bool)

(declare-fun res!1815942 () Bool)

(declare-fun e!2741150 () Bool)

(assert (=> d!1327793 (=> res!1815942 e!2741150)))

(assert (=> d!1327793 (= res!1815942 (and ((_ is Cons!49289) (toList!3245 lm!1707)) (= (_1!27742 (h!54916 (toList!3245 lm!1707))) hash!377)))))

(assert (=> d!1327793 (= (containsKey!943 (toList!3245 lm!1707) hash!377) e!2741150)))

(declare-fun b!4402291 () Bool)

(declare-fun e!2741151 () Bool)

(assert (=> b!4402291 (= e!2741150 e!2741151)))

(declare-fun res!1815943 () Bool)

(assert (=> b!4402291 (=> (not res!1815943) (not e!2741151))))

(assert (=> b!4402291 (= res!1815943 (and (or (not ((_ is Cons!49289) (toList!3245 lm!1707))) (bvsle (_1!27742 (h!54916 (toList!3245 lm!1707))) hash!377)) ((_ is Cons!49289) (toList!3245 lm!1707)) (bvslt (_1!27742 (h!54916 (toList!3245 lm!1707))) hash!377)))))

(declare-fun b!4402292 () Bool)

(assert (=> b!4402292 (= e!2741151 (containsKey!943 (t!356347 (toList!3245 lm!1707)) hash!377))))

(assert (= (and d!1327793 (not res!1815942)) b!4402291))

(assert (= (and b!4402291 res!1815943) b!4402292))

(declare-fun m!5066117 () Bool)

(assert (=> b!4402292 m!5066117))

(assert (=> d!1327275 d!1327793))

(declare-fun d!1327795 () Bool)

(assert (=> d!1327795 (= (invariantList!752 (toList!3246 lt!1606388)) (noDuplicatedKeys!156 (toList!3246 lt!1606388)))))

(declare-fun bs!729080 () Bool)

(assert (= bs!729080 d!1327795))

(declare-fun m!5066119 () Bool)

(assert (=> bs!729080 m!5066119))

(assert (=> d!1327363 d!1327795))

(declare-fun d!1327797 () Bool)

(declare-fun res!1815944 () Bool)

(declare-fun e!2741152 () Bool)

(assert (=> d!1327797 (=> res!1815944 e!2741152)))

(assert (=> d!1327797 (= res!1815944 ((_ is Nil!49289) (toList!3245 lt!1606217)))))

(assert (=> d!1327797 (= (forall!9372 (toList!3245 lt!1606217) lambda!149031) e!2741152)))

(declare-fun b!4402293 () Bool)

(declare-fun e!2741153 () Bool)

(assert (=> b!4402293 (= e!2741152 e!2741153)))

(declare-fun res!1815945 () Bool)

(assert (=> b!4402293 (=> (not res!1815945) (not e!2741153))))

(assert (=> b!4402293 (= res!1815945 (dynLambda!20766 lambda!149031 (h!54916 (toList!3245 lt!1606217))))))

(declare-fun b!4402294 () Bool)

(assert (=> b!4402294 (= e!2741153 (forall!9372 (t!356347 (toList!3245 lt!1606217)) lambda!149031))))

(assert (= (and d!1327797 (not res!1815944)) b!4402293))

(assert (= (and b!4402293 res!1815945) b!4402294))

(declare-fun b_lambda!139933 () Bool)

(assert (=> (not b_lambda!139933) (not b!4402293)))

(declare-fun m!5066121 () Bool)

(assert (=> b!4402293 m!5066121))

(declare-fun m!5066123 () Bool)

(assert (=> b!4402294 m!5066123))

(assert (=> d!1327363 d!1327797))

(declare-fun d!1327799 () Bool)

(assert (=> d!1327799 (= (invariantList!752 (toList!3246 lt!1606437)) (noDuplicatedKeys!156 (toList!3246 lt!1606437)))))

(declare-fun bs!729081 () Bool)

(assert (= bs!729081 d!1327799))

(declare-fun m!5066125 () Bool)

(assert (=> bs!729081 m!5066125))

(assert (=> d!1327395 d!1327799))

(declare-fun d!1327801 () Bool)

(declare-fun res!1815946 () Bool)

(declare-fun e!2741154 () Bool)

(assert (=> d!1327801 (=> res!1815946 e!2741154)))

(assert (=> d!1327801 (= res!1815946 ((_ is Nil!49289) (toList!3245 lm!1707)))))

(assert (=> d!1327801 (= (forall!9372 (toList!3245 lm!1707) lambda!149037) e!2741154)))

(declare-fun b!4402295 () Bool)

(declare-fun e!2741155 () Bool)

(assert (=> b!4402295 (= e!2741154 e!2741155)))

(declare-fun res!1815947 () Bool)

(assert (=> b!4402295 (=> (not res!1815947) (not e!2741155))))

(assert (=> b!4402295 (= res!1815947 (dynLambda!20766 lambda!149037 (h!54916 (toList!3245 lm!1707))))))

(declare-fun b!4402296 () Bool)

(assert (=> b!4402296 (= e!2741155 (forall!9372 (t!356347 (toList!3245 lm!1707)) lambda!149037))))

(assert (= (and d!1327801 (not res!1815946)) b!4402295))

(assert (= (and b!4402295 res!1815947) b!4402296))

(declare-fun b_lambda!139935 () Bool)

(assert (=> (not b_lambda!139935) (not b!4402295)))

(declare-fun m!5066127 () Bool)

(assert (=> b!4402295 m!5066127))

(declare-fun m!5066129 () Bool)

(assert (=> b!4402296 m!5066129))

(assert (=> d!1327395 d!1327801))

(assert (=> b!4401455 d!1327705))

(declare-fun d!1327803 () Bool)

(declare-fun e!2741156 () Bool)

(assert (=> d!1327803 e!2741156))

(declare-fun res!1815948 () Bool)

(assert (=> d!1327803 (=> res!1815948 e!2741156)))

(declare-fun lt!1606956 () Bool)

(assert (=> d!1327803 (= res!1815948 (not lt!1606956))))

(declare-fun lt!1606953 () Bool)

(assert (=> d!1327803 (= lt!1606956 lt!1606953)))

(declare-fun lt!1606954 () Unit!78867)

(declare-fun e!2741157 () Unit!78867)

(assert (=> d!1327803 (= lt!1606954 e!2741157)))

(declare-fun c!749537 () Bool)

(assert (=> d!1327803 (= c!749537 lt!1606953)))

(assert (=> d!1327803 (= lt!1606953 (containsKey!943 (toList!3245 lt!1606402) (_1!27742 lt!1606215)))))

(assert (=> d!1327803 (= (contains!11683 lt!1606402 (_1!27742 lt!1606215)) lt!1606956)))

(declare-fun b!4402297 () Bool)

(declare-fun lt!1606955 () Unit!78867)

(assert (=> b!4402297 (= e!2741157 lt!1606955)))

(assert (=> b!4402297 (= lt!1606955 (lemmaContainsKeyImpliesGetValueByKeyDefined!511 (toList!3245 lt!1606402) (_1!27742 lt!1606215)))))

(assert (=> b!4402297 (isDefined!7908 (getValueByKey!602 (toList!3245 lt!1606402) (_1!27742 lt!1606215)))))

(declare-fun b!4402298 () Bool)

(declare-fun Unit!78975 () Unit!78867)

(assert (=> b!4402298 (= e!2741157 Unit!78975)))

(declare-fun b!4402299 () Bool)

(assert (=> b!4402299 (= e!2741156 (isDefined!7908 (getValueByKey!602 (toList!3245 lt!1606402) (_1!27742 lt!1606215))))))

(assert (= (and d!1327803 c!749537) b!4402297))

(assert (= (and d!1327803 (not c!749537)) b!4402298))

(assert (= (and d!1327803 (not res!1815948)) b!4402299))

(declare-fun m!5066131 () Bool)

(assert (=> d!1327803 m!5066131))

(declare-fun m!5066133 () Bool)

(assert (=> b!4402297 m!5066133))

(assert (=> b!4402297 m!5064801))

(assert (=> b!4402297 m!5064801))

(declare-fun m!5066135 () Bool)

(assert (=> b!4402297 m!5066135))

(assert (=> b!4402299 m!5064801))

(assert (=> b!4402299 m!5064801))

(assert (=> b!4402299 m!5066135))

(assert (=> d!1327367 d!1327803))

(declare-fun d!1327805 () Bool)

(declare-fun c!749538 () Bool)

(assert (=> d!1327805 (= c!749538 (and ((_ is Cons!49289) lt!1606400) (= (_1!27742 (h!54916 lt!1606400)) (_1!27742 lt!1606215))))))

(declare-fun e!2741158 () Option!10616)

(assert (=> d!1327805 (= (getValueByKey!602 lt!1606400 (_1!27742 lt!1606215)) e!2741158)))

(declare-fun b!4402303 () Bool)

(declare-fun e!2741159 () Option!10616)

(assert (=> b!4402303 (= e!2741159 None!10615)))

(declare-fun b!4402301 () Bool)

(assert (=> b!4402301 (= e!2741158 e!2741159)))

(declare-fun c!749539 () Bool)

(assert (=> b!4402301 (= c!749539 (and ((_ is Cons!49289) lt!1606400) (not (= (_1!27742 (h!54916 lt!1606400)) (_1!27742 lt!1606215)))))))

(declare-fun b!4402302 () Bool)

(assert (=> b!4402302 (= e!2741159 (getValueByKey!602 (t!356347 lt!1606400) (_1!27742 lt!1606215)))))

(declare-fun b!4402300 () Bool)

(assert (=> b!4402300 (= e!2741158 (Some!10615 (_2!27742 (h!54916 lt!1606400))))))

(assert (= (and d!1327805 c!749538) b!4402300))

(assert (= (and d!1327805 (not c!749538)) b!4402301))

(assert (= (and b!4402301 c!749539) b!4402302))

(assert (= (and b!4402301 (not c!749539)) b!4402303))

(declare-fun m!5066137 () Bool)

(assert (=> b!4402302 m!5066137))

(assert (=> d!1327367 d!1327805))

(declare-fun d!1327807 () Bool)

(assert (=> d!1327807 (= (getValueByKey!602 lt!1606400 (_1!27742 lt!1606215)) (Some!10615 (_2!27742 lt!1606215)))))

(declare-fun lt!1606957 () Unit!78867)

(assert (=> d!1327807 (= lt!1606957 (choose!27620 lt!1606400 (_1!27742 lt!1606215) (_2!27742 lt!1606215)))))

(declare-fun e!2741160 () Bool)

(assert (=> d!1327807 e!2741160))

(declare-fun res!1815949 () Bool)

(assert (=> d!1327807 (=> (not res!1815949) (not e!2741160))))

(assert (=> d!1327807 (= res!1815949 (isStrictlySorted!178 lt!1606400))))

(assert (=> d!1327807 (= (lemmaContainsTupThenGetReturnValue!348 lt!1606400 (_1!27742 lt!1606215) (_2!27742 lt!1606215)) lt!1606957)))

(declare-fun b!4402304 () Bool)

(declare-fun res!1815950 () Bool)

(assert (=> b!4402304 (=> (not res!1815950) (not e!2741160))))

(assert (=> b!4402304 (= res!1815950 (containsKey!943 lt!1606400 (_1!27742 lt!1606215)))))

(declare-fun b!4402305 () Bool)

(assert (=> b!4402305 (= e!2741160 (contains!11682 lt!1606400 (tuple2!48897 (_1!27742 lt!1606215) (_2!27742 lt!1606215))))))

(assert (= (and d!1327807 res!1815949) b!4402304))

(assert (= (and b!4402304 res!1815950) b!4402305))

(assert (=> d!1327807 m!5064795))

(declare-fun m!5066139 () Bool)

(assert (=> d!1327807 m!5066139))

(declare-fun m!5066141 () Bool)

(assert (=> d!1327807 m!5066141))

(declare-fun m!5066143 () Bool)

(assert (=> b!4402304 m!5066143))

(declare-fun m!5066145 () Bool)

(assert (=> b!4402305 m!5066145))

(assert (=> d!1327367 d!1327807))

(declare-fun b!4402306 () Bool)

(declare-fun c!749541 () Bool)

(assert (=> b!4402306 (= c!749541 (and ((_ is Cons!49289) (toList!3245 lt!1606217)) (bvsgt (_1!27742 (h!54916 (toList!3245 lt!1606217))) (_1!27742 lt!1606215))))))

(declare-fun e!2741163 () List!49413)

(declare-fun e!2741161 () List!49413)

(assert (=> b!4402306 (= e!2741163 e!2741161)))

(declare-fun b!4402307 () Bool)

(declare-fun c!749540 () Bool)

(declare-fun e!2741162 () List!49413)

(assert (=> b!4402307 (= e!2741162 (ite c!749540 (t!356347 (toList!3245 lt!1606217)) (ite c!749541 (Cons!49289 (h!54916 (toList!3245 lt!1606217)) (t!356347 (toList!3245 lt!1606217))) Nil!49289)))))

(declare-fun b!4402308 () Bool)

(assert (=> b!4402308 (= e!2741162 (insertStrictlySorted!206 (t!356347 (toList!3245 lt!1606217)) (_1!27742 lt!1606215) (_2!27742 lt!1606215)))))

(declare-fun c!749543 () Bool)

(declare-fun bm!306352 () Bool)

(declare-fun call!306358 () List!49413)

(assert (=> bm!306352 (= call!306358 ($colon$colon!753 e!2741162 (ite c!749543 (h!54916 (toList!3245 lt!1606217)) (tuple2!48897 (_1!27742 lt!1606215) (_2!27742 lt!1606215)))))))

(declare-fun c!749542 () Bool)

(assert (=> bm!306352 (= c!749542 c!749543)))

(declare-fun b!4402309 () Bool)

(declare-fun call!306359 () List!49413)

(assert (=> b!4402309 (= e!2741161 call!306359)))

(declare-fun bm!306353 () Bool)

(declare-fun call!306357 () List!49413)

(assert (=> bm!306353 (= call!306357 call!306358)))

(declare-fun b!4402310 () Bool)

(assert (=> b!4402310 (= e!2741163 call!306357)))

(declare-fun d!1327809 () Bool)

(declare-fun e!2741164 () Bool)

(assert (=> d!1327809 e!2741164))

(declare-fun res!1815952 () Bool)

(assert (=> d!1327809 (=> (not res!1815952) (not e!2741164))))

(declare-fun lt!1606958 () List!49413)

(assert (=> d!1327809 (= res!1815952 (isStrictlySorted!178 lt!1606958))))

(declare-fun e!2741165 () List!49413)

(assert (=> d!1327809 (= lt!1606958 e!2741165)))

(assert (=> d!1327809 (= c!749543 (and ((_ is Cons!49289) (toList!3245 lt!1606217)) (bvslt (_1!27742 (h!54916 (toList!3245 lt!1606217))) (_1!27742 lt!1606215))))))

(assert (=> d!1327809 (isStrictlySorted!178 (toList!3245 lt!1606217))))

(assert (=> d!1327809 (= (insertStrictlySorted!206 (toList!3245 lt!1606217) (_1!27742 lt!1606215) (_2!27742 lt!1606215)) lt!1606958)))

(declare-fun b!4402311 () Bool)

(assert (=> b!4402311 (= e!2741165 call!306358)))

(declare-fun bm!306354 () Bool)

(assert (=> bm!306354 (= call!306359 call!306357)))

(declare-fun b!4402312 () Bool)

(assert (=> b!4402312 (= e!2741165 e!2741163)))

(assert (=> b!4402312 (= c!749540 (and ((_ is Cons!49289) (toList!3245 lt!1606217)) (= (_1!27742 (h!54916 (toList!3245 lt!1606217))) (_1!27742 lt!1606215))))))

(declare-fun b!4402313 () Bool)

(assert (=> b!4402313 (= e!2741164 (contains!11682 lt!1606958 (tuple2!48897 (_1!27742 lt!1606215) (_2!27742 lt!1606215))))))

(declare-fun b!4402314 () Bool)

(assert (=> b!4402314 (= e!2741161 call!306359)))

(declare-fun b!4402315 () Bool)

(declare-fun res!1815951 () Bool)

(assert (=> b!4402315 (=> (not res!1815951) (not e!2741164))))

(assert (=> b!4402315 (= res!1815951 (containsKey!943 lt!1606958 (_1!27742 lt!1606215)))))

(assert (= (and d!1327809 c!749543) b!4402311))

(assert (= (and d!1327809 (not c!749543)) b!4402312))

(assert (= (and b!4402312 c!749540) b!4402310))

(assert (= (and b!4402312 (not c!749540)) b!4402306))

(assert (= (and b!4402306 c!749541) b!4402309))

(assert (= (and b!4402306 (not c!749541)) b!4402314))

(assert (= (or b!4402309 b!4402314) bm!306354))

(assert (= (or b!4402310 bm!306354) bm!306353))

(assert (= (or b!4402311 bm!306353) bm!306352))

(assert (= (and bm!306352 c!749542) b!4402308))

(assert (= (and bm!306352 (not c!749542)) b!4402307))

(assert (= (and d!1327809 res!1815952) b!4402315))

(assert (= (and b!4402315 res!1815951) b!4402313))

(declare-fun m!5066147 () Bool)

(assert (=> b!4402315 m!5066147))

(declare-fun m!5066149 () Bool)

(assert (=> bm!306352 m!5066149))

(declare-fun m!5066151 () Bool)

(assert (=> b!4402308 m!5066151))

(declare-fun m!5066153 () Bool)

(assert (=> b!4402313 m!5066153))

(declare-fun m!5066155 () Bool)

(assert (=> d!1327809 m!5066155))

(declare-fun m!5066157 () Bool)

(assert (=> d!1327809 m!5066157))

(assert (=> d!1327367 d!1327809))

(declare-fun bs!729082 () Bool)

(declare-fun b!4402316 () Bool)

(assert (= bs!729082 (and b!4402316 b!4402120)))

(declare-fun lambda!149192 () Int)

(assert (=> bs!729082 (= (= (t!356346 (toList!3246 lt!1606219)) (Cons!49288 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))))) (= lambda!149192 lambda!149157))))

(declare-fun bs!729083 () Bool)

(assert (= bs!729083 (and b!4402316 b!4401693)))

(assert (=> bs!729083 (= (= (t!356346 (toList!3246 lt!1606219)) (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (= lambda!149192 lambda!149048))))

(declare-fun bs!729084 () Bool)

(assert (= bs!729084 (and b!4402316 b!4402124)))

(assert (=> bs!729084 (= (= (t!356346 (toList!3246 lt!1606219)) (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (= lambda!149192 lambda!149162))))

(declare-fun bs!729085 () Bool)

(assert (= bs!729085 (and b!4402316 b!4401746)))

(assert (=> bs!729085 (= (= (t!356346 (toList!3246 lt!1606219)) (t!356346 (toList!3246 lt!1606220))) (= lambda!149192 lambda!149064))))

(declare-fun bs!729086 () Bool)

(assert (= bs!729086 (and b!4402316 b!4402119)))

(assert (=> bs!729086 (= (= (t!356346 (toList!3246 lt!1606219)) (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))) (= lambda!149192 lambda!149156))))

(declare-fun bs!729087 () Bool)

(assert (= bs!729087 (and b!4402316 b!4401766)))

(assert (=> bs!729087 (= (= (t!356346 (toList!3246 lt!1606219)) (toList!3246 lt!1606220)) (= lambda!149192 lambda!149068))))

(declare-fun bs!729088 () Bool)

(assert (= bs!729088 (and b!4402316 b!4401747)))

(assert (=> bs!729088 (= (= (t!356346 (toList!3246 lt!1606219)) (Cons!49288 (h!54915 (toList!3246 lt!1606220)) (t!356346 (toList!3246 lt!1606220)))) (= lambda!149192 lambda!149065))))

(declare-fun bs!729089 () Bool)

(assert (= bs!729089 (and b!4402316 b!4402105)))

(assert (=> bs!729089 (= (= (t!356346 (toList!3246 lt!1606219)) (toList!3246 lt!1606219)) (= lambda!149192 lambda!149150))))

(declare-fun bs!729090 () Bool)

(assert (= bs!729090 (and b!4402316 b!4401751)))

(assert (=> bs!729090 (= (= (t!356346 (toList!3246 lt!1606219)) (toList!3246 lt!1606220)) (= lambda!149192 lambda!149066))))

(assert (=> b!4402316 true))

(declare-fun bs!729092 () Bool)

(declare-fun b!4402317 () Bool)

(assert (= bs!729092 (and b!4402317 b!4402120)))

(declare-fun lambda!149193 () Int)

(assert (=> bs!729092 (= (= (Cons!49288 (h!54915 (toList!3246 lt!1606219)) (t!356346 (toList!3246 lt!1606219))) (Cons!49288 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))))) (= lambda!149193 lambda!149157))))

(declare-fun bs!729093 () Bool)

(assert (= bs!729093 (and b!4402317 b!4401693)))

(assert (=> bs!729093 (= (= (Cons!49288 (h!54915 (toList!3246 lt!1606219)) (t!356346 (toList!3246 lt!1606219))) (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (= lambda!149193 lambda!149048))))

(declare-fun bs!729094 () Bool)

(assert (= bs!729094 (and b!4402317 b!4402124)))

(assert (=> bs!729094 (= (= (Cons!49288 (h!54915 (toList!3246 lt!1606219)) (t!356346 (toList!3246 lt!1606219))) (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (= lambda!149193 lambda!149162))))

(declare-fun bs!729095 () Bool)

(assert (= bs!729095 (and b!4402317 b!4402316)))

(assert (=> bs!729095 (= (= (Cons!49288 (h!54915 (toList!3246 lt!1606219)) (t!356346 (toList!3246 lt!1606219))) (t!356346 (toList!3246 lt!1606219))) (= lambda!149193 lambda!149192))))

(declare-fun bs!729096 () Bool)

(assert (= bs!729096 (and b!4402317 b!4401746)))

(assert (=> bs!729096 (= (= (Cons!49288 (h!54915 (toList!3246 lt!1606219)) (t!356346 (toList!3246 lt!1606219))) (t!356346 (toList!3246 lt!1606220))) (= lambda!149193 lambda!149064))))

(declare-fun bs!729097 () Bool)

(assert (= bs!729097 (and b!4402317 b!4402119)))

(assert (=> bs!729097 (= (= (Cons!49288 (h!54915 (toList!3246 lt!1606219)) (t!356346 (toList!3246 lt!1606219))) (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))) (= lambda!149193 lambda!149156))))

(declare-fun bs!729098 () Bool)

(assert (= bs!729098 (and b!4402317 b!4401766)))

(assert (=> bs!729098 (= (= (Cons!49288 (h!54915 (toList!3246 lt!1606219)) (t!356346 (toList!3246 lt!1606219))) (toList!3246 lt!1606220)) (= lambda!149193 lambda!149068))))

(declare-fun bs!729099 () Bool)

(assert (= bs!729099 (and b!4402317 b!4401747)))

(assert (=> bs!729099 (= (= (Cons!49288 (h!54915 (toList!3246 lt!1606219)) (t!356346 (toList!3246 lt!1606219))) (Cons!49288 (h!54915 (toList!3246 lt!1606220)) (t!356346 (toList!3246 lt!1606220)))) (= lambda!149193 lambda!149065))))

(declare-fun bs!729100 () Bool)

(assert (= bs!729100 (and b!4402317 b!4402105)))

(assert (=> bs!729100 (= (= (Cons!49288 (h!54915 (toList!3246 lt!1606219)) (t!356346 (toList!3246 lt!1606219))) (toList!3246 lt!1606219)) (= lambda!149193 lambda!149150))))

(declare-fun bs!729101 () Bool)

(assert (= bs!729101 (and b!4402317 b!4401751)))

(assert (=> bs!729101 (= (= (Cons!49288 (h!54915 (toList!3246 lt!1606219)) (t!356346 (toList!3246 lt!1606219))) (toList!3246 lt!1606220)) (= lambda!149193 lambda!149066))))

(assert (=> b!4402317 true))

(declare-fun bs!729102 () Bool)

(declare-fun b!4402321 () Bool)

(assert (= bs!729102 (and b!4402321 b!4402120)))

(declare-fun lambda!149194 () Int)

(assert (=> bs!729102 (= (= (toList!3246 lt!1606219) (Cons!49288 (h!54915 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707)))))) (= lambda!149194 lambda!149157))))

(declare-fun bs!729103 () Bool)

(assert (= bs!729103 (and b!4402321 b!4401693)))

(assert (=> bs!729103 (= (= (toList!3246 lt!1606219) (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (= lambda!149194 lambda!149048))))

(declare-fun bs!729104 () Bool)

(assert (= bs!729104 (and b!4402321 b!4402124)))

(assert (=> bs!729104 (= (= (toList!3246 lt!1606219) (toList!3246 (extractMap!690 (toList!3245 lm!1707)))) (= lambda!149194 lambda!149162))))

(declare-fun bs!729105 () Bool)

(assert (= bs!729105 (and b!4402321 b!4402316)))

(assert (=> bs!729105 (= (= (toList!3246 lt!1606219) (t!356346 (toList!3246 lt!1606219))) (= lambda!149194 lambda!149192))))

(declare-fun bs!729106 () Bool)

(assert (= bs!729106 (and b!4402321 b!4401746)))

(assert (=> bs!729106 (= (= (toList!3246 lt!1606219) (t!356346 (toList!3246 lt!1606220))) (= lambda!149194 lambda!149064))))

(declare-fun bs!729107 () Bool)

(assert (= bs!729107 (and b!4402321 b!4402119)))

(assert (=> bs!729107 (= (= (toList!3246 lt!1606219) (t!356346 (toList!3246 (extractMap!690 (toList!3245 lm!1707))))) (= lambda!149194 lambda!149156))))

(declare-fun bs!729108 () Bool)

(assert (= bs!729108 (and b!4402321 b!4402317)))

(assert (=> bs!729108 (= (= (toList!3246 lt!1606219) (Cons!49288 (h!54915 (toList!3246 lt!1606219)) (t!356346 (toList!3246 lt!1606219)))) (= lambda!149194 lambda!149193))))

(declare-fun bs!729109 () Bool)

(assert (= bs!729109 (and b!4402321 b!4401766)))

(assert (=> bs!729109 (= (= (toList!3246 lt!1606219) (toList!3246 lt!1606220)) (= lambda!149194 lambda!149068))))

(declare-fun bs!729110 () Bool)

(assert (= bs!729110 (and b!4402321 b!4401747)))

(assert (=> bs!729110 (= (= (toList!3246 lt!1606219) (Cons!49288 (h!54915 (toList!3246 lt!1606220)) (t!356346 (toList!3246 lt!1606220)))) (= lambda!149194 lambda!149065))))

(declare-fun bs!729111 () Bool)

(assert (= bs!729111 (and b!4402321 b!4402105)))

(assert (=> bs!729111 (= lambda!149194 lambda!149150)))

(declare-fun bs!729112 () Bool)

(assert (= bs!729112 (and b!4402321 b!4401751)))

(assert (=> bs!729112 (= (= (toList!3246 lt!1606219) (toList!3246 lt!1606220)) (= lambda!149194 lambda!149066))))

(assert (=> b!4402321 true))

(declare-fun bs!729113 () Bool)

(declare-fun b!4402322 () Bool)

(assert (= bs!729113 (and b!4402322 b!4402125)))

(declare-fun lambda!149195 () Int)

(assert (=> bs!729113 (= lambda!149195 lambda!149163)))

(declare-fun bs!729114 () Bool)

(assert (= bs!729114 (and b!4402322 b!4401752)))

(assert (=> bs!729114 (= lambda!149195 lambda!149067)))

(declare-fun bs!729115 () Bool)

(assert (= bs!729115 (and b!4402322 b!4401767)))

(assert (=> bs!729115 (= lambda!149195 lambda!149069)))

(declare-fun bs!729116 () Bool)

(assert (= bs!729116 (and b!4402322 b!4401694)))

(assert (=> bs!729116 (= lambda!149195 lambda!149049)))

(declare-fun bs!729117 () Bool)

(assert (= bs!729117 (and b!4402322 b!4402106)))

(assert (=> bs!729117 (= lambda!149195 lambda!149151)))

(assert (=> b!4402316 false))

(declare-fun lt!1606965 () Unit!78867)

(assert (=> b!4402316 (= lt!1606965 (forallContained!2008 (getKeysList!199 (t!356346 (toList!3246 lt!1606219))) lambda!149192 (_1!27741 (h!54915 (toList!3246 lt!1606219)))))))

(declare-fun e!2741167 () Unit!78867)

(declare-fun Unit!78980 () Unit!78867)

(assert (=> b!4402316 (= e!2741167 Unit!78980)))

(declare-fun e!2741166 () List!49415)

(assert (=> b!4402317 (= e!2741166 (Cons!49291 (_1!27741 (h!54915 (toList!3246 lt!1606219))) (getKeysList!199 (t!356346 (toList!3246 lt!1606219)))))))

(declare-fun c!749544 () Bool)

(assert (=> b!4402317 (= c!749544 (containsKey!945 (t!356346 (toList!3246 lt!1606219)) (_1!27741 (h!54915 (toList!3246 lt!1606219)))))))

(declare-fun lt!1606962 () Unit!78867)

(declare-fun e!2741168 () Unit!78867)

(assert (=> b!4402317 (= lt!1606962 e!2741168)))

(declare-fun c!749546 () Bool)

(assert (=> b!4402317 (= c!749546 (contains!11686 (getKeysList!199 (t!356346 (toList!3246 lt!1606219))) (_1!27741 (h!54915 (toList!3246 lt!1606219)))))))

(declare-fun lt!1606963 () Unit!78867)

(assert (=> b!4402317 (= lt!1606963 e!2741167)))

(declare-fun lt!1606964 () List!49415)

(assert (=> b!4402317 (= lt!1606964 (getKeysList!199 (t!356346 (toList!3246 lt!1606219))))))

(declare-fun lt!1606961 () Unit!78867)

(assert (=> b!4402317 (= lt!1606961 (lemmaForallContainsAddHeadPreserves!61 (t!356346 (toList!3246 lt!1606219)) lt!1606964 (h!54915 (toList!3246 lt!1606219))))))

(assert (=> b!4402317 (forall!9375 lt!1606964 lambda!149193)))

(declare-fun lt!1606959 () Unit!78867)

(assert (=> b!4402317 (= lt!1606959 lt!1606961)))

(declare-fun b!4402318 () Bool)

(declare-fun res!1815955 () Bool)

(declare-fun e!2741169 () Bool)

(assert (=> b!4402318 (=> (not res!1815955) (not e!2741169))))

(declare-fun lt!1606960 () List!49415)

(assert (=> b!4402318 (= res!1815955 (= (length!134 lt!1606960) (length!135 (toList!3246 lt!1606219))))))

(declare-fun b!4402319 () Bool)

(assert (=> b!4402319 (= e!2741166 Nil!49291)))

(declare-fun d!1327811 () Bool)

(assert (=> d!1327811 e!2741169))

(declare-fun res!1815954 () Bool)

(assert (=> d!1327811 (=> (not res!1815954) (not e!2741169))))

(assert (=> d!1327811 (= res!1815954 (noDuplicate!639 lt!1606960))))

(assert (=> d!1327811 (= lt!1606960 e!2741166)))

(declare-fun c!749545 () Bool)

(assert (=> d!1327811 (= c!749545 ((_ is Cons!49288) (toList!3246 lt!1606219)))))

(assert (=> d!1327811 (invariantList!752 (toList!3246 lt!1606219))))

(assert (=> d!1327811 (= (getKeysList!199 (toList!3246 lt!1606219)) lt!1606960)))

(declare-fun b!4402320 () Bool)

(assert (=> b!4402320 false))

(declare-fun Unit!78981 () Unit!78867)

(assert (=> b!4402320 (= e!2741168 Unit!78981)))

(declare-fun res!1815953 () Bool)

(assert (=> b!4402321 (=> (not res!1815953) (not e!2741169))))

(assert (=> b!4402321 (= res!1815953 (forall!9375 lt!1606960 lambda!149194))))

(assert (=> b!4402322 (= e!2741169 (= (content!7875 lt!1606960) (content!7875 (map!10751 (toList!3246 lt!1606219) lambda!149195))))))

(declare-fun b!4402323 () Bool)

(declare-fun Unit!78982 () Unit!78867)

(assert (=> b!4402323 (= e!2741167 Unit!78982)))

(declare-fun b!4402324 () Bool)

(declare-fun Unit!78983 () Unit!78867)

(assert (=> b!4402324 (= e!2741168 Unit!78983)))

(assert (= (and d!1327811 c!749545) b!4402317))

(assert (= (and d!1327811 (not c!749545)) b!4402319))

(assert (= (and b!4402317 c!749544) b!4402320))

(assert (= (and b!4402317 (not c!749544)) b!4402324))

(assert (= (and b!4402317 c!749546) b!4402316))

(assert (= (and b!4402317 (not c!749546)) b!4402323))

(assert (= (and d!1327811 res!1815954) b!4402318))

(assert (= (and b!4402318 res!1815955) b!4402321))

(assert (= (and b!4402321 res!1815953) b!4402322))

(declare-fun m!5066173 () Bool)

(assert (=> b!4402322 m!5066173))

(declare-fun m!5066175 () Bool)

(assert (=> b!4402322 m!5066175))

(assert (=> b!4402322 m!5066175))

(declare-fun m!5066177 () Bool)

(assert (=> b!4402322 m!5066177))

(declare-fun m!5066179 () Bool)

(assert (=> d!1327811 m!5066179))

(assert (=> d!1327811 m!5065181))

(declare-fun m!5066181 () Bool)

(assert (=> b!4402316 m!5066181))

(assert (=> b!4402316 m!5066181))

(declare-fun m!5066183 () Bool)

(assert (=> b!4402316 m!5066183))

(declare-fun m!5066185 () Bool)

(assert (=> b!4402317 m!5066185))

(assert (=> b!4402317 m!5066181))

(assert (=> b!4402317 m!5066181))

(declare-fun m!5066187 () Bool)

(assert (=> b!4402317 m!5066187))

(assert (=> b!4402317 m!5065871))

(declare-fun m!5066189 () Bool)

(assert (=> b!4402317 m!5066189))

(declare-fun m!5066191 () Bool)

(assert (=> b!4402321 m!5066191))

(declare-fun m!5066193 () Bool)

(assert (=> b!4402318 m!5066193))

(assert (=> b!4402318 m!5065691))

(assert (=> b!4401454 d!1327811))

(assert (=> b!4401375 d!1327295))

(declare-fun d!1327825 () Bool)

(assert (=> d!1327825 (= (get!16046 (getValueByKey!602 (toList!3245 lm!1707) (_1!27742 (h!54916 (toList!3245 lm!1707))))) (v!43725 (getValueByKey!602 (toList!3245 lm!1707) (_1!27742 (h!54916 (toList!3245 lm!1707))))))))

(assert (=> d!1327305 d!1327825))

(declare-fun d!1327829 () Bool)

(declare-fun c!749552 () Bool)

(assert (=> d!1327829 (= c!749552 (and ((_ is Cons!49289) (toList!3245 lm!1707)) (= (_1!27742 (h!54916 (toList!3245 lm!1707))) (_1!27742 (h!54916 (toList!3245 lm!1707))))))))

(declare-fun e!2741179 () Option!10616)

(assert (=> d!1327829 (= (getValueByKey!602 (toList!3245 lm!1707) (_1!27742 (h!54916 (toList!3245 lm!1707)))) e!2741179)))

(declare-fun b!4402343 () Bool)

(declare-fun e!2741180 () Option!10616)

(assert (=> b!4402343 (= e!2741180 None!10615)))

(declare-fun b!4402341 () Bool)

(assert (=> b!4402341 (= e!2741179 e!2741180)))

(declare-fun c!749553 () Bool)

(assert (=> b!4402341 (= c!749553 (and ((_ is Cons!49289) (toList!3245 lm!1707)) (not (= (_1!27742 (h!54916 (toList!3245 lm!1707))) (_1!27742 (h!54916 (toList!3245 lm!1707)))))))))

(declare-fun b!4402342 () Bool)

(assert (=> b!4402342 (= e!2741180 (getValueByKey!602 (t!356347 (toList!3245 lm!1707)) (_1!27742 (h!54916 (toList!3245 lm!1707)))))))

(declare-fun b!4402340 () Bool)

(assert (=> b!4402340 (= e!2741179 (Some!10615 (_2!27742 (h!54916 (toList!3245 lm!1707)))))))

(assert (= (and d!1327829 c!749552) b!4402340))

(assert (= (and d!1327829 (not c!749552)) b!4402341))

(assert (= (and b!4402341 c!749553) b!4402342))

(assert (= (and b!4402341 (not c!749553)) b!4402343))

(declare-fun m!5066197 () Bool)

(assert (=> b!4402342 m!5066197))

(assert (=> d!1327305 d!1327829))

(declare-fun d!1327831 () Bool)

(assert (=> d!1327831 (isDefined!7910 (getValueByKey!603 (toList!3246 lt!1606219) key!3918))))

(declare-fun lt!1606972 () Unit!78867)

(assert (=> d!1327831 (= lt!1606972 (choose!27613 (toList!3246 lt!1606219) key!3918))))

(assert (=> d!1327831 (invariantList!752 (toList!3246 lt!1606219))))

(assert (=> d!1327831 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!513 (toList!3246 lt!1606219) key!3918) lt!1606972)))

(declare-fun bs!729118 () Bool)

(assert (= bs!729118 d!1327831))

(assert (=> bs!729118 m!5064719))

(assert (=> bs!729118 m!5064719))

(assert (=> bs!729118 m!5064721))

(declare-fun m!5066207 () Bool)

(assert (=> bs!729118 m!5066207))

(assert (=> bs!729118 m!5065181))

(assert (=> b!4401457 d!1327831))

(assert (=> b!4401457 d!1327617))

(assert (=> b!4401457 d!1327619))

(declare-fun d!1327835 () Bool)

(assert (=> d!1327835 (contains!11686 (getKeysList!199 (toList!3246 lt!1606219)) key!3918)))

(declare-fun lt!1606973 () Unit!78867)

(assert (=> d!1327835 (= lt!1606973 (choose!27615 (toList!3246 lt!1606219) key!3918))))

(assert (=> d!1327835 (invariantList!752 (toList!3246 lt!1606219))))

(assert (=> d!1327835 (= (lemmaInListThenGetKeysListContains!196 (toList!3246 lt!1606219) key!3918) lt!1606973)))

(declare-fun bs!729119 () Bool)

(assert (= bs!729119 d!1327835))

(assert (=> bs!729119 m!5064715))

(assert (=> bs!729119 m!5064715))

(declare-fun m!5066209 () Bool)

(assert (=> bs!729119 m!5066209))

(declare-fun m!5066211 () Bool)

(assert (=> bs!729119 m!5066211))

(assert (=> bs!729119 m!5065181))

(assert (=> b!4401457 d!1327835))

(assert (=> b!4401314 d!1327435))

(declare-fun bs!729120 () Bool)

(declare-fun b!4402354 () Bool)

(assert (= bs!729120 (and b!4402354 b!4402248)))

(declare-fun lambda!149196 () Int)

(assert (=> bs!729120 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))) (= lambda!149196 lambda!149181))))

(declare-fun bs!729121 () Bool)

(assert (= bs!729121 (and b!4402354 d!1327523)))

(assert (=> bs!729121 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) lt!1606684) (= lambda!149196 lambda!149141))))

(declare-fun bs!729122 () Bool)

(assert (= bs!729122 (and b!4402354 b!4401871)))

(assert (=> bs!729122 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149196 lambda!149136))))

(declare-fun bs!729123 () Bool)

(assert (= bs!729123 (and b!4402354 b!4401949)))

(assert (=> bs!729123 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149196 lambda!149145))))

(declare-fun bs!729124 () Bool)

(assert (= bs!729124 (and b!4402354 b!4401952)))

(assert (=> bs!729124 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) lt!1606724) (= lambda!149196 lambda!149147))))

(declare-fun bs!729125 () Bool)

(assert (= bs!729125 (and b!4402354 b!4401874)))

(assert (=> bs!729125 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) lt!1606688) (= lambda!149196 lambda!149139))))

(declare-fun bs!729126 () Bool)

(assert (= bs!729126 (and b!4402354 d!1327397)))

(assert (=> bs!729126 (not (= lambda!149196 lambda!149040))))

(declare-fun bs!729127 () Bool)

(assert (= bs!729127 (and b!4402354 d!1327621)))

(assert (=> bs!729127 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) lt!1606720) (= lambda!149196 lambda!149148))))

(assert (=> bs!729124 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149196 lambda!149146))))

(assert (=> bs!729125 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149196 lambda!149137))))

(declare-fun bs!729128 () Bool)

(assert (= bs!729128 (and b!4402354 b!4402245)))

(assert (=> bs!729128 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))) (= lambda!149196 lambda!149180))))

(assert (=> bs!729120 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) lt!1606897) (= lambda!149196 lambda!149182))))

(declare-fun bs!729129 () Bool)

(assert (= bs!729129 (and b!4402354 d!1327747)))

(assert (=> bs!729129 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) lt!1606893) (= lambda!149196 lambda!149184))))

(assert (=> b!4402354 true))

(declare-fun bs!729130 () Bool)

(declare-fun b!4402357 () Bool)

(assert (= bs!729130 (and b!4402357 b!4402248)))

(declare-fun lambda!149197 () Int)

(assert (=> bs!729130 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))) (= lambda!149197 lambda!149181))))

(declare-fun bs!729131 () Bool)

(assert (= bs!729131 (and b!4402357 d!1327523)))

(assert (=> bs!729131 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) lt!1606684) (= lambda!149197 lambda!149141))))

(declare-fun bs!729132 () Bool)

(assert (= bs!729132 (and b!4402357 b!4401871)))

(assert (=> bs!729132 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149197 lambda!149136))))

(declare-fun bs!729133 () Bool)

(assert (= bs!729133 (and b!4402357 b!4401949)))

(assert (=> bs!729133 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149197 lambda!149145))))

(declare-fun bs!729134 () Bool)

(assert (= bs!729134 (and b!4402357 b!4401952)))

(assert (=> bs!729134 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) lt!1606724) (= lambda!149197 lambda!149147))))

(declare-fun bs!729135 () Bool)

(assert (= bs!729135 (and b!4402357 b!4401874)))

(assert (=> bs!729135 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) lt!1606688) (= lambda!149197 lambda!149139))))

(declare-fun bs!729136 () Bool)

(assert (= bs!729136 (and b!4402357 b!4402354)))

(assert (=> bs!729136 (= lambda!149197 lambda!149196)))

(declare-fun bs!729137 () Bool)

(assert (= bs!729137 (and b!4402357 d!1327397)))

(assert (=> bs!729137 (not (= lambda!149197 lambda!149040))))

(declare-fun bs!729138 () Bool)

(assert (= bs!729138 (and b!4402357 d!1327621)))

(assert (=> bs!729138 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) lt!1606720) (= lambda!149197 lambda!149148))))

(assert (=> bs!729134 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149197 lambda!149146))))

(assert (=> bs!729135 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149197 lambda!149137))))

(declare-fun bs!729139 () Bool)

(assert (= bs!729139 (and b!4402357 b!4402245)))

(assert (=> bs!729139 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))) (= lambda!149197 lambda!149180))))

(assert (=> bs!729130 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) lt!1606897) (= lambda!149197 lambda!149182))))

(declare-fun bs!729140 () Bool)

(assert (= bs!729140 (and b!4402357 d!1327747)))

(assert (=> bs!729140 (= (= (extractMap!690 (t!356347 (toList!3245 lm!1707))) lt!1606893) (= lambda!149197 lambda!149184))))

(assert (=> b!4402357 true))

(declare-fun lambda!149198 () Int)

(declare-fun lt!1606984 () ListMap!2489)

(assert (=> bs!729130 (= (= lt!1606984 (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))) (= lambda!149198 lambda!149181))))

(assert (=> bs!729131 (= (= lt!1606984 lt!1606684) (= lambda!149198 lambda!149141))))

(assert (=> bs!729132 (= (= lt!1606984 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149198 lambda!149136))))

(assert (=> bs!729133 (= (= lt!1606984 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149198 lambda!149145))))

(assert (=> bs!729134 (= (= lt!1606984 lt!1606724) (= lambda!149198 lambda!149147))))

(assert (=> bs!729135 (= (= lt!1606984 lt!1606688) (= lambda!149198 lambda!149139))))

(assert (=> bs!729136 (= (= lt!1606984 (extractMap!690 (t!356347 (toList!3245 lm!1707)))) (= lambda!149198 lambda!149196))))

(assert (=> bs!729137 (not (= lambda!149198 lambda!149040))))

(assert (=> bs!729138 (= (= lt!1606984 lt!1606720) (= lambda!149198 lambda!149148))))

(assert (=> bs!729134 (= (= lt!1606984 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149198 lambda!149146))))

(assert (=> b!4402357 (= (= lt!1606984 (extractMap!690 (t!356347 (toList!3245 lm!1707)))) (= lambda!149198 lambda!149197))))

(assert (=> bs!729135 (= (= lt!1606984 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149198 lambda!149137))))

(assert (=> bs!729139 (= (= lt!1606984 (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))) (= lambda!149198 lambda!149180))))

(assert (=> bs!729130 (= (= lt!1606984 lt!1606897) (= lambda!149198 lambda!149182))))

(assert (=> bs!729140 (= (= lt!1606984 lt!1606893) (= lambda!149198 lambda!149184))))

(assert (=> b!4402357 true))

(declare-fun bs!729152 () Bool)

(declare-fun d!1327837 () Bool)

(assert (= bs!729152 (and d!1327837 b!4402248)))

(declare-fun lt!1606980 () ListMap!2489)

(declare-fun lambda!149199 () Int)

(assert (=> bs!729152 (= (= lt!1606980 (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))) (= lambda!149199 lambda!149181))))

(declare-fun bs!729153 () Bool)

(assert (= bs!729153 (and d!1327837 d!1327523)))

(assert (=> bs!729153 (= (= lt!1606980 lt!1606684) (= lambda!149199 lambda!149141))))

(declare-fun bs!729154 () Bool)

(assert (= bs!729154 (and d!1327837 b!4401871)))

(assert (=> bs!729154 (= (= lt!1606980 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149199 lambda!149136))))

(declare-fun bs!729155 () Bool)

(assert (= bs!729155 (and d!1327837 b!4401949)))

(assert (=> bs!729155 (= (= lt!1606980 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149199 lambda!149145))))

(declare-fun bs!729156 () Bool)

(assert (= bs!729156 (and d!1327837 b!4401952)))

(assert (=> bs!729156 (= (= lt!1606980 lt!1606724) (= lambda!149199 lambda!149147))))

(declare-fun bs!729157 () Bool)

(assert (= bs!729157 (and d!1327837 b!4401874)))

(assert (=> bs!729157 (= (= lt!1606980 lt!1606688) (= lambda!149199 lambda!149139))))

(declare-fun bs!729158 () Bool)

(assert (= bs!729158 (and d!1327837 d!1327397)))

(assert (=> bs!729158 (not (= lambda!149199 lambda!149040))))

(declare-fun bs!729159 () Bool)

(assert (= bs!729159 (and d!1327837 d!1327621)))

(assert (=> bs!729159 (= (= lt!1606980 lt!1606720) (= lambda!149199 lambda!149148))))

(assert (=> bs!729156 (= (= lt!1606980 (extractMap!690 (t!356347 (t!356347 (toList!3245 lm!1707))))) (= lambda!149199 lambda!149146))))

(declare-fun bs!729160 () Bool)

(assert (= bs!729160 (and d!1327837 b!4402357)))

(assert (=> bs!729160 (= (= lt!1606980 (extractMap!690 (t!356347 (toList!3245 lm!1707)))) (= lambda!149199 lambda!149197))))

(assert (=> bs!729157 (= (= lt!1606980 (extractMap!690 (t!356347 (toList!3245 lt!1606217)))) (= lambda!149199 lambda!149137))))

(declare-fun bs!729161 () Bool)

(assert (= bs!729161 (and d!1327837 b!4402245)))

(assert (=> bs!729161 (= (= lt!1606980 (extractMap!690 (t!356347 (toList!3245 (+!877 lt!1606217 lt!1606215))))) (= lambda!149199 lambda!149180))))

(assert (=> bs!729152 (= (= lt!1606980 lt!1606897) (= lambda!149199 lambda!149182))))

(declare-fun bs!729162 () Bool)

(assert (= bs!729162 (and d!1327837 d!1327747)))

(assert (=> bs!729162 (= (= lt!1606980 lt!1606893) (= lambda!149199 lambda!149184))))

(declare-fun bs!729163 () Bool)

(assert (= bs!729163 (and d!1327837 b!4402354)))

(assert (=> bs!729163 (= (= lt!1606980 (extractMap!690 (t!356347 (toList!3245 lm!1707)))) (= lambda!149199 lambda!149196))))

(assert (=> bs!729160 (= (= lt!1606980 lt!1606984) (= lambda!149199 lambda!149198))))

(assert (=> d!1327837 true))

(declare-fun call!306364 () Bool)

(declare-fun c!749558 () Bool)

(declare-fun bm!306358 () Bool)

(assert (=> bm!306358 (= call!306364 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (toList!3245 lm!1707)))) (ite c!749558 lambda!149196 lambda!149198)))))

(declare-fun call!306365 () Bool)

(declare-fun bm!306359 () Bool)

(assert (=> bm!306359 (= call!306365 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (toList!3245 lm!1707)))) (ite c!749558 lambda!149196 lambda!149197)))))

(declare-fun b!4402355 () Bool)

(declare-fun e!2741188 () Bool)

(assert (=> b!4402355 (= e!2741188 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (toList!3245 lm!1707)))) lambda!149198))))

(declare-fun b!4402356 () Bool)

(declare-fun res!1815963 () Bool)

(declare-fun e!2741187 () Bool)

(assert (=> b!4402356 (=> (not res!1815963) (not e!2741187))))

(assert (=> b!4402356 (= res!1815963 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (toList!3245 lm!1707)))) lambda!149199))))

(declare-fun bm!306360 () Bool)

(declare-fun call!306363 () Unit!78867)

(assert (=> bm!306360 (= call!306363 (lemmaContainsAllItsOwnKeys!131 (extractMap!690 (t!356347 (toList!3245 lm!1707)))))))

(assert (=> d!1327837 e!2741187))

(declare-fun res!1815965 () Bool)

(assert (=> d!1327837 (=> (not res!1815965) (not e!2741187))))

(assert (=> d!1327837 (= res!1815965 (forall!9374 (_2!27742 (h!54916 (toList!3245 lm!1707))) lambda!149199))))

(declare-fun e!2741186 () ListMap!2489)

(assert (=> d!1327837 (= lt!1606980 e!2741186)))

(assert (=> d!1327837 (= c!749558 ((_ is Nil!49288) (_2!27742 (h!54916 (toList!3245 lm!1707)))))))

(assert (=> d!1327837 (noDuplicateKeys!631 (_2!27742 (h!54916 (toList!3245 lm!1707))))))

(assert (=> d!1327837 (= (addToMapMapFromBucket!297 (_2!27742 (h!54916 (toList!3245 lm!1707))) (extractMap!690 (t!356347 (toList!3245 lm!1707)))) lt!1606980)))

(assert (=> b!4402354 (= e!2741186 (extractMap!690 (t!356347 (toList!3245 lm!1707))))))

(declare-fun lt!1606988 () Unit!78867)

(assert (=> b!4402354 (= lt!1606988 call!306363)))

(assert (=> b!4402354 call!306365))

(declare-fun lt!1606975 () Unit!78867)

(assert (=> b!4402354 (= lt!1606975 lt!1606988)))

(assert (=> b!4402354 call!306364))

(declare-fun lt!1606976 () Unit!78867)

(declare-fun Unit!78993 () Unit!78867)

(assert (=> b!4402354 (= lt!1606976 Unit!78993)))

(assert (=> b!4402357 (= e!2741186 lt!1606984)))

(declare-fun lt!1606995 () ListMap!2489)

(assert (=> b!4402357 (= lt!1606995 (+!878 (extractMap!690 (t!356347 (toList!3245 lm!1707))) (h!54915 (_2!27742 (h!54916 (toList!3245 lm!1707))))))))

(assert (=> b!4402357 (= lt!1606984 (addToMapMapFromBucket!297 (t!356346 (_2!27742 (h!54916 (toList!3245 lm!1707)))) (+!878 (extractMap!690 (t!356347 (toList!3245 lm!1707))) (h!54915 (_2!27742 (h!54916 (toList!3245 lm!1707)))))))))

(declare-fun lt!1606985 () Unit!78867)

(assert (=> b!4402357 (= lt!1606985 call!306363)))

(assert (=> b!4402357 call!306365))

(declare-fun lt!1606978 () Unit!78867)

(assert (=> b!4402357 (= lt!1606978 lt!1606985)))

(assert (=> b!4402357 (forall!9374 (toList!3246 lt!1606995) lambda!149198)))

(declare-fun lt!1606983 () Unit!78867)

(declare-fun Unit!78996 () Unit!78867)

(assert (=> b!4402357 (= lt!1606983 Unit!78996)))

(assert (=> b!4402357 (forall!9374 (t!356346 (_2!27742 (h!54916 (toList!3245 lm!1707)))) lambda!149198)))

(declare-fun lt!1606992 () Unit!78867)

(declare-fun Unit!78997 () Unit!78867)

(assert (=> b!4402357 (= lt!1606992 Unit!78997)))

(declare-fun lt!1606982 () Unit!78867)

(declare-fun Unit!78998 () Unit!78867)

(assert (=> b!4402357 (= lt!1606982 Unit!78998)))

(declare-fun lt!1606986 () Unit!78867)

(assert (=> b!4402357 (= lt!1606986 (forallContained!2010 (toList!3246 lt!1606995) lambda!149198 (h!54915 (_2!27742 (h!54916 (toList!3245 lm!1707))))))))

(assert (=> b!4402357 (contains!11681 lt!1606995 (_1!27741 (h!54915 (_2!27742 (h!54916 (toList!3245 lm!1707))))))))

(declare-fun lt!1606987 () Unit!78867)

(declare-fun Unit!78999 () Unit!78867)

(assert (=> b!4402357 (= lt!1606987 Unit!78999)))

(assert (=> b!4402357 (contains!11681 lt!1606984 (_1!27741 (h!54915 (_2!27742 (h!54916 (toList!3245 lm!1707))))))))

(declare-fun lt!1606994 () Unit!78867)

(declare-fun Unit!79000 () Unit!78867)

(assert (=> b!4402357 (= lt!1606994 Unit!79000)))

(assert (=> b!4402357 (forall!9374 (_2!27742 (h!54916 (toList!3245 lm!1707))) lambda!149198)))

(declare-fun lt!1606991 () Unit!78867)

(declare-fun Unit!79001 () Unit!78867)

(assert (=> b!4402357 (= lt!1606991 Unit!79001)))

(assert (=> b!4402357 (forall!9374 (toList!3246 lt!1606995) lambda!149198)))

(declare-fun lt!1606989 () Unit!78867)

(declare-fun Unit!79002 () Unit!78867)

(assert (=> b!4402357 (= lt!1606989 Unit!79002)))

(declare-fun lt!1606993 () Unit!78867)

(declare-fun Unit!79003 () Unit!78867)

(assert (=> b!4402357 (= lt!1606993 Unit!79003)))

(declare-fun lt!1606977 () Unit!78867)

(assert (=> b!4402357 (= lt!1606977 (addForallContainsKeyThenBeforeAdding!131 (extractMap!690 (t!356347 (toList!3245 lm!1707))) lt!1606984 (_1!27741 (h!54915 (_2!27742 (h!54916 (toList!3245 lm!1707))))) (_2!27741 (h!54915 (_2!27742 (h!54916 (toList!3245 lm!1707)))))))))

(assert (=> b!4402357 call!306364))

(declare-fun lt!1606979 () Unit!78867)

(assert (=> b!4402357 (= lt!1606979 lt!1606977)))

(assert (=> b!4402357 (forall!9374 (toList!3246 (extractMap!690 (t!356347 (toList!3245 lm!1707)))) lambda!149198)))

(declare-fun lt!1606981 () Unit!78867)

(declare-fun Unit!79004 () Unit!78867)

(assert (=> b!4402357 (= lt!1606981 Unit!79004)))

(declare-fun res!1815964 () Bool)

(assert (=> b!4402357 (= res!1815964 (forall!9374 (_2!27742 (h!54916 (toList!3245 lm!1707))) lambda!149198))))

(assert (=> b!4402357 (=> (not res!1815964) (not e!2741188))))

(assert (=> b!4402357 e!2741188))

(declare-fun lt!1606990 () Unit!78867)

(declare-fun Unit!79005 () Unit!78867)

(assert (=> b!4402357 (= lt!1606990 Unit!79005)))

(declare-fun b!4402358 () Bool)

(assert (=> b!4402358 (= e!2741187 (invariantList!752 (toList!3246 lt!1606980)))))

(assert (= (and d!1327837 c!749558) b!4402354))

(assert (= (and d!1327837 (not c!749558)) b!4402357))

(assert (= (and b!4402357 res!1815964) b!4402355))

(assert (= (or b!4402354 b!4402357) bm!306360))

(assert (= (or b!4402354 b!4402357) bm!306359))

(assert (= (or b!4402354 b!4402357) bm!306358))

(assert (= (and d!1327837 res!1815965) b!4402356))

(assert (= (and b!4402356 res!1815963) b!4402358))

(assert (=> b!4402357 m!5064437))

(declare-fun m!5066239 () Bool)

(assert (=> b!4402357 m!5066239))

(declare-fun m!5066241 () Bool)

(assert (=> b!4402357 m!5066241))

(declare-fun m!5066243 () Bool)

(assert (=> b!4402357 m!5066243))

(assert (=> b!4402357 m!5064437))

(assert (=> b!4402357 m!5066241))

(declare-fun m!5066245 () Bool)

(assert (=> b!4402357 m!5066245))

(declare-fun m!5066247 () Bool)

(assert (=> b!4402357 m!5066247))

(declare-fun m!5066249 () Bool)

(assert (=> b!4402357 m!5066249))

(assert (=> b!4402357 m!5066245))

(declare-fun m!5066251 () Bool)

(assert (=> b!4402357 m!5066251))

(assert (=> b!4402357 m!5066247))

(declare-fun m!5066253 () Bool)

(assert (=> b!4402357 m!5066253))

(declare-fun m!5066255 () Bool)

(assert (=> b!4402357 m!5066255))

(declare-fun m!5066257 () Bool)

(assert (=> b!4402357 m!5066257))

(declare-fun m!5066259 () Bool)

(assert (=> b!4402356 m!5066259))

(declare-fun m!5066261 () Bool)

(assert (=> bm!306358 m!5066261))

(declare-fun m!5066263 () Bool)

(assert (=> d!1327837 m!5066263))

(assert (=> d!1327837 m!5064819))

(declare-fun m!5066265 () Bool)

(assert (=> b!4402358 m!5066265))

(declare-fun m!5066267 () Bool)

(assert (=> bm!306359 m!5066267))

(assert (=> b!4402355 m!5066249))

(assert (=> bm!306360 m!5064437))

(declare-fun m!5066269 () Bool)

(assert (=> bm!306360 m!5066269))

(assert (=> b!4401539 d!1327837))

(assert (=> b!4401539 d!1327379))

(declare-fun d!1327863 () Bool)

(declare-fun res!1815968 () Bool)

(declare-fun e!2741194 () Bool)

(assert (=> d!1327863 (=> res!1815968 e!2741194)))

(assert (=> d!1327863 (= res!1815968 (not ((_ is Cons!49288) (t!356346 newBucket!200))))))

(assert (=> d!1327863 (= (noDuplicateKeys!631 (t!356346 newBucket!200)) e!2741194)))

(declare-fun b!4402364 () Bool)

(declare-fun e!2741195 () Bool)

(assert (=> b!4402364 (= e!2741194 e!2741195)))

(declare-fun res!1815969 () Bool)

(assert (=> b!4402364 (=> (not res!1815969) (not e!2741195))))

(assert (=> b!4402364 (= res!1815969 (not (containsKey!941 (t!356346 (t!356346 newBucket!200)) (_1!27741 (h!54915 (t!356346 newBucket!200))))))))

(declare-fun b!4402365 () Bool)

(assert (=> b!4402365 (= e!2741195 (noDuplicateKeys!631 (t!356346 (t!356346 newBucket!200))))))

(assert (= (and d!1327863 (not res!1815968)) b!4402364))

(assert (= (and b!4402364 res!1815969) b!4402365))

(declare-fun m!5066271 () Bool)

(assert (=> b!4402364 m!5066271))

(declare-fun m!5066273 () Bool)

(assert (=> b!4402365 m!5066273))

(assert (=> b!4401527 d!1327863))

(declare-fun d!1327865 () Bool)

(declare-fun res!1815970 () Bool)

(declare-fun e!2741196 () Bool)

(assert (=> d!1327865 (=> res!1815970 e!2741196)))

(assert (=> d!1327865 (= res!1815970 (not ((_ is Cons!49288) (_2!27742 (h!54916 (toList!3245 lt!1606221))))))))

(assert (=> d!1327865 (= (noDuplicateKeys!631 (_2!27742 (h!54916 (toList!3245 lt!1606221)))) e!2741196)))

(declare-fun b!4402366 () Bool)

(declare-fun e!2741197 () Bool)

(assert (=> b!4402366 (= e!2741196 e!2741197)))

(declare-fun res!1815971 () Bool)

(assert (=> b!4402366 (=> (not res!1815971) (not e!2741197))))

(assert (=> b!4402366 (= res!1815971 (not (containsKey!941 (t!356346 (_2!27742 (h!54916 (toList!3245 lt!1606221)))) (_1!27741 (h!54915 (_2!27742 (h!54916 (toList!3245 lt!1606221))))))))))

(declare-fun b!4402367 () Bool)

(assert (=> b!4402367 (= e!2741197 (noDuplicateKeys!631 (t!356346 (_2!27742 (h!54916 (toList!3245 lt!1606221))))))))

(assert (= (and d!1327865 (not res!1815970)) b!4402366))

(assert (= (and b!4402366 res!1815971) b!4402367))

(declare-fun m!5066275 () Bool)

(assert (=> b!4402366 m!5066275))

(declare-fun m!5066277 () Bool)

(assert (=> b!4402367 m!5066277))

(assert (=> bs!728706 d!1327865))

(assert (=> d!1327391 d!1327633))

(declare-fun d!1327867 () Bool)

(declare-fun res!1815972 () Bool)

(declare-fun e!2741198 () Bool)

(assert (=> d!1327867 (=> res!1815972 e!2741198)))

(assert (=> d!1327867 (= res!1815972 (and ((_ is Cons!49288) (t!356346 (_2!27742 (h!54916 (toList!3245 lm!1707))))) (= (_1!27741 (h!54915 (t!356346 (_2!27742 (h!54916 (toList!3245 lm!1707)))))) key!3918)))))

(assert (=> d!1327867 (= (containsKey!941 (t!356346 (_2!27742 (h!54916 (toList!3245 lm!1707)))) key!3918) e!2741198)))

(declare-fun b!4402368 () Bool)

(declare-fun e!2741199 () Bool)

(assert (=> b!4402368 (= e!2741198 e!2741199)))

(declare-fun res!1815973 () Bool)

(assert (=> b!4402368 (=> (not res!1815973) (not e!2741199))))

(assert (=> b!4402368 (= res!1815973 ((_ is Cons!49288) (t!356346 (_2!27742 (h!54916 (toList!3245 lm!1707))))))))

(declare-fun b!4402369 () Bool)

(assert (=> b!4402369 (= e!2741199 (containsKey!941 (t!356346 (t!356346 (_2!27742 (h!54916 (toList!3245 lm!1707))))) key!3918))))

(assert (= (and d!1327867 (not res!1815972)) b!4402368))

(assert (= (and b!4402368 res!1815973) b!4402369))

(declare-fun m!5066279 () Bool)

(assert (=> b!4402369 m!5066279))

(assert (=> b!4401548 d!1327867))

(declare-fun b!4402370 () Bool)

(declare-fun tp!1331885 () Bool)

(declare-fun e!2741200 () Bool)

(assert (=> b!4402370 (= e!2741200 (and tp_is_empty!25761 tp_is_empty!25763 tp!1331885))))

(assert (=> b!4401559 (= tp!1331874 e!2741200)))

(assert (= (and b!4401559 ((_ is Cons!49288) (t!356346 (t!356346 newBucket!200)))) b!4402370))

(declare-fun tp!1331886 () Bool)

(declare-fun e!2741201 () Bool)

(declare-fun b!4402371 () Bool)

(assert (=> b!4402371 (= e!2741201 (and tp_is_empty!25761 tp_is_empty!25763 tp!1331886))))

(assert (=> b!4401564 (= tp!1331879 e!2741201)))

(assert (= (and b!4401564 ((_ is Cons!49288) (_2!27742 (h!54916 (toList!3245 lm!1707))))) b!4402371))

(declare-fun b!4402372 () Bool)

(declare-fun e!2741202 () Bool)

(declare-fun tp!1331887 () Bool)

(declare-fun tp!1331888 () Bool)

(assert (=> b!4402372 (= e!2741202 (and tp!1331887 tp!1331888))))

(assert (=> b!4401564 (= tp!1331880 e!2741202)))

(assert (= (and b!4401564 ((_ is Cons!49289) (t!356347 (toList!3245 lm!1707)))) b!4402372))

(declare-fun b_lambda!139961 () Bool)

(assert (= b_lambda!139919 (or start!427908 b_lambda!139961)))

(declare-fun bs!729164 () Bool)

(declare-fun d!1327869 () Bool)

(assert (= bs!729164 (and d!1327869 start!427908)))

(assert (=> bs!729164 (= (dynLambda!20766 lambda!149007 (h!54916 (toList!3245 (+!877 lm!1707 (tuple2!48897 hash!377 newBucket!200))))) (noDuplicateKeys!631 (_2!27742 (h!54916 (toList!3245 (+!877 lm!1707 (tuple2!48897 hash!377 newBucket!200)))))))))

(declare-fun m!5066281 () Bool)

(assert (=> bs!729164 m!5066281))

(assert (=> b!4402089 d!1327869))

(declare-fun b_lambda!139963 () Bool)

(assert (= b_lambda!139899 (or d!1327371 b_lambda!139963)))

(declare-fun bs!729165 () Bool)

(declare-fun d!1327871 () Bool)

(assert (= bs!729165 (and d!1327871 d!1327371)))

(assert (=> bs!729165 (= (dynLambda!20766 lambda!149035 (h!54916 (toList!3245 (+!877 lt!1606217 lt!1606215)))) (noDuplicateKeys!631 (_2!27742 (h!54916 (toList!3245 (+!877 lt!1606217 lt!1606215))))))))

(assert (=> bs!729165 m!5065963))

(assert (=> b!4401770 d!1327871))

(declare-fun b_lambda!139965 () Bool)

(assert (= b_lambda!139921 (or start!427908 b_lambda!139965)))

(assert (=> d!1327699 d!1327413))

(declare-fun b_lambda!139967 () Bool)

(assert (= b_lambda!139927 (or start!427908 b_lambda!139967)))

(declare-fun bs!729166 () Bool)

(declare-fun d!1327873 () Bool)

(assert (= bs!729166 (and d!1327873 start!427908)))

(assert (=> bs!729166 (= (dynLambda!20766 lambda!149007 (h!54916 (t!356347 (toList!3245 lm!1707)))) (noDuplicateKeys!631 (_2!27742 (h!54916 (t!356347 (toList!3245 lm!1707))))))))

(assert (=> bs!729166 m!5065521))

(assert (=> b!4402263 d!1327873))

(declare-fun b_lambda!139969 () Bool)

(assert (= b_lambda!139897 (or d!1327365 b_lambda!139969)))

(declare-fun bs!729167 () Bool)

(declare-fun d!1327875 () Bool)

(assert (= bs!729167 (and d!1327875 d!1327365)))

(assert (=> bs!729167 (= (dynLambda!20766 lambda!149034 (h!54916 (toList!3245 lm!1707))) (noDuplicateKeys!631 (_2!27742 (h!54916 (toList!3245 lm!1707)))))))

(assert (=> bs!729167 m!5064819))

(assert (=> b!4401761 d!1327875))

(declare-fun b_lambda!139971 () Bool)

(assert (= b_lambda!139909 (or d!1327379 b_lambda!139971)))

(declare-fun bs!729168 () Bool)

(declare-fun d!1327877 () Bool)

(assert (= bs!729168 (and d!1327877 d!1327379)))

(assert (=> bs!729168 (= (dynLambda!20766 lambda!149036 (h!54916 (t!356347 (toList!3245 lm!1707)))) (noDuplicateKeys!631 (_2!27742 (h!54916 (t!356347 (toList!3245 lm!1707))))))))

(assert (=> bs!729168 m!5065521))

(assert (=> b!4401914 d!1327877))

(declare-fun b_lambda!139973 () Bool)

(assert (= b_lambda!139933 (or d!1327363 b_lambda!139973)))

(declare-fun bs!729169 () Bool)

(declare-fun d!1327879 () Bool)

(assert (= bs!729169 (and d!1327879 d!1327363)))

(assert (=> bs!729169 (= (dynLambda!20766 lambda!149031 (h!54916 (toList!3245 lt!1606217))) (noDuplicateKeys!631 (_2!27742 (h!54916 (toList!3245 lt!1606217)))))))

(assert (=> bs!729169 m!5065409))

(assert (=> b!4402293 d!1327879))

(declare-fun b_lambda!139975 () Bool)

(assert (= b_lambda!139923 (or d!1327399 b_lambda!139975)))

(declare-fun bs!729170 () Bool)

(declare-fun d!1327881 () Bool)

(assert (= bs!729170 (and d!1327881 d!1327399)))

(assert (=> bs!729170 (= (dynLambda!20766 lambda!149043 (h!54916 (toList!3245 lm!1707))) (allKeysSameHash!589 (_2!27742 (h!54916 (toList!3245 lm!1707))) (_1!27742 (h!54916 (toList!3245 lm!1707))) hashF!1247))))

(declare-fun m!5066283 () Bool)

(assert (=> bs!729170 m!5066283))

(assert (=> b!4402117 d!1327881))

(declare-fun b_lambda!139977 () Bool)

(assert (= b_lambda!139935 (or d!1327395 b_lambda!139977)))

(declare-fun bs!729171 () Bool)

(declare-fun d!1327883 () Bool)

(assert (= bs!729171 (and d!1327883 d!1327395)))

(assert (=> bs!729171 (= (dynLambda!20766 lambda!149037 (h!54916 (toList!3245 lm!1707))) (noDuplicateKeys!631 (_2!27742 (h!54916 (toList!3245 lm!1707)))))))

(assert (=> bs!729171 m!5064819))

(assert (=> b!4402295 d!1327883))

(declare-fun b_lambda!139979 () Bool)

(assert (= b_lambda!139931 (or d!1327343 b_lambda!139979)))

(declare-fun bs!729172 () Bool)

(declare-fun d!1327885 () Bool)

(assert (= bs!729172 (and d!1327885 d!1327343)))

(assert (=> bs!729172 (= (dynLambda!20766 lambda!149028 (h!54916 (toList!3245 lt!1606217))) (noDuplicateKeys!631 (_2!27742 (h!54916 (toList!3245 lt!1606217)))))))

(assert (=> bs!729172 m!5065409))

(assert (=> b!4402283 d!1327885))

(declare-fun b_lambda!139981 () Bool)

(assert (= b_lambda!139901 (or d!1327397 b_lambda!139981)))

(declare-fun bs!729173 () Bool)

(declare-fun d!1327887 () Bool)

(assert (= bs!729173 (and d!1327887 d!1327397)))

(assert (=> bs!729173 (= (dynLambda!20768 lambda!149040 (h!54915 newBucket!200)) (= (hash!1877 hashF!1247 (_1!27741 (h!54915 newBucket!200))) hash!377))))

(declare-fun m!5066285 () Bool)

(assert (=> bs!729173 m!5066285))

(assert (=> b!4401800 d!1327887))

(declare-fun b_lambda!139983 () Bool)

(assert (= b_lambda!139891 (or start!427908 b_lambda!139983)))

(declare-fun bs!729174 () Bool)

(declare-fun d!1327889 () Bool)

(assert (= bs!729174 (and d!1327889 start!427908)))

(assert (=> bs!729174 (= (dynLambda!20766 lambda!149007 (h!54916 (t!356347 (toList!3245 lt!1606221)))) (noDuplicateKeys!631 (_2!27742 (h!54916 (t!356347 (toList!3245 lt!1606221))))))))

(declare-fun m!5066287 () Bool)

(assert (=> bs!729174 m!5066287))

(assert (=> b!4401699 d!1327889))

(check-sat (not b!4402008) (not b!4402022) (not b_lambda!139965) (not d!1327491) (not d!1327585) (not b!4402284) (not bs!729173) (not b!4401746) (not b_lambda!139881) (not b!4402240) (not b!4402099) (not b!4402119) (not b!4402286) (not b!4402322) (not bm!306352) (not d!1327513) (not b!4402269) (not b!4401980) (not bs!729165) (not b!4401872) (not bm!306358) (not b!4401910) (not b_lambda!139981) (not d!1327647) (not b!4401766) (not b!4402162) (not d!1327645) (not b!4401782) (not d!1327767) (not d!1327603) (not b!4402248) (not b!4402296) (not b!4401915) (not b!4402035) (not b!4402356) (not b!4401953) (not d!1327631) (not d!1327831) (not d!1327803) (not b!4402081) (not d!1327747) (not b!4402318) (not b!4401873) (not d!1327523) (not d!1327807) (not d!1327617) (not b!4402134) (not bs!729169) (not d!1327593) (not b!4402247) (not b_lambda!139983) (not b!4401920) (not b!4402342) (not b_lambda!139977) (not b!4401693) (not b!4402232) (not d!1327705) (not b!4401940) (not d!1327625) (not bs!729166) (not bm!306346) (not b_lambda!139973) (not bm!306330) (not b!4402088) (not b!4402136) (not b!4402005) (not b!4401875) (not d!1327497) (not b!4402139) (not bs!729170) (not d!1327695) (not d!1327757) (not b!4402315) (not b!4402163) (not b!4401801) (not d!1327715) (not d!1327835) (not b!4402233) (not d!1327693) (not bs!729172) (not b!4401667) (not b_lambda!139969) (not b!4402141) (not b_lambda!139883) (not d!1327701) (not d!1327499) (not b!4402246) (not d!1327709) (not b!4401762) (not b!4402138) (not b!4402308) (not b!4401759) (not b!4402292) (not bm!306359) (not b!4402313) (not b!4402105) (not b!4402086) (not d!1327433) (not b!4402118) (not b!4401936) (not b!4402036) (not b!4402121) (not bs!729168) (not b!4402096) (not b!4402017) (not b!4401651) (not b!4401606) (not d!1327447) (not b!4401747) (not bm!306342) (not b!4401902) (not bm!306311) (not bm!306306) (not b!4401795) (not d!1327787) (not b!4402120) (not bm!306343) (not b!4402370) (not b!4401769) (not b!4402261) (not b!4402297) (not d!1327493) (not b!4402091) (not bs!729174) (not b!4402364) (not b_lambda!139885) (not b!4401758) (not d!1327495) (not d!1327691) (not d!1327643) (not d!1327485) (not b!4401752) (not b!4401950) (not b!4402321) (not b!4401654) (not d!1327809) (not b!4401788) (not b!4402014) (not b!4401943) (not b!4402090) (not b!4402317) (not d!1327795) (not b!4401760) (not d!1327445) (not b!4402305) (not bm!306360) (not b!4402124) (not b!4402369) (not b!4401938) (not bm!306347) (not d!1327509) (not bs!729164) (not d!1327627) (not b_lambda!139963) (not b!4402371) (not d!1327771) tp_is_empty!25761 (not b!4402316) (not b!4402272) (not b!4401751) (not b!4402270) (not b!4402304) (not b!4402372) (not b!4402365) (not b!4402142) (not b!4401764) (not d!1327517) (not b!4402234) (not b!4402367) (not b!4401771) (not d!1327455) (not b_lambda!139979) (not b!4402358) (not b!4401767) (not d!1327577) (not b!4402243) (not bm!306307) (not b!4402015) (not b!4401692) (not b!4401765) (not d!1327711) (not b!4402095) (not b!4402355) (not b!4401785) (not d!1327811) (not d!1327665) (not b!4401646) (not b!4402104) (not b!4402092) (not d!1327503) (not b_lambda!139975) (not b!4401649) (not d!1327761) (not b!4402249) (not b!4401982) (not b!4402097) (not b_lambda!139967) (not b!4401956) (not b_lambda!139961) (not b!4402000) (not d!1327505) (not bs!729171) (not b!4402357) tp_is_empty!25763 (not b!4402140) (not d!1327429) (not d!1327689) (not d!1327703) (not b!4402154) (not b!4401650) (not b!4401694) (not d!1327763) (not bm!306348) (not bs!729167) (not d!1327721) (not b!4402101) (not b!4401748) (not bm!306308) (not b_lambda!139971) (not b!4402264) (not b!4402266) (not b!4402238) (not b!4401926) (not d!1327837) (not b!4402241) (not b!4401874) (not d!1327621) (not d!1327765) (not b!4402271) (not d!1327657) (not b!4401911) (not b!4402267) (not bm!306309) (not b!4402366) (not bm!306310) (not b!4402294) (not b!4401951) (not b_lambda!139887) (not d!1327597) (not d!1327799) (not b!4402299) (not d!1327605) (not b!4402235) (not b!4402125) (not b!4402302) (not bm!306327) (not d!1327791) (not d!1327629) (not b!4401613) (not b!4402106) (not b!4401700) (not b!4401952))
(check-sat)
