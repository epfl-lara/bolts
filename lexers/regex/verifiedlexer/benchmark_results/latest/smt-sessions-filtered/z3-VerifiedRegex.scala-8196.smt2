; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!423136 () Bool)

(assert start!423136)

(declare-fun b!4364507 () Bool)

(declare-fun res!1795100 () Bool)

(declare-fun e!2716313 () Bool)

(assert (=> b!4364507 (=> (not res!1795100) (not e!2716313))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4919 0))(
  ( (HashableExt!4918 (__x!30622 Int)) )
))
(declare-fun hashF!1247 () Hashable!4919)

(declare-datatypes ((K!10385 0))(
  ( (K!10386 (val!16579 Int)) )
))
(declare-fun key!3918 () K!10385)

(declare-fun hash!1661 (Hashable!4919 K!10385) (_ BitVec 64))

(assert (=> b!4364507 (= res!1795100 (= (hash!1661 hashF!1247 key!3918) hash!377))))

(declare-fun b!4364508 () Bool)

(declare-fun e!2716310 () Bool)

(assert (=> b!4364508 (= e!2716313 (not e!2716310))))

(declare-fun res!1795103 () Bool)

(assert (=> b!4364508 (=> res!1795103 e!2716310)))

(declare-datatypes ((V!10631 0))(
  ( (V!10632 (val!16580 Int)) )
))
(declare-datatypes ((tuple2!48478 0))(
  ( (tuple2!48479 (_1!27533 K!10385) (_2!27533 V!10631)) )
))
(declare-datatypes ((List!49149 0))(
  ( (Nil!49025) (Cons!49025 (h!54594 tuple2!48478) (t!356069 List!49149)) )
))
(declare-fun newBucket!200 () List!49149)

(declare-fun lt!1577204 () List!49149)

(declare-fun newValue!99 () V!10631)

(declare-fun removePairForKey!497 (List!49149 K!10385) List!49149)

(assert (=> b!4364508 (= res!1795103 (not (= newBucket!200 (Cons!49025 (tuple2!48479 key!3918 newValue!99) (removePairForKey!497 lt!1577204 key!3918)))))))

(declare-datatypes ((tuple2!48480 0))(
  ( (tuple2!48481 (_1!27534 (_ BitVec 64)) (_2!27534 List!49149)) )
))
(declare-fun lt!1577203 () tuple2!48480)

(declare-datatypes ((Unit!72881 0))(
  ( (Unit!72882) )
))
(declare-fun lt!1577201 () Unit!72881)

(declare-fun lambda!142327 () Int)

(declare-datatypes ((List!49150 0))(
  ( (Nil!49026) (Cons!49026 (h!54595 tuple2!48480) (t!356070 List!49150)) )
))
(declare-datatypes ((ListLongMap!1687 0))(
  ( (ListLongMap!1688 (toList!3037 List!49150)) )
))
(declare-fun lm!1707 () ListLongMap!1687)

(declare-fun forallContained!1823 (List!49150 Int tuple2!48480) Unit!72881)

(assert (=> b!4364508 (= lt!1577201 (forallContained!1823 (toList!3037 lm!1707) lambda!142327 lt!1577203))))

(declare-fun contains!11285 (List!49150 tuple2!48480) Bool)

(assert (=> b!4364508 (contains!11285 (toList!3037 lm!1707) lt!1577203)))

(assert (=> b!4364508 (= lt!1577203 (tuple2!48481 hash!377 lt!1577204))))

(declare-fun lt!1577206 () Unit!72881)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!374 (List!49150 (_ BitVec 64) List!49149) Unit!72881)

(assert (=> b!4364508 (= lt!1577206 (lemmaGetValueByKeyImpliesContainsTuple!374 (toList!3037 lm!1707) hash!377 lt!1577204))))

(declare-fun apply!11379 (ListLongMap!1687 (_ BitVec 64)) List!49149)

(assert (=> b!4364508 (= lt!1577204 (apply!11379 lm!1707 hash!377))))

(declare-fun b!4364509 () Bool)

(declare-fun res!1795099 () Bool)

(assert (=> b!4364509 (=> (not res!1795099) (not e!2716313))))

(declare-fun contains!11286 (ListLongMap!1687 (_ BitVec 64)) Bool)

(assert (=> b!4364509 (= res!1795099 (contains!11286 lm!1707 hash!377))))

(declare-fun b!4364510 () Bool)

(declare-fun res!1795105 () Bool)

(assert (=> b!4364510 (=> (not res!1795105) (not e!2716313))))

(declare-fun allKeysSameHash!485 (List!49149 (_ BitVec 64) Hashable!4919) Bool)

(assert (=> b!4364510 (= res!1795105 (allKeysSameHash!485 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4364511 () Bool)

(declare-fun e!2716312 () Bool)

(assert (=> b!4364511 (= e!2716310 e!2716312)))

(declare-fun res!1795102 () Bool)

(assert (=> b!4364511 (=> res!1795102 e!2716312)))

(get-info :version)

(assert (=> b!4364511 (= res!1795102 (or (and ((_ is Cons!49026) (toList!3037 lm!1707)) (= (_1!27534 (h!54595 (toList!3037 lm!1707))) hash!377)) (and ((_ is Cons!49026) (toList!3037 lm!1707)) (not (= (_1!27534 (h!54595 (toList!3037 lm!1707))) hash!377))) (not ((_ is Nil!49026) (toList!3037 lm!1707)))))))

(declare-fun e!2716309 () Bool)

(assert (=> b!4364511 e!2716309))

(declare-fun res!1795104 () Bool)

(assert (=> b!4364511 (=> (not res!1795104) (not e!2716309))))

(declare-fun lt!1577205 () ListLongMap!1687)

(declare-fun forall!9182 (List!49150 Int) Bool)

(assert (=> b!4364511 (= res!1795104 (forall!9182 (toList!3037 lt!1577205) lambda!142327))))

(declare-fun +!708 (ListLongMap!1687 tuple2!48480) ListLongMap!1687)

(assert (=> b!4364511 (= lt!1577205 (+!708 lm!1707 (tuple2!48481 hash!377 newBucket!200)))))

(declare-fun lt!1577202 () Unit!72881)

(declare-fun addValidProp!181 (ListLongMap!1687 Int (_ BitVec 64) List!49149) Unit!72881)

(assert (=> b!4364511 (= lt!1577202 (addValidProp!181 lm!1707 lambda!142327 hash!377 newBucket!200))))

(assert (=> b!4364511 (forall!9182 (toList!3037 lm!1707) lambda!142327)))

(declare-fun b!4364512 () Bool)

(assert (=> b!4364512 (= e!2716309 (forall!9182 (toList!3037 lt!1577205) lambda!142327))))

(declare-fun b!4364513 () Bool)

(declare-fun res!1795106 () Bool)

(assert (=> b!4364513 (=> res!1795106 e!2716310)))

(declare-fun noDuplicateKeys!527 (List!49149) Bool)

(assert (=> b!4364513 (= res!1795106 (not (noDuplicateKeys!527 newBucket!200)))))

(declare-fun b!4364514 () Bool)

(declare-fun e!2716314 () Bool)

(declare-fun tp!1330545 () Bool)

(assert (=> b!4364514 (= e!2716314 tp!1330545)))

(declare-fun b!4364515 () Bool)

(assert (=> b!4364515 (= e!2716312 (forall!9182 (toList!3037 lm!1707) lambda!142327))))

(declare-datatypes ((ListMap!2281 0))(
  ( (ListMap!2282 (toList!3038 List!49149)) )
))
(declare-fun lt!1577200 () ListMap!2281)

(declare-fun extractMap!586 (List!49150) ListMap!2281)

(assert (=> b!4364515 (= lt!1577200 (extractMap!586 (toList!3037 lt!1577205)))))

(declare-fun res!1795098 () Bool)

(assert (=> start!423136 (=> (not res!1795098) (not e!2716313))))

(assert (=> start!423136 (= res!1795098 (forall!9182 (toList!3037 lm!1707) lambda!142327))))

(assert (=> start!423136 e!2716313))

(declare-fun e!2716311 () Bool)

(assert (=> start!423136 e!2716311))

(assert (=> start!423136 true))

(declare-fun inv!64571 (ListLongMap!1687) Bool)

(assert (=> start!423136 (and (inv!64571 lm!1707) e!2716314)))

(declare-fun tp_is_empty!25345 () Bool)

(assert (=> start!423136 tp_is_empty!25345))

(declare-fun tp_is_empty!25347 () Bool)

(assert (=> start!423136 tp_is_empty!25347))

(declare-fun b!4364516 () Bool)

(declare-fun res!1795101 () Bool)

(assert (=> b!4364516 (=> (not res!1795101) (not e!2716313))))

(declare-fun allKeysSameHashInMap!631 (ListLongMap!1687 Hashable!4919) Bool)

(assert (=> b!4364516 (= res!1795101 (allKeysSameHashInMap!631 lm!1707 hashF!1247))))

(declare-fun b!4364517 () Bool)

(declare-fun res!1795107 () Bool)

(assert (=> b!4364517 (=> (not res!1795107) (not e!2716313))))

(declare-fun contains!11287 (ListMap!2281 K!10385) Bool)

(assert (=> b!4364517 (= res!1795107 (contains!11287 (extractMap!586 (toList!3037 lm!1707)) key!3918))))

(declare-fun b!4364518 () Bool)

(declare-fun tp!1330546 () Bool)

(assert (=> b!4364518 (= e!2716311 (and tp_is_empty!25345 tp_is_empty!25347 tp!1330546))))

(assert (= (and start!423136 res!1795098) b!4364516))

(assert (= (and b!4364516 res!1795101) b!4364507))

(assert (= (and b!4364507 res!1795100) b!4364510))

(assert (= (and b!4364510 res!1795105) b!4364517))

(assert (= (and b!4364517 res!1795107) b!4364509))

(assert (= (and b!4364509 res!1795099) b!4364508))

(assert (= (and b!4364508 (not res!1795103)) b!4364513))

(assert (= (and b!4364513 (not res!1795106)) b!4364511))

(assert (= (and b!4364511 res!1795104) b!4364512))

(assert (= (and b!4364511 (not res!1795102)) b!4364515))

(assert (= (and start!423136 ((_ is Cons!49025) newBucket!200)) b!4364518))

(assert (= start!423136 b!4364514))

(declare-fun m!4986295 () Bool)

(assert (=> b!4364513 m!4986295))

(declare-fun m!4986297 () Bool)

(assert (=> b!4364507 m!4986297))

(declare-fun m!4986299 () Bool)

(assert (=> b!4364512 m!4986299))

(declare-fun m!4986301 () Bool)

(assert (=> b!4364510 m!4986301))

(declare-fun m!4986303 () Bool)

(assert (=> b!4364517 m!4986303))

(assert (=> b!4364517 m!4986303))

(declare-fun m!4986305 () Bool)

(assert (=> b!4364517 m!4986305))

(declare-fun m!4986307 () Bool)

(assert (=> b!4364509 m!4986307))

(declare-fun m!4986309 () Bool)

(assert (=> b!4364515 m!4986309))

(declare-fun m!4986311 () Bool)

(assert (=> b!4364515 m!4986311))

(declare-fun m!4986313 () Bool)

(assert (=> b!4364508 m!4986313))

(declare-fun m!4986315 () Bool)

(assert (=> b!4364508 m!4986315))

(declare-fun m!4986317 () Bool)

(assert (=> b!4364508 m!4986317))

(declare-fun m!4986319 () Bool)

(assert (=> b!4364508 m!4986319))

(declare-fun m!4986321 () Bool)

(assert (=> b!4364508 m!4986321))

(assert (=> b!4364511 m!4986299))

(declare-fun m!4986323 () Bool)

(assert (=> b!4364511 m!4986323))

(declare-fun m!4986325 () Bool)

(assert (=> b!4364511 m!4986325))

(assert (=> b!4364511 m!4986309))

(assert (=> start!423136 m!4986309))

(declare-fun m!4986327 () Bool)

(assert (=> start!423136 m!4986327))

(declare-fun m!4986329 () Bool)

(assert (=> b!4364516 m!4986329))

(check-sat (not b!4364517) (not b!4364518) (not b!4364513) (not b!4364508) (not b!4364514) (not b!4364510) (not b!4364509) (not b!4364516) (not b!4364512) tp_is_empty!25345 tp_is_empty!25347 (not b!4364511) (not start!423136) (not b!4364507) (not b!4364515))
(check-sat)
