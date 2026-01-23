; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419708 () Bool)

(assert start!419708)

(declare-fun b!4347336 () Bool)

(declare-fun e!2705290 () Bool)

(declare-datatypes ((V!10441 0))(
  ( (V!10442 (val!16427 Int)) )
))
(declare-datatypes ((K!10195 0))(
  ( (K!10196 (val!16428 Int)) )
))
(declare-datatypes ((tuple2!48174 0))(
  ( (tuple2!48175 (_1!27381 K!10195) (_2!27381 V!10441)) )
))
(declare-datatypes ((List!48955 0))(
  ( (Nil!48831) (Cons!48831 (h!54358 tuple2!48174) (t!355875 List!48955)) )
))
(declare-datatypes ((tuple2!48176 0))(
  ( (tuple2!48177 (_1!27382 (_ BitVec 64)) (_2!27382 List!48955)) )
))
(declare-datatypes ((List!48956 0))(
  ( (Nil!48832) (Cons!48832 (h!54359 tuple2!48176) (t!355876 List!48956)) )
))
(declare-datatypes ((ListLongMap!1535 0))(
  ( (ListLongMap!1536 (toList!2885 List!48956)) )
))
(declare-fun lm!1707 () ListLongMap!1535)

(declare-fun lambda!138627 () Int)

(declare-fun forall!9047 (List!48956 Int) Bool)

(assert (=> b!4347336 (= e!2705290 (forall!9047 (toList!2885 lm!1707) lambda!138627))))

(declare-fun b!4347337 () Bool)

(declare-fun res!1785427 () Bool)

(assert (=> b!4347337 (=> res!1785427 e!2705290)))

(declare-fun contains!10982 (ListLongMap!1535 (_ BitVec 64)) Bool)

(assert (=> b!4347337 (= res!1785427 (not (contains!10982 lm!1707 (_1!27382 (h!54359 (toList!2885 lm!1707))))))))

(declare-fun b!4347339 () Bool)

(declare-fun e!2705285 () Bool)

(declare-fun lt!1562247 () ListLongMap!1535)

(assert (=> b!4347339 (= e!2705285 (forall!9047 (toList!2885 lt!1562247) lambda!138627))))

(declare-fun b!4347340 () Bool)

(declare-fun e!2705284 () Bool)

(declare-fun e!2705287 () Bool)

(assert (=> b!4347340 (= e!2705284 e!2705287)))

(declare-fun res!1785421 () Bool)

(assert (=> b!4347340 (=> (not res!1785421) (not e!2705287))))

(declare-fun lt!1562248 () (_ BitVec 64))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4347340 (= res!1785421 (= lt!1562248 hash!377))))

(declare-datatypes ((Hashable!4843 0))(
  ( (HashableExt!4842 (__x!30546 Int)) )
))
(declare-fun hashF!1247 () Hashable!4843)

(declare-fun key!3918 () K!10195)

(declare-fun hash!1438 (Hashable!4843 K!10195) (_ BitVec 64))

(assert (=> b!4347340 (= lt!1562248 (hash!1438 hashF!1247 key!3918))))

(declare-fun b!4347341 () Bool)

(declare-fun e!2705288 () Bool)

(assert (=> b!4347341 (= e!2705287 (not e!2705288))))

(declare-fun res!1785428 () Bool)

(assert (=> b!4347341 (=> res!1785428 e!2705288)))

(declare-fun newBucket!200 () List!48955)

(declare-fun lt!1562249 () List!48955)

(declare-fun newValue!99 () V!10441)

(declare-fun removePairForKey!421 (List!48955 K!10195) List!48955)

(assert (=> b!4347341 (= res!1785428 (not (= newBucket!200 (Cons!48831 (tuple2!48175 key!3918 newValue!99) (removePairForKey!421 lt!1562249 key!3918)))))))

(declare-fun lt!1562246 () tuple2!48176)

(declare-datatypes ((Unit!70749 0))(
  ( (Unit!70750) )
))
(declare-fun lt!1562251 () Unit!70749)

(declare-fun forallContained!1697 (List!48956 Int tuple2!48176) Unit!70749)

(assert (=> b!4347341 (= lt!1562251 (forallContained!1697 (toList!2885 lm!1707) lambda!138627 lt!1562246))))

(declare-fun contains!10983 (List!48956 tuple2!48176) Bool)

(assert (=> b!4347341 (contains!10983 (toList!2885 lm!1707) lt!1562246)))

(assert (=> b!4347341 (= lt!1562246 (tuple2!48177 hash!377 lt!1562249))))

(declare-fun lt!1562252 () Unit!70749)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!298 (List!48956 (_ BitVec 64) List!48955) Unit!70749)

(assert (=> b!4347341 (= lt!1562252 (lemmaGetValueByKeyImpliesContainsTuple!298 (toList!2885 lm!1707) hash!377 lt!1562249))))

(declare-fun apply!11303 (ListLongMap!1535 (_ BitVec 64)) List!48955)

(assert (=> b!4347341 (= lt!1562249 (apply!11303 lm!1707 hash!377))))

(declare-fun b!4347342 () Bool)

(declare-fun res!1785433 () Bool)

(assert (=> b!4347342 (=> res!1785433 e!2705290)))

(assert (=> b!4347342 (= res!1785433 (not (forall!9047 (toList!2885 lm!1707) lambda!138627)))))

(declare-fun b!4347343 () Bool)

(declare-fun res!1785429 () Bool)

(assert (=> b!4347343 (=> res!1785429 e!2705290)))

(assert (=> b!4347343 (= res!1785429 (= (_1!27382 (h!54359 (toList!2885 lm!1707))) lt!1562248))))

(declare-fun b!4347344 () Bool)

(declare-fun res!1785424 () Bool)

(assert (=> b!4347344 (=> res!1785424 e!2705288)))

(declare-fun noDuplicateKeys!451 (List!48955) Bool)

(assert (=> b!4347344 (= res!1785424 (not (noDuplicateKeys!451 newBucket!200)))))

(declare-fun b!4347345 () Bool)

(declare-fun res!1785425 () Bool)

(assert (=> b!4347345 (=> (not res!1785425) (not e!2705287))))

(assert (=> b!4347345 (= res!1785425 (contains!10982 lm!1707 hash!377))))

(declare-fun b!4347346 () Bool)

(declare-fun res!1785422 () Bool)

(assert (=> b!4347346 (=> (not res!1785422) (not e!2705284))))

(declare-fun allKeysSameHashInMap!555 (ListLongMap!1535 Hashable!4843) Bool)

(assert (=> b!4347346 (= res!1785422 (allKeysSameHashInMap!555 lm!1707 hashF!1247))))

(declare-fun b!4347338 () Bool)

(assert (=> b!4347338 (= e!2705288 e!2705290)))

(declare-fun res!1785431 () Bool)

(assert (=> b!4347338 (=> res!1785431 e!2705290)))

(get-info :version)

(assert (=> b!4347338 (= res!1785431 (or (and ((_ is Cons!48832) (toList!2885 lm!1707)) (= (_1!27382 (h!54359 (toList!2885 lm!1707))) hash!377)) (not ((_ is Cons!48832) (toList!2885 lm!1707))) (= (_1!27382 (h!54359 (toList!2885 lm!1707))) hash!377)))))

(assert (=> b!4347338 e!2705285))

(declare-fun res!1785423 () Bool)

(assert (=> b!4347338 (=> (not res!1785423) (not e!2705285))))

(assert (=> b!4347338 (= res!1785423 (forall!9047 (toList!2885 lt!1562247) lambda!138627))))

(declare-fun +!572 (ListLongMap!1535 tuple2!48176) ListLongMap!1535)

(assert (=> b!4347338 (= lt!1562247 (+!572 lm!1707 (tuple2!48177 hash!377 newBucket!200)))))

(declare-fun lt!1562250 () Unit!70749)

(declare-fun addValidProp!105 (ListLongMap!1535 Int (_ BitVec 64) List!48955) Unit!70749)

(assert (=> b!4347338 (= lt!1562250 (addValidProp!105 lm!1707 lambda!138627 hash!377 newBucket!200))))

(assert (=> b!4347338 (forall!9047 (toList!2885 lm!1707) lambda!138627)))

(declare-fun res!1785430 () Bool)

(assert (=> start!419708 (=> (not res!1785430) (not e!2705284))))

(assert (=> start!419708 (= res!1785430 (forall!9047 (toList!2885 lm!1707) lambda!138627))))

(assert (=> start!419708 e!2705284))

(declare-fun e!2705289 () Bool)

(assert (=> start!419708 e!2705289))

(assert (=> start!419708 true))

(declare-fun e!2705286 () Bool)

(declare-fun inv!64381 (ListLongMap!1535) Bool)

(assert (=> start!419708 (and (inv!64381 lm!1707) e!2705286)))

(declare-fun tp_is_empty!25041 () Bool)

(assert (=> start!419708 tp_is_empty!25041))

(declare-fun tp_is_empty!25043 () Bool)

(assert (=> start!419708 tp_is_empty!25043))

(declare-fun b!4347347 () Bool)

(declare-fun res!1785426 () Bool)

(assert (=> b!4347347 (=> (not res!1785426) (not e!2705287))))

(declare-fun allKeysSameHash!409 (List!48955 (_ BitVec 64) Hashable!4843) Bool)

(assert (=> b!4347347 (= res!1785426 (allKeysSameHash!409 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4347348 () Bool)

(declare-fun tp!1329640 () Bool)

(assert (=> b!4347348 (= e!2705289 (and tp_is_empty!25041 tp_is_empty!25043 tp!1329640))))

(declare-fun b!4347349 () Bool)

(declare-fun res!1785432 () Bool)

(assert (=> b!4347349 (=> (not res!1785432) (not e!2705287))))

(declare-datatypes ((ListMap!2129 0))(
  ( (ListMap!2130 (toList!2886 List!48955)) )
))
(declare-fun contains!10984 (ListMap!2129 K!10195) Bool)

(declare-fun extractMap!510 (List!48956) ListMap!2129)

(assert (=> b!4347349 (= res!1785432 (contains!10984 (extractMap!510 (toList!2885 lm!1707)) key!3918))))

(declare-fun b!4347350 () Bool)

(declare-fun tp!1329639 () Bool)

(assert (=> b!4347350 (= e!2705286 tp!1329639)))

(assert (= (and start!419708 res!1785430) b!4347346))

(assert (= (and b!4347346 res!1785422) b!4347340))

(assert (= (and b!4347340 res!1785421) b!4347347))

(assert (= (and b!4347347 res!1785426) b!4347349))

(assert (= (and b!4347349 res!1785432) b!4347345))

(assert (= (and b!4347345 res!1785425) b!4347341))

(assert (= (and b!4347341 (not res!1785428)) b!4347344))

(assert (= (and b!4347344 (not res!1785424)) b!4347338))

(assert (= (and b!4347338 res!1785423) b!4347339))

(assert (= (and b!4347338 (not res!1785431)) b!4347342))

(assert (= (and b!4347342 (not res!1785433)) b!4347337))

(assert (= (and b!4347337 (not res!1785427)) b!4347343))

(assert (= (and b!4347343 (not res!1785429)) b!4347336))

(assert (= (and start!419708 ((_ is Cons!48831) newBucket!200)) b!4347348))

(assert (= start!419708 b!4347350))

(declare-fun m!4956407 () Bool)

(assert (=> b!4347344 m!4956407))

(declare-fun m!4956409 () Bool)

(assert (=> b!4347349 m!4956409))

(assert (=> b!4347349 m!4956409))

(declare-fun m!4956411 () Bool)

(assert (=> b!4347349 m!4956411))

(declare-fun m!4956413 () Bool)

(assert (=> b!4347345 m!4956413))

(declare-fun m!4956415 () Bool)

(assert (=> b!4347347 m!4956415))

(declare-fun m!4956417 () Bool)

(assert (=> b!4347338 m!4956417))

(declare-fun m!4956419 () Bool)

(assert (=> b!4347338 m!4956419))

(declare-fun m!4956421 () Bool)

(assert (=> b!4347338 m!4956421))

(declare-fun m!4956423 () Bool)

(assert (=> b!4347338 m!4956423))

(assert (=> b!4347336 m!4956423))

(assert (=> b!4347342 m!4956423))

(declare-fun m!4956425 () Bool)

(assert (=> b!4347340 m!4956425))

(declare-fun m!4956427 () Bool)

(assert (=> b!4347337 m!4956427))

(declare-fun m!4956429 () Bool)

(assert (=> b!4347341 m!4956429))

(declare-fun m!4956431 () Bool)

(assert (=> b!4347341 m!4956431))

(declare-fun m!4956433 () Bool)

(assert (=> b!4347341 m!4956433))

(declare-fun m!4956435 () Bool)

(assert (=> b!4347341 m!4956435))

(declare-fun m!4956437 () Bool)

(assert (=> b!4347341 m!4956437))

(assert (=> b!4347339 m!4956417))

(declare-fun m!4956439 () Bool)

(assert (=> b!4347346 m!4956439))

(assert (=> start!419708 m!4956423))

(declare-fun m!4956441 () Bool)

(assert (=> start!419708 m!4956441))

(check-sat (not b!4347342) (not b!4347341) tp_is_empty!25043 (not b!4347337) (not b!4347344) tp_is_empty!25041 (not b!4347340) (not b!4347346) (not b!4347338) (not b!4347345) (not b!4347350) (not b!4347336) (not b!4347348) (not b!4347349) (not b!4347347) (not start!419708) (not b!4347339))
(check-sat)
