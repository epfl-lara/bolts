; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!423140 () Bool)

(assert start!423140)

(declare-fun b!4364579 () Bool)

(declare-fun res!1795167 () Bool)

(declare-fun e!2716349 () Bool)

(assert (=> b!4364579 (=> (not res!1795167) (not e!2716349))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4921 0))(
  ( (HashableExt!4920 (__x!30624 Int)) )
))
(declare-fun hashF!1247 () Hashable!4921)

(declare-datatypes ((K!10390 0))(
  ( (K!10391 (val!16583 Int)) )
))
(declare-fun key!3918 () K!10390)

(declare-fun hash!1663 (Hashable!4921 K!10390) (_ BitVec 64))

(assert (=> b!4364579 (= res!1795167 (= (hash!1663 hashF!1247 key!3918) hash!377))))

(declare-fun b!4364580 () Bool)

(declare-fun e!2716348 () Bool)

(declare-fun e!2716345 () Bool)

(assert (=> b!4364580 (= e!2716348 e!2716345)))

(declare-fun res!1795163 () Bool)

(assert (=> b!4364580 (=> res!1795163 e!2716345)))

(declare-datatypes ((V!10636 0))(
  ( (V!10637 (val!16584 Int)) )
))
(declare-datatypes ((tuple2!48486 0))(
  ( (tuple2!48487 (_1!27537 K!10390) (_2!27537 V!10636)) )
))
(declare-datatypes ((List!49153 0))(
  ( (Nil!49029) (Cons!49029 (h!54598 tuple2!48486) (t!356073 List!49153)) )
))
(declare-datatypes ((tuple2!48488 0))(
  ( (tuple2!48489 (_1!27538 (_ BitVec 64)) (_2!27538 List!49153)) )
))
(declare-datatypes ((List!49154 0))(
  ( (Nil!49030) (Cons!49030 (h!54599 tuple2!48488) (t!356074 List!49154)) )
))
(declare-datatypes ((ListLongMap!1691 0))(
  ( (ListLongMap!1692 (toList!3041 List!49154)) )
))
(declare-fun lm!1707 () ListLongMap!1691)

(get-info :version)

(assert (=> b!4364580 (= res!1795163 (or (and ((_ is Cons!49030) (toList!3041 lm!1707)) (= (_1!27538 (h!54599 (toList!3041 lm!1707))) hash!377)) (and ((_ is Cons!49030) (toList!3041 lm!1707)) (not (= (_1!27538 (h!54599 (toList!3041 lm!1707))) hash!377))) ((_ is Nil!49030) (toList!3041 lm!1707))))))

(declare-fun e!2716350 () Bool)

(assert (=> b!4364580 e!2716350))

(declare-fun res!1795161 () Bool)

(assert (=> b!4364580 (=> (not res!1795161) (not e!2716350))))

(declare-fun lt!1577239 () ListLongMap!1691)

(declare-fun lambda!142353 () Int)

(declare-fun forall!9184 (List!49154 Int) Bool)

(assert (=> b!4364580 (= res!1795161 (forall!9184 (toList!3041 lt!1577239) lambda!142353))))

(declare-fun newBucket!200 () List!49153)

(declare-fun +!710 (ListLongMap!1691 tuple2!48488) ListLongMap!1691)

(assert (=> b!4364580 (= lt!1577239 (+!710 lm!1707 (tuple2!48489 hash!377 newBucket!200)))))

(declare-datatypes ((Unit!72885 0))(
  ( (Unit!72886) )
))
(declare-fun lt!1577242 () Unit!72885)

(declare-fun addValidProp!183 (ListLongMap!1691 Int (_ BitVec 64) List!49153) Unit!72885)

(assert (=> b!4364580 (= lt!1577242 (addValidProp!183 lm!1707 lambda!142353 hash!377 newBucket!200))))

(assert (=> b!4364580 (forall!9184 (toList!3041 lm!1707) lambda!142353)))

(declare-fun b!4364581 () Bool)

(declare-fun res!1795164 () Bool)

(assert (=> b!4364581 (=> (not res!1795164) (not e!2716349))))

(declare-fun allKeysSameHashInMap!633 (ListLongMap!1691 Hashable!4921) Bool)

(assert (=> b!4364581 (= res!1795164 (allKeysSameHashInMap!633 lm!1707 hashF!1247))))

(declare-fun b!4364582 () Bool)

(assert (=> b!4364582 (= e!2716349 (not e!2716348))))

(declare-fun res!1795158 () Bool)

(assert (=> b!4364582 (=> res!1795158 e!2716348)))

(declare-fun newValue!99 () V!10636)

(declare-fun lt!1577238 () List!49153)

(declare-fun removePairForKey!499 (List!49153 K!10390) List!49153)

(assert (=> b!4364582 (= res!1795158 (not (= newBucket!200 (Cons!49029 (tuple2!48487 key!3918 newValue!99) (removePairForKey!499 lt!1577238 key!3918)))))))

(declare-fun lt!1577237 () tuple2!48488)

(declare-fun lt!1577241 () Unit!72885)

(declare-fun forallContained!1825 (List!49154 Int tuple2!48488) Unit!72885)

(assert (=> b!4364582 (= lt!1577241 (forallContained!1825 (toList!3041 lm!1707) lambda!142353 lt!1577237))))

(declare-fun contains!11291 (List!49154 tuple2!48488) Bool)

(assert (=> b!4364582 (contains!11291 (toList!3041 lm!1707) lt!1577237)))

(assert (=> b!4364582 (= lt!1577237 (tuple2!48489 hash!377 lt!1577238))))

(declare-fun lt!1577240 () Unit!72885)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!376 (List!49154 (_ BitVec 64) List!49153) Unit!72885)

(assert (=> b!4364582 (= lt!1577240 (lemmaGetValueByKeyImpliesContainsTuple!376 (toList!3041 lm!1707) hash!377 lt!1577238))))

(declare-fun apply!11381 (ListLongMap!1691 (_ BitVec 64)) List!49153)

(assert (=> b!4364582 (= lt!1577238 (apply!11381 lm!1707 hash!377))))

(declare-fun b!4364583 () Bool)

(assert (=> b!4364583 (= e!2716345 (forall!9184 (toList!3041 lt!1577239) lambda!142353))))

(declare-fun res!1795165 () Bool)

(assert (=> start!423140 (=> (not res!1795165) (not e!2716349))))

(assert (=> start!423140 (= res!1795165 (forall!9184 (toList!3041 lm!1707) lambda!142353))))

(assert (=> start!423140 e!2716349))

(declare-fun e!2716347 () Bool)

(assert (=> start!423140 e!2716347))

(assert (=> start!423140 true))

(declare-fun e!2716346 () Bool)

(declare-fun inv!64576 (ListLongMap!1691) Bool)

(assert (=> start!423140 (and (inv!64576 lm!1707) e!2716346)))

(declare-fun tp_is_empty!25353 () Bool)

(assert (=> start!423140 tp_is_empty!25353))

(declare-fun tp_is_empty!25355 () Bool)

(assert (=> start!423140 tp_is_empty!25355))

(declare-fun b!4364584 () Bool)

(declare-fun tp!1330558 () Bool)

(assert (=> b!4364584 (= e!2716347 (and tp_is_empty!25353 tp_is_empty!25355 tp!1330558))))

(declare-fun b!4364585 () Bool)

(declare-fun res!1795162 () Bool)

(assert (=> b!4364585 (=> (not res!1795162) (not e!2716349))))

(declare-fun contains!11292 (ListLongMap!1691 (_ BitVec 64)) Bool)

(assert (=> b!4364585 (= res!1795162 (contains!11292 lm!1707 hash!377))))

(declare-fun b!4364586 () Bool)

(declare-fun res!1795166 () Bool)

(assert (=> b!4364586 (=> res!1795166 e!2716348)))

(declare-fun noDuplicateKeys!529 (List!49153) Bool)

(assert (=> b!4364586 (= res!1795166 (not (noDuplicateKeys!529 newBucket!200)))))

(declare-fun b!4364587 () Bool)

(declare-fun tp!1330557 () Bool)

(assert (=> b!4364587 (= e!2716346 tp!1330557)))

(declare-fun b!4364588 () Bool)

(declare-fun res!1795160 () Bool)

(assert (=> b!4364588 (=> (not res!1795160) (not e!2716349))))

(declare-fun allKeysSameHash!487 (List!49153 (_ BitVec 64) Hashable!4921) Bool)

(assert (=> b!4364588 (= res!1795160 (allKeysSameHash!487 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4364589 () Bool)

(declare-fun res!1795159 () Bool)

(assert (=> b!4364589 (=> (not res!1795159) (not e!2716349))))

(declare-datatypes ((ListMap!2285 0))(
  ( (ListMap!2286 (toList!3042 List!49153)) )
))
(declare-fun contains!11293 (ListMap!2285 K!10390) Bool)

(declare-fun extractMap!588 (List!49154) ListMap!2285)

(assert (=> b!4364589 (= res!1795159 (contains!11293 (extractMap!588 (toList!3041 lm!1707)) key!3918))))

(declare-fun b!4364590 () Bool)

(assert (=> b!4364590 (= e!2716350 (forall!9184 (toList!3041 lt!1577239) lambda!142353))))

(assert (= (and start!423140 res!1795165) b!4364581))

(assert (= (and b!4364581 res!1795164) b!4364579))

(assert (= (and b!4364579 res!1795167) b!4364588))

(assert (= (and b!4364588 res!1795160) b!4364589))

(assert (= (and b!4364589 res!1795159) b!4364585))

(assert (= (and b!4364585 res!1795162) b!4364582))

(assert (= (and b!4364582 (not res!1795158)) b!4364586))

(assert (= (and b!4364586 (not res!1795166)) b!4364580))

(assert (= (and b!4364580 res!1795161) b!4364590))

(assert (= (and b!4364580 (not res!1795163)) b!4364583))

(assert (= (and start!423140 ((_ is Cons!49029) newBucket!200)) b!4364584))

(assert (= start!423140 b!4364587))

(declare-fun m!4986365 () Bool)

(assert (=> b!4364588 m!4986365))

(declare-fun m!4986367 () Bool)

(assert (=> b!4364585 m!4986367))

(declare-fun m!4986369 () Bool)

(assert (=> start!423140 m!4986369))

(declare-fun m!4986371 () Bool)

(assert (=> start!423140 m!4986371))

(declare-fun m!4986373 () Bool)

(assert (=> b!4364590 m!4986373))

(declare-fun m!4986375 () Bool)

(assert (=> b!4364579 m!4986375))

(assert (=> b!4364580 m!4986373))

(declare-fun m!4986377 () Bool)

(assert (=> b!4364580 m!4986377))

(declare-fun m!4986379 () Bool)

(assert (=> b!4364580 m!4986379))

(assert (=> b!4364580 m!4986369))

(declare-fun m!4986381 () Bool)

(assert (=> b!4364589 m!4986381))

(assert (=> b!4364589 m!4986381))

(declare-fun m!4986383 () Bool)

(assert (=> b!4364589 m!4986383))

(declare-fun m!4986385 () Bool)

(assert (=> b!4364586 m!4986385))

(declare-fun m!4986387 () Bool)

(assert (=> b!4364581 m!4986387))

(declare-fun m!4986389 () Bool)

(assert (=> b!4364582 m!4986389))

(declare-fun m!4986391 () Bool)

(assert (=> b!4364582 m!4986391))

(declare-fun m!4986393 () Bool)

(assert (=> b!4364582 m!4986393))

(declare-fun m!4986395 () Bool)

(assert (=> b!4364582 m!4986395))

(declare-fun m!4986397 () Bool)

(assert (=> b!4364582 m!4986397))

(assert (=> b!4364583 m!4986373))

(check-sat (not b!4364584) (not b!4364589) (not b!4364588) (not b!4364582) (not b!4364590) (not b!4364585) (not b!4364586) (not b!4364587) (not start!423140) (not b!4364580) (not b!4364579) tp_is_empty!25355 (not b!4364583) tp_is_empty!25353 (not b!4364581))
(check-sat)
