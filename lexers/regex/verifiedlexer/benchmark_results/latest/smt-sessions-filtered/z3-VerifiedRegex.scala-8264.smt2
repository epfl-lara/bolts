; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!429496 () Bool)

(assert start!429496)

(declare-fun b!4412454 () Bool)

(declare-fun res!1821567 () Bool)

(declare-fun e!2747848 () Bool)

(assert (=> b!4412454 (=> (not res!1821567) (not e!2747848))))

(declare-datatypes ((V!10971 0))(
  ( (V!10972 (val!16851 Int)) )
))
(declare-datatypes ((K!10725 0))(
  ( (K!10726 (val!16852 Int)) )
))
(declare-datatypes ((tuple2!49022 0))(
  ( (tuple2!49023 (_1!27805 K!10725) (_2!27805 V!10971)) )
))
(declare-datatypes ((List!49493 0))(
  ( (Nil!49369) (Cons!49369 (h!55014 tuple2!49022) (t!356431 List!49493)) )
))
(declare-datatypes ((tuple2!49024 0))(
  ( (tuple2!49025 (_1!27806 (_ BitVec 64)) (_2!27806 List!49493)) )
))
(declare-datatypes ((List!49494 0))(
  ( (Nil!49370) (Cons!49370 (h!55015 tuple2!49024) (t!356432 List!49494)) )
))
(declare-datatypes ((ListLongMap!1959 0))(
  ( (ListLongMap!1960 (toList!3309 List!49494)) )
))
(declare-fun lm!1616 () ListLongMap!1959)

(declare-fun key!3717 () K!10725)

(declare-datatypes ((ListMap!2553 0))(
  ( (ListMap!2554 (toList!3310 List!49493)) )
))
(declare-fun contains!11802 (ListMap!2553 K!10725) Bool)

(declare-fun extractMap!722 (List!49494) ListMap!2553)

(assert (=> b!4412454 (= res!1821567 (not (contains!11802 (extractMap!722 (toList!3309 lm!1616)) key!3717)))))

(declare-fun b!4412455 () Bool)

(declare-fun res!1821576 () Bool)

(declare-fun e!2747844 () Bool)

(assert (=> b!4412455 (=> res!1821576 e!2747844)))

(declare-fun lt!1614767 () Bool)

(declare-fun hash!366 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4412455 (= res!1821576 (or (not ((_ is Cons!49370) (toList!3309 lm!1616))) (not (= (_1!27806 (h!55015 (toList!3309 lm!1616))) hash!366)) lt!1614767))))

(declare-fun b!4412456 () Bool)

(declare-fun res!1821579 () Bool)

(assert (=> b!4412456 (=> (not res!1821579) (not e!2747848))))

(declare-datatypes ((Hashable!5055 0))(
  ( (HashableExt!5054 (__x!30758 Int)) )
))
(declare-fun hashF!1220 () Hashable!5055)

(declare-fun hash!1962 (Hashable!5055 K!10725) (_ BitVec 64))

(assert (=> b!4412456 (= res!1821579 (= (hash!1962 hashF!1220 key!3717) hash!366))))

(declare-fun b!4412457 () Bool)

(declare-fun res!1821570 () Bool)

(assert (=> b!4412457 (=> (not res!1821570) (not e!2747848))))

(declare-fun newBucket!194 () List!49493)

(declare-fun allKeysSameHash!621 (List!49493 (_ BitVec 64) Hashable!5055) Bool)

(assert (=> b!4412457 (= res!1821570 (allKeysSameHash!621 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4412458 () Bool)

(declare-fun res!1821571 () Bool)

(assert (=> b!4412458 (=> res!1821571 e!2747844)))

(declare-fun lt!1614768 () ListLongMap!1959)

(declare-fun tail!7149 (List!49494) List!49494)

(assert (=> b!4412458 (= res!1821571 (not (= (tail!7149 (toList!3309 lt!1614768)) (t!356432 (toList!3309 lm!1616)))))))

(declare-fun b!4412459 () Bool)

(declare-fun e!2747849 () Bool)

(declare-fun tp!1332265 () Bool)

(assert (=> b!4412459 (= e!2747849 tp!1332265)))

(declare-fun b!4412460 () Bool)

(declare-fun res!1821572 () Bool)

(assert (=> b!4412460 (=> (not res!1821572) (not e!2747848))))

(declare-fun allKeysSameHashInMap!767 (ListLongMap!1959 Hashable!5055) Bool)

(assert (=> b!4412460 (= res!1821572 (allKeysSameHashInMap!767 lm!1616 hashF!1220))))

(declare-fun b!4412461 () Bool)

(declare-fun e!2747850 () Bool)

(assert (=> b!4412461 (= e!2747848 e!2747850)))

(declare-fun res!1821568 () Bool)

(assert (=> b!4412461 (=> (not res!1821568) (not e!2747850))))

(declare-fun e!2747847 () Bool)

(assert (=> b!4412461 (= res!1821568 e!2747847)))

(declare-fun res!1821578 () Bool)

(assert (=> b!4412461 (=> res!1821578 e!2747847)))

(declare-fun e!2747846 () Bool)

(assert (=> b!4412461 (= res!1821578 e!2747846)))

(declare-fun res!1821573 () Bool)

(assert (=> b!4412461 (=> (not res!1821573) (not e!2747846))))

(assert (=> b!4412461 (= res!1821573 (not lt!1614767))))

(declare-fun lt!1614765 () Bool)

(assert (=> b!4412461 (= lt!1614767 (not lt!1614765))))

(declare-fun contains!11803 (ListLongMap!1959 (_ BitVec 64)) Bool)

(assert (=> b!4412461 (= lt!1614765 (contains!11803 lm!1616 hash!366))))

(declare-fun b!4412462 () Bool)

(declare-fun newValue!93 () V!10971)

(assert (=> b!4412462 (= e!2747847 (and (not lt!1614765) (= newBucket!194 (Cons!49369 (tuple2!49023 key!3717 newValue!93) Nil!49369))))))

(declare-fun b!4412463 () Bool)

(declare-fun res!1821580 () Bool)

(assert (=> b!4412463 (=> (not res!1821580) (not e!2747850))))

(declare-fun lambda!150981 () Int)

(declare-fun forall!9431 (List!49494 Int) Bool)

(assert (=> b!4412463 (= res!1821580 (forall!9431 (toList!3309 lm!1616) lambda!150981))))

(declare-fun b!4412464 () Bool)

(assert (=> b!4412464 (= e!2747850 (not e!2747844))))

(declare-fun res!1821575 () Bool)

(assert (=> b!4412464 (=> res!1821575 e!2747844)))

(assert (=> b!4412464 (= res!1821575 (not (forall!9431 (toList!3309 lt!1614768) lambda!150981)))))

(assert (=> b!4412464 (forall!9431 (toList!3309 lt!1614768) lambda!150981)))

(declare-fun lt!1614766 () tuple2!49024)

(declare-fun +!930 (ListLongMap!1959 tuple2!49024) ListLongMap!1959)

(assert (=> b!4412464 (= lt!1614768 (+!930 lm!1616 lt!1614766))))

(assert (=> b!4412464 (= lt!1614766 (tuple2!49025 hash!366 newBucket!194))))

(declare-datatypes ((Unit!80507 0))(
  ( (Unit!80508) )
))
(declare-fun lt!1614764 () Unit!80507)

(declare-fun addValidProp!305 (ListLongMap!1959 Int (_ BitVec 64) List!49493) Unit!80507)

(assert (=> b!4412464 (= lt!1614764 (addValidProp!305 lm!1616 lambda!150981 hash!366 newBucket!194))))

(declare-fun b!4412465 () Bool)

(assert (=> b!4412465 (= e!2747844 (forall!9431 (toList!3309 lt!1614768) lambda!150981))))

(declare-fun b!4412466 () Bool)

(declare-fun apply!11513 (ListLongMap!1959 (_ BitVec 64)) List!49493)

(assert (=> b!4412466 (= e!2747846 (= newBucket!194 (Cons!49369 (tuple2!49023 key!3717 newValue!93) (apply!11513 lm!1616 hash!366))))))

(declare-fun tp_is_empty!25891 () Bool)

(declare-fun e!2747845 () Bool)

(declare-fun tp_is_empty!25889 () Bool)

(declare-fun b!4412467 () Bool)

(declare-fun tp!1332266 () Bool)

(assert (=> b!4412467 (= e!2747845 (and tp_is_empty!25891 tp_is_empty!25889 tp!1332266))))

(declare-fun b!4412468 () Bool)

(declare-fun res!1821574 () Bool)

(assert (=> b!4412468 (=> (not res!1821574) (not e!2747850))))

(declare-fun noDuplicateKeys!661 (List!49493) Bool)

(assert (=> b!4412468 (= res!1821574 (noDuplicateKeys!661 newBucket!194))))

(declare-fun res!1821569 () Bool)

(assert (=> start!429496 (=> (not res!1821569) (not e!2747848))))

(assert (=> start!429496 (= res!1821569 (forall!9431 (toList!3309 lm!1616) lambda!150981))))

(assert (=> start!429496 e!2747848))

(assert (=> start!429496 tp_is_empty!25889))

(assert (=> start!429496 tp_is_empty!25891))

(assert (=> start!429496 e!2747845))

(declare-fun inv!64911 (ListLongMap!1959) Bool)

(assert (=> start!429496 (and (inv!64911 lm!1616) e!2747849)))

(assert (=> start!429496 true))

(declare-fun b!4412469 () Bool)

(declare-fun res!1821577 () Bool)

(assert (=> b!4412469 (=> res!1821577 e!2747844)))

(declare-fun head!9140 (List!49494) tuple2!49024)

(assert (=> b!4412469 (= res!1821577 (not (= (head!9140 (toList!3309 lt!1614768)) lt!1614766)))))

(assert (= (and start!429496 res!1821569) b!4412460))

(assert (= (and b!4412460 res!1821572) b!4412456))

(assert (= (and b!4412456 res!1821579) b!4412457))

(assert (= (and b!4412457 res!1821570) b!4412454))

(assert (= (and b!4412454 res!1821567) b!4412461))

(assert (= (and b!4412461 res!1821573) b!4412466))

(assert (= (and b!4412461 (not res!1821578)) b!4412462))

(assert (= (and b!4412461 res!1821568) b!4412468))

(assert (= (and b!4412468 res!1821574) b!4412463))

(assert (= (and b!4412463 res!1821580) b!4412464))

(assert (= (and b!4412464 (not res!1821575)) b!4412455))

(assert (= (and b!4412455 (not res!1821576)) b!4412469))

(assert (= (and b!4412469 (not res!1821577)) b!4412458))

(assert (= (and b!4412458 (not res!1821571)) b!4412465))

(assert (= (and start!429496 ((_ is Cons!49369) newBucket!194)) b!4412467))

(assert (= start!429496 b!4412459))

(declare-fun m!5088137 () Bool)

(assert (=> b!4412464 m!5088137))

(assert (=> b!4412464 m!5088137))

(declare-fun m!5088139 () Bool)

(assert (=> b!4412464 m!5088139))

(declare-fun m!5088141 () Bool)

(assert (=> b!4412464 m!5088141))

(declare-fun m!5088143 () Bool)

(assert (=> b!4412458 m!5088143))

(declare-fun m!5088145 () Bool)

(assert (=> b!4412463 m!5088145))

(declare-fun m!5088147 () Bool)

(assert (=> b!4412460 m!5088147))

(declare-fun m!5088149 () Bool)

(assert (=> b!4412454 m!5088149))

(assert (=> b!4412454 m!5088149))

(declare-fun m!5088151 () Bool)

(assert (=> b!4412454 m!5088151))

(assert (=> b!4412465 m!5088137))

(declare-fun m!5088153 () Bool)

(assert (=> b!4412468 m!5088153))

(declare-fun m!5088155 () Bool)

(assert (=> b!4412456 m!5088155))

(declare-fun m!5088157 () Bool)

(assert (=> b!4412457 m!5088157))

(assert (=> start!429496 m!5088145))

(declare-fun m!5088159 () Bool)

(assert (=> start!429496 m!5088159))

(declare-fun m!5088161 () Bool)

(assert (=> b!4412469 m!5088161))

(declare-fun m!5088163 () Bool)

(assert (=> b!4412466 m!5088163))

(declare-fun m!5088165 () Bool)

(assert (=> b!4412461 m!5088165))

(check-sat (not b!4412466) tp_is_empty!25891 (not b!4412459) (not b!4412464) (not b!4412454) (not b!4412467) (not b!4412460) (not b!4412461) (not b!4412456) (not b!4412463) (not b!4412458) (not b!4412469) (not b!4412457) (not b!4412465) (not start!429496) (not b!4412468) tp_is_empty!25889)
(check-sat)
