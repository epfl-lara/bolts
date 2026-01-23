; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437586 () Bool)

(assert start!437586)

(declare-fun b!4461794 () Bool)

(declare-fun e!2778342 () Bool)

(declare-fun e!2778346 () Bool)

(assert (=> b!4461794 (= e!2778342 (not e!2778346))))

(declare-fun res!1850415 () Bool)

(assert (=> b!4461794 (=> res!1850415 e!2778346)))

(declare-datatypes ((K!11628 0))(
  ( (K!11629 (val!17573 Int)) )
))
(declare-datatypes ((V!11874 0))(
  ( (V!11875 (val!17574 Int)) )
))
(declare-datatypes ((tuple2!50414 0))(
  ( (tuple2!50415 (_1!28501 K!11628) (_2!28501 V!11874)) )
))
(declare-datatypes ((List!50334 0))(
  ( (Nil!50210) (Cons!50210 (h!55957 tuple2!50414) (t!357284 List!50334)) )
))
(declare-fun lt!1652758 () List!50334)

(declare-fun key!3287 () K!11628)

(declare-fun newBucket!178 () List!50334)

(declare-fun removePairForKey!622 (List!50334 K!11628) List!50334)

(assert (=> b!4461794 (= res!1850415 (not (= newBucket!178 (removePairForKey!622 lt!1652758 key!3287))))))

(declare-datatypes ((Unit!86871 0))(
  ( (Unit!86872) )
))
(declare-fun lt!1652755 () Unit!86871)

(declare-datatypes ((tuple2!50416 0))(
  ( (tuple2!50417 (_1!28502 (_ BitVec 64)) (_2!28502 List!50334)) )
))
(declare-fun lt!1652757 () tuple2!50416)

(declare-fun lambda!161932 () Int)

(declare-datatypes ((List!50335 0))(
  ( (Nil!50211) (Cons!50211 (h!55958 tuple2!50416) (t!357285 List!50335)) )
))
(declare-datatypes ((ListLongMap!2629 0))(
  ( (ListLongMap!2630 (toList!3997 List!50335)) )
))
(declare-fun lm!1477 () ListLongMap!2629)

(declare-fun forallContained!2212 (List!50335 Int tuple2!50416) Unit!86871)

(assert (=> b!4461794 (= lt!1652755 (forallContained!2212 (toList!3997 lm!1477) lambda!161932 lt!1652757))))

(declare-fun contains!12722 (List!50335 tuple2!50416) Bool)

(assert (=> b!4461794 (contains!12722 (toList!3997 lm!1477) lt!1652757)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4461794 (= lt!1652757 (tuple2!50417 hash!344 lt!1652758))))

(declare-fun lt!1652753 () Unit!86871)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!507 (List!50335 (_ BitVec 64) List!50334) Unit!86871)

(assert (=> b!4461794 (= lt!1652753 (lemmaGetValueByKeyImpliesContainsTuple!507 (toList!3997 lm!1477) hash!344 lt!1652758))))

(declare-fun apply!11732 (ListLongMap!2629 (_ BitVec 64)) List!50334)

(assert (=> b!4461794 (= lt!1652758 (apply!11732 lm!1477 hash!344))))

(declare-fun lt!1652754 () (_ BitVec 64))

(declare-fun contains!12723 (ListLongMap!2629 (_ BitVec 64)) Bool)

(assert (=> b!4461794 (contains!12723 lm!1477 lt!1652754)))

(declare-datatypes ((Hashable!5390 0))(
  ( (HashableExt!5389 (__x!31093 Int)) )
))
(declare-fun hashF!1107 () Hashable!5390)

(declare-fun lt!1652756 () Unit!86871)

(declare-fun lemmaInGenMapThenLongMapContainsHash!69 (ListLongMap!2629 K!11628 Hashable!5390) Unit!86871)

(assert (=> b!4461794 (= lt!1652756 (lemmaInGenMapThenLongMapContainsHash!69 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4461795 () Bool)

(declare-fun tp_is_empty!27259 () Bool)

(declare-fun tp!1335874 () Bool)

(declare-fun tp_is_empty!27257 () Bool)

(declare-fun e!2778345 () Bool)

(assert (=> b!4461795 (= e!2778345 (and tp_is_empty!27257 tp_is_empty!27259 tp!1335874))))

(declare-fun b!4461796 () Bool)

(declare-fun e!2778343 () Bool)

(declare-fun tp!1335875 () Bool)

(assert (=> b!4461796 (= e!2778343 tp!1335875)))

(declare-fun b!4461797 () Bool)

(declare-fun res!1850413 () Bool)

(assert (=> b!4461797 (=> (not res!1850413) (not e!2778342))))

(declare-fun allKeysSameHash!849 (List!50334 (_ BitVec 64) Hashable!5390) Bool)

(assert (=> b!4461797 (= res!1850413 (allKeysSameHash!849 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4461798 () Bool)

(declare-fun e!2778344 () Bool)

(assert (=> b!4461798 (= e!2778344 e!2778342)))

(declare-fun res!1850414 () Bool)

(assert (=> b!4461798 (=> (not res!1850414) (not e!2778342))))

(assert (=> b!4461798 (= res!1850414 (= lt!1652754 hash!344))))

(declare-fun hash!2378 (Hashable!5390 K!11628) (_ BitVec 64))

(assert (=> b!4461798 (= lt!1652754 (hash!2378 hashF!1107 key!3287))))

(declare-fun b!4461799 () Bool)

(declare-fun res!1850416 () Bool)

(assert (=> b!4461799 (=> (not res!1850416) (not e!2778344))))

(declare-fun allKeysSameHashInMap!1102 (ListLongMap!2629 Hashable!5390) Bool)

(assert (=> b!4461799 (= res!1850416 (allKeysSameHashInMap!1102 lm!1477 hashF!1107))))

(declare-fun res!1850417 () Bool)

(assert (=> start!437586 (=> (not res!1850417) (not e!2778344))))

(declare-fun forall!9937 (List!50335 Int) Bool)

(assert (=> start!437586 (= res!1850417 (forall!9937 (toList!3997 lm!1477) lambda!161932))))

(assert (=> start!437586 e!2778344))

(assert (=> start!437586 true))

(declare-fun inv!65813 (ListLongMap!2629) Bool)

(assert (=> start!437586 (and (inv!65813 lm!1477) e!2778343)))

(assert (=> start!437586 tp_is_empty!27257))

(assert (=> start!437586 e!2778345))

(declare-fun b!4461800 () Bool)

(declare-fun res!1850412 () Bool)

(assert (=> b!4461800 (=> (not res!1850412) (not e!2778344))))

(declare-datatypes ((ListMap!3259 0))(
  ( (ListMap!3260 (toList!3998 List!50334)) )
))
(declare-fun contains!12724 (ListMap!3259 K!11628) Bool)

(declare-fun extractMap!1051 (List!50335) ListMap!3259)

(assert (=> b!4461800 (= res!1850412 (contains!12724 (extractMap!1051 (toList!3997 lm!1477)) key!3287))))

(declare-fun b!4461801 () Bool)

(assert (=> b!4461801 (= e!2778346 true)))

(declare-fun lt!1652759 () Bool)

(declare-fun noDuplicateKeys!995 (List!50334) Bool)

(assert (=> b!4461801 (= lt!1652759 (noDuplicateKeys!995 newBucket!178))))

(assert (= (and start!437586 res!1850417) b!4461799))

(assert (= (and b!4461799 res!1850416) b!4461800))

(assert (= (and b!4461800 res!1850412) b!4461798))

(assert (= (and b!4461798 res!1850414) b!4461797))

(assert (= (and b!4461797 res!1850413) b!4461794))

(assert (= (and b!4461794 (not res!1850415)) b!4461801))

(assert (= start!437586 b!4461796))

(assert (= (and start!437586 (is-Cons!50210 newBucket!178)) b!4461795))

(declare-fun m!5164797 () Bool)

(assert (=> b!4461799 m!5164797))

(declare-fun m!5164799 () Bool)

(assert (=> b!4461801 m!5164799))

(declare-fun m!5164801 () Bool)

(assert (=> start!437586 m!5164801))

(declare-fun m!5164803 () Bool)

(assert (=> start!437586 m!5164803))

(declare-fun m!5164805 () Bool)

(assert (=> b!4461797 m!5164805))

(declare-fun m!5164807 () Bool)

(assert (=> b!4461798 m!5164807))

(declare-fun m!5164809 () Bool)

(assert (=> b!4461800 m!5164809))

(assert (=> b!4461800 m!5164809))

(declare-fun m!5164811 () Bool)

(assert (=> b!4461800 m!5164811))

(declare-fun m!5164813 () Bool)

(assert (=> b!4461794 m!5164813))

(declare-fun m!5164815 () Bool)

(assert (=> b!4461794 m!5164815))

(declare-fun m!5164817 () Bool)

(assert (=> b!4461794 m!5164817))

(declare-fun m!5164819 () Bool)

(assert (=> b!4461794 m!5164819))

(declare-fun m!5164821 () Bool)

(assert (=> b!4461794 m!5164821))

(declare-fun m!5164823 () Bool)

(assert (=> b!4461794 m!5164823))

(declare-fun m!5164825 () Bool)

(assert (=> b!4461794 m!5164825))

(push 1)

(assert (not b!4461794))

(assert (not b!4461797))

(assert (not b!4461798))

(assert (not b!4461799))

(assert (not b!4461800))

(assert tp_is_empty!27259)

(assert (not b!4461801))

(assert (not b!4461795))

(assert tp_is_empty!27257)

(assert (not start!437586))

(assert (not b!4461796))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

