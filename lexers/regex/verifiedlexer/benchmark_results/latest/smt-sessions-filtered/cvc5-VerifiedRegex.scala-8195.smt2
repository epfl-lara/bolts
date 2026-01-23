; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!423130 () Bool)

(assert start!423130)

(declare-fun b!4364399 () Bool)

(declare-fun e!2716259 () Bool)

(declare-fun tp!1330528 () Bool)

(assert (=> b!4364399 (= e!2716259 tp!1330528)))

(declare-fun res!1795017 () Bool)

(declare-fun e!2716260 () Bool)

(assert (=> start!423130 (=> (not res!1795017) (not e!2716260))))

(declare-datatypes ((V!10624 0))(
  ( (V!10625 (val!16573 Int)) )
))
(declare-datatypes ((K!10378 0))(
  ( (K!10379 (val!16574 Int)) )
))
(declare-datatypes ((tuple2!48466 0))(
  ( (tuple2!48467 (_1!27527 K!10378) (_2!27527 V!10624)) )
))
(declare-datatypes ((List!49143 0))(
  ( (Nil!49019) (Cons!49019 (h!54588 tuple2!48466) (t!356063 List!49143)) )
))
(declare-datatypes ((tuple2!48468 0))(
  ( (tuple2!48469 (_1!27528 (_ BitVec 64)) (_2!27528 List!49143)) )
))
(declare-datatypes ((List!49144 0))(
  ( (Nil!49020) (Cons!49020 (h!54589 tuple2!48468) (t!356064 List!49144)) )
))
(declare-datatypes ((ListLongMap!1681 0))(
  ( (ListLongMap!1682 (toList!3031 List!49144)) )
))
(declare-fun lm!1707 () ListLongMap!1681)

(declare-fun lambda!142288 () Int)

(declare-fun forall!9179 (List!49144 Int) Bool)

(assert (=> start!423130 (= res!1795017 (forall!9179 (toList!3031 lm!1707) lambda!142288))))

(assert (=> start!423130 e!2716260))

(declare-fun e!2716258 () Bool)

(assert (=> start!423130 e!2716258))

(assert (=> start!423130 true))

(declare-fun inv!64565 (ListLongMap!1681) Bool)

(assert (=> start!423130 (and (inv!64565 lm!1707) e!2716259)))

(declare-fun tp_is_empty!25333 () Bool)

(assert (=> start!423130 tp_is_empty!25333))

(declare-fun tp_is_empty!25335 () Bool)

(assert (=> start!423130 tp_is_empty!25335))

(declare-fun b!4364400 () Bool)

(declare-fun res!1795010 () Bool)

(assert (=> b!4364400 (=> (not res!1795010) (not e!2716260))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4916 0))(
  ( (HashableExt!4915 (__x!30619 Int)) )
))
(declare-fun hashF!1247 () Hashable!4916)

(declare-fun key!3918 () K!10378)

(declare-fun hash!1658 (Hashable!4916 K!10378) (_ BitVec 64))

(assert (=> b!4364400 (= res!1795010 (= (hash!1658 hashF!1247 key!3918) hash!377))))

(declare-fun b!4364401 () Bool)

(declare-fun e!2716257 () Bool)

(declare-fun lt!1577141 () ListLongMap!1681)

(assert (=> b!4364401 (= e!2716257 (forall!9179 (toList!3031 lt!1577141) lambda!142288))))

(declare-fun b!4364402 () Bool)

(declare-fun e!2716256 () Bool)

(assert (=> b!4364402 (= e!2716256 e!2716257)))

(declare-fun res!1795009 () Bool)

(assert (=> b!4364402 (=> res!1795009 e!2716257)))

(assert (=> b!4364402 (= res!1795009 (or (and (is-Cons!49020 (toList!3031 lm!1707)) (= (_1!27528 (h!54589 (toList!3031 lm!1707))) hash!377)) (and (is-Cons!49020 (toList!3031 lm!1707)) (not (= (_1!27528 (h!54589 (toList!3031 lm!1707))) hash!377))) (not (is-Nil!49020 (toList!3031 lm!1707)))))))

(declare-fun e!2716255 () Bool)

(assert (=> b!4364402 e!2716255))

(declare-fun res!1795008 () Bool)

(assert (=> b!4364402 (=> (not res!1795008) (not e!2716255))))

(assert (=> b!4364402 (= res!1795008 (forall!9179 (toList!3031 lt!1577141) lambda!142288))))

(declare-fun newBucket!200 () List!49143)

(declare-fun +!705 (ListLongMap!1681 tuple2!48468) ListLongMap!1681)

(assert (=> b!4364402 (= lt!1577141 (+!705 lm!1707 (tuple2!48469 hash!377 newBucket!200)))))

(declare-datatypes ((Unit!72875 0))(
  ( (Unit!72876) )
))
(declare-fun lt!1577145 () Unit!72875)

(declare-fun addValidProp!178 (ListLongMap!1681 Int (_ BitVec 64) List!49143) Unit!72875)

(assert (=> b!4364402 (= lt!1577145 (addValidProp!178 lm!1707 lambda!142288 hash!377 newBucket!200))))

(assert (=> b!4364402 (forall!9179 (toList!3031 lm!1707) lambda!142288)))

(declare-fun b!4364403 () Bool)

(declare-fun res!1795013 () Bool)

(assert (=> b!4364403 (=> (not res!1795013) (not e!2716260))))

(declare-fun contains!11276 (ListLongMap!1681 (_ BitVec 64)) Bool)

(assert (=> b!4364403 (= res!1795013 (contains!11276 lm!1707 hash!377))))

(declare-fun b!4364404 () Bool)

(declare-fun res!1795015 () Bool)

(assert (=> b!4364404 (=> res!1795015 e!2716256)))

(declare-fun noDuplicateKeys!524 (List!49143) Bool)

(assert (=> b!4364404 (= res!1795015 (not (noDuplicateKeys!524 newBucket!200)))))

(declare-fun b!4364405 () Bool)

(assert (=> b!4364405 (= e!2716260 (not e!2716256))))

(declare-fun res!1795011 () Bool)

(assert (=> b!4364405 (=> res!1795011 e!2716256)))

(declare-fun lt!1577143 () List!49143)

(declare-fun newValue!99 () V!10624)

(declare-fun removePairForKey!494 (List!49143 K!10378) List!49143)

(assert (=> b!4364405 (= res!1795011 (not (= newBucket!200 (Cons!49019 (tuple2!48467 key!3918 newValue!99) (removePairForKey!494 lt!1577143 key!3918)))))))

(declare-fun lt!1577146 () Unit!72875)

(declare-fun lt!1577144 () tuple2!48468)

(declare-fun forallContained!1820 (List!49144 Int tuple2!48468) Unit!72875)

(assert (=> b!4364405 (= lt!1577146 (forallContained!1820 (toList!3031 lm!1707) lambda!142288 lt!1577144))))

(declare-fun contains!11277 (List!49144 tuple2!48468) Bool)

(assert (=> b!4364405 (contains!11277 (toList!3031 lm!1707) lt!1577144)))

(assert (=> b!4364405 (= lt!1577144 (tuple2!48469 hash!377 lt!1577143))))

(declare-fun lt!1577142 () Unit!72875)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!371 (List!49144 (_ BitVec 64) List!49143) Unit!72875)

(assert (=> b!4364405 (= lt!1577142 (lemmaGetValueByKeyImpliesContainsTuple!371 (toList!3031 lm!1707) hash!377 lt!1577143))))

(declare-fun apply!11376 (ListLongMap!1681 (_ BitVec 64)) List!49143)

(assert (=> b!4364405 (= lt!1577143 (apply!11376 lm!1707 hash!377))))

(declare-fun b!4364406 () Bool)

(declare-fun res!1795014 () Bool)

(assert (=> b!4364406 (=> (not res!1795014) (not e!2716260))))

(declare-fun allKeysSameHash!482 (List!49143 (_ BitVec 64) Hashable!4916) Bool)

(assert (=> b!4364406 (= res!1795014 (allKeysSameHash!482 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4364407 () Bool)

(declare-fun tp!1330527 () Bool)

(assert (=> b!4364407 (= e!2716258 (and tp_is_empty!25333 tp_is_empty!25335 tp!1330527))))

(declare-fun b!4364408 () Bool)

(declare-fun res!1795012 () Bool)

(assert (=> b!4364408 (=> (not res!1795012) (not e!2716260))))

(declare-fun allKeysSameHashInMap!628 (ListLongMap!1681 Hashable!4916) Bool)

(assert (=> b!4364408 (= res!1795012 (allKeysSameHashInMap!628 lm!1707 hashF!1247))))

(declare-fun b!4364409 () Bool)

(declare-fun res!1795016 () Bool)

(assert (=> b!4364409 (=> (not res!1795016) (not e!2716260))))

(declare-datatypes ((ListMap!2275 0))(
  ( (ListMap!2276 (toList!3032 List!49143)) )
))
(declare-fun contains!11278 (ListMap!2275 K!10378) Bool)

(declare-fun extractMap!583 (List!49144) ListMap!2275)

(assert (=> b!4364409 (= res!1795016 (contains!11278 (extractMap!583 (toList!3031 lm!1707)) key!3918))))

(declare-fun b!4364410 () Bool)

(assert (=> b!4364410 (= e!2716255 (forall!9179 (toList!3031 lt!1577141) lambda!142288))))

(assert (= (and start!423130 res!1795017) b!4364408))

(assert (= (and b!4364408 res!1795012) b!4364400))

(assert (= (and b!4364400 res!1795010) b!4364406))

(assert (= (and b!4364406 res!1795014) b!4364409))

(assert (= (and b!4364409 res!1795016) b!4364403))

(assert (= (and b!4364403 res!1795013) b!4364405))

(assert (= (and b!4364405 (not res!1795011)) b!4364404))

(assert (= (and b!4364404 (not res!1795015)) b!4364402))

(assert (= (and b!4364402 res!1795008) b!4364410))

(assert (= (and b!4364402 (not res!1795009)) b!4364401))

(assert (= (and start!423130 (is-Cons!49019 newBucket!200)) b!4364407))

(assert (= start!423130 b!4364399))

(declare-fun m!4986191 () Bool)

(assert (=> b!4364408 m!4986191))

(declare-fun m!4986193 () Bool)

(assert (=> b!4364402 m!4986193))

(declare-fun m!4986195 () Bool)

(assert (=> b!4364402 m!4986195))

(declare-fun m!4986197 () Bool)

(assert (=> b!4364402 m!4986197))

(declare-fun m!4986199 () Bool)

(assert (=> b!4364402 m!4986199))

(declare-fun m!4986201 () Bool)

(assert (=> b!4364400 m!4986201))

(declare-fun m!4986203 () Bool)

(assert (=> b!4364409 m!4986203))

(assert (=> b!4364409 m!4986203))

(declare-fun m!4986205 () Bool)

(assert (=> b!4364409 m!4986205))

(declare-fun m!4986207 () Bool)

(assert (=> b!4364403 m!4986207))

(assert (=> start!423130 m!4986199))

(declare-fun m!4986209 () Bool)

(assert (=> start!423130 m!4986209))

(assert (=> b!4364401 m!4986193))

(declare-fun m!4986211 () Bool)

(assert (=> b!4364406 m!4986211))

(declare-fun m!4986213 () Bool)

(assert (=> b!4364404 m!4986213))

(assert (=> b!4364410 m!4986193))

(declare-fun m!4986215 () Bool)

(assert (=> b!4364405 m!4986215))

(declare-fun m!4986217 () Bool)

(assert (=> b!4364405 m!4986217))

(declare-fun m!4986219 () Bool)

(assert (=> b!4364405 m!4986219))

(declare-fun m!4986221 () Bool)

(assert (=> b!4364405 m!4986221))

(declare-fun m!4986223 () Bool)

(assert (=> b!4364405 m!4986223))

(push 1)

(assert (not b!4364405))

(assert (not b!4364400))

(assert (not start!423130))

(assert (not b!4364399))

(assert (not b!4364410))

(assert tp_is_empty!25335)

(assert (not b!4364406))

(assert (not b!4364409))

(assert (not b!4364402))

(assert tp_is_empty!25333)

(assert (not b!4364407))

(assert (not b!4364408))

(assert (not b!4364401))

(assert (not b!4364404))

(assert (not b!4364403))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

