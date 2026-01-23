; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!430174 () Bool)

(assert start!430174)

(declare-fun b!4416960 () Bool)

(declare-fun res!1824743 () Bool)

(declare-fun e!2750356 () Bool)

(assert (=> b!4416960 (=> (not res!1824743) (not e!2750356))))

(declare-datatypes ((V!11081 0))(
  ( (V!11082 (val!16939 Int)) )
))
(declare-datatypes ((K!10835 0))(
  ( (K!10836 (val!16940 Int)) )
))
(declare-datatypes ((tuple2!49198 0))(
  ( (tuple2!49199 (_1!27893 K!10835) (_2!27893 V!11081)) )
))
(declare-datatypes ((List!49597 0))(
  ( (Nil!49473) (Cons!49473 (h!55136 tuple2!49198) (t!356535 List!49597)) )
))
(declare-datatypes ((tuple2!49200 0))(
  ( (tuple2!49201 (_1!27894 (_ BitVec 64)) (_2!27894 List!49597)) )
))
(declare-datatypes ((List!49598 0))(
  ( (Nil!49474) (Cons!49474 (h!55137 tuple2!49200) (t!356536 List!49598)) )
))
(declare-datatypes ((ListLongMap!2047 0))(
  ( (ListLongMap!2048 (toList!3397 List!49598)) )
))
(declare-fun lm!1616 () ListLongMap!2047)

(declare-fun lambda!152200 () Int)

(declare-fun forall!9490 (List!49598 Int) Bool)

(assert (=> b!4416960 (= res!1824743 (forall!9490 (toList!3397 lm!1616) lambda!152200))))

(declare-fun b!4416961 () Bool)

(declare-fun e!2750358 () Bool)

(declare-fun tp!1332691 () Bool)

(assert (=> b!4416961 (= e!2750358 tp!1332691)))

(declare-fun res!1824739 () Bool)

(declare-fun e!2750361 () Bool)

(assert (=> start!430174 (=> (not res!1824739) (not e!2750361))))

(assert (=> start!430174 (= res!1824739 (forall!9490 (toList!3397 lm!1616) lambda!152200))))

(assert (=> start!430174 e!2750361))

(declare-fun tp_is_empty!26065 () Bool)

(assert (=> start!430174 tp_is_empty!26065))

(declare-fun tp_is_empty!26067 () Bool)

(assert (=> start!430174 tp_is_empty!26067))

(declare-fun e!2750359 () Bool)

(assert (=> start!430174 e!2750359))

(declare-fun inv!65021 (ListLongMap!2047) Bool)

(assert (=> start!430174 (and (inv!65021 lm!1616) e!2750358)))

(assert (=> start!430174 true))

(declare-fun b!4416962 () Bool)

(declare-fun res!1824744 () Bool)

(assert (=> b!4416962 (=> (not res!1824744) (not e!2750361))))

(declare-fun key!3717 () K!10835)

(declare-datatypes ((ListMap!2641 0))(
  ( (ListMap!2642 (toList!3398 List!49597)) )
))
(declare-fun contains!11935 (ListMap!2641 K!10835) Bool)

(declare-fun extractMap!766 (List!49598) ListMap!2641)

(assert (=> b!4416962 (= res!1824744 (not (contains!11935 (extractMap!766 (toList!3397 lm!1616)) key!3717)))))

(declare-fun b!4416963 () Bool)

(declare-fun res!1824748 () Bool)

(assert (=> b!4416963 (=> (not res!1824748) (not e!2750361))))

(declare-fun newBucket!194 () List!49597)

(declare-datatypes ((Hashable!5099 0))(
  ( (HashableExt!5098 (__x!30802 Int)) )
))
(declare-fun hashF!1220 () Hashable!5099)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun allKeysSameHash!665 (List!49597 (_ BitVec 64) Hashable!5099) Bool)

(assert (=> b!4416963 (= res!1824748 (allKeysSameHash!665 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4416964 () Bool)

(declare-fun res!1824747 () Bool)

(assert (=> b!4416964 (=> (not res!1824747) (not e!2750356))))

(declare-fun noDuplicateKeys!705 (List!49597) Bool)

(assert (=> b!4416964 (= res!1824747 (noDuplicateKeys!705 newBucket!194))))

(declare-fun b!4416965 () Bool)

(assert (=> b!4416965 (= e!2750361 e!2750356)))

(declare-fun res!1824738 () Bool)

(assert (=> b!4416965 (=> (not res!1824738) (not e!2750356))))

(declare-fun e!2750360 () Bool)

(assert (=> b!4416965 (= res!1824738 e!2750360)))

(declare-fun res!1824749 () Bool)

(assert (=> b!4416965 (=> res!1824749 e!2750360)))

(declare-fun e!2750357 () Bool)

(assert (=> b!4416965 (= res!1824749 e!2750357)))

(declare-fun res!1824742 () Bool)

(assert (=> b!4416965 (=> (not res!1824742) (not e!2750357))))

(declare-fun lt!1618715 () Bool)

(assert (=> b!4416965 (= res!1824742 lt!1618715)))

(declare-fun contains!11936 (ListLongMap!2047 (_ BitVec 64)) Bool)

(assert (=> b!4416965 (= lt!1618715 (contains!11936 lm!1616 hash!366))))

(declare-fun b!4416966 () Bool)

(declare-fun res!1824745 () Bool)

(declare-fun e!2750362 () Bool)

(assert (=> b!4416966 (=> res!1824745 e!2750362)))

(get-info :version)

(assert (=> b!4416966 (= res!1824745 (or (and ((_ is Cons!49474) (toList!3397 lm!1616)) (= (_1!27894 (h!55137 (toList!3397 lm!1616))) hash!366)) (not ((_ is Cons!49474) (toList!3397 lm!1616))) (= (_1!27894 (h!55137 (toList!3397 lm!1616))) hash!366)))))

(declare-fun newValue!93 () V!11081)

(declare-fun b!4416967 () Bool)

(declare-fun apply!11557 (ListLongMap!2047 (_ BitVec 64)) List!49597)

(assert (=> b!4416967 (= e!2750357 (= newBucket!194 (Cons!49473 (tuple2!49199 key!3717 newValue!93) (apply!11557 lm!1616 hash!366))))))

(declare-fun b!4416968 () Bool)

(assert (=> b!4416968 (= e!2750360 (and (not lt!1618715) (= newBucket!194 (Cons!49473 (tuple2!49199 key!3717 newValue!93) Nil!49473))))))

(declare-fun b!4416969 () Bool)

(declare-fun res!1824740 () Bool)

(assert (=> b!4416969 (=> (not res!1824740) (not e!2750361))))

(declare-fun allKeysSameHashInMap!811 (ListLongMap!2047 Hashable!5099) Bool)

(assert (=> b!4416969 (= res!1824740 (allKeysSameHashInMap!811 lm!1616 hashF!1220))))

(declare-fun tp!1332692 () Bool)

(declare-fun b!4416970 () Bool)

(assert (=> b!4416970 (= e!2750359 (and tp_is_empty!26067 tp_is_empty!26065 tp!1332692))))

(declare-fun b!4416971 () Bool)

(declare-fun res!1824741 () Bool)

(assert (=> b!4416971 (=> (not res!1824741) (not e!2750361))))

(declare-fun hash!2022 (Hashable!5099 K!10835) (_ BitVec 64))

(assert (=> b!4416971 (= res!1824741 (= (hash!2022 hashF!1220 key!3717) hash!366))))

(declare-fun b!4416972 () Bool)

(assert (=> b!4416972 (= e!2750356 (not e!2750362))))

(declare-fun res!1824746 () Bool)

(assert (=> b!4416972 (=> res!1824746 e!2750362)))

(declare-fun lt!1618716 () ListLongMap!2047)

(assert (=> b!4416972 (= res!1824746 (not (forall!9490 (toList!3397 lt!1618716) lambda!152200)))))

(assert (=> b!4416972 (forall!9490 (toList!3397 lt!1618716) lambda!152200)))

(declare-fun +!1009 (ListLongMap!2047 tuple2!49200) ListLongMap!2047)

(assert (=> b!4416972 (= lt!1618716 (+!1009 lm!1616 (tuple2!49201 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!80995 0))(
  ( (Unit!80996) )
))
(declare-fun lt!1618717 () Unit!80995)

(declare-fun addValidProp!349 (ListLongMap!2047 Int (_ BitVec 64) List!49597) Unit!80995)

(assert (=> b!4416972 (= lt!1618717 (addValidProp!349 lm!1616 lambda!152200 hash!366 newBucket!194))))

(declare-fun b!4416973 () Bool)

(assert (=> b!4416973 (= e!2750362 (forall!9490 (toList!3397 lm!1616) lambda!152200))))

(assert (= (and start!430174 res!1824739) b!4416969))

(assert (= (and b!4416969 res!1824740) b!4416971))

(assert (= (and b!4416971 res!1824741) b!4416963))

(assert (= (and b!4416963 res!1824748) b!4416962))

(assert (= (and b!4416962 res!1824744) b!4416965))

(assert (= (and b!4416965 res!1824742) b!4416967))

(assert (= (and b!4416965 (not res!1824749)) b!4416968))

(assert (= (and b!4416965 res!1824738) b!4416964))

(assert (= (and b!4416964 res!1824747) b!4416960))

(assert (= (and b!4416960 res!1824743) b!4416972))

(assert (= (and b!4416972 (not res!1824746)) b!4416966))

(assert (= (and b!4416966 (not res!1824745)) b!4416973))

(assert (= (and start!430174 ((_ is Cons!49473) newBucket!194)) b!4416970))

(assert (= start!430174 b!4416961))

(declare-fun m!5093375 () Bool)

(assert (=> b!4416971 m!5093375))

(declare-fun m!5093377 () Bool)

(assert (=> b!4416962 m!5093377))

(assert (=> b!4416962 m!5093377))

(declare-fun m!5093379 () Bool)

(assert (=> b!4416962 m!5093379))

(declare-fun m!5093381 () Bool)

(assert (=> b!4416963 m!5093381))

(declare-fun m!5093383 () Bool)

(assert (=> b!4416965 m!5093383))

(declare-fun m!5093385 () Bool)

(assert (=> b!4416973 m!5093385))

(declare-fun m!5093387 () Bool)

(assert (=> b!4416969 m!5093387))

(assert (=> start!430174 m!5093385))

(declare-fun m!5093389 () Bool)

(assert (=> start!430174 m!5093389))

(assert (=> b!4416960 m!5093385))

(declare-fun m!5093391 () Bool)

(assert (=> b!4416972 m!5093391))

(assert (=> b!4416972 m!5093391))

(declare-fun m!5093393 () Bool)

(assert (=> b!4416972 m!5093393))

(declare-fun m!5093395 () Bool)

(assert (=> b!4416972 m!5093395))

(declare-fun m!5093397 () Bool)

(assert (=> b!4416967 m!5093397))

(declare-fun m!5093399 () Bool)

(assert (=> b!4416964 m!5093399))

(check-sat (not b!4416964) (not b!4416973) (not b!4416970) tp_is_empty!26065 (not b!4416962) tp_is_empty!26067 (not start!430174) (not b!4416961) (not b!4416971) (not b!4416967) (not b!4416965) (not b!4416972) (not b!4416969) (not b!4416963) (not b!4416960))
(check-sat)
