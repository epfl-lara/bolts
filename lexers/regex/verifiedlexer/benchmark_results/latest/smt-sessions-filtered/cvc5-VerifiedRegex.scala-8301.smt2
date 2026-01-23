; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!431074 () Bool)

(assert start!431074)

(declare-fun b!4421806 () Bool)

(declare-datatypes ((Unit!81433 0))(
  ( (Unit!81434) )
))
(declare-fun e!2753227 () Unit!81433)

(declare-fun Unit!81435 () Unit!81433)

(assert (=> b!4421806 (= e!2753227 Unit!81435)))

(declare-datatypes ((K!10908 0))(
  ( (K!10909 (val!16997 Int)) )
))
(declare-fun key!3717 () K!10908)

(declare-fun lt!1621714 () Unit!81433)

(declare-datatypes ((V!11154 0))(
  ( (V!11155 (val!16998 Int)) )
))
(declare-datatypes ((tuple2!49314 0))(
  ( (tuple2!49315 (_1!27951 K!10908) (_2!27951 V!11154)) )
))
(declare-datatypes ((List!49668 0))(
  ( (Nil!49544) (Cons!49544 (h!55221 tuple2!49314) (t!356606 List!49668)) )
))
(declare-datatypes ((tuple2!49316 0))(
  ( (tuple2!49317 (_1!27952 (_ BitVec 64)) (_2!27952 List!49668)) )
))
(declare-datatypes ((List!49669 0))(
  ( (Nil!49545) (Cons!49545 (h!55222 tuple2!49316) (t!356607 List!49669)) )
))
(declare-datatypes ((ListLongMap!2105 0))(
  ( (ListLongMap!2106 (toList!3455 List!49669)) )
))
(declare-fun lm!1616 () ListLongMap!2105)

(declare-datatypes ((Hashable!5128 0))(
  ( (HashableExt!5127 (__x!30831 Int)) )
))
(declare-fun hashF!1220 () Hashable!5128)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!21 (ListLongMap!2105 K!10908 Hashable!5128) Unit!81433)

(assert (=> b!4421806 (= lt!1621714 (lemmaExtractTailMapContainsThenExtractMapDoes!21 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4421806 false))

(declare-fun b!4421808 () Bool)

(declare-fun e!2753223 () Bool)

(declare-fun e!2753222 () Bool)

(assert (=> b!4421808 (= e!2753223 e!2753222)))

(declare-fun res!1827529 () Bool)

(assert (=> b!4421808 (=> res!1827529 e!2753222)))

(declare-fun lt!1621715 () tuple2!49316)

(declare-fun head!9193 (ListLongMap!2105) tuple2!49316)

(assert (=> b!4421808 (= res!1827529 (= (head!9193 lm!1616) lt!1621715))))

(declare-fun newValue!93 () V!11154)

(declare-fun lt!1621717 () ListLongMap!2105)

(declare-datatypes ((ListMap!2699 0))(
  ( (ListMap!2700 (toList!3456 List!49668)) )
))
(declare-fun eq!392 (ListMap!2699 ListMap!2699) Bool)

(declare-fun extractMap!795 (List!49669) ListMap!2699)

(declare-fun +!1052 (ListLongMap!2105 tuple2!49316) ListLongMap!2105)

(declare-fun +!1053 (ListMap!2699 tuple2!49314) ListMap!2699)

(assert (=> b!4421808 (eq!392 (extractMap!795 (toList!3455 (+!1052 lt!1621717 lt!1621715))) (+!1053 (extractMap!795 (toList!3455 lt!1621717)) (tuple2!49315 key!3717 newValue!93)))))

(declare-fun lt!1621719 () Unit!81433)

(declare-fun newBucket!194 () List!49668)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!108 (ListLongMap!2105 (_ BitVec 64) List!49668 K!10908 V!11154 Hashable!5128) Unit!81433)

(assert (=> b!4421808 (= lt!1621719 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!108 lt!1621717 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7240 (ListLongMap!2105) ListLongMap!2105)

(assert (=> b!4421808 (= lt!1621717 (tail!7240 lm!1616))))

(declare-fun lt!1621712 () Unit!81433)

(assert (=> b!4421808 (= lt!1621712 e!2753227)))

(declare-fun c!752682 () Bool)

(declare-fun contains!12029 (ListMap!2699 K!10908) Bool)

(declare-fun tail!7241 (List!49669) List!49669)

(assert (=> b!4421808 (= c!752682 (contains!12029 (extractMap!795 (tail!7241 (toList!3455 lm!1616))) key!3717))))

(declare-fun b!4421809 () Bool)

(declare-fun res!1827535 () Bool)

(declare-fun e!2753229 () Bool)

(assert (=> b!4421809 (=> (not res!1827535) (not e!2753229))))

(declare-fun allKeysSameHash!694 (List!49668 (_ BitVec 64) Hashable!5128) Bool)

(assert (=> b!4421809 (= res!1827535 (allKeysSameHash!694 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4421810 () Bool)

(declare-fun e!2753224 () Bool)

(assert (=> b!4421810 (= e!2753224 (not e!2753223))))

(declare-fun res!1827525 () Bool)

(assert (=> b!4421810 (=> res!1827525 e!2753223)))

(declare-fun lt!1621718 () ListLongMap!2105)

(declare-fun lambda!153153 () Int)

(declare-fun forall!9536 (List!49669 Int) Bool)

(assert (=> b!4421810 (= res!1827525 (not (forall!9536 (toList!3455 lt!1621718) lambda!153153)))))

(assert (=> b!4421810 (forall!9536 (toList!3455 lt!1621718) lambda!153153)))

(assert (=> b!4421810 (= lt!1621718 (+!1052 lm!1616 lt!1621715))))

(assert (=> b!4421810 (= lt!1621715 (tuple2!49317 hash!366 newBucket!194))))

(declare-fun lt!1621716 () Unit!81433)

(declare-fun addValidProp!378 (ListLongMap!2105 Int (_ BitVec 64) List!49668) Unit!81433)

(assert (=> b!4421810 (= lt!1621716 (addValidProp!378 lm!1616 lambda!153153 hash!366 newBucket!194))))

(declare-fun b!4421811 () Bool)

(declare-fun Unit!81436 () Unit!81433)

(assert (=> b!4421811 (= e!2753227 Unit!81436)))

(declare-fun b!4421812 () Bool)

(declare-fun noDuplicateKeys!734 (List!49668) Bool)

(assert (=> b!4421812 (= e!2753222 (noDuplicateKeys!734 (_2!27952 (h!55222 (toList!3455 lm!1616)))))))

(declare-fun b!4421807 () Bool)

(declare-fun e!2753226 () Bool)

(declare-fun tp!1333016 () Bool)

(assert (=> b!4421807 (= e!2753226 tp!1333016)))

(declare-fun res!1827527 () Bool)

(assert (=> start!431074 (=> (not res!1827527) (not e!2753229))))

(assert (=> start!431074 (= res!1827527 (forall!9536 (toList!3455 lm!1616) lambda!153153))))

(assert (=> start!431074 e!2753229))

(declare-fun tp_is_empty!26181 () Bool)

(assert (=> start!431074 tp_is_empty!26181))

(declare-fun tp_is_empty!26183 () Bool)

(assert (=> start!431074 tp_is_empty!26183))

(declare-fun e!2753228 () Bool)

(assert (=> start!431074 e!2753228))

(declare-fun inv!65095 (ListLongMap!2105) Bool)

(assert (=> start!431074 (and (inv!65095 lm!1616) e!2753226)))

(assert (=> start!431074 true))

(declare-fun b!4421813 () Bool)

(declare-fun res!1827528 () Bool)

(assert (=> b!4421813 (=> (not res!1827528) (not e!2753224))))

(assert (=> b!4421813 (= res!1827528 (forall!9536 (toList!3455 lm!1616) lambda!153153))))

(declare-fun b!4421814 () Bool)

(assert (=> b!4421814 (= e!2753229 e!2753224)))

(declare-fun res!1827530 () Bool)

(assert (=> b!4421814 (=> (not res!1827530) (not e!2753224))))

(declare-fun e!2753225 () Bool)

(assert (=> b!4421814 (= res!1827530 e!2753225)))

(declare-fun res!1827536 () Bool)

(assert (=> b!4421814 (=> res!1827536 e!2753225)))

(declare-fun e!2753221 () Bool)

(assert (=> b!4421814 (= res!1827536 e!2753221)))

(declare-fun res!1827524 () Bool)

(assert (=> b!4421814 (=> (not res!1827524) (not e!2753221))))

(declare-fun lt!1621713 () Bool)

(assert (=> b!4421814 (= res!1827524 lt!1621713)))

(declare-fun contains!12030 (ListLongMap!2105 (_ BitVec 64)) Bool)

(assert (=> b!4421814 (= lt!1621713 (contains!12030 lm!1616 hash!366))))

(declare-fun b!4421815 () Bool)

(assert (=> b!4421815 (= e!2753225 (and (not lt!1621713) (= newBucket!194 (Cons!49544 (tuple2!49315 key!3717 newValue!93) Nil!49544))))))

(declare-fun b!4421816 () Bool)

(declare-fun res!1827532 () Bool)

(assert (=> b!4421816 (=> (not res!1827532) (not e!2753229))))

(declare-fun hash!2078 (Hashable!5128 K!10908) (_ BitVec 64))

(assert (=> b!4421816 (= res!1827532 (= (hash!2078 hashF!1220 key!3717) hash!366))))

(declare-fun b!4421817 () Bool)

(declare-fun res!1827526 () Bool)

(assert (=> b!4421817 (=> (not res!1827526) (not e!2753229))))

(declare-fun allKeysSameHashInMap!840 (ListLongMap!2105 Hashable!5128) Bool)

(assert (=> b!4421817 (= res!1827526 (allKeysSameHashInMap!840 lm!1616 hashF!1220))))

(declare-fun b!4421818 () Bool)

(declare-fun res!1827534 () Bool)

(assert (=> b!4421818 (=> res!1827534 e!2753223)))

(assert (=> b!4421818 (= res!1827534 (or (and (is-Cons!49545 (toList!3455 lm!1616)) (= (_1!27952 (h!55222 (toList!3455 lm!1616))) hash!366)) (not (is-Cons!49545 (toList!3455 lm!1616))) (= (_1!27952 (h!55222 (toList!3455 lm!1616))) hash!366)))))

(declare-fun b!4421819 () Bool)

(declare-fun apply!11586 (ListLongMap!2105 (_ BitVec 64)) List!49668)

(assert (=> b!4421819 (= e!2753221 (= newBucket!194 (Cons!49544 (tuple2!49315 key!3717 newValue!93) (apply!11586 lm!1616 hash!366))))))

(declare-fun b!4421820 () Bool)

(declare-fun res!1827533 () Bool)

(assert (=> b!4421820 (=> (not res!1827533) (not e!2753224))))

(assert (=> b!4421820 (= res!1827533 (noDuplicateKeys!734 newBucket!194))))

(declare-fun b!4421821 () Bool)

(declare-fun res!1827531 () Bool)

(assert (=> b!4421821 (=> (not res!1827531) (not e!2753229))))

(assert (=> b!4421821 (= res!1827531 (not (contains!12029 (extractMap!795 (toList!3455 lm!1616)) key!3717)))))

(declare-fun tp!1333015 () Bool)

(declare-fun b!4421822 () Bool)

(assert (=> b!4421822 (= e!2753228 (and tp_is_empty!26183 tp_is_empty!26181 tp!1333015))))

(assert (= (and start!431074 res!1827527) b!4421817))

(assert (= (and b!4421817 res!1827526) b!4421816))

(assert (= (and b!4421816 res!1827532) b!4421809))

(assert (= (and b!4421809 res!1827535) b!4421821))

(assert (= (and b!4421821 res!1827531) b!4421814))

(assert (= (and b!4421814 res!1827524) b!4421819))

(assert (= (and b!4421814 (not res!1827536)) b!4421815))

(assert (= (and b!4421814 res!1827530) b!4421820))

(assert (= (and b!4421820 res!1827533) b!4421813))

(assert (= (and b!4421813 res!1827528) b!4421810))

(assert (= (and b!4421810 (not res!1827525)) b!4421818))

(assert (= (and b!4421818 (not res!1827534)) b!4421808))

(assert (= (and b!4421808 c!752682) b!4421806))

(assert (= (and b!4421808 (not c!752682)) b!4421811))

(assert (= (and b!4421808 (not res!1827529)) b!4421812))

(assert (= (and start!431074 (is-Cons!49544 newBucket!194)) b!4421822))

(assert (= start!431074 b!4421807))

(declare-fun m!5099743 () Bool)

(assert (=> b!4421819 m!5099743))

(declare-fun m!5099745 () Bool)

(assert (=> b!4421817 m!5099745))

(declare-fun m!5099747 () Bool)

(assert (=> b!4421816 m!5099747))

(declare-fun m!5099749 () Bool)

(assert (=> b!4421820 m!5099749))

(declare-fun m!5099751 () Bool)

(assert (=> b!4421814 m!5099751))

(declare-fun m!5099753 () Bool)

(assert (=> start!431074 m!5099753))

(declare-fun m!5099755 () Bool)

(assert (=> start!431074 m!5099755))

(declare-fun m!5099757 () Bool)

(assert (=> b!4421808 m!5099757))

(declare-fun m!5099759 () Bool)

(assert (=> b!4421808 m!5099759))

(declare-fun m!5099761 () Bool)

(assert (=> b!4421808 m!5099761))

(declare-fun m!5099763 () Bool)

(assert (=> b!4421808 m!5099763))

(declare-fun m!5099765 () Bool)

(assert (=> b!4421808 m!5099765))

(assert (=> b!4421808 m!5099759))

(declare-fun m!5099767 () Bool)

(assert (=> b!4421808 m!5099767))

(declare-fun m!5099769 () Bool)

(assert (=> b!4421808 m!5099769))

(declare-fun m!5099771 () Bool)

(assert (=> b!4421808 m!5099771))

(declare-fun m!5099773 () Bool)

(assert (=> b!4421808 m!5099773))

(declare-fun m!5099775 () Bool)

(assert (=> b!4421808 m!5099775))

(declare-fun m!5099777 () Bool)

(assert (=> b!4421808 m!5099777))

(assert (=> b!4421808 m!5099777))

(assert (=> b!4421808 m!5099773))

(assert (=> b!4421808 m!5099757))

(assert (=> b!4421808 m!5099771))

(declare-fun m!5099779 () Bool)

(assert (=> b!4421809 m!5099779))

(assert (=> b!4421813 m!5099753))

(declare-fun m!5099781 () Bool)

(assert (=> b!4421810 m!5099781))

(assert (=> b!4421810 m!5099781))

(declare-fun m!5099783 () Bool)

(assert (=> b!4421810 m!5099783))

(declare-fun m!5099785 () Bool)

(assert (=> b!4421810 m!5099785))

(declare-fun m!5099787 () Bool)

(assert (=> b!4421812 m!5099787))

(declare-fun m!5099789 () Bool)

(assert (=> b!4421821 m!5099789))

(assert (=> b!4421821 m!5099789))

(declare-fun m!5099791 () Bool)

(assert (=> b!4421821 m!5099791))

(declare-fun m!5099793 () Bool)

(assert (=> b!4421806 m!5099793))

(push 1)

(assert (not b!4421808))

(assert tp_is_empty!26181)

(assert (not start!431074))

(assert (not b!4421822))

(assert (not b!4421807))

(assert (not b!4421810))

(assert (not b!4421814))

(assert (not b!4421816))

(assert (not b!4421820))

(assert (not b!4421806))

(assert (not b!4421809))

(assert (not b!4421821))

(assert (not b!4421812))

(assert (not b!4421819))

(assert (not b!4421817))

(assert tp_is_empty!26183)

(assert (not b!4421813))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1339888 () Bool)

(declare-fun res!1827580 () Bool)

(declare-fun e!2753261 () Bool)

(assert (=> d!1339888 (=> res!1827580 e!2753261)))

(assert (=> d!1339888 (= res!1827580 (not (is-Cons!49544 newBucket!194)))))

(assert (=> d!1339888 (= (noDuplicateKeys!734 newBucket!194) e!2753261)))

(declare-fun b!4421878 () Bool)

(declare-fun e!2753262 () Bool)

(assert (=> b!4421878 (= e!2753261 e!2753262)))

(declare-fun res!1827581 () Bool)

(assert (=> b!4421878 (=> (not res!1827581) (not e!2753262))))

(declare-fun containsKey!1086 (List!49668 K!10908) Bool)

(assert (=> b!4421878 (= res!1827581 (not (containsKey!1086 (t!356606 newBucket!194) (_1!27951 (h!55221 newBucket!194)))))))

(declare-fun b!4421879 () Bool)

(assert (=> b!4421879 (= e!2753262 (noDuplicateKeys!734 (t!356606 newBucket!194)))))

(assert (= (and d!1339888 (not res!1827580)) b!4421878))

(assert (= (and b!4421878 res!1827581) b!4421879))

(declare-fun m!5099847 () Bool)

(assert (=> b!4421878 m!5099847))

(declare-fun m!5099849 () Bool)

(assert (=> b!4421879 m!5099849))

(assert (=> b!4421820 d!1339888))

(declare-fun d!1339890 () Bool)

(assert (=> d!1339890 true))

(assert (=> d!1339890 true))

(declare-fun lambda!153165 () Int)

(declare-fun forall!9538 (List!49668 Int) Bool)

(assert (=> d!1339890 (= (allKeysSameHash!694 newBucket!194 hash!366 hashF!1220) (forall!9538 newBucket!194 lambda!153165))))

(declare-fun bs!755137 () Bool)

(assert (= bs!755137 d!1339890))

(declare-fun m!5099851 () Bool)

(assert (=> bs!755137 m!5099851))

(assert (=> b!4421809 d!1339890))

(declare-fun d!1339894 () Bool)

(declare-datatypes ((Option!10707 0))(
  ( (None!10706) (Some!10706 (v!43882 List!49668)) )
))
(declare-fun get!16143 (Option!10707) List!49668)

(declare-fun getValueByKey!693 (List!49669 (_ BitVec 64)) Option!10707)

(assert (=> d!1339894 (= (apply!11586 lm!1616 hash!366) (get!16143 (getValueByKey!693 (toList!3455 lm!1616) hash!366)))))

(declare-fun bs!755138 () Bool)

(assert (= bs!755138 d!1339894))

(declare-fun m!5099853 () Bool)

(assert (=> bs!755138 m!5099853))

(assert (=> bs!755138 m!5099853))

(declare-fun m!5099855 () Bool)

(assert (=> bs!755138 m!5099855))

(assert (=> b!4421819 d!1339894))

(declare-fun d!1339896 () Bool)

(declare-fun e!2753271 () Bool)

(assert (=> d!1339896 e!2753271))

(declare-fun res!1827593 () Bool)

(assert (=> d!1339896 (=> (not res!1827593) (not e!2753271))))

(declare-fun lt!1621755 () ListLongMap!2105)

(assert (=> d!1339896 (= res!1827593 (contains!12030 lt!1621755 (_1!27952 lt!1621715)))))

(declare-fun lt!1621754 () List!49669)

(assert (=> d!1339896 (= lt!1621755 (ListLongMap!2106 lt!1621754))))

(declare-fun lt!1621753 () Unit!81433)

(declare-fun lt!1621752 () Unit!81433)

(assert (=> d!1339896 (= lt!1621753 lt!1621752)))

(assert (=> d!1339896 (= (getValueByKey!693 lt!1621754 (_1!27952 lt!1621715)) (Some!10706 (_2!27952 lt!1621715)))))

(declare-fun lemmaContainsTupThenGetReturnValue!428 (List!49669 (_ BitVec 64) List!49668) Unit!81433)

(assert (=> d!1339896 (= lt!1621752 (lemmaContainsTupThenGetReturnValue!428 lt!1621754 (_1!27952 lt!1621715) (_2!27952 lt!1621715)))))

(declare-fun insertStrictlySorted!251 (List!49669 (_ BitVec 64) List!49668) List!49669)

(assert (=> d!1339896 (= lt!1621754 (insertStrictlySorted!251 (toList!3455 lt!1621717) (_1!27952 lt!1621715) (_2!27952 lt!1621715)))))

(assert (=> d!1339896 (= (+!1052 lt!1621717 lt!1621715) lt!1621755)))

(declare-fun b!4421894 () Bool)

(declare-fun res!1827592 () Bool)

(assert (=> b!4421894 (=> (not res!1827592) (not e!2753271))))

(assert (=> b!4421894 (= res!1827592 (= (getValueByKey!693 (toList!3455 lt!1621755) (_1!27952 lt!1621715)) (Some!10706 (_2!27952 lt!1621715))))))

(declare-fun b!4421895 () Bool)

(declare-fun contains!12033 (List!49669 tuple2!49316) Bool)

(assert (=> b!4421895 (= e!2753271 (contains!12033 (toList!3455 lt!1621755) lt!1621715))))

(assert (= (and d!1339896 res!1827593) b!4421894))

(assert (= (and b!4421894 res!1827592) b!4421895))

(declare-fun m!5099861 () Bool)

(assert (=> d!1339896 m!5099861))

(declare-fun m!5099863 () Bool)

(assert (=> d!1339896 m!5099863))

(declare-fun m!5099865 () Bool)

(assert (=> d!1339896 m!5099865))

(declare-fun m!5099867 () Bool)

(assert (=> d!1339896 m!5099867))

(declare-fun m!5099869 () Bool)

(assert (=> b!4421894 m!5099869))

(declare-fun m!5099871 () Bool)

(assert (=> b!4421895 m!5099871))

(assert (=> b!4421808 d!1339896))

(declare-fun d!1339900 () Bool)

(declare-fun content!7941 (List!49668) (Set tuple2!49314))

(assert (=> d!1339900 (= (eq!392 (extractMap!795 (toList!3455 (+!1052 lt!1621717 lt!1621715))) (+!1053 (extractMap!795 (toList!3455 lt!1621717)) (tuple2!49315 key!3717 newValue!93))) (= (content!7941 (toList!3456 (extractMap!795 (toList!3455 (+!1052 lt!1621717 lt!1621715))))) (content!7941 (toList!3456 (+!1053 (extractMap!795 (toList!3455 lt!1621717)) (tuple2!49315 key!3717 newValue!93))))))))

(declare-fun bs!755139 () Bool)

(assert (= bs!755139 d!1339900))

(declare-fun m!5099873 () Bool)

(assert (=> bs!755139 m!5099873))

(declare-fun m!5099875 () Bool)

(assert (=> bs!755139 m!5099875))

(assert (=> b!4421808 d!1339900))

(declare-fun bs!755140 () Bool)

(declare-fun d!1339902 () Bool)

(assert (= bs!755140 (and d!1339902 start!431074)))

(declare-fun lambda!153168 () Int)

(assert (=> bs!755140 (= lambda!153168 lambda!153153)))

(declare-fun lt!1621766 () ListMap!2699)

(declare-fun invariantList!796 (List!49668) Bool)

(assert (=> d!1339902 (invariantList!796 (toList!3456 lt!1621766))))

(declare-fun e!2753276 () ListMap!2699)

(assert (=> d!1339902 (= lt!1621766 e!2753276)))

(declare-fun c!752688 () Bool)

(assert (=> d!1339902 (= c!752688 (is-Cons!49545 (toList!3455 lt!1621717)))))

(assert (=> d!1339902 (forall!9536 (toList!3455 lt!1621717) lambda!153168)))

(assert (=> d!1339902 (= (extractMap!795 (toList!3455 lt!1621717)) lt!1621766)))

(declare-fun b!4421904 () Bool)

(declare-fun addToMapMapFromBucket!371 (List!49668 ListMap!2699) ListMap!2699)

(assert (=> b!4421904 (= e!2753276 (addToMapMapFromBucket!371 (_2!27952 (h!55222 (toList!3455 lt!1621717))) (extractMap!795 (t!356607 (toList!3455 lt!1621717)))))))

(declare-fun b!4421905 () Bool)

(assert (=> b!4421905 (= e!2753276 (ListMap!2700 Nil!49544))))

(assert (= (and d!1339902 c!752688) b!4421904))

(assert (= (and d!1339902 (not c!752688)) b!4421905))

(declare-fun m!5099877 () Bool)

(assert (=> d!1339902 m!5099877))

(declare-fun m!5099879 () Bool)

(assert (=> d!1339902 m!5099879))

(declare-fun m!5099881 () Bool)

(assert (=> b!4421904 m!5099881))

(assert (=> b!4421904 m!5099881))

(declare-fun m!5099883 () Bool)

(assert (=> b!4421904 m!5099883))

(assert (=> b!4421808 d!1339902))

(declare-fun bs!755141 () Bool)

(declare-fun d!1339904 () Bool)

(assert (= bs!755141 (and d!1339904 start!431074)))

(declare-fun lambda!153171 () Int)

(assert (=> bs!755141 (= lambda!153171 lambda!153153)))

(declare-fun bs!755142 () Bool)

(assert (= bs!755142 (and d!1339904 d!1339902)))

(assert (=> bs!755142 (= lambda!153171 lambda!153168)))

(assert (=> d!1339904 (eq!392 (extractMap!795 (toList!3455 (+!1052 lt!1621717 (tuple2!49317 hash!366 newBucket!194)))) (+!1053 (extractMap!795 (toList!3455 lt!1621717)) (tuple2!49315 key!3717 newValue!93)))))

(declare-fun lt!1621773 () Unit!81433)

(declare-fun choose!27870 (ListLongMap!2105 (_ BitVec 64) List!49668 K!10908 V!11154 Hashable!5128) Unit!81433)

(assert (=> d!1339904 (= lt!1621773 (choose!27870 lt!1621717 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1339904 (forall!9536 (toList!3455 lt!1621717) lambda!153171)))

(assert (=> d!1339904 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!108 lt!1621717 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1621773)))

(declare-fun bs!755143 () Bool)

(assert (= bs!755143 d!1339904))

(declare-fun m!5099897 () Bool)

(assert (=> bs!755143 m!5099897))

(assert (=> bs!755143 m!5099773))

(declare-fun m!5099899 () Bool)

(assert (=> bs!755143 m!5099899))

(assert (=> bs!755143 m!5099777))

(assert (=> bs!755143 m!5099773))

(assert (=> bs!755143 m!5099897))

(declare-fun m!5099901 () Bool)

(assert (=> bs!755143 m!5099901))

(declare-fun m!5099903 () Bool)

(assert (=> bs!755143 m!5099903))

(declare-fun m!5099905 () Bool)

(assert (=> bs!755143 m!5099905))

(assert (=> bs!755143 m!5099777))

(assert (=> b!4421808 d!1339904))

(declare-fun bs!755144 () Bool)

(declare-fun d!1339908 () Bool)

(assert (= bs!755144 (and d!1339908 start!431074)))

(declare-fun lambda!153172 () Int)

(assert (=> bs!755144 (= lambda!153172 lambda!153153)))

(declare-fun bs!755145 () Bool)

(assert (= bs!755145 (and d!1339908 d!1339902)))

(assert (=> bs!755145 (= lambda!153172 lambda!153168)))

(declare-fun bs!755146 () Bool)

(assert (= bs!755146 (and d!1339908 d!1339904)))

(assert (=> bs!755146 (= lambda!153172 lambda!153171)))

(declare-fun lt!1621776 () ListMap!2699)

(assert (=> d!1339908 (invariantList!796 (toList!3456 lt!1621776))))

(declare-fun e!2753280 () ListMap!2699)

(assert (=> d!1339908 (= lt!1621776 e!2753280)))

(declare-fun c!752689 () Bool)

(assert (=> d!1339908 (= c!752689 (is-Cons!49545 (toList!3455 (+!1052 lt!1621717 lt!1621715))))))

(assert (=> d!1339908 (forall!9536 (toList!3455 (+!1052 lt!1621717 lt!1621715)) lambda!153172)))

(assert (=> d!1339908 (= (extractMap!795 (toList!3455 (+!1052 lt!1621717 lt!1621715))) lt!1621776)))

(declare-fun b!4421911 () Bool)

(assert (=> b!4421911 (= e!2753280 (addToMapMapFromBucket!371 (_2!27952 (h!55222 (toList!3455 (+!1052 lt!1621717 lt!1621715)))) (extractMap!795 (t!356607 (toList!3455 (+!1052 lt!1621717 lt!1621715))))))))

(declare-fun b!4421912 () Bool)

(assert (=> b!4421912 (= e!2753280 (ListMap!2700 Nil!49544))))

(assert (= (and d!1339908 c!752689) b!4421911))

(assert (= (and d!1339908 (not c!752689)) b!4421912))

(declare-fun m!5099907 () Bool)

(assert (=> d!1339908 m!5099907))

(declare-fun m!5099909 () Bool)

(assert (=> d!1339908 m!5099909))

(declare-fun m!5099911 () Bool)

(assert (=> b!4421911 m!5099911))

(assert (=> b!4421911 m!5099911))

(declare-fun m!5099913 () Bool)

(assert (=> b!4421911 m!5099913))

(assert (=> b!4421808 d!1339908))

(declare-fun d!1339910 () Bool)

(declare-fun head!9195 (List!49669) tuple2!49316)

(assert (=> d!1339910 (= (head!9193 lm!1616) (head!9195 (toList!3455 lm!1616)))))

(declare-fun bs!755147 () Bool)

(assert (= bs!755147 d!1339910))

(declare-fun m!5099915 () Bool)

(assert (=> bs!755147 m!5099915))

(assert (=> b!4421808 d!1339910))

(declare-fun d!1339912 () Bool)

(assert (=> d!1339912 (= (tail!7240 lm!1616) (ListLongMap!2106 (tail!7241 (toList!3455 lm!1616))))))

(declare-fun bs!755148 () Bool)

(assert (= bs!755148 d!1339912))

(assert (=> bs!755148 m!5099757))

(assert (=> b!4421808 d!1339912))

(declare-fun d!1339914 () Bool)

(declare-fun e!2753284 () Bool)

(assert (=> d!1339914 e!2753284))

(declare-fun res!1827607 () Bool)

(assert (=> d!1339914 (=> (not res!1827607) (not e!2753284))))

(declare-fun lt!1621788 () ListMap!2699)

(assert (=> d!1339914 (= res!1827607 (contains!12029 lt!1621788 (_1!27951 (tuple2!49315 key!3717 newValue!93))))))

(declare-fun lt!1621789 () List!49668)

(assert (=> d!1339914 (= lt!1621788 (ListMap!2700 lt!1621789))))

(declare-fun lt!1621787 () Unit!81433)

(declare-fun lt!1621786 () Unit!81433)

(assert (=> d!1339914 (= lt!1621787 lt!1621786)))

(declare-datatypes ((Option!10708 0))(
  ( (None!10707) (Some!10707 (v!43883 V!11154)) )
))
(declare-fun getValueByKey!694 (List!49668 K!10908) Option!10708)

(assert (=> d!1339914 (= (getValueByKey!694 lt!1621789 (_1!27951 (tuple2!49315 key!3717 newValue!93))) (Some!10707 (_2!27951 (tuple2!49315 key!3717 newValue!93))))))

(declare-fun lemmaContainsTupThenGetReturnValue!429 (List!49668 K!10908 V!11154) Unit!81433)

(assert (=> d!1339914 (= lt!1621786 (lemmaContainsTupThenGetReturnValue!429 lt!1621789 (_1!27951 (tuple2!49315 key!3717 newValue!93)) (_2!27951 (tuple2!49315 key!3717 newValue!93))))))

(declare-fun insertNoDuplicatedKeys!186 (List!49668 K!10908 V!11154) List!49668)

(assert (=> d!1339914 (= lt!1621789 (insertNoDuplicatedKeys!186 (toList!3456 (extractMap!795 (toList!3455 lt!1621717))) (_1!27951 (tuple2!49315 key!3717 newValue!93)) (_2!27951 (tuple2!49315 key!3717 newValue!93))))))

(assert (=> d!1339914 (= (+!1053 (extractMap!795 (toList!3455 lt!1621717)) (tuple2!49315 key!3717 newValue!93)) lt!1621788)))

(declare-fun b!4421918 () Bool)

(declare-fun res!1827608 () Bool)

(assert (=> b!4421918 (=> (not res!1827608) (not e!2753284))))

(assert (=> b!4421918 (= res!1827608 (= (getValueByKey!694 (toList!3456 lt!1621788) (_1!27951 (tuple2!49315 key!3717 newValue!93))) (Some!10707 (_2!27951 (tuple2!49315 key!3717 newValue!93)))))))

(declare-fun b!4421919 () Bool)

(declare-fun contains!12034 (List!49668 tuple2!49314) Bool)

(assert (=> b!4421919 (= e!2753284 (contains!12034 (toList!3456 lt!1621788) (tuple2!49315 key!3717 newValue!93)))))

(assert (= (and d!1339914 res!1827607) b!4421918))

(assert (= (and b!4421918 res!1827608) b!4421919))

(declare-fun m!5099925 () Bool)

(assert (=> d!1339914 m!5099925))

(declare-fun m!5099927 () Bool)

(assert (=> d!1339914 m!5099927))

(declare-fun m!5099929 () Bool)

(assert (=> d!1339914 m!5099929))

(declare-fun m!5099931 () Bool)

(assert (=> d!1339914 m!5099931))

(declare-fun m!5099933 () Bool)

(assert (=> b!4421918 m!5099933))

(declare-fun m!5099935 () Bool)

(assert (=> b!4421919 m!5099935))

(assert (=> b!4421808 d!1339914))

(declare-fun bs!755149 () Bool)

(declare-fun d!1339918 () Bool)

(assert (= bs!755149 (and d!1339918 start!431074)))

(declare-fun lambda!153173 () Int)

(assert (=> bs!755149 (= lambda!153173 lambda!153153)))

(declare-fun bs!755150 () Bool)

(assert (= bs!755150 (and d!1339918 d!1339902)))

(assert (=> bs!755150 (= lambda!153173 lambda!153168)))

(declare-fun bs!755151 () Bool)

(assert (= bs!755151 (and d!1339918 d!1339904)))

(assert (=> bs!755151 (= lambda!153173 lambda!153171)))

(declare-fun bs!755152 () Bool)

(assert (= bs!755152 (and d!1339918 d!1339908)))

(assert (=> bs!755152 (= lambda!153173 lambda!153172)))

(declare-fun lt!1621790 () ListMap!2699)

(assert (=> d!1339918 (invariantList!796 (toList!3456 lt!1621790))))

(declare-fun e!2753285 () ListMap!2699)

(assert (=> d!1339918 (= lt!1621790 e!2753285)))

(declare-fun c!752690 () Bool)

(assert (=> d!1339918 (= c!752690 (is-Cons!49545 (tail!7241 (toList!3455 lm!1616))))))

(assert (=> d!1339918 (forall!9536 (tail!7241 (toList!3455 lm!1616)) lambda!153173)))

(assert (=> d!1339918 (= (extractMap!795 (tail!7241 (toList!3455 lm!1616))) lt!1621790)))

(declare-fun b!4421920 () Bool)

(assert (=> b!4421920 (= e!2753285 (addToMapMapFromBucket!371 (_2!27952 (h!55222 (tail!7241 (toList!3455 lm!1616)))) (extractMap!795 (t!356607 (tail!7241 (toList!3455 lm!1616))))))))

(declare-fun b!4421921 () Bool)

(assert (=> b!4421921 (= e!2753285 (ListMap!2700 Nil!49544))))

(assert (= (and d!1339918 c!752690) b!4421920))

(assert (= (and d!1339918 (not c!752690)) b!4421921))

(declare-fun m!5099937 () Bool)

(assert (=> d!1339918 m!5099937))

(assert (=> d!1339918 m!5099757))

(declare-fun m!5099939 () Bool)

(assert (=> d!1339918 m!5099939))

(declare-fun m!5099941 () Bool)

(assert (=> b!4421920 m!5099941))

(assert (=> b!4421920 m!5099941))

(declare-fun m!5099943 () Bool)

(assert (=> b!4421920 m!5099943))

(assert (=> b!4421808 d!1339918))

(declare-fun d!1339920 () Bool)

(assert (=> d!1339920 (= (tail!7241 (toList!3455 lm!1616)) (t!356607 (toList!3455 lm!1616)))))

(assert (=> b!4421808 d!1339920))

(declare-fun b!4421955 () Bool)

(declare-fun e!2753311 () Unit!81433)

(declare-fun lt!1621822 () Unit!81433)

(assert (=> b!4421955 (= e!2753311 lt!1621822)))

(declare-fun lt!1621821 () Unit!81433)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!603 (List!49668 K!10908) Unit!81433)

(assert (=> b!4421955 (= lt!1621821 (lemmaContainsKeyImpliesGetValueByKeyDefined!603 (toList!3456 (extractMap!795 (tail!7241 (toList!3455 lm!1616)))) key!3717))))

(declare-fun isDefined!8000 (Option!10708) Bool)

(assert (=> b!4421955 (isDefined!8000 (getValueByKey!694 (toList!3456 (extractMap!795 (tail!7241 (toList!3455 lm!1616)))) key!3717))))

(declare-fun lt!1621824 () Unit!81433)

(assert (=> b!4421955 (= lt!1621824 lt!1621821)))

(declare-fun lemmaInListThenGetKeysListContains!241 (List!49668 K!10908) Unit!81433)

(assert (=> b!4421955 (= lt!1621822 (lemmaInListThenGetKeysListContains!241 (toList!3456 (extractMap!795 (tail!7241 (toList!3455 lm!1616)))) key!3717))))

(declare-fun call!307643 () Bool)

(assert (=> b!4421955 call!307643))

(declare-fun b!4421956 () Bool)

(assert (=> b!4421956 false))

(declare-fun lt!1621826 () Unit!81433)

(declare-fun lt!1621820 () Unit!81433)

(assert (=> b!4421956 (= lt!1621826 lt!1621820)))

(declare-fun containsKey!1087 (List!49668 K!10908) Bool)

(assert (=> b!4421956 (containsKey!1087 (toList!3456 (extractMap!795 (tail!7241 (toList!3455 lm!1616)))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!242 (List!49668 K!10908) Unit!81433)

(assert (=> b!4421956 (= lt!1621820 (lemmaInGetKeysListThenContainsKey!242 (toList!3456 (extractMap!795 (tail!7241 (toList!3455 lm!1616)))) key!3717))))

(declare-fun e!2753315 () Unit!81433)

(declare-fun Unit!81441 () Unit!81433)

(assert (=> b!4421956 (= e!2753315 Unit!81441)))

(declare-fun b!4421957 () Bool)

(declare-fun e!2753313 () Bool)

(declare-fun e!2753312 () Bool)

(assert (=> b!4421957 (= e!2753313 e!2753312)))

(declare-fun res!1827626 () Bool)

(assert (=> b!4421957 (=> (not res!1827626) (not e!2753312))))

(assert (=> b!4421957 (= res!1827626 (isDefined!8000 (getValueByKey!694 (toList!3456 (extractMap!795 (tail!7241 (toList!3455 lm!1616)))) key!3717)))))

(declare-fun d!1339922 () Bool)

(assert (=> d!1339922 e!2753313))

(declare-fun res!1827625 () Bool)

(assert (=> d!1339922 (=> res!1827625 e!2753313)))

(declare-fun e!2753314 () Bool)

(assert (=> d!1339922 (= res!1827625 e!2753314)))

(declare-fun res!1827624 () Bool)

(assert (=> d!1339922 (=> (not res!1827624) (not e!2753314))))

(declare-fun lt!1621819 () Bool)

(assert (=> d!1339922 (= res!1827624 (not lt!1621819))))

(declare-fun lt!1621823 () Bool)

(assert (=> d!1339922 (= lt!1621819 lt!1621823)))

(declare-fun lt!1621825 () Unit!81433)

(assert (=> d!1339922 (= lt!1621825 e!2753311)))

(declare-fun c!752700 () Bool)

(assert (=> d!1339922 (= c!752700 lt!1621823)))

(assert (=> d!1339922 (= lt!1621823 (containsKey!1087 (toList!3456 (extractMap!795 (tail!7241 (toList!3455 lm!1616)))) key!3717))))

(assert (=> d!1339922 (= (contains!12029 (extractMap!795 (tail!7241 (toList!3455 lm!1616))) key!3717) lt!1621819)))

(declare-fun b!4421958 () Bool)

(declare-fun Unit!81442 () Unit!81433)

(assert (=> b!4421958 (= e!2753315 Unit!81442)))

(declare-fun bm!307638 () Bool)

(declare-datatypes ((List!49672 0))(
  ( (Nil!49548) (Cons!49548 (h!55226 K!10908) (t!356610 List!49672)) )
))
(declare-fun e!2753310 () List!49672)

(declare-fun contains!12035 (List!49672 K!10908) Bool)

(assert (=> bm!307638 (= call!307643 (contains!12035 e!2753310 key!3717))))

(declare-fun c!752702 () Bool)

(assert (=> bm!307638 (= c!752702 c!752700)))

(declare-fun b!4421959 () Bool)

(assert (=> b!4421959 (= e!2753311 e!2753315)))

(declare-fun c!752701 () Bool)

(assert (=> b!4421959 (= c!752701 call!307643)))

(declare-fun b!4421960 () Bool)

(declare-fun keys!16906 (ListMap!2699) List!49672)

(assert (=> b!4421960 (= e!2753314 (not (contains!12035 (keys!16906 (extractMap!795 (tail!7241 (toList!3455 lm!1616)))) key!3717)))))

(declare-fun b!4421961 () Bool)

(assert (=> b!4421961 (= e!2753310 (keys!16906 (extractMap!795 (tail!7241 (toList!3455 lm!1616)))))))

(declare-fun b!4421962 () Bool)

(declare-fun getKeysList!244 (List!49668) List!49672)

(assert (=> b!4421962 (= e!2753310 (getKeysList!244 (toList!3456 (extractMap!795 (tail!7241 (toList!3455 lm!1616))))))))

(declare-fun b!4421963 () Bool)

(assert (=> b!4421963 (= e!2753312 (contains!12035 (keys!16906 (extractMap!795 (tail!7241 (toList!3455 lm!1616)))) key!3717))))

(assert (= (and d!1339922 c!752700) b!4421955))

(assert (= (and d!1339922 (not c!752700)) b!4421959))

(assert (= (and b!4421959 c!752701) b!4421956))

(assert (= (and b!4421959 (not c!752701)) b!4421958))

(assert (= (or b!4421955 b!4421959) bm!307638))

(assert (= (and bm!307638 c!752702) b!4421962))

(assert (= (and bm!307638 (not c!752702)) b!4421961))

(assert (= (and d!1339922 res!1827624) b!4421960))

(assert (= (and d!1339922 (not res!1827625)) b!4421957))

(assert (= (and b!4421957 res!1827626) b!4421963))

(declare-fun m!5099957 () Bool)

(assert (=> b!4421957 m!5099957))

(assert (=> b!4421957 m!5099957))

(declare-fun m!5099959 () Bool)

(assert (=> b!4421957 m!5099959))

(assert (=> b!4421963 m!5099759))

(declare-fun m!5099961 () Bool)

(assert (=> b!4421963 m!5099961))

(assert (=> b!4421963 m!5099961))

(declare-fun m!5099963 () Bool)

(assert (=> b!4421963 m!5099963))

(declare-fun m!5099965 () Bool)

(assert (=> d!1339922 m!5099965))

(assert (=> b!4421960 m!5099759))

(assert (=> b!4421960 m!5099961))

(assert (=> b!4421960 m!5099961))

(assert (=> b!4421960 m!5099963))

(declare-fun m!5099967 () Bool)

(assert (=> b!4421955 m!5099967))

(assert (=> b!4421955 m!5099957))

(assert (=> b!4421955 m!5099957))

(assert (=> b!4421955 m!5099959))

(declare-fun m!5099969 () Bool)

(assert (=> b!4421955 m!5099969))

(assert (=> b!4421956 m!5099965))

(declare-fun m!5099971 () Bool)

(assert (=> b!4421956 m!5099971))

(declare-fun m!5099973 () Bool)

(assert (=> b!4421962 m!5099973))

(declare-fun m!5099975 () Bool)

(assert (=> bm!307638 m!5099975))

(assert (=> b!4421961 m!5099759))

(assert (=> b!4421961 m!5099961))

(assert (=> b!4421808 d!1339922))

(declare-fun d!1339928 () Bool)

(declare-fun res!1827631 () Bool)

(declare-fun e!2753320 () Bool)

(assert (=> d!1339928 (=> res!1827631 e!2753320)))

(assert (=> d!1339928 (= res!1827631 (is-Nil!49545 (toList!3455 lm!1616)))))

(assert (=> d!1339928 (= (forall!9536 (toList!3455 lm!1616) lambda!153153) e!2753320)))

(declare-fun b!4421968 () Bool)

(declare-fun e!2753321 () Bool)

(assert (=> b!4421968 (= e!2753320 e!2753321)))

(declare-fun res!1827632 () Bool)

(assert (=> b!4421968 (=> (not res!1827632) (not e!2753321))))

(declare-fun dynLambda!20833 (Int tuple2!49316) Bool)

(assert (=> b!4421968 (= res!1827632 (dynLambda!20833 lambda!153153 (h!55222 (toList!3455 lm!1616))))))

(declare-fun b!4421969 () Bool)

(assert (=> b!4421969 (= e!2753321 (forall!9536 (t!356607 (toList!3455 lm!1616)) lambda!153153))))

(assert (= (and d!1339928 (not res!1827631)) b!4421968))

(assert (= (and b!4421968 res!1827632) b!4421969))

(declare-fun b_lambda!142675 () Bool)

(assert (=> (not b_lambda!142675) (not b!4421968)))

(declare-fun m!5099977 () Bool)

(assert (=> b!4421968 m!5099977))

(declare-fun m!5099979 () Bool)

(assert (=> b!4421969 m!5099979))

(assert (=> start!431074 d!1339928))

(declare-fun d!1339930 () Bool)

(declare-fun isStrictlySorted!223 (List!49669) Bool)

(assert (=> d!1339930 (= (inv!65095 lm!1616) (isStrictlySorted!223 (toList!3455 lm!1616)))))

(declare-fun bs!755153 () Bool)

(assert (= bs!755153 d!1339930))

(declare-fun m!5099981 () Bool)

(assert (=> bs!755153 m!5099981))

(assert (=> start!431074 d!1339930))

(declare-fun bs!755154 () Bool)

(declare-fun d!1339932 () Bool)

(assert (= bs!755154 (and d!1339932 d!1339908)))

(declare-fun lambda!153176 () Int)

(assert (=> bs!755154 (not (= lambda!153176 lambda!153172))))

(declare-fun bs!755155 () Bool)

(assert (= bs!755155 (and d!1339932 d!1339902)))

(assert (=> bs!755155 (not (= lambda!153176 lambda!153168))))

(declare-fun bs!755156 () Bool)

(assert (= bs!755156 (and d!1339932 d!1339904)))

(assert (=> bs!755156 (not (= lambda!153176 lambda!153171))))

(declare-fun bs!755157 () Bool)

(assert (= bs!755157 (and d!1339932 start!431074)))

(assert (=> bs!755157 (not (= lambda!153176 lambda!153153))))

(declare-fun bs!755158 () Bool)

(assert (= bs!755158 (and d!1339932 d!1339918)))

(assert (=> bs!755158 (not (= lambda!153176 lambda!153173))))

(assert (=> d!1339932 true))

(assert (=> d!1339932 (= (allKeysSameHashInMap!840 lm!1616 hashF!1220) (forall!9536 (toList!3455 lm!1616) lambda!153176))))

(declare-fun bs!755159 () Bool)

(assert (= bs!755159 d!1339932))

(declare-fun m!5099983 () Bool)

(assert (=> bs!755159 m!5099983))

(assert (=> b!4421817 d!1339932))

(declare-fun bs!755160 () Bool)

(declare-fun d!1339934 () Bool)

(assert (= bs!755160 (and d!1339934 d!1339902)))

(declare-fun lambda!153179 () Int)

(assert (=> bs!755160 (= lambda!153179 lambda!153168)))

(declare-fun bs!755161 () Bool)

(assert (= bs!755161 (and d!1339934 d!1339904)))

(assert (=> bs!755161 (= lambda!153179 lambda!153171)))

(declare-fun bs!755162 () Bool)

(assert (= bs!755162 (and d!1339934 start!431074)))

(assert (=> bs!755162 (= lambda!153179 lambda!153153)))

(declare-fun bs!755163 () Bool)

(assert (= bs!755163 (and d!1339934 d!1339918)))

(assert (=> bs!755163 (= lambda!153179 lambda!153173)))

(declare-fun bs!755164 () Bool)

(assert (= bs!755164 (and d!1339934 d!1339932)))

(assert (=> bs!755164 (not (= lambda!153179 lambda!153176))))

(declare-fun bs!755165 () Bool)

(assert (= bs!755165 (and d!1339934 d!1339908)))

(assert (=> bs!755165 (= lambda!153179 lambda!153172)))

(assert (=> d!1339934 (contains!12029 (extractMap!795 (toList!3455 lm!1616)) key!3717)))

(declare-fun lt!1621829 () Unit!81433)

(declare-fun choose!27871 (ListLongMap!2105 K!10908 Hashable!5128) Unit!81433)

(assert (=> d!1339934 (= lt!1621829 (choose!27871 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1339934 (forall!9536 (toList!3455 lm!1616) lambda!153179)))

(assert (=> d!1339934 (= (lemmaExtractTailMapContainsThenExtractMapDoes!21 lm!1616 key!3717 hashF!1220) lt!1621829)))

(declare-fun bs!755166 () Bool)

(assert (= bs!755166 d!1339934))

(assert (=> bs!755166 m!5099789))

(assert (=> bs!755166 m!5099789))

(assert (=> bs!755166 m!5099791))

(declare-fun m!5099985 () Bool)

(assert (=> bs!755166 m!5099985))

(declare-fun m!5099987 () Bool)

(assert (=> bs!755166 m!5099987))

(assert (=> b!4421806 d!1339934))

(declare-fun d!1339936 () Bool)

(declare-fun hash!2081 (Hashable!5128 K!10908) (_ BitVec 64))

(assert (=> d!1339936 (= (hash!2078 hashF!1220 key!3717) (hash!2081 hashF!1220 key!3717))))

(declare-fun bs!755167 () Bool)

(assert (= bs!755167 d!1339936))

(declare-fun m!5099989 () Bool)

(assert (=> bs!755167 m!5099989))

(assert (=> b!4421816 d!1339936))

(declare-fun d!1339938 () Bool)

(declare-fun e!2753327 () Bool)

(assert (=> d!1339938 e!2753327))

(declare-fun res!1827635 () Bool)

(assert (=> d!1339938 (=> res!1827635 e!2753327)))

(declare-fun lt!1621841 () Bool)

(assert (=> d!1339938 (= res!1827635 (not lt!1621841))))

(declare-fun lt!1621840 () Bool)

(assert (=> d!1339938 (= lt!1621841 lt!1621840)))

(declare-fun lt!1621839 () Unit!81433)

(declare-fun e!2753326 () Unit!81433)

(assert (=> d!1339938 (= lt!1621839 e!2753326)))

(declare-fun c!752705 () Bool)

(assert (=> d!1339938 (= c!752705 lt!1621840)))

(declare-fun containsKey!1088 (List!49669 (_ BitVec 64)) Bool)

(assert (=> d!1339938 (= lt!1621840 (containsKey!1088 (toList!3455 lm!1616) hash!366))))

(assert (=> d!1339938 (= (contains!12030 lm!1616 hash!366) lt!1621841)))

(declare-fun b!4421978 () Bool)

(declare-fun lt!1621838 () Unit!81433)

(assert (=> b!4421978 (= e!2753326 lt!1621838)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!604 (List!49669 (_ BitVec 64)) Unit!81433)

(assert (=> b!4421978 (= lt!1621838 (lemmaContainsKeyImpliesGetValueByKeyDefined!604 (toList!3455 lm!1616) hash!366))))

(declare-fun isDefined!8001 (Option!10707) Bool)

(assert (=> b!4421978 (isDefined!8001 (getValueByKey!693 (toList!3455 lm!1616) hash!366))))

(declare-fun b!4421979 () Bool)

(declare-fun Unit!81443 () Unit!81433)

(assert (=> b!4421979 (= e!2753326 Unit!81443)))

(declare-fun b!4421980 () Bool)

(assert (=> b!4421980 (= e!2753327 (isDefined!8001 (getValueByKey!693 (toList!3455 lm!1616) hash!366)))))

(assert (= (and d!1339938 c!752705) b!4421978))

(assert (= (and d!1339938 (not c!752705)) b!4421979))

(assert (= (and d!1339938 (not res!1827635)) b!4421980))

(declare-fun m!5099991 () Bool)

(assert (=> d!1339938 m!5099991))

(declare-fun m!5099993 () Bool)

(assert (=> b!4421978 m!5099993))

(assert (=> b!4421978 m!5099853))

(assert (=> b!4421978 m!5099853))

(declare-fun m!5099995 () Bool)

(assert (=> b!4421978 m!5099995))

(assert (=> b!4421980 m!5099853))

(assert (=> b!4421980 m!5099853))

(assert (=> b!4421980 m!5099995))

(assert (=> b!4421814 d!1339938))

(assert (=> b!4421813 d!1339928))

(declare-fun d!1339940 () Bool)

(declare-fun res!1827636 () Bool)

(declare-fun e!2753329 () Bool)

(assert (=> d!1339940 (=> res!1827636 e!2753329)))

(assert (=> d!1339940 (= res!1827636 (not (is-Cons!49544 (_2!27952 (h!55222 (toList!3455 lm!1616))))))))

(assert (=> d!1339940 (= (noDuplicateKeys!734 (_2!27952 (h!55222 (toList!3455 lm!1616)))) e!2753329)))

(declare-fun b!4421985 () Bool)

(declare-fun e!2753331 () Bool)

(assert (=> b!4421985 (= e!2753329 e!2753331)))

(declare-fun res!1827637 () Bool)

(assert (=> b!4421985 (=> (not res!1827637) (not e!2753331))))

(assert (=> b!4421985 (= res!1827637 (not (containsKey!1086 (t!356606 (_2!27952 (h!55222 (toList!3455 lm!1616)))) (_1!27951 (h!55221 (_2!27952 (h!55222 (toList!3455 lm!1616))))))))))

(declare-fun b!4421986 () Bool)

(assert (=> b!4421986 (= e!2753331 (noDuplicateKeys!734 (t!356606 (_2!27952 (h!55222 (toList!3455 lm!1616))))))))

(assert (= (and d!1339940 (not res!1827636)) b!4421985))

(assert (= (and b!4421985 res!1827637) b!4421986))

(declare-fun m!5099997 () Bool)

(assert (=> b!4421985 m!5099997))

(declare-fun m!5099999 () Bool)

(assert (=> b!4421986 m!5099999))

(assert (=> b!4421812 d!1339940))

(declare-fun b!4421991 () Bool)

(declare-fun e!2753333 () Unit!81433)

(declare-fun lt!1621857 () Unit!81433)

(assert (=> b!4421991 (= e!2753333 lt!1621857)))

(declare-fun lt!1621856 () Unit!81433)

(assert (=> b!4421991 (= lt!1621856 (lemmaContainsKeyImpliesGetValueByKeyDefined!603 (toList!3456 (extractMap!795 (toList!3455 lm!1616))) key!3717))))

(assert (=> b!4421991 (isDefined!8000 (getValueByKey!694 (toList!3456 (extractMap!795 (toList!3455 lm!1616))) key!3717))))

(declare-fun lt!1621859 () Unit!81433)

(assert (=> b!4421991 (= lt!1621859 lt!1621856)))

(assert (=> b!4421991 (= lt!1621857 (lemmaInListThenGetKeysListContains!241 (toList!3456 (extractMap!795 (toList!3455 lm!1616))) key!3717))))

(declare-fun call!307644 () Bool)

(assert (=> b!4421991 call!307644))

(declare-fun b!4421992 () Bool)

(assert (=> b!4421992 false))

(declare-fun lt!1621861 () Unit!81433)

(declare-fun lt!1621855 () Unit!81433)

(assert (=> b!4421992 (= lt!1621861 lt!1621855)))

(assert (=> b!4421992 (containsKey!1087 (toList!3456 (extractMap!795 (toList!3455 lm!1616))) key!3717)))

(assert (=> b!4421992 (= lt!1621855 (lemmaInGetKeysListThenContainsKey!242 (toList!3456 (extractMap!795 (toList!3455 lm!1616))) key!3717))))

(declare-fun e!2753339 () Unit!81433)

(declare-fun Unit!81444 () Unit!81433)

(assert (=> b!4421992 (= e!2753339 Unit!81444)))

(declare-fun b!4421993 () Bool)

(declare-fun e!2753336 () Bool)

(declare-fun e!2753335 () Bool)

(assert (=> b!4421993 (= e!2753336 e!2753335)))

(declare-fun res!1827640 () Bool)

(assert (=> b!4421993 (=> (not res!1827640) (not e!2753335))))

(assert (=> b!4421993 (= res!1827640 (isDefined!8000 (getValueByKey!694 (toList!3456 (extractMap!795 (toList!3455 lm!1616))) key!3717)))))

(declare-fun d!1339942 () Bool)

(assert (=> d!1339942 e!2753336))

(declare-fun res!1827639 () Bool)

(assert (=> d!1339942 (=> res!1827639 e!2753336)))

(declare-fun e!2753338 () Bool)

(assert (=> d!1339942 (= res!1827639 e!2753338)))

(declare-fun res!1827638 () Bool)

(assert (=> d!1339942 (=> (not res!1827638) (not e!2753338))))

(declare-fun lt!1621854 () Bool)

(assert (=> d!1339942 (= res!1827638 (not lt!1621854))))

(declare-fun lt!1621858 () Bool)

(assert (=> d!1339942 (= lt!1621854 lt!1621858)))

(declare-fun lt!1621860 () Unit!81433)

(assert (=> d!1339942 (= lt!1621860 e!2753333)))

(declare-fun c!752708 () Bool)

(assert (=> d!1339942 (= c!752708 lt!1621858)))

(assert (=> d!1339942 (= lt!1621858 (containsKey!1087 (toList!3456 (extractMap!795 (toList!3455 lm!1616))) key!3717))))

(assert (=> d!1339942 (= (contains!12029 (extractMap!795 (toList!3455 lm!1616)) key!3717) lt!1621854)))

(declare-fun b!4421994 () Bool)

(declare-fun Unit!81445 () Unit!81433)

(assert (=> b!4421994 (= e!2753339 Unit!81445)))

(declare-fun bm!307639 () Bool)

(declare-fun e!2753332 () List!49672)

(assert (=> bm!307639 (= call!307644 (contains!12035 e!2753332 key!3717))))

(declare-fun c!752712 () Bool)

(assert (=> bm!307639 (= c!752712 c!752708)))

(declare-fun b!4421995 () Bool)

(assert (=> b!4421995 (= e!2753333 e!2753339)))

(declare-fun c!752710 () Bool)

(assert (=> b!4421995 (= c!752710 call!307644)))

(declare-fun b!4421996 () Bool)

(assert (=> b!4421996 (= e!2753338 (not (contains!12035 (keys!16906 (extractMap!795 (toList!3455 lm!1616))) key!3717)))))

(declare-fun b!4421997 () Bool)

(assert (=> b!4421997 (= e!2753332 (keys!16906 (extractMap!795 (toList!3455 lm!1616))))))

(declare-fun b!4421998 () Bool)

(assert (=> b!4421998 (= e!2753332 (getKeysList!244 (toList!3456 (extractMap!795 (toList!3455 lm!1616)))))))

(declare-fun b!4421999 () Bool)

(assert (=> b!4421999 (= e!2753335 (contains!12035 (keys!16906 (extractMap!795 (toList!3455 lm!1616))) key!3717))))

(assert (= (and d!1339942 c!752708) b!4421991))

(assert (= (and d!1339942 (not c!752708)) b!4421995))

(assert (= (and b!4421995 c!752710) b!4421992))

(assert (= (and b!4421995 (not c!752710)) b!4421994))

(assert (= (or b!4421991 b!4421995) bm!307639))

(assert (= (and bm!307639 c!752712) b!4421998))

(assert (= (and bm!307639 (not c!752712)) b!4421997))

(assert (= (and d!1339942 res!1827638) b!4421996))

(assert (= (and d!1339942 (not res!1827639)) b!4421993))

(assert (= (and b!4421993 res!1827640) b!4421999))

(declare-fun m!5100001 () Bool)

(assert (=> b!4421993 m!5100001))

(assert (=> b!4421993 m!5100001))

(declare-fun m!5100003 () Bool)

(assert (=> b!4421993 m!5100003))

(assert (=> b!4421999 m!5099789))

(declare-fun m!5100005 () Bool)

(assert (=> b!4421999 m!5100005))

(assert (=> b!4421999 m!5100005))

(declare-fun m!5100007 () Bool)

(assert (=> b!4421999 m!5100007))

(declare-fun m!5100009 () Bool)

(assert (=> d!1339942 m!5100009))

(assert (=> b!4421996 m!5099789))

(assert (=> b!4421996 m!5100005))

(assert (=> b!4421996 m!5100005))

(assert (=> b!4421996 m!5100007))

(declare-fun m!5100011 () Bool)

(assert (=> b!4421991 m!5100011))

(assert (=> b!4421991 m!5100001))

(assert (=> b!4421991 m!5100001))

(assert (=> b!4421991 m!5100003))

(declare-fun m!5100013 () Bool)

(assert (=> b!4421991 m!5100013))

(assert (=> b!4421992 m!5100009))

(declare-fun m!5100015 () Bool)

(assert (=> b!4421992 m!5100015))

(declare-fun m!5100017 () Bool)

(assert (=> b!4421998 m!5100017))

(declare-fun m!5100019 () Bool)

(assert (=> bm!307639 m!5100019))

(assert (=> b!4421997 m!5099789))

(assert (=> b!4421997 m!5100005))

(assert (=> b!4421821 d!1339942))

(declare-fun bs!755168 () Bool)

(declare-fun d!1339944 () Bool)

(assert (= bs!755168 (and d!1339944 d!1339934)))

(declare-fun lambda!153180 () Int)

(assert (=> bs!755168 (= lambda!153180 lambda!153179)))

(declare-fun bs!755169 () Bool)

(assert (= bs!755169 (and d!1339944 d!1339902)))

(assert (=> bs!755169 (= lambda!153180 lambda!153168)))

(declare-fun bs!755170 () Bool)

(assert (= bs!755170 (and d!1339944 d!1339904)))

(assert (=> bs!755170 (= lambda!153180 lambda!153171)))

(declare-fun bs!755171 () Bool)

(assert (= bs!755171 (and d!1339944 start!431074)))

(assert (=> bs!755171 (= lambda!153180 lambda!153153)))

(declare-fun bs!755172 () Bool)

(assert (= bs!755172 (and d!1339944 d!1339918)))

(assert (=> bs!755172 (= lambda!153180 lambda!153173)))

(declare-fun bs!755173 () Bool)

(assert (= bs!755173 (and d!1339944 d!1339932)))

(assert (=> bs!755173 (not (= lambda!153180 lambda!153176))))

(declare-fun bs!755174 () Bool)

(assert (= bs!755174 (and d!1339944 d!1339908)))

(assert (=> bs!755174 (= lambda!153180 lambda!153172)))

(declare-fun lt!1621866 () ListMap!2699)

(assert (=> d!1339944 (invariantList!796 (toList!3456 lt!1621866))))

(declare-fun e!2753340 () ListMap!2699)

(assert (=> d!1339944 (= lt!1621866 e!2753340)))

(declare-fun c!752713 () Bool)

(assert (=> d!1339944 (= c!752713 (is-Cons!49545 (toList!3455 lm!1616)))))

(assert (=> d!1339944 (forall!9536 (toList!3455 lm!1616) lambda!153180)))

(assert (=> d!1339944 (= (extractMap!795 (toList!3455 lm!1616)) lt!1621866)))

(declare-fun b!4422002 () Bool)

(assert (=> b!4422002 (= e!2753340 (addToMapMapFromBucket!371 (_2!27952 (h!55222 (toList!3455 lm!1616))) (extractMap!795 (t!356607 (toList!3455 lm!1616)))))))

(declare-fun b!4422004 () Bool)

(assert (=> b!4422004 (= e!2753340 (ListMap!2700 Nil!49544))))

(assert (= (and d!1339944 c!752713) b!4422002))

(assert (= (and d!1339944 (not c!752713)) b!4422004))

(declare-fun m!5100021 () Bool)

(assert (=> d!1339944 m!5100021))

(declare-fun m!5100023 () Bool)

(assert (=> d!1339944 m!5100023))

(declare-fun m!5100025 () Bool)

(assert (=> b!4422002 m!5100025))

(assert (=> b!4422002 m!5100025))

(declare-fun m!5100027 () Bool)

(assert (=> b!4422002 m!5100027))

(assert (=> b!4421821 d!1339944))

(declare-fun d!1339946 () Bool)

(declare-fun res!1827647 () Bool)

(declare-fun e!2753349 () Bool)

(assert (=> d!1339946 (=> res!1827647 e!2753349)))

(assert (=> d!1339946 (= res!1827647 (is-Nil!49545 (toList!3455 lt!1621718)))))

(assert (=> d!1339946 (= (forall!9536 (toList!3455 lt!1621718) lambda!153153) e!2753349)))

(declare-fun b!4422010 () Bool)

(declare-fun e!2753350 () Bool)

(assert (=> b!4422010 (= e!2753349 e!2753350)))

(declare-fun res!1827648 () Bool)

(assert (=> b!4422010 (=> (not res!1827648) (not e!2753350))))

(assert (=> b!4422010 (= res!1827648 (dynLambda!20833 lambda!153153 (h!55222 (toList!3455 lt!1621718))))))

(declare-fun b!4422011 () Bool)

(assert (=> b!4422011 (= e!2753350 (forall!9536 (t!356607 (toList!3455 lt!1621718)) lambda!153153))))

(assert (= (and d!1339946 (not res!1827647)) b!4422010))

(assert (= (and b!4422010 res!1827648) b!4422011))

(declare-fun b_lambda!142677 () Bool)

(assert (=> (not b_lambda!142677) (not b!4422010)))

(declare-fun m!5100029 () Bool)

(assert (=> b!4422010 m!5100029))

(declare-fun m!5100031 () Bool)

(assert (=> b!4422011 m!5100031))

(assert (=> b!4421810 d!1339946))

(declare-fun d!1339948 () Bool)

(declare-fun e!2753351 () Bool)

(assert (=> d!1339948 e!2753351))

(declare-fun res!1827650 () Bool)

(assert (=> d!1339948 (=> (not res!1827650) (not e!2753351))))

(declare-fun lt!1621870 () ListLongMap!2105)

(assert (=> d!1339948 (= res!1827650 (contains!12030 lt!1621870 (_1!27952 lt!1621715)))))

(declare-fun lt!1621869 () List!49669)

(assert (=> d!1339948 (= lt!1621870 (ListLongMap!2106 lt!1621869))))

(declare-fun lt!1621868 () Unit!81433)

(declare-fun lt!1621867 () Unit!81433)

(assert (=> d!1339948 (= lt!1621868 lt!1621867)))

(assert (=> d!1339948 (= (getValueByKey!693 lt!1621869 (_1!27952 lt!1621715)) (Some!10706 (_2!27952 lt!1621715)))))

(assert (=> d!1339948 (= lt!1621867 (lemmaContainsTupThenGetReturnValue!428 lt!1621869 (_1!27952 lt!1621715) (_2!27952 lt!1621715)))))

(assert (=> d!1339948 (= lt!1621869 (insertStrictlySorted!251 (toList!3455 lm!1616) (_1!27952 lt!1621715) (_2!27952 lt!1621715)))))

(assert (=> d!1339948 (= (+!1052 lm!1616 lt!1621715) lt!1621870)))

(declare-fun b!4422014 () Bool)

(declare-fun res!1827649 () Bool)

(assert (=> b!4422014 (=> (not res!1827649) (not e!2753351))))

(assert (=> b!4422014 (= res!1827649 (= (getValueByKey!693 (toList!3455 lt!1621870) (_1!27952 lt!1621715)) (Some!10706 (_2!27952 lt!1621715))))))

(declare-fun b!4422015 () Bool)

(assert (=> b!4422015 (= e!2753351 (contains!12033 (toList!3455 lt!1621870) lt!1621715))))

(assert (= (and d!1339948 res!1827650) b!4422014))

(assert (= (and b!4422014 res!1827649) b!4422015))

(declare-fun m!5100033 () Bool)

(assert (=> d!1339948 m!5100033))

(declare-fun m!5100035 () Bool)

(assert (=> d!1339948 m!5100035))

(declare-fun m!5100037 () Bool)

(assert (=> d!1339948 m!5100037))

(declare-fun m!5100039 () Bool)

(assert (=> d!1339948 m!5100039))

(declare-fun m!5100041 () Bool)

(assert (=> b!4422014 m!5100041))

(declare-fun m!5100043 () Bool)

(assert (=> b!4422015 m!5100043))

(assert (=> b!4421810 d!1339948))

(declare-fun d!1339950 () Bool)

(assert (=> d!1339950 (forall!9536 (toList!3455 (+!1052 lm!1616 (tuple2!49317 hash!366 newBucket!194))) lambda!153153)))

(declare-fun lt!1621873 () Unit!81433)

(declare-fun choose!27872 (ListLongMap!2105 Int (_ BitVec 64) List!49668) Unit!81433)

(assert (=> d!1339950 (= lt!1621873 (choose!27872 lm!1616 lambda!153153 hash!366 newBucket!194))))

(declare-fun e!2753354 () Bool)

(assert (=> d!1339950 e!2753354))

(declare-fun res!1827653 () Bool)

(assert (=> d!1339950 (=> (not res!1827653) (not e!2753354))))

(assert (=> d!1339950 (= res!1827653 (forall!9536 (toList!3455 lm!1616) lambda!153153))))

(assert (=> d!1339950 (= (addValidProp!378 lm!1616 lambda!153153 hash!366 newBucket!194) lt!1621873)))

(declare-fun b!4422019 () Bool)

(assert (=> b!4422019 (= e!2753354 (dynLambda!20833 lambda!153153 (tuple2!49317 hash!366 newBucket!194)))))

(assert (= (and d!1339950 res!1827653) b!4422019))

(declare-fun b_lambda!142679 () Bool)

(assert (=> (not b_lambda!142679) (not b!4422019)))

(declare-fun m!5100045 () Bool)

(assert (=> d!1339950 m!5100045))

(declare-fun m!5100047 () Bool)

(assert (=> d!1339950 m!5100047))

(declare-fun m!5100049 () Bool)

(assert (=> d!1339950 m!5100049))

(assert (=> d!1339950 m!5099753))

(declare-fun m!5100051 () Bool)

(assert (=> b!4422019 m!5100051))

(assert (=> b!4421810 d!1339950))

(declare-fun b!4422024 () Bool)

(declare-fun e!2753357 () Bool)

(declare-fun tp!1333027 () Bool)

(declare-fun tp!1333028 () Bool)

(assert (=> b!4422024 (= e!2753357 (and tp!1333027 tp!1333028))))

(assert (=> b!4421807 (= tp!1333016 e!2753357)))

(assert (= (and b!4421807 (is-Cons!49545 (toList!3455 lm!1616))) b!4422024))

(declare-fun b!4422038 () Bool)

(declare-fun tp!1333031 () Bool)

(declare-fun e!2753366 () Bool)

(assert (=> b!4422038 (= e!2753366 (and tp_is_empty!26183 tp_is_empty!26181 tp!1333031))))

(assert (=> b!4421822 (= tp!1333015 e!2753366)))

(assert (= (and b!4421822 (is-Cons!49544 (t!356606 newBucket!194))) b!4422038))

(declare-fun b_lambda!142681 () Bool)

(assert (= b_lambda!142675 (or start!431074 b_lambda!142681)))

(declare-fun bs!755175 () Bool)

(declare-fun d!1339952 () Bool)

(assert (= bs!755175 (and d!1339952 start!431074)))

(assert (=> bs!755175 (= (dynLambda!20833 lambda!153153 (h!55222 (toList!3455 lm!1616))) (noDuplicateKeys!734 (_2!27952 (h!55222 (toList!3455 lm!1616)))))))

(assert (=> bs!755175 m!5099787))

(assert (=> b!4421968 d!1339952))

(declare-fun b_lambda!142683 () Bool)

(assert (= b_lambda!142679 (or start!431074 b_lambda!142683)))

(declare-fun bs!755176 () Bool)

(declare-fun d!1339954 () Bool)

(assert (= bs!755176 (and d!1339954 start!431074)))

(assert (=> bs!755176 (= (dynLambda!20833 lambda!153153 (tuple2!49317 hash!366 newBucket!194)) (noDuplicateKeys!734 (_2!27952 (tuple2!49317 hash!366 newBucket!194))))))

(declare-fun m!5100053 () Bool)

(assert (=> bs!755176 m!5100053))

(assert (=> b!4422019 d!1339954))

(declare-fun b_lambda!142685 () Bool)

(assert (= b_lambda!142677 (or start!431074 b_lambda!142685)))

(declare-fun bs!755177 () Bool)

(declare-fun d!1339956 () Bool)

(assert (= bs!755177 (and d!1339956 start!431074)))

(assert (=> bs!755177 (= (dynLambda!20833 lambda!153153 (h!55222 (toList!3455 lt!1621718))) (noDuplicateKeys!734 (_2!27952 (h!55222 (toList!3455 lt!1621718)))))))

(declare-fun m!5100055 () Bool)

(assert (=> bs!755177 m!5100055))

(assert (=> b!4422010 d!1339956))

(push 1)

(assert (not d!1339950))

(assert (not d!1339910))

(assert (not b!4421992))

(assert (not d!1339914))

(assert (not b!4421894))

(assert (not d!1339918))

(assert (not d!1339930))

(assert (not d!1339890))

(assert (not b!4421956))

(assert (not b!4421991))

(assert (not b!4421911))

(assert (not d!1339936))

(assert (not b!4421955))

(assert (not d!1339944))

(assert (not b!4421879))

(assert (not b!4422015))

(assert (not b!4422011))

(assert (not b!4421895))

(assert (not b!4422002))

(assert (not b!4421998))

(assert tp_is_empty!26181)

(assert (not b!4422014))

(assert (not b!4422038))

(assert (not b!4421999))

(assert (not b_lambda!142681))

(assert (not d!1339894))

(assert (not b!4421962))

(assert (not d!1339922))

(assert (not b!4421997))

(assert (not b!4421963))

(assert (not b!4421980))

(assert (not b!4421920))

(assert (not b!4421993))

(assert (not bm!307638))

(assert (not bs!755177))

(assert (not b!4421960))

(assert (not b!4422024))

(assert (not d!1339934))

(assert (not d!1339896))

(assert (not b!4421961))

(assert (not bm!307639))

(assert (not b!4421969))

(assert (not b!4421978))

(assert (not bs!755176))

(assert (not d!1339904))

(assert (not d!1339908))

(assert (not d!1339932))

(assert tp_is_empty!26183)

(assert (not b!4421918))

(assert (not b_lambda!142683))

(assert (not b!4421904))

(assert (not bs!755175))

(assert (not d!1339942))

(assert (not b_lambda!142685))

(assert (not d!1339948))

(assert (not d!1339912))

(assert (not b!4421878))

(assert (not d!1339902))

(assert (not b!4421996))

(assert (not b!4421957))

(assert (not b!4421985))

(assert (not d!1339900))

(assert (not b!4421919))

(assert (not b!4421986))

(assert (not d!1339938))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

