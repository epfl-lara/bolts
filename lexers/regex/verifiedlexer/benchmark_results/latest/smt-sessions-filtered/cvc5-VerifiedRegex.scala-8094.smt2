; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417272 () Bool)

(assert start!417272)

(declare-fun b!4330235 () Bool)

(declare-fun e!2694528 () Bool)

(assert (=> b!4330235 (= e!2694528 false)))

(declare-fun lt!1545424 () Bool)

(declare-datatypes ((K!9873 0))(
  ( (K!9874 (val!16169 Int)) )
))
(declare-datatypes ((V!10119 0))(
  ( (V!10120 (val!16170 Int)) )
))
(declare-datatypes ((tuple2!47658 0))(
  ( (tuple2!47659 (_1!27123 K!9873) (_2!27123 V!10119)) )
))
(declare-datatypes ((List!48657 0))(
  ( (Nil!48533) (Cons!48533 (h!54010 tuple2!47658) (t!355569 List!48657)) )
))
(declare-datatypes ((tuple2!47660 0))(
  ( (tuple2!47661 (_1!27124 (_ BitVec 64)) (_2!27124 List!48657)) )
))
(declare-datatypes ((List!48658 0))(
  ( (Nil!48534) (Cons!48534 (h!54011 tuple2!47660) (t!355570 List!48658)) )
))
(declare-datatypes ((ListLongMap!1277 0))(
  ( (ListLongMap!1278 (toList!2639 List!48658)) )
))
(declare-fun lm!2227 () ListLongMap!1277)

(declare-datatypes ((Hashable!4714 0))(
  ( (HashableExt!4713 (__x!30417 Int)) )
))
(declare-fun hashF!1461 () Hashable!4714)

(declare-fun allKeysSameHashInMap!426 (ListLongMap!1277 Hashable!4714) Bool)

(assert (=> b!4330235 (= lt!1545424 (allKeysSameHashInMap!426 (ListLongMap!1278 (t!355570 (toList!2639 lm!2227))) hashF!1461))))

(declare-fun tp_is_empty!24525 () Bool)

(declare-fun e!2694529 () Bool)

(declare-fun tp_is_empty!24527 () Bool)

(declare-fun b!4330236 () Bool)

(declare-fun tp!1328361 () Bool)

(assert (=> b!4330236 (= e!2694529 (and tp_is_empty!24525 tp_is_empty!24527 tp!1328361))))

(declare-fun b!4330237 () Bool)

(declare-fun res!1774833 () Bool)

(assert (=> b!4330237 (=> (not res!1774833) (not e!2694528))))

(declare-fun newBucket!230 () List!48657)

(declare-fun noDuplicateKeys!334 (List!48657) Bool)

(assert (=> b!4330237 (= res!1774833 (noDuplicateKeys!334 newBucket!230))))

(declare-fun res!1774837 () Bool)

(assert (=> start!417272 (=> (not res!1774837) (not e!2694528))))

(declare-fun lambda!134515 () Int)

(declare-fun forall!8868 (List!48658 Int) Bool)

(assert (=> start!417272 (= res!1774837 (forall!8868 (toList!2639 lm!2227) lambda!134515))))

(assert (=> start!417272 e!2694528))

(declare-fun e!2694530 () Bool)

(declare-fun inv!64060 (ListLongMap!1277) Bool)

(assert (=> start!417272 (and (inv!64060 lm!2227) e!2694530)))

(assert (=> start!417272 true))

(assert (=> start!417272 e!2694529))

(declare-fun b!4330238 () Bool)

(declare-fun res!1774835 () Bool)

(assert (=> b!4330238 (=> (not res!1774835) (not e!2694528))))

(assert (=> b!4330238 (= res!1774835 (is-Cons!48534 (toList!2639 lm!2227)))))

(declare-fun b!4330239 () Bool)

(declare-fun res!1774836 () Bool)

(assert (=> b!4330239 (=> (not res!1774836) (not e!2694528))))

(assert (=> b!4330239 (= res!1774836 (allKeysSameHashInMap!426 lm!2227 hashF!1461))))

(declare-fun b!4330240 () Bool)

(declare-fun res!1774832 () Bool)

(assert (=> b!4330240 (=> (not res!1774832) (not e!2694528))))

(assert (=> b!4330240 (= res!1774832 (forall!8868 (t!355570 (toList!2639 lm!2227)) lambda!134515))))

(declare-fun b!4330241 () Bool)

(declare-fun res!1774834 () Bool)

(assert (=> b!4330241 (=> (not res!1774834) (not e!2694528))))

(declare-fun hash!427 () (_ BitVec 64))

(declare-fun allKeysSameHash!282 (List!48657 (_ BitVec 64) Hashable!4714) Bool)

(assert (=> b!4330241 (= res!1774834 (allKeysSameHash!282 newBucket!230 hash!427 hashF!1461))))

(declare-fun b!4330242 () Bool)

(declare-fun tp!1328362 () Bool)

(assert (=> b!4330242 (= e!2694530 tp!1328362)))

(assert (= (and start!417272 res!1774837) b!4330239))

(assert (= (and b!4330239 res!1774836) b!4330237))

(assert (= (and b!4330237 res!1774833) b!4330241))

(assert (= (and b!4330241 res!1774834) b!4330238))

(assert (= (and b!4330238 res!1774835) b!4330240))

(assert (= (and b!4330240 res!1774832) b!4330235))

(assert (= start!417272 b!4330242))

(assert (= (and start!417272 (is-Cons!48533 newBucket!230)) b!4330236))

(declare-fun m!4924355 () Bool)

(assert (=> b!4330239 m!4924355))

(declare-fun m!4924357 () Bool)

(assert (=> b!4330235 m!4924357))

(declare-fun m!4924359 () Bool)

(assert (=> start!417272 m!4924359))

(declare-fun m!4924361 () Bool)

(assert (=> start!417272 m!4924361))

(declare-fun m!4924363 () Bool)

(assert (=> b!4330237 m!4924363))

(declare-fun m!4924365 () Bool)

(assert (=> b!4330240 m!4924365))

(declare-fun m!4924367 () Bool)

(assert (=> b!4330241 m!4924367))

(push 1)

(assert (not b!4330237))

(assert tp_is_empty!24525)

(assert (not b!4330241))

(assert tp_is_empty!24527)

(assert (not b!4330242))

(assert (not b!4330235))

(assert (not b!4330239))

(assert (not b!4330240))

(assert (not b!4330236))

(assert (not start!417272))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

