; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!484780 () Bool)

(assert start!484780)

(declare-fun b!4746856 () Bool)

(declare-fun res!2012062 () Bool)

(declare-fun e!2960877 () Bool)

(assert (=> b!4746856 (=> (not res!2012062) (not e!2960877))))

(declare-datatypes ((K!14350 0))(
  ( (K!14351 (val!19751 Int)) )
))
(declare-datatypes ((V!14596 0))(
  ( (V!14597 (val!19752 Int)) )
))
(declare-datatypes ((tuple2!54714 0))(
  ( (tuple2!54715 (_1!30651 K!14350) (_2!30651 V!14596)) )
))
(declare-datatypes ((List!53133 0))(
  ( (Nil!53009) (Cons!53009 (h!59404 tuple2!54714) (t!360441 List!53133)) )
))
(declare-datatypes ((tuple2!54716 0))(
  ( (tuple2!54717 (_1!30652 (_ BitVec 64)) (_2!30652 List!53133)) )
))
(declare-datatypes ((List!53134 0))(
  ( (Nil!53010) (Cons!53010 (h!59405 tuple2!54716) (t!360442 List!53134)) )
))
(declare-datatypes ((ListLongMap!4579 0))(
  ( (ListLongMap!4580 (toList!6049 List!53134)) )
))
(declare-fun lm!2023 () ListLongMap!4579)

(declare-datatypes ((Hashable!6449 0))(
  ( (HashableExt!6448 (__x!32152 Int)) )
))
(declare-fun hashF!1323 () Hashable!6449)

(declare-fun allKeysSameHashInMap!1994 (ListLongMap!4579 Hashable!6449) Bool)

(assert (=> b!4746856 (= res!2012062 (allKeysSameHashInMap!1994 lm!2023 hashF!1323))))

(declare-fun tp_is_empty!31613 () Bool)

(declare-fun e!2960871 () Bool)

(declare-fun tp!1349603 () Bool)

(declare-fun tp_is_empty!31615 () Bool)

(declare-fun b!4746857 () Bool)

(assert (=> b!4746857 (= e!2960871 (and tp_is_empty!31613 tp_is_empty!31615 tp!1349603))))

(declare-fun b!4746858 () Bool)

(declare-fun res!2012064 () Bool)

(declare-fun e!2960878 () Bool)

(assert (=> b!4746858 (=> (not res!2012064) (not e!2960878))))

(declare-fun oldBucket!34 () List!53133)

(declare-fun noDuplicateKeys!2080 (List!53133) Bool)

(assert (=> b!4746858 (= res!2012064 (noDuplicateKeys!2080 oldBucket!34))))

(declare-fun res!2012059 () Bool)

(assert (=> start!484780 (=> (not res!2012059) (not e!2960878))))

(declare-fun lambda!220458 () Int)

(declare-fun forall!11723 (List!53134 Int) Bool)

(assert (=> start!484780 (= res!2012059 (forall!11723 (toList!6049 lm!2023) lambda!220458))))

(assert (=> start!484780 e!2960878))

(declare-fun e!2960874 () Bool)

(declare-fun inv!68224 (ListLongMap!4579) Bool)

(assert (=> start!484780 (and (inv!68224 lm!2023) e!2960874)))

(assert (=> start!484780 tp_is_empty!31613))

(assert (=> start!484780 e!2960871))

(assert (=> start!484780 true))

(declare-fun e!2960875 () Bool)

(assert (=> start!484780 e!2960875))

(declare-fun b!4746859 () Bool)

(declare-fun e!2960876 () Bool)

(assert (=> b!4746859 (= e!2960877 e!2960876)))

(declare-fun res!2012067 () Bool)

(assert (=> b!4746859 (=> (not res!2012067) (not e!2960876))))

(declare-fun lt!1909121 () tuple2!54716)

(declare-fun head!10352 (List!53134) tuple2!54716)

(assert (=> b!4746859 (= res!2012067 (= (head!10352 (toList!6049 lm!2023)) lt!1909121))))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4746859 (= lt!1909121 (tuple2!54717 hash!405 oldBucket!34))))

(declare-fun b!4746860 () Bool)

(declare-fun tp!1349602 () Bool)

(assert (=> b!4746860 (= e!2960874 tp!1349602)))

(declare-fun b!4746861 () Bool)

(declare-fun res!2012058 () Bool)

(assert (=> b!4746861 (=> (not res!2012058) (not e!2960877))))

(declare-fun key!4653 () K!14350)

(declare-fun hash!4500 (Hashable!6449 K!14350) (_ BitVec 64))

(assert (=> b!4746861 (= res!2012058 (= (hash!4500 hashF!1323 key!4653) hash!405))))

(declare-fun b!4746862 () Bool)

(declare-fun e!2960872 () Bool)

(assert (=> b!4746862 (= e!2960876 (not e!2960872))))

(declare-fun res!2012066 () Bool)

(assert (=> b!4746862 (=> res!2012066 e!2960872)))

(get-info :version)

(assert (=> b!4746862 (= res!2012066 (or (and ((_ is Cons!53009) oldBucket!34) (= (_1!30651 (h!59404 oldBucket!34)) key!4653)) (and ((_ is Cons!53009) oldBucket!34) (not (= (_1!30651 (h!59404 oldBucket!34)) key!4653))) ((_ is Nil!53009) oldBucket!34)))))

(declare-fun e!2960873 () Bool)

(assert (=> b!4746862 e!2960873))

(declare-fun res!2012063 () Bool)

(assert (=> b!4746862 (=> (not res!2012063) (not e!2960873))))

(declare-fun tail!9162 (ListLongMap!4579) ListLongMap!4579)

(assert (=> b!4746862 (= res!2012063 (= (t!360442 (toList!6049 lm!2023)) (toList!6049 (tail!9162 lm!2023))))))

(declare-fun b!4746863 () Bool)

(declare-fun res!2012057 () Bool)

(assert (=> b!4746863 (=> (not res!2012057) (not e!2960876))))

(assert (=> b!4746863 (= res!2012057 ((_ is Cons!53010) (toList!6049 lm!2023)))))

(declare-fun b!4746864 () Bool)

(declare-datatypes ((ListMap!5413 0))(
  ( (ListMap!5414 (toList!6050 List!53133)) )
))
(declare-fun lt!1909123 () ListMap!5413)

(declare-fun addToMapMapFromBucket!1510 (List!53133 ListMap!5413) ListMap!5413)

(declare-fun extractMap!2106 (List!53134) ListMap!5413)

(assert (=> b!4746864 (= e!2960873 (= lt!1909123 (addToMapMapFromBucket!1510 (_2!30652 (h!59405 (toList!6049 lm!2023))) (extractMap!2106 (t!360442 (toList!6049 lm!2023))))))))

(declare-fun b!4746865 () Bool)

(declare-fun res!2012069 () Bool)

(assert (=> b!4746865 (=> (not res!2012069) (not e!2960878))))

(declare-fun allKeysSameHash!1906 (List!53133 (_ BitVec 64) Hashable!6449) Bool)

(assert (=> b!4746865 (= res!2012069 (allKeysSameHash!1906 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4746866 () Bool)

(declare-fun res!2012061 () Bool)

(assert (=> b!4746866 (=> (not res!2012061) (not e!2960878))))

(declare-fun newBucket!218 () List!53133)

(assert (=> b!4746866 (= res!2012061 (noDuplicateKeys!2080 newBucket!218))))

(declare-fun b!4746867 () Bool)

(declare-fun res!2012068 () Bool)

(assert (=> b!4746867 (=> (not res!2012068) (not e!2960878))))

(declare-fun removePairForKey!1675 (List!53133 K!14350) List!53133)

(assert (=> b!4746867 (= res!2012068 (= (removePairForKey!1675 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4746868 () Bool)

(declare-fun lt!1909122 () List!53134)

(declare-fun eq!1167 (ListMap!5413 ListMap!5413) Bool)

(declare-fun -!760 (ListMap!5413 K!14350) ListMap!5413)

(assert (=> b!4746868 (= e!2960872 (eq!1167 (extractMap!2106 (Cons!53010 (tuple2!54717 hash!405 newBucket!218) lt!1909122)) (-!760 (extractMap!2106 (Cons!53010 lt!1909121 lt!1909122)) key!4653)))))

(declare-fun tail!9163 (List!53134) List!53134)

(assert (=> b!4746868 (= lt!1909122 (tail!9163 (toList!6049 lm!2023)))))

(declare-fun b!4746869 () Bool)

(declare-fun res!2012060 () Bool)

(assert (=> b!4746869 (=> (not res!2012060) (not e!2960877))))

(assert (=> b!4746869 (= res!2012060 (allKeysSameHash!1906 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4746870 () Bool)

(assert (=> b!4746870 (= e!2960878 e!2960877)))

(declare-fun res!2012065 () Bool)

(assert (=> b!4746870 (=> (not res!2012065) (not e!2960877))))

(declare-fun contains!16434 (ListMap!5413 K!14350) Bool)

(assert (=> b!4746870 (= res!2012065 (contains!16434 lt!1909123 key!4653))))

(assert (=> b!4746870 (= lt!1909123 (extractMap!2106 (toList!6049 lm!2023)))))

(declare-fun b!4746871 () Bool)

(declare-fun tp!1349601 () Bool)

(assert (=> b!4746871 (= e!2960875 (and tp_is_empty!31613 tp_is_empty!31615 tp!1349601))))

(assert (= (and start!484780 res!2012059) b!4746858))

(assert (= (and b!4746858 res!2012064) b!4746866))

(assert (= (and b!4746866 res!2012061) b!4746867))

(assert (= (and b!4746867 res!2012068) b!4746865))

(assert (= (and b!4746865 res!2012069) b!4746870))

(assert (= (and b!4746870 res!2012065) b!4746861))

(assert (= (and b!4746861 res!2012058) b!4746869))

(assert (= (and b!4746869 res!2012060) b!4746856))

(assert (= (and b!4746856 res!2012062) b!4746859))

(assert (= (and b!4746859 res!2012067) b!4746863))

(assert (= (and b!4746863 res!2012057) b!4746862))

(assert (= (and b!4746862 res!2012063) b!4746864))

(assert (= (and b!4746862 (not res!2012066)) b!4746868))

(assert (= start!484780 b!4746860))

(assert (= (and start!484780 ((_ is Cons!53009) oldBucket!34)) b!4746857))

(assert (= (and start!484780 ((_ is Cons!53009) newBucket!218)) b!4746871))

(declare-fun m!5704111 () Bool)

(assert (=> b!4746864 m!5704111))

(assert (=> b!4746864 m!5704111))

(declare-fun m!5704113 () Bool)

(assert (=> b!4746864 m!5704113))

(declare-fun m!5704115 () Bool)

(assert (=> start!484780 m!5704115))

(declare-fun m!5704117 () Bool)

(assert (=> start!484780 m!5704117))

(declare-fun m!5704119 () Bool)

(assert (=> b!4746856 m!5704119))

(declare-fun m!5704121 () Bool)

(assert (=> b!4746867 m!5704121))

(declare-fun m!5704123 () Bool)

(assert (=> b!4746858 m!5704123))

(declare-fun m!5704125 () Bool)

(assert (=> b!4746870 m!5704125))

(declare-fun m!5704127 () Bool)

(assert (=> b!4746870 m!5704127))

(declare-fun m!5704129 () Bool)

(assert (=> b!4746869 m!5704129))

(declare-fun m!5704131 () Bool)

(assert (=> b!4746866 m!5704131))

(declare-fun m!5704133 () Bool)

(assert (=> b!4746868 m!5704133))

(declare-fun m!5704135 () Bool)

(assert (=> b!4746868 m!5704135))

(declare-fun m!5704137 () Bool)

(assert (=> b!4746868 m!5704137))

(declare-fun m!5704139 () Bool)

(assert (=> b!4746868 m!5704139))

(assert (=> b!4746868 m!5704133))

(assert (=> b!4746868 m!5704137))

(declare-fun m!5704141 () Bool)

(assert (=> b!4746868 m!5704141))

(assert (=> b!4746868 m!5704135))

(declare-fun m!5704143 () Bool)

(assert (=> b!4746861 m!5704143))

(declare-fun m!5704145 () Bool)

(assert (=> b!4746859 m!5704145))

(declare-fun m!5704147 () Bool)

(assert (=> b!4746865 m!5704147))

(declare-fun m!5704149 () Bool)

(assert (=> b!4746862 m!5704149))

(check-sat tp_is_empty!31613 (not b!4746867) (not b!4746857) (not b!4746862) (not b!4746871) (not b!4746866) (not b!4746858) (not start!484780) tp_is_empty!31615 (not b!4746868) (not b!4746870) (not b!4746856) (not b!4746865) (not b!4746869) (not b!4746859) (not b!4746861) (not b!4746860) (not b!4746864))
(check-sat)
