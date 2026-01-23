; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!430166 () Bool)

(assert start!430166)

(declare-fun b!4416736 () Bool)

(declare-fun e!2750245 () Bool)

(declare-fun e!2750241 () Bool)

(assert (=> b!4416736 (= e!2750245 (not e!2750241))))

(declare-fun res!1824542 () Bool)

(assert (=> b!4416736 (=> res!1824542 e!2750241)))

(declare-datatypes ((V!11071 0))(
  ( (V!11072 (val!16931 Int)) )
))
(declare-datatypes ((K!10825 0))(
  ( (K!10826 (val!16932 Int)) )
))
(declare-datatypes ((tuple2!49182 0))(
  ( (tuple2!49183 (_1!27885 K!10825) (_2!27885 V!11071)) )
))
(declare-datatypes ((List!49589 0))(
  ( (Nil!49465) (Cons!49465 (h!55128 tuple2!49182) (t!356527 List!49589)) )
))
(declare-datatypes ((tuple2!49184 0))(
  ( (tuple2!49185 (_1!27886 (_ BitVec 64)) (_2!27886 List!49589)) )
))
(declare-datatypes ((List!49590 0))(
  ( (Nil!49466) (Cons!49466 (h!55129 tuple2!49184) (t!356528 List!49590)) )
))
(declare-datatypes ((ListLongMap!2039 0))(
  ( (ListLongMap!2040 (toList!3389 List!49590)) )
))
(declare-fun lt!1618611 () ListLongMap!2039)

(declare-fun lambda!152156 () Int)

(declare-fun forall!9486 (List!49590 Int) Bool)

(assert (=> b!4416736 (= res!1824542 (not (forall!9486 (toList!3389 lt!1618611) lambda!152156)))))

(assert (=> b!4416736 (forall!9486 (toList!3389 lt!1618611) lambda!152156)))

(declare-fun lm!1616 () ListLongMap!2039)

(declare-fun lt!1618615 () tuple2!49184)

(declare-fun +!1002 (ListLongMap!2039 tuple2!49184) ListLongMap!2039)

(assert (=> b!4416736 (= lt!1618611 (+!1002 lm!1616 lt!1618615))))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun newBucket!194 () List!49589)

(assert (=> b!4416736 (= lt!1618615 (tuple2!49185 hash!366 newBucket!194))))

(declare-datatypes ((Unit!80987 0))(
  ( (Unit!80988) )
))
(declare-fun lt!1618609 () Unit!80987)

(declare-fun addValidProp!345 (ListLongMap!2039 Int (_ BitVec 64) List!49589) Unit!80987)

(assert (=> b!4416736 (= lt!1618609 (addValidProp!345 lm!1616 lambda!152156 hash!366 newBucket!194))))

(declare-fun b!4416737 () Bool)

(declare-fun res!1824547 () Bool)

(assert (=> b!4416737 (=> res!1824547 e!2750241)))

(declare-fun lt!1618614 () Bool)

(get-info :version)

(assert (=> b!4416737 (= res!1824547 (or (not ((_ is Cons!49466) (toList!3389 lm!1616))) (not (= (_1!27886 (h!55129 (toList!3389 lm!1616))) hash!366)) lt!1618614))))

(declare-fun b!4416738 () Bool)

(declare-fun e!2750247 () Bool)

(assert (=> b!4416738 (= e!2750247 e!2750245)))

(declare-fun res!1824555 () Bool)

(assert (=> b!4416738 (=> (not res!1824555) (not e!2750245))))

(declare-fun e!2750248 () Bool)

(assert (=> b!4416738 (= res!1824555 e!2750248)))

(declare-fun res!1824554 () Bool)

(assert (=> b!4416738 (=> res!1824554 e!2750248)))

(declare-fun e!2750243 () Bool)

(assert (=> b!4416738 (= res!1824554 e!2750243)))

(declare-fun res!1824540 () Bool)

(assert (=> b!4416738 (=> (not res!1824540) (not e!2750243))))

(assert (=> b!4416738 (= res!1824540 (not lt!1618614))))

(declare-fun lt!1618612 () Bool)

(assert (=> b!4416738 (= lt!1618614 (not lt!1618612))))

(declare-fun contains!11927 (ListLongMap!2039 (_ BitVec 64)) Bool)

(assert (=> b!4416738 (= lt!1618612 (contains!11927 lm!1616 hash!366))))

(declare-fun newValue!93 () V!11071)

(declare-fun key!3717 () K!10825)

(declare-fun b!4416739 () Bool)

(declare-fun apply!11553 (ListLongMap!2039 (_ BitVec 64)) List!49589)

(assert (=> b!4416739 (= e!2750243 (= newBucket!194 (Cons!49465 (tuple2!49183 key!3717 newValue!93) (apply!11553 lm!1616 hash!366))))))

(declare-fun b!4416740 () Bool)

(declare-fun e!2750244 () Bool)

(declare-fun e!2750239 () Bool)

(assert (=> b!4416740 (= e!2750244 e!2750239)))

(declare-fun res!1824548 () Bool)

(assert (=> b!4416740 (=> res!1824548 e!2750239)))

(declare-fun lt!1618605 () tuple2!49182)

(declare-fun lt!1618613 () List!49589)

(assert (=> b!4416740 (= res!1824548 (not (= newBucket!194 (Cons!49465 lt!1618605 lt!1618613))))))

(assert (=> b!4416740 (= lt!1618613 (apply!11553 lm!1616 hash!366))))

(assert (=> b!4416740 (= lt!1618605 (tuple2!49183 key!3717 newValue!93))))

(declare-fun b!4416741 () Bool)

(declare-fun res!1824539 () Bool)

(declare-fun e!2750246 () Bool)

(assert (=> b!4416741 (=> res!1824539 e!2750246)))

(declare-datatypes ((ListMap!2633 0))(
  ( (ListMap!2634 (toList!3390 List!49589)) )
))
(declare-fun lt!1618604 () ListMap!2633)

(declare-fun lt!1618606 () ListMap!2633)

(declare-fun eq!377 (ListMap!2633 ListMap!2633) Bool)

(assert (=> b!4416741 (= res!1824539 (not (eq!377 lt!1618604 lt!1618606)))))

(declare-fun b!4416742 () Bool)

(declare-fun res!1824545 () Bool)

(assert (=> b!4416742 (=> res!1824545 e!2750241)))

(declare-fun head!9180 (List!49590) tuple2!49184)

(assert (=> b!4416742 (= res!1824545 (not (= (head!9180 (toList!3389 lt!1618611)) lt!1618615)))))

(declare-fun tp_is_empty!26051 () Bool)

(declare-fun b!4416743 () Bool)

(declare-fun tp_is_empty!26049 () Bool)

(declare-fun e!2750240 () Bool)

(declare-fun tp!1332668 () Bool)

(assert (=> b!4416743 (= e!2750240 (and tp_is_empty!26051 tp_is_empty!26049 tp!1332668))))

(declare-fun b!4416744 () Bool)

(declare-fun res!1824556 () Bool)

(assert (=> b!4416744 (=> res!1824556 e!2750246)))

(declare-fun lt!1618608 () ListMap!2633)

(declare-fun +!1003 (ListMap!2633 tuple2!49182) ListMap!2633)

(assert (=> b!4416744 (= res!1824556 (not (eq!377 lt!1618604 (+!1003 lt!1618608 lt!1618605))))))

(declare-fun b!4416745 () Bool)

(declare-fun e!2750242 () Bool)

(assert (=> b!4416745 (= e!2750242 e!2750246)))

(declare-fun res!1824546 () Bool)

(assert (=> b!4416745 (=> res!1824546 e!2750246)))

(declare-fun lt!1618602 () ListMap!2633)

(assert (=> b!4416745 (= res!1824546 (not (eq!377 lt!1618602 lt!1618606)))))

(declare-fun lt!1618607 () ListMap!2633)

(assert (=> b!4416745 (eq!377 lt!1618607 lt!1618606)))

(declare-fun lt!1618603 () ListMap!2633)

(declare-fun addToMapMapFromBucket!355 (List!49589 ListMap!2633) ListMap!2633)

(assert (=> b!4416745 (= lt!1618606 (+!1003 (addToMapMapFromBucket!355 lt!1618613 lt!1618603) lt!1618605))))

(declare-fun lt!1618610 () Unit!80987)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!172 (ListMap!2633 K!10825 V!11071 List!49589) Unit!80987)

(assert (=> b!4416745 (= lt!1618610 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!172 lt!1618603 key!3717 newValue!93 lt!1618613))))

(declare-fun b!4416746 () Bool)

(assert (=> b!4416746 (= e!2750241 e!2750244)))

(declare-fun res!1824557 () Bool)

(assert (=> b!4416746 (=> res!1824557 e!2750244)))

(assert (=> b!4416746 (= res!1824557 (not (= lt!1618604 lt!1618602)))))

(assert (=> b!4416746 (= lt!1618602 (addToMapMapFromBucket!355 newBucket!194 lt!1618603))))

(declare-fun extractMap!762 (List!49590) ListMap!2633)

(assert (=> b!4416746 (= lt!1618604 (extractMap!762 (toList!3389 lt!1618611)))))

(assert (=> b!4416746 (= lt!1618603 (extractMap!762 (t!356528 (toList!3389 lm!1616))))))

(declare-fun b!4416747 () Bool)

(assert (=> b!4416747 (= e!2750246 (forall!9486 (toList!3389 lt!1618611) lambda!152156))))

(declare-fun res!1824538 () Bool)

(declare-fun e!2750237 () Bool)

(assert (=> start!430166 (=> (not res!1824538) (not e!2750237))))

(assert (=> start!430166 (= res!1824538 (forall!9486 (toList!3389 lm!1616) lambda!152156))))

(assert (=> start!430166 e!2750237))

(assert (=> start!430166 tp_is_empty!26049))

(assert (=> start!430166 tp_is_empty!26051))

(assert (=> start!430166 e!2750240))

(declare-fun e!2750238 () Bool)

(declare-fun inv!65011 (ListLongMap!2039) Bool)

(assert (=> start!430166 (and (inv!65011 lm!1616) e!2750238)))

(assert (=> start!430166 true))

(declare-fun b!4416748 () Bool)

(assert (=> b!4416748 (= e!2750237 e!2750247)))

(declare-fun res!1824541 () Bool)

(assert (=> b!4416748 (=> (not res!1824541) (not e!2750247))))

(declare-fun contains!11928 (ListMap!2633 K!10825) Bool)

(assert (=> b!4416748 (= res!1824541 (not (contains!11928 lt!1618608 key!3717)))))

(assert (=> b!4416748 (= lt!1618608 (extractMap!762 (toList!3389 lm!1616)))))

(declare-fun b!4416749 () Bool)

(assert (=> b!4416749 (= e!2750248 (and (not lt!1618612) (= newBucket!194 (Cons!49465 (tuple2!49183 key!3717 newValue!93) Nil!49465))))))

(declare-fun b!4416750 () Bool)

(declare-fun res!1824543 () Bool)

(assert (=> b!4416750 (=> (not res!1824543) (not e!2750237))))

(declare-datatypes ((Hashable!5095 0))(
  ( (HashableExt!5094 (__x!30798 Int)) )
))
(declare-fun hashF!1220 () Hashable!5095)

(declare-fun allKeysSameHash!661 (List!49589 (_ BitVec 64) Hashable!5095) Bool)

(assert (=> b!4416750 (= res!1824543 (allKeysSameHash!661 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4416751 () Bool)

(assert (=> b!4416751 (= e!2750239 e!2750242)))

(declare-fun res!1824549 () Bool)

(assert (=> b!4416751 (=> res!1824549 e!2750242)))

(assert (=> b!4416751 (= res!1824549 (not (= lt!1618602 lt!1618607)))))

(assert (=> b!4416751 (= lt!1618607 (addToMapMapFromBucket!355 lt!1618613 (+!1003 lt!1618603 lt!1618605)))))

(declare-fun b!4416752 () Bool)

(declare-fun res!1824553 () Bool)

(assert (=> b!4416752 (=> (not res!1824553) (not e!2750237))))

(declare-fun hash!2018 (Hashable!5095 K!10825) (_ BitVec 64))

(assert (=> b!4416752 (= res!1824553 (= (hash!2018 hashF!1220 key!3717) hash!366))))

(declare-fun b!4416753 () Bool)

(declare-fun res!1824552 () Bool)

(assert (=> b!4416753 (=> (not res!1824552) (not e!2750245))))

(declare-fun noDuplicateKeys!701 (List!49589) Bool)

(assert (=> b!4416753 (= res!1824552 (noDuplicateKeys!701 newBucket!194))))

(declare-fun b!4416754 () Bool)

(declare-fun res!1824551 () Bool)

(assert (=> b!4416754 (=> res!1824551 e!2750241)))

(declare-fun tail!7189 (List!49590) List!49590)

(assert (=> b!4416754 (= res!1824551 (not (= (tail!7189 (toList!3389 lt!1618611)) (t!356528 (toList!3389 lm!1616)))))))

(declare-fun b!4416755 () Bool)

(declare-fun res!1824550 () Bool)

(assert (=> b!4416755 (=> (not res!1824550) (not e!2750237))))

(declare-fun allKeysSameHashInMap!807 (ListLongMap!2039 Hashable!5095) Bool)

(assert (=> b!4416755 (= res!1824550 (allKeysSameHashInMap!807 lm!1616 hashF!1220))))

(declare-fun b!4416756 () Bool)

(declare-fun tp!1332667 () Bool)

(assert (=> b!4416756 (= e!2750238 tp!1332667)))

(declare-fun b!4416757 () Bool)

(declare-fun res!1824544 () Bool)

(assert (=> b!4416757 (=> (not res!1824544) (not e!2750245))))

(assert (=> b!4416757 (= res!1824544 (forall!9486 (toList!3389 lm!1616) lambda!152156))))

(assert (= (and start!430166 res!1824538) b!4416755))

(assert (= (and b!4416755 res!1824550) b!4416752))

(assert (= (and b!4416752 res!1824553) b!4416750))

(assert (= (and b!4416750 res!1824543) b!4416748))

(assert (= (and b!4416748 res!1824541) b!4416738))

(assert (= (and b!4416738 res!1824540) b!4416739))

(assert (= (and b!4416738 (not res!1824554)) b!4416749))

(assert (= (and b!4416738 res!1824555) b!4416753))

(assert (= (and b!4416753 res!1824552) b!4416757))

(assert (= (and b!4416757 res!1824544) b!4416736))

(assert (= (and b!4416736 (not res!1824542)) b!4416737))

(assert (= (and b!4416737 (not res!1824547)) b!4416742))

(assert (= (and b!4416742 (not res!1824545)) b!4416754))

(assert (= (and b!4416754 (not res!1824551)) b!4416746))

(assert (= (and b!4416746 (not res!1824557)) b!4416740))

(assert (= (and b!4416740 (not res!1824548)) b!4416751))

(assert (= (and b!4416751 (not res!1824549)) b!4416745))

(assert (= (and b!4416745 (not res!1824546)) b!4416741))

(assert (= (and b!4416741 (not res!1824539)) b!4416744))

(assert (= (and b!4416744 (not res!1824556)) b!4416747))

(assert (= (and start!430166 ((_ is Cons!49465) newBucket!194)) b!4416743))

(assert (= start!430166 b!4416756))

(declare-fun m!5093181 () Bool)

(assert (=> b!4416736 m!5093181))

(assert (=> b!4416736 m!5093181))

(declare-fun m!5093183 () Bool)

(assert (=> b!4416736 m!5093183))

(declare-fun m!5093185 () Bool)

(assert (=> b!4416736 m!5093185))

(declare-fun m!5093187 () Bool)

(assert (=> b!4416742 m!5093187))

(declare-fun m!5093189 () Bool)

(assert (=> b!4416738 m!5093189))

(declare-fun m!5093191 () Bool)

(assert (=> start!430166 m!5093191))

(declare-fun m!5093193 () Bool)

(assert (=> start!430166 m!5093193))

(declare-fun m!5093195 () Bool)

(assert (=> b!4416740 m!5093195))

(declare-fun m!5093197 () Bool)

(assert (=> b!4416755 m!5093197))

(declare-fun m!5093199 () Bool)

(assert (=> b!4416752 m!5093199))

(declare-fun m!5093201 () Bool)

(assert (=> b!4416754 m!5093201))

(declare-fun m!5093203 () Bool)

(assert (=> b!4416744 m!5093203))

(assert (=> b!4416744 m!5093203))

(declare-fun m!5093205 () Bool)

(assert (=> b!4416744 m!5093205))

(declare-fun m!5093207 () Bool)

(assert (=> b!4416745 m!5093207))

(declare-fun m!5093209 () Bool)

(assert (=> b!4416745 m!5093209))

(declare-fun m!5093211 () Bool)

(assert (=> b!4416745 m!5093211))

(assert (=> b!4416745 m!5093207))

(declare-fun m!5093213 () Bool)

(assert (=> b!4416745 m!5093213))

(declare-fun m!5093215 () Bool)

(assert (=> b!4416745 m!5093215))

(declare-fun m!5093217 () Bool)

(assert (=> b!4416751 m!5093217))

(assert (=> b!4416751 m!5093217))

(declare-fun m!5093219 () Bool)

(assert (=> b!4416751 m!5093219))

(declare-fun m!5093221 () Bool)

(assert (=> b!4416741 m!5093221))

(declare-fun m!5093223 () Bool)

(assert (=> b!4416748 m!5093223))

(declare-fun m!5093225 () Bool)

(assert (=> b!4416748 m!5093225))

(assert (=> b!4416739 m!5093195))

(assert (=> b!4416757 m!5093191))

(declare-fun m!5093227 () Bool)

(assert (=> b!4416750 m!5093227))

(declare-fun m!5093229 () Bool)

(assert (=> b!4416753 m!5093229))

(assert (=> b!4416747 m!5093181))

(declare-fun m!5093231 () Bool)

(assert (=> b!4416746 m!5093231))

(declare-fun m!5093233 () Bool)

(assert (=> b!4416746 m!5093233))

(declare-fun m!5093235 () Bool)

(assert (=> b!4416746 m!5093235))

(check-sat (not b!4416742) (not b!4416751) tp_is_empty!26051 (not b!4416756) tp_is_empty!26049 (not b!4416743) (not b!4416757) (not b!4416738) (not b!4416755) (not b!4416748) (not b!4416754) (not b!4416753) (not b!4416739) (not b!4416746) (not b!4416752) (not b!4416747) (not b!4416750) (not b!4416741) (not b!4416740) (not b!4416736) (not b!4416744) (not b!4416745) (not start!430166))
(check-sat)
