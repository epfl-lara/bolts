; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!426302 () Bool)

(assert start!426302)

(declare-fun b!4393267 () Bool)

(declare-fun res!1810944 () Bool)

(declare-fun e!2735375 () Bool)

(assert (=> b!4393267 (=> (not res!1810944) (not e!2735375))))

(declare-datatypes ((K!10558 0))(
  ( (K!10559 (val!16717 Int)) )
))
(declare-datatypes ((V!10804 0))(
  ( (V!10805 (val!16718 Int)) )
))
(declare-datatypes ((tuple2!48754 0))(
  ( (tuple2!48755 (_1!27671 K!10558) (_2!27671 V!10804)) )
))
(declare-datatypes ((List!49324 0))(
  ( (Nil!49200) (Cons!49200 (h!54807 tuple2!48754) (t!356258 List!49324)) )
))
(declare-fun newBucket!200 () List!49324)

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4988 0))(
  ( (HashableExt!4987 (__x!30691 Int)) )
))
(declare-fun hashF!1247 () Hashable!4988)

(declare-fun allKeysSameHash!554 (List!49324 (_ BitVec 64) Hashable!4988) Bool)

(assert (=> b!4393267 (= res!1810944 (allKeysSameHash!554 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4393268 () Bool)

(declare-fun e!2735373 () Bool)

(declare-datatypes ((tuple2!48756 0))(
  ( (tuple2!48757 (_1!27672 (_ BitVec 64)) (_2!27672 List!49324)) )
))
(declare-datatypes ((List!49325 0))(
  ( (Nil!49201) (Cons!49201 (h!54808 tuple2!48756) (t!356259 List!49325)) )
))
(declare-datatypes ((ListLongMap!1825 0))(
  ( (ListLongMap!1826 (toList!3175 List!49325)) )
))
(declare-fun lm!1707 () ListLongMap!1825)

(declare-fun lambda!147314 () Int)

(declare-fun forall!9304 (List!49325 Int) Bool)

(assert (=> b!4393268 (= e!2735373 (forall!9304 (toList!3175 lm!1707) lambda!147314))))

(declare-fun b!4393269 () Bool)

(declare-fun e!2735372 () Bool)

(declare-fun tp_is_empty!25623 () Bool)

(declare-fun tp!1331415 () Bool)

(declare-fun tp_is_empty!25621 () Bool)

(assert (=> b!4393269 (= e!2735372 (and tp_is_empty!25621 tp_is_empty!25623 tp!1331415))))

(declare-fun b!4393270 () Bool)

(declare-fun e!2735371 () Bool)

(declare-fun tp!1331416 () Bool)

(assert (=> b!4393270 (= e!2735371 tp!1331416)))

(declare-fun b!4393271 () Bool)

(declare-fun e!2735376 () Bool)

(assert (=> b!4393271 (= e!2735375 (not e!2735376))))

(declare-fun res!1810947 () Bool)

(assert (=> b!4393271 (=> res!1810947 e!2735376)))

(declare-fun lt!1600963 () List!49324)

(declare-fun key!3918 () K!10558)

(declare-fun newValue!99 () V!10804)

(declare-fun removePairForKey!564 (List!49324 K!10558) List!49324)

(assert (=> b!4393271 (= res!1810947 (not (= newBucket!200 (Cons!49200 (tuple2!48755 key!3918 newValue!99) (removePairForKey!564 lt!1600963 key!3918)))))))

(declare-datatypes ((Unit!78141 0))(
  ( (Unit!78142) )
))
(declare-fun lt!1600964 () Unit!78141)

(declare-fun lt!1600966 () tuple2!48756)

(declare-fun forallContained!1942 (List!49325 Int tuple2!48756) Unit!78141)

(assert (=> b!4393271 (= lt!1600964 (forallContained!1942 (toList!3175 lm!1707) lambda!147314 lt!1600966))))

(declare-fun contains!11558 (List!49325 tuple2!48756) Bool)

(assert (=> b!4393271 (contains!11558 (toList!3175 lm!1707) lt!1600966)))

(assert (=> b!4393271 (= lt!1600966 (tuple2!48757 hash!377 lt!1600963))))

(declare-fun lt!1600965 () Unit!78141)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!441 (List!49325 (_ BitVec 64) List!49324) Unit!78141)

(assert (=> b!4393271 (= lt!1600965 (lemmaGetValueByKeyImpliesContainsTuple!441 (toList!3175 lm!1707) hash!377 lt!1600963))))

(declare-fun apply!11448 (ListLongMap!1825 (_ BitVec 64)) List!49324)

(assert (=> b!4393271 (= lt!1600963 (apply!11448 lm!1707 hash!377))))

(declare-fun b!4393272 () Bool)

(assert (=> b!4393272 (= e!2735376 e!2735373)))

(declare-fun res!1810942 () Bool)

(assert (=> b!4393272 (=> res!1810942 e!2735373)))

(assert (=> b!4393272 (= res!1810942 (or (and (is-Cons!49201 (toList!3175 lm!1707)) (= (_1!27672 (h!54808 (toList!3175 lm!1707))) hash!377)) (not (is-Cons!49201 (toList!3175 lm!1707))) (= (_1!27672 (h!54808 (toList!3175 lm!1707))) hash!377)))))

(declare-fun e!2735374 () Bool)

(assert (=> b!4393272 e!2735374))

(declare-fun res!1810940 () Bool)

(assert (=> b!4393272 (=> (not res!1810940) (not e!2735374))))

(declare-fun lt!1600968 () ListLongMap!1825)

(assert (=> b!4393272 (= res!1810940 (forall!9304 (toList!3175 lt!1600968) lambda!147314))))

(declare-fun +!823 (ListLongMap!1825 tuple2!48756) ListLongMap!1825)

(assert (=> b!4393272 (= lt!1600968 (+!823 lm!1707 (tuple2!48757 hash!377 newBucket!200)))))

(declare-fun lt!1600967 () Unit!78141)

(declare-fun addValidProp!242 (ListLongMap!1825 Int (_ BitVec 64) List!49324) Unit!78141)

(assert (=> b!4393272 (= lt!1600967 (addValidProp!242 lm!1707 lambda!147314 hash!377 newBucket!200))))

(assert (=> b!4393272 (forall!9304 (toList!3175 lm!1707) lambda!147314)))

(declare-fun b!4393273 () Bool)

(declare-fun res!1810945 () Bool)

(assert (=> b!4393273 (=> (not res!1810945) (not e!2735375))))

(declare-fun allKeysSameHashInMap!700 (ListLongMap!1825 Hashable!4988) Bool)

(assert (=> b!4393273 (= res!1810945 (allKeysSameHashInMap!700 lm!1707 hashF!1247))))

(declare-fun res!1810941 () Bool)

(assert (=> start!426302 (=> (not res!1810941) (not e!2735375))))

(assert (=> start!426302 (= res!1810941 (forall!9304 (toList!3175 lm!1707) lambda!147314))))

(assert (=> start!426302 e!2735375))

(assert (=> start!426302 e!2735372))

(assert (=> start!426302 true))

(declare-fun inv!64745 (ListLongMap!1825) Bool)

(assert (=> start!426302 (and (inv!64745 lm!1707) e!2735371)))

(assert (=> start!426302 tp_is_empty!25621))

(assert (=> start!426302 tp_is_empty!25623))

(declare-fun b!4393274 () Bool)

(declare-fun res!1810939 () Bool)

(assert (=> b!4393274 (=> (not res!1810939) (not e!2735375))))

(declare-fun hash!1793 (Hashable!4988 K!10558) (_ BitVec 64))

(assert (=> b!4393274 (= res!1810939 (= (hash!1793 hashF!1247 key!3918) hash!377))))

(declare-fun b!4393275 () Bool)

(declare-fun res!1810946 () Bool)

(assert (=> b!4393275 (=> (not res!1810946) (not e!2735375))))

(declare-fun contains!11559 (ListLongMap!1825 (_ BitVec 64)) Bool)

(assert (=> b!4393275 (= res!1810946 (contains!11559 lm!1707 hash!377))))

(declare-fun b!4393276 () Bool)

(declare-fun res!1810938 () Bool)

(assert (=> b!4393276 (=> (not res!1810938) (not e!2735375))))

(declare-datatypes ((ListMap!2419 0))(
  ( (ListMap!2420 (toList!3176 List!49324)) )
))
(declare-fun contains!11560 (ListMap!2419 K!10558) Bool)

(declare-fun extractMap!655 (List!49325) ListMap!2419)

(assert (=> b!4393276 (= res!1810938 (contains!11560 (extractMap!655 (toList!3175 lm!1707)) key!3918))))

(declare-fun b!4393277 () Bool)

(declare-fun res!1810943 () Bool)

(assert (=> b!4393277 (=> res!1810943 e!2735376)))

(declare-fun noDuplicateKeys!596 (List!49324) Bool)

(assert (=> b!4393277 (= res!1810943 (not (noDuplicateKeys!596 newBucket!200)))))

(declare-fun b!4393278 () Bool)

(assert (=> b!4393278 (= e!2735374 (forall!9304 (toList!3175 lt!1600968) lambda!147314))))

(assert (= (and start!426302 res!1810941) b!4393273))

(assert (= (and b!4393273 res!1810945) b!4393274))

(assert (= (and b!4393274 res!1810939) b!4393267))

(assert (= (and b!4393267 res!1810944) b!4393276))

(assert (= (and b!4393276 res!1810938) b!4393275))

(assert (= (and b!4393275 res!1810946) b!4393271))

(assert (= (and b!4393271 (not res!1810947)) b!4393277))

(assert (= (and b!4393277 (not res!1810943)) b!4393272))

(assert (= (and b!4393272 res!1810940) b!4393278))

(assert (= (and b!4393272 (not res!1810942)) b!4393268))

(assert (= (and start!426302 (is-Cons!49200 newBucket!200)) b!4393269))

(assert (= start!426302 b!4393270))

(declare-fun m!5053339 () Bool)

(assert (=> b!4393278 m!5053339))

(declare-fun m!5053341 () Bool)

(assert (=> start!426302 m!5053341))

(declare-fun m!5053343 () Bool)

(assert (=> start!426302 m!5053343))

(declare-fun m!5053345 () Bool)

(assert (=> b!4393276 m!5053345))

(assert (=> b!4393276 m!5053345))

(declare-fun m!5053347 () Bool)

(assert (=> b!4393276 m!5053347))

(declare-fun m!5053349 () Bool)

(assert (=> b!4393271 m!5053349))

(declare-fun m!5053351 () Bool)

(assert (=> b!4393271 m!5053351))

(declare-fun m!5053353 () Bool)

(assert (=> b!4393271 m!5053353))

(declare-fun m!5053355 () Bool)

(assert (=> b!4393271 m!5053355))

(declare-fun m!5053357 () Bool)

(assert (=> b!4393271 m!5053357))

(assert (=> b!4393272 m!5053339))

(declare-fun m!5053359 () Bool)

(assert (=> b!4393272 m!5053359))

(declare-fun m!5053361 () Bool)

(assert (=> b!4393272 m!5053361))

(assert (=> b!4393272 m!5053341))

(declare-fun m!5053363 () Bool)

(assert (=> b!4393275 m!5053363))

(declare-fun m!5053365 () Bool)

(assert (=> b!4393274 m!5053365))

(declare-fun m!5053367 () Bool)

(assert (=> b!4393277 m!5053367))

(assert (=> b!4393268 m!5053341))

(declare-fun m!5053369 () Bool)

(assert (=> b!4393267 m!5053369))

(declare-fun m!5053371 () Bool)

(assert (=> b!4393273 m!5053371))

(push 1)

(assert (not b!4393276))

(assert (not start!426302))

(assert (not b!4393278))

(assert tp_is_empty!25623)

(assert (not b!4393268))

(assert (not b!4393275))

(assert (not b!4393277))

(assert (not b!4393274))

(assert (not b!4393273))

(assert (not b!4393269))

(assert (not b!4393267))

(assert (not b!4393272))

(assert (not b!4393270))

(assert (not b!4393271))

(assert tp_is_empty!25621)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

