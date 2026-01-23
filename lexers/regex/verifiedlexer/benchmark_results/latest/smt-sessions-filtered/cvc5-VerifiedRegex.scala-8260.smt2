; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!429186 () Bool)

(assert start!429186)

(declare-fun b!4410972 () Bool)

(declare-fun e!2746948 () Bool)

(declare-fun tp!1332160 () Bool)

(assert (=> b!4410972 (= e!2746948 tp!1332160)))

(declare-fun b!4410973 () Bool)

(declare-fun res!1820703 () Bool)

(declare-fun e!2746949 () Bool)

(assert (=> b!4410973 (=> (not res!1820703) (not e!2746949))))

(declare-datatypes ((K!10703 0))(
  ( (K!10704 (val!16833 Int)) )
))
(declare-fun key!3717 () K!10703)

(declare-datatypes ((Hashable!5046 0))(
  ( (HashableExt!5045 (__x!30749 Int)) )
))
(declare-fun hashF!1220 () Hashable!5046)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun hash!1949 (Hashable!5046 K!10703) (_ BitVec 64))

(assert (=> b!4410973 (= res!1820703 (= (hash!1949 hashF!1220 key!3717) hash!366))))

(declare-fun b!4410974 () Bool)

(declare-fun res!1820704 () Bool)

(assert (=> b!4410974 (=> (not res!1820704) (not e!2746949))))

(declare-datatypes ((V!10949 0))(
  ( (V!10950 (val!16834 Int)) )
))
(declare-datatypes ((tuple2!48986 0))(
  ( (tuple2!48987 (_1!27787 K!10703) (_2!27787 V!10949)) )
))
(declare-datatypes ((List!49471 0))(
  ( (Nil!49347) (Cons!49347 (h!54988 tuple2!48986) (t!356409 List!49471)) )
))
(declare-datatypes ((tuple2!48988 0))(
  ( (tuple2!48989 (_1!27788 (_ BitVec 64)) (_2!27788 List!49471)) )
))
(declare-datatypes ((List!49472 0))(
  ( (Nil!49348) (Cons!49348 (h!54989 tuple2!48988) (t!356410 List!49472)) )
))
(declare-datatypes ((ListLongMap!1941 0))(
  ( (ListLongMap!1942 (toList!3291 List!49472)) )
))
(declare-fun lm!1616 () ListLongMap!1941)

(declare-datatypes ((ListMap!2535 0))(
  ( (ListMap!2536 (toList!3292 List!49471)) )
))
(declare-fun contains!11776 (ListMap!2535 K!10703) Bool)

(declare-fun extractMap!713 (List!49472) ListMap!2535)

(assert (=> b!4410974 (= res!1820704 (not (contains!11776 (extractMap!713 (toList!3291 lm!1616)) key!3717)))))

(declare-fun res!1820705 () Bool)

(assert (=> start!429186 (=> (not res!1820705) (not e!2746949))))

(declare-fun lambda!150666 () Int)

(declare-fun forall!9414 (List!49472 Int) Bool)

(assert (=> start!429186 (= res!1820705 (forall!9414 (toList!3291 lm!1616) lambda!150666))))

(assert (=> start!429186 e!2746949))

(declare-fun tp_is_empty!25853 () Bool)

(assert (=> start!429186 tp_is_empty!25853))

(declare-fun e!2746947 () Bool)

(assert (=> start!429186 e!2746947))

(declare-fun inv!64890 (ListLongMap!1941) Bool)

(assert (=> start!429186 (and (inv!64890 lm!1616) e!2746948)))

(assert (=> start!429186 true))

(declare-fun tp_is_empty!25855 () Bool)

(declare-fun b!4410975 () Bool)

(declare-fun tp!1332159 () Bool)

(assert (=> b!4410975 (= e!2746947 (and tp_is_empty!25853 tp_is_empty!25855 tp!1332159))))

(declare-fun b!4410976 () Bool)

(declare-fun res!1820706 () Bool)

(assert (=> b!4410976 (=> (not res!1820706) (not e!2746949))))

(declare-fun allKeysSameHashInMap!758 (ListLongMap!1941 Hashable!5046) Bool)

(assert (=> b!4410976 (= res!1820706 (allKeysSameHashInMap!758 lm!1616 hashF!1220))))

(declare-fun b!4410977 () Bool)

(declare-fun res!1820707 () Bool)

(assert (=> b!4410977 (=> (not res!1820707) (not e!2746949))))

(declare-fun newBucket!194 () List!49471)

(declare-fun allKeysSameHash!612 (List!49471 (_ BitVec 64) Hashable!5046) Bool)

(assert (=> b!4410977 (= res!1820707 (allKeysSameHash!612 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4410978 () Bool)

(assert (=> b!4410978 (= e!2746949 false)))

(declare-fun lt!1613977 () Bool)

(declare-fun contains!11777 (ListLongMap!1941 (_ BitVec 64)) Bool)

(assert (=> b!4410978 (= lt!1613977 (contains!11777 lm!1616 hash!366))))

(assert (= (and start!429186 res!1820705) b!4410976))

(assert (= (and b!4410976 res!1820706) b!4410973))

(assert (= (and b!4410973 res!1820703) b!4410977))

(assert (= (and b!4410977 res!1820707) b!4410974))

(assert (= (and b!4410974 res!1820704) b!4410978))

(assert (= (and start!429186 (is-Cons!49347 newBucket!194)) b!4410975))

(assert (= start!429186 b!4410972))

(declare-fun m!5086743 () Bool)

(assert (=> b!4410976 m!5086743))

(declare-fun m!5086745 () Bool)

(assert (=> start!429186 m!5086745))

(declare-fun m!5086747 () Bool)

(assert (=> start!429186 m!5086747))

(declare-fun m!5086749 () Bool)

(assert (=> b!4410977 m!5086749))

(declare-fun m!5086751 () Bool)

(assert (=> b!4410978 m!5086751))

(declare-fun m!5086753 () Bool)

(assert (=> b!4410973 m!5086753))

(declare-fun m!5086755 () Bool)

(assert (=> b!4410974 m!5086755))

(assert (=> b!4410974 m!5086755))

(declare-fun m!5086757 () Bool)

(assert (=> b!4410974 m!5086757))

(push 1)

(assert (not b!4410975))

(assert tp_is_empty!25855)

(assert tp_is_empty!25853)

(assert (not b!4410972))

(assert (not start!429186))

(assert (not b!4410978))

(assert (not b!4410974))

(assert (not b!4410973))

(assert (not b!4410977))

(assert (not b!4410976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

