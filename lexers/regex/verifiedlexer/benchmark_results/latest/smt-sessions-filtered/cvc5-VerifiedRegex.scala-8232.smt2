; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!426306 () Bool)

(assert start!426306)

(declare-fun e!2735409 () Bool)

(declare-fun b!4393337 () Bool)

(declare-fun tp_is_empty!25629 () Bool)

(declare-fun tp!1331427 () Bool)

(declare-fun tp_is_empty!25631 () Bool)

(assert (=> b!4393337 (= e!2735409 (and tp_is_empty!25629 tp_is_empty!25631 tp!1331427))))

(declare-fun b!4393338 () Bool)

(declare-fun res!1810996 () Bool)

(declare-fun e!2735407 () Bool)

(assert (=> b!4393338 (=> (not res!1810996) (not e!2735407))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4990 0))(
  ( (HashableExt!4989 (__x!30693 Int)) )
))
(declare-fun hashF!1247 () Hashable!4990)

(declare-datatypes ((K!10563 0))(
  ( (K!10564 (val!16721 Int)) )
))
(declare-fun key!3918 () K!10563)

(declare-fun hash!1795 (Hashable!4990 K!10563) (_ BitVec 64))

(assert (=> b!4393338 (= res!1810996 (= (hash!1795 hashF!1247 key!3918) hash!377))))

(declare-fun b!4393339 () Bool)

(declare-fun res!1811002 () Bool)

(assert (=> b!4393339 (=> (not res!1811002) (not e!2735407))))

(declare-datatypes ((V!10809 0))(
  ( (V!10810 (val!16722 Int)) )
))
(declare-datatypes ((tuple2!48762 0))(
  ( (tuple2!48763 (_1!27675 K!10563) (_2!27675 V!10809)) )
))
(declare-datatypes ((List!49328 0))(
  ( (Nil!49204) (Cons!49204 (h!54811 tuple2!48762) (t!356262 List!49328)) )
))
(declare-fun newBucket!200 () List!49328)

(declare-fun allKeysSameHash!556 (List!49328 (_ BitVec 64) Hashable!4990) Bool)

(assert (=> b!4393339 (= res!1811002 (allKeysSameHash!556 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4393340 () Bool)

(declare-fun e!2735405 () Bool)

(declare-fun tp!1331428 () Bool)

(assert (=> b!4393340 (= e!2735405 tp!1331428)))

(declare-fun res!1811001 () Bool)

(assert (=> start!426306 (=> (not res!1811001) (not e!2735407))))

(declare-datatypes ((tuple2!48764 0))(
  ( (tuple2!48765 (_1!27676 (_ BitVec 64)) (_2!27676 List!49328)) )
))
(declare-datatypes ((List!49329 0))(
  ( (Nil!49205) (Cons!49205 (h!54812 tuple2!48764) (t!356263 List!49329)) )
))
(declare-datatypes ((ListLongMap!1829 0))(
  ( (ListLongMap!1830 (toList!3179 List!49329)) )
))
(declare-fun lm!1707 () ListLongMap!1829)

(declare-fun lambda!147338 () Int)

(declare-fun forall!9306 (List!49329 Int) Bool)

(assert (=> start!426306 (= res!1811001 (forall!9306 (toList!3179 lm!1707) lambda!147338))))

(assert (=> start!426306 e!2735407))

(assert (=> start!426306 e!2735409))

(assert (=> start!426306 true))

(declare-fun inv!64750 (ListLongMap!1829) Bool)

(assert (=> start!426306 (and (inv!64750 lm!1707) e!2735405)))

(assert (=> start!426306 tp_is_empty!25629))

(assert (=> start!426306 tp_is_empty!25631))

(declare-fun b!4393341 () Bool)

(declare-fun e!2735406 () Bool)

(declare-fun lt!1601003 () ListLongMap!1829)

(assert (=> b!4393341 (= e!2735406 (forall!9306 (toList!3179 lt!1601003) lambda!147338))))

(declare-fun b!4393342 () Bool)

(declare-fun res!1811003 () Bool)

(assert (=> b!4393342 (=> (not res!1811003) (not e!2735407))))

(declare-datatypes ((ListMap!2423 0))(
  ( (ListMap!2424 (toList!3180 List!49328)) )
))
(declare-fun contains!11564 (ListMap!2423 K!10563) Bool)

(declare-fun extractMap!657 (List!49329) ListMap!2423)

(assert (=> b!4393342 (= res!1811003 (contains!11564 (extractMap!657 (toList!3179 lm!1707)) key!3918))))

(declare-fun b!4393343 () Bool)

(declare-fun e!2735408 () Bool)

(assert (=> b!4393343 (= e!2735407 (not e!2735408))))

(declare-fun res!1811000 () Bool)

(assert (=> b!4393343 (=> res!1811000 e!2735408)))

(declare-fun lt!1600999 () List!49328)

(declare-fun newValue!99 () V!10809)

(declare-fun removePairForKey!566 (List!49328 K!10563) List!49328)

(assert (=> b!4393343 (= res!1811000 (not (= newBucket!200 (Cons!49204 (tuple2!48763 key!3918 newValue!99) (removePairForKey!566 lt!1600999 key!3918)))))))

(declare-datatypes ((Unit!78145 0))(
  ( (Unit!78146) )
))
(declare-fun lt!1601004 () Unit!78145)

(declare-fun lt!1601001 () tuple2!48764)

(declare-fun forallContained!1944 (List!49329 Int tuple2!48764) Unit!78145)

(assert (=> b!4393343 (= lt!1601004 (forallContained!1944 (toList!3179 lm!1707) lambda!147338 lt!1601001))))

(declare-fun contains!11565 (List!49329 tuple2!48764) Bool)

(assert (=> b!4393343 (contains!11565 (toList!3179 lm!1707) lt!1601001)))

(assert (=> b!4393343 (= lt!1601001 (tuple2!48765 hash!377 lt!1600999))))

(declare-fun lt!1601002 () Unit!78145)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!443 (List!49329 (_ BitVec 64) List!49328) Unit!78145)

(assert (=> b!4393343 (= lt!1601002 (lemmaGetValueByKeyImpliesContainsTuple!443 (toList!3179 lm!1707) hash!377 lt!1600999))))

(declare-fun apply!11450 (ListLongMap!1829 (_ BitVec 64)) List!49328)

(assert (=> b!4393343 (= lt!1600999 (apply!11450 lm!1707 hash!377))))

(declare-fun b!4393344 () Bool)

(assert (=> b!4393344 (= e!2735408 true)))

(assert (=> b!4393344 e!2735406))

(declare-fun res!1811004 () Bool)

(assert (=> b!4393344 (=> (not res!1811004) (not e!2735406))))

(assert (=> b!4393344 (= res!1811004 (forall!9306 (toList!3179 lt!1601003) lambda!147338))))

(declare-fun +!825 (ListLongMap!1829 tuple2!48764) ListLongMap!1829)

(assert (=> b!4393344 (= lt!1601003 (+!825 lm!1707 (tuple2!48765 hash!377 newBucket!200)))))

(declare-fun lt!1601000 () Unit!78145)

(declare-fun addValidProp!244 (ListLongMap!1829 Int (_ BitVec 64) List!49328) Unit!78145)

(assert (=> b!4393344 (= lt!1601000 (addValidProp!244 lm!1707 lambda!147338 hash!377 newBucket!200))))

(assert (=> b!4393344 (forall!9306 (toList!3179 lm!1707) lambda!147338)))

(declare-fun b!4393345 () Bool)

(declare-fun res!1810999 () Bool)

(assert (=> b!4393345 (=> res!1810999 e!2735408)))

(declare-fun noDuplicateKeys!598 (List!49328) Bool)

(assert (=> b!4393345 (= res!1810999 (not (noDuplicateKeys!598 newBucket!200)))))

(declare-fun b!4393346 () Bool)

(declare-fun res!1810997 () Bool)

(assert (=> b!4393346 (=> (not res!1810997) (not e!2735407))))

(declare-fun allKeysSameHashInMap!702 (ListLongMap!1829 Hashable!4990) Bool)

(assert (=> b!4393346 (= res!1810997 (allKeysSameHashInMap!702 lm!1707 hashF!1247))))

(declare-fun b!4393347 () Bool)

(declare-fun res!1810998 () Bool)

(assert (=> b!4393347 (=> (not res!1810998) (not e!2735407))))

(declare-fun contains!11566 (ListLongMap!1829 (_ BitVec 64)) Bool)

(assert (=> b!4393347 (= res!1810998 (contains!11566 lm!1707 hash!377))))

(assert (= (and start!426306 res!1811001) b!4393346))

(assert (= (and b!4393346 res!1810997) b!4393338))

(assert (= (and b!4393338 res!1810996) b!4393339))

(assert (= (and b!4393339 res!1811002) b!4393342))

(assert (= (and b!4393342 res!1811003) b!4393347))

(assert (= (and b!4393347 res!1810998) b!4393343))

(assert (= (and b!4393343 (not res!1811000)) b!4393345))

(assert (= (and b!4393345 (not res!1810999)) b!4393344))

(assert (= (and b!4393344 res!1811004) b!4393341))

(assert (= (and start!426306 (is-Cons!49204 newBucket!200)) b!4393337))

(assert (= start!426306 b!4393340))

(declare-fun m!5053407 () Bool)

(assert (=> b!4393344 m!5053407))

(declare-fun m!5053409 () Bool)

(assert (=> b!4393344 m!5053409))

(declare-fun m!5053411 () Bool)

(assert (=> b!4393344 m!5053411))

(declare-fun m!5053413 () Bool)

(assert (=> b!4393344 m!5053413))

(declare-fun m!5053415 () Bool)

(assert (=> b!4393347 m!5053415))

(declare-fun m!5053417 () Bool)

(assert (=> b!4393339 m!5053417))

(declare-fun m!5053419 () Bool)

(assert (=> b!4393343 m!5053419))

(declare-fun m!5053421 () Bool)

(assert (=> b!4393343 m!5053421))

(declare-fun m!5053423 () Bool)

(assert (=> b!4393343 m!5053423))

(declare-fun m!5053425 () Bool)

(assert (=> b!4393343 m!5053425))

(declare-fun m!5053427 () Bool)

(assert (=> b!4393343 m!5053427))

(declare-fun m!5053429 () Bool)

(assert (=> b!4393338 m!5053429))

(assert (=> start!426306 m!5053413))

(declare-fun m!5053431 () Bool)

(assert (=> start!426306 m!5053431))

(declare-fun m!5053433 () Bool)

(assert (=> b!4393345 m!5053433))

(declare-fun m!5053435 () Bool)

(assert (=> b!4393342 m!5053435))

(assert (=> b!4393342 m!5053435))

(declare-fun m!5053437 () Bool)

(assert (=> b!4393342 m!5053437))

(assert (=> b!4393341 m!5053407))

(declare-fun m!5053439 () Bool)

(assert (=> b!4393346 m!5053439))

(push 1)

(assert (not b!4393347))

(assert (not b!4393342))

(assert (not b!4393338))

(assert (not start!426306))

(assert (not b!4393346))

(assert (not b!4393341))

(assert (not b!4393337))

(assert (not b!4393344))

(assert tp_is_empty!25629)

(assert tp_is_empty!25631)

(assert (not b!4393343))

(assert (not b!4393339))

(assert (not b!4393345))

(assert (not b!4393340))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

