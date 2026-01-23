; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!243130 () Bool)

(assert start!243130)

(declare-fun res!1053056 () Bool)

(declare-fun e!1579663 () Bool)

(assert (=> start!243130 (=> (not res!1053056) (not e!1579663))))

(declare-datatypes ((V!5870 0))(
  ( (V!5871 (val!9009 Int)) )
))
(declare-datatypes ((K!5668 0))(
  ( (K!5669 (val!9010 Int)) )
))
(declare-datatypes ((tuple2!29318 0))(
  ( (tuple2!29319 (_1!17201 K!5668) (_2!17201 V!5870)) )
))
(declare-datatypes ((List!29345 0))(
  ( (Nil!29245) (Cons!29245 (h!34665 tuple2!29318) (t!211044 List!29345)) )
))
(declare-datatypes ((tuple2!29320 0))(
  ( (tuple2!29321 (_1!17202 (_ BitVec 64)) (_2!17202 List!29345)) )
))
(declare-datatypes ((List!29346 0))(
  ( (Nil!29246) (Cons!29246 (h!34666 tuple2!29320) (t!211045 List!29346)) )
))
(declare-datatypes ((ListLongMap!647 0))(
  ( (ListLongMap!648 (toList!1696 List!29346)) )
))
(declare-fun lm!2245 () ListLongMap!647)

(declare-fun lambda!94792 () Int)

(declare-fun forall!6025 (List!29346 Int) Bool)

(assert (=> start!243130 (= res!1053056 (forall!6025 (toList!1696 lm!2245) lambda!94792))))

(assert (=> start!243130 e!1579663))

(declare-fun e!1579664 () Bool)

(declare-fun inv!39291 (ListLongMap!647) Bool)

(assert (=> start!243130 (and (inv!39291 lm!2245) e!1579664)))

(assert (=> start!243130 true))

(declare-fun b!2487683 () Bool)

(declare-fun res!1053055 () Bool)

(assert (=> b!2487683 (=> (not res!1053055) (not e!1579663))))

(declare-datatypes ((Hashable!3343 0))(
  ( (HashableExt!3342 (__x!19205 Int)) )
))
(declare-fun hashF!1483 () Hashable!3343)

(declare-fun allKeysSameHashInMap!206 (ListLongMap!647 Hashable!3343) Bool)

(assert (=> b!2487683 (= res!1053055 (allKeysSameHashInMap!206 lm!2245 hashF!1483))))

(declare-fun b!2487684 () Bool)

(assert (=> b!2487684 (= e!1579663 (not (forall!6025 (toList!1696 lm!2245) lambda!94792)))))

(declare-fun b!2487685 () Bool)

(declare-fun tp!796239 () Bool)

(assert (=> b!2487685 (= e!1579664 tp!796239)))

(assert (= (and start!243130 res!1053056) b!2487683))

(assert (= (and b!2487683 res!1053055) b!2487684))

(assert (= start!243130 b!2487685))

(declare-fun m!2856541 () Bool)

(assert (=> start!243130 m!2856541))

(declare-fun m!2856543 () Bool)

(assert (=> start!243130 m!2856543))

(declare-fun m!2856545 () Bool)

(assert (=> b!2487683 m!2856545))

(assert (=> b!2487684 m!2856541))

(push 1)

(assert (not b!2487683))

(assert (not b!2487684))

(assert (not start!243130))

(assert (not b!2487685))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

