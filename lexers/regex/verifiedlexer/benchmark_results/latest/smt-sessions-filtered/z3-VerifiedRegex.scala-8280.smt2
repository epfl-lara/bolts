; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!430006 () Bool)

(assert start!430006)

(declare-fun b!4415742 () Bool)

(declare-fun res!1823852 () Bool)

(declare-fun e!2749671 () Bool)

(assert (=> b!4415742 (=> res!1823852 e!2749671)))

(declare-datatypes ((V!11051 0))(
  ( (V!11052 (val!16915 Int)) )
))
(declare-datatypes ((K!10805 0))(
  ( (K!10806 (val!16916 Int)) )
))
(declare-datatypes ((tuple2!49150 0))(
  ( (tuple2!49151 (_1!27869 K!10805) (_2!27869 V!11051)) )
))
(declare-datatypes ((List!49569 0))(
  ( (Nil!49445) (Cons!49445 (h!55104 tuple2!49150) (t!356507 List!49569)) )
))
(declare-datatypes ((tuple2!49152 0))(
  ( (tuple2!49153 (_1!27870 (_ BitVec 64)) (_2!27870 List!49569)) )
))
(declare-datatypes ((List!49570 0))(
  ( (Nil!49446) (Cons!49446 (h!55105 tuple2!49152) (t!356508 List!49570)) )
))
(declare-datatypes ((ListLongMap!2023 0))(
  ( (ListLongMap!2024 (toList!3373 List!49570)) )
))
(declare-fun lt!1617565 () ListLongMap!2023)

(declare-fun lt!1617575 () tuple2!49152)

(declare-fun head!9172 (List!49570) tuple2!49152)

(assert (=> b!4415742 (= res!1823852 (not (= (head!9172 (toList!3373 lt!1617565)) lt!1617575)))))

(declare-fun b!4415743 () Bool)

(declare-fun e!2749669 () Bool)

(declare-fun tp!1332584 () Bool)

(assert (=> b!4415743 (= e!2749669 tp!1332584)))

(declare-fun b!4415744 () Bool)

(declare-fun e!2749665 () Bool)

(declare-fun tp!1332583 () Bool)

(declare-fun tp_is_empty!26017 () Bool)

(declare-fun tp_is_empty!26019 () Bool)

(assert (=> b!4415744 (= e!2749665 (and tp_is_empty!26019 tp_is_empty!26017 tp!1332583))))

(declare-fun b!4415745 () Bool)

(declare-fun e!2749670 () Bool)

(declare-fun e!2749674 () Bool)

(assert (=> b!4415745 (= e!2749670 e!2749674)))

(declare-fun res!1823856 () Bool)

(assert (=> b!4415745 (=> (not res!1823856) (not e!2749674))))

(declare-fun e!2749667 () Bool)

(assert (=> b!4415745 (= res!1823856 e!2749667)))

(declare-fun res!1823846 () Bool)

(assert (=> b!4415745 (=> res!1823846 e!2749667)))

(declare-fun e!2749664 () Bool)

(assert (=> b!4415745 (= res!1823846 e!2749664)))

(declare-fun res!1823854 () Bool)

(assert (=> b!4415745 (=> (not res!1823854) (not e!2749664))))

(declare-fun lt!1617571 () Bool)

(assert (=> b!4415745 (= res!1823854 (not lt!1617571))))

(declare-fun lt!1617574 () Bool)

(assert (=> b!4415745 (= lt!1617571 (not lt!1617574))))

(declare-fun lm!1616 () ListLongMap!2023)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!11899 (ListLongMap!2023 (_ BitVec 64)) Bool)

(assert (=> b!4415745 (= lt!1617574 (contains!11899 lm!1616 hash!366))))

(declare-fun b!4415746 () Bool)

(declare-fun e!2749673 () Bool)

(declare-fun e!2749666 () Bool)

(assert (=> b!4415746 (= e!2749673 e!2749666)))

(declare-fun res!1823845 () Bool)

(assert (=> b!4415746 (=> res!1823845 e!2749666)))

(declare-fun lt!1617568 () List!49569)

(declare-fun newBucket!194 () List!49569)

(declare-fun lt!1617573 () tuple2!49150)

(assert (=> b!4415746 (= res!1823845 (not (= newBucket!194 (Cons!49445 lt!1617573 lt!1617568))))))

(declare-fun apply!11545 (ListLongMap!2023 (_ BitVec 64)) List!49569)

(assert (=> b!4415746 (= lt!1617568 (apply!11545 lm!1616 hash!366))))

(declare-fun key!3717 () K!10805)

(declare-fun newValue!93 () V!11051)

(assert (=> b!4415746 (= lt!1617573 (tuple2!49151 key!3717 newValue!93))))

(declare-fun b!4415747 () Bool)

(assert (=> b!4415747 (= e!2749667 (and (not lt!1617574) (= newBucket!194 (Cons!49445 (tuple2!49151 key!3717 newValue!93) Nil!49445))))))

(declare-fun b!4415748 () Bool)

(declare-fun e!2749668 () Bool)

(declare-fun e!2749672 () Bool)

(assert (=> b!4415748 (= e!2749668 e!2749672)))

(declare-fun res!1823847 () Bool)

(assert (=> b!4415748 (=> res!1823847 e!2749672)))

(declare-datatypes ((ListMap!2617 0))(
  ( (ListMap!2618 (toList!3374 List!49569)) )
))
(declare-fun lt!1617570 () ListMap!2617)

(declare-fun lt!1617576 () ListMap!2617)

(declare-fun eq!369 (ListMap!2617 ListMap!2617) Bool)

(assert (=> b!4415748 (= res!1823847 (not (eq!369 lt!1617570 lt!1617576)))))

(declare-fun lt!1617577 () ListMap!2617)

(assert (=> b!4415748 (eq!369 lt!1617577 lt!1617576)))

(declare-fun lt!1617569 () ListMap!2617)

(declare-fun +!986 (ListMap!2617 tuple2!49150) ListMap!2617)

(declare-fun addToMapMapFromBucket!347 (List!49569 ListMap!2617) ListMap!2617)

(assert (=> b!4415748 (= lt!1617576 (+!986 (addToMapMapFromBucket!347 lt!1617568 lt!1617569) lt!1617573))))

(declare-datatypes ((Unit!80827 0))(
  ( (Unit!80828) )
))
(declare-fun lt!1617567 () Unit!80827)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!164 (ListMap!2617 K!10805 V!11051 List!49569) Unit!80827)

(assert (=> b!4415748 (= lt!1617567 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!164 lt!1617569 key!3717 newValue!93 lt!1617568))))

(declare-fun b!4415749 () Bool)

(declare-fun res!1823850 () Bool)

(assert (=> b!4415749 (=> res!1823850 e!2749671)))

(declare-fun tail!7181 (List!49570) List!49570)

(assert (=> b!4415749 (= res!1823850 (not (= (tail!7181 (toList!3373 lt!1617565)) (t!356508 (toList!3373 lm!1616)))))))

(declare-fun b!4415750 () Bool)

(assert (=> b!4415750 (= e!2749671 e!2749673)))

(declare-fun res!1823861 () Bool)

(assert (=> b!4415750 (=> res!1823861 e!2749673)))

(declare-fun lt!1617566 () ListMap!2617)

(assert (=> b!4415750 (= res!1823861 (not (= lt!1617566 lt!1617570)))))

(assert (=> b!4415750 (= lt!1617570 (addToMapMapFromBucket!347 newBucket!194 lt!1617569))))

(declare-fun extractMap!754 (List!49570) ListMap!2617)

(assert (=> b!4415750 (= lt!1617566 (extractMap!754 (toList!3373 lt!1617565)))))

(assert (=> b!4415750 (= lt!1617569 (extractMap!754 (t!356508 (toList!3373 lm!1616))))))

(declare-fun b!4415751 () Bool)

(declare-fun res!1823859 () Bool)

(assert (=> b!4415751 (=> (not res!1823859) (not e!2749670))))

(declare-fun contains!11900 (ListMap!2617 K!10805) Bool)

(assert (=> b!4415751 (= res!1823859 (not (contains!11900 (extractMap!754 (toList!3373 lm!1616)) key!3717)))))

(declare-fun b!4415752 () Bool)

(declare-fun res!1823858 () Bool)

(assert (=> b!4415752 (=> (not res!1823858) (not e!2749670))))

(declare-datatypes ((Hashable!5087 0))(
  ( (HashableExt!5086 (__x!30790 Int)) )
))
(declare-fun hashF!1220 () Hashable!5087)

(declare-fun allKeysSameHashInMap!799 (ListLongMap!2023 Hashable!5087) Bool)

(assert (=> b!4415752 (= res!1823858 (allKeysSameHashInMap!799 lm!1616 hashF!1220))))

(declare-fun b!4415753 () Bool)

(declare-fun res!1823853 () Bool)

(assert (=> b!4415753 (=> (not res!1823853) (not e!2749670))))

(declare-fun hash!2006 (Hashable!5087 K!10805) (_ BitVec 64))

(assert (=> b!4415753 (= res!1823853 (= (hash!2006 hashF!1220 key!3717) hash!366))))

(declare-fun b!4415754 () Bool)

(declare-fun res!1823848 () Bool)

(assert (=> b!4415754 (=> (not res!1823848) (not e!2749674))))

(declare-fun noDuplicateKeys!693 (List!49569) Bool)

(assert (=> b!4415754 (= res!1823848 (noDuplicateKeys!693 newBucket!194))))

(declare-fun b!4415755 () Bool)

(declare-fun lambda!151868 () Int)

(declare-fun forall!9474 (List!49570 Int) Bool)

(assert (=> b!4415755 (= e!2749672 (forall!9474 (t!356508 (toList!3373 lm!1616)) lambda!151868))))

(declare-fun b!4415756 () Bool)

(declare-fun res!1823851 () Bool)

(assert (=> b!4415756 (=> res!1823851 e!2749671)))

(get-info :version)

(assert (=> b!4415756 (= res!1823851 (or (not ((_ is Cons!49446) (toList!3373 lm!1616))) (not (= (_1!27870 (h!55105 (toList!3373 lm!1616))) hash!366)) lt!1617571))))

(declare-fun b!4415757 () Bool)

(declare-fun res!1823855 () Bool)

(assert (=> b!4415757 (=> (not res!1823855) (not e!2749674))))

(assert (=> b!4415757 (= res!1823855 (forall!9474 (toList!3373 lm!1616) lambda!151868))))

(declare-fun res!1823849 () Bool)

(assert (=> start!430006 (=> (not res!1823849) (not e!2749670))))

(assert (=> start!430006 (= res!1823849 (forall!9474 (toList!3373 lm!1616) lambda!151868))))

(assert (=> start!430006 e!2749670))

(assert (=> start!430006 tp_is_empty!26017))

(assert (=> start!430006 tp_is_empty!26019))

(assert (=> start!430006 e!2749665))

(declare-fun inv!64991 (ListLongMap!2023) Bool)

(assert (=> start!430006 (and (inv!64991 lm!1616) e!2749669)))

(assert (=> start!430006 true))

(declare-fun b!4415758 () Bool)

(declare-fun res!1823844 () Bool)

(assert (=> b!4415758 (=> (not res!1823844) (not e!2749670))))

(declare-fun allKeysSameHash!653 (List!49569 (_ BitVec 64) Hashable!5087) Bool)

(assert (=> b!4415758 (= res!1823844 (allKeysSameHash!653 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4415759 () Bool)

(assert (=> b!4415759 (= e!2749664 (= newBucket!194 (Cons!49445 (tuple2!49151 key!3717 newValue!93) (apply!11545 lm!1616 hash!366))))))

(declare-fun b!4415760 () Bool)

(assert (=> b!4415760 (= e!2749674 (not e!2749671))))

(declare-fun res!1823857 () Bool)

(assert (=> b!4415760 (=> res!1823857 e!2749671)))

(assert (=> b!4415760 (= res!1823857 (not (forall!9474 (toList!3373 lt!1617565) lambda!151868)))))

(assert (=> b!4415760 (forall!9474 (toList!3373 lt!1617565) lambda!151868)))

(declare-fun +!987 (ListLongMap!2023 tuple2!49152) ListLongMap!2023)

(assert (=> b!4415760 (= lt!1617565 (+!987 lm!1616 lt!1617575))))

(assert (=> b!4415760 (= lt!1617575 (tuple2!49153 hash!366 newBucket!194))))

(declare-fun lt!1617572 () Unit!80827)

(declare-fun addValidProp!337 (ListLongMap!2023 Int (_ BitVec 64) List!49569) Unit!80827)

(assert (=> b!4415760 (= lt!1617572 (addValidProp!337 lm!1616 lambda!151868 hash!366 newBucket!194))))

(declare-fun b!4415761 () Bool)

(assert (=> b!4415761 (= e!2749666 e!2749668)))

(declare-fun res!1823860 () Bool)

(assert (=> b!4415761 (=> res!1823860 e!2749668)))

(assert (=> b!4415761 (= res!1823860 (not (= lt!1617570 lt!1617577)))))

(assert (=> b!4415761 (= lt!1617577 (addToMapMapFromBucket!347 lt!1617568 (+!986 lt!1617569 lt!1617573)))))

(assert (= (and start!430006 res!1823849) b!4415752))

(assert (= (and b!4415752 res!1823858) b!4415753))

(assert (= (and b!4415753 res!1823853) b!4415758))

(assert (= (and b!4415758 res!1823844) b!4415751))

(assert (= (and b!4415751 res!1823859) b!4415745))

(assert (= (and b!4415745 res!1823854) b!4415759))

(assert (= (and b!4415745 (not res!1823846)) b!4415747))

(assert (= (and b!4415745 res!1823856) b!4415754))

(assert (= (and b!4415754 res!1823848) b!4415757))

(assert (= (and b!4415757 res!1823855) b!4415760))

(assert (= (and b!4415760 (not res!1823857)) b!4415756))

(assert (= (and b!4415756 (not res!1823851)) b!4415742))

(assert (= (and b!4415742 (not res!1823852)) b!4415749))

(assert (= (and b!4415749 (not res!1823850)) b!4415750))

(assert (= (and b!4415750 (not res!1823861)) b!4415746))

(assert (= (and b!4415746 (not res!1823845)) b!4415761))

(assert (= (and b!4415761 (not res!1823860)) b!4415748))

(assert (= (and b!4415748 (not res!1823847)) b!4415755))

(assert (= (and start!430006 ((_ is Cons!49445) newBucket!194)) b!4415744))

(assert (= start!430006 b!4415743))

(declare-fun m!5091799 () Bool)

(assert (=> b!4415761 m!5091799))

(assert (=> b!4415761 m!5091799))

(declare-fun m!5091801 () Bool)

(assert (=> b!4415761 m!5091801))

(declare-fun m!5091803 () Bool)

(assert (=> b!4415755 m!5091803))

(declare-fun m!5091805 () Bool)

(assert (=> b!4415749 m!5091805))

(declare-fun m!5091807 () Bool)

(assert (=> b!4415745 m!5091807))

(declare-fun m!5091809 () Bool)

(assert (=> b!4415758 m!5091809))

(declare-fun m!5091811 () Bool)

(assert (=> b!4415751 m!5091811))

(assert (=> b!4415751 m!5091811))

(declare-fun m!5091813 () Bool)

(assert (=> b!4415751 m!5091813))

(declare-fun m!5091815 () Bool)

(assert (=> b!4415750 m!5091815))

(declare-fun m!5091817 () Bool)

(assert (=> b!4415750 m!5091817))

(declare-fun m!5091819 () Bool)

(assert (=> b!4415750 m!5091819))

(declare-fun m!5091821 () Bool)

(assert (=> b!4415754 m!5091821))

(declare-fun m!5091823 () Bool)

(assert (=> b!4415748 m!5091823))

(declare-fun m!5091825 () Bool)

(assert (=> b!4415748 m!5091825))

(declare-fun m!5091827 () Bool)

(assert (=> b!4415748 m!5091827))

(declare-fun m!5091829 () Bool)

(assert (=> b!4415748 m!5091829))

(declare-fun m!5091831 () Bool)

(assert (=> b!4415748 m!5091831))

(assert (=> b!4415748 m!5091829))

(declare-fun m!5091833 () Bool)

(assert (=> b!4415742 m!5091833))

(declare-fun m!5091835 () Bool)

(assert (=> b!4415752 m!5091835))

(declare-fun m!5091837 () Bool)

(assert (=> start!430006 m!5091837))

(declare-fun m!5091839 () Bool)

(assert (=> start!430006 m!5091839))

(assert (=> b!4415757 m!5091837))

(declare-fun m!5091841 () Bool)

(assert (=> b!4415760 m!5091841))

(assert (=> b!4415760 m!5091841))

(declare-fun m!5091843 () Bool)

(assert (=> b!4415760 m!5091843))

(declare-fun m!5091845 () Bool)

(assert (=> b!4415760 m!5091845))

(declare-fun m!5091847 () Bool)

(assert (=> b!4415746 m!5091847))

(assert (=> b!4415759 m!5091847))

(declare-fun m!5091849 () Bool)

(assert (=> b!4415753 m!5091849))

(check-sat (not b!4415746) (not b!4415744) (not b!4415748) (not b!4415745) (not b!4415759) (not b!4415751) (not b!4415758) (not b!4415754) (not b!4415743) (not b!4415749) (not b!4415761) (not b!4415742) (not b!4415757) (not b!4415753) (not b!4415755) (not b!4415760) (not start!430006) tp_is_empty!26017 tp_is_empty!26019 (not b!4415750) (not b!4415752))
(check-sat)
(get-model)

(declare-fun d!1337903 () Bool)

(declare-fun res!1823878 () Bool)

(declare-fun e!2749691 () Bool)

(assert (=> d!1337903 (=> res!1823878 e!2749691)))

(assert (=> d!1337903 (= res!1823878 (not ((_ is Cons!49445) newBucket!194)))))

(assert (=> d!1337903 (= (noDuplicateKeys!693 newBucket!194) e!2749691)))

(declare-fun b!4415784 () Bool)

(declare-fun e!2749692 () Bool)

(assert (=> b!4415784 (= e!2749691 e!2749692)))

(declare-fun res!1823879 () Bool)

(assert (=> b!4415784 (=> (not res!1823879) (not e!2749692))))

(declare-fun containsKey!1039 (List!49569 K!10805) Bool)

(assert (=> b!4415784 (= res!1823879 (not (containsKey!1039 (t!356507 newBucket!194) (_1!27869 (h!55104 newBucket!194)))))))

(declare-fun b!4415785 () Bool)

(assert (=> b!4415785 (= e!2749692 (noDuplicateKeys!693 (t!356507 newBucket!194)))))

(assert (= (and d!1337903 (not res!1823878)) b!4415784))

(assert (= (and b!4415784 res!1823879) b!4415785))

(declare-fun m!5091861 () Bool)

(assert (=> b!4415784 m!5091861))

(declare-fun m!5091863 () Bool)

(assert (=> b!4415785 m!5091863))

(assert (=> b!4415754 d!1337903))

(declare-fun d!1337905 () Bool)

(declare-fun hash!2007 (Hashable!5087 K!10805) (_ BitVec 64))

(assert (=> d!1337905 (= (hash!2006 hashF!1220 key!3717) (hash!2007 hashF!1220 key!3717))))

(declare-fun bs!753419 () Bool)

(assert (= bs!753419 d!1337905))

(declare-fun m!5091865 () Bool)

(assert (=> bs!753419 m!5091865))

(assert (=> b!4415753 d!1337905))

(declare-fun d!1337907 () Bool)

(assert (=> d!1337907 (= (head!9172 (toList!3373 lt!1617565)) (h!55105 (toList!3373 lt!1617565)))))

(assert (=> b!4415742 d!1337907))

(declare-fun bs!753420 () Bool)

(declare-fun d!1337909 () Bool)

(assert (= bs!753420 (and d!1337909 start!430006)))

(declare-fun lambda!151877 () Int)

(assert (=> bs!753420 (not (= lambda!151877 lambda!151868))))

(assert (=> d!1337909 true))

(assert (=> d!1337909 (= (allKeysSameHashInMap!799 lm!1616 hashF!1220) (forall!9474 (toList!3373 lm!1616) lambda!151877))))

(declare-fun bs!753421 () Bool)

(assert (= bs!753421 d!1337909))

(declare-fun m!5091867 () Bool)

(assert (=> bs!753421 m!5091867))

(assert (=> b!4415752 d!1337909))

(declare-fun d!1337911 () Bool)

(declare-datatypes ((Option!10675 0))(
  ( (None!10674) (Some!10674 (v!43834 List!49569)) )
))
(declare-fun get!16106 (Option!10675) List!49569)

(declare-fun getValueByKey!661 (List!49570 (_ BitVec 64)) Option!10675)

(assert (=> d!1337911 (= (apply!11545 lm!1616 hash!366) (get!16106 (getValueByKey!661 (toList!3373 lm!1616) hash!366)))))

(declare-fun bs!753422 () Bool)

(assert (= bs!753422 d!1337911))

(declare-fun m!5091869 () Bool)

(assert (=> bs!753422 m!5091869))

(assert (=> bs!753422 m!5091869))

(declare-fun m!5091871 () Bool)

(assert (=> bs!753422 m!5091871))

(assert (=> b!4415746 d!1337911))

(declare-fun d!1337913 () Bool)

(declare-fun e!2749698 () Bool)

(assert (=> d!1337913 e!2749698))

(declare-fun res!1823882 () Bool)

(assert (=> d!1337913 (=> res!1823882 e!2749698)))

(declare-fun lt!1617588 () Bool)

(assert (=> d!1337913 (= res!1823882 (not lt!1617588))))

(declare-fun lt!1617589 () Bool)

(assert (=> d!1337913 (= lt!1617588 lt!1617589)))

(declare-fun lt!1617586 () Unit!80827)

(declare-fun e!2749697 () Unit!80827)

(assert (=> d!1337913 (= lt!1617586 e!2749697)))

(declare-fun c!751802 () Bool)

(assert (=> d!1337913 (= c!751802 lt!1617589)))

(declare-fun containsKey!1040 (List!49570 (_ BitVec 64)) Bool)

(assert (=> d!1337913 (= lt!1617589 (containsKey!1040 (toList!3373 lm!1616) hash!366))))

(assert (=> d!1337913 (= (contains!11899 lm!1616 hash!366) lt!1617588)))

(declare-fun b!4415794 () Bool)

(declare-fun lt!1617587 () Unit!80827)

(assert (=> b!4415794 (= e!2749697 lt!1617587)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!571 (List!49570 (_ BitVec 64)) Unit!80827)

(assert (=> b!4415794 (= lt!1617587 (lemmaContainsKeyImpliesGetValueByKeyDefined!571 (toList!3373 lm!1616) hash!366))))

(declare-fun isDefined!7968 (Option!10675) Bool)

(assert (=> b!4415794 (isDefined!7968 (getValueByKey!661 (toList!3373 lm!1616) hash!366))))

(declare-fun b!4415795 () Bool)

(declare-fun Unit!80854 () Unit!80827)

(assert (=> b!4415795 (= e!2749697 Unit!80854)))

(declare-fun b!4415796 () Bool)

(assert (=> b!4415796 (= e!2749698 (isDefined!7968 (getValueByKey!661 (toList!3373 lm!1616) hash!366)))))

(assert (= (and d!1337913 c!751802) b!4415794))

(assert (= (and d!1337913 (not c!751802)) b!4415795))

(assert (= (and d!1337913 (not res!1823882)) b!4415796))

(declare-fun m!5091873 () Bool)

(assert (=> d!1337913 m!5091873))

(declare-fun m!5091875 () Bool)

(assert (=> b!4415794 m!5091875))

(assert (=> b!4415794 m!5091869))

(assert (=> b!4415794 m!5091869))

(declare-fun m!5091877 () Bool)

(assert (=> b!4415794 m!5091877))

(assert (=> b!4415796 m!5091869))

(assert (=> b!4415796 m!5091869))

(assert (=> b!4415796 m!5091877))

(assert (=> b!4415745 d!1337913))

(declare-fun d!1337915 () Bool)

(declare-fun res!1823887 () Bool)

(declare-fun e!2749703 () Bool)

(assert (=> d!1337915 (=> res!1823887 e!2749703)))

(assert (=> d!1337915 (= res!1823887 ((_ is Nil!49446) (t!356508 (toList!3373 lm!1616))))))

(assert (=> d!1337915 (= (forall!9474 (t!356508 (toList!3373 lm!1616)) lambda!151868) e!2749703)))

(declare-fun b!4415801 () Bool)

(declare-fun e!2749704 () Bool)

(assert (=> b!4415801 (= e!2749703 e!2749704)))

(declare-fun res!1823888 () Bool)

(assert (=> b!4415801 (=> (not res!1823888) (not e!2749704))))

(declare-fun dynLambda!20811 (Int tuple2!49152) Bool)

(assert (=> b!4415801 (= res!1823888 (dynLambda!20811 lambda!151868 (h!55105 (t!356508 (toList!3373 lm!1616)))))))

(declare-fun b!4415802 () Bool)

(assert (=> b!4415802 (= e!2749704 (forall!9474 (t!356508 (t!356508 (toList!3373 lm!1616))) lambda!151868))))

(assert (= (and d!1337915 (not res!1823887)) b!4415801))

(assert (= (and b!4415801 res!1823888) b!4415802))

(declare-fun b_lambda!142177 () Bool)

(assert (=> (not b_lambda!142177) (not b!4415801)))

(declare-fun m!5091879 () Bool)

(assert (=> b!4415801 m!5091879))

(declare-fun m!5091881 () Bool)

(assert (=> b!4415802 m!5091881))

(assert (=> b!4415755 d!1337915))

(declare-fun d!1337917 () Bool)

(declare-fun res!1823889 () Bool)

(declare-fun e!2749705 () Bool)

(assert (=> d!1337917 (=> res!1823889 e!2749705)))

(assert (=> d!1337917 (= res!1823889 ((_ is Nil!49446) (toList!3373 lm!1616)))))

(assert (=> d!1337917 (= (forall!9474 (toList!3373 lm!1616) lambda!151868) e!2749705)))

(declare-fun b!4415803 () Bool)

(declare-fun e!2749706 () Bool)

(assert (=> b!4415803 (= e!2749705 e!2749706)))

(declare-fun res!1823890 () Bool)

(assert (=> b!4415803 (=> (not res!1823890) (not e!2749706))))

(assert (=> b!4415803 (= res!1823890 (dynLambda!20811 lambda!151868 (h!55105 (toList!3373 lm!1616))))))

(declare-fun b!4415804 () Bool)

(assert (=> b!4415804 (= e!2749706 (forall!9474 (t!356508 (toList!3373 lm!1616)) lambda!151868))))

(assert (= (and d!1337917 (not res!1823889)) b!4415803))

(assert (= (and b!4415803 res!1823890) b!4415804))

(declare-fun b_lambda!142179 () Bool)

(assert (=> (not b_lambda!142179) (not b!4415803)))

(declare-fun m!5091883 () Bool)

(assert (=> b!4415803 m!5091883))

(assert (=> b!4415804 m!5091803))

(assert (=> start!430006 d!1337917))

(declare-fun d!1337919 () Bool)

(declare-fun isStrictlySorted!207 (List!49570) Bool)

(assert (=> d!1337919 (= (inv!64991 lm!1616) (isStrictlySorted!207 (toList!3373 lm!1616)))))

(declare-fun bs!753423 () Bool)

(assert (= bs!753423 d!1337919))

(declare-fun m!5091885 () Bool)

(assert (=> bs!753423 m!5091885))

(assert (=> start!430006 d!1337919))

(assert (=> b!4415759 d!1337911))

(declare-fun b!4415922 () Bool)

(assert (=> b!4415922 true))

(declare-fun bs!753488 () Bool)

(declare-fun b!4415921 () Bool)

(assert (= bs!753488 (and b!4415921 b!4415922)))

(declare-fun lambda!151952 () Int)

(declare-fun lambda!151951 () Int)

(assert (=> bs!753488 (= lambda!151952 lambda!151951)))

(assert (=> b!4415921 true))

(declare-fun lambda!151953 () Int)

(declare-fun lt!1617812 () ListMap!2617)

(assert (=> bs!753488 (= (= lt!1617812 lt!1617569) (= lambda!151953 lambda!151951))))

(assert (=> b!4415921 (= (= lt!1617812 lt!1617569) (= lambda!151953 lambda!151952))))

(assert (=> b!4415921 true))

(declare-fun bs!753489 () Bool)

(declare-fun d!1337921 () Bool)

(assert (= bs!753489 (and d!1337921 b!4415922)))

(declare-fun lt!1617829 () ListMap!2617)

(declare-fun lambda!151954 () Int)

(assert (=> bs!753489 (= (= lt!1617829 lt!1617569) (= lambda!151954 lambda!151951))))

(declare-fun bs!753490 () Bool)

(assert (= bs!753490 (and d!1337921 b!4415921)))

(assert (=> bs!753490 (= (= lt!1617829 lt!1617569) (= lambda!151954 lambda!151952))))

(assert (=> bs!753490 (= (= lt!1617829 lt!1617812) (= lambda!151954 lambda!151953))))

(assert (=> d!1337921 true))

(declare-fun b!4415920 () Bool)

(declare-fun e!2749778 () Bool)

(declare-fun invariantList!780 (List!49569) Bool)

(assert (=> b!4415920 (= e!2749778 (invariantList!780 (toList!3374 lt!1617829)))))

(declare-fun bm!307320 () Bool)

(declare-fun call!307325 () Unit!80827)

(declare-fun lemmaContainsAllItsOwnKeys!157 (ListMap!2617) Unit!80827)

(assert (=> bm!307320 (= call!307325 (lemmaContainsAllItsOwnKeys!157 lt!1617569))))

(declare-fun call!307327 () Bool)

(declare-fun c!751827 () Bool)

(declare-fun bm!307321 () Bool)

(declare-fun forall!9476 (List!49569 Int) Bool)

(assert (=> bm!307321 (= call!307327 (forall!9476 (toList!3374 lt!1617569) (ite c!751827 lambda!151951 lambda!151953)))))

(declare-fun e!2749777 () ListMap!2617)

(assert (=> b!4415921 (= e!2749777 lt!1617812)))

(declare-fun lt!1617827 () ListMap!2617)

(assert (=> b!4415921 (= lt!1617827 (+!986 lt!1617569 (h!55104 lt!1617568)))))

(assert (=> b!4415921 (= lt!1617812 (addToMapMapFromBucket!347 (t!356507 lt!1617568) (+!986 lt!1617569 (h!55104 lt!1617568))))))

(declare-fun lt!1617817 () Unit!80827)

(assert (=> b!4415921 (= lt!1617817 call!307325)))

(assert (=> b!4415921 (forall!9476 (toList!3374 lt!1617569) lambda!151952)))

(declare-fun lt!1617825 () Unit!80827)

(assert (=> b!4415921 (= lt!1617825 lt!1617817)))

(assert (=> b!4415921 (forall!9476 (toList!3374 lt!1617827) lambda!151953)))

(declare-fun lt!1617830 () Unit!80827)

(declare-fun Unit!80855 () Unit!80827)

(assert (=> b!4415921 (= lt!1617830 Unit!80855)))

(assert (=> b!4415921 (forall!9476 (t!356507 lt!1617568) lambda!151953)))

(declare-fun lt!1617831 () Unit!80827)

(declare-fun Unit!80856 () Unit!80827)

(assert (=> b!4415921 (= lt!1617831 Unit!80856)))

(declare-fun lt!1617828 () Unit!80827)

(declare-fun Unit!80857 () Unit!80827)

(assert (=> b!4415921 (= lt!1617828 Unit!80857)))

(declare-fun lt!1617813 () Unit!80827)

(declare-fun forallContained!2067 (List!49569 Int tuple2!49150) Unit!80827)

(assert (=> b!4415921 (= lt!1617813 (forallContained!2067 (toList!3374 lt!1617827) lambda!151953 (h!55104 lt!1617568)))))

(assert (=> b!4415921 (contains!11900 lt!1617827 (_1!27869 (h!55104 lt!1617568)))))

(declare-fun lt!1617822 () Unit!80827)

(declare-fun Unit!80858 () Unit!80827)

(assert (=> b!4415921 (= lt!1617822 Unit!80858)))

(assert (=> b!4415921 (contains!11900 lt!1617812 (_1!27869 (h!55104 lt!1617568)))))

(declare-fun lt!1617826 () Unit!80827)

(declare-fun Unit!80859 () Unit!80827)

(assert (=> b!4415921 (= lt!1617826 Unit!80859)))

(assert (=> b!4415921 (forall!9476 lt!1617568 lambda!151953)))

(declare-fun lt!1617823 () Unit!80827)

(declare-fun Unit!80860 () Unit!80827)

(assert (=> b!4415921 (= lt!1617823 Unit!80860)))

(assert (=> b!4415921 (forall!9476 (toList!3374 lt!1617827) lambda!151953)))

(declare-fun lt!1617819 () Unit!80827)

(declare-fun Unit!80861 () Unit!80827)

(assert (=> b!4415921 (= lt!1617819 Unit!80861)))

(declare-fun lt!1617821 () Unit!80827)

(declare-fun Unit!80862 () Unit!80827)

(assert (=> b!4415921 (= lt!1617821 Unit!80862)))

(declare-fun lt!1617816 () Unit!80827)

(declare-fun addForallContainsKeyThenBeforeAdding!157 (ListMap!2617 ListMap!2617 K!10805 V!11051) Unit!80827)

(assert (=> b!4415921 (= lt!1617816 (addForallContainsKeyThenBeforeAdding!157 lt!1617569 lt!1617812 (_1!27869 (h!55104 lt!1617568)) (_2!27869 (h!55104 lt!1617568))))))

(assert (=> b!4415921 (forall!9476 (toList!3374 lt!1617569) lambda!151953)))

(declare-fun lt!1617815 () Unit!80827)

(assert (=> b!4415921 (= lt!1617815 lt!1617816)))

(declare-fun call!307326 () Bool)

(assert (=> b!4415921 call!307326))

(declare-fun lt!1617820 () Unit!80827)

(declare-fun Unit!80863 () Unit!80827)

(assert (=> b!4415921 (= lt!1617820 Unit!80863)))

(declare-fun res!1823945 () Bool)

(assert (=> b!4415921 (= res!1823945 (forall!9476 lt!1617568 lambda!151953))))

(declare-fun e!2749779 () Bool)

(assert (=> b!4415921 (=> (not res!1823945) (not e!2749779))))

(assert (=> b!4415921 e!2749779))

(declare-fun lt!1617832 () Unit!80827)

(declare-fun Unit!80864 () Unit!80827)

(assert (=> b!4415921 (= lt!1617832 Unit!80864)))

(assert (=> d!1337921 e!2749778))

(declare-fun res!1823947 () Bool)

(assert (=> d!1337921 (=> (not res!1823947) (not e!2749778))))

(assert (=> d!1337921 (= res!1823947 (forall!9476 lt!1617568 lambda!151954))))

(assert (=> d!1337921 (= lt!1617829 e!2749777)))

(assert (=> d!1337921 (= c!751827 ((_ is Nil!49445) lt!1617568))))

(assert (=> d!1337921 (noDuplicateKeys!693 lt!1617568)))

(assert (=> d!1337921 (= (addToMapMapFromBucket!347 lt!1617568 lt!1617569) lt!1617829)))

(declare-fun bm!307322 () Bool)

(assert (=> bm!307322 (= call!307326 (forall!9476 (toList!3374 lt!1617569) (ite c!751827 lambda!151951 lambda!151953)))))

(assert (=> b!4415922 (= e!2749777 lt!1617569)))

(declare-fun lt!1617818 () Unit!80827)

(assert (=> b!4415922 (= lt!1617818 call!307325)))

(assert (=> b!4415922 call!307326))

(declare-fun lt!1617814 () Unit!80827)

(assert (=> b!4415922 (= lt!1617814 lt!1617818)))

(assert (=> b!4415922 call!307327))

(declare-fun lt!1617824 () Unit!80827)

(declare-fun Unit!80867 () Unit!80827)

(assert (=> b!4415922 (= lt!1617824 Unit!80867)))

(declare-fun b!4415923 () Bool)

(declare-fun res!1823946 () Bool)

(assert (=> b!4415923 (=> (not res!1823946) (not e!2749778))))

(assert (=> b!4415923 (= res!1823946 (forall!9476 (toList!3374 lt!1617569) lambda!151954))))

(declare-fun b!4415924 () Bool)

(assert (=> b!4415924 (= e!2749779 call!307327)))

(assert (= (and d!1337921 c!751827) b!4415922))

(assert (= (and d!1337921 (not c!751827)) b!4415921))

(assert (= (and b!4415921 res!1823945) b!4415924))

(assert (= (or b!4415922 b!4415921) bm!307320))

(assert (= (or b!4415922 b!4415921) bm!307322))

(assert (= (or b!4415922 b!4415924) bm!307321))

(assert (= (and d!1337921 res!1823947) b!4415923))

(assert (= (and b!4415923 res!1823946) b!4415920))

(declare-fun m!5092123 () Bool)

(assert (=> b!4415923 m!5092123))

(declare-fun m!5092125 () Bool)

(assert (=> bm!307322 m!5092125))

(assert (=> bm!307321 m!5092125))

(declare-fun m!5092127 () Bool)

(assert (=> d!1337921 m!5092127))

(declare-fun m!5092129 () Bool)

(assert (=> d!1337921 m!5092129))

(declare-fun m!5092131 () Bool)

(assert (=> b!4415921 m!5092131))

(declare-fun m!5092133 () Bool)

(assert (=> b!4415921 m!5092133))

(declare-fun m!5092135 () Bool)

(assert (=> b!4415921 m!5092135))

(assert (=> b!4415921 m!5092131))

(declare-fun m!5092137 () Bool)

(assert (=> b!4415921 m!5092137))

(declare-fun m!5092139 () Bool)

(assert (=> b!4415921 m!5092139))

(declare-fun m!5092141 () Bool)

(assert (=> b!4415921 m!5092141))

(declare-fun m!5092143 () Bool)

(assert (=> b!4415921 m!5092143))

(declare-fun m!5092145 () Bool)

(assert (=> b!4415921 m!5092145))

(declare-fun m!5092147 () Bool)

(assert (=> b!4415921 m!5092147))

(assert (=> b!4415921 m!5092147))

(assert (=> b!4415921 m!5092135))

(declare-fun m!5092149 () Bool)

(assert (=> b!4415921 m!5092149))

(declare-fun m!5092151 () Bool)

(assert (=> b!4415921 m!5092151))

(declare-fun m!5092153 () Bool)

(assert (=> b!4415920 m!5092153))

(declare-fun m!5092155 () Bool)

(assert (=> bm!307320 m!5092155))

(assert (=> b!4415748 d!1337921))

(declare-fun d!1337973 () Bool)

(assert (=> d!1337973 (eq!369 (addToMapMapFromBucket!347 lt!1617568 (+!986 lt!1617569 (tuple2!49151 key!3717 newValue!93))) (+!986 (addToMapMapFromBucket!347 lt!1617568 lt!1617569) (tuple2!49151 key!3717 newValue!93)))))

(declare-fun lt!1617835 () Unit!80827)

(declare-fun choose!27791 (ListMap!2617 K!10805 V!11051 List!49569) Unit!80827)

(assert (=> d!1337973 (= lt!1617835 (choose!27791 lt!1617569 key!3717 newValue!93 lt!1617568))))

(assert (=> d!1337973 (not (containsKey!1039 lt!1617568 key!3717))))

(assert (=> d!1337973 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!164 lt!1617569 key!3717 newValue!93 lt!1617568) lt!1617835)))

(declare-fun bs!753491 () Bool)

(assert (= bs!753491 d!1337973))

(declare-fun m!5092157 () Bool)

(assert (=> bs!753491 m!5092157))

(declare-fun m!5092159 () Bool)

(assert (=> bs!753491 m!5092159))

(declare-fun m!5092161 () Bool)

(assert (=> bs!753491 m!5092161))

(declare-fun m!5092163 () Bool)

(assert (=> bs!753491 m!5092163))

(assert (=> bs!753491 m!5092157))

(declare-fun m!5092165 () Bool)

(assert (=> bs!753491 m!5092165))

(declare-fun m!5092167 () Bool)

(assert (=> bs!753491 m!5092167))

(assert (=> bs!753491 m!5092163))

(assert (=> bs!753491 m!5091829))

(assert (=> bs!753491 m!5091829))

(assert (=> bs!753491 m!5092159))

(assert (=> b!4415748 d!1337973))

(declare-fun d!1337975 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7916 (List!49569) (InoxSet tuple2!49150))

(assert (=> d!1337975 (= (eq!369 lt!1617570 lt!1617576) (= (content!7916 (toList!3374 lt!1617570)) (content!7916 (toList!3374 lt!1617576))))))

(declare-fun bs!753492 () Bool)

(assert (= bs!753492 d!1337975))

(declare-fun m!5092169 () Bool)

(assert (=> bs!753492 m!5092169))

(declare-fun m!5092171 () Bool)

(assert (=> bs!753492 m!5092171))

(assert (=> b!4415748 d!1337975))

(declare-fun d!1337977 () Bool)

(assert (=> d!1337977 (= (eq!369 lt!1617577 lt!1617576) (= (content!7916 (toList!3374 lt!1617577)) (content!7916 (toList!3374 lt!1617576))))))

(declare-fun bs!753493 () Bool)

(assert (= bs!753493 d!1337977))

(declare-fun m!5092173 () Bool)

(assert (=> bs!753493 m!5092173))

(assert (=> bs!753493 m!5092171))

(assert (=> b!4415748 d!1337977))

(declare-fun d!1337979 () Bool)

(declare-fun e!2749782 () Bool)

(assert (=> d!1337979 e!2749782))

(declare-fun res!1823952 () Bool)

(assert (=> d!1337979 (=> (not res!1823952) (not e!2749782))))

(declare-fun lt!1617847 () ListMap!2617)

(assert (=> d!1337979 (= res!1823952 (contains!11900 lt!1617847 (_1!27869 lt!1617573)))))

(declare-fun lt!1617846 () List!49569)

(assert (=> d!1337979 (= lt!1617847 (ListMap!2618 lt!1617846))))

(declare-fun lt!1617844 () Unit!80827)

(declare-fun lt!1617845 () Unit!80827)

(assert (=> d!1337979 (= lt!1617844 lt!1617845)))

(declare-datatypes ((Option!10676 0))(
  ( (None!10675) (Some!10675 (v!43835 V!11051)) )
))
(declare-fun getValueByKey!662 (List!49569 K!10805) Option!10676)

(assert (=> d!1337979 (= (getValueByKey!662 lt!1617846 (_1!27869 lt!1617573)) (Some!10675 (_2!27869 lt!1617573)))))

(declare-fun lemmaContainsTupThenGetReturnValue!399 (List!49569 K!10805 V!11051) Unit!80827)

(assert (=> d!1337979 (= lt!1617845 (lemmaContainsTupThenGetReturnValue!399 lt!1617846 (_1!27869 lt!1617573) (_2!27869 lt!1617573)))))

(declare-fun insertNoDuplicatedKeys!173 (List!49569 K!10805 V!11051) List!49569)

(assert (=> d!1337979 (= lt!1617846 (insertNoDuplicatedKeys!173 (toList!3374 (addToMapMapFromBucket!347 lt!1617568 lt!1617569)) (_1!27869 lt!1617573) (_2!27869 lt!1617573)))))

(assert (=> d!1337979 (= (+!986 (addToMapMapFromBucket!347 lt!1617568 lt!1617569) lt!1617573) lt!1617847)))

(declare-fun b!4415931 () Bool)

(declare-fun res!1823953 () Bool)

(assert (=> b!4415931 (=> (not res!1823953) (not e!2749782))))

(assert (=> b!4415931 (= res!1823953 (= (getValueByKey!662 (toList!3374 lt!1617847) (_1!27869 lt!1617573)) (Some!10675 (_2!27869 lt!1617573))))))

(declare-fun b!4415932 () Bool)

(declare-fun contains!11904 (List!49569 tuple2!49150) Bool)

(assert (=> b!4415932 (= e!2749782 (contains!11904 (toList!3374 lt!1617847) lt!1617573))))

(assert (= (and d!1337979 res!1823952) b!4415931))

(assert (= (and b!4415931 res!1823953) b!4415932))

(declare-fun m!5092175 () Bool)

(assert (=> d!1337979 m!5092175))

(declare-fun m!5092177 () Bool)

(assert (=> d!1337979 m!5092177))

(declare-fun m!5092179 () Bool)

(assert (=> d!1337979 m!5092179))

(declare-fun m!5092181 () Bool)

(assert (=> d!1337979 m!5092181))

(declare-fun m!5092183 () Bool)

(assert (=> b!4415931 m!5092183))

(declare-fun m!5092185 () Bool)

(assert (=> b!4415932 m!5092185))

(assert (=> b!4415748 d!1337979))

(declare-fun bs!753494 () Bool)

(declare-fun d!1337981 () Bool)

(assert (= bs!753494 (and d!1337981 b!4415922)))

(declare-fun lambda!151957 () Int)

(assert (=> bs!753494 (not (= lambda!151957 lambda!151951))))

(declare-fun bs!753495 () Bool)

(assert (= bs!753495 (and d!1337981 b!4415921)))

(assert (=> bs!753495 (not (= lambda!151957 lambda!151952))))

(assert (=> bs!753495 (not (= lambda!151957 lambda!151953))))

(declare-fun bs!753496 () Bool)

(assert (= bs!753496 (and d!1337981 d!1337921)))

(assert (=> bs!753496 (not (= lambda!151957 lambda!151954))))

(assert (=> d!1337981 true))

(assert (=> d!1337981 true))

(assert (=> d!1337981 (= (allKeysSameHash!653 newBucket!194 hash!366 hashF!1220) (forall!9476 newBucket!194 lambda!151957))))

(declare-fun bs!753497 () Bool)

(assert (= bs!753497 d!1337981))

(declare-fun m!5092187 () Bool)

(assert (=> bs!753497 m!5092187))

(assert (=> b!4415758 d!1337981))

(assert (=> b!4415757 d!1337917))

(declare-fun b!4415955 () Bool)

(declare-fun e!2749797 () Bool)

(declare-datatypes ((List!49572 0))(
  ( (Nil!49448) (Cons!49448 (h!55109 K!10805) (t!356510 List!49572)) )
))
(declare-fun contains!11905 (List!49572 K!10805) Bool)

(declare-fun keys!16848 (ListMap!2617) List!49572)

(assert (=> b!4415955 (= e!2749797 (contains!11905 (keys!16848 (extractMap!754 (toList!3373 lm!1616))) key!3717))))

(declare-fun b!4415956 () Bool)

(declare-fun e!2749800 () Unit!80827)

(declare-fun lt!1617866 () Unit!80827)

(assert (=> b!4415956 (= e!2749800 lt!1617866)))

(declare-fun lt!1617868 () Unit!80827)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!572 (List!49569 K!10805) Unit!80827)

(assert (=> b!4415956 (= lt!1617868 (lemmaContainsKeyImpliesGetValueByKeyDefined!572 (toList!3374 (extractMap!754 (toList!3373 lm!1616))) key!3717))))

(declare-fun isDefined!7969 (Option!10676) Bool)

(assert (=> b!4415956 (isDefined!7969 (getValueByKey!662 (toList!3374 (extractMap!754 (toList!3373 lm!1616))) key!3717))))

(declare-fun lt!1617864 () Unit!80827)

(assert (=> b!4415956 (= lt!1617864 lt!1617868)))

(declare-fun lemmaInListThenGetKeysListContains!225 (List!49569 K!10805) Unit!80827)

(assert (=> b!4415956 (= lt!1617866 (lemmaInListThenGetKeysListContains!225 (toList!3374 (extractMap!754 (toList!3373 lm!1616))) key!3717))))

(declare-fun call!307330 () Bool)

(assert (=> b!4415956 call!307330))

(declare-fun b!4415957 () Bool)

(declare-fun e!2749798 () Unit!80827)

(declare-fun Unit!80877 () Unit!80827)

(assert (=> b!4415957 (= e!2749798 Unit!80877)))

(declare-fun b!4415958 () Bool)

(assert (=> b!4415958 (= e!2749800 e!2749798)))

(declare-fun c!751834 () Bool)

(assert (=> b!4415958 (= c!751834 call!307330)))

(declare-fun bm!307325 () Bool)

(declare-fun e!2749796 () List!49572)

(assert (=> bm!307325 (= call!307330 (contains!11905 e!2749796 key!3717))))

(declare-fun c!751835 () Bool)

(declare-fun c!751836 () Bool)

(assert (=> bm!307325 (= c!751835 c!751836)))

(declare-fun b!4415960 () Bool)

(declare-fun e!2749795 () Bool)

(assert (=> b!4415960 (= e!2749795 (not (contains!11905 (keys!16848 (extractMap!754 (toList!3373 lm!1616))) key!3717)))))

(declare-fun b!4415961 () Bool)

(declare-fun getKeysList!228 (List!49569) List!49572)

(assert (=> b!4415961 (= e!2749796 (getKeysList!228 (toList!3374 (extractMap!754 (toList!3373 lm!1616)))))))

(declare-fun b!4415962 () Bool)

(assert (=> b!4415962 (= e!2749796 (keys!16848 (extractMap!754 (toList!3373 lm!1616))))))

(declare-fun b!4415963 () Bool)

(declare-fun e!2749799 () Bool)

(assert (=> b!4415963 (= e!2749799 e!2749797)))

(declare-fun res!1823962 () Bool)

(assert (=> b!4415963 (=> (not res!1823962) (not e!2749797))))

(assert (=> b!4415963 (= res!1823962 (isDefined!7969 (getValueByKey!662 (toList!3374 (extractMap!754 (toList!3373 lm!1616))) key!3717)))))

(declare-fun d!1337983 () Bool)

(assert (=> d!1337983 e!2749799))

(declare-fun res!1823960 () Bool)

(assert (=> d!1337983 (=> res!1823960 e!2749799)))

(assert (=> d!1337983 (= res!1823960 e!2749795)))

(declare-fun res!1823961 () Bool)

(assert (=> d!1337983 (=> (not res!1823961) (not e!2749795))))

(declare-fun lt!1617867 () Bool)

(assert (=> d!1337983 (= res!1823961 (not lt!1617867))))

(declare-fun lt!1617870 () Bool)

(assert (=> d!1337983 (= lt!1617867 lt!1617870)))

(declare-fun lt!1617865 () Unit!80827)

(assert (=> d!1337983 (= lt!1617865 e!2749800)))

(assert (=> d!1337983 (= c!751836 lt!1617870)))

(declare-fun containsKey!1041 (List!49569 K!10805) Bool)

(assert (=> d!1337983 (= lt!1617870 (containsKey!1041 (toList!3374 (extractMap!754 (toList!3373 lm!1616))) key!3717))))

(assert (=> d!1337983 (= (contains!11900 (extractMap!754 (toList!3373 lm!1616)) key!3717) lt!1617867)))

(declare-fun b!4415959 () Bool)

(assert (=> b!4415959 false))

(declare-fun lt!1617871 () Unit!80827)

(declare-fun lt!1617869 () Unit!80827)

(assert (=> b!4415959 (= lt!1617871 lt!1617869)))

(assert (=> b!4415959 (containsKey!1041 (toList!3374 (extractMap!754 (toList!3373 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!226 (List!49569 K!10805) Unit!80827)

(assert (=> b!4415959 (= lt!1617869 (lemmaInGetKeysListThenContainsKey!226 (toList!3374 (extractMap!754 (toList!3373 lm!1616))) key!3717))))

(declare-fun Unit!80878 () Unit!80827)

(assert (=> b!4415959 (= e!2749798 Unit!80878)))

(assert (= (and d!1337983 c!751836) b!4415956))

(assert (= (and d!1337983 (not c!751836)) b!4415958))

(assert (= (and b!4415958 c!751834) b!4415959))

(assert (= (and b!4415958 (not c!751834)) b!4415957))

(assert (= (or b!4415956 b!4415958) bm!307325))

(assert (= (and bm!307325 c!751835) b!4415961))

(assert (= (and bm!307325 (not c!751835)) b!4415962))

(assert (= (and d!1337983 res!1823961) b!4415960))

(assert (= (and d!1337983 (not res!1823960)) b!4415963))

(assert (= (and b!4415963 res!1823962) b!4415955))

(assert (=> b!4415960 m!5091811))

(declare-fun m!5092189 () Bool)

(assert (=> b!4415960 m!5092189))

(assert (=> b!4415960 m!5092189))

(declare-fun m!5092191 () Bool)

(assert (=> b!4415960 m!5092191))

(declare-fun m!5092193 () Bool)

(assert (=> bm!307325 m!5092193))

(declare-fun m!5092195 () Bool)

(assert (=> b!4415961 m!5092195))

(assert (=> b!4415955 m!5091811))

(assert (=> b!4415955 m!5092189))

(assert (=> b!4415955 m!5092189))

(assert (=> b!4415955 m!5092191))

(declare-fun m!5092197 () Bool)

(assert (=> d!1337983 m!5092197))

(declare-fun m!5092199 () Bool)

(assert (=> b!4415956 m!5092199))

(declare-fun m!5092201 () Bool)

(assert (=> b!4415956 m!5092201))

(assert (=> b!4415956 m!5092201))

(declare-fun m!5092203 () Bool)

(assert (=> b!4415956 m!5092203))

(declare-fun m!5092205 () Bool)

(assert (=> b!4415956 m!5092205))

(assert (=> b!4415962 m!5091811))

(assert (=> b!4415962 m!5092189))

(assert (=> b!4415963 m!5092201))

(assert (=> b!4415963 m!5092201))

(assert (=> b!4415963 m!5092203))

(assert (=> b!4415959 m!5092197))

(declare-fun m!5092207 () Bool)

(assert (=> b!4415959 m!5092207))

(assert (=> b!4415751 d!1337983))

(declare-fun bs!753498 () Bool)

(declare-fun d!1337985 () Bool)

(assert (= bs!753498 (and d!1337985 start!430006)))

(declare-fun lambda!151960 () Int)

(assert (=> bs!753498 (= lambda!151960 lambda!151868)))

(declare-fun bs!753499 () Bool)

(assert (= bs!753499 (and d!1337985 d!1337909)))

(assert (=> bs!753499 (not (= lambda!151960 lambda!151877))))

(declare-fun lt!1617874 () ListMap!2617)

(assert (=> d!1337985 (invariantList!780 (toList!3374 lt!1617874))))

(declare-fun e!2749803 () ListMap!2617)

(assert (=> d!1337985 (= lt!1617874 e!2749803)))

(declare-fun c!751839 () Bool)

(assert (=> d!1337985 (= c!751839 ((_ is Cons!49446) (toList!3373 lm!1616)))))

(assert (=> d!1337985 (forall!9474 (toList!3373 lm!1616) lambda!151960)))

(assert (=> d!1337985 (= (extractMap!754 (toList!3373 lm!1616)) lt!1617874)))

(declare-fun b!4415968 () Bool)

(assert (=> b!4415968 (= e!2749803 (addToMapMapFromBucket!347 (_2!27870 (h!55105 (toList!3373 lm!1616))) (extractMap!754 (t!356508 (toList!3373 lm!1616)))))))

(declare-fun b!4415969 () Bool)

(assert (=> b!4415969 (= e!2749803 (ListMap!2618 Nil!49445))))

(assert (= (and d!1337985 c!751839) b!4415968))

(assert (= (and d!1337985 (not c!751839)) b!4415969))

(declare-fun m!5092209 () Bool)

(assert (=> d!1337985 m!5092209))

(declare-fun m!5092211 () Bool)

(assert (=> d!1337985 m!5092211))

(assert (=> b!4415968 m!5091819))

(assert (=> b!4415968 m!5091819))

(declare-fun m!5092213 () Bool)

(assert (=> b!4415968 m!5092213))

(assert (=> b!4415751 d!1337985))

(declare-fun bs!753500 () Bool)

(declare-fun b!4415972 () Bool)

(assert (= bs!753500 (and b!4415972 b!4415921)))

(declare-fun lambda!151961 () Int)

(assert (=> bs!753500 (= (= (+!986 lt!1617569 lt!1617573) lt!1617812) (= lambda!151961 lambda!151953))))

(assert (=> bs!753500 (= (= (+!986 lt!1617569 lt!1617573) lt!1617569) (= lambda!151961 lambda!151952))))

(declare-fun bs!753501 () Bool)

(assert (= bs!753501 (and b!4415972 d!1337921)))

(assert (=> bs!753501 (= (= (+!986 lt!1617569 lt!1617573) lt!1617829) (= lambda!151961 lambda!151954))))

(declare-fun bs!753502 () Bool)

(assert (= bs!753502 (and b!4415972 d!1337981)))

(assert (=> bs!753502 (not (= lambda!151961 lambda!151957))))

(declare-fun bs!753503 () Bool)

(assert (= bs!753503 (and b!4415972 b!4415922)))

(assert (=> bs!753503 (= (= (+!986 lt!1617569 lt!1617573) lt!1617569) (= lambda!151961 lambda!151951))))

(assert (=> b!4415972 true))

(declare-fun bs!753504 () Bool)

(declare-fun b!4415971 () Bool)

(assert (= bs!753504 (and b!4415971 b!4415921)))

(declare-fun lambda!151962 () Int)

(assert (=> bs!753504 (= (= (+!986 lt!1617569 lt!1617573) lt!1617569) (= lambda!151962 lambda!151952))))

(declare-fun bs!753505 () Bool)

(assert (= bs!753505 (and b!4415971 d!1337921)))

(assert (=> bs!753505 (= (= (+!986 lt!1617569 lt!1617573) lt!1617829) (= lambda!151962 lambda!151954))))

(declare-fun bs!753506 () Bool)

(assert (= bs!753506 (and b!4415971 d!1337981)))

(assert (=> bs!753506 (not (= lambda!151962 lambda!151957))))

(declare-fun bs!753507 () Bool)

(assert (= bs!753507 (and b!4415971 b!4415922)))

(assert (=> bs!753507 (= (= (+!986 lt!1617569 lt!1617573) lt!1617569) (= lambda!151962 lambda!151951))))

(assert (=> bs!753504 (= (= (+!986 lt!1617569 lt!1617573) lt!1617812) (= lambda!151962 lambda!151953))))

(declare-fun bs!753508 () Bool)

(assert (= bs!753508 (and b!4415971 b!4415972)))

(assert (=> bs!753508 (= lambda!151962 lambda!151961)))

(assert (=> b!4415971 true))

(declare-fun lambda!151963 () Int)

(declare-fun lt!1617875 () ListMap!2617)

(assert (=> bs!753504 (= (= lt!1617875 lt!1617569) (= lambda!151963 lambda!151952))))

(assert (=> b!4415971 (= (= lt!1617875 (+!986 lt!1617569 lt!1617573)) (= lambda!151963 lambda!151962))))

(assert (=> bs!753505 (= (= lt!1617875 lt!1617829) (= lambda!151963 lambda!151954))))

(assert (=> bs!753506 (not (= lambda!151963 lambda!151957))))

(assert (=> bs!753507 (= (= lt!1617875 lt!1617569) (= lambda!151963 lambda!151951))))

(assert (=> bs!753504 (= (= lt!1617875 lt!1617812) (= lambda!151963 lambda!151953))))

(assert (=> bs!753508 (= (= lt!1617875 (+!986 lt!1617569 lt!1617573)) (= lambda!151963 lambda!151961))))

(assert (=> b!4415971 true))

(declare-fun bs!753509 () Bool)

(declare-fun d!1337987 () Bool)

(assert (= bs!753509 (and d!1337987 b!4415921)))

(declare-fun lt!1617892 () ListMap!2617)

(declare-fun lambda!151964 () Int)

(assert (=> bs!753509 (= (= lt!1617892 lt!1617569) (= lambda!151964 lambda!151952))))

(declare-fun bs!753510 () Bool)

(assert (= bs!753510 (and d!1337987 b!4415971)))

(assert (=> bs!753510 (= (= lt!1617892 (+!986 lt!1617569 lt!1617573)) (= lambda!151964 lambda!151962))))

(declare-fun bs!753511 () Bool)

(assert (= bs!753511 (and d!1337987 d!1337921)))

(assert (=> bs!753511 (= (= lt!1617892 lt!1617829) (= lambda!151964 lambda!151954))))

(declare-fun bs!753512 () Bool)

(assert (= bs!753512 (and d!1337987 d!1337981)))

(assert (=> bs!753512 (not (= lambda!151964 lambda!151957))))

(declare-fun bs!753513 () Bool)

(assert (= bs!753513 (and d!1337987 b!4415922)))

(assert (=> bs!753513 (= (= lt!1617892 lt!1617569) (= lambda!151964 lambda!151951))))

(assert (=> bs!753510 (= (= lt!1617892 lt!1617875) (= lambda!151964 lambda!151963))))

(assert (=> bs!753509 (= (= lt!1617892 lt!1617812) (= lambda!151964 lambda!151953))))

(declare-fun bs!753514 () Bool)

(assert (= bs!753514 (and d!1337987 b!4415972)))

(assert (=> bs!753514 (= (= lt!1617892 (+!986 lt!1617569 lt!1617573)) (= lambda!151964 lambda!151961))))

(assert (=> d!1337987 true))

(declare-fun b!4415970 () Bool)

(declare-fun e!2749805 () Bool)

(assert (=> b!4415970 (= e!2749805 (invariantList!780 (toList!3374 lt!1617892)))))

(declare-fun bm!307326 () Bool)

(declare-fun call!307331 () Unit!80827)

(assert (=> bm!307326 (= call!307331 (lemmaContainsAllItsOwnKeys!157 (+!986 lt!1617569 lt!1617573)))))

(declare-fun call!307333 () Bool)

(declare-fun bm!307327 () Bool)

(declare-fun c!751840 () Bool)

(assert (=> bm!307327 (= call!307333 (forall!9476 (toList!3374 (+!986 lt!1617569 lt!1617573)) (ite c!751840 lambda!151961 lambda!151963)))))

(declare-fun e!2749804 () ListMap!2617)

(assert (=> b!4415971 (= e!2749804 lt!1617875)))

(declare-fun lt!1617890 () ListMap!2617)

(assert (=> b!4415971 (= lt!1617890 (+!986 (+!986 lt!1617569 lt!1617573) (h!55104 lt!1617568)))))

(assert (=> b!4415971 (= lt!1617875 (addToMapMapFromBucket!347 (t!356507 lt!1617568) (+!986 (+!986 lt!1617569 lt!1617573) (h!55104 lt!1617568))))))

(declare-fun lt!1617880 () Unit!80827)

(assert (=> b!4415971 (= lt!1617880 call!307331)))

(assert (=> b!4415971 (forall!9476 (toList!3374 (+!986 lt!1617569 lt!1617573)) lambda!151962)))

(declare-fun lt!1617888 () Unit!80827)

(assert (=> b!4415971 (= lt!1617888 lt!1617880)))

(assert (=> b!4415971 (forall!9476 (toList!3374 lt!1617890) lambda!151963)))

(declare-fun lt!1617893 () Unit!80827)

(declare-fun Unit!80879 () Unit!80827)

(assert (=> b!4415971 (= lt!1617893 Unit!80879)))

(assert (=> b!4415971 (forall!9476 (t!356507 lt!1617568) lambda!151963)))

(declare-fun lt!1617894 () Unit!80827)

(declare-fun Unit!80880 () Unit!80827)

(assert (=> b!4415971 (= lt!1617894 Unit!80880)))

(declare-fun lt!1617891 () Unit!80827)

(declare-fun Unit!80881 () Unit!80827)

(assert (=> b!4415971 (= lt!1617891 Unit!80881)))

(declare-fun lt!1617876 () Unit!80827)

(assert (=> b!4415971 (= lt!1617876 (forallContained!2067 (toList!3374 lt!1617890) lambda!151963 (h!55104 lt!1617568)))))

(assert (=> b!4415971 (contains!11900 lt!1617890 (_1!27869 (h!55104 lt!1617568)))))

(declare-fun lt!1617885 () Unit!80827)

(declare-fun Unit!80882 () Unit!80827)

(assert (=> b!4415971 (= lt!1617885 Unit!80882)))

(assert (=> b!4415971 (contains!11900 lt!1617875 (_1!27869 (h!55104 lt!1617568)))))

(declare-fun lt!1617889 () Unit!80827)

(declare-fun Unit!80883 () Unit!80827)

(assert (=> b!4415971 (= lt!1617889 Unit!80883)))

(assert (=> b!4415971 (forall!9476 lt!1617568 lambda!151963)))

(declare-fun lt!1617886 () Unit!80827)

(declare-fun Unit!80884 () Unit!80827)

(assert (=> b!4415971 (= lt!1617886 Unit!80884)))

(assert (=> b!4415971 (forall!9476 (toList!3374 lt!1617890) lambda!151963)))

(declare-fun lt!1617882 () Unit!80827)

(declare-fun Unit!80885 () Unit!80827)

(assert (=> b!4415971 (= lt!1617882 Unit!80885)))

(declare-fun lt!1617884 () Unit!80827)

(declare-fun Unit!80886 () Unit!80827)

(assert (=> b!4415971 (= lt!1617884 Unit!80886)))

(declare-fun lt!1617879 () Unit!80827)

(assert (=> b!4415971 (= lt!1617879 (addForallContainsKeyThenBeforeAdding!157 (+!986 lt!1617569 lt!1617573) lt!1617875 (_1!27869 (h!55104 lt!1617568)) (_2!27869 (h!55104 lt!1617568))))))

(assert (=> b!4415971 (forall!9476 (toList!3374 (+!986 lt!1617569 lt!1617573)) lambda!151963)))

(declare-fun lt!1617878 () Unit!80827)

(assert (=> b!4415971 (= lt!1617878 lt!1617879)))

(declare-fun call!307332 () Bool)

(assert (=> b!4415971 call!307332))

(declare-fun lt!1617883 () Unit!80827)

(declare-fun Unit!80887 () Unit!80827)

(assert (=> b!4415971 (= lt!1617883 Unit!80887)))

(declare-fun res!1823963 () Bool)

(assert (=> b!4415971 (= res!1823963 (forall!9476 lt!1617568 lambda!151963))))

(declare-fun e!2749806 () Bool)

(assert (=> b!4415971 (=> (not res!1823963) (not e!2749806))))

(assert (=> b!4415971 e!2749806))

(declare-fun lt!1617895 () Unit!80827)

(declare-fun Unit!80888 () Unit!80827)

(assert (=> b!4415971 (= lt!1617895 Unit!80888)))

(assert (=> d!1337987 e!2749805))

(declare-fun res!1823965 () Bool)

(assert (=> d!1337987 (=> (not res!1823965) (not e!2749805))))

(assert (=> d!1337987 (= res!1823965 (forall!9476 lt!1617568 lambda!151964))))

(assert (=> d!1337987 (= lt!1617892 e!2749804)))

(assert (=> d!1337987 (= c!751840 ((_ is Nil!49445) lt!1617568))))

(assert (=> d!1337987 (noDuplicateKeys!693 lt!1617568)))

(assert (=> d!1337987 (= (addToMapMapFromBucket!347 lt!1617568 (+!986 lt!1617569 lt!1617573)) lt!1617892)))

(declare-fun bm!307328 () Bool)

(assert (=> bm!307328 (= call!307332 (forall!9476 (toList!3374 (+!986 lt!1617569 lt!1617573)) (ite c!751840 lambda!151961 lambda!151963)))))

(assert (=> b!4415972 (= e!2749804 (+!986 lt!1617569 lt!1617573))))

(declare-fun lt!1617881 () Unit!80827)

(assert (=> b!4415972 (= lt!1617881 call!307331)))

(assert (=> b!4415972 call!307332))

(declare-fun lt!1617877 () Unit!80827)

(assert (=> b!4415972 (= lt!1617877 lt!1617881)))

(assert (=> b!4415972 call!307333))

(declare-fun lt!1617887 () Unit!80827)

(declare-fun Unit!80889 () Unit!80827)

(assert (=> b!4415972 (= lt!1617887 Unit!80889)))

(declare-fun b!4415973 () Bool)

(declare-fun res!1823964 () Bool)

(assert (=> b!4415973 (=> (not res!1823964) (not e!2749805))))

(assert (=> b!4415973 (= res!1823964 (forall!9476 (toList!3374 (+!986 lt!1617569 lt!1617573)) lambda!151964))))

(declare-fun b!4415974 () Bool)

(assert (=> b!4415974 (= e!2749806 call!307333)))

(assert (= (and d!1337987 c!751840) b!4415972))

(assert (= (and d!1337987 (not c!751840)) b!4415971))

(assert (= (and b!4415971 res!1823963) b!4415974))

(assert (= (or b!4415972 b!4415971) bm!307326))

(assert (= (or b!4415972 b!4415971) bm!307328))

(assert (= (or b!4415972 b!4415974) bm!307327))

(assert (= (and d!1337987 res!1823965) b!4415973))

(assert (= (and b!4415973 res!1823964) b!4415970))

(declare-fun m!5092215 () Bool)

(assert (=> b!4415973 m!5092215))

(declare-fun m!5092217 () Bool)

(assert (=> bm!307328 m!5092217))

(assert (=> bm!307327 m!5092217))

(declare-fun m!5092219 () Bool)

(assert (=> d!1337987 m!5092219))

(assert (=> d!1337987 m!5092129))

(declare-fun m!5092221 () Bool)

(assert (=> b!4415971 m!5092221))

(declare-fun m!5092223 () Bool)

(assert (=> b!4415971 m!5092223))

(assert (=> b!4415971 m!5091799))

(declare-fun m!5092225 () Bool)

(assert (=> b!4415971 m!5092225))

(assert (=> b!4415971 m!5092221))

(declare-fun m!5092227 () Bool)

(assert (=> b!4415971 m!5092227))

(declare-fun m!5092229 () Bool)

(assert (=> b!4415971 m!5092229))

(declare-fun m!5092231 () Bool)

(assert (=> b!4415971 m!5092231))

(declare-fun m!5092233 () Bool)

(assert (=> b!4415971 m!5092233))

(declare-fun m!5092235 () Bool)

(assert (=> b!4415971 m!5092235))

(declare-fun m!5092237 () Bool)

(assert (=> b!4415971 m!5092237))

(assert (=> b!4415971 m!5092237))

(assert (=> b!4415971 m!5092225))

(declare-fun m!5092239 () Bool)

(assert (=> b!4415971 m!5092239))

(assert (=> b!4415971 m!5091799))

(declare-fun m!5092241 () Bool)

(assert (=> b!4415971 m!5092241))

(declare-fun m!5092243 () Bool)

(assert (=> b!4415970 m!5092243))

(assert (=> bm!307326 m!5091799))

(declare-fun m!5092245 () Bool)

(assert (=> bm!307326 m!5092245))

(assert (=> b!4415761 d!1337987))

(declare-fun d!1337989 () Bool)

(declare-fun e!2749807 () Bool)

(assert (=> d!1337989 e!2749807))

(declare-fun res!1823966 () Bool)

(assert (=> d!1337989 (=> (not res!1823966) (not e!2749807))))

(declare-fun lt!1617899 () ListMap!2617)

(assert (=> d!1337989 (= res!1823966 (contains!11900 lt!1617899 (_1!27869 lt!1617573)))))

(declare-fun lt!1617898 () List!49569)

(assert (=> d!1337989 (= lt!1617899 (ListMap!2618 lt!1617898))))

(declare-fun lt!1617896 () Unit!80827)

(declare-fun lt!1617897 () Unit!80827)

(assert (=> d!1337989 (= lt!1617896 lt!1617897)))

(assert (=> d!1337989 (= (getValueByKey!662 lt!1617898 (_1!27869 lt!1617573)) (Some!10675 (_2!27869 lt!1617573)))))

(assert (=> d!1337989 (= lt!1617897 (lemmaContainsTupThenGetReturnValue!399 lt!1617898 (_1!27869 lt!1617573) (_2!27869 lt!1617573)))))

(assert (=> d!1337989 (= lt!1617898 (insertNoDuplicatedKeys!173 (toList!3374 lt!1617569) (_1!27869 lt!1617573) (_2!27869 lt!1617573)))))

(assert (=> d!1337989 (= (+!986 lt!1617569 lt!1617573) lt!1617899)))

(declare-fun b!4415975 () Bool)

(declare-fun res!1823967 () Bool)

(assert (=> b!4415975 (=> (not res!1823967) (not e!2749807))))

(assert (=> b!4415975 (= res!1823967 (= (getValueByKey!662 (toList!3374 lt!1617899) (_1!27869 lt!1617573)) (Some!10675 (_2!27869 lt!1617573))))))

(declare-fun b!4415976 () Bool)

(assert (=> b!4415976 (= e!2749807 (contains!11904 (toList!3374 lt!1617899) lt!1617573))))

(assert (= (and d!1337989 res!1823966) b!4415975))

(assert (= (and b!4415975 res!1823967) b!4415976))

(declare-fun m!5092247 () Bool)

(assert (=> d!1337989 m!5092247))

(declare-fun m!5092249 () Bool)

(assert (=> d!1337989 m!5092249))

(declare-fun m!5092251 () Bool)

(assert (=> d!1337989 m!5092251))

(declare-fun m!5092253 () Bool)

(assert (=> d!1337989 m!5092253))

(declare-fun m!5092255 () Bool)

(assert (=> b!4415975 m!5092255))

(declare-fun m!5092257 () Bool)

(assert (=> b!4415976 m!5092257))

(assert (=> b!4415761 d!1337989))

(declare-fun bs!753515 () Bool)

(declare-fun b!4415979 () Bool)

(assert (= bs!753515 (and b!4415979 b!4415921)))

(declare-fun lambda!151965 () Int)

(assert (=> bs!753515 (= lambda!151965 lambda!151952)))

(declare-fun bs!753516 () Bool)

(assert (= bs!753516 (and b!4415979 b!4415971)))

(assert (=> bs!753516 (= (= lt!1617569 (+!986 lt!1617569 lt!1617573)) (= lambda!151965 lambda!151962))))

(declare-fun bs!753517 () Bool)

(assert (= bs!753517 (and b!4415979 d!1337921)))

(assert (=> bs!753517 (= (= lt!1617569 lt!1617829) (= lambda!151965 lambda!151954))))

(declare-fun bs!753518 () Bool)

(assert (= bs!753518 (and b!4415979 d!1337981)))

(assert (=> bs!753518 (not (= lambda!151965 lambda!151957))))

(declare-fun bs!753519 () Bool)

(assert (= bs!753519 (and b!4415979 d!1337987)))

(assert (=> bs!753519 (= (= lt!1617569 lt!1617892) (= lambda!151965 lambda!151964))))

(declare-fun bs!753520 () Bool)

(assert (= bs!753520 (and b!4415979 b!4415922)))

(assert (=> bs!753520 (= lambda!151965 lambda!151951)))

(assert (=> bs!753516 (= (= lt!1617569 lt!1617875) (= lambda!151965 lambda!151963))))

(assert (=> bs!753515 (= (= lt!1617569 lt!1617812) (= lambda!151965 lambda!151953))))

(declare-fun bs!753521 () Bool)

(assert (= bs!753521 (and b!4415979 b!4415972)))

(assert (=> bs!753521 (= (= lt!1617569 (+!986 lt!1617569 lt!1617573)) (= lambda!151965 lambda!151961))))

(assert (=> b!4415979 true))

(declare-fun bs!753522 () Bool)

(declare-fun b!4415978 () Bool)

(assert (= bs!753522 (and b!4415978 b!4415921)))

(declare-fun lambda!151966 () Int)

(assert (=> bs!753522 (= lambda!151966 lambda!151952)))

(declare-fun bs!753523 () Bool)

(assert (= bs!753523 (and b!4415978 b!4415971)))

(assert (=> bs!753523 (= (= lt!1617569 (+!986 lt!1617569 lt!1617573)) (= lambda!151966 lambda!151962))))

(declare-fun bs!753524 () Bool)

(assert (= bs!753524 (and b!4415978 d!1337921)))

(assert (=> bs!753524 (= (= lt!1617569 lt!1617829) (= lambda!151966 lambda!151954))))

(declare-fun bs!753525 () Bool)

(assert (= bs!753525 (and b!4415978 d!1337981)))

(assert (=> bs!753525 (not (= lambda!151966 lambda!151957))))

(declare-fun bs!753526 () Bool)

(assert (= bs!753526 (and b!4415978 d!1337987)))

(assert (=> bs!753526 (= (= lt!1617569 lt!1617892) (= lambda!151966 lambda!151964))))

(declare-fun bs!753527 () Bool)

(assert (= bs!753527 (and b!4415978 b!4415979)))

(assert (=> bs!753527 (= lambda!151966 lambda!151965)))

(declare-fun bs!753528 () Bool)

(assert (= bs!753528 (and b!4415978 b!4415922)))

(assert (=> bs!753528 (= lambda!151966 lambda!151951)))

(assert (=> bs!753523 (= (= lt!1617569 lt!1617875) (= lambda!151966 lambda!151963))))

(assert (=> bs!753522 (= (= lt!1617569 lt!1617812) (= lambda!151966 lambda!151953))))

(declare-fun bs!753529 () Bool)

(assert (= bs!753529 (and b!4415978 b!4415972)))

(assert (=> bs!753529 (= (= lt!1617569 (+!986 lt!1617569 lt!1617573)) (= lambda!151966 lambda!151961))))

(assert (=> b!4415978 true))

(declare-fun lt!1617900 () ListMap!2617)

(declare-fun lambda!151967 () Int)

(assert (=> bs!753522 (= (= lt!1617900 lt!1617569) (= lambda!151967 lambda!151952))))

(assert (=> bs!753523 (= (= lt!1617900 (+!986 lt!1617569 lt!1617573)) (= lambda!151967 lambda!151962))))

(assert (=> bs!753524 (= (= lt!1617900 lt!1617829) (= lambda!151967 lambda!151954))))

(assert (=> bs!753525 (not (= lambda!151967 lambda!151957))))

(assert (=> bs!753526 (= (= lt!1617900 lt!1617892) (= lambda!151967 lambda!151964))))

(assert (=> bs!753527 (= (= lt!1617900 lt!1617569) (= lambda!151967 lambda!151965))))

(assert (=> bs!753523 (= (= lt!1617900 lt!1617875) (= lambda!151967 lambda!151963))))

(assert (=> bs!753522 (= (= lt!1617900 lt!1617812) (= lambda!151967 lambda!151953))))

(assert (=> bs!753529 (= (= lt!1617900 (+!986 lt!1617569 lt!1617573)) (= lambda!151967 lambda!151961))))

(assert (=> b!4415978 (= (= lt!1617900 lt!1617569) (= lambda!151967 lambda!151966))))

(assert (=> bs!753528 (= (= lt!1617900 lt!1617569) (= lambda!151967 lambda!151951))))

(assert (=> b!4415978 true))

(declare-fun bs!753530 () Bool)

(declare-fun d!1337991 () Bool)

(assert (= bs!753530 (and d!1337991 b!4415921)))

(declare-fun lt!1617917 () ListMap!2617)

(declare-fun lambda!151968 () Int)

(assert (=> bs!753530 (= (= lt!1617917 lt!1617569) (= lambda!151968 lambda!151952))))

(declare-fun bs!753531 () Bool)

(assert (= bs!753531 (and d!1337991 b!4415978)))

(assert (=> bs!753531 (= (= lt!1617917 lt!1617900) (= lambda!151968 lambda!151967))))

(declare-fun bs!753532 () Bool)

(assert (= bs!753532 (and d!1337991 b!4415971)))

(assert (=> bs!753532 (= (= lt!1617917 (+!986 lt!1617569 lt!1617573)) (= lambda!151968 lambda!151962))))

(declare-fun bs!753533 () Bool)

(assert (= bs!753533 (and d!1337991 d!1337921)))

(assert (=> bs!753533 (= (= lt!1617917 lt!1617829) (= lambda!151968 lambda!151954))))

(declare-fun bs!753534 () Bool)

(assert (= bs!753534 (and d!1337991 d!1337981)))

(assert (=> bs!753534 (not (= lambda!151968 lambda!151957))))

(declare-fun bs!753535 () Bool)

(assert (= bs!753535 (and d!1337991 d!1337987)))

(assert (=> bs!753535 (= (= lt!1617917 lt!1617892) (= lambda!151968 lambda!151964))))

(declare-fun bs!753536 () Bool)

(assert (= bs!753536 (and d!1337991 b!4415979)))

(assert (=> bs!753536 (= (= lt!1617917 lt!1617569) (= lambda!151968 lambda!151965))))

(assert (=> bs!753532 (= (= lt!1617917 lt!1617875) (= lambda!151968 lambda!151963))))

(assert (=> bs!753530 (= (= lt!1617917 lt!1617812) (= lambda!151968 lambda!151953))))

(declare-fun bs!753537 () Bool)

(assert (= bs!753537 (and d!1337991 b!4415972)))

(assert (=> bs!753537 (= (= lt!1617917 (+!986 lt!1617569 lt!1617573)) (= lambda!151968 lambda!151961))))

(assert (=> bs!753531 (= (= lt!1617917 lt!1617569) (= lambda!151968 lambda!151966))))

(declare-fun bs!753538 () Bool)

(assert (= bs!753538 (and d!1337991 b!4415922)))

(assert (=> bs!753538 (= (= lt!1617917 lt!1617569) (= lambda!151968 lambda!151951))))

(assert (=> d!1337991 true))

(declare-fun b!4415977 () Bool)

(declare-fun e!2749809 () Bool)

(assert (=> b!4415977 (= e!2749809 (invariantList!780 (toList!3374 lt!1617917)))))

(declare-fun bm!307329 () Bool)

(declare-fun call!307334 () Unit!80827)

(assert (=> bm!307329 (= call!307334 (lemmaContainsAllItsOwnKeys!157 lt!1617569))))

(declare-fun call!307336 () Bool)

(declare-fun bm!307330 () Bool)

(declare-fun c!751841 () Bool)

(assert (=> bm!307330 (= call!307336 (forall!9476 (toList!3374 lt!1617569) (ite c!751841 lambda!151965 lambda!151967)))))

(declare-fun e!2749808 () ListMap!2617)

(assert (=> b!4415978 (= e!2749808 lt!1617900)))

(declare-fun lt!1617915 () ListMap!2617)

(assert (=> b!4415978 (= lt!1617915 (+!986 lt!1617569 (h!55104 newBucket!194)))))

(assert (=> b!4415978 (= lt!1617900 (addToMapMapFromBucket!347 (t!356507 newBucket!194) (+!986 lt!1617569 (h!55104 newBucket!194))))))

(declare-fun lt!1617905 () Unit!80827)

(assert (=> b!4415978 (= lt!1617905 call!307334)))

(assert (=> b!4415978 (forall!9476 (toList!3374 lt!1617569) lambda!151966)))

(declare-fun lt!1617913 () Unit!80827)

(assert (=> b!4415978 (= lt!1617913 lt!1617905)))

(assert (=> b!4415978 (forall!9476 (toList!3374 lt!1617915) lambda!151967)))

(declare-fun lt!1617918 () Unit!80827)

(declare-fun Unit!80890 () Unit!80827)

(assert (=> b!4415978 (= lt!1617918 Unit!80890)))

(assert (=> b!4415978 (forall!9476 (t!356507 newBucket!194) lambda!151967)))

(declare-fun lt!1617919 () Unit!80827)

(declare-fun Unit!80891 () Unit!80827)

(assert (=> b!4415978 (= lt!1617919 Unit!80891)))

(declare-fun lt!1617916 () Unit!80827)

(declare-fun Unit!80892 () Unit!80827)

(assert (=> b!4415978 (= lt!1617916 Unit!80892)))

(declare-fun lt!1617901 () Unit!80827)

(assert (=> b!4415978 (= lt!1617901 (forallContained!2067 (toList!3374 lt!1617915) lambda!151967 (h!55104 newBucket!194)))))

(assert (=> b!4415978 (contains!11900 lt!1617915 (_1!27869 (h!55104 newBucket!194)))))

(declare-fun lt!1617910 () Unit!80827)

(declare-fun Unit!80893 () Unit!80827)

(assert (=> b!4415978 (= lt!1617910 Unit!80893)))

(assert (=> b!4415978 (contains!11900 lt!1617900 (_1!27869 (h!55104 newBucket!194)))))

(declare-fun lt!1617914 () Unit!80827)

(declare-fun Unit!80894 () Unit!80827)

(assert (=> b!4415978 (= lt!1617914 Unit!80894)))

(assert (=> b!4415978 (forall!9476 newBucket!194 lambda!151967)))

(declare-fun lt!1617911 () Unit!80827)

(declare-fun Unit!80895 () Unit!80827)

(assert (=> b!4415978 (= lt!1617911 Unit!80895)))

(assert (=> b!4415978 (forall!9476 (toList!3374 lt!1617915) lambda!151967)))

(declare-fun lt!1617907 () Unit!80827)

(declare-fun Unit!80896 () Unit!80827)

(assert (=> b!4415978 (= lt!1617907 Unit!80896)))

(declare-fun lt!1617909 () Unit!80827)

(declare-fun Unit!80897 () Unit!80827)

(assert (=> b!4415978 (= lt!1617909 Unit!80897)))

(declare-fun lt!1617904 () Unit!80827)

(assert (=> b!4415978 (= lt!1617904 (addForallContainsKeyThenBeforeAdding!157 lt!1617569 lt!1617900 (_1!27869 (h!55104 newBucket!194)) (_2!27869 (h!55104 newBucket!194))))))

(assert (=> b!4415978 (forall!9476 (toList!3374 lt!1617569) lambda!151967)))

(declare-fun lt!1617903 () Unit!80827)

(assert (=> b!4415978 (= lt!1617903 lt!1617904)))

(declare-fun call!307335 () Bool)

(assert (=> b!4415978 call!307335))

(declare-fun lt!1617908 () Unit!80827)

(declare-fun Unit!80898 () Unit!80827)

(assert (=> b!4415978 (= lt!1617908 Unit!80898)))

(declare-fun res!1823968 () Bool)

(assert (=> b!4415978 (= res!1823968 (forall!9476 newBucket!194 lambda!151967))))

(declare-fun e!2749810 () Bool)

(assert (=> b!4415978 (=> (not res!1823968) (not e!2749810))))

(assert (=> b!4415978 e!2749810))

(declare-fun lt!1617920 () Unit!80827)

(declare-fun Unit!80899 () Unit!80827)

(assert (=> b!4415978 (= lt!1617920 Unit!80899)))

(assert (=> d!1337991 e!2749809))

(declare-fun res!1823970 () Bool)

(assert (=> d!1337991 (=> (not res!1823970) (not e!2749809))))

(assert (=> d!1337991 (= res!1823970 (forall!9476 newBucket!194 lambda!151968))))

(assert (=> d!1337991 (= lt!1617917 e!2749808)))

(assert (=> d!1337991 (= c!751841 ((_ is Nil!49445) newBucket!194))))

(assert (=> d!1337991 (noDuplicateKeys!693 newBucket!194)))

(assert (=> d!1337991 (= (addToMapMapFromBucket!347 newBucket!194 lt!1617569) lt!1617917)))

(declare-fun bm!307331 () Bool)

(assert (=> bm!307331 (= call!307335 (forall!9476 (toList!3374 lt!1617569) (ite c!751841 lambda!151965 lambda!151967)))))

(assert (=> b!4415979 (= e!2749808 lt!1617569)))

(declare-fun lt!1617906 () Unit!80827)

(assert (=> b!4415979 (= lt!1617906 call!307334)))

(assert (=> b!4415979 call!307335))

(declare-fun lt!1617902 () Unit!80827)

(assert (=> b!4415979 (= lt!1617902 lt!1617906)))

(assert (=> b!4415979 call!307336))

(declare-fun lt!1617912 () Unit!80827)

(declare-fun Unit!80900 () Unit!80827)

(assert (=> b!4415979 (= lt!1617912 Unit!80900)))

(declare-fun b!4415980 () Bool)

(declare-fun res!1823969 () Bool)

(assert (=> b!4415980 (=> (not res!1823969) (not e!2749809))))

(assert (=> b!4415980 (= res!1823969 (forall!9476 (toList!3374 lt!1617569) lambda!151968))))

(declare-fun b!4415981 () Bool)

(assert (=> b!4415981 (= e!2749810 call!307336)))

(assert (= (and d!1337991 c!751841) b!4415979))

(assert (= (and d!1337991 (not c!751841)) b!4415978))

(assert (= (and b!4415978 res!1823968) b!4415981))

(assert (= (or b!4415979 b!4415978) bm!307329))

(assert (= (or b!4415979 b!4415978) bm!307331))

(assert (= (or b!4415979 b!4415981) bm!307330))

(assert (= (and d!1337991 res!1823970) b!4415980))

(assert (= (and b!4415980 res!1823969) b!4415977))

(declare-fun m!5092259 () Bool)

(assert (=> b!4415980 m!5092259))

(declare-fun m!5092261 () Bool)

(assert (=> bm!307331 m!5092261))

(assert (=> bm!307330 m!5092261))

(declare-fun m!5092263 () Bool)

(assert (=> d!1337991 m!5092263))

(assert (=> d!1337991 m!5091821))

(declare-fun m!5092265 () Bool)

(assert (=> b!4415978 m!5092265))

(declare-fun m!5092267 () Bool)

(assert (=> b!4415978 m!5092267))

(declare-fun m!5092269 () Bool)

(assert (=> b!4415978 m!5092269))

(assert (=> b!4415978 m!5092265))

(declare-fun m!5092271 () Bool)

(assert (=> b!4415978 m!5092271))

(declare-fun m!5092273 () Bool)

(assert (=> b!4415978 m!5092273))

(declare-fun m!5092275 () Bool)

(assert (=> b!4415978 m!5092275))

(declare-fun m!5092277 () Bool)

(assert (=> b!4415978 m!5092277))

(declare-fun m!5092279 () Bool)

(assert (=> b!4415978 m!5092279))

(declare-fun m!5092281 () Bool)

(assert (=> b!4415978 m!5092281))

(assert (=> b!4415978 m!5092281))

(assert (=> b!4415978 m!5092269))

(declare-fun m!5092283 () Bool)

(assert (=> b!4415978 m!5092283))

(declare-fun m!5092285 () Bool)

(assert (=> b!4415978 m!5092285))

(declare-fun m!5092287 () Bool)

(assert (=> b!4415977 m!5092287))

(assert (=> bm!307329 m!5092155))

(assert (=> b!4415750 d!1337991))

(declare-fun bs!753539 () Bool)

(declare-fun d!1337993 () Bool)

(assert (= bs!753539 (and d!1337993 start!430006)))

(declare-fun lambda!151969 () Int)

(assert (=> bs!753539 (= lambda!151969 lambda!151868)))

(declare-fun bs!753540 () Bool)

(assert (= bs!753540 (and d!1337993 d!1337909)))

(assert (=> bs!753540 (not (= lambda!151969 lambda!151877))))

(declare-fun bs!753541 () Bool)

(assert (= bs!753541 (and d!1337993 d!1337985)))

(assert (=> bs!753541 (= lambda!151969 lambda!151960)))

(declare-fun lt!1617921 () ListMap!2617)

(assert (=> d!1337993 (invariantList!780 (toList!3374 lt!1617921))))

(declare-fun e!2749811 () ListMap!2617)

(assert (=> d!1337993 (= lt!1617921 e!2749811)))

(declare-fun c!751842 () Bool)

(assert (=> d!1337993 (= c!751842 ((_ is Cons!49446) (toList!3373 lt!1617565)))))

(assert (=> d!1337993 (forall!9474 (toList!3373 lt!1617565) lambda!151969)))

(assert (=> d!1337993 (= (extractMap!754 (toList!3373 lt!1617565)) lt!1617921)))

(declare-fun b!4415982 () Bool)

(assert (=> b!4415982 (= e!2749811 (addToMapMapFromBucket!347 (_2!27870 (h!55105 (toList!3373 lt!1617565))) (extractMap!754 (t!356508 (toList!3373 lt!1617565)))))))

(declare-fun b!4415983 () Bool)

(assert (=> b!4415983 (= e!2749811 (ListMap!2618 Nil!49445))))

(assert (= (and d!1337993 c!751842) b!4415982))

(assert (= (and d!1337993 (not c!751842)) b!4415983))

(declare-fun m!5092289 () Bool)

(assert (=> d!1337993 m!5092289))

(declare-fun m!5092291 () Bool)

(assert (=> d!1337993 m!5092291))

(declare-fun m!5092293 () Bool)

(assert (=> b!4415982 m!5092293))

(assert (=> b!4415982 m!5092293))

(declare-fun m!5092295 () Bool)

(assert (=> b!4415982 m!5092295))

(assert (=> b!4415750 d!1337993))

(declare-fun bs!753542 () Bool)

(declare-fun d!1337995 () Bool)

(assert (= bs!753542 (and d!1337995 start!430006)))

(declare-fun lambda!151970 () Int)

(assert (=> bs!753542 (= lambda!151970 lambda!151868)))

(declare-fun bs!753543 () Bool)

(assert (= bs!753543 (and d!1337995 d!1337909)))

(assert (=> bs!753543 (not (= lambda!151970 lambda!151877))))

(declare-fun bs!753544 () Bool)

(assert (= bs!753544 (and d!1337995 d!1337985)))

(assert (=> bs!753544 (= lambda!151970 lambda!151960)))

(declare-fun bs!753545 () Bool)

(assert (= bs!753545 (and d!1337995 d!1337993)))

(assert (=> bs!753545 (= lambda!151970 lambda!151969)))

(declare-fun lt!1617922 () ListMap!2617)

(assert (=> d!1337995 (invariantList!780 (toList!3374 lt!1617922))))

(declare-fun e!2749812 () ListMap!2617)

(assert (=> d!1337995 (= lt!1617922 e!2749812)))

(declare-fun c!751843 () Bool)

(assert (=> d!1337995 (= c!751843 ((_ is Cons!49446) (t!356508 (toList!3373 lm!1616))))))

(assert (=> d!1337995 (forall!9474 (t!356508 (toList!3373 lm!1616)) lambda!151970)))

(assert (=> d!1337995 (= (extractMap!754 (t!356508 (toList!3373 lm!1616))) lt!1617922)))

(declare-fun b!4415984 () Bool)

(assert (=> b!4415984 (= e!2749812 (addToMapMapFromBucket!347 (_2!27870 (h!55105 (t!356508 (toList!3373 lm!1616)))) (extractMap!754 (t!356508 (t!356508 (toList!3373 lm!1616))))))))

(declare-fun b!4415985 () Bool)

(assert (=> b!4415985 (= e!2749812 (ListMap!2618 Nil!49445))))

(assert (= (and d!1337995 c!751843) b!4415984))

(assert (= (and d!1337995 (not c!751843)) b!4415985))

(declare-fun m!5092297 () Bool)

(assert (=> d!1337995 m!5092297))

(declare-fun m!5092299 () Bool)

(assert (=> d!1337995 m!5092299))

(declare-fun m!5092301 () Bool)

(assert (=> b!4415984 m!5092301))

(assert (=> b!4415984 m!5092301))

(declare-fun m!5092303 () Bool)

(assert (=> b!4415984 m!5092303))

(assert (=> b!4415750 d!1337995))

(declare-fun d!1337997 () Bool)

(declare-fun res!1823971 () Bool)

(declare-fun e!2749813 () Bool)

(assert (=> d!1337997 (=> res!1823971 e!2749813)))

(assert (=> d!1337997 (= res!1823971 ((_ is Nil!49446) (toList!3373 lt!1617565)))))

(assert (=> d!1337997 (= (forall!9474 (toList!3373 lt!1617565) lambda!151868) e!2749813)))

(declare-fun b!4415986 () Bool)

(declare-fun e!2749814 () Bool)

(assert (=> b!4415986 (= e!2749813 e!2749814)))

(declare-fun res!1823972 () Bool)

(assert (=> b!4415986 (=> (not res!1823972) (not e!2749814))))

(assert (=> b!4415986 (= res!1823972 (dynLambda!20811 lambda!151868 (h!55105 (toList!3373 lt!1617565))))))

(declare-fun b!4415987 () Bool)

(assert (=> b!4415987 (= e!2749814 (forall!9474 (t!356508 (toList!3373 lt!1617565)) lambda!151868))))

(assert (= (and d!1337997 (not res!1823971)) b!4415986))

(assert (= (and b!4415986 res!1823972) b!4415987))

(declare-fun b_lambda!142195 () Bool)

(assert (=> (not b_lambda!142195) (not b!4415986)))

(declare-fun m!5092305 () Bool)

(assert (=> b!4415986 m!5092305))

(declare-fun m!5092307 () Bool)

(assert (=> b!4415987 m!5092307))

(assert (=> b!4415760 d!1337997))

(declare-fun d!1337999 () Bool)

(declare-fun e!2749817 () Bool)

(assert (=> d!1337999 e!2749817))

(declare-fun res!1823978 () Bool)

(assert (=> d!1337999 (=> (not res!1823978) (not e!2749817))))

(declare-fun lt!1617934 () ListLongMap!2023)

(assert (=> d!1337999 (= res!1823978 (contains!11899 lt!1617934 (_1!27870 lt!1617575)))))

(declare-fun lt!1617933 () List!49570)

(assert (=> d!1337999 (= lt!1617934 (ListLongMap!2024 lt!1617933))))

(declare-fun lt!1617932 () Unit!80827)

(declare-fun lt!1617931 () Unit!80827)

(assert (=> d!1337999 (= lt!1617932 lt!1617931)))

(assert (=> d!1337999 (= (getValueByKey!661 lt!1617933 (_1!27870 lt!1617575)) (Some!10674 (_2!27870 lt!1617575)))))

(declare-fun lemmaContainsTupThenGetReturnValue!400 (List!49570 (_ BitVec 64) List!49569) Unit!80827)

(assert (=> d!1337999 (= lt!1617931 (lemmaContainsTupThenGetReturnValue!400 lt!1617933 (_1!27870 lt!1617575) (_2!27870 lt!1617575)))))

(declare-fun insertStrictlySorted!235 (List!49570 (_ BitVec 64) List!49569) List!49570)

(assert (=> d!1337999 (= lt!1617933 (insertStrictlySorted!235 (toList!3373 lm!1616) (_1!27870 lt!1617575) (_2!27870 lt!1617575)))))

(assert (=> d!1337999 (= (+!987 lm!1616 lt!1617575) lt!1617934)))

(declare-fun b!4415992 () Bool)

(declare-fun res!1823977 () Bool)

(assert (=> b!4415992 (=> (not res!1823977) (not e!2749817))))

(assert (=> b!4415992 (= res!1823977 (= (getValueByKey!661 (toList!3373 lt!1617934) (_1!27870 lt!1617575)) (Some!10674 (_2!27870 lt!1617575))))))

(declare-fun b!4415993 () Bool)

(declare-fun contains!11906 (List!49570 tuple2!49152) Bool)

(assert (=> b!4415993 (= e!2749817 (contains!11906 (toList!3373 lt!1617934) lt!1617575))))

(assert (= (and d!1337999 res!1823978) b!4415992))

(assert (= (and b!4415992 res!1823977) b!4415993))

(declare-fun m!5092309 () Bool)

(assert (=> d!1337999 m!5092309))

(declare-fun m!5092311 () Bool)

(assert (=> d!1337999 m!5092311))

(declare-fun m!5092313 () Bool)

(assert (=> d!1337999 m!5092313))

(declare-fun m!5092315 () Bool)

(assert (=> d!1337999 m!5092315))

(declare-fun m!5092317 () Bool)

(assert (=> b!4415992 m!5092317))

(declare-fun m!5092319 () Bool)

(assert (=> b!4415993 m!5092319))

(assert (=> b!4415760 d!1337999))

(declare-fun d!1338001 () Bool)

(assert (=> d!1338001 (forall!9474 (toList!3373 (+!987 lm!1616 (tuple2!49153 hash!366 newBucket!194))) lambda!151868)))

(declare-fun lt!1617937 () Unit!80827)

(declare-fun choose!27792 (ListLongMap!2023 Int (_ BitVec 64) List!49569) Unit!80827)

(assert (=> d!1338001 (= lt!1617937 (choose!27792 lm!1616 lambda!151868 hash!366 newBucket!194))))

(declare-fun e!2749820 () Bool)

(assert (=> d!1338001 e!2749820))

(declare-fun res!1823981 () Bool)

(assert (=> d!1338001 (=> (not res!1823981) (not e!2749820))))

(assert (=> d!1338001 (= res!1823981 (forall!9474 (toList!3373 lm!1616) lambda!151868))))

(assert (=> d!1338001 (= (addValidProp!337 lm!1616 lambda!151868 hash!366 newBucket!194) lt!1617937)))

(declare-fun b!4415997 () Bool)

(assert (=> b!4415997 (= e!2749820 (dynLambda!20811 lambda!151868 (tuple2!49153 hash!366 newBucket!194)))))

(assert (= (and d!1338001 res!1823981) b!4415997))

(declare-fun b_lambda!142197 () Bool)

(assert (=> (not b_lambda!142197) (not b!4415997)))

(declare-fun m!5092321 () Bool)

(assert (=> d!1338001 m!5092321))

(declare-fun m!5092323 () Bool)

(assert (=> d!1338001 m!5092323))

(declare-fun m!5092325 () Bool)

(assert (=> d!1338001 m!5092325))

(assert (=> d!1338001 m!5091837))

(declare-fun m!5092327 () Bool)

(assert (=> b!4415997 m!5092327))

(assert (=> b!4415760 d!1338001))

(declare-fun d!1338003 () Bool)

(assert (=> d!1338003 (= (tail!7181 (toList!3373 lt!1617565)) (t!356508 (toList!3373 lt!1617565)))))

(assert (=> b!4415749 d!1338003))

(declare-fun b!4416002 () Bool)

(declare-fun e!2749823 () Bool)

(declare-fun tp!1332598 () Bool)

(declare-fun tp!1332599 () Bool)

(assert (=> b!4416002 (= e!2749823 (and tp!1332598 tp!1332599))))

(assert (=> b!4415743 (= tp!1332584 e!2749823)))

(assert (= (and b!4415743 ((_ is Cons!49446) (toList!3373 lm!1616))) b!4416002))

(declare-fun e!2749826 () Bool)

(declare-fun b!4416007 () Bool)

(declare-fun tp!1332602 () Bool)

(assert (=> b!4416007 (= e!2749826 (and tp_is_empty!26019 tp_is_empty!26017 tp!1332602))))

(assert (=> b!4415744 (= tp!1332583 e!2749826)))

(assert (= (and b!4415744 ((_ is Cons!49445) (t!356507 newBucket!194))) b!4416007))

(declare-fun b_lambda!142199 () Bool)

(assert (= b_lambda!142197 (or start!430006 b_lambda!142199)))

(declare-fun bs!753546 () Bool)

(declare-fun d!1338005 () Bool)

(assert (= bs!753546 (and d!1338005 start!430006)))

(assert (=> bs!753546 (= (dynLambda!20811 lambda!151868 (tuple2!49153 hash!366 newBucket!194)) (noDuplicateKeys!693 (_2!27870 (tuple2!49153 hash!366 newBucket!194))))))

(declare-fun m!5092329 () Bool)

(assert (=> bs!753546 m!5092329))

(assert (=> b!4415997 d!1338005))

(declare-fun b_lambda!142201 () Bool)

(assert (= b_lambda!142195 (or start!430006 b_lambda!142201)))

(declare-fun bs!753547 () Bool)

(declare-fun d!1338007 () Bool)

(assert (= bs!753547 (and d!1338007 start!430006)))

(assert (=> bs!753547 (= (dynLambda!20811 lambda!151868 (h!55105 (toList!3373 lt!1617565))) (noDuplicateKeys!693 (_2!27870 (h!55105 (toList!3373 lt!1617565)))))))

(declare-fun m!5092331 () Bool)

(assert (=> bs!753547 m!5092331))

(assert (=> b!4415986 d!1338007))

(declare-fun b_lambda!142203 () Bool)

(assert (= b_lambda!142177 (or start!430006 b_lambda!142203)))

(declare-fun bs!753548 () Bool)

(declare-fun d!1338009 () Bool)

(assert (= bs!753548 (and d!1338009 start!430006)))

(assert (=> bs!753548 (= (dynLambda!20811 lambda!151868 (h!55105 (t!356508 (toList!3373 lm!1616)))) (noDuplicateKeys!693 (_2!27870 (h!55105 (t!356508 (toList!3373 lm!1616))))))))

(declare-fun m!5092333 () Bool)

(assert (=> bs!753548 m!5092333))

(assert (=> b!4415801 d!1338009))

(declare-fun b_lambda!142205 () Bool)

(assert (= b_lambda!142179 (or start!430006 b_lambda!142205)))

(declare-fun bs!753549 () Bool)

(declare-fun d!1338011 () Bool)

(assert (= bs!753549 (and d!1338011 start!430006)))

(assert (=> bs!753549 (= (dynLambda!20811 lambda!151868 (h!55105 (toList!3373 lm!1616))) (noDuplicateKeys!693 (_2!27870 (h!55105 (toList!3373 lm!1616)))))))

(declare-fun m!5092335 () Bool)

(assert (=> bs!753549 m!5092335))

(assert (=> b!4415803 d!1338011))

(check-sat (not d!1337987) (not bm!307327) (not bm!307321) (not bs!753549) (not b!4415923) (not b!4415993) (not b!4415982) (not bm!307322) (not b!4415971) (not bs!753548) (not bm!307330) (not d!1337993) (not b!4415980) (not bm!307326) (not b!4415796) (not b!4416007) (not b!4415976) (not b!4415992) (not bm!307331) (not b!4415802) (not d!1337977) (not b!4415932) (not b!4415956) (not bm!307328) (not b!4415959) (not d!1337985) (not d!1337975) (not bs!753547) (not d!1337911) (not bs!753546) (not b_lambda!142201) (not d!1337981) (not d!1337909) (not b!4415984) tp_is_empty!26017 (not b!4415970) (not d!1337995) (not d!1337913) (not b!4415977) tp_is_empty!26019 (not d!1337905) (not b!4415978) (not b!4415804) (not b!4415921) (not d!1338001) (not d!1337999) (not d!1337979) (not bm!307320) (not d!1337921) (not b!4415931) (not b_lambda!142199) (not b_lambda!142205) (not d!1337991) (not d!1337919) (not b!4416002) (not b!4415975) (not b!4415968) (not b!4415961) (not b_lambda!142203) (not d!1337989) (not b!4415962) (not b!4415973) (not bm!307329) (not b!4415963) (not d!1337973) (not b!4415955) (not b!4415987) (not b!4415785) (not d!1337983) (not b!4415920) (not bm!307325) (not b!4415960) (not b!4415794) (not b!4415784))
(check-sat)
