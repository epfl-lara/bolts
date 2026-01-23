; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417496 () Bool)

(assert start!417496)

(declare-fun res!1775766 () Bool)

(declare-fun e!2695590 () Bool)

(assert (=> start!417496 (=> (not res!1775766) (not e!2695590))))

(declare-datatypes ((V!10149 0))(
  ( (V!10150 (val!16193 Int)) )
))
(declare-datatypes ((K!9903 0))(
  ( (K!9904 (val!16194 Int)) )
))
(declare-datatypes ((tuple2!47706 0))(
  ( (tuple2!47707 (_1!27147 K!9903) (_2!27147 V!10149)) )
))
(declare-datatypes ((List!48681 0))(
  ( (Nil!48557) (Cons!48557 (h!54040 tuple2!47706) (t!355597 List!48681)) )
))
(declare-datatypes ((tuple2!47708 0))(
  ( (tuple2!47709 (_1!27148 (_ BitVec 64)) (_2!27148 List!48681)) )
))
(declare-datatypes ((List!48682 0))(
  ( (Nil!48558) (Cons!48558 (h!54041 tuple2!47708) (t!355598 List!48682)) )
))
(declare-datatypes ((ListLongMap!1301 0))(
  ( (ListLongMap!1302 (toList!2651 List!48682)) )
))
(declare-fun lm!1707 () ListLongMap!1301)

(declare-fun lambda!134655 () Int)

(declare-fun forall!8885 (List!48682 Int) Bool)

(assert (=> start!417496 (= res!1775766 (forall!8885 (toList!2651 lm!1707) lambda!134655))))

(assert (=> start!417496 e!2695590))

(declare-fun e!2695592 () Bool)

(assert (=> start!417496 e!2695592))

(assert (=> start!417496 true))

(declare-fun e!2695591 () Bool)

(declare-fun inv!64090 (ListLongMap!1301) Bool)

(assert (=> start!417496 (and (inv!64090 lm!1707) e!2695591)))

(declare-fun tp_is_empty!24573 () Bool)

(assert (=> start!417496 tp_is_empty!24573))

(declare-fun b!4331757 () Bool)

(declare-fun res!1775765 () Bool)

(assert (=> b!4331757 (=> (not res!1775765) (not e!2695590))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4726 0))(
  ( (HashableExt!4725 (__x!30429 Int)) )
))
(declare-fun hashF!1247 () Hashable!4726)

(declare-fun newBucket!200 () List!48681)

(declare-fun allKeysSameHash!292 (List!48681 (_ BitVec 64) Hashable!4726) Bool)

(assert (=> b!4331757 (= res!1775765 (allKeysSameHash!292 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4331758 () Bool)

(declare-fun tp!1328523 () Bool)

(assert (=> b!4331758 (= e!2695591 tp!1328523)))

(declare-fun b!4331759 () Bool)

(assert (=> b!4331759 (= e!2695590 false)))

(declare-fun lt!1545706 () Bool)

(declare-fun contains!10563 (ListLongMap!1301 (_ BitVec 64)) Bool)

(assert (=> b!4331759 (= lt!1545706 (contains!10563 lm!1707 hash!377))))

(declare-fun b!4331760 () Bool)

(declare-fun res!1775763 () Bool)

(assert (=> b!4331760 (=> (not res!1775763) (not e!2695590))))

(declare-fun allKeysSameHashInMap!438 (ListLongMap!1301 Hashable!4726) Bool)

(assert (=> b!4331760 (= res!1775763 (allKeysSameHashInMap!438 lm!1707 hashF!1247))))

(declare-fun tp!1328524 () Bool)

(declare-fun b!4331761 () Bool)

(declare-fun tp_is_empty!24575 () Bool)

(assert (=> b!4331761 (= e!2695592 (and tp_is_empty!24573 tp_is_empty!24575 tp!1328524))))

(declare-fun b!4331762 () Bool)

(declare-fun res!1775764 () Bool)

(assert (=> b!4331762 (=> (not res!1775764) (not e!2695590))))

(declare-fun key!3918 () K!9903)

(declare-fun hash!1267 (Hashable!4726 K!9903) (_ BitVec 64))

(assert (=> b!4331762 (= res!1775764 (= (hash!1267 hashF!1247 key!3918) hash!377))))

(declare-fun b!4331763 () Bool)

(declare-fun res!1775762 () Bool)

(assert (=> b!4331763 (=> (not res!1775762) (not e!2695590))))

(declare-datatypes ((ListMap!1895 0))(
  ( (ListMap!1896 (toList!2652 List!48681)) )
))
(declare-fun contains!10564 (ListMap!1895 K!9903) Bool)

(declare-fun extractMap!393 (List!48682) ListMap!1895)

(assert (=> b!4331763 (= res!1775762 (contains!10564 (extractMap!393 (toList!2651 lm!1707)) key!3918))))

(assert (= (and start!417496 res!1775766) b!4331760))

(assert (= (and b!4331760 res!1775763) b!4331762))

(assert (= (and b!4331762 res!1775764) b!4331757))

(assert (= (and b!4331757 res!1775765) b!4331763))

(assert (= (and b!4331763 res!1775762) b!4331759))

(assert (= (and start!417496 (is-Cons!48557 newBucket!200)) b!4331761))

(assert (= start!417496 b!4331758))

(declare-fun m!4926091 () Bool)

(assert (=> start!417496 m!4926091))

(declare-fun m!4926093 () Bool)

(assert (=> start!417496 m!4926093))

(declare-fun m!4926095 () Bool)

(assert (=> b!4331762 m!4926095))

(declare-fun m!4926097 () Bool)

(assert (=> b!4331760 m!4926097))

(declare-fun m!4926099 () Bool)

(assert (=> b!4331759 m!4926099))

(declare-fun m!4926101 () Bool)

(assert (=> b!4331763 m!4926101))

(assert (=> b!4331763 m!4926101))

(declare-fun m!4926103 () Bool)

(assert (=> b!4331763 m!4926103))

(declare-fun m!4926105 () Bool)

(assert (=> b!4331757 m!4926105))

(push 1)

(assert (not b!4331763))

(assert (not b!4331761))

(assert (not b!4331759))

(assert (not b!4331757))

(assert (not start!417496))

(assert (not b!4331758))

(assert tp_is_empty!24575)

(assert (not b!4331760))

(assert tp_is_empty!24573)

(assert (not b!4331762))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

