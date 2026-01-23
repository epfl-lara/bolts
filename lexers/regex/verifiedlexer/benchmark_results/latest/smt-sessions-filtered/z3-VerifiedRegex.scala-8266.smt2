; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!429560 () Bool)

(assert start!429560)

(declare-fun b!4412814 () Bool)

(declare-fun res!1821817 () Bool)

(declare-fun e!2748044 () Bool)

(assert (=> b!4412814 (=> res!1821817 e!2748044)))

(declare-datatypes ((V!10981 0))(
  ( (V!10982 (val!16859 Int)) )
))
(declare-datatypes ((K!10735 0))(
  ( (K!10736 (val!16860 Int)) )
))
(declare-datatypes ((tuple2!49038 0))(
  ( (tuple2!49039 (_1!27813 K!10735) (_2!27813 V!10981)) )
))
(declare-datatypes ((List!49502 0))(
  ( (Nil!49378) (Cons!49378 (h!55025 tuple2!49038) (t!356440 List!49502)) )
))
(declare-datatypes ((tuple2!49040 0))(
  ( (tuple2!49041 (_1!27814 (_ BitVec 64)) (_2!27814 List!49502)) )
))
(declare-datatypes ((List!49503 0))(
  ( (Nil!49379) (Cons!49379 (h!55026 tuple2!49040) (t!356441 List!49503)) )
))
(declare-datatypes ((ListLongMap!1967 0))(
  ( (ListLongMap!1968 (toList!3317 List!49503)) )
))
(declare-fun lt!1614937 () ListLongMap!1967)

(declare-fun lm!1616 () ListLongMap!1967)

(declare-fun tail!7153 (List!49503) List!49503)

(assert (=> b!4412814 (= res!1821817 (not (= (tail!7153 (toList!3317 lt!1614937)) (t!356441 (toList!3317 lm!1616)))))))

(declare-fun b!4412815 () Bool)

(declare-fun res!1821821 () Bool)

(declare-fun e!2748039 () Bool)

(assert (=> b!4412815 (=> (not res!1821821) (not e!2748039))))

(declare-fun lambda!151039 () Int)

(declare-fun forall!9436 (List!49503 Int) Bool)

(assert (=> b!4412815 (= res!1821821 (forall!9436 (toList!3317 lm!1616) lambda!151039))))

(declare-fun newValue!93 () V!10981)

(declare-fun key!3717 () K!10735)

(declare-fun newBucket!194 () List!49502)

(declare-fun b!4412816 () Bool)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun e!2748043 () Bool)

(declare-fun apply!11517 (ListLongMap!1967 (_ BitVec 64)) List!49502)

(assert (=> b!4412816 (= e!2748043 (= newBucket!194 (Cons!49378 (tuple2!49039 key!3717 newValue!93) (apply!11517 lm!1616 hash!366))))))

(declare-fun b!4412817 () Bool)

(assert (=> b!4412817 (= e!2748044 true)))

(declare-datatypes ((ListMap!2561 0))(
  ( (ListMap!2562 (toList!3318 List!49502)) )
))
(declare-fun lt!1614939 () ListMap!2561)

(declare-fun extractMap!726 (List!49503) ListMap!2561)

(assert (=> b!4412817 (= lt!1614939 (extractMap!726 (t!356441 (toList!3317 lm!1616))))))

(declare-fun b!4412818 () Bool)

(declare-fun res!1821818 () Bool)

(declare-fun e!2748040 () Bool)

(assert (=> b!4412818 (=> (not res!1821818) (not e!2748040))))

(declare-datatypes ((Hashable!5059 0))(
  ( (HashableExt!5058 (__x!30762 Int)) )
))
(declare-fun hashF!1220 () Hashable!5059)

(declare-fun allKeysSameHash!625 (List!49502 (_ BitVec 64) Hashable!5059) Bool)

(assert (=> b!4412818 (= res!1821818 (allKeysSameHash!625 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4412819 () Bool)

(assert (=> b!4412819 (= e!2748040 e!2748039)))

(declare-fun res!1821816 () Bool)

(assert (=> b!4412819 (=> (not res!1821816) (not e!2748039))))

(declare-fun e!2748042 () Bool)

(assert (=> b!4412819 (= res!1821816 e!2748042)))

(declare-fun res!1821811 () Bool)

(assert (=> b!4412819 (=> res!1821811 e!2748042)))

(assert (=> b!4412819 (= res!1821811 e!2748043)))

(declare-fun res!1821820 () Bool)

(assert (=> b!4412819 (=> (not res!1821820) (not e!2748043))))

(declare-fun lt!1614941 () Bool)

(assert (=> b!4412819 (= res!1821820 (not lt!1614941))))

(declare-fun lt!1614942 () Bool)

(assert (=> b!4412819 (= lt!1614941 (not lt!1614942))))

(declare-fun contains!11812 (ListLongMap!1967 (_ BitVec 64)) Bool)

(assert (=> b!4412819 (= lt!1614942 (contains!11812 lm!1616 hash!366))))

(declare-fun b!4412820 () Bool)

(assert (=> b!4412820 (= e!2748042 (and (not lt!1614942) (= newBucket!194 (Cons!49378 (tuple2!49039 key!3717 newValue!93) Nil!49378))))))

(declare-fun b!4412821 () Bool)

(declare-fun res!1821822 () Bool)

(assert (=> b!4412821 (=> res!1821822 e!2748044)))

(get-info :version)

(assert (=> b!4412821 (= res!1821822 (or (not ((_ is Cons!49379) (toList!3317 lm!1616))) (not (= (_1!27814 (h!55026 (toList!3317 lm!1616))) hash!366)) lt!1614941))))

(declare-fun res!1821809 () Bool)

(assert (=> start!429560 (=> (not res!1821809) (not e!2748040))))

(assert (=> start!429560 (= res!1821809 (forall!9436 (toList!3317 lm!1616) lambda!151039))))

(assert (=> start!429560 e!2748040))

(declare-fun tp_is_empty!25905 () Bool)

(assert (=> start!429560 tp_is_empty!25905))

(declare-fun tp_is_empty!25907 () Bool)

(assert (=> start!429560 tp_is_empty!25907))

(declare-fun e!2748038 () Bool)

(assert (=> start!429560 e!2748038))

(declare-fun e!2748041 () Bool)

(declare-fun inv!64921 (ListLongMap!1967) Bool)

(assert (=> start!429560 (and (inv!64921 lm!1616) e!2748041)))

(assert (=> start!429560 true))

(declare-fun b!4412822 () Bool)

(declare-fun res!1821814 () Bool)

(assert (=> b!4412822 (=> (not res!1821814) (not e!2748039))))

(declare-fun noDuplicateKeys!665 (List!49502) Bool)

(assert (=> b!4412822 (= res!1821814 (noDuplicateKeys!665 newBucket!194))))

(declare-fun b!4412823 () Bool)

(declare-fun res!1821819 () Bool)

(assert (=> b!4412823 (=> (not res!1821819) (not e!2748040))))

(declare-fun contains!11813 (ListMap!2561 K!10735) Bool)

(assert (=> b!4412823 (= res!1821819 (not (contains!11813 (extractMap!726 (toList!3317 lm!1616)) key!3717)))))

(declare-fun b!4412824 () Bool)

(assert (=> b!4412824 (= e!2748039 (not e!2748044))))

(declare-fun res!1821810 () Bool)

(assert (=> b!4412824 (=> res!1821810 e!2748044)))

(assert (=> b!4412824 (= res!1821810 (not (forall!9436 (toList!3317 lt!1614937) lambda!151039)))))

(assert (=> b!4412824 (forall!9436 (toList!3317 lt!1614937) lambda!151039)))

(declare-fun lt!1614940 () tuple2!49040)

(declare-fun +!934 (ListLongMap!1967 tuple2!49040) ListLongMap!1967)

(assert (=> b!4412824 (= lt!1614937 (+!934 lm!1616 lt!1614940))))

(assert (=> b!4412824 (= lt!1614940 (tuple2!49041 hash!366 newBucket!194))))

(declare-datatypes ((Unit!80518 0))(
  ( (Unit!80519) )
))
(declare-fun lt!1614938 () Unit!80518)

(declare-fun addValidProp!309 (ListLongMap!1967 Int (_ BitVec 64) List!49502) Unit!80518)

(assert (=> b!4412824 (= lt!1614938 (addValidProp!309 lm!1616 lambda!151039 hash!366 newBucket!194))))

(declare-fun b!4412825 () Bool)

(declare-fun res!1821812 () Bool)

(assert (=> b!4412825 (=> (not res!1821812) (not e!2748040))))

(declare-fun hash!1967 (Hashable!5059 K!10735) (_ BitVec 64))

(assert (=> b!4412825 (= res!1821812 (= (hash!1967 hashF!1220 key!3717) hash!366))))

(declare-fun b!4412826 () Bool)

(declare-fun res!1821813 () Bool)

(assert (=> b!4412826 (=> res!1821813 e!2748044)))

(declare-fun head!9144 (List!49503) tuple2!49040)

(assert (=> b!4412826 (= res!1821813 (not (= (head!9144 (toList!3317 lt!1614937)) lt!1614940)))))

(declare-fun b!4412827 () Bool)

(declare-fun res!1821815 () Bool)

(assert (=> b!4412827 (=> (not res!1821815) (not e!2748040))))

(declare-fun allKeysSameHashInMap!771 (ListLongMap!1967 Hashable!5059) Bool)

(assert (=> b!4412827 (= res!1821815 (allKeysSameHashInMap!771 lm!1616 hashF!1220))))

(declare-fun b!4412828 () Bool)

(declare-fun tp!1332307 () Bool)

(assert (=> b!4412828 (= e!2748041 tp!1332307)))

(declare-fun tp!1332308 () Bool)

(declare-fun b!4412829 () Bool)

(assert (=> b!4412829 (= e!2748038 (and tp_is_empty!25907 tp_is_empty!25905 tp!1332308))))

(assert (= (and start!429560 res!1821809) b!4412827))

(assert (= (and b!4412827 res!1821815) b!4412825))

(assert (= (and b!4412825 res!1821812) b!4412818))

(assert (= (and b!4412818 res!1821818) b!4412823))

(assert (= (and b!4412823 res!1821819) b!4412819))

(assert (= (and b!4412819 res!1821820) b!4412816))

(assert (= (and b!4412819 (not res!1821811)) b!4412820))

(assert (= (and b!4412819 res!1821816) b!4412822))

(assert (= (and b!4412822 res!1821814) b!4412815))

(assert (= (and b!4412815 res!1821821) b!4412824))

(assert (= (and b!4412824 (not res!1821810)) b!4412821))

(assert (= (and b!4412821 (not res!1821822)) b!4412826))

(assert (= (and b!4412826 (not res!1821813)) b!4412814))

(assert (= (and b!4412814 (not res!1821817)) b!4412817))

(assert (= (and start!429560 ((_ is Cons!49378) newBucket!194)) b!4412829))

(assert (= start!429560 b!4412828))

(declare-fun m!5088439 () Bool)

(assert (=> start!429560 m!5088439))

(declare-fun m!5088441 () Bool)

(assert (=> start!429560 m!5088441))

(declare-fun m!5088443 () Bool)

(assert (=> b!4412827 m!5088443))

(declare-fun m!5088445 () Bool)

(assert (=> b!4412826 m!5088445))

(declare-fun m!5088447 () Bool)

(assert (=> b!4412816 m!5088447))

(declare-fun m!5088449 () Bool)

(assert (=> b!4412814 m!5088449))

(declare-fun m!5088451 () Bool)

(assert (=> b!4412825 m!5088451))

(declare-fun m!5088453 () Bool)

(assert (=> b!4412823 m!5088453))

(assert (=> b!4412823 m!5088453))

(declare-fun m!5088455 () Bool)

(assert (=> b!4412823 m!5088455))

(declare-fun m!5088457 () Bool)

(assert (=> b!4412824 m!5088457))

(assert (=> b!4412824 m!5088457))

(declare-fun m!5088459 () Bool)

(assert (=> b!4412824 m!5088459))

(declare-fun m!5088461 () Bool)

(assert (=> b!4412824 m!5088461))

(declare-fun m!5088463 () Bool)

(assert (=> b!4412818 m!5088463))

(declare-fun m!5088465 () Bool)

(assert (=> b!4412817 m!5088465))

(declare-fun m!5088467 () Bool)

(assert (=> b!4412822 m!5088467))

(declare-fun m!5088469 () Bool)

(assert (=> b!4412819 m!5088469))

(assert (=> b!4412815 m!5088439))

(check-sat (not b!4412818) tp_is_empty!25905 (not b!4412815) (not b!4412816) (not b!4412822) (not b!4412826) (not start!429560) (not b!4412817) tp_is_empty!25907 (not b!4412828) (not b!4412829) (not b!4412827) (not b!4412814) (not b!4412823) (not b!4412824) (not b!4412819) (not b!4412825))
(check-sat)
