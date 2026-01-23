; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!432498 () Bool)

(assert start!432498)

(declare-fun res!1832131 () Bool)

(declare-fun e!2758205 () Bool)

(assert (=> start!432498 (=> (not res!1832131) (not e!2758205))))

(declare-datatypes ((V!11254 0))(
  ( (V!11255 (val!17077 Int)) )
))
(declare-datatypes ((K!11008 0))(
  ( (K!11009 (val!17078 Int)) )
))
(declare-datatypes ((tuple2!49474 0))(
  ( (tuple2!49475 (_1!28031 K!11008) (_2!28031 V!11254)) )
))
(declare-datatypes ((List!49767 0))(
  ( (Nil!49643) (Cons!49643 (h!55340 tuple2!49474) (t!356705 List!49767)) )
))
(declare-datatypes ((tuple2!49476 0))(
  ( (tuple2!49477 (_1!28032 (_ BitVec 64)) (_2!28032 List!49767)) )
))
(declare-datatypes ((List!49768 0))(
  ( (Nil!49644) (Cons!49644 (h!55341 tuple2!49476) (t!356706 List!49768)) )
))
(declare-datatypes ((ListLongMap!2185 0))(
  ( (ListLongMap!2186 (toList!3535 List!49768)) )
))
(declare-fun lm!1616 () ListLongMap!2185)

(declare-fun lambda!154991 () Int)

(declare-fun forall!9601 (List!49768 Int) Bool)

(assert (=> start!432498 (= res!1832131 (forall!9601 (toList!3535 lm!1616) lambda!154991))))

(assert (=> start!432498 e!2758205))

(declare-fun tp_is_empty!26341 () Bool)

(assert (=> start!432498 tp_is_empty!26341))

(declare-fun tp_is_empty!26343 () Bool)

(assert (=> start!432498 tp_is_empty!26343))

(declare-fun e!2758200 () Bool)

(assert (=> start!432498 e!2758200))

(declare-fun e!2758204 () Bool)

(declare-fun inv!65195 (ListLongMap!2185) Bool)

(assert (=> start!432498 (and (inv!65195 lm!1616) e!2758204)))

(assert (=> start!432498 true))

(declare-fun b!4429718 () Bool)

(declare-fun e!2758201 () Bool)

(assert (=> b!4429718 (= e!2758201 (forall!9601 (toList!3535 lm!1616) lambda!154991))))

(declare-datatypes ((ListMap!2779 0))(
  ( (ListMap!2780 (toList!3536 List!49767)) )
))
(declare-fun lt!1629036 () ListMap!2779)

(declare-fun lt!1629038 () ListLongMap!2185)

(declare-fun extractMap!835 (List!49768) ListMap!2779)

(assert (=> b!4429718 (= lt!1629036 (extractMap!835 (toList!3535 lt!1629038)))))

(declare-fun b!4429719 () Bool)

(declare-fun res!1832130 () Bool)

(declare-fun e!2758203 () Bool)

(assert (=> b!4429719 (=> (not res!1832130) (not e!2758203))))

(declare-fun newBucket!194 () List!49767)

(declare-fun noDuplicateKeys!774 (List!49767) Bool)

(assert (=> b!4429719 (= res!1832130 (noDuplicateKeys!774 newBucket!194))))

(declare-fun b!4429720 () Bool)

(declare-fun res!1832128 () Bool)

(assert (=> b!4429720 (=> (not res!1832128) (not e!2758205))))

(declare-datatypes ((Hashable!5168 0))(
  ( (HashableExt!5167 (__x!30871 Int)) )
))
(declare-fun hashF!1220 () Hashable!5168)

(declare-fun allKeysSameHashInMap!880 (ListLongMap!2185 Hashable!5168) Bool)

(assert (=> b!4429720 (= res!1832128 (allKeysSameHashInMap!880 lm!1616 hashF!1220))))

(declare-fun b!4429721 () Bool)

(assert (=> b!4429721 (= e!2758205 e!2758203)))

(declare-fun res!1832136 () Bool)

(assert (=> b!4429721 (=> (not res!1832136) (not e!2758203))))

(declare-fun e!2758199 () Bool)

(assert (=> b!4429721 (= res!1832136 e!2758199)))

(declare-fun res!1832132 () Bool)

(assert (=> b!4429721 (=> res!1832132 e!2758199)))

(declare-fun e!2758202 () Bool)

(assert (=> b!4429721 (= res!1832132 e!2758202)))

(declare-fun res!1832126 () Bool)

(assert (=> b!4429721 (=> (not res!1832126) (not e!2758202))))

(declare-fun lt!1629039 () Bool)

(assert (=> b!4429721 (= res!1832126 lt!1629039)))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!12168 (ListLongMap!2185 (_ BitVec 64)) Bool)

(assert (=> b!4429721 (= lt!1629039 (contains!12168 lm!1616 hash!366))))

(declare-fun newValue!93 () V!11254)

(declare-fun key!3717 () K!11008)

(declare-fun b!4429722 () Bool)

(declare-fun apply!11626 (ListLongMap!2185 (_ BitVec 64)) List!49767)

(assert (=> b!4429722 (= e!2758202 (= newBucket!194 (Cons!49643 (tuple2!49475 key!3717 newValue!93) (apply!11626 lm!1616 hash!366))))))

(declare-fun b!4429723 () Bool)

(declare-fun res!1832134 () Bool)

(assert (=> b!4429723 (=> (not res!1832134) (not e!2758205))))

(declare-fun hash!2187 (Hashable!5168 K!11008) (_ BitVec 64))

(assert (=> b!4429723 (= res!1832134 (= (hash!2187 hashF!1220 key!3717) hash!366))))

(declare-fun b!4429724 () Bool)

(declare-fun res!1832133 () Bool)

(assert (=> b!4429724 (=> (not res!1832133) (not e!2758205))))

(declare-fun allKeysSameHash!734 (List!49767 (_ BitVec 64) Hashable!5168) Bool)

(assert (=> b!4429724 (= res!1832133 (allKeysSameHash!734 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4429725 () Bool)

(declare-fun res!1832129 () Bool)

(assert (=> b!4429725 (=> (not res!1832129) (not e!2758203))))

(assert (=> b!4429725 (= res!1832129 (forall!9601 (toList!3535 lm!1616) lambda!154991))))

(declare-fun b!4429726 () Bool)

(declare-fun tp!1333459 () Bool)

(assert (=> b!4429726 (= e!2758200 (and tp_is_empty!26343 tp_is_empty!26341 tp!1333459))))

(declare-fun b!4429727 () Bool)

(assert (=> b!4429727 (= e!2758203 (not e!2758201))))

(declare-fun res!1832127 () Bool)

(assert (=> b!4429727 (=> res!1832127 e!2758201)))

(assert (=> b!4429727 (= res!1832127 (not (forall!9601 (toList!3535 lt!1629038) lambda!154991)))))

(assert (=> b!4429727 (forall!9601 (toList!3535 lt!1629038) lambda!154991)))

(declare-fun +!1130 (ListLongMap!2185 tuple2!49476) ListLongMap!2185)

(assert (=> b!4429727 (= lt!1629038 (+!1130 lm!1616 (tuple2!49477 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!82613 0))(
  ( (Unit!82614) )
))
(declare-fun lt!1629037 () Unit!82613)

(declare-fun addValidProp!418 (ListLongMap!2185 Int (_ BitVec 64) List!49767) Unit!82613)

(assert (=> b!4429727 (= lt!1629037 (addValidProp!418 lm!1616 lambda!154991 hash!366 newBucket!194))))

(declare-fun b!4429728 () Bool)

(declare-fun res!1832135 () Bool)

(assert (=> b!4429728 (=> (not res!1832135) (not e!2758205))))

(declare-fun contains!12169 (ListMap!2779 K!11008) Bool)

(assert (=> b!4429728 (= res!1832135 (not (contains!12169 (extractMap!835 (toList!3535 lm!1616)) key!3717)))))

(declare-fun b!4429729 () Bool)

(declare-fun tp!1333460 () Bool)

(assert (=> b!4429729 (= e!2758204 tp!1333460)))

(declare-fun b!4429730 () Bool)

(declare-fun res!1832137 () Bool)

(assert (=> b!4429730 (=> res!1832137 e!2758201)))

(assert (=> b!4429730 (= res!1832137 (or (and (is-Cons!49644 (toList!3535 lm!1616)) (= (_1!28032 (h!55341 (toList!3535 lm!1616))) hash!366)) (and (is-Cons!49644 (toList!3535 lm!1616)) (not (= (_1!28032 (h!55341 (toList!3535 lm!1616))) hash!366))) (not (is-Nil!49644 (toList!3535 lm!1616)))))))

(declare-fun b!4429731 () Bool)

(assert (=> b!4429731 (= e!2758199 (and (not lt!1629039) (= newBucket!194 (Cons!49643 (tuple2!49475 key!3717 newValue!93) Nil!49643))))))

(assert (= (and start!432498 res!1832131) b!4429720))

(assert (= (and b!4429720 res!1832128) b!4429723))

(assert (= (and b!4429723 res!1832134) b!4429724))

(assert (= (and b!4429724 res!1832133) b!4429728))

(assert (= (and b!4429728 res!1832135) b!4429721))

(assert (= (and b!4429721 res!1832126) b!4429722))

(assert (= (and b!4429721 (not res!1832132)) b!4429731))

(assert (= (and b!4429721 res!1832136) b!4429719))

(assert (= (and b!4429719 res!1832130) b!4429725))

(assert (= (and b!4429725 res!1832129) b!4429727))

(assert (= (and b!4429727 (not res!1832127)) b!4429730))

(assert (= (and b!4429730 (not res!1832137)) b!4429718))

(assert (= (and start!432498 (is-Cons!49643 newBucket!194)) b!4429726))

(assert (= start!432498 b!4429729))

(declare-fun m!5113951 () Bool)

(assert (=> b!4429728 m!5113951))

(assert (=> b!4429728 m!5113951))

(declare-fun m!5113953 () Bool)

(assert (=> b!4429728 m!5113953))

(declare-fun m!5113955 () Bool)

(assert (=> b!4429720 m!5113955))

(declare-fun m!5113957 () Bool)

(assert (=> b!4429724 m!5113957))

(declare-fun m!5113959 () Bool)

(assert (=> start!432498 m!5113959))

(declare-fun m!5113961 () Bool)

(assert (=> start!432498 m!5113961))

(assert (=> b!4429718 m!5113959))

(declare-fun m!5113963 () Bool)

(assert (=> b!4429718 m!5113963))

(declare-fun m!5113965 () Bool)

(assert (=> b!4429727 m!5113965))

(assert (=> b!4429727 m!5113965))

(declare-fun m!5113967 () Bool)

(assert (=> b!4429727 m!5113967))

(declare-fun m!5113969 () Bool)

(assert (=> b!4429727 m!5113969))

(declare-fun m!5113971 () Bool)

(assert (=> b!4429722 m!5113971))

(declare-fun m!5113973 () Bool)

(assert (=> b!4429719 m!5113973))

(assert (=> b!4429725 m!5113959))

(declare-fun m!5113975 () Bool)

(assert (=> b!4429721 m!5113975))

(declare-fun m!5113977 () Bool)

(assert (=> b!4429723 m!5113977))

(push 1)

(assert (not b!4429727))

(assert (not b!4429729))

(assert (not b!4429718))

(assert (not b!4429728))

(assert (not b!4429722))

(assert (not b!4429723))

(assert tp_is_empty!26341)

(assert (not b!4429719))

(assert (not b!4429726))

(assert (not b!4429724))

(assert (not b!4429721))

(assert (not start!432498))

(assert (not b!4429720))

(assert (not b!4429725))

(assert tp_is_empty!26343)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

