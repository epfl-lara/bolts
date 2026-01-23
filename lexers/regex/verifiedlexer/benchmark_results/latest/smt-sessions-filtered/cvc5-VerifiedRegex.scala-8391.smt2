; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436626 () Bool)

(assert start!436626)

(declare-fun b!4455656 () Bool)

(declare-fun res!1846990 () Bool)

(declare-fun e!2774536 () Bool)

(assert (=> b!4455656 (=> (not res!1846990) (not e!2774536))))

(declare-datatypes ((K!11358 0))(
  ( (K!11359 (val!17357 Int)) )
))
(declare-datatypes ((V!11604 0))(
  ( (V!11605 (val!17358 Int)) )
))
(declare-datatypes ((tuple2!50034 0))(
  ( (tuple2!50035 (_1!28311 K!11358) (_2!28311 V!11604)) )
))
(declare-datatypes ((List!50105 0))(
  ( (Nil!49981) (Cons!49981 (h!55726 tuple2!50034) (t!357055 List!50105)) )
))
(declare-fun l!12858 () List!50105)

(assert (=> b!4455656 (= res!1846990 (is-Cons!49981 l!12858))))

(declare-fun b!4455657 () Bool)

(declare-fun e!2774535 () Bool)

(declare-fun tp!1334916 () Bool)

(assert (=> b!4455657 (= e!2774535 tp!1334916)))

(declare-fun b!4455658 () Bool)

(declare-fun res!1846991 () Bool)

(assert (=> b!4455658 (=> (not res!1846991) (not e!2774536))))

(declare-datatypes ((tuple2!50036 0))(
  ( (tuple2!50037 (_1!28312 (_ BitVec 64)) (_2!28312 List!50105)) )
))
(declare-datatypes ((List!50106 0))(
  ( (Nil!49982) (Cons!49982 (h!55727 tuple2!50036) (t!357056 List!50106)) )
))
(declare-datatypes ((ListLongMap!2465 0))(
  ( (ListLongMap!2466 (toList!3809 List!50106)) )
))
(declare-fun lm!1853 () ListLongMap!2465)

(declare-fun key!4412 () K!11358)

(declare-datatypes ((ListMap!3047 0))(
  ( (ListMap!3048 (toList!3810 List!50105)) )
))
(declare-fun contains!12533 (ListMap!3047 K!11358) Bool)

(declare-fun extractMap!969 (List!50106) ListMap!3047)

(assert (=> b!4455658 (= res!1846991 (contains!12533 (extractMap!969 (toList!3809 lm!1853)) key!4412))))

(declare-fun b!4455659 () Bool)

(assert (=> b!4455659 (= e!2774536 false)))

(declare-fun b!4455660 () Bool)

(declare-fun res!1846996 () Bool)

(assert (=> b!4455660 (=> (not res!1846996) (not e!2774536))))

(declare-fun noDuplicateKeys!901 (List!50105) Bool)

(assert (=> b!4455660 (= res!1846996 (noDuplicateKeys!901 l!12858))))

(declare-fun res!1846992 () Bool)

(assert (=> start!436626 (=> (not res!1846992) (not e!2774536))))

(declare-fun lambda!160160 () Int)

(declare-fun forall!9821 (List!50106 Int) Bool)

(assert (=> start!436626 (= res!1846992 (forall!9821 (toList!3809 lm!1853) lambda!160160))))

(assert (=> start!436626 e!2774536))

(declare-fun inv!65545 (ListLongMap!2465) Bool)

(assert (=> start!436626 (and (inv!65545 lm!1853) e!2774535)))

(assert (=> start!436626 true))

(declare-fun e!2774534 () Bool)

(assert (=> start!436626 e!2774534))

(declare-fun tp_is_empty!26825 () Bool)

(assert (=> start!436626 tp_is_empty!26825))

(declare-fun b!4455661 () Bool)

(declare-fun tp!1334917 () Bool)

(declare-fun tp_is_empty!26827 () Bool)

(assert (=> b!4455661 (= e!2774534 (and tp_is_empty!26825 tp_is_empty!26827 tp!1334917))))

(declare-fun b!4455662 () Bool)

(declare-fun res!1846994 () Bool)

(assert (=> b!4455662 (=> (not res!1846994) (not e!2774536))))

(assert (=> b!4455662 (= res!1846994 (forall!9821 (toList!3809 lm!1853) lambda!160160))))

(declare-fun b!4455663 () Bool)

(declare-fun res!1846993 () Bool)

(assert (=> b!4455663 (=> (not res!1846993) (not e!2774536))))

(declare-datatypes ((Hashable!5308 0))(
  ( (HashableExt!5307 (__x!31011 Int)) )
))
(declare-fun hashF!1313 () Hashable!5308)

(declare-fun allKeysSameHashInMap!1020 (ListLongMap!2465 Hashable!5308) Bool)

(assert (=> b!4455663 (= res!1846993 (allKeysSameHashInMap!1020 lm!1853 hashF!1313))))

(declare-fun b!4455664 () Bool)

(declare-fun res!1846995 () Bool)

(assert (=> b!4455664 (=> (not res!1846995) (not e!2774536))))

(assert (=> b!4455664 (= res!1846995 (noDuplicateKeys!901 (t!357055 l!12858)))))

(assert (= (and start!436626 res!1846992) b!4455663))

(assert (= (and b!4455663 res!1846993) b!4455660))

(assert (= (and b!4455660 res!1846996) b!4455658))

(assert (= (and b!4455658 res!1846991) b!4455656))

(assert (= (and b!4455656 res!1846990) b!4455662))

(assert (= (and b!4455662 res!1846994) b!4455664))

(assert (= (and b!4455664 res!1846995) b!4455659))

(assert (= start!436626 b!4455657))

(assert (= (and start!436626 (is-Cons!49981 l!12858)) b!4455661))

(declare-fun m!5157199 () Bool)

(assert (=> b!4455664 m!5157199))

(declare-fun m!5157201 () Bool)

(assert (=> b!4455658 m!5157201))

(assert (=> b!4455658 m!5157201))

(declare-fun m!5157203 () Bool)

(assert (=> b!4455658 m!5157203))

(declare-fun m!5157205 () Bool)

(assert (=> b!4455662 m!5157205))

(declare-fun m!5157207 () Bool)

(assert (=> b!4455663 m!5157207))

(assert (=> start!436626 m!5157205))

(declare-fun m!5157209 () Bool)

(assert (=> start!436626 m!5157209))

(declare-fun m!5157211 () Bool)

(assert (=> b!4455660 m!5157211))

(push 1)

(assert (not b!4455663))

(assert (not b!4455661))

(assert (not b!4455660))

(assert (not start!436626))

(assert (not b!4455657))

(assert tp_is_empty!26825)

(assert tp_is_empty!26827)

(assert (not b!4455658))

(assert (not b!4455664))

(assert (not b!4455662))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

