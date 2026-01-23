; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417140 () Bool)

(assert start!417140)

(declare-fun b!4329589 () Bool)

(declare-fun tp_is_empty!24477 () Bool)

(declare-fun tp_is_empty!24479 () Bool)

(declare-fun e!2694135 () Bool)

(declare-fun tp!1328201 () Bool)

(assert (=> b!4329589 (= e!2694135 (and tp_is_empty!24477 tp_is_empty!24479 tp!1328201))))

(declare-fun b!4329590 () Bool)

(declare-fun res!1774416 () Bool)

(declare-fun e!2694136 () Bool)

(assert (=> b!4329590 (=> (not res!1774416) (not e!2694136))))

(declare-fun hash!427 () (_ BitVec 64))

(declare-datatypes ((K!9843 0))(
  ( (K!9844 (val!16145 Int)) )
))
(declare-datatypes ((V!10089 0))(
  ( (V!10090 (val!16146 Int)) )
))
(declare-datatypes ((tuple2!47610 0))(
  ( (tuple2!47611 (_1!27099 K!9843) (_2!27099 V!10089)) )
))
(declare-datatypes ((List!48633 0))(
  ( (Nil!48509) (Cons!48509 (h!53978 tuple2!47610) (t!355545 List!48633)) )
))
(declare-fun newBucket!230 () List!48633)

(declare-datatypes ((Hashable!4702 0))(
  ( (HashableExt!4701 (__x!30405 Int)) )
))
(declare-fun hashF!1461 () Hashable!4702)

(declare-fun allKeysSameHash!270 (List!48633 (_ BitVec 64) Hashable!4702) Bool)

(assert (=> b!4329590 (= res!1774416 (allKeysSameHash!270 newBucket!230 hash!427 hashF!1461))))

(declare-fun b!4329592 () Bool)

(declare-fun res!1774412 () Bool)

(assert (=> b!4329592 (=> (not res!1774412) (not e!2694136))))

(declare-fun noDuplicateKeys!322 (List!48633) Bool)

(assert (=> b!4329592 (= res!1774412 (noDuplicateKeys!322 newBucket!230))))

(declare-fun b!4329593 () Bool)

(declare-datatypes ((tuple2!47612 0))(
  ( (tuple2!47613 (_1!27100 (_ BitVec 64)) (_2!27100 List!48633)) )
))
(declare-datatypes ((List!48634 0))(
  ( (Nil!48510) (Cons!48510 (h!53979 tuple2!47612) (t!355546 List!48634)) )
))
(declare-datatypes ((ListLongMap!1253 0))(
  ( (ListLongMap!1254 (toList!2627 List!48634)) )
))
(declare-fun lm!2227 () ListLongMap!1253)

(declare-fun lambda!134411 () Int)

(declare-fun forall!8848 (List!48634 Int) Bool)

(assert (=> b!4329593 (= e!2694136 (not (forall!8848 (t!355546 (toList!2627 lm!2227)) lambda!134411)))))

(declare-fun b!4329594 () Bool)

(declare-fun res!1774411 () Bool)

(assert (=> b!4329594 (=> (not res!1774411) (not e!2694136))))

(assert (=> b!4329594 (= res!1774411 (forall!8848 (t!355546 (toList!2627 lm!2227)) lambda!134411))))

(declare-fun b!4329595 () Bool)

(declare-fun res!1774415 () Bool)

(assert (=> b!4329595 (=> (not res!1774415) (not e!2694136))))

(declare-fun allKeysSameHashInMap!414 (ListLongMap!1253 Hashable!4702) Bool)

(assert (=> b!4329595 (= res!1774415 (allKeysSameHashInMap!414 (ListLongMap!1254 (t!355546 (toList!2627 lm!2227))) hashF!1461))))

(declare-fun res!1774410 () Bool)

(assert (=> start!417140 (=> (not res!1774410) (not e!2694136))))

(assert (=> start!417140 (= res!1774410 (forall!8848 (toList!2627 lm!2227) lambda!134411))))

(assert (=> start!417140 e!2694136))

(declare-fun e!2694134 () Bool)

(declare-fun inv!64030 (ListLongMap!1253) Bool)

(assert (=> start!417140 (and (inv!64030 lm!2227) e!2694134)))

(assert (=> start!417140 true))

(assert (=> start!417140 e!2694135))

(declare-fun b!4329591 () Bool)

(declare-fun res!1774413 () Bool)

(assert (=> b!4329591 (=> (not res!1774413) (not e!2694136))))

(assert (=> b!4329591 (= res!1774413 (is-Cons!48510 (toList!2627 lm!2227)))))

(declare-fun b!4329596 () Bool)

(declare-fun tp!1328202 () Bool)

(assert (=> b!4329596 (= e!2694134 tp!1328202)))

(declare-fun b!4329597 () Bool)

(declare-fun res!1774414 () Bool)

(assert (=> b!4329597 (=> (not res!1774414) (not e!2694136))))

(assert (=> b!4329597 (= res!1774414 (allKeysSameHashInMap!414 lm!2227 hashF!1461))))

(assert (= (and start!417140 res!1774410) b!4329597))

(assert (= (and b!4329597 res!1774414) b!4329592))

(assert (= (and b!4329592 res!1774412) b!4329590))

(assert (= (and b!4329590 res!1774416) b!4329591))

(assert (= (and b!4329591 res!1774413) b!4329594))

(assert (= (and b!4329594 res!1774411) b!4329595))

(assert (= (and b!4329595 res!1774415) b!4329593))

(assert (= start!417140 b!4329596))

(assert (= (and start!417140 (is-Cons!48509 newBucket!230)) b!4329589))

(declare-fun m!4923905 () Bool)

(assert (=> b!4329590 m!4923905))

(declare-fun m!4923907 () Bool)

(assert (=> b!4329593 m!4923907))

(declare-fun m!4923909 () Bool)

(assert (=> b!4329595 m!4923909))

(declare-fun m!4923911 () Bool)

(assert (=> start!417140 m!4923911))

(declare-fun m!4923913 () Bool)

(assert (=> start!417140 m!4923913))

(assert (=> b!4329594 m!4923907))

(declare-fun m!4923915 () Bool)

(assert (=> b!4329597 m!4923915))

(declare-fun m!4923917 () Bool)

(assert (=> b!4329592 m!4923917))

(push 1)

(assert (not start!417140))

(assert (not b!4329596))

(assert (not b!4329595))

(assert (not b!4329592))

(assert (not b!4329594))

(assert (not b!4329597))

(assert tp_is_empty!24477)

(assert (not b!4329593))

(assert (not b!4329589))

(assert tp_is_empty!24479)

(assert (not b!4329590))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

