; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!425120 () Bool)

(assert start!425120)

(declare-fun tp_is_empty!25555 () Bool)

(declare-fun tp_is_empty!25553 () Bool)

(declare-fun e!2725005 () Bool)

(declare-fun tp!1331179 () Bool)

(declare-fun b!4377781 () Bool)

(assert (=> b!4377781 (= e!2725005 (and tp_is_empty!25553 tp_is_empty!25555 tp!1331179))))

(declare-fun b!4377782 () Bool)

(declare-fun e!2725002 () Bool)

(declare-fun e!2725008 () Bool)

(assert (=> b!4377782 (= e!2725002 (not e!2725008))))

(declare-fun res!1802730 () Bool)

(assert (=> b!4377782 (=> res!1802730 e!2725008)))

(declare-datatypes ((K!10515 0))(
  ( (K!10516 (val!16683 Int)) )
))
(declare-datatypes ((V!10761 0))(
  ( (V!10762 (val!16684 Int)) )
))
(declare-datatypes ((tuple2!48686 0))(
  ( (tuple2!48687 (_1!27637 K!10515) (_2!27637 V!10761)) )
))
(declare-datatypes ((List!49280 0))(
  ( (Nil!49156) (Cons!49156 (h!54753 tuple2!48686) (t!356206 List!49280)) )
))
(declare-fun newBucket!200 () List!49280)

(declare-fun lt!1588593 () List!49280)

(assert (=> b!4377782 (= res!1802730 (not (= newBucket!200 lt!1588593)))))

(declare-fun lt!1588602 () tuple2!48686)

(declare-fun lt!1588612 () List!49280)

(assert (=> b!4377782 (= lt!1588593 (Cons!49156 lt!1588602 lt!1588612))))

(declare-fun lt!1588595 () List!49280)

(declare-fun key!3918 () K!10515)

(declare-fun removePairForKey!547 (List!49280 K!10515) List!49280)

(assert (=> b!4377782 (= lt!1588612 (removePairForKey!547 lt!1588595 key!3918))))

(declare-fun newValue!99 () V!10761)

(assert (=> b!4377782 (= lt!1588602 (tuple2!48687 key!3918 newValue!99))))

(declare-fun lambda!145061 () Int)

(declare-datatypes ((tuple2!48688 0))(
  ( (tuple2!48689 (_1!27638 (_ BitVec 64)) (_2!27638 List!49280)) )
))
(declare-fun lt!1588592 () tuple2!48688)

(declare-datatypes ((List!49281 0))(
  ( (Nil!49157) (Cons!49157 (h!54754 tuple2!48688) (t!356207 List!49281)) )
))
(declare-datatypes ((ListLongMap!1791 0))(
  ( (ListLongMap!1792 (toList!3141 List!49281)) )
))
(declare-fun lm!1707 () ListLongMap!1791)

(declare-datatypes ((Unit!75116 0))(
  ( (Unit!75117) )
))
(declare-fun lt!1588605 () Unit!75116)

(declare-fun forallContained!1909 (List!49281 Int tuple2!48688) Unit!75116)

(assert (=> b!4377782 (= lt!1588605 (forallContained!1909 (toList!3141 lm!1707) lambda!145061 lt!1588592))))

(declare-fun contains!11487 (List!49281 tuple2!48688) Bool)

(assert (=> b!4377782 (contains!11487 (toList!3141 lm!1707) lt!1588592)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4377782 (= lt!1588592 (tuple2!48689 hash!377 lt!1588595))))

(declare-fun lt!1588606 () Unit!75116)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!424 (List!49281 (_ BitVec 64) List!49280) Unit!75116)

(assert (=> b!4377782 (= lt!1588606 (lemmaGetValueByKeyImpliesContainsTuple!424 (toList!3141 lm!1707) hash!377 lt!1588595))))

(declare-fun apply!11431 (ListLongMap!1791 (_ BitVec 64)) List!49280)

(assert (=> b!4377782 (= lt!1588595 (apply!11431 lm!1707 hash!377))))

(declare-fun lt!1588608 () tuple2!48688)

(declare-fun lt!1588604 () ListLongMap!1791)

(declare-fun b!4377784 () Bool)

(declare-fun e!2725001 () Bool)

(get-info :version)

(assert (=> b!4377784 (= e!2725001 (or (not ((_ is Cons!49157) (toList!3141 lm!1707))) (not (= (_1!27638 (h!54754 (toList!3141 lm!1707))) hash!377)) (= lt!1588604 (ListLongMap!1792 (Cons!49157 lt!1588608 (t!356207 (toList!3141 lm!1707)))))))))

(declare-fun b!4377785 () Bool)

(declare-fun res!1802726 () Bool)

(assert (=> b!4377785 (=> (not res!1802726) (not e!2725001))))

(declare-fun forall!9271 (List!49281 Int) Bool)

(assert (=> b!4377785 (= res!1802726 (forall!9271 (toList!3141 lt!1588604) lambda!145061))))

(declare-fun b!4377786 () Bool)

(declare-fun res!1802729 () Bool)

(declare-fun e!2725007 () Bool)

(assert (=> b!4377786 (=> (not res!1802729) (not e!2725007))))

(declare-datatypes ((Hashable!4971 0))(
  ( (HashableExt!4970 (__x!30674 Int)) )
))
(declare-fun hashF!1247 () Hashable!4971)

(declare-fun allKeysSameHashInMap!683 (ListLongMap!1791 Hashable!4971) Bool)

(assert (=> b!4377786 (= res!1802729 (allKeysSameHashInMap!683 lm!1707 hashF!1247))))

(declare-fun b!4377787 () Bool)

(declare-fun res!1802737 () Bool)

(assert (=> b!4377787 (=> (not res!1802737) (not e!2725007))))

(declare-fun hash!1746 (Hashable!4971 K!10515) (_ BitVec 64))

(assert (=> b!4377787 (= res!1802737 (= (hash!1746 hashF!1247 key!3918) hash!377))))

(declare-fun b!4377788 () Bool)

(assert (=> b!4377788 (= e!2725007 e!2725002)))

(declare-fun res!1802735 () Bool)

(assert (=> b!4377788 (=> (not res!1802735) (not e!2725002))))

(declare-datatypes ((ListMap!2385 0))(
  ( (ListMap!2386 (toList!3142 List!49280)) )
))
(declare-fun lt!1588610 () ListMap!2385)

(declare-fun contains!11488 (ListMap!2385 K!10515) Bool)

(assert (=> b!4377788 (= res!1802735 (contains!11488 lt!1588610 key!3918))))

(declare-fun extractMap!638 (List!49281) ListMap!2385)

(assert (=> b!4377788 (= lt!1588610 (extractMap!638 (toList!3141 lm!1707)))))

(declare-fun e!2725006 () Bool)

(declare-fun lt!1588599 () List!49280)

(declare-fun lt!1588596 () ListLongMap!1791)

(declare-fun b!4377789 () Bool)

(assert (=> b!4377789 (= e!2725006 (= (apply!11431 lt!1588596 hash!377) lt!1588599))))

(declare-fun lt!1588597 () ListMap!2385)

(declare-fun lt!1588598 () ListMap!2385)

(assert (=> b!4377789 (= (contains!11488 lt!1588597 key!3918) (contains!11488 lt!1588598 key!3918))))

(declare-fun lt!1588611 () Unit!75116)

(declare-fun lemmaEquivalentThenSameContains!104 (ListMap!2385 ListMap!2385 K!10515) Unit!75116)

(assert (=> b!4377789 (= lt!1588611 (lemmaEquivalentThenSameContains!104 lt!1588597 lt!1588598 key!3918))))

(declare-fun eq!317 (ListMap!2385 ListMap!2385) Bool)

(assert (=> b!4377789 (eq!317 lt!1588597 lt!1588598)))

(declare-fun -!254 (ListMap!2385 K!10515) ListMap!2385)

(assert (=> b!4377789 (= lt!1588598 (-!254 lt!1588610 key!3918))))

(declare-fun lt!1588600 () Unit!75116)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!69 (ListLongMap!1791 (_ BitVec 64) List!49280 K!10515 Hashable!4971) Unit!75116)

(assert (=> b!4377789 (= lt!1588600 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!69 lm!1707 hash!377 lt!1588599 key!3918 hashF!1247))))

(declare-fun lt!1588613 () ListMap!2385)

(assert (=> b!4377789 (= lt!1588613 lt!1588597)))

(assert (=> b!4377789 (= lt!1588597 (extractMap!638 (toList!3141 lt!1588596)))))

(assert (=> b!4377789 (= lt!1588599 lt!1588612)))

(declare-fun +!789 (ListLongMap!1791 tuple2!48688) ListLongMap!1791)

(assert (=> b!4377789 (= lt!1588596 (+!789 lm!1707 (tuple2!48689 hash!377 lt!1588599)))))

(declare-fun tail!7072 (List!49280) List!49280)

(assert (=> b!4377789 (= lt!1588599 (tail!7072 newBucket!200))))

(declare-fun e!2725003 () Bool)

(assert (=> b!4377789 e!2725003))

(declare-fun res!1802731 () Bool)

(assert (=> b!4377789 (=> (not res!1802731) (not e!2725003))))

(declare-fun lt!1588601 () ListMap!2385)

(declare-fun lt!1588609 () ListMap!2385)

(assert (=> b!4377789 (= res!1802731 (eq!317 lt!1588601 lt!1588609))))

(declare-fun +!790 (ListMap!2385 tuple2!48686) ListMap!2385)

(assert (=> b!4377789 (= lt!1588609 (+!790 lt!1588613 lt!1588602))))

(declare-fun lt!1588594 () ListMap!2385)

(declare-fun addToMapMapFromBucket!260 (List!49280 ListMap!2385) ListMap!2385)

(assert (=> b!4377789 (= lt!1588613 (addToMapMapFromBucket!260 lt!1588612 lt!1588594))))

(declare-fun lt!1588607 () Unit!75116)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!126 (ListMap!2385 K!10515 V!10761 List!49280) Unit!75116)

(assert (=> b!4377789 (= lt!1588607 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!126 lt!1588594 key!3918 newValue!99 lt!1588612))))

(declare-fun lt!1588591 () ListMap!2385)

(assert (=> b!4377789 (= lt!1588591 lt!1588601)))

(assert (=> b!4377789 (= lt!1588601 (addToMapMapFromBucket!260 lt!1588612 (+!790 lt!1588594 lt!1588602)))))

(declare-fun lt!1588603 () ListMap!2385)

(assert (=> b!4377789 (= lt!1588603 lt!1588591)))

(assert (=> b!4377789 (= lt!1588591 (addToMapMapFromBucket!260 lt!1588593 lt!1588594))))

(assert (=> b!4377789 (= lt!1588603 (addToMapMapFromBucket!260 newBucket!200 lt!1588594))))

(assert (=> b!4377789 (= lt!1588603 (extractMap!638 (toList!3141 lt!1588604)))))

(assert (=> b!4377789 (= lt!1588594 (extractMap!638 (t!356207 (toList!3141 lm!1707))))))

(declare-fun b!4377790 () Bool)

(declare-fun res!1802733 () Bool)

(assert (=> b!4377790 (=> res!1802733 e!2725008)))

(declare-fun noDuplicateKeys!579 (List!49280) Bool)

(assert (=> b!4377790 (= res!1802733 (not (noDuplicateKeys!579 newBucket!200)))))

(declare-fun b!4377791 () Bool)

(declare-fun res!1802732 () Bool)

(assert (=> b!4377791 (=> (not res!1802732) (not e!2725002))))

(declare-fun contains!11489 (ListLongMap!1791 (_ BitVec 64)) Bool)

(assert (=> b!4377791 (= res!1802732 (contains!11489 lm!1707 hash!377))))

(declare-fun b!4377792 () Bool)

(declare-fun e!2725004 () Bool)

(declare-fun tp!1331180 () Bool)

(assert (=> b!4377792 (= e!2725004 tp!1331180)))

(declare-fun b!4377783 () Bool)

(assert (=> b!4377783 (= e!2725003 (eq!317 lt!1588591 lt!1588609))))

(declare-fun res!1802727 () Bool)

(assert (=> start!425120 (=> (not res!1802727) (not e!2725007))))

(assert (=> start!425120 (= res!1802727 (forall!9271 (toList!3141 lm!1707) lambda!145061))))

(assert (=> start!425120 e!2725007))

(assert (=> start!425120 e!2725005))

(assert (=> start!425120 true))

(declare-fun inv!64701 (ListLongMap!1791) Bool)

(assert (=> start!425120 (and (inv!64701 lm!1707) e!2725004)))

(assert (=> start!425120 tp_is_empty!25553))

(assert (=> start!425120 tp_is_empty!25555))

(declare-fun b!4377793 () Bool)

(assert (=> b!4377793 (= e!2725008 e!2725006)))

(declare-fun res!1802728 () Bool)

(assert (=> b!4377793 (=> res!1802728 e!2725006)))

(assert (=> b!4377793 (= res!1802728 (or (not ((_ is Cons!49157) (toList!3141 lm!1707))) (not (= (_1!27638 (h!54754 (toList!3141 lm!1707))) hash!377))))))

(assert (=> b!4377793 e!2725001))

(declare-fun res!1802734 () Bool)

(assert (=> b!4377793 (=> (not res!1802734) (not e!2725001))))

(assert (=> b!4377793 (= res!1802734 (forall!9271 (toList!3141 lt!1588604) lambda!145061))))

(assert (=> b!4377793 (= lt!1588604 (+!789 lm!1707 lt!1588608))))

(assert (=> b!4377793 (= lt!1588608 (tuple2!48689 hash!377 newBucket!200))))

(declare-fun lt!1588614 () Unit!75116)

(declare-fun addValidProp!225 (ListLongMap!1791 Int (_ BitVec 64) List!49280) Unit!75116)

(assert (=> b!4377793 (= lt!1588614 (addValidProp!225 lm!1707 lambda!145061 hash!377 newBucket!200))))

(assert (=> b!4377793 (forall!9271 (toList!3141 lm!1707) lambda!145061)))

(declare-fun b!4377794 () Bool)

(declare-fun res!1802736 () Bool)

(assert (=> b!4377794 (=> (not res!1802736) (not e!2725007))))

(declare-fun allKeysSameHash!537 (List!49280 (_ BitVec 64) Hashable!4971) Bool)

(assert (=> b!4377794 (= res!1802736 (allKeysSameHash!537 newBucket!200 hash!377 hashF!1247))))

(assert (= (and start!425120 res!1802727) b!4377786))

(assert (= (and b!4377786 res!1802729) b!4377787))

(assert (= (and b!4377787 res!1802737) b!4377794))

(assert (= (and b!4377794 res!1802736) b!4377788))

(assert (= (and b!4377788 res!1802735) b!4377791))

(assert (= (and b!4377791 res!1802732) b!4377782))

(assert (= (and b!4377782 (not res!1802730)) b!4377790))

(assert (= (and b!4377790 (not res!1802733)) b!4377793))

(assert (= (and b!4377793 res!1802734) b!4377785))

(assert (= (and b!4377785 res!1802726) b!4377784))

(assert (= (and b!4377793 (not res!1802728)) b!4377789))

(assert (= (and b!4377789 res!1802731) b!4377783))

(assert (= (and start!425120 ((_ is Cons!49156) newBucket!200)) b!4377781))

(assert (= start!425120 b!4377792))

(declare-fun m!5012937 () Bool)

(assert (=> b!4377788 m!5012937))

(declare-fun m!5012939 () Bool)

(assert (=> b!4377788 m!5012939))

(declare-fun m!5012941 () Bool)

(assert (=> b!4377791 m!5012941))

(declare-fun m!5012943 () Bool)

(assert (=> b!4377789 m!5012943))

(declare-fun m!5012945 () Bool)

(assert (=> b!4377789 m!5012945))

(declare-fun m!5012947 () Bool)

(assert (=> b!4377789 m!5012947))

(assert (=> b!4377789 m!5012945))

(declare-fun m!5012949 () Bool)

(assert (=> b!4377789 m!5012949))

(declare-fun m!5012951 () Bool)

(assert (=> b!4377789 m!5012951))

(declare-fun m!5012953 () Bool)

(assert (=> b!4377789 m!5012953))

(declare-fun m!5012955 () Bool)

(assert (=> b!4377789 m!5012955))

(declare-fun m!5012957 () Bool)

(assert (=> b!4377789 m!5012957))

(declare-fun m!5012959 () Bool)

(assert (=> b!4377789 m!5012959))

(declare-fun m!5012961 () Bool)

(assert (=> b!4377789 m!5012961))

(declare-fun m!5012963 () Bool)

(assert (=> b!4377789 m!5012963))

(declare-fun m!5012965 () Bool)

(assert (=> b!4377789 m!5012965))

(declare-fun m!5012967 () Bool)

(assert (=> b!4377789 m!5012967))

(declare-fun m!5012969 () Bool)

(assert (=> b!4377789 m!5012969))

(declare-fun m!5012971 () Bool)

(assert (=> b!4377789 m!5012971))

(declare-fun m!5012973 () Bool)

(assert (=> b!4377789 m!5012973))

(declare-fun m!5012975 () Bool)

(assert (=> b!4377789 m!5012975))

(declare-fun m!5012977 () Bool)

(assert (=> b!4377789 m!5012977))

(declare-fun m!5012979 () Bool)

(assert (=> b!4377789 m!5012979))

(declare-fun m!5012981 () Bool)

(assert (=> b!4377789 m!5012981))

(declare-fun m!5012983 () Bool)

(assert (=> b!4377786 m!5012983))

(declare-fun m!5012985 () Bool)

(assert (=> b!4377793 m!5012985))

(declare-fun m!5012987 () Bool)

(assert (=> b!4377793 m!5012987))

(declare-fun m!5012989 () Bool)

(assert (=> b!4377793 m!5012989))

(declare-fun m!5012991 () Bool)

(assert (=> b!4377793 m!5012991))

(declare-fun m!5012993 () Bool)

(assert (=> b!4377794 m!5012993))

(declare-fun m!5012995 () Bool)

(assert (=> b!4377783 m!5012995))

(assert (=> start!425120 m!5012991))

(declare-fun m!5012997 () Bool)

(assert (=> start!425120 m!5012997))

(declare-fun m!5012999 () Bool)

(assert (=> b!4377790 m!5012999))

(assert (=> b!4377785 m!5012985))

(declare-fun m!5013001 () Bool)

(assert (=> b!4377782 m!5013001))

(declare-fun m!5013003 () Bool)

(assert (=> b!4377782 m!5013003))

(declare-fun m!5013005 () Bool)

(assert (=> b!4377782 m!5013005))

(declare-fun m!5013007 () Bool)

(assert (=> b!4377782 m!5013007))

(declare-fun m!5013009 () Bool)

(assert (=> b!4377782 m!5013009))

(declare-fun m!5013011 () Bool)

(assert (=> b!4377787 m!5013011))

(check-sat (not b!4377790) (not start!425120) (not b!4377785) (not b!4377782) (not b!4377783) (not b!4377793) (not b!4377787) (not b!4377794) (not b!4377786) (not b!4377789) (not b!4377788) (not b!4377791) (not b!4377792) tp_is_empty!25555 tp_is_empty!25553 (not b!4377781))
(check-sat)
(get-model)

(declare-fun bs!660377 () Bool)

(declare-fun d!1303157 () Bool)

(assert (= bs!660377 (and d!1303157 start!425120)))

(declare-fun lambda!145064 () Int)

(assert (=> bs!660377 (not (= lambda!145064 lambda!145061))))

(assert (=> d!1303157 true))

(assert (=> d!1303157 (= (allKeysSameHashInMap!683 lm!1707 hashF!1247) (forall!9271 (toList!3141 lm!1707) lambda!145064))))

(declare-fun bs!660378 () Bool)

(assert (= bs!660378 d!1303157))

(declare-fun m!5013045 () Bool)

(assert (=> bs!660378 m!5013045))

(assert (=> b!4377786 d!1303157))

(declare-fun d!1303163 () Bool)

(declare-fun res!1802766 () Bool)

(declare-fun e!2725040 () Bool)

(assert (=> d!1303163 (=> res!1802766 e!2725040)))

(assert (=> d!1303163 (= res!1802766 ((_ is Nil!49157) (toList!3141 lt!1588604)))))

(assert (=> d!1303163 (= (forall!9271 (toList!3141 lt!1588604) lambda!145061) e!2725040)))

(declare-fun b!4377837 () Bool)

(declare-fun e!2725041 () Bool)

(assert (=> b!4377837 (= e!2725040 e!2725041)))

(declare-fun res!1802767 () Bool)

(assert (=> b!4377837 (=> (not res!1802767) (not e!2725041))))

(declare-fun dynLambda!20709 (Int tuple2!48688) Bool)

(assert (=> b!4377837 (= res!1802767 (dynLambda!20709 lambda!145061 (h!54754 (toList!3141 lt!1588604))))))

(declare-fun b!4377838 () Bool)

(assert (=> b!4377838 (= e!2725041 (forall!9271 (t!356207 (toList!3141 lt!1588604)) lambda!145061))))

(assert (= (and d!1303163 (not res!1802766)) b!4377837))

(assert (= (and b!4377837 res!1802767) b!4377838))

(declare-fun b_lambda!134915 () Bool)

(assert (=> (not b_lambda!134915) (not b!4377837)))

(declare-fun m!5013059 () Bool)

(assert (=> b!4377837 m!5013059))

(declare-fun m!5013061 () Bool)

(assert (=> b!4377838 m!5013061))

(assert (=> b!4377785 d!1303163))

(declare-fun d!1303167 () Bool)

(declare-fun hash!1750 (Hashable!4971 K!10515) (_ BitVec 64))

(assert (=> d!1303167 (= (hash!1746 hashF!1247 key!3918) (hash!1750 hashF!1247 key!3918))))

(declare-fun bs!660379 () Bool)

(assert (= bs!660379 d!1303167))

(declare-fun m!5013063 () Bool)

(assert (=> bs!660379 m!5013063))

(assert (=> b!4377787 d!1303167))

(declare-fun d!1303169 () Bool)

(declare-fun res!1802768 () Bool)

(declare-fun e!2725042 () Bool)

(assert (=> d!1303169 (=> res!1802768 e!2725042)))

(assert (=> d!1303169 (= res!1802768 ((_ is Nil!49157) (toList!3141 lm!1707)))))

(assert (=> d!1303169 (= (forall!9271 (toList!3141 lm!1707) lambda!145061) e!2725042)))

(declare-fun b!4377839 () Bool)

(declare-fun e!2725043 () Bool)

(assert (=> b!4377839 (= e!2725042 e!2725043)))

(declare-fun res!1802769 () Bool)

(assert (=> b!4377839 (=> (not res!1802769) (not e!2725043))))

(assert (=> b!4377839 (= res!1802769 (dynLambda!20709 lambda!145061 (h!54754 (toList!3141 lm!1707))))))

(declare-fun b!4377840 () Bool)

(assert (=> b!4377840 (= e!2725043 (forall!9271 (t!356207 (toList!3141 lm!1707)) lambda!145061))))

(assert (= (and d!1303169 (not res!1802768)) b!4377839))

(assert (= (and b!4377839 res!1802769) b!4377840))

(declare-fun b_lambda!134917 () Bool)

(assert (=> (not b_lambda!134917) (not b!4377839)))

(declare-fun m!5013065 () Bool)

(assert (=> b!4377839 m!5013065))

(declare-fun m!5013067 () Bool)

(assert (=> b!4377840 m!5013067))

(assert (=> start!425120 d!1303169))

(declare-fun d!1303171 () Bool)

(declare-fun isStrictlySorted!150 (List!49281) Bool)

(assert (=> d!1303171 (= (inv!64701 lm!1707) (isStrictlySorted!150 (toList!3141 lm!1707)))))

(declare-fun bs!660380 () Bool)

(assert (= bs!660380 d!1303171))

(declare-fun m!5013069 () Bool)

(assert (=> bs!660380 m!5013069))

(assert (=> start!425120 d!1303171))

(declare-fun d!1303173 () Bool)

(declare-fun e!2725056 () Bool)

(assert (=> d!1303173 e!2725056))

(declare-fun res!1802776 () Bool)

(assert (=> d!1303173 (=> res!1802776 e!2725056)))

(declare-fun e!2725060 () Bool)

(assert (=> d!1303173 (= res!1802776 e!2725060)))

(declare-fun res!1802778 () Bool)

(assert (=> d!1303173 (=> (not res!1802778) (not e!2725060))))

(declare-fun lt!1588655 () Bool)

(assert (=> d!1303173 (= res!1802778 (not lt!1588655))))

(declare-fun lt!1588660 () Bool)

(assert (=> d!1303173 (= lt!1588655 lt!1588660)))

(declare-fun lt!1588661 () Unit!75116)

(declare-fun e!2725057 () Unit!75116)

(assert (=> d!1303173 (= lt!1588661 e!2725057)))

(declare-fun c!744456 () Bool)

(assert (=> d!1303173 (= c!744456 lt!1588660)))

(declare-fun containsKey!848 (List!49280 K!10515) Bool)

(assert (=> d!1303173 (= lt!1588660 (containsKey!848 (toList!3142 lt!1588610) key!3918))))

(assert (=> d!1303173 (= (contains!11488 lt!1588610 key!3918) lt!1588655)))

(declare-fun bm!304435 () Bool)

(declare-fun call!304440 () Bool)

(declare-datatypes ((List!49283 0))(
  ( (Nil!49159) (Cons!49159 (h!54758 K!10515) (t!356209 List!49283)) )
))
(declare-fun e!2725058 () List!49283)

(declare-fun contains!11492 (List!49283 K!10515) Bool)

(assert (=> bm!304435 (= call!304440 (contains!11492 e!2725058 key!3918))))

(declare-fun c!744455 () Bool)

(assert (=> bm!304435 (= c!744455 c!744456)))

(declare-fun b!4377859 () Bool)

(declare-fun e!2725061 () Bool)

(assert (=> b!4377859 (= e!2725056 e!2725061)))

(declare-fun res!1802777 () Bool)

(assert (=> b!4377859 (=> (not res!1802777) (not e!2725061))))

(declare-datatypes ((Option!10559 0))(
  ( (None!10558) (Some!10558 (v!43562 V!10761)) )
))
(declare-fun isDefined!7852 (Option!10559) Bool)

(declare-fun getValueByKey!545 (List!49280 K!10515) Option!10559)

(assert (=> b!4377859 (= res!1802777 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588610) key!3918)))))

(declare-fun b!4377860 () Bool)

(declare-fun e!2725059 () Unit!75116)

(declare-fun Unit!75142 () Unit!75116)

(assert (=> b!4377860 (= e!2725059 Unit!75142)))

(declare-fun b!4377861 () Bool)

(assert (=> b!4377861 false))

(declare-fun lt!1588657 () Unit!75116)

(declare-fun lt!1588656 () Unit!75116)

(assert (=> b!4377861 (= lt!1588657 lt!1588656)))

(assert (=> b!4377861 (containsKey!848 (toList!3142 lt!1588610) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!169 (List!49280 K!10515) Unit!75116)

(assert (=> b!4377861 (= lt!1588656 (lemmaInGetKeysListThenContainsKey!169 (toList!3142 lt!1588610) key!3918))))

(declare-fun Unit!75143 () Unit!75116)

(assert (=> b!4377861 (= e!2725059 Unit!75143)))

(declare-fun b!4377862 () Bool)

(declare-fun lt!1588662 () Unit!75116)

(assert (=> b!4377862 (= e!2725057 lt!1588662)))

(declare-fun lt!1588659 () Unit!75116)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!455 (List!49280 K!10515) Unit!75116)

(assert (=> b!4377862 (= lt!1588659 (lemmaContainsKeyImpliesGetValueByKeyDefined!455 (toList!3142 lt!1588610) key!3918))))

(assert (=> b!4377862 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588610) key!3918))))

(declare-fun lt!1588658 () Unit!75116)

(assert (=> b!4377862 (= lt!1588658 lt!1588659)))

(declare-fun lemmaInListThenGetKeysListContains!168 (List!49280 K!10515) Unit!75116)

(assert (=> b!4377862 (= lt!1588662 (lemmaInListThenGetKeysListContains!168 (toList!3142 lt!1588610) key!3918))))

(assert (=> b!4377862 call!304440))

(declare-fun b!4377863 () Bool)

(declare-fun keys!16669 (ListMap!2385) List!49283)

(assert (=> b!4377863 (= e!2725061 (contains!11492 (keys!16669 lt!1588610) key!3918))))

(declare-fun b!4377864 () Bool)

(assert (=> b!4377864 (= e!2725058 (keys!16669 lt!1588610))))

(declare-fun b!4377865 () Bool)

(assert (=> b!4377865 (= e!2725057 e!2725059)))

(declare-fun c!744457 () Bool)

(assert (=> b!4377865 (= c!744457 call!304440)))

(declare-fun b!4377866 () Bool)

(declare-fun getKeysList!171 (List!49280) List!49283)

(assert (=> b!4377866 (= e!2725058 (getKeysList!171 (toList!3142 lt!1588610)))))

(declare-fun b!4377867 () Bool)

(assert (=> b!4377867 (= e!2725060 (not (contains!11492 (keys!16669 lt!1588610) key!3918)))))

(assert (= (and d!1303173 c!744456) b!4377862))

(assert (= (and d!1303173 (not c!744456)) b!4377865))

(assert (= (and b!4377865 c!744457) b!4377861))

(assert (= (and b!4377865 (not c!744457)) b!4377860))

(assert (= (or b!4377862 b!4377865) bm!304435))

(assert (= (and bm!304435 c!744455) b!4377866))

(assert (= (and bm!304435 (not c!744455)) b!4377864))

(assert (= (and d!1303173 res!1802778) b!4377867))

(assert (= (and d!1303173 (not res!1802776)) b!4377859))

(assert (= (and b!4377859 res!1802777) b!4377863))

(declare-fun m!5013071 () Bool)

(assert (=> b!4377867 m!5013071))

(assert (=> b!4377867 m!5013071))

(declare-fun m!5013073 () Bool)

(assert (=> b!4377867 m!5013073))

(declare-fun m!5013075 () Bool)

(assert (=> b!4377866 m!5013075))

(declare-fun m!5013077 () Bool)

(assert (=> b!4377861 m!5013077))

(declare-fun m!5013079 () Bool)

(assert (=> b!4377861 m!5013079))

(assert (=> b!4377864 m!5013071))

(declare-fun m!5013081 () Bool)

(assert (=> bm!304435 m!5013081))

(declare-fun m!5013083 () Bool)

(assert (=> b!4377859 m!5013083))

(assert (=> b!4377859 m!5013083))

(declare-fun m!5013085 () Bool)

(assert (=> b!4377859 m!5013085))

(assert (=> b!4377863 m!5013071))

(assert (=> b!4377863 m!5013071))

(assert (=> b!4377863 m!5013073))

(assert (=> d!1303173 m!5013077))

(declare-fun m!5013087 () Bool)

(assert (=> b!4377862 m!5013087))

(assert (=> b!4377862 m!5013083))

(assert (=> b!4377862 m!5013083))

(assert (=> b!4377862 m!5013085))

(declare-fun m!5013089 () Bool)

(assert (=> b!4377862 m!5013089))

(assert (=> b!4377788 d!1303173))

(declare-fun bs!660381 () Bool)

(declare-fun d!1303175 () Bool)

(assert (= bs!660381 (and d!1303175 start!425120)))

(declare-fun lambda!145079 () Int)

(assert (=> bs!660381 (= lambda!145079 lambda!145061)))

(declare-fun bs!660382 () Bool)

(assert (= bs!660382 (and d!1303175 d!1303157)))

(assert (=> bs!660382 (not (= lambda!145079 lambda!145064))))

(declare-fun lt!1588689 () ListMap!2385)

(declare-fun invariantList!723 (List!49280) Bool)

(assert (=> d!1303175 (invariantList!723 (toList!3142 lt!1588689))))

(declare-fun e!2725066 () ListMap!2385)

(assert (=> d!1303175 (= lt!1588689 e!2725066)))

(declare-fun c!744462 () Bool)

(assert (=> d!1303175 (= c!744462 ((_ is Cons!49157) (toList!3141 lm!1707)))))

(assert (=> d!1303175 (forall!9271 (toList!3141 lm!1707) lambda!145079)))

(assert (=> d!1303175 (= (extractMap!638 (toList!3141 lm!1707)) lt!1588689)))

(declare-fun b!4377876 () Bool)

(assert (=> b!4377876 (= e!2725066 (addToMapMapFromBucket!260 (_2!27638 (h!54754 (toList!3141 lm!1707))) (extractMap!638 (t!356207 (toList!3141 lm!1707)))))))

(declare-fun b!4377877 () Bool)

(assert (=> b!4377877 (= e!2725066 (ListMap!2386 Nil!49156))))

(assert (= (and d!1303175 c!744462) b!4377876))

(assert (= (and d!1303175 (not c!744462)) b!4377877))

(declare-fun m!5013091 () Bool)

(assert (=> d!1303175 m!5013091))

(declare-fun m!5013093 () Bool)

(assert (=> d!1303175 m!5013093))

(assert (=> b!4377876 m!5012963))

(assert (=> b!4377876 m!5012963))

(declare-fun m!5013095 () Bool)

(assert (=> b!4377876 m!5013095))

(assert (=> b!4377788 d!1303175))

(declare-fun d!1303177 () Bool)

(declare-fun res!1802785 () Bool)

(declare-fun e!2725073 () Bool)

(assert (=> d!1303177 (=> res!1802785 e!2725073)))

(assert (=> d!1303177 (= res!1802785 (not ((_ is Cons!49156) newBucket!200)))))

(assert (=> d!1303177 (= (noDuplicateKeys!579 newBucket!200) e!2725073)))

(declare-fun b!4377884 () Bool)

(declare-fun e!2725074 () Bool)

(assert (=> b!4377884 (= e!2725073 e!2725074)))

(declare-fun res!1802786 () Bool)

(assert (=> b!4377884 (=> (not res!1802786) (not e!2725074))))

(declare-fun containsKey!849 (List!49280 K!10515) Bool)

(assert (=> b!4377884 (= res!1802786 (not (containsKey!849 (t!356206 newBucket!200) (_1!27637 (h!54753 newBucket!200)))))))

(declare-fun b!4377885 () Bool)

(assert (=> b!4377885 (= e!2725074 (noDuplicateKeys!579 (t!356206 newBucket!200)))))

(assert (= (and d!1303177 (not res!1802785)) b!4377884))

(assert (= (and b!4377884 res!1802786) b!4377885))

(declare-fun m!5013097 () Bool)

(assert (=> b!4377884 m!5013097))

(declare-fun m!5013099 () Bool)

(assert (=> b!4377885 m!5013099))

(assert (=> b!4377790 d!1303177))

(declare-fun b!4377996 () Bool)

(assert (=> b!4377996 true))

(declare-fun bs!660483 () Bool)

(declare-fun b!4377997 () Bool)

(assert (= bs!660483 (and b!4377997 b!4377996)))

(declare-fun lambda!145153 () Int)

(declare-fun lambda!145152 () Int)

(assert (=> bs!660483 (= lambda!145153 lambda!145152)))

(assert (=> b!4377997 true))

(declare-fun lambda!145154 () Int)

(declare-fun lt!1588912 () ListMap!2385)

(assert (=> bs!660483 (= (= lt!1588912 lt!1588594) (= lambda!145154 lambda!145152))))

(assert (=> b!4377997 (= (= lt!1588912 lt!1588594) (= lambda!145154 lambda!145153))))

(assert (=> b!4377997 true))

(declare-fun bs!660484 () Bool)

(declare-fun d!1303179 () Bool)

(assert (= bs!660484 (and d!1303179 b!4377996)))

(declare-fun lambda!145155 () Int)

(declare-fun lt!1588922 () ListMap!2385)

(assert (=> bs!660484 (= (= lt!1588922 lt!1588594) (= lambda!145155 lambda!145152))))

(declare-fun bs!660485 () Bool)

(assert (= bs!660485 (and d!1303179 b!4377997)))

(assert (=> bs!660485 (= (= lt!1588922 lt!1588594) (= lambda!145155 lambda!145153))))

(assert (=> bs!660485 (= (= lt!1588922 lt!1588912) (= lambda!145155 lambda!145154))))

(assert (=> d!1303179 true))

(declare-fun b!4377994 () Bool)

(declare-fun e!2725140 () Bool)

(declare-fun forall!9273 (List!49280 Int) Bool)

(assert (=> b!4377994 (= e!2725140 (forall!9273 (toList!3142 lt!1588594) lambda!145154))))

(declare-fun bm!304465 () Bool)

(declare-fun call!304471 () Bool)

(declare-fun c!744490 () Bool)

(assert (=> bm!304465 (= call!304471 (forall!9273 (ite c!744490 (toList!3142 lt!1588594) (t!356206 lt!1588612)) (ite c!744490 lambda!145152 lambda!145154)))))

(declare-fun b!4377995 () Bool)

(declare-fun e!2725138 () Bool)

(assert (=> b!4377995 (= e!2725138 (invariantList!723 (toList!3142 lt!1588922)))))

(declare-fun bm!304466 () Bool)

(declare-fun call!304472 () Unit!75116)

(declare-fun lemmaContainsAllItsOwnKeys!105 (ListMap!2385) Unit!75116)

(assert (=> bm!304466 (= call!304472 (lemmaContainsAllItsOwnKeys!105 lt!1588594))))

(declare-fun e!2725139 () ListMap!2385)

(assert (=> b!4377996 (= e!2725139 lt!1588594)))

(declare-fun lt!1588921 () Unit!75116)

(assert (=> b!4377996 (= lt!1588921 call!304472)))

(assert (=> b!4377996 call!304471))

(declare-fun lt!1588928 () Unit!75116)

(assert (=> b!4377996 (= lt!1588928 lt!1588921)))

(declare-fun call!304470 () Bool)

(assert (=> b!4377996 call!304470))

(declare-fun lt!1588926 () Unit!75116)

(declare-fun Unit!75149 () Unit!75116)

(assert (=> b!4377996 (= lt!1588926 Unit!75149)))

(assert (=> d!1303179 e!2725138))

(declare-fun res!1802837 () Bool)

(assert (=> d!1303179 (=> (not res!1802837) (not e!2725138))))

(assert (=> d!1303179 (= res!1802837 (forall!9273 lt!1588612 lambda!145155))))

(assert (=> d!1303179 (= lt!1588922 e!2725139)))

(assert (=> d!1303179 (= c!744490 ((_ is Nil!49156) lt!1588612))))

(assert (=> d!1303179 (noDuplicateKeys!579 lt!1588612)))

(assert (=> d!1303179 (= (addToMapMapFromBucket!260 lt!1588612 lt!1588594) lt!1588922)))

(assert (=> b!4377997 (= e!2725139 lt!1588912)))

(declare-fun lt!1588915 () ListMap!2385)

(assert (=> b!4377997 (= lt!1588915 (+!790 lt!1588594 (h!54753 lt!1588612)))))

(assert (=> b!4377997 (= lt!1588912 (addToMapMapFromBucket!260 (t!356206 lt!1588612) (+!790 lt!1588594 (h!54753 lt!1588612))))))

(declare-fun lt!1588911 () Unit!75116)

(assert (=> b!4377997 (= lt!1588911 call!304472)))

(assert (=> b!4377997 (forall!9273 (toList!3142 lt!1588594) lambda!145153)))

(declare-fun lt!1588920 () Unit!75116)

(assert (=> b!4377997 (= lt!1588920 lt!1588911)))

(assert (=> b!4377997 (forall!9273 (toList!3142 lt!1588915) lambda!145154)))

(declare-fun lt!1588909 () Unit!75116)

(declare-fun Unit!75154 () Unit!75116)

(assert (=> b!4377997 (= lt!1588909 Unit!75154)))

(assert (=> b!4377997 call!304471))

(declare-fun lt!1588923 () Unit!75116)

(declare-fun Unit!75155 () Unit!75116)

(assert (=> b!4377997 (= lt!1588923 Unit!75155)))

(declare-fun lt!1588914 () Unit!75116)

(declare-fun Unit!75157 () Unit!75116)

(assert (=> b!4377997 (= lt!1588914 Unit!75157)))

(declare-fun lt!1588927 () Unit!75116)

(declare-fun forallContained!1911 (List!49280 Int tuple2!48686) Unit!75116)

(assert (=> b!4377997 (= lt!1588927 (forallContained!1911 (toList!3142 lt!1588915) lambda!145154 (h!54753 lt!1588612)))))

(assert (=> b!4377997 (contains!11488 lt!1588915 (_1!27637 (h!54753 lt!1588612)))))

(declare-fun lt!1588924 () Unit!75116)

(declare-fun Unit!75158 () Unit!75116)

(assert (=> b!4377997 (= lt!1588924 Unit!75158)))

(assert (=> b!4377997 (contains!11488 lt!1588912 (_1!27637 (h!54753 lt!1588612)))))

(declare-fun lt!1588910 () Unit!75116)

(declare-fun Unit!75159 () Unit!75116)

(assert (=> b!4377997 (= lt!1588910 Unit!75159)))

(assert (=> b!4377997 (forall!9273 lt!1588612 lambda!145154)))

(declare-fun lt!1588917 () Unit!75116)

(declare-fun Unit!75160 () Unit!75116)

(assert (=> b!4377997 (= lt!1588917 Unit!75160)))

(assert (=> b!4377997 call!304470))

(declare-fun lt!1588916 () Unit!75116)

(declare-fun Unit!75161 () Unit!75116)

(assert (=> b!4377997 (= lt!1588916 Unit!75161)))

(declare-fun lt!1588913 () Unit!75116)

(declare-fun Unit!75162 () Unit!75116)

(assert (=> b!4377997 (= lt!1588913 Unit!75162)))

(declare-fun lt!1588919 () Unit!75116)

(declare-fun addForallContainsKeyThenBeforeAdding!105 (ListMap!2385 ListMap!2385 K!10515 V!10761) Unit!75116)

(assert (=> b!4377997 (= lt!1588919 (addForallContainsKeyThenBeforeAdding!105 lt!1588594 lt!1588912 (_1!27637 (h!54753 lt!1588612)) (_2!27637 (h!54753 lt!1588612))))))

(assert (=> b!4377997 (forall!9273 (toList!3142 lt!1588594) lambda!145154)))

(declare-fun lt!1588908 () Unit!75116)

(assert (=> b!4377997 (= lt!1588908 lt!1588919)))

(assert (=> b!4377997 (forall!9273 (toList!3142 lt!1588594) lambda!145154)))

(declare-fun lt!1588918 () Unit!75116)

(declare-fun Unit!75164 () Unit!75116)

(assert (=> b!4377997 (= lt!1588918 Unit!75164)))

(declare-fun res!1802836 () Bool)

(assert (=> b!4377997 (= res!1802836 (forall!9273 lt!1588612 lambda!145154))))

(assert (=> b!4377997 (=> (not res!1802836) (not e!2725140))))

(assert (=> b!4377997 e!2725140))

(declare-fun lt!1588925 () Unit!75116)

(declare-fun Unit!75165 () Unit!75116)

(assert (=> b!4377997 (= lt!1588925 Unit!75165)))

(declare-fun b!4377998 () Bool)

(declare-fun res!1802835 () Bool)

(assert (=> b!4377998 (=> (not res!1802835) (not e!2725138))))

(assert (=> b!4377998 (= res!1802835 (forall!9273 (toList!3142 lt!1588594) lambda!145155))))

(declare-fun bm!304467 () Bool)

(assert (=> bm!304467 (= call!304470 (forall!9273 (ite c!744490 (toList!3142 lt!1588594) (toList!3142 lt!1588915)) (ite c!744490 lambda!145152 lambda!145154)))))

(assert (= (and d!1303179 c!744490) b!4377996))

(assert (= (and d!1303179 (not c!744490)) b!4377997))

(assert (= (and b!4377997 res!1802836) b!4377994))

(assert (= (or b!4377996 b!4377997) bm!304466))

(assert (= (or b!4377996 b!4377997) bm!304465))

(assert (= (or b!4377996 b!4377997) bm!304467))

(assert (= (and d!1303179 res!1802837) b!4377998))

(assert (= (and b!4377998 res!1802835) b!4377995))

(declare-fun m!5013405 () Bool)

(assert (=> b!4377995 m!5013405))

(declare-fun m!5013407 () Bool)

(assert (=> b!4377994 m!5013407))

(declare-fun m!5013411 () Bool)

(assert (=> b!4377998 m!5013411))

(declare-fun m!5013413 () Bool)

(assert (=> bm!304467 m!5013413))

(assert (=> b!4377997 m!5013407))

(assert (=> b!4377997 m!5013407))

(declare-fun m!5013415 () Bool)

(assert (=> b!4377997 m!5013415))

(declare-fun m!5013419 () Bool)

(assert (=> b!4377997 m!5013419))

(declare-fun m!5013421 () Bool)

(assert (=> b!4377997 m!5013421))

(declare-fun m!5013423 () Bool)

(assert (=> b!4377997 m!5013423))

(declare-fun m!5013425 () Bool)

(assert (=> b!4377997 m!5013425))

(assert (=> b!4377997 m!5013425))

(assert (=> b!4377997 m!5013419))

(declare-fun m!5013427 () Bool)

(assert (=> b!4377997 m!5013427))

(declare-fun m!5013429 () Bool)

(assert (=> b!4377997 m!5013429))

(declare-fun m!5013431 () Bool)

(assert (=> b!4377997 m!5013431))

(declare-fun m!5013433 () Bool)

(assert (=> b!4377997 m!5013433))

(declare-fun m!5013435 () Bool)

(assert (=> bm!304466 m!5013435))

(declare-fun m!5013437 () Bool)

(assert (=> d!1303179 m!5013437))

(declare-fun m!5013439 () Bool)

(assert (=> d!1303179 m!5013439))

(declare-fun m!5013441 () Bool)

(assert (=> bm!304465 m!5013441))

(assert (=> b!4377789 d!1303179))

(declare-fun d!1303229 () Bool)

(declare-fun e!2725160 () Bool)

(assert (=> d!1303229 e!2725160))

(declare-fun res!1802857 () Bool)

(assert (=> d!1303229 (=> (not res!1802857) (not e!2725160))))

(declare-fun lt!1588955 () ListMap!2385)

(assert (=> d!1303229 (= res!1802857 (contains!11488 lt!1588955 (_1!27637 lt!1588602)))))

(declare-fun lt!1588956 () List!49280)

(assert (=> d!1303229 (= lt!1588955 (ListMap!2386 lt!1588956))))

(declare-fun lt!1588957 () Unit!75116)

(declare-fun lt!1588958 () Unit!75116)

(assert (=> d!1303229 (= lt!1588957 lt!1588958)))

(assert (=> d!1303229 (= (getValueByKey!545 lt!1588956 (_1!27637 lt!1588602)) (Some!10558 (_2!27637 lt!1588602)))))

(declare-fun lemmaContainsTupThenGetReturnValue!309 (List!49280 K!10515 V!10761) Unit!75116)

(assert (=> d!1303229 (= lt!1588958 (lemmaContainsTupThenGetReturnValue!309 lt!1588956 (_1!27637 lt!1588602) (_2!27637 lt!1588602)))))

(declare-fun insertNoDuplicatedKeys!141 (List!49280 K!10515 V!10761) List!49280)

(assert (=> d!1303229 (= lt!1588956 (insertNoDuplicatedKeys!141 (toList!3142 lt!1588594) (_1!27637 lt!1588602) (_2!27637 lt!1588602)))))

(assert (=> d!1303229 (= (+!790 lt!1588594 lt!1588602) lt!1588955)))

(declare-fun b!4378027 () Bool)

(declare-fun res!1802858 () Bool)

(assert (=> b!4378027 (=> (not res!1802858) (not e!2725160))))

(assert (=> b!4378027 (= res!1802858 (= (getValueByKey!545 (toList!3142 lt!1588955) (_1!27637 lt!1588602)) (Some!10558 (_2!27637 lt!1588602))))))

(declare-fun b!4378028 () Bool)

(declare-fun contains!11493 (List!49280 tuple2!48686) Bool)

(assert (=> b!4378028 (= e!2725160 (contains!11493 (toList!3142 lt!1588955) lt!1588602))))

(assert (= (and d!1303229 res!1802857) b!4378027))

(assert (= (and b!4378027 res!1802858) b!4378028))

(declare-fun m!5013463 () Bool)

(assert (=> d!1303229 m!5013463))

(declare-fun m!5013465 () Bool)

(assert (=> d!1303229 m!5013465))

(declare-fun m!5013467 () Bool)

(assert (=> d!1303229 m!5013467))

(declare-fun m!5013469 () Bool)

(assert (=> d!1303229 m!5013469))

(declare-fun m!5013473 () Bool)

(assert (=> b!4378027 m!5013473))

(declare-fun m!5013475 () Bool)

(assert (=> b!4378028 m!5013475))

(assert (=> b!4377789 d!1303229))

(declare-fun d!1303239 () Bool)

(declare-fun e!2725162 () Bool)

(assert (=> d!1303239 e!2725162))

(declare-fun res!1802860 () Bool)

(assert (=> d!1303239 (=> (not res!1802860) (not e!2725162))))

(declare-fun lt!1588960 () ListMap!2385)

(assert (=> d!1303239 (= res!1802860 (contains!11488 lt!1588960 (_1!27637 lt!1588602)))))

(declare-fun lt!1588961 () List!49280)

(assert (=> d!1303239 (= lt!1588960 (ListMap!2386 lt!1588961))))

(declare-fun lt!1588962 () Unit!75116)

(declare-fun lt!1588963 () Unit!75116)

(assert (=> d!1303239 (= lt!1588962 lt!1588963)))

(assert (=> d!1303239 (= (getValueByKey!545 lt!1588961 (_1!27637 lt!1588602)) (Some!10558 (_2!27637 lt!1588602)))))

(assert (=> d!1303239 (= lt!1588963 (lemmaContainsTupThenGetReturnValue!309 lt!1588961 (_1!27637 lt!1588602) (_2!27637 lt!1588602)))))

(assert (=> d!1303239 (= lt!1588961 (insertNoDuplicatedKeys!141 (toList!3142 lt!1588613) (_1!27637 lt!1588602) (_2!27637 lt!1588602)))))

(assert (=> d!1303239 (= (+!790 lt!1588613 lt!1588602) lt!1588960)))

(declare-fun b!4378030 () Bool)

(declare-fun res!1802861 () Bool)

(assert (=> b!4378030 (=> (not res!1802861) (not e!2725162))))

(assert (=> b!4378030 (= res!1802861 (= (getValueByKey!545 (toList!3142 lt!1588960) (_1!27637 lt!1588602)) (Some!10558 (_2!27637 lt!1588602))))))

(declare-fun b!4378031 () Bool)

(assert (=> b!4378031 (= e!2725162 (contains!11493 (toList!3142 lt!1588960) lt!1588602))))

(assert (= (and d!1303239 res!1802860) b!4378030))

(assert (= (and b!4378030 res!1802861) b!4378031))

(declare-fun m!5013483 () Bool)

(assert (=> d!1303239 m!5013483))

(declare-fun m!5013485 () Bool)

(assert (=> d!1303239 m!5013485))

(declare-fun m!5013487 () Bool)

(assert (=> d!1303239 m!5013487))

(declare-fun m!5013489 () Bool)

(assert (=> d!1303239 m!5013489))

(declare-fun m!5013491 () Bool)

(assert (=> b!4378030 m!5013491))

(declare-fun m!5013493 () Bool)

(assert (=> b!4378031 m!5013493))

(assert (=> b!4377789 d!1303239))

(declare-fun d!1303243 () Bool)

(assert (=> d!1303243 (= (tail!7072 newBucket!200) (t!356206 newBucket!200))))

(assert (=> b!4377789 d!1303243))

(declare-fun d!1303245 () Bool)

(assert (=> d!1303245 (= (contains!11488 lt!1588597 key!3918) (contains!11488 lt!1588598 key!3918))))

(declare-fun lt!1588966 () Unit!75116)

(declare-fun choose!27293 (ListMap!2385 ListMap!2385 K!10515) Unit!75116)

(assert (=> d!1303245 (= lt!1588966 (choose!27293 lt!1588597 lt!1588598 key!3918))))

(assert (=> d!1303245 (eq!317 lt!1588597 lt!1588598)))

(assert (=> d!1303245 (= (lemmaEquivalentThenSameContains!104 lt!1588597 lt!1588598 key!3918) lt!1588966)))

(declare-fun bs!660499 () Bool)

(assert (= bs!660499 d!1303245))

(assert (=> bs!660499 m!5012969))

(assert (=> bs!660499 m!5012959))

(declare-fun m!5013505 () Bool)

(assert (=> bs!660499 m!5013505))

(assert (=> bs!660499 m!5012957))

(assert (=> b!4377789 d!1303245))

(declare-fun bs!660500 () Bool)

(declare-fun b!4378046 () Bool)

(assert (= bs!660500 (and b!4378046 b!4377996)))

(declare-fun lambda!145159 () Int)

(assert (=> bs!660500 (= (= (+!790 lt!1588594 lt!1588602) lt!1588594) (= lambda!145159 lambda!145152))))

(declare-fun bs!660501 () Bool)

(assert (= bs!660501 (and b!4378046 b!4377997)))

(assert (=> bs!660501 (= (= (+!790 lt!1588594 lt!1588602) lt!1588594) (= lambda!145159 lambda!145153))))

(assert (=> bs!660501 (= (= (+!790 lt!1588594 lt!1588602) lt!1588912) (= lambda!145159 lambda!145154))))

(declare-fun bs!660502 () Bool)

(assert (= bs!660502 (and b!4378046 d!1303179)))

(assert (=> bs!660502 (= (= (+!790 lt!1588594 lt!1588602) lt!1588922) (= lambda!145159 lambda!145155))))

(assert (=> b!4378046 true))

(declare-fun bs!660503 () Bool)

(declare-fun b!4378047 () Bool)

(assert (= bs!660503 (and b!4378047 b!4377996)))

(declare-fun lambda!145160 () Int)

(assert (=> bs!660503 (= (= (+!790 lt!1588594 lt!1588602) lt!1588594) (= lambda!145160 lambda!145152))))

(declare-fun bs!660504 () Bool)

(assert (= bs!660504 (and b!4378047 d!1303179)))

(assert (=> bs!660504 (= (= (+!790 lt!1588594 lt!1588602) lt!1588922) (= lambda!145160 lambda!145155))))

(declare-fun bs!660505 () Bool)

(assert (= bs!660505 (and b!4378047 b!4377997)))

(assert (=> bs!660505 (= (= (+!790 lt!1588594 lt!1588602) lt!1588912) (= lambda!145160 lambda!145154))))

(declare-fun bs!660506 () Bool)

(assert (= bs!660506 (and b!4378047 b!4378046)))

(assert (=> bs!660506 (= lambda!145160 lambda!145159)))

(assert (=> bs!660505 (= (= (+!790 lt!1588594 lt!1588602) lt!1588594) (= lambda!145160 lambda!145153))))

(assert (=> b!4378047 true))

(declare-fun lambda!145161 () Int)

(declare-fun lt!1588971 () ListMap!2385)

(assert (=> bs!660503 (= (= lt!1588971 lt!1588594) (= lambda!145161 lambda!145152))))

(assert (=> bs!660504 (= (= lt!1588971 lt!1588922) (= lambda!145161 lambda!145155))))

(assert (=> b!4378047 (= (= lt!1588971 (+!790 lt!1588594 lt!1588602)) (= lambda!145161 lambda!145160))))

(assert (=> bs!660505 (= (= lt!1588971 lt!1588912) (= lambda!145161 lambda!145154))))

(assert (=> bs!660506 (= (= lt!1588971 (+!790 lt!1588594 lt!1588602)) (= lambda!145161 lambda!145159))))

(assert (=> bs!660505 (= (= lt!1588971 lt!1588594) (= lambda!145161 lambda!145153))))

(assert (=> b!4378047 true))

(declare-fun bs!660507 () Bool)

(declare-fun d!1303255 () Bool)

(assert (= bs!660507 (and d!1303255 b!4377996)))

(declare-fun lambda!145162 () Int)

(declare-fun lt!1588981 () ListMap!2385)

(assert (=> bs!660507 (= (= lt!1588981 lt!1588594) (= lambda!145162 lambda!145152))))

(declare-fun bs!660508 () Bool)

(assert (= bs!660508 (and d!1303255 d!1303179)))

(assert (=> bs!660508 (= (= lt!1588981 lt!1588922) (= lambda!145162 lambda!145155))))

(declare-fun bs!660509 () Bool)

(assert (= bs!660509 (and d!1303255 b!4378047)))

(assert (=> bs!660509 (= (= lt!1588981 (+!790 lt!1588594 lt!1588602)) (= lambda!145162 lambda!145160))))

(declare-fun bs!660510 () Bool)

(assert (= bs!660510 (and d!1303255 b!4377997)))

(assert (=> bs!660510 (= (= lt!1588981 lt!1588912) (= lambda!145162 lambda!145154))))

(assert (=> bs!660509 (= (= lt!1588981 lt!1588971) (= lambda!145162 lambda!145161))))

(declare-fun bs!660511 () Bool)

(assert (= bs!660511 (and d!1303255 b!4378046)))

(assert (=> bs!660511 (= (= lt!1588981 (+!790 lt!1588594 lt!1588602)) (= lambda!145162 lambda!145159))))

(assert (=> bs!660510 (= (= lt!1588981 lt!1588594) (= lambda!145162 lambda!145153))))

(assert (=> d!1303255 true))

(declare-fun e!2725171 () Bool)

(declare-fun b!4378044 () Bool)

(assert (=> b!4378044 (= e!2725171 (forall!9273 (toList!3142 (+!790 lt!1588594 lt!1588602)) lambda!145161))))

(declare-fun c!744494 () Bool)

(declare-fun bm!304468 () Bool)

(declare-fun call!304474 () Bool)

(assert (=> bm!304468 (= call!304474 (forall!9273 (ite c!744494 (toList!3142 (+!790 lt!1588594 lt!1588602)) (t!356206 lt!1588612)) (ite c!744494 lambda!145159 lambda!145161)))))

(declare-fun b!4378045 () Bool)

(declare-fun e!2725169 () Bool)

(assert (=> b!4378045 (= e!2725169 (invariantList!723 (toList!3142 lt!1588981)))))

(declare-fun bm!304469 () Bool)

(declare-fun call!304475 () Unit!75116)

(assert (=> bm!304469 (= call!304475 (lemmaContainsAllItsOwnKeys!105 (+!790 lt!1588594 lt!1588602)))))

(declare-fun e!2725170 () ListMap!2385)

(assert (=> b!4378046 (= e!2725170 (+!790 lt!1588594 lt!1588602))))

(declare-fun lt!1588980 () Unit!75116)

(assert (=> b!4378046 (= lt!1588980 call!304475)))

(assert (=> b!4378046 call!304474))

(declare-fun lt!1588987 () Unit!75116)

(assert (=> b!4378046 (= lt!1588987 lt!1588980)))

(declare-fun call!304473 () Bool)

(assert (=> b!4378046 call!304473))

(declare-fun lt!1588985 () Unit!75116)

(declare-fun Unit!75168 () Unit!75116)

(assert (=> b!4378046 (= lt!1588985 Unit!75168)))

(assert (=> d!1303255 e!2725169))

(declare-fun res!1802864 () Bool)

(assert (=> d!1303255 (=> (not res!1802864) (not e!2725169))))

(assert (=> d!1303255 (= res!1802864 (forall!9273 lt!1588612 lambda!145162))))

(assert (=> d!1303255 (= lt!1588981 e!2725170)))

(assert (=> d!1303255 (= c!744494 ((_ is Nil!49156) lt!1588612))))

(assert (=> d!1303255 (noDuplicateKeys!579 lt!1588612)))

(assert (=> d!1303255 (= (addToMapMapFromBucket!260 lt!1588612 (+!790 lt!1588594 lt!1588602)) lt!1588981)))

(assert (=> b!4378047 (= e!2725170 lt!1588971)))

(declare-fun lt!1588974 () ListMap!2385)

(assert (=> b!4378047 (= lt!1588974 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)))))

(assert (=> b!4378047 (= lt!1588971 (addToMapMapFromBucket!260 (t!356206 lt!1588612) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))))))

(declare-fun lt!1588970 () Unit!75116)

(assert (=> b!4378047 (= lt!1588970 call!304475)))

(assert (=> b!4378047 (forall!9273 (toList!3142 (+!790 lt!1588594 lt!1588602)) lambda!145160)))

(declare-fun lt!1588979 () Unit!75116)

(assert (=> b!4378047 (= lt!1588979 lt!1588970)))

(assert (=> b!4378047 (forall!9273 (toList!3142 lt!1588974) lambda!145161)))

(declare-fun lt!1588968 () Unit!75116)

(declare-fun Unit!75169 () Unit!75116)

(assert (=> b!4378047 (= lt!1588968 Unit!75169)))

(assert (=> b!4378047 call!304474))

(declare-fun lt!1588982 () Unit!75116)

(declare-fun Unit!75170 () Unit!75116)

(assert (=> b!4378047 (= lt!1588982 Unit!75170)))

(declare-fun lt!1588973 () Unit!75116)

(declare-fun Unit!75171 () Unit!75116)

(assert (=> b!4378047 (= lt!1588973 Unit!75171)))

(declare-fun lt!1588986 () Unit!75116)

(assert (=> b!4378047 (= lt!1588986 (forallContained!1911 (toList!3142 lt!1588974) lambda!145161 (h!54753 lt!1588612)))))

(assert (=> b!4378047 (contains!11488 lt!1588974 (_1!27637 (h!54753 lt!1588612)))))

(declare-fun lt!1588983 () Unit!75116)

(declare-fun Unit!75172 () Unit!75116)

(assert (=> b!4378047 (= lt!1588983 Unit!75172)))

(assert (=> b!4378047 (contains!11488 lt!1588971 (_1!27637 (h!54753 lt!1588612)))))

(declare-fun lt!1588969 () Unit!75116)

(declare-fun Unit!75173 () Unit!75116)

(assert (=> b!4378047 (= lt!1588969 Unit!75173)))

(assert (=> b!4378047 (forall!9273 lt!1588612 lambda!145161)))

(declare-fun lt!1588976 () Unit!75116)

(declare-fun Unit!75174 () Unit!75116)

(assert (=> b!4378047 (= lt!1588976 Unit!75174)))

(assert (=> b!4378047 call!304473))

(declare-fun lt!1588975 () Unit!75116)

(declare-fun Unit!75175 () Unit!75116)

(assert (=> b!4378047 (= lt!1588975 Unit!75175)))

(declare-fun lt!1588972 () Unit!75116)

(declare-fun Unit!75176 () Unit!75116)

(assert (=> b!4378047 (= lt!1588972 Unit!75176)))

(declare-fun lt!1588978 () Unit!75116)

(assert (=> b!4378047 (= lt!1588978 (addForallContainsKeyThenBeforeAdding!105 (+!790 lt!1588594 lt!1588602) lt!1588971 (_1!27637 (h!54753 lt!1588612)) (_2!27637 (h!54753 lt!1588612))))))

(assert (=> b!4378047 (forall!9273 (toList!3142 (+!790 lt!1588594 lt!1588602)) lambda!145161)))

(declare-fun lt!1588967 () Unit!75116)

(assert (=> b!4378047 (= lt!1588967 lt!1588978)))

(assert (=> b!4378047 (forall!9273 (toList!3142 (+!790 lt!1588594 lt!1588602)) lambda!145161)))

(declare-fun lt!1588977 () Unit!75116)

(declare-fun Unit!75177 () Unit!75116)

(assert (=> b!4378047 (= lt!1588977 Unit!75177)))

(declare-fun res!1802863 () Bool)

(assert (=> b!4378047 (= res!1802863 (forall!9273 lt!1588612 lambda!145161))))

(assert (=> b!4378047 (=> (not res!1802863) (not e!2725171))))

(assert (=> b!4378047 e!2725171))

(declare-fun lt!1588984 () Unit!75116)

(declare-fun Unit!75178 () Unit!75116)

(assert (=> b!4378047 (= lt!1588984 Unit!75178)))

(declare-fun b!4378048 () Bool)

(declare-fun res!1802862 () Bool)

(assert (=> b!4378048 (=> (not res!1802862) (not e!2725169))))

(assert (=> b!4378048 (= res!1802862 (forall!9273 (toList!3142 (+!790 lt!1588594 lt!1588602)) lambda!145162))))

(declare-fun bm!304470 () Bool)

(assert (=> bm!304470 (= call!304473 (forall!9273 (ite c!744494 (toList!3142 (+!790 lt!1588594 lt!1588602)) (toList!3142 lt!1588974)) (ite c!744494 lambda!145159 lambda!145161)))))

(assert (= (and d!1303255 c!744494) b!4378046))

(assert (= (and d!1303255 (not c!744494)) b!4378047))

(assert (= (and b!4378047 res!1802863) b!4378044))

(assert (= (or b!4378046 b!4378047) bm!304469))

(assert (= (or b!4378046 b!4378047) bm!304468))

(assert (= (or b!4378046 b!4378047) bm!304470))

(assert (= (and d!1303255 res!1802864) b!4378048))

(assert (= (and b!4378048 res!1802862) b!4378045))

(declare-fun m!5013507 () Bool)

(assert (=> b!4378045 m!5013507))

(declare-fun m!5013509 () Bool)

(assert (=> b!4378044 m!5013509))

(declare-fun m!5013511 () Bool)

(assert (=> b!4378048 m!5013511))

(declare-fun m!5013513 () Bool)

(assert (=> bm!304470 m!5013513))

(assert (=> b!4378047 m!5013509))

(assert (=> b!4378047 m!5013509))

(assert (=> b!4378047 m!5012945))

(declare-fun m!5013515 () Bool)

(assert (=> b!4378047 m!5013515))

(declare-fun m!5013517 () Bool)

(assert (=> b!4378047 m!5013517))

(declare-fun m!5013519 () Bool)

(assert (=> b!4378047 m!5013519))

(declare-fun m!5013521 () Bool)

(assert (=> b!4378047 m!5013521))

(declare-fun m!5013523 () Bool)

(assert (=> b!4378047 m!5013523))

(assert (=> b!4378047 m!5013523))

(assert (=> b!4378047 m!5012945))

(assert (=> b!4378047 m!5013517))

(declare-fun m!5013525 () Bool)

(assert (=> b!4378047 m!5013525))

(declare-fun m!5013527 () Bool)

(assert (=> b!4378047 m!5013527))

(declare-fun m!5013529 () Bool)

(assert (=> b!4378047 m!5013529))

(declare-fun m!5013531 () Bool)

(assert (=> b!4378047 m!5013531))

(assert (=> bm!304469 m!5012945))

(declare-fun m!5013533 () Bool)

(assert (=> bm!304469 m!5013533))

(declare-fun m!5013535 () Bool)

(assert (=> d!1303255 m!5013535))

(assert (=> d!1303255 m!5013439))

(declare-fun m!5013537 () Bool)

(assert (=> bm!304468 m!5013537))

(assert (=> b!4377789 d!1303255))

(declare-fun d!1303257 () Bool)

(declare-fun e!2725174 () Bool)

(assert (=> d!1303257 e!2725174))

(declare-fun res!1802870 () Bool)

(assert (=> d!1303257 (=> (not res!1802870) (not e!2725174))))

(declare-fun lt!1588996 () ListLongMap!1791)

(assert (=> d!1303257 (= res!1802870 (contains!11489 lt!1588996 (_1!27638 (tuple2!48689 hash!377 lt!1588599))))))

(declare-fun lt!1588998 () List!49281)

(assert (=> d!1303257 (= lt!1588996 (ListLongMap!1792 lt!1588998))))

(declare-fun lt!1588999 () Unit!75116)

(declare-fun lt!1588997 () Unit!75116)

(assert (=> d!1303257 (= lt!1588999 lt!1588997)))

(declare-datatypes ((Option!10560 0))(
  ( (None!10559) (Some!10559 (v!43563 List!49280)) )
))
(declare-fun getValueByKey!546 (List!49281 (_ BitVec 64)) Option!10560)

(assert (=> d!1303257 (= (getValueByKey!546 lt!1588998 (_1!27638 (tuple2!48689 hash!377 lt!1588599))) (Some!10559 (_2!27638 (tuple2!48689 hash!377 lt!1588599))))))

(declare-fun lemmaContainsTupThenGetReturnValue!310 (List!49281 (_ BitVec 64) List!49280) Unit!75116)

(assert (=> d!1303257 (= lt!1588997 (lemmaContainsTupThenGetReturnValue!310 lt!1588998 (_1!27638 (tuple2!48689 hash!377 lt!1588599)) (_2!27638 (tuple2!48689 hash!377 lt!1588599))))))

(declare-fun insertStrictlySorted!177 (List!49281 (_ BitVec 64) List!49280) List!49281)

(assert (=> d!1303257 (= lt!1588998 (insertStrictlySorted!177 (toList!3141 lm!1707) (_1!27638 (tuple2!48689 hash!377 lt!1588599)) (_2!27638 (tuple2!48689 hash!377 lt!1588599))))))

(assert (=> d!1303257 (= (+!789 lm!1707 (tuple2!48689 hash!377 lt!1588599)) lt!1588996)))

(declare-fun b!4378053 () Bool)

(declare-fun res!1802869 () Bool)

(assert (=> b!4378053 (=> (not res!1802869) (not e!2725174))))

(assert (=> b!4378053 (= res!1802869 (= (getValueByKey!546 (toList!3141 lt!1588996) (_1!27638 (tuple2!48689 hash!377 lt!1588599))) (Some!10559 (_2!27638 (tuple2!48689 hash!377 lt!1588599)))))))

(declare-fun b!4378054 () Bool)

(assert (=> b!4378054 (= e!2725174 (contains!11487 (toList!3141 lt!1588996) (tuple2!48689 hash!377 lt!1588599)))))

(assert (= (and d!1303257 res!1802870) b!4378053))

(assert (= (and b!4378053 res!1802869) b!4378054))

(declare-fun m!5013539 () Bool)

(assert (=> d!1303257 m!5013539))

(declare-fun m!5013541 () Bool)

(assert (=> d!1303257 m!5013541))

(declare-fun m!5013543 () Bool)

(assert (=> d!1303257 m!5013543))

(declare-fun m!5013545 () Bool)

(assert (=> d!1303257 m!5013545))

(declare-fun m!5013547 () Bool)

(assert (=> b!4378053 m!5013547))

(declare-fun m!5013549 () Bool)

(assert (=> b!4378054 m!5013549))

(assert (=> b!4377789 d!1303257))

(declare-fun bs!660512 () Bool)

(declare-fun d!1303259 () Bool)

(assert (= bs!660512 (and d!1303259 start!425120)))

(declare-fun lambda!145163 () Int)

(assert (=> bs!660512 (= lambda!145163 lambda!145061)))

(declare-fun bs!660513 () Bool)

(assert (= bs!660513 (and d!1303259 d!1303157)))

(assert (=> bs!660513 (not (= lambda!145163 lambda!145064))))

(declare-fun bs!660514 () Bool)

(assert (= bs!660514 (and d!1303259 d!1303175)))

(assert (=> bs!660514 (= lambda!145163 lambda!145079)))

(declare-fun lt!1589000 () ListMap!2385)

(assert (=> d!1303259 (invariantList!723 (toList!3142 lt!1589000))))

(declare-fun e!2725175 () ListMap!2385)

(assert (=> d!1303259 (= lt!1589000 e!2725175)))

(declare-fun c!744495 () Bool)

(assert (=> d!1303259 (= c!744495 ((_ is Cons!49157) (t!356207 (toList!3141 lm!1707))))))

(assert (=> d!1303259 (forall!9271 (t!356207 (toList!3141 lm!1707)) lambda!145163)))

(assert (=> d!1303259 (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589000)))

(declare-fun b!4378055 () Bool)

(assert (=> b!4378055 (= e!2725175 (addToMapMapFromBucket!260 (_2!27638 (h!54754 (t!356207 (toList!3141 lm!1707)))) (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707))))))))

(declare-fun b!4378056 () Bool)

(assert (=> b!4378056 (= e!2725175 (ListMap!2386 Nil!49156))))

(assert (= (and d!1303259 c!744495) b!4378055))

(assert (= (and d!1303259 (not c!744495)) b!4378056))

(declare-fun m!5013551 () Bool)

(assert (=> d!1303259 m!5013551))

(declare-fun m!5013553 () Bool)

(assert (=> d!1303259 m!5013553))

(declare-fun m!5013555 () Bool)

(assert (=> b!4378055 m!5013555))

(assert (=> b!4378055 m!5013555))

(declare-fun m!5013557 () Bool)

(assert (=> b!4378055 m!5013557))

(assert (=> b!4377789 d!1303259))

(declare-fun d!1303261 () Bool)

(assert (=> d!1303261 (eq!317 (addToMapMapFromBucket!260 lt!1588612 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) (+!790 (addToMapMapFromBucket!260 lt!1588612 lt!1588594) (tuple2!48687 key!3918 newValue!99)))))

(declare-fun lt!1589003 () Unit!75116)

(declare-fun choose!27294 (ListMap!2385 K!10515 V!10761 List!49280) Unit!75116)

(assert (=> d!1303261 (= lt!1589003 (choose!27294 lt!1588594 key!3918 newValue!99 lt!1588612))))

(assert (=> d!1303261 (not (containsKey!849 lt!1588612 key!3918))))

(assert (=> d!1303261 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!126 lt!1588594 key!3918 newValue!99 lt!1588612) lt!1589003)))

(declare-fun bs!660515 () Bool)

(assert (= bs!660515 d!1303261))

(declare-fun m!5013559 () Bool)

(assert (=> bs!660515 m!5013559))

(declare-fun m!5013561 () Bool)

(assert (=> bs!660515 m!5013561))

(assert (=> bs!660515 m!5013561))

(declare-fun m!5013563 () Bool)

(assert (=> bs!660515 m!5013563))

(assert (=> bs!660515 m!5013563))

(declare-fun m!5013565 () Bool)

(assert (=> bs!660515 m!5013565))

(declare-fun m!5013567 () Bool)

(assert (=> bs!660515 m!5013567))

(declare-fun m!5013569 () Bool)

(assert (=> bs!660515 m!5013569))

(assert (=> bs!660515 m!5012953))

(assert (=> bs!660515 m!5013565))

(assert (=> bs!660515 m!5012953))

(assert (=> b!4377789 d!1303261))

(declare-fun d!1303263 () Bool)

(declare-fun e!2725178 () Bool)

(assert (=> d!1303263 e!2725178))

(declare-fun res!1802873 () Bool)

(assert (=> d!1303263 (=> (not res!1802873) (not e!2725178))))

(declare-fun lt!1589006 () ListMap!2385)

(assert (=> d!1303263 (= res!1802873 (not (contains!11488 lt!1589006 key!3918)))))

(declare-fun removePresrvNoDuplicatedKeys!38 (List!49280 K!10515) List!49280)

(assert (=> d!1303263 (= lt!1589006 (ListMap!2386 (removePresrvNoDuplicatedKeys!38 (toList!3142 lt!1588610) key!3918)))))

(assert (=> d!1303263 (= (-!254 lt!1588610 key!3918) lt!1589006)))

(declare-fun b!4378059 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7811 (List!49283) (InoxSet K!10515))

(assert (=> b!4378059 (= e!2725178 (= ((_ map and) (content!7811 (keys!16669 lt!1588610)) ((_ map not) (store ((as const (Array K!10515 Bool)) false) key!3918 true))) (content!7811 (keys!16669 lt!1589006))))))

(assert (= (and d!1303263 res!1802873) b!4378059))

(declare-fun m!5013571 () Bool)

(assert (=> d!1303263 m!5013571))

(declare-fun m!5013573 () Bool)

(assert (=> d!1303263 m!5013573))

(assert (=> b!4378059 m!5013071))

(declare-fun m!5013575 () Bool)

(assert (=> b!4378059 m!5013575))

(declare-fun m!5013577 () Bool)

(assert (=> b!4378059 m!5013577))

(assert (=> b!4378059 m!5013071))

(declare-fun m!5013579 () Bool)

(assert (=> b!4378059 m!5013579))

(assert (=> b!4378059 m!5013577))

(declare-fun m!5013581 () Bool)

(assert (=> b!4378059 m!5013581))

(assert (=> b!4377789 d!1303263))

(declare-fun bs!660516 () Bool)

(declare-fun b!4378062 () Bool)

(assert (= bs!660516 (and b!4378062 b!4377996)))

(declare-fun lambda!145164 () Int)

(assert (=> bs!660516 (= lambda!145164 lambda!145152)))

(declare-fun bs!660517 () Bool)

(assert (= bs!660517 (and b!4378062 d!1303179)))

(assert (=> bs!660517 (= (= lt!1588594 lt!1588922) (= lambda!145164 lambda!145155))))

(declare-fun bs!660518 () Bool)

(assert (= bs!660518 (and b!4378062 b!4378047)))

(assert (=> bs!660518 (= (= lt!1588594 (+!790 lt!1588594 lt!1588602)) (= lambda!145164 lambda!145160))))

(declare-fun bs!660519 () Bool)

(assert (= bs!660519 (and b!4378062 d!1303255)))

(assert (=> bs!660519 (= (= lt!1588594 lt!1588981) (= lambda!145164 lambda!145162))))

(declare-fun bs!660520 () Bool)

(assert (= bs!660520 (and b!4378062 b!4377997)))

(assert (=> bs!660520 (= (= lt!1588594 lt!1588912) (= lambda!145164 lambda!145154))))

(assert (=> bs!660518 (= (= lt!1588594 lt!1588971) (= lambda!145164 lambda!145161))))

(declare-fun bs!660521 () Bool)

(assert (= bs!660521 (and b!4378062 b!4378046)))

(assert (=> bs!660521 (= (= lt!1588594 (+!790 lt!1588594 lt!1588602)) (= lambda!145164 lambda!145159))))

(assert (=> bs!660520 (= lambda!145164 lambda!145153)))

(assert (=> b!4378062 true))

(declare-fun bs!660522 () Bool)

(declare-fun b!4378063 () Bool)

(assert (= bs!660522 (and b!4378063 d!1303179)))

(declare-fun lambda!145165 () Int)

(assert (=> bs!660522 (= (= lt!1588594 lt!1588922) (= lambda!145165 lambda!145155))))

(declare-fun bs!660523 () Bool)

(assert (= bs!660523 (and b!4378063 b!4378047)))

(assert (=> bs!660523 (= (= lt!1588594 (+!790 lt!1588594 lt!1588602)) (= lambda!145165 lambda!145160))))

(declare-fun bs!660524 () Bool)

(assert (= bs!660524 (and b!4378063 d!1303255)))

(assert (=> bs!660524 (= (= lt!1588594 lt!1588981) (= lambda!145165 lambda!145162))))

(declare-fun bs!660525 () Bool)

(assert (= bs!660525 (and b!4378063 b!4377997)))

(assert (=> bs!660525 (= (= lt!1588594 lt!1588912) (= lambda!145165 lambda!145154))))

(assert (=> bs!660523 (= (= lt!1588594 lt!1588971) (= lambda!145165 lambda!145161))))

(declare-fun bs!660526 () Bool)

(assert (= bs!660526 (and b!4378063 b!4378062)))

(assert (=> bs!660526 (= lambda!145165 lambda!145164)))

(declare-fun bs!660527 () Bool)

(assert (= bs!660527 (and b!4378063 b!4377996)))

(assert (=> bs!660527 (= lambda!145165 lambda!145152)))

(declare-fun bs!660528 () Bool)

(assert (= bs!660528 (and b!4378063 b!4378046)))

(assert (=> bs!660528 (= (= lt!1588594 (+!790 lt!1588594 lt!1588602)) (= lambda!145165 lambda!145159))))

(assert (=> bs!660525 (= lambda!145165 lambda!145153)))

(assert (=> b!4378063 true))

(declare-fun lt!1589011 () ListMap!2385)

(declare-fun lambda!145166 () Int)

(assert (=> bs!660522 (= (= lt!1589011 lt!1588922) (= lambda!145166 lambda!145155))))

(assert (=> bs!660523 (= (= lt!1589011 (+!790 lt!1588594 lt!1588602)) (= lambda!145166 lambda!145160))))

(assert (=> bs!660524 (= (= lt!1589011 lt!1588981) (= lambda!145166 lambda!145162))))

(assert (=> b!4378063 (= (= lt!1589011 lt!1588594) (= lambda!145166 lambda!145165))))

(assert (=> bs!660525 (= (= lt!1589011 lt!1588912) (= lambda!145166 lambda!145154))))

(assert (=> bs!660523 (= (= lt!1589011 lt!1588971) (= lambda!145166 lambda!145161))))

(assert (=> bs!660526 (= (= lt!1589011 lt!1588594) (= lambda!145166 lambda!145164))))

(assert (=> bs!660527 (= (= lt!1589011 lt!1588594) (= lambda!145166 lambda!145152))))

(assert (=> bs!660528 (= (= lt!1589011 (+!790 lt!1588594 lt!1588602)) (= lambda!145166 lambda!145159))))

(assert (=> bs!660525 (= (= lt!1589011 lt!1588594) (= lambda!145166 lambda!145153))))

(assert (=> b!4378063 true))

(declare-fun bs!660529 () Bool)

(declare-fun d!1303265 () Bool)

(assert (= bs!660529 (and d!1303265 d!1303179)))

(declare-fun lt!1589021 () ListMap!2385)

(declare-fun lambda!145167 () Int)

(assert (=> bs!660529 (= (= lt!1589021 lt!1588922) (= lambda!145167 lambda!145155))))

(declare-fun bs!660530 () Bool)

(assert (= bs!660530 (and d!1303265 b!4378047)))

(assert (=> bs!660530 (= (= lt!1589021 (+!790 lt!1588594 lt!1588602)) (= lambda!145167 lambda!145160))))

(declare-fun bs!660531 () Bool)

(assert (= bs!660531 (and d!1303265 d!1303255)))

(assert (=> bs!660531 (= (= lt!1589021 lt!1588981) (= lambda!145167 lambda!145162))))

(declare-fun bs!660532 () Bool)

(assert (= bs!660532 (and d!1303265 b!4378063)))

(assert (=> bs!660532 (= (= lt!1589021 lt!1588594) (= lambda!145167 lambda!145165))))

(declare-fun bs!660533 () Bool)

(assert (= bs!660533 (and d!1303265 b!4377997)))

(assert (=> bs!660533 (= (= lt!1589021 lt!1588912) (= lambda!145167 lambda!145154))))

(assert (=> bs!660532 (= (= lt!1589021 lt!1589011) (= lambda!145167 lambda!145166))))

(assert (=> bs!660530 (= (= lt!1589021 lt!1588971) (= lambda!145167 lambda!145161))))

(declare-fun bs!660534 () Bool)

(assert (= bs!660534 (and d!1303265 b!4378062)))

(assert (=> bs!660534 (= (= lt!1589021 lt!1588594) (= lambda!145167 lambda!145164))))

(declare-fun bs!660535 () Bool)

(assert (= bs!660535 (and d!1303265 b!4377996)))

(assert (=> bs!660535 (= (= lt!1589021 lt!1588594) (= lambda!145167 lambda!145152))))

(declare-fun bs!660536 () Bool)

(assert (= bs!660536 (and d!1303265 b!4378046)))

(assert (=> bs!660536 (= (= lt!1589021 (+!790 lt!1588594 lt!1588602)) (= lambda!145167 lambda!145159))))

(assert (=> bs!660533 (= (= lt!1589021 lt!1588594) (= lambda!145167 lambda!145153))))

(assert (=> d!1303265 true))

(declare-fun b!4378060 () Bool)

(declare-fun e!2725181 () Bool)

(assert (=> b!4378060 (= e!2725181 (forall!9273 (toList!3142 lt!1588594) lambda!145166))))

(declare-fun bm!304471 () Bool)

(declare-fun c!744496 () Bool)

(declare-fun call!304477 () Bool)

(assert (=> bm!304471 (= call!304477 (forall!9273 (ite c!744496 (toList!3142 lt!1588594) (t!356206 newBucket!200)) (ite c!744496 lambda!145164 lambda!145166)))))

(declare-fun b!4378061 () Bool)

(declare-fun e!2725179 () Bool)

(assert (=> b!4378061 (= e!2725179 (invariantList!723 (toList!3142 lt!1589021)))))

(declare-fun bm!304472 () Bool)

(declare-fun call!304478 () Unit!75116)

(assert (=> bm!304472 (= call!304478 (lemmaContainsAllItsOwnKeys!105 lt!1588594))))

(declare-fun e!2725180 () ListMap!2385)

(assert (=> b!4378062 (= e!2725180 lt!1588594)))

(declare-fun lt!1589020 () Unit!75116)

(assert (=> b!4378062 (= lt!1589020 call!304478)))

(assert (=> b!4378062 call!304477))

(declare-fun lt!1589027 () Unit!75116)

(assert (=> b!4378062 (= lt!1589027 lt!1589020)))

(declare-fun call!304476 () Bool)

(assert (=> b!4378062 call!304476))

(declare-fun lt!1589025 () Unit!75116)

(declare-fun Unit!75190 () Unit!75116)

(assert (=> b!4378062 (= lt!1589025 Unit!75190)))

(assert (=> d!1303265 e!2725179))

(declare-fun res!1802876 () Bool)

(assert (=> d!1303265 (=> (not res!1802876) (not e!2725179))))

(assert (=> d!1303265 (= res!1802876 (forall!9273 newBucket!200 lambda!145167))))

(assert (=> d!1303265 (= lt!1589021 e!2725180)))

(assert (=> d!1303265 (= c!744496 ((_ is Nil!49156) newBucket!200))))

(assert (=> d!1303265 (noDuplicateKeys!579 newBucket!200)))

(assert (=> d!1303265 (= (addToMapMapFromBucket!260 newBucket!200 lt!1588594) lt!1589021)))

(assert (=> b!4378063 (= e!2725180 lt!1589011)))

(declare-fun lt!1589014 () ListMap!2385)

(assert (=> b!4378063 (= lt!1589014 (+!790 lt!1588594 (h!54753 newBucket!200)))))

(assert (=> b!4378063 (= lt!1589011 (addToMapMapFromBucket!260 (t!356206 newBucket!200) (+!790 lt!1588594 (h!54753 newBucket!200))))))

(declare-fun lt!1589010 () Unit!75116)

(assert (=> b!4378063 (= lt!1589010 call!304478)))

(assert (=> b!4378063 (forall!9273 (toList!3142 lt!1588594) lambda!145165)))

(declare-fun lt!1589019 () Unit!75116)

(assert (=> b!4378063 (= lt!1589019 lt!1589010)))

(assert (=> b!4378063 (forall!9273 (toList!3142 lt!1589014) lambda!145166)))

(declare-fun lt!1589008 () Unit!75116)

(declare-fun Unit!75191 () Unit!75116)

(assert (=> b!4378063 (= lt!1589008 Unit!75191)))

(assert (=> b!4378063 call!304477))

(declare-fun lt!1589022 () Unit!75116)

(declare-fun Unit!75192 () Unit!75116)

(assert (=> b!4378063 (= lt!1589022 Unit!75192)))

(declare-fun lt!1589013 () Unit!75116)

(declare-fun Unit!75193 () Unit!75116)

(assert (=> b!4378063 (= lt!1589013 Unit!75193)))

(declare-fun lt!1589026 () Unit!75116)

(assert (=> b!4378063 (= lt!1589026 (forallContained!1911 (toList!3142 lt!1589014) lambda!145166 (h!54753 newBucket!200)))))

(assert (=> b!4378063 (contains!11488 lt!1589014 (_1!27637 (h!54753 newBucket!200)))))

(declare-fun lt!1589023 () Unit!75116)

(declare-fun Unit!75195 () Unit!75116)

(assert (=> b!4378063 (= lt!1589023 Unit!75195)))

(assert (=> b!4378063 (contains!11488 lt!1589011 (_1!27637 (h!54753 newBucket!200)))))

(declare-fun lt!1589009 () Unit!75116)

(declare-fun Unit!75196 () Unit!75116)

(assert (=> b!4378063 (= lt!1589009 Unit!75196)))

(assert (=> b!4378063 (forall!9273 newBucket!200 lambda!145166)))

(declare-fun lt!1589016 () Unit!75116)

(declare-fun Unit!75197 () Unit!75116)

(assert (=> b!4378063 (= lt!1589016 Unit!75197)))

(assert (=> b!4378063 call!304476))

(declare-fun lt!1589015 () Unit!75116)

(declare-fun Unit!75198 () Unit!75116)

(assert (=> b!4378063 (= lt!1589015 Unit!75198)))

(declare-fun lt!1589012 () Unit!75116)

(declare-fun Unit!75199 () Unit!75116)

(assert (=> b!4378063 (= lt!1589012 Unit!75199)))

(declare-fun lt!1589018 () Unit!75116)

(assert (=> b!4378063 (= lt!1589018 (addForallContainsKeyThenBeforeAdding!105 lt!1588594 lt!1589011 (_1!27637 (h!54753 newBucket!200)) (_2!27637 (h!54753 newBucket!200))))))

(assert (=> b!4378063 (forall!9273 (toList!3142 lt!1588594) lambda!145166)))

(declare-fun lt!1589007 () Unit!75116)

(assert (=> b!4378063 (= lt!1589007 lt!1589018)))

(assert (=> b!4378063 (forall!9273 (toList!3142 lt!1588594) lambda!145166)))

(declare-fun lt!1589017 () Unit!75116)

(declare-fun Unit!75200 () Unit!75116)

(assert (=> b!4378063 (= lt!1589017 Unit!75200)))

(declare-fun res!1802875 () Bool)

(assert (=> b!4378063 (= res!1802875 (forall!9273 newBucket!200 lambda!145166))))

(assert (=> b!4378063 (=> (not res!1802875) (not e!2725181))))

(assert (=> b!4378063 e!2725181))

(declare-fun lt!1589024 () Unit!75116)

(declare-fun Unit!75201 () Unit!75116)

(assert (=> b!4378063 (= lt!1589024 Unit!75201)))

(declare-fun b!4378064 () Bool)

(declare-fun res!1802874 () Bool)

(assert (=> b!4378064 (=> (not res!1802874) (not e!2725179))))

(assert (=> b!4378064 (= res!1802874 (forall!9273 (toList!3142 lt!1588594) lambda!145167))))

(declare-fun bm!304473 () Bool)

(assert (=> bm!304473 (= call!304476 (forall!9273 (ite c!744496 (toList!3142 lt!1588594) (toList!3142 lt!1589014)) (ite c!744496 lambda!145164 lambda!145166)))))

(assert (= (and d!1303265 c!744496) b!4378062))

(assert (= (and d!1303265 (not c!744496)) b!4378063))

(assert (= (and b!4378063 res!1802875) b!4378060))

(assert (= (or b!4378062 b!4378063) bm!304472))

(assert (= (or b!4378062 b!4378063) bm!304471))

(assert (= (or b!4378062 b!4378063) bm!304473))

(assert (= (and d!1303265 res!1802876) b!4378064))

(assert (= (and b!4378064 res!1802874) b!4378061))

(declare-fun m!5013583 () Bool)

(assert (=> b!4378061 m!5013583))

(declare-fun m!5013585 () Bool)

(assert (=> b!4378060 m!5013585))

(declare-fun m!5013587 () Bool)

(assert (=> b!4378064 m!5013587))

(declare-fun m!5013589 () Bool)

(assert (=> bm!304473 m!5013589))

(assert (=> b!4378063 m!5013585))

(assert (=> b!4378063 m!5013585))

(declare-fun m!5013591 () Bool)

(assert (=> b!4378063 m!5013591))

(declare-fun m!5013593 () Bool)

(assert (=> b!4378063 m!5013593))

(declare-fun m!5013595 () Bool)

(assert (=> b!4378063 m!5013595))

(declare-fun m!5013597 () Bool)

(assert (=> b!4378063 m!5013597))

(declare-fun m!5013599 () Bool)

(assert (=> b!4378063 m!5013599))

(assert (=> b!4378063 m!5013599))

(assert (=> b!4378063 m!5013593))

(declare-fun m!5013601 () Bool)

(assert (=> b!4378063 m!5013601))

(declare-fun m!5013603 () Bool)

(assert (=> b!4378063 m!5013603))

(declare-fun m!5013605 () Bool)

(assert (=> b!4378063 m!5013605))

(declare-fun m!5013607 () Bool)

(assert (=> b!4378063 m!5013607))

(assert (=> bm!304472 m!5013435))

(declare-fun m!5013609 () Bool)

(assert (=> d!1303265 m!5013609))

(assert (=> d!1303265 m!5012999))

(declare-fun m!5013611 () Bool)

(assert (=> bm!304471 m!5013611))

(assert (=> b!4377789 d!1303265))

(declare-fun bs!660537 () Bool)

(declare-fun d!1303267 () Bool)

(assert (= bs!660537 (and d!1303267 start!425120)))

(declare-fun lambda!145168 () Int)

(assert (=> bs!660537 (= lambda!145168 lambda!145061)))

(declare-fun bs!660538 () Bool)

(assert (= bs!660538 (and d!1303267 d!1303157)))

(assert (=> bs!660538 (not (= lambda!145168 lambda!145064))))

(declare-fun bs!660539 () Bool)

(assert (= bs!660539 (and d!1303267 d!1303175)))

(assert (=> bs!660539 (= lambda!145168 lambda!145079)))

(declare-fun bs!660540 () Bool)

(assert (= bs!660540 (and d!1303267 d!1303259)))

(assert (=> bs!660540 (= lambda!145168 lambda!145163)))

(declare-fun lt!1589028 () ListMap!2385)

(assert (=> d!1303267 (invariantList!723 (toList!3142 lt!1589028))))

(declare-fun e!2725182 () ListMap!2385)

(assert (=> d!1303267 (= lt!1589028 e!2725182)))

(declare-fun c!744497 () Bool)

(assert (=> d!1303267 (= c!744497 ((_ is Cons!49157) (toList!3141 lt!1588596)))))

(assert (=> d!1303267 (forall!9271 (toList!3141 lt!1588596) lambda!145168)))

(assert (=> d!1303267 (= (extractMap!638 (toList!3141 lt!1588596)) lt!1589028)))

(declare-fun b!4378065 () Bool)

(assert (=> b!4378065 (= e!2725182 (addToMapMapFromBucket!260 (_2!27638 (h!54754 (toList!3141 lt!1588596))) (extractMap!638 (t!356207 (toList!3141 lt!1588596)))))))

(declare-fun b!4378066 () Bool)

(assert (=> b!4378066 (= e!2725182 (ListMap!2386 Nil!49156))))

(assert (= (and d!1303267 c!744497) b!4378065))

(assert (= (and d!1303267 (not c!744497)) b!4378066))

(declare-fun m!5013613 () Bool)

(assert (=> d!1303267 m!5013613))

(declare-fun m!5013615 () Bool)

(assert (=> d!1303267 m!5013615))

(declare-fun m!5013617 () Bool)

(assert (=> b!4378065 m!5013617))

(assert (=> b!4378065 m!5013617))

(declare-fun m!5013619 () Bool)

(assert (=> b!4378065 m!5013619))

(assert (=> b!4377789 d!1303267))

(declare-fun d!1303269 () Bool)

(declare-fun content!7813 (List!49280) (InoxSet tuple2!48686))

(assert (=> d!1303269 (= (eq!317 lt!1588601 lt!1588609) (= (content!7813 (toList!3142 lt!1588601)) (content!7813 (toList!3142 lt!1588609))))))

(declare-fun bs!660541 () Bool)

(assert (= bs!660541 d!1303269))

(declare-fun m!5013621 () Bool)

(assert (=> bs!660541 m!5013621))

(declare-fun m!5013623 () Bool)

(assert (=> bs!660541 m!5013623))

(assert (=> b!4377789 d!1303269))

(declare-fun d!1303271 () Bool)

(assert (=> d!1303271 (= (eq!317 lt!1588597 lt!1588598) (= (content!7813 (toList!3142 lt!1588597)) (content!7813 (toList!3142 lt!1588598))))))

(declare-fun bs!660542 () Bool)

(assert (= bs!660542 d!1303271))

(declare-fun m!5013625 () Bool)

(assert (=> bs!660542 m!5013625))

(declare-fun m!5013627 () Bool)

(assert (=> bs!660542 m!5013627))

(assert (=> b!4377789 d!1303271))

(declare-fun bs!660543 () Bool)

(declare-fun d!1303273 () Bool)

(assert (= bs!660543 (and d!1303273 d!1303259)))

(declare-fun lambda!145169 () Int)

(assert (=> bs!660543 (= lambda!145169 lambda!145163)))

(declare-fun bs!660544 () Bool)

(assert (= bs!660544 (and d!1303273 d!1303175)))

(assert (=> bs!660544 (= lambda!145169 lambda!145079)))

(declare-fun bs!660545 () Bool)

(assert (= bs!660545 (and d!1303273 start!425120)))

(assert (=> bs!660545 (= lambda!145169 lambda!145061)))

(declare-fun bs!660546 () Bool)

(assert (= bs!660546 (and d!1303273 d!1303267)))

(assert (=> bs!660546 (= lambda!145169 lambda!145168)))

(declare-fun bs!660547 () Bool)

(assert (= bs!660547 (and d!1303273 d!1303157)))

(assert (=> bs!660547 (not (= lambda!145169 lambda!145064))))

(declare-fun lt!1589029 () ListMap!2385)

(assert (=> d!1303273 (invariantList!723 (toList!3142 lt!1589029))))

(declare-fun e!2725183 () ListMap!2385)

(assert (=> d!1303273 (= lt!1589029 e!2725183)))

(declare-fun c!744498 () Bool)

(assert (=> d!1303273 (= c!744498 ((_ is Cons!49157) (toList!3141 lt!1588604)))))

(assert (=> d!1303273 (forall!9271 (toList!3141 lt!1588604) lambda!145169)))

(assert (=> d!1303273 (= (extractMap!638 (toList!3141 lt!1588604)) lt!1589029)))

(declare-fun b!4378067 () Bool)

(assert (=> b!4378067 (= e!2725183 (addToMapMapFromBucket!260 (_2!27638 (h!54754 (toList!3141 lt!1588604))) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))))))

(declare-fun b!4378068 () Bool)

(assert (=> b!4378068 (= e!2725183 (ListMap!2386 Nil!49156))))

(assert (= (and d!1303273 c!744498) b!4378067))

(assert (= (and d!1303273 (not c!744498)) b!4378068))

(declare-fun m!5013629 () Bool)

(assert (=> d!1303273 m!5013629))

(declare-fun m!5013631 () Bool)

(assert (=> d!1303273 m!5013631))

(declare-fun m!5013633 () Bool)

(assert (=> b!4378067 m!5013633))

(assert (=> b!4378067 m!5013633))

(declare-fun m!5013635 () Bool)

(assert (=> b!4378067 m!5013635))

(assert (=> b!4377789 d!1303273))

(declare-fun bs!660548 () Bool)

(declare-fun d!1303275 () Bool)

(assert (= bs!660548 (and d!1303275 d!1303273)))

(declare-fun lambda!145172 () Int)

(assert (=> bs!660548 (= lambda!145172 lambda!145169)))

(declare-fun bs!660549 () Bool)

(assert (= bs!660549 (and d!1303275 d!1303259)))

(assert (=> bs!660549 (= lambda!145172 lambda!145163)))

(declare-fun bs!660550 () Bool)

(assert (= bs!660550 (and d!1303275 d!1303175)))

(assert (=> bs!660550 (= lambda!145172 lambda!145079)))

(declare-fun bs!660551 () Bool)

(assert (= bs!660551 (and d!1303275 start!425120)))

(assert (=> bs!660551 (= lambda!145172 lambda!145061)))

(declare-fun bs!660552 () Bool)

(assert (= bs!660552 (and d!1303275 d!1303267)))

(assert (=> bs!660552 (= lambda!145172 lambda!145168)))

(declare-fun bs!660553 () Bool)

(assert (= bs!660553 (and d!1303275 d!1303157)))

(assert (=> bs!660553 (not (= lambda!145172 lambda!145064))))

(assert (=> d!1303275 (eq!317 (extractMap!638 (toList!3141 (+!789 lm!1707 (tuple2!48689 hash!377 lt!1588599)))) (-!254 (extractMap!638 (toList!3141 lm!1707)) key!3918))))

(declare-fun lt!1589032 () Unit!75116)

(declare-fun choose!27298 (ListLongMap!1791 (_ BitVec 64) List!49280 K!10515 Hashable!4971) Unit!75116)

(assert (=> d!1303275 (= lt!1589032 (choose!27298 lm!1707 hash!377 lt!1588599 key!3918 hashF!1247))))

(assert (=> d!1303275 (forall!9271 (toList!3141 lm!1707) lambda!145172)))

(assert (=> d!1303275 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!69 lm!1707 hash!377 lt!1588599 key!3918 hashF!1247) lt!1589032)))

(declare-fun bs!660554 () Bool)

(assert (= bs!660554 d!1303275))

(assert (=> bs!660554 m!5012939))

(declare-fun m!5013637 () Bool)

(assert (=> bs!660554 m!5013637))

(declare-fun m!5013639 () Bool)

(assert (=> bs!660554 m!5013639))

(assert (=> bs!660554 m!5012973))

(declare-fun m!5013641 () Bool)

(assert (=> bs!660554 m!5013641))

(assert (=> bs!660554 m!5013637))

(declare-fun m!5013643 () Bool)

(assert (=> bs!660554 m!5013643))

(declare-fun m!5013645 () Bool)

(assert (=> bs!660554 m!5013645))

(assert (=> bs!660554 m!5013641))

(assert (=> bs!660554 m!5012939))

(assert (=> b!4377789 d!1303275))

(declare-fun d!1303277 () Bool)

(declare-fun get!15985 (Option!10560) List!49280)

(assert (=> d!1303277 (= (apply!11431 lt!1588596 hash!377) (get!15985 (getValueByKey!546 (toList!3141 lt!1588596) hash!377)))))

(declare-fun bs!660555 () Bool)

(assert (= bs!660555 d!1303277))

(declare-fun m!5013647 () Bool)

(assert (=> bs!660555 m!5013647))

(assert (=> bs!660555 m!5013647))

(declare-fun m!5013649 () Bool)

(assert (=> bs!660555 m!5013649))

(assert (=> b!4377789 d!1303277))

(declare-fun d!1303279 () Bool)

(declare-fun e!2725184 () Bool)

(assert (=> d!1303279 e!2725184))

(declare-fun res!1802877 () Bool)

(assert (=> d!1303279 (=> res!1802877 e!2725184)))

(declare-fun e!2725188 () Bool)

(assert (=> d!1303279 (= res!1802877 e!2725188)))

(declare-fun res!1802879 () Bool)

(assert (=> d!1303279 (=> (not res!1802879) (not e!2725188))))

(declare-fun lt!1589033 () Bool)

(assert (=> d!1303279 (= res!1802879 (not lt!1589033))))

(declare-fun lt!1589038 () Bool)

(assert (=> d!1303279 (= lt!1589033 lt!1589038)))

(declare-fun lt!1589039 () Unit!75116)

(declare-fun e!2725185 () Unit!75116)

(assert (=> d!1303279 (= lt!1589039 e!2725185)))

(declare-fun c!744500 () Bool)

(assert (=> d!1303279 (= c!744500 lt!1589038)))

(assert (=> d!1303279 (= lt!1589038 (containsKey!848 (toList!3142 lt!1588597) key!3918))))

(assert (=> d!1303279 (= (contains!11488 lt!1588597 key!3918) lt!1589033)))

(declare-fun bm!304474 () Bool)

(declare-fun call!304479 () Bool)

(declare-fun e!2725186 () List!49283)

(assert (=> bm!304474 (= call!304479 (contains!11492 e!2725186 key!3918))))

(declare-fun c!744499 () Bool)

(assert (=> bm!304474 (= c!744499 c!744500)))

(declare-fun b!4378069 () Bool)

(declare-fun e!2725189 () Bool)

(assert (=> b!4378069 (= e!2725184 e!2725189)))

(declare-fun res!1802878 () Bool)

(assert (=> b!4378069 (=> (not res!1802878) (not e!2725189))))

(assert (=> b!4378069 (= res!1802878 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588597) key!3918)))))

(declare-fun b!4378070 () Bool)

(declare-fun e!2725187 () Unit!75116)

(declare-fun Unit!75204 () Unit!75116)

(assert (=> b!4378070 (= e!2725187 Unit!75204)))

(declare-fun b!4378071 () Bool)

(assert (=> b!4378071 false))

(declare-fun lt!1589035 () Unit!75116)

(declare-fun lt!1589034 () Unit!75116)

(assert (=> b!4378071 (= lt!1589035 lt!1589034)))

(assert (=> b!4378071 (containsKey!848 (toList!3142 lt!1588597) key!3918)))

(assert (=> b!4378071 (= lt!1589034 (lemmaInGetKeysListThenContainsKey!169 (toList!3142 lt!1588597) key!3918))))

(declare-fun Unit!75205 () Unit!75116)

(assert (=> b!4378071 (= e!2725187 Unit!75205)))

(declare-fun b!4378072 () Bool)

(declare-fun lt!1589040 () Unit!75116)

(assert (=> b!4378072 (= e!2725185 lt!1589040)))

(declare-fun lt!1589037 () Unit!75116)

(assert (=> b!4378072 (= lt!1589037 (lemmaContainsKeyImpliesGetValueByKeyDefined!455 (toList!3142 lt!1588597) key!3918))))

(assert (=> b!4378072 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588597) key!3918))))

(declare-fun lt!1589036 () Unit!75116)

(assert (=> b!4378072 (= lt!1589036 lt!1589037)))

(assert (=> b!4378072 (= lt!1589040 (lemmaInListThenGetKeysListContains!168 (toList!3142 lt!1588597) key!3918))))

(assert (=> b!4378072 call!304479))

(declare-fun b!4378073 () Bool)

(assert (=> b!4378073 (= e!2725189 (contains!11492 (keys!16669 lt!1588597) key!3918))))

(declare-fun b!4378074 () Bool)

(assert (=> b!4378074 (= e!2725186 (keys!16669 lt!1588597))))

(declare-fun b!4378075 () Bool)

(assert (=> b!4378075 (= e!2725185 e!2725187)))

(declare-fun c!744501 () Bool)

(assert (=> b!4378075 (= c!744501 call!304479)))

(declare-fun b!4378076 () Bool)

(assert (=> b!4378076 (= e!2725186 (getKeysList!171 (toList!3142 lt!1588597)))))

(declare-fun b!4378077 () Bool)

(assert (=> b!4378077 (= e!2725188 (not (contains!11492 (keys!16669 lt!1588597) key!3918)))))

(assert (= (and d!1303279 c!744500) b!4378072))

(assert (= (and d!1303279 (not c!744500)) b!4378075))

(assert (= (and b!4378075 c!744501) b!4378071))

(assert (= (and b!4378075 (not c!744501)) b!4378070))

(assert (= (or b!4378072 b!4378075) bm!304474))

(assert (= (and bm!304474 c!744499) b!4378076))

(assert (= (and bm!304474 (not c!744499)) b!4378074))

(assert (= (and d!1303279 res!1802879) b!4378077))

(assert (= (and d!1303279 (not res!1802877)) b!4378069))

(assert (= (and b!4378069 res!1802878) b!4378073))

(declare-fun m!5013651 () Bool)

(assert (=> b!4378077 m!5013651))

(assert (=> b!4378077 m!5013651))

(declare-fun m!5013653 () Bool)

(assert (=> b!4378077 m!5013653))

(declare-fun m!5013655 () Bool)

(assert (=> b!4378076 m!5013655))

(declare-fun m!5013657 () Bool)

(assert (=> b!4378071 m!5013657))

(declare-fun m!5013659 () Bool)

(assert (=> b!4378071 m!5013659))

(assert (=> b!4378074 m!5013651))

(declare-fun m!5013661 () Bool)

(assert (=> bm!304474 m!5013661))

(declare-fun m!5013663 () Bool)

(assert (=> b!4378069 m!5013663))

(assert (=> b!4378069 m!5013663))

(declare-fun m!5013665 () Bool)

(assert (=> b!4378069 m!5013665))

(assert (=> b!4378073 m!5013651))

(assert (=> b!4378073 m!5013651))

(assert (=> b!4378073 m!5013653))

(assert (=> d!1303279 m!5013657))

(declare-fun m!5013667 () Bool)

(assert (=> b!4378072 m!5013667))

(assert (=> b!4378072 m!5013663))

(assert (=> b!4378072 m!5013663))

(assert (=> b!4378072 m!5013665))

(declare-fun m!5013669 () Bool)

(assert (=> b!4378072 m!5013669))

(assert (=> b!4377789 d!1303279))

(declare-fun d!1303281 () Bool)

(declare-fun e!2725190 () Bool)

(assert (=> d!1303281 e!2725190))

(declare-fun res!1802880 () Bool)

(assert (=> d!1303281 (=> res!1802880 e!2725190)))

(declare-fun e!2725194 () Bool)

(assert (=> d!1303281 (= res!1802880 e!2725194)))

(declare-fun res!1802882 () Bool)

(assert (=> d!1303281 (=> (not res!1802882) (not e!2725194))))

(declare-fun lt!1589041 () Bool)

(assert (=> d!1303281 (= res!1802882 (not lt!1589041))))

(declare-fun lt!1589046 () Bool)

(assert (=> d!1303281 (= lt!1589041 lt!1589046)))

(declare-fun lt!1589047 () Unit!75116)

(declare-fun e!2725191 () Unit!75116)

(assert (=> d!1303281 (= lt!1589047 e!2725191)))

(declare-fun c!744503 () Bool)

(assert (=> d!1303281 (= c!744503 lt!1589046)))

(assert (=> d!1303281 (= lt!1589046 (containsKey!848 (toList!3142 lt!1588598) key!3918))))

(assert (=> d!1303281 (= (contains!11488 lt!1588598 key!3918) lt!1589041)))

(declare-fun bm!304475 () Bool)

(declare-fun call!304480 () Bool)

(declare-fun e!2725192 () List!49283)

(assert (=> bm!304475 (= call!304480 (contains!11492 e!2725192 key!3918))))

(declare-fun c!744502 () Bool)

(assert (=> bm!304475 (= c!744502 c!744503)))

(declare-fun b!4378078 () Bool)

(declare-fun e!2725195 () Bool)

(assert (=> b!4378078 (= e!2725190 e!2725195)))

(declare-fun res!1802881 () Bool)

(assert (=> b!4378078 (=> (not res!1802881) (not e!2725195))))

(assert (=> b!4378078 (= res!1802881 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588598) key!3918)))))

(declare-fun b!4378079 () Bool)

(declare-fun e!2725193 () Unit!75116)

(declare-fun Unit!75206 () Unit!75116)

(assert (=> b!4378079 (= e!2725193 Unit!75206)))

(declare-fun b!4378080 () Bool)

(assert (=> b!4378080 false))

(declare-fun lt!1589043 () Unit!75116)

(declare-fun lt!1589042 () Unit!75116)

(assert (=> b!4378080 (= lt!1589043 lt!1589042)))

(assert (=> b!4378080 (containsKey!848 (toList!3142 lt!1588598) key!3918)))

(assert (=> b!4378080 (= lt!1589042 (lemmaInGetKeysListThenContainsKey!169 (toList!3142 lt!1588598) key!3918))))

(declare-fun Unit!75207 () Unit!75116)

(assert (=> b!4378080 (= e!2725193 Unit!75207)))

(declare-fun b!4378081 () Bool)

(declare-fun lt!1589048 () Unit!75116)

(assert (=> b!4378081 (= e!2725191 lt!1589048)))

(declare-fun lt!1589045 () Unit!75116)

(assert (=> b!4378081 (= lt!1589045 (lemmaContainsKeyImpliesGetValueByKeyDefined!455 (toList!3142 lt!1588598) key!3918))))

(assert (=> b!4378081 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588598) key!3918))))

(declare-fun lt!1589044 () Unit!75116)

(assert (=> b!4378081 (= lt!1589044 lt!1589045)))

(assert (=> b!4378081 (= lt!1589048 (lemmaInListThenGetKeysListContains!168 (toList!3142 lt!1588598) key!3918))))

(assert (=> b!4378081 call!304480))

(declare-fun b!4378082 () Bool)

(assert (=> b!4378082 (= e!2725195 (contains!11492 (keys!16669 lt!1588598) key!3918))))

(declare-fun b!4378083 () Bool)

(assert (=> b!4378083 (= e!2725192 (keys!16669 lt!1588598))))

(declare-fun b!4378084 () Bool)

(assert (=> b!4378084 (= e!2725191 e!2725193)))

(declare-fun c!744504 () Bool)

(assert (=> b!4378084 (= c!744504 call!304480)))

(declare-fun b!4378085 () Bool)

(assert (=> b!4378085 (= e!2725192 (getKeysList!171 (toList!3142 lt!1588598)))))

(declare-fun b!4378086 () Bool)

(assert (=> b!4378086 (= e!2725194 (not (contains!11492 (keys!16669 lt!1588598) key!3918)))))

(assert (= (and d!1303281 c!744503) b!4378081))

(assert (= (and d!1303281 (not c!744503)) b!4378084))

(assert (= (and b!4378084 c!744504) b!4378080))

(assert (= (and b!4378084 (not c!744504)) b!4378079))

(assert (= (or b!4378081 b!4378084) bm!304475))

(assert (= (and bm!304475 c!744502) b!4378085))

(assert (= (and bm!304475 (not c!744502)) b!4378083))

(assert (= (and d!1303281 res!1802882) b!4378086))

(assert (= (and d!1303281 (not res!1802880)) b!4378078))

(assert (= (and b!4378078 res!1802881) b!4378082))

(declare-fun m!5013671 () Bool)

(assert (=> b!4378086 m!5013671))

(assert (=> b!4378086 m!5013671))

(declare-fun m!5013673 () Bool)

(assert (=> b!4378086 m!5013673))

(declare-fun m!5013675 () Bool)

(assert (=> b!4378085 m!5013675))

(declare-fun m!5013677 () Bool)

(assert (=> b!4378080 m!5013677))

(declare-fun m!5013679 () Bool)

(assert (=> b!4378080 m!5013679))

(assert (=> b!4378083 m!5013671))

(declare-fun m!5013681 () Bool)

(assert (=> bm!304475 m!5013681))

(declare-fun m!5013683 () Bool)

(assert (=> b!4378078 m!5013683))

(assert (=> b!4378078 m!5013683))

(declare-fun m!5013685 () Bool)

(assert (=> b!4378078 m!5013685))

(assert (=> b!4378082 m!5013671))

(assert (=> b!4378082 m!5013671))

(assert (=> b!4378082 m!5013673))

(assert (=> d!1303281 m!5013677))

(declare-fun m!5013687 () Bool)

(assert (=> b!4378081 m!5013687))

(assert (=> b!4378081 m!5013683))

(assert (=> b!4378081 m!5013683))

(assert (=> b!4378081 m!5013685))

(declare-fun m!5013689 () Bool)

(assert (=> b!4378081 m!5013689))

(assert (=> b!4377789 d!1303281))

(declare-fun bs!660556 () Bool)

(declare-fun b!4378089 () Bool)

(assert (= bs!660556 (and b!4378089 d!1303179)))

(declare-fun lambda!145173 () Int)

(assert (=> bs!660556 (= (= lt!1588594 lt!1588922) (= lambda!145173 lambda!145155))))

(declare-fun bs!660557 () Bool)

(assert (= bs!660557 (and b!4378089 b!4378047)))

(assert (=> bs!660557 (= (= lt!1588594 (+!790 lt!1588594 lt!1588602)) (= lambda!145173 lambda!145160))))

(declare-fun bs!660558 () Bool)

(assert (= bs!660558 (and b!4378089 d!1303255)))

(assert (=> bs!660558 (= (= lt!1588594 lt!1588981) (= lambda!145173 lambda!145162))))

(declare-fun bs!660559 () Bool)

(assert (= bs!660559 (and b!4378089 d!1303265)))

(assert (=> bs!660559 (= (= lt!1588594 lt!1589021) (= lambda!145173 lambda!145167))))

(declare-fun bs!660560 () Bool)

(assert (= bs!660560 (and b!4378089 b!4378063)))

(assert (=> bs!660560 (= lambda!145173 lambda!145165)))

(declare-fun bs!660561 () Bool)

(assert (= bs!660561 (and b!4378089 b!4377997)))

(assert (=> bs!660561 (= (= lt!1588594 lt!1588912) (= lambda!145173 lambda!145154))))

(assert (=> bs!660560 (= (= lt!1588594 lt!1589011) (= lambda!145173 lambda!145166))))

(assert (=> bs!660557 (= (= lt!1588594 lt!1588971) (= lambda!145173 lambda!145161))))

(declare-fun bs!660562 () Bool)

(assert (= bs!660562 (and b!4378089 b!4378062)))

(assert (=> bs!660562 (= lambda!145173 lambda!145164)))

(declare-fun bs!660563 () Bool)

(assert (= bs!660563 (and b!4378089 b!4377996)))

(assert (=> bs!660563 (= lambda!145173 lambda!145152)))

(declare-fun bs!660564 () Bool)

(assert (= bs!660564 (and b!4378089 b!4378046)))

(assert (=> bs!660564 (= (= lt!1588594 (+!790 lt!1588594 lt!1588602)) (= lambda!145173 lambda!145159))))

(assert (=> bs!660561 (= lambda!145173 lambda!145153)))

(assert (=> b!4378089 true))

(declare-fun bs!660565 () Bool)

(declare-fun b!4378090 () Bool)

(assert (= bs!660565 (and b!4378090 d!1303179)))

(declare-fun lambda!145174 () Int)

(assert (=> bs!660565 (= (= lt!1588594 lt!1588922) (= lambda!145174 lambda!145155))))

(declare-fun bs!660566 () Bool)

(assert (= bs!660566 (and b!4378090 b!4378047)))

(assert (=> bs!660566 (= (= lt!1588594 (+!790 lt!1588594 lt!1588602)) (= lambda!145174 lambda!145160))))

(declare-fun bs!660567 () Bool)

(assert (= bs!660567 (and b!4378090 d!1303255)))

(assert (=> bs!660567 (= (= lt!1588594 lt!1588981) (= lambda!145174 lambda!145162))))

(declare-fun bs!660568 () Bool)

(assert (= bs!660568 (and b!4378090 d!1303265)))

(assert (=> bs!660568 (= (= lt!1588594 lt!1589021) (= lambda!145174 lambda!145167))))

(declare-fun bs!660569 () Bool)

(assert (= bs!660569 (and b!4378090 b!4378089)))

(assert (=> bs!660569 (= lambda!145174 lambda!145173)))

(declare-fun bs!660570 () Bool)

(assert (= bs!660570 (and b!4378090 b!4378063)))

(assert (=> bs!660570 (= lambda!145174 lambda!145165)))

(declare-fun bs!660571 () Bool)

(assert (= bs!660571 (and b!4378090 b!4377997)))

(assert (=> bs!660571 (= (= lt!1588594 lt!1588912) (= lambda!145174 lambda!145154))))

(assert (=> bs!660570 (= (= lt!1588594 lt!1589011) (= lambda!145174 lambda!145166))))

(assert (=> bs!660566 (= (= lt!1588594 lt!1588971) (= lambda!145174 lambda!145161))))

(declare-fun bs!660572 () Bool)

(assert (= bs!660572 (and b!4378090 b!4378062)))

(assert (=> bs!660572 (= lambda!145174 lambda!145164)))

(declare-fun bs!660573 () Bool)

(assert (= bs!660573 (and b!4378090 b!4377996)))

(assert (=> bs!660573 (= lambda!145174 lambda!145152)))

(declare-fun bs!660574 () Bool)

(assert (= bs!660574 (and b!4378090 b!4378046)))

(assert (=> bs!660574 (= (= lt!1588594 (+!790 lt!1588594 lt!1588602)) (= lambda!145174 lambda!145159))))

(assert (=> bs!660571 (= lambda!145174 lambda!145153)))

(assert (=> b!4378090 true))

(declare-fun lambda!145175 () Int)

(declare-fun lt!1589053 () ListMap!2385)

(assert (=> bs!660565 (= (= lt!1589053 lt!1588922) (= lambda!145175 lambda!145155))))

(assert (=> bs!660566 (= (= lt!1589053 (+!790 lt!1588594 lt!1588602)) (= lambda!145175 lambda!145160))))

(assert (=> bs!660567 (= (= lt!1589053 lt!1588981) (= lambda!145175 lambda!145162))))

(assert (=> bs!660568 (= (= lt!1589053 lt!1589021) (= lambda!145175 lambda!145167))))

(assert (=> bs!660569 (= (= lt!1589053 lt!1588594) (= lambda!145175 lambda!145173))))

(assert (=> bs!660570 (= (= lt!1589053 lt!1588594) (= lambda!145175 lambda!145165))))

(assert (=> bs!660571 (= (= lt!1589053 lt!1588912) (= lambda!145175 lambda!145154))))

(assert (=> bs!660570 (= (= lt!1589053 lt!1589011) (= lambda!145175 lambda!145166))))

(assert (=> bs!660566 (= (= lt!1589053 lt!1588971) (= lambda!145175 lambda!145161))))

(assert (=> bs!660572 (= (= lt!1589053 lt!1588594) (= lambda!145175 lambda!145164))))

(assert (=> bs!660573 (= (= lt!1589053 lt!1588594) (= lambda!145175 lambda!145152))))

(assert (=> b!4378090 (= (= lt!1589053 lt!1588594) (= lambda!145175 lambda!145174))))

(assert (=> bs!660574 (= (= lt!1589053 (+!790 lt!1588594 lt!1588602)) (= lambda!145175 lambda!145159))))

(assert (=> bs!660571 (= (= lt!1589053 lt!1588594) (= lambda!145175 lambda!145153))))

(assert (=> b!4378090 true))

(declare-fun bs!660575 () Bool)

(declare-fun d!1303283 () Bool)

(assert (= bs!660575 (and d!1303283 d!1303179)))

(declare-fun lt!1589063 () ListMap!2385)

(declare-fun lambda!145176 () Int)

(assert (=> bs!660575 (= (= lt!1589063 lt!1588922) (= lambda!145176 lambda!145155))))

(declare-fun bs!660576 () Bool)

(assert (= bs!660576 (and d!1303283 b!4378047)))

(assert (=> bs!660576 (= (= lt!1589063 (+!790 lt!1588594 lt!1588602)) (= lambda!145176 lambda!145160))))

(declare-fun bs!660577 () Bool)

(assert (= bs!660577 (and d!1303283 d!1303255)))

(assert (=> bs!660577 (= (= lt!1589063 lt!1588981) (= lambda!145176 lambda!145162))))

(declare-fun bs!660578 () Bool)

(assert (= bs!660578 (and d!1303283 d!1303265)))

(assert (=> bs!660578 (= (= lt!1589063 lt!1589021) (= lambda!145176 lambda!145167))))

(declare-fun bs!660579 () Bool)

(assert (= bs!660579 (and d!1303283 b!4378063)))

(assert (=> bs!660579 (= (= lt!1589063 lt!1588594) (= lambda!145176 lambda!145165))))

(declare-fun bs!660580 () Bool)

(assert (= bs!660580 (and d!1303283 b!4377997)))

(assert (=> bs!660580 (= (= lt!1589063 lt!1588912) (= lambda!145176 lambda!145154))))

(assert (=> bs!660579 (= (= lt!1589063 lt!1589011) (= lambda!145176 lambda!145166))))

(assert (=> bs!660576 (= (= lt!1589063 lt!1588971) (= lambda!145176 lambda!145161))))

(declare-fun bs!660581 () Bool)

(assert (= bs!660581 (and d!1303283 b!4378062)))

(assert (=> bs!660581 (= (= lt!1589063 lt!1588594) (= lambda!145176 lambda!145164))))

(declare-fun bs!660582 () Bool)

(assert (= bs!660582 (and d!1303283 b!4377996)))

(assert (=> bs!660582 (= (= lt!1589063 lt!1588594) (= lambda!145176 lambda!145152))))

(declare-fun bs!660583 () Bool)

(assert (= bs!660583 (and d!1303283 b!4378090)))

(assert (=> bs!660583 (= (= lt!1589063 lt!1588594) (= lambda!145176 lambda!145174))))

(declare-fun bs!660584 () Bool)

(assert (= bs!660584 (and d!1303283 b!4378046)))

(assert (=> bs!660584 (= (= lt!1589063 (+!790 lt!1588594 lt!1588602)) (= lambda!145176 lambda!145159))))

(assert (=> bs!660580 (= (= lt!1589063 lt!1588594) (= lambda!145176 lambda!145153))))

(declare-fun bs!660585 () Bool)

(assert (= bs!660585 (and d!1303283 b!4378089)))

(assert (=> bs!660585 (= (= lt!1589063 lt!1588594) (= lambda!145176 lambda!145173))))

(assert (=> bs!660583 (= (= lt!1589063 lt!1589053) (= lambda!145176 lambda!145175))))

(assert (=> d!1303283 true))

(declare-fun b!4378087 () Bool)

(declare-fun e!2725198 () Bool)

(assert (=> b!4378087 (= e!2725198 (forall!9273 (toList!3142 lt!1588594) lambda!145175))))

(declare-fun call!304482 () Bool)

(declare-fun c!744505 () Bool)

(declare-fun bm!304476 () Bool)

(assert (=> bm!304476 (= call!304482 (forall!9273 (ite c!744505 (toList!3142 lt!1588594) (t!356206 lt!1588593)) (ite c!744505 lambda!145173 lambda!145175)))))

(declare-fun b!4378088 () Bool)

(declare-fun e!2725196 () Bool)

(assert (=> b!4378088 (= e!2725196 (invariantList!723 (toList!3142 lt!1589063)))))

(declare-fun bm!304477 () Bool)

(declare-fun call!304483 () Unit!75116)

(assert (=> bm!304477 (= call!304483 (lemmaContainsAllItsOwnKeys!105 lt!1588594))))

(declare-fun e!2725197 () ListMap!2385)

(assert (=> b!4378089 (= e!2725197 lt!1588594)))

(declare-fun lt!1589062 () Unit!75116)

(assert (=> b!4378089 (= lt!1589062 call!304483)))

(assert (=> b!4378089 call!304482))

(declare-fun lt!1589069 () Unit!75116)

(assert (=> b!4378089 (= lt!1589069 lt!1589062)))

(declare-fun call!304481 () Bool)

(assert (=> b!4378089 call!304481))

(declare-fun lt!1589067 () Unit!75116)

(declare-fun Unit!75208 () Unit!75116)

(assert (=> b!4378089 (= lt!1589067 Unit!75208)))

(assert (=> d!1303283 e!2725196))

(declare-fun res!1802885 () Bool)

(assert (=> d!1303283 (=> (not res!1802885) (not e!2725196))))

(assert (=> d!1303283 (= res!1802885 (forall!9273 lt!1588593 lambda!145176))))

(assert (=> d!1303283 (= lt!1589063 e!2725197)))

(assert (=> d!1303283 (= c!744505 ((_ is Nil!49156) lt!1588593))))

(assert (=> d!1303283 (noDuplicateKeys!579 lt!1588593)))

(assert (=> d!1303283 (= (addToMapMapFromBucket!260 lt!1588593 lt!1588594) lt!1589063)))

(assert (=> b!4378090 (= e!2725197 lt!1589053)))

(declare-fun lt!1589056 () ListMap!2385)

(assert (=> b!4378090 (= lt!1589056 (+!790 lt!1588594 (h!54753 lt!1588593)))))

(assert (=> b!4378090 (= lt!1589053 (addToMapMapFromBucket!260 (t!356206 lt!1588593) (+!790 lt!1588594 (h!54753 lt!1588593))))))

(declare-fun lt!1589052 () Unit!75116)

(assert (=> b!4378090 (= lt!1589052 call!304483)))

(assert (=> b!4378090 (forall!9273 (toList!3142 lt!1588594) lambda!145174)))

(declare-fun lt!1589061 () Unit!75116)

(assert (=> b!4378090 (= lt!1589061 lt!1589052)))

(assert (=> b!4378090 (forall!9273 (toList!3142 lt!1589056) lambda!145175)))

(declare-fun lt!1589050 () Unit!75116)

(declare-fun Unit!75209 () Unit!75116)

(assert (=> b!4378090 (= lt!1589050 Unit!75209)))

(assert (=> b!4378090 call!304482))

(declare-fun lt!1589064 () Unit!75116)

(declare-fun Unit!75210 () Unit!75116)

(assert (=> b!4378090 (= lt!1589064 Unit!75210)))

(declare-fun lt!1589055 () Unit!75116)

(declare-fun Unit!75211 () Unit!75116)

(assert (=> b!4378090 (= lt!1589055 Unit!75211)))

(declare-fun lt!1589068 () Unit!75116)

(assert (=> b!4378090 (= lt!1589068 (forallContained!1911 (toList!3142 lt!1589056) lambda!145175 (h!54753 lt!1588593)))))

(assert (=> b!4378090 (contains!11488 lt!1589056 (_1!27637 (h!54753 lt!1588593)))))

(declare-fun lt!1589065 () Unit!75116)

(declare-fun Unit!75212 () Unit!75116)

(assert (=> b!4378090 (= lt!1589065 Unit!75212)))

(assert (=> b!4378090 (contains!11488 lt!1589053 (_1!27637 (h!54753 lt!1588593)))))

(declare-fun lt!1589051 () Unit!75116)

(declare-fun Unit!75213 () Unit!75116)

(assert (=> b!4378090 (= lt!1589051 Unit!75213)))

(assert (=> b!4378090 (forall!9273 lt!1588593 lambda!145175)))

(declare-fun lt!1589058 () Unit!75116)

(declare-fun Unit!75214 () Unit!75116)

(assert (=> b!4378090 (= lt!1589058 Unit!75214)))

(assert (=> b!4378090 call!304481))

(declare-fun lt!1589057 () Unit!75116)

(declare-fun Unit!75215 () Unit!75116)

(assert (=> b!4378090 (= lt!1589057 Unit!75215)))

(declare-fun lt!1589054 () Unit!75116)

(declare-fun Unit!75216 () Unit!75116)

(assert (=> b!4378090 (= lt!1589054 Unit!75216)))

(declare-fun lt!1589060 () Unit!75116)

(assert (=> b!4378090 (= lt!1589060 (addForallContainsKeyThenBeforeAdding!105 lt!1588594 lt!1589053 (_1!27637 (h!54753 lt!1588593)) (_2!27637 (h!54753 lt!1588593))))))

(assert (=> b!4378090 (forall!9273 (toList!3142 lt!1588594) lambda!145175)))

(declare-fun lt!1589049 () Unit!75116)

(assert (=> b!4378090 (= lt!1589049 lt!1589060)))

(assert (=> b!4378090 (forall!9273 (toList!3142 lt!1588594) lambda!145175)))

(declare-fun lt!1589059 () Unit!75116)

(declare-fun Unit!75217 () Unit!75116)

(assert (=> b!4378090 (= lt!1589059 Unit!75217)))

(declare-fun res!1802884 () Bool)

(assert (=> b!4378090 (= res!1802884 (forall!9273 lt!1588593 lambda!145175))))

(assert (=> b!4378090 (=> (not res!1802884) (not e!2725198))))

(assert (=> b!4378090 e!2725198))

(declare-fun lt!1589066 () Unit!75116)

(declare-fun Unit!75218 () Unit!75116)

(assert (=> b!4378090 (= lt!1589066 Unit!75218)))

(declare-fun b!4378091 () Bool)

(declare-fun res!1802883 () Bool)

(assert (=> b!4378091 (=> (not res!1802883) (not e!2725196))))

(assert (=> b!4378091 (= res!1802883 (forall!9273 (toList!3142 lt!1588594) lambda!145176))))

(declare-fun bm!304478 () Bool)

(assert (=> bm!304478 (= call!304481 (forall!9273 (ite c!744505 (toList!3142 lt!1588594) (toList!3142 lt!1589056)) (ite c!744505 lambda!145173 lambda!145175)))))

(assert (= (and d!1303283 c!744505) b!4378089))

(assert (= (and d!1303283 (not c!744505)) b!4378090))

(assert (= (and b!4378090 res!1802884) b!4378087))

(assert (= (or b!4378089 b!4378090) bm!304477))

(assert (= (or b!4378089 b!4378090) bm!304476))

(assert (= (or b!4378089 b!4378090) bm!304478))

(assert (= (and d!1303283 res!1802885) b!4378091))

(assert (= (and b!4378091 res!1802883) b!4378088))

(declare-fun m!5013691 () Bool)

(assert (=> b!4378088 m!5013691))

(declare-fun m!5013693 () Bool)

(assert (=> b!4378087 m!5013693))

(declare-fun m!5013695 () Bool)

(assert (=> b!4378091 m!5013695))

(declare-fun m!5013697 () Bool)

(assert (=> bm!304478 m!5013697))

(assert (=> b!4378090 m!5013693))

(assert (=> b!4378090 m!5013693))

(declare-fun m!5013699 () Bool)

(assert (=> b!4378090 m!5013699))

(declare-fun m!5013701 () Bool)

(assert (=> b!4378090 m!5013701))

(declare-fun m!5013703 () Bool)

(assert (=> b!4378090 m!5013703))

(declare-fun m!5013705 () Bool)

(assert (=> b!4378090 m!5013705))

(declare-fun m!5013707 () Bool)

(assert (=> b!4378090 m!5013707))

(assert (=> b!4378090 m!5013707))

(assert (=> b!4378090 m!5013701))

(declare-fun m!5013709 () Bool)

(assert (=> b!4378090 m!5013709))

(declare-fun m!5013711 () Bool)

(assert (=> b!4378090 m!5013711))

(declare-fun m!5013713 () Bool)

(assert (=> b!4378090 m!5013713))

(declare-fun m!5013715 () Bool)

(assert (=> b!4378090 m!5013715))

(assert (=> bm!304477 m!5013435))

(declare-fun m!5013717 () Bool)

(assert (=> d!1303283 m!5013717))

(declare-fun m!5013719 () Bool)

(assert (=> d!1303283 m!5013719))

(declare-fun m!5013721 () Bool)

(assert (=> bm!304476 m!5013721))

(assert (=> b!4377789 d!1303283))

(declare-fun d!1303285 () Bool)

(declare-fun e!2725204 () Bool)

(assert (=> d!1303285 e!2725204))

(declare-fun res!1802888 () Bool)

(assert (=> d!1303285 (=> res!1802888 e!2725204)))

(declare-fun lt!1589080 () Bool)

(assert (=> d!1303285 (= res!1802888 (not lt!1589080))))

(declare-fun lt!1589081 () Bool)

(assert (=> d!1303285 (= lt!1589080 lt!1589081)))

(declare-fun lt!1589078 () Unit!75116)

(declare-fun e!2725203 () Unit!75116)

(assert (=> d!1303285 (= lt!1589078 e!2725203)))

(declare-fun c!744508 () Bool)

(assert (=> d!1303285 (= c!744508 lt!1589081)))

(declare-fun containsKey!851 (List!49281 (_ BitVec 64)) Bool)

(assert (=> d!1303285 (= lt!1589081 (containsKey!851 (toList!3141 lm!1707) hash!377))))

(assert (=> d!1303285 (= (contains!11489 lm!1707 hash!377) lt!1589080)))

(declare-fun b!4378098 () Bool)

(declare-fun lt!1589079 () Unit!75116)

(assert (=> b!4378098 (= e!2725203 lt!1589079)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!457 (List!49281 (_ BitVec 64)) Unit!75116)

(assert (=> b!4378098 (= lt!1589079 (lemmaContainsKeyImpliesGetValueByKeyDefined!457 (toList!3141 lm!1707) hash!377))))

(declare-fun isDefined!7854 (Option!10560) Bool)

(assert (=> b!4378098 (isDefined!7854 (getValueByKey!546 (toList!3141 lm!1707) hash!377))))

(declare-fun b!4378099 () Bool)

(declare-fun Unit!75219 () Unit!75116)

(assert (=> b!4378099 (= e!2725203 Unit!75219)))

(declare-fun b!4378100 () Bool)

(assert (=> b!4378100 (= e!2725204 (isDefined!7854 (getValueByKey!546 (toList!3141 lm!1707) hash!377)))))

(assert (= (and d!1303285 c!744508) b!4378098))

(assert (= (and d!1303285 (not c!744508)) b!4378099))

(assert (= (and d!1303285 (not res!1802888)) b!4378100))

(declare-fun m!5013723 () Bool)

(assert (=> d!1303285 m!5013723))

(declare-fun m!5013725 () Bool)

(assert (=> b!4378098 m!5013725))

(declare-fun m!5013727 () Bool)

(assert (=> b!4378098 m!5013727))

(assert (=> b!4378098 m!5013727))

(declare-fun m!5013729 () Bool)

(assert (=> b!4378098 m!5013729))

(assert (=> b!4378100 m!5013727))

(assert (=> b!4378100 m!5013727))

(assert (=> b!4378100 m!5013729))

(assert (=> b!4377791 d!1303285))

(declare-fun d!1303287 () Bool)

(assert (=> d!1303287 (= (apply!11431 lm!1707 hash!377) (get!15985 (getValueByKey!546 (toList!3141 lm!1707) hash!377)))))

(declare-fun bs!660586 () Bool)

(assert (= bs!660586 d!1303287))

(assert (=> bs!660586 m!5013727))

(assert (=> bs!660586 m!5013727))

(declare-fun m!5013731 () Bool)

(assert (=> bs!660586 m!5013731))

(assert (=> b!4377782 d!1303287))

(declare-fun d!1303289 () Bool)

(assert (=> d!1303289 (contains!11487 (toList!3141 lm!1707) (tuple2!48689 hash!377 lt!1588595))))

(declare-fun lt!1589084 () Unit!75116)

(declare-fun choose!27300 (List!49281 (_ BitVec 64) List!49280) Unit!75116)

(assert (=> d!1303289 (= lt!1589084 (choose!27300 (toList!3141 lm!1707) hash!377 lt!1588595))))

(declare-fun e!2725207 () Bool)

(assert (=> d!1303289 e!2725207))

(declare-fun res!1802891 () Bool)

(assert (=> d!1303289 (=> (not res!1802891) (not e!2725207))))

(assert (=> d!1303289 (= res!1802891 (isStrictlySorted!150 (toList!3141 lm!1707)))))

(assert (=> d!1303289 (= (lemmaGetValueByKeyImpliesContainsTuple!424 (toList!3141 lm!1707) hash!377 lt!1588595) lt!1589084)))

(declare-fun b!4378103 () Bool)

(assert (=> b!4378103 (= e!2725207 (= (getValueByKey!546 (toList!3141 lm!1707) hash!377) (Some!10559 lt!1588595)))))

(assert (= (and d!1303289 res!1802891) b!4378103))

(declare-fun m!5013733 () Bool)

(assert (=> d!1303289 m!5013733))

(declare-fun m!5013735 () Bool)

(assert (=> d!1303289 m!5013735))

(assert (=> d!1303289 m!5013069))

(assert (=> b!4378103 m!5013727))

(assert (=> b!4377782 d!1303289))

(declare-fun d!1303291 () Bool)

(assert (=> d!1303291 (dynLambda!20709 lambda!145061 lt!1588592)))

(declare-fun lt!1589087 () Unit!75116)

(declare-fun choose!27301 (List!49281 Int tuple2!48688) Unit!75116)

(assert (=> d!1303291 (= lt!1589087 (choose!27301 (toList!3141 lm!1707) lambda!145061 lt!1588592))))

(declare-fun e!2725210 () Bool)

(assert (=> d!1303291 e!2725210))

(declare-fun res!1802894 () Bool)

(assert (=> d!1303291 (=> (not res!1802894) (not e!2725210))))

(assert (=> d!1303291 (= res!1802894 (forall!9271 (toList!3141 lm!1707) lambda!145061))))

(assert (=> d!1303291 (= (forallContained!1909 (toList!3141 lm!1707) lambda!145061 lt!1588592) lt!1589087)))

(declare-fun b!4378106 () Bool)

(assert (=> b!4378106 (= e!2725210 (contains!11487 (toList!3141 lm!1707) lt!1588592))))

(assert (= (and d!1303291 res!1802894) b!4378106))

(declare-fun b_lambda!134933 () Bool)

(assert (=> (not b_lambda!134933) (not d!1303291)))

(declare-fun m!5013737 () Bool)

(assert (=> d!1303291 m!5013737))

(declare-fun m!5013739 () Bool)

(assert (=> d!1303291 m!5013739))

(assert (=> d!1303291 m!5012991))

(assert (=> b!4378106 m!5013009))

(assert (=> b!4377782 d!1303291))

(declare-fun d!1303293 () Bool)

(declare-fun lt!1589090 () Bool)

(declare-fun content!7814 (List!49281) (InoxSet tuple2!48688))

(assert (=> d!1303293 (= lt!1589090 (select (content!7814 (toList!3141 lm!1707)) lt!1588592))))

(declare-fun e!2725215 () Bool)

(assert (=> d!1303293 (= lt!1589090 e!2725215)))

(declare-fun res!1802900 () Bool)

(assert (=> d!1303293 (=> (not res!1802900) (not e!2725215))))

(assert (=> d!1303293 (= res!1802900 ((_ is Cons!49157) (toList!3141 lm!1707)))))

(assert (=> d!1303293 (= (contains!11487 (toList!3141 lm!1707) lt!1588592) lt!1589090)))

(declare-fun b!4378111 () Bool)

(declare-fun e!2725216 () Bool)

(assert (=> b!4378111 (= e!2725215 e!2725216)))

(declare-fun res!1802899 () Bool)

(assert (=> b!4378111 (=> res!1802899 e!2725216)))

(assert (=> b!4378111 (= res!1802899 (= (h!54754 (toList!3141 lm!1707)) lt!1588592))))

(declare-fun b!4378112 () Bool)

(assert (=> b!4378112 (= e!2725216 (contains!11487 (t!356207 (toList!3141 lm!1707)) lt!1588592))))

(assert (= (and d!1303293 res!1802900) b!4378111))

(assert (= (and b!4378111 (not res!1802899)) b!4378112))

(declare-fun m!5013741 () Bool)

(assert (=> d!1303293 m!5013741))

(declare-fun m!5013743 () Bool)

(assert (=> d!1303293 m!5013743))

(declare-fun m!5013745 () Bool)

(assert (=> b!4378112 m!5013745))

(assert (=> b!4377782 d!1303293))

(declare-fun b!4378121 () Bool)

(declare-fun e!2725221 () List!49280)

(assert (=> b!4378121 (= e!2725221 (t!356206 lt!1588595))))

(declare-fun d!1303295 () Bool)

(declare-fun lt!1589093 () List!49280)

(assert (=> d!1303295 (not (containsKey!849 lt!1589093 key!3918))))

(assert (=> d!1303295 (= lt!1589093 e!2725221)))

(declare-fun c!744514 () Bool)

(assert (=> d!1303295 (= c!744514 (and ((_ is Cons!49156) lt!1588595) (= (_1!27637 (h!54753 lt!1588595)) key!3918)))))

(assert (=> d!1303295 (noDuplicateKeys!579 lt!1588595)))

(assert (=> d!1303295 (= (removePairForKey!547 lt!1588595 key!3918) lt!1589093)))

(declare-fun b!4378123 () Bool)

(declare-fun e!2725222 () List!49280)

(assert (=> b!4378123 (= e!2725222 (Cons!49156 (h!54753 lt!1588595) (removePairForKey!547 (t!356206 lt!1588595) key!3918)))))

(declare-fun b!4378124 () Bool)

(assert (=> b!4378124 (= e!2725222 Nil!49156)))

(declare-fun b!4378122 () Bool)

(assert (=> b!4378122 (= e!2725221 e!2725222)))

(declare-fun c!744513 () Bool)

(assert (=> b!4378122 (= c!744513 ((_ is Cons!49156) lt!1588595))))

(assert (= (and d!1303295 c!744514) b!4378121))

(assert (= (and d!1303295 (not c!744514)) b!4378122))

(assert (= (and b!4378122 c!744513) b!4378123))

(assert (= (and b!4378122 (not c!744513)) b!4378124))

(declare-fun m!5013747 () Bool)

(assert (=> d!1303295 m!5013747))

(declare-fun m!5013749 () Bool)

(assert (=> d!1303295 m!5013749))

(declare-fun m!5013751 () Bool)

(assert (=> b!4378123 m!5013751))

(assert (=> b!4377782 d!1303295))

(declare-fun d!1303297 () Bool)

(assert (=> d!1303297 (= (eq!317 lt!1588591 lt!1588609) (= (content!7813 (toList!3142 lt!1588591)) (content!7813 (toList!3142 lt!1588609))))))

(declare-fun bs!660587 () Bool)

(assert (= bs!660587 d!1303297))

(declare-fun m!5013753 () Bool)

(assert (=> bs!660587 m!5013753))

(assert (=> bs!660587 m!5013623))

(assert (=> b!4377783 d!1303297))

(declare-fun bs!660588 () Bool)

(declare-fun d!1303299 () Bool)

(assert (= bs!660588 (and d!1303299 d!1303179)))

(declare-fun lambda!145179 () Int)

(assert (=> bs!660588 (not (= lambda!145179 lambda!145155))))

(declare-fun bs!660589 () Bool)

(assert (= bs!660589 (and d!1303299 b!4378047)))

(assert (=> bs!660589 (not (= lambda!145179 lambda!145160))))

(declare-fun bs!660590 () Bool)

(assert (= bs!660590 (and d!1303299 d!1303255)))

(assert (=> bs!660590 (not (= lambda!145179 lambda!145162))))

(declare-fun bs!660591 () Bool)

(assert (= bs!660591 (and d!1303299 d!1303265)))

(assert (=> bs!660591 (not (= lambda!145179 lambda!145167))))

(declare-fun bs!660592 () Bool)

(assert (= bs!660592 (and d!1303299 b!4378063)))

(assert (=> bs!660592 (not (= lambda!145179 lambda!145165))))

(declare-fun bs!660593 () Bool)

(assert (= bs!660593 (and d!1303299 b!4377997)))

(assert (=> bs!660593 (not (= lambda!145179 lambda!145154))))

(assert (=> bs!660592 (not (= lambda!145179 lambda!145166))))

(declare-fun bs!660594 () Bool)

(assert (= bs!660594 (and d!1303299 b!4378062)))

(assert (=> bs!660594 (not (= lambda!145179 lambda!145164))))

(declare-fun bs!660595 () Bool)

(assert (= bs!660595 (and d!1303299 b!4377996)))

(assert (=> bs!660595 (not (= lambda!145179 lambda!145152))))

(declare-fun bs!660596 () Bool)

(assert (= bs!660596 (and d!1303299 b!4378090)))

(assert (=> bs!660596 (not (= lambda!145179 lambda!145174))))

(declare-fun bs!660597 () Bool)

(assert (= bs!660597 (and d!1303299 b!4378046)))

(assert (=> bs!660597 (not (= lambda!145179 lambda!145159))))

(assert (=> bs!660593 (not (= lambda!145179 lambda!145153))))

(declare-fun bs!660598 () Bool)

(assert (= bs!660598 (and d!1303299 b!4378089)))

(assert (=> bs!660598 (not (= lambda!145179 lambda!145173))))

(assert (=> bs!660596 (not (= lambda!145179 lambda!145175))))

(assert (=> bs!660589 (not (= lambda!145179 lambda!145161))))

(declare-fun bs!660599 () Bool)

(assert (= bs!660599 (and d!1303299 d!1303283)))

(assert (=> bs!660599 (not (= lambda!145179 lambda!145176))))

(assert (=> d!1303299 true))

(assert (=> d!1303299 true))

(assert (=> d!1303299 (= (allKeysSameHash!537 newBucket!200 hash!377 hashF!1247) (forall!9273 newBucket!200 lambda!145179))))

(declare-fun bs!660600 () Bool)

(assert (= bs!660600 d!1303299))

(declare-fun m!5013755 () Bool)

(assert (=> bs!660600 m!5013755))

(assert (=> b!4377794 d!1303299))

(assert (=> b!4377793 d!1303163))

(declare-fun d!1303301 () Bool)

(declare-fun e!2725223 () Bool)

(assert (=> d!1303301 e!2725223))

(declare-fun res!1802902 () Bool)

(assert (=> d!1303301 (=> (not res!1802902) (not e!2725223))))

(declare-fun lt!1589094 () ListLongMap!1791)

(assert (=> d!1303301 (= res!1802902 (contains!11489 lt!1589094 (_1!27638 lt!1588608)))))

(declare-fun lt!1589096 () List!49281)

(assert (=> d!1303301 (= lt!1589094 (ListLongMap!1792 lt!1589096))))

(declare-fun lt!1589097 () Unit!75116)

(declare-fun lt!1589095 () Unit!75116)

(assert (=> d!1303301 (= lt!1589097 lt!1589095)))

(assert (=> d!1303301 (= (getValueByKey!546 lt!1589096 (_1!27638 lt!1588608)) (Some!10559 (_2!27638 lt!1588608)))))

(assert (=> d!1303301 (= lt!1589095 (lemmaContainsTupThenGetReturnValue!310 lt!1589096 (_1!27638 lt!1588608) (_2!27638 lt!1588608)))))

(assert (=> d!1303301 (= lt!1589096 (insertStrictlySorted!177 (toList!3141 lm!1707) (_1!27638 lt!1588608) (_2!27638 lt!1588608)))))

(assert (=> d!1303301 (= (+!789 lm!1707 lt!1588608) lt!1589094)))

(declare-fun b!4378129 () Bool)

(declare-fun res!1802901 () Bool)

(assert (=> b!4378129 (=> (not res!1802901) (not e!2725223))))

(assert (=> b!4378129 (= res!1802901 (= (getValueByKey!546 (toList!3141 lt!1589094) (_1!27638 lt!1588608)) (Some!10559 (_2!27638 lt!1588608))))))

(declare-fun b!4378130 () Bool)

(assert (=> b!4378130 (= e!2725223 (contains!11487 (toList!3141 lt!1589094) lt!1588608))))

(assert (= (and d!1303301 res!1802902) b!4378129))

(assert (= (and b!4378129 res!1802901) b!4378130))

(declare-fun m!5013757 () Bool)

(assert (=> d!1303301 m!5013757))

(declare-fun m!5013759 () Bool)

(assert (=> d!1303301 m!5013759))

(declare-fun m!5013761 () Bool)

(assert (=> d!1303301 m!5013761))

(declare-fun m!5013763 () Bool)

(assert (=> d!1303301 m!5013763))

(declare-fun m!5013765 () Bool)

(assert (=> b!4378129 m!5013765))

(declare-fun m!5013767 () Bool)

(assert (=> b!4378130 m!5013767))

(assert (=> b!4377793 d!1303301))

(declare-fun d!1303303 () Bool)

(assert (=> d!1303303 (forall!9271 (toList!3141 (+!789 lm!1707 (tuple2!48689 hash!377 newBucket!200))) lambda!145061)))

(declare-fun lt!1589100 () Unit!75116)

(declare-fun choose!27302 (ListLongMap!1791 Int (_ BitVec 64) List!49280) Unit!75116)

(assert (=> d!1303303 (= lt!1589100 (choose!27302 lm!1707 lambda!145061 hash!377 newBucket!200))))

(declare-fun e!2725226 () Bool)

(assert (=> d!1303303 e!2725226))

(declare-fun res!1802905 () Bool)

(assert (=> d!1303303 (=> (not res!1802905) (not e!2725226))))

(assert (=> d!1303303 (= res!1802905 (forall!9271 (toList!3141 lm!1707) lambda!145061))))

(assert (=> d!1303303 (= (addValidProp!225 lm!1707 lambda!145061 hash!377 newBucket!200) lt!1589100)))

(declare-fun b!4378134 () Bool)

(assert (=> b!4378134 (= e!2725226 (dynLambda!20709 lambda!145061 (tuple2!48689 hash!377 newBucket!200)))))

(assert (= (and d!1303303 res!1802905) b!4378134))

(declare-fun b_lambda!134935 () Bool)

(assert (=> (not b_lambda!134935) (not b!4378134)))

(declare-fun m!5013769 () Bool)

(assert (=> d!1303303 m!5013769))

(declare-fun m!5013771 () Bool)

(assert (=> d!1303303 m!5013771))

(declare-fun m!5013773 () Bool)

(assert (=> d!1303303 m!5013773))

(assert (=> d!1303303 m!5012991))

(declare-fun m!5013775 () Bool)

(assert (=> b!4378134 m!5013775))

(assert (=> b!4377793 d!1303303))

(assert (=> b!4377793 d!1303169))

(declare-fun e!2725229 () Bool)

(declare-fun tp!1331192 () Bool)

(declare-fun b!4378139 () Bool)

(assert (=> b!4378139 (= e!2725229 (and tp_is_empty!25553 tp_is_empty!25555 tp!1331192))))

(assert (=> b!4377781 (= tp!1331179 e!2725229)))

(assert (= (and b!4377781 ((_ is Cons!49156) (t!356206 newBucket!200))) b!4378139))

(declare-fun b!4378144 () Bool)

(declare-fun e!2725232 () Bool)

(declare-fun tp!1331197 () Bool)

(declare-fun tp!1331198 () Bool)

(assert (=> b!4378144 (= e!2725232 (and tp!1331197 tp!1331198))))

(assert (=> b!4377792 (= tp!1331180 e!2725232)))

(assert (= (and b!4377792 ((_ is Cons!49157) (toList!3141 lm!1707))) b!4378144))

(declare-fun b_lambda!134937 () Bool)

(assert (= b_lambda!134933 (or start!425120 b_lambda!134937)))

(declare-fun bs!660601 () Bool)

(declare-fun d!1303305 () Bool)

(assert (= bs!660601 (and d!1303305 start!425120)))

(assert (=> bs!660601 (= (dynLambda!20709 lambda!145061 lt!1588592) (noDuplicateKeys!579 (_2!27638 lt!1588592)))))

(declare-fun m!5013777 () Bool)

(assert (=> bs!660601 m!5013777))

(assert (=> d!1303291 d!1303305))

(declare-fun b_lambda!134939 () Bool)

(assert (= b_lambda!134935 (or start!425120 b_lambda!134939)))

(declare-fun bs!660602 () Bool)

(declare-fun d!1303307 () Bool)

(assert (= bs!660602 (and d!1303307 start!425120)))

(assert (=> bs!660602 (= (dynLambda!20709 lambda!145061 (tuple2!48689 hash!377 newBucket!200)) (noDuplicateKeys!579 (_2!27638 (tuple2!48689 hash!377 newBucket!200))))))

(declare-fun m!5013779 () Bool)

(assert (=> bs!660602 m!5013779))

(assert (=> b!4378134 d!1303307))

(declare-fun b_lambda!134941 () Bool)

(assert (= b_lambda!134915 (or start!425120 b_lambda!134941)))

(declare-fun bs!660603 () Bool)

(declare-fun d!1303309 () Bool)

(assert (= bs!660603 (and d!1303309 start!425120)))

(assert (=> bs!660603 (= (dynLambda!20709 lambda!145061 (h!54754 (toList!3141 lt!1588604))) (noDuplicateKeys!579 (_2!27638 (h!54754 (toList!3141 lt!1588604)))))))

(declare-fun m!5013781 () Bool)

(assert (=> bs!660603 m!5013781))

(assert (=> b!4377837 d!1303309))

(declare-fun b_lambda!134943 () Bool)

(assert (= b_lambda!134917 (or start!425120 b_lambda!134943)))

(declare-fun bs!660604 () Bool)

(declare-fun d!1303311 () Bool)

(assert (= bs!660604 (and d!1303311 start!425120)))

(assert (=> bs!660604 (= (dynLambda!20709 lambda!145061 (h!54754 (toList!3141 lm!1707))) (noDuplicateKeys!579 (_2!27638 (h!54754 (toList!3141 lm!1707)))))))

(declare-fun m!5013783 () Bool)

(assert (=> bs!660604 m!5013783))

(assert (=> b!4377839 d!1303311))

(check-sat (not bs!660601) (not d!1303239) (not b!4378074) (not b!4378054) (not d!1303173) (not d!1303255) (not b!4378045) (not b!4377998) (not b!4377864) (not b!4378088) (not b!4378055) (not b!4378030) (not bm!304471) (not b!4378112) (not bm!304468) (not d!1303263) (not d!1303229) (not d!1303269) (not b!4378083) (not b!4378085) (not bm!304472) tp_is_empty!25555 (not b!4378073) (not b!4377995) (not d!1303259) (not b!4377997) (not bm!304475) (not bm!304474) (not b!4378064) tp_is_empty!25553 (not d!1303267) (not b!4377838) (not b!4378081) (not bm!304435) (not b!4377863) (not b!4378103) (not d!1303299) (not d!1303289) (not b!4378078) (not bs!660602) (not d!1303303) (not b!4377866) (not bm!304476) (not b!4377884) (not d!1303265) (not d!1303271) (not b!4378082) (not bm!304478) (not d!1303273) (not d!1303245) (not b!4378106) (not b!4378086) (not bs!660603) (not b!4378098) (not b!4378063) (not bm!304466) (not b!4377859) (not d!1303171) (not bm!304470) (not bm!304473) (not b!4378071) (not d!1303287) (not bm!304469) (not b!4378067) (not d!1303301) (not b!4377862) (not d!1303157) (not d!1303281) (not b!4378047) (not b_lambda!134941) (not b!4377867) (not bs!660604) (not b!4378060) (not b!4378091) (not b_lambda!134943) (not b!4378059) (not b!4378123) (not d!1303257) (not b!4378031) (not bm!304477) (not b!4378065) (not b!4377876) (not b!4378048) (not b!4378027) (not b!4378129) (not b!4377861) (not b_lambda!134937) (not bm!304467) (not d!1303293) (not b!4378069) (not b!4378028) (not b!4377885) (not b!4378090) (not d!1303285) (not d!1303279) (not d!1303175) (not b!4377840) (not b!4378144) (not d!1303275) (not d!1303297) (not bm!304465) (not d!1303261) (not b_lambda!134939) (not b!4377994) (not d!1303291) (not d!1303295) (not b!4378130) (not d!1303179) (not d!1303283) (not b!4378100) (not b!4378076) (not d!1303277) (not b!4378087) (not b!4378077) (not d!1303167) (not b!4378061) (not b!4378044) (not b!4378080) (not b!4378053) (not b!4378139) (not b!4378072))
(check-sat)
(get-model)

(declare-fun d!1303313 () Bool)

(declare-fun lt!1589103 () Bool)

(assert (=> d!1303313 (= lt!1589103 (select (content!7811 (keys!16669 lt!1588610)) key!3918))))

(declare-fun e!2725237 () Bool)

(assert (=> d!1303313 (= lt!1589103 e!2725237)))

(declare-fun res!1802910 () Bool)

(assert (=> d!1303313 (=> (not res!1802910) (not e!2725237))))

(assert (=> d!1303313 (= res!1802910 ((_ is Cons!49159) (keys!16669 lt!1588610)))))

(assert (=> d!1303313 (= (contains!11492 (keys!16669 lt!1588610) key!3918) lt!1589103)))

(declare-fun b!4378149 () Bool)

(declare-fun e!2725238 () Bool)

(assert (=> b!4378149 (= e!2725237 e!2725238)))

(declare-fun res!1802911 () Bool)

(assert (=> b!4378149 (=> res!1802911 e!2725238)))

(assert (=> b!4378149 (= res!1802911 (= (h!54758 (keys!16669 lt!1588610)) key!3918))))

(declare-fun b!4378150 () Bool)

(assert (=> b!4378150 (= e!2725238 (contains!11492 (t!356209 (keys!16669 lt!1588610)) key!3918))))

(assert (= (and d!1303313 res!1802910) b!4378149))

(assert (= (and b!4378149 (not res!1802911)) b!4378150))

(assert (=> d!1303313 m!5013071))

(assert (=> d!1303313 m!5013579))

(declare-fun m!5013785 () Bool)

(assert (=> d!1303313 m!5013785))

(declare-fun m!5013787 () Bool)

(assert (=> b!4378150 m!5013787))

(assert (=> b!4377863 d!1303313))

(declare-fun b!4378158 () Bool)

(assert (=> b!4378158 true))

(declare-fun d!1303315 () Bool)

(declare-fun e!2725241 () Bool)

(assert (=> d!1303315 e!2725241))

(declare-fun res!1802920 () Bool)

(assert (=> d!1303315 (=> (not res!1802920) (not e!2725241))))

(declare-fun lt!1589106 () List!49283)

(declare-fun noDuplicate!619 (List!49283) Bool)

(assert (=> d!1303315 (= res!1802920 (noDuplicate!619 lt!1589106))))

(assert (=> d!1303315 (= lt!1589106 (getKeysList!171 (toList!3142 lt!1588610)))))

(assert (=> d!1303315 (= (keys!16669 lt!1588610) lt!1589106)))

(declare-fun b!4378157 () Bool)

(declare-fun res!1802918 () Bool)

(assert (=> b!4378157 (=> (not res!1802918) (not e!2725241))))

(declare-fun length!94 (List!49283) Int)

(declare-fun length!95 (List!49280) Int)

(assert (=> b!4378157 (= res!1802918 (= (length!94 lt!1589106) (length!95 (toList!3142 lt!1588610))))))

(declare-fun res!1802919 () Bool)

(assert (=> b!4378158 (=> (not res!1802919) (not e!2725241))))

(declare-fun lambda!145184 () Int)

(declare-fun forall!9274 (List!49283 Int) Bool)

(assert (=> b!4378158 (= res!1802919 (forall!9274 lt!1589106 lambda!145184))))

(declare-fun b!4378159 () Bool)

(declare-fun lambda!145185 () Int)

(declare-fun map!10705 (List!49280 Int) List!49283)

(assert (=> b!4378159 (= e!2725241 (= (content!7811 lt!1589106) (content!7811 (map!10705 (toList!3142 lt!1588610) lambda!145185))))))

(assert (= (and d!1303315 res!1802920) b!4378157))

(assert (= (and b!4378157 res!1802918) b!4378158))

(assert (= (and b!4378158 res!1802919) b!4378159))

(declare-fun m!5013789 () Bool)

(assert (=> d!1303315 m!5013789))

(assert (=> d!1303315 m!5013075))

(declare-fun m!5013791 () Bool)

(assert (=> b!4378157 m!5013791))

(declare-fun m!5013793 () Bool)

(assert (=> b!4378157 m!5013793))

(declare-fun m!5013795 () Bool)

(assert (=> b!4378158 m!5013795))

(declare-fun m!5013797 () Bool)

(assert (=> b!4378159 m!5013797))

(declare-fun m!5013799 () Bool)

(assert (=> b!4378159 m!5013799))

(assert (=> b!4378159 m!5013799))

(declare-fun m!5013801 () Bool)

(assert (=> b!4378159 m!5013801))

(assert (=> b!4377863 d!1303315))

(declare-fun d!1303317 () Bool)

(declare-fun res!1802925 () Bool)

(declare-fun e!2725246 () Bool)

(assert (=> d!1303317 (=> res!1802925 e!2725246)))

(assert (=> d!1303317 (= res!1802925 ((_ is Nil!49156) (toList!3142 lt!1588594)))))

(assert (=> d!1303317 (= (forall!9273 (toList!3142 lt!1588594) lambda!145176) e!2725246)))

(declare-fun b!4378166 () Bool)

(declare-fun e!2725247 () Bool)

(assert (=> b!4378166 (= e!2725246 e!2725247)))

(declare-fun res!1802926 () Bool)

(assert (=> b!4378166 (=> (not res!1802926) (not e!2725247))))

(declare-fun dynLambda!20710 (Int tuple2!48686) Bool)

(assert (=> b!4378166 (= res!1802926 (dynLambda!20710 lambda!145176 (h!54753 (toList!3142 lt!1588594))))))

(declare-fun b!4378167 () Bool)

(assert (=> b!4378167 (= e!2725247 (forall!9273 (t!356206 (toList!3142 lt!1588594)) lambda!145176))))

(assert (= (and d!1303317 (not res!1802925)) b!4378166))

(assert (= (and b!4378166 res!1802926) b!4378167))

(declare-fun b_lambda!134945 () Bool)

(assert (=> (not b_lambda!134945) (not b!4378166)))

(declare-fun m!5013803 () Bool)

(assert (=> b!4378166 m!5013803))

(declare-fun m!5013805 () Bool)

(assert (=> b!4378167 m!5013805))

(assert (=> b!4378091 d!1303317))

(declare-fun d!1303319 () Bool)

(declare-fun noDuplicatedKeys!135 (List!49280) Bool)

(assert (=> d!1303319 (= (invariantList!723 (toList!3142 lt!1588981)) (noDuplicatedKeys!135 (toList!3142 lt!1588981)))))

(declare-fun bs!660605 () Bool)

(assert (= bs!660605 d!1303319))

(declare-fun m!5013807 () Bool)

(assert (=> bs!660605 m!5013807))

(assert (=> b!4378045 d!1303319))

(declare-fun d!1303323 () Bool)

(declare-fun c!744517 () Bool)

(assert (=> d!1303323 (= c!744517 ((_ is Nil!49156) (toList!3142 lt!1588601)))))

(declare-fun e!2725250 () (InoxSet tuple2!48686))

(assert (=> d!1303323 (= (content!7813 (toList!3142 lt!1588601)) e!2725250)))

(declare-fun b!4378172 () Bool)

(assert (=> b!4378172 (= e!2725250 ((as const (Array tuple2!48686 Bool)) false))))

(declare-fun b!4378173 () Bool)

(assert (=> b!4378173 (= e!2725250 ((_ map or) (store ((as const (Array tuple2!48686 Bool)) false) (h!54753 (toList!3142 lt!1588601)) true) (content!7813 (t!356206 (toList!3142 lt!1588601)))))))

(assert (= (and d!1303323 c!744517) b!4378172))

(assert (= (and d!1303323 (not c!744517)) b!4378173))

(declare-fun m!5013809 () Bool)

(assert (=> b!4378173 m!5013809))

(declare-fun m!5013811 () Bool)

(assert (=> b!4378173 m!5013811))

(assert (=> d!1303269 d!1303323))

(declare-fun d!1303325 () Bool)

(declare-fun c!744518 () Bool)

(assert (=> d!1303325 (= c!744518 ((_ is Nil!49156) (toList!3142 lt!1588609)))))

(declare-fun e!2725251 () (InoxSet tuple2!48686))

(assert (=> d!1303325 (= (content!7813 (toList!3142 lt!1588609)) e!2725251)))

(declare-fun b!4378174 () Bool)

(assert (=> b!4378174 (= e!2725251 ((as const (Array tuple2!48686 Bool)) false))))

(declare-fun b!4378175 () Bool)

(assert (=> b!4378175 (= e!2725251 ((_ map or) (store ((as const (Array tuple2!48686 Bool)) false) (h!54753 (toList!3142 lt!1588609)) true) (content!7813 (t!356206 (toList!3142 lt!1588609)))))))

(assert (= (and d!1303325 c!744518) b!4378174))

(assert (= (and d!1303325 (not c!744518)) b!4378175))

(declare-fun m!5013813 () Bool)

(assert (=> b!4378175 m!5013813))

(declare-fun m!5013815 () Bool)

(assert (=> b!4378175 m!5013815))

(assert (=> d!1303269 d!1303325))

(declare-fun d!1303327 () Bool)

(assert (=> d!1303327 (= (invariantList!723 (toList!3142 lt!1589029)) (noDuplicatedKeys!135 (toList!3142 lt!1589029)))))

(declare-fun bs!660606 () Bool)

(assert (= bs!660606 d!1303327))

(declare-fun m!5013817 () Bool)

(assert (=> bs!660606 m!5013817))

(assert (=> d!1303273 d!1303327))

(declare-fun d!1303329 () Bool)

(declare-fun res!1802931 () Bool)

(declare-fun e!2725256 () Bool)

(assert (=> d!1303329 (=> res!1802931 e!2725256)))

(assert (=> d!1303329 (= res!1802931 ((_ is Nil!49157) (toList!3141 lt!1588604)))))

(assert (=> d!1303329 (= (forall!9271 (toList!3141 lt!1588604) lambda!145169) e!2725256)))

(declare-fun b!4378180 () Bool)

(declare-fun e!2725257 () Bool)

(assert (=> b!4378180 (= e!2725256 e!2725257)))

(declare-fun res!1802932 () Bool)

(assert (=> b!4378180 (=> (not res!1802932) (not e!2725257))))

(assert (=> b!4378180 (= res!1802932 (dynLambda!20709 lambda!145169 (h!54754 (toList!3141 lt!1588604))))))

(declare-fun b!4378181 () Bool)

(assert (=> b!4378181 (= e!2725257 (forall!9271 (t!356207 (toList!3141 lt!1588604)) lambda!145169))))

(assert (= (and d!1303329 (not res!1802931)) b!4378180))

(assert (= (and b!4378180 res!1802932) b!4378181))

(declare-fun b_lambda!134947 () Bool)

(assert (=> (not b_lambda!134947) (not b!4378180)))

(declare-fun m!5013819 () Bool)

(assert (=> b!4378180 m!5013819))

(declare-fun m!5013821 () Bool)

(assert (=> b!4378181 m!5013821))

(assert (=> d!1303273 d!1303329))

(declare-fun d!1303331 () Bool)

(declare-fun e!2725259 () Bool)

(assert (=> d!1303331 e!2725259))

(declare-fun res!1802933 () Bool)

(assert (=> d!1303331 (=> res!1802933 e!2725259)))

(declare-fun lt!1589111 () Bool)

(assert (=> d!1303331 (= res!1802933 (not lt!1589111))))

(declare-fun lt!1589112 () Bool)

(assert (=> d!1303331 (= lt!1589111 lt!1589112)))

(declare-fun lt!1589109 () Unit!75116)

(declare-fun e!2725258 () Unit!75116)

(assert (=> d!1303331 (= lt!1589109 e!2725258)))

(declare-fun c!744519 () Bool)

(assert (=> d!1303331 (= c!744519 lt!1589112)))

(assert (=> d!1303331 (= lt!1589112 (containsKey!851 (toList!3141 lt!1589094) (_1!27638 lt!1588608)))))

(assert (=> d!1303331 (= (contains!11489 lt!1589094 (_1!27638 lt!1588608)) lt!1589111)))

(declare-fun b!4378182 () Bool)

(declare-fun lt!1589110 () Unit!75116)

(assert (=> b!4378182 (= e!2725258 lt!1589110)))

(assert (=> b!4378182 (= lt!1589110 (lemmaContainsKeyImpliesGetValueByKeyDefined!457 (toList!3141 lt!1589094) (_1!27638 lt!1588608)))))

(assert (=> b!4378182 (isDefined!7854 (getValueByKey!546 (toList!3141 lt!1589094) (_1!27638 lt!1588608)))))

(declare-fun b!4378183 () Bool)

(declare-fun Unit!75220 () Unit!75116)

(assert (=> b!4378183 (= e!2725258 Unit!75220)))

(declare-fun b!4378184 () Bool)

(assert (=> b!4378184 (= e!2725259 (isDefined!7854 (getValueByKey!546 (toList!3141 lt!1589094) (_1!27638 lt!1588608))))))

(assert (= (and d!1303331 c!744519) b!4378182))

(assert (= (and d!1303331 (not c!744519)) b!4378183))

(assert (= (and d!1303331 (not res!1802933)) b!4378184))

(declare-fun m!5013823 () Bool)

(assert (=> d!1303331 m!5013823))

(declare-fun m!5013825 () Bool)

(assert (=> b!4378182 m!5013825))

(assert (=> b!4378182 m!5013765))

(assert (=> b!4378182 m!5013765))

(declare-fun m!5013827 () Bool)

(assert (=> b!4378182 m!5013827))

(assert (=> b!4378184 m!5013765))

(assert (=> b!4378184 m!5013765))

(assert (=> b!4378184 m!5013827))

(assert (=> d!1303301 d!1303331))

(declare-fun b!4378197 () Bool)

(declare-fun e!2725267 () Option!10560)

(assert (=> b!4378197 (= e!2725267 (getValueByKey!546 (t!356207 lt!1589096) (_1!27638 lt!1588608)))))

(declare-fun d!1303333 () Bool)

(declare-fun c!744524 () Bool)

(assert (=> d!1303333 (= c!744524 (and ((_ is Cons!49157) lt!1589096) (= (_1!27638 (h!54754 lt!1589096)) (_1!27638 lt!1588608))))))

(declare-fun e!2725266 () Option!10560)

(assert (=> d!1303333 (= (getValueByKey!546 lt!1589096 (_1!27638 lt!1588608)) e!2725266)))

(declare-fun b!4378195 () Bool)

(assert (=> b!4378195 (= e!2725266 (Some!10559 (_2!27638 (h!54754 lt!1589096))))))

(declare-fun b!4378198 () Bool)

(assert (=> b!4378198 (= e!2725267 None!10559)))

(declare-fun b!4378196 () Bool)

(assert (=> b!4378196 (= e!2725266 e!2725267)))

(declare-fun c!744525 () Bool)

(assert (=> b!4378196 (= c!744525 (and ((_ is Cons!49157) lt!1589096) (not (= (_1!27638 (h!54754 lt!1589096)) (_1!27638 lt!1588608)))))))

(assert (= (and d!1303333 c!744524) b!4378195))

(assert (= (and d!1303333 (not c!744524)) b!4378196))

(assert (= (and b!4378196 c!744525) b!4378197))

(assert (= (and b!4378196 (not c!744525)) b!4378198))

(declare-fun m!5013833 () Bool)

(assert (=> b!4378197 m!5013833))

(assert (=> d!1303301 d!1303333))

(declare-fun d!1303337 () Bool)

(assert (=> d!1303337 (= (getValueByKey!546 lt!1589096 (_1!27638 lt!1588608)) (Some!10559 (_2!27638 lt!1588608)))))

(declare-fun lt!1589118 () Unit!75116)

(declare-fun choose!27303 (List!49281 (_ BitVec 64) List!49280) Unit!75116)

(assert (=> d!1303337 (= lt!1589118 (choose!27303 lt!1589096 (_1!27638 lt!1588608) (_2!27638 lt!1588608)))))

(declare-fun e!2725272 () Bool)

(assert (=> d!1303337 e!2725272))

(declare-fun res!1802946 () Bool)

(assert (=> d!1303337 (=> (not res!1802946) (not e!2725272))))

(assert (=> d!1303337 (= res!1802946 (isStrictlySorted!150 lt!1589096))))

(assert (=> d!1303337 (= (lemmaContainsTupThenGetReturnValue!310 lt!1589096 (_1!27638 lt!1588608) (_2!27638 lt!1588608)) lt!1589118)))

(declare-fun b!4378209 () Bool)

(declare-fun res!1802947 () Bool)

(assert (=> b!4378209 (=> (not res!1802947) (not e!2725272))))

(assert (=> b!4378209 (= res!1802947 (containsKey!851 lt!1589096 (_1!27638 lt!1588608)))))

(declare-fun b!4378210 () Bool)

(assert (=> b!4378210 (= e!2725272 (contains!11487 lt!1589096 (tuple2!48689 (_1!27638 lt!1588608) (_2!27638 lt!1588608))))))

(assert (= (and d!1303337 res!1802946) b!4378209))

(assert (= (and b!4378209 res!1802947) b!4378210))

(assert (=> d!1303337 m!5013759))

(declare-fun m!5013835 () Bool)

(assert (=> d!1303337 m!5013835))

(declare-fun m!5013837 () Bool)

(assert (=> d!1303337 m!5013837))

(declare-fun m!5013839 () Bool)

(assert (=> b!4378209 m!5013839))

(declare-fun m!5013841 () Bool)

(assert (=> b!4378210 m!5013841))

(assert (=> d!1303301 d!1303337))

(declare-fun e!2725300 () List!49281)

(declare-fun c!744545 () Bool)

(declare-fun b!4378265 () Bool)

(declare-fun c!744546 () Bool)

(assert (=> b!4378265 (= e!2725300 (ite c!744545 (t!356207 (toList!3141 lm!1707)) (ite c!744546 (Cons!49157 (h!54754 (toList!3141 lm!1707)) (t!356207 (toList!3141 lm!1707))) Nil!49157)))))

(declare-fun b!4378266 () Bool)

(declare-fun e!2725302 () List!49281)

(declare-fun call!304490 () List!49281)

(assert (=> b!4378266 (= e!2725302 call!304490)))

(declare-fun b!4378267 () Bool)

(declare-fun e!2725299 () List!49281)

(declare-fun call!304492 () List!49281)

(assert (=> b!4378267 (= e!2725299 call!304492)))

(declare-fun b!4378268 () Bool)

(declare-fun e!2725303 () List!49281)

(assert (=> b!4378268 (= e!2725303 e!2725302)))

(assert (=> b!4378268 (= c!744545 (and ((_ is Cons!49157) (toList!3141 lm!1707)) (= (_1!27638 (h!54754 (toList!3141 lm!1707))) (_1!27638 lt!1588608))))))

(declare-fun b!4378269 () Bool)

(assert (=> b!4378269 (= e!2725300 (insertStrictlySorted!177 (t!356207 (toList!3141 lm!1707)) (_1!27638 lt!1588608) (_2!27638 lt!1588608)))))

(declare-fun b!4378270 () Bool)

(assert (=> b!4378270 (= c!744546 (and ((_ is Cons!49157) (toList!3141 lm!1707)) (bvsgt (_1!27638 (h!54754 (toList!3141 lm!1707))) (_1!27638 lt!1588608))))))

(assert (=> b!4378270 (= e!2725302 e!2725299)))

(declare-fun b!4378271 () Bool)

(declare-fun e!2725301 () Bool)

(declare-fun lt!1589129 () List!49281)

(assert (=> b!4378271 (= e!2725301 (contains!11487 lt!1589129 (tuple2!48689 (_1!27638 lt!1588608) (_2!27638 lt!1588608))))))

(declare-fun d!1303339 () Bool)

(assert (=> d!1303339 e!2725301))

(declare-fun res!1802963 () Bool)

(assert (=> d!1303339 (=> (not res!1802963) (not e!2725301))))

(assert (=> d!1303339 (= res!1802963 (isStrictlySorted!150 lt!1589129))))

(assert (=> d!1303339 (= lt!1589129 e!2725303)))

(declare-fun c!744547 () Bool)

(assert (=> d!1303339 (= c!744547 (and ((_ is Cons!49157) (toList!3141 lm!1707)) (bvslt (_1!27638 (h!54754 (toList!3141 lm!1707))) (_1!27638 lt!1588608))))))

(assert (=> d!1303339 (isStrictlySorted!150 (toList!3141 lm!1707))))

(assert (=> d!1303339 (= (insertStrictlySorted!177 (toList!3141 lm!1707) (_1!27638 lt!1588608) (_2!27638 lt!1588608)) lt!1589129)))

(declare-fun bm!304485 () Bool)

(assert (=> bm!304485 (= call!304492 call!304490)))

(declare-fun b!4378272 () Bool)

(assert (=> b!4378272 (= e!2725299 call!304492)))

(declare-fun bm!304486 () Bool)

(declare-fun call!304491 () List!49281)

(assert (=> bm!304486 (= call!304490 call!304491)))

(declare-fun b!4378273 () Bool)

(assert (=> b!4378273 (= e!2725303 call!304491)))

(declare-fun b!4378274 () Bool)

(declare-fun res!1802962 () Bool)

(assert (=> b!4378274 (=> (not res!1802962) (not e!2725301))))

(assert (=> b!4378274 (= res!1802962 (containsKey!851 lt!1589129 (_1!27638 lt!1588608)))))

(declare-fun bm!304487 () Bool)

(declare-fun $colon$colon!723 (List!49281 tuple2!48688) List!49281)

(assert (=> bm!304487 (= call!304491 ($colon$colon!723 e!2725300 (ite c!744547 (h!54754 (toList!3141 lm!1707)) (tuple2!48689 (_1!27638 lt!1588608) (_2!27638 lt!1588608)))))))

(declare-fun c!744548 () Bool)

(assert (=> bm!304487 (= c!744548 c!744547)))

(assert (= (and d!1303339 c!744547) b!4378273))

(assert (= (and d!1303339 (not c!744547)) b!4378268))

(assert (= (and b!4378268 c!744545) b!4378266))

(assert (= (and b!4378268 (not c!744545)) b!4378270))

(assert (= (and b!4378270 c!744546) b!4378267))

(assert (= (and b!4378270 (not c!744546)) b!4378272))

(assert (= (or b!4378267 b!4378272) bm!304485))

(assert (= (or b!4378266 bm!304485) bm!304486))

(assert (= (or b!4378273 bm!304486) bm!304487))

(assert (= (and bm!304487 c!744548) b!4378269))

(assert (= (and bm!304487 (not c!744548)) b!4378265))

(assert (= (and d!1303339 res!1802963) b!4378274))

(assert (= (and b!4378274 res!1802962) b!4378271))

(declare-fun m!5013883 () Bool)

(assert (=> d!1303339 m!5013883))

(assert (=> d!1303339 m!5013069))

(declare-fun m!5013885 () Bool)

(assert (=> b!4378271 m!5013885))

(declare-fun m!5013887 () Bool)

(assert (=> b!4378274 m!5013887))

(declare-fun m!5013889 () Bool)

(assert (=> bm!304487 m!5013889))

(declare-fun m!5013891 () Bool)

(assert (=> b!4378269 m!5013891))

(assert (=> d!1303301 d!1303339))

(declare-fun d!1303355 () Bool)

(assert (=> d!1303355 (= (get!15985 (getValueByKey!546 (toList!3141 lm!1707) hash!377)) (v!43563 (getValueByKey!546 (toList!3141 lm!1707) hash!377)))))

(assert (=> d!1303287 d!1303355))

(declare-fun b!4378277 () Bool)

(declare-fun e!2725305 () Option!10560)

(assert (=> b!4378277 (= e!2725305 (getValueByKey!546 (t!356207 (toList!3141 lm!1707)) hash!377))))

(declare-fun d!1303357 () Bool)

(declare-fun c!744549 () Bool)

(assert (=> d!1303357 (= c!744549 (and ((_ is Cons!49157) (toList!3141 lm!1707)) (= (_1!27638 (h!54754 (toList!3141 lm!1707))) hash!377)))))

(declare-fun e!2725304 () Option!10560)

(assert (=> d!1303357 (= (getValueByKey!546 (toList!3141 lm!1707) hash!377) e!2725304)))

(declare-fun b!4378275 () Bool)

(assert (=> b!4378275 (= e!2725304 (Some!10559 (_2!27638 (h!54754 (toList!3141 lm!1707)))))))

(declare-fun b!4378278 () Bool)

(assert (=> b!4378278 (= e!2725305 None!10559)))

(declare-fun b!4378276 () Bool)

(assert (=> b!4378276 (= e!2725304 e!2725305)))

(declare-fun c!744550 () Bool)

(assert (=> b!4378276 (= c!744550 (and ((_ is Cons!49157) (toList!3141 lm!1707)) (not (= (_1!27638 (h!54754 (toList!3141 lm!1707))) hash!377))))))

(assert (= (and d!1303357 c!744549) b!4378275))

(assert (= (and d!1303357 (not c!744549)) b!4378276))

(assert (= (and b!4378276 c!744550) b!4378277))

(assert (= (and b!4378276 (not c!744550)) b!4378278))

(declare-fun m!5013893 () Bool)

(assert (=> b!4378277 m!5013893))

(assert (=> d!1303287 d!1303357))

(declare-fun d!1303359 () Bool)

(declare-fun e!2725306 () Bool)

(assert (=> d!1303359 e!2725306))

(declare-fun res!1802964 () Bool)

(assert (=> d!1303359 (=> res!1802964 e!2725306)))

(declare-fun e!2725310 () Bool)

(assert (=> d!1303359 (= res!1802964 e!2725310)))

(declare-fun res!1802966 () Bool)

(assert (=> d!1303359 (=> (not res!1802966) (not e!2725310))))

(declare-fun lt!1589130 () Bool)

(assert (=> d!1303359 (= res!1802966 (not lt!1589130))))

(declare-fun lt!1589135 () Bool)

(assert (=> d!1303359 (= lt!1589130 lt!1589135)))

(declare-fun lt!1589136 () Unit!75116)

(declare-fun e!2725307 () Unit!75116)

(assert (=> d!1303359 (= lt!1589136 e!2725307)))

(declare-fun c!744552 () Bool)

(assert (=> d!1303359 (= c!744552 lt!1589135)))

(assert (=> d!1303359 (= lt!1589135 (containsKey!848 (toList!3142 lt!1589014) (_1!27637 (h!54753 newBucket!200))))))

(assert (=> d!1303359 (= (contains!11488 lt!1589014 (_1!27637 (h!54753 newBucket!200))) lt!1589130)))

(declare-fun bm!304488 () Bool)

(declare-fun call!304493 () Bool)

(declare-fun e!2725308 () List!49283)

(assert (=> bm!304488 (= call!304493 (contains!11492 e!2725308 (_1!27637 (h!54753 newBucket!200))))))

(declare-fun c!744551 () Bool)

(assert (=> bm!304488 (= c!744551 c!744552)))

(declare-fun b!4378279 () Bool)

(declare-fun e!2725311 () Bool)

(assert (=> b!4378279 (= e!2725306 e!2725311)))

(declare-fun res!1802965 () Bool)

(assert (=> b!4378279 (=> (not res!1802965) (not e!2725311))))

(assert (=> b!4378279 (= res!1802965 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1589014) (_1!27637 (h!54753 newBucket!200)))))))

(declare-fun b!4378280 () Bool)

(declare-fun e!2725309 () Unit!75116)

(declare-fun Unit!75222 () Unit!75116)

(assert (=> b!4378280 (= e!2725309 Unit!75222)))

(declare-fun b!4378281 () Bool)

(assert (=> b!4378281 false))

(declare-fun lt!1589132 () Unit!75116)

(declare-fun lt!1589131 () Unit!75116)

(assert (=> b!4378281 (= lt!1589132 lt!1589131)))

(assert (=> b!4378281 (containsKey!848 (toList!3142 lt!1589014) (_1!27637 (h!54753 newBucket!200)))))

(assert (=> b!4378281 (= lt!1589131 (lemmaInGetKeysListThenContainsKey!169 (toList!3142 lt!1589014) (_1!27637 (h!54753 newBucket!200))))))

(declare-fun Unit!75223 () Unit!75116)

(assert (=> b!4378281 (= e!2725309 Unit!75223)))

(declare-fun b!4378282 () Bool)

(declare-fun lt!1589137 () Unit!75116)

(assert (=> b!4378282 (= e!2725307 lt!1589137)))

(declare-fun lt!1589134 () Unit!75116)

(assert (=> b!4378282 (= lt!1589134 (lemmaContainsKeyImpliesGetValueByKeyDefined!455 (toList!3142 lt!1589014) (_1!27637 (h!54753 newBucket!200))))))

(assert (=> b!4378282 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1589014) (_1!27637 (h!54753 newBucket!200))))))

(declare-fun lt!1589133 () Unit!75116)

(assert (=> b!4378282 (= lt!1589133 lt!1589134)))

(assert (=> b!4378282 (= lt!1589137 (lemmaInListThenGetKeysListContains!168 (toList!3142 lt!1589014) (_1!27637 (h!54753 newBucket!200))))))

(assert (=> b!4378282 call!304493))

(declare-fun b!4378283 () Bool)

(assert (=> b!4378283 (= e!2725311 (contains!11492 (keys!16669 lt!1589014) (_1!27637 (h!54753 newBucket!200))))))

(declare-fun b!4378284 () Bool)

(assert (=> b!4378284 (= e!2725308 (keys!16669 lt!1589014))))

(declare-fun b!4378285 () Bool)

(assert (=> b!4378285 (= e!2725307 e!2725309)))

(declare-fun c!744553 () Bool)

(assert (=> b!4378285 (= c!744553 call!304493)))

(declare-fun b!4378286 () Bool)

(assert (=> b!4378286 (= e!2725308 (getKeysList!171 (toList!3142 lt!1589014)))))

(declare-fun b!4378287 () Bool)

(assert (=> b!4378287 (= e!2725310 (not (contains!11492 (keys!16669 lt!1589014) (_1!27637 (h!54753 newBucket!200)))))))

(assert (= (and d!1303359 c!744552) b!4378282))

(assert (= (and d!1303359 (not c!744552)) b!4378285))

(assert (= (and b!4378285 c!744553) b!4378281))

(assert (= (and b!4378285 (not c!744553)) b!4378280))

(assert (= (or b!4378282 b!4378285) bm!304488))

(assert (= (and bm!304488 c!744551) b!4378286))

(assert (= (and bm!304488 (not c!744551)) b!4378284))

(assert (= (and d!1303359 res!1802966) b!4378287))

(assert (= (and d!1303359 (not res!1802964)) b!4378279))

(assert (= (and b!4378279 res!1802965) b!4378283))

(declare-fun m!5013895 () Bool)

(assert (=> b!4378287 m!5013895))

(assert (=> b!4378287 m!5013895))

(declare-fun m!5013897 () Bool)

(assert (=> b!4378287 m!5013897))

(declare-fun m!5013899 () Bool)

(assert (=> b!4378286 m!5013899))

(declare-fun m!5013901 () Bool)

(assert (=> b!4378281 m!5013901))

(declare-fun m!5013903 () Bool)

(assert (=> b!4378281 m!5013903))

(assert (=> b!4378284 m!5013895))

(declare-fun m!5013905 () Bool)

(assert (=> bm!304488 m!5013905))

(declare-fun m!5013907 () Bool)

(assert (=> b!4378279 m!5013907))

(assert (=> b!4378279 m!5013907))

(declare-fun m!5013909 () Bool)

(assert (=> b!4378279 m!5013909))

(assert (=> b!4378283 m!5013895))

(assert (=> b!4378283 m!5013895))

(assert (=> b!4378283 m!5013897))

(assert (=> d!1303359 m!5013901))

(declare-fun m!5013911 () Bool)

(assert (=> b!4378282 m!5013911))

(assert (=> b!4378282 m!5013907))

(assert (=> b!4378282 m!5013907))

(assert (=> b!4378282 m!5013909))

(declare-fun m!5013913 () Bool)

(assert (=> b!4378282 m!5013913))

(assert (=> b!4378063 d!1303359))

(declare-fun bs!660608 () Bool)

(declare-fun b!4378290 () Bool)

(assert (= bs!660608 (and b!4378290 d!1303179)))

(declare-fun lambda!145192 () Int)

(assert (=> bs!660608 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588922) (= lambda!145192 lambda!145155))))

(declare-fun bs!660609 () Bool)

(assert (= bs!660609 (and b!4378290 b!4378047)))

(assert (=> bs!660609 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) (+!790 lt!1588594 lt!1588602)) (= lambda!145192 lambda!145160))))

(declare-fun bs!660610 () Bool)

(assert (= bs!660610 (and b!4378290 d!1303255)))

(assert (=> bs!660610 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588981) (= lambda!145192 lambda!145162))))

(declare-fun bs!660611 () Bool)

(assert (= bs!660611 (and b!4378290 d!1303265)))

(assert (=> bs!660611 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1589021) (= lambda!145192 lambda!145167))))

(declare-fun bs!660612 () Bool)

(assert (= bs!660612 (and b!4378290 b!4377997)))

(assert (=> bs!660612 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588912) (= lambda!145192 lambda!145154))))

(declare-fun bs!660613 () Bool)

(assert (= bs!660613 (and b!4378290 b!4378063)))

(assert (=> bs!660613 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1589011) (= lambda!145192 lambda!145166))))

(declare-fun bs!660614 () Bool)

(assert (= bs!660614 (and b!4378290 b!4378062)))

(assert (=> bs!660614 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588594) (= lambda!145192 lambda!145164))))

(declare-fun bs!660615 () Bool)

(assert (= bs!660615 (and b!4378290 b!4377996)))

(assert (=> bs!660615 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588594) (= lambda!145192 lambda!145152))))

(declare-fun bs!660616 () Bool)

(assert (= bs!660616 (and b!4378290 b!4378090)))

(assert (=> bs!660616 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588594) (= lambda!145192 lambda!145174))))

(declare-fun bs!660617 () Bool)

(assert (= bs!660617 (and b!4378290 b!4378046)))

(assert (=> bs!660617 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) (+!790 lt!1588594 lt!1588602)) (= lambda!145192 lambda!145159))))

(assert (=> bs!660612 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588594) (= lambda!145192 lambda!145153))))

(declare-fun bs!660618 () Bool)

(assert (= bs!660618 (and b!4378290 b!4378089)))

(assert (=> bs!660618 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588594) (= lambda!145192 lambda!145173))))

(assert (=> bs!660616 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1589053) (= lambda!145192 lambda!145175))))

(assert (=> bs!660613 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588594) (= lambda!145192 lambda!145165))))

(declare-fun bs!660619 () Bool)

(assert (= bs!660619 (and b!4378290 d!1303299)))

(assert (=> bs!660619 (not (= lambda!145192 lambda!145179))))

(assert (=> bs!660609 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588971) (= lambda!145192 lambda!145161))))

(declare-fun bs!660620 () Bool)

(assert (= bs!660620 (and b!4378290 d!1303283)))

(assert (=> bs!660620 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1589063) (= lambda!145192 lambda!145176))))

(assert (=> b!4378290 true))

(declare-fun bs!660621 () Bool)

(declare-fun b!4378291 () Bool)

(assert (= bs!660621 (and b!4378291 d!1303179)))

(declare-fun lambda!145193 () Int)

(assert (=> bs!660621 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588922) (= lambda!145193 lambda!145155))))

(declare-fun bs!660622 () Bool)

(assert (= bs!660622 (and b!4378291 b!4378047)))

(assert (=> bs!660622 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) (+!790 lt!1588594 lt!1588602)) (= lambda!145193 lambda!145160))))

(declare-fun bs!660623 () Bool)

(assert (= bs!660623 (and b!4378291 b!4378290)))

(assert (=> bs!660623 (= lambda!145193 lambda!145192)))

(declare-fun bs!660624 () Bool)

(assert (= bs!660624 (and b!4378291 d!1303255)))

(assert (=> bs!660624 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588981) (= lambda!145193 lambda!145162))))

(declare-fun bs!660625 () Bool)

(assert (= bs!660625 (and b!4378291 d!1303265)))

(assert (=> bs!660625 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1589021) (= lambda!145193 lambda!145167))))

(declare-fun bs!660626 () Bool)

(assert (= bs!660626 (and b!4378291 b!4377997)))

(assert (=> bs!660626 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588912) (= lambda!145193 lambda!145154))))

(declare-fun bs!660627 () Bool)

(assert (= bs!660627 (and b!4378291 b!4378063)))

(assert (=> bs!660627 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1589011) (= lambda!145193 lambda!145166))))

(declare-fun bs!660628 () Bool)

(assert (= bs!660628 (and b!4378291 b!4378062)))

(assert (=> bs!660628 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588594) (= lambda!145193 lambda!145164))))

(declare-fun bs!660629 () Bool)

(assert (= bs!660629 (and b!4378291 b!4377996)))

(assert (=> bs!660629 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588594) (= lambda!145193 lambda!145152))))

(declare-fun bs!660630 () Bool)

(assert (= bs!660630 (and b!4378291 b!4378090)))

(assert (=> bs!660630 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588594) (= lambda!145193 lambda!145174))))

(declare-fun bs!660631 () Bool)

(assert (= bs!660631 (and b!4378291 b!4378046)))

(assert (=> bs!660631 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) (+!790 lt!1588594 lt!1588602)) (= lambda!145193 lambda!145159))))

(assert (=> bs!660626 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588594) (= lambda!145193 lambda!145153))))

(declare-fun bs!660632 () Bool)

(assert (= bs!660632 (and b!4378291 b!4378089)))

(assert (=> bs!660632 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588594) (= lambda!145193 lambda!145173))))

(assert (=> bs!660630 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1589053) (= lambda!145193 lambda!145175))))

(assert (=> bs!660627 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588594) (= lambda!145193 lambda!145165))))

(declare-fun bs!660633 () Bool)

(assert (= bs!660633 (and b!4378291 d!1303299)))

(assert (=> bs!660633 (not (= lambda!145193 lambda!145179))))

(assert (=> bs!660622 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1588971) (= lambda!145193 lambda!145161))))

(declare-fun bs!660634 () Bool)

(assert (= bs!660634 (and b!4378291 d!1303283)))

(assert (=> bs!660634 (= (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1589063) (= lambda!145193 lambda!145176))))

(assert (=> b!4378291 true))

(declare-fun lt!1589142 () ListMap!2385)

(declare-fun lambda!145194 () Int)

(assert (=> bs!660621 (= (= lt!1589142 lt!1588922) (= lambda!145194 lambda!145155))))

(assert (=> bs!660622 (= (= lt!1589142 (+!790 lt!1588594 lt!1588602)) (= lambda!145194 lambda!145160))))

(assert (=> bs!660623 (= (= lt!1589142 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145194 lambda!145192))))

(assert (=> bs!660624 (= (= lt!1589142 lt!1588981) (= lambda!145194 lambda!145162))))

(assert (=> bs!660625 (= (= lt!1589142 lt!1589021) (= lambda!145194 lambda!145167))))

(assert (=> bs!660626 (= (= lt!1589142 lt!1588912) (= lambda!145194 lambda!145154))))

(assert (=> bs!660627 (= (= lt!1589142 lt!1589011) (= lambda!145194 lambda!145166))))

(assert (=> bs!660628 (= (= lt!1589142 lt!1588594) (= lambda!145194 lambda!145164))))

(assert (=> bs!660629 (= (= lt!1589142 lt!1588594) (= lambda!145194 lambda!145152))))

(assert (=> bs!660630 (= (= lt!1589142 lt!1588594) (= lambda!145194 lambda!145174))))

(assert (=> bs!660631 (= (= lt!1589142 (+!790 lt!1588594 lt!1588602)) (= lambda!145194 lambda!145159))))

(assert (=> bs!660626 (= (= lt!1589142 lt!1588594) (= lambda!145194 lambda!145153))))

(assert (=> bs!660632 (= (= lt!1589142 lt!1588594) (= lambda!145194 lambda!145173))))

(assert (=> bs!660630 (= (= lt!1589142 lt!1589053) (= lambda!145194 lambda!145175))))

(assert (=> bs!660627 (= (= lt!1589142 lt!1588594) (= lambda!145194 lambda!145165))))

(assert (=> bs!660633 (not (= lambda!145194 lambda!145179))))

(assert (=> b!4378291 (= (= lt!1589142 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145194 lambda!145193))))

(assert (=> bs!660622 (= (= lt!1589142 lt!1588971) (= lambda!145194 lambda!145161))))

(assert (=> bs!660634 (= (= lt!1589142 lt!1589063) (= lambda!145194 lambda!145176))))

(assert (=> b!4378291 true))

(declare-fun bs!660635 () Bool)

(declare-fun d!1303361 () Bool)

(assert (= bs!660635 (and d!1303361 d!1303179)))

(declare-fun lt!1589152 () ListMap!2385)

(declare-fun lambda!145195 () Int)

(assert (=> bs!660635 (= (= lt!1589152 lt!1588922) (= lambda!145195 lambda!145155))))

(declare-fun bs!660636 () Bool)

(assert (= bs!660636 (and d!1303361 b!4378047)))

(assert (=> bs!660636 (= (= lt!1589152 (+!790 lt!1588594 lt!1588602)) (= lambda!145195 lambda!145160))))

(declare-fun bs!660637 () Bool)

(assert (= bs!660637 (and d!1303361 b!4378290)))

(assert (=> bs!660637 (= (= lt!1589152 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145195 lambda!145192))))

(declare-fun bs!660638 () Bool)

(assert (= bs!660638 (and d!1303361 d!1303255)))

(assert (=> bs!660638 (= (= lt!1589152 lt!1588981) (= lambda!145195 lambda!145162))))

(declare-fun bs!660639 () Bool)

(assert (= bs!660639 (and d!1303361 d!1303265)))

(assert (=> bs!660639 (= (= lt!1589152 lt!1589021) (= lambda!145195 lambda!145167))))

(declare-fun bs!660640 () Bool)

(assert (= bs!660640 (and d!1303361 b!4377997)))

(assert (=> bs!660640 (= (= lt!1589152 lt!1588912) (= lambda!145195 lambda!145154))))

(declare-fun bs!660641 () Bool)

(assert (= bs!660641 (and d!1303361 b!4378063)))

(assert (=> bs!660641 (= (= lt!1589152 lt!1589011) (= lambda!145195 lambda!145166))))

(declare-fun bs!660642 () Bool)

(assert (= bs!660642 (and d!1303361 b!4378062)))

(assert (=> bs!660642 (= (= lt!1589152 lt!1588594) (= lambda!145195 lambda!145164))))

(declare-fun bs!660643 () Bool)

(assert (= bs!660643 (and d!1303361 b!4377996)))

(assert (=> bs!660643 (= (= lt!1589152 lt!1588594) (= lambda!145195 lambda!145152))))

(declare-fun bs!660644 () Bool)

(assert (= bs!660644 (and d!1303361 b!4378291)))

(assert (=> bs!660644 (= (= lt!1589152 lt!1589142) (= lambda!145195 lambda!145194))))

(declare-fun bs!660645 () Bool)

(assert (= bs!660645 (and d!1303361 b!4378090)))

(assert (=> bs!660645 (= (= lt!1589152 lt!1588594) (= lambda!145195 lambda!145174))))

(declare-fun bs!660646 () Bool)

(assert (= bs!660646 (and d!1303361 b!4378046)))

(assert (=> bs!660646 (= (= lt!1589152 (+!790 lt!1588594 lt!1588602)) (= lambda!145195 lambda!145159))))

(assert (=> bs!660640 (= (= lt!1589152 lt!1588594) (= lambda!145195 lambda!145153))))

(declare-fun bs!660647 () Bool)

(assert (= bs!660647 (and d!1303361 b!4378089)))

(assert (=> bs!660647 (= (= lt!1589152 lt!1588594) (= lambda!145195 lambda!145173))))

(assert (=> bs!660645 (= (= lt!1589152 lt!1589053) (= lambda!145195 lambda!145175))))

(assert (=> bs!660641 (= (= lt!1589152 lt!1588594) (= lambda!145195 lambda!145165))))

(declare-fun bs!660648 () Bool)

(assert (= bs!660648 (and d!1303361 d!1303299)))

(assert (=> bs!660648 (not (= lambda!145195 lambda!145179))))

(assert (=> bs!660644 (= (= lt!1589152 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145195 lambda!145193))))

(assert (=> bs!660636 (= (= lt!1589152 lt!1588971) (= lambda!145195 lambda!145161))))

(declare-fun bs!660649 () Bool)

(assert (= bs!660649 (and d!1303361 d!1303283)))

(assert (=> bs!660649 (= (= lt!1589152 lt!1589063) (= lambda!145195 lambda!145176))))

(assert (=> d!1303361 true))

(declare-fun e!2725314 () Bool)

(declare-fun b!4378288 () Bool)

(assert (=> b!4378288 (= e!2725314 (forall!9273 (toList!3142 (+!790 lt!1588594 (h!54753 newBucket!200))) lambda!145194))))

(declare-fun c!744554 () Bool)

(declare-fun call!304495 () Bool)

(declare-fun bm!304489 () Bool)

(assert (=> bm!304489 (= call!304495 (forall!9273 (ite c!744554 (toList!3142 (+!790 lt!1588594 (h!54753 newBucket!200))) (t!356206 (t!356206 newBucket!200))) (ite c!744554 lambda!145192 lambda!145194)))))

(declare-fun b!4378289 () Bool)

(declare-fun e!2725312 () Bool)

(assert (=> b!4378289 (= e!2725312 (invariantList!723 (toList!3142 lt!1589152)))))

(declare-fun bm!304490 () Bool)

(declare-fun call!304496 () Unit!75116)

(assert (=> bm!304490 (= call!304496 (lemmaContainsAllItsOwnKeys!105 (+!790 lt!1588594 (h!54753 newBucket!200))))))

(declare-fun e!2725313 () ListMap!2385)

(assert (=> b!4378290 (= e!2725313 (+!790 lt!1588594 (h!54753 newBucket!200)))))

(declare-fun lt!1589151 () Unit!75116)

(assert (=> b!4378290 (= lt!1589151 call!304496)))

(assert (=> b!4378290 call!304495))

(declare-fun lt!1589158 () Unit!75116)

(assert (=> b!4378290 (= lt!1589158 lt!1589151)))

(declare-fun call!304494 () Bool)

(assert (=> b!4378290 call!304494))

(declare-fun lt!1589156 () Unit!75116)

(declare-fun Unit!75228 () Unit!75116)

(assert (=> b!4378290 (= lt!1589156 Unit!75228)))

(assert (=> d!1303361 e!2725312))

(declare-fun res!1802969 () Bool)

(assert (=> d!1303361 (=> (not res!1802969) (not e!2725312))))

(assert (=> d!1303361 (= res!1802969 (forall!9273 (t!356206 newBucket!200) lambda!145195))))

(assert (=> d!1303361 (= lt!1589152 e!2725313)))

(assert (=> d!1303361 (= c!744554 ((_ is Nil!49156) (t!356206 newBucket!200)))))

(assert (=> d!1303361 (noDuplicateKeys!579 (t!356206 newBucket!200))))

(assert (=> d!1303361 (= (addToMapMapFromBucket!260 (t!356206 newBucket!200) (+!790 lt!1588594 (h!54753 newBucket!200))) lt!1589152)))

(assert (=> b!4378291 (= e!2725313 lt!1589142)))

(declare-fun lt!1589145 () ListMap!2385)

(assert (=> b!4378291 (= lt!1589145 (+!790 (+!790 lt!1588594 (h!54753 newBucket!200)) (h!54753 (t!356206 newBucket!200))))))

(assert (=> b!4378291 (= lt!1589142 (addToMapMapFromBucket!260 (t!356206 (t!356206 newBucket!200)) (+!790 (+!790 lt!1588594 (h!54753 newBucket!200)) (h!54753 (t!356206 newBucket!200)))))))

(declare-fun lt!1589141 () Unit!75116)

(assert (=> b!4378291 (= lt!1589141 call!304496)))

(assert (=> b!4378291 (forall!9273 (toList!3142 (+!790 lt!1588594 (h!54753 newBucket!200))) lambda!145193)))

(declare-fun lt!1589150 () Unit!75116)

(assert (=> b!4378291 (= lt!1589150 lt!1589141)))

(assert (=> b!4378291 (forall!9273 (toList!3142 lt!1589145) lambda!145194)))

(declare-fun lt!1589139 () Unit!75116)

(declare-fun Unit!75229 () Unit!75116)

(assert (=> b!4378291 (= lt!1589139 Unit!75229)))

(assert (=> b!4378291 call!304495))

(declare-fun lt!1589153 () Unit!75116)

(declare-fun Unit!75230 () Unit!75116)

(assert (=> b!4378291 (= lt!1589153 Unit!75230)))

(declare-fun lt!1589144 () Unit!75116)

(declare-fun Unit!75231 () Unit!75116)

(assert (=> b!4378291 (= lt!1589144 Unit!75231)))

(declare-fun lt!1589157 () Unit!75116)

(assert (=> b!4378291 (= lt!1589157 (forallContained!1911 (toList!3142 lt!1589145) lambda!145194 (h!54753 (t!356206 newBucket!200))))))

(assert (=> b!4378291 (contains!11488 lt!1589145 (_1!27637 (h!54753 (t!356206 newBucket!200))))))

(declare-fun lt!1589154 () Unit!75116)

(declare-fun Unit!75232 () Unit!75116)

(assert (=> b!4378291 (= lt!1589154 Unit!75232)))

(assert (=> b!4378291 (contains!11488 lt!1589142 (_1!27637 (h!54753 (t!356206 newBucket!200))))))

(declare-fun lt!1589140 () Unit!75116)

(declare-fun Unit!75233 () Unit!75116)

(assert (=> b!4378291 (= lt!1589140 Unit!75233)))

(assert (=> b!4378291 (forall!9273 (t!356206 newBucket!200) lambda!145194)))

(declare-fun lt!1589147 () Unit!75116)

(declare-fun Unit!75234 () Unit!75116)

(assert (=> b!4378291 (= lt!1589147 Unit!75234)))

(assert (=> b!4378291 call!304494))

(declare-fun lt!1589146 () Unit!75116)

(declare-fun Unit!75235 () Unit!75116)

(assert (=> b!4378291 (= lt!1589146 Unit!75235)))

(declare-fun lt!1589143 () Unit!75116)

(declare-fun Unit!75236 () Unit!75116)

(assert (=> b!4378291 (= lt!1589143 Unit!75236)))

(declare-fun lt!1589149 () Unit!75116)

(assert (=> b!4378291 (= lt!1589149 (addForallContainsKeyThenBeforeAdding!105 (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1589142 (_1!27637 (h!54753 (t!356206 newBucket!200))) (_2!27637 (h!54753 (t!356206 newBucket!200)))))))

(assert (=> b!4378291 (forall!9273 (toList!3142 (+!790 lt!1588594 (h!54753 newBucket!200))) lambda!145194)))

(declare-fun lt!1589138 () Unit!75116)

(assert (=> b!4378291 (= lt!1589138 lt!1589149)))

(assert (=> b!4378291 (forall!9273 (toList!3142 (+!790 lt!1588594 (h!54753 newBucket!200))) lambda!145194)))

(declare-fun lt!1589148 () Unit!75116)

(declare-fun Unit!75237 () Unit!75116)

(assert (=> b!4378291 (= lt!1589148 Unit!75237)))

(declare-fun res!1802968 () Bool)

(assert (=> b!4378291 (= res!1802968 (forall!9273 (t!356206 newBucket!200) lambda!145194))))

(assert (=> b!4378291 (=> (not res!1802968) (not e!2725314))))

(assert (=> b!4378291 e!2725314))

(declare-fun lt!1589155 () Unit!75116)

(declare-fun Unit!75238 () Unit!75116)

(assert (=> b!4378291 (= lt!1589155 Unit!75238)))

(declare-fun b!4378292 () Bool)

(declare-fun res!1802967 () Bool)

(assert (=> b!4378292 (=> (not res!1802967) (not e!2725312))))

(assert (=> b!4378292 (= res!1802967 (forall!9273 (toList!3142 (+!790 lt!1588594 (h!54753 newBucket!200))) lambda!145195))))

(declare-fun bm!304491 () Bool)

(assert (=> bm!304491 (= call!304494 (forall!9273 (ite c!744554 (toList!3142 (+!790 lt!1588594 (h!54753 newBucket!200))) (toList!3142 lt!1589145)) (ite c!744554 lambda!145192 lambda!145194)))))

(assert (= (and d!1303361 c!744554) b!4378290))

(assert (= (and d!1303361 (not c!744554)) b!4378291))

(assert (= (and b!4378291 res!1802968) b!4378288))

(assert (= (or b!4378290 b!4378291) bm!304490))

(assert (= (or b!4378290 b!4378291) bm!304489))

(assert (= (or b!4378290 b!4378291) bm!304491))

(assert (= (and d!1303361 res!1802969) b!4378292))

(assert (= (and b!4378292 res!1802967) b!4378289))

(declare-fun m!5013925 () Bool)

(assert (=> b!4378289 m!5013925))

(declare-fun m!5013927 () Bool)

(assert (=> b!4378288 m!5013927))

(declare-fun m!5013929 () Bool)

(assert (=> b!4378292 m!5013929))

(declare-fun m!5013931 () Bool)

(assert (=> bm!304491 m!5013931))

(assert (=> b!4378291 m!5013927))

(assert (=> b!4378291 m!5013927))

(assert (=> b!4378291 m!5013593))

(declare-fun m!5013933 () Bool)

(assert (=> b!4378291 m!5013933))

(declare-fun m!5013935 () Bool)

(assert (=> b!4378291 m!5013935))

(declare-fun m!5013937 () Bool)

(assert (=> b!4378291 m!5013937))

(declare-fun m!5013939 () Bool)

(assert (=> b!4378291 m!5013939))

(declare-fun m!5013941 () Bool)

(assert (=> b!4378291 m!5013941))

(assert (=> b!4378291 m!5013941))

(assert (=> b!4378291 m!5013593))

(assert (=> b!4378291 m!5013935))

(declare-fun m!5013943 () Bool)

(assert (=> b!4378291 m!5013943))

(declare-fun m!5013945 () Bool)

(assert (=> b!4378291 m!5013945))

(declare-fun m!5013947 () Bool)

(assert (=> b!4378291 m!5013947))

(declare-fun m!5013949 () Bool)

(assert (=> b!4378291 m!5013949))

(assert (=> bm!304490 m!5013593))

(declare-fun m!5013951 () Bool)

(assert (=> bm!304490 m!5013951))

(declare-fun m!5013953 () Bool)

(assert (=> d!1303361 m!5013953))

(assert (=> d!1303361 m!5013099))

(declare-fun m!5013955 () Bool)

(assert (=> bm!304489 m!5013955))

(assert (=> b!4378063 d!1303361))

(declare-fun d!1303365 () Bool)

(declare-fun res!1802980 () Bool)

(declare-fun e!2725334 () Bool)

(assert (=> d!1303365 (=> res!1802980 e!2725334)))

(assert (=> d!1303365 (= res!1802980 ((_ is Nil!49156) newBucket!200))))

(assert (=> d!1303365 (= (forall!9273 newBucket!200 lambda!145166) e!2725334)))

(declare-fun b!4378327 () Bool)

(declare-fun e!2725335 () Bool)

(assert (=> b!4378327 (= e!2725334 e!2725335)))

(declare-fun res!1802981 () Bool)

(assert (=> b!4378327 (=> (not res!1802981) (not e!2725335))))

(assert (=> b!4378327 (= res!1802981 (dynLambda!20710 lambda!145166 (h!54753 newBucket!200)))))

(declare-fun b!4378328 () Bool)

(assert (=> b!4378328 (= e!2725335 (forall!9273 (t!356206 newBucket!200) lambda!145166))))

(assert (= (and d!1303365 (not res!1802980)) b!4378327))

(assert (= (and b!4378327 res!1802981) b!4378328))

(declare-fun b_lambda!134949 () Bool)

(assert (=> (not b_lambda!134949) (not b!4378327)))

(declare-fun m!5013957 () Bool)

(assert (=> b!4378327 m!5013957))

(declare-fun m!5013959 () Bool)

(assert (=> b!4378328 m!5013959))

(assert (=> b!4378063 d!1303365))

(declare-fun d!1303367 () Bool)

(declare-fun res!1802982 () Bool)

(declare-fun e!2725336 () Bool)

(assert (=> d!1303367 (=> res!1802982 e!2725336)))

(assert (=> d!1303367 (= res!1802982 ((_ is Nil!49156) (toList!3142 lt!1589014)))))

(assert (=> d!1303367 (= (forall!9273 (toList!3142 lt!1589014) lambda!145166) e!2725336)))

(declare-fun b!4378329 () Bool)

(declare-fun e!2725337 () Bool)

(assert (=> b!4378329 (= e!2725336 e!2725337)))

(declare-fun res!1802983 () Bool)

(assert (=> b!4378329 (=> (not res!1802983) (not e!2725337))))

(assert (=> b!4378329 (= res!1802983 (dynLambda!20710 lambda!145166 (h!54753 (toList!3142 lt!1589014))))))

(declare-fun b!4378330 () Bool)

(assert (=> b!4378330 (= e!2725337 (forall!9273 (t!356206 (toList!3142 lt!1589014)) lambda!145166))))

(assert (= (and d!1303367 (not res!1802982)) b!4378329))

(assert (= (and b!4378329 res!1802983) b!4378330))

(declare-fun b_lambda!134951 () Bool)

(assert (=> (not b_lambda!134951) (not b!4378329)))

(declare-fun m!5013961 () Bool)

(assert (=> b!4378329 m!5013961))

(declare-fun m!5013963 () Bool)

(assert (=> b!4378330 m!5013963))

(assert (=> b!4378063 d!1303367))

(declare-fun d!1303369 () Bool)

(declare-fun res!1802984 () Bool)

(declare-fun e!2725338 () Bool)

(assert (=> d!1303369 (=> res!1802984 e!2725338)))

(assert (=> d!1303369 (= res!1802984 ((_ is Nil!49156) (toList!3142 lt!1588594)))))

(assert (=> d!1303369 (= (forall!9273 (toList!3142 lt!1588594) lambda!145166) e!2725338)))

(declare-fun b!4378331 () Bool)

(declare-fun e!2725339 () Bool)

(assert (=> b!4378331 (= e!2725338 e!2725339)))

(declare-fun res!1802985 () Bool)

(assert (=> b!4378331 (=> (not res!1802985) (not e!2725339))))

(assert (=> b!4378331 (= res!1802985 (dynLambda!20710 lambda!145166 (h!54753 (toList!3142 lt!1588594))))))

(declare-fun b!4378332 () Bool)

(assert (=> b!4378332 (= e!2725339 (forall!9273 (t!356206 (toList!3142 lt!1588594)) lambda!145166))))

(assert (= (and d!1303369 (not res!1802984)) b!4378331))

(assert (= (and b!4378331 res!1802985) b!4378332))

(declare-fun b_lambda!134953 () Bool)

(assert (=> (not b_lambda!134953) (not b!4378331)))

(declare-fun m!5013965 () Bool)

(assert (=> b!4378331 m!5013965))

(declare-fun m!5013967 () Bool)

(assert (=> b!4378332 m!5013967))

(assert (=> b!4378063 d!1303369))

(declare-fun d!1303371 () Bool)

(declare-fun res!1802988 () Bool)

(declare-fun e!2725342 () Bool)

(assert (=> d!1303371 (=> res!1802988 e!2725342)))

(assert (=> d!1303371 (= res!1802988 ((_ is Nil!49156) (toList!3142 lt!1588594)))))

(assert (=> d!1303371 (= (forall!9273 (toList!3142 lt!1588594) lambda!145165) e!2725342)))

(declare-fun b!4378335 () Bool)

(declare-fun e!2725343 () Bool)

(assert (=> b!4378335 (= e!2725342 e!2725343)))

(declare-fun res!1802989 () Bool)

(assert (=> b!4378335 (=> (not res!1802989) (not e!2725343))))

(assert (=> b!4378335 (= res!1802989 (dynLambda!20710 lambda!145165 (h!54753 (toList!3142 lt!1588594))))))

(declare-fun b!4378336 () Bool)

(assert (=> b!4378336 (= e!2725343 (forall!9273 (t!356206 (toList!3142 lt!1588594)) lambda!145165))))

(assert (= (and d!1303371 (not res!1802988)) b!4378335))

(assert (= (and b!4378335 res!1802989) b!4378336))

(declare-fun b_lambda!134957 () Bool)

(assert (=> (not b_lambda!134957) (not b!4378335)))

(declare-fun m!5013969 () Bool)

(assert (=> b!4378335 m!5013969))

(declare-fun m!5013971 () Bool)

(assert (=> b!4378336 m!5013971))

(assert (=> b!4378063 d!1303371))

(declare-fun d!1303373 () Bool)

(declare-fun e!2725344 () Bool)

(assert (=> d!1303373 e!2725344))

(declare-fun res!1802990 () Bool)

(assert (=> d!1303373 (=> (not res!1802990) (not e!2725344))))

(declare-fun lt!1589162 () ListMap!2385)

(assert (=> d!1303373 (= res!1802990 (contains!11488 lt!1589162 (_1!27637 (h!54753 newBucket!200))))))

(declare-fun lt!1589163 () List!49280)

(assert (=> d!1303373 (= lt!1589162 (ListMap!2386 lt!1589163))))

(declare-fun lt!1589164 () Unit!75116)

(declare-fun lt!1589165 () Unit!75116)

(assert (=> d!1303373 (= lt!1589164 lt!1589165)))

(assert (=> d!1303373 (= (getValueByKey!545 lt!1589163 (_1!27637 (h!54753 newBucket!200))) (Some!10558 (_2!27637 (h!54753 newBucket!200))))))

(assert (=> d!1303373 (= lt!1589165 (lemmaContainsTupThenGetReturnValue!309 lt!1589163 (_1!27637 (h!54753 newBucket!200)) (_2!27637 (h!54753 newBucket!200))))))

(assert (=> d!1303373 (= lt!1589163 (insertNoDuplicatedKeys!141 (toList!3142 lt!1588594) (_1!27637 (h!54753 newBucket!200)) (_2!27637 (h!54753 newBucket!200))))))

(assert (=> d!1303373 (= (+!790 lt!1588594 (h!54753 newBucket!200)) lt!1589162)))

(declare-fun b!4378337 () Bool)

(declare-fun res!1802991 () Bool)

(assert (=> b!4378337 (=> (not res!1802991) (not e!2725344))))

(assert (=> b!4378337 (= res!1802991 (= (getValueByKey!545 (toList!3142 lt!1589162) (_1!27637 (h!54753 newBucket!200))) (Some!10558 (_2!27637 (h!54753 newBucket!200)))))))

(declare-fun b!4378338 () Bool)

(assert (=> b!4378338 (= e!2725344 (contains!11493 (toList!3142 lt!1589162) (h!54753 newBucket!200)))))

(assert (= (and d!1303373 res!1802990) b!4378337))

(assert (= (and b!4378337 res!1802991) b!4378338))

(declare-fun m!5013979 () Bool)

(assert (=> d!1303373 m!5013979))

(declare-fun m!5013981 () Bool)

(assert (=> d!1303373 m!5013981))

(declare-fun m!5013983 () Bool)

(assert (=> d!1303373 m!5013983))

(declare-fun m!5013985 () Bool)

(assert (=> d!1303373 m!5013985))

(declare-fun m!5013987 () Bool)

(assert (=> b!4378337 m!5013987))

(declare-fun m!5013989 () Bool)

(assert (=> b!4378338 m!5013989))

(assert (=> b!4378063 d!1303373))

(declare-fun d!1303379 () Bool)

(assert (=> d!1303379 (dynLambda!20710 lambda!145166 (h!54753 newBucket!200))))

(declare-fun lt!1589168 () Unit!75116)

(declare-fun choose!27305 (List!49280 Int tuple2!48686) Unit!75116)

(assert (=> d!1303379 (= lt!1589168 (choose!27305 (toList!3142 lt!1589014) lambda!145166 (h!54753 newBucket!200)))))

(declare-fun e!2725349 () Bool)

(assert (=> d!1303379 e!2725349))

(declare-fun res!1802996 () Bool)

(assert (=> d!1303379 (=> (not res!1802996) (not e!2725349))))

(assert (=> d!1303379 (= res!1802996 (forall!9273 (toList!3142 lt!1589014) lambda!145166))))

(assert (=> d!1303379 (= (forallContained!1911 (toList!3142 lt!1589014) lambda!145166 (h!54753 newBucket!200)) lt!1589168)))

(declare-fun b!4378343 () Bool)

(assert (=> b!4378343 (= e!2725349 (contains!11493 (toList!3142 lt!1589014) (h!54753 newBucket!200)))))

(assert (= (and d!1303379 res!1802996) b!4378343))

(declare-fun b_lambda!134961 () Bool)

(assert (=> (not b_lambda!134961) (not d!1303379)))

(assert (=> d!1303379 m!5013957))

(declare-fun m!5013995 () Bool)

(assert (=> d!1303379 m!5013995))

(assert (=> d!1303379 m!5013597))

(declare-fun m!5013997 () Bool)

(assert (=> b!4378343 m!5013997))

(assert (=> b!4378063 d!1303379))

(declare-fun bs!660651 () Bool)

(declare-fun d!1303383 () Bool)

(assert (= bs!660651 (and d!1303383 d!1303179)))

(declare-fun lambda!145200 () Int)

(assert (=> bs!660651 (= (= lt!1589011 lt!1588922) (= lambda!145200 lambda!145155))))

(declare-fun bs!660652 () Bool)

(assert (= bs!660652 (and d!1303383 b!4378047)))

(assert (=> bs!660652 (= (= lt!1589011 (+!790 lt!1588594 lt!1588602)) (= lambda!145200 lambda!145160))))

(declare-fun bs!660653 () Bool)

(assert (= bs!660653 (and d!1303383 d!1303361)))

(assert (=> bs!660653 (= (= lt!1589011 lt!1589152) (= lambda!145200 lambda!145195))))

(declare-fun bs!660654 () Bool)

(assert (= bs!660654 (and d!1303383 b!4378290)))

(assert (=> bs!660654 (= (= lt!1589011 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145200 lambda!145192))))

(declare-fun bs!660655 () Bool)

(assert (= bs!660655 (and d!1303383 d!1303255)))

(assert (=> bs!660655 (= (= lt!1589011 lt!1588981) (= lambda!145200 lambda!145162))))

(declare-fun bs!660656 () Bool)

(assert (= bs!660656 (and d!1303383 d!1303265)))

(assert (=> bs!660656 (= (= lt!1589011 lt!1589021) (= lambda!145200 lambda!145167))))

(declare-fun bs!660657 () Bool)

(assert (= bs!660657 (and d!1303383 b!4377997)))

(assert (=> bs!660657 (= (= lt!1589011 lt!1588912) (= lambda!145200 lambda!145154))))

(declare-fun bs!660658 () Bool)

(assert (= bs!660658 (and d!1303383 b!4378063)))

(assert (=> bs!660658 (= lambda!145200 lambda!145166)))

(declare-fun bs!660659 () Bool)

(assert (= bs!660659 (and d!1303383 b!4378062)))

(assert (=> bs!660659 (= (= lt!1589011 lt!1588594) (= lambda!145200 lambda!145164))))

(declare-fun bs!660660 () Bool)

(assert (= bs!660660 (and d!1303383 b!4377996)))

(assert (=> bs!660660 (= (= lt!1589011 lt!1588594) (= lambda!145200 lambda!145152))))

(declare-fun bs!660661 () Bool)

(assert (= bs!660661 (and d!1303383 b!4378291)))

(assert (=> bs!660661 (= (= lt!1589011 lt!1589142) (= lambda!145200 lambda!145194))))

(declare-fun bs!660662 () Bool)

(assert (= bs!660662 (and d!1303383 b!4378090)))

(assert (=> bs!660662 (= (= lt!1589011 lt!1588594) (= lambda!145200 lambda!145174))))

(declare-fun bs!660663 () Bool)

(assert (= bs!660663 (and d!1303383 b!4378046)))

(assert (=> bs!660663 (= (= lt!1589011 (+!790 lt!1588594 lt!1588602)) (= lambda!145200 lambda!145159))))

(assert (=> bs!660657 (= (= lt!1589011 lt!1588594) (= lambda!145200 lambda!145153))))

(declare-fun bs!660664 () Bool)

(assert (= bs!660664 (and d!1303383 b!4378089)))

(assert (=> bs!660664 (= (= lt!1589011 lt!1588594) (= lambda!145200 lambda!145173))))

(assert (=> bs!660662 (= (= lt!1589011 lt!1589053) (= lambda!145200 lambda!145175))))

(assert (=> bs!660658 (= (= lt!1589011 lt!1588594) (= lambda!145200 lambda!145165))))

(declare-fun bs!660665 () Bool)

(assert (= bs!660665 (and d!1303383 d!1303299)))

(assert (=> bs!660665 (not (= lambda!145200 lambda!145179))))

(assert (=> bs!660661 (= (= lt!1589011 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145200 lambda!145193))))

(assert (=> bs!660652 (= (= lt!1589011 lt!1588971) (= lambda!145200 lambda!145161))))

(declare-fun bs!660666 () Bool)

(assert (= bs!660666 (and d!1303383 d!1303283)))

(assert (=> bs!660666 (= (= lt!1589011 lt!1589063) (= lambda!145200 lambda!145176))))

(assert (=> d!1303383 true))

(assert (=> d!1303383 (forall!9273 (toList!3142 lt!1588594) lambda!145200)))

(declare-fun lt!1589171 () Unit!75116)

(declare-fun choose!27307 (ListMap!2385 ListMap!2385 K!10515 V!10761) Unit!75116)

(assert (=> d!1303383 (= lt!1589171 (choose!27307 lt!1588594 lt!1589011 (_1!27637 (h!54753 newBucket!200)) (_2!27637 (h!54753 newBucket!200))))))

(assert (=> d!1303383 (forall!9273 (toList!3142 (+!790 lt!1588594 (tuple2!48687 (_1!27637 (h!54753 newBucket!200)) (_2!27637 (h!54753 newBucket!200))))) lambda!145200)))

(assert (=> d!1303383 (= (addForallContainsKeyThenBeforeAdding!105 lt!1588594 lt!1589011 (_1!27637 (h!54753 newBucket!200)) (_2!27637 (h!54753 newBucket!200))) lt!1589171)))

(declare-fun bs!660667 () Bool)

(assert (= bs!660667 d!1303383))

(declare-fun m!5013999 () Bool)

(assert (=> bs!660667 m!5013999))

(declare-fun m!5014001 () Bool)

(assert (=> bs!660667 m!5014001))

(declare-fun m!5014003 () Bool)

(assert (=> bs!660667 m!5014003))

(declare-fun m!5014005 () Bool)

(assert (=> bs!660667 m!5014005))

(assert (=> b!4378063 d!1303383))

(declare-fun d!1303385 () Bool)

(declare-fun e!2725356 () Bool)

(assert (=> d!1303385 e!2725356))

(declare-fun res!1802997 () Bool)

(assert (=> d!1303385 (=> res!1802997 e!2725356)))

(declare-fun e!2725360 () Bool)

(assert (=> d!1303385 (= res!1802997 e!2725360)))

(declare-fun res!1802999 () Bool)

(assert (=> d!1303385 (=> (not res!1802999) (not e!2725360))))

(declare-fun lt!1589180 () Bool)

(assert (=> d!1303385 (= res!1802999 (not lt!1589180))))

(declare-fun lt!1589185 () Bool)

(assert (=> d!1303385 (= lt!1589180 lt!1589185)))

(declare-fun lt!1589186 () Unit!75116)

(declare-fun e!2725357 () Unit!75116)

(assert (=> d!1303385 (= lt!1589186 e!2725357)))

(declare-fun c!744574 () Bool)

(assert (=> d!1303385 (= c!744574 lt!1589185)))

(assert (=> d!1303385 (= lt!1589185 (containsKey!848 (toList!3142 lt!1589011) (_1!27637 (h!54753 newBucket!200))))))

(assert (=> d!1303385 (= (contains!11488 lt!1589011 (_1!27637 (h!54753 newBucket!200))) lt!1589180)))

(declare-fun bm!304501 () Bool)

(declare-fun call!304506 () Bool)

(declare-fun e!2725358 () List!49283)

(assert (=> bm!304501 (= call!304506 (contains!11492 e!2725358 (_1!27637 (h!54753 newBucket!200))))))

(declare-fun c!744573 () Bool)

(assert (=> bm!304501 (= c!744573 c!744574)))

(declare-fun b!4378357 () Bool)

(declare-fun e!2725361 () Bool)

(assert (=> b!4378357 (= e!2725356 e!2725361)))

(declare-fun res!1802998 () Bool)

(assert (=> b!4378357 (=> (not res!1802998) (not e!2725361))))

(assert (=> b!4378357 (= res!1802998 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1589011) (_1!27637 (h!54753 newBucket!200)))))))

(declare-fun b!4378358 () Bool)

(declare-fun e!2725359 () Unit!75116)

(declare-fun Unit!75243 () Unit!75116)

(assert (=> b!4378358 (= e!2725359 Unit!75243)))

(declare-fun b!4378359 () Bool)

(assert (=> b!4378359 false))

(declare-fun lt!1589182 () Unit!75116)

(declare-fun lt!1589181 () Unit!75116)

(assert (=> b!4378359 (= lt!1589182 lt!1589181)))

(assert (=> b!4378359 (containsKey!848 (toList!3142 lt!1589011) (_1!27637 (h!54753 newBucket!200)))))

(assert (=> b!4378359 (= lt!1589181 (lemmaInGetKeysListThenContainsKey!169 (toList!3142 lt!1589011) (_1!27637 (h!54753 newBucket!200))))))

(declare-fun Unit!75244 () Unit!75116)

(assert (=> b!4378359 (= e!2725359 Unit!75244)))

(declare-fun b!4378360 () Bool)

(declare-fun lt!1589187 () Unit!75116)

(assert (=> b!4378360 (= e!2725357 lt!1589187)))

(declare-fun lt!1589184 () Unit!75116)

(assert (=> b!4378360 (= lt!1589184 (lemmaContainsKeyImpliesGetValueByKeyDefined!455 (toList!3142 lt!1589011) (_1!27637 (h!54753 newBucket!200))))))

(assert (=> b!4378360 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1589011) (_1!27637 (h!54753 newBucket!200))))))

(declare-fun lt!1589183 () Unit!75116)

(assert (=> b!4378360 (= lt!1589183 lt!1589184)))

(assert (=> b!4378360 (= lt!1589187 (lemmaInListThenGetKeysListContains!168 (toList!3142 lt!1589011) (_1!27637 (h!54753 newBucket!200))))))

(assert (=> b!4378360 call!304506))

(declare-fun b!4378361 () Bool)

(assert (=> b!4378361 (= e!2725361 (contains!11492 (keys!16669 lt!1589011) (_1!27637 (h!54753 newBucket!200))))))

(declare-fun b!4378362 () Bool)

(assert (=> b!4378362 (= e!2725358 (keys!16669 lt!1589011))))

(declare-fun b!4378363 () Bool)

(assert (=> b!4378363 (= e!2725357 e!2725359)))

(declare-fun c!744575 () Bool)

(assert (=> b!4378363 (= c!744575 call!304506)))

(declare-fun b!4378364 () Bool)

(assert (=> b!4378364 (= e!2725358 (getKeysList!171 (toList!3142 lt!1589011)))))

(declare-fun b!4378365 () Bool)

(assert (=> b!4378365 (= e!2725360 (not (contains!11492 (keys!16669 lt!1589011) (_1!27637 (h!54753 newBucket!200)))))))

(assert (= (and d!1303385 c!744574) b!4378360))

(assert (= (and d!1303385 (not c!744574)) b!4378363))

(assert (= (and b!4378363 c!744575) b!4378359))

(assert (= (and b!4378363 (not c!744575)) b!4378358))

(assert (= (or b!4378360 b!4378363) bm!304501))

(assert (= (and bm!304501 c!744573) b!4378364))

(assert (= (and bm!304501 (not c!744573)) b!4378362))

(assert (= (and d!1303385 res!1802999) b!4378365))

(assert (= (and d!1303385 (not res!1802997)) b!4378357))

(assert (= (and b!4378357 res!1802998) b!4378361))

(declare-fun m!5014007 () Bool)

(assert (=> b!4378365 m!5014007))

(assert (=> b!4378365 m!5014007))

(declare-fun m!5014009 () Bool)

(assert (=> b!4378365 m!5014009))

(declare-fun m!5014011 () Bool)

(assert (=> b!4378364 m!5014011))

(declare-fun m!5014013 () Bool)

(assert (=> b!4378359 m!5014013))

(declare-fun m!5014015 () Bool)

(assert (=> b!4378359 m!5014015))

(assert (=> b!4378362 m!5014007))

(declare-fun m!5014017 () Bool)

(assert (=> bm!304501 m!5014017))

(declare-fun m!5014019 () Bool)

(assert (=> b!4378357 m!5014019))

(assert (=> b!4378357 m!5014019))

(declare-fun m!5014021 () Bool)

(assert (=> b!4378357 m!5014021))

(assert (=> b!4378361 m!5014007))

(assert (=> b!4378361 m!5014007))

(assert (=> b!4378361 m!5014009))

(assert (=> d!1303385 m!5014013))

(declare-fun m!5014023 () Bool)

(assert (=> b!4378360 m!5014023))

(assert (=> b!4378360 m!5014019))

(assert (=> b!4378360 m!5014019))

(assert (=> b!4378360 m!5014021))

(declare-fun m!5014025 () Bool)

(assert (=> b!4378360 m!5014025))

(assert (=> b!4378063 d!1303385))

(assert (=> b!4377867 d!1303313))

(assert (=> b!4377867 d!1303315))

(declare-fun d!1303387 () Bool)

(assert (=> d!1303387 (= (invariantList!723 (toList!3142 lt!1589063)) (noDuplicatedKeys!135 (toList!3142 lt!1589063)))))

(declare-fun bs!660668 () Bool)

(assert (= bs!660668 d!1303387))

(declare-fun m!5014027 () Bool)

(assert (=> bs!660668 m!5014027))

(assert (=> b!4378088 d!1303387))

(declare-fun d!1303389 () Bool)

(declare-fun c!744576 () Bool)

(assert (=> d!1303389 (= c!744576 ((_ is Nil!49156) (toList!3142 lt!1588591)))))

(declare-fun e!2725362 () (InoxSet tuple2!48686))

(assert (=> d!1303389 (= (content!7813 (toList!3142 lt!1588591)) e!2725362)))

(declare-fun b!4378366 () Bool)

(assert (=> b!4378366 (= e!2725362 ((as const (Array tuple2!48686 Bool)) false))))

(declare-fun b!4378367 () Bool)

(assert (=> b!4378367 (= e!2725362 ((_ map or) (store ((as const (Array tuple2!48686 Bool)) false) (h!54753 (toList!3142 lt!1588591)) true) (content!7813 (t!356206 (toList!3142 lt!1588591)))))))

(assert (= (and d!1303389 c!744576) b!4378366))

(assert (= (and d!1303389 (not c!744576)) b!4378367))

(declare-fun m!5014029 () Bool)

(assert (=> b!4378367 m!5014029))

(declare-fun m!5014031 () Bool)

(assert (=> b!4378367 m!5014031))

(assert (=> d!1303297 d!1303389))

(assert (=> d!1303297 d!1303325))

(declare-fun d!1303391 () Bool)

(declare-fun res!1803002 () Bool)

(declare-fun e!2725365 () Bool)

(assert (=> d!1303391 (=> res!1803002 e!2725365)))

(assert (=> d!1303391 (= res!1803002 ((_ is Nil!49156) (toList!3142 (+!790 lt!1588594 lt!1588602))))))

(assert (=> d!1303391 (= (forall!9273 (toList!3142 (+!790 lt!1588594 lt!1588602)) lambda!145162) e!2725365)))

(declare-fun b!4378370 () Bool)

(declare-fun e!2725366 () Bool)

(assert (=> b!4378370 (= e!2725365 e!2725366)))

(declare-fun res!1803003 () Bool)

(assert (=> b!4378370 (=> (not res!1803003) (not e!2725366))))

(assert (=> b!4378370 (= res!1803003 (dynLambda!20710 lambda!145162 (h!54753 (toList!3142 (+!790 lt!1588594 lt!1588602)))))))

(declare-fun b!4378371 () Bool)

(assert (=> b!4378371 (= e!2725366 (forall!9273 (t!356206 (toList!3142 (+!790 lt!1588594 lt!1588602))) lambda!145162))))

(assert (= (and d!1303391 (not res!1803002)) b!4378370))

(assert (= (and b!4378370 res!1803003) b!4378371))

(declare-fun b_lambda!134963 () Bool)

(assert (=> (not b_lambda!134963) (not b!4378370)))

(declare-fun m!5014033 () Bool)

(assert (=> b!4378370 m!5014033))

(declare-fun m!5014035 () Bool)

(assert (=> b!4378371 m!5014035))

(assert (=> b!4378048 d!1303391))

(declare-fun d!1303393 () Bool)

(declare-fun res!1803008 () Bool)

(declare-fun e!2725367 () Bool)

(assert (=> d!1303393 (=> res!1803008 e!2725367)))

(assert (=> d!1303393 (= res!1803008 ((_ is Nil!49156) lt!1588593))))

(assert (=> d!1303393 (= (forall!9273 lt!1588593 lambda!145176) e!2725367)))

(declare-fun b!4378374 () Bool)

(declare-fun e!2725368 () Bool)

(assert (=> b!4378374 (= e!2725367 e!2725368)))

(declare-fun res!1803009 () Bool)

(assert (=> b!4378374 (=> (not res!1803009) (not e!2725368))))

(assert (=> b!4378374 (= res!1803009 (dynLambda!20710 lambda!145176 (h!54753 lt!1588593)))))

(declare-fun b!4378375 () Bool)

(assert (=> b!4378375 (= e!2725368 (forall!9273 (t!356206 lt!1588593) lambda!145176))))

(assert (= (and d!1303393 (not res!1803008)) b!4378374))

(assert (= (and b!4378374 res!1803009) b!4378375))

(declare-fun b_lambda!134965 () Bool)

(assert (=> (not b_lambda!134965) (not b!4378374)))

(declare-fun m!5014037 () Bool)

(assert (=> b!4378374 m!5014037))

(declare-fun m!5014039 () Bool)

(assert (=> b!4378375 m!5014039))

(assert (=> d!1303283 d!1303393))

(declare-fun d!1303395 () Bool)

(declare-fun res!1803010 () Bool)

(declare-fun e!2725369 () Bool)

(assert (=> d!1303395 (=> res!1803010 e!2725369)))

(assert (=> d!1303395 (= res!1803010 (not ((_ is Cons!49156) lt!1588593)))))

(assert (=> d!1303395 (= (noDuplicateKeys!579 lt!1588593) e!2725369)))

(declare-fun b!4378378 () Bool)

(declare-fun e!2725370 () Bool)

(assert (=> b!4378378 (= e!2725369 e!2725370)))

(declare-fun res!1803011 () Bool)

(assert (=> b!4378378 (=> (not res!1803011) (not e!2725370))))

(assert (=> b!4378378 (= res!1803011 (not (containsKey!849 (t!356206 lt!1588593) (_1!27637 (h!54753 lt!1588593)))))))

(declare-fun b!4378379 () Bool)

(assert (=> b!4378379 (= e!2725370 (noDuplicateKeys!579 (t!356206 lt!1588593)))))

(assert (= (and d!1303395 (not res!1803010)) b!4378378))

(assert (= (and b!4378378 res!1803011) b!4378379))

(declare-fun m!5014041 () Bool)

(assert (=> b!4378378 m!5014041))

(declare-fun m!5014043 () Bool)

(assert (=> b!4378379 m!5014043))

(assert (=> d!1303283 d!1303395))

(declare-fun d!1303397 () Bool)

(declare-fun isEmpty!28245 (Option!10559) Bool)

(assert (=> d!1303397 (= (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588610) key!3918)) (not (isEmpty!28245 (getValueByKey!545 (toList!3142 lt!1588610) key!3918))))))

(declare-fun bs!660669 () Bool)

(assert (= bs!660669 d!1303397))

(assert (=> bs!660669 m!5013083))

(declare-fun m!5014045 () Bool)

(assert (=> bs!660669 m!5014045))

(assert (=> b!4377859 d!1303397))

(declare-fun d!1303399 () Bool)

(declare-fun c!744581 () Bool)

(assert (=> d!1303399 (= c!744581 (and ((_ is Cons!49156) (toList!3142 lt!1588610)) (= (_1!27637 (h!54753 (toList!3142 lt!1588610))) key!3918)))))

(declare-fun e!2725375 () Option!10559)

(assert (=> d!1303399 (= (getValueByKey!545 (toList!3142 lt!1588610) key!3918) e!2725375)))

(declare-fun b!4378389 () Bool)

(declare-fun e!2725376 () Option!10559)

(assert (=> b!4378389 (= e!2725375 e!2725376)))

(declare-fun c!744582 () Bool)

(assert (=> b!4378389 (= c!744582 (and ((_ is Cons!49156) (toList!3142 lt!1588610)) (not (= (_1!27637 (h!54753 (toList!3142 lt!1588610))) key!3918))))))

(declare-fun b!4378388 () Bool)

(assert (=> b!4378388 (= e!2725375 (Some!10558 (_2!27637 (h!54753 (toList!3142 lt!1588610)))))))

(declare-fun b!4378390 () Bool)

(assert (=> b!4378390 (= e!2725376 (getValueByKey!545 (t!356206 (toList!3142 lt!1588610)) key!3918))))

(declare-fun b!4378391 () Bool)

(assert (=> b!4378391 (= e!2725376 None!10558)))

(assert (= (and d!1303399 c!744581) b!4378388))

(assert (= (and d!1303399 (not c!744581)) b!4378389))

(assert (= (and b!4378389 c!744582) b!4378390))

(assert (= (and b!4378389 (not c!744582)) b!4378391))

(declare-fun m!5014047 () Bool)

(assert (=> b!4378390 m!5014047))

(assert (=> b!4377859 d!1303399))

(declare-fun d!1303401 () Bool)

(declare-fun res!1803019 () Bool)

(declare-fun e!2725385 () Bool)

(assert (=> d!1303401 (=> res!1803019 e!2725385)))

(assert (=> d!1303401 (= res!1803019 (and ((_ is Cons!49156) (t!356206 newBucket!200)) (= (_1!27637 (h!54753 (t!356206 newBucket!200))) (_1!27637 (h!54753 newBucket!200)))))))

(assert (=> d!1303401 (= (containsKey!849 (t!356206 newBucket!200) (_1!27637 (h!54753 newBucket!200))) e!2725385)))

(declare-fun b!4378407 () Bool)

(declare-fun e!2725386 () Bool)

(assert (=> b!4378407 (= e!2725385 e!2725386)))

(declare-fun res!1803020 () Bool)

(assert (=> b!4378407 (=> (not res!1803020) (not e!2725386))))

(assert (=> b!4378407 (= res!1803020 ((_ is Cons!49156) (t!356206 newBucket!200)))))

(declare-fun b!4378408 () Bool)

(assert (=> b!4378408 (= e!2725386 (containsKey!849 (t!356206 (t!356206 newBucket!200)) (_1!27637 (h!54753 newBucket!200))))))

(assert (= (and d!1303401 (not res!1803019)) b!4378407))

(assert (= (and b!4378407 res!1803020) b!4378408))

(declare-fun m!5014049 () Bool)

(assert (=> b!4378408 m!5014049))

(assert (=> b!4377884 d!1303401))

(declare-fun bs!660677 () Bool)

(declare-fun b!4378411 () Bool)

(assert (= bs!660677 (and b!4378411 d!1303179)))

(declare-fun lambda!145213 () Int)

(assert (=> bs!660677 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588922) (= lambda!145213 lambda!145155))))

(declare-fun bs!660678 () Bool)

(assert (= bs!660678 (and b!4378411 b!4378047)))

(assert (=> bs!660678 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) (+!790 lt!1588594 lt!1588602)) (= lambda!145213 lambda!145160))))

(declare-fun bs!660679 () Bool)

(assert (= bs!660679 (and b!4378411 d!1303361)))

(assert (=> bs!660679 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1589152) (= lambda!145213 lambda!145195))))

(declare-fun bs!660680 () Bool)

(assert (= bs!660680 (and b!4378411 b!4378290)))

(assert (=> bs!660680 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145213 lambda!145192))))

(declare-fun bs!660681 () Bool)

(assert (= bs!660681 (and b!4378411 d!1303255)))

(assert (=> bs!660681 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588981) (= lambda!145213 lambda!145162))))

(declare-fun bs!660682 () Bool)

(assert (= bs!660682 (and b!4378411 d!1303383)))

(assert (=> bs!660682 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1589011) (= lambda!145213 lambda!145200))))

(declare-fun bs!660683 () Bool)

(assert (= bs!660683 (and b!4378411 d!1303265)))

(assert (=> bs!660683 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1589021) (= lambda!145213 lambda!145167))))

(declare-fun bs!660684 () Bool)

(assert (= bs!660684 (and b!4378411 b!4377997)))

(assert (=> bs!660684 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588912) (= lambda!145213 lambda!145154))))

(declare-fun bs!660685 () Bool)

(assert (= bs!660685 (and b!4378411 b!4378063)))

(assert (=> bs!660685 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1589011) (= lambda!145213 lambda!145166))))

(declare-fun bs!660686 () Bool)

(assert (= bs!660686 (and b!4378411 b!4378062)))

(assert (=> bs!660686 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588594) (= lambda!145213 lambda!145164))))

(declare-fun bs!660687 () Bool)

(assert (= bs!660687 (and b!4378411 b!4377996)))

(assert (=> bs!660687 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588594) (= lambda!145213 lambda!145152))))

(declare-fun bs!660688 () Bool)

(assert (= bs!660688 (and b!4378411 b!4378291)))

(assert (=> bs!660688 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1589142) (= lambda!145213 lambda!145194))))

(declare-fun bs!660689 () Bool)

(assert (= bs!660689 (and b!4378411 b!4378090)))

(assert (=> bs!660689 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588594) (= lambda!145213 lambda!145174))))

(declare-fun bs!660690 () Bool)

(assert (= bs!660690 (and b!4378411 b!4378046)))

(assert (=> bs!660690 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) (+!790 lt!1588594 lt!1588602)) (= lambda!145213 lambda!145159))))

(assert (=> bs!660684 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588594) (= lambda!145213 lambda!145153))))

(declare-fun bs!660691 () Bool)

(assert (= bs!660691 (and b!4378411 b!4378089)))

(assert (=> bs!660691 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588594) (= lambda!145213 lambda!145173))))

(assert (=> bs!660689 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1589053) (= lambda!145213 lambda!145175))))

(assert (=> bs!660685 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588594) (= lambda!145213 lambda!145165))))

(declare-fun bs!660692 () Bool)

(assert (= bs!660692 (and b!4378411 d!1303299)))

(assert (=> bs!660692 (not (= lambda!145213 lambda!145179))))

(assert (=> bs!660688 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145213 lambda!145193))))

(assert (=> bs!660678 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588971) (= lambda!145213 lambda!145161))))

(declare-fun bs!660694 () Bool)

(assert (= bs!660694 (and b!4378411 d!1303283)))

(assert (=> bs!660694 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1589063) (= lambda!145213 lambda!145176))))

(assert (=> b!4378411 true))

(declare-fun bs!660699 () Bool)

(declare-fun b!4378412 () Bool)

(assert (= bs!660699 (and b!4378412 d!1303179)))

(declare-fun lambda!145215 () Int)

(assert (=> bs!660699 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588922) (= lambda!145215 lambda!145155))))

(declare-fun bs!660701 () Bool)

(assert (= bs!660701 (and b!4378412 b!4378047)))

(assert (=> bs!660701 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) (+!790 lt!1588594 lt!1588602)) (= lambda!145215 lambda!145160))))

(declare-fun bs!660702 () Bool)

(assert (= bs!660702 (and b!4378412 b!4378411)))

(assert (=> bs!660702 (= lambda!145215 lambda!145213)))

(declare-fun bs!660703 () Bool)

(assert (= bs!660703 (and b!4378412 d!1303361)))

(assert (=> bs!660703 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1589152) (= lambda!145215 lambda!145195))))

(declare-fun bs!660704 () Bool)

(assert (= bs!660704 (and b!4378412 b!4378290)))

(assert (=> bs!660704 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145215 lambda!145192))))

(declare-fun bs!660705 () Bool)

(assert (= bs!660705 (and b!4378412 d!1303255)))

(assert (=> bs!660705 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588981) (= lambda!145215 lambda!145162))))

(declare-fun bs!660706 () Bool)

(assert (= bs!660706 (and b!4378412 d!1303383)))

(assert (=> bs!660706 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1589011) (= lambda!145215 lambda!145200))))

(declare-fun bs!660707 () Bool)

(assert (= bs!660707 (and b!4378412 d!1303265)))

(assert (=> bs!660707 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1589021) (= lambda!145215 lambda!145167))))

(declare-fun bs!660708 () Bool)

(assert (= bs!660708 (and b!4378412 b!4377997)))

(assert (=> bs!660708 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588912) (= lambda!145215 lambda!145154))))

(declare-fun bs!660709 () Bool)

(assert (= bs!660709 (and b!4378412 b!4378063)))

(assert (=> bs!660709 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1589011) (= lambda!145215 lambda!145166))))

(declare-fun bs!660710 () Bool)

(assert (= bs!660710 (and b!4378412 b!4378062)))

(assert (=> bs!660710 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588594) (= lambda!145215 lambda!145164))))

(declare-fun bs!660711 () Bool)

(assert (= bs!660711 (and b!4378412 b!4377996)))

(assert (=> bs!660711 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588594) (= lambda!145215 lambda!145152))))

(declare-fun bs!660712 () Bool)

(assert (= bs!660712 (and b!4378412 b!4378291)))

(assert (=> bs!660712 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1589142) (= lambda!145215 lambda!145194))))

(declare-fun bs!660713 () Bool)

(assert (= bs!660713 (and b!4378412 b!4378090)))

(assert (=> bs!660713 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588594) (= lambda!145215 lambda!145174))))

(declare-fun bs!660714 () Bool)

(assert (= bs!660714 (and b!4378412 b!4378046)))

(assert (=> bs!660714 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) (+!790 lt!1588594 lt!1588602)) (= lambda!145215 lambda!145159))))

(assert (=> bs!660708 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588594) (= lambda!145215 lambda!145153))))

(declare-fun bs!660715 () Bool)

(assert (= bs!660715 (and b!4378412 b!4378089)))

(assert (=> bs!660715 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588594) (= lambda!145215 lambda!145173))))

(assert (=> bs!660713 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1589053) (= lambda!145215 lambda!145175))))

(assert (=> bs!660709 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588594) (= lambda!145215 lambda!145165))))

(declare-fun bs!660716 () Bool)

(assert (= bs!660716 (and b!4378412 d!1303299)))

(assert (=> bs!660716 (not (= lambda!145215 lambda!145179))))

(assert (=> bs!660712 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145215 lambda!145193))))

(assert (=> bs!660701 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1588971) (= lambda!145215 lambda!145161))))

(declare-fun bs!660717 () Bool)

(assert (= bs!660717 (and b!4378412 d!1303283)))

(assert (=> bs!660717 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1589063) (= lambda!145215 lambda!145176))))

(assert (=> b!4378412 true))

(declare-fun lambda!145217 () Int)

(declare-fun lt!1589205 () ListMap!2385)

(assert (=> bs!660699 (= (= lt!1589205 lt!1588922) (= lambda!145217 lambda!145155))))

(assert (=> bs!660701 (= (= lt!1589205 (+!790 lt!1588594 lt!1588602)) (= lambda!145217 lambda!145160))))

(assert (=> bs!660702 (= (= lt!1589205 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145217 lambda!145213))))

(assert (=> bs!660703 (= (= lt!1589205 lt!1589152) (= lambda!145217 lambda!145195))))

(assert (=> b!4378412 (= (= lt!1589205 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145217 lambda!145215))))

(assert (=> bs!660704 (= (= lt!1589205 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145217 lambda!145192))))

(assert (=> bs!660705 (= (= lt!1589205 lt!1588981) (= lambda!145217 lambda!145162))))

(assert (=> bs!660706 (= (= lt!1589205 lt!1589011) (= lambda!145217 lambda!145200))))

(assert (=> bs!660707 (= (= lt!1589205 lt!1589021) (= lambda!145217 lambda!145167))))

(assert (=> bs!660708 (= (= lt!1589205 lt!1588912) (= lambda!145217 lambda!145154))))

(assert (=> bs!660709 (= (= lt!1589205 lt!1589011) (= lambda!145217 lambda!145166))))

(assert (=> bs!660710 (= (= lt!1589205 lt!1588594) (= lambda!145217 lambda!145164))))

(assert (=> bs!660711 (= (= lt!1589205 lt!1588594) (= lambda!145217 lambda!145152))))

(assert (=> bs!660712 (= (= lt!1589205 lt!1589142) (= lambda!145217 lambda!145194))))

(assert (=> bs!660713 (= (= lt!1589205 lt!1588594) (= lambda!145217 lambda!145174))))

(assert (=> bs!660714 (= (= lt!1589205 (+!790 lt!1588594 lt!1588602)) (= lambda!145217 lambda!145159))))

(assert (=> bs!660708 (= (= lt!1589205 lt!1588594) (= lambda!145217 lambda!145153))))

(assert (=> bs!660715 (= (= lt!1589205 lt!1588594) (= lambda!145217 lambda!145173))))

(assert (=> bs!660713 (= (= lt!1589205 lt!1589053) (= lambda!145217 lambda!145175))))

(assert (=> bs!660709 (= (= lt!1589205 lt!1588594) (= lambda!145217 lambda!145165))))

(assert (=> bs!660716 (not (= lambda!145217 lambda!145179))))

(assert (=> bs!660712 (= (= lt!1589205 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145217 lambda!145193))))

(assert (=> bs!660701 (= (= lt!1589205 lt!1588971) (= lambda!145217 lambda!145161))))

(assert (=> bs!660717 (= (= lt!1589205 lt!1589063) (= lambda!145217 lambda!145176))))

(assert (=> b!4378412 true))

(declare-fun bs!660719 () Bool)

(declare-fun d!1303403 () Bool)

(assert (= bs!660719 (and d!1303403 d!1303179)))

(declare-fun lt!1589215 () ListMap!2385)

(declare-fun lambda!145218 () Int)

(assert (=> bs!660719 (= (= lt!1589215 lt!1588922) (= lambda!145218 lambda!145155))))

(declare-fun bs!660720 () Bool)

(assert (= bs!660720 (and d!1303403 b!4378412)))

(assert (=> bs!660720 (= (= lt!1589215 lt!1589205) (= lambda!145218 lambda!145217))))

(declare-fun bs!660721 () Bool)

(assert (= bs!660721 (and d!1303403 b!4378047)))

(assert (=> bs!660721 (= (= lt!1589215 (+!790 lt!1588594 lt!1588602)) (= lambda!145218 lambda!145160))))

(declare-fun bs!660722 () Bool)

(assert (= bs!660722 (and d!1303403 b!4378411)))

(assert (=> bs!660722 (= (= lt!1589215 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145218 lambda!145213))))

(declare-fun bs!660723 () Bool)

(assert (= bs!660723 (and d!1303403 d!1303361)))

(assert (=> bs!660723 (= (= lt!1589215 lt!1589152) (= lambda!145218 lambda!145195))))

(assert (=> bs!660720 (= (= lt!1589215 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145218 lambda!145215))))

(declare-fun bs!660724 () Bool)

(assert (= bs!660724 (and d!1303403 b!4378290)))

(assert (=> bs!660724 (= (= lt!1589215 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145218 lambda!145192))))

(declare-fun bs!660725 () Bool)

(assert (= bs!660725 (and d!1303403 d!1303255)))

(assert (=> bs!660725 (= (= lt!1589215 lt!1588981) (= lambda!145218 lambda!145162))))

(declare-fun bs!660726 () Bool)

(assert (= bs!660726 (and d!1303403 d!1303383)))

(assert (=> bs!660726 (= (= lt!1589215 lt!1589011) (= lambda!145218 lambda!145200))))

(declare-fun bs!660727 () Bool)

(assert (= bs!660727 (and d!1303403 d!1303265)))

(assert (=> bs!660727 (= (= lt!1589215 lt!1589021) (= lambda!145218 lambda!145167))))

(declare-fun bs!660728 () Bool)

(assert (= bs!660728 (and d!1303403 b!4377997)))

(assert (=> bs!660728 (= (= lt!1589215 lt!1588912) (= lambda!145218 lambda!145154))))

(declare-fun bs!660729 () Bool)

(assert (= bs!660729 (and d!1303403 b!4378063)))

(assert (=> bs!660729 (= (= lt!1589215 lt!1589011) (= lambda!145218 lambda!145166))))

(declare-fun bs!660730 () Bool)

(assert (= bs!660730 (and d!1303403 b!4378062)))

(assert (=> bs!660730 (= (= lt!1589215 lt!1588594) (= lambda!145218 lambda!145164))))

(declare-fun bs!660731 () Bool)

(assert (= bs!660731 (and d!1303403 b!4377996)))

(assert (=> bs!660731 (= (= lt!1589215 lt!1588594) (= lambda!145218 lambda!145152))))

(declare-fun bs!660732 () Bool)

(assert (= bs!660732 (and d!1303403 b!4378291)))

(assert (=> bs!660732 (= (= lt!1589215 lt!1589142) (= lambda!145218 lambda!145194))))

(declare-fun bs!660733 () Bool)

(assert (= bs!660733 (and d!1303403 b!4378090)))

(assert (=> bs!660733 (= (= lt!1589215 lt!1588594) (= lambda!145218 lambda!145174))))

(declare-fun bs!660734 () Bool)

(assert (= bs!660734 (and d!1303403 b!4378046)))

(assert (=> bs!660734 (= (= lt!1589215 (+!790 lt!1588594 lt!1588602)) (= lambda!145218 lambda!145159))))

(assert (=> bs!660728 (= (= lt!1589215 lt!1588594) (= lambda!145218 lambda!145153))))

(declare-fun bs!660736 () Bool)

(assert (= bs!660736 (and d!1303403 b!4378089)))

(assert (=> bs!660736 (= (= lt!1589215 lt!1588594) (= lambda!145218 lambda!145173))))

(assert (=> bs!660733 (= (= lt!1589215 lt!1589053) (= lambda!145218 lambda!145175))))

(assert (=> bs!660729 (= (= lt!1589215 lt!1588594) (= lambda!145218 lambda!145165))))

(declare-fun bs!660739 () Bool)

(assert (= bs!660739 (and d!1303403 d!1303299)))

(assert (=> bs!660739 (not (= lambda!145218 lambda!145179))))

(assert (=> bs!660732 (= (= lt!1589215 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145218 lambda!145193))))

(assert (=> bs!660721 (= (= lt!1589215 lt!1588971) (= lambda!145218 lambda!145161))))

(declare-fun bs!660742 () Bool)

(assert (= bs!660742 (and d!1303403 d!1303283)))

(assert (=> bs!660742 (= (= lt!1589215 lt!1589063) (= lambda!145218 lambda!145176))))

(assert (=> d!1303403 true))

(declare-fun b!4378409 () Bool)

(declare-fun e!2725389 () Bool)

(assert (=> b!4378409 (= e!2725389 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) lambda!145217))))

(declare-fun call!304508 () Bool)

(declare-fun c!744586 () Bool)

(declare-fun bm!304502 () Bool)

(assert (=> bm!304502 (= call!304508 (forall!9273 (ite c!744586 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (t!356206 (_2!27638 (h!54754 (toList!3141 lt!1588604))))) (ite c!744586 lambda!145213 lambda!145217)))))

(declare-fun b!4378410 () Bool)

(declare-fun e!2725387 () Bool)

(assert (=> b!4378410 (= e!2725387 (invariantList!723 (toList!3142 lt!1589215)))))

(declare-fun bm!304503 () Bool)

(declare-fun call!304509 () Unit!75116)

(assert (=> bm!304503 (= call!304509 (lemmaContainsAllItsOwnKeys!105 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))))))

(declare-fun e!2725388 () ListMap!2385)

(assert (=> b!4378411 (= e!2725388 (extractMap!638 (t!356207 (toList!3141 lt!1588604))))))

(declare-fun lt!1589214 () Unit!75116)

(assert (=> b!4378411 (= lt!1589214 call!304509)))

(assert (=> b!4378411 call!304508))

(declare-fun lt!1589221 () Unit!75116)

(assert (=> b!4378411 (= lt!1589221 lt!1589214)))

(declare-fun call!304507 () Bool)

(assert (=> b!4378411 call!304507))

(declare-fun lt!1589219 () Unit!75116)

(declare-fun Unit!75256 () Unit!75116)

(assert (=> b!4378411 (= lt!1589219 Unit!75256)))

(assert (=> d!1303403 e!2725387))

(declare-fun res!1803023 () Bool)

(assert (=> d!1303403 (=> (not res!1803023) (not e!2725387))))

(assert (=> d!1303403 (= res!1803023 (forall!9273 (_2!27638 (h!54754 (toList!3141 lt!1588604))) lambda!145218))))

(assert (=> d!1303403 (= lt!1589215 e!2725388)))

(assert (=> d!1303403 (= c!744586 ((_ is Nil!49156) (_2!27638 (h!54754 (toList!3141 lt!1588604)))))))

(assert (=> d!1303403 (noDuplicateKeys!579 (_2!27638 (h!54754 (toList!3141 lt!1588604))))))

(assert (=> d!1303403 (= (addToMapMapFromBucket!260 (_2!27638 (h!54754 (toList!3141 lt!1588604))) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) lt!1589215)))

(assert (=> b!4378412 (= e!2725388 lt!1589205)))

(declare-fun lt!1589208 () ListMap!2385)

(assert (=> b!4378412 (= lt!1589208 (+!790 (extractMap!638 (t!356207 (toList!3141 lt!1588604))) (h!54753 (_2!27638 (h!54754 (toList!3141 lt!1588604))))))))

(assert (=> b!4378412 (= lt!1589205 (addToMapMapFromBucket!260 (t!356206 (_2!27638 (h!54754 (toList!3141 lt!1588604)))) (+!790 (extractMap!638 (t!356207 (toList!3141 lt!1588604))) (h!54753 (_2!27638 (h!54754 (toList!3141 lt!1588604)))))))))

(declare-fun lt!1589204 () Unit!75116)

(assert (=> b!4378412 (= lt!1589204 call!304509)))

(assert (=> b!4378412 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) lambda!145215)))

(declare-fun lt!1589213 () Unit!75116)

(assert (=> b!4378412 (= lt!1589213 lt!1589204)))

(assert (=> b!4378412 (forall!9273 (toList!3142 lt!1589208) lambda!145217)))

(declare-fun lt!1589202 () Unit!75116)

(declare-fun Unit!75257 () Unit!75116)

(assert (=> b!4378412 (= lt!1589202 Unit!75257)))

(assert (=> b!4378412 call!304508))

(declare-fun lt!1589216 () Unit!75116)

(declare-fun Unit!75258 () Unit!75116)

(assert (=> b!4378412 (= lt!1589216 Unit!75258)))

(declare-fun lt!1589207 () Unit!75116)

(declare-fun Unit!75259 () Unit!75116)

(assert (=> b!4378412 (= lt!1589207 Unit!75259)))

(declare-fun lt!1589220 () Unit!75116)

(assert (=> b!4378412 (= lt!1589220 (forallContained!1911 (toList!3142 lt!1589208) lambda!145217 (h!54753 (_2!27638 (h!54754 (toList!3141 lt!1588604))))))))

(assert (=> b!4378412 (contains!11488 lt!1589208 (_1!27637 (h!54753 (_2!27638 (h!54754 (toList!3141 lt!1588604))))))))

(declare-fun lt!1589217 () Unit!75116)

(declare-fun Unit!75260 () Unit!75116)

(assert (=> b!4378412 (= lt!1589217 Unit!75260)))

(assert (=> b!4378412 (contains!11488 lt!1589205 (_1!27637 (h!54753 (_2!27638 (h!54754 (toList!3141 lt!1588604))))))))

(declare-fun lt!1589203 () Unit!75116)

(declare-fun Unit!75261 () Unit!75116)

(assert (=> b!4378412 (= lt!1589203 Unit!75261)))

(assert (=> b!4378412 (forall!9273 (_2!27638 (h!54754 (toList!3141 lt!1588604))) lambda!145217)))

(declare-fun lt!1589210 () Unit!75116)

(declare-fun Unit!75262 () Unit!75116)

(assert (=> b!4378412 (= lt!1589210 Unit!75262)))

(assert (=> b!4378412 call!304507))

(declare-fun lt!1589209 () Unit!75116)

(declare-fun Unit!75263 () Unit!75116)

(assert (=> b!4378412 (= lt!1589209 Unit!75263)))

(declare-fun lt!1589206 () Unit!75116)

(declare-fun Unit!75264 () Unit!75116)

(assert (=> b!4378412 (= lt!1589206 Unit!75264)))

(declare-fun lt!1589212 () Unit!75116)

(assert (=> b!4378412 (= lt!1589212 (addForallContainsKeyThenBeforeAdding!105 (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1589205 (_1!27637 (h!54753 (_2!27638 (h!54754 (toList!3141 lt!1588604))))) (_2!27637 (h!54753 (_2!27638 (h!54754 (toList!3141 lt!1588604)))))))))

(assert (=> b!4378412 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) lambda!145217)))

(declare-fun lt!1589201 () Unit!75116)

(assert (=> b!4378412 (= lt!1589201 lt!1589212)))

(assert (=> b!4378412 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) lambda!145217)))

(declare-fun lt!1589211 () Unit!75116)

(declare-fun Unit!75265 () Unit!75116)

(assert (=> b!4378412 (= lt!1589211 Unit!75265)))

(declare-fun res!1803022 () Bool)

(assert (=> b!4378412 (= res!1803022 (forall!9273 (_2!27638 (h!54754 (toList!3141 lt!1588604))) lambda!145217))))

(assert (=> b!4378412 (=> (not res!1803022) (not e!2725389))))

(assert (=> b!4378412 e!2725389))

(declare-fun lt!1589218 () Unit!75116)

(declare-fun Unit!75266 () Unit!75116)

(assert (=> b!4378412 (= lt!1589218 Unit!75266)))

(declare-fun b!4378413 () Bool)

(declare-fun res!1803021 () Bool)

(assert (=> b!4378413 (=> (not res!1803021) (not e!2725387))))

(assert (=> b!4378413 (= res!1803021 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) lambda!145218))))

(declare-fun bm!304504 () Bool)

(assert (=> bm!304504 (= call!304507 (forall!9273 (ite c!744586 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (toList!3142 lt!1589208)) (ite c!744586 lambda!145213 lambda!145217)))))

(assert (= (and d!1303403 c!744586) b!4378411))

(assert (= (and d!1303403 (not c!744586)) b!4378412))

(assert (= (and b!4378412 res!1803022) b!4378409))

(assert (= (or b!4378411 b!4378412) bm!304503))

(assert (= (or b!4378411 b!4378412) bm!304502))

(assert (= (or b!4378411 b!4378412) bm!304504))

(assert (= (and d!1303403 res!1803023) b!4378413))

(assert (= (and b!4378413 res!1803021) b!4378410))

(declare-fun m!5014111 () Bool)

(assert (=> b!4378410 m!5014111))

(declare-fun m!5014113 () Bool)

(assert (=> b!4378409 m!5014113))

(declare-fun m!5014115 () Bool)

(assert (=> b!4378413 m!5014115))

(declare-fun m!5014117 () Bool)

(assert (=> bm!304504 m!5014117))

(assert (=> b!4378412 m!5014113))

(assert (=> b!4378412 m!5014113))

(assert (=> b!4378412 m!5013633))

(declare-fun m!5014119 () Bool)

(assert (=> b!4378412 m!5014119))

(declare-fun m!5014121 () Bool)

(assert (=> b!4378412 m!5014121))

(declare-fun m!5014123 () Bool)

(assert (=> b!4378412 m!5014123))

(declare-fun m!5014125 () Bool)

(assert (=> b!4378412 m!5014125))

(declare-fun m!5014127 () Bool)

(assert (=> b!4378412 m!5014127))

(assert (=> b!4378412 m!5014127))

(assert (=> b!4378412 m!5013633))

(assert (=> b!4378412 m!5014121))

(declare-fun m!5014129 () Bool)

(assert (=> b!4378412 m!5014129))

(declare-fun m!5014131 () Bool)

(assert (=> b!4378412 m!5014131))

(declare-fun m!5014133 () Bool)

(assert (=> b!4378412 m!5014133))

(declare-fun m!5014135 () Bool)

(assert (=> b!4378412 m!5014135))

(assert (=> bm!304503 m!5013633))

(declare-fun m!5014137 () Bool)

(assert (=> bm!304503 m!5014137))

(declare-fun m!5014139 () Bool)

(assert (=> d!1303403 m!5014139))

(assert (=> d!1303403 m!5013781))

(declare-fun m!5014141 () Bool)

(assert (=> bm!304502 m!5014141))

(assert (=> b!4378067 d!1303403))

(declare-fun bs!660759 () Bool)

(declare-fun d!1303421 () Bool)

(assert (= bs!660759 (and d!1303421 d!1303273)))

(declare-fun lambda!145223 () Int)

(assert (=> bs!660759 (= lambda!145223 lambda!145169)))

(declare-fun bs!660760 () Bool)

(assert (= bs!660760 (and d!1303421 d!1303259)))

(assert (=> bs!660760 (= lambda!145223 lambda!145163)))

(declare-fun bs!660761 () Bool)

(assert (= bs!660761 (and d!1303421 d!1303275)))

(assert (=> bs!660761 (= lambda!145223 lambda!145172)))

(declare-fun bs!660762 () Bool)

(assert (= bs!660762 (and d!1303421 d!1303175)))

(assert (=> bs!660762 (= lambda!145223 lambda!145079)))

(declare-fun bs!660763 () Bool)

(assert (= bs!660763 (and d!1303421 start!425120)))

(assert (=> bs!660763 (= lambda!145223 lambda!145061)))

(declare-fun bs!660765 () Bool)

(assert (= bs!660765 (and d!1303421 d!1303267)))

(assert (=> bs!660765 (= lambda!145223 lambda!145168)))

(declare-fun bs!660766 () Bool)

(assert (= bs!660766 (and d!1303421 d!1303157)))

(assert (=> bs!660766 (not (= lambda!145223 lambda!145064))))

(declare-fun lt!1589231 () ListMap!2385)

(assert (=> d!1303421 (invariantList!723 (toList!3142 lt!1589231))))

(declare-fun e!2725409 () ListMap!2385)

(assert (=> d!1303421 (= lt!1589231 e!2725409)))

(declare-fun c!744598 () Bool)

(assert (=> d!1303421 (= c!744598 ((_ is Cons!49157) (t!356207 (toList!3141 lt!1588604))))))

(assert (=> d!1303421 (forall!9271 (t!356207 (toList!3141 lt!1588604)) lambda!145223)))

(assert (=> d!1303421 (= (extractMap!638 (t!356207 (toList!3141 lt!1588604))) lt!1589231)))

(declare-fun b!4378448 () Bool)

(assert (=> b!4378448 (= e!2725409 (addToMapMapFromBucket!260 (_2!27638 (h!54754 (t!356207 (toList!3141 lt!1588604)))) (extractMap!638 (t!356207 (t!356207 (toList!3141 lt!1588604))))))))

(declare-fun b!4378449 () Bool)

(assert (=> b!4378449 (= e!2725409 (ListMap!2386 Nil!49156))))

(assert (= (and d!1303421 c!744598) b!4378448))

(assert (= (and d!1303421 (not c!744598)) b!4378449))

(declare-fun m!5014175 () Bool)

(assert (=> d!1303421 m!5014175))

(declare-fun m!5014177 () Bool)

(assert (=> d!1303421 m!5014177))

(declare-fun m!5014179 () Bool)

(assert (=> b!4378448 m!5014179))

(assert (=> b!4378448 m!5014179))

(declare-fun m!5014181 () Bool)

(assert (=> b!4378448 m!5014181))

(assert (=> b!4378067 d!1303421))

(declare-fun d!1303429 () Bool)

(declare-fun res!1803038 () Bool)

(declare-fun e!2725412 () Bool)

(assert (=> d!1303429 (=> res!1803038 e!2725412)))

(assert (=> d!1303429 (= res!1803038 ((_ is Nil!49157) (t!356207 (toList!3141 lm!1707))))))

(assert (=> d!1303429 (= (forall!9271 (t!356207 (toList!3141 lm!1707)) lambda!145061) e!2725412)))

(declare-fun b!4378452 () Bool)

(declare-fun e!2725413 () Bool)

(assert (=> b!4378452 (= e!2725412 e!2725413)))

(declare-fun res!1803039 () Bool)

(assert (=> b!4378452 (=> (not res!1803039) (not e!2725413))))

(assert (=> b!4378452 (= res!1803039 (dynLambda!20709 lambda!145061 (h!54754 (t!356207 (toList!3141 lm!1707)))))))

(declare-fun b!4378453 () Bool)

(assert (=> b!4378453 (= e!2725413 (forall!9271 (t!356207 (t!356207 (toList!3141 lm!1707))) lambda!145061))))

(assert (= (and d!1303429 (not res!1803038)) b!4378452))

(assert (= (and b!4378452 res!1803039) b!4378453))

(declare-fun b_lambda!134973 () Bool)

(assert (=> (not b_lambda!134973) (not b!4378452)))

(declare-fun m!5014183 () Bool)

(assert (=> b!4378452 m!5014183))

(declare-fun m!5014185 () Bool)

(assert (=> b!4378453 m!5014185))

(assert (=> b!4377840 d!1303429))

(assert (=> b!4378106 d!1303293))

(declare-fun bs!660767 () Bool)

(declare-fun b!4378455 () Bool)

(assert (= bs!660767 (and b!4378455 b!4378158)))

(declare-fun lambda!145224 () Int)

(assert (=> bs!660767 (= (= (toList!3142 lt!1588598) (toList!3142 lt!1588610)) (= lambda!145224 lambda!145184))))

(assert (=> b!4378455 true))

(declare-fun bs!660768 () Bool)

(declare-fun b!4378456 () Bool)

(assert (= bs!660768 (and b!4378456 b!4378159)))

(declare-fun lambda!145225 () Int)

(assert (=> bs!660768 (= lambda!145225 lambda!145185)))

(declare-fun d!1303431 () Bool)

(declare-fun e!2725414 () Bool)

(assert (=> d!1303431 e!2725414))

(declare-fun res!1803042 () Bool)

(assert (=> d!1303431 (=> (not res!1803042) (not e!2725414))))

(declare-fun lt!1589232 () List!49283)

(assert (=> d!1303431 (= res!1803042 (noDuplicate!619 lt!1589232))))

(assert (=> d!1303431 (= lt!1589232 (getKeysList!171 (toList!3142 lt!1588598)))))

(assert (=> d!1303431 (= (keys!16669 lt!1588598) lt!1589232)))

(declare-fun b!4378454 () Bool)

(declare-fun res!1803040 () Bool)

(assert (=> b!4378454 (=> (not res!1803040) (not e!2725414))))

(assert (=> b!4378454 (= res!1803040 (= (length!94 lt!1589232) (length!95 (toList!3142 lt!1588598))))))

(declare-fun res!1803041 () Bool)

(assert (=> b!4378455 (=> (not res!1803041) (not e!2725414))))

(assert (=> b!4378455 (= res!1803041 (forall!9274 lt!1589232 lambda!145224))))

(assert (=> b!4378456 (= e!2725414 (= (content!7811 lt!1589232) (content!7811 (map!10705 (toList!3142 lt!1588598) lambda!145225))))))

(assert (= (and d!1303431 res!1803042) b!4378454))

(assert (= (and b!4378454 res!1803040) b!4378455))

(assert (= (and b!4378455 res!1803041) b!4378456))

(declare-fun m!5014187 () Bool)

(assert (=> d!1303431 m!5014187))

(assert (=> d!1303431 m!5013675))

(declare-fun m!5014189 () Bool)

(assert (=> b!4378454 m!5014189))

(declare-fun m!5014191 () Bool)

(assert (=> b!4378454 m!5014191))

(declare-fun m!5014193 () Bool)

(assert (=> b!4378455 m!5014193))

(declare-fun m!5014195 () Bool)

(assert (=> b!4378456 m!5014195))

(declare-fun m!5014197 () Bool)

(assert (=> b!4378456 m!5014197))

(assert (=> b!4378456 m!5014197))

(declare-fun m!5014199 () Bool)

(assert (=> b!4378456 m!5014199))

(assert (=> b!4378083 d!1303431))

(declare-fun bs!660771 () Bool)

(declare-fun b!4378459 () Bool)

(assert (= bs!660771 (and b!4378459 d!1303403)))

(declare-fun lambda!145226 () Int)

(assert (=> bs!660771 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589215) (= lambda!145226 lambda!145218))))

(declare-fun bs!660772 () Bool)

(assert (= bs!660772 (and b!4378459 d!1303179)))

(assert (=> bs!660772 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588922) (= lambda!145226 lambda!145155))))

(declare-fun bs!660773 () Bool)

(assert (= bs!660773 (and b!4378459 b!4378412)))

(assert (=> bs!660773 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589205) (= lambda!145226 lambda!145217))))

(declare-fun bs!660774 () Bool)

(assert (= bs!660774 (and b!4378459 b!4378047)))

(assert (=> bs!660774 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) (+!790 lt!1588594 lt!1588602)) (= lambda!145226 lambda!145160))))

(declare-fun bs!660775 () Bool)

(assert (= bs!660775 (and b!4378459 b!4378411)))

(assert (=> bs!660775 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145226 lambda!145213))))

(declare-fun bs!660776 () Bool)

(assert (= bs!660776 (and b!4378459 d!1303361)))

(assert (=> bs!660776 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589152) (= lambda!145226 lambda!145195))))

(assert (=> bs!660773 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145226 lambda!145215))))

(declare-fun bs!660777 () Bool)

(assert (= bs!660777 (and b!4378459 b!4378290)))

(assert (=> bs!660777 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145226 lambda!145192))))

(declare-fun bs!660778 () Bool)

(assert (= bs!660778 (and b!4378459 d!1303255)))

(assert (=> bs!660778 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588981) (= lambda!145226 lambda!145162))))

(declare-fun bs!660779 () Bool)

(assert (= bs!660779 (and b!4378459 d!1303383)))

(assert (=> bs!660779 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589011) (= lambda!145226 lambda!145200))))

(declare-fun bs!660780 () Bool)

(assert (= bs!660780 (and b!4378459 d!1303265)))

(assert (=> bs!660780 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589021) (= lambda!145226 lambda!145167))))

(declare-fun bs!660781 () Bool)

(assert (= bs!660781 (and b!4378459 b!4377997)))

(assert (=> bs!660781 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588912) (= lambda!145226 lambda!145154))))

(declare-fun bs!660782 () Bool)

(assert (= bs!660782 (and b!4378459 b!4378063)))

(assert (=> bs!660782 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589011) (= lambda!145226 lambda!145166))))

(declare-fun bs!660783 () Bool)

(assert (= bs!660783 (and b!4378459 b!4378062)))

(assert (=> bs!660783 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588594) (= lambda!145226 lambda!145164))))

(declare-fun bs!660784 () Bool)

(assert (= bs!660784 (and b!4378459 b!4377996)))

(assert (=> bs!660784 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588594) (= lambda!145226 lambda!145152))))

(declare-fun bs!660785 () Bool)

(assert (= bs!660785 (and b!4378459 b!4378291)))

(assert (=> bs!660785 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589142) (= lambda!145226 lambda!145194))))

(declare-fun bs!660786 () Bool)

(assert (= bs!660786 (and b!4378459 b!4378090)))

(assert (=> bs!660786 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588594) (= lambda!145226 lambda!145174))))

(declare-fun bs!660787 () Bool)

(assert (= bs!660787 (and b!4378459 b!4378046)))

(assert (=> bs!660787 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) (+!790 lt!1588594 lt!1588602)) (= lambda!145226 lambda!145159))))

(assert (=> bs!660781 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588594) (= lambda!145226 lambda!145153))))

(declare-fun bs!660788 () Bool)

(assert (= bs!660788 (and b!4378459 b!4378089)))

(assert (=> bs!660788 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588594) (= lambda!145226 lambda!145173))))

(assert (=> bs!660786 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589053) (= lambda!145226 lambda!145175))))

(assert (=> bs!660782 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588594) (= lambda!145226 lambda!145165))))

(declare-fun bs!660789 () Bool)

(assert (= bs!660789 (and b!4378459 d!1303299)))

(assert (=> bs!660789 (not (= lambda!145226 lambda!145179))))

(assert (=> bs!660785 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145226 lambda!145193))))

(assert (=> bs!660774 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588971) (= lambda!145226 lambda!145161))))

(declare-fun bs!660790 () Bool)

(assert (= bs!660790 (and b!4378459 d!1303283)))

(assert (=> bs!660790 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589063) (= lambda!145226 lambda!145176))))

(assert (=> b!4378459 true))

(declare-fun bs!660791 () Bool)

(declare-fun b!4378460 () Bool)

(assert (= bs!660791 (and b!4378460 d!1303403)))

(declare-fun lambda!145227 () Int)

(assert (=> bs!660791 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589215) (= lambda!145227 lambda!145218))))

(declare-fun bs!660792 () Bool)

(assert (= bs!660792 (and b!4378460 d!1303179)))

(assert (=> bs!660792 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588922) (= lambda!145227 lambda!145155))))

(declare-fun bs!660793 () Bool)

(assert (= bs!660793 (and b!4378460 b!4378412)))

(assert (=> bs!660793 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589205) (= lambda!145227 lambda!145217))))

(declare-fun bs!660794 () Bool)

(assert (= bs!660794 (and b!4378460 b!4378459)))

(assert (=> bs!660794 (= lambda!145227 lambda!145226)))

(declare-fun bs!660795 () Bool)

(assert (= bs!660795 (and b!4378460 b!4378047)))

(assert (=> bs!660795 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) (+!790 lt!1588594 lt!1588602)) (= lambda!145227 lambda!145160))))

(declare-fun bs!660796 () Bool)

(assert (= bs!660796 (and b!4378460 b!4378411)))

(assert (=> bs!660796 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145227 lambda!145213))))

(declare-fun bs!660797 () Bool)

(assert (= bs!660797 (and b!4378460 d!1303361)))

(assert (=> bs!660797 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589152) (= lambda!145227 lambda!145195))))

(assert (=> bs!660793 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145227 lambda!145215))))

(declare-fun bs!660798 () Bool)

(assert (= bs!660798 (and b!4378460 b!4378290)))

(assert (=> bs!660798 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145227 lambda!145192))))

(declare-fun bs!660799 () Bool)

(assert (= bs!660799 (and b!4378460 d!1303255)))

(assert (=> bs!660799 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588981) (= lambda!145227 lambda!145162))))

(declare-fun bs!660800 () Bool)

(assert (= bs!660800 (and b!4378460 d!1303383)))

(assert (=> bs!660800 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589011) (= lambda!145227 lambda!145200))))

(declare-fun bs!660801 () Bool)

(assert (= bs!660801 (and b!4378460 d!1303265)))

(assert (=> bs!660801 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589021) (= lambda!145227 lambda!145167))))

(declare-fun bs!660802 () Bool)

(assert (= bs!660802 (and b!4378460 b!4377997)))

(assert (=> bs!660802 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588912) (= lambda!145227 lambda!145154))))

(declare-fun bs!660804 () Bool)

(assert (= bs!660804 (and b!4378460 b!4378063)))

(assert (=> bs!660804 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589011) (= lambda!145227 lambda!145166))))

(declare-fun bs!660805 () Bool)

(assert (= bs!660805 (and b!4378460 b!4378062)))

(assert (=> bs!660805 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588594) (= lambda!145227 lambda!145164))))

(declare-fun bs!660806 () Bool)

(assert (= bs!660806 (and b!4378460 b!4377996)))

(assert (=> bs!660806 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588594) (= lambda!145227 lambda!145152))))

(declare-fun bs!660807 () Bool)

(assert (= bs!660807 (and b!4378460 b!4378291)))

(assert (=> bs!660807 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589142) (= lambda!145227 lambda!145194))))

(declare-fun bs!660808 () Bool)

(assert (= bs!660808 (and b!4378460 b!4378090)))

(assert (=> bs!660808 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588594) (= lambda!145227 lambda!145174))))

(declare-fun bs!660809 () Bool)

(assert (= bs!660809 (and b!4378460 b!4378046)))

(assert (=> bs!660809 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) (+!790 lt!1588594 lt!1588602)) (= lambda!145227 lambda!145159))))

(assert (=> bs!660802 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588594) (= lambda!145227 lambda!145153))))

(declare-fun bs!660810 () Bool)

(assert (= bs!660810 (and b!4378460 b!4378089)))

(assert (=> bs!660810 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588594) (= lambda!145227 lambda!145173))))

(assert (=> bs!660808 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589053) (= lambda!145227 lambda!145175))))

(assert (=> bs!660804 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588594) (= lambda!145227 lambda!145165))))

(declare-fun bs!660811 () Bool)

(assert (= bs!660811 (and b!4378460 d!1303299)))

(assert (=> bs!660811 (not (= lambda!145227 lambda!145179))))

(assert (=> bs!660807 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145227 lambda!145193))))

(assert (=> bs!660795 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1588971) (= lambda!145227 lambda!145161))))

(declare-fun bs!660812 () Bool)

(assert (= bs!660812 (and b!4378460 d!1303283)))

(assert (=> bs!660812 (= (= (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589063) (= lambda!145227 lambda!145176))))

(assert (=> b!4378460 true))

(declare-fun lambda!145228 () Int)

(declare-fun lt!1589239 () ListMap!2385)

(assert (=> bs!660791 (= (= lt!1589239 lt!1589215) (= lambda!145228 lambda!145218))))

(assert (=> bs!660792 (= (= lt!1589239 lt!1588922) (= lambda!145228 lambda!145155))))

(assert (=> bs!660793 (= (= lt!1589239 lt!1589205) (= lambda!145228 lambda!145217))))

(assert (=> bs!660794 (= (= lt!1589239 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145228 lambda!145226))))

(assert (=> bs!660795 (= (= lt!1589239 (+!790 lt!1588594 lt!1588602)) (= lambda!145228 lambda!145160))))

(assert (=> bs!660796 (= (= lt!1589239 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145228 lambda!145213))))

(assert (=> bs!660797 (= (= lt!1589239 lt!1589152) (= lambda!145228 lambda!145195))))

(assert (=> bs!660798 (= (= lt!1589239 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145228 lambda!145192))))

(assert (=> bs!660799 (= (= lt!1589239 lt!1588981) (= lambda!145228 lambda!145162))))

(assert (=> bs!660800 (= (= lt!1589239 lt!1589011) (= lambda!145228 lambda!145200))))

(assert (=> bs!660801 (= (= lt!1589239 lt!1589021) (= lambda!145228 lambda!145167))))

(assert (=> bs!660802 (= (= lt!1589239 lt!1588912) (= lambda!145228 lambda!145154))))

(assert (=> bs!660804 (= (= lt!1589239 lt!1589011) (= lambda!145228 lambda!145166))))

(assert (=> bs!660805 (= (= lt!1589239 lt!1588594) (= lambda!145228 lambda!145164))))

(assert (=> bs!660806 (= (= lt!1589239 lt!1588594) (= lambda!145228 lambda!145152))))

(assert (=> bs!660807 (= (= lt!1589239 lt!1589142) (= lambda!145228 lambda!145194))))

(assert (=> bs!660808 (= (= lt!1589239 lt!1588594) (= lambda!145228 lambda!145174))))

(assert (=> bs!660793 (= (= lt!1589239 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145228 lambda!145215))))

(assert (=> b!4378460 (= (= lt!1589239 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145228 lambda!145227))))

(assert (=> bs!660809 (= (= lt!1589239 (+!790 lt!1588594 lt!1588602)) (= lambda!145228 lambda!145159))))

(assert (=> bs!660802 (= (= lt!1589239 lt!1588594) (= lambda!145228 lambda!145153))))

(assert (=> bs!660810 (= (= lt!1589239 lt!1588594) (= lambda!145228 lambda!145173))))

(assert (=> bs!660808 (= (= lt!1589239 lt!1589053) (= lambda!145228 lambda!145175))))

(assert (=> bs!660804 (= (= lt!1589239 lt!1588594) (= lambda!145228 lambda!145165))))

(assert (=> bs!660811 (not (= lambda!145228 lambda!145179))))

(assert (=> bs!660807 (= (= lt!1589239 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145228 lambda!145193))))

(assert (=> bs!660795 (= (= lt!1589239 lt!1588971) (= lambda!145228 lambda!145161))))

(assert (=> bs!660812 (= (= lt!1589239 lt!1589063) (= lambda!145228 lambda!145176))))

(assert (=> b!4378460 true))

(declare-fun bs!660835 () Bool)

(declare-fun d!1303433 () Bool)

(assert (= bs!660835 (and d!1303433 b!4378460)))

(declare-fun lt!1589250 () ListMap!2385)

(declare-fun lambda!145231 () Int)

(assert (=> bs!660835 (= (= lt!1589250 lt!1589239) (= lambda!145231 lambda!145228))))

(declare-fun bs!660837 () Bool)

(assert (= bs!660837 (and d!1303433 d!1303403)))

(assert (=> bs!660837 (= (= lt!1589250 lt!1589215) (= lambda!145231 lambda!145218))))

(declare-fun bs!660839 () Bool)

(assert (= bs!660839 (and d!1303433 d!1303179)))

(assert (=> bs!660839 (= (= lt!1589250 lt!1588922) (= lambda!145231 lambda!145155))))

(declare-fun bs!660840 () Bool)

(assert (= bs!660840 (and d!1303433 b!4378412)))

(assert (=> bs!660840 (= (= lt!1589250 lt!1589205) (= lambda!145231 lambda!145217))))

(declare-fun bs!660841 () Bool)

(assert (= bs!660841 (and d!1303433 b!4378459)))

(assert (=> bs!660841 (= (= lt!1589250 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145231 lambda!145226))))

(declare-fun bs!660843 () Bool)

(assert (= bs!660843 (and d!1303433 b!4378047)))

(assert (=> bs!660843 (= (= lt!1589250 (+!790 lt!1588594 lt!1588602)) (= lambda!145231 lambda!145160))))

(declare-fun bs!660844 () Bool)

(assert (= bs!660844 (and d!1303433 b!4378411)))

(assert (=> bs!660844 (= (= lt!1589250 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145231 lambda!145213))))

(declare-fun bs!660846 () Bool)

(assert (= bs!660846 (and d!1303433 d!1303361)))

(assert (=> bs!660846 (= (= lt!1589250 lt!1589152) (= lambda!145231 lambda!145195))))

(declare-fun bs!660848 () Bool)

(assert (= bs!660848 (and d!1303433 b!4378290)))

(assert (=> bs!660848 (= (= lt!1589250 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145231 lambda!145192))))

(declare-fun bs!660849 () Bool)

(assert (= bs!660849 (and d!1303433 d!1303255)))

(assert (=> bs!660849 (= (= lt!1589250 lt!1588981) (= lambda!145231 lambda!145162))))

(declare-fun bs!660850 () Bool)

(assert (= bs!660850 (and d!1303433 d!1303383)))

(assert (=> bs!660850 (= (= lt!1589250 lt!1589011) (= lambda!145231 lambda!145200))))

(declare-fun bs!660851 () Bool)

(assert (= bs!660851 (and d!1303433 d!1303265)))

(assert (=> bs!660851 (= (= lt!1589250 lt!1589021) (= lambda!145231 lambda!145167))))

(declare-fun bs!660852 () Bool)

(assert (= bs!660852 (and d!1303433 b!4377997)))

(assert (=> bs!660852 (= (= lt!1589250 lt!1588912) (= lambda!145231 lambda!145154))))

(declare-fun bs!660853 () Bool)

(assert (= bs!660853 (and d!1303433 b!4378063)))

(assert (=> bs!660853 (= (= lt!1589250 lt!1589011) (= lambda!145231 lambda!145166))))

(declare-fun bs!660854 () Bool)

(assert (= bs!660854 (and d!1303433 b!4378062)))

(assert (=> bs!660854 (= (= lt!1589250 lt!1588594) (= lambda!145231 lambda!145164))))

(declare-fun bs!660855 () Bool)

(assert (= bs!660855 (and d!1303433 b!4377996)))

(assert (=> bs!660855 (= (= lt!1589250 lt!1588594) (= lambda!145231 lambda!145152))))

(declare-fun bs!660856 () Bool)

(assert (= bs!660856 (and d!1303433 b!4378291)))

(assert (=> bs!660856 (= (= lt!1589250 lt!1589142) (= lambda!145231 lambda!145194))))

(declare-fun bs!660857 () Bool)

(assert (= bs!660857 (and d!1303433 b!4378090)))

(assert (=> bs!660857 (= (= lt!1589250 lt!1588594) (= lambda!145231 lambda!145174))))

(assert (=> bs!660840 (= (= lt!1589250 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145231 lambda!145215))))

(assert (=> bs!660835 (= (= lt!1589250 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145231 lambda!145227))))

(declare-fun bs!660858 () Bool)

(assert (= bs!660858 (and d!1303433 b!4378046)))

(assert (=> bs!660858 (= (= lt!1589250 (+!790 lt!1588594 lt!1588602)) (= lambda!145231 lambda!145159))))

(assert (=> bs!660852 (= (= lt!1589250 lt!1588594) (= lambda!145231 lambda!145153))))

(declare-fun bs!660859 () Bool)

(assert (= bs!660859 (and d!1303433 b!4378089)))

(assert (=> bs!660859 (= (= lt!1589250 lt!1588594) (= lambda!145231 lambda!145173))))

(assert (=> bs!660857 (= (= lt!1589250 lt!1589053) (= lambda!145231 lambda!145175))))

(assert (=> bs!660853 (= (= lt!1589250 lt!1588594) (= lambda!145231 lambda!145165))))

(declare-fun bs!660860 () Bool)

(assert (= bs!660860 (and d!1303433 d!1303299)))

(assert (=> bs!660860 (not (= lambda!145231 lambda!145179))))

(assert (=> bs!660856 (= (= lt!1589250 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145231 lambda!145193))))

(assert (=> bs!660843 (= (= lt!1589250 lt!1588971) (= lambda!145231 lambda!145161))))

(declare-fun bs!660861 () Bool)

(assert (= bs!660861 (and d!1303433 d!1303283)))

(assert (=> bs!660861 (= (= lt!1589250 lt!1589063) (= lambda!145231 lambda!145176))))

(assert (=> d!1303433 true))

(declare-fun b!4378457 () Bool)

(declare-fun e!2725417 () Bool)

(assert (=> b!4378457 (= e!2725417 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) lambda!145228))))

(declare-fun bm!304505 () Bool)

(declare-fun call!304511 () Bool)

(declare-fun c!744599 () Bool)

(assert (=> bm!304505 (= call!304511 (forall!9273 (ite c!744599 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (t!356206 (_2!27638 (h!54754 (toList!3141 lm!1707))))) (ite c!744599 lambda!145226 lambda!145228)))))

(declare-fun b!4378458 () Bool)

(declare-fun e!2725415 () Bool)

(assert (=> b!4378458 (= e!2725415 (invariantList!723 (toList!3142 lt!1589250)))))

(declare-fun bm!304506 () Bool)

(declare-fun call!304512 () Unit!75116)

(assert (=> bm!304506 (= call!304512 (lemmaContainsAllItsOwnKeys!105 (extractMap!638 (t!356207 (toList!3141 lm!1707)))))))

(declare-fun e!2725416 () ListMap!2385)

(assert (=> b!4378459 (= e!2725416 (extractMap!638 (t!356207 (toList!3141 lm!1707))))))

(declare-fun lt!1589249 () Unit!75116)

(assert (=> b!4378459 (= lt!1589249 call!304512)))

(assert (=> b!4378459 call!304511))

(declare-fun lt!1589256 () Unit!75116)

(assert (=> b!4378459 (= lt!1589256 lt!1589249)))

(declare-fun call!304510 () Bool)

(assert (=> b!4378459 call!304510))

(declare-fun lt!1589254 () Unit!75116)

(declare-fun Unit!75269 () Unit!75116)

(assert (=> b!4378459 (= lt!1589254 Unit!75269)))

(assert (=> d!1303433 e!2725415))

(declare-fun res!1803045 () Bool)

(assert (=> d!1303433 (=> (not res!1803045) (not e!2725415))))

(assert (=> d!1303433 (= res!1803045 (forall!9273 (_2!27638 (h!54754 (toList!3141 lm!1707))) lambda!145231))))

(assert (=> d!1303433 (= lt!1589250 e!2725416)))

(assert (=> d!1303433 (= c!744599 ((_ is Nil!49156) (_2!27638 (h!54754 (toList!3141 lm!1707)))))))

(assert (=> d!1303433 (noDuplicateKeys!579 (_2!27638 (h!54754 (toList!3141 lm!1707))))))

(assert (=> d!1303433 (= (addToMapMapFromBucket!260 (_2!27638 (h!54754 (toList!3141 lm!1707))) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) lt!1589250)))

(assert (=> b!4378460 (= e!2725416 lt!1589239)))

(declare-fun lt!1589242 () ListMap!2385)

(assert (=> b!4378460 (= lt!1589242 (+!790 (extractMap!638 (t!356207 (toList!3141 lm!1707))) (h!54753 (_2!27638 (h!54754 (toList!3141 lm!1707))))))))

(assert (=> b!4378460 (= lt!1589239 (addToMapMapFromBucket!260 (t!356206 (_2!27638 (h!54754 (toList!3141 lm!1707)))) (+!790 (extractMap!638 (t!356207 (toList!3141 lm!1707))) (h!54753 (_2!27638 (h!54754 (toList!3141 lm!1707)))))))))

(declare-fun lt!1589238 () Unit!75116)

(assert (=> b!4378460 (= lt!1589238 call!304512)))

(assert (=> b!4378460 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) lambda!145227)))

(declare-fun lt!1589248 () Unit!75116)

(assert (=> b!4378460 (= lt!1589248 lt!1589238)))

(assert (=> b!4378460 (forall!9273 (toList!3142 lt!1589242) lambda!145228)))

(declare-fun lt!1589236 () Unit!75116)

(declare-fun Unit!75270 () Unit!75116)

(assert (=> b!4378460 (= lt!1589236 Unit!75270)))

(assert (=> b!4378460 call!304511))

(declare-fun lt!1589251 () Unit!75116)

(declare-fun Unit!75271 () Unit!75116)

(assert (=> b!4378460 (= lt!1589251 Unit!75271)))

(declare-fun lt!1589241 () Unit!75116)

(declare-fun Unit!75272 () Unit!75116)

(assert (=> b!4378460 (= lt!1589241 Unit!75272)))

(declare-fun lt!1589255 () Unit!75116)

(assert (=> b!4378460 (= lt!1589255 (forallContained!1911 (toList!3142 lt!1589242) lambda!145228 (h!54753 (_2!27638 (h!54754 (toList!3141 lm!1707))))))))

(assert (=> b!4378460 (contains!11488 lt!1589242 (_1!27637 (h!54753 (_2!27638 (h!54754 (toList!3141 lm!1707))))))))

(declare-fun lt!1589252 () Unit!75116)

(declare-fun Unit!75273 () Unit!75116)

(assert (=> b!4378460 (= lt!1589252 Unit!75273)))

(assert (=> b!4378460 (contains!11488 lt!1589239 (_1!27637 (h!54753 (_2!27638 (h!54754 (toList!3141 lm!1707))))))))

(declare-fun lt!1589237 () Unit!75116)

(declare-fun Unit!75274 () Unit!75116)

(assert (=> b!4378460 (= lt!1589237 Unit!75274)))

(assert (=> b!4378460 (forall!9273 (_2!27638 (h!54754 (toList!3141 lm!1707))) lambda!145228)))

(declare-fun lt!1589245 () Unit!75116)

(declare-fun Unit!75275 () Unit!75116)

(assert (=> b!4378460 (= lt!1589245 Unit!75275)))

(assert (=> b!4378460 call!304510))

(declare-fun lt!1589243 () Unit!75116)

(declare-fun Unit!75276 () Unit!75116)

(assert (=> b!4378460 (= lt!1589243 Unit!75276)))

(declare-fun lt!1589240 () Unit!75116)

(declare-fun Unit!75277 () Unit!75116)

(assert (=> b!4378460 (= lt!1589240 Unit!75277)))

(declare-fun lt!1589247 () Unit!75116)

(assert (=> b!4378460 (= lt!1589247 (addForallContainsKeyThenBeforeAdding!105 (extractMap!638 (t!356207 (toList!3141 lm!1707))) lt!1589239 (_1!27637 (h!54753 (_2!27638 (h!54754 (toList!3141 lm!1707))))) (_2!27637 (h!54753 (_2!27638 (h!54754 (toList!3141 lm!1707)))))))))

(assert (=> b!4378460 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) lambda!145228)))

(declare-fun lt!1589235 () Unit!75116)

(assert (=> b!4378460 (= lt!1589235 lt!1589247)))

(assert (=> b!4378460 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) lambda!145228)))

(declare-fun lt!1589246 () Unit!75116)

(declare-fun Unit!75278 () Unit!75116)

(assert (=> b!4378460 (= lt!1589246 Unit!75278)))

(declare-fun res!1803044 () Bool)

(assert (=> b!4378460 (= res!1803044 (forall!9273 (_2!27638 (h!54754 (toList!3141 lm!1707))) lambda!145228))))

(assert (=> b!4378460 (=> (not res!1803044) (not e!2725417))))

(assert (=> b!4378460 e!2725417))

(declare-fun lt!1589253 () Unit!75116)

(declare-fun Unit!75279 () Unit!75116)

(assert (=> b!4378460 (= lt!1589253 Unit!75279)))

(declare-fun b!4378461 () Bool)

(declare-fun res!1803043 () Bool)

(assert (=> b!4378461 (=> (not res!1803043) (not e!2725415))))

(assert (=> b!4378461 (= res!1803043 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) lambda!145231))))

(declare-fun bm!304507 () Bool)

(assert (=> bm!304507 (= call!304510 (forall!9273 (ite c!744599 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (toList!3142 lt!1589242)) (ite c!744599 lambda!145226 lambda!145228)))))

(assert (= (and d!1303433 c!744599) b!4378459))

(assert (= (and d!1303433 (not c!744599)) b!4378460))

(assert (= (and b!4378460 res!1803044) b!4378457))

(assert (= (or b!4378459 b!4378460) bm!304506))

(assert (= (or b!4378459 b!4378460) bm!304505))

(assert (= (or b!4378459 b!4378460) bm!304507))

(assert (= (and d!1303433 res!1803045) b!4378461))

(assert (= (and b!4378461 res!1803043) b!4378458))

(declare-fun m!5014221 () Bool)

(assert (=> b!4378458 m!5014221))

(declare-fun m!5014223 () Bool)

(assert (=> b!4378457 m!5014223))

(declare-fun m!5014225 () Bool)

(assert (=> b!4378461 m!5014225))

(declare-fun m!5014227 () Bool)

(assert (=> bm!304507 m!5014227))

(assert (=> b!4378460 m!5014223))

(assert (=> b!4378460 m!5014223))

(assert (=> b!4378460 m!5012963))

(declare-fun m!5014229 () Bool)

(assert (=> b!4378460 m!5014229))

(declare-fun m!5014231 () Bool)

(assert (=> b!4378460 m!5014231))

(declare-fun m!5014233 () Bool)

(assert (=> b!4378460 m!5014233))

(declare-fun m!5014235 () Bool)

(assert (=> b!4378460 m!5014235))

(declare-fun m!5014237 () Bool)

(assert (=> b!4378460 m!5014237))

(assert (=> b!4378460 m!5014237))

(assert (=> b!4378460 m!5012963))

(assert (=> b!4378460 m!5014231))

(declare-fun m!5014239 () Bool)

(assert (=> b!4378460 m!5014239))

(declare-fun m!5014241 () Bool)

(assert (=> b!4378460 m!5014241))

(declare-fun m!5014243 () Bool)

(assert (=> b!4378460 m!5014243))

(declare-fun m!5014245 () Bool)

(assert (=> b!4378460 m!5014245))

(assert (=> bm!304506 m!5012963))

(declare-fun m!5014247 () Bool)

(assert (=> bm!304506 m!5014247))

(declare-fun m!5014249 () Bool)

(assert (=> d!1303433 m!5014249))

(assert (=> d!1303433 m!5013783))

(declare-fun m!5014251 () Bool)

(assert (=> bm!304505 m!5014251))

(assert (=> b!4377876 d!1303433))

(assert (=> b!4377876 d!1303259))

(declare-fun d!1303447 () Bool)

(assert (=> d!1303447 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588597) key!3918))))

(declare-fun lt!1589284 () Unit!75116)

(declare-fun choose!27310 (List!49280 K!10515) Unit!75116)

(assert (=> d!1303447 (= lt!1589284 (choose!27310 (toList!3142 lt!1588597) key!3918))))

(assert (=> d!1303447 (invariantList!723 (toList!3142 lt!1588597))))

(assert (=> d!1303447 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!455 (toList!3142 lt!1588597) key!3918) lt!1589284)))

(declare-fun bs!660877 () Bool)

(assert (= bs!660877 d!1303447))

(assert (=> bs!660877 m!5013663))

(assert (=> bs!660877 m!5013663))

(assert (=> bs!660877 m!5013665))

(declare-fun m!5014253 () Bool)

(assert (=> bs!660877 m!5014253))

(declare-fun m!5014255 () Bool)

(assert (=> bs!660877 m!5014255))

(assert (=> b!4378072 d!1303447))

(declare-fun d!1303449 () Bool)

(assert (=> d!1303449 (= (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588597) key!3918)) (not (isEmpty!28245 (getValueByKey!545 (toList!3142 lt!1588597) key!3918))))))

(declare-fun bs!660878 () Bool)

(assert (= bs!660878 d!1303449))

(assert (=> bs!660878 m!5013663))

(declare-fun m!5014265 () Bool)

(assert (=> bs!660878 m!5014265))

(assert (=> b!4378072 d!1303449))

(declare-fun d!1303451 () Bool)

(declare-fun c!744603 () Bool)

(assert (=> d!1303451 (= c!744603 (and ((_ is Cons!49156) (toList!3142 lt!1588597)) (= (_1!27637 (h!54753 (toList!3142 lt!1588597))) key!3918)))))

(declare-fun e!2725427 () Option!10559)

(assert (=> d!1303451 (= (getValueByKey!545 (toList!3142 lt!1588597) key!3918) e!2725427)))

(declare-fun b!4378476 () Bool)

(declare-fun e!2725428 () Option!10559)

(assert (=> b!4378476 (= e!2725427 e!2725428)))

(declare-fun c!744604 () Bool)

(assert (=> b!4378476 (= c!744604 (and ((_ is Cons!49156) (toList!3142 lt!1588597)) (not (= (_1!27637 (h!54753 (toList!3142 lt!1588597))) key!3918))))))

(declare-fun b!4378475 () Bool)

(assert (=> b!4378475 (= e!2725427 (Some!10558 (_2!27637 (h!54753 (toList!3142 lt!1588597)))))))

(declare-fun b!4378477 () Bool)

(assert (=> b!4378477 (= e!2725428 (getValueByKey!545 (t!356206 (toList!3142 lt!1588597)) key!3918))))

(declare-fun b!4378478 () Bool)

(assert (=> b!4378478 (= e!2725428 None!10558)))

(assert (= (and d!1303451 c!744603) b!4378475))

(assert (= (and d!1303451 (not c!744603)) b!4378476))

(assert (= (and b!4378476 c!744604) b!4378477))

(assert (= (and b!4378476 (not c!744604)) b!4378478))

(declare-fun m!5014281 () Bool)

(assert (=> b!4378477 m!5014281))

(assert (=> b!4378072 d!1303451))

(declare-fun d!1303453 () Bool)

(assert (=> d!1303453 (contains!11492 (getKeysList!171 (toList!3142 lt!1588597)) key!3918)))

(declare-fun lt!1589288 () Unit!75116)

(declare-fun choose!27311 (List!49280 K!10515) Unit!75116)

(assert (=> d!1303453 (= lt!1589288 (choose!27311 (toList!3142 lt!1588597) key!3918))))

(assert (=> d!1303453 (invariantList!723 (toList!3142 lt!1588597))))

(assert (=> d!1303453 (= (lemmaInListThenGetKeysListContains!168 (toList!3142 lt!1588597) key!3918) lt!1589288)))

(declare-fun bs!660880 () Bool)

(assert (= bs!660880 d!1303453))

(assert (=> bs!660880 m!5013655))

(assert (=> bs!660880 m!5013655))

(declare-fun m!5014299 () Bool)

(assert (=> bs!660880 m!5014299))

(declare-fun m!5014301 () Bool)

(assert (=> bs!660880 m!5014301))

(assert (=> bs!660880 m!5014255))

(assert (=> b!4378072 d!1303453))

(declare-fun d!1303461 () Bool)

(declare-fun c!744607 () Bool)

(assert (=> d!1303461 (= c!744607 ((_ is Nil!49159) (keys!16669 lt!1588610)))))

(declare-fun e!2725439 () (InoxSet K!10515))

(assert (=> d!1303461 (= (content!7811 (keys!16669 lt!1588610)) e!2725439)))

(declare-fun b!4378491 () Bool)

(assert (=> b!4378491 (= e!2725439 ((as const (Array K!10515 Bool)) false))))

(declare-fun b!4378492 () Bool)

(assert (=> b!4378492 (= e!2725439 ((_ map or) (store ((as const (Array K!10515 Bool)) false) (h!54758 (keys!16669 lt!1588610)) true) (content!7811 (t!356209 (keys!16669 lt!1588610)))))))

(assert (= (and d!1303461 c!744607) b!4378491))

(assert (= (and d!1303461 (not c!744607)) b!4378492))

(declare-fun m!5014305 () Bool)

(assert (=> b!4378492 m!5014305))

(declare-fun m!5014307 () Bool)

(assert (=> b!4378492 m!5014307))

(assert (=> b!4378059 d!1303461))

(assert (=> b!4378059 d!1303315))

(declare-fun d!1303465 () Bool)

(declare-fun c!744608 () Bool)

(assert (=> d!1303465 (= c!744608 ((_ is Nil!49159) (keys!16669 lt!1589006)))))

(declare-fun e!2725442 () (InoxSet K!10515))

(assert (=> d!1303465 (= (content!7811 (keys!16669 lt!1589006)) e!2725442)))

(declare-fun b!4378495 () Bool)

(assert (=> b!4378495 (= e!2725442 ((as const (Array K!10515 Bool)) false))))

(declare-fun b!4378496 () Bool)

(assert (=> b!4378496 (= e!2725442 ((_ map or) (store ((as const (Array K!10515 Bool)) false) (h!54758 (keys!16669 lt!1589006)) true) (content!7811 (t!356209 (keys!16669 lt!1589006)))))))

(assert (= (and d!1303465 c!744608) b!4378495))

(assert (= (and d!1303465 (not c!744608)) b!4378496))

(declare-fun m!5014311 () Bool)

(assert (=> b!4378496 m!5014311))

(declare-fun m!5014315 () Bool)

(assert (=> b!4378496 m!5014315))

(assert (=> b!4378059 d!1303465))

(declare-fun bs!660881 () Bool)

(declare-fun b!4378500 () Bool)

(assert (= bs!660881 (and b!4378500 b!4378158)))

(declare-fun lambda!145234 () Int)

(assert (=> bs!660881 (= (= (toList!3142 lt!1589006) (toList!3142 lt!1588610)) (= lambda!145234 lambda!145184))))

(declare-fun bs!660883 () Bool)

(assert (= bs!660883 (and b!4378500 b!4378455)))

(assert (=> bs!660883 (= (= (toList!3142 lt!1589006) (toList!3142 lt!1588598)) (= lambda!145234 lambda!145224))))

(assert (=> b!4378500 true))

(declare-fun bs!660884 () Bool)

(declare-fun b!4378501 () Bool)

(assert (= bs!660884 (and b!4378501 b!4378159)))

(declare-fun lambda!145235 () Int)

(assert (=> bs!660884 (= lambda!145235 lambda!145185)))

(declare-fun bs!660885 () Bool)

(assert (= bs!660885 (and b!4378501 b!4378456)))

(assert (=> bs!660885 (= lambda!145235 lambda!145225)))

(declare-fun d!1303469 () Bool)

(declare-fun e!2725445 () Bool)

(assert (=> d!1303469 e!2725445))

(declare-fun res!1803067 () Bool)

(assert (=> d!1303469 (=> (not res!1803067) (not e!2725445))))

(declare-fun lt!1589289 () List!49283)

(assert (=> d!1303469 (= res!1803067 (noDuplicate!619 lt!1589289))))

(assert (=> d!1303469 (= lt!1589289 (getKeysList!171 (toList!3142 lt!1589006)))))

(assert (=> d!1303469 (= (keys!16669 lt!1589006) lt!1589289)))

(declare-fun b!4378499 () Bool)

(declare-fun res!1803065 () Bool)

(assert (=> b!4378499 (=> (not res!1803065) (not e!2725445))))

(assert (=> b!4378499 (= res!1803065 (= (length!94 lt!1589289) (length!95 (toList!3142 lt!1589006))))))

(declare-fun res!1803066 () Bool)

(assert (=> b!4378500 (=> (not res!1803066) (not e!2725445))))

(assert (=> b!4378500 (= res!1803066 (forall!9274 lt!1589289 lambda!145234))))

(assert (=> b!4378501 (= e!2725445 (= (content!7811 lt!1589289) (content!7811 (map!10705 (toList!3142 lt!1589006) lambda!145235))))))

(assert (= (and d!1303469 res!1803067) b!4378499))

(assert (= (and b!4378499 res!1803065) b!4378500))

(assert (= (and b!4378500 res!1803066) b!4378501))

(declare-fun m!5014323 () Bool)

(assert (=> d!1303469 m!5014323))

(declare-fun m!5014325 () Bool)

(assert (=> d!1303469 m!5014325))

(declare-fun m!5014329 () Bool)

(assert (=> b!4378499 m!5014329))

(declare-fun m!5014331 () Bool)

(assert (=> b!4378499 m!5014331))

(declare-fun m!5014335 () Bool)

(assert (=> b!4378500 m!5014335))

(declare-fun m!5014337 () Bool)

(assert (=> b!4378501 m!5014337))

(declare-fun m!5014339 () Bool)

(assert (=> b!4378501 m!5014339))

(assert (=> b!4378501 m!5014339))

(declare-fun m!5014341 () Bool)

(assert (=> b!4378501 m!5014341))

(assert (=> b!4378059 d!1303469))

(declare-fun d!1303477 () Bool)

(declare-fun c!744615 () Bool)

(assert (=> d!1303477 (= c!744615 ((_ is Nil!49157) (toList!3141 lm!1707)))))

(declare-fun e!2725454 () (InoxSet tuple2!48688))

(assert (=> d!1303477 (= (content!7814 (toList!3141 lm!1707)) e!2725454)))

(declare-fun b!4378516 () Bool)

(assert (=> b!4378516 (= e!2725454 ((as const (Array tuple2!48688 Bool)) false))))

(declare-fun b!4378517 () Bool)

(assert (=> b!4378517 (= e!2725454 ((_ map or) (store ((as const (Array tuple2!48688 Bool)) false) (h!54754 (toList!3141 lm!1707)) true) (content!7814 (t!356207 (toList!3141 lm!1707)))))))

(assert (= (and d!1303477 c!744615) b!4378516))

(assert (= (and d!1303477 (not c!744615)) b!4378517))

(declare-fun m!5014347 () Bool)

(assert (=> b!4378517 m!5014347))

(declare-fun m!5014349 () Bool)

(assert (=> b!4378517 m!5014349))

(assert (=> d!1303293 d!1303477))

(declare-fun b!4378518 () Bool)

(declare-fun e!2725455 () List!49280)

(assert (=> b!4378518 (= e!2725455 (t!356206 (t!356206 lt!1588595)))))

(declare-fun d!1303483 () Bool)

(declare-fun lt!1589290 () List!49280)

(assert (=> d!1303483 (not (containsKey!849 lt!1589290 key!3918))))

(assert (=> d!1303483 (= lt!1589290 e!2725455)))

(declare-fun c!744617 () Bool)

(assert (=> d!1303483 (= c!744617 (and ((_ is Cons!49156) (t!356206 lt!1588595)) (= (_1!27637 (h!54753 (t!356206 lt!1588595))) key!3918)))))

(assert (=> d!1303483 (noDuplicateKeys!579 (t!356206 lt!1588595))))

(assert (=> d!1303483 (= (removePairForKey!547 (t!356206 lt!1588595) key!3918) lt!1589290)))

(declare-fun b!4378520 () Bool)

(declare-fun e!2725456 () List!49280)

(assert (=> b!4378520 (= e!2725456 (Cons!49156 (h!54753 (t!356206 lt!1588595)) (removePairForKey!547 (t!356206 (t!356206 lt!1588595)) key!3918)))))

(declare-fun b!4378521 () Bool)

(assert (=> b!4378521 (= e!2725456 Nil!49156)))

(declare-fun b!4378519 () Bool)

(assert (=> b!4378519 (= e!2725455 e!2725456)))

(declare-fun c!744616 () Bool)

(assert (=> b!4378519 (= c!744616 ((_ is Cons!49156) (t!356206 lt!1588595)))))

(assert (= (and d!1303483 c!744617) b!4378518))

(assert (= (and d!1303483 (not c!744617)) b!4378519))

(assert (= (and b!4378519 c!744616) b!4378520))

(assert (= (and b!4378519 (not c!744616)) b!4378521))

(declare-fun m!5014355 () Bool)

(assert (=> d!1303483 m!5014355))

(declare-fun m!5014357 () Bool)

(assert (=> d!1303483 m!5014357))

(declare-fun m!5014359 () Bool)

(assert (=> b!4378520 m!5014359))

(assert (=> b!4378123 d!1303483))

(declare-fun d!1303487 () Bool)

(declare-fun res!1803080 () Bool)

(declare-fun e!2725470 () Bool)

(assert (=> d!1303487 (=> res!1803080 e!2725470)))

(assert (=> d!1303487 (= res!1803080 (and ((_ is Cons!49156) (toList!3142 lt!1588610)) (= (_1!27637 (h!54753 (toList!3142 lt!1588610))) key!3918)))))

(assert (=> d!1303487 (= (containsKey!848 (toList!3142 lt!1588610) key!3918) e!2725470)))

(declare-fun b!4378538 () Bool)

(declare-fun e!2725471 () Bool)

(assert (=> b!4378538 (= e!2725470 e!2725471)))

(declare-fun res!1803081 () Bool)

(assert (=> b!4378538 (=> (not res!1803081) (not e!2725471))))

(assert (=> b!4378538 (= res!1803081 ((_ is Cons!49156) (toList!3142 lt!1588610)))))

(declare-fun b!4378539 () Bool)

(assert (=> b!4378539 (= e!2725471 (containsKey!848 (t!356206 (toList!3142 lt!1588610)) key!3918))))

(assert (= (and d!1303487 (not res!1803080)) b!4378538))

(assert (= (and b!4378538 res!1803081) b!4378539))

(declare-fun m!5014377 () Bool)

(assert (=> b!4378539 m!5014377))

(assert (=> d!1303173 d!1303487))

(declare-fun d!1303499 () Bool)

(declare-fun res!1803082 () Bool)

(declare-fun e!2725472 () Bool)

(assert (=> d!1303499 (=> res!1803082 e!2725472)))

(assert (=> d!1303499 (= res!1803082 ((_ is Nil!49157) (toList!3141 (+!789 lm!1707 (tuple2!48689 hash!377 newBucket!200)))))))

(assert (=> d!1303499 (= (forall!9271 (toList!3141 (+!789 lm!1707 (tuple2!48689 hash!377 newBucket!200))) lambda!145061) e!2725472)))

(declare-fun b!4378540 () Bool)

(declare-fun e!2725473 () Bool)

(assert (=> b!4378540 (= e!2725472 e!2725473)))

(declare-fun res!1803083 () Bool)

(assert (=> b!4378540 (=> (not res!1803083) (not e!2725473))))

(assert (=> b!4378540 (= res!1803083 (dynLambda!20709 lambda!145061 (h!54754 (toList!3141 (+!789 lm!1707 (tuple2!48689 hash!377 newBucket!200))))))))

(declare-fun b!4378541 () Bool)

(assert (=> b!4378541 (= e!2725473 (forall!9271 (t!356207 (toList!3141 (+!789 lm!1707 (tuple2!48689 hash!377 newBucket!200)))) lambda!145061))))

(assert (= (and d!1303499 (not res!1803082)) b!4378540))

(assert (= (and b!4378540 res!1803083) b!4378541))

(declare-fun b_lambda!134983 () Bool)

(assert (=> (not b_lambda!134983) (not b!4378540)))

(declare-fun m!5014379 () Bool)

(assert (=> b!4378540 m!5014379))

(declare-fun m!5014381 () Bool)

(assert (=> b!4378541 m!5014381))

(assert (=> d!1303303 d!1303499))

(declare-fun d!1303501 () Bool)

(declare-fun e!2725474 () Bool)

(assert (=> d!1303501 e!2725474))

(declare-fun res!1803085 () Bool)

(assert (=> d!1303501 (=> (not res!1803085) (not e!2725474))))

(declare-fun lt!1589291 () ListLongMap!1791)

(assert (=> d!1303501 (= res!1803085 (contains!11489 lt!1589291 (_1!27638 (tuple2!48689 hash!377 newBucket!200))))))

(declare-fun lt!1589293 () List!49281)

(assert (=> d!1303501 (= lt!1589291 (ListLongMap!1792 lt!1589293))))

(declare-fun lt!1589294 () Unit!75116)

(declare-fun lt!1589292 () Unit!75116)

(assert (=> d!1303501 (= lt!1589294 lt!1589292)))

(assert (=> d!1303501 (= (getValueByKey!546 lt!1589293 (_1!27638 (tuple2!48689 hash!377 newBucket!200))) (Some!10559 (_2!27638 (tuple2!48689 hash!377 newBucket!200))))))

(assert (=> d!1303501 (= lt!1589292 (lemmaContainsTupThenGetReturnValue!310 lt!1589293 (_1!27638 (tuple2!48689 hash!377 newBucket!200)) (_2!27638 (tuple2!48689 hash!377 newBucket!200))))))

(assert (=> d!1303501 (= lt!1589293 (insertStrictlySorted!177 (toList!3141 lm!1707) (_1!27638 (tuple2!48689 hash!377 newBucket!200)) (_2!27638 (tuple2!48689 hash!377 newBucket!200))))))

(assert (=> d!1303501 (= (+!789 lm!1707 (tuple2!48689 hash!377 newBucket!200)) lt!1589291)))

(declare-fun b!4378542 () Bool)

(declare-fun res!1803084 () Bool)

(assert (=> b!4378542 (=> (not res!1803084) (not e!2725474))))

(assert (=> b!4378542 (= res!1803084 (= (getValueByKey!546 (toList!3141 lt!1589291) (_1!27638 (tuple2!48689 hash!377 newBucket!200))) (Some!10559 (_2!27638 (tuple2!48689 hash!377 newBucket!200)))))))

(declare-fun b!4378543 () Bool)

(assert (=> b!4378543 (= e!2725474 (contains!11487 (toList!3141 lt!1589291) (tuple2!48689 hash!377 newBucket!200)))))

(assert (= (and d!1303501 res!1803085) b!4378542))

(assert (= (and b!4378542 res!1803084) b!4378543))

(declare-fun m!5014383 () Bool)

(assert (=> d!1303501 m!5014383))

(declare-fun m!5014385 () Bool)

(assert (=> d!1303501 m!5014385))

(declare-fun m!5014387 () Bool)

(assert (=> d!1303501 m!5014387))

(declare-fun m!5014389 () Bool)

(assert (=> d!1303501 m!5014389))

(declare-fun m!5014391 () Bool)

(assert (=> b!4378542 m!5014391))

(declare-fun m!5014393 () Bool)

(assert (=> b!4378543 m!5014393))

(assert (=> d!1303303 d!1303501))

(declare-fun d!1303503 () Bool)

(assert (=> d!1303503 (forall!9271 (toList!3141 (+!789 lm!1707 (tuple2!48689 hash!377 newBucket!200))) lambda!145061)))

(assert (=> d!1303503 true))

(declare-fun _$31!271 () Unit!75116)

(assert (=> d!1303503 (= (choose!27302 lm!1707 lambda!145061 hash!377 newBucket!200) _$31!271)))

(declare-fun bs!660889 () Bool)

(assert (= bs!660889 d!1303503))

(assert (=> bs!660889 m!5013769))

(assert (=> bs!660889 m!5013771))

(assert (=> d!1303303 d!1303503))

(assert (=> d!1303303 d!1303169))

(declare-fun d!1303517 () Bool)

(declare-fun lt!1589305 () Bool)

(assert (=> d!1303517 (= lt!1589305 (select (content!7813 (toList!3142 lt!1588960)) lt!1588602))))

(declare-fun e!2725497 () Bool)

(assert (=> d!1303517 (= lt!1589305 e!2725497)))

(declare-fun res!1803105 () Bool)

(assert (=> d!1303517 (=> (not res!1803105) (not e!2725497))))

(assert (=> d!1303517 (= res!1803105 ((_ is Cons!49156) (toList!3142 lt!1588960)))))

(assert (=> d!1303517 (= (contains!11493 (toList!3142 lt!1588960) lt!1588602) lt!1589305)))

(declare-fun b!4378570 () Bool)

(declare-fun e!2725498 () Bool)

(assert (=> b!4378570 (= e!2725497 e!2725498)))

(declare-fun res!1803106 () Bool)

(assert (=> b!4378570 (=> res!1803106 e!2725498)))

(assert (=> b!4378570 (= res!1803106 (= (h!54753 (toList!3142 lt!1588960)) lt!1588602))))

(declare-fun b!4378571 () Bool)

(assert (=> b!4378571 (= e!2725498 (contains!11493 (t!356206 (toList!3142 lt!1588960)) lt!1588602))))

(assert (= (and d!1303517 res!1803105) b!4378570))

(assert (= (and b!4378570 (not res!1803106)) b!4378571))

(declare-fun m!5014431 () Bool)

(assert (=> d!1303517 m!5014431))

(declare-fun m!5014433 () Bool)

(assert (=> d!1303517 m!5014433))

(declare-fun m!5014435 () Bool)

(assert (=> b!4378571 m!5014435))

(assert (=> b!4378031 d!1303517))

(declare-fun bs!660890 () Bool)

(declare-fun d!1303519 () Bool)

(assert (= bs!660890 (and d!1303519 b!4378460)))

(declare-fun lambda!145242 () Int)

(assert (=> bs!660890 (= (= lt!1588594 lt!1589239) (= lambda!145242 lambda!145228))))

(declare-fun bs!660891 () Bool)

(assert (= bs!660891 (and d!1303519 d!1303179)))

(assert (=> bs!660891 (= (= lt!1588594 lt!1588922) (= lambda!145242 lambda!145155))))

(declare-fun bs!660892 () Bool)

(assert (= bs!660892 (and d!1303519 b!4378412)))

(assert (=> bs!660892 (= (= lt!1588594 lt!1589205) (= lambda!145242 lambda!145217))))

(declare-fun bs!660893 () Bool)

(assert (= bs!660893 (and d!1303519 b!4378459)))

(assert (=> bs!660893 (= (= lt!1588594 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145242 lambda!145226))))

(declare-fun bs!660894 () Bool)

(assert (= bs!660894 (and d!1303519 b!4378047)))

(assert (=> bs!660894 (= (= lt!1588594 (+!790 lt!1588594 lt!1588602)) (= lambda!145242 lambda!145160))))

(declare-fun bs!660895 () Bool)

(assert (= bs!660895 (and d!1303519 b!4378411)))

(assert (=> bs!660895 (= (= lt!1588594 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145242 lambda!145213))))

(declare-fun bs!660896 () Bool)

(assert (= bs!660896 (and d!1303519 d!1303361)))

(assert (=> bs!660896 (= (= lt!1588594 lt!1589152) (= lambda!145242 lambda!145195))))

(declare-fun bs!660897 () Bool)

(assert (= bs!660897 (and d!1303519 b!4378290)))

(assert (=> bs!660897 (= (= lt!1588594 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145242 lambda!145192))))

(declare-fun bs!660898 () Bool)

(assert (= bs!660898 (and d!1303519 d!1303255)))

(assert (=> bs!660898 (= (= lt!1588594 lt!1588981) (= lambda!145242 lambda!145162))))

(declare-fun bs!660899 () Bool)

(assert (= bs!660899 (and d!1303519 d!1303383)))

(assert (=> bs!660899 (= (= lt!1588594 lt!1589011) (= lambda!145242 lambda!145200))))

(declare-fun bs!660900 () Bool)

(assert (= bs!660900 (and d!1303519 d!1303265)))

(assert (=> bs!660900 (= (= lt!1588594 lt!1589021) (= lambda!145242 lambda!145167))))

(declare-fun bs!660902 () Bool)

(assert (= bs!660902 (and d!1303519 b!4377997)))

(assert (=> bs!660902 (= (= lt!1588594 lt!1588912) (= lambda!145242 lambda!145154))))

(declare-fun bs!660904 () Bool)

(assert (= bs!660904 (and d!1303519 b!4378063)))

(assert (=> bs!660904 (= (= lt!1588594 lt!1589011) (= lambda!145242 lambda!145166))))

(declare-fun bs!660905 () Bool)

(assert (= bs!660905 (and d!1303519 b!4378062)))

(assert (=> bs!660905 (= lambda!145242 lambda!145164)))

(declare-fun bs!660907 () Bool)

(assert (= bs!660907 (and d!1303519 b!4377996)))

(assert (=> bs!660907 (= lambda!145242 lambda!145152)))

(declare-fun bs!660909 () Bool)

(assert (= bs!660909 (and d!1303519 b!4378291)))

(assert (=> bs!660909 (= (= lt!1588594 lt!1589142) (= lambda!145242 lambda!145194))))

(declare-fun bs!660911 () Bool)

(assert (= bs!660911 (and d!1303519 b!4378090)))

(assert (=> bs!660911 (= lambda!145242 lambda!145174)))

(declare-fun bs!660913 () Bool)

(assert (= bs!660913 (and d!1303519 d!1303433)))

(assert (=> bs!660913 (= (= lt!1588594 lt!1589250) (= lambda!145242 lambda!145231))))

(declare-fun bs!660915 () Bool)

(assert (= bs!660915 (and d!1303519 d!1303403)))

(assert (=> bs!660915 (= (= lt!1588594 lt!1589215) (= lambda!145242 lambda!145218))))

(assert (=> bs!660892 (= (= lt!1588594 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145242 lambda!145215))))

(assert (=> bs!660890 (= (= lt!1588594 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145242 lambda!145227))))

(declare-fun bs!660918 () Bool)

(assert (= bs!660918 (and d!1303519 b!4378046)))

(assert (=> bs!660918 (= (= lt!1588594 (+!790 lt!1588594 lt!1588602)) (= lambda!145242 lambda!145159))))

(assert (=> bs!660902 (= lambda!145242 lambda!145153)))

(declare-fun bs!660920 () Bool)

(assert (= bs!660920 (and d!1303519 b!4378089)))

(assert (=> bs!660920 (= lambda!145242 lambda!145173)))

(assert (=> bs!660911 (= (= lt!1588594 lt!1589053) (= lambda!145242 lambda!145175))))

(assert (=> bs!660904 (= lambda!145242 lambda!145165)))

(declare-fun bs!660923 () Bool)

(assert (= bs!660923 (and d!1303519 d!1303299)))

(assert (=> bs!660923 (not (= lambda!145242 lambda!145179))))

(assert (=> bs!660909 (= (= lt!1588594 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145242 lambda!145193))))

(assert (=> bs!660894 (= (= lt!1588594 lt!1588971) (= lambda!145242 lambda!145161))))

(declare-fun bs!660926 () Bool)

(assert (= bs!660926 (and d!1303519 d!1303283)))

(assert (=> bs!660926 (= (= lt!1588594 lt!1589063) (= lambda!145242 lambda!145176))))

(assert (=> d!1303519 true))

(assert (=> d!1303519 (forall!9273 (toList!3142 lt!1588594) lambda!145242)))

(declare-fun lt!1589310 () Unit!75116)

(declare-fun choose!27313 (ListMap!2385) Unit!75116)

(assert (=> d!1303519 (= lt!1589310 (choose!27313 lt!1588594))))

(assert (=> d!1303519 (= (lemmaContainsAllItsOwnKeys!105 lt!1588594) lt!1589310)))

(declare-fun bs!660929 () Bool)

(assert (= bs!660929 d!1303519))

(declare-fun m!5014437 () Bool)

(assert (=> bs!660929 m!5014437))

(declare-fun m!5014439 () Bool)

(assert (=> bs!660929 m!5014439))

(assert (=> bm!304466 d!1303519))

(declare-fun d!1303521 () Bool)

(declare-fun lt!1589312 () Bool)

(assert (=> d!1303521 (= lt!1589312 (select (content!7811 e!2725186) key!3918))))

(declare-fun e!2725499 () Bool)

(assert (=> d!1303521 (= lt!1589312 e!2725499)))

(declare-fun res!1803107 () Bool)

(assert (=> d!1303521 (=> (not res!1803107) (not e!2725499))))

(assert (=> d!1303521 (= res!1803107 ((_ is Cons!49159) e!2725186))))

(assert (=> d!1303521 (= (contains!11492 e!2725186 key!3918) lt!1589312)))

(declare-fun b!4378573 () Bool)

(declare-fun e!2725500 () Bool)

(assert (=> b!4378573 (= e!2725499 e!2725500)))

(declare-fun res!1803108 () Bool)

(assert (=> b!4378573 (=> res!1803108 e!2725500)))

(assert (=> b!4378573 (= res!1803108 (= (h!54758 e!2725186) key!3918))))

(declare-fun b!4378574 () Bool)

(assert (=> b!4378574 (= e!2725500 (contains!11492 (t!356209 e!2725186) key!3918))))

(assert (= (and d!1303521 res!1803107) b!4378573))

(assert (= (and b!4378573 (not res!1803108)) b!4378574))

(declare-fun m!5014441 () Bool)

(assert (=> d!1303521 m!5014441))

(declare-fun m!5014443 () Bool)

(assert (=> d!1303521 m!5014443))

(declare-fun m!5014445 () Bool)

(assert (=> b!4378574 m!5014445))

(assert (=> bm!304474 d!1303521))

(declare-fun d!1303523 () Bool)

(assert (=> d!1303523 (dynLambda!20709 lambda!145061 lt!1588592)))

(assert (=> d!1303523 true))

(declare-fun _$7!1528 () Unit!75116)

(assert (=> d!1303523 (= (choose!27301 (toList!3141 lm!1707) lambda!145061 lt!1588592) _$7!1528)))

(declare-fun b_lambda!134991 () Bool)

(assert (=> (not b_lambda!134991) (not d!1303523)))

(declare-fun bs!660932 () Bool)

(assert (= bs!660932 d!1303523))

(assert (=> bs!660932 m!5013737))

(assert (=> d!1303291 d!1303523))

(assert (=> d!1303291 d!1303169))

(declare-fun d!1303527 () Bool)

(declare-fun res!1803116 () Bool)

(declare-fun e!2725508 () Bool)

(assert (=> d!1303527 (=> res!1803116 e!2725508)))

(assert (=> d!1303527 (= res!1803116 (or ((_ is Nil!49157) (toList!3141 lm!1707)) ((_ is Nil!49157) (t!356207 (toList!3141 lm!1707)))))))

(assert (=> d!1303527 (= (isStrictlySorted!150 (toList!3141 lm!1707)) e!2725508)))

(declare-fun b!4378584 () Bool)

(declare-fun e!2725509 () Bool)

(assert (=> b!4378584 (= e!2725508 e!2725509)))

(declare-fun res!1803117 () Bool)

(assert (=> b!4378584 (=> (not res!1803117) (not e!2725509))))

(assert (=> b!4378584 (= res!1803117 (bvslt (_1!27638 (h!54754 (toList!3141 lm!1707))) (_1!27638 (h!54754 (t!356207 (toList!3141 lm!1707))))))))

(declare-fun b!4378585 () Bool)

(assert (=> b!4378585 (= e!2725509 (isStrictlySorted!150 (t!356207 (toList!3141 lm!1707))))))

(assert (= (and d!1303527 (not res!1803116)) b!4378584))

(assert (= (and b!4378584 res!1803117) b!4378585))

(declare-fun m!5014455 () Bool)

(assert (=> b!4378585 m!5014455))

(assert (=> d!1303171 d!1303527))

(declare-fun bs!660989 () Bool)

(declare-fun b!4378638 () Bool)

(assert (= bs!660989 (and b!4378638 b!4378158)))

(declare-fun lambda!145256 () Int)

(assert (=> bs!660989 (= (= (t!356206 (toList!3142 lt!1588597)) (toList!3142 lt!1588610)) (= lambda!145256 lambda!145184))))

(declare-fun bs!660990 () Bool)

(assert (= bs!660990 (and b!4378638 b!4378455)))

(assert (=> bs!660990 (= (= (t!356206 (toList!3142 lt!1588597)) (toList!3142 lt!1588598)) (= lambda!145256 lambda!145224))))

(declare-fun bs!660991 () Bool)

(assert (= bs!660991 (and b!4378638 b!4378500)))

(assert (=> bs!660991 (= (= (t!356206 (toList!3142 lt!1588597)) (toList!3142 lt!1589006)) (= lambda!145256 lambda!145234))))

(assert (=> b!4378638 true))

(declare-fun bs!660992 () Bool)

(declare-fun b!4378637 () Bool)

(assert (= bs!660992 (and b!4378637 b!4378158)))

(declare-fun lambda!145257 () Int)

(assert (=> bs!660992 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588597)) (t!356206 (toList!3142 lt!1588597))) (toList!3142 lt!1588610)) (= lambda!145257 lambda!145184))))

(declare-fun bs!660993 () Bool)

(assert (= bs!660993 (and b!4378637 b!4378455)))

(assert (=> bs!660993 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588597)) (t!356206 (toList!3142 lt!1588597))) (toList!3142 lt!1588598)) (= lambda!145257 lambda!145224))))

(declare-fun bs!660994 () Bool)

(assert (= bs!660994 (and b!4378637 b!4378500)))

(assert (=> bs!660994 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588597)) (t!356206 (toList!3142 lt!1588597))) (toList!3142 lt!1589006)) (= lambda!145257 lambda!145234))))

(declare-fun bs!660995 () Bool)

(assert (= bs!660995 (and b!4378637 b!4378638)))

(assert (=> bs!660995 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588597)) (t!356206 (toList!3142 lt!1588597))) (t!356206 (toList!3142 lt!1588597))) (= lambda!145257 lambda!145256))))

(assert (=> b!4378637 true))

(declare-fun bs!660997 () Bool)

(declare-fun b!4378634 () Bool)

(assert (= bs!660997 (and b!4378634 b!4378638)))

(declare-fun lambda!145258 () Int)

(assert (=> bs!660997 (= (= (toList!3142 lt!1588597) (t!356206 (toList!3142 lt!1588597))) (= lambda!145258 lambda!145256))))

(declare-fun bs!660998 () Bool)

(assert (= bs!660998 (and b!4378634 b!4378455)))

(assert (=> bs!660998 (= (= (toList!3142 lt!1588597) (toList!3142 lt!1588598)) (= lambda!145258 lambda!145224))))

(declare-fun bs!660999 () Bool)

(assert (= bs!660999 (and b!4378634 b!4378500)))

(assert (=> bs!660999 (= (= (toList!3142 lt!1588597) (toList!3142 lt!1589006)) (= lambda!145258 lambda!145234))))

(declare-fun bs!661000 () Bool)

(assert (= bs!661000 (and b!4378634 b!4378158)))

(assert (=> bs!661000 (= (= (toList!3142 lt!1588597) (toList!3142 lt!1588610)) (= lambda!145258 lambda!145184))))

(declare-fun bs!661001 () Bool)

(assert (= bs!661001 (and b!4378634 b!4378637)))

(assert (=> bs!661001 (= (= (toList!3142 lt!1588597) (Cons!49156 (h!54753 (toList!3142 lt!1588597)) (t!356206 (toList!3142 lt!1588597)))) (= lambda!145258 lambda!145257))))

(assert (=> b!4378634 true))

(declare-fun bs!661002 () Bool)

(declare-fun b!4378641 () Bool)

(assert (= bs!661002 (and b!4378641 b!4378159)))

(declare-fun lambda!145259 () Int)

(assert (=> bs!661002 (= lambda!145259 lambda!145185)))

(declare-fun bs!661003 () Bool)

(assert (= bs!661003 (and b!4378641 b!4378456)))

(assert (=> bs!661003 (= lambda!145259 lambda!145225)))

(declare-fun bs!661004 () Bool)

(assert (= bs!661004 (and b!4378641 b!4378501)))

(assert (=> bs!661004 (= lambda!145259 lambda!145235)))

(declare-fun b!4378633 () Bool)

(declare-fun res!1803148 () Bool)

(declare-fun e!2725541 () Bool)

(assert (=> b!4378633 (=> (not res!1803148) (not e!2725541))))

(declare-fun lt!1589374 () List!49283)

(assert (=> b!4378633 (= res!1803148 (= (length!94 lt!1589374) (length!95 (toList!3142 lt!1588597))))))

(declare-fun res!1803146 () Bool)

(assert (=> b!4378634 (=> (not res!1803146) (not e!2725541))))

(assert (=> b!4378634 (= res!1803146 (forall!9274 lt!1589374 lambda!145258))))

(declare-fun b!4378635 () Bool)

(declare-fun e!2725544 () Unit!75116)

(declare-fun Unit!75293 () Unit!75116)

(assert (=> b!4378635 (= e!2725544 Unit!75293)))

(declare-fun b!4378636 () Bool)

(assert (=> b!4378636 false))

(declare-fun e!2725542 () Unit!75116)

(declare-fun Unit!75294 () Unit!75116)

(assert (=> b!4378636 (= e!2725542 Unit!75294)))

(declare-fun e!2725543 () List!49283)

(assert (=> b!4378637 (= e!2725543 (Cons!49159 (_1!27637 (h!54753 (toList!3142 lt!1588597))) (getKeysList!171 (t!356206 (toList!3142 lt!1588597)))))))

(declare-fun c!744636 () Bool)

(assert (=> b!4378637 (= c!744636 (containsKey!848 (t!356206 (toList!3142 lt!1588597)) (_1!27637 (h!54753 (toList!3142 lt!1588597)))))))

(declare-fun lt!1589375 () Unit!75116)

(assert (=> b!4378637 (= lt!1589375 e!2725542)))

(declare-fun c!744634 () Bool)

(assert (=> b!4378637 (= c!744634 (contains!11492 (getKeysList!171 (t!356206 (toList!3142 lt!1588597))) (_1!27637 (h!54753 (toList!3142 lt!1588597)))))))

(declare-fun lt!1589370 () Unit!75116)

(assert (=> b!4378637 (= lt!1589370 e!2725544)))

(declare-fun lt!1589369 () List!49283)

(assert (=> b!4378637 (= lt!1589369 (getKeysList!171 (t!356206 (toList!3142 lt!1588597))))))

(declare-fun lt!1589372 () Unit!75116)

(declare-fun lemmaForallContainsAddHeadPreserves!42 (List!49280 List!49283 tuple2!48686) Unit!75116)

(assert (=> b!4378637 (= lt!1589372 (lemmaForallContainsAddHeadPreserves!42 (t!356206 (toList!3142 lt!1588597)) lt!1589369 (h!54753 (toList!3142 lt!1588597))))))

(assert (=> b!4378637 (forall!9274 lt!1589369 lambda!145257)))

(declare-fun lt!1589371 () Unit!75116)

(assert (=> b!4378637 (= lt!1589371 lt!1589372)))

(assert (=> b!4378638 false))

(declare-fun lt!1589373 () Unit!75116)

(declare-fun forallContained!1913 (List!49283 Int K!10515) Unit!75116)

(assert (=> b!4378638 (= lt!1589373 (forallContained!1913 (getKeysList!171 (t!356206 (toList!3142 lt!1588597))) lambda!145256 (_1!27637 (h!54753 (toList!3142 lt!1588597)))))))

(declare-fun Unit!75295 () Unit!75116)

(assert (=> b!4378638 (= e!2725544 Unit!75295)))

(declare-fun b!4378639 () Bool)

(declare-fun Unit!75296 () Unit!75116)

(assert (=> b!4378639 (= e!2725542 Unit!75296)))

(declare-fun b!4378640 () Bool)

(assert (=> b!4378640 (= e!2725543 Nil!49159)))

(declare-fun d!1303529 () Bool)

(assert (=> d!1303529 e!2725541))

(declare-fun res!1803147 () Bool)

(assert (=> d!1303529 (=> (not res!1803147) (not e!2725541))))

(assert (=> d!1303529 (= res!1803147 (noDuplicate!619 lt!1589374))))

(assert (=> d!1303529 (= lt!1589374 e!2725543)))

(declare-fun c!744635 () Bool)

(assert (=> d!1303529 (= c!744635 ((_ is Cons!49156) (toList!3142 lt!1588597)))))

(assert (=> d!1303529 (invariantList!723 (toList!3142 lt!1588597))))

(assert (=> d!1303529 (= (getKeysList!171 (toList!3142 lt!1588597)) lt!1589374)))

(assert (=> b!4378641 (= e!2725541 (= (content!7811 lt!1589374) (content!7811 (map!10705 (toList!3142 lt!1588597) lambda!145259))))))

(assert (= (and d!1303529 c!744635) b!4378637))

(assert (= (and d!1303529 (not c!744635)) b!4378640))

(assert (= (and b!4378637 c!744636) b!4378636))

(assert (= (and b!4378637 (not c!744636)) b!4378639))

(assert (= (and b!4378637 c!744634) b!4378638))

(assert (= (and b!4378637 (not c!744634)) b!4378635))

(assert (= (and d!1303529 res!1803147) b!4378633))

(assert (= (and b!4378633 res!1803148) b!4378634))

(assert (= (and b!4378634 res!1803146) b!4378641))

(declare-fun m!5014585 () Bool)

(assert (=> b!4378641 m!5014585))

(declare-fun m!5014587 () Bool)

(assert (=> b!4378641 m!5014587))

(assert (=> b!4378641 m!5014587))

(declare-fun m!5014589 () Bool)

(assert (=> b!4378641 m!5014589))

(declare-fun m!5014591 () Bool)

(assert (=> d!1303529 m!5014591))

(assert (=> d!1303529 m!5014255))

(declare-fun m!5014593 () Bool)

(assert (=> b!4378637 m!5014593))

(declare-fun m!5014595 () Bool)

(assert (=> b!4378637 m!5014595))

(declare-fun m!5014597 () Bool)

(assert (=> b!4378637 m!5014597))

(declare-fun m!5014599 () Bool)

(assert (=> b!4378637 m!5014599))

(assert (=> b!4378637 m!5014595))

(declare-fun m!5014601 () Bool)

(assert (=> b!4378637 m!5014601))

(declare-fun m!5014603 () Bool)

(assert (=> b!4378634 m!5014603))

(assert (=> b!4378638 m!5014595))

(assert (=> b!4378638 m!5014595))

(declare-fun m!5014605 () Bool)

(assert (=> b!4378638 m!5014605))

(declare-fun m!5014607 () Bool)

(assert (=> b!4378633 m!5014607))

(declare-fun m!5014609 () Bool)

(assert (=> b!4378633 m!5014609))

(assert (=> b!4378076 d!1303529))

(assert (=> b!4378060 d!1303369))

(declare-fun d!1303569 () Bool)

(declare-fun lt!1589380 () Bool)

(assert (=> d!1303569 (= lt!1589380 (select (content!7814 (t!356207 (toList!3141 lm!1707))) lt!1588592))))

(declare-fun e!2725553 () Bool)

(assert (=> d!1303569 (= lt!1589380 e!2725553)))

(declare-fun res!1803156 () Bool)

(assert (=> d!1303569 (=> (not res!1803156) (not e!2725553))))

(assert (=> d!1303569 (= res!1803156 ((_ is Cons!49157) (t!356207 (toList!3141 lm!1707))))))

(assert (=> d!1303569 (= (contains!11487 (t!356207 (toList!3141 lm!1707)) lt!1588592) lt!1589380)))

(declare-fun b!4378654 () Bool)

(declare-fun e!2725554 () Bool)

(assert (=> b!4378654 (= e!2725553 e!2725554)))

(declare-fun res!1803155 () Bool)

(assert (=> b!4378654 (=> res!1803155 e!2725554)))

(assert (=> b!4378654 (= res!1803155 (= (h!54754 (t!356207 (toList!3141 lm!1707))) lt!1588592))))

(declare-fun b!4378655 () Bool)

(assert (=> b!4378655 (= e!2725554 (contains!11487 (t!356207 (t!356207 (toList!3141 lm!1707))) lt!1588592))))

(assert (= (and d!1303569 res!1803156) b!4378654))

(assert (= (and b!4378654 (not res!1803155)) b!4378655))

(assert (=> d!1303569 m!5014349))

(declare-fun m!5014615 () Bool)

(assert (=> d!1303569 m!5014615))

(declare-fun m!5014617 () Bool)

(assert (=> b!4378655 m!5014617))

(assert (=> b!4378112 d!1303569))

(declare-fun d!1303573 () Bool)

(declare-fun res!1803159 () Bool)

(declare-fun e!2725557 () Bool)

(assert (=> d!1303573 (=> res!1803159 e!2725557)))

(assert (=> d!1303573 (= res!1803159 ((_ is Nil!49156) lt!1588612))))

(assert (=> d!1303573 (= (forall!9273 lt!1588612 lambda!145162) e!2725557)))

(declare-fun b!4378658 () Bool)

(declare-fun e!2725558 () Bool)

(assert (=> b!4378658 (= e!2725557 e!2725558)))

(declare-fun res!1803160 () Bool)

(assert (=> b!4378658 (=> (not res!1803160) (not e!2725558))))

(assert (=> b!4378658 (= res!1803160 (dynLambda!20710 lambda!145162 (h!54753 lt!1588612)))))

(declare-fun b!4378659 () Bool)

(assert (=> b!4378659 (= e!2725558 (forall!9273 (t!356206 lt!1588612) lambda!145162))))

(assert (= (and d!1303573 (not res!1803159)) b!4378658))

(assert (= (and b!4378658 res!1803160) b!4378659))

(declare-fun b_lambda!135011 () Bool)

(assert (=> (not b_lambda!135011) (not b!4378658)))

(declare-fun m!5014625 () Bool)

(assert (=> b!4378658 m!5014625))

(declare-fun m!5014627 () Bool)

(assert (=> b!4378659 m!5014627))

(assert (=> d!1303255 d!1303573))

(declare-fun d!1303577 () Bool)

(declare-fun res!1803164 () Bool)

(declare-fun e!2725560 () Bool)

(assert (=> d!1303577 (=> res!1803164 e!2725560)))

(assert (=> d!1303577 (= res!1803164 (not ((_ is Cons!49156) lt!1588612)))))

(assert (=> d!1303577 (= (noDuplicateKeys!579 lt!1588612) e!2725560)))

(declare-fun b!4378663 () Bool)

(declare-fun e!2725561 () Bool)

(assert (=> b!4378663 (= e!2725560 e!2725561)))

(declare-fun res!1803165 () Bool)

(assert (=> b!4378663 (=> (not res!1803165) (not e!2725561))))

(assert (=> b!4378663 (= res!1803165 (not (containsKey!849 (t!356206 lt!1588612) (_1!27637 (h!54753 lt!1588612)))))))

(declare-fun b!4378664 () Bool)

(assert (=> b!4378664 (= e!2725561 (noDuplicateKeys!579 (t!356206 lt!1588612)))))

(assert (= (and d!1303577 (not res!1803164)) b!4378663))

(assert (= (and b!4378663 res!1803165) b!4378664))

(declare-fun m!5014629 () Bool)

(assert (=> b!4378663 m!5014629))

(declare-fun m!5014631 () Bool)

(assert (=> b!4378664 m!5014631))

(assert (=> d!1303255 d!1303577))

(declare-fun lt!1589383 () Bool)

(declare-fun d!1303579 () Bool)

(assert (=> d!1303579 (= lt!1589383 (select (content!7814 (toList!3141 lt!1588996)) (tuple2!48689 hash!377 lt!1588599)))))

(declare-fun e!2725562 () Bool)

(assert (=> d!1303579 (= lt!1589383 e!2725562)))

(declare-fun res!1803167 () Bool)

(assert (=> d!1303579 (=> (not res!1803167) (not e!2725562))))

(assert (=> d!1303579 (= res!1803167 ((_ is Cons!49157) (toList!3141 lt!1588996)))))

(assert (=> d!1303579 (= (contains!11487 (toList!3141 lt!1588996) (tuple2!48689 hash!377 lt!1588599)) lt!1589383)))

(declare-fun b!4378665 () Bool)

(declare-fun e!2725563 () Bool)

(assert (=> b!4378665 (= e!2725562 e!2725563)))

(declare-fun res!1803166 () Bool)

(assert (=> b!4378665 (=> res!1803166 e!2725563)))

(assert (=> b!4378665 (= res!1803166 (= (h!54754 (toList!3141 lt!1588996)) (tuple2!48689 hash!377 lt!1588599)))))

(declare-fun b!4378666 () Bool)

(assert (=> b!4378666 (= e!2725563 (contains!11487 (t!356207 (toList!3141 lt!1588996)) (tuple2!48689 hash!377 lt!1588599)))))

(assert (= (and d!1303579 res!1803167) b!4378665))

(assert (= (and b!4378665 (not res!1803166)) b!4378666))

(declare-fun m!5014633 () Bool)

(assert (=> d!1303579 m!5014633))

(declare-fun m!5014635 () Bool)

(assert (=> d!1303579 m!5014635))

(declare-fun m!5014637 () Bool)

(assert (=> b!4378666 m!5014637))

(assert (=> b!4378054 d!1303579))

(declare-fun d!1303581 () Bool)

(declare-fun lt!1589384 () Bool)

(assert (=> d!1303581 (= lt!1589384 (select (content!7811 (keys!16669 lt!1588598)) key!3918))))

(declare-fun e!2725564 () Bool)

(assert (=> d!1303581 (= lt!1589384 e!2725564)))

(declare-fun res!1803168 () Bool)

(assert (=> d!1303581 (=> (not res!1803168) (not e!2725564))))

(assert (=> d!1303581 (= res!1803168 ((_ is Cons!49159) (keys!16669 lt!1588598)))))

(assert (=> d!1303581 (= (contains!11492 (keys!16669 lt!1588598) key!3918) lt!1589384)))

(declare-fun b!4378667 () Bool)

(declare-fun e!2725565 () Bool)

(assert (=> b!4378667 (= e!2725564 e!2725565)))

(declare-fun res!1803169 () Bool)

(assert (=> b!4378667 (=> res!1803169 e!2725565)))

(assert (=> b!4378667 (= res!1803169 (= (h!54758 (keys!16669 lt!1588598)) key!3918))))

(declare-fun b!4378668 () Bool)

(assert (=> b!4378668 (= e!2725565 (contains!11492 (t!356209 (keys!16669 lt!1588598)) key!3918))))

(assert (= (and d!1303581 res!1803168) b!4378667))

(assert (= (and b!4378667 (not res!1803169)) b!4378668))

(assert (=> d!1303581 m!5013671))

(declare-fun m!5014639 () Bool)

(assert (=> d!1303581 m!5014639))

(declare-fun m!5014641 () Bool)

(assert (=> d!1303581 m!5014641))

(declare-fun m!5014643 () Bool)

(assert (=> b!4378668 m!5014643))

(assert (=> b!4378082 d!1303581))

(assert (=> b!4378082 d!1303431))

(declare-fun d!1303583 () Bool)

(declare-fun res!1803170 () Bool)

(declare-fun e!2725566 () Bool)

(assert (=> d!1303583 (=> res!1803170 e!2725566)))

(assert (=> d!1303583 (= res!1803170 (and ((_ is Cons!49156) lt!1589093) (= (_1!27637 (h!54753 lt!1589093)) key!3918)))))

(assert (=> d!1303583 (= (containsKey!849 lt!1589093 key!3918) e!2725566)))

(declare-fun b!4378669 () Bool)

(declare-fun e!2725567 () Bool)

(assert (=> b!4378669 (= e!2725566 e!2725567)))

(declare-fun res!1803171 () Bool)

(assert (=> b!4378669 (=> (not res!1803171) (not e!2725567))))

(assert (=> b!4378669 (= res!1803171 ((_ is Cons!49156) lt!1589093))))

(declare-fun b!4378670 () Bool)

(assert (=> b!4378670 (= e!2725567 (containsKey!849 (t!356206 lt!1589093) key!3918))))

(assert (= (and d!1303583 (not res!1803170)) b!4378669))

(assert (= (and b!4378669 res!1803171) b!4378670))

(declare-fun m!5014645 () Bool)

(assert (=> b!4378670 m!5014645))

(assert (=> d!1303295 d!1303583))

(declare-fun d!1303585 () Bool)

(declare-fun res!1803172 () Bool)

(declare-fun e!2725568 () Bool)

(assert (=> d!1303585 (=> res!1803172 e!2725568)))

(assert (=> d!1303585 (= res!1803172 (not ((_ is Cons!49156) lt!1588595)))))

(assert (=> d!1303585 (= (noDuplicateKeys!579 lt!1588595) e!2725568)))

(declare-fun b!4378671 () Bool)

(declare-fun e!2725569 () Bool)

(assert (=> b!4378671 (= e!2725568 e!2725569)))

(declare-fun res!1803173 () Bool)

(assert (=> b!4378671 (=> (not res!1803173) (not e!2725569))))

(assert (=> b!4378671 (= res!1803173 (not (containsKey!849 (t!356206 lt!1588595) (_1!27637 (h!54753 lt!1588595)))))))

(declare-fun b!4378672 () Bool)

(assert (=> b!4378672 (= e!2725569 (noDuplicateKeys!579 (t!356206 lt!1588595)))))

(assert (= (and d!1303585 (not res!1803172)) b!4378671))

(assert (= (and b!4378671 res!1803173) b!4378672))

(declare-fun m!5014649 () Bool)

(assert (=> b!4378671 m!5014649))

(assert (=> b!4378672 m!5014357))

(assert (=> d!1303295 d!1303585))

(declare-fun d!1303587 () Bool)

(declare-fun e!2725570 () Bool)

(assert (=> d!1303587 e!2725570))

(declare-fun res!1803174 () Bool)

(assert (=> d!1303587 (=> res!1803174 e!2725570)))

(declare-fun e!2725574 () Bool)

(assert (=> d!1303587 (= res!1803174 e!2725574)))

(declare-fun res!1803176 () Bool)

(assert (=> d!1303587 (=> (not res!1803176) (not e!2725574))))

(declare-fun lt!1589385 () Bool)

(assert (=> d!1303587 (= res!1803176 (not lt!1589385))))

(declare-fun lt!1589390 () Bool)

(assert (=> d!1303587 (= lt!1589385 lt!1589390)))

(declare-fun lt!1589391 () Unit!75116)

(declare-fun e!2725571 () Unit!75116)

(assert (=> d!1303587 (= lt!1589391 e!2725571)))

(declare-fun c!744640 () Bool)

(assert (=> d!1303587 (= c!744640 lt!1589390)))

(assert (=> d!1303587 (= lt!1589390 (containsKey!848 (toList!3142 lt!1589056) (_1!27637 (h!54753 lt!1588593))))))

(assert (=> d!1303587 (= (contains!11488 lt!1589056 (_1!27637 (h!54753 lt!1588593))) lt!1589385)))

(declare-fun bm!304516 () Bool)

(declare-fun call!304521 () Bool)

(declare-fun e!2725572 () List!49283)

(assert (=> bm!304516 (= call!304521 (contains!11492 e!2725572 (_1!27637 (h!54753 lt!1588593))))))

(declare-fun c!744639 () Bool)

(assert (=> bm!304516 (= c!744639 c!744640)))

(declare-fun b!4378673 () Bool)

(declare-fun e!2725575 () Bool)

(assert (=> b!4378673 (= e!2725570 e!2725575)))

(declare-fun res!1803175 () Bool)

(assert (=> b!4378673 (=> (not res!1803175) (not e!2725575))))

(assert (=> b!4378673 (= res!1803175 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1589056) (_1!27637 (h!54753 lt!1588593)))))))

(declare-fun b!4378674 () Bool)

(declare-fun e!2725573 () Unit!75116)

(declare-fun Unit!75298 () Unit!75116)

(assert (=> b!4378674 (= e!2725573 Unit!75298)))

(declare-fun b!4378675 () Bool)

(assert (=> b!4378675 false))

(declare-fun lt!1589387 () Unit!75116)

(declare-fun lt!1589386 () Unit!75116)

(assert (=> b!4378675 (= lt!1589387 lt!1589386)))

(assert (=> b!4378675 (containsKey!848 (toList!3142 lt!1589056) (_1!27637 (h!54753 lt!1588593)))))

(assert (=> b!4378675 (= lt!1589386 (lemmaInGetKeysListThenContainsKey!169 (toList!3142 lt!1589056) (_1!27637 (h!54753 lt!1588593))))))

(declare-fun Unit!75299 () Unit!75116)

(assert (=> b!4378675 (= e!2725573 Unit!75299)))

(declare-fun b!4378676 () Bool)

(declare-fun lt!1589392 () Unit!75116)

(assert (=> b!4378676 (= e!2725571 lt!1589392)))

(declare-fun lt!1589389 () Unit!75116)

(assert (=> b!4378676 (= lt!1589389 (lemmaContainsKeyImpliesGetValueByKeyDefined!455 (toList!3142 lt!1589056) (_1!27637 (h!54753 lt!1588593))))))

(assert (=> b!4378676 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1589056) (_1!27637 (h!54753 lt!1588593))))))

(declare-fun lt!1589388 () Unit!75116)

(assert (=> b!4378676 (= lt!1589388 lt!1589389)))

(assert (=> b!4378676 (= lt!1589392 (lemmaInListThenGetKeysListContains!168 (toList!3142 lt!1589056) (_1!27637 (h!54753 lt!1588593))))))

(assert (=> b!4378676 call!304521))

(declare-fun b!4378677 () Bool)

(assert (=> b!4378677 (= e!2725575 (contains!11492 (keys!16669 lt!1589056) (_1!27637 (h!54753 lt!1588593))))))

(declare-fun b!4378678 () Bool)

(assert (=> b!4378678 (= e!2725572 (keys!16669 lt!1589056))))

(declare-fun b!4378679 () Bool)

(assert (=> b!4378679 (= e!2725571 e!2725573)))

(declare-fun c!744641 () Bool)

(assert (=> b!4378679 (= c!744641 call!304521)))

(declare-fun b!4378680 () Bool)

(assert (=> b!4378680 (= e!2725572 (getKeysList!171 (toList!3142 lt!1589056)))))

(declare-fun b!4378681 () Bool)

(assert (=> b!4378681 (= e!2725574 (not (contains!11492 (keys!16669 lt!1589056) (_1!27637 (h!54753 lt!1588593)))))))

(assert (= (and d!1303587 c!744640) b!4378676))

(assert (= (and d!1303587 (not c!744640)) b!4378679))

(assert (= (and b!4378679 c!744641) b!4378675))

(assert (= (and b!4378679 (not c!744641)) b!4378674))

(assert (= (or b!4378676 b!4378679) bm!304516))

(assert (= (and bm!304516 c!744639) b!4378680))

(assert (= (and bm!304516 (not c!744639)) b!4378678))

(assert (= (and d!1303587 res!1803176) b!4378681))

(assert (= (and d!1303587 (not res!1803174)) b!4378673))

(assert (= (and b!4378673 res!1803175) b!4378677))

(declare-fun m!5014667 () Bool)

(assert (=> b!4378681 m!5014667))

(assert (=> b!4378681 m!5014667))

(declare-fun m!5014669 () Bool)

(assert (=> b!4378681 m!5014669))

(declare-fun m!5014671 () Bool)

(assert (=> b!4378680 m!5014671))

(declare-fun m!5014673 () Bool)

(assert (=> b!4378675 m!5014673))

(declare-fun m!5014675 () Bool)

(assert (=> b!4378675 m!5014675))

(assert (=> b!4378678 m!5014667))

(declare-fun m!5014677 () Bool)

(assert (=> bm!304516 m!5014677))

(declare-fun m!5014679 () Bool)

(assert (=> b!4378673 m!5014679))

(assert (=> b!4378673 m!5014679))

(declare-fun m!5014681 () Bool)

(assert (=> b!4378673 m!5014681))

(assert (=> b!4378677 m!5014667))

(assert (=> b!4378677 m!5014667))

(assert (=> b!4378677 m!5014669))

(assert (=> d!1303587 m!5014673))

(declare-fun m!5014683 () Bool)

(assert (=> b!4378676 m!5014683))

(assert (=> b!4378676 m!5014679))

(assert (=> b!4378676 m!5014679))

(assert (=> b!4378676 m!5014681))

(declare-fun m!5014689 () Bool)

(assert (=> b!4378676 m!5014689))

(assert (=> b!4378090 d!1303587))

(declare-fun d!1303593 () Bool)

(declare-fun res!1803182 () Bool)

(declare-fun e!2725584 () Bool)

(assert (=> d!1303593 (=> res!1803182 e!2725584)))

(assert (=> d!1303593 (= res!1803182 ((_ is Nil!49156) (toList!3142 lt!1588594)))))

(assert (=> d!1303593 (= (forall!9273 (toList!3142 lt!1588594) lambda!145174) e!2725584)))

(declare-fun b!4378693 () Bool)

(declare-fun e!2725585 () Bool)

(assert (=> b!4378693 (= e!2725584 e!2725585)))

(declare-fun res!1803183 () Bool)

(assert (=> b!4378693 (=> (not res!1803183) (not e!2725585))))

(assert (=> b!4378693 (= res!1803183 (dynLambda!20710 lambda!145174 (h!54753 (toList!3142 lt!1588594))))))

(declare-fun b!4378694 () Bool)

(assert (=> b!4378694 (= e!2725585 (forall!9273 (t!356206 (toList!3142 lt!1588594)) lambda!145174))))

(assert (= (and d!1303593 (not res!1803182)) b!4378693))

(assert (= (and b!4378693 res!1803183) b!4378694))

(declare-fun b_lambda!135013 () Bool)

(assert (=> (not b_lambda!135013) (not b!4378693)))

(declare-fun m!5014705 () Bool)

(assert (=> b!4378693 m!5014705))

(declare-fun m!5014707 () Bool)

(assert (=> b!4378694 m!5014707))

(assert (=> b!4378090 d!1303593))

(declare-fun bs!661018 () Bool)

(declare-fun d!1303597 () Bool)

(assert (= bs!661018 (and d!1303597 b!4378460)))

(declare-fun lambda!145262 () Int)

(assert (=> bs!661018 (= (= lt!1589053 lt!1589239) (= lambda!145262 lambda!145228))))

(declare-fun bs!661019 () Bool)

(assert (= bs!661019 (and d!1303597 d!1303179)))

(assert (=> bs!661019 (= (= lt!1589053 lt!1588922) (= lambda!145262 lambda!145155))))

(declare-fun bs!661020 () Bool)

(assert (= bs!661020 (and d!1303597 b!4378412)))

(assert (=> bs!661020 (= (= lt!1589053 lt!1589205) (= lambda!145262 lambda!145217))))

(declare-fun bs!661021 () Bool)

(assert (= bs!661021 (and d!1303597 b!4378459)))

(assert (=> bs!661021 (= (= lt!1589053 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145262 lambda!145226))))

(declare-fun bs!661022 () Bool)

(assert (= bs!661022 (and d!1303597 b!4378047)))

(assert (=> bs!661022 (= (= lt!1589053 (+!790 lt!1588594 lt!1588602)) (= lambda!145262 lambda!145160))))

(declare-fun bs!661023 () Bool)

(assert (= bs!661023 (and d!1303597 b!4378411)))

(assert (=> bs!661023 (= (= lt!1589053 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145262 lambda!145213))))

(declare-fun bs!661024 () Bool)

(assert (= bs!661024 (and d!1303597 d!1303361)))

(assert (=> bs!661024 (= (= lt!1589053 lt!1589152) (= lambda!145262 lambda!145195))))

(declare-fun bs!661025 () Bool)

(assert (= bs!661025 (and d!1303597 b!4378290)))

(assert (=> bs!661025 (= (= lt!1589053 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145262 lambda!145192))))

(declare-fun bs!661026 () Bool)

(assert (= bs!661026 (and d!1303597 d!1303255)))

(assert (=> bs!661026 (= (= lt!1589053 lt!1588981) (= lambda!145262 lambda!145162))))

(declare-fun bs!661027 () Bool)

(assert (= bs!661027 (and d!1303597 d!1303383)))

(assert (=> bs!661027 (= (= lt!1589053 lt!1589011) (= lambda!145262 lambda!145200))))

(declare-fun bs!661028 () Bool)

(assert (= bs!661028 (and d!1303597 d!1303519)))

(assert (=> bs!661028 (= (= lt!1589053 lt!1588594) (= lambda!145262 lambda!145242))))

(declare-fun bs!661029 () Bool)

(assert (= bs!661029 (and d!1303597 d!1303265)))

(assert (=> bs!661029 (= (= lt!1589053 lt!1589021) (= lambda!145262 lambda!145167))))

(declare-fun bs!661030 () Bool)

(assert (= bs!661030 (and d!1303597 b!4377997)))

(assert (=> bs!661030 (= (= lt!1589053 lt!1588912) (= lambda!145262 lambda!145154))))

(declare-fun bs!661031 () Bool)

(assert (= bs!661031 (and d!1303597 b!4378063)))

(assert (=> bs!661031 (= (= lt!1589053 lt!1589011) (= lambda!145262 lambda!145166))))

(declare-fun bs!661032 () Bool)

(assert (= bs!661032 (and d!1303597 b!4378062)))

(assert (=> bs!661032 (= (= lt!1589053 lt!1588594) (= lambda!145262 lambda!145164))))

(declare-fun bs!661033 () Bool)

(assert (= bs!661033 (and d!1303597 b!4377996)))

(assert (=> bs!661033 (= (= lt!1589053 lt!1588594) (= lambda!145262 lambda!145152))))

(declare-fun bs!661034 () Bool)

(assert (= bs!661034 (and d!1303597 b!4378291)))

(assert (=> bs!661034 (= (= lt!1589053 lt!1589142) (= lambda!145262 lambda!145194))))

(declare-fun bs!661035 () Bool)

(assert (= bs!661035 (and d!1303597 b!4378090)))

(assert (=> bs!661035 (= (= lt!1589053 lt!1588594) (= lambda!145262 lambda!145174))))

(declare-fun bs!661036 () Bool)

(assert (= bs!661036 (and d!1303597 d!1303433)))

(assert (=> bs!661036 (= (= lt!1589053 lt!1589250) (= lambda!145262 lambda!145231))))

(declare-fun bs!661037 () Bool)

(assert (= bs!661037 (and d!1303597 d!1303403)))

(assert (=> bs!661037 (= (= lt!1589053 lt!1589215) (= lambda!145262 lambda!145218))))

(assert (=> bs!661020 (= (= lt!1589053 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145262 lambda!145215))))

(assert (=> bs!661018 (= (= lt!1589053 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145262 lambda!145227))))

(declare-fun bs!661038 () Bool)

(assert (= bs!661038 (and d!1303597 b!4378046)))

(assert (=> bs!661038 (= (= lt!1589053 (+!790 lt!1588594 lt!1588602)) (= lambda!145262 lambda!145159))))

(assert (=> bs!661030 (= (= lt!1589053 lt!1588594) (= lambda!145262 lambda!145153))))

(declare-fun bs!661039 () Bool)

(assert (= bs!661039 (and d!1303597 b!4378089)))

(assert (=> bs!661039 (= (= lt!1589053 lt!1588594) (= lambda!145262 lambda!145173))))

(assert (=> bs!661035 (= lambda!145262 lambda!145175)))

(assert (=> bs!661031 (= (= lt!1589053 lt!1588594) (= lambda!145262 lambda!145165))))

(declare-fun bs!661040 () Bool)

(assert (= bs!661040 (and d!1303597 d!1303299)))

(assert (=> bs!661040 (not (= lambda!145262 lambda!145179))))

(assert (=> bs!661034 (= (= lt!1589053 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145262 lambda!145193))))

(assert (=> bs!661022 (= (= lt!1589053 lt!1588971) (= lambda!145262 lambda!145161))))

(declare-fun bs!661041 () Bool)

(assert (= bs!661041 (and d!1303597 d!1303283)))

(assert (=> bs!661041 (= (= lt!1589053 lt!1589063) (= lambda!145262 lambda!145176))))

(assert (=> d!1303597 true))

(assert (=> d!1303597 (forall!9273 (toList!3142 lt!1588594) lambda!145262)))

(declare-fun lt!1589401 () Unit!75116)

(assert (=> d!1303597 (= lt!1589401 (choose!27307 lt!1588594 lt!1589053 (_1!27637 (h!54753 lt!1588593)) (_2!27637 (h!54753 lt!1588593))))))

(assert (=> d!1303597 (forall!9273 (toList!3142 (+!790 lt!1588594 (tuple2!48687 (_1!27637 (h!54753 lt!1588593)) (_2!27637 (h!54753 lt!1588593))))) lambda!145262)))

(assert (=> d!1303597 (= (addForallContainsKeyThenBeforeAdding!105 lt!1588594 lt!1589053 (_1!27637 (h!54753 lt!1588593)) (_2!27637 (h!54753 lt!1588593))) lt!1589401)))

(declare-fun bs!661042 () Bool)

(assert (= bs!661042 d!1303597))

(declare-fun m!5014709 () Bool)

(assert (=> bs!661042 m!5014709))

(declare-fun m!5014711 () Bool)

(assert (=> bs!661042 m!5014711))

(declare-fun m!5014713 () Bool)

(assert (=> bs!661042 m!5014713))

(declare-fun m!5014715 () Bool)

(assert (=> bs!661042 m!5014715))

(assert (=> b!4378090 d!1303597))

(declare-fun d!1303599 () Bool)

(declare-fun res!1803184 () Bool)

(declare-fun e!2725586 () Bool)

(assert (=> d!1303599 (=> res!1803184 e!2725586)))

(assert (=> d!1303599 (= res!1803184 ((_ is Nil!49156) (toList!3142 lt!1588594)))))

(assert (=> d!1303599 (= (forall!9273 (toList!3142 lt!1588594) lambda!145175) e!2725586)))

(declare-fun b!4378695 () Bool)

(declare-fun e!2725587 () Bool)

(assert (=> b!4378695 (= e!2725586 e!2725587)))

(declare-fun res!1803185 () Bool)

(assert (=> b!4378695 (=> (not res!1803185) (not e!2725587))))

(assert (=> b!4378695 (= res!1803185 (dynLambda!20710 lambda!145175 (h!54753 (toList!3142 lt!1588594))))))

(declare-fun b!4378696 () Bool)

(assert (=> b!4378696 (= e!2725587 (forall!9273 (t!356206 (toList!3142 lt!1588594)) lambda!145175))))

(assert (= (and d!1303599 (not res!1803184)) b!4378695))

(assert (= (and b!4378695 res!1803185) b!4378696))

(declare-fun b_lambda!135015 () Bool)

(assert (=> (not b_lambda!135015) (not b!4378695)))

(declare-fun m!5014717 () Bool)

(assert (=> b!4378695 m!5014717))

(declare-fun m!5014719 () Bool)

(assert (=> b!4378696 m!5014719))

(assert (=> b!4378090 d!1303599))

(declare-fun d!1303601 () Bool)

(declare-fun res!1803186 () Bool)

(declare-fun e!2725588 () Bool)

(assert (=> d!1303601 (=> res!1803186 e!2725588)))

(assert (=> d!1303601 (= res!1803186 ((_ is Nil!49156) (toList!3142 lt!1589056)))))

(assert (=> d!1303601 (= (forall!9273 (toList!3142 lt!1589056) lambda!145175) e!2725588)))

(declare-fun b!4378697 () Bool)

(declare-fun e!2725589 () Bool)

(assert (=> b!4378697 (= e!2725588 e!2725589)))

(declare-fun res!1803187 () Bool)

(assert (=> b!4378697 (=> (not res!1803187) (not e!2725589))))

(assert (=> b!4378697 (= res!1803187 (dynLambda!20710 lambda!145175 (h!54753 (toList!3142 lt!1589056))))))

(declare-fun b!4378698 () Bool)

(assert (=> b!4378698 (= e!2725589 (forall!9273 (t!356206 (toList!3142 lt!1589056)) lambda!145175))))

(assert (= (and d!1303601 (not res!1803186)) b!4378697))

(assert (= (and b!4378697 res!1803187) b!4378698))

(declare-fun b_lambda!135017 () Bool)

(assert (=> (not b_lambda!135017) (not b!4378697)))

(declare-fun m!5014721 () Bool)

(assert (=> b!4378697 m!5014721))

(declare-fun m!5014723 () Bool)

(assert (=> b!4378698 m!5014723))

(assert (=> b!4378090 d!1303601))

(declare-fun bs!661043 () Bool)

(declare-fun b!4378701 () Bool)

(assert (= bs!661043 (and b!4378701 b!4378460)))

(declare-fun lambda!145263 () Int)

(assert (=> bs!661043 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589239) (= lambda!145263 lambda!145228))))

(declare-fun bs!661044 () Bool)

(assert (= bs!661044 (and b!4378701 d!1303179)))

(assert (=> bs!661044 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588922) (= lambda!145263 lambda!145155))))

(declare-fun bs!661045 () Bool)

(assert (= bs!661045 (and b!4378701 b!4378412)))

(assert (=> bs!661045 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589205) (= lambda!145263 lambda!145217))))

(declare-fun bs!661046 () Bool)

(assert (= bs!661046 (and b!4378701 b!4378459)))

(assert (=> bs!661046 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145263 lambda!145226))))

(declare-fun bs!661047 () Bool)

(assert (= bs!661047 (and b!4378701 b!4378047)))

(assert (=> bs!661047 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) (+!790 lt!1588594 lt!1588602)) (= lambda!145263 lambda!145160))))

(declare-fun bs!661048 () Bool)

(assert (= bs!661048 (and b!4378701 b!4378411)))

(assert (=> bs!661048 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145263 lambda!145213))))

(declare-fun bs!661049 () Bool)

(assert (= bs!661049 (and b!4378701 d!1303361)))

(assert (=> bs!661049 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589152) (= lambda!145263 lambda!145195))))

(declare-fun bs!661050 () Bool)

(assert (= bs!661050 (and b!4378701 b!4378290)))

(assert (=> bs!661050 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145263 lambda!145192))))

(declare-fun bs!661051 () Bool)

(assert (= bs!661051 (and b!4378701 d!1303255)))

(assert (=> bs!661051 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588981) (= lambda!145263 lambda!145162))))

(declare-fun bs!661052 () Bool)

(assert (= bs!661052 (and b!4378701 d!1303383)))

(assert (=> bs!661052 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589011) (= lambda!145263 lambda!145200))))

(declare-fun bs!661053 () Bool)

(assert (= bs!661053 (and b!4378701 d!1303265)))

(assert (=> bs!661053 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589021) (= lambda!145263 lambda!145167))))

(declare-fun bs!661054 () Bool)

(assert (= bs!661054 (and b!4378701 b!4377997)))

(assert (=> bs!661054 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588912) (= lambda!145263 lambda!145154))))

(declare-fun bs!661055 () Bool)

(assert (= bs!661055 (and b!4378701 b!4378063)))

(assert (=> bs!661055 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589011) (= lambda!145263 lambda!145166))))

(declare-fun bs!661056 () Bool)

(assert (= bs!661056 (and b!4378701 b!4378062)))

(assert (=> bs!661056 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588594) (= lambda!145263 lambda!145164))))

(declare-fun bs!661057 () Bool)

(assert (= bs!661057 (and b!4378701 b!4377996)))

(assert (=> bs!661057 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588594) (= lambda!145263 lambda!145152))))

(declare-fun bs!661058 () Bool)

(assert (= bs!661058 (and b!4378701 b!4378291)))

(assert (=> bs!661058 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589142) (= lambda!145263 lambda!145194))))

(declare-fun bs!661059 () Bool)

(assert (= bs!661059 (and b!4378701 b!4378090)))

(assert (=> bs!661059 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588594) (= lambda!145263 lambda!145174))))

(declare-fun bs!661060 () Bool)

(assert (= bs!661060 (and b!4378701 d!1303433)))

(assert (=> bs!661060 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589250) (= lambda!145263 lambda!145231))))

(declare-fun bs!661061 () Bool)

(assert (= bs!661061 (and b!4378701 d!1303403)))

(assert (=> bs!661061 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589215) (= lambda!145263 lambda!145218))))

(assert (=> bs!661045 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145263 lambda!145215))))

(assert (=> bs!661043 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145263 lambda!145227))))

(declare-fun bs!661062 () Bool)

(assert (= bs!661062 (and b!4378701 b!4378046)))

(assert (=> bs!661062 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) (+!790 lt!1588594 lt!1588602)) (= lambda!145263 lambda!145159))))

(assert (=> bs!661054 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588594) (= lambda!145263 lambda!145153))))

(declare-fun bs!661063 () Bool)

(assert (= bs!661063 (and b!4378701 d!1303519)))

(assert (=> bs!661063 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588594) (= lambda!145263 lambda!145242))))

(declare-fun bs!661064 () Bool)

(assert (= bs!661064 (and b!4378701 d!1303597)))

(assert (=> bs!661064 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589053) (= lambda!145263 lambda!145262))))

(declare-fun bs!661065 () Bool)

(assert (= bs!661065 (and b!4378701 b!4378089)))

(assert (=> bs!661065 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588594) (= lambda!145263 lambda!145173))))

(assert (=> bs!661059 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589053) (= lambda!145263 lambda!145175))))

(assert (=> bs!661055 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588594) (= lambda!145263 lambda!145165))))

(declare-fun bs!661066 () Bool)

(assert (= bs!661066 (and b!4378701 d!1303299)))

(assert (=> bs!661066 (not (= lambda!145263 lambda!145179))))

(assert (=> bs!661058 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145263 lambda!145193))))

(assert (=> bs!661047 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588971) (= lambda!145263 lambda!145161))))

(declare-fun bs!661067 () Bool)

(assert (= bs!661067 (and b!4378701 d!1303283)))

(assert (=> bs!661067 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589063) (= lambda!145263 lambda!145176))))

(assert (=> b!4378701 true))

(declare-fun bs!661068 () Bool)

(declare-fun b!4378702 () Bool)

(assert (= bs!661068 (and b!4378702 b!4378701)))

(declare-fun lambda!145264 () Int)

(assert (=> bs!661068 (= lambda!145264 lambda!145263)))

(declare-fun bs!661069 () Bool)

(assert (= bs!661069 (and b!4378702 b!4378460)))

(assert (=> bs!661069 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589239) (= lambda!145264 lambda!145228))))

(declare-fun bs!661070 () Bool)

(assert (= bs!661070 (and b!4378702 d!1303179)))

(assert (=> bs!661070 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588922) (= lambda!145264 lambda!145155))))

(declare-fun bs!661071 () Bool)

(assert (= bs!661071 (and b!4378702 b!4378412)))

(assert (=> bs!661071 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589205) (= lambda!145264 lambda!145217))))

(declare-fun bs!661072 () Bool)

(assert (= bs!661072 (and b!4378702 b!4378459)))

(assert (=> bs!661072 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145264 lambda!145226))))

(declare-fun bs!661073 () Bool)

(assert (= bs!661073 (and b!4378702 b!4378047)))

(assert (=> bs!661073 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) (+!790 lt!1588594 lt!1588602)) (= lambda!145264 lambda!145160))))

(declare-fun bs!661074 () Bool)

(assert (= bs!661074 (and b!4378702 b!4378411)))

(assert (=> bs!661074 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145264 lambda!145213))))

(declare-fun bs!661075 () Bool)

(assert (= bs!661075 (and b!4378702 d!1303361)))

(assert (=> bs!661075 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589152) (= lambda!145264 lambda!145195))))

(declare-fun bs!661076 () Bool)

(assert (= bs!661076 (and b!4378702 b!4378290)))

(assert (=> bs!661076 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145264 lambda!145192))))

(declare-fun bs!661077 () Bool)

(assert (= bs!661077 (and b!4378702 d!1303255)))

(assert (=> bs!661077 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588981) (= lambda!145264 lambda!145162))))

(declare-fun bs!661078 () Bool)

(assert (= bs!661078 (and b!4378702 d!1303383)))

(assert (=> bs!661078 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589011) (= lambda!145264 lambda!145200))))

(declare-fun bs!661079 () Bool)

(assert (= bs!661079 (and b!4378702 d!1303265)))

(assert (=> bs!661079 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589021) (= lambda!145264 lambda!145167))))

(declare-fun bs!661080 () Bool)

(assert (= bs!661080 (and b!4378702 b!4377997)))

(assert (=> bs!661080 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588912) (= lambda!145264 lambda!145154))))

(declare-fun bs!661081 () Bool)

(assert (= bs!661081 (and b!4378702 b!4378063)))

(assert (=> bs!661081 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589011) (= lambda!145264 lambda!145166))))

(declare-fun bs!661082 () Bool)

(assert (= bs!661082 (and b!4378702 b!4378062)))

(assert (=> bs!661082 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588594) (= lambda!145264 lambda!145164))))

(declare-fun bs!661083 () Bool)

(assert (= bs!661083 (and b!4378702 b!4377996)))

(assert (=> bs!661083 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588594) (= lambda!145264 lambda!145152))))

(declare-fun bs!661084 () Bool)

(assert (= bs!661084 (and b!4378702 b!4378291)))

(assert (=> bs!661084 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589142) (= lambda!145264 lambda!145194))))

(declare-fun bs!661085 () Bool)

(assert (= bs!661085 (and b!4378702 b!4378090)))

(assert (=> bs!661085 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588594) (= lambda!145264 lambda!145174))))

(declare-fun bs!661086 () Bool)

(assert (= bs!661086 (and b!4378702 d!1303433)))

(assert (=> bs!661086 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589250) (= lambda!145264 lambda!145231))))

(declare-fun bs!661087 () Bool)

(assert (= bs!661087 (and b!4378702 d!1303403)))

(assert (=> bs!661087 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589215) (= lambda!145264 lambda!145218))))

(assert (=> bs!661071 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145264 lambda!145215))))

(assert (=> bs!661069 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145264 lambda!145227))))

(declare-fun bs!661088 () Bool)

(assert (= bs!661088 (and b!4378702 b!4378046)))

(assert (=> bs!661088 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) (+!790 lt!1588594 lt!1588602)) (= lambda!145264 lambda!145159))))

(assert (=> bs!661080 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588594) (= lambda!145264 lambda!145153))))

(declare-fun bs!661089 () Bool)

(assert (= bs!661089 (and b!4378702 d!1303519)))

(assert (=> bs!661089 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588594) (= lambda!145264 lambda!145242))))

(declare-fun bs!661090 () Bool)

(assert (= bs!661090 (and b!4378702 d!1303597)))

(assert (=> bs!661090 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589053) (= lambda!145264 lambda!145262))))

(declare-fun bs!661091 () Bool)

(assert (= bs!661091 (and b!4378702 b!4378089)))

(assert (=> bs!661091 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588594) (= lambda!145264 lambda!145173))))

(assert (=> bs!661085 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589053) (= lambda!145264 lambda!145175))))

(assert (=> bs!661081 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588594) (= lambda!145264 lambda!145165))))

(declare-fun bs!661092 () Bool)

(assert (= bs!661092 (and b!4378702 d!1303299)))

(assert (=> bs!661092 (not (= lambda!145264 lambda!145179))))

(assert (=> bs!661084 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145264 lambda!145193))))

(assert (=> bs!661073 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1588971) (= lambda!145264 lambda!145161))))

(declare-fun bs!661093 () Bool)

(assert (= bs!661093 (and b!4378702 d!1303283)))

(assert (=> bs!661093 (= (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589063) (= lambda!145264 lambda!145176))))

(assert (=> b!4378702 true))

(declare-fun lambda!145265 () Int)

(declare-fun lt!1589406 () ListMap!2385)

(assert (=> bs!661068 (= (= lt!1589406 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145265 lambda!145263))))

(assert (=> bs!661069 (= (= lt!1589406 lt!1589239) (= lambda!145265 lambda!145228))))

(assert (=> bs!661070 (= (= lt!1589406 lt!1588922) (= lambda!145265 lambda!145155))))

(assert (=> bs!661071 (= (= lt!1589406 lt!1589205) (= lambda!145265 lambda!145217))))

(assert (=> bs!661073 (= (= lt!1589406 (+!790 lt!1588594 lt!1588602)) (= lambda!145265 lambda!145160))))

(assert (=> bs!661074 (= (= lt!1589406 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145265 lambda!145213))))

(assert (=> bs!661075 (= (= lt!1589406 lt!1589152) (= lambda!145265 lambda!145195))))

(assert (=> bs!661076 (= (= lt!1589406 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145265 lambda!145192))))

(assert (=> bs!661077 (= (= lt!1589406 lt!1588981) (= lambda!145265 lambda!145162))))

(assert (=> bs!661078 (= (= lt!1589406 lt!1589011) (= lambda!145265 lambda!145200))))

(assert (=> bs!661079 (= (= lt!1589406 lt!1589021) (= lambda!145265 lambda!145167))))

(assert (=> bs!661080 (= (= lt!1589406 lt!1588912) (= lambda!145265 lambda!145154))))

(assert (=> bs!661081 (= (= lt!1589406 lt!1589011) (= lambda!145265 lambda!145166))))

(assert (=> bs!661082 (= (= lt!1589406 lt!1588594) (= lambda!145265 lambda!145164))))

(assert (=> bs!661083 (= (= lt!1589406 lt!1588594) (= lambda!145265 lambda!145152))))

(assert (=> bs!661084 (= (= lt!1589406 lt!1589142) (= lambda!145265 lambda!145194))))

(assert (=> bs!661085 (= (= lt!1589406 lt!1588594) (= lambda!145265 lambda!145174))))

(assert (=> bs!661086 (= (= lt!1589406 lt!1589250) (= lambda!145265 lambda!145231))))

(assert (=> bs!661087 (= (= lt!1589406 lt!1589215) (= lambda!145265 lambda!145218))))

(assert (=> b!4378702 (= (= lt!1589406 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145265 lambda!145264))))

(assert (=> bs!661072 (= (= lt!1589406 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145265 lambda!145226))))

(assert (=> bs!661071 (= (= lt!1589406 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145265 lambda!145215))))

(assert (=> bs!661069 (= (= lt!1589406 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145265 lambda!145227))))

(assert (=> bs!661088 (= (= lt!1589406 (+!790 lt!1588594 lt!1588602)) (= lambda!145265 lambda!145159))))

(assert (=> bs!661080 (= (= lt!1589406 lt!1588594) (= lambda!145265 lambda!145153))))

(assert (=> bs!661089 (= (= lt!1589406 lt!1588594) (= lambda!145265 lambda!145242))))

(assert (=> bs!661090 (= (= lt!1589406 lt!1589053) (= lambda!145265 lambda!145262))))

(assert (=> bs!661091 (= (= lt!1589406 lt!1588594) (= lambda!145265 lambda!145173))))

(assert (=> bs!661085 (= (= lt!1589406 lt!1589053) (= lambda!145265 lambda!145175))))

(assert (=> bs!661081 (= (= lt!1589406 lt!1588594) (= lambda!145265 lambda!145165))))

(assert (=> bs!661092 (not (= lambda!145265 lambda!145179))))

(assert (=> bs!661084 (= (= lt!1589406 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145265 lambda!145193))))

(assert (=> bs!661073 (= (= lt!1589406 lt!1588971) (= lambda!145265 lambda!145161))))

(assert (=> bs!661093 (= (= lt!1589406 lt!1589063) (= lambda!145265 lambda!145176))))

(assert (=> b!4378702 true))

(declare-fun bs!661094 () Bool)

(declare-fun d!1303603 () Bool)

(assert (= bs!661094 (and d!1303603 b!4378702)))

(declare-fun lambda!145266 () Int)

(declare-fun lt!1589416 () ListMap!2385)

(assert (=> bs!661094 (= (= lt!1589416 lt!1589406) (= lambda!145266 lambda!145265))))

(declare-fun bs!661095 () Bool)

(assert (= bs!661095 (and d!1303603 b!4378701)))

(assert (=> bs!661095 (= (= lt!1589416 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145266 lambda!145263))))

(declare-fun bs!661096 () Bool)

(assert (= bs!661096 (and d!1303603 b!4378460)))

(assert (=> bs!661096 (= (= lt!1589416 lt!1589239) (= lambda!145266 lambda!145228))))

(declare-fun bs!661097 () Bool)

(assert (= bs!661097 (and d!1303603 d!1303179)))

(assert (=> bs!661097 (= (= lt!1589416 lt!1588922) (= lambda!145266 lambda!145155))))

(declare-fun bs!661098 () Bool)

(assert (= bs!661098 (and d!1303603 b!4378412)))

(assert (=> bs!661098 (= (= lt!1589416 lt!1589205) (= lambda!145266 lambda!145217))))

(declare-fun bs!661099 () Bool)

(assert (= bs!661099 (and d!1303603 b!4378047)))

(assert (=> bs!661099 (= (= lt!1589416 (+!790 lt!1588594 lt!1588602)) (= lambda!145266 lambda!145160))))

(declare-fun bs!661100 () Bool)

(assert (= bs!661100 (and d!1303603 b!4378411)))

(assert (=> bs!661100 (= (= lt!1589416 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145266 lambda!145213))))

(declare-fun bs!661101 () Bool)

(assert (= bs!661101 (and d!1303603 d!1303361)))

(assert (=> bs!661101 (= (= lt!1589416 lt!1589152) (= lambda!145266 lambda!145195))))

(declare-fun bs!661102 () Bool)

(assert (= bs!661102 (and d!1303603 b!4378290)))

(assert (=> bs!661102 (= (= lt!1589416 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145266 lambda!145192))))

(declare-fun bs!661103 () Bool)

(assert (= bs!661103 (and d!1303603 d!1303255)))

(assert (=> bs!661103 (= (= lt!1589416 lt!1588981) (= lambda!145266 lambda!145162))))

(declare-fun bs!661104 () Bool)

(assert (= bs!661104 (and d!1303603 d!1303383)))

(assert (=> bs!661104 (= (= lt!1589416 lt!1589011) (= lambda!145266 lambda!145200))))

(declare-fun bs!661105 () Bool)

(assert (= bs!661105 (and d!1303603 d!1303265)))

(assert (=> bs!661105 (= (= lt!1589416 lt!1589021) (= lambda!145266 lambda!145167))))

(declare-fun bs!661106 () Bool)

(assert (= bs!661106 (and d!1303603 b!4377997)))

(assert (=> bs!661106 (= (= lt!1589416 lt!1588912) (= lambda!145266 lambda!145154))))

(declare-fun bs!661107 () Bool)

(assert (= bs!661107 (and d!1303603 b!4378063)))

(assert (=> bs!661107 (= (= lt!1589416 lt!1589011) (= lambda!145266 lambda!145166))))

(declare-fun bs!661108 () Bool)

(assert (= bs!661108 (and d!1303603 b!4378062)))

(assert (=> bs!661108 (= (= lt!1589416 lt!1588594) (= lambda!145266 lambda!145164))))

(declare-fun bs!661109 () Bool)

(assert (= bs!661109 (and d!1303603 b!4377996)))

(assert (=> bs!661109 (= (= lt!1589416 lt!1588594) (= lambda!145266 lambda!145152))))

(declare-fun bs!661110 () Bool)

(assert (= bs!661110 (and d!1303603 b!4378291)))

(assert (=> bs!661110 (= (= lt!1589416 lt!1589142) (= lambda!145266 lambda!145194))))

(declare-fun bs!661111 () Bool)

(assert (= bs!661111 (and d!1303603 b!4378090)))

(assert (=> bs!661111 (= (= lt!1589416 lt!1588594) (= lambda!145266 lambda!145174))))

(declare-fun bs!661112 () Bool)

(assert (= bs!661112 (and d!1303603 d!1303433)))

(assert (=> bs!661112 (= (= lt!1589416 lt!1589250) (= lambda!145266 lambda!145231))))

(declare-fun bs!661113 () Bool)

(assert (= bs!661113 (and d!1303603 d!1303403)))

(assert (=> bs!661113 (= (= lt!1589416 lt!1589215) (= lambda!145266 lambda!145218))))

(assert (=> bs!661094 (= (= lt!1589416 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145266 lambda!145264))))

(declare-fun bs!661114 () Bool)

(assert (= bs!661114 (and d!1303603 b!4378459)))

(assert (=> bs!661114 (= (= lt!1589416 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145266 lambda!145226))))

(assert (=> bs!661098 (= (= lt!1589416 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145266 lambda!145215))))

(assert (=> bs!661096 (= (= lt!1589416 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145266 lambda!145227))))

(declare-fun bs!661115 () Bool)

(assert (= bs!661115 (and d!1303603 b!4378046)))

(assert (=> bs!661115 (= (= lt!1589416 (+!790 lt!1588594 lt!1588602)) (= lambda!145266 lambda!145159))))

(assert (=> bs!661106 (= (= lt!1589416 lt!1588594) (= lambda!145266 lambda!145153))))

(declare-fun bs!661116 () Bool)

(assert (= bs!661116 (and d!1303603 d!1303519)))

(assert (=> bs!661116 (= (= lt!1589416 lt!1588594) (= lambda!145266 lambda!145242))))

(declare-fun bs!661117 () Bool)

(assert (= bs!661117 (and d!1303603 d!1303597)))

(assert (=> bs!661117 (= (= lt!1589416 lt!1589053) (= lambda!145266 lambda!145262))))

(declare-fun bs!661118 () Bool)

(assert (= bs!661118 (and d!1303603 b!4378089)))

(assert (=> bs!661118 (= (= lt!1589416 lt!1588594) (= lambda!145266 lambda!145173))))

(assert (=> bs!661111 (= (= lt!1589416 lt!1589053) (= lambda!145266 lambda!145175))))

(assert (=> bs!661107 (= (= lt!1589416 lt!1588594) (= lambda!145266 lambda!145165))))

(declare-fun bs!661119 () Bool)

(assert (= bs!661119 (and d!1303603 d!1303299)))

(assert (=> bs!661119 (not (= lambda!145266 lambda!145179))))

(assert (=> bs!661110 (= (= lt!1589416 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145266 lambda!145193))))

(assert (=> bs!661099 (= (= lt!1589416 lt!1588971) (= lambda!145266 lambda!145161))))

(declare-fun bs!661120 () Bool)

(assert (= bs!661120 (and d!1303603 d!1303283)))

(assert (=> bs!661120 (= (= lt!1589416 lt!1589063) (= lambda!145266 lambda!145176))))

(assert (=> d!1303603 true))

(declare-fun e!2725592 () Bool)

(declare-fun b!4378699 () Bool)

(assert (=> b!4378699 (= e!2725592 (forall!9273 (toList!3142 (+!790 lt!1588594 (h!54753 lt!1588593))) lambda!145265))))

(declare-fun c!744645 () Bool)

(declare-fun bm!304518 () Bool)

(declare-fun call!304524 () Bool)

(assert (=> bm!304518 (= call!304524 (forall!9273 (ite c!744645 (toList!3142 (+!790 lt!1588594 (h!54753 lt!1588593))) (t!356206 (t!356206 lt!1588593))) (ite c!744645 lambda!145263 lambda!145265)))))

(declare-fun b!4378700 () Bool)

(declare-fun e!2725590 () Bool)

(assert (=> b!4378700 (= e!2725590 (invariantList!723 (toList!3142 lt!1589416)))))

(declare-fun bm!304519 () Bool)

(declare-fun call!304525 () Unit!75116)

(assert (=> bm!304519 (= call!304525 (lemmaContainsAllItsOwnKeys!105 (+!790 lt!1588594 (h!54753 lt!1588593))))))

(declare-fun e!2725591 () ListMap!2385)

(assert (=> b!4378701 (= e!2725591 (+!790 lt!1588594 (h!54753 lt!1588593)))))

(declare-fun lt!1589415 () Unit!75116)

(assert (=> b!4378701 (= lt!1589415 call!304525)))

(assert (=> b!4378701 call!304524))

(declare-fun lt!1589422 () Unit!75116)

(assert (=> b!4378701 (= lt!1589422 lt!1589415)))

(declare-fun call!304523 () Bool)

(assert (=> b!4378701 call!304523))

(declare-fun lt!1589420 () Unit!75116)

(declare-fun Unit!75311 () Unit!75116)

(assert (=> b!4378701 (= lt!1589420 Unit!75311)))

(assert (=> d!1303603 e!2725590))

(declare-fun res!1803190 () Bool)

(assert (=> d!1303603 (=> (not res!1803190) (not e!2725590))))

(assert (=> d!1303603 (= res!1803190 (forall!9273 (t!356206 lt!1588593) lambda!145266))))

(assert (=> d!1303603 (= lt!1589416 e!2725591)))

(assert (=> d!1303603 (= c!744645 ((_ is Nil!49156) (t!356206 lt!1588593)))))

(assert (=> d!1303603 (noDuplicateKeys!579 (t!356206 lt!1588593))))

(assert (=> d!1303603 (= (addToMapMapFromBucket!260 (t!356206 lt!1588593) (+!790 lt!1588594 (h!54753 lt!1588593))) lt!1589416)))

(assert (=> b!4378702 (= e!2725591 lt!1589406)))

(declare-fun lt!1589409 () ListMap!2385)

(assert (=> b!4378702 (= lt!1589409 (+!790 (+!790 lt!1588594 (h!54753 lt!1588593)) (h!54753 (t!356206 lt!1588593))))))

(assert (=> b!4378702 (= lt!1589406 (addToMapMapFromBucket!260 (t!356206 (t!356206 lt!1588593)) (+!790 (+!790 lt!1588594 (h!54753 lt!1588593)) (h!54753 (t!356206 lt!1588593)))))))

(declare-fun lt!1589405 () Unit!75116)

(assert (=> b!4378702 (= lt!1589405 call!304525)))

(assert (=> b!4378702 (forall!9273 (toList!3142 (+!790 lt!1588594 (h!54753 lt!1588593))) lambda!145264)))

(declare-fun lt!1589414 () Unit!75116)

(assert (=> b!4378702 (= lt!1589414 lt!1589405)))

(assert (=> b!4378702 (forall!9273 (toList!3142 lt!1589409) lambda!145265)))

(declare-fun lt!1589403 () Unit!75116)

(declare-fun Unit!75312 () Unit!75116)

(assert (=> b!4378702 (= lt!1589403 Unit!75312)))

(assert (=> b!4378702 call!304524))

(declare-fun lt!1589417 () Unit!75116)

(declare-fun Unit!75313 () Unit!75116)

(assert (=> b!4378702 (= lt!1589417 Unit!75313)))

(declare-fun lt!1589408 () Unit!75116)

(declare-fun Unit!75314 () Unit!75116)

(assert (=> b!4378702 (= lt!1589408 Unit!75314)))

(declare-fun lt!1589421 () Unit!75116)

(assert (=> b!4378702 (= lt!1589421 (forallContained!1911 (toList!3142 lt!1589409) lambda!145265 (h!54753 (t!356206 lt!1588593))))))

(assert (=> b!4378702 (contains!11488 lt!1589409 (_1!27637 (h!54753 (t!356206 lt!1588593))))))

(declare-fun lt!1589418 () Unit!75116)

(declare-fun Unit!75315 () Unit!75116)

(assert (=> b!4378702 (= lt!1589418 Unit!75315)))

(assert (=> b!4378702 (contains!11488 lt!1589406 (_1!27637 (h!54753 (t!356206 lt!1588593))))))

(declare-fun lt!1589404 () Unit!75116)

(declare-fun Unit!75316 () Unit!75116)

(assert (=> b!4378702 (= lt!1589404 Unit!75316)))

(assert (=> b!4378702 (forall!9273 (t!356206 lt!1588593) lambda!145265)))

(declare-fun lt!1589411 () Unit!75116)

(declare-fun Unit!75317 () Unit!75116)

(assert (=> b!4378702 (= lt!1589411 Unit!75317)))

(assert (=> b!4378702 call!304523))

(declare-fun lt!1589410 () Unit!75116)

(declare-fun Unit!75318 () Unit!75116)

(assert (=> b!4378702 (= lt!1589410 Unit!75318)))

(declare-fun lt!1589407 () Unit!75116)

(declare-fun Unit!75319 () Unit!75116)

(assert (=> b!4378702 (= lt!1589407 Unit!75319)))

(declare-fun lt!1589413 () Unit!75116)

(assert (=> b!4378702 (= lt!1589413 (addForallContainsKeyThenBeforeAdding!105 (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589406 (_1!27637 (h!54753 (t!356206 lt!1588593))) (_2!27637 (h!54753 (t!356206 lt!1588593)))))))

(assert (=> b!4378702 (forall!9273 (toList!3142 (+!790 lt!1588594 (h!54753 lt!1588593))) lambda!145265)))

(declare-fun lt!1589402 () Unit!75116)

(assert (=> b!4378702 (= lt!1589402 lt!1589413)))

(assert (=> b!4378702 (forall!9273 (toList!3142 (+!790 lt!1588594 (h!54753 lt!1588593))) lambda!145265)))

(declare-fun lt!1589412 () Unit!75116)

(declare-fun Unit!75320 () Unit!75116)

(assert (=> b!4378702 (= lt!1589412 Unit!75320)))

(declare-fun res!1803189 () Bool)

(assert (=> b!4378702 (= res!1803189 (forall!9273 (t!356206 lt!1588593) lambda!145265))))

(assert (=> b!4378702 (=> (not res!1803189) (not e!2725592))))

(assert (=> b!4378702 e!2725592))

(declare-fun lt!1589419 () Unit!75116)

(declare-fun Unit!75321 () Unit!75116)

(assert (=> b!4378702 (= lt!1589419 Unit!75321)))

(declare-fun b!4378703 () Bool)

(declare-fun res!1803188 () Bool)

(assert (=> b!4378703 (=> (not res!1803188) (not e!2725590))))

(assert (=> b!4378703 (= res!1803188 (forall!9273 (toList!3142 (+!790 lt!1588594 (h!54753 lt!1588593))) lambda!145266))))

(declare-fun bm!304520 () Bool)

(assert (=> bm!304520 (= call!304523 (forall!9273 (ite c!744645 (toList!3142 (+!790 lt!1588594 (h!54753 lt!1588593))) (toList!3142 lt!1589409)) (ite c!744645 lambda!145263 lambda!145265)))))

(assert (= (and d!1303603 c!744645) b!4378701))

(assert (= (and d!1303603 (not c!744645)) b!4378702))

(assert (= (and b!4378702 res!1803189) b!4378699))

(assert (= (or b!4378701 b!4378702) bm!304519))

(assert (= (or b!4378701 b!4378702) bm!304518))

(assert (= (or b!4378701 b!4378702) bm!304520))

(assert (= (and d!1303603 res!1803190) b!4378703))

(assert (= (and b!4378703 res!1803188) b!4378700))

(declare-fun m!5014725 () Bool)

(assert (=> b!4378700 m!5014725))

(declare-fun m!5014727 () Bool)

(assert (=> b!4378699 m!5014727))

(declare-fun m!5014729 () Bool)

(assert (=> b!4378703 m!5014729))

(declare-fun m!5014731 () Bool)

(assert (=> bm!304520 m!5014731))

(assert (=> b!4378702 m!5014727))

(assert (=> b!4378702 m!5014727))

(assert (=> b!4378702 m!5013701))

(declare-fun m!5014733 () Bool)

(assert (=> b!4378702 m!5014733))

(declare-fun m!5014735 () Bool)

(assert (=> b!4378702 m!5014735))

(declare-fun m!5014737 () Bool)

(assert (=> b!4378702 m!5014737))

(declare-fun m!5014739 () Bool)

(assert (=> b!4378702 m!5014739))

(declare-fun m!5014741 () Bool)

(assert (=> b!4378702 m!5014741))

(assert (=> b!4378702 m!5014741))

(assert (=> b!4378702 m!5013701))

(assert (=> b!4378702 m!5014735))

(declare-fun m!5014743 () Bool)

(assert (=> b!4378702 m!5014743))

(declare-fun m!5014745 () Bool)

(assert (=> b!4378702 m!5014745))

(declare-fun m!5014747 () Bool)

(assert (=> b!4378702 m!5014747))

(declare-fun m!5014749 () Bool)

(assert (=> b!4378702 m!5014749))

(assert (=> bm!304519 m!5013701))

(declare-fun m!5014751 () Bool)

(assert (=> bm!304519 m!5014751))

(declare-fun m!5014753 () Bool)

(assert (=> d!1303603 m!5014753))

(assert (=> d!1303603 m!5014043))

(declare-fun m!5014755 () Bool)

(assert (=> bm!304518 m!5014755))

(assert (=> b!4378090 d!1303603))

(declare-fun d!1303605 () Bool)

(declare-fun e!2725593 () Bool)

(assert (=> d!1303605 e!2725593))

(declare-fun res!1803191 () Bool)

(assert (=> d!1303605 (=> (not res!1803191) (not e!2725593))))

(declare-fun lt!1589423 () ListMap!2385)

(assert (=> d!1303605 (= res!1803191 (contains!11488 lt!1589423 (_1!27637 (h!54753 lt!1588593))))))

(declare-fun lt!1589424 () List!49280)

(assert (=> d!1303605 (= lt!1589423 (ListMap!2386 lt!1589424))))

(declare-fun lt!1589425 () Unit!75116)

(declare-fun lt!1589426 () Unit!75116)

(assert (=> d!1303605 (= lt!1589425 lt!1589426)))

(assert (=> d!1303605 (= (getValueByKey!545 lt!1589424 (_1!27637 (h!54753 lt!1588593))) (Some!10558 (_2!27637 (h!54753 lt!1588593))))))

(assert (=> d!1303605 (= lt!1589426 (lemmaContainsTupThenGetReturnValue!309 lt!1589424 (_1!27637 (h!54753 lt!1588593)) (_2!27637 (h!54753 lt!1588593))))))

(assert (=> d!1303605 (= lt!1589424 (insertNoDuplicatedKeys!141 (toList!3142 lt!1588594) (_1!27637 (h!54753 lt!1588593)) (_2!27637 (h!54753 lt!1588593))))))

(assert (=> d!1303605 (= (+!790 lt!1588594 (h!54753 lt!1588593)) lt!1589423)))

(declare-fun b!4378704 () Bool)

(declare-fun res!1803192 () Bool)

(assert (=> b!4378704 (=> (not res!1803192) (not e!2725593))))

(assert (=> b!4378704 (= res!1803192 (= (getValueByKey!545 (toList!3142 lt!1589423) (_1!27637 (h!54753 lt!1588593))) (Some!10558 (_2!27637 (h!54753 lt!1588593)))))))

(declare-fun b!4378705 () Bool)

(assert (=> b!4378705 (= e!2725593 (contains!11493 (toList!3142 lt!1589423) (h!54753 lt!1588593)))))

(assert (= (and d!1303605 res!1803191) b!4378704))

(assert (= (and b!4378704 res!1803192) b!4378705))

(declare-fun m!5014757 () Bool)

(assert (=> d!1303605 m!5014757))

(declare-fun m!5014759 () Bool)

(assert (=> d!1303605 m!5014759))

(declare-fun m!5014761 () Bool)

(assert (=> d!1303605 m!5014761))

(declare-fun m!5014763 () Bool)

(assert (=> d!1303605 m!5014763))

(declare-fun m!5014765 () Bool)

(assert (=> b!4378704 m!5014765))

(declare-fun m!5014767 () Bool)

(assert (=> b!4378705 m!5014767))

(assert (=> b!4378090 d!1303605))

(declare-fun d!1303607 () Bool)

(declare-fun e!2725594 () Bool)

(assert (=> d!1303607 e!2725594))

(declare-fun res!1803193 () Bool)

(assert (=> d!1303607 (=> res!1803193 e!2725594)))

(declare-fun e!2725598 () Bool)

(assert (=> d!1303607 (= res!1803193 e!2725598)))

(declare-fun res!1803195 () Bool)

(assert (=> d!1303607 (=> (not res!1803195) (not e!2725598))))

(declare-fun lt!1589427 () Bool)

(assert (=> d!1303607 (= res!1803195 (not lt!1589427))))

(declare-fun lt!1589432 () Bool)

(assert (=> d!1303607 (= lt!1589427 lt!1589432)))

(declare-fun lt!1589433 () Unit!75116)

(declare-fun e!2725595 () Unit!75116)

(assert (=> d!1303607 (= lt!1589433 e!2725595)))

(declare-fun c!744647 () Bool)

(assert (=> d!1303607 (= c!744647 lt!1589432)))

(assert (=> d!1303607 (= lt!1589432 (containsKey!848 (toList!3142 lt!1589053) (_1!27637 (h!54753 lt!1588593))))))

(assert (=> d!1303607 (= (contains!11488 lt!1589053 (_1!27637 (h!54753 lt!1588593))) lt!1589427)))

(declare-fun bm!304521 () Bool)

(declare-fun call!304526 () Bool)

(declare-fun e!2725596 () List!49283)

(assert (=> bm!304521 (= call!304526 (contains!11492 e!2725596 (_1!27637 (h!54753 lt!1588593))))))

(declare-fun c!744646 () Bool)

(assert (=> bm!304521 (= c!744646 c!744647)))

(declare-fun b!4378706 () Bool)

(declare-fun e!2725599 () Bool)

(assert (=> b!4378706 (= e!2725594 e!2725599)))

(declare-fun res!1803194 () Bool)

(assert (=> b!4378706 (=> (not res!1803194) (not e!2725599))))

(assert (=> b!4378706 (= res!1803194 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1589053) (_1!27637 (h!54753 lt!1588593)))))))

(declare-fun b!4378707 () Bool)

(declare-fun e!2725597 () Unit!75116)

(declare-fun Unit!75322 () Unit!75116)

(assert (=> b!4378707 (= e!2725597 Unit!75322)))

(declare-fun b!4378708 () Bool)

(assert (=> b!4378708 false))

(declare-fun lt!1589429 () Unit!75116)

(declare-fun lt!1589428 () Unit!75116)

(assert (=> b!4378708 (= lt!1589429 lt!1589428)))

(assert (=> b!4378708 (containsKey!848 (toList!3142 lt!1589053) (_1!27637 (h!54753 lt!1588593)))))

(assert (=> b!4378708 (= lt!1589428 (lemmaInGetKeysListThenContainsKey!169 (toList!3142 lt!1589053) (_1!27637 (h!54753 lt!1588593))))))

(declare-fun Unit!75323 () Unit!75116)

(assert (=> b!4378708 (= e!2725597 Unit!75323)))

(declare-fun b!4378709 () Bool)

(declare-fun lt!1589434 () Unit!75116)

(assert (=> b!4378709 (= e!2725595 lt!1589434)))

(declare-fun lt!1589431 () Unit!75116)

(assert (=> b!4378709 (= lt!1589431 (lemmaContainsKeyImpliesGetValueByKeyDefined!455 (toList!3142 lt!1589053) (_1!27637 (h!54753 lt!1588593))))))

(assert (=> b!4378709 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1589053) (_1!27637 (h!54753 lt!1588593))))))

(declare-fun lt!1589430 () Unit!75116)

(assert (=> b!4378709 (= lt!1589430 lt!1589431)))

(assert (=> b!4378709 (= lt!1589434 (lemmaInListThenGetKeysListContains!168 (toList!3142 lt!1589053) (_1!27637 (h!54753 lt!1588593))))))

(assert (=> b!4378709 call!304526))

(declare-fun b!4378710 () Bool)

(assert (=> b!4378710 (= e!2725599 (contains!11492 (keys!16669 lt!1589053) (_1!27637 (h!54753 lt!1588593))))))

(declare-fun b!4378711 () Bool)

(assert (=> b!4378711 (= e!2725596 (keys!16669 lt!1589053))))

(declare-fun b!4378712 () Bool)

(assert (=> b!4378712 (= e!2725595 e!2725597)))

(declare-fun c!744648 () Bool)

(assert (=> b!4378712 (= c!744648 call!304526)))

(declare-fun b!4378713 () Bool)

(assert (=> b!4378713 (= e!2725596 (getKeysList!171 (toList!3142 lt!1589053)))))

(declare-fun b!4378714 () Bool)

(assert (=> b!4378714 (= e!2725598 (not (contains!11492 (keys!16669 lt!1589053) (_1!27637 (h!54753 lt!1588593)))))))

(assert (= (and d!1303607 c!744647) b!4378709))

(assert (= (and d!1303607 (not c!744647)) b!4378712))

(assert (= (and b!4378712 c!744648) b!4378708))

(assert (= (and b!4378712 (not c!744648)) b!4378707))

(assert (= (or b!4378709 b!4378712) bm!304521))

(assert (= (and bm!304521 c!744646) b!4378713))

(assert (= (and bm!304521 (not c!744646)) b!4378711))

(assert (= (and d!1303607 res!1803195) b!4378714))

(assert (= (and d!1303607 (not res!1803193)) b!4378706))

(assert (= (and b!4378706 res!1803194) b!4378710))

(declare-fun m!5014769 () Bool)

(assert (=> b!4378714 m!5014769))

(assert (=> b!4378714 m!5014769))

(declare-fun m!5014771 () Bool)

(assert (=> b!4378714 m!5014771))

(declare-fun m!5014773 () Bool)

(assert (=> b!4378713 m!5014773))

(declare-fun m!5014775 () Bool)

(assert (=> b!4378708 m!5014775))

(declare-fun m!5014777 () Bool)

(assert (=> b!4378708 m!5014777))

(assert (=> b!4378711 m!5014769))

(declare-fun m!5014779 () Bool)

(assert (=> bm!304521 m!5014779))

(declare-fun m!5014781 () Bool)

(assert (=> b!4378706 m!5014781))

(assert (=> b!4378706 m!5014781))

(declare-fun m!5014783 () Bool)

(assert (=> b!4378706 m!5014783))

(assert (=> b!4378710 m!5014769))

(assert (=> b!4378710 m!5014769))

(assert (=> b!4378710 m!5014771))

(assert (=> d!1303607 m!5014775))

(declare-fun m!5014785 () Bool)

(assert (=> b!4378709 m!5014785))

(assert (=> b!4378709 m!5014781))

(assert (=> b!4378709 m!5014781))

(assert (=> b!4378709 m!5014783))

(declare-fun m!5014787 () Bool)

(assert (=> b!4378709 m!5014787))

(assert (=> b!4378090 d!1303607))

(declare-fun d!1303609 () Bool)

(assert (=> d!1303609 (dynLambda!20710 lambda!145175 (h!54753 lt!1588593))))

(declare-fun lt!1589435 () Unit!75116)

(assert (=> d!1303609 (= lt!1589435 (choose!27305 (toList!3142 lt!1589056) lambda!145175 (h!54753 lt!1588593)))))

(declare-fun e!2725600 () Bool)

(assert (=> d!1303609 e!2725600))

(declare-fun res!1803196 () Bool)

(assert (=> d!1303609 (=> (not res!1803196) (not e!2725600))))

(assert (=> d!1303609 (= res!1803196 (forall!9273 (toList!3142 lt!1589056) lambda!145175))))

(assert (=> d!1303609 (= (forallContained!1911 (toList!3142 lt!1589056) lambda!145175 (h!54753 lt!1588593)) lt!1589435)))

(declare-fun b!4378715 () Bool)

(assert (=> b!4378715 (= e!2725600 (contains!11493 (toList!3142 lt!1589056) (h!54753 lt!1588593)))))

(assert (= (and d!1303609 res!1803196) b!4378715))

(declare-fun b_lambda!135019 () Bool)

(assert (=> (not b_lambda!135019) (not d!1303609)))

(declare-fun m!5014789 () Bool)

(assert (=> d!1303609 m!5014789))

(declare-fun m!5014791 () Bool)

(assert (=> d!1303609 m!5014791))

(assert (=> d!1303609 m!5013705))

(declare-fun m!5014793 () Bool)

(assert (=> b!4378715 m!5014793))

(assert (=> b!4378090 d!1303609))

(declare-fun d!1303611 () Bool)

(declare-fun res!1803197 () Bool)

(declare-fun e!2725601 () Bool)

(assert (=> d!1303611 (=> res!1803197 e!2725601)))

(assert (=> d!1303611 (= res!1803197 ((_ is Nil!49156) lt!1588593))))

(assert (=> d!1303611 (= (forall!9273 lt!1588593 lambda!145175) e!2725601)))

(declare-fun b!4378716 () Bool)

(declare-fun e!2725602 () Bool)

(assert (=> b!4378716 (= e!2725601 e!2725602)))

(declare-fun res!1803198 () Bool)

(assert (=> b!4378716 (=> (not res!1803198) (not e!2725602))))

(assert (=> b!4378716 (= res!1803198 (dynLambda!20710 lambda!145175 (h!54753 lt!1588593)))))

(declare-fun b!4378717 () Bool)

(assert (=> b!4378717 (= e!2725602 (forall!9273 (t!356206 lt!1588593) lambda!145175))))

(assert (= (and d!1303611 (not res!1803197)) b!4378716))

(assert (= (and b!4378716 res!1803198) b!4378717))

(declare-fun b_lambda!135021 () Bool)

(assert (=> (not b_lambda!135021) (not b!4378716)))

(assert (=> b!4378716 m!5014789))

(declare-fun m!5014795 () Bool)

(assert (=> b!4378717 m!5014795))

(assert (=> b!4378090 d!1303611))

(declare-fun d!1303613 () Bool)

(assert (=> d!1303613 (= (invariantList!723 (toList!3142 lt!1589028)) (noDuplicatedKeys!135 (toList!3142 lt!1589028)))))

(declare-fun bs!661121 () Bool)

(assert (= bs!661121 d!1303613))

(declare-fun m!5014797 () Bool)

(assert (=> bs!661121 m!5014797))

(assert (=> d!1303267 d!1303613))

(declare-fun d!1303615 () Bool)

(declare-fun res!1803199 () Bool)

(declare-fun e!2725603 () Bool)

(assert (=> d!1303615 (=> res!1803199 e!2725603)))

(assert (=> d!1303615 (= res!1803199 ((_ is Nil!49157) (toList!3141 lt!1588596)))))

(assert (=> d!1303615 (= (forall!9271 (toList!3141 lt!1588596) lambda!145168) e!2725603)))

(declare-fun b!4378718 () Bool)

(declare-fun e!2725604 () Bool)

(assert (=> b!4378718 (= e!2725603 e!2725604)))

(declare-fun res!1803200 () Bool)

(assert (=> b!4378718 (=> (not res!1803200) (not e!2725604))))

(assert (=> b!4378718 (= res!1803200 (dynLambda!20709 lambda!145168 (h!54754 (toList!3141 lt!1588596))))))

(declare-fun b!4378719 () Bool)

(assert (=> b!4378719 (= e!2725604 (forall!9271 (t!356207 (toList!3141 lt!1588596)) lambda!145168))))

(assert (= (and d!1303615 (not res!1803199)) b!4378718))

(assert (= (and b!4378718 res!1803200) b!4378719))

(declare-fun b_lambda!135023 () Bool)

(assert (=> (not b_lambda!135023) (not b!4378718)))

(declare-fun m!5014799 () Bool)

(assert (=> b!4378718 m!5014799))

(declare-fun m!5014801 () Bool)

(assert (=> b!4378719 m!5014801))

(assert (=> d!1303267 d!1303615))

(declare-fun d!1303617 () Bool)

(declare-fun e!2725605 () Bool)

(assert (=> d!1303617 e!2725605))

(declare-fun res!1803201 () Bool)

(assert (=> d!1303617 (=> res!1803201 e!2725605)))

(declare-fun e!2725609 () Bool)

(assert (=> d!1303617 (= res!1803201 e!2725609)))

(declare-fun res!1803203 () Bool)

(assert (=> d!1303617 (=> (not res!1803203) (not e!2725609))))

(declare-fun lt!1589436 () Bool)

(assert (=> d!1303617 (= res!1803203 (not lt!1589436))))

(declare-fun lt!1589441 () Bool)

(assert (=> d!1303617 (= lt!1589436 lt!1589441)))

(declare-fun lt!1589442 () Unit!75116)

(declare-fun e!2725606 () Unit!75116)

(assert (=> d!1303617 (= lt!1589442 e!2725606)))

(declare-fun c!744650 () Bool)

(assert (=> d!1303617 (= c!744650 lt!1589441)))

(assert (=> d!1303617 (= lt!1589441 (containsKey!848 (toList!3142 lt!1588960) (_1!27637 lt!1588602)))))

(assert (=> d!1303617 (= (contains!11488 lt!1588960 (_1!27637 lt!1588602)) lt!1589436)))

(declare-fun bm!304522 () Bool)

(declare-fun call!304527 () Bool)

(declare-fun e!2725607 () List!49283)

(assert (=> bm!304522 (= call!304527 (contains!11492 e!2725607 (_1!27637 lt!1588602)))))

(declare-fun c!744649 () Bool)

(assert (=> bm!304522 (= c!744649 c!744650)))

(declare-fun b!4378720 () Bool)

(declare-fun e!2725610 () Bool)

(assert (=> b!4378720 (= e!2725605 e!2725610)))

(declare-fun res!1803202 () Bool)

(assert (=> b!4378720 (=> (not res!1803202) (not e!2725610))))

(assert (=> b!4378720 (= res!1803202 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588960) (_1!27637 lt!1588602))))))

(declare-fun b!4378721 () Bool)

(declare-fun e!2725608 () Unit!75116)

(declare-fun Unit!75333 () Unit!75116)

(assert (=> b!4378721 (= e!2725608 Unit!75333)))

(declare-fun b!4378722 () Bool)

(assert (=> b!4378722 false))

(declare-fun lt!1589438 () Unit!75116)

(declare-fun lt!1589437 () Unit!75116)

(assert (=> b!4378722 (= lt!1589438 lt!1589437)))

(assert (=> b!4378722 (containsKey!848 (toList!3142 lt!1588960) (_1!27637 lt!1588602))))

(assert (=> b!4378722 (= lt!1589437 (lemmaInGetKeysListThenContainsKey!169 (toList!3142 lt!1588960) (_1!27637 lt!1588602)))))

(declare-fun Unit!75335 () Unit!75116)

(assert (=> b!4378722 (= e!2725608 Unit!75335)))

(declare-fun b!4378723 () Bool)

(declare-fun lt!1589443 () Unit!75116)

(assert (=> b!4378723 (= e!2725606 lt!1589443)))

(declare-fun lt!1589440 () Unit!75116)

(assert (=> b!4378723 (= lt!1589440 (lemmaContainsKeyImpliesGetValueByKeyDefined!455 (toList!3142 lt!1588960) (_1!27637 lt!1588602)))))

(assert (=> b!4378723 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588960) (_1!27637 lt!1588602)))))

(declare-fun lt!1589439 () Unit!75116)

(assert (=> b!4378723 (= lt!1589439 lt!1589440)))

(assert (=> b!4378723 (= lt!1589443 (lemmaInListThenGetKeysListContains!168 (toList!3142 lt!1588960) (_1!27637 lt!1588602)))))

(assert (=> b!4378723 call!304527))

(declare-fun b!4378724 () Bool)

(assert (=> b!4378724 (= e!2725610 (contains!11492 (keys!16669 lt!1588960) (_1!27637 lt!1588602)))))

(declare-fun b!4378725 () Bool)

(assert (=> b!4378725 (= e!2725607 (keys!16669 lt!1588960))))

(declare-fun b!4378726 () Bool)

(assert (=> b!4378726 (= e!2725606 e!2725608)))

(declare-fun c!744651 () Bool)

(assert (=> b!4378726 (= c!744651 call!304527)))

(declare-fun b!4378727 () Bool)

(assert (=> b!4378727 (= e!2725607 (getKeysList!171 (toList!3142 lt!1588960)))))

(declare-fun b!4378728 () Bool)

(assert (=> b!4378728 (= e!2725609 (not (contains!11492 (keys!16669 lt!1588960) (_1!27637 lt!1588602))))))

(assert (= (and d!1303617 c!744650) b!4378723))

(assert (= (and d!1303617 (not c!744650)) b!4378726))

(assert (= (and b!4378726 c!744651) b!4378722))

(assert (= (and b!4378726 (not c!744651)) b!4378721))

(assert (= (or b!4378723 b!4378726) bm!304522))

(assert (= (and bm!304522 c!744649) b!4378727))

(assert (= (and bm!304522 (not c!744649)) b!4378725))

(assert (= (and d!1303617 res!1803203) b!4378728))

(assert (= (and d!1303617 (not res!1803201)) b!4378720))

(assert (= (and b!4378720 res!1803202) b!4378724))

(declare-fun m!5014803 () Bool)

(assert (=> b!4378728 m!5014803))

(assert (=> b!4378728 m!5014803))

(declare-fun m!5014805 () Bool)

(assert (=> b!4378728 m!5014805))

(declare-fun m!5014807 () Bool)

(assert (=> b!4378727 m!5014807))

(declare-fun m!5014809 () Bool)

(assert (=> b!4378722 m!5014809))

(declare-fun m!5014811 () Bool)

(assert (=> b!4378722 m!5014811))

(assert (=> b!4378725 m!5014803))

(declare-fun m!5014813 () Bool)

(assert (=> bm!304522 m!5014813))

(assert (=> b!4378720 m!5013491))

(assert (=> b!4378720 m!5013491))

(declare-fun m!5014815 () Bool)

(assert (=> b!4378720 m!5014815))

(assert (=> b!4378724 m!5014803))

(assert (=> b!4378724 m!5014803))

(assert (=> b!4378724 m!5014805))

(assert (=> d!1303617 m!5014809))

(declare-fun m!5014817 () Bool)

(assert (=> b!4378723 m!5014817))

(assert (=> b!4378723 m!5013491))

(assert (=> b!4378723 m!5013491))

(assert (=> b!4378723 m!5014815))

(declare-fun m!5014819 () Bool)

(assert (=> b!4378723 m!5014819))

(assert (=> d!1303239 d!1303617))

(declare-fun d!1303619 () Bool)

(declare-fun c!744652 () Bool)

(assert (=> d!1303619 (= c!744652 (and ((_ is Cons!49156) lt!1588961) (= (_1!27637 (h!54753 lt!1588961)) (_1!27637 lt!1588602))))))

(declare-fun e!2725611 () Option!10559)

(assert (=> d!1303619 (= (getValueByKey!545 lt!1588961 (_1!27637 lt!1588602)) e!2725611)))

(declare-fun b!4378730 () Bool)

(declare-fun e!2725612 () Option!10559)

(assert (=> b!4378730 (= e!2725611 e!2725612)))

(declare-fun c!744653 () Bool)

(assert (=> b!4378730 (= c!744653 (and ((_ is Cons!49156) lt!1588961) (not (= (_1!27637 (h!54753 lt!1588961)) (_1!27637 lt!1588602)))))))

(declare-fun b!4378729 () Bool)

(assert (=> b!4378729 (= e!2725611 (Some!10558 (_2!27637 (h!54753 lt!1588961))))))

(declare-fun b!4378731 () Bool)

(assert (=> b!4378731 (= e!2725612 (getValueByKey!545 (t!356206 lt!1588961) (_1!27637 lt!1588602)))))

(declare-fun b!4378732 () Bool)

(assert (=> b!4378732 (= e!2725612 None!10558)))

(assert (= (and d!1303619 c!744652) b!4378729))

(assert (= (and d!1303619 (not c!744652)) b!4378730))

(assert (= (and b!4378730 c!744653) b!4378731))

(assert (= (and b!4378730 (not c!744653)) b!4378732))

(declare-fun m!5014821 () Bool)

(assert (=> b!4378731 m!5014821))

(assert (=> d!1303239 d!1303619))

(declare-fun d!1303621 () Bool)

(assert (=> d!1303621 (= (getValueByKey!545 lt!1588961 (_1!27637 lt!1588602)) (Some!10558 (_2!27637 lt!1588602)))))

(declare-fun lt!1589446 () Unit!75116)

(declare-fun choose!27315 (List!49280 K!10515 V!10761) Unit!75116)

(assert (=> d!1303621 (= lt!1589446 (choose!27315 lt!1588961 (_1!27637 lt!1588602) (_2!27637 lt!1588602)))))

(declare-fun e!2725617 () Bool)

(assert (=> d!1303621 e!2725617))

(declare-fun res!1803208 () Bool)

(assert (=> d!1303621 (=> (not res!1803208) (not e!2725617))))

(assert (=> d!1303621 (= res!1803208 (invariantList!723 lt!1588961))))

(assert (=> d!1303621 (= (lemmaContainsTupThenGetReturnValue!309 lt!1588961 (_1!27637 lt!1588602) (_2!27637 lt!1588602)) lt!1589446)))

(declare-fun b!4378737 () Bool)

(declare-fun res!1803209 () Bool)

(assert (=> b!4378737 (=> (not res!1803209) (not e!2725617))))

(assert (=> b!4378737 (= res!1803209 (containsKey!848 lt!1588961 (_1!27637 lt!1588602)))))

(declare-fun b!4378738 () Bool)

(assert (=> b!4378738 (= e!2725617 (contains!11493 lt!1588961 (tuple2!48687 (_1!27637 lt!1588602) (_2!27637 lt!1588602))))))

(assert (= (and d!1303621 res!1803208) b!4378737))

(assert (= (and b!4378737 res!1803209) b!4378738))

(assert (=> d!1303621 m!5013485))

(declare-fun m!5014823 () Bool)

(assert (=> d!1303621 m!5014823))

(declare-fun m!5014825 () Bool)

(assert (=> d!1303621 m!5014825))

(declare-fun m!5014827 () Bool)

(assert (=> b!4378737 m!5014827))

(declare-fun m!5014829 () Bool)

(assert (=> b!4378738 m!5014829))

(assert (=> d!1303239 d!1303621))

(declare-fun b!4378826 () Bool)

(declare-fun e!2725661 () List!49280)

(declare-fun lt!1589532 () List!49280)

(assert (=> b!4378826 (= e!2725661 lt!1589532)))

(declare-fun call!304557 () List!49280)

(assert (=> b!4378826 (= lt!1589532 call!304557)))

(declare-fun c!744691 () Bool)

(assert (=> b!4378826 (= c!744691 (containsKey!848 (insertNoDuplicatedKeys!141 (t!356206 (toList!3142 lt!1588613)) (_1!27637 lt!1588602) (_2!27637 lt!1588602)) (_1!27637 (h!54753 (toList!3142 lt!1588613)))))))

(declare-fun lt!1589525 () Unit!75116)

(declare-fun e!2725665 () Unit!75116)

(assert (=> b!4378826 (= lt!1589525 e!2725665)))

(declare-fun bm!304549 () Bool)

(declare-fun call!304554 () List!49280)

(declare-fun call!304556 () List!49280)

(assert (=> bm!304549 (= call!304554 call!304556)))

(declare-fun b!4378827 () Bool)

(declare-fun e!2725664 () Bool)

(assert (=> b!4378827 (= e!2725664 (not (containsKey!848 (toList!3142 lt!1588613) (_1!27637 lt!1588602))))))

(declare-fun b!4378828 () Bool)

(assert (=> b!4378828 false))

(declare-fun lt!1589529 () Unit!75116)

(declare-fun lt!1589526 () Unit!75116)

(assert (=> b!4378828 (= lt!1589529 lt!1589526)))

(assert (=> b!4378828 (containsKey!848 (t!356206 (toList!3142 lt!1588613)) (_1!27637 (h!54753 (toList!3142 lt!1588613))))))

(assert (=> b!4378828 (= lt!1589526 (lemmaInGetKeysListThenContainsKey!169 (t!356206 (toList!3142 lt!1588613)) (_1!27637 (h!54753 (toList!3142 lt!1588613)))))))

(declare-fun lt!1589531 () Unit!75116)

(declare-fun lt!1589533 () Unit!75116)

(assert (=> b!4378828 (= lt!1589531 lt!1589533)))

(declare-fun call!304555 () List!49283)

(assert (=> b!4378828 (contains!11492 call!304555 (_1!27637 (h!54753 (toList!3142 lt!1588613))))))

(declare-fun lt!1589528 () List!49280)

(assert (=> b!4378828 (= lt!1589533 (lemmaInListThenGetKeysListContains!168 lt!1589528 (_1!27637 (h!54753 (toList!3142 lt!1588613)))))))

(assert (=> b!4378828 (= lt!1589528 (insertNoDuplicatedKeys!141 (t!356206 (toList!3142 lt!1588613)) (_1!27637 lt!1588602) (_2!27637 lt!1588602)))))

(declare-fun Unit!75337 () Unit!75116)

(assert (=> b!4378828 (= e!2725665 Unit!75337)))

(declare-fun c!744689 () Bool)

(declare-fun c!744688 () Bool)

(declare-fun e!2725663 () List!49280)

(declare-fun c!744692 () Bool)

(declare-fun bm!304550 () Bool)

(declare-fun $colon$colon!725 (List!49280 tuple2!48686) List!49280)

(assert (=> bm!304550 (= call!304556 ($colon$colon!725 (ite c!744688 (t!356206 (toList!3142 lt!1588613)) (ite c!744692 (toList!3142 lt!1588613) e!2725663)) (ite (or c!744688 c!744692) (tuple2!48687 (_1!27637 lt!1588602) (_2!27637 lt!1588602)) (ite c!744689 (h!54753 (toList!3142 lt!1588613)) (tuple2!48687 (_1!27637 lt!1588602) (_2!27637 lt!1588602))))))))

(declare-fun b!4378829 () Bool)

(assert (=> b!4378829 (= c!744689 ((_ is Cons!49156) (toList!3142 lt!1588613)))))

(declare-fun e!2725662 () List!49280)

(assert (=> b!4378829 (= e!2725662 e!2725661)))

(declare-fun b!4378830 () Bool)

(declare-fun res!1803232 () Bool)

(declare-fun e!2725666 () Bool)

(assert (=> b!4378830 (=> (not res!1803232) (not e!2725666))))

(declare-fun lt!1589524 () List!49280)

(assert (=> b!4378830 (= res!1803232 (contains!11493 lt!1589524 (tuple2!48687 (_1!27637 lt!1588602) (_2!27637 lt!1588602))))))

(declare-fun b!4378831 () Bool)

(declare-fun Unit!75338 () Unit!75116)

(assert (=> b!4378831 (= e!2725665 Unit!75338)))

(declare-fun b!4378832 () Bool)

(assert (=> b!4378832 (= e!2725661 call!304557)))

(declare-fun b!4378833 () Bool)

(assert (=> b!4378833 (= e!2725663 Nil!49156)))

(declare-fun bm!304551 () Bool)

(assert (=> bm!304551 (= call!304557 call!304554)))

(declare-fun c!744690 () Bool)

(assert (=> bm!304551 (= c!744690 c!744689)))

(declare-fun b!4378834 () Bool)

(assert (=> b!4378834 (= e!2725666 (= (content!7811 (getKeysList!171 lt!1589524)) ((_ map or) (content!7811 (getKeysList!171 (toList!3142 lt!1588613))) (store ((as const (Array K!10515 Bool)) false) (_1!27637 lt!1588602) true))))))

(declare-fun b!4378835 () Bool)

(assert (=> b!4378835 (= e!2725663 (insertNoDuplicatedKeys!141 (t!356206 (toList!3142 lt!1588613)) (_1!27637 lt!1588602) (_2!27637 lt!1588602)))))

(declare-fun b!4378836 () Bool)

(declare-fun res!1803231 () Bool)

(assert (=> b!4378836 (=> (not res!1803231) (not e!2725666))))

(assert (=> b!4378836 (= res!1803231 (containsKey!848 lt!1589524 (_1!27637 lt!1588602)))))

(declare-fun b!4378837 () Bool)

(declare-fun e!2725667 () List!49280)

(assert (=> b!4378837 (= e!2725667 e!2725662)))

(declare-fun res!1803229 () Bool)

(assert (=> b!4378837 (= res!1803229 ((_ is Cons!49156) (toList!3142 lt!1588613)))))

(assert (=> b!4378837 (=> (not res!1803229) (not e!2725664))))

(assert (=> b!4378837 (= c!744692 e!2725664)))

(declare-fun b!4378838 () Bool)

(assert (=> b!4378838 (= e!2725662 call!304554)))

(declare-fun d!1303623 () Bool)

(assert (=> d!1303623 e!2725666))

(declare-fun res!1803230 () Bool)

(assert (=> d!1303623 (=> (not res!1803230) (not e!2725666))))

(assert (=> d!1303623 (= res!1803230 (invariantList!723 lt!1589524))))

(assert (=> d!1303623 (= lt!1589524 e!2725667)))

(assert (=> d!1303623 (= c!744688 (and ((_ is Cons!49156) (toList!3142 lt!1588613)) (= (_1!27637 (h!54753 (toList!3142 lt!1588613))) (_1!27637 lt!1588602))))))

(assert (=> d!1303623 (invariantList!723 (toList!3142 lt!1588613))))

(assert (=> d!1303623 (= (insertNoDuplicatedKeys!141 (toList!3142 lt!1588613) (_1!27637 lt!1588602) (_2!27637 lt!1588602)) lt!1589524)))

(declare-fun bm!304552 () Bool)

(assert (=> bm!304552 (= call!304555 (getKeysList!171 (ite c!744688 (toList!3142 lt!1588613) lt!1589528)))))

(declare-fun b!4378839 () Bool)

(assert (=> b!4378839 (= e!2725667 call!304556)))

(declare-fun lt!1589534 () List!49283)

(assert (=> b!4378839 (= lt!1589534 call!304555)))

(declare-fun lt!1589527 () Unit!75116)

(declare-fun lemmaSubseqRefl!81 (List!49283) Unit!75116)

(assert (=> b!4378839 (= lt!1589527 (lemmaSubseqRefl!81 lt!1589534))))

(declare-fun subseq!597 (List!49283 List!49283) Bool)

(assert (=> b!4378839 (subseq!597 lt!1589534 lt!1589534)))

(declare-fun lt!1589530 () Unit!75116)

(assert (=> b!4378839 (= lt!1589530 lt!1589527)))

(assert (= (and d!1303623 c!744688) b!4378839))

(assert (= (and d!1303623 (not c!744688)) b!4378837))

(assert (= (and b!4378837 res!1803229) b!4378827))

(assert (= (and b!4378837 c!744692) b!4378838))

(assert (= (and b!4378837 (not c!744692)) b!4378829))

(assert (= (and b!4378829 c!744689) b!4378826))

(assert (= (and b!4378829 (not c!744689)) b!4378832))

(assert (= (and b!4378826 c!744691) b!4378828))

(assert (= (and b!4378826 (not c!744691)) b!4378831))

(assert (= (or b!4378826 b!4378832) bm!304551))

(assert (= (and bm!304551 c!744690) b!4378835))

(assert (= (and bm!304551 (not c!744690)) b!4378833))

(assert (= (or b!4378838 bm!304551) bm!304549))

(assert (= (or b!4378839 b!4378828) bm!304552))

(assert (= (or b!4378839 bm!304549) bm!304550))

(assert (= (and d!1303623 res!1803230) b!4378836))

(assert (= (and b!4378836 res!1803231) b!4378830))

(assert (= (and b!4378830 res!1803232) b!4378834))

(declare-fun m!5014875 () Bool)

(assert (=> b!4378839 m!5014875))

(declare-fun m!5014877 () Bool)

(assert (=> b!4378839 m!5014877))

(declare-fun m!5014879 () Bool)

(assert (=> b!4378826 m!5014879))

(assert (=> b!4378826 m!5014879))

(declare-fun m!5014881 () Bool)

(assert (=> b!4378826 m!5014881))

(assert (=> b!4378835 m!5014879))

(declare-fun m!5014883 () Bool)

(assert (=> b!4378830 m!5014883))

(declare-fun m!5014885 () Bool)

(assert (=> b!4378834 m!5014885))

(declare-fun m!5014887 () Bool)

(assert (=> b!4378834 m!5014887))

(declare-fun m!5014889 () Bool)

(assert (=> b!4378834 m!5014889))

(assert (=> b!4378834 m!5014887))

(declare-fun m!5014891 () Bool)

(assert (=> b!4378834 m!5014891))

(assert (=> b!4378834 m!5014885))

(declare-fun m!5014893 () Bool)

(assert (=> b!4378834 m!5014893))

(declare-fun m!5014895 () Bool)

(assert (=> d!1303623 m!5014895))

(declare-fun m!5014897 () Bool)

(assert (=> d!1303623 m!5014897))

(declare-fun m!5014899 () Bool)

(assert (=> b!4378828 m!5014899))

(declare-fun m!5014901 () Bool)

(assert (=> b!4378828 m!5014901))

(declare-fun m!5014903 () Bool)

(assert (=> b!4378828 m!5014903))

(declare-fun m!5014905 () Bool)

(assert (=> b!4378828 m!5014905))

(assert (=> b!4378828 m!5014879))

(declare-fun m!5014909 () Bool)

(assert (=> b!4378827 m!5014909))

(declare-fun m!5014913 () Bool)

(assert (=> bm!304552 m!5014913))

(declare-fun m!5014917 () Bool)

(assert (=> b!4378836 m!5014917))

(declare-fun m!5014919 () Bool)

(assert (=> bm!304550 m!5014919))

(assert (=> d!1303239 d!1303623))

(declare-fun d!1303631 () Bool)

(declare-fun res!1803241 () Bool)

(declare-fun e!2725676 () Bool)

(assert (=> d!1303631 (=> res!1803241 e!2725676)))

(assert (=> d!1303631 (= res!1803241 ((_ is Nil!49156) lt!1588612))))

(assert (=> d!1303631 (= (forall!9273 lt!1588612 lambda!145161) e!2725676)))

(declare-fun b!4378848 () Bool)

(declare-fun e!2725677 () Bool)

(assert (=> b!4378848 (= e!2725676 e!2725677)))

(declare-fun res!1803242 () Bool)

(assert (=> b!4378848 (=> (not res!1803242) (not e!2725677))))

(assert (=> b!4378848 (= res!1803242 (dynLambda!20710 lambda!145161 (h!54753 lt!1588612)))))

(declare-fun b!4378849 () Bool)

(assert (=> b!4378849 (= e!2725677 (forall!9273 (t!356206 lt!1588612) lambda!145161))))

(assert (= (and d!1303631 (not res!1803241)) b!4378848))

(assert (= (and b!4378848 res!1803242) b!4378849))

(declare-fun b_lambda!135027 () Bool)

(assert (=> (not b_lambda!135027) (not b!4378848)))

(declare-fun m!5014925 () Bool)

(assert (=> b!4378848 m!5014925))

(declare-fun m!5014927 () Bool)

(assert (=> b!4378849 m!5014927))

(assert (=> b!4378047 d!1303631))

(declare-fun d!1303635 () Bool)

(declare-fun res!1803245 () Bool)

(declare-fun e!2725680 () Bool)

(assert (=> d!1303635 (=> res!1803245 e!2725680)))

(assert (=> d!1303635 (= res!1803245 ((_ is Nil!49156) (toList!3142 lt!1588974)))))

(assert (=> d!1303635 (= (forall!9273 (toList!3142 lt!1588974) lambda!145161) e!2725680)))

(declare-fun b!4378852 () Bool)

(declare-fun e!2725681 () Bool)

(assert (=> b!4378852 (= e!2725680 e!2725681)))

(declare-fun res!1803246 () Bool)

(assert (=> b!4378852 (=> (not res!1803246) (not e!2725681))))

(assert (=> b!4378852 (= res!1803246 (dynLambda!20710 lambda!145161 (h!54753 (toList!3142 lt!1588974))))))

(declare-fun b!4378853 () Bool)

(assert (=> b!4378853 (= e!2725681 (forall!9273 (t!356206 (toList!3142 lt!1588974)) lambda!145161))))

(assert (= (and d!1303635 (not res!1803245)) b!4378852))

(assert (= (and b!4378852 res!1803246) b!4378853))

(declare-fun b_lambda!135029 () Bool)

(assert (=> (not b_lambda!135029) (not b!4378852)))

(declare-fun m!5014933 () Bool)

(assert (=> b!4378852 m!5014933))

(declare-fun m!5014935 () Bool)

(assert (=> b!4378853 m!5014935))

(assert (=> b!4378047 d!1303635))

(declare-fun d!1303639 () Bool)

(declare-fun res!1803250 () Bool)

(declare-fun e!2725688 () Bool)

(assert (=> d!1303639 (=> res!1803250 e!2725688)))

(assert (=> d!1303639 (= res!1803250 ((_ is Nil!49156) (toList!3142 (+!790 lt!1588594 lt!1588602))))))

(assert (=> d!1303639 (= (forall!9273 (toList!3142 (+!790 lt!1588594 lt!1588602)) lambda!145160) e!2725688)))

(declare-fun b!4378863 () Bool)

(declare-fun e!2725689 () Bool)

(assert (=> b!4378863 (= e!2725688 e!2725689)))

(declare-fun res!1803251 () Bool)

(assert (=> b!4378863 (=> (not res!1803251) (not e!2725689))))

(assert (=> b!4378863 (= res!1803251 (dynLambda!20710 lambda!145160 (h!54753 (toList!3142 (+!790 lt!1588594 lt!1588602)))))))

(declare-fun b!4378864 () Bool)

(assert (=> b!4378864 (= e!2725689 (forall!9273 (t!356206 (toList!3142 (+!790 lt!1588594 lt!1588602))) lambda!145160))))

(assert (= (and d!1303639 (not res!1803250)) b!4378863))

(assert (= (and b!4378863 res!1803251) b!4378864))

(declare-fun b_lambda!135031 () Bool)

(assert (=> (not b_lambda!135031) (not b!4378863)))

(declare-fun m!5014937 () Bool)

(assert (=> b!4378863 m!5014937))

(declare-fun m!5014939 () Bool)

(assert (=> b!4378864 m!5014939))

(assert (=> b!4378047 d!1303639))

(declare-fun d!1303641 () Bool)

(assert (=> d!1303641 (dynLambda!20710 lambda!145161 (h!54753 lt!1588612))))

(declare-fun lt!1589546 () Unit!75116)

(assert (=> d!1303641 (= lt!1589546 (choose!27305 (toList!3142 lt!1588974) lambda!145161 (h!54753 lt!1588612)))))

(declare-fun e!2725690 () Bool)

(assert (=> d!1303641 e!2725690))

(declare-fun res!1803252 () Bool)

(assert (=> d!1303641 (=> (not res!1803252) (not e!2725690))))

(assert (=> d!1303641 (= res!1803252 (forall!9273 (toList!3142 lt!1588974) lambda!145161))))

(assert (=> d!1303641 (= (forallContained!1911 (toList!3142 lt!1588974) lambda!145161 (h!54753 lt!1588612)) lt!1589546)))

(declare-fun b!4378865 () Bool)

(assert (=> b!4378865 (= e!2725690 (contains!11493 (toList!3142 lt!1588974) (h!54753 lt!1588612)))))

(assert (= (and d!1303641 res!1803252) b!4378865))

(declare-fun b_lambda!135033 () Bool)

(assert (=> (not b_lambda!135033) (not d!1303641)))

(assert (=> d!1303641 m!5014925))

(declare-fun m!5014941 () Bool)

(assert (=> d!1303641 m!5014941))

(assert (=> d!1303641 m!5013521))

(declare-fun m!5014947 () Bool)

(assert (=> b!4378865 m!5014947))

(assert (=> b!4378047 d!1303641))

(declare-fun bs!661122 () Bool)

(declare-fun b!4378868 () Bool)

(assert (= bs!661122 (and b!4378868 b!4378702)))

(declare-fun lambda!145267 () Int)

(assert (=> bs!661122 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589406) (= lambda!145267 lambda!145265))))

(declare-fun bs!661123 () Bool)

(assert (= bs!661123 (and b!4378868 b!4378460)))

(assert (=> bs!661123 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589239) (= lambda!145267 lambda!145228))))

(declare-fun bs!661124 () Bool)

(assert (= bs!661124 (and b!4378868 d!1303179)))

(assert (=> bs!661124 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588922) (= lambda!145267 lambda!145155))))

(declare-fun bs!661125 () Bool)

(assert (= bs!661125 (and b!4378868 b!4378412)))

(assert (=> bs!661125 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589205) (= lambda!145267 lambda!145217))))

(declare-fun bs!661126 () Bool)

(assert (= bs!661126 (and b!4378868 b!4378047)))

(assert (=> bs!661126 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (+!790 lt!1588594 lt!1588602)) (= lambda!145267 lambda!145160))))

(declare-fun bs!661127 () Bool)

(assert (= bs!661127 (and b!4378868 b!4378411)))

(assert (=> bs!661127 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145267 lambda!145213))))

(declare-fun bs!661128 () Bool)

(assert (= bs!661128 (and b!4378868 d!1303361)))

(assert (=> bs!661128 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589152) (= lambda!145267 lambda!145195))))

(declare-fun bs!661129 () Bool)

(assert (= bs!661129 (and b!4378868 b!4378290)))

(assert (=> bs!661129 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145267 lambda!145192))))

(declare-fun bs!661130 () Bool)

(assert (= bs!661130 (and b!4378868 d!1303255)))

(assert (=> bs!661130 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588981) (= lambda!145267 lambda!145162))))

(declare-fun bs!661131 () Bool)

(assert (= bs!661131 (and b!4378868 d!1303383)))

(assert (=> bs!661131 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589011) (= lambda!145267 lambda!145200))))

(declare-fun bs!661132 () Bool)

(assert (= bs!661132 (and b!4378868 d!1303265)))

(assert (=> bs!661132 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589021) (= lambda!145267 lambda!145167))))

(declare-fun bs!661133 () Bool)

(assert (= bs!661133 (and b!4378868 b!4377997)))

(assert (=> bs!661133 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588912) (= lambda!145267 lambda!145154))))

(declare-fun bs!661134 () Bool)

(assert (= bs!661134 (and b!4378868 b!4378063)))

(assert (=> bs!661134 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589011) (= lambda!145267 lambda!145166))))

(declare-fun bs!661135 () Bool)

(assert (= bs!661135 (and b!4378868 b!4378062)))

(assert (=> bs!661135 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588594) (= lambda!145267 lambda!145164))))

(declare-fun bs!661136 () Bool)

(assert (= bs!661136 (and b!4378868 b!4377996)))

(assert (=> bs!661136 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588594) (= lambda!145267 lambda!145152))))

(declare-fun bs!661138 () Bool)

(assert (= bs!661138 (and b!4378868 b!4378291)))

(assert (=> bs!661138 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589142) (= lambda!145267 lambda!145194))))

(declare-fun bs!661139 () Bool)

(assert (= bs!661139 (and b!4378868 b!4378090)))

(assert (=> bs!661139 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588594) (= lambda!145267 lambda!145174))))

(declare-fun bs!661141 () Bool)

(assert (= bs!661141 (and b!4378868 d!1303603)))

(assert (=> bs!661141 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589416) (= lambda!145267 lambda!145266))))

(declare-fun bs!661143 () Bool)

(assert (= bs!661143 (and b!4378868 b!4378701)))

(assert (=> bs!661143 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145267 lambda!145263))))

(declare-fun bs!661145 () Bool)

(assert (= bs!661145 (and b!4378868 d!1303433)))

(assert (=> bs!661145 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589250) (= lambda!145267 lambda!145231))))

(declare-fun bs!661147 () Bool)

(assert (= bs!661147 (and b!4378868 d!1303403)))

(assert (=> bs!661147 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589215) (= lambda!145267 lambda!145218))))

(assert (=> bs!661122 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145267 lambda!145264))))

(declare-fun bs!661150 () Bool)

(assert (= bs!661150 (and b!4378868 b!4378459)))

(assert (=> bs!661150 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145267 lambda!145226))))

(assert (=> bs!661125 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145267 lambda!145215))))

(assert (=> bs!661123 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145267 lambda!145227))))

(declare-fun bs!661153 () Bool)

(assert (= bs!661153 (and b!4378868 b!4378046)))

(assert (=> bs!661153 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (+!790 lt!1588594 lt!1588602)) (= lambda!145267 lambda!145159))))

(assert (=> bs!661133 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588594) (= lambda!145267 lambda!145153))))

(declare-fun bs!661155 () Bool)

(assert (= bs!661155 (and b!4378868 d!1303519)))

(assert (=> bs!661155 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588594) (= lambda!145267 lambda!145242))))

(declare-fun bs!661157 () Bool)

(assert (= bs!661157 (and b!4378868 d!1303597)))

(assert (=> bs!661157 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589053) (= lambda!145267 lambda!145262))))

(declare-fun bs!661159 () Bool)

(assert (= bs!661159 (and b!4378868 b!4378089)))

(assert (=> bs!661159 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588594) (= lambda!145267 lambda!145173))))

(assert (=> bs!661139 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589053) (= lambda!145267 lambda!145175))))

(assert (=> bs!661134 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588594) (= lambda!145267 lambda!145165))))

(declare-fun bs!661161 () Bool)

(assert (= bs!661161 (and b!4378868 d!1303299)))

(assert (=> bs!661161 (not (= lambda!145267 lambda!145179))))

(assert (=> bs!661138 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145267 lambda!145193))))

(assert (=> bs!661126 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588971) (= lambda!145267 lambda!145161))))

(declare-fun bs!661165 () Bool)

(assert (= bs!661165 (and b!4378868 d!1303283)))

(assert (=> bs!661165 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589063) (= lambda!145267 lambda!145176))))

(assert (=> b!4378868 true))

(declare-fun bs!661170 () Bool)

(declare-fun b!4378869 () Bool)

(assert (= bs!661170 (and b!4378869 b!4378702)))

(declare-fun lambda!145269 () Int)

(assert (=> bs!661170 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589406) (= lambda!145269 lambda!145265))))

(declare-fun bs!661171 () Bool)

(assert (= bs!661171 (and b!4378869 b!4378460)))

(assert (=> bs!661171 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589239) (= lambda!145269 lambda!145228))))

(declare-fun bs!661172 () Bool)

(assert (= bs!661172 (and b!4378869 d!1303179)))

(assert (=> bs!661172 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588922) (= lambda!145269 lambda!145155))))

(declare-fun bs!661173 () Bool)

(assert (= bs!661173 (and b!4378869 b!4378412)))

(assert (=> bs!661173 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589205) (= lambda!145269 lambda!145217))))

(declare-fun bs!661174 () Bool)

(assert (= bs!661174 (and b!4378869 b!4378047)))

(assert (=> bs!661174 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (+!790 lt!1588594 lt!1588602)) (= lambda!145269 lambda!145160))))

(declare-fun bs!661175 () Bool)

(assert (= bs!661175 (and b!4378869 b!4378411)))

(assert (=> bs!661175 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145269 lambda!145213))))

(declare-fun bs!661177 () Bool)

(assert (= bs!661177 (and b!4378869 b!4378290)))

(assert (=> bs!661177 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145269 lambda!145192))))

(declare-fun bs!661178 () Bool)

(assert (= bs!661178 (and b!4378869 d!1303255)))

(assert (=> bs!661178 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588981) (= lambda!145269 lambda!145162))))

(declare-fun bs!661180 () Bool)

(assert (= bs!661180 (and b!4378869 d!1303383)))

(assert (=> bs!661180 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589011) (= lambda!145269 lambda!145200))))

(declare-fun bs!661182 () Bool)

(assert (= bs!661182 (and b!4378869 d!1303265)))

(assert (=> bs!661182 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589021) (= lambda!145269 lambda!145167))))

(declare-fun bs!661184 () Bool)

(assert (= bs!661184 (and b!4378869 b!4377997)))

(assert (=> bs!661184 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588912) (= lambda!145269 lambda!145154))))

(declare-fun bs!661186 () Bool)

(assert (= bs!661186 (and b!4378869 b!4378063)))

(assert (=> bs!661186 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589011) (= lambda!145269 lambda!145166))))

(declare-fun bs!661188 () Bool)

(assert (= bs!661188 (and b!4378869 b!4378062)))

(assert (=> bs!661188 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588594) (= lambda!145269 lambda!145164))))

(declare-fun bs!661190 () Bool)

(assert (= bs!661190 (and b!4378869 b!4377996)))

(assert (=> bs!661190 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588594) (= lambda!145269 lambda!145152))))

(declare-fun bs!661191 () Bool)

(assert (= bs!661191 (and b!4378869 b!4378291)))

(assert (=> bs!661191 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589142) (= lambda!145269 lambda!145194))))

(declare-fun bs!661193 () Bool)

(assert (= bs!661193 (and b!4378869 b!4378090)))

(assert (=> bs!661193 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588594) (= lambda!145269 lambda!145174))))

(declare-fun bs!661195 () Bool)

(assert (= bs!661195 (and b!4378869 d!1303603)))

(assert (=> bs!661195 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589416) (= lambda!145269 lambda!145266))))

(declare-fun bs!661197 () Bool)

(assert (= bs!661197 (and b!4378869 b!4378701)))

(assert (=> bs!661197 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145269 lambda!145263))))

(declare-fun bs!661199 () Bool)

(assert (= bs!661199 (and b!4378869 d!1303433)))

(assert (=> bs!661199 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589250) (= lambda!145269 lambda!145231))))

(declare-fun bs!661201 () Bool)

(assert (= bs!661201 (and b!4378869 d!1303403)))

(assert (=> bs!661201 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589215) (= lambda!145269 lambda!145218))))

(assert (=> bs!661170 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145269 lambda!145264))))

(declare-fun bs!661203 () Bool)

(assert (= bs!661203 (and b!4378869 b!4378459)))

(assert (=> bs!661203 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145269 lambda!145226))))

(declare-fun bs!661205 () Bool)

(assert (= bs!661205 (and b!4378869 b!4378868)))

(assert (=> bs!661205 (= lambda!145269 lambda!145267)))

(declare-fun bs!661207 () Bool)

(assert (= bs!661207 (and b!4378869 d!1303361)))

(assert (=> bs!661207 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589152) (= lambda!145269 lambda!145195))))

(assert (=> bs!661173 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145269 lambda!145215))))

(assert (=> bs!661171 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145269 lambda!145227))))

(declare-fun bs!661210 () Bool)

(assert (= bs!661210 (and b!4378869 b!4378046)))

(assert (=> bs!661210 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (+!790 lt!1588594 lt!1588602)) (= lambda!145269 lambda!145159))))

(assert (=> bs!661184 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588594) (= lambda!145269 lambda!145153))))

(declare-fun bs!661211 () Bool)

(assert (= bs!661211 (and b!4378869 d!1303519)))

(assert (=> bs!661211 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588594) (= lambda!145269 lambda!145242))))

(declare-fun bs!661213 () Bool)

(assert (= bs!661213 (and b!4378869 d!1303597)))

(assert (=> bs!661213 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589053) (= lambda!145269 lambda!145262))))

(declare-fun bs!661215 () Bool)

(assert (= bs!661215 (and b!4378869 b!4378089)))

(assert (=> bs!661215 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588594) (= lambda!145269 lambda!145173))))

(assert (=> bs!661193 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589053) (= lambda!145269 lambda!145175))))

(assert (=> bs!661186 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588594) (= lambda!145269 lambda!145165))))

(declare-fun bs!661218 () Bool)

(assert (= bs!661218 (and b!4378869 d!1303299)))

(assert (=> bs!661218 (not (= lambda!145269 lambda!145179))))

(assert (=> bs!661191 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145269 lambda!145193))))

(assert (=> bs!661174 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1588971) (= lambda!145269 lambda!145161))))

(declare-fun bs!661219 () Bool)

(assert (= bs!661219 (and b!4378869 d!1303283)))

(assert (=> bs!661219 (= (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589063) (= lambda!145269 lambda!145176))))

(assert (=> b!4378869 true))

(declare-fun lt!1589551 () ListMap!2385)

(declare-fun lambda!145272 () Int)

(assert (=> bs!661170 (= (= lt!1589551 lt!1589406) (= lambda!145272 lambda!145265))))

(assert (=> bs!661171 (= (= lt!1589551 lt!1589239) (= lambda!145272 lambda!145228))))

(assert (=> bs!661172 (= (= lt!1589551 lt!1588922) (= lambda!145272 lambda!145155))))

(assert (=> bs!661173 (= (= lt!1589551 lt!1589205) (= lambda!145272 lambda!145217))))

(assert (=> bs!661174 (= (= lt!1589551 (+!790 lt!1588594 lt!1588602)) (= lambda!145272 lambda!145160))))

(assert (=> bs!661175 (= (= lt!1589551 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145272 lambda!145213))))

(assert (=> bs!661177 (= (= lt!1589551 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145272 lambda!145192))))

(assert (=> bs!661178 (= (= lt!1589551 lt!1588981) (= lambda!145272 lambda!145162))))

(assert (=> bs!661180 (= (= lt!1589551 lt!1589011) (= lambda!145272 lambda!145200))))

(assert (=> bs!661184 (= (= lt!1589551 lt!1588912) (= lambda!145272 lambda!145154))))

(assert (=> bs!661186 (= (= lt!1589551 lt!1589011) (= lambda!145272 lambda!145166))))

(assert (=> bs!661188 (= (= lt!1589551 lt!1588594) (= lambda!145272 lambda!145164))))

(assert (=> bs!661190 (= (= lt!1589551 lt!1588594) (= lambda!145272 lambda!145152))))

(assert (=> bs!661191 (= (= lt!1589551 lt!1589142) (= lambda!145272 lambda!145194))))

(assert (=> bs!661193 (= (= lt!1589551 lt!1588594) (= lambda!145272 lambda!145174))))

(assert (=> bs!661195 (= (= lt!1589551 lt!1589416) (= lambda!145272 lambda!145266))))

(assert (=> bs!661197 (= (= lt!1589551 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145272 lambda!145263))))

(assert (=> bs!661199 (= (= lt!1589551 lt!1589250) (= lambda!145272 lambda!145231))))

(assert (=> bs!661201 (= (= lt!1589551 lt!1589215) (= lambda!145272 lambda!145218))))

(assert (=> bs!661170 (= (= lt!1589551 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145272 lambda!145264))))

(assert (=> bs!661203 (= (= lt!1589551 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145272 lambda!145226))))

(assert (=> bs!661205 (= (= lt!1589551 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145272 lambda!145267))))

(assert (=> bs!661207 (= (= lt!1589551 lt!1589152) (= lambda!145272 lambda!145195))))

(assert (=> bs!661173 (= (= lt!1589551 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145272 lambda!145215))))

(assert (=> bs!661171 (= (= lt!1589551 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145272 lambda!145227))))

(assert (=> bs!661210 (= (= lt!1589551 (+!790 lt!1588594 lt!1588602)) (= lambda!145272 lambda!145159))))

(assert (=> bs!661184 (= (= lt!1589551 lt!1588594) (= lambda!145272 lambda!145153))))

(assert (=> bs!661211 (= (= lt!1589551 lt!1588594) (= lambda!145272 lambda!145242))))

(assert (=> bs!661213 (= (= lt!1589551 lt!1589053) (= lambda!145272 lambda!145262))))

(assert (=> b!4378869 (= (= lt!1589551 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145272 lambda!145269))))

(assert (=> bs!661182 (= (= lt!1589551 lt!1589021) (= lambda!145272 lambda!145167))))

(assert (=> bs!661215 (= (= lt!1589551 lt!1588594) (= lambda!145272 lambda!145173))))

(assert (=> bs!661193 (= (= lt!1589551 lt!1589053) (= lambda!145272 lambda!145175))))

(assert (=> bs!661186 (= (= lt!1589551 lt!1588594) (= lambda!145272 lambda!145165))))

(assert (=> bs!661218 (not (= lambda!145272 lambda!145179))))

(assert (=> bs!661191 (= (= lt!1589551 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145272 lambda!145193))))

(assert (=> bs!661174 (= (= lt!1589551 lt!1588971) (= lambda!145272 lambda!145161))))

(assert (=> bs!661219 (= (= lt!1589551 lt!1589063) (= lambda!145272 lambda!145176))))

(assert (=> b!4378869 true))

(declare-fun bs!661228 () Bool)

(declare-fun d!1303643 () Bool)

(assert (= bs!661228 (and d!1303643 b!4378702)))

(declare-fun lt!1589561 () ListMap!2385)

(declare-fun lambda!145274 () Int)

(assert (=> bs!661228 (= (= lt!1589561 lt!1589406) (= lambda!145274 lambda!145265))))

(declare-fun bs!661231 () Bool)

(assert (= bs!661231 (and d!1303643 b!4378460)))

(assert (=> bs!661231 (= (= lt!1589561 lt!1589239) (= lambda!145274 lambda!145228))))

(declare-fun bs!661233 () Bool)

(assert (= bs!661233 (and d!1303643 d!1303179)))

(assert (=> bs!661233 (= (= lt!1589561 lt!1588922) (= lambda!145274 lambda!145155))))

(declare-fun bs!661234 () Bool)

(assert (= bs!661234 (and d!1303643 b!4378412)))

(assert (=> bs!661234 (= (= lt!1589561 lt!1589205) (= lambda!145274 lambda!145217))))

(declare-fun bs!661236 () Bool)

(assert (= bs!661236 (and d!1303643 b!4378047)))

(assert (=> bs!661236 (= (= lt!1589561 (+!790 lt!1588594 lt!1588602)) (= lambda!145274 lambda!145160))))

(declare-fun bs!661238 () Bool)

(assert (= bs!661238 (and d!1303643 b!4378411)))

(assert (=> bs!661238 (= (= lt!1589561 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145274 lambda!145213))))

(declare-fun bs!661240 () Bool)

(assert (= bs!661240 (and d!1303643 b!4378869)))

(assert (=> bs!661240 (= (= lt!1589561 lt!1589551) (= lambda!145274 lambda!145272))))

(declare-fun bs!661242 () Bool)

(assert (= bs!661242 (and d!1303643 b!4378290)))

(assert (=> bs!661242 (= (= lt!1589561 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145274 lambda!145192))))

(declare-fun bs!661244 () Bool)

(assert (= bs!661244 (and d!1303643 d!1303255)))

(assert (=> bs!661244 (= (= lt!1589561 lt!1588981) (= lambda!145274 lambda!145162))))

(declare-fun bs!661245 () Bool)

(assert (= bs!661245 (and d!1303643 d!1303383)))

(assert (=> bs!661245 (= (= lt!1589561 lt!1589011) (= lambda!145274 lambda!145200))))

(declare-fun bs!661247 () Bool)

(assert (= bs!661247 (and d!1303643 b!4377997)))

(assert (=> bs!661247 (= (= lt!1589561 lt!1588912) (= lambda!145274 lambda!145154))))

(declare-fun bs!661249 () Bool)

(assert (= bs!661249 (and d!1303643 b!4378063)))

(assert (=> bs!661249 (= (= lt!1589561 lt!1589011) (= lambda!145274 lambda!145166))))

(declare-fun bs!661250 () Bool)

(assert (= bs!661250 (and d!1303643 b!4378062)))

(assert (=> bs!661250 (= (= lt!1589561 lt!1588594) (= lambda!145274 lambda!145164))))

(declare-fun bs!661251 () Bool)

(assert (= bs!661251 (and d!1303643 b!4377996)))

(assert (=> bs!661251 (= (= lt!1589561 lt!1588594) (= lambda!145274 lambda!145152))))

(declare-fun bs!661252 () Bool)

(assert (= bs!661252 (and d!1303643 b!4378291)))

(assert (=> bs!661252 (= (= lt!1589561 lt!1589142) (= lambda!145274 lambda!145194))))

(declare-fun bs!661255 () Bool)

(assert (= bs!661255 (and d!1303643 b!4378090)))

(assert (=> bs!661255 (= (= lt!1589561 lt!1588594) (= lambda!145274 lambda!145174))))

(declare-fun bs!661257 () Bool)

(assert (= bs!661257 (and d!1303643 d!1303603)))

(assert (=> bs!661257 (= (= lt!1589561 lt!1589416) (= lambda!145274 lambda!145266))))

(declare-fun bs!661258 () Bool)

(assert (= bs!661258 (and d!1303643 b!4378701)))

(assert (=> bs!661258 (= (= lt!1589561 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145274 lambda!145263))))

(declare-fun bs!661260 () Bool)

(assert (= bs!661260 (and d!1303643 d!1303433)))

(assert (=> bs!661260 (= (= lt!1589561 lt!1589250) (= lambda!145274 lambda!145231))))

(declare-fun bs!661261 () Bool)

(assert (= bs!661261 (and d!1303643 d!1303403)))

(assert (=> bs!661261 (= (= lt!1589561 lt!1589215) (= lambda!145274 lambda!145218))))

(assert (=> bs!661228 (= (= lt!1589561 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145274 lambda!145264))))

(declare-fun bs!661262 () Bool)

(assert (= bs!661262 (and d!1303643 b!4378459)))

(assert (=> bs!661262 (= (= lt!1589561 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145274 lambda!145226))))

(declare-fun bs!661263 () Bool)

(assert (= bs!661263 (and d!1303643 b!4378868)))

(assert (=> bs!661263 (= (= lt!1589561 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145274 lambda!145267))))

(declare-fun bs!661264 () Bool)

(assert (= bs!661264 (and d!1303643 d!1303361)))

(assert (=> bs!661264 (= (= lt!1589561 lt!1589152) (= lambda!145274 lambda!145195))))

(assert (=> bs!661234 (= (= lt!1589561 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145274 lambda!145215))))

(assert (=> bs!661231 (= (= lt!1589561 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145274 lambda!145227))))

(declare-fun bs!661265 () Bool)

(assert (= bs!661265 (and d!1303643 b!4378046)))

(assert (=> bs!661265 (= (= lt!1589561 (+!790 lt!1588594 lt!1588602)) (= lambda!145274 lambda!145159))))

(assert (=> bs!661247 (= (= lt!1589561 lt!1588594) (= lambda!145274 lambda!145153))))

(declare-fun bs!661266 () Bool)

(assert (= bs!661266 (and d!1303643 d!1303519)))

(assert (=> bs!661266 (= (= lt!1589561 lt!1588594) (= lambda!145274 lambda!145242))))

(declare-fun bs!661267 () Bool)

(assert (= bs!661267 (and d!1303643 d!1303597)))

(assert (=> bs!661267 (= (= lt!1589561 lt!1589053) (= lambda!145274 lambda!145262))))

(assert (=> bs!661240 (= (= lt!1589561 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145274 lambda!145269))))

(declare-fun bs!661268 () Bool)

(assert (= bs!661268 (and d!1303643 d!1303265)))

(assert (=> bs!661268 (= (= lt!1589561 lt!1589021) (= lambda!145274 lambda!145167))))

(declare-fun bs!661269 () Bool)

(assert (= bs!661269 (and d!1303643 b!4378089)))

(assert (=> bs!661269 (= (= lt!1589561 lt!1588594) (= lambda!145274 lambda!145173))))

(assert (=> bs!661255 (= (= lt!1589561 lt!1589053) (= lambda!145274 lambda!145175))))

(assert (=> bs!661249 (= (= lt!1589561 lt!1588594) (= lambda!145274 lambda!145165))))

(declare-fun bs!661270 () Bool)

(assert (= bs!661270 (and d!1303643 d!1303299)))

(assert (=> bs!661270 (not (= lambda!145274 lambda!145179))))

(assert (=> bs!661252 (= (= lt!1589561 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145274 lambda!145193))))

(assert (=> bs!661236 (= (= lt!1589561 lt!1588971) (= lambda!145274 lambda!145161))))

(declare-fun bs!661271 () Bool)

(assert (= bs!661271 (and d!1303643 d!1303283)))

(assert (=> bs!661271 (= (= lt!1589561 lt!1589063) (= lambda!145274 lambda!145176))))

(assert (=> d!1303643 true))

(declare-fun e!2725693 () Bool)

(declare-fun b!4378866 () Bool)

(assert (=> b!4378866 (= e!2725693 (forall!9273 (toList!3142 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) lambda!145272))))

(declare-fun bm!304554 () Bool)

(declare-fun call!304560 () Bool)

(declare-fun c!744696 () Bool)

(assert (=> bm!304554 (= call!304560 (forall!9273 (ite c!744696 (toList!3142 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (t!356206 (t!356206 lt!1588612))) (ite c!744696 lambda!145267 lambda!145272)))))

(declare-fun b!4378867 () Bool)

(declare-fun e!2725691 () Bool)

(assert (=> b!4378867 (= e!2725691 (invariantList!723 (toList!3142 lt!1589561)))))

(declare-fun bm!304555 () Bool)

(declare-fun call!304561 () Unit!75116)

(assert (=> bm!304555 (= call!304561 (lemmaContainsAllItsOwnKeys!105 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))))))

(declare-fun e!2725692 () ListMap!2385)

(assert (=> b!4378868 (= e!2725692 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)))))

(declare-fun lt!1589560 () Unit!75116)

(assert (=> b!4378868 (= lt!1589560 call!304561)))

(assert (=> b!4378868 call!304560))

(declare-fun lt!1589567 () Unit!75116)

(assert (=> b!4378868 (= lt!1589567 lt!1589560)))

(declare-fun call!304559 () Bool)

(assert (=> b!4378868 call!304559))

(declare-fun lt!1589565 () Unit!75116)

(declare-fun Unit!75343 () Unit!75116)

(assert (=> b!4378868 (= lt!1589565 Unit!75343)))

(assert (=> d!1303643 e!2725691))

(declare-fun res!1803255 () Bool)

(assert (=> d!1303643 (=> (not res!1803255) (not e!2725691))))

(assert (=> d!1303643 (= res!1803255 (forall!9273 (t!356206 lt!1588612) lambda!145274))))

(assert (=> d!1303643 (= lt!1589561 e!2725692)))

(assert (=> d!1303643 (= c!744696 ((_ is Nil!49156) (t!356206 lt!1588612)))))

(assert (=> d!1303643 (noDuplicateKeys!579 (t!356206 lt!1588612))))

(assert (=> d!1303643 (= (addToMapMapFromBucket!260 (t!356206 lt!1588612) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) lt!1589561)))

(assert (=> b!4378869 (= e!2725692 lt!1589551)))

(declare-fun lt!1589554 () ListMap!2385)

(assert (=> b!4378869 (= lt!1589554 (+!790 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (h!54753 (t!356206 lt!1588612))))))

(assert (=> b!4378869 (= lt!1589551 (addToMapMapFromBucket!260 (t!356206 (t!356206 lt!1588612)) (+!790 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) (h!54753 (t!356206 lt!1588612)))))))

(declare-fun lt!1589550 () Unit!75116)

(assert (=> b!4378869 (= lt!1589550 call!304561)))

(assert (=> b!4378869 (forall!9273 (toList!3142 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) lambda!145269)))

(declare-fun lt!1589559 () Unit!75116)

(assert (=> b!4378869 (= lt!1589559 lt!1589550)))

(assert (=> b!4378869 (forall!9273 (toList!3142 lt!1589554) lambda!145272)))

(declare-fun lt!1589548 () Unit!75116)

(declare-fun Unit!75344 () Unit!75116)

(assert (=> b!4378869 (= lt!1589548 Unit!75344)))

(assert (=> b!4378869 call!304560))

(declare-fun lt!1589562 () Unit!75116)

(declare-fun Unit!75345 () Unit!75116)

(assert (=> b!4378869 (= lt!1589562 Unit!75345)))

(declare-fun lt!1589553 () Unit!75116)

(declare-fun Unit!75346 () Unit!75116)

(assert (=> b!4378869 (= lt!1589553 Unit!75346)))

(declare-fun lt!1589566 () Unit!75116)

(assert (=> b!4378869 (= lt!1589566 (forallContained!1911 (toList!3142 lt!1589554) lambda!145272 (h!54753 (t!356206 lt!1588612))))))

(assert (=> b!4378869 (contains!11488 lt!1589554 (_1!27637 (h!54753 (t!356206 lt!1588612))))))

(declare-fun lt!1589563 () Unit!75116)

(declare-fun Unit!75347 () Unit!75116)

(assert (=> b!4378869 (= lt!1589563 Unit!75347)))

(assert (=> b!4378869 (contains!11488 lt!1589551 (_1!27637 (h!54753 (t!356206 lt!1588612))))))

(declare-fun lt!1589549 () Unit!75116)

(declare-fun Unit!75348 () Unit!75116)

(assert (=> b!4378869 (= lt!1589549 Unit!75348)))

(assert (=> b!4378869 (forall!9273 (t!356206 lt!1588612) lambda!145272)))

(declare-fun lt!1589556 () Unit!75116)

(declare-fun Unit!75349 () Unit!75116)

(assert (=> b!4378869 (= lt!1589556 Unit!75349)))

(assert (=> b!4378869 call!304559))

(declare-fun lt!1589555 () Unit!75116)

(declare-fun Unit!75350 () Unit!75116)

(assert (=> b!4378869 (= lt!1589555 Unit!75350)))

(declare-fun lt!1589552 () Unit!75116)

(declare-fun Unit!75351 () Unit!75116)

(assert (=> b!4378869 (= lt!1589552 Unit!75351)))

(declare-fun lt!1589558 () Unit!75116)

(assert (=> b!4378869 (= lt!1589558 (addForallContainsKeyThenBeforeAdding!105 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589551 (_1!27637 (h!54753 (t!356206 lt!1588612))) (_2!27637 (h!54753 (t!356206 lt!1588612)))))))

(assert (=> b!4378869 (forall!9273 (toList!3142 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) lambda!145272)))

(declare-fun lt!1589547 () Unit!75116)

(assert (=> b!4378869 (= lt!1589547 lt!1589558)))

(assert (=> b!4378869 (forall!9273 (toList!3142 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) lambda!145272)))

(declare-fun lt!1589557 () Unit!75116)

(declare-fun Unit!75352 () Unit!75116)

(assert (=> b!4378869 (= lt!1589557 Unit!75352)))

(declare-fun res!1803254 () Bool)

(assert (=> b!4378869 (= res!1803254 (forall!9273 (t!356206 lt!1588612) lambda!145272))))

(assert (=> b!4378869 (=> (not res!1803254) (not e!2725693))))

(assert (=> b!4378869 e!2725693))

(declare-fun lt!1589564 () Unit!75116)

(declare-fun Unit!75353 () Unit!75116)

(assert (=> b!4378869 (= lt!1589564 Unit!75353)))

(declare-fun b!4378870 () Bool)

(declare-fun res!1803253 () Bool)

(assert (=> b!4378870 (=> (not res!1803253) (not e!2725691))))

(assert (=> b!4378870 (= res!1803253 (forall!9273 (toList!3142 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) lambda!145274))))

(declare-fun bm!304556 () Bool)

(assert (=> bm!304556 (= call!304559 (forall!9273 (ite c!744696 (toList!3142 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (toList!3142 lt!1589554)) (ite c!744696 lambda!145267 lambda!145272)))))

(assert (= (and d!1303643 c!744696) b!4378868))

(assert (= (and d!1303643 (not c!744696)) b!4378869))

(assert (= (and b!4378869 res!1803254) b!4378866))

(assert (= (or b!4378868 b!4378869) bm!304555))

(assert (= (or b!4378868 b!4378869) bm!304554))

(assert (= (or b!4378868 b!4378869) bm!304556))

(assert (= (and d!1303643 res!1803255) b!4378870))

(assert (= (and b!4378870 res!1803253) b!4378867))

(declare-fun m!5015013 () Bool)

(assert (=> b!4378867 m!5015013))

(declare-fun m!5015019 () Bool)

(assert (=> b!4378866 m!5015019))

(declare-fun m!5015021 () Bool)

(assert (=> b!4378870 m!5015021))

(declare-fun m!5015023 () Bool)

(assert (=> bm!304556 m!5015023))

(assert (=> b!4378869 m!5015019))

(assert (=> b!4378869 m!5015019))

(assert (=> b!4378869 m!5013517))

(declare-fun m!5015025 () Bool)

(assert (=> b!4378869 m!5015025))

(declare-fun m!5015027 () Bool)

(assert (=> b!4378869 m!5015027))

(declare-fun m!5015029 () Bool)

(assert (=> b!4378869 m!5015029))

(declare-fun m!5015033 () Bool)

(assert (=> b!4378869 m!5015033))

(declare-fun m!5015035 () Bool)

(assert (=> b!4378869 m!5015035))

(assert (=> b!4378869 m!5015035))

(assert (=> b!4378869 m!5013517))

(assert (=> b!4378869 m!5015027))

(declare-fun m!5015039 () Bool)

(assert (=> b!4378869 m!5015039))

(declare-fun m!5015041 () Bool)

(assert (=> b!4378869 m!5015041))

(declare-fun m!5015043 () Bool)

(assert (=> b!4378869 m!5015043))

(declare-fun m!5015045 () Bool)

(assert (=> b!4378869 m!5015045))

(assert (=> bm!304555 m!5013517))

(declare-fun m!5015047 () Bool)

(assert (=> bm!304555 m!5015047))

(declare-fun m!5015049 () Bool)

(assert (=> d!1303643 m!5015049))

(assert (=> d!1303643 m!5014631))

(declare-fun m!5015055 () Bool)

(assert (=> bm!304554 m!5015055))

(assert (=> b!4378047 d!1303643))

(declare-fun d!1303659 () Bool)

(declare-fun e!2725705 () Bool)

(assert (=> d!1303659 e!2725705))

(declare-fun res!1803268 () Bool)

(assert (=> d!1303659 (=> res!1803268 e!2725705)))

(declare-fun e!2725709 () Bool)

(assert (=> d!1303659 (= res!1803268 e!2725709)))

(declare-fun res!1803270 () Bool)

(assert (=> d!1303659 (=> (not res!1803270) (not e!2725709))))

(declare-fun lt!1589595 () Bool)

(assert (=> d!1303659 (= res!1803270 (not lt!1589595))))

(declare-fun lt!1589600 () Bool)

(assert (=> d!1303659 (= lt!1589595 lt!1589600)))

(declare-fun lt!1589601 () Unit!75116)

(declare-fun e!2725706 () Unit!75116)

(assert (=> d!1303659 (= lt!1589601 e!2725706)))

(declare-fun c!744699 () Bool)

(assert (=> d!1303659 (= c!744699 lt!1589600)))

(assert (=> d!1303659 (= lt!1589600 (containsKey!848 (toList!3142 lt!1588971) (_1!27637 (h!54753 lt!1588612))))))

(assert (=> d!1303659 (= (contains!11488 lt!1588971 (_1!27637 (h!54753 lt!1588612))) lt!1589595)))

(declare-fun bm!304560 () Bool)

(declare-fun call!304565 () Bool)

(declare-fun e!2725707 () List!49283)

(assert (=> bm!304560 (= call!304565 (contains!11492 e!2725707 (_1!27637 (h!54753 lt!1588612))))))

(declare-fun c!744698 () Bool)

(assert (=> bm!304560 (= c!744698 c!744699)))

(declare-fun b!4378885 () Bool)

(declare-fun e!2725710 () Bool)

(assert (=> b!4378885 (= e!2725705 e!2725710)))

(declare-fun res!1803269 () Bool)

(assert (=> b!4378885 (=> (not res!1803269) (not e!2725710))))

(assert (=> b!4378885 (= res!1803269 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588971) (_1!27637 (h!54753 lt!1588612)))))))

(declare-fun b!4378886 () Bool)

(declare-fun e!2725708 () Unit!75116)

(declare-fun Unit!75354 () Unit!75116)

(assert (=> b!4378886 (= e!2725708 Unit!75354)))

(declare-fun b!4378887 () Bool)

(assert (=> b!4378887 false))

(declare-fun lt!1589597 () Unit!75116)

(declare-fun lt!1589596 () Unit!75116)

(assert (=> b!4378887 (= lt!1589597 lt!1589596)))

(assert (=> b!4378887 (containsKey!848 (toList!3142 lt!1588971) (_1!27637 (h!54753 lt!1588612)))))

(assert (=> b!4378887 (= lt!1589596 (lemmaInGetKeysListThenContainsKey!169 (toList!3142 lt!1588971) (_1!27637 (h!54753 lt!1588612))))))

(declare-fun Unit!75355 () Unit!75116)

(assert (=> b!4378887 (= e!2725708 Unit!75355)))

(declare-fun b!4378888 () Bool)

(declare-fun lt!1589602 () Unit!75116)

(assert (=> b!4378888 (= e!2725706 lt!1589602)))

(declare-fun lt!1589599 () Unit!75116)

(assert (=> b!4378888 (= lt!1589599 (lemmaContainsKeyImpliesGetValueByKeyDefined!455 (toList!3142 lt!1588971) (_1!27637 (h!54753 lt!1588612))))))

(assert (=> b!4378888 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588971) (_1!27637 (h!54753 lt!1588612))))))

(declare-fun lt!1589598 () Unit!75116)

(assert (=> b!4378888 (= lt!1589598 lt!1589599)))

(assert (=> b!4378888 (= lt!1589602 (lemmaInListThenGetKeysListContains!168 (toList!3142 lt!1588971) (_1!27637 (h!54753 lt!1588612))))))

(assert (=> b!4378888 call!304565))

(declare-fun b!4378889 () Bool)

(assert (=> b!4378889 (= e!2725710 (contains!11492 (keys!16669 lt!1588971) (_1!27637 (h!54753 lt!1588612))))))

(declare-fun b!4378890 () Bool)

(assert (=> b!4378890 (= e!2725707 (keys!16669 lt!1588971))))

(declare-fun b!4378891 () Bool)

(assert (=> b!4378891 (= e!2725706 e!2725708)))

(declare-fun c!744700 () Bool)

(assert (=> b!4378891 (= c!744700 call!304565)))

(declare-fun b!4378892 () Bool)

(assert (=> b!4378892 (= e!2725707 (getKeysList!171 (toList!3142 lt!1588971)))))

(declare-fun b!4378893 () Bool)

(assert (=> b!4378893 (= e!2725709 (not (contains!11492 (keys!16669 lt!1588971) (_1!27637 (h!54753 lt!1588612)))))))

(assert (= (and d!1303659 c!744699) b!4378888))

(assert (= (and d!1303659 (not c!744699)) b!4378891))

(assert (= (and b!4378891 c!744700) b!4378887))

(assert (= (and b!4378891 (not c!744700)) b!4378886))

(assert (= (or b!4378888 b!4378891) bm!304560))

(assert (= (and bm!304560 c!744698) b!4378892))

(assert (= (and bm!304560 (not c!744698)) b!4378890))

(assert (= (and d!1303659 res!1803270) b!4378893))

(assert (= (and d!1303659 (not res!1803268)) b!4378885))

(assert (= (and b!4378885 res!1803269) b!4378889))

(declare-fun m!5015057 () Bool)

(assert (=> b!4378893 m!5015057))

(assert (=> b!4378893 m!5015057))

(declare-fun m!5015059 () Bool)

(assert (=> b!4378893 m!5015059))

(declare-fun m!5015061 () Bool)

(assert (=> b!4378892 m!5015061))

(declare-fun m!5015063 () Bool)

(assert (=> b!4378887 m!5015063))

(declare-fun m!5015065 () Bool)

(assert (=> b!4378887 m!5015065))

(assert (=> b!4378890 m!5015057))

(declare-fun m!5015067 () Bool)

(assert (=> bm!304560 m!5015067))

(declare-fun m!5015069 () Bool)

(assert (=> b!4378885 m!5015069))

(assert (=> b!4378885 m!5015069))

(declare-fun m!5015071 () Bool)

(assert (=> b!4378885 m!5015071))

(assert (=> b!4378889 m!5015057))

(assert (=> b!4378889 m!5015057))

(assert (=> b!4378889 m!5015059))

(assert (=> d!1303659 m!5015063))

(declare-fun m!5015073 () Bool)

(assert (=> b!4378888 m!5015073))

(assert (=> b!4378888 m!5015069))

(assert (=> b!4378888 m!5015069))

(assert (=> b!4378888 m!5015071))

(declare-fun m!5015075 () Bool)

(assert (=> b!4378888 m!5015075))

(assert (=> b!4378047 d!1303659))

(declare-fun bs!661289 () Bool)

(declare-fun d!1303661 () Bool)

(assert (= bs!661289 (and d!1303661 b!4378702)))

(declare-fun lambda!145276 () Int)

(assert (=> bs!661289 (= (= lt!1588971 lt!1589406) (= lambda!145276 lambda!145265))))

(declare-fun bs!661291 () Bool)

(assert (= bs!661291 (and d!1303661 b!4378460)))

(assert (=> bs!661291 (= (= lt!1588971 lt!1589239) (= lambda!145276 lambda!145228))))

(declare-fun bs!661293 () Bool)

(assert (= bs!661293 (and d!1303661 d!1303179)))

(assert (=> bs!661293 (= (= lt!1588971 lt!1588922) (= lambda!145276 lambda!145155))))

(declare-fun bs!661294 () Bool)

(assert (= bs!661294 (and d!1303661 b!4378412)))

(assert (=> bs!661294 (= (= lt!1588971 lt!1589205) (= lambda!145276 lambda!145217))))

(declare-fun bs!661295 () Bool)

(assert (= bs!661295 (and d!1303661 b!4378047)))

(assert (=> bs!661295 (= (= lt!1588971 (+!790 lt!1588594 lt!1588602)) (= lambda!145276 lambda!145160))))

(declare-fun bs!661296 () Bool)

(assert (= bs!661296 (and d!1303661 d!1303643)))

(assert (=> bs!661296 (= (= lt!1588971 lt!1589561) (= lambda!145276 lambda!145274))))

(declare-fun bs!661298 () Bool)

(assert (= bs!661298 (and d!1303661 b!4378411)))

(assert (=> bs!661298 (= (= lt!1588971 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145276 lambda!145213))))

(declare-fun bs!661300 () Bool)

(assert (= bs!661300 (and d!1303661 b!4378869)))

(assert (=> bs!661300 (= (= lt!1588971 lt!1589551) (= lambda!145276 lambda!145272))))

(declare-fun bs!661302 () Bool)

(assert (= bs!661302 (and d!1303661 b!4378290)))

(assert (=> bs!661302 (= (= lt!1588971 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145276 lambda!145192))))

(declare-fun bs!661303 () Bool)

(assert (= bs!661303 (and d!1303661 d!1303255)))

(assert (=> bs!661303 (= (= lt!1588971 lt!1588981) (= lambda!145276 lambda!145162))))

(declare-fun bs!661305 () Bool)

(assert (= bs!661305 (and d!1303661 d!1303383)))

(assert (=> bs!661305 (= (= lt!1588971 lt!1589011) (= lambda!145276 lambda!145200))))

(declare-fun bs!661306 () Bool)

(assert (= bs!661306 (and d!1303661 b!4377997)))

(assert (=> bs!661306 (= (= lt!1588971 lt!1588912) (= lambda!145276 lambda!145154))))

(declare-fun bs!661307 () Bool)

(assert (= bs!661307 (and d!1303661 b!4378063)))

(assert (=> bs!661307 (= (= lt!1588971 lt!1589011) (= lambda!145276 lambda!145166))))

(declare-fun bs!661308 () Bool)

(assert (= bs!661308 (and d!1303661 b!4378062)))

(assert (=> bs!661308 (= (= lt!1588971 lt!1588594) (= lambda!145276 lambda!145164))))

(declare-fun bs!661309 () Bool)

(assert (= bs!661309 (and d!1303661 b!4377996)))

(assert (=> bs!661309 (= (= lt!1588971 lt!1588594) (= lambda!145276 lambda!145152))))

(declare-fun bs!661310 () Bool)

(assert (= bs!661310 (and d!1303661 b!4378291)))

(assert (=> bs!661310 (= (= lt!1588971 lt!1589142) (= lambda!145276 lambda!145194))))

(declare-fun bs!661311 () Bool)

(assert (= bs!661311 (and d!1303661 b!4378090)))

(assert (=> bs!661311 (= (= lt!1588971 lt!1588594) (= lambda!145276 lambda!145174))))

(declare-fun bs!661312 () Bool)

(assert (= bs!661312 (and d!1303661 d!1303603)))

(assert (=> bs!661312 (= (= lt!1588971 lt!1589416) (= lambda!145276 lambda!145266))))

(declare-fun bs!661314 () Bool)

(assert (= bs!661314 (and d!1303661 b!4378701)))

(assert (=> bs!661314 (= (= lt!1588971 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145276 lambda!145263))))

(declare-fun bs!661315 () Bool)

(assert (= bs!661315 (and d!1303661 d!1303433)))

(assert (=> bs!661315 (= (= lt!1588971 lt!1589250) (= lambda!145276 lambda!145231))))

(declare-fun bs!661316 () Bool)

(assert (= bs!661316 (and d!1303661 d!1303403)))

(assert (=> bs!661316 (= (= lt!1588971 lt!1589215) (= lambda!145276 lambda!145218))))

(assert (=> bs!661289 (= (= lt!1588971 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145276 lambda!145264))))

(declare-fun bs!661317 () Bool)

(assert (= bs!661317 (and d!1303661 b!4378459)))

(assert (=> bs!661317 (= (= lt!1588971 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145276 lambda!145226))))

(declare-fun bs!661318 () Bool)

(assert (= bs!661318 (and d!1303661 b!4378868)))

(assert (=> bs!661318 (= (= lt!1588971 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145276 lambda!145267))))

(declare-fun bs!661319 () Bool)

(assert (= bs!661319 (and d!1303661 d!1303361)))

(assert (=> bs!661319 (= (= lt!1588971 lt!1589152) (= lambda!145276 lambda!145195))))

(assert (=> bs!661294 (= (= lt!1588971 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145276 lambda!145215))))

(assert (=> bs!661291 (= (= lt!1588971 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145276 lambda!145227))))

(declare-fun bs!661320 () Bool)

(assert (= bs!661320 (and d!1303661 b!4378046)))

(assert (=> bs!661320 (= (= lt!1588971 (+!790 lt!1588594 lt!1588602)) (= lambda!145276 lambda!145159))))

(assert (=> bs!661306 (= (= lt!1588971 lt!1588594) (= lambda!145276 lambda!145153))))

(declare-fun bs!661321 () Bool)

(assert (= bs!661321 (and d!1303661 d!1303519)))

(assert (=> bs!661321 (= (= lt!1588971 lt!1588594) (= lambda!145276 lambda!145242))))

(declare-fun bs!661322 () Bool)

(assert (= bs!661322 (and d!1303661 d!1303597)))

(assert (=> bs!661322 (= (= lt!1588971 lt!1589053) (= lambda!145276 lambda!145262))))

(assert (=> bs!661300 (= (= lt!1588971 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145276 lambda!145269))))

(declare-fun bs!661323 () Bool)

(assert (= bs!661323 (and d!1303661 d!1303265)))

(assert (=> bs!661323 (= (= lt!1588971 lt!1589021) (= lambda!145276 lambda!145167))))

(declare-fun bs!661324 () Bool)

(assert (= bs!661324 (and d!1303661 b!4378089)))

(assert (=> bs!661324 (= (= lt!1588971 lt!1588594) (= lambda!145276 lambda!145173))))

(assert (=> bs!661311 (= (= lt!1588971 lt!1589053) (= lambda!145276 lambda!145175))))

(assert (=> bs!661307 (= (= lt!1588971 lt!1588594) (= lambda!145276 lambda!145165))))

(declare-fun bs!661325 () Bool)

(assert (= bs!661325 (and d!1303661 d!1303299)))

(assert (=> bs!661325 (not (= lambda!145276 lambda!145179))))

(assert (=> bs!661310 (= (= lt!1588971 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145276 lambda!145193))))

(assert (=> bs!661295 (= lambda!145276 lambda!145161)))

(declare-fun bs!661326 () Bool)

(assert (= bs!661326 (and d!1303661 d!1303283)))

(assert (=> bs!661326 (= (= lt!1588971 lt!1589063) (= lambda!145276 lambda!145176))))

(assert (=> d!1303661 true))

(assert (=> d!1303661 (forall!9273 (toList!3142 (+!790 lt!1588594 lt!1588602)) lambda!145276)))

(declare-fun lt!1589603 () Unit!75116)

(assert (=> d!1303661 (= lt!1589603 (choose!27307 (+!790 lt!1588594 lt!1588602) lt!1588971 (_1!27637 (h!54753 lt!1588612)) (_2!27637 (h!54753 lt!1588612))))))

(assert (=> d!1303661 (forall!9273 (toList!3142 (+!790 (+!790 lt!1588594 lt!1588602) (tuple2!48687 (_1!27637 (h!54753 lt!1588612)) (_2!27637 (h!54753 lt!1588612))))) lambda!145276)))

(assert (=> d!1303661 (= (addForallContainsKeyThenBeforeAdding!105 (+!790 lt!1588594 lt!1588602) lt!1588971 (_1!27637 (h!54753 lt!1588612)) (_2!27637 (h!54753 lt!1588612))) lt!1589603)))

(declare-fun bs!661327 () Bool)

(assert (= bs!661327 d!1303661))

(declare-fun m!5015105 () Bool)

(assert (=> bs!661327 m!5015105))

(assert (=> bs!661327 m!5012945))

(declare-fun m!5015113 () Bool)

(assert (=> bs!661327 m!5015113))

(assert (=> bs!661327 m!5012945))

(declare-fun m!5015117 () Bool)

(assert (=> bs!661327 m!5015117))

(declare-fun m!5015119 () Bool)

(assert (=> bs!661327 m!5015119))

(assert (=> b!4378047 d!1303661))

(declare-fun d!1303671 () Bool)

(declare-fun e!2725727 () Bool)

(assert (=> d!1303671 e!2725727))

(declare-fun res!1803281 () Bool)

(assert (=> d!1303671 (=> (not res!1803281) (not e!2725727))))

(declare-fun lt!1589620 () ListMap!2385)

(assert (=> d!1303671 (= res!1803281 (contains!11488 lt!1589620 (_1!27637 (h!54753 lt!1588612))))))

(declare-fun lt!1589621 () List!49280)

(assert (=> d!1303671 (= lt!1589620 (ListMap!2386 lt!1589621))))

(declare-fun lt!1589622 () Unit!75116)

(declare-fun lt!1589623 () Unit!75116)

(assert (=> d!1303671 (= lt!1589622 lt!1589623)))

(assert (=> d!1303671 (= (getValueByKey!545 lt!1589621 (_1!27637 (h!54753 lt!1588612))) (Some!10558 (_2!27637 (h!54753 lt!1588612))))))

(assert (=> d!1303671 (= lt!1589623 (lemmaContainsTupThenGetReturnValue!309 lt!1589621 (_1!27637 (h!54753 lt!1588612)) (_2!27637 (h!54753 lt!1588612))))))

(assert (=> d!1303671 (= lt!1589621 (insertNoDuplicatedKeys!141 (toList!3142 (+!790 lt!1588594 lt!1588602)) (_1!27637 (h!54753 lt!1588612)) (_2!27637 (h!54753 lt!1588612))))))

(assert (=> d!1303671 (= (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612)) lt!1589620)))

(declare-fun b!4378916 () Bool)

(declare-fun res!1803282 () Bool)

(assert (=> b!4378916 (=> (not res!1803282) (not e!2725727))))

(assert (=> b!4378916 (= res!1803282 (= (getValueByKey!545 (toList!3142 lt!1589620) (_1!27637 (h!54753 lt!1588612))) (Some!10558 (_2!27637 (h!54753 lt!1588612)))))))

(declare-fun b!4378917 () Bool)

(assert (=> b!4378917 (= e!2725727 (contains!11493 (toList!3142 lt!1589620) (h!54753 lt!1588612)))))

(assert (= (and d!1303671 res!1803281) b!4378916))

(assert (= (and b!4378916 res!1803282) b!4378917))

(declare-fun m!5015121 () Bool)

(assert (=> d!1303671 m!5015121))

(declare-fun m!5015123 () Bool)

(assert (=> d!1303671 m!5015123))

(declare-fun m!5015125 () Bool)

(assert (=> d!1303671 m!5015125))

(declare-fun m!5015127 () Bool)

(assert (=> d!1303671 m!5015127))

(declare-fun m!5015129 () Bool)

(assert (=> b!4378916 m!5015129))

(declare-fun m!5015131 () Bool)

(assert (=> b!4378917 m!5015131))

(assert (=> b!4378047 d!1303671))

(declare-fun d!1303673 () Bool)

(declare-fun e!2725728 () Bool)

(assert (=> d!1303673 e!2725728))

(declare-fun res!1803283 () Bool)

(assert (=> d!1303673 (=> res!1803283 e!2725728)))

(declare-fun e!2725732 () Bool)

(assert (=> d!1303673 (= res!1803283 e!2725732)))

(declare-fun res!1803285 () Bool)

(assert (=> d!1303673 (=> (not res!1803285) (not e!2725732))))

(declare-fun lt!1589624 () Bool)

(assert (=> d!1303673 (= res!1803285 (not lt!1589624))))

(declare-fun lt!1589629 () Bool)

(assert (=> d!1303673 (= lt!1589624 lt!1589629)))

(declare-fun lt!1589630 () Unit!75116)

(declare-fun e!2725729 () Unit!75116)

(assert (=> d!1303673 (= lt!1589630 e!2725729)))

(declare-fun c!744708 () Bool)

(assert (=> d!1303673 (= c!744708 lt!1589629)))

(assert (=> d!1303673 (= lt!1589629 (containsKey!848 (toList!3142 lt!1588974) (_1!27637 (h!54753 lt!1588612))))))

(assert (=> d!1303673 (= (contains!11488 lt!1588974 (_1!27637 (h!54753 lt!1588612))) lt!1589624)))

(declare-fun bm!304563 () Bool)

(declare-fun call!304568 () Bool)

(declare-fun e!2725730 () List!49283)

(assert (=> bm!304563 (= call!304568 (contains!11492 e!2725730 (_1!27637 (h!54753 lt!1588612))))))

(declare-fun c!744707 () Bool)

(assert (=> bm!304563 (= c!744707 c!744708)))

(declare-fun b!4378918 () Bool)

(declare-fun e!2725733 () Bool)

(assert (=> b!4378918 (= e!2725728 e!2725733)))

(declare-fun res!1803284 () Bool)

(assert (=> b!4378918 (=> (not res!1803284) (not e!2725733))))

(assert (=> b!4378918 (= res!1803284 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588974) (_1!27637 (h!54753 lt!1588612)))))))

(declare-fun b!4378919 () Bool)

(declare-fun e!2725731 () Unit!75116)

(declare-fun Unit!75356 () Unit!75116)

(assert (=> b!4378919 (= e!2725731 Unit!75356)))

(declare-fun b!4378920 () Bool)

(assert (=> b!4378920 false))

(declare-fun lt!1589626 () Unit!75116)

(declare-fun lt!1589625 () Unit!75116)

(assert (=> b!4378920 (= lt!1589626 lt!1589625)))

(assert (=> b!4378920 (containsKey!848 (toList!3142 lt!1588974) (_1!27637 (h!54753 lt!1588612)))))

(assert (=> b!4378920 (= lt!1589625 (lemmaInGetKeysListThenContainsKey!169 (toList!3142 lt!1588974) (_1!27637 (h!54753 lt!1588612))))))

(declare-fun Unit!75357 () Unit!75116)

(assert (=> b!4378920 (= e!2725731 Unit!75357)))

(declare-fun b!4378921 () Bool)

(declare-fun lt!1589631 () Unit!75116)

(assert (=> b!4378921 (= e!2725729 lt!1589631)))

(declare-fun lt!1589628 () Unit!75116)

(assert (=> b!4378921 (= lt!1589628 (lemmaContainsKeyImpliesGetValueByKeyDefined!455 (toList!3142 lt!1588974) (_1!27637 (h!54753 lt!1588612))))))

(assert (=> b!4378921 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588974) (_1!27637 (h!54753 lt!1588612))))))

(declare-fun lt!1589627 () Unit!75116)

(assert (=> b!4378921 (= lt!1589627 lt!1589628)))

(assert (=> b!4378921 (= lt!1589631 (lemmaInListThenGetKeysListContains!168 (toList!3142 lt!1588974) (_1!27637 (h!54753 lt!1588612))))))

(assert (=> b!4378921 call!304568))

(declare-fun b!4378922 () Bool)

(assert (=> b!4378922 (= e!2725733 (contains!11492 (keys!16669 lt!1588974) (_1!27637 (h!54753 lt!1588612))))))

(declare-fun b!4378923 () Bool)

(assert (=> b!4378923 (= e!2725730 (keys!16669 lt!1588974))))

(declare-fun b!4378924 () Bool)

(assert (=> b!4378924 (= e!2725729 e!2725731)))

(declare-fun c!744709 () Bool)

(assert (=> b!4378924 (= c!744709 call!304568)))

(declare-fun b!4378925 () Bool)

(assert (=> b!4378925 (= e!2725730 (getKeysList!171 (toList!3142 lt!1588974)))))

(declare-fun b!4378926 () Bool)

(assert (=> b!4378926 (= e!2725732 (not (contains!11492 (keys!16669 lt!1588974) (_1!27637 (h!54753 lt!1588612)))))))

(assert (= (and d!1303673 c!744708) b!4378921))

(assert (= (and d!1303673 (not c!744708)) b!4378924))

(assert (= (and b!4378924 c!744709) b!4378920))

(assert (= (and b!4378924 (not c!744709)) b!4378919))

(assert (= (or b!4378921 b!4378924) bm!304563))

(assert (= (and bm!304563 c!744707) b!4378925))

(assert (= (and bm!304563 (not c!744707)) b!4378923))

(assert (= (and d!1303673 res!1803285) b!4378926))

(assert (= (and d!1303673 (not res!1803283)) b!4378918))

(assert (= (and b!4378918 res!1803284) b!4378922))

(declare-fun m!5015153 () Bool)

(assert (=> b!4378926 m!5015153))

(assert (=> b!4378926 m!5015153))

(declare-fun m!5015157 () Bool)

(assert (=> b!4378926 m!5015157))

(declare-fun m!5015161 () Bool)

(assert (=> b!4378925 m!5015161))

(declare-fun m!5015163 () Bool)

(assert (=> b!4378920 m!5015163))

(declare-fun m!5015167 () Bool)

(assert (=> b!4378920 m!5015167))

(assert (=> b!4378923 m!5015153))

(declare-fun m!5015169 () Bool)

(assert (=> bm!304563 m!5015169))

(declare-fun m!5015171 () Bool)

(assert (=> b!4378918 m!5015171))

(assert (=> b!4378918 m!5015171))

(declare-fun m!5015173 () Bool)

(assert (=> b!4378918 m!5015173))

(assert (=> b!4378922 m!5015153))

(assert (=> b!4378922 m!5015153))

(assert (=> b!4378922 m!5015157))

(assert (=> d!1303673 m!5015163))

(declare-fun m!5015175 () Bool)

(assert (=> b!4378921 m!5015175))

(assert (=> b!4378921 m!5015171))

(assert (=> b!4378921 m!5015171))

(assert (=> b!4378921 m!5015173))

(declare-fun m!5015177 () Bool)

(assert (=> b!4378921 m!5015177))

(assert (=> b!4378047 d!1303673))

(declare-fun d!1303679 () Bool)

(declare-fun res!1803287 () Bool)

(declare-fun e!2725735 () Bool)

(assert (=> d!1303679 (=> res!1803287 e!2725735)))

(assert (=> d!1303679 (= res!1803287 ((_ is Nil!49156) (toList!3142 (+!790 lt!1588594 lt!1588602))))))

(assert (=> d!1303679 (= (forall!9273 (toList!3142 (+!790 lt!1588594 lt!1588602)) lambda!145161) e!2725735)))

(declare-fun b!4378928 () Bool)

(declare-fun e!2725736 () Bool)

(assert (=> b!4378928 (= e!2725735 e!2725736)))

(declare-fun res!1803288 () Bool)

(assert (=> b!4378928 (=> (not res!1803288) (not e!2725736))))

(assert (=> b!4378928 (= res!1803288 (dynLambda!20710 lambda!145161 (h!54753 (toList!3142 (+!790 lt!1588594 lt!1588602)))))))

(declare-fun b!4378929 () Bool)

(assert (=> b!4378929 (= e!2725736 (forall!9273 (t!356206 (toList!3142 (+!790 lt!1588594 lt!1588602))) lambda!145161))))

(assert (= (and d!1303679 (not res!1803287)) b!4378928))

(assert (= (and b!4378928 res!1803288) b!4378929))

(declare-fun b_lambda!135049 () Bool)

(assert (=> (not b_lambda!135049) (not b!4378928)))

(declare-fun m!5015179 () Bool)

(assert (=> b!4378928 m!5015179))

(declare-fun m!5015181 () Bool)

(assert (=> b!4378929 m!5015181))

(assert (=> b!4378047 d!1303679))

(declare-fun bs!661338 () Bool)

(declare-fun b!4378935 () Bool)

(assert (= bs!661338 (and b!4378935 b!4378638)))

(declare-fun lambda!145278 () Int)

(assert (=> bs!661338 (= (= (t!356206 (toList!3142 lt!1588610)) (t!356206 (toList!3142 lt!1588597))) (= lambda!145278 lambda!145256))))

(declare-fun bs!661339 () Bool)

(assert (= bs!661339 (and b!4378935 b!4378455)))

(assert (=> bs!661339 (= (= (t!356206 (toList!3142 lt!1588610)) (toList!3142 lt!1588598)) (= lambda!145278 lambda!145224))))

(declare-fun bs!661341 () Bool)

(assert (= bs!661341 (and b!4378935 b!4378634)))

(assert (=> bs!661341 (= (= (t!356206 (toList!3142 lt!1588610)) (toList!3142 lt!1588597)) (= lambda!145278 lambda!145258))))

(declare-fun bs!661343 () Bool)

(assert (= bs!661343 (and b!4378935 b!4378500)))

(assert (=> bs!661343 (= (= (t!356206 (toList!3142 lt!1588610)) (toList!3142 lt!1589006)) (= lambda!145278 lambda!145234))))

(declare-fun bs!661345 () Bool)

(assert (= bs!661345 (and b!4378935 b!4378158)))

(assert (=> bs!661345 (= (= (t!356206 (toList!3142 lt!1588610)) (toList!3142 lt!1588610)) (= lambda!145278 lambda!145184))))

(declare-fun bs!661347 () Bool)

(assert (= bs!661347 (and b!4378935 b!4378637)))

(assert (=> bs!661347 (= (= (t!356206 (toList!3142 lt!1588610)) (Cons!49156 (h!54753 (toList!3142 lt!1588597)) (t!356206 (toList!3142 lt!1588597)))) (= lambda!145278 lambda!145257))))

(assert (=> b!4378935 true))

(declare-fun bs!661352 () Bool)

(declare-fun b!4378934 () Bool)

(assert (= bs!661352 (and b!4378934 b!4378638)))

(declare-fun lambda!145279 () Int)

(assert (=> bs!661352 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588610)) (t!356206 (toList!3142 lt!1588610))) (t!356206 (toList!3142 lt!1588597))) (= lambda!145279 lambda!145256))))

(declare-fun bs!661353 () Bool)

(assert (= bs!661353 (and b!4378934 b!4378634)))

(assert (=> bs!661353 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588610)) (t!356206 (toList!3142 lt!1588610))) (toList!3142 lt!1588597)) (= lambda!145279 lambda!145258))))

(declare-fun bs!661354 () Bool)

(assert (= bs!661354 (and b!4378934 b!4378500)))

(assert (=> bs!661354 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588610)) (t!356206 (toList!3142 lt!1588610))) (toList!3142 lt!1589006)) (= lambda!145279 lambda!145234))))

(declare-fun bs!661356 () Bool)

(assert (= bs!661356 (and b!4378934 b!4378455)))

(assert (=> bs!661356 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588610)) (t!356206 (toList!3142 lt!1588610))) (toList!3142 lt!1588598)) (= lambda!145279 lambda!145224))))

(declare-fun bs!661358 () Bool)

(assert (= bs!661358 (and b!4378934 b!4378935)))

(assert (=> bs!661358 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588610)) (t!356206 (toList!3142 lt!1588610))) (t!356206 (toList!3142 lt!1588610))) (= lambda!145279 lambda!145278))))

(declare-fun bs!661360 () Bool)

(assert (= bs!661360 (and b!4378934 b!4378158)))

(assert (=> bs!661360 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588610)) (t!356206 (toList!3142 lt!1588610))) (toList!3142 lt!1588610)) (= lambda!145279 lambda!145184))))

(declare-fun bs!661362 () Bool)

(assert (= bs!661362 (and b!4378934 b!4378637)))

(assert (=> bs!661362 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588610)) (t!356206 (toList!3142 lt!1588610))) (Cons!49156 (h!54753 (toList!3142 lt!1588597)) (t!356206 (toList!3142 lt!1588597)))) (= lambda!145279 lambda!145257))))

(assert (=> b!4378934 true))

(declare-fun bs!661365 () Bool)

(declare-fun b!4378931 () Bool)

(assert (= bs!661365 (and b!4378931 b!4378638)))

(declare-fun lambda!145280 () Int)

(assert (=> bs!661365 (= (= (toList!3142 lt!1588610) (t!356206 (toList!3142 lt!1588597))) (= lambda!145280 lambda!145256))))

(declare-fun bs!661366 () Bool)

(assert (= bs!661366 (and b!4378931 b!4378934)))

(assert (=> bs!661366 (= (= (toList!3142 lt!1588610) (Cons!49156 (h!54753 (toList!3142 lt!1588610)) (t!356206 (toList!3142 lt!1588610)))) (= lambda!145280 lambda!145279))))

(declare-fun bs!661367 () Bool)

(assert (= bs!661367 (and b!4378931 b!4378634)))

(assert (=> bs!661367 (= (= (toList!3142 lt!1588610) (toList!3142 lt!1588597)) (= lambda!145280 lambda!145258))))

(declare-fun bs!661368 () Bool)

(assert (= bs!661368 (and b!4378931 b!4378500)))

(assert (=> bs!661368 (= (= (toList!3142 lt!1588610) (toList!3142 lt!1589006)) (= lambda!145280 lambda!145234))))

(declare-fun bs!661369 () Bool)

(assert (= bs!661369 (and b!4378931 b!4378455)))

(assert (=> bs!661369 (= (= (toList!3142 lt!1588610) (toList!3142 lt!1588598)) (= lambda!145280 lambda!145224))))

(declare-fun bs!661370 () Bool)

(assert (= bs!661370 (and b!4378931 b!4378935)))

(assert (=> bs!661370 (= (= (toList!3142 lt!1588610) (t!356206 (toList!3142 lt!1588610))) (= lambda!145280 lambda!145278))))

(declare-fun bs!661372 () Bool)

(assert (= bs!661372 (and b!4378931 b!4378158)))

(assert (=> bs!661372 (= lambda!145280 lambda!145184)))

(declare-fun bs!661373 () Bool)

(assert (= bs!661373 (and b!4378931 b!4378637)))

(assert (=> bs!661373 (= (= (toList!3142 lt!1588610) (Cons!49156 (h!54753 (toList!3142 lt!1588597)) (t!356206 (toList!3142 lt!1588597)))) (= lambda!145280 lambda!145257))))

(assert (=> b!4378931 true))

(declare-fun bs!661374 () Bool)

(declare-fun b!4378938 () Bool)

(assert (= bs!661374 (and b!4378938 b!4378159)))

(declare-fun lambda!145281 () Int)

(assert (=> bs!661374 (= lambda!145281 lambda!145185)))

(declare-fun bs!661375 () Bool)

(assert (= bs!661375 (and b!4378938 b!4378456)))

(assert (=> bs!661375 (= lambda!145281 lambda!145225)))

(declare-fun bs!661376 () Bool)

(assert (= bs!661376 (and b!4378938 b!4378501)))

(assert (=> bs!661376 (= lambda!145281 lambda!145235)))

(declare-fun bs!661377 () Bool)

(assert (= bs!661377 (and b!4378938 b!4378641)))

(assert (=> bs!661377 (= lambda!145281 lambda!145259)))

(declare-fun b!4378930 () Bool)

(declare-fun res!1803291 () Bool)

(declare-fun e!2725737 () Bool)

(assert (=> b!4378930 (=> (not res!1803291) (not e!2725737))))

(declare-fun lt!1589639 () List!49283)

(assert (=> b!4378930 (= res!1803291 (= (length!94 lt!1589639) (length!95 (toList!3142 lt!1588610))))))

(declare-fun res!1803289 () Bool)

(assert (=> b!4378931 (=> (not res!1803289) (not e!2725737))))

(assert (=> b!4378931 (= res!1803289 (forall!9274 lt!1589639 lambda!145280))))

(declare-fun b!4378932 () Bool)

(declare-fun e!2725740 () Unit!75116)

(declare-fun Unit!75370 () Unit!75116)

(assert (=> b!4378932 (= e!2725740 Unit!75370)))

(declare-fun b!4378933 () Bool)

(assert (=> b!4378933 false))

(declare-fun e!2725738 () Unit!75116)

(declare-fun Unit!75371 () Unit!75116)

(assert (=> b!4378933 (= e!2725738 Unit!75371)))

(declare-fun e!2725739 () List!49283)

(assert (=> b!4378934 (= e!2725739 (Cons!49159 (_1!27637 (h!54753 (toList!3142 lt!1588610))) (getKeysList!171 (t!356206 (toList!3142 lt!1588610)))))))

(declare-fun c!744712 () Bool)

(assert (=> b!4378934 (= c!744712 (containsKey!848 (t!356206 (toList!3142 lt!1588610)) (_1!27637 (h!54753 (toList!3142 lt!1588610)))))))

(declare-fun lt!1589640 () Unit!75116)

(assert (=> b!4378934 (= lt!1589640 e!2725738)))

(declare-fun c!744710 () Bool)

(assert (=> b!4378934 (= c!744710 (contains!11492 (getKeysList!171 (t!356206 (toList!3142 lt!1588610))) (_1!27637 (h!54753 (toList!3142 lt!1588610)))))))

(declare-fun lt!1589635 () Unit!75116)

(assert (=> b!4378934 (= lt!1589635 e!2725740)))

(declare-fun lt!1589634 () List!49283)

(assert (=> b!4378934 (= lt!1589634 (getKeysList!171 (t!356206 (toList!3142 lt!1588610))))))

(declare-fun lt!1589637 () Unit!75116)

(assert (=> b!4378934 (= lt!1589637 (lemmaForallContainsAddHeadPreserves!42 (t!356206 (toList!3142 lt!1588610)) lt!1589634 (h!54753 (toList!3142 lt!1588610))))))

(assert (=> b!4378934 (forall!9274 lt!1589634 lambda!145279)))

(declare-fun lt!1589636 () Unit!75116)

(assert (=> b!4378934 (= lt!1589636 lt!1589637)))

(assert (=> b!4378935 false))

(declare-fun lt!1589638 () Unit!75116)

(assert (=> b!4378935 (= lt!1589638 (forallContained!1913 (getKeysList!171 (t!356206 (toList!3142 lt!1588610))) lambda!145278 (_1!27637 (h!54753 (toList!3142 lt!1588610)))))))

(declare-fun Unit!75373 () Unit!75116)

(assert (=> b!4378935 (= e!2725740 Unit!75373)))

(declare-fun b!4378936 () Bool)

(declare-fun Unit!75374 () Unit!75116)

(assert (=> b!4378936 (= e!2725738 Unit!75374)))

(declare-fun b!4378937 () Bool)

(assert (=> b!4378937 (= e!2725739 Nil!49159)))

(declare-fun d!1303681 () Bool)

(assert (=> d!1303681 e!2725737))

(declare-fun res!1803290 () Bool)

(assert (=> d!1303681 (=> (not res!1803290) (not e!2725737))))

(assert (=> d!1303681 (= res!1803290 (noDuplicate!619 lt!1589639))))

(assert (=> d!1303681 (= lt!1589639 e!2725739)))

(declare-fun c!744711 () Bool)

(assert (=> d!1303681 (= c!744711 ((_ is Cons!49156) (toList!3142 lt!1588610)))))

(assert (=> d!1303681 (invariantList!723 (toList!3142 lt!1588610))))

(assert (=> d!1303681 (= (getKeysList!171 (toList!3142 lt!1588610)) lt!1589639)))

(assert (=> b!4378938 (= e!2725737 (= (content!7811 lt!1589639) (content!7811 (map!10705 (toList!3142 lt!1588610) lambda!145281))))))

(assert (= (and d!1303681 c!744711) b!4378934))

(assert (= (and d!1303681 (not c!744711)) b!4378937))

(assert (= (and b!4378934 c!744712) b!4378933))

(assert (= (and b!4378934 (not c!744712)) b!4378936))

(assert (= (and b!4378934 c!744710) b!4378935))

(assert (= (and b!4378934 (not c!744710)) b!4378932))

(assert (= (and d!1303681 res!1803290) b!4378930))

(assert (= (and b!4378930 res!1803291) b!4378931))

(assert (= (and b!4378931 res!1803289) b!4378938))

(declare-fun m!5015207 () Bool)

(assert (=> b!4378938 m!5015207))

(declare-fun m!5015209 () Bool)

(assert (=> b!4378938 m!5015209))

(assert (=> b!4378938 m!5015209))

(declare-fun m!5015211 () Bool)

(assert (=> b!4378938 m!5015211))

(declare-fun m!5015213 () Bool)

(assert (=> d!1303681 m!5015213))

(declare-fun m!5015215 () Bool)

(assert (=> d!1303681 m!5015215))

(declare-fun m!5015217 () Bool)

(assert (=> b!4378934 m!5015217))

(declare-fun m!5015221 () Bool)

(assert (=> b!4378934 m!5015221))

(declare-fun m!5015225 () Bool)

(assert (=> b!4378934 m!5015225))

(declare-fun m!5015227 () Bool)

(assert (=> b!4378934 m!5015227))

(assert (=> b!4378934 m!5015221))

(declare-fun m!5015229 () Bool)

(assert (=> b!4378934 m!5015229))

(declare-fun m!5015231 () Bool)

(assert (=> b!4378931 m!5015231))

(assert (=> b!4378935 m!5015221))

(assert (=> b!4378935 m!5015221))

(declare-fun m!5015233 () Bool)

(assert (=> b!4378935 m!5015233))

(declare-fun m!5015235 () Bool)

(assert (=> b!4378930 m!5015235))

(assert (=> b!4378930 m!5013793))

(assert (=> b!4377866 d!1303681))

(declare-fun d!1303691 () Bool)

(declare-fun res!1803300 () Bool)

(declare-fun e!2725748 () Bool)

(assert (=> d!1303691 (=> res!1803300 e!2725748)))

(assert (=> d!1303691 (= res!1803300 (not ((_ is Cons!49156) (_2!27638 (h!54754 (toList!3141 lm!1707))))))))

(assert (=> d!1303691 (= (noDuplicateKeys!579 (_2!27638 (h!54754 (toList!3141 lm!1707)))) e!2725748)))

(declare-fun b!4378947 () Bool)

(declare-fun e!2725749 () Bool)

(assert (=> b!4378947 (= e!2725748 e!2725749)))

(declare-fun res!1803301 () Bool)

(assert (=> b!4378947 (=> (not res!1803301) (not e!2725749))))

(assert (=> b!4378947 (= res!1803301 (not (containsKey!849 (t!356206 (_2!27638 (h!54754 (toList!3141 lm!1707)))) (_1!27637 (h!54753 (_2!27638 (h!54754 (toList!3141 lm!1707))))))))))

(declare-fun b!4378948 () Bool)

(assert (=> b!4378948 (= e!2725749 (noDuplicateKeys!579 (t!356206 (_2!27638 (h!54754 (toList!3141 lm!1707))))))))

(assert (= (and d!1303691 (not res!1803300)) b!4378947))

(assert (= (and b!4378947 res!1803301) b!4378948))

(declare-fun m!5015237 () Bool)

(assert (=> b!4378947 m!5015237))

(declare-fun m!5015239 () Bool)

(assert (=> b!4378948 m!5015239))

(assert (=> bs!660604 d!1303691))

(declare-fun d!1303695 () Bool)

(assert (=> d!1303695 (= (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588598) key!3918)) (not (isEmpty!28245 (getValueByKey!545 (toList!3142 lt!1588598) key!3918))))))

(declare-fun bs!661378 () Bool)

(assert (= bs!661378 d!1303695))

(assert (=> bs!661378 m!5013683))

(declare-fun m!5015245 () Bool)

(assert (=> bs!661378 m!5015245))

(assert (=> b!4378078 d!1303695))

(declare-fun d!1303699 () Bool)

(declare-fun c!744714 () Bool)

(assert (=> d!1303699 (= c!744714 (and ((_ is Cons!49156) (toList!3142 lt!1588598)) (= (_1!27637 (h!54753 (toList!3142 lt!1588598))) key!3918)))))

(declare-fun e!2725755 () Option!10559)

(assert (=> d!1303699 (= (getValueByKey!545 (toList!3142 lt!1588598) key!3918) e!2725755)))

(declare-fun b!4378957 () Bool)

(declare-fun e!2725756 () Option!10559)

(assert (=> b!4378957 (= e!2725755 e!2725756)))

(declare-fun c!744715 () Bool)

(assert (=> b!4378957 (= c!744715 (and ((_ is Cons!49156) (toList!3142 lt!1588598)) (not (= (_1!27637 (h!54753 (toList!3142 lt!1588598))) key!3918))))))

(declare-fun b!4378956 () Bool)

(assert (=> b!4378956 (= e!2725755 (Some!10558 (_2!27637 (h!54753 (toList!3142 lt!1588598)))))))

(declare-fun b!4378958 () Bool)

(assert (=> b!4378958 (= e!2725756 (getValueByKey!545 (t!356206 (toList!3142 lt!1588598)) key!3918))))

(declare-fun b!4378959 () Bool)

(assert (=> b!4378959 (= e!2725756 None!10558)))

(assert (= (and d!1303699 c!744714) b!4378956))

(assert (= (and d!1303699 (not c!744714)) b!4378957))

(assert (= (and b!4378957 c!744715) b!4378958))

(assert (= (and b!4378957 (not c!744715)) b!4378959))

(declare-fun m!5015247 () Bool)

(assert (=> b!4378958 m!5015247))

(assert (=> b!4378078 d!1303699))

(declare-fun d!1303701 () Bool)

(declare-fun res!1803307 () Bool)

(declare-fun e!2725757 () Bool)

(assert (=> d!1303701 (=> res!1803307 e!2725757)))

(assert (=> d!1303701 (= res!1803307 ((_ is Nil!49156) (ite c!744505 (toList!3142 lt!1588594) (t!356206 lt!1588593))))))

(assert (=> d!1303701 (= (forall!9273 (ite c!744505 (toList!3142 lt!1588594) (t!356206 lt!1588593)) (ite c!744505 lambda!145173 lambda!145175)) e!2725757)))

(declare-fun b!4378960 () Bool)

(declare-fun e!2725758 () Bool)

(assert (=> b!4378960 (= e!2725757 e!2725758)))

(declare-fun res!1803308 () Bool)

(assert (=> b!4378960 (=> (not res!1803308) (not e!2725758))))

(assert (=> b!4378960 (= res!1803308 (dynLambda!20710 (ite c!744505 lambda!145173 lambda!145175) (h!54753 (ite c!744505 (toList!3142 lt!1588594) (t!356206 lt!1588593)))))))

(declare-fun b!4378961 () Bool)

(assert (=> b!4378961 (= e!2725758 (forall!9273 (t!356206 (ite c!744505 (toList!3142 lt!1588594) (t!356206 lt!1588593))) (ite c!744505 lambda!145173 lambda!145175)))))

(assert (= (and d!1303701 (not res!1803307)) b!4378960))

(assert (= (and b!4378960 res!1803308) b!4378961))

(declare-fun b_lambda!135059 () Bool)

(assert (=> (not b_lambda!135059) (not b!4378960)))

(declare-fun m!5015249 () Bool)

(assert (=> b!4378960 m!5015249))

(declare-fun m!5015251 () Bool)

(assert (=> b!4378961 m!5015251))

(assert (=> bm!304476 d!1303701))

(declare-fun d!1303703 () Bool)

(declare-fun res!1803309 () Bool)

(declare-fun e!2725759 () Bool)

(assert (=> d!1303703 (=> res!1803309 e!2725759)))

(assert (=> d!1303703 (= res!1803309 (and ((_ is Cons!49156) (toList!3142 lt!1588597)) (= (_1!27637 (h!54753 (toList!3142 lt!1588597))) key!3918)))))

(assert (=> d!1303703 (= (containsKey!848 (toList!3142 lt!1588597) key!3918) e!2725759)))

(declare-fun b!4378962 () Bool)

(declare-fun e!2725760 () Bool)

(assert (=> b!4378962 (= e!2725759 e!2725760)))

(declare-fun res!1803310 () Bool)

(assert (=> b!4378962 (=> (not res!1803310) (not e!2725760))))

(assert (=> b!4378962 (= res!1803310 ((_ is Cons!49156) (toList!3142 lt!1588597)))))

(declare-fun b!4378963 () Bool)

(assert (=> b!4378963 (= e!2725760 (containsKey!848 (t!356206 (toList!3142 lt!1588597)) key!3918))))

(assert (= (and d!1303703 (not res!1803309)) b!4378962))

(assert (= (and b!4378962 res!1803310) b!4378963))

(declare-fun m!5015253 () Bool)

(assert (=> b!4378963 m!5015253))

(assert (=> d!1303279 d!1303703))

(declare-fun d!1303705 () Bool)

(declare-fun lt!1589666 () Bool)

(assert (=> d!1303705 (= lt!1589666 (select (content!7811 e!2725058) key!3918))))

(declare-fun e!2725761 () Bool)

(assert (=> d!1303705 (= lt!1589666 e!2725761)))

(declare-fun res!1803311 () Bool)

(assert (=> d!1303705 (=> (not res!1803311) (not e!2725761))))

(assert (=> d!1303705 (= res!1803311 ((_ is Cons!49159) e!2725058))))

(assert (=> d!1303705 (= (contains!11492 e!2725058 key!3918) lt!1589666)))

(declare-fun b!4378964 () Bool)

(declare-fun e!2725762 () Bool)

(assert (=> b!4378964 (= e!2725761 e!2725762)))

(declare-fun res!1803312 () Bool)

(assert (=> b!4378964 (=> res!1803312 e!2725762)))

(assert (=> b!4378964 (= res!1803312 (= (h!54758 e!2725058) key!3918))))

(declare-fun b!4378965 () Bool)

(assert (=> b!4378965 (= e!2725762 (contains!11492 (t!356209 e!2725058) key!3918))))

(assert (= (and d!1303705 res!1803311) b!4378964))

(assert (= (and b!4378964 (not res!1803312)) b!4378965))

(declare-fun m!5015255 () Bool)

(assert (=> d!1303705 m!5015255))

(declare-fun m!5015257 () Bool)

(assert (=> d!1303705 m!5015257))

(declare-fun m!5015259 () Bool)

(assert (=> b!4378965 m!5015259))

(assert (=> bm!304435 d!1303705))

(assert (=> b!4378086 d!1303581))

(assert (=> b!4378086 d!1303431))

(declare-fun bs!661404 () Bool)

(declare-fun b!4378968 () Bool)

(assert (= bs!661404 (and b!4378968 b!4378702)))

(declare-fun lambda!145283 () Int)

(assert (=> bs!661404 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589406) (= lambda!145283 lambda!145265))))

(declare-fun bs!661405 () Bool)

(assert (= bs!661405 (and b!4378968 b!4378460)))

(assert (=> bs!661405 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589239) (= lambda!145283 lambda!145228))))

(declare-fun bs!661406 () Bool)

(assert (= bs!661406 (and b!4378968 d!1303179)))

(assert (=> bs!661406 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588922) (= lambda!145283 lambda!145155))))

(declare-fun bs!661407 () Bool)

(assert (= bs!661407 (and b!4378968 b!4378412)))

(assert (=> bs!661407 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589205) (= lambda!145283 lambda!145217))))

(declare-fun bs!661409 () Bool)

(assert (= bs!661409 (and b!4378968 b!4378047)))

(assert (=> bs!661409 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (+!790 lt!1588594 lt!1588602)) (= lambda!145283 lambda!145160))))

(declare-fun bs!661411 () Bool)

(assert (= bs!661411 (and b!4378968 d!1303643)))

(assert (=> bs!661411 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589561) (= lambda!145283 lambda!145274))))

(declare-fun bs!661412 () Bool)

(assert (= bs!661412 (and b!4378968 b!4378411)))

(assert (=> bs!661412 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145283 lambda!145213))))

(declare-fun bs!661414 () Bool)

(assert (= bs!661414 (and b!4378968 b!4378869)))

(assert (=> bs!661414 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589551) (= lambda!145283 lambda!145272))))

(declare-fun bs!661416 () Bool)

(assert (= bs!661416 (and b!4378968 b!4378290)))

(assert (=> bs!661416 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145283 lambda!145192))))

(declare-fun bs!661418 () Bool)

(assert (= bs!661418 (and b!4378968 d!1303255)))

(assert (=> bs!661418 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588981) (= lambda!145283 lambda!145162))))

(declare-fun bs!661420 () Bool)

(assert (= bs!661420 (and b!4378968 d!1303383)))

(assert (=> bs!661420 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589011) (= lambda!145283 lambda!145200))))

(declare-fun bs!661422 () Bool)

(assert (= bs!661422 (and b!4378968 b!4377997)))

(assert (=> bs!661422 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588912) (= lambda!145283 lambda!145154))))

(declare-fun bs!661424 () Bool)

(assert (= bs!661424 (and b!4378968 b!4378063)))

(assert (=> bs!661424 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589011) (= lambda!145283 lambda!145166))))

(declare-fun bs!661426 () Bool)

(assert (= bs!661426 (and b!4378968 b!4378062)))

(assert (=> bs!661426 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588594) (= lambda!145283 lambda!145164))))

(declare-fun bs!661428 () Bool)

(assert (= bs!661428 (and b!4378968 b!4377996)))

(assert (=> bs!661428 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588594) (= lambda!145283 lambda!145152))))

(declare-fun bs!661430 () Bool)

(assert (= bs!661430 (and b!4378968 b!4378291)))

(assert (=> bs!661430 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589142) (= lambda!145283 lambda!145194))))

(declare-fun bs!661431 () Bool)

(assert (= bs!661431 (and b!4378968 b!4378090)))

(assert (=> bs!661431 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588594) (= lambda!145283 lambda!145174))))

(declare-fun bs!661433 () Bool)

(assert (= bs!661433 (and b!4378968 d!1303603)))

(assert (=> bs!661433 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589416) (= lambda!145283 lambda!145266))))

(declare-fun bs!661435 () Bool)

(assert (= bs!661435 (and b!4378968 b!4378701)))

(assert (=> bs!661435 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145283 lambda!145263))))

(declare-fun bs!661437 () Bool)

(assert (= bs!661437 (and b!4378968 d!1303433)))

(assert (=> bs!661437 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589250) (= lambda!145283 lambda!145231))))

(declare-fun bs!661438 () Bool)

(assert (= bs!661438 (and b!4378968 d!1303403)))

(assert (=> bs!661438 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589215) (= lambda!145283 lambda!145218))))

(assert (=> bs!661404 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145283 lambda!145264))))

(declare-fun bs!661441 () Bool)

(assert (= bs!661441 (and b!4378968 b!4378459)))

(assert (=> bs!661441 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145283 lambda!145226))))

(declare-fun bs!661443 () Bool)

(assert (= bs!661443 (and b!4378968 b!4378868)))

(assert (=> bs!661443 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145283 lambda!145267))))

(declare-fun bs!661444 () Bool)

(assert (= bs!661444 (and b!4378968 d!1303361)))

(assert (=> bs!661444 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589152) (= lambda!145283 lambda!145195))))

(assert (=> bs!661407 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145283 lambda!145215))))

(assert (=> bs!661405 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145283 lambda!145227))))

(declare-fun bs!661448 () Bool)

(assert (= bs!661448 (and b!4378968 b!4378046)))

(assert (=> bs!661448 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (+!790 lt!1588594 lt!1588602)) (= lambda!145283 lambda!145159))))

(assert (=> bs!661422 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588594) (= lambda!145283 lambda!145153))))

(declare-fun bs!661449 () Bool)

(assert (= bs!661449 (and b!4378968 d!1303519)))

(assert (=> bs!661449 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588594) (= lambda!145283 lambda!145242))))

(declare-fun bs!661450 () Bool)

(assert (= bs!661450 (and b!4378968 d!1303661)))

(assert (=> bs!661450 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588971) (= lambda!145283 lambda!145276))))

(declare-fun bs!661452 () Bool)

(assert (= bs!661452 (and b!4378968 d!1303597)))

(assert (=> bs!661452 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589053) (= lambda!145283 lambda!145262))))

(assert (=> bs!661414 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145283 lambda!145269))))

(declare-fun bs!661455 () Bool)

(assert (= bs!661455 (and b!4378968 d!1303265)))

(assert (=> bs!661455 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589021) (= lambda!145283 lambda!145167))))

(declare-fun bs!661457 () Bool)

(assert (= bs!661457 (and b!4378968 b!4378089)))

(assert (=> bs!661457 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588594) (= lambda!145283 lambda!145173))))

(assert (=> bs!661431 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589053) (= lambda!145283 lambda!145175))))

(assert (=> bs!661424 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588594) (= lambda!145283 lambda!145165))))

(declare-fun bs!661460 () Bool)

(assert (= bs!661460 (and b!4378968 d!1303299)))

(assert (=> bs!661460 (not (= lambda!145283 lambda!145179))))

(assert (=> bs!661430 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145283 lambda!145193))))

(assert (=> bs!661409 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588971) (= lambda!145283 lambda!145161))))

(declare-fun bs!661461 () Bool)

(assert (= bs!661461 (and b!4378968 d!1303283)))

(assert (=> bs!661461 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589063) (= lambda!145283 lambda!145176))))

(assert (=> b!4378968 true))

(declare-fun bs!661462 () Bool)

(declare-fun b!4378969 () Bool)

(assert (= bs!661462 (and b!4378969 b!4378702)))

(declare-fun lambda!145286 () Int)

(assert (=> bs!661462 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589406) (= lambda!145286 lambda!145265))))

(declare-fun bs!661463 () Bool)

(assert (= bs!661463 (and b!4378969 b!4378460)))

(assert (=> bs!661463 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589239) (= lambda!145286 lambda!145228))))

(declare-fun bs!661464 () Bool)

(assert (= bs!661464 (and b!4378969 d!1303179)))

(assert (=> bs!661464 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588922) (= lambda!145286 lambda!145155))))

(declare-fun bs!661465 () Bool)

(assert (= bs!661465 (and b!4378969 b!4378412)))

(assert (=> bs!661465 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589205) (= lambda!145286 lambda!145217))))

(declare-fun bs!661466 () Bool)

(assert (= bs!661466 (and b!4378969 b!4378047)))

(assert (=> bs!661466 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (+!790 lt!1588594 lt!1588602)) (= lambda!145286 lambda!145160))))

(declare-fun bs!661467 () Bool)

(assert (= bs!661467 (and b!4378969 d!1303643)))

(assert (=> bs!661467 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589561) (= lambda!145286 lambda!145274))))

(declare-fun bs!661468 () Bool)

(assert (= bs!661468 (and b!4378969 b!4378411)))

(assert (=> bs!661468 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145286 lambda!145213))))

(declare-fun bs!661469 () Bool)

(assert (= bs!661469 (and b!4378969 b!4378869)))

(assert (=> bs!661469 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589551) (= lambda!145286 lambda!145272))))

(declare-fun bs!661470 () Bool)

(assert (= bs!661470 (and b!4378969 b!4378290)))

(assert (=> bs!661470 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145286 lambda!145192))))

(declare-fun bs!661471 () Bool)

(assert (= bs!661471 (and b!4378969 d!1303255)))

(assert (=> bs!661471 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588981) (= lambda!145286 lambda!145162))))

(declare-fun bs!661472 () Bool)

(assert (= bs!661472 (and b!4378969 d!1303383)))

(assert (=> bs!661472 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589011) (= lambda!145286 lambda!145200))))

(declare-fun bs!661473 () Bool)

(assert (= bs!661473 (and b!4378969 b!4378968)))

(assert (=> bs!661473 (= lambda!145286 lambda!145283)))

(declare-fun bs!661474 () Bool)

(assert (= bs!661474 (and b!4378969 b!4377997)))

(assert (=> bs!661474 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588912) (= lambda!145286 lambda!145154))))

(declare-fun bs!661475 () Bool)

(assert (= bs!661475 (and b!4378969 b!4378063)))

(assert (=> bs!661475 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589011) (= lambda!145286 lambda!145166))))

(declare-fun bs!661476 () Bool)

(assert (= bs!661476 (and b!4378969 b!4378062)))

(assert (=> bs!661476 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588594) (= lambda!145286 lambda!145164))))

(declare-fun bs!661477 () Bool)

(assert (= bs!661477 (and b!4378969 b!4377996)))

(assert (=> bs!661477 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588594) (= lambda!145286 lambda!145152))))

(declare-fun bs!661478 () Bool)

(assert (= bs!661478 (and b!4378969 b!4378291)))

(assert (=> bs!661478 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589142) (= lambda!145286 lambda!145194))))

(declare-fun bs!661479 () Bool)

(assert (= bs!661479 (and b!4378969 b!4378090)))

(assert (=> bs!661479 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588594) (= lambda!145286 lambda!145174))))

(declare-fun bs!661480 () Bool)

(assert (= bs!661480 (and b!4378969 d!1303603)))

(assert (=> bs!661480 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589416) (= lambda!145286 lambda!145266))))

(declare-fun bs!661481 () Bool)

(assert (= bs!661481 (and b!4378969 b!4378701)))

(assert (=> bs!661481 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145286 lambda!145263))))

(declare-fun bs!661482 () Bool)

(assert (= bs!661482 (and b!4378969 d!1303433)))

(assert (=> bs!661482 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589250) (= lambda!145286 lambda!145231))))

(declare-fun bs!661483 () Bool)

(assert (= bs!661483 (and b!4378969 d!1303403)))

(assert (=> bs!661483 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589215) (= lambda!145286 lambda!145218))))

(assert (=> bs!661462 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145286 lambda!145264))))

(declare-fun bs!661484 () Bool)

(assert (= bs!661484 (and b!4378969 b!4378459)))

(assert (=> bs!661484 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145286 lambda!145226))))

(declare-fun bs!661485 () Bool)

(assert (= bs!661485 (and b!4378969 b!4378868)))

(assert (=> bs!661485 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145286 lambda!145267))))

(declare-fun bs!661486 () Bool)

(assert (= bs!661486 (and b!4378969 d!1303361)))

(assert (=> bs!661486 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589152) (= lambda!145286 lambda!145195))))

(assert (=> bs!661465 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145286 lambda!145215))))

(assert (=> bs!661463 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145286 lambda!145227))))

(declare-fun bs!661487 () Bool)

(assert (= bs!661487 (and b!4378969 b!4378046)))

(assert (=> bs!661487 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (+!790 lt!1588594 lt!1588602)) (= lambda!145286 lambda!145159))))

(assert (=> bs!661474 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588594) (= lambda!145286 lambda!145153))))

(declare-fun bs!661488 () Bool)

(assert (= bs!661488 (and b!4378969 d!1303519)))

(assert (=> bs!661488 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588594) (= lambda!145286 lambda!145242))))

(declare-fun bs!661489 () Bool)

(assert (= bs!661489 (and b!4378969 d!1303661)))

(assert (=> bs!661489 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588971) (= lambda!145286 lambda!145276))))

(declare-fun bs!661490 () Bool)

(assert (= bs!661490 (and b!4378969 d!1303597)))

(assert (=> bs!661490 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589053) (= lambda!145286 lambda!145262))))

(assert (=> bs!661469 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145286 lambda!145269))))

(declare-fun bs!661491 () Bool)

(assert (= bs!661491 (and b!4378969 d!1303265)))

(assert (=> bs!661491 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589021) (= lambda!145286 lambda!145167))))

(declare-fun bs!661492 () Bool)

(assert (= bs!661492 (and b!4378969 b!4378089)))

(assert (=> bs!661492 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588594) (= lambda!145286 lambda!145173))))

(assert (=> bs!661479 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589053) (= lambda!145286 lambda!145175))))

(assert (=> bs!661475 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588594) (= lambda!145286 lambda!145165))))

(declare-fun bs!661493 () Bool)

(assert (= bs!661493 (and b!4378969 d!1303299)))

(assert (=> bs!661493 (not (= lambda!145286 lambda!145179))))

(assert (=> bs!661478 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145286 lambda!145193))))

(assert (=> bs!661466 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1588971) (= lambda!145286 lambda!145161))))

(declare-fun bs!661494 () Bool)

(assert (= bs!661494 (and b!4378969 d!1303283)))

(assert (=> bs!661494 (= (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589063) (= lambda!145286 lambda!145176))))

(assert (=> b!4378969 true))

(declare-fun lt!1589671 () ListMap!2385)

(declare-fun lambda!145288 () Int)

(assert (=> bs!661462 (= (= lt!1589671 lt!1589406) (= lambda!145288 lambda!145265))))

(assert (=> bs!661463 (= (= lt!1589671 lt!1589239) (= lambda!145288 lambda!145228))))

(assert (=> bs!661464 (= (= lt!1589671 lt!1588922) (= lambda!145288 lambda!145155))))

(assert (=> bs!661465 (= (= lt!1589671 lt!1589205) (= lambda!145288 lambda!145217))))

(assert (=> bs!661466 (= (= lt!1589671 (+!790 lt!1588594 lt!1588602)) (= lambda!145288 lambda!145160))))

(assert (=> bs!661467 (= (= lt!1589671 lt!1589561) (= lambda!145288 lambda!145274))))

(assert (=> bs!661468 (= (= lt!1589671 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145288 lambda!145213))))

(assert (=> bs!661469 (= (= lt!1589671 lt!1589551) (= lambda!145288 lambda!145272))))

(assert (=> bs!661470 (= (= lt!1589671 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145288 lambda!145192))))

(assert (=> bs!661471 (= (= lt!1589671 lt!1588981) (= lambda!145288 lambda!145162))))

(assert (=> bs!661472 (= (= lt!1589671 lt!1589011) (= lambda!145288 lambda!145200))))

(assert (=> bs!661473 (= (= lt!1589671 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145288 lambda!145283))))

(assert (=> bs!661474 (= (= lt!1589671 lt!1588912) (= lambda!145288 lambda!145154))))

(assert (=> bs!661475 (= (= lt!1589671 lt!1589011) (= lambda!145288 lambda!145166))))

(assert (=> bs!661476 (= (= lt!1589671 lt!1588594) (= lambda!145288 lambda!145164))))

(assert (=> bs!661477 (= (= lt!1589671 lt!1588594) (= lambda!145288 lambda!145152))))

(assert (=> bs!661478 (= (= lt!1589671 lt!1589142) (= lambda!145288 lambda!145194))))

(assert (=> bs!661479 (= (= lt!1589671 lt!1588594) (= lambda!145288 lambda!145174))))

(assert (=> bs!661480 (= (= lt!1589671 lt!1589416) (= lambda!145288 lambda!145266))))

(assert (=> bs!661481 (= (= lt!1589671 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145288 lambda!145263))))

(assert (=> bs!661482 (= (= lt!1589671 lt!1589250) (= lambda!145288 lambda!145231))))

(assert (=> bs!661483 (= (= lt!1589671 lt!1589215) (= lambda!145288 lambda!145218))))

(assert (=> bs!661462 (= (= lt!1589671 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145288 lambda!145264))))

(assert (=> bs!661484 (= (= lt!1589671 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145288 lambda!145226))))

(assert (=> bs!661485 (= (= lt!1589671 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145288 lambda!145267))))

(assert (=> bs!661486 (= (= lt!1589671 lt!1589152) (= lambda!145288 lambda!145195))))

(assert (=> bs!661465 (= (= lt!1589671 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145288 lambda!145215))))

(assert (=> b!4378969 (= (= lt!1589671 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145288 lambda!145286))))

(assert (=> bs!661463 (= (= lt!1589671 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145288 lambda!145227))))

(assert (=> bs!661487 (= (= lt!1589671 (+!790 lt!1588594 lt!1588602)) (= lambda!145288 lambda!145159))))

(assert (=> bs!661474 (= (= lt!1589671 lt!1588594) (= lambda!145288 lambda!145153))))

(assert (=> bs!661488 (= (= lt!1589671 lt!1588594) (= lambda!145288 lambda!145242))))

(assert (=> bs!661489 (= (= lt!1589671 lt!1588971) (= lambda!145288 lambda!145276))))

(assert (=> bs!661490 (= (= lt!1589671 lt!1589053) (= lambda!145288 lambda!145262))))

(assert (=> bs!661469 (= (= lt!1589671 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145288 lambda!145269))))

(assert (=> bs!661491 (= (= lt!1589671 lt!1589021) (= lambda!145288 lambda!145167))))

(assert (=> bs!661492 (= (= lt!1589671 lt!1588594) (= lambda!145288 lambda!145173))))

(assert (=> bs!661479 (= (= lt!1589671 lt!1589053) (= lambda!145288 lambda!145175))))

(assert (=> bs!661475 (= (= lt!1589671 lt!1588594) (= lambda!145288 lambda!145165))))

(assert (=> bs!661493 (not (= lambda!145288 lambda!145179))))

(assert (=> bs!661478 (= (= lt!1589671 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145288 lambda!145193))))

(assert (=> bs!661466 (= (= lt!1589671 lt!1588971) (= lambda!145288 lambda!145161))))

(assert (=> bs!661494 (= (= lt!1589671 lt!1589063) (= lambda!145288 lambda!145176))))

(assert (=> b!4378969 true))

(declare-fun bs!661522 () Bool)

(declare-fun d!1303707 () Bool)

(assert (= bs!661522 (and d!1303707 b!4378702)))

(declare-fun lambda!145289 () Int)

(declare-fun lt!1589681 () ListMap!2385)

(assert (=> bs!661522 (= (= lt!1589681 lt!1589406) (= lambda!145289 lambda!145265))))

(declare-fun bs!661523 () Bool)

(assert (= bs!661523 (and d!1303707 b!4378969)))

(assert (=> bs!661523 (= (= lt!1589681 lt!1589671) (= lambda!145289 lambda!145288))))

(declare-fun bs!661524 () Bool)

(assert (= bs!661524 (and d!1303707 b!4378460)))

(assert (=> bs!661524 (= (= lt!1589681 lt!1589239) (= lambda!145289 lambda!145228))))

(declare-fun bs!661525 () Bool)

(assert (= bs!661525 (and d!1303707 d!1303179)))

(assert (=> bs!661525 (= (= lt!1589681 lt!1588922) (= lambda!145289 lambda!145155))))

(declare-fun bs!661526 () Bool)

(assert (= bs!661526 (and d!1303707 b!4378412)))

(assert (=> bs!661526 (= (= lt!1589681 lt!1589205) (= lambda!145289 lambda!145217))))

(declare-fun bs!661527 () Bool)

(assert (= bs!661527 (and d!1303707 b!4378047)))

(assert (=> bs!661527 (= (= lt!1589681 (+!790 lt!1588594 lt!1588602)) (= lambda!145289 lambda!145160))))

(declare-fun bs!661528 () Bool)

(assert (= bs!661528 (and d!1303707 d!1303643)))

(assert (=> bs!661528 (= (= lt!1589681 lt!1589561) (= lambda!145289 lambda!145274))))

(declare-fun bs!661529 () Bool)

(assert (= bs!661529 (and d!1303707 b!4378411)))

(assert (=> bs!661529 (= (= lt!1589681 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145289 lambda!145213))))

(declare-fun bs!661530 () Bool)

(assert (= bs!661530 (and d!1303707 b!4378869)))

(assert (=> bs!661530 (= (= lt!1589681 lt!1589551) (= lambda!145289 lambda!145272))))

(declare-fun bs!661531 () Bool)

(assert (= bs!661531 (and d!1303707 b!4378290)))

(assert (=> bs!661531 (= (= lt!1589681 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145289 lambda!145192))))

(declare-fun bs!661532 () Bool)

(assert (= bs!661532 (and d!1303707 d!1303255)))

(assert (=> bs!661532 (= (= lt!1589681 lt!1588981) (= lambda!145289 lambda!145162))))

(declare-fun bs!661533 () Bool)

(assert (= bs!661533 (and d!1303707 d!1303383)))

(assert (=> bs!661533 (= (= lt!1589681 lt!1589011) (= lambda!145289 lambda!145200))))

(declare-fun bs!661534 () Bool)

(assert (= bs!661534 (and d!1303707 b!4378968)))

(assert (=> bs!661534 (= (= lt!1589681 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145289 lambda!145283))))

(declare-fun bs!661535 () Bool)

(assert (= bs!661535 (and d!1303707 b!4377997)))

(assert (=> bs!661535 (= (= lt!1589681 lt!1588912) (= lambda!145289 lambda!145154))))

(declare-fun bs!661536 () Bool)

(assert (= bs!661536 (and d!1303707 b!4378063)))

(assert (=> bs!661536 (= (= lt!1589681 lt!1589011) (= lambda!145289 lambda!145166))))

(declare-fun bs!661537 () Bool)

(assert (= bs!661537 (and d!1303707 b!4378062)))

(assert (=> bs!661537 (= (= lt!1589681 lt!1588594) (= lambda!145289 lambda!145164))))

(declare-fun bs!661538 () Bool)

(assert (= bs!661538 (and d!1303707 b!4377996)))

(assert (=> bs!661538 (= (= lt!1589681 lt!1588594) (= lambda!145289 lambda!145152))))

(declare-fun bs!661539 () Bool)

(assert (= bs!661539 (and d!1303707 b!4378291)))

(assert (=> bs!661539 (= (= lt!1589681 lt!1589142) (= lambda!145289 lambda!145194))))

(declare-fun bs!661540 () Bool)

(assert (= bs!661540 (and d!1303707 b!4378090)))

(assert (=> bs!661540 (= (= lt!1589681 lt!1588594) (= lambda!145289 lambda!145174))))

(declare-fun bs!661541 () Bool)

(assert (= bs!661541 (and d!1303707 d!1303603)))

(assert (=> bs!661541 (= (= lt!1589681 lt!1589416) (= lambda!145289 lambda!145266))))

(declare-fun bs!661542 () Bool)

(assert (= bs!661542 (and d!1303707 b!4378701)))

(assert (=> bs!661542 (= (= lt!1589681 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145289 lambda!145263))))

(declare-fun bs!661543 () Bool)

(assert (= bs!661543 (and d!1303707 d!1303433)))

(assert (=> bs!661543 (= (= lt!1589681 lt!1589250) (= lambda!145289 lambda!145231))))

(declare-fun bs!661544 () Bool)

(assert (= bs!661544 (and d!1303707 d!1303403)))

(assert (=> bs!661544 (= (= lt!1589681 lt!1589215) (= lambda!145289 lambda!145218))))

(assert (=> bs!661522 (= (= lt!1589681 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145289 lambda!145264))))

(declare-fun bs!661545 () Bool)

(assert (= bs!661545 (and d!1303707 b!4378459)))

(assert (=> bs!661545 (= (= lt!1589681 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145289 lambda!145226))))

(declare-fun bs!661546 () Bool)

(assert (= bs!661546 (and d!1303707 b!4378868)))

(assert (=> bs!661546 (= (= lt!1589681 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145289 lambda!145267))))

(declare-fun bs!661547 () Bool)

(assert (= bs!661547 (and d!1303707 d!1303361)))

(assert (=> bs!661547 (= (= lt!1589681 lt!1589152) (= lambda!145289 lambda!145195))))

(assert (=> bs!661526 (= (= lt!1589681 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145289 lambda!145215))))

(assert (=> bs!661523 (= (= lt!1589681 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145289 lambda!145286))))

(assert (=> bs!661524 (= (= lt!1589681 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145289 lambda!145227))))

(declare-fun bs!661548 () Bool)

(assert (= bs!661548 (and d!1303707 b!4378046)))

(assert (=> bs!661548 (= (= lt!1589681 (+!790 lt!1588594 lt!1588602)) (= lambda!145289 lambda!145159))))

(assert (=> bs!661535 (= (= lt!1589681 lt!1588594) (= lambda!145289 lambda!145153))))

(declare-fun bs!661549 () Bool)

(assert (= bs!661549 (and d!1303707 d!1303519)))

(assert (=> bs!661549 (= (= lt!1589681 lt!1588594) (= lambda!145289 lambda!145242))))

(declare-fun bs!661550 () Bool)

(assert (= bs!661550 (and d!1303707 d!1303661)))

(assert (=> bs!661550 (= (= lt!1589681 lt!1588971) (= lambda!145289 lambda!145276))))

(declare-fun bs!661551 () Bool)

(assert (= bs!661551 (and d!1303707 d!1303597)))

(assert (=> bs!661551 (= (= lt!1589681 lt!1589053) (= lambda!145289 lambda!145262))))

(assert (=> bs!661530 (= (= lt!1589681 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145289 lambda!145269))))

(declare-fun bs!661552 () Bool)

(assert (= bs!661552 (and d!1303707 d!1303265)))

(assert (=> bs!661552 (= (= lt!1589681 lt!1589021) (= lambda!145289 lambda!145167))))

(declare-fun bs!661553 () Bool)

(assert (= bs!661553 (and d!1303707 b!4378089)))

(assert (=> bs!661553 (= (= lt!1589681 lt!1588594) (= lambda!145289 lambda!145173))))

(assert (=> bs!661540 (= (= lt!1589681 lt!1589053) (= lambda!145289 lambda!145175))))

(assert (=> bs!661536 (= (= lt!1589681 lt!1588594) (= lambda!145289 lambda!145165))))

(declare-fun bs!661554 () Bool)

(assert (= bs!661554 (and d!1303707 d!1303299)))

(assert (=> bs!661554 (not (= lambda!145289 lambda!145179))))

(assert (=> bs!661539 (= (= lt!1589681 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145289 lambda!145193))))

(assert (=> bs!661527 (= (= lt!1589681 lt!1588971) (= lambda!145289 lambda!145161))))

(declare-fun bs!661555 () Bool)

(assert (= bs!661555 (and d!1303707 d!1303283)))

(assert (=> bs!661555 (= (= lt!1589681 lt!1589063) (= lambda!145289 lambda!145176))))

(assert (=> d!1303707 true))

(declare-fun b!4378966 () Bool)

(declare-fun e!2725765 () Bool)

(assert (=> b!4378966 (= e!2725765 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) lambda!145288))))

(declare-fun bm!304567 () Bool)

(declare-fun call!304573 () Bool)

(declare-fun c!744716 () Bool)

(assert (=> bm!304567 (= call!304573 (forall!9273 (ite c!744716 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (t!356206 (_2!27638 (h!54754 (toList!3141 lt!1588596))))) (ite c!744716 lambda!145283 lambda!145288)))))

(declare-fun b!4378967 () Bool)

(declare-fun e!2725763 () Bool)

(assert (=> b!4378967 (= e!2725763 (invariantList!723 (toList!3142 lt!1589681)))))

(declare-fun bm!304568 () Bool)

(declare-fun call!304574 () Unit!75116)

(assert (=> bm!304568 (= call!304574 (lemmaContainsAllItsOwnKeys!105 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))))))

(declare-fun e!2725764 () ListMap!2385)

(assert (=> b!4378968 (= e!2725764 (extractMap!638 (t!356207 (toList!3141 lt!1588596))))))

(declare-fun lt!1589680 () Unit!75116)

(assert (=> b!4378968 (= lt!1589680 call!304574)))

(assert (=> b!4378968 call!304573))

(declare-fun lt!1589687 () Unit!75116)

(assert (=> b!4378968 (= lt!1589687 lt!1589680)))

(declare-fun call!304572 () Bool)

(assert (=> b!4378968 call!304572))

(declare-fun lt!1589685 () Unit!75116)

(declare-fun Unit!75379 () Unit!75116)

(assert (=> b!4378968 (= lt!1589685 Unit!75379)))

(assert (=> d!1303707 e!2725763))

(declare-fun res!1803315 () Bool)

(assert (=> d!1303707 (=> (not res!1803315) (not e!2725763))))

(assert (=> d!1303707 (= res!1803315 (forall!9273 (_2!27638 (h!54754 (toList!3141 lt!1588596))) lambda!145289))))

(assert (=> d!1303707 (= lt!1589681 e!2725764)))

(assert (=> d!1303707 (= c!744716 ((_ is Nil!49156) (_2!27638 (h!54754 (toList!3141 lt!1588596)))))))

(assert (=> d!1303707 (noDuplicateKeys!579 (_2!27638 (h!54754 (toList!3141 lt!1588596))))))

(assert (=> d!1303707 (= (addToMapMapFromBucket!260 (_2!27638 (h!54754 (toList!3141 lt!1588596))) (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) lt!1589681)))

(assert (=> b!4378969 (= e!2725764 lt!1589671)))

(declare-fun lt!1589674 () ListMap!2385)

(assert (=> b!4378969 (= lt!1589674 (+!790 (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (h!54753 (_2!27638 (h!54754 (toList!3141 lt!1588596))))))))

(assert (=> b!4378969 (= lt!1589671 (addToMapMapFromBucket!260 (t!356206 (_2!27638 (h!54754 (toList!3141 lt!1588596)))) (+!790 (extractMap!638 (t!356207 (toList!3141 lt!1588596))) (h!54753 (_2!27638 (h!54754 (toList!3141 lt!1588596)))))))))

(declare-fun lt!1589670 () Unit!75116)

(assert (=> b!4378969 (= lt!1589670 call!304574)))

(assert (=> b!4378969 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) lambda!145286)))

(declare-fun lt!1589679 () Unit!75116)

(assert (=> b!4378969 (= lt!1589679 lt!1589670)))

(assert (=> b!4378969 (forall!9273 (toList!3142 lt!1589674) lambda!145288)))

(declare-fun lt!1589668 () Unit!75116)

(declare-fun Unit!75380 () Unit!75116)

(assert (=> b!4378969 (= lt!1589668 Unit!75380)))

(assert (=> b!4378969 call!304573))

(declare-fun lt!1589682 () Unit!75116)

(declare-fun Unit!75381 () Unit!75116)

(assert (=> b!4378969 (= lt!1589682 Unit!75381)))

(declare-fun lt!1589673 () Unit!75116)

(declare-fun Unit!75382 () Unit!75116)

(assert (=> b!4378969 (= lt!1589673 Unit!75382)))

(declare-fun lt!1589686 () Unit!75116)

(assert (=> b!4378969 (= lt!1589686 (forallContained!1911 (toList!3142 lt!1589674) lambda!145288 (h!54753 (_2!27638 (h!54754 (toList!3141 lt!1588596))))))))

(assert (=> b!4378969 (contains!11488 lt!1589674 (_1!27637 (h!54753 (_2!27638 (h!54754 (toList!3141 lt!1588596))))))))

(declare-fun lt!1589683 () Unit!75116)

(declare-fun Unit!75383 () Unit!75116)

(assert (=> b!4378969 (= lt!1589683 Unit!75383)))

(assert (=> b!4378969 (contains!11488 lt!1589671 (_1!27637 (h!54753 (_2!27638 (h!54754 (toList!3141 lt!1588596))))))))

(declare-fun lt!1589669 () Unit!75116)

(declare-fun Unit!75384 () Unit!75116)

(assert (=> b!4378969 (= lt!1589669 Unit!75384)))

(assert (=> b!4378969 (forall!9273 (_2!27638 (h!54754 (toList!3141 lt!1588596))) lambda!145288)))

(declare-fun lt!1589676 () Unit!75116)

(declare-fun Unit!75385 () Unit!75116)

(assert (=> b!4378969 (= lt!1589676 Unit!75385)))

(assert (=> b!4378969 call!304572))

(declare-fun lt!1589675 () Unit!75116)

(declare-fun Unit!75386 () Unit!75116)

(assert (=> b!4378969 (= lt!1589675 Unit!75386)))

(declare-fun lt!1589672 () Unit!75116)

(declare-fun Unit!75387 () Unit!75116)

(assert (=> b!4378969 (= lt!1589672 Unit!75387)))

(declare-fun lt!1589678 () Unit!75116)

(assert (=> b!4378969 (= lt!1589678 (addForallContainsKeyThenBeforeAdding!105 (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589671 (_1!27637 (h!54753 (_2!27638 (h!54754 (toList!3141 lt!1588596))))) (_2!27637 (h!54753 (_2!27638 (h!54754 (toList!3141 lt!1588596)))))))))

(assert (=> b!4378969 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) lambda!145288)))

(declare-fun lt!1589667 () Unit!75116)

(assert (=> b!4378969 (= lt!1589667 lt!1589678)))

(assert (=> b!4378969 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) lambda!145288)))

(declare-fun lt!1589677 () Unit!75116)

(declare-fun Unit!75388 () Unit!75116)

(assert (=> b!4378969 (= lt!1589677 Unit!75388)))

(declare-fun res!1803314 () Bool)

(assert (=> b!4378969 (= res!1803314 (forall!9273 (_2!27638 (h!54754 (toList!3141 lt!1588596))) lambda!145288))))

(assert (=> b!4378969 (=> (not res!1803314) (not e!2725765))))

(assert (=> b!4378969 e!2725765))

(declare-fun lt!1589684 () Unit!75116)

(declare-fun Unit!75389 () Unit!75116)

(assert (=> b!4378969 (= lt!1589684 Unit!75389)))

(declare-fun b!4378970 () Bool)

(declare-fun res!1803313 () Bool)

(assert (=> b!4378970 (=> (not res!1803313) (not e!2725763))))

(assert (=> b!4378970 (= res!1803313 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) lambda!145289))))

(declare-fun bm!304569 () Bool)

(assert (=> bm!304569 (= call!304572 (forall!9273 (ite c!744716 (toList!3142 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (toList!3142 lt!1589674)) (ite c!744716 lambda!145283 lambda!145288)))))

(assert (= (and d!1303707 c!744716) b!4378968))

(assert (= (and d!1303707 (not c!744716)) b!4378969))

(assert (= (and b!4378969 res!1803314) b!4378966))

(assert (= (or b!4378968 b!4378969) bm!304568))

(assert (= (or b!4378968 b!4378969) bm!304567))

(assert (= (or b!4378968 b!4378969) bm!304569))

(assert (= (and d!1303707 res!1803315) b!4378970))

(assert (= (and b!4378970 res!1803313) b!4378967))

(declare-fun m!5015339 () Bool)

(assert (=> b!4378967 m!5015339))

(declare-fun m!5015341 () Bool)

(assert (=> b!4378966 m!5015341))

(declare-fun m!5015343 () Bool)

(assert (=> b!4378970 m!5015343))

(declare-fun m!5015345 () Bool)

(assert (=> bm!304569 m!5015345))

(assert (=> b!4378969 m!5015341))

(assert (=> b!4378969 m!5015341))

(assert (=> b!4378969 m!5013617))

(declare-fun m!5015347 () Bool)

(assert (=> b!4378969 m!5015347))

(declare-fun m!5015349 () Bool)

(assert (=> b!4378969 m!5015349))

(declare-fun m!5015351 () Bool)

(assert (=> b!4378969 m!5015351))

(declare-fun m!5015353 () Bool)

(assert (=> b!4378969 m!5015353))

(declare-fun m!5015355 () Bool)

(assert (=> b!4378969 m!5015355))

(assert (=> b!4378969 m!5015355))

(assert (=> b!4378969 m!5013617))

(assert (=> b!4378969 m!5015349))

(declare-fun m!5015357 () Bool)

(assert (=> b!4378969 m!5015357))

(declare-fun m!5015359 () Bool)

(assert (=> b!4378969 m!5015359))

(declare-fun m!5015361 () Bool)

(assert (=> b!4378969 m!5015361))

(declare-fun m!5015363 () Bool)

(assert (=> b!4378969 m!5015363))

(assert (=> bm!304568 m!5013617))

(declare-fun m!5015365 () Bool)

(assert (=> bm!304568 m!5015365))

(declare-fun m!5015367 () Bool)

(assert (=> d!1303707 m!5015367))

(declare-fun m!5015369 () Bool)

(assert (=> d!1303707 m!5015369))

(declare-fun m!5015371 () Bool)

(assert (=> bm!304567 m!5015371))

(assert (=> b!4378065 d!1303707))

(declare-fun bs!661556 () Bool)

(declare-fun d!1303719 () Bool)

(assert (= bs!661556 (and d!1303719 d!1303421)))

(declare-fun lambda!145290 () Int)

(assert (=> bs!661556 (= lambda!145290 lambda!145223)))

(declare-fun bs!661557 () Bool)

(assert (= bs!661557 (and d!1303719 d!1303273)))

(assert (=> bs!661557 (= lambda!145290 lambda!145169)))

(declare-fun bs!661558 () Bool)

(assert (= bs!661558 (and d!1303719 d!1303259)))

(assert (=> bs!661558 (= lambda!145290 lambda!145163)))

(declare-fun bs!661559 () Bool)

(assert (= bs!661559 (and d!1303719 d!1303275)))

(assert (=> bs!661559 (= lambda!145290 lambda!145172)))

(declare-fun bs!661560 () Bool)

(assert (= bs!661560 (and d!1303719 d!1303175)))

(assert (=> bs!661560 (= lambda!145290 lambda!145079)))

(declare-fun bs!661561 () Bool)

(assert (= bs!661561 (and d!1303719 start!425120)))

(assert (=> bs!661561 (= lambda!145290 lambda!145061)))

(declare-fun bs!661562 () Bool)

(assert (= bs!661562 (and d!1303719 d!1303267)))

(assert (=> bs!661562 (= lambda!145290 lambda!145168)))

(declare-fun bs!661563 () Bool)

(assert (= bs!661563 (and d!1303719 d!1303157)))

(assert (=> bs!661563 (not (= lambda!145290 lambda!145064))))

(declare-fun lt!1589704 () ListMap!2385)

(assert (=> d!1303719 (invariantList!723 (toList!3142 lt!1589704))))

(declare-fun e!2725782 () ListMap!2385)

(assert (=> d!1303719 (= lt!1589704 e!2725782)))

(declare-fun c!744725 () Bool)

(assert (=> d!1303719 (= c!744725 ((_ is Cons!49157) (t!356207 (toList!3141 lt!1588596))))))

(assert (=> d!1303719 (forall!9271 (t!356207 (toList!3141 lt!1588596)) lambda!145290)))

(assert (=> d!1303719 (= (extractMap!638 (t!356207 (toList!3141 lt!1588596))) lt!1589704)))

(declare-fun b!4378995 () Bool)

(assert (=> b!4378995 (= e!2725782 (addToMapMapFromBucket!260 (_2!27638 (h!54754 (t!356207 (toList!3141 lt!1588596)))) (extractMap!638 (t!356207 (t!356207 (toList!3141 lt!1588596))))))))

(declare-fun b!4378996 () Bool)

(assert (=> b!4378996 (= e!2725782 (ListMap!2386 Nil!49156))))

(assert (= (and d!1303719 c!744725) b!4378995))

(assert (= (and d!1303719 (not c!744725)) b!4378996))

(declare-fun m!5015373 () Bool)

(assert (=> d!1303719 m!5015373))

(declare-fun m!5015375 () Bool)

(assert (=> d!1303719 m!5015375))

(declare-fun m!5015377 () Bool)

(assert (=> b!4378995 m!5015377))

(assert (=> b!4378995 m!5015377))

(declare-fun m!5015379 () Bool)

(assert (=> b!4378995 m!5015379))

(assert (=> b!4378065 d!1303719))

(declare-fun d!1303721 () Bool)

(declare-fun res!1803328 () Bool)

(declare-fun e!2725785 () Bool)

(assert (=> d!1303721 (=> res!1803328 e!2725785)))

(assert (=> d!1303721 (= res!1803328 ((_ is Nil!49156) (ite c!744490 (toList!3142 lt!1588594) (toList!3142 lt!1588915))))))

(assert (=> d!1303721 (= (forall!9273 (ite c!744490 (toList!3142 lt!1588594) (toList!3142 lt!1588915)) (ite c!744490 lambda!145152 lambda!145154)) e!2725785)))

(declare-fun b!4379001 () Bool)

(declare-fun e!2725786 () Bool)

(assert (=> b!4379001 (= e!2725785 e!2725786)))

(declare-fun res!1803329 () Bool)

(assert (=> b!4379001 (=> (not res!1803329) (not e!2725786))))

(assert (=> b!4379001 (= res!1803329 (dynLambda!20710 (ite c!744490 lambda!145152 lambda!145154) (h!54753 (ite c!744490 (toList!3142 lt!1588594) (toList!3142 lt!1588915)))))))

(declare-fun b!4379002 () Bool)

(assert (=> b!4379002 (= e!2725786 (forall!9273 (t!356206 (ite c!744490 (toList!3142 lt!1588594) (toList!3142 lt!1588915))) (ite c!744490 lambda!145152 lambda!145154)))))

(assert (= (and d!1303721 (not res!1803328)) b!4379001))

(assert (= (and b!4379001 res!1803329) b!4379002))

(declare-fun b_lambda!135063 () Bool)

(assert (=> (not b_lambda!135063) (not b!4379001)))

(declare-fun m!5015389 () Bool)

(assert (=> b!4379001 m!5015389))

(declare-fun m!5015391 () Bool)

(assert (=> b!4379002 m!5015391))

(assert (=> bm!304467 d!1303721))

(declare-fun d!1303725 () Bool)

(declare-fun e!2725789 () Bool)

(assert (=> d!1303725 e!2725789))

(declare-fun res!1803332 () Bool)

(assert (=> d!1303725 (=> res!1803332 e!2725789)))

(declare-fun lt!1589710 () Bool)

(assert (=> d!1303725 (= res!1803332 (not lt!1589710))))

(declare-fun lt!1589711 () Bool)

(assert (=> d!1303725 (= lt!1589710 lt!1589711)))

(declare-fun lt!1589708 () Unit!75116)

(declare-fun e!2725788 () Unit!75116)

(assert (=> d!1303725 (= lt!1589708 e!2725788)))

(declare-fun c!744726 () Bool)

(assert (=> d!1303725 (= c!744726 lt!1589711)))

(assert (=> d!1303725 (= lt!1589711 (containsKey!851 (toList!3141 lt!1588996) (_1!27638 (tuple2!48689 hash!377 lt!1588599))))))

(assert (=> d!1303725 (= (contains!11489 lt!1588996 (_1!27638 (tuple2!48689 hash!377 lt!1588599))) lt!1589710)))

(declare-fun b!4379005 () Bool)

(declare-fun lt!1589709 () Unit!75116)

(assert (=> b!4379005 (= e!2725788 lt!1589709)))

(assert (=> b!4379005 (= lt!1589709 (lemmaContainsKeyImpliesGetValueByKeyDefined!457 (toList!3141 lt!1588996) (_1!27638 (tuple2!48689 hash!377 lt!1588599))))))

(assert (=> b!4379005 (isDefined!7854 (getValueByKey!546 (toList!3141 lt!1588996) (_1!27638 (tuple2!48689 hash!377 lt!1588599))))))

(declare-fun b!4379006 () Bool)

(declare-fun Unit!75390 () Unit!75116)

(assert (=> b!4379006 (= e!2725788 Unit!75390)))

(declare-fun b!4379007 () Bool)

(assert (=> b!4379007 (= e!2725789 (isDefined!7854 (getValueByKey!546 (toList!3141 lt!1588996) (_1!27638 (tuple2!48689 hash!377 lt!1588599)))))))

(assert (= (and d!1303725 c!744726) b!4379005))

(assert (= (and d!1303725 (not c!744726)) b!4379006))

(assert (= (and d!1303725 (not res!1803332)) b!4379007))

(declare-fun m!5015393 () Bool)

(assert (=> d!1303725 m!5015393))

(declare-fun m!5015395 () Bool)

(assert (=> b!4379005 m!5015395))

(assert (=> b!4379005 m!5013547))

(assert (=> b!4379005 m!5013547))

(declare-fun m!5015397 () Bool)

(assert (=> b!4379005 m!5015397))

(assert (=> b!4379007 m!5013547))

(assert (=> b!4379007 m!5013547))

(assert (=> b!4379007 m!5015397))

(assert (=> d!1303257 d!1303725))

(declare-fun b!4379010 () Bool)

(declare-fun e!2725791 () Option!10560)

(assert (=> b!4379010 (= e!2725791 (getValueByKey!546 (t!356207 lt!1588998) (_1!27638 (tuple2!48689 hash!377 lt!1588599))))))

(declare-fun d!1303727 () Bool)

(declare-fun c!744727 () Bool)

(assert (=> d!1303727 (= c!744727 (and ((_ is Cons!49157) lt!1588998) (= (_1!27638 (h!54754 lt!1588998)) (_1!27638 (tuple2!48689 hash!377 lt!1588599)))))))

(declare-fun e!2725790 () Option!10560)

(assert (=> d!1303727 (= (getValueByKey!546 lt!1588998 (_1!27638 (tuple2!48689 hash!377 lt!1588599))) e!2725790)))

(declare-fun b!4379008 () Bool)

(assert (=> b!4379008 (= e!2725790 (Some!10559 (_2!27638 (h!54754 lt!1588998))))))

(declare-fun b!4379011 () Bool)

(assert (=> b!4379011 (= e!2725791 None!10559)))

(declare-fun b!4379009 () Bool)

(assert (=> b!4379009 (= e!2725790 e!2725791)))

(declare-fun c!744728 () Bool)

(assert (=> b!4379009 (= c!744728 (and ((_ is Cons!49157) lt!1588998) (not (= (_1!27638 (h!54754 lt!1588998)) (_1!27638 (tuple2!48689 hash!377 lt!1588599))))))))

(assert (= (and d!1303727 c!744727) b!4379008))

(assert (= (and d!1303727 (not c!744727)) b!4379009))

(assert (= (and b!4379009 c!744728) b!4379010))

(assert (= (and b!4379009 (not c!744728)) b!4379011))

(declare-fun m!5015399 () Bool)

(assert (=> b!4379010 m!5015399))

(assert (=> d!1303257 d!1303727))

(declare-fun d!1303729 () Bool)

(assert (=> d!1303729 (= (getValueByKey!546 lt!1588998 (_1!27638 (tuple2!48689 hash!377 lt!1588599))) (Some!10559 (_2!27638 (tuple2!48689 hash!377 lt!1588599))))))

(declare-fun lt!1589712 () Unit!75116)

(assert (=> d!1303729 (= lt!1589712 (choose!27303 lt!1588998 (_1!27638 (tuple2!48689 hash!377 lt!1588599)) (_2!27638 (tuple2!48689 hash!377 lt!1588599))))))

(declare-fun e!2725792 () Bool)

(assert (=> d!1303729 e!2725792))

(declare-fun res!1803333 () Bool)

(assert (=> d!1303729 (=> (not res!1803333) (not e!2725792))))

(assert (=> d!1303729 (= res!1803333 (isStrictlySorted!150 lt!1588998))))

(assert (=> d!1303729 (= (lemmaContainsTupThenGetReturnValue!310 lt!1588998 (_1!27638 (tuple2!48689 hash!377 lt!1588599)) (_2!27638 (tuple2!48689 hash!377 lt!1588599))) lt!1589712)))

(declare-fun b!4379012 () Bool)

(declare-fun res!1803334 () Bool)

(assert (=> b!4379012 (=> (not res!1803334) (not e!2725792))))

(assert (=> b!4379012 (= res!1803334 (containsKey!851 lt!1588998 (_1!27638 (tuple2!48689 hash!377 lt!1588599))))))

(declare-fun b!4379013 () Bool)

(assert (=> b!4379013 (= e!2725792 (contains!11487 lt!1588998 (tuple2!48689 (_1!27638 (tuple2!48689 hash!377 lt!1588599)) (_2!27638 (tuple2!48689 hash!377 lt!1588599)))))))

(assert (= (and d!1303729 res!1803333) b!4379012))

(assert (= (and b!4379012 res!1803334) b!4379013))

(assert (=> d!1303729 m!5013541))

(declare-fun m!5015401 () Bool)

(assert (=> d!1303729 m!5015401))

(declare-fun m!5015403 () Bool)

(assert (=> d!1303729 m!5015403))

(declare-fun m!5015405 () Bool)

(assert (=> b!4379012 m!5015405))

(declare-fun m!5015407 () Bool)

(assert (=> b!4379013 m!5015407))

(assert (=> d!1303257 d!1303729))

(declare-fun c!744730 () Bool)

(declare-fun b!4379014 () Bool)

(declare-fun c!744729 () Bool)

(declare-fun e!2725794 () List!49281)

(assert (=> b!4379014 (= e!2725794 (ite c!744729 (t!356207 (toList!3141 lm!1707)) (ite c!744730 (Cons!49157 (h!54754 (toList!3141 lm!1707)) (t!356207 (toList!3141 lm!1707))) Nil!49157)))))

(declare-fun b!4379015 () Bool)

(declare-fun e!2725796 () List!49281)

(declare-fun call!304577 () List!49281)

(assert (=> b!4379015 (= e!2725796 call!304577)))

(declare-fun b!4379016 () Bool)

(declare-fun e!2725793 () List!49281)

(declare-fun call!304579 () List!49281)

(assert (=> b!4379016 (= e!2725793 call!304579)))

(declare-fun b!4379017 () Bool)

(declare-fun e!2725797 () List!49281)

(assert (=> b!4379017 (= e!2725797 e!2725796)))

(assert (=> b!4379017 (= c!744729 (and ((_ is Cons!49157) (toList!3141 lm!1707)) (= (_1!27638 (h!54754 (toList!3141 lm!1707))) (_1!27638 (tuple2!48689 hash!377 lt!1588599)))))))

(declare-fun b!4379018 () Bool)

(assert (=> b!4379018 (= e!2725794 (insertStrictlySorted!177 (t!356207 (toList!3141 lm!1707)) (_1!27638 (tuple2!48689 hash!377 lt!1588599)) (_2!27638 (tuple2!48689 hash!377 lt!1588599))))))

(declare-fun b!4379019 () Bool)

(assert (=> b!4379019 (= c!744730 (and ((_ is Cons!49157) (toList!3141 lm!1707)) (bvsgt (_1!27638 (h!54754 (toList!3141 lm!1707))) (_1!27638 (tuple2!48689 hash!377 lt!1588599)))))))

(assert (=> b!4379019 (= e!2725796 e!2725793)))

(declare-fun b!4379020 () Bool)

(declare-fun e!2725795 () Bool)

(declare-fun lt!1589713 () List!49281)

(assert (=> b!4379020 (= e!2725795 (contains!11487 lt!1589713 (tuple2!48689 (_1!27638 (tuple2!48689 hash!377 lt!1588599)) (_2!27638 (tuple2!48689 hash!377 lt!1588599)))))))

(declare-fun d!1303731 () Bool)

(assert (=> d!1303731 e!2725795))

(declare-fun res!1803336 () Bool)

(assert (=> d!1303731 (=> (not res!1803336) (not e!2725795))))

(assert (=> d!1303731 (= res!1803336 (isStrictlySorted!150 lt!1589713))))

(assert (=> d!1303731 (= lt!1589713 e!2725797)))

(declare-fun c!744731 () Bool)

(assert (=> d!1303731 (= c!744731 (and ((_ is Cons!49157) (toList!3141 lm!1707)) (bvslt (_1!27638 (h!54754 (toList!3141 lm!1707))) (_1!27638 (tuple2!48689 hash!377 lt!1588599)))))))

(assert (=> d!1303731 (isStrictlySorted!150 (toList!3141 lm!1707))))

(assert (=> d!1303731 (= (insertStrictlySorted!177 (toList!3141 lm!1707) (_1!27638 (tuple2!48689 hash!377 lt!1588599)) (_2!27638 (tuple2!48689 hash!377 lt!1588599))) lt!1589713)))

(declare-fun bm!304572 () Bool)

(assert (=> bm!304572 (= call!304579 call!304577)))

(declare-fun b!4379021 () Bool)

(assert (=> b!4379021 (= e!2725793 call!304579)))

(declare-fun bm!304573 () Bool)

(declare-fun call!304578 () List!49281)

(assert (=> bm!304573 (= call!304577 call!304578)))

(declare-fun b!4379022 () Bool)

(assert (=> b!4379022 (= e!2725797 call!304578)))

(declare-fun b!4379023 () Bool)

(declare-fun res!1803335 () Bool)

(assert (=> b!4379023 (=> (not res!1803335) (not e!2725795))))

(assert (=> b!4379023 (= res!1803335 (containsKey!851 lt!1589713 (_1!27638 (tuple2!48689 hash!377 lt!1588599))))))

(declare-fun bm!304574 () Bool)

(assert (=> bm!304574 (= call!304578 ($colon$colon!723 e!2725794 (ite c!744731 (h!54754 (toList!3141 lm!1707)) (tuple2!48689 (_1!27638 (tuple2!48689 hash!377 lt!1588599)) (_2!27638 (tuple2!48689 hash!377 lt!1588599))))))))

(declare-fun c!744732 () Bool)

(assert (=> bm!304574 (= c!744732 c!744731)))

(assert (= (and d!1303731 c!744731) b!4379022))

(assert (= (and d!1303731 (not c!744731)) b!4379017))

(assert (= (and b!4379017 c!744729) b!4379015))

(assert (= (and b!4379017 (not c!744729)) b!4379019))

(assert (= (and b!4379019 c!744730) b!4379016))

(assert (= (and b!4379019 (not c!744730)) b!4379021))

(assert (= (or b!4379016 b!4379021) bm!304572))

(assert (= (or b!4379015 bm!304572) bm!304573))

(assert (= (or b!4379022 bm!304573) bm!304574))

(assert (= (and bm!304574 c!744732) b!4379018))

(assert (= (and bm!304574 (not c!744732)) b!4379014))

(assert (= (and d!1303731 res!1803336) b!4379023))

(assert (= (and b!4379023 res!1803335) b!4379020))

(declare-fun m!5015409 () Bool)

(assert (=> d!1303731 m!5015409))

(assert (=> d!1303731 m!5013069))

(declare-fun m!5015411 () Bool)

(assert (=> b!4379020 m!5015411))

(declare-fun m!5015413 () Bool)

(assert (=> b!4379023 m!5015413))

(declare-fun m!5015415 () Bool)

(assert (=> bm!304574 m!5015415))

(declare-fun m!5015417 () Bool)

(assert (=> b!4379018 m!5015417))

(assert (=> d!1303257 d!1303731))

(declare-fun d!1303733 () Bool)

(declare-fun res!1803337 () Bool)

(declare-fun e!2725798 () Bool)

(assert (=> d!1303733 (=> res!1803337 e!2725798)))

(assert (=> d!1303733 (= res!1803337 ((_ is Nil!49156) (ite c!744494 (toList!3142 (+!790 lt!1588594 lt!1588602)) (t!356206 lt!1588612))))))

(assert (=> d!1303733 (= (forall!9273 (ite c!744494 (toList!3142 (+!790 lt!1588594 lt!1588602)) (t!356206 lt!1588612)) (ite c!744494 lambda!145159 lambda!145161)) e!2725798)))

(declare-fun b!4379024 () Bool)

(declare-fun e!2725799 () Bool)

(assert (=> b!4379024 (= e!2725798 e!2725799)))

(declare-fun res!1803338 () Bool)

(assert (=> b!4379024 (=> (not res!1803338) (not e!2725799))))

(assert (=> b!4379024 (= res!1803338 (dynLambda!20710 (ite c!744494 lambda!145159 lambda!145161) (h!54753 (ite c!744494 (toList!3142 (+!790 lt!1588594 lt!1588602)) (t!356206 lt!1588612)))))))

(declare-fun b!4379025 () Bool)

(assert (=> b!4379025 (= e!2725799 (forall!9273 (t!356206 (ite c!744494 (toList!3142 (+!790 lt!1588594 lt!1588602)) (t!356206 lt!1588612))) (ite c!744494 lambda!145159 lambda!145161)))))

(assert (= (and d!1303733 (not res!1803337)) b!4379024))

(assert (= (and b!4379024 res!1803338) b!4379025))

(declare-fun b_lambda!135065 () Bool)

(assert (=> (not b_lambda!135065) (not b!4379024)))

(declare-fun m!5015419 () Bool)

(assert (=> b!4379024 m!5015419))

(declare-fun m!5015421 () Bool)

(assert (=> b!4379025 m!5015421))

(assert (=> bm!304468 d!1303733))

(declare-fun d!1303735 () Bool)

(assert (=> d!1303735 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588610) key!3918))))

(declare-fun lt!1589714 () Unit!75116)

(assert (=> d!1303735 (= lt!1589714 (choose!27310 (toList!3142 lt!1588610) key!3918))))

(assert (=> d!1303735 (invariantList!723 (toList!3142 lt!1588610))))

(assert (=> d!1303735 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!455 (toList!3142 lt!1588610) key!3918) lt!1589714)))

(declare-fun bs!661564 () Bool)

(assert (= bs!661564 d!1303735))

(assert (=> bs!661564 m!5013083))

(assert (=> bs!661564 m!5013083))

(assert (=> bs!661564 m!5013085))

(declare-fun m!5015423 () Bool)

(assert (=> bs!661564 m!5015423))

(assert (=> bs!661564 m!5015215))

(assert (=> b!4377862 d!1303735))

(assert (=> b!4377862 d!1303397))

(assert (=> b!4377862 d!1303399))

(declare-fun d!1303737 () Bool)

(assert (=> d!1303737 (contains!11492 (getKeysList!171 (toList!3142 lt!1588610)) key!3918)))

(declare-fun lt!1589715 () Unit!75116)

(assert (=> d!1303737 (= lt!1589715 (choose!27311 (toList!3142 lt!1588610) key!3918))))

(assert (=> d!1303737 (invariantList!723 (toList!3142 lt!1588610))))

(assert (=> d!1303737 (= (lemmaInListThenGetKeysListContains!168 (toList!3142 lt!1588610) key!3918) lt!1589715)))

(declare-fun bs!661565 () Bool)

(assert (= bs!661565 d!1303737))

(assert (=> bs!661565 m!5013075))

(assert (=> bs!661565 m!5013075))

(declare-fun m!5015425 () Bool)

(assert (=> bs!661565 m!5015425))

(declare-fun m!5015427 () Bool)

(assert (=> bs!661565 m!5015427))

(assert (=> bs!661565 m!5015215))

(assert (=> b!4377862 d!1303737))

(declare-fun e!2725801 () Option!10560)

(declare-fun b!4379028 () Bool)

(assert (=> b!4379028 (= e!2725801 (getValueByKey!546 (t!356207 (toList!3141 lt!1588996)) (_1!27638 (tuple2!48689 hash!377 lt!1588599))))))

(declare-fun c!744733 () Bool)

(declare-fun d!1303739 () Bool)

(assert (=> d!1303739 (= c!744733 (and ((_ is Cons!49157) (toList!3141 lt!1588996)) (= (_1!27638 (h!54754 (toList!3141 lt!1588996))) (_1!27638 (tuple2!48689 hash!377 lt!1588599)))))))

(declare-fun e!2725800 () Option!10560)

(assert (=> d!1303739 (= (getValueByKey!546 (toList!3141 lt!1588996) (_1!27638 (tuple2!48689 hash!377 lt!1588599))) e!2725800)))

(declare-fun b!4379026 () Bool)

(assert (=> b!4379026 (= e!2725800 (Some!10559 (_2!27638 (h!54754 (toList!3141 lt!1588996)))))))

(declare-fun b!4379029 () Bool)

(assert (=> b!4379029 (= e!2725801 None!10559)))

(declare-fun b!4379027 () Bool)

(assert (=> b!4379027 (= e!2725800 e!2725801)))

(declare-fun c!744734 () Bool)

(assert (=> b!4379027 (= c!744734 (and ((_ is Cons!49157) (toList!3141 lt!1588996)) (not (= (_1!27638 (h!54754 (toList!3141 lt!1588996))) (_1!27638 (tuple2!48689 hash!377 lt!1588599))))))))

(assert (= (and d!1303739 c!744733) b!4379026))

(assert (= (and d!1303739 (not c!744733)) b!4379027))

(assert (= (and b!4379027 c!744734) b!4379028))

(assert (= (and b!4379027 (not c!744734)) b!4379029))

(declare-fun m!5015429 () Bool)

(assert (=> b!4379028 m!5015429))

(assert (=> b!4378053 d!1303739))

(declare-fun d!1303741 () Bool)

(declare-fun isEmpty!28247 (Option!10560) Bool)

(assert (=> d!1303741 (= (isDefined!7854 (getValueByKey!546 (toList!3141 lm!1707) hash!377)) (not (isEmpty!28247 (getValueByKey!546 (toList!3141 lm!1707) hash!377))))))

(declare-fun bs!661566 () Bool)

(assert (= bs!661566 d!1303741))

(assert (=> bs!661566 m!5013727))

(declare-fun m!5015431 () Bool)

(assert (=> bs!661566 m!5015431))

(assert (=> b!4378100 d!1303741))

(assert (=> b!4378100 d!1303357))

(assert (=> b!4378071 d!1303703))

(declare-fun d!1303743 () Bool)

(assert (=> d!1303743 (containsKey!848 (toList!3142 lt!1588597) key!3918)))

(declare-fun lt!1589718 () Unit!75116)

(declare-fun choose!27317 (List!49280 K!10515) Unit!75116)

(assert (=> d!1303743 (= lt!1589718 (choose!27317 (toList!3142 lt!1588597) key!3918))))

(assert (=> d!1303743 (invariantList!723 (toList!3142 lt!1588597))))

(assert (=> d!1303743 (= (lemmaInGetKeysListThenContainsKey!169 (toList!3142 lt!1588597) key!3918) lt!1589718)))

(declare-fun bs!661567 () Bool)

(assert (= bs!661567 d!1303743))

(assert (=> bs!661567 m!5013657))

(declare-fun m!5015433 () Bool)

(assert (=> bs!661567 m!5015433))

(assert (=> bs!661567 m!5014255))

(assert (=> b!4378071 d!1303743))

(declare-fun d!1303745 () Bool)

(declare-fun c!744735 () Bool)

(assert (=> d!1303745 (= c!744735 (and ((_ is Cons!49156) (toList!3142 lt!1588960)) (= (_1!27637 (h!54753 (toList!3142 lt!1588960))) (_1!27637 lt!1588602))))))

(declare-fun e!2725802 () Option!10559)

(assert (=> d!1303745 (= (getValueByKey!545 (toList!3142 lt!1588960) (_1!27637 lt!1588602)) e!2725802)))

(declare-fun b!4379031 () Bool)

(declare-fun e!2725803 () Option!10559)

(assert (=> b!4379031 (= e!2725802 e!2725803)))

(declare-fun c!744736 () Bool)

(assert (=> b!4379031 (= c!744736 (and ((_ is Cons!49156) (toList!3142 lt!1588960)) (not (= (_1!27637 (h!54753 (toList!3142 lt!1588960))) (_1!27637 lt!1588602)))))))

(declare-fun b!4379030 () Bool)

(assert (=> b!4379030 (= e!2725802 (Some!10558 (_2!27637 (h!54753 (toList!3142 lt!1588960)))))))

(declare-fun b!4379032 () Bool)

(assert (=> b!4379032 (= e!2725803 (getValueByKey!545 (t!356206 (toList!3142 lt!1588960)) (_1!27637 lt!1588602)))))

(declare-fun b!4379033 () Bool)

(assert (=> b!4379033 (= e!2725803 None!10558)))

(assert (= (and d!1303745 c!744735) b!4379030))

(assert (= (and d!1303745 (not c!744735)) b!4379031))

(assert (= (and b!4379031 c!744736) b!4379032))

(assert (= (and b!4379031 (not c!744736)) b!4379033))

(declare-fun m!5015435 () Bool)

(assert (=> b!4379032 m!5015435))

(assert (=> b!4378030 d!1303745))

(declare-fun d!1303747 () Bool)

(assert (=> d!1303747 (= (invariantList!723 (toList!3142 lt!1588922)) (noDuplicatedKeys!135 (toList!3142 lt!1588922)))))

(declare-fun bs!661568 () Bool)

(assert (= bs!661568 d!1303747))

(declare-fun m!5015437 () Bool)

(assert (=> bs!661568 m!5015437))

(assert (=> b!4377995 d!1303747))

(assert (=> b!4378087 d!1303599))

(declare-fun d!1303749 () Bool)

(declare-fun e!2725804 () Bool)

(assert (=> d!1303749 e!2725804))

(declare-fun res!1803339 () Bool)

(assert (=> d!1303749 (=> res!1803339 e!2725804)))

(declare-fun e!2725808 () Bool)

(assert (=> d!1303749 (= res!1803339 e!2725808)))

(declare-fun res!1803341 () Bool)

(assert (=> d!1303749 (=> (not res!1803341) (not e!2725808))))

(declare-fun lt!1589719 () Bool)

(assert (=> d!1303749 (= res!1803341 (not lt!1589719))))

(declare-fun lt!1589724 () Bool)

(assert (=> d!1303749 (= lt!1589719 lt!1589724)))

(declare-fun lt!1589725 () Unit!75116)

(declare-fun e!2725805 () Unit!75116)

(assert (=> d!1303749 (= lt!1589725 e!2725805)))

(declare-fun c!744738 () Bool)

(assert (=> d!1303749 (= c!744738 lt!1589724)))

(assert (=> d!1303749 (= lt!1589724 (containsKey!848 (toList!3142 lt!1589006) key!3918))))

(assert (=> d!1303749 (= (contains!11488 lt!1589006 key!3918) lt!1589719)))

(declare-fun bm!304575 () Bool)

(declare-fun call!304580 () Bool)

(declare-fun e!2725806 () List!49283)

(assert (=> bm!304575 (= call!304580 (contains!11492 e!2725806 key!3918))))

(declare-fun c!744737 () Bool)

(assert (=> bm!304575 (= c!744737 c!744738)))

(declare-fun b!4379034 () Bool)

(declare-fun e!2725809 () Bool)

(assert (=> b!4379034 (= e!2725804 e!2725809)))

(declare-fun res!1803340 () Bool)

(assert (=> b!4379034 (=> (not res!1803340) (not e!2725809))))

(assert (=> b!4379034 (= res!1803340 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1589006) key!3918)))))

(declare-fun b!4379035 () Bool)

(declare-fun e!2725807 () Unit!75116)

(declare-fun Unit!75393 () Unit!75116)

(assert (=> b!4379035 (= e!2725807 Unit!75393)))

(declare-fun b!4379036 () Bool)

(assert (=> b!4379036 false))

(declare-fun lt!1589721 () Unit!75116)

(declare-fun lt!1589720 () Unit!75116)

(assert (=> b!4379036 (= lt!1589721 lt!1589720)))

(assert (=> b!4379036 (containsKey!848 (toList!3142 lt!1589006) key!3918)))

(assert (=> b!4379036 (= lt!1589720 (lemmaInGetKeysListThenContainsKey!169 (toList!3142 lt!1589006) key!3918))))

(declare-fun Unit!75394 () Unit!75116)

(assert (=> b!4379036 (= e!2725807 Unit!75394)))

(declare-fun b!4379037 () Bool)

(declare-fun lt!1589726 () Unit!75116)

(assert (=> b!4379037 (= e!2725805 lt!1589726)))

(declare-fun lt!1589723 () Unit!75116)

(assert (=> b!4379037 (= lt!1589723 (lemmaContainsKeyImpliesGetValueByKeyDefined!455 (toList!3142 lt!1589006) key!3918))))

(assert (=> b!4379037 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1589006) key!3918))))

(declare-fun lt!1589722 () Unit!75116)

(assert (=> b!4379037 (= lt!1589722 lt!1589723)))

(assert (=> b!4379037 (= lt!1589726 (lemmaInListThenGetKeysListContains!168 (toList!3142 lt!1589006) key!3918))))

(assert (=> b!4379037 call!304580))

(declare-fun b!4379038 () Bool)

(assert (=> b!4379038 (= e!2725809 (contains!11492 (keys!16669 lt!1589006) key!3918))))

(declare-fun b!4379039 () Bool)

(assert (=> b!4379039 (= e!2725806 (keys!16669 lt!1589006))))

(declare-fun b!4379040 () Bool)

(assert (=> b!4379040 (= e!2725805 e!2725807)))

(declare-fun c!744739 () Bool)

(assert (=> b!4379040 (= c!744739 call!304580)))

(declare-fun b!4379041 () Bool)

(assert (=> b!4379041 (= e!2725806 (getKeysList!171 (toList!3142 lt!1589006)))))

(declare-fun b!4379042 () Bool)

(assert (=> b!4379042 (= e!2725808 (not (contains!11492 (keys!16669 lt!1589006) key!3918)))))

(assert (= (and d!1303749 c!744738) b!4379037))

(assert (= (and d!1303749 (not c!744738)) b!4379040))

(assert (= (and b!4379040 c!744739) b!4379036))

(assert (= (and b!4379040 (not c!744739)) b!4379035))

(assert (= (or b!4379037 b!4379040) bm!304575))

(assert (= (and bm!304575 c!744737) b!4379041))

(assert (= (and bm!304575 (not c!744737)) b!4379039))

(assert (= (and d!1303749 res!1803341) b!4379042))

(assert (= (and d!1303749 (not res!1803339)) b!4379034))

(assert (= (and b!4379034 res!1803340) b!4379038))

(assert (=> b!4379042 m!5013577))

(assert (=> b!4379042 m!5013577))

(declare-fun m!5015439 () Bool)

(assert (=> b!4379042 m!5015439))

(assert (=> b!4379041 m!5014325))

(declare-fun m!5015441 () Bool)

(assert (=> b!4379036 m!5015441))

(declare-fun m!5015443 () Bool)

(assert (=> b!4379036 m!5015443))

(assert (=> b!4379039 m!5013577))

(declare-fun m!5015445 () Bool)

(assert (=> bm!304575 m!5015445))

(declare-fun m!5015447 () Bool)

(assert (=> b!4379034 m!5015447))

(assert (=> b!4379034 m!5015447))

(declare-fun m!5015449 () Bool)

(assert (=> b!4379034 m!5015449))

(assert (=> b!4379038 m!5013577))

(assert (=> b!4379038 m!5013577))

(assert (=> b!4379038 m!5015439))

(assert (=> d!1303749 m!5015441))

(declare-fun m!5015451 () Bool)

(assert (=> b!4379037 m!5015451))

(assert (=> b!4379037 m!5015447))

(assert (=> b!4379037 m!5015447))

(assert (=> b!4379037 m!5015449))

(declare-fun m!5015453 () Bool)

(assert (=> b!4379037 m!5015453))

(assert (=> d!1303263 d!1303749))

(declare-fun call!304611 () (InoxSet tuple2!48686))

(declare-fun b!4379183 () Bool)

(declare-fun e!2725904 () Bool)

(declare-fun call!304609 () (InoxSet tuple2!48686))

(declare-fun get!15987 (Option!10559) V!10761)

(assert (=> b!4379183 (= e!2725904 (= call!304609 ((_ map and) call!304611 ((_ map not) (store ((as const (Array tuple2!48686 Bool)) false) (tuple2!48687 key!3918 (get!15987 (getValueByKey!545 (toList!3142 lt!1588610) key!3918))) true)))))))

(assert (=> b!4379183 (containsKey!848 (toList!3142 lt!1588610) key!3918)))

(declare-fun lt!1589841 () Unit!75116)

(assert (=> b!4379183 (= lt!1589841 (lemmaContainsKeyImpliesGetValueByKeyDefined!455 (toList!3142 lt!1588610) key!3918))))

(assert (=> b!4379183 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588610) key!3918))))

(declare-fun lt!1589849 () Unit!75116)

(assert (=> b!4379183 (= lt!1589849 lt!1589841)))

(declare-fun b!4379184 () Bool)

(declare-fun res!1803402 () Bool)

(declare-fun e!2725900 () Bool)

(assert (=> b!4379184 (=> (not res!1803402) (not e!2725900))))

(declare-fun lt!1589840 () List!49280)

(assert (=> b!4379184 (= res!1803402 (= (content!7811 (getKeysList!171 lt!1589840)) ((_ map and) (content!7811 (getKeysList!171 (toList!3142 lt!1588610))) ((_ map not) (store ((as const (Array K!10515 Bool)) false) key!3918 true)))))))

(declare-fun bm!304604 () Bool)

(declare-fun call!304612 () (InoxSet tuple2!48686))

(assert (=> bm!304604 (= call!304612 (content!7813 (t!356206 (toList!3142 lt!1588610))))))

(declare-fun b!4379185 () Bool)

(declare-fun e!2725899 () Unit!75116)

(declare-fun Unit!75395 () Unit!75116)

(assert (=> b!4379185 (= e!2725899 Unit!75395)))

(declare-fun lt!1589842 () List!49280)

(assert (=> b!4379185 (= lt!1589842 (removePresrvNoDuplicatedKeys!38 (t!356206 (toList!3142 lt!1588610)) key!3918))))

(declare-fun lt!1589850 () Unit!75116)

(assert (=> b!4379185 (= lt!1589850 (lemmaInListThenGetKeysListContains!168 lt!1589842 (_1!27637 (h!54753 (toList!3142 lt!1588610)))))))

(assert (=> b!4379185 (contains!11492 (getKeysList!171 lt!1589842) (_1!27637 (h!54753 (toList!3142 lt!1588610))))))

(declare-fun lt!1589833 () Unit!75116)

(assert (=> b!4379185 (= lt!1589833 lt!1589850)))

(assert (=> b!4379185 false))

(declare-fun call!304610 () (InoxSet tuple2!48686))

(declare-fun b!4379186 () Bool)

(assert (=> b!4379186 (= call!304612 ((_ map and) call!304610 ((_ map not) (store ((as const (Array tuple2!48686 Bool)) false) (tuple2!48687 key!3918 (get!15987 (getValueByKey!545 (toList!3142 lt!1588610) key!3918))) true))))))

(declare-fun lt!1589846 () Unit!75116)

(declare-fun e!2725902 () Unit!75116)

(assert (=> b!4379186 (= lt!1589846 e!2725902)))

(declare-fun c!744783 () Bool)

(assert (=> b!4379186 (= c!744783 (contains!11493 (t!356206 (toList!3142 lt!1588610)) (tuple2!48687 key!3918 (get!15987 (getValueByKey!545 (toList!3142 lt!1588610) key!3918)))))))

(declare-fun e!2725905 () Unit!75116)

(declare-fun Unit!75396 () Unit!75116)

(assert (=> b!4379186 (= e!2725905 Unit!75396)))

(declare-fun b!4379187 () Bool)

(assert (=> b!4379187 (= e!2725900 e!2725904)))

(declare-fun c!744781 () Bool)

(assert (=> b!4379187 (= c!744781 (containsKey!848 (toList!3142 lt!1588610) key!3918))))

(declare-fun b!4379188 () Bool)

(declare-fun e!2725897 () Unit!75116)

(declare-fun Unit!75397 () Unit!75116)

(assert (=> b!4379188 (= e!2725897 Unit!75397)))

(declare-fun lt!1589839 () Unit!75116)

(assert (=> b!4379188 (= lt!1589839 (lemmaInGetKeysListThenContainsKey!169 (t!356206 (toList!3142 lt!1588610)) (_1!27637 (h!54753 (toList!3142 lt!1588610)))))))

(declare-fun call!304613 () Bool)

(assert (=> b!4379188 call!304613))

(declare-fun lt!1589835 () Unit!75116)

(assert (=> b!4379188 (= lt!1589835 lt!1589839)))

(assert (=> b!4379188 false))

(declare-fun b!4379189 () Bool)

(declare-fun e!2725901 () List!49280)

(assert (=> b!4379189 (= e!2725901 (toList!3142 lt!1588610))))

(declare-fun b!4379190 () Bool)

(declare-fun e!2725903 () List!49280)

(assert (=> b!4379190 (= e!2725903 (t!356206 (toList!3142 lt!1588610)))))

(declare-fun c!744786 () Bool)

(declare-fun call!304614 () Bool)

(assert (=> b!4379190 (= c!744786 call!304614)))

(declare-fun lt!1589834 () Unit!75116)

(assert (=> b!4379190 (= lt!1589834 e!2725905)))

(declare-fun b!4379191 () Bool)

(declare-fun Unit!75398 () Unit!75116)

(assert (=> b!4379191 (= e!2725899 Unit!75398)))

(declare-fun b!4379192 () Bool)

(declare-fun res!1803400 () Bool)

(assert (=> b!4379192 (=> (not res!1803400) (not e!2725900))))

(assert (=> b!4379192 (= res!1803400 (not (containsKey!848 lt!1589840 key!3918)))))

(declare-fun b!4379193 () Bool)

(declare-fun e!2725898 () List!49280)

(assert (=> b!4379193 (= e!2725898 Nil!49156)))

(declare-fun b!4379194 () Bool)

(assert (=> b!4379194 (= e!2725903 e!2725898)))

(declare-fun c!744785 () Bool)

(assert (=> b!4379194 (= c!744785 (and ((_ is Cons!49156) (toList!3142 lt!1588610)) (not (= (_1!27637 (h!54753 (toList!3142 lt!1588610))) key!3918))))))

(declare-fun bm!304605 () Bool)

(declare-fun c!744787 () Bool)

(assert (=> bm!304605 (= call!304614 (containsKey!848 e!2725901 (ite c!744787 key!3918 (_1!27637 (h!54753 (toList!3142 lt!1588610))))))))

(declare-fun c!744788 () Bool)

(assert (=> bm!304605 (= c!744788 c!744787)))

(declare-fun b!4379195 () Bool)

(assert (=> b!4379195 (= e!2725904 (= call!304609 call!304611))))

(declare-fun b!4379196 () Bool)

(declare-fun lt!1589837 () Unit!75116)

(assert (=> b!4379196 (= lt!1589837 e!2725899)))

(declare-fun c!744782 () Bool)

(assert (=> b!4379196 (= c!744782 call!304614)))

(declare-fun lt!1589847 () Unit!75116)

(assert (=> b!4379196 (= lt!1589847 e!2725897)))

(declare-fun c!744784 () Bool)

(assert (=> b!4379196 (= c!744784 (contains!11492 (getKeysList!171 (t!356206 (toList!3142 lt!1588610))) (_1!27637 (h!54753 (toList!3142 lt!1588610)))))))

(declare-fun lt!1589838 () List!49280)

(assert (=> b!4379196 (= lt!1589838 ($colon$colon!725 (removePresrvNoDuplicatedKeys!38 (t!356206 (toList!3142 lt!1588610)) key!3918) (h!54753 (toList!3142 lt!1588610))))))

(assert (=> b!4379196 (= e!2725898 lt!1589838)))

(declare-fun d!1303751 () Bool)

(assert (=> d!1303751 e!2725900))

(declare-fun res!1803401 () Bool)

(assert (=> d!1303751 (=> (not res!1803401) (not e!2725900))))

(assert (=> d!1303751 (= res!1803401 (invariantList!723 lt!1589840))))

(assert (=> d!1303751 (= lt!1589840 e!2725903)))

(assert (=> d!1303751 (= c!744787 (and ((_ is Cons!49156) (toList!3142 lt!1588610)) (= (_1!27637 (h!54753 (toList!3142 lt!1588610))) key!3918)))))

(assert (=> d!1303751 (invariantList!723 (toList!3142 lt!1588610))))

(assert (=> d!1303751 (= (removePresrvNoDuplicatedKeys!38 (toList!3142 lt!1588610) key!3918) lt!1589840)))

(declare-fun b!4379197 () Bool)

(declare-fun Unit!75399 () Unit!75116)

(assert (=> b!4379197 (= e!2725902 Unit!75399)))

(declare-fun lt!1589848 () V!10761)

(assert (=> b!4379197 (= lt!1589848 (get!15987 (getValueByKey!545 (toList!3142 lt!1588610) key!3918)))))

(declare-fun lt!1589844 () K!10515)

(assert (=> b!4379197 (= lt!1589844 key!3918)))

(declare-fun lt!1589836 () K!10515)

(assert (=> b!4379197 (= lt!1589836 key!3918)))

(declare-fun lt!1589845 () Unit!75116)

(declare-fun lemmaContainsTupleThenContainsKey!9 (List!49280 K!10515 V!10761) Unit!75116)

(assert (=> b!4379197 (= lt!1589845 (lemmaContainsTupleThenContainsKey!9 (t!356206 (toList!3142 lt!1588610)) lt!1589844 (get!15987 (getValueByKey!545 (toList!3142 lt!1588610) key!3918))))))

(assert (=> b!4379197 call!304613))

(declare-fun lt!1589843 () Unit!75116)

(assert (=> b!4379197 (= lt!1589843 lt!1589845)))

(assert (=> b!4379197 false))

(declare-fun b!4379198 () Bool)

(assert (=> b!4379198 (= call!304612 call!304610)))

(declare-fun Unit!75400 () Unit!75116)

(assert (=> b!4379198 (= e!2725905 Unit!75400)))

(declare-fun b!4379199 () Bool)

(declare-fun Unit!75401 () Unit!75116)

(assert (=> b!4379199 (= e!2725897 Unit!75401)))

(declare-fun bm!304606 () Bool)

(assert (=> bm!304606 (= call!304609 (content!7813 lt!1589840))))

(declare-fun bm!304607 () Bool)

(assert (=> bm!304607 (= call!304610 (content!7813 (toList!3142 lt!1588610)))))

(declare-fun b!4379200 () Bool)

(assert (=> b!4379200 (= e!2725901 (removePresrvNoDuplicatedKeys!38 (t!356206 (toList!3142 lt!1588610)) key!3918))))

(declare-fun bm!304608 () Bool)

(assert (=> bm!304608 (= call!304611 (content!7813 (toList!3142 lt!1588610)))))

(declare-fun bm!304609 () Bool)

(assert (=> bm!304609 (= call!304613 (containsKey!848 (t!356206 (toList!3142 lt!1588610)) (ite c!744787 lt!1589844 (_1!27637 (h!54753 (toList!3142 lt!1588610))))))))

(declare-fun b!4379201 () Bool)

(declare-fun Unit!75402 () Unit!75116)

(assert (=> b!4379201 (= e!2725902 Unit!75402)))

(assert (= (and d!1303751 c!744787) b!4379190))

(assert (= (and d!1303751 (not c!744787)) b!4379194))

(assert (= (and b!4379190 c!744786) b!4379186))

(assert (= (and b!4379190 (not c!744786)) b!4379198))

(assert (= (and b!4379186 c!744783) b!4379197))

(assert (= (and b!4379186 (not c!744783)) b!4379201))

(assert (= (or b!4379186 b!4379198) bm!304607))

(assert (= (or b!4379186 b!4379198) bm!304604))

(assert (= (and b!4379194 c!744785) b!4379196))

(assert (= (and b!4379194 (not c!744785)) b!4379193))

(assert (= (and b!4379196 c!744784) b!4379188))

(assert (= (and b!4379196 (not c!744784)) b!4379199))

(assert (= (and b!4379196 c!744782) b!4379185))

(assert (= (and b!4379196 (not c!744782)) b!4379191))

(assert (= (or b!4379197 b!4379188) bm!304609))

(assert (= (or b!4379190 b!4379196) bm!304605))

(assert (= (and bm!304605 c!744788) b!4379189))

(assert (= (and bm!304605 (not c!744788)) b!4379200))

(assert (= (and d!1303751 res!1803401) b!4379192))

(assert (= (and b!4379192 res!1803400) b!4379184))

(assert (= (and b!4379184 res!1803402) b!4379187))

(assert (= (and b!4379187 c!744781) b!4379183))

(assert (= (and b!4379187 (not c!744781)) b!4379195))

(assert (= (or b!4379183 b!4379195) bm!304608))

(assert (= (or b!4379183 b!4379195) bm!304606))

(declare-fun m!5015595 () Bool)

(assert (=> b!4379183 m!5015595))

(assert (=> b!4379183 m!5013083))

(assert (=> b!4379183 m!5013083))

(assert (=> b!4379183 m!5013085))

(assert (=> b!4379183 m!5013083))

(declare-fun m!5015597 () Bool)

(assert (=> b!4379183 m!5015597))

(assert (=> b!4379183 m!5013087))

(assert (=> b!4379183 m!5013077))

(declare-fun m!5015599 () Bool)

(assert (=> d!1303751 m!5015599))

(assert (=> d!1303751 m!5015215))

(declare-fun m!5015601 () Bool)

(assert (=> bm!304608 m!5015601))

(declare-fun m!5015603 () Bool)

(assert (=> b!4379200 m!5015603))

(assert (=> b!4379184 m!5013575))

(declare-fun m!5015605 () Bool)

(assert (=> b!4379184 m!5015605))

(declare-fun m!5015607 () Bool)

(assert (=> b!4379184 m!5015607))

(assert (=> b!4379184 m!5013075))

(assert (=> b!4379184 m!5013075))

(declare-fun m!5015609 () Bool)

(assert (=> b!4379184 m!5015609))

(assert (=> b!4379184 m!5015605))

(assert (=> b!4379197 m!5013083))

(assert (=> b!4379197 m!5013083))

(assert (=> b!4379197 m!5015597))

(assert (=> b!4379197 m!5015597))

(declare-fun m!5015611 () Bool)

(assert (=> b!4379197 m!5015611))

(declare-fun m!5015613 () Bool)

(assert (=> bm!304604 m!5015613))

(assert (=> b!4379185 m!5015603))

(declare-fun m!5015615 () Bool)

(assert (=> b!4379185 m!5015615))

(declare-fun m!5015617 () Bool)

(assert (=> b!4379185 m!5015617))

(assert (=> b!4379185 m!5015617))

(declare-fun m!5015619 () Bool)

(assert (=> b!4379185 m!5015619))

(declare-fun m!5015621 () Bool)

(assert (=> b!4379188 m!5015621))

(declare-fun m!5015623 () Bool)

(assert (=> b!4379192 m!5015623))

(declare-fun m!5015625 () Bool)

(assert (=> bm!304605 m!5015625))

(assert (=> bm!304607 m!5015601))

(declare-fun m!5015627 () Bool)

(assert (=> bm!304609 m!5015627))

(assert (=> b!4379186 m!5013083))

(assert (=> b!4379186 m!5013083))

(assert (=> b!4379186 m!5015597))

(assert (=> b!4379186 m!5015595))

(declare-fun m!5015629 () Bool)

(assert (=> b!4379186 m!5015629))

(declare-fun m!5015631 () Bool)

(assert (=> bm!304606 m!5015631))

(assert (=> b!4379196 m!5015221))

(assert (=> b!4379196 m!5015221))

(assert (=> b!4379196 m!5015225))

(assert (=> b!4379196 m!5015603))

(assert (=> b!4379196 m!5015603))

(declare-fun m!5015633 () Bool)

(assert (=> b!4379196 m!5015633))

(assert (=> b!4379187 m!5013077))

(assert (=> d!1303263 d!1303751))

(declare-fun d!1303793 () Bool)

(declare-fun res!1803403 () Bool)

(declare-fun e!2725906 () Bool)

(assert (=> d!1303793 (=> res!1803403 e!2725906)))

(assert (=> d!1303793 (= res!1803403 (not ((_ is Cons!49156) (_2!27638 (h!54754 (toList!3141 lt!1588604))))))))

(assert (=> d!1303793 (= (noDuplicateKeys!579 (_2!27638 (h!54754 (toList!3141 lt!1588604)))) e!2725906)))

(declare-fun b!4379202 () Bool)

(declare-fun e!2725907 () Bool)

(assert (=> b!4379202 (= e!2725906 e!2725907)))

(declare-fun res!1803404 () Bool)

(assert (=> b!4379202 (=> (not res!1803404) (not e!2725907))))

(assert (=> b!4379202 (= res!1803404 (not (containsKey!849 (t!356206 (_2!27638 (h!54754 (toList!3141 lt!1588604)))) (_1!27637 (h!54753 (_2!27638 (h!54754 (toList!3141 lt!1588604))))))))))

(declare-fun b!4379203 () Bool)

(assert (=> b!4379203 (= e!2725907 (noDuplicateKeys!579 (t!356206 (_2!27638 (h!54754 (toList!3141 lt!1588604))))))))

(assert (= (and d!1303793 (not res!1803403)) b!4379202))

(assert (= (and b!4379202 res!1803404) b!4379203))

(declare-fun m!5015635 () Bool)

(assert (=> b!4379202 m!5015635))

(declare-fun m!5015637 () Bool)

(assert (=> b!4379203 m!5015637))

(assert (=> bs!660603 d!1303793))

(assert (=> b!4378103 d!1303357))

(declare-fun d!1303795 () Bool)

(assert (=> d!1303795 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588598) key!3918))))

(declare-fun lt!1589851 () Unit!75116)

(assert (=> d!1303795 (= lt!1589851 (choose!27310 (toList!3142 lt!1588598) key!3918))))

(assert (=> d!1303795 (invariantList!723 (toList!3142 lt!1588598))))

(assert (=> d!1303795 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!455 (toList!3142 lt!1588598) key!3918) lt!1589851)))

(declare-fun bs!661702 () Bool)

(assert (= bs!661702 d!1303795))

(assert (=> bs!661702 m!5013683))

(assert (=> bs!661702 m!5013683))

(assert (=> bs!661702 m!5013685))

(declare-fun m!5015639 () Bool)

(assert (=> bs!661702 m!5015639))

(declare-fun m!5015641 () Bool)

(assert (=> bs!661702 m!5015641))

(assert (=> b!4378081 d!1303795))

(assert (=> b!4378081 d!1303695))

(assert (=> b!4378081 d!1303699))

(declare-fun d!1303797 () Bool)

(assert (=> d!1303797 (contains!11492 (getKeysList!171 (toList!3142 lt!1588598)) key!3918)))

(declare-fun lt!1589852 () Unit!75116)

(assert (=> d!1303797 (= lt!1589852 (choose!27311 (toList!3142 lt!1588598) key!3918))))

(assert (=> d!1303797 (invariantList!723 (toList!3142 lt!1588598))))

(assert (=> d!1303797 (= (lemmaInListThenGetKeysListContains!168 (toList!3142 lt!1588598) key!3918) lt!1589852)))

(declare-fun bs!661703 () Bool)

(assert (= bs!661703 d!1303797))

(assert (=> bs!661703 m!5013675))

(assert (=> bs!661703 m!5013675))

(declare-fun m!5015643 () Bool)

(assert (=> bs!661703 m!5015643))

(declare-fun m!5015645 () Bool)

(assert (=> bs!661703 m!5015645))

(assert (=> bs!661703 m!5015641))

(assert (=> b!4378081 d!1303797))

(declare-fun d!1303799 () Bool)

(declare-fun res!1803405 () Bool)

(declare-fun e!2725908 () Bool)

(assert (=> d!1303799 (=> res!1803405 e!2725908)))

(assert (=> d!1303799 (= res!1803405 ((_ is Nil!49156) (ite c!744496 (toList!3142 lt!1588594) (toList!3142 lt!1589014))))))

(assert (=> d!1303799 (= (forall!9273 (ite c!744496 (toList!3142 lt!1588594) (toList!3142 lt!1589014)) (ite c!744496 lambda!145164 lambda!145166)) e!2725908)))

(declare-fun b!4379204 () Bool)

(declare-fun e!2725909 () Bool)

(assert (=> b!4379204 (= e!2725908 e!2725909)))

(declare-fun res!1803406 () Bool)

(assert (=> b!4379204 (=> (not res!1803406) (not e!2725909))))

(assert (=> b!4379204 (= res!1803406 (dynLambda!20710 (ite c!744496 lambda!145164 lambda!145166) (h!54753 (ite c!744496 (toList!3142 lt!1588594) (toList!3142 lt!1589014)))))))

(declare-fun b!4379205 () Bool)

(assert (=> b!4379205 (= e!2725909 (forall!9273 (t!356206 (ite c!744496 (toList!3142 lt!1588594) (toList!3142 lt!1589014))) (ite c!744496 lambda!145164 lambda!145166)))))

(assert (= (and d!1303799 (not res!1803405)) b!4379204))

(assert (= (and b!4379204 res!1803406) b!4379205))

(declare-fun b_lambda!135079 () Bool)

(assert (=> (not b_lambda!135079) (not b!4379204)))

(declare-fun m!5015683 () Bool)

(assert (=> b!4379204 m!5015683))

(declare-fun m!5015687 () Bool)

(assert (=> b!4379205 m!5015687))

(assert (=> bm!304473 d!1303799))

(declare-fun d!1303805 () Bool)

(declare-fun lt!1589859 () Bool)

(assert (=> d!1303805 (= lt!1589859 (select (content!7813 (toList!3142 lt!1588955)) lt!1588602))))

(declare-fun e!2725916 () Bool)

(assert (=> d!1303805 (= lt!1589859 e!2725916)))

(declare-fun res!1803411 () Bool)

(assert (=> d!1303805 (=> (not res!1803411) (not e!2725916))))

(assert (=> d!1303805 (= res!1803411 ((_ is Cons!49156) (toList!3142 lt!1588955)))))

(assert (=> d!1303805 (= (contains!11493 (toList!3142 lt!1588955) lt!1588602) lt!1589859)))

(declare-fun b!4379208 () Bool)

(declare-fun e!2725918 () Bool)

(assert (=> b!4379208 (= e!2725916 e!2725918)))

(declare-fun res!1803413 () Bool)

(assert (=> b!4379208 (=> res!1803413 e!2725918)))

(assert (=> b!4379208 (= res!1803413 (= (h!54753 (toList!3142 lt!1588955)) lt!1588602))))

(declare-fun b!4379209 () Bool)

(assert (=> b!4379209 (= e!2725918 (contains!11493 (t!356206 (toList!3142 lt!1588955)) lt!1588602))))

(assert (= (and d!1303805 res!1803411) b!4379208))

(assert (= (and b!4379208 (not res!1803413)) b!4379209))

(declare-fun m!5015689 () Bool)

(assert (=> d!1303805 m!5015689))

(declare-fun m!5015691 () Bool)

(assert (=> d!1303805 m!5015691))

(declare-fun m!5015693 () Bool)

(assert (=> b!4379209 m!5015693))

(assert (=> b!4378028 d!1303805))

(declare-fun d!1303807 () Bool)

(declare-fun choose!27318 (Hashable!4971 K!10515) (_ BitVec 64))

(assert (=> d!1303807 (= (hash!1750 hashF!1247 key!3918) (choose!27318 hashF!1247 key!3918))))

(declare-fun bs!661704 () Bool)

(assert (= bs!661704 d!1303807))

(declare-fun m!5015709 () Bool)

(assert (=> bs!661704 m!5015709))

(assert (=> d!1303167 d!1303807))

(declare-fun d!1303809 () Bool)

(declare-fun lt!1589862 () Bool)

(assert (=> d!1303809 (= lt!1589862 (select (content!7811 e!2725192) key!3918))))

(declare-fun e!2725920 () Bool)

(assert (=> d!1303809 (= lt!1589862 e!2725920)))

(declare-fun res!1803414 () Bool)

(assert (=> d!1303809 (=> (not res!1803414) (not e!2725920))))

(assert (=> d!1303809 (= res!1803414 ((_ is Cons!49159) e!2725192))))

(assert (=> d!1303809 (= (contains!11492 e!2725192 key!3918) lt!1589862)))

(declare-fun b!4379219 () Bool)

(declare-fun e!2725921 () Bool)

(assert (=> b!4379219 (= e!2725920 e!2725921)))

(declare-fun res!1803415 () Bool)

(assert (=> b!4379219 (=> res!1803415 e!2725921)))

(assert (=> b!4379219 (= res!1803415 (= (h!54758 e!2725192) key!3918))))

(declare-fun b!4379220 () Bool)

(assert (=> b!4379220 (= e!2725921 (contains!11492 (t!356209 e!2725192) key!3918))))

(assert (= (and d!1303809 res!1803414) b!4379219))

(assert (= (and b!4379219 (not res!1803415)) b!4379220))

(declare-fun m!5015717 () Bool)

(assert (=> d!1303809 m!5015717))

(declare-fun m!5015719 () Bool)

(assert (=> d!1303809 m!5015719))

(declare-fun m!5015721 () Bool)

(assert (=> b!4379220 m!5015721))

(assert (=> bm!304475 d!1303809))

(assert (=> bm!304472 d!1303519))

(declare-fun d!1303813 () Bool)

(declare-fun res!1803419 () Bool)

(declare-fun e!2725925 () Bool)

(assert (=> d!1303813 (=> res!1803419 e!2725925)))

(assert (=> d!1303813 (= res!1803419 ((_ is Nil!49157) (t!356207 (toList!3141 lt!1588604))))))

(assert (=> d!1303813 (= (forall!9271 (t!356207 (toList!3141 lt!1588604)) lambda!145061) e!2725925)))

(declare-fun b!4379226 () Bool)

(declare-fun e!2725926 () Bool)

(assert (=> b!4379226 (= e!2725925 e!2725926)))

(declare-fun res!1803420 () Bool)

(assert (=> b!4379226 (=> (not res!1803420) (not e!2725926))))

(assert (=> b!4379226 (= res!1803420 (dynLambda!20709 lambda!145061 (h!54754 (t!356207 (toList!3141 lt!1588604)))))))

(declare-fun b!4379227 () Bool)

(assert (=> b!4379227 (= e!2725926 (forall!9271 (t!356207 (t!356207 (toList!3141 lt!1588604))) lambda!145061))))

(assert (= (and d!1303813 (not res!1803419)) b!4379226))

(assert (= (and b!4379226 res!1803420) b!4379227))

(declare-fun b_lambda!135083 () Bool)

(assert (=> (not b_lambda!135083) (not b!4379226)))

(declare-fun m!5015723 () Bool)

(assert (=> b!4379226 m!5015723))

(declare-fun m!5015725 () Bool)

(assert (=> b!4379227 m!5015725))

(assert (=> b!4377838 d!1303813))

(declare-fun d!1303815 () Bool)

(declare-fun res!1803421 () Bool)

(declare-fun e!2725927 () Bool)

(assert (=> d!1303815 (=> res!1803421 e!2725927)))

(assert (=> d!1303815 (= res!1803421 ((_ is Nil!49156) (toList!3142 lt!1588594)))))

(assert (=> d!1303815 (= (forall!9273 (toList!3142 lt!1588594) lambda!145155) e!2725927)))

(declare-fun b!4379228 () Bool)

(declare-fun e!2725928 () Bool)

(assert (=> b!4379228 (= e!2725927 e!2725928)))

(declare-fun res!1803422 () Bool)

(assert (=> b!4379228 (=> (not res!1803422) (not e!2725928))))

(assert (=> b!4379228 (= res!1803422 (dynLambda!20710 lambda!145155 (h!54753 (toList!3142 lt!1588594))))))

(declare-fun b!4379229 () Bool)

(assert (=> b!4379229 (= e!2725928 (forall!9273 (t!356206 (toList!3142 lt!1588594)) lambda!145155))))

(assert (= (and d!1303815 (not res!1803421)) b!4379228))

(assert (= (and b!4379228 res!1803422) b!4379229))

(declare-fun b_lambda!135085 () Bool)

(assert (=> (not b_lambda!135085) (not b!4379228)))

(declare-fun m!5015727 () Bool)

(assert (=> b!4379228 m!5015727))

(declare-fun m!5015729 () Bool)

(assert (=> b!4379229 m!5015729))

(assert (=> b!4377998 d!1303815))

(declare-fun bs!661718 () Bool)

(declare-fun b!4379235 () Bool)

(assert (= bs!661718 (and b!4379235 b!4378638)))

(declare-fun lambda!145299 () Int)

(assert (=> bs!661718 (= (= (t!356206 (toList!3142 lt!1588598)) (t!356206 (toList!3142 lt!1588597))) (= lambda!145299 lambda!145256))))

(declare-fun bs!661721 () Bool)

(assert (= bs!661721 (and b!4379235 b!4378931)))

(assert (=> bs!661721 (= (= (t!356206 (toList!3142 lt!1588598)) (toList!3142 lt!1588610)) (= lambda!145299 lambda!145280))))

(declare-fun bs!661723 () Bool)

(assert (= bs!661723 (and b!4379235 b!4378934)))

(assert (=> bs!661723 (= (= (t!356206 (toList!3142 lt!1588598)) (Cons!49156 (h!54753 (toList!3142 lt!1588610)) (t!356206 (toList!3142 lt!1588610)))) (= lambda!145299 lambda!145279))))

(declare-fun bs!661725 () Bool)

(assert (= bs!661725 (and b!4379235 b!4378634)))

(assert (=> bs!661725 (= (= (t!356206 (toList!3142 lt!1588598)) (toList!3142 lt!1588597)) (= lambda!145299 lambda!145258))))

(declare-fun bs!661727 () Bool)

(assert (= bs!661727 (and b!4379235 b!4378500)))

(assert (=> bs!661727 (= (= (t!356206 (toList!3142 lt!1588598)) (toList!3142 lt!1589006)) (= lambda!145299 lambda!145234))))

(declare-fun bs!661729 () Bool)

(assert (= bs!661729 (and b!4379235 b!4378455)))

(assert (=> bs!661729 (= (= (t!356206 (toList!3142 lt!1588598)) (toList!3142 lt!1588598)) (= lambda!145299 lambda!145224))))

(declare-fun bs!661731 () Bool)

(assert (= bs!661731 (and b!4379235 b!4378935)))

(assert (=> bs!661731 (= (= (t!356206 (toList!3142 lt!1588598)) (t!356206 (toList!3142 lt!1588610))) (= lambda!145299 lambda!145278))))

(declare-fun bs!661732 () Bool)

(assert (= bs!661732 (and b!4379235 b!4378158)))

(assert (=> bs!661732 (= (= (t!356206 (toList!3142 lt!1588598)) (toList!3142 lt!1588610)) (= lambda!145299 lambda!145184))))

(declare-fun bs!661734 () Bool)

(assert (= bs!661734 (and b!4379235 b!4378637)))

(assert (=> bs!661734 (= (= (t!356206 (toList!3142 lt!1588598)) (Cons!49156 (h!54753 (toList!3142 lt!1588597)) (t!356206 (toList!3142 lt!1588597)))) (= lambda!145299 lambda!145257))))

(assert (=> b!4379235 true))

(declare-fun bs!661737 () Bool)

(declare-fun b!4379234 () Bool)

(assert (= bs!661737 (and b!4379234 b!4378638)))

(declare-fun lambda!145300 () Int)

(assert (=> bs!661737 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588598)) (t!356206 (toList!3142 lt!1588598))) (t!356206 (toList!3142 lt!1588597))) (= lambda!145300 lambda!145256))))

(declare-fun bs!661738 () Bool)

(assert (= bs!661738 (and b!4379234 b!4378931)))

(assert (=> bs!661738 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588598)) (t!356206 (toList!3142 lt!1588598))) (toList!3142 lt!1588610)) (= lambda!145300 lambda!145280))))

(declare-fun bs!661740 () Bool)

(assert (= bs!661740 (and b!4379234 b!4378934)))

(assert (=> bs!661740 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588598)) (t!356206 (toList!3142 lt!1588598))) (Cons!49156 (h!54753 (toList!3142 lt!1588610)) (t!356206 (toList!3142 lt!1588610)))) (= lambda!145300 lambda!145279))))

(declare-fun bs!661742 () Bool)

(assert (= bs!661742 (and b!4379234 b!4378634)))

(assert (=> bs!661742 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588598)) (t!356206 (toList!3142 lt!1588598))) (toList!3142 lt!1588597)) (= lambda!145300 lambda!145258))))

(declare-fun bs!661744 () Bool)

(assert (= bs!661744 (and b!4379234 b!4379235)))

(assert (=> bs!661744 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588598)) (t!356206 (toList!3142 lt!1588598))) (t!356206 (toList!3142 lt!1588598))) (= lambda!145300 lambda!145299))))

(declare-fun bs!661746 () Bool)

(assert (= bs!661746 (and b!4379234 b!4378500)))

(assert (=> bs!661746 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588598)) (t!356206 (toList!3142 lt!1588598))) (toList!3142 lt!1589006)) (= lambda!145300 lambda!145234))))

(declare-fun bs!661747 () Bool)

(assert (= bs!661747 (and b!4379234 b!4378455)))

(assert (=> bs!661747 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588598)) (t!356206 (toList!3142 lt!1588598))) (toList!3142 lt!1588598)) (= lambda!145300 lambda!145224))))

(declare-fun bs!661749 () Bool)

(assert (= bs!661749 (and b!4379234 b!4378935)))

(assert (=> bs!661749 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588598)) (t!356206 (toList!3142 lt!1588598))) (t!356206 (toList!3142 lt!1588610))) (= lambda!145300 lambda!145278))))

(declare-fun bs!661751 () Bool)

(assert (= bs!661751 (and b!4379234 b!4378158)))

(assert (=> bs!661751 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588598)) (t!356206 (toList!3142 lt!1588598))) (toList!3142 lt!1588610)) (= lambda!145300 lambda!145184))))

(declare-fun bs!661753 () Bool)

(assert (= bs!661753 (and b!4379234 b!4378637)))

(assert (=> bs!661753 (= (= (Cons!49156 (h!54753 (toList!3142 lt!1588598)) (t!356206 (toList!3142 lt!1588598))) (Cons!49156 (h!54753 (toList!3142 lt!1588597)) (t!356206 (toList!3142 lt!1588597)))) (= lambda!145300 lambda!145257))))

(assert (=> b!4379234 true))

(declare-fun bs!661756 () Bool)

(declare-fun b!4379231 () Bool)

(assert (= bs!661756 (and b!4379231 b!4379234)))

(declare-fun lambda!145301 () Int)

(assert (=> bs!661756 (= (= (toList!3142 lt!1588598) (Cons!49156 (h!54753 (toList!3142 lt!1588598)) (t!356206 (toList!3142 lt!1588598)))) (= lambda!145301 lambda!145300))))

(declare-fun bs!661757 () Bool)

(assert (= bs!661757 (and b!4379231 b!4378638)))

(assert (=> bs!661757 (= (= (toList!3142 lt!1588598) (t!356206 (toList!3142 lt!1588597))) (= lambda!145301 lambda!145256))))

(declare-fun bs!661758 () Bool)

(assert (= bs!661758 (and b!4379231 b!4378931)))

(assert (=> bs!661758 (= (= (toList!3142 lt!1588598) (toList!3142 lt!1588610)) (= lambda!145301 lambda!145280))))

(declare-fun bs!661759 () Bool)

(assert (= bs!661759 (and b!4379231 b!4378934)))

(assert (=> bs!661759 (= (= (toList!3142 lt!1588598) (Cons!49156 (h!54753 (toList!3142 lt!1588610)) (t!356206 (toList!3142 lt!1588610)))) (= lambda!145301 lambda!145279))))

(declare-fun bs!661760 () Bool)

(assert (= bs!661760 (and b!4379231 b!4378634)))

(assert (=> bs!661760 (= (= (toList!3142 lt!1588598) (toList!3142 lt!1588597)) (= lambda!145301 lambda!145258))))

(declare-fun bs!661761 () Bool)

(assert (= bs!661761 (and b!4379231 b!4379235)))

(assert (=> bs!661761 (= (= (toList!3142 lt!1588598) (t!356206 (toList!3142 lt!1588598))) (= lambda!145301 lambda!145299))))

(declare-fun bs!661762 () Bool)

(assert (= bs!661762 (and b!4379231 b!4378500)))

(assert (=> bs!661762 (= (= (toList!3142 lt!1588598) (toList!3142 lt!1589006)) (= lambda!145301 lambda!145234))))

(declare-fun bs!661763 () Bool)

(assert (= bs!661763 (and b!4379231 b!4378455)))

(assert (=> bs!661763 (= lambda!145301 lambda!145224)))

(declare-fun bs!661765 () Bool)

(assert (= bs!661765 (and b!4379231 b!4378935)))

(assert (=> bs!661765 (= (= (toList!3142 lt!1588598) (t!356206 (toList!3142 lt!1588610))) (= lambda!145301 lambda!145278))))

(declare-fun bs!661767 () Bool)

(assert (= bs!661767 (and b!4379231 b!4378158)))

(assert (=> bs!661767 (= (= (toList!3142 lt!1588598) (toList!3142 lt!1588610)) (= lambda!145301 lambda!145184))))

(declare-fun bs!661769 () Bool)

(assert (= bs!661769 (and b!4379231 b!4378637)))

(assert (=> bs!661769 (= (= (toList!3142 lt!1588598) (Cons!49156 (h!54753 (toList!3142 lt!1588597)) (t!356206 (toList!3142 lt!1588597)))) (= lambda!145301 lambda!145257))))

(assert (=> b!4379231 true))

(declare-fun bs!661773 () Bool)

(declare-fun b!4379238 () Bool)

(assert (= bs!661773 (and b!4379238 b!4378456)))

(declare-fun lambda!145303 () Int)

(assert (=> bs!661773 (= lambda!145303 lambda!145225)))

(declare-fun bs!661775 () Bool)

(assert (= bs!661775 (and b!4379238 b!4378501)))

(assert (=> bs!661775 (= lambda!145303 lambda!145235)))

(declare-fun bs!661777 () Bool)

(assert (= bs!661777 (and b!4379238 b!4378938)))

(assert (=> bs!661777 (= lambda!145303 lambda!145281)))

(declare-fun bs!661779 () Bool)

(assert (= bs!661779 (and b!4379238 b!4378641)))

(assert (=> bs!661779 (= lambda!145303 lambda!145259)))

(declare-fun bs!661781 () Bool)

(assert (= bs!661781 (and b!4379238 b!4378159)))

(assert (=> bs!661781 (= lambda!145303 lambda!145185)))

(declare-fun b!4379230 () Bool)

(declare-fun res!1803425 () Bool)

(declare-fun e!2725929 () Bool)

(assert (=> b!4379230 (=> (not res!1803425) (not e!2725929))))

(declare-fun lt!1589889 () List!49283)

(assert (=> b!4379230 (= res!1803425 (= (length!94 lt!1589889) (length!95 (toList!3142 lt!1588598))))))

(declare-fun res!1803423 () Bool)

(assert (=> b!4379231 (=> (not res!1803423) (not e!2725929))))

(assert (=> b!4379231 (= res!1803423 (forall!9274 lt!1589889 lambda!145301))))

(declare-fun b!4379232 () Bool)

(declare-fun e!2725932 () Unit!75116)

(declare-fun Unit!75416 () Unit!75116)

(assert (=> b!4379232 (= e!2725932 Unit!75416)))

(declare-fun b!4379233 () Bool)

(assert (=> b!4379233 false))

(declare-fun e!2725930 () Unit!75116)

(declare-fun Unit!75417 () Unit!75116)

(assert (=> b!4379233 (= e!2725930 Unit!75417)))

(declare-fun e!2725931 () List!49283)

(assert (=> b!4379234 (= e!2725931 (Cons!49159 (_1!27637 (h!54753 (toList!3142 lt!1588598))) (getKeysList!171 (t!356206 (toList!3142 lt!1588598)))))))

(declare-fun c!744795 () Bool)

(assert (=> b!4379234 (= c!744795 (containsKey!848 (t!356206 (toList!3142 lt!1588598)) (_1!27637 (h!54753 (toList!3142 lt!1588598)))))))

(declare-fun lt!1589890 () Unit!75116)

(assert (=> b!4379234 (= lt!1589890 e!2725930)))

(declare-fun c!744793 () Bool)

(assert (=> b!4379234 (= c!744793 (contains!11492 (getKeysList!171 (t!356206 (toList!3142 lt!1588598))) (_1!27637 (h!54753 (toList!3142 lt!1588598)))))))

(declare-fun lt!1589885 () Unit!75116)

(assert (=> b!4379234 (= lt!1589885 e!2725932)))

(declare-fun lt!1589884 () List!49283)

(assert (=> b!4379234 (= lt!1589884 (getKeysList!171 (t!356206 (toList!3142 lt!1588598))))))

(declare-fun lt!1589887 () Unit!75116)

(assert (=> b!4379234 (= lt!1589887 (lemmaForallContainsAddHeadPreserves!42 (t!356206 (toList!3142 lt!1588598)) lt!1589884 (h!54753 (toList!3142 lt!1588598))))))

(assert (=> b!4379234 (forall!9274 lt!1589884 lambda!145300)))

(declare-fun lt!1589886 () Unit!75116)

(assert (=> b!4379234 (= lt!1589886 lt!1589887)))

(assert (=> b!4379235 false))

(declare-fun lt!1589888 () Unit!75116)

(assert (=> b!4379235 (= lt!1589888 (forallContained!1913 (getKeysList!171 (t!356206 (toList!3142 lt!1588598))) lambda!145299 (_1!27637 (h!54753 (toList!3142 lt!1588598)))))))

(declare-fun Unit!75418 () Unit!75116)

(assert (=> b!4379235 (= e!2725932 Unit!75418)))

(declare-fun b!4379236 () Bool)

(declare-fun Unit!75419 () Unit!75116)

(assert (=> b!4379236 (= e!2725930 Unit!75419)))

(declare-fun b!4379237 () Bool)

(assert (=> b!4379237 (= e!2725931 Nil!49159)))

(declare-fun d!1303817 () Bool)

(assert (=> d!1303817 e!2725929))

(declare-fun res!1803424 () Bool)

(assert (=> d!1303817 (=> (not res!1803424) (not e!2725929))))

(assert (=> d!1303817 (= res!1803424 (noDuplicate!619 lt!1589889))))

(assert (=> d!1303817 (= lt!1589889 e!2725931)))

(declare-fun c!744794 () Bool)

(assert (=> d!1303817 (= c!744794 ((_ is Cons!49156) (toList!3142 lt!1588598)))))

(assert (=> d!1303817 (invariantList!723 (toList!3142 lt!1588598))))

(assert (=> d!1303817 (= (getKeysList!171 (toList!3142 lt!1588598)) lt!1589889)))

(assert (=> b!4379238 (= e!2725929 (= (content!7811 lt!1589889) (content!7811 (map!10705 (toList!3142 lt!1588598) lambda!145303))))))

(assert (= (and d!1303817 c!744794) b!4379234))

(assert (= (and d!1303817 (not c!744794)) b!4379237))

(assert (= (and b!4379234 c!744795) b!4379233))

(assert (= (and b!4379234 (not c!744795)) b!4379236))

(assert (= (and b!4379234 c!744793) b!4379235))

(assert (= (and b!4379234 (not c!744793)) b!4379232))

(assert (= (and d!1303817 res!1803424) b!4379230))

(assert (= (and b!4379230 res!1803425) b!4379231))

(assert (= (and b!4379231 res!1803423) b!4379238))

(declare-fun m!5015731 () Bool)

(assert (=> b!4379238 m!5015731))

(declare-fun m!5015733 () Bool)

(assert (=> b!4379238 m!5015733))

(assert (=> b!4379238 m!5015733))

(declare-fun m!5015735 () Bool)

(assert (=> b!4379238 m!5015735))

(declare-fun m!5015737 () Bool)

(assert (=> d!1303817 m!5015737))

(assert (=> d!1303817 m!5015641))

(declare-fun m!5015739 () Bool)

(assert (=> b!4379234 m!5015739))

(declare-fun m!5015741 () Bool)

(assert (=> b!4379234 m!5015741))

(declare-fun m!5015743 () Bool)

(assert (=> b!4379234 m!5015743))

(declare-fun m!5015745 () Bool)

(assert (=> b!4379234 m!5015745))

(assert (=> b!4379234 m!5015741))

(declare-fun m!5015747 () Bool)

(assert (=> b!4379234 m!5015747))

(declare-fun m!5015749 () Bool)

(assert (=> b!4379231 m!5015749))

(assert (=> b!4379235 m!5015741))

(assert (=> b!4379235 m!5015741))

(declare-fun m!5015751 () Bool)

(assert (=> b!4379235 m!5015751))

(declare-fun m!5015753 () Bool)

(assert (=> b!4379230 m!5015753))

(assert (=> b!4379230 m!5014191))

(assert (=> b!4378085 d!1303817))

(assert (=> b!4377861 d!1303487))

(declare-fun d!1303819 () Bool)

(assert (=> d!1303819 (containsKey!848 (toList!3142 lt!1588610) key!3918)))

(declare-fun lt!1589891 () Unit!75116)

(assert (=> d!1303819 (= lt!1589891 (choose!27317 (toList!3142 lt!1588610) key!3918))))

(assert (=> d!1303819 (invariantList!723 (toList!3142 lt!1588610))))

(assert (=> d!1303819 (= (lemmaInGetKeysListThenContainsKey!169 (toList!3142 lt!1588610) key!3918) lt!1589891)))

(declare-fun bs!661798 () Bool)

(assert (= bs!661798 d!1303819))

(assert (=> bs!661798 m!5013077))

(declare-fun m!5015755 () Bool)

(assert (=> bs!661798 m!5015755))

(assert (=> bs!661798 m!5015215))

(assert (=> b!4377861 d!1303819))

(assert (=> b!4378044 d!1303679))

(declare-fun d!1303821 () Bool)

(declare-fun e!2725933 () Bool)

(assert (=> d!1303821 e!2725933))

(declare-fun res!1803426 () Bool)

(assert (=> d!1303821 (=> res!1803426 e!2725933)))

(declare-fun e!2725937 () Bool)

(assert (=> d!1303821 (= res!1803426 e!2725937)))

(declare-fun res!1803428 () Bool)

(assert (=> d!1303821 (=> (not res!1803428) (not e!2725937))))

(declare-fun lt!1589892 () Bool)

(assert (=> d!1303821 (= res!1803428 (not lt!1589892))))

(declare-fun lt!1589897 () Bool)

(assert (=> d!1303821 (= lt!1589892 lt!1589897)))

(declare-fun lt!1589898 () Unit!75116)

(declare-fun e!2725934 () Unit!75116)

(assert (=> d!1303821 (= lt!1589898 e!2725934)))

(declare-fun c!744797 () Bool)

(assert (=> d!1303821 (= c!744797 lt!1589897)))

(assert (=> d!1303821 (= lt!1589897 (containsKey!848 (toList!3142 lt!1588955) (_1!27637 lt!1588602)))))

(assert (=> d!1303821 (= (contains!11488 lt!1588955 (_1!27637 lt!1588602)) lt!1589892)))

(declare-fun bm!304614 () Bool)

(declare-fun call!304619 () Bool)

(declare-fun e!2725935 () List!49283)

(assert (=> bm!304614 (= call!304619 (contains!11492 e!2725935 (_1!27637 lt!1588602)))))

(declare-fun c!744796 () Bool)

(assert (=> bm!304614 (= c!744796 c!744797)))

(declare-fun b!4379239 () Bool)

(declare-fun e!2725938 () Bool)

(assert (=> b!4379239 (= e!2725933 e!2725938)))

(declare-fun res!1803427 () Bool)

(assert (=> b!4379239 (=> (not res!1803427) (not e!2725938))))

(assert (=> b!4379239 (= res!1803427 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588955) (_1!27637 lt!1588602))))))

(declare-fun b!4379240 () Bool)

(declare-fun e!2725936 () Unit!75116)

(declare-fun Unit!75420 () Unit!75116)

(assert (=> b!4379240 (= e!2725936 Unit!75420)))

(declare-fun b!4379241 () Bool)

(assert (=> b!4379241 false))

(declare-fun lt!1589894 () Unit!75116)

(declare-fun lt!1589893 () Unit!75116)

(assert (=> b!4379241 (= lt!1589894 lt!1589893)))

(assert (=> b!4379241 (containsKey!848 (toList!3142 lt!1588955) (_1!27637 lt!1588602))))

(assert (=> b!4379241 (= lt!1589893 (lemmaInGetKeysListThenContainsKey!169 (toList!3142 lt!1588955) (_1!27637 lt!1588602)))))

(declare-fun Unit!75421 () Unit!75116)

(assert (=> b!4379241 (= e!2725936 Unit!75421)))

(declare-fun b!4379242 () Bool)

(declare-fun lt!1589899 () Unit!75116)

(assert (=> b!4379242 (= e!2725934 lt!1589899)))

(declare-fun lt!1589896 () Unit!75116)

(assert (=> b!4379242 (= lt!1589896 (lemmaContainsKeyImpliesGetValueByKeyDefined!455 (toList!3142 lt!1588955) (_1!27637 lt!1588602)))))

(assert (=> b!4379242 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588955) (_1!27637 lt!1588602)))))

(declare-fun lt!1589895 () Unit!75116)

(assert (=> b!4379242 (= lt!1589895 lt!1589896)))

(assert (=> b!4379242 (= lt!1589899 (lemmaInListThenGetKeysListContains!168 (toList!3142 lt!1588955) (_1!27637 lt!1588602)))))

(assert (=> b!4379242 call!304619))

(declare-fun b!4379243 () Bool)

(assert (=> b!4379243 (= e!2725938 (contains!11492 (keys!16669 lt!1588955) (_1!27637 lt!1588602)))))

(declare-fun b!4379244 () Bool)

(assert (=> b!4379244 (= e!2725935 (keys!16669 lt!1588955))))

(declare-fun b!4379245 () Bool)

(assert (=> b!4379245 (= e!2725934 e!2725936)))

(declare-fun c!744798 () Bool)

(assert (=> b!4379245 (= c!744798 call!304619)))

(declare-fun b!4379246 () Bool)

(assert (=> b!4379246 (= e!2725935 (getKeysList!171 (toList!3142 lt!1588955)))))

(declare-fun b!4379247 () Bool)

(assert (=> b!4379247 (= e!2725937 (not (contains!11492 (keys!16669 lt!1588955) (_1!27637 lt!1588602))))))

(assert (= (and d!1303821 c!744797) b!4379242))

(assert (= (and d!1303821 (not c!744797)) b!4379245))

(assert (= (and b!4379245 c!744798) b!4379241))

(assert (= (and b!4379245 (not c!744798)) b!4379240))

(assert (= (or b!4379242 b!4379245) bm!304614))

(assert (= (and bm!304614 c!744796) b!4379246))

(assert (= (and bm!304614 (not c!744796)) b!4379244))

(assert (= (and d!1303821 res!1803428) b!4379247))

(assert (= (and d!1303821 (not res!1803426)) b!4379239))

(assert (= (and b!4379239 res!1803427) b!4379243))

(declare-fun m!5015757 () Bool)

(assert (=> b!4379247 m!5015757))

(assert (=> b!4379247 m!5015757))

(declare-fun m!5015759 () Bool)

(assert (=> b!4379247 m!5015759))

(declare-fun m!5015761 () Bool)

(assert (=> b!4379246 m!5015761))

(declare-fun m!5015763 () Bool)

(assert (=> b!4379241 m!5015763))

(declare-fun m!5015765 () Bool)

(assert (=> b!4379241 m!5015765))

(assert (=> b!4379244 m!5015757))

(declare-fun m!5015767 () Bool)

(assert (=> bm!304614 m!5015767))

(assert (=> b!4379239 m!5013473))

(assert (=> b!4379239 m!5013473))

(declare-fun m!5015769 () Bool)

(assert (=> b!4379239 m!5015769))

(assert (=> b!4379243 m!5015757))

(assert (=> b!4379243 m!5015757))

(assert (=> b!4379243 m!5015759))

(assert (=> d!1303821 m!5015763))

(declare-fun m!5015771 () Bool)

(assert (=> b!4379242 m!5015771))

(assert (=> b!4379242 m!5013473))

(assert (=> b!4379242 m!5013473))

(assert (=> b!4379242 m!5015769))

(declare-fun m!5015773 () Bool)

(assert (=> b!4379242 m!5015773))

(assert (=> d!1303229 d!1303821))

(declare-fun d!1303823 () Bool)

(declare-fun c!744799 () Bool)

(assert (=> d!1303823 (= c!744799 (and ((_ is Cons!49156) lt!1588956) (= (_1!27637 (h!54753 lt!1588956)) (_1!27637 lt!1588602))))))

(declare-fun e!2725939 () Option!10559)

(assert (=> d!1303823 (= (getValueByKey!545 lt!1588956 (_1!27637 lt!1588602)) e!2725939)))

(declare-fun b!4379249 () Bool)

(declare-fun e!2725940 () Option!10559)

(assert (=> b!4379249 (= e!2725939 e!2725940)))

(declare-fun c!744800 () Bool)

(assert (=> b!4379249 (= c!744800 (and ((_ is Cons!49156) lt!1588956) (not (= (_1!27637 (h!54753 lt!1588956)) (_1!27637 lt!1588602)))))))

(declare-fun b!4379248 () Bool)

(assert (=> b!4379248 (= e!2725939 (Some!10558 (_2!27637 (h!54753 lt!1588956))))))

(declare-fun b!4379250 () Bool)

(assert (=> b!4379250 (= e!2725940 (getValueByKey!545 (t!356206 lt!1588956) (_1!27637 lt!1588602)))))

(declare-fun b!4379251 () Bool)

(assert (=> b!4379251 (= e!2725940 None!10558)))

(assert (= (and d!1303823 c!744799) b!4379248))

(assert (= (and d!1303823 (not c!744799)) b!4379249))

(assert (= (and b!4379249 c!744800) b!4379250))

(assert (= (and b!4379249 (not c!744800)) b!4379251))

(declare-fun m!5015775 () Bool)

(assert (=> b!4379250 m!5015775))

(assert (=> d!1303229 d!1303823))

(declare-fun d!1303825 () Bool)

(assert (=> d!1303825 (= (getValueByKey!545 lt!1588956 (_1!27637 lt!1588602)) (Some!10558 (_2!27637 lt!1588602)))))

(declare-fun lt!1589900 () Unit!75116)

(assert (=> d!1303825 (= lt!1589900 (choose!27315 lt!1588956 (_1!27637 lt!1588602) (_2!27637 lt!1588602)))))

(declare-fun e!2725941 () Bool)

(assert (=> d!1303825 e!2725941))

(declare-fun res!1803429 () Bool)

(assert (=> d!1303825 (=> (not res!1803429) (not e!2725941))))

(assert (=> d!1303825 (= res!1803429 (invariantList!723 lt!1588956))))

(assert (=> d!1303825 (= (lemmaContainsTupThenGetReturnValue!309 lt!1588956 (_1!27637 lt!1588602) (_2!27637 lt!1588602)) lt!1589900)))

(declare-fun b!4379252 () Bool)

(declare-fun res!1803430 () Bool)

(assert (=> b!4379252 (=> (not res!1803430) (not e!2725941))))

(assert (=> b!4379252 (= res!1803430 (containsKey!848 lt!1588956 (_1!27637 lt!1588602)))))

(declare-fun b!4379253 () Bool)

(assert (=> b!4379253 (= e!2725941 (contains!11493 lt!1588956 (tuple2!48687 (_1!27637 lt!1588602) (_2!27637 lt!1588602))))))

(assert (= (and d!1303825 res!1803429) b!4379252))

(assert (= (and b!4379252 res!1803430) b!4379253))

(assert (=> d!1303825 m!5013465))

(declare-fun m!5015777 () Bool)

(assert (=> d!1303825 m!5015777))

(declare-fun m!5015779 () Bool)

(assert (=> d!1303825 m!5015779))

(declare-fun m!5015781 () Bool)

(assert (=> b!4379252 m!5015781))

(declare-fun m!5015783 () Bool)

(assert (=> b!4379253 m!5015783))

(assert (=> d!1303229 d!1303825))

(declare-fun b!4379254 () Bool)

(declare-fun e!2725942 () List!49280)

(declare-fun lt!1589909 () List!49280)

(assert (=> b!4379254 (= e!2725942 lt!1589909)))

(declare-fun call!304623 () List!49280)

(assert (=> b!4379254 (= lt!1589909 call!304623)))

(declare-fun c!744804 () Bool)

(assert (=> b!4379254 (= c!744804 (containsKey!848 (insertNoDuplicatedKeys!141 (t!356206 (toList!3142 lt!1588594)) (_1!27637 lt!1588602) (_2!27637 lt!1588602)) (_1!27637 (h!54753 (toList!3142 lt!1588594)))))))

(declare-fun lt!1589902 () Unit!75116)

(declare-fun e!2725946 () Unit!75116)

(assert (=> b!4379254 (= lt!1589902 e!2725946)))

(declare-fun bm!304615 () Bool)

(declare-fun call!304620 () List!49280)

(declare-fun call!304622 () List!49280)

(assert (=> bm!304615 (= call!304620 call!304622)))

(declare-fun b!4379255 () Bool)

(declare-fun e!2725945 () Bool)

(assert (=> b!4379255 (= e!2725945 (not (containsKey!848 (toList!3142 lt!1588594) (_1!27637 lt!1588602))))))

(declare-fun b!4379256 () Bool)

(assert (=> b!4379256 false))

(declare-fun lt!1589906 () Unit!75116)

(declare-fun lt!1589903 () Unit!75116)

(assert (=> b!4379256 (= lt!1589906 lt!1589903)))

(assert (=> b!4379256 (containsKey!848 (t!356206 (toList!3142 lt!1588594)) (_1!27637 (h!54753 (toList!3142 lt!1588594))))))

(assert (=> b!4379256 (= lt!1589903 (lemmaInGetKeysListThenContainsKey!169 (t!356206 (toList!3142 lt!1588594)) (_1!27637 (h!54753 (toList!3142 lt!1588594)))))))

(declare-fun lt!1589908 () Unit!75116)

(declare-fun lt!1589910 () Unit!75116)

(assert (=> b!4379256 (= lt!1589908 lt!1589910)))

(declare-fun call!304621 () List!49283)

(assert (=> b!4379256 (contains!11492 call!304621 (_1!27637 (h!54753 (toList!3142 lt!1588594))))))

(declare-fun lt!1589905 () List!49280)

(assert (=> b!4379256 (= lt!1589910 (lemmaInListThenGetKeysListContains!168 lt!1589905 (_1!27637 (h!54753 (toList!3142 lt!1588594)))))))

(assert (=> b!4379256 (= lt!1589905 (insertNoDuplicatedKeys!141 (t!356206 (toList!3142 lt!1588594)) (_1!27637 lt!1588602) (_2!27637 lt!1588602)))))

(declare-fun Unit!75422 () Unit!75116)

(assert (=> b!4379256 (= e!2725946 Unit!75422)))

(declare-fun bm!304616 () Bool)

(declare-fun c!744802 () Bool)

(declare-fun e!2725944 () List!49280)

(declare-fun c!744801 () Bool)

(declare-fun c!744805 () Bool)

(assert (=> bm!304616 (= call!304622 ($colon$colon!725 (ite c!744801 (t!356206 (toList!3142 lt!1588594)) (ite c!744805 (toList!3142 lt!1588594) e!2725944)) (ite (or c!744801 c!744805) (tuple2!48687 (_1!27637 lt!1588602) (_2!27637 lt!1588602)) (ite c!744802 (h!54753 (toList!3142 lt!1588594)) (tuple2!48687 (_1!27637 lt!1588602) (_2!27637 lt!1588602))))))))

(declare-fun b!4379257 () Bool)

(assert (=> b!4379257 (= c!744802 ((_ is Cons!49156) (toList!3142 lt!1588594)))))

(declare-fun e!2725943 () List!49280)

(assert (=> b!4379257 (= e!2725943 e!2725942)))

(declare-fun b!4379258 () Bool)

(declare-fun res!1803434 () Bool)

(declare-fun e!2725947 () Bool)

(assert (=> b!4379258 (=> (not res!1803434) (not e!2725947))))

(declare-fun lt!1589901 () List!49280)

(assert (=> b!4379258 (= res!1803434 (contains!11493 lt!1589901 (tuple2!48687 (_1!27637 lt!1588602) (_2!27637 lt!1588602))))))

(declare-fun b!4379259 () Bool)

(declare-fun Unit!75423 () Unit!75116)

(assert (=> b!4379259 (= e!2725946 Unit!75423)))

(declare-fun b!4379260 () Bool)

(assert (=> b!4379260 (= e!2725942 call!304623)))

(declare-fun b!4379261 () Bool)

(assert (=> b!4379261 (= e!2725944 Nil!49156)))

(declare-fun bm!304617 () Bool)

(assert (=> bm!304617 (= call!304623 call!304620)))

(declare-fun c!744803 () Bool)

(assert (=> bm!304617 (= c!744803 c!744802)))

(declare-fun b!4379262 () Bool)

(assert (=> b!4379262 (= e!2725947 (= (content!7811 (getKeysList!171 lt!1589901)) ((_ map or) (content!7811 (getKeysList!171 (toList!3142 lt!1588594))) (store ((as const (Array K!10515 Bool)) false) (_1!27637 lt!1588602) true))))))

(declare-fun b!4379263 () Bool)

(assert (=> b!4379263 (= e!2725944 (insertNoDuplicatedKeys!141 (t!356206 (toList!3142 lt!1588594)) (_1!27637 lt!1588602) (_2!27637 lt!1588602)))))

(declare-fun b!4379264 () Bool)

(declare-fun res!1803433 () Bool)

(assert (=> b!4379264 (=> (not res!1803433) (not e!2725947))))

(assert (=> b!4379264 (= res!1803433 (containsKey!848 lt!1589901 (_1!27637 lt!1588602)))))

(declare-fun b!4379265 () Bool)

(declare-fun e!2725948 () List!49280)

(assert (=> b!4379265 (= e!2725948 e!2725943)))

(declare-fun res!1803431 () Bool)

(assert (=> b!4379265 (= res!1803431 ((_ is Cons!49156) (toList!3142 lt!1588594)))))

(assert (=> b!4379265 (=> (not res!1803431) (not e!2725945))))

(assert (=> b!4379265 (= c!744805 e!2725945)))

(declare-fun b!4379266 () Bool)

(assert (=> b!4379266 (= e!2725943 call!304620)))

(declare-fun d!1303827 () Bool)

(assert (=> d!1303827 e!2725947))

(declare-fun res!1803432 () Bool)

(assert (=> d!1303827 (=> (not res!1803432) (not e!2725947))))

(assert (=> d!1303827 (= res!1803432 (invariantList!723 lt!1589901))))

(assert (=> d!1303827 (= lt!1589901 e!2725948)))

(assert (=> d!1303827 (= c!744801 (and ((_ is Cons!49156) (toList!3142 lt!1588594)) (= (_1!27637 (h!54753 (toList!3142 lt!1588594))) (_1!27637 lt!1588602))))))

(assert (=> d!1303827 (invariantList!723 (toList!3142 lt!1588594))))

(assert (=> d!1303827 (= (insertNoDuplicatedKeys!141 (toList!3142 lt!1588594) (_1!27637 lt!1588602) (_2!27637 lt!1588602)) lt!1589901)))

(declare-fun bm!304618 () Bool)

(assert (=> bm!304618 (= call!304621 (getKeysList!171 (ite c!744801 (toList!3142 lt!1588594) lt!1589905)))))

(declare-fun b!4379267 () Bool)

(assert (=> b!4379267 (= e!2725948 call!304622)))

(declare-fun lt!1589911 () List!49283)

(assert (=> b!4379267 (= lt!1589911 call!304621)))

(declare-fun lt!1589904 () Unit!75116)

(assert (=> b!4379267 (= lt!1589904 (lemmaSubseqRefl!81 lt!1589911))))

(assert (=> b!4379267 (subseq!597 lt!1589911 lt!1589911)))

(declare-fun lt!1589907 () Unit!75116)

(assert (=> b!4379267 (= lt!1589907 lt!1589904)))

(assert (= (and d!1303827 c!744801) b!4379267))

(assert (= (and d!1303827 (not c!744801)) b!4379265))

(assert (= (and b!4379265 res!1803431) b!4379255))

(assert (= (and b!4379265 c!744805) b!4379266))

(assert (= (and b!4379265 (not c!744805)) b!4379257))

(assert (= (and b!4379257 c!744802) b!4379254))

(assert (= (and b!4379257 (not c!744802)) b!4379260))

(assert (= (and b!4379254 c!744804) b!4379256))

(assert (= (and b!4379254 (not c!744804)) b!4379259))

(assert (= (or b!4379254 b!4379260) bm!304617))

(assert (= (and bm!304617 c!744803) b!4379263))

(assert (= (and bm!304617 (not c!744803)) b!4379261))

(assert (= (or b!4379266 bm!304617) bm!304615))

(assert (= (or b!4379267 b!4379256) bm!304618))

(assert (= (or b!4379267 bm!304615) bm!304616))

(assert (= (and d!1303827 res!1803432) b!4379264))

(assert (= (and b!4379264 res!1803433) b!4379258))

(assert (= (and b!4379258 res!1803434) b!4379262))

(declare-fun m!5015785 () Bool)

(assert (=> b!4379267 m!5015785))

(declare-fun m!5015787 () Bool)

(assert (=> b!4379267 m!5015787))

(declare-fun m!5015789 () Bool)

(assert (=> b!4379254 m!5015789))

(assert (=> b!4379254 m!5015789))

(declare-fun m!5015791 () Bool)

(assert (=> b!4379254 m!5015791))

(assert (=> b!4379263 m!5015789))

(declare-fun m!5015793 () Bool)

(assert (=> b!4379258 m!5015793))

(declare-fun m!5015795 () Bool)

(assert (=> b!4379262 m!5015795))

(declare-fun m!5015797 () Bool)

(assert (=> b!4379262 m!5015797))

(assert (=> b!4379262 m!5014889))

(assert (=> b!4379262 m!5015797))

(declare-fun m!5015799 () Bool)

(assert (=> b!4379262 m!5015799))

(assert (=> b!4379262 m!5015795))

(declare-fun m!5015801 () Bool)

(assert (=> b!4379262 m!5015801))

(declare-fun m!5015803 () Bool)

(assert (=> d!1303827 m!5015803))

(declare-fun m!5015805 () Bool)

(assert (=> d!1303827 m!5015805))

(declare-fun m!5015807 () Bool)

(assert (=> b!4379256 m!5015807))

(declare-fun m!5015809 () Bool)

(assert (=> b!4379256 m!5015809))

(declare-fun m!5015811 () Bool)

(assert (=> b!4379256 m!5015811))

(declare-fun m!5015813 () Bool)

(assert (=> b!4379256 m!5015813))

(assert (=> b!4379256 m!5015789))

(declare-fun m!5015815 () Bool)

(assert (=> b!4379255 m!5015815))

(declare-fun m!5015817 () Bool)

(assert (=> bm!304618 m!5015817))

(declare-fun m!5015819 () Bool)

(assert (=> b!4379264 m!5015819))

(declare-fun m!5015821 () Bool)

(assert (=> bm!304616 m!5015821))

(assert (=> d!1303229 d!1303827))

(declare-fun d!1303829 () Bool)

(declare-fun res!1803435 () Bool)

(declare-fun e!2725949 () Bool)

(assert (=> d!1303829 (=> res!1803435 e!2725949)))

(assert (=> d!1303829 (= res!1803435 ((_ is Nil!49156) (ite c!744490 (toList!3142 lt!1588594) (t!356206 lt!1588612))))))

(assert (=> d!1303829 (= (forall!9273 (ite c!744490 (toList!3142 lt!1588594) (t!356206 lt!1588612)) (ite c!744490 lambda!145152 lambda!145154)) e!2725949)))

(declare-fun b!4379268 () Bool)

(declare-fun e!2725950 () Bool)

(assert (=> b!4379268 (= e!2725949 e!2725950)))

(declare-fun res!1803436 () Bool)

(assert (=> b!4379268 (=> (not res!1803436) (not e!2725950))))

(assert (=> b!4379268 (= res!1803436 (dynLambda!20710 (ite c!744490 lambda!145152 lambda!145154) (h!54753 (ite c!744490 (toList!3142 lt!1588594) (t!356206 lt!1588612)))))))

(declare-fun b!4379269 () Bool)

(assert (=> b!4379269 (= e!2725950 (forall!9273 (t!356206 (ite c!744490 (toList!3142 lt!1588594) (t!356206 lt!1588612))) (ite c!744490 lambda!145152 lambda!145154)))))

(assert (= (and d!1303829 (not res!1803435)) b!4379268))

(assert (= (and b!4379268 res!1803436) b!4379269))

(declare-fun b_lambda!135087 () Bool)

(assert (=> (not b_lambda!135087) (not b!4379268)))

(declare-fun m!5015823 () Bool)

(assert (=> b!4379268 m!5015823))

(declare-fun m!5015825 () Bool)

(assert (=> b!4379269 m!5015825))

(assert (=> bm!304465 d!1303829))

(declare-fun d!1303831 () Bool)

(declare-fun res!1803437 () Bool)

(declare-fun e!2725951 () Bool)

(assert (=> d!1303831 (=> res!1803437 e!2725951)))

(assert (=> d!1303831 (= res!1803437 (not ((_ is Cons!49156) (_2!27638 (tuple2!48689 hash!377 newBucket!200)))))))

(assert (=> d!1303831 (= (noDuplicateKeys!579 (_2!27638 (tuple2!48689 hash!377 newBucket!200))) e!2725951)))

(declare-fun b!4379270 () Bool)

(declare-fun e!2725952 () Bool)

(assert (=> b!4379270 (= e!2725951 e!2725952)))

(declare-fun res!1803438 () Bool)

(assert (=> b!4379270 (=> (not res!1803438) (not e!2725952))))

(assert (=> b!4379270 (= res!1803438 (not (containsKey!849 (t!356206 (_2!27638 (tuple2!48689 hash!377 newBucket!200))) (_1!27637 (h!54753 (_2!27638 (tuple2!48689 hash!377 newBucket!200)))))))))

(declare-fun b!4379271 () Bool)

(assert (=> b!4379271 (= e!2725952 (noDuplicateKeys!579 (t!356206 (_2!27638 (tuple2!48689 hash!377 newBucket!200)))))))

(assert (= (and d!1303831 (not res!1803437)) b!4379270))

(assert (= (and b!4379270 res!1803438) b!4379271))

(declare-fun m!5015827 () Bool)

(assert (=> b!4379270 m!5015827))

(declare-fun m!5015829 () Bool)

(assert (=> b!4379271 m!5015829))

(assert (=> bs!660602 d!1303831))

(declare-fun d!1303833 () Bool)

(declare-fun res!1803439 () Bool)

(declare-fun e!2725953 () Bool)

(assert (=> d!1303833 (=> res!1803439 e!2725953)))

(assert (=> d!1303833 (= res!1803439 ((_ is Nil!49157) (toList!3141 lm!1707)))))

(assert (=> d!1303833 (= (forall!9271 (toList!3141 lm!1707) lambda!145064) e!2725953)))

(declare-fun b!4379272 () Bool)

(declare-fun e!2725954 () Bool)

(assert (=> b!4379272 (= e!2725953 e!2725954)))

(declare-fun res!1803440 () Bool)

(assert (=> b!4379272 (=> (not res!1803440) (not e!2725954))))

(assert (=> b!4379272 (= res!1803440 (dynLambda!20709 lambda!145064 (h!54754 (toList!3141 lm!1707))))))

(declare-fun b!4379273 () Bool)

(assert (=> b!4379273 (= e!2725954 (forall!9271 (t!356207 (toList!3141 lm!1707)) lambda!145064))))

(assert (= (and d!1303833 (not res!1803439)) b!4379272))

(assert (= (and b!4379272 res!1803440) b!4379273))

(declare-fun b_lambda!135089 () Bool)

(assert (=> (not b_lambda!135089) (not b!4379272)))

(declare-fun m!5015831 () Bool)

(assert (=> b!4379272 m!5015831))

(declare-fun m!5015833 () Bool)

(assert (=> b!4379273 m!5015833))

(assert (=> d!1303157 d!1303833))

(declare-fun d!1303835 () Bool)

(declare-fun res!1803441 () Bool)

(declare-fun e!2725955 () Bool)

(assert (=> d!1303835 (=> res!1803441 e!2725955)))

(assert (=> d!1303835 (= res!1803441 (and ((_ is Cons!49156) (toList!3142 lt!1588598)) (= (_1!27637 (h!54753 (toList!3142 lt!1588598))) key!3918)))))

(assert (=> d!1303835 (= (containsKey!848 (toList!3142 lt!1588598) key!3918) e!2725955)))

(declare-fun b!4379274 () Bool)

(declare-fun e!2725956 () Bool)

(assert (=> b!4379274 (= e!2725955 e!2725956)))

(declare-fun res!1803442 () Bool)

(assert (=> b!4379274 (=> (not res!1803442) (not e!2725956))))

(assert (=> b!4379274 (= res!1803442 ((_ is Cons!49156) (toList!3142 lt!1588598)))))

(declare-fun b!4379275 () Bool)

(assert (=> b!4379275 (= e!2725956 (containsKey!848 (t!356206 (toList!3142 lt!1588598)) key!3918))))

(assert (= (and d!1303835 (not res!1803441)) b!4379274))

(assert (= (and b!4379274 res!1803442) b!4379275))

(declare-fun m!5015835 () Bool)

(assert (=> b!4379275 m!5015835))

(assert (=> d!1303281 d!1303835))

(declare-fun d!1303837 () Bool)

(assert (=> d!1303837 (= (invariantList!723 (toList!3142 lt!1589021)) (noDuplicatedKeys!135 (toList!3142 lt!1589021)))))

(declare-fun bs!661828 () Bool)

(assert (= bs!661828 d!1303837))

(declare-fun m!5015837 () Bool)

(assert (=> bs!661828 m!5015837))

(assert (=> b!4378061 d!1303837))

(declare-fun d!1303839 () Bool)

(declare-fun c!744806 () Bool)

(assert (=> d!1303839 (= c!744806 ((_ is Nil!49156) (toList!3142 lt!1588597)))))

(declare-fun e!2725957 () (InoxSet tuple2!48686))

(assert (=> d!1303839 (= (content!7813 (toList!3142 lt!1588597)) e!2725957)))

(declare-fun b!4379276 () Bool)

(assert (=> b!4379276 (= e!2725957 ((as const (Array tuple2!48686 Bool)) false))))

(declare-fun b!4379277 () Bool)

(assert (=> b!4379277 (= e!2725957 ((_ map or) (store ((as const (Array tuple2!48686 Bool)) false) (h!54753 (toList!3142 lt!1588597)) true) (content!7813 (t!356206 (toList!3142 lt!1588597)))))))

(assert (= (and d!1303839 c!744806) b!4379276))

(assert (= (and d!1303839 (not c!744806)) b!4379277))

(declare-fun m!5015839 () Bool)

(assert (=> b!4379277 m!5015839))

(declare-fun m!5015841 () Bool)

(assert (=> b!4379277 m!5015841))

(assert (=> d!1303271 d!1303839))

(declare-fun d!1303841 () Bool)

(declare-fun c!744807 () Bool)

(assert (=> d!1303841 (= c!744807 ((_ is Nil!49156) (toList!3142 lt!1588598)))))

(declare-fun e!2725958 () (InoxSet tuple2!48686))

(assert (=> d!1303841 (= (content!7813 (toList!3142 lt!1588598)) e!2725958)))

(declare-fun b!4379278 () Bool)

(assert (=> b!4379278 (= e!2725958 ((as const (Array tuple2!48686 Bool)) false))))

(declare-fun b!4379279 () Bool)

(assert (=> b!4379279 (= e!2725958 ((_ map or) (store ((as const (Array tuple2!48686 Bool)) false) (h!54753 (toList!3142 lt!1588598)) true) (content!7813 (t!356206 (toList!3142 lt!1588598)))))))

(assert (= (and d!1303841 c!744807) b!4379278))

(assert (= (and d!1303841 (not c!744807)) b!4379279))

(declare-fun m!5015843 () Bool)

(assert (=> b!4379279 m!5015843))

(declare-fun m!5015845 () Bool)

(assert (=> b!4379279 m!5015845))

(assert (=> d!1303271 d!1303841))

(declare-fun d!1303843 () Bool)

(declare-fun lt!1589912 () Bool)

(assert (=> d!1303843 (= lt!1589912 (select (content!7814 (toList!3141 lt!1589094)) lt!1588608))))

(declare-fun e!2725959 () Bool)

(assert (=> d!1303843 (= lt!1589912 e!2725959)))

(declare-fun res!1803444 () Bool)

(assert (=> d!1303843 (=> (not res!1803444) (not e!2725959))))

(assert (=> d!1303843 (= res!1803444 ((_ is Cons!49157) (toList!3141 lt!1589094)))))

(assert (=> d!1303843 (= (contains!11487 (toList!3141 lt!1589094) lt!1588608) lt!1589912)))

(declare-fun b!4379280 () Bool)

(declare-fun e!2725960 () Bool)

(assert (=> b!4379280 (= e!2725959 e!2725960)))

(declare-fun res!1803443 () Bool)

(assert (=> b!4379280 (=> res!1803443 e!2725960)))

(assert (=> b!4379280 (= res!1803443 (= (h!54754 (toList!3141 lt!1589094)) lt!1588608))))

(declare-fun b!4379281 () Bool)

(assert (=> b!4379281 (= e!2725960 (contains!11487 (t!356207 (toList!3141 lt!1589094)) lt!1588608))))

(assert (= (and d!1303843 res!1803444) b!4379280))

(assert (= (and b!4379280 (not res!1803443)) b!4379281))

(declare-fun m!5015847 () Bool)

(assert (=> d!1303843 m!5015847))

(declare-fun m!5015849 () Bool)

(assert (=> d!1303843 m!5015849))

(declare-fun m!5015851 () Bool)

(assert (=> b!4379281 m!5015851))

(assert (=> b!4378130 d!1303843))

(declare-fun bs!661841 () Bool)

(declare-fun b!4379283 () Bool)

(assert (= bs!661841 (and b!4379283 b!4379234)))

(declare-fun lambda!145306 () Int)

(assert (=> bs!661841 (= (= (toList!3142 lt!1588597) (Cons!49156 (h!54753 (toList!3142 lt!1588598)) (t!356206 (toList!3142 lt!1588598)))) (= lambda!145306 lambda!145300))))

(declare-fun bs!661842 () Bool)

(assert (= bs!661842 (and b!4379283 b!4378638)))

(assert (=> bs!661842 (= (= (toList!3142 lt!1588597) (t!356206 (toList!3142 lt!1588597))) (= lambda!145306 lambda!145256))))

(declare-fun bs!661843 () Bool)

(assert (= bs!661843 (and b!4379283 b!4378931)))

(assert (=> bs!661843 (= (= (toList!3142 lt!1588597) (toList!3142 lt!1588610)) (= lambda!145306 lambda!145280))))

(declare-fun bs!661844 () Bool)

(assert (= bs!661844 (and b!4379283 b!4379231)))

(assert (=> bs!661844 (= (= (toList!3142 lt!1588597) (toList!3142 lt!1588598)) (= lambda!145306 lambda!145301))))

(declare-fun bs!661845 () Bool)

(assert (= bs!661845 (and b!4379283 b!4378934)))

(assert (=> bs!661845 (= (= (toList!3142 lt!1588597) (Cons!49156 (h!54753 (toList!3142 lt!1588610)) (t!356206 (toList!3142 lt!1588610)))) (= lambda!145306 lambda!145279))))

(declare-fun bs!661846 () Bool)

(assert (= bs!661846 (and b!4379283 b!4378634)))

(assert (=> bs!661846 (= lambda!145306 lambda!145258)))

(declare-fun bs!661847 () Bool)

(assert (= bs!661847 (and b!4379283 b!4379235)))

(assert (=> bs!661847 (= (= (toList!3142 lt!1588597) (t!356206 (toList!3142 lt!1588598))) (= lambda!145306 lambda!145299))))

(declare-fun bs!661848 () Bool)

(assert (= bs!661848 (and b!4379283 b!4378500)))

(assert (=> bs!661848 (= (= (toList!3142 lt!1588597) (toList!3142 lt!1589006)) (= lambda!145306 lambda!145234))))

(declare-fun bs!661849 () Bool)

(assert (= bs!661849 (and b!4379283 b!4378455)))

(assert (=> bs!661849 (= (= (toList!3142 lt!1588597) (toList!3142 lt!1588598)) (= lambda!145306 lambda!145224))))

(declare-fun bs!661850 () Bool)

(assert (= bs!661850 (and b!4379283 b!4378935)))

(assert (=> bs!661850 (= (= (toList!3142 lt!1588597) (t!356206 (toList!3142 lt!1588610))) (= lambda!145306 lambda!145278))))

(declare-fun bs!661851 () Bool)

(assert (= bs!661851 (and b!4379283 b!4378158)))

(assert (=> bs!661851 (= (= (toList!3142 lt!1588597) (toList!3142 lt!1588610)) (= lambda!145306 lambda!145184))))

(declare-fun bs!661852 () Bool)

(assert (= bs!661852 (and b!4379283 b!4378637)))

(assert (=> bs!661852 (= (= (toList!3142 lt!1588597) (Cons!49156 (h!54753 (toList!3142 lt!1588597)) (t!356206 (toList!3142 lt!1588597)))) (= lambda!145306 lambda!145257))))

(assert (=> b!4379283 true))

(declare-fun bs!661853 () Bool)

(declare-fun b!4379284 () Bool)

(assert (= bs!661853 (and b!4379284 b!4379238)))

(declare-fun lambda!145307 () Int)

(assert (=> bs!661853 (= lambda!145307 lambda!145303)))

(declare-fun bs!661854 () Bool)

(assert (= bs!661854 (and b!4379284 b!4378456)))

(assert (=> bs!661854 (= lambda!145307 lambda!145225)))

(declare-fun bs!661855 () Bool)

(assert (= bs!661855 (and b!4379284 b!4378501)))

(assert (=> bs!661855 (= lambda!145307 lambda!145235)))

(declare-fun bs!661856 () Bool)

(assert (= bs!661856 (and b!4379284 b!4378938)))

(assert (=> bs!661856 (= lambda!145307 lambda!145281)))

(declare-fun bs!661857 () Bool)

(assert (= bs!661857 (and b!4379284 b!4378641)))

(assert (=> bs!661857 (= lambda!145307 lambda!145259)))

(declare-fun bs!661858 () Bool)

(assert (= bs!661858 (and b!4379284 b!4378159)))

(assert (=> bs!661858 (= lambda!145307 lambda!145185)))

(declare-fun d!1303845 () Bool)

(declare-fun e!2725961 () Bool)

(assert (=> d!1303845 e!2725961))

(declare-fun res!1803447 () Bool)

(assert (=> d!1303845 (=> (not res!1803447) (not e!2725961))))

(declare-fun lt!1589913 () List!49283)

(assert (=> d!1303845 (= res!1803447 (noDuplicate!619 lt!1589913))))

(assert (=> d!1303845 (= lt!1589913 (getKeysList!171 (toList!3142 lt!1588597)))))

(assert (=> d!1303845 (= (keys!16669 lt!1588597) lt!1589913)))

(declare-fun b!4379282 () Bool)

(declare-fun res!1803445 () Bool)

(assert (=> b!4379282 (=> (not res!1803445) (not e!2725961))))

(assert (=> b!4379282 (= res!1803445 (= (length!94 lt!1589913) (length!95 (toList!3142 lt!1588597))))))

(declare-fun res!1803446 () Bool)

(assert (=> b!4379283 (=> (not res!1803446) (not e!2725961))))

(assert (=> b!4379283 (= res!1803446 (forall!9274 lt!1589913 lambda!145306))))

(assert (=> b!4379284 (= e!2725961 (= (content!7811 lt!1589913) (content!7811 (map!10705 (toList!3142 lt!1588597) lambda!145307))))))

(assert (= (and d!1303845 res!1803447) b!4379282))

(assert (= (and b!4379282 res!1803445) b!4379283))

(assert (= (and b!4379283 res!1803446) b!4379284))

(declare-fun m!5015889 () Bool)

(assert (=> d!1303845 m!5015889))

(assert (=> d!1303845 m!5013655))

(declare-fun m!5015891 () Bool)

(assert (=> b!4379282 m!5015891))

(assert (=> b!4379282 m!5014609))

(declare-fun m!5015893 () Bool)

(assert (=> b!4379283 m!5015893))

(declare-fun m!5015895 () Bool)

(assert (=> b!4379284 m!5015895))

(declare-fun m!5015897 () Bool)

(assert (=> b!4379284 m!5015897))

(assert (=> b!4379284 m!5015897))

(declare-fun m!5015899 () Bool)

(assert (=> b!4379284 m!5015899))

(assert (=> b!4378074 d!1303845))

(declare-fun bs!661861 () Bool)

(declare-fun d!1303849 () Bool)

(assert (= bs!661861 (and d!1303849 d!1303421)))

(declare-fun lambda!145309 () Int)

(assert (=> bs!661861 (= lambda!145309 lambda!145223)))

(declare-fun bs!661863 () Bool)

(assert (= bs!661863 (and d!1303849 d!1303273)))

(assert (=> bs!661863 (= lambda!145309 lambda!145169)))

(declare-fun bs!661865 () Bool)

(assert (= bs!661865 (and d!1303849 d!1303259)))

(assert (=> bs!661865 (= lambda!145309 lambda!145163)))

(declare-fun bs!661867 () Bool)

(assert (= bs!661867 (and d!1303849 d!1303275)))

(assert (=> bs!661867 (= lambda!145309 lambda!145172)))

(declare-fun bs!661869 () Bool)

(assert (= bs!661869 (and d!1303849 d!1303175)))

(assert (=> bs!661869 (= lambda!145309 lambda!145079)))

(declare-fun bs!661871 () Bool)

(assert (= bs!661871 (and d!1303849 start!425120)))

(assert (=> bs!661871 (= lambda!145309 lambda!145061)))

(declare-fun bs!661872 () Bool)

(assert (= bs!661872 (and d!1303849 d!1303267)))

(assert (=> bs!661872 (= lambda!145309 lambda!145168)))

(declare-fun bs!661873 () Bool)

(assert (= bs!661873 (and d!1303849 d!1303719)))

(assert (=> bs!661873 (= lambda!145309 lambda!145290)))

(declare-fun bs!661874 () Bool)

(assert (= bs!661874 (and d!1303849 d!1303157)))

(assert (=> bs!661874 (not (= lambda!145309 lambda!145064))))

(declare-fun lt!1589915 () ListMap!2385)

(assert (=> d!1303849 (invariantList!723 (toList!3142 lt!1589915))))

(declare-fun e!2725963 () ListMap!2385)

(assert (=> d!1303849 (= lt!1589915 e!2725963)))

(declare-fun c!744809 () Bool)

(assert (=> d!1303849 (= c!744809 ((_ is Cons!49157) (toList!3141 (+!789 lm!1707 (tuple2!48689 hash!377 lt!1588599)))))))

(assert (=> d!1303849 (forall!9271 (toList!3141 (+!789 lm!1707 (tuple2!48689 hash!377 lt!1588599))) lambda!145309)))

(assert (=> d!1303849 (= (extractMap!638 (toList!3141 (+!789 lm!1707 (tuple2!48689 hash!377 lt!1588599)))) lt!1589915)))

(declare-fun b!4379287 () Bool)

(assert (=> b!4379287 (= e!2725963 (addToMapMapFromBucket!260 (_2!27638 (h!54754 (toList!3141 (+!789 lm!1707 (tuple2!48689 hash!377 lt!1588599))))) (extractMap!638 (t!356207 (toList!3141 (+!789 lm!1707 (tuple2!48689 hash!377 lt!1588599)))))))))

(declare-fun b!4379288 () Bool)

(assert (=> b!4379288 (= e!2725963 (ListMap!2386 Nil!49156))))

(assert (= (and d!1303849 c!744809) b!4379287))

(assert (= (and d!1303849 (not c!744809)) b!4379288))

(declare-fun m!5015909 () Bool)

(assert (=> d!1303849 m!5015909))

(declare-fun m!5015911 () Bool)

(assert (=> d!1303849 m!5015911))

(declare-fun m!5015913 () Bool)

(assert (=> b!4379287 m!5015913))

(assert (=> b!4379287 m!5015913))

(declare-fun m!5015915 () Bool)

(assert (=> b!4379287 m!5015915))

(assert (=> d!1303275 d!1303849))

(assert (=> d!1303275 d!1303257))

(declare-fun d!1303853 () Bool)

(assert (=> d!1303853 (= (eq!317 (extractMap!638 (toList!3141 (+!789 lm!1707 (tuple2!48689 hash!377 lt!1588599)))) (-!254 (extractMap!638 (toList!3141 lm!1707)) key!3918)) (= (content!7813 (toList!3142 (extractMap!638 (toList!3141 (+!789 lm!1707 (tuple2!48689 hash!377 lt!1588599)))))) (content!7813 (toList!3142 (-!254 (extractMap!638 (toList!3141 lm!1707)) key!3918)))))))

(declare-fun bs!661875 () Bool)

(assert (= bs!661875 d!1303853))

(declare-fun m!5015917 () Bool)

(assert (=> bs!661875 m!5015917))

(declare-fun m!5015919 () Bool)

(assert (=> bs!661875 m!5015919))

(assert (=> d!1303275 d!1303853))

(declare-fun d!1303855 () Bool)

(assert (=> d!1303855 (eq!317 (extractMap!638 (toList!3141 (+!789 lm!1707 (tuple2!48689 hash!377 lt!1588599)))) (-!254 (extractMap!638 (toList!3141 lm!1707)) key!3918))))

(assert (=> d!1303855 true))

(declare-fun _$8!539 () Unit!75116)

(assert (=> d!1303855 (= (choose!27298 lm!1707 hash!377 lt!1588599 key!3918 hashF!1247) _$8!539)))

(declare-fun bs!661948 () Bool)

(assert (= bs!661948 d!1303855))

(assert (=> bs!661948 m!5012939))

(assert (=> bs!661948 m!5012939))

(assert (=> bs!661948 m!5013637))

(assert (=> bs!661948 m!5013641))

(assert (=> bs!661948 m!5012973))

(assert (=> bs!661948 m!5013641))

(assert (=> bs!661948 m!5013637))

(assert (=> bs!661948 m!5013643))

(assert (=> d!1303275 d!1303855))

(declare-fun d!1303861 () Bool)

(declare-fun res!1803453 () Bool)

(declare-fun e!2725969 () Bool)

(assert (=> d!1303861 (=> res!1803453 e!2725969)))

(assert (=> d!1303861 (= res!1803453 ((_ is Nil!49157) (toList!3141 lm!1707)))))

(assert (=> d!1303861 (= (forall!9271 (toList!3141 lm!1707) lambda!145172) e!2725969)))

(declare-fun b!4379296 () Bool)

(declare-fun e!2725970 () Bool)

(assert (=> b!4379296 (= e!2725969 e!2725970)))

(declare-fun res!1803454 () Bool)

(assert (=> b!4379296 (=> (not res!1803454) (not e!2725970))))

(assert (=> b!4379296 (= res!1803454 (dynLambda!20709 lambda!145172 (h!54754 (toList!3141 lm!1707))))))

(declare-fun b!4379297 () Bool)

(assert (=> b!4379297 (= e!2725970 (forall!9271 (t!356207 (toList!3141 lm!1707)) lambda!145172))))

(assert (= (and d!1303861 (not res!1803453)) b!4379296))

(assert (= (and b!4379296 res!1803454) b!4379297))

(declare-fun b_lambda!135093 () Bool)

(assert (=> (not b_lambda!135093) (not b!4379296)))

(declare-fun m!5015927 () Bool)

(assert (=> b!4379296 m!5015927))

(declare-fun m!5015929 () Bool)

(assert (=> b!4379297 m!5015929))

(assert (=> d!1303275 d!1303861))

(assert (=> d!1303275 d!1303175))

(declare-fun d!1303863 () Bool)

(declare-fun e!2725971 () Bool)

(assert (=> d!1303863 e!2725971))

(declare-fun res!1803455 () Bool)

(assert (=> d!1303863 (=> (not res!1803455) (not e!2725971))))

(declare-fun lt!1589938 () ListMap!2385)

(assert (=> d!1303863 (= res!1803455 (not (contains!11488 lt!1589938 key!3918)))))

(assert (=> d!1303863 (= lt!1589938 (ListMap!2386 (removePresrvNoDuplicatedKeys!38 (toList!3142 (extractMap!638 (toList!3141 lm!1707))) key!3918)))))

(assert (=> d!1303863 (= (-!254 (extractMap!638 (toList!3141 lm!1707)) key!3918) lt!1589938)))

(declare-fun b!4379298 () Bool)

(assert (=> b!4379298 (= e!2725971 (= ((_ map and) (content!7811 (keys!16669 (extractMap!638 (toList!3141 lm!1707)))) ((_ map not) (store ((as const (Array K!10515 Bool)) false) key!3918 true))) (content!7811 (keys!16669 lt!1589938))))))

(assert (= (and d!1303863 res!1803455) b!4379298))

(declare-fun m!5015931 () Bool)

(assert (=> d!1303863 m!5015931))

(declare-fun m!5015933 () Bool)

(assert (=> d!1303863 m!5015933))

(assert (=> b!4379298 m!5012939))

(declare-fun m!5015935 () Bool)

(assert (=> b!4379298 m!5015935))

(assert (=> b!4379298 m!5013575))

(declare-fun m!5015937 () Bool)

(assert (=> b!4379298 m!5015937))

(assert (=> b!4379298 m!5015935))

(declare-fun m!5015939 () Bool)

(assert (=> b!4379298 m!5015939))

(assert (=> b!4379298 m!5015937))

(declare-fun m!5015941 () Bool)

(assert (=> b!4379298 m!5015941))

(assert (=> d!1303275 d!1303863))

(declare-fun d!1303865 () Bool)

(declare-fun c!744811 () Bool)

(assert (=> d!1303865 (= c!744811 (and ((_ is Cons!49156) (toList!3142 lt!1588955)) (= (_1!27637 (h!54753 (toList!3142 lt!1588955))) (_1!27637 lt!1588602))))))

(declare-fun e!2725972 () Option!10559)

(assert (=> d!1303865 (= (getValueByKey!545 (toList!3142 lt!1588955) (_1!27637 lt!1588602)) e!2725972)))

(declare-fun b!4379300 () Bool)

(declare-fun e!2725973 () Option!10559)

(assert (=> b!4379300 (= e!2725972 e!2725973)))

(declare-fun c!744812 () Bool)

(assert (=> b!4379300 (= c!744812 (and ((_ is Cons!49156) (toList!3142 lt!1588955)) (not (= (_1!27637 (h!54753 (toList!3142 lt!1588955))) (_1!27637 lt!1588602)))))))

(declare-fun b!4379299 () Bool)

(assert (=> b!4379299 (= e!2725972 (Some!10558 (_2!27637 (h!54753 (toList!3142 lt!1588955)))))))

(declare-fun b!4379301 () Bool)

(assert (=> b!4379301 (= e!2725973 (getValueByKey!545 (t!356206 (toList!3142 lt!1588955)) (_1!27637 lt!1588602)))))

(declare-fun b!4379302 () Bool)

(assert (=> b!4379302 (= e!2725973 None!10558)))

(assert (= (and d!1303865 c!744811) b!4379299))

(assert (= (and d!1303865 (not c!744811)) b!4379300))

(assert (= (and b!4379300 c!744812) b!4379301))

(assert (= (and b!4379300 (not c!744812)) b!4379302))

(declare-fun m!5015943 () Bool)

(assert (=> b!4379301 m!5015943))

(assert (=> b!4378027 d!1303865))

(declare-fun bs!661972 () Bool)

(declare-fun d!1303867 () Bool)

(assert (= bs!661972 (and d!1303867 b!4378702)))

(declare-fun lambda!145314 () Int)

(assert (=> bs!661972 (= (= (+!790 lt!1588594 lt!1588602) lt!1589406) (= lambda!145314 lambda!145265))))

(declare-fun bs!661975 () Bool)

(assert (= bs!661975 (and d!1303867 b!4378969)))

(assert (=> bs!661975 (= (= (+!790 lt!1588594 lt!1588602) lt!1589671) (= lambda!145314 lambda!145288))))

(declare-fun bs!661977 () Bool)

(assert (= bs!661977 (and d!1303867 b!4378460)))

(assert (=> bs!661977 (= (= (+!790 lt!1588594 lt!1588602) lt!1589239) (= lambda!145314 lambda!145228))))

(declare-fun bs!661979 () Bool)

(assert (= bs!661979 (and d!1303867 d!1303179)))

(assert (=> bs!661979 (= (= (+!790 lt!1588594 lt!1588602) lt!1588922) (= lambda!145314 lambda!145155))))

(declare-fun bs!661981 () Bool)

(assert (= bs!661981 (and d!1303867 b!4378412)))

(assert (=> bs!661981 (= (= (+!790 lt!1588594 lt!1588602) lt!1589205) (= lambda!145314 lambda!145217))))

(declare-fun bs!661982 () Bool)

(assert (= bs!661982 (and d!1303867 b!4378047)))

(assert (=> bs!661982 (= lambda!145314 lambda!145160)))

(declare-fun bs!661983 () Bool)

(assert (= bs!661983 (and d!1303867 d!1303643)))

(assert (=> bs!661983 (= (= (+!790 lt!1588594 lt!1588602) lt!1589561) (= lambda!145314 lambda!145274))))

(declare-fun bs!661984 () Bool)

(assert (= bs!661984 (and d!1303867 b!4378411)))

(assert (=> bs!661984 (= (= (+!790 lt!1588594 lt!1588602) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145314 lambda!145213))))

(declare-fun bs!661986 () Bool)

(assert (= bs!661986 (and d!1303867 b!4378869)))

(assert (=> bs!661986 (= (= (+!790 lt!1588594 lt!1588602) lt!1589551) (= lambda!145314 lambda!145272))))

(declare-fun bs!661988 () Bool)

(assert (= bs!661988 (and d!1303867 b!4378290)))

(assert (=> bs!661988 (= (= (+!790 lt!1588594 lt!1588602) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145314 lambda!145192))))

(declare-fun bs!661990 () Bool)

(assert (= bs!661990 (and d!1303867 d!1303255)))

(assert (=> bs!661990 (= (= (+!790 lt!1588594 lt!1588602) lt!1588981) (= lambda!145314 lambda!145162))))

(declare-fun bs!661992 () Bool)

(assert (= bs!661992 (and d!1303867 d!1303383)))

(assert (=> bs!661992 (= (= (+!790 lt!1588594 lt!1588602) lt!1589011) (= lambda!145314 lambda!145200))))

(declare-fun bs!661993 () Bool)

(assert (= bs!661993 (and d!1303867 b!4378968)))

(assert (=> bs!661993 (= (= (+!790 lt!1588594 lt!1588602) (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145314 lambda!145283))))

(declare-fun bs!661995 () Bool)

(assert (= bs!661995 (and d!1303867 b!4377997)))

(assert (=> bs!661995 (= (= (+!790 lt!1588594 lt!1588602) lt!1588912) (= lambda!145314 lambda!145154))))

(declare-fun bs!661997 () Bool)

(assert (= bs!661997 (and d!1303867 b!4378063)))

(assert (=> bs!661997 (= (= (+!790 lt!1588594 lt!1588602) lt!1589011) (= lambda!145314 lambda!145166))))

(declare-fun bs!661999 () Bool)

(assert (= bs!661999 (and d!1303867 b!4378062)))

(assert (=> bs!661999 (= (= (+!790 lt!1588594 lt!1588602) lt!1588594) (= lambda!145314 lambda!145164))))

(declare-fun bs!662001 () Bool)

(assert (= bs!662001 (and d!1303867 b!4377996)))

(assert (=> bs!662001 (= (= (+!790 lt!1588594 lt!1588602) lt!1588594) (= lambda!145314 lambda!145152))))

(declare-fun bs!662002 () Bool)

(assert (= bs!662002 (and d!1303867 b!4378291)))

(assert (=> bs!662002 (= (= (+!790 lt!1588594 lt!1588602) lt!1589142) (= lambda!145314 lambda!145194))))

(declare-fun bs!662003 () Bool)

(assert (= bs!662003 (and d!1303867 b!4378090)))

(assert (=> bs!662003 (= (= (+!790 lt!1588594 lt!1588602) lt!1588594) (= lambda!145314 lambda!145174))))

(declare-fun bs!662005 () Bool)

(assert (= bs!662005 (and d!1303867 d!1303603)))

(assert (=> bs!662005 (= (= (+!790 lt!1588594 lt!1588602) lt!1589416) (= lambda!145314 lambda!145266))))

(declare-fun bs!662006 () Bool)

(assert (= bs!662006 (and d!1303867 b!4378701)))

(assert (=> bs!662006 (= (= (+!790 lt!1588594 lt!1588602) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145314 lambda!145263))))

(declare-fun bs!662007 () Bool)

(assert (= bs!662007 (and d!1303867 d!1303433)))

(assert (=> bs!662007 (= (= (+!790 lt!1588594 lt!1588602) lt!1589250) (= lambda!145314 lambda!145231))))

(declare-fun bs!662008 () Bool)

(assert (= bs!662008 (and d!1303867 d!1303403)))

(assert (=> bs!662008 (= (= (+!790 lt!1588594 lt!1588602) lt!1589215) (= lambda!145314 lambda!145218))))

(assert (=> bs!661972 (= (= (+!790 lt!1588594 lt!1588602) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145314 lambda!145264))))

(declare-fun bs!662009 () Bool)

(assert (= bs!662009 (and d!1303867 b!4378459)))

(assert (=> bs!662009 (= (= (+!790 lt!1588594 lt!1588602) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145314 lambda!145226))))

(declare-fun bs!662010 () Bool)

(assert (= bs!662010 (and d!1303867 b!4378868)))

(assert (=> bs!662010 (= (= (+!790 lt!1588594 lt!1588602) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145314 lambda!145267))))

(declare-fun bs!662011 () Bool)

(assert (= bs!662011 (and d!1303867 d!1303361)))

(assert (=> bs!662011 (= (= (+!790 lt!1588594 lt!1588602) lt!1589152) (= lambda!145314 lambda!145195))))

(assert (=> bs!661981 (= (= (+!790 lt!1588594 lt!1588602) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145314 lambda!145215))))

(assert (=> bs!661975 (= (= (+!790 lt!1588594 lt!1588602) (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145314 lambda!145286))))

(assert (=> bs!661977 (= (= (+!790 lt!1588594 lt!1588602) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145314 lambda!145227))))

(declare-fun bs!662012 () Bool)

(assert (= bs!662012 (and d!1303867 b!4378046)))

(assert (=> bs!662012 (= lambda!145314 lambda!145159)))

(declare-fun bs!662013 () Bool)

(assert (= bs!662013 (and d!1303867 d!1303707)))

(assert (=> bs!662013 (= (= (+!790 lt!1588594 lt!1588602) lt!1589681) (= lambda!145314 lambda!145289))))

(assert (=> bs!661995 (= (= (+!790 lt!1588594 lt!1588602) lt!1588594) (= lambda!145314 lambda!145153))))

(declare-fun bs!662014 () Bool)

(assert (= bs!662014 (and d!1303867 d!1303519)))

(assert (=> bs!662014 (= (= (+!790 lt!1588594 lt!1588602) lt!1588594) (= lambda!145314 lambda!145242))))

(declare-fun bs!662015 () Bool)

(assert (= bs!662015 (and d!1303867 d!1303661)))

(assert (=> bs!662015 (= (= (+!790 lt!1588594 lt!1588602) lt!1588971) (= lambda!145314 lambda!145276))))

(declare-fun bs!662016 () Bool)

(assert (= bs!662016 (and d!1303867 d!1303597)))

(assert (=> bs!662016 (= (= (+!790 lt!1588594 lt!1588602) lt!1589053) (= lambda!145314 lambda!145262))))

(assert (=> bs!661986 (= (= (+!790 lt!1588594 lt!1588602) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145314 lambda!145269))))

(declare-fun bs!662017 () Bool)

(assert (= bs!662017 (and d!1303867 d!1303265)))

(assert (=> bs!662017 (= (= (+!790 lt!1588594 lt!1588602) lt!1589021) (= lambda!145314 lambda!145167))))

(declare-fun bs!662018 () Bool)

(assert (= bs!662018 (and d!1303867 b!4378089)))

(assert (=> bs!662018 (= (= (+!790 lt!1588594 lt!1588602) lt!1588594) (= lambda!145314 lambda!145173))))

(assert (=> bs!662003 (= (= (+!790 lt!1588594 lt!1588602) lt!1589053) (= lambda!145314 lambda!145175))))

(assert (=> bs!661997 (= (= (+!790 lt!1588594 lt!1588602) lt!1588594) (= lambda!145314 lambda!145165))))

(declare-fun bs!662019 () Bool)

(assert (= bs!662019 (and d!1303867 d!1303299)))

(assert (=> bs!662019 (not (= lambda!145314 lambda!145179))))

(assert (=> bs!662002 (= (= (+!790 lt!1588594 lt!1588602) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145314 lambda!145193))))

(assert (=> bs!661982 (= (= (+!790 lt!1588594 lt!1588602) lt!1588971) (= lambda!145314 lambda!145161))))

(declare-fun bs!662020 () Bool)

(assert (= bs!662020 (and d!1303867 d!1303283)))

(assert (=> bs!662020 (= (= (+!790 lt!1588594 lt!1588602) lt!1589063) (= lambda!145314 lambda!145176))))

(assert (=> d!1303867 true))

(assert (=> d!1303867 (forall!9273 (toList!3142 (+!790 lt!1588594 lt!1588602)) lambda!145314)))

(declare-fun lt!1589939 () Unit!75116)

(assert (=> d!1303867 (= lt!1589939 (choose!27313 (+!790 lt!1588594 lt!1588602)))))

(assert (=> d!1303867 (= (lemmaContainsAllItsOwnKeys!105 (+!790 lt!1588594 lt!1588602)) lt!1589939)))

(declare-fun bs!662021 () Bool)

(assert (= bs!662021 d!1303867))

(declare-fun m!5015975 () Bool)

(assert (=> bs!662021 m!5015975))

(assert (=> bs!662021 m!5012945))

(declare-fun m!5015979 () Bool)

(assert (=> bs!662021 m!5015979))

(assert (=> bm!304469 d!1303867))

(assert (=> b!4377864 d!1303315))

(assert (=> b!4378080 d!1303835))

(declare-fun d!1303869 () Bool)

(assert (=> d!1303869 (containsKey!848 (toList!3142 lt!1588598) key!3918)))

(declare-fun lt!1589940 () Unit!75116)

(assert (=> d!1303869 (= lt!1589940 (choose!27317 (toList!3142 lt!1588598) key!3918))))

(assert (=> d!1303869 (invariantList!723 (toList!3142 lt!1588598))))

(assert (=> d!1303869 (= (lemmaInGetKeysListThenContainsKey!169 (toList!3142 lt!1588598) key!3918) lt!1589940)))

(declare-fun bs!662022 () Bool)

(assert (= bs!662022 d!1303869))

(assert (=> bs!662022 m!5013677))

(declare-fun m!5015983 () Bool)

(assert (=> bs!662022 m!5015983))

(assert (=> bs!662022 m!5015641))

(assert (=> b!4378080 d!1303869))

(declare-fun d!1303873 () Bool)

(declare-fun res!1803456 () Bool)

(declare-fun e!2725974 () Bool)

(assert (=> d!1303873 (=> res!1803456 e!2725974)))

(assert (=> d!1303873 (= res!1803456 ((_ is Nil!49156) (toList!3142 lt!1588594)))))

(assert (=> d!1303873 (= (forall!9273 (toList!3142 lt!1588594) lambda!145167) e!2725974)))

(declare-fun b!4379303 () Bool)

(declare-fun e!2725975 () Bool)

(assert (=> b!4379303 (= e!2725974 e!2725975)))

(declare-fun res!1803457 () Bool)

(assert (=> b!4379303 (=> (not res!1803457) (not e!2725975))))

(assert (=> b!4379303 (= res!1803457 (dynLambda!20710 lambda!145167 (h!54753 (toList!3142 lt!1588594))))))

(declare-fun b!4379304 () Bool)

(assert (=> b!4379304 (= e!2725975 (forall!9273 (t!356206 (toList!3142 lt!1588594)) lambda!145167))))

(assert (= (and d!1303873 (not res!1803456)) b!4379303))

(assert (= (and b!4379303 res!1803457) b!4379304))

(declare-fun b_lambda!135095 () Bool)

(assert (=> (not b_lambda!135095) (not b!4379303)))

(declare-fun m!5015985 () Bool)

(assert (=> b!4379303 m!5015985))

(declare-fun m!5015987 () Bool)

(assert (=> b!4379304 m!5015987))

(assert (=> b!4378064 d!1303873))

(assert (=> bm!304477 d!1303519))

(declare-fun d!1303875 () Bool)

(assert (=> d!1303875 (= (invariantList!723 (toList!3142 lt!1588689)) (noDuplicatedKeys!135 (toList!3142 lt!1588689)))))

(declare-fun bs!662026 () Bool)

(assert (= bs!662026 d!1303875))

(declare-fun m!5015989 () Bool)

(assert (=> bs!662026 m!5015989))

(assert (=> d!1303175 d!1303875))

(declare-fun d!1303877 () Bool)

(declare-fun res!1803458 () Bool)

(declare-fun e!2725977 () Bool)

(assert (=> d!1303877 (=> res!1803458 e!2725977)))

(assert (=> d!1303877 (= res!1803458 ((_ is Nil!49157) (toList!3141 lm!1707)))))

(assert (=> d!1303877 (= (forall!9271 (toList!3141 lm!1707) lambda!145079) e!2725977)))

(declare-fun b!4379307 () Bool)

(declare-fun e!2725978 () Bool)

(assert (=> b!4379307 (= e!2725977 e!2725978)))

(declare-fun res!1803459 () Bool)

(assert (=> b!4379307 (=> (not res!1803459) (not e!2725978))))

(assert (=> b!4379307 (= res!1803459 (dynLambda!20709 lambda!145079 (h!54754 (toList!3141 lm!1707))))))

(declare-fun b!4379308 () Bool)

(assert (=> b!4379308 (= e!2725978 (forall!9271 (t!356207 (toList!3141 lm!1707)) lambda!145079))))

(assert (= (and d!1303877 (not res!1803458)) b!4379307))

(assert (= (and b!4379307 res!1803459) b!4379308))

(declare-fun b_lambda!135097 () Bool)

(assert (=> (not b_lambda!135097) (not b!4379307)))

(declare-fun m!5015991 () Bool)

(assert (=> b!4379307 m!5015991))

(declare-fun m!5015993 () Bool)

(assert (=> b!4379308 m!5015993))

(assert (=> d!1303175 d!1303877))

(assert (=> d!1303245 d!1303279))

(assert (=> d!1303245 d!1303281))

(declare-fun d!1303879 () Bool)

(assert (=> d!1303879 (= (contains!11488 lt!1588597 key!3918) (contains!11488 lt!1588598 key!3918))))

(assert (=> d!1303879 true))

(declare-fun _$68!766 () Unit!75116)

(assert (=> d!1303879 (= (choose!27293 lt!1588597 lt!1588598 key!3918) _$68!766)))

(declare-fun bs!662032 () Bool)

(assert (= bs!662032 d!1303879))

(assert (=> bs!662032 m!5012969))

(assert (=> bs!662032 m!5012959))

(assert (=> d!1303245 d!1303879))

(assert (=> d!1303245 d!1303271))

(declare-fun d!1303887 () Bool)

(declare-fun e!2725981 () Bool)

(assert (=> d!1303887 e!2725981))

(declare-fun res!1803460 () Bool)

(assert (=> d!1303887 (=> (not res!1803460) (not e!2725981))))

(declare-fun lt!1589942 () ListMap!2385)

(assert (=> d!1303887 (= res!1803460 (contains!11488 lt!1589942 (_1!27637 (h!54753 lt!1588612))))))

(declare-fun lt!1589943 () List!49280)

(assert (=> d!1303887 (= lt!1589942 (ListMap!2386 lt!1589943))))

(declare-fun lt!1589944 () Unit!75116)

(declare-fun lt!1589945 () Unit!75116)

(assert (=> d!1303887 (= lt!1589944 lt!1589945)))

(assert (=> d!1303887 (= (getValueByKey!545 lt!1589943 (_1!27637 (h!54753 lt!1588612))) (Some!10558 (_2!27637 (h!54753 lt!1588612))))))

(assert (=> d!1303887 (= lt!1589945 (lemmaContainsTupThenGetReturnValue!309 lt!1589943 (_1!27637 (h!54753 lt!1588612)) (_2!27637 (h!54753 lt!1588612))))))

(assert (=> d!1303887 (= lt!1589943 (insertNoDuplicatedKeys!141 (toList!3142 lt!1588594) (_1!27637 (h!54753 lt!1588612)) (_2!27637 (h!54753 lt!1588612))))))

(assert (=> d!1303887 (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589942)))

(declare-fun b!4379313 () Bool)

(declare-fun res!1803461 () Bool)

(assert (=> b!4379313 (=> (not res!1803461) (not e!2725981))))

(assert (=> b!4379313 (= res!1803461 (= (getValueByKey!545 (toList!3142 lt!1589942) (_1!27637 (h!54753 lt!1588612))) (Some!10558 (_2!27637 (h!54753 lt!1588612)))))))

(declare-fun b!4379314 () Bool)

(assert (=> b!4379314 (= e!2725981 (contains!11493 (toList!3142 lt!1589942) (h!54753 lt!1588612)))))

(assert (= (and d!1303887 res!1803460) b!4379313))

(assert (= (and b!4379313 res!1803461) b!4379314))

(declare-fun m!5016011 () Bool)

(assert (=> d!1303887 m!5016011))

(declare-fun m!5016013 () Bool)

(assert (=> d!1303887 m!5016013))

(declare-fun m!5016015 () Bool)

(assert (=> d!1303887 m!5016015))

(declare-fun m!5016017 () Bool)

(assert (=> d!1303887 m!5016017))

(declare-fun m!5016019 () Bool)

(assert (=> b!4379313 m!5016019))

(declare-fun m!5016021 () Bool)

(assert (=> b!4379314 m!5016021))

(assert (=> b!4377997 d!1303887))

(declare-fun d!1303889 () Bool)

(declare-fun res!1803462 () Bool)

(declare-fun e!2725982 () Bool)

(assert (=> d!1303889 (=> res!1803462 e!2725982)))

(assert (=> d!1303889 (= res!1803462 ((_ is Nil!49156) (toList!3142 lt!1588594)))))

(assert (=> d!1303889 (= (forall!9273 (toList!3142 lt!1588594) lambda!145154) e!2725982)))

(declare-fun b!4379315 () Bool)

(declare-fun e!2725983 () Bool)

(assert (=> b!4379315 (= e!2725982 e!2725983)))

(declare-fun res!1803463 () Bool)

(assert (=> b!4379315 (=> (not res!1803463) (not e!2725983))))

(assert (=> b!4379315 (= res!1803463 (dynLambda!20710 lambda!145154 (h!54753 (toList!3142 lt!1588594))))))

(declare-fun b!4379316 () Bool)

(assert (=> b!4379316 (= e!2725983 (forall!9273 (t!356206 (toList!3142 lt!1588594)) lambda!145154))))

(assert (= (and d!1303889 (not res!1803462)) b!4379315))

(assert (= (and b!4379315 res!1803463) b!4379316))

(declare-fun b_lambda!135099 () Bool)

(assert (=> (not b_lambda!135099) (not b!4379315)))

(declare-fun m!5016023 () Bool)

(assert (=> b!4379315 m!5016023))

(declare-fun m!5016025 () Bool)

(assert (=> b!4379316 m!5016025))

(assert (=> b!4377997 d!1303889))

(declare-fun d!1303891 () Bool)

(declare-fun res!1803464 () Bool)

(declare-fun e!2725984 () Bool)

(assert (=> d!1303891 (=> res!1803464 e!2725984)))

(assert (=> d!1303891 (= res!1803464 ((_ is Nil!49156) (toList!3142 lt!1588594)))))

(assert (=> d!1303891 (= (forall!9273 (toList!3142 lt!1588594) lambda!145153) e!2725984)))

(declare-fun b!4379317 () Bool)

(declare-fun e!2725985 () Bool)

(assert (=> b!4379317 (= e!2725984 e!2725985)))

(declare-fun res!1803465 () Bool)

(assert (=> b!4379317 (=> (not res!1803465) (not e!2725985))))

(assert (=> b!4379317 (= res!1803465 (dynLambda!20710 lambda!145153 (h!54753 (toList!3142 lt!1588594))))))

(declare-fun b!4379318 () Bool)

(assert (=> b!4379318 (= e!2725985 (forall!9273 (t!356206 (toList!3142 lt!1588594)) lambda!145153))))

(assert (= (and d!1303891 (not res!1803464)) b!4379317))

(assert (= (and b!4379317 res!1803465) b!4379318))

(declare-fun b_lambda!135101 () Bool)

(assert (=> (not b_lambda!135101) (not b!4379317)))

(declare-fun m!5016027 () Bool)

(assert (=> b!4379317 m!5016027))

(declare-fun m!5016029 () Bool)

(assert (=> b!4379318 m!5016029))

(assert (=> b!4377997 d!1303891))

(declare-fun d!1303893 () Bool)

(declare-fun res!1803466 () Bool)

(declare-fun e!2725986 () Bool)

(assert (=> d!1303893 (=> res!1803466 e!2725986)))

(assert (=> d!1303893 (= res!1803466 ((_ is Nil!49156) lt!1588612))))

(assert (=> d!1303893 (= (forall!9273 lt!1588612 lambda!145154) e!2725986)))

(declare-fun b!4379319 () Bool)

(declare-fun e!2725987 () Bool)

(assert (=> b!4379319 (= e!2725986 e!2725987)))

(declare-fun res!1803467 () Bool)

(assert (=> b!4379319 (=> (not res!1803467) (not e!2725987))))

(assert (=> b!4379319 (= res!1803467 (dynLambda!20710 lambda!145154 (h!54753 lt!1588612)))))

(declare-fun b!4379320 () Bool)

(assert (=> b!4379320 (= e!2725987 (forall!9273 (t!356206 lt!1588612) lambda!145154))))

(assert (= (and d!1303893 (not res!1803466)) b!4379319))

(assert (= (and b!4379319 res!1803467) b!4379320))

(declare-fun b_lambda!135103 () Bool)

(assert (=> (not b_lambda!135103) (not b!4379319)))

(declare-fun m!5016031 () Bool)

(assert (=> b!4379319 m!5016031))

(declare-fun m!5016033 () Bool)

(assert (=> b!4379320 m!5016033))

(assert (=> b!4377997 d!1303893))

(declare-fun d!1303895 () Bool)

(declare-fun e!2725988 () Bool)

(assert (=> d!1303895 e!2725988))

(declare-fun res!1803468 () Bool)

(assert (=> d!1303895 (=> res!1803468 e!2725988)))

(declare-fun e!2725992 () Bool)

(assert (=> d!1303895 (= res!1803468 e!2725992)))

(declare-fun res!1803470 () Bool)

(assert (=> d!1303895 (=> (not res!1803470) (not e!2725992))))

(declare-fun lt!1589948 () Bool)

(assert (=> d!1303895 (= res!1803470 (not lt!1589948))))

(declare-fun lt!1589953 () Bool)

(assert (=> d!1303895 (= lt!1589948 lt!1589953)))

(declare-fun lt!1589954 () Unit!75116)

(declare-fun e!2725989 () Unit!75116)

(assert (=> d!1303895 (= lt!1589954 e!2725989)))

(declare-fun c!744817 () Bool)

(assert (=> d!1303895 (= c!744817 lt!1589953)))

(assert (=> d!1303895 (= lt!1589953 (containsKey!848 (toList!3142 lt!1588915) (_1!27637 (h!54753 lt!1588612))))))

(assert (=> d!1303895 (= (contains!11488 lt!1588915 (_1!27637 (h!54753 lt!1588612))) lt!1589948)))

(declare-fun bm!304622 () Bool)

(declare-fun call!304627 () Bool)

(declare-fun e!2725990 () List!49283)

(assert (=> bm!304622 (= call!304627 (contains!11492 e!2725990 (_1!27637 (h!54753 lt!1588612))))))

(declare-fun c!744816 () Bool)

(assert (=> bm!304622 (= c!744816 c!744817)))

(declare-fun b!4379321 () Bool)

(declare-fun e!2725993 () Bool)

(assert (=> b!4379321 (= e!2725988 e!2725993)))

(declare-fun res!1803469 () Bool)

(assert (=> b!4379321 (=> (not res!1803469) (not e!2725993))))

(assert (=> b!4379321 (= res!1803469 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588915) (_1!27637 (h!54753 lt!1588612)))))))

(declare-fun b!4379322 () Bool)

(declare-fun e!2725991 () Unit!75116)

(declare-fun Unit!75435 () Unit!75116)

(assert (=> b!4379322 (= e!2725991 Unit!75435)))

(declare-fun b!4379323 () Bool)

(assert (=> b!4379323 false))

(declare-fun lt!1589950 () Unit!75116)

(declare-fun lt!1589949 () Unit!75116)

(assert (=> b!4379323 (= lt!1589950 lt!1589949)))

(assert (=> b!4379323 (containsKey!848 (toList!3142 lt!1588915) (_1!27637 (h!54753 lt!1588612)))))

(assert (=> b!4379323 (= lt!1589949 (lemmaInGetKeysListThenContainsKey!169 (toList!3142 lt!1588915) (_1!27637 (h!54753 lt!1588612))))))

(declare-fun Unit!75436 () Unit!75116)

(assert (=> b!4379323 (= e!2725991 Unit!75436)))

(declare-fun b!4379324 () Bool)

(declare-fun lt!1589955 () Unit!75116)

(assert (=> b!4379324 (= e!2725989 lt!1589955)))

(declare-fun lt!1589952 () Unit!75116)

(assert (=> b!4379324 (= lt!1589952 (lemmaContainsKeyImpliesGetValueByKeyDefined!455 (toList!3142 lt!1588915) (_1!27637 (h!54753 lt!1588612))))))

(assert (=> b!4379324 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588915) (_1!27637 (h!54753 lt!1588612))))))

(declare-fun lt!1589951 () Unit!75116)

(assert (=> b!4379324 (= lt!1589951 lt!1589952)))

(assert (=> b!4379324 (= lt!1589955 (lemmaInListThenGetKeysListContains!168 (toList!3142 lt!1588915) (_1!27637 (h!54753 lt!1588612))))))

(assert (=> b!4379324 call!304627))

(declare-fun b!4379325 () Bool)

(assert (=> b!4379325 (= e!2725993 (contains!11492 (keys!16669 lt!1588915) (_1!27637 (h!54753 lt!1588612))))))

(declare-fun b!4379326 () Bool)

(assert (=> b!4379326 (= e!2725990 (keys!16669 lt!1588915))))

(declare-fun b!4379327 () Bool)

(assert (=> b!4379327 (= e!2725989 e!2725991)))

(declare-fun c!744818 () Bool)

(assert (=> b!4379327 (= c!744818 call!304627)))

(declare-fun b!4379328 () Bool)

(assert (=> b!4379328 (= e!2725990 (getKeysList!171 (toList!3142 lt!1588915)))))

(declare-fun b!4379329 () Bool)

(assert (=> b!4379329 (= e!2725992 (not (contains!11492 (keys!16669 lt!1588915) (_1!27637 (h!54753 lt!1588612)))))))

(assert (= (and d!1303895 c!744817) b!4379324))

(assert (= (and d!1303895 (not c!744817)) b!4379327))

(assert (= (and b!4379327 c!744818) b!4379323))

(assert (= (and b!4379327 (not c!744818)) b!4379322))

(assert (= (or b!4379324 b!4379327) bm!304622))

(assert (= (and bm!304622 c!744816) b!4379328))

(assert (= (and bm!304622 (not c!744816)) b!4379326))

(assert (= (and d!1303895 res!1803470) b!4379329))

(assert (= (and d!1303895 (not res!1803468)) b!4379321))

(assert (= (and b!4379321 res!1803469) b!4379325))

(declare-fun m!5016035 () Bool)

(assert (=> b!4379329 m!5016035))

(assert (=> b!4379329 m!5016035))

(declare-fun m!5016037 () Bool)

(assert (=> b!4379329 m!5016037))

(declare-fun m!5016039 () Bool)

(assert (=> b!4379328 m!5016039))

(declare-fun m!5016041 () Bool)

(assert (=> b!4379323 m!5016041))

(declare-fun m!5016043 () Bool)

(assert (=> b!4379323 m!5016043))

(assert (=> b!4379326 m!5016035))

(declare-fun m!5016045 () Bool)

(assert (=> bm!304622 m!5016045))

(declare-fun m!5016047 () Bool)

(assert (=> b!4379321 m!5016047))

(assert (=> b!4379321 m!5016047))

(declare-fun m!5016049 () Bool)

(assert (=> b!4379321 m!5016049))

(assert (=> b!4379325 m!5016035))

(assert (=> b!4379325 m!5016035))

(assert (=> b!4379325 m!5016037))

(assert (=> d!1303895 m!5016041))

(declare-fun m!5016051 () Bool)

(assert (=> b!4379324 m!5016051))

(assert (=> b!4379324 m!5016047))

(assert (=> b!4379324 m!5016047))

(assert (=> b!4379324 m!5016049))

(declare-fun m!5016053 () Bool)

(assert (=> b!4379324 m!5016053))

(assert (=> b!4377997 d!1303895))

(declare-fun d!1303897 () Bool)

(assert (=> d!1303897 (dynLambda!20710 lambda!145154 (h!54753 lt!1588612))))

(declare-fun lt!1589957 () Unit!75116)

(assert (=> d!1303897 (= lt!1589957 (choose!27305 (toList!3142 lt!1588915) lambda!145154 (h!54753 lt!1588612)))))

(declare-fun e!2725994 () Bool)

(assert (=> d!1303897 e!2725994))

(declare-fun res!1803471 () Bool)

(assert (=> d!1303897 (=> (not res!1803471) (not e!2725994))))

(assert (=> d!1303897 (= res!1803471 (forall!9273 (toList!3142 lt!1588915) lambda!145154))))

(assert (=> d!1303897 (= (forallContained!1911 (toList!3142 lt!1588915) lambda!145154 (h!54753 lt!1588612)) lt!1589957)))

(declare-fun b!4379330 () Bool)

(assert (=> b!4379330 (= e!2725994 (contains!11493 (toList!3142 lt!1588915) (h!54753 lt!1588612)))))

(assert (= (and d!1303897 res!1803471) b!4379330))

(declare-fun b_lambda!135105 () Bool)

(assert (=> (not b_lambda!135105) (not d!1303897)))

(assert (=> d!1303897 m!5016031))

(declare-fun m!5016055 () Bool)

(assert (=> d!1303897 m!5016055))

(assert (=> d!1303897 m!5013423))

(declare-fun m!5016057 () Bool)

(assert (=> b!4379330 m!5016057))

(assert (=> b!4377997 d!1303897))

(declare-fun bs!662051 () Bool)

(declare-fun b!4379333 () Bool)

(assert (= bs!662051 (and b!4379333 b!4378969)))

(declare-fun lambda!145319 () Int)

(assert (=> bs!662051 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589671) (= lambda!145319 lambda!145288))))

(declare-fun bs!662053 () Bool)

(assert (= bs!662053 (and b!4379333 b!4378460)))

(assert (=> bs!662053 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589239) (= lambda!145319 lambda!145228))))

(declare-fun bs!662056 () Bool)

(assert (= bs!662056 (and b!4379333 d!1303179)))

(assert (=> bs!662056 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588922) (= lambda!145319 lambda!145155))))

(declare-fun bs!662058 () Bool)

(assert (= bs!662058 (and b!4379333 b!4378412)))

(assert (=> bs!662058 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589205) (= lambda!145319 lambda!145217))))

(declare-fun bs!662060 () Bool)

(assert (= bs!662060 (and b!4379333 b!4378047)))

(assert (=> bs!662060 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (+!790 lt!1588594 lt!1588602)) (= lambda!145319 lambda!145160))))

(declare-fun bs!662061 () Bool)

(assert (= bs!662061 (and b!4379333 d!1303643)))

(assert (=> bs!662061 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589561) (= lambda!145319 lambda!145274))))

(declare-fun bs!662062 () Bool)

(assert (= bs!662062 (and b!4379333 b!4378411)))

(assert (=> bs!662062 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145319 lambda!145213))))

(declare-fun bs!662064 () Bool)

(assert (= bs!662064 (and b!4379333 b!4378869)))

(assert (=> bs!662064 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589551) (= lambda!145319 lambda!145272))))

(declare-fun bs!662065 () Bool)

(assert (= bs!662065 (and b!4379333 b!4378290)))

(assert (=> bs!662065 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145319 lambda!145192))))

(declare-fun bs!662067 () Bool)

(assert (= bs!662067 (and b!4379333 d!1303255)))

(assert (=> bs!662067 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588981) (= lambda!145319 lambda!145162))))

(declare-fun bs!662069 () Bool)

(assert (= bs!662069 (and b!4379333 d!1303383)))

(assert (=> bs!662069 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589011) (= lambda!145319 lambda!145200))))

(declare-fun bs!662071 () Bool)

(assert (= bs!662071 (and b!4379333 b!4378968)))

(assert (=> bs!662071 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145319 lambda!145283))))

(declare-fun bs!662073 () Bool)

(assert (= bs!662073 (and b!4379333 b!4377997)))

(assert (=> bs!662073 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588912) (= lambda!145319 lambda!145154))))

(declare-fun bs!662075 () Bool)

(assert (= bs!662075 (and b!4379333 b!4378063)))

(assert (=> bs!662075 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589011) (= lambda!145319 lambda!145166))))

(declare-fun bs!662076 () Bool)

(assert (= bs!662076 (and b!4379333 b!4378702)))

(assert (=> bs!662076 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589406) (= lambda!145319 lambda!145265))))

(declare-fun bs!662077 () Bool)

(assert (= bs!662077 (and b!4379333 d!1303867)))

(assert (=> bs!662077 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (+!790 lt!1588594 lt!1588602)) (= lambda!145319 lambda!145314))))

(declare-fun bs!662078 () Bool)

(assert (= bs!662078 (and b!4379333 b!4378062)))

(assert (=> bs!662078 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588594) (= lambda!145319 lambda!145164))))

(declare-fun bs!662080 () Bool)

(assert (= bs!662080 (and b!4379333 b!4377996)))

(assert (=> bs!662080 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588594) (= lambda!145319 lambda!145152))))

(declare-fun bs!662082 () Bool)

(assert (= bs!662082 (and b!4379333 b!4378291)))

(assert (=> bs!662082 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589142) (= lambda!145319 lambda!145194))))

(declare-fun bs!662084 () Bool)

(assert (= bs!662084 (and b!4379333 b!4378090)))

(assert (=> bs!662084 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588594) (= lambda!145319 lambda!145174))))

(declare-fun bs!662086 () Bool)

(assert (= bs!662086 (and b!4379333 d!1303603)))

(assert (=> bs!662086 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589416) (= lambda!145319 lambda!145266))))

(declare-fun bs!662087 () Bool)

(assert (= bs!662087 (and b!4379333 b!4378701)))

(assert (=> bs!662087 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145319 lambda!145263))))

(declare-fun bs!662089 () Bool)

(assert (= bs!662089 (and b!4379333 d!1303433)))

(assert (=> bs!662089 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589250) (= lambda!145319 lambda!145231))))

(declare-fun bs!662091 () Bool)

(assert (= bs!662091 (and b!4379333 d!1303403)))

(assert (=> bs!662091 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589215) (= lambda!145319 lambda!145218))))

(assert (=> bs!662076 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145319 lambda!145264))))

(declare-fun bs!662093 () Bool)

(assert (= bs!662093 (and b!4379333 b!4378459)))

(assert (=> bs!662093 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145319 lambda!145226))))

(declare-fun bs!662095 () Bool)

(assert (= bs!662095 (and b!4379333 b!4378868)))

(assert (=> bs!662095 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145319 lambda!145267))))

(declare-fun bs!662096 () Bool)

(assert (= bs!662096 (and b!4379333 d!1303361)))

(assert (=> bs!662096 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589152) (= lambda!145319 lambda!145195))))

(assert (=> bs!662058 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145319 lambda!145215))))

(assert (=> bs!662051 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145319 lambda!145286))))

(assert (=> bs!662053 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145319 lambda!145227))))

(declare-fun bs!662098 () Bool)

(assert (= bs!662098 (and b!4379333 b!4378046)))

(assert (=> bs!662098 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (+!790 lt!1588594 lt!1588602)) (= lambda!145319 lambda!145159))))

(declare-fun bs!662099 () Bool)

(assert (= bs!662099 (and b!4379333 d!1303707)))

(assert (=> bs!662099 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589681) (= lambda!145319 lambda!145289))))

(assert (=> bs!662073 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588594) (= lambda!145319 lambda!145153))))

(declare-fun bs!662101 () Bool)

(assert (= bs!662101 (and b!4379333 d!1303519)))

(assert (=> bs!662101 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588594) (= lambda!145319 lambda!145242))))

(declare-fun bs!662102 () Bool)

(assert (= bs!662102 (and b!4379333 d!1303661)))

(assert (=> bs!662102 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588971) (= lambda!145319 lambda!145276))))

(declare-fun bs!662103 () Bool)

(assert (= bs!662103 (and b!4379333 d!1303597)))

(assert (=> bs!662103 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589053) (= lambda!145319 lambda!145262))))

(assert (=> bs!662064 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145319 lambda!145269))))

(declare-fun bs!662104 () Bool)

(assert (= bs!662104 (and b!4379333 d!1303265)))

(assert (=> bs!662104 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589021) (= lambda!145319 lambda!145167))))

(declare-fun bs!662105 () Bool)

(assert (= bs!662105 (and b!4379333 b!4378089)))

(assert (=> bs!662105 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588594) (= lambda!145319 lambda!145173))))

(assert (=> bs!662084 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589053) (= lambda!145319 lambda!145175))))

(assert (=> bs!662075 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588594) (= lambda!145319 lambda!145165))))

(declare-fun bs!662106 () Bool)

(assert (= bs!662106 (and b!4379333 d!1303299)))

(assert (=> bs!662106 (not (= lambda!145319 lambda!145179))))

(assert (=> bs!662082 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145319 lambda!145193))))

(assert (=> bs!662060 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588971) (= lambda!145319 lambda!145161))))

(declare-fun bs!662107 () Bool)

(assert (= bs!662107 (and b!4379333 d!1303283)))

(assert (=> bs!662107 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589063) (= lambda!145319 lambda!145176))))

(assert (=> b!4379333 true))

(declare-fun bs!662108 () Bool)

(declare-fun b!4379334 () Bool)

(assert (= bs!662108 (and b!4379334 b!4378969)))

(declare-fun lambda!145320 () Int)

(assert (=> bs!662108 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589671) (= lambda!145320 lambda!145288))))

(declare-fun bs!662109 () Bool)

(assert (= bs!662109 (and b!4379334 b!4378460)))

(assert (=> bs!662109 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589239) (= lambda!145320 lambda!145228))))

(declare-fun bs!662110 () Bool)

(assert (= bs!662110 (and b!4379334 d!1303179)))

(assert (=> bs!662110 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588922) (= lambda!145320 lambda!145155))))

(declare-fun bs!662111 () Bool)

(assert (= bs!662111 (and b!4379334 b!4378412)))

(assert (=> bs!662111 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589205) (= lambda!145320 lambda!145217))))

(declare-fun bs!662112 () Bool)

(assert (= bs!662112 (and b!4379334 b!4378047)))

(assert (=> bs!662112 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (+!790 lt!1588594 lt!1588602)) (= lambda!145320 lambda!145160))))

(declare-fun bs!662113 () Bool)

(assert (= bs!662113 (and b!4379334 d!1303643)))

(assert (=> bs!662113 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589561) (= lambda!145320 lambda!145274))))

(declare-fun bs!662114 () Bool)

(assert (= bs!662114 (and b!4379334 b!4378411)))

(assert (=> bs!662114 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145320 lambda!145213))))

(declare-fun bs!662115 () Bool)

(assert (= bs!662115 (and b!4379334 b!4378869)))

(assert (=> bs!662115 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589551) (= lambda!145320 lambda!145272))))

(declare-fun bs!662116 () Bool)

(assert (= bs!662116 (and b!4379334 b!4378290)))

(assert (=> bs!662116 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145320 lambda!145192))))

(declare-fun bs!662117 () Bool)

(assert (= bs!662117 (and b!4379334 d!1303383)))

(assert (=> bs!662117 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589011) (= lambda!145320 lambda!145200))))

(declare-fun bs!662118 () Bool)

(assert (= bs!662118 (and b!4379334 b!4378968)))

(assert (=> bs!662118 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145320 lambda!145283))))

(declare-fun bs!662119 () Bool)

(assert (= bs!662119 (and b!4379334 b!4377997)))

(assert (=> bs!662119 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588912) (= lambda!145320 lambda!145154))))

(declare-fun bs!662120 () Bool)

(assert (= bs!662120 (and b!4379334 b!4378063)))

(assert (=> bs!662120 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589011) (= lambda!145320 lambda!145166))))

(declare-fun bs!662121 () Bool)

(assert (= bs!662121 (and b!4379334 b!4378702)))

(assert (=> bs!662121 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589406) (= lambda!145320 lambda!145265))))

(declare-fun bs!662122 () Bool)

(assert (= bs!662122 (and b!4379334 d!1303867)))

(assert (=> bs!662122 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (+!790 lt!1588594 lt!1588602)) (= lambda!145320 lambda!145314))))

(declare-fun bs!662123 () Bool)

(assert (= bs!662123 (and b!4379334 b!4378062)))

(assert (=> bs!662123 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588594) (= lambda!145320 lambda!145164))))

(declare-fun bs!662124 () Bool)

(assert (= bs!662124 (and b!4379334 b!4377996)))

(assert (=> bs!662124 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588594) (= lambda!145320 lambda!145152))))

(declare-fun bs!662125 () Bool)

(assert (= bs!662125 (and b!4379334 b!4378291)))

(assert (=> bs!662125 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589142) (= lambda!145320 lambda!145194))))

(declare-fun bs!662126 () Bool)

(assert (= bs!662126 (and b!4379334 b!4378090)))

(assert (=> bs!662126 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588594) (= lambda!145320 lambda!145174))))

(declare-fun bs!662127 () Bool)

(assert (= bs!662127 (and b!4379334 d!1303603)))

(assert (=> bs!662127 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589416) (= lambda!145320 lambda!145266))))

(declare-fun bs!662128 () Bool)

(assert (= bs!662128 (and b!4379334 b!4378701)))

(assert (=> bs!662128 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145320 lambda!145263))))

(declare-fun bs!662129 () Bool)

(assert (= bs!662129 (and b!4379334 d!1303433)))

(assert (=> bs!662129 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589250) (= lambda!145320 lambda!145231))))

(declare-fun bs!662130 () Bool)

(assert (= bs!662130 (and b!4379334 d!1303403)))

(assert (=> bs!662130 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589215) (= lambda!145320 lambda!145218))))

(assert (=> bs!662121 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145320 lambda!145264))))

(declare-fun bs!662131 () Bool)

(assert (= bs!662131 (and b!4379334 b!4378459)))

(assert (=> bs!662131 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145320 lambda!145226))))

(declare-fun bs!662132 () Bool)

(assert (= bs!662132 (and b!4379334 b!4378868)))

(assert (=> bs!662132 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145320 lambda!145267))))

(declare-fun bs!662133 () Bool)

(assert (= bs!662133 (and b!4379334 d!1303361)))

(assert (=> bs!662133 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589152) (= lambda!145320 lambda!145195))))

(assert (=> bs!662111 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145320 lambda!145215))))

(assert (=> bs!662108 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145320 lambda!145286))))

(assert (=> bs!662109 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145320 lambda!145227))))

(declare-fun bs!662135 () Bool)

(assert (= bs!662135 (and b!4379334 b!4378046)))

(assert (=> bs!662135 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (+!790 lt!1588594 lt!1588602)) (= lambda!145320 lambda!145159))))

(declare-fun bs!662136 () Bool)

(assert (= bs!662136 (and b!4379334 d!1303707)))

(assert (=> bs!662136 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589681) (= lambda!145320 lambda!145289))))

(assert (=> bs!662119 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588594) (= lambda!145320 lambda!145153))))

(declare-fun bs!662137 () Bool)

(assert (= bs!662137 (and b!4379334 b!4379333)))

(assert (=> bs!662137 (= lambda!145320 lambda!145319)))

(declare-fun bs!662138 () Bool)

(assert (= bs!662138 (and b!4379334 d!1303255)))

(assert (=> bs!662138 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588981) (= lambda!145320 lambda!145162))))

(declare-fun bs!662139 () Bool)

(assert (= bs!662139 (and b!4379334 d!1303519)))

(assert (=> bs!662139 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588594) (= lambda!145320 lambda!145242))))

(declare-fun bs!662140 () Bool)

(assert (= bs!662140 (and b!4379334 d!1303661)))

(assert (=> bs!662140 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588971) (= lambda!145320 lambda!145276))))

(declare-fun bs!662141 () Bool)

(assert (= bs!662141 (and b!4379334 d!1303597)))

(assert (=> bs!662141 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589053) (= lambda!145320 lambda!145262))))

(assert (=> bs!662115 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145320 lambda!145269))))

(declare-fun bs!662143 () Bool)

(assert (= bs!662143 (and b!4379334 d!1303265)))

(assert (=> bs!662143 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589021) (= lambda!145320 lambda!145167))))

(declare-fun bs!662145 () Bool)

(assert (= bs!662145 (and b!4379334 b!4378089)))

(assert (=> bs!662145 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588594) (= lambda!145320 lambda!145173))))

(assert (=> bs!662126 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589053) (= lambda!145320 lambda!145175))))

(assert (=> bs!662120 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588594) (= lambda!145320 lambda!145165))))

(declare-fun bs!662148 () Bool)

(assert (= bs!662148 (and b!4379334 d!1303299)))

(assert (=> bs!662148 (not (= lambda!145320 lambda!145179))))

(assert (=> bs!662125 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145320 lambda!145193))))

(assert (=> bs!662112 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1588971) (= lambda!145320 lambda!145161))))

(declare-fun bs!662152 () Bool)

(assert (= bs!662152 (and b!4379334 d!1303283)))

(assert (=> bs!662152 (= (= (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589063) (= lambda!145320 lambda!145176))))

(assert (=> b!4379334 true))

(declare-fun lambda!145322 () Int)

(declare-fun lt!1589962 () ListMap!2385)

(assert (=> bs!662108 (= (= lt!1589962 lt!1589671) (= lambda!145322 lambda!145288))))

(assert (=> bs!662109 (= (= lt!1589962 lt!1589239) (= lambda!145322 lambda!145228))))

(assert (=> bs!662110 (= (= lt!1589962 lt!1588922) (= lambda!145322 lambda!145155))))

(assert (=> bs!662111 (= (= lt!1589962 lt!1589205) (= lambda!145322 lambda!145217))))

(assert (=> bs!662112 (= (= lt!1589962 (+!790 lt!1588594 lt!1588602)) (= lambda!145322 lambda!145160))))

(assert (=> bs!662113 (= (= lt!1589962 lt!1589561) (= lambda!145322 lambda!145274))))

(assert (=> bs!662114 (= (= lt!1589962 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145322 lambda!145213))))

(assert (=> bs!662115 (= (= lt!1589962 lt!1589551) (= lambda!145322 lambda!145272))))

(assert (=> bs!662116 (= (= lt!1589962 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145322 lambda!145192))))

(assert (=> bs!662117 (= (= lt!1589962 lt!1589011) (= lambda!145322 lambda!145200))))

(assert (=> bs!662118 (= (= lt!1589962 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145322 lambda!145283))))

(assert (=> bs!662120 (= (= lt!1589962 lt!1589011) (= lambda!145322 lambda!145166))))

(assert (=> bs!662121 (= (= lt!1589962 lt!1589406) (= lambda!145322 lambda!145265))))

(assert (=> bs!662122 (= (= lt!1589962 (+!790 lt!1588594 lt!1588602)) (= lambda!145322 lambda!145314))))

(assert (=> bs!662123 (= (= lt!1589962 lt!1588594) (= lambda!145322 lambda!145164))))

(assert (=> bs!662124 (= (= lt!1589962 lt!1588594) (= lambda!145322 lambda!145152))))

(assert (=> bs!662125 (= (= lt!1589962 lt!1589142) (= lambda!145322 lambda!145194))))

(assert (=> bs!662126 (= (= lt!1589962 lt!1588594) (= lambda!145322 lambda!145174))))

(assert (=> bs!662127 (= (= lt!1589962 lt!1589416) (= lambda!145322 lambda!145266))))

(assert (=> bs!662128 (= (= lt!1589962 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145322 lambda!145263))))

(assert (=> bs!662129 (= (= lt!1589962 lt!1589250) (= lambda!145322 lambda!145231))))

(assert (=> bs!662130 (= (= lt!1589962 lt!1589215) (= lambda!145322 lambda!145218))))

(assert (=> bs!662121 (= (= lt!1589962 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145322 lambda!145264))))

(assert (=> bs!662131 (= (= lt!1589962 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145322 lambda!145226))))

(assert (=> bs!662132 (= (= lt!1589962 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145322 lambda!145267))))

(assert (=> bs!662133 (= (= lt!1589962 lt!1589152) (= lambda!145322 lambda!145195))))

(assert (=> bs!662111 (= (= lt!1589962 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145322 lambda!145215))))

(assert (=> bs!662108 (= (= lt!1589962 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145322 lambda!145286))))

(assert (=> bs!662109 (= (= lt!1589962 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145322 lambda!145227))))

(assert (=> bs!662135 (= (= lt!1589962 (+!790 lt!1588594 lt!1588602)) (= lambda!145322 lambda!145159))))

(assert (=> bs!662136 (= (= lt!1589962 lt!1589681) (= lambda!145322 lambda!145289))))

(assert (=> bs!662119 (= (= lt!1589962 lt!1588594) (= lambda!145322 lambda!145153))))

(assert (=> bs!662137 (= (= lt!1589962 (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145322 lambda!145319))))

(assert (=> bs!662138 (= (= lt!1589962 lt!1588981) (= lambda!145322 lambda!145162))))

(assert (=> bs!662139 (= (= lt!1589962 lt!1588594) (= lambda!145322 lambda!145242))))

(assert (=> bs!662140 (= (= lt!1589962 lt!1588971) (= lambda!145322 lambda!145276))))

(assert (=> bs!662141 (= (= lt!1589962 lt!1589053) (= lambda!145322 lambda!145262))))

(assert (=> bs!662115 (= (= lt!1589962 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145322 lambda!145269))))

(assert (=> bs!662143 (= (= lt!1589962 lt!1589021) (= lambda!145322 lambda!145167))))

(assert (=> bs!662145 (= (= lt!1589962 lt!1588594) (= lambda!145322 lambda!145173))))

(assert (=> bs!662126 (= (= lt!1589962 lt!1589053) (= lambda!145322 lambda!145175))))

(assert (=> bs!662120 (= (= lt!1589962 lt!1588594) (= lambda!145322 lambda!145165))))

(assert (=> bs!662148 (not (= lambda!145322 lambda!145179))))

(assert (=> bs!662119 (= (= lt!1589962 lt!1588912) (= lambda!145322 lambda!145154))))

(assert (=> b!4379334 (= (= lt!1589962 (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145322 lambda!145320))))

(assert (=> bs!662125 (= (= lt!1589962 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145322 lambda!145193))))

(assert (=> bs!662112 (= (= lt!1589962 lt!1588971) (= lambda!145322 lambda!145161))))

(assert (=> bs!662152 (= (= lt!1589962 lt!1589063) (= lambda!145322 lambda!145176))))

(assert (=> b!4379334 true))

(declare-fun bs!662187 () Bool)

(declare-fun d!1303899 () Bool)

(assert (= bs!662187 (and d!1303899 b!4378969)))

(declare-fun lambda!145323 () Int)

(declare-fun lt!1589972 () ListMap!2385)

(assert (=> bs!662187 (= (= lt!1589972 lt!1589671) (= lambda!145323 lambda!145288))))

(declare-fun bs!662188 () Bool)

(assert (= bs!662188 (and d!1303899 b!4378460)))

(assert (=> bs!662188 (= (= lt!1589972 lt!1589239) (= lambda!145323 lambda!145228))))

(declare-fun bs!662189 () Bool)

(assert (= bs!662189 (and d!1303899 d!1303179)))

(assert (=> bs!662189 (= (= lt!1589972 lt!1588922) (= lambda!145323 lambda!145155))))

(declare-fun bs!662190 () Bool)

(assert (= bs!662190 (and d!1303899 b!4378412)))

(assert (=> bs!662190 (= (= lt!1589972 lt!1589205) (= lambda!145323 lambda!145217))))

(declare-fun bs!662191 () Bool)

(assert (= bs!662191 (and d!1303899 b!4378047)))

(assert (=> bs!662191 (= (= lt!1589972 (+!790 lt!1588594 lt!1588602)) (= lambda!145323 lambda!145160))))

(declare-fun bs!662192 () Bool)

(assert (= bs!662192 (and d!1303899 d!1303643)))

(assert (=> bs!662192 (= (= lt!1589972 lt!1589561) (= lambda!145323 lambda!145274))))

(declare-fun bs!662193 () Bool)

(assert (= bs!662193 (and d!1303899 b!4378411)))

(assert (=> bs!662193 (= (= lt!1589972 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145323 lambda!145213))))

(declare-fun bs!662194 () Bool)

(assert (= bs!662194 (and d!1303899 b!4378869)))

(assert (=> bs!662194 (= (= lt!1589972 lt!1589551) (= lambda!145323 lambda!145272))))

(declare-fun bs!662195 () Bool)

(assert (= bs!662195 (and d!1303899 b!4378290)))

(assert (=> bs!662195 (= (= lt!1589972 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145323 lambda!145192))))

(declare-fun bs!662196 () Bool)

(assert (= bs!662196 (and d!1303899 d!1303383)))

(assert (=> bs!662196 (= (= lt!1589972 lt!1589011) (= lambda!145323 lambda!145200))))

(declare-fun bs!662197 () Bool)

(assert (= bs!662197 (and d!1303899 b!4378968)))

(assert (=> bs!662197 (= (= lt!1589972 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145323 lambda!145283))))

(declare-fun bs!662198 () Bool)

(assert (= bs!662198 (and d!1303899 b!4378063)))

(assert (=> bs!662198 (= (= lt!1589972 lt!1589011) (= lambda!145323 lambda!145166))))

(declare-fun bs!662199 () Bool)

(assert (= bs!662199 (and d!1303899 b!4378702)))

(assert (=> bs!662199 (= (= lt!1589972 lt!1589406) (= lambda!145323 lambda!145265))))

(declare-fun bs!662200 () Bool)

(assert (= bs!662200 (and d!1303899 d!1303867)))

(assert (=> bs!662200 (= (= lt!1589972 (+!790 lt!1588594 lt!1588602)) (= lambda!145323 lambda!145314))))

(declare-fun bs!662201 () Bool)

(assert (= bs!662201 (and d!1303899 b!4378062)))

(assert (=> bs!662201 (= (= lt!1589972 lt!1588594) (= lambda!145323 lambda!145164))))

(declare-fun bs!662202 () Bool)

(assert (= bs!662202 (and d!1303899 b!4377996)))

(assert (=> bs!662202 (= (= lt!1589972 lt!1588594) (= lambda!145323 lambda!145152))))

(declare-fun bs!662203 () Bool)

(assert (= bs!662203 (and d!1303899 b!4378291)))

(assert (=> bs!662203 (= (= lt!1589972 lt!1589142) (= lambda!145323 lambda!145194))))

(declare-fun bs!662204 () Bool)

(assert (= bs!662204 (and d!1303899 b!4378090)))

(assert (=> bs!662204 (= (= lt!1589972 lt!1588594) (= lambda!145323 lambda!145174))))

(declare-fun bs!662205 () Bool)

(assert (= bs!662205 (and d!1303899 d!1303603)))

(assert (=> bs!662205 (= (= lt!1589972 lt!1589416) (= lambda!145323 lambda!145266))))

(declare-fun bs!662206 () Bool)

(assert (= bs!662206 (and d!1303899 b!4378701)))

(assert (=> bs!662206 (= (= lt!1589972 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145323 lambda!145263))))

(declare-fun bs!662207 () Bool)

(assert (= bs!662207 (and d!1303899 b!4379334)))

(assert (=> bs!662207 (= (= lt!1589972 lt!1589962) (= lambda!145323 lambda!145322))))

(declare-fun bs!662208 () Bool)

(assert (= bs!662208 (and d!1303899 d!1303433)))

(assert (=> bs!662208 (= (= lt!1589972 lt!1589250) (= lambda!145323 lambda!145231))))

(declare-fun bs!662209 () Bool)

(assert (= bs!662209 (and d!1303899 d!1303403)))

(assert (=> bs!662209 (= (= lt!1589972 lt!1589215) (= lambda!145323 lambda!145218))))

(assert (=> bs!662199 (= (= lt!1589972 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145323 lambda!145264))))

(declare-fun bs!662210 () Bool)

(assert (= bs!662210 (and d!1303899 b!4378459)))

(assert (=> bs!662210 (= (= lt!1589972 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145323 lambda!145226))))

(declare-fun bs!662211 () Bool)

(assert (= bs!662211 (and d!1303899 b!4378868)))

(assert (=> bs!662211 (= (= lt!1589972 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145323 lambda!145267))))

(declare-fun bs!662212 () Bool)

(assert (= bs!662212 (and d!1303899 d!1303361)))

(assert (=> bs!662212 (= (= lt!1589972 lt!1589152) (= lambda!145323 lambda!145195))))

(assert (=> bs!662190 (= (= lt!1589972 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145323 lambda!145215))))

(assert (=> bs!662187 (= (= lt!1589972 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145323 lambda!145286))))

(assert (=> bs!662188 (= (= lt!1589972 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145323 lambda!145227))))

(declare-fun bs!662213 () Bool)

(assert (= bs!662213 (and d!1303899 b!4378046)))

(assert (=> bs!662213 (= (= lt!1589972 (+!790 lt!1588594 lt!1588602)) (= lambda!145323 lambda!145159))))

(declare-fun bs!662214 () Bool)

(assert (= bs!662214 (and d!1303899 d!1303707)))

(assert (=> bs!662214 (= (= lt!1589972 lt!1589681) (= lambda!145323 lambda!145289))))

(declare-fun bs!662215 () Bool)

(assert (= bs!662215 (and d!1303899 b!4377997)))

(assert (=> bs!662215 (= (= lt!1589972 lt!1588594) (= lambda!145323 lambda!145153))))

(declare-fun bs!662216 () Bool)

(assert (= bs!662216 (and d!1303899 b!4379333)))

(assert (=> bs!662216 (= (= lt!1589972 (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145323 lambda!145319))))

(declare-fun bs!662217 () Bool)

(assert (= bs!662217 (and d!1303899 d!1303255)))

(assert (=> bs!662217 (= (= lt!1589972 lt!1588981) (= lambda!145323 lambda!145162))))

(declare-fun bs!662218 () Bool)

(assert (= bs!662218 (and d!1303899 d!1303519)))

(assert (=> bs!662218 (= (= lt!1589972 lt!1588594) (= lambda!145323 lambda!145242))))

(declare-fun bs!662219 () Bool)

(assert (= bs!662219 (and d!1303899 d!1303661)))

(assert (=> bs!662219 (= (= lt!1589972 lt!1588971) (= lambda!145323 lambda!145276))))

(declare-fun bs!662220 () Bool)

(assert (= bs!662220 (and d!1303899 d!1303597)))

(assert (=> bs!662220 (= (= lt!1589972 lt!1589053) (= lambda!145323 lambda!145262))))

(assert (=> bs!662194 (= (= lt!1589972 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145323 lambda!145269))))

(declare-fun bs!662221 () Bool)

(assert (= bs!662221 (and d!1303899 d!1303265)))

(assert (=> bs!662221 (= (= lt!1589972 lt!1589021) (= lambda!145323 lambda!145167))))

(declare-fun bs!662222 () Bool)

(assert (= bs!662222 (and d!1303899 b!4378089)))

(assert (=> bs!662222 (= (= lt!1589972 lt!1588594) (= lambda!145323 lambda!145173))))

(assert (=> bs!662204 (= (= lt!1589972 lt!1589053) (= lambda!145323 lambda!145175))))

(assert (=> bs!662198 (= (= lt!1589972 lt!1588594) (= lambda!145323 lambda!145165))))

(declare-fun bs!662223 () Bool)

(assert (= bs!662223 (and d!1303899 d!1303299)))

(assert (=> bs!662223 (not (= lambda!145323 lambda!145179))))

(assert (=> bs!662215 (= (= lt!1589972 lt!1588912) (= lambda!145323 lambda!145154))))

(assert (=> bs!662207 (= (= lt!1589972 (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145323 lambda!145320))))

(assert (=> bs!662203 (= (= lt!1589972 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145323 lambda!145193))))

(assert (=> bs!662191 (= (= lt!1589972 lt!1588971) (= lambda!145323 lambda!145161))))

(declare-fun bs!662224 () Bool)

(assert (= bs!662224 (and d!1303899 d!1303283)))

(assert (=> bs!662224 (= (= lt!1589972 lt!1589063) (= lambda!145323 lambda!145176))))

(assert (=> d!1303899 true))

(declare-fun b!4379331 () Bool)

(declare-fun e!2725997 () Bool)

(assert (=> b!4379331 (= e!2725997 (forall!9273 (toList!3142 (+!790 lt!1588594 (h!54753 lt!1588612))) lambda!145322))))

(declare-fun call!304629 () Bool)

(declare-fun bm!304623 () Bool)

(declare-fun c!744819 () Bool)

(assert (=> bm!304623 (= call!304629 (forall!9273 (ite c!744819 (toList!3142 (+!790 lt!1588594 (h!54753 lt!1588612))) (t!356206 (t!356206 lt!1588612))) (ite c!744819 lambda!145319 lambda!145322)))))

(declare-fun b!4379332 () Bool)

(declare-fun e!2725995 () Bool)

(assert (=> b!4379332 (= e!2725995 (invariantList!723 (toList!3142 lt!1589972)))))

(declare-fun bm!304624 () Bool)

(declare-fun call!304630 () Unit!75116)

(assert (=> bm!304624 (= call!304630 (lemmaContainsAllItsOwnKeys!105 (+!790 lt!1588594 (h!54753 lt!1588612))))))

(declare-fun e!2725996 () ListMap!2385)

(assert (=> b!4379333 (= e!2725996 (+!790 lt!1588594 (h!54753 lt!1588612)))))

(declare-fun lt!1589971 () Unit!75116)

(assert (=> b!4379333 (= lt!1589971 call!304630)))

(assert (=> b!4379333 call!304629))

(declare-fun lt!1589978 () Unit!75116)

(assert (=> b!4379333 (= lt!1589978 lt!1589971)))

(declare-fun call!304628 () Bool)

(assert (=> b!4379333 call!304628))

(declare-fun lt!1589976 () Unit!75116)

(declare-fun Unit!75448 () Unit!75116)

(assert (=> b!4379333 (= lt!1589976 Unit!75448)))

(assert (=> d!1303899 e!2725995))

(declare-fun res!1803474 () Bool)

(assert (=> d!1303899 (=> (not res!1803474) (not e!2725995))))

(assert (=> d!1303899 (= res!1803474 (forall!9273 (t!356206 lt!1588612) lambda!145323))))

(assert (=> d!1303899 (= lt!1589972 e!2725996)))

(assert (=> d!1303899 (= c!744819 ((_ is Nil!49156) (t!356206 lt!1588612)))))

(assert (=> d!1303899 (noDuplicateKeys!579 (t!356206 lt!1588612))))

(assert (=> d!1303899 (= (addToMapMapFromBucket!260 (t!356206 lt!1588612) (+!790 lt!1588594 (h!54753 lt!1588612))) lt!1589972)))

(assert (=> b!4379334 (= e!2725996 lt!1589962)))

(declare-fun lt!1589965 () ListMap!2385)

(assert (=> b!4379334 (= lt!1589965 (+!790 (+!790 lt!1588594 (h!54753 lt!1588612)) (h!54753 (t!356206 lt!1588612))))))

(assert (=> b!4379334 (= lt!1589962 (addToMapMapFromBucket!260 (t!356206 (t!356206 lt!1588612)) (+!790 (+!790 lt!1588594 (h!54753 lt!1588612)) (h!54753 (t!356206 lt!1588612)))))))

(declare-fun lt!1589961 () Unit!75116)

(assert (=> b!4379334 (= lt!1589961 call!304630)))

(assert (=> b!4379334 (forall!9273 (toList!3142 (+!790 lt!1588594 (h!54753 lt!1588612))) lambda!145320)))

(declare-fun lt!1589970 () Unit!75116)

(assert (=> b!4379334 (= lt!1589970 lt!1589961)))

(assert (=> b!4379334 (forall!9273 (toList!3142 lt!1589965) lambda!145322)))

(declare-fun lt!1589959 () Unit!75116)

(declare-fun Unit!75449 () Unit!75116)

(assert (=> b!4379334 (= lt!1589959 Unit!75449)))

(assert (=> b!4379334 call!304629))

(declare-fun lt!1589973 () Unit!75116)

(declare-fun Unit!75450 () Unit!75116)

(assert (=> b!4379334 (= lt!1589973 Unit!75450)))

(declare-fun lt!1589964 () Unit!75116)

(declare-fun Unit!75451 () Unit!75116)

(assert (=> b!4379334 (= lt!1589964 Unit!75451)))

(declare-fun lt!1589977 () Unit!75116)

(assert (=> b!4379334 (= lt!1589977 (forallContained!1911 (toList!3142 lt!1589965) lambda!145322 (h!54753 (t!356206 lt!1588612))))))

(assert (=> b!4379334 (contains!11488 lt!1589965 (_1!27637 (h!54753 (t!356206 lt!1588612))))))

(declare-fun lt!1589974 () Unit!75116)

(declare-fun Unit!75452 () Unit!75116)

(assert (=> b!4379334 (= lt!1589974 Unit!75452)))

(assert (=> b!4379334 (contains!11488 lt!1589962 (_1!27637 (h!54753 (t!356206 lt!1588612))))))

(declare-fun lt!1589960 () Unit!75116)

(declare-fun Unit!75453 () Unit!75116)

(assert (=> b!4379334 (= lt!1589960 Unit!75453)))

(assert (=> b!4379334 (forall!9273 (t!356206 lt!1588612) lambda!145322)))

(declare-fun lt!1589967 () Unit!75116)

(declare-fun Unit!75454 () Unit!75116)

(assert (=> b!4379334 (= lt!1589967 Unit!75454)))

(assert (=> b!4379334 call!304628))

(declare-fun lt!1589966 () Unit!75116)

(declare-fun Unit!75455 () Unit!75116)

(assert (=> b!4379334 (= lt!1589966 Unit!75455)))

(declare-fun lt!1589963 () Unit!75116)

(declare-fun Unit!75456 () Unit!75116)

(assert (=> b!4379334 (= lt!1589963 Unit!75456)))

(declare-fun lt!1589969 () Unit!75116)

(assert (=> b!4379334 (= lt!1589969 (addForallContainsKeyThenBeforeAdding!105 (+!790 lt!1588594 (h!54753 lt!1588612)) lt!1589962 (_1!27637 (h!54753 (t!356206 lt!1588612))) (_2!27637 (h!54753 (t!356206 lt!1588612)))))))

(assert (=> b!4379334 (forall!9273 (toList!3142 (+!790 lt!1588594 (h!54753 lt!1588612))) lambda!145322)))

(declare-fun lt!1589958 () Unit!75116)

(assert (=> b!4379334 (= lt!1589958 lt!1589969)))

(assert (=> b!4379334 (forall!9273 (toList!3142 (+!790 lt!1588594 (h!54753 lt!1588612))) lambda!145322)))

(declare-fun lt!1589968 () Unit!75116)

(declare-fun Unit!75457 () Unit!75116)

(assert (=> b!4379334 (= lt!1589968 Unit!75457)))

(declare-fun res!1803473 () Bool)

(assert (=> b!4379334 (= res!1803473 (forall!9273 (t!356206 lt!1588612) lambda!145322))))

(assert (=> b!4379334 (=> (not res!1803473) (not e!2725997))))

(assert (=> b!4379334 e!2725997))

(declare-fun lt!1589975 () Unit!75116)

(declare-fun Unit!75458 () Unit!75116)

(assert (=> b!4379334 (= lt!1589975 Unit!75458)))

(declare-fun b!4379335 () Bool)

(declare-fun res!1803472 () Bool)

(assert (=> b!4379335 (=> (not res!1803472) (not e!2725995))))

(assert (=> b!4379335 (= res!1803472 (forall!9273 (toList!3142 (+!790 lt!1588594 (h!54753 lt!1588612))) lambda!145323))))

(declare-fun bm!304625 () Bool)

(assert (=> bm!304625 (= call!304628 (forall!9273 (ite c!744819 (toList!3142 (+!790 lt!1588594 (h!54753 lt!1588612))) (toList!3142 lt!1589965)) (ite c!744819 lambda!145319 lambda!145322)))))

(assert (= (and d!1303899 c!744819) b!4379333))

(assert (= (and d!1303899 (not c!744819)) b!4379334))

(assert (= (and b!4379334 res!1803473) b!4379331))

(assert (= (or b!4379333 b!4379334) bm!304624))

(assert (= (or b!4379333 b!4379334) bm!304623))

(assert (= (or b!4379333 b!4379334) bm!304625))

(assert (= (and d!1303899 res!1803474) b!4379335))

(assert (= (and b!4379335 res!1803472) b!4379332))

(declare-fun m!5016177 () Bool)

(assert (=> b!4379332 m!5016177))

(declare-fun m!5016179 () Bool)

(assert (=> b!4379331 m!5016179))

(declare-fun m!5016181 () Bool)

(assert (=> b!4379335 m!5016181))

(declare-fun m!5016185 () Bool)

(assert (=> bm!304625 m!5016185))

(assert (=> b!4379334 m!5016179))

(assert (=> b!4379334 m!5016179))

(assert (=> b!4379334 m!5013419))

(declare-fun m!5016187 () Bool)

(assert (=> b!4379334 m!5016187))

(declare-fun m!5016189 () Bool)

(assert (=> b!4379334 m!5016189))

(declare-fun m!5016191 () Bool)

(assert (=> b!4379334 m!5016191))

(declare-fun m!5016193 () Bool)

(assert (=> b!4379334 m!5016193))

(declare-fun m!5016195 () Bool)

(assert (=> b!4379334 m!5016195))

(assert (=> b!4379334 m!5016195))

(assert (=> b!4379334 m!5013419))

(assert (=> b!4379334 m!5016189))

(declare-fun m!5016197 () Bool)

(assert (=> b!4379334 m!5016197))

(declare-fun m!5016199 () Bool)

(assert (=> b!4379334 m!5016199))

(declare-fun m!5016201 () Bool)

(assert (=> b!4379334 m!5016201))

(declare-fun m!5016203 () Bool)

(assert (=> b!4379334 m!5016203))

(assert (=> bm!304624 m!5013419))

(declare-fun m!5016205 () Bool)

(assert (=> bm!304624 m!5016205))

(declare-fun m!5016207 () Bool)

(assert (=> d!1303899 m!5016207))

(assert (=> d!1303899 m!5014631))

(declare-fun m!5016209 () Bool)

(assert (=> bm!304623 m!5016209))

(assert (=> b!4377997 d!1303899))

(declare-fun d!1303939 () Bool)

(declare-fun e!2726035 () Bool)

(assert (=> d!1303939 e!2726035))

(declare-fun res!1803502 () Bool)

(assert (=> d!1303939 (=> res!1803502 e!2726035)))

(declare-fun e!2726039 () Bool)

(assert (=> d!1303939 (= res!1803502 e!2726039)))

(declare-fun res!1803504 () Bool)

(assert (=> d!1303939 (=> (not res!1803504) (not e!2726039))))

(declare-fun lt!1590003 () Bool)

(assert (=> d!1303939 (= res!1803504 (not lt!1590003))))

(declare-fun lt!1590008 () Bool)

(assert (=> d!1303939 (= lt!1590003 lt!1590008)))

(declare-fun lt!1590009 () Unit!75116)

(declare-fun e!2726036 () Unit!75116)

(assert (=> d!1303939 (= lt!1590009 e!2726036)))

(declare-fun c!744834 () Bool)

(assert (=> d!1303939 (= c!744834 lt!1590008)))

(assert (=> d!1303939 (= lt!1590008 (containsKey!848 (toList!3142 lt!1588912) (_1!27637 (h!54753 lt!1588612))))))

(assert (=> d!1303939 (= (contains!11488 lt!1588912 (_1!27637 (h!54753 lt!1588612))) lt!1590003)))

(declare-fun bm!304631 () Bool)

(declare-fun call!304636 () Bool)

(declare-fun e!2726037 () List!49283)

(assert (=> bm!304631 (= call!304636 (contains!11492 e!2726037 (_1!27637 (h!54753 lt!1588612))))))

(declare-fun c!744833 () Bool)

(assert (=> bm!304631 (= c!744833 c!744834)))

(declare-fun b!4379389 () Bool)

(declare-fun e!2726040 () Bool)

(assert (=> b!4379389 (= e!2726035 e!2726040)))

(declare-fun res!1803503 () Bool)

(assert (=> b!4379389 (=> (not res!1803503) (not e!2726040))))

(assert (=> b!4379389 (= res!1803503 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588912) (_1!27637 (h!54753 lt!1588612)))))))

(declare-fun b!4379390 () Bool)

(declare-fun e!2726038 () Unit!75116)

(declare-fun Unit!75459 () Unit!75116)

(assert (=> b!4379390 (= e!2726038 Unit!75459)))

(declare-fun b!4379391 () Bool)

(assert (=> b!4379391 false))

(declare-fun lt!1590005 () Unit!75116)

(declare-fun lt!1590004 () Unit!75116)

(assert (=> b!4379391 (= lt!1590005 lt!1590004)))

(assert (=> b!4379391 (containsKey!848 (toList!3142 lt!1588912) (_1!27637 (h!54753 lt!1588612)))))

(assert (=> b!4379391 (= lt!1590004 (lemmaInGetKeysListThenContainsKey!169 (toList!3142 lt!1588912) (_1!27637 (h!54753 lt!1588612))))))

(declare-fun Unit!75460 () Unit!75116)

(assert (=> b!4379391 (= e!2726038 Unit!75460)))

(declare-fun b!4379392 () Bool)

(declare-fun lt!1590010 () Unit!75116)

(assert (=> b!4379392 (= e!2726036 lt!1590010)))

(declare-fun lt!1590007 () Unit!75116)

(assert (=> b!4379392 (= lt!1590007 (lemmaContainsKeyImpliesGetValueByKeyDefined!455 (toList!3142 lt!1588912) (_1!27637 (h!54753 lt!1588612))))))

(assert (=> b!4379392 (isDefined!7852 (getValueByKey!545 (toList!3142 lt!1588912) (_1!27637 (h!54753 lt!1588612))))))

(declare-fun lt!1590006 () Unit!75116)

(assert (=> b!4379392 (= lt!1590006 lt!1590007)))

(assert (=> b!4379392 (= lt!1590010 (lemmaInListThenGetKeysListContains!168 (toList!3142 lt!1588912) (_1!27637 (h!54753 lt!1588612))))))

(assert (=> b!4379392 call!304636))

(declare-fun b!4379393 () Bool)

(assert (=> b!4379393 (= e!2726040 (contains!11492 (keys!16669 lt!1588912) (_1!27637 (h!54753 lt!1588612))))))

(declare-fun b!4379394 () Bool)

(assert (=> b!4379394 (= e!2726037 (keys!16669 lt!1588912))))

(declare-fun b!4379395 () Bool)

(assert (=> b!4379395 (= e!2726036 e!2726038)))

(declare-fun c!744835 () Bool)

(assert (=> b!4379395 (= c!744835 call!304636)))

(declare-fun b!4379396 () Bool)

(assert (=> b!4379396 (= e!2726037 (getKeysList!171 (toList!3142 lt!1588912)))))

(declare-fun b!4379397 () Bool)

(assert (=> b!4379397 (= e!2726039 (not (contains!11492 (keys!16669 lt!1588912) (_1!27637 (h!54753 lt!1588612)))))))

(assert (= (and d!1303939 c!744834) b!4379392))

(assert (= (and d!1303939 (not c!744834)) b!4379395))

(assert (= (and b!4379395 c!744835) b!4379391))

(assert (= (and b!4379395 (not c!744835)) b!4379390))

(assert (= (or b!4379392 b!4379395) bm!304631))

(assert (= (and bm!304631 c!744833) b!4379396))

(assert (= (and bm!304631 (not c!744833)) b!4379394))

(assert (= (and d!1303939 res!1803504) b!4379397))

(assert (= (and d!1303939 (not res!1803502)) b!4379389))

(assert (= (and b!4379389 res!1803503) b!4379393))

(declare-fun m!5016215 () Bool)

(assert (=> b!4379397 m!5016215))

(assert (=> b!4379397 m!5016215))

(declare-fun m!5016217 () Bool)

(assert (=> b!4379397 m!5016217))

(declare-fun m!5016219 () Bool)

(assert (=> b!4379396 m!5016219))

(declare-fun m!5016221 () Bool)

(assert (=> b!4379391 m!5016221))

(declare-fun m!5016223 () Bool)

(assert (=> b!4379391 m!5016223))

(assert (=> b!4379394 m!5016215))

(declare-fun m!5016225 () Bool)

(assert (=> bm!304631 m!5016225))

(declare-fun m!5016227 () Bool)

(assert (=> b!4379389 m!5016227))

(assert (=> b!4379389 m!5016227))

(declare-fun m!5016229 () Bool)

(assert (=> b!4379389 m!5016229))

(assert (=> b!4379393 m!5016215))

(assert (=> b!4379393 m!5016215))

(assert (=> b!4379393 m!5016217))

(assert (=> d!1303939 m!5016221))

(declare-fun m!5016231 () Bool)

(assert (=> b!4379392 m!5016231))

(assert (=> b!4379392 m!5016227))

(assert (=> b!4379392 m!5016227))

(assert (=> b!4379392 m!5016229))

(declare-fun m!5016233 () Bool)

(assert (=> b!4379392 m!5016233))

(assert (=> b!4377997 d!1303939))

(declare-fun d!1303943 () Bool)

(declare-fun res!1803505 () Bool)

(declare-fun e!2726041 () Bool)

(assert (=> d!1303943 (=> res!1803505 e!2726041)))

(assert (=> d!1303943 (= res!1803505 ((_ is Nil!49156) (toList!3142 lt!1588915)))))

(assert (=> d!1303943 (= (forall!9273 (toList!3142 lt!1588915) lambda!145154) e!2726041)))

(declare-fun b!4379398 () Bool)

(declare-fun e!2726042 () Bool)

(assert (=> b!4379398 (= e!2726041 e!2726042)))

(declare-fun res!1803506 () Bool)

(assert (=> b!4379398 (=> (not res!1803506) (not e!2726042))))

(assert (=> b!4379398 (= res!1803506 (dynLambda!20710 lambda!145154 (h!54753 (toList!3142 lt!1588915))))))

(declare-fun b!4379399 () Bool)

(assert (=> b!4379399 (= e!2726042 (forall!9273 (t!356206 (toList!3142 lt!1588915)) lambda!145154))))

(assert (= (and d!1303943 (not res!1803505)) b!4379398))

(assert (= (and b!4379398 res!1803506) b!4379399))

(declare-fun b_lambda!135117 () Bool)

(assert (=> (not b_lambda!135117) (not b!4379398)))

(declare-fun m!5016235 () Bool)

(assert (=> b!4379398 m!5016235))

(declare-fun m!5016237 () Bool)

(assert (=> b!4379399 m!5016237))

(assert (=> b!4377997 d!1303943))

(declare-fun bs!662226 () Bool)

(declare-fun d!1303945 () Bool)

(assert (= bs!662226 (and d!1303945 b!4378969)))

(declare-fun lambda!145324 () Int)

(assert (=> bs!662226 (= (= lt!1588912 lt!1589671) (= lambda!145324 lambda!145288))))

(declare-fun bs!662227 () Bool)

(assert (= bs!662227 (and d!1303945 b!4378460)))

(assert (=> bs!662227 (= (= lt!1588912 lt!1589239) (= lambda!145324 lambda!145228))))

(declare-fun bs!662228 () Bool)

(assert (= bs!662228 (and d!1303945 d!1303179)))

(assert (=> bs!662228 (= (= lt!1588912 lt!1588922) (= lambda!145324 lambda!145155))))

(declare-fun bs!662229 () Bool)

(assert (= bs!662229 (and d!1303945 b!4378412)))

(assert (=> bs!662229 (= (= lt!1588912 lt!1589205) (= lambda!145324 lambda!145217))))

(declare-fun bs!662230 () Bool)

(assert (= bs!662230 (and d!1303945 b!4378047)))

(assert (=> bs!662230 (= (= lt!1588912 (+!790 lt!1588594 lt!1588602)) (= lambda!145324 lambda!145160))))

(declare-fun bs!662231 () Bool)

(assert (= bs!662231 (and d!1303945 d!1303643)))

(assert (=> bs!662231 (= (= lt!1588912 lt!1589561) (= lambda!145324 lambda!145274))))

(declare-fun bs!662232 () Bool)

(assert (= bs!662232 (and d!1303945 b!4378411)))

(assert (=> bs!662232 (= (= lt!1588912 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145324 lambda!145213))))

(declare-fun bs!662233 () Bool)

(assert (= bs!662233 (and d!1303945 b!4378869)))

(assert (=> bs!662233 (= (= lt!1588912 lt!1589551) (= lambda!145324 lambda!145272))))

(declare-fun bs!662234 () Bool)

(assert (= bs!662234 (and d!1303945 b!4378290)))

(assert (=> bs!662234 (= (= lt!1588912 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145324 lambda!145192))))

(declare-fun bs!662235 () Bool)

(assert (= bs!662235 (and d!1303945 d!1303383)))

(assert (=> bs!662235 (= (= lt!1588912 lt!1589011) (= lambda!145324 lambda!145200))))

(declare-fun bs!662236 () Bool)

(assert (= bs!662236 (and d!1303945 b!4378968)))

(assert (=> bs!662236 (= (= lt!1588912 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145324 lambda!145283))))

(declare-fun bs!662237 () Bool)

(assert (= bs!662237 (and d!1303945 b!4378063)))

(assert (=> bs!662237 (= (= lt!1588912 lt!1589011) (= lambda!145324 lambda!145166))))

(declare-fun bs!662238 () Bool)

(assert (= bs!662238 (and d!1303945 b!4378702)))

(assert (=> bs!662238 (= (= lt!1588912 lt!1589406) (= lambda!145324 lambda!145265))))

(declare-fun bs!662239 () Bool)

(assert (= bs!662239 (and d!1303945 d!1303867)))

(assert (=> bs!662239 (= (= lt!1588912 (+!790 lt!1588594 lt!1588602)) (= lambda!145324 lambda!145314))))

(declare-fun bs!662240 () Bool)

(assert (= bs!662240 (and d!1303945 b!4378062)))

(assert (=> bs!662240 (= (= lt!1588912 lt!1588594) (= lambda!145324 lambda!145164))))

(declare-fun bs!662241 () Bool)

(assert (= bs!662241 (and d!1303945 b!4377996)))

(assert (=> bs!662241 (= (= lt!1588912 lt!1588594) (= lambda!145324 lambda!145152))))

(declare-fun bs!662242 () Bool)

(assert (= bs!662242 (and d!1303945 b!4378291)))

(assert (=> bs!662242 (= (= lt!1588912 lt!1589142) (= lambda!145324 lambda!145194))))

(declare-fun bs!662243 () Bool)

(assert (= bs!662243 (and d!1303945 b!4378090)))

(assert (=> bs!662243 (= (= lt!1588912 lt!1588594) (= lambda!145324 lambda!145174))))

(declare-fun bs!662244 () Bool)

(assert (= bs!662244 (and d!1303945 d!1303603)))

(assert (=> bs!662244 (= (= lt!1588912 lt!1589416) (= lambda!145324 lambda!145266))))

(declare-fun bs!662245 () Bool)

(assert (= bs!662245 (and d!1303945 b!4378701)))

(assert (=> bs!662245 (= (= lt!1588912 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145324 lambda!145263))))

(declare-fun bs!662246 () Bool)

(assert (= bs!662246 (and d!1303945 b!4379334)))

(assert (=> bs!662246 (= (= lt!1588912 lt!1589962) (= lambda!145324 lambda!145322))))

(declare-fun bs!662247 () Bool)

(assert (= bs!662247 (and d!1303945 d!1303433)))

(assert (=> bs!662247 (= (= lt!1588912 lt!1589250) (= lambda!145324 lambda!145231))))

(declare-fun bs!662248 () Bool)

(assert (= bs!662248 (and d!1303945 d!1303403)))

(assert (=> bs!662248 (= (= lt!1588912 lt!1589215) (= lambda!145324 lambda!145218))))

(assert (=> bs!662238 (= (= lt!1588912 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145324 lambda!145264))))

(declare-fun bs!662249 () Bool)

(assert (= bs!662249 (and d!1303945 b!4378459)))

(assert (=> bs!662249 (= (= lt!1588912 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145324 lambda!145226))))

(declare-fun bs!662250 () Bool)

(assert (= bs!662250 (and d!1303945 b!4378868)))

(assert (=> bs!662250 (= (= lt!1588912 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145324 lambda!145267))))

(declare-fun bs!662251 () Bool)

(assert (= bs!662251 (and d!1303945 d!1303361)))

(assert (=> bs!662251 (= (= lt!1588912 lt!1589152) (= lambda!145324 lambda!145195))))

(assert (=> bs!662229 (= (= lt!1588912 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145324 lambda!145215))))

(assert (=> bs!662226 (= (= lt!1588912 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145324 lambda!145286))))

(assert (=> bs!662227 (= (= lt!1588912 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145324 lambda!145227))))

(declare-fun bs!662252 () Bool)

(assert (= bs!662252 (and d!1303945 b!4378046)))

(assert (=> bs!662252 (= (= lt!1588912 (+!790 lt!1588594 lt!1588602)) (= lambda!145324 lambda!145159))))

(declare-fun bs!662253 () Bool)

(assert (= bs!662253 (and d!1303945 d!1303899)))

(assert (=> bs!662253 (= (= lt!1588912 lt!1589972) (= lambda!145324 lambda!145323))))

(declare-fun bs!662254 () Bool)

(assert (= bs!662254 (and d!1303945 d!1303707)))

(assert (=> bs!662254 (= (= lt!1588912 lt!1589681) (= lambda!145324 lambda!145289))))

(declare-fun bs!662255 () Bool)

(assert (= bs!662255 (and d!1303945 b!4377997)))

(assert (=> bs!662255 (= (= lt!1588912 lt!1588594) (= lambda!145324 lambda!145153))))

(declare-fun bs!662256 () Bool)

(assert (= bs!662256 (and d!1303945 b!4379333)))

(assert (=> bs!662256 (= (= lt!1588912 (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145324 lambda!145319))))

(declare-fun bs!662257 () Bool)

(assert (= bs!662257 (and d!1303945 d!1303255)))

(assert (=> bs!662257 (= (= lt!1588912 lt!1588981) (= lambda!145324 lambda!145162))))

(declare-fun bs!662258 () Bool)

(assert (= bs!662258 (and d!1303945 d!1303519)))

(assert (=> bs!662258 (= (= lt!1588912 lt!1588594) (= lambda!145324 lambda!145242))))

(declare-fun bs!662259 () Bool)

(assert (= bs!662259 (and d!1303945 d!1303661)))

(assert (=> bs!662259 (= (= lt!1588912 lt!1588971) (= lambda!145324 lambda!145276))))

(declare-fun bs!662260 () Bool)

(assert (= bs!662260 (and d!1303945 d!1303597)))

(assert (=> bs!662260 (= (= lt!1588912 lt!1589053) (= lambda!145324 lambda!145262))))

(assert (=> bs!662233 (= (= lt!1588912 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145324 lambda!145269))))

(declare-fun bs!662261 () Bool)

(assert (= bs!662261 (and d!1303945 d!1303265)))

(assert (=> bs!662261 (= (= lt!1588912 lt!1589021) (= lambda!145324 lambda!145167))))

(declare-fun bs!662262 () Bool)

(assert (= bs!662262 (and d!1303945 b!4378089)))

(assert (=> bs!662262 (= (= lt!1588912 lt!1588594) (= lambda!145324 lambda!145173))))

(assert (=> bs!662243 (= (= lt!1588912 lt!1589053) (= lambda!145324 lambda!145175))))

(assert (=> bs!662237 (= (= lt!1588912 lt!1588594) (= lambda!145324 lambda!145165))))

(declare-fun bs!662263 () Bool)

(assert (= bs!662263 (and d!1303945 d!1303299)))

(assert (=> bs!662263 (not (= lambda!145324 lambda!145179))))

(assert (=> bs!662255 (= lambda!145324 lambda!145154)))

(assert (=> bs!662246 (= (= lt!1588912 (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145324 lambda!145320))))

(assert (=> bs!662242 (= (= lt!1588912 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145324 lambda!145193))))

(assert (=> bs!662230 (= (= lt!1588912 lt!1588971) (= lambda!145324 lambda!145161))))

(declare-fun bs!662264 () Bool)

(assert (= bs!662264 (and d!1303945 d!1303283)))

(assert (=> bs!662264 (= (= lt!1588912 lt!1589063) (= lambda!145324 lambda!145176))))

(assert (=> d!1303945 true))

(assert (=> d!1303945 (forall!9273 (toList!3142 lt!1588594) lambda!145324)))

(declare-fun lt!1590011 () Unit!75116)

(assert (=> d!1303945 (= lt!1590011 (choose!27307 lt!1588594 lt!1588912 (_1!27637 (h!54753 lt!1588612)) (_2!27637 (h!54753 lt!1588612))))))

(assert (=> d!1303945 (forall!9273 (toList!3142 (+!790 lt!1588594 (tuple2!48687 (_1!27637 (h!54753 lt!1588612)) (_2!27637 (h!54753 lt!1588612))))) lambda!145324)))

(assert (=> d!1303945 (= (addForallContainsKeyThenBeforeAdding!105 lt!1588594 lt!1588912 (_1!27637 (h!54753 lt!1588612)) (_2!27637 (h!54753 lt!1588612))) lt!1590011)))

(declare-fun bs!662265 () Bool)

(assert (= bs!662265 d!1303945))

(declare-fun m!5016239 () Bool)

(assert (=> bs!662265 m!5016239))

(declare-fun m!5016241 () Bool)

(assert (=> bs!662265 m!5016241))

(declare-fun m!5016243 () Bool)

(assert (=> bs!662265 m!5016243))

(declare-fun m!5016245 () Bool)

(assert (=> bs!662265 m!5016245))

(assert (=> b!4377997 d!1303945))

(declare-fun d!1303947 () Bool)

(assert (=> d!1303947 (= (invariantList!723 (toList!3142 lt!1589000)) (noDuplicatedKeys!135 (toList!3142 lt!1589000)))))

(declare-fun bs!662266 () Bool)

(assert (= bs!662266 d!1303947))

(declare-fun m!5016247 () Bool)

(assert (=> bs!662266 m!5016247))

(assert (=> d!1303259 d!1303947))

(declare-fun d!1303949 () Bool)

(declare-fun res!1803507 () Bool)

(declare-fun e!2726043 () Bool)

(assert (=> d!1303949 (=> res!1803507 e!2726043)))

(assert (=> d!1303949 (= res!1803507 ((_ is Nil!49157) (t!356207 (toList!3141 lm!1707))))))

(assert (=> d!1303949 (= (forall!9271 (t!356207 (toList!3141 lm!1707)) lambda!145163) e!2726043)))

(declare-fun b!4379400 () Bool)

(declare-fun e!2726044 () Bool)

(assert (=> b!4379400 (= e!2726043 e!2726044)))

(declare-fun res!1803508 () Bool)

(assert (=> b!4379400 (=> (not res!1803508) (not e!2726044))))

(assert (=> b!4379400 (= res!1803508 (dynLambda!20709 lambda!145163 (h!54754 (t!356207 (toList!3141 lm!1707)))))))

(declare-fun b!4379401 () Bool)

(assert (=> b!4379401 (= e!2726044 (forall!9271 (t!356207 (t!356207 (toList!3141 lm!1707))) lambda!145163))))

(assert (= (and d!1303949 (not res!1803507)) b!4379400))

(assert (= (and b!4379400 res!1803508) b!4379401))

(declare-fun b_lambda!135119 () Bool)

(assert (=> (not b_lambda!135119) (not b!4379400)))

(declare-fun m!5016249 () Bool)

(assert (=> b!4379400 m!5016249))

(declare-fun m!5016251 () Bool)

(assert (=> b!4379401 m!5016251))

(assert (=> d!1303259 d!1303949))

(assert (=> d!1303261 d!1303179))

(declare-fun bs!662267 () Bool)

(declare-fun b!4379404 () Bool)

(assert (= bs!662267 (and b!4379404 b!4378969)))

(declare-fun lambda!145325 () Int)

(assert (=> bs!662267 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589671) (= lambda!145325 lambda!145288))))

(declare-fun bs!662268 () Bool)

(assert (= bs!662268 (and b!4379404 b!4378460)))

(assert (=> bs!662268 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589239) (= lambda!145325 lambda!145228))))

(declare-fun bs!662269 () Bool)

(assert (= bs!662269 (and b!4379404 d!1303179)))

(assert (=> bs!662269 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588922) (= lambda!145325 lambda!145155))))

(declare-fun bs!662270 () Bool)

(assert (= bs!662270 (and b!4379404 b!4378412)))

(assert (=> bs!662270 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589205) (= lambda!145325 lambda!145217))))

(declare-fun bs!662271 () Bool)

(assert (= bs!662271 (and b!4379404 b!4378047)))

(assert (=> bs!662271 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 lt!1588594 lt!1588602)) (= lambda!145325 lambda!145160))))

(declare-fun bs!662272 () Bool)

(assert (= bs!662272 (and b!4379404 d!1303643)))

(assert (=> bs!662272 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589561) (= lambda!145325 lambda!145274))))

(declare-fun bs!662273 () Bool)

(assert (= bs!662273 (and b!4379404 b!4378411)))

(assert (=> bs!662273 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145325 lambda!145213))))

(declare-fun bs!662274 () Bool)

(assert (= bs!662274 (and b!4379404 b!4378869)))

(assert (=> bs!662274 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589551) (= lambda!145325 lambda!145272))))

(declare-fun bs!662275 () Bool)

(assert (= bs!662275 (and b!4379404 b!4378290)))

(assert (=> bs!662275 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145325 lambda!145192))))

(declare-fun bs!662276 () Bool)

(assert (= bs!662276 (and b!4379404 d!1303383)))

(assert (=> bs!662276 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589011) (= lambda!145325 lambda!145200))))

(declare-fun bs!662277 () Bool)

(assert (= bs!662277 (and b!4379404 b!4378968)))

(assert (=> bs!662277 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145325 lambda!145283))))

(declare-fun bs!662278 () Bool)

(assert (= bs!662278 (and b!4379404 b!4378063)))

(assert (=> bs!662278 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589011) (= lambda!145325 lambda!145166))))

(declare-fun bs!662279 () Bool)

(assert (= bs!662279 (and b!4379404 d!1303945)))

(assert (=> bs!662279 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588912) (= lambda!145325 lambda!145324))))

(declare-fun bs!662280 () Bool)

(assert (= bs!662280 (and b!4379404 b!4378702)))

(assert (=> bs!662280 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589406) (= lambda!145325 lambda!145265))))

(declare-fun bs!662281 () Bool)

(assert (= bs!662281 (and b!4379404 d!1303867)))

(assert (=> bs!662281 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 lt!1588594 lt!1588602)) (= lambda!145325 lambda!145314))))

(declare-fun bs!662282 () Bool)

(assert (= bs!662282 (and b!4379404 b!4378062)))

(assert (=> bs!662282 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588594) (= lambda!145325 lambda!145164))))

(declare-fun bs!662283 () Bool)

(assert (= bs!662283 (and b!4379404 b!4377996)))

(assert (=> bs!662283 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588594) (= lambda!145325 lambda!145152))))

(declare-fun bs!662284 () Bool)

(assert (= bs!662284 (and b!4379404 b!4378291)))

(assert (=> bs!662284 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589142) (= lambda!145325 lambda!145194))))

(declare-fun bs!662285 () Bool)

(assert (= bs!662285 (and b!4379404 b!4378090)))

(assert (=> bs!662285 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588594) (= lambda!145325 lambda!145174))))

(declare-fun bs!662286 () Bool)

(assert (= bs!662286 (and b!4379404 d!1303603)))

(assert (=> bs!662286 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589416) (= lambda!145325 lambda!145266))))

(declare-fun bs!662287 () Bool)

(assert (= bs!662287 (and b!4379404 b!4378701)))

(assert (=> bs!662287 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145325 lambda!145263))))

(declare-fun bs!662288 () Bool)

(assert (= bs!662288 (and b!4379404 b!4379334)))

(assert (=> bs!662288 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589962) (= lambda!145325 lambda!145322))))

(declare-fun bs!662289 () Bool)

(assert (= bs!662289 (and b!4379404 d!1303433)))

(assert (=> bs!662289 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589250) (= lambda!145325 lambda!145231))))

(declare-fun bs!662290 () Bool)

(assert (= bs!662290 (and b!4379404 d!1303403)))

(assert (=> bs!662290 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589215) (= lambda!145325 lambda!145218))))

(assert (=> bs!662280 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145325 lambda!145264))))

(declare-fun bs!662291 () Bool)

(assert (= bs!662291 (and b!4379404 b!4378459)))

(assert (=> bs!662291 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145325 lambda!145226))))

(declare-fun bs!662292 () Bool)

(assert (= bs!662292 (and b!4379404 b!4378868)))

(assert (=> bs!662292 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145325 lambda!145267))))

(declare-fun bs!662293 () Bool)

(assert (= bs!662293 (and b!4379404 d!1303361)))

(assert (=> bs!662293 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589152) (= lambda!145325 lambda!145195))))

(assert (=> bs!662270 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145325 lambda!145215))))

(assert (=> bs!662267 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145325 lambda!145286))))

(assert (=> bs!662268 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145325 lambda!145227))))

(declare-fun bs!662294 () Bool)

(assert (= bs!662294 (and b!4379404 b!4378046)))

(assert (=> bs!662294 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 lt!1588594 lt!1588602)) (= lambda!145325 lambda!145159))))

(declare-fun bs!662295 () Bool)

(assert (= bs!662295 (and b!4379404 d!1303899)))

(assert (=> bs!662295 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589972) (= lambda!145325 lambda!145323))))

(declare-fun bs!662296 () Bool)

(assert (= bs!662296 (and b!4379404 d!1303707)))

(assert (=> bs!662296 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589681) (= lambda!145325 lambda!145289))))

(declare-fun bs!662297 () Bool)

(assert (= bs!662297 (and b!4379404 b!4377997)))

(assert (=> bs!662297 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588594) (= lambda!145325 lambda!145153))))

(declare-fun bs!662298 () Bool)

(assert (= bs!662298 (and b!4379404 b!4379333)))

(assert (=> bs!662298 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145325 lambda!145319))))

(declare-fun bs!662299 () Bool)

(assert (= bs!662299 (and b!4379404 d!1303255)))

(assert (=> bs!662299 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588981) (= lambda!145325 lambda!145162))))

(declare-fun bs!662300 () Bool)

(assert (= bs!662300 (and b!4379404 d!1303519)))

(assert (=> bs!662300 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588594) (= lambda!145325 lambda!145242))))

(declare-fun bs!662301 () Bool)

(assert (= bs!662301 (and b!4379404 d!1303661)))

(assert (=> bs!662301 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588971) (= lambda!145325 lambda!145276))))

(declare-fun bs!662302 () Bool)

(assert (= bs!662302 (and b!4379404 d!1303597)))

(assert (=> bs!662302 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589053) (= lambda!145325 lambda!145262))))

(assert (=> bs!662274 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145325 lambda!145269))))

(declare-fun bs!662303 () Bool)

(assert (= bs!662303 (and b!4379404 d!1303265)))

(assert (=> bs!662303 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589021) (= lambda!145325 lambda!145167))))

(declare-fun bs!662304 () Bool)

(assert (= bs!662304 (and b!4379404 b!4378089)))

(assert (=> bs!662304 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588594) (= lambda!145325 lambda!145173))))

(assert (=> bs!662285 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589053) (= lambda!145325 lambda!145175))))

(assert (=> bs!662278 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588594) (= lambda!145325 lambda!145165))))

(declare-fun bs!662305 () Bool)

(assert (= bs!662305 (and b!4379404 d!1303299)))

(assert (=> bs!662305 (not (= lambda!145325 lambda!145179))))

(assert (=> bs!662297 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588912) (= lambda!145325 lambda!145154))))

(assert (=> bs!662288 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145325 lambda!145320))))

(assert (=> bs!662284 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145325 lambda!145193))))

(assert (=> bs!662271 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588971) (= lambda!145325 lambda!145161))))

(declare-fun bs!662306 () Bool)

(assert (= bs!662306 (and b!4379404 d!1303283)))

(assert (=> bs!662306 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589063) (= lambda!145325 lambda!145176))))

(assert (=> b!4379404 true))

(declare-fun bs!662307 () Bool)

(declare-fun b!4379405 () Bool)

(assert (= bs!662307 (and b!4379405 b!4378969)))

(declare-fun lambda!145326 () Int)

(assert (=> bs!662307 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589671) (= lambda!145326 lambda!145288))))

(declare-fun bs!662308 () Bool)

(assert (= bs!662308 (and b!4379405 b!4378460)))

(assert (=> bs!662308 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589239) (= lambda!145326 lambda!145228))))

(declare-fun bs!662309 () Bool)

(assert (= bs!662309 (and b!4379405 d!1303179)))

(assert (=> bs!662309 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588922) (= lambda!145326 lambda!145155))))

(declare-fun bs!662310 () Bool)

(assert (= bs!662310 (and b!4379405 b!4378412)))

(assert (=> bs!662310 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589205) (= lambda!145326 lambda!145217))))

(declare-fun bs!662311 () Bool)

(assert (= bs!662311 (and b!4379405 b!4378047)))

(assert (=> bs!662311 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 lt!1588594 lt!1588602)) (= lambda!145326 lambda!145160))))

(declare-fun bs!662312 () Bool)

(assert (= bs!662312 (and b!4379405 b!4378411)))

(assert (=> bs!662312 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145326 lambda!145213))))

(declare-fun bs!662313 () Bool)

(assert (= bs!662313 (and b!4379405 b!4378869)))

(assert (=> bs!662313 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589551) (= lambda!145326 lambda!145272))))

(declare-fun bs!662314 () Bool)

(assert (= bs!662314 (and b!4379405 b!4378290)))

(assert (=> bs!662314 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145326 lambda!145192))))

(declare-fun bs!662315 () Bool)

(assert (= bs!662315 (and b!4379405 d!1303383)))

(assert (=> bs!662315 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589011) (= lambda!145326 lambda!145200))))

(declare-fun bs!662316 () Bool)

(assert (= bs!662316 (and b!4379405 b!4378968)))

(assert (=> bs!662316 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145326 lambda!145283))))

(declare-fun bs!662317 () Bool)

(assert (= bs!662317 (and b!4379405 b!4378063)))

(assert (=> bs!662317 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589011) (= lambda!145326 lambda!145166))))

(declare-fun bs!662318 () Bool)

(assert (= bs!662318 (and b!4379405 d!1303945)))

(assert (=> bs!662318 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588912) (= lambda!145326 lambda!145324))))

(declare-fun bs!662319 () Bool)

(assert (= bs!662319 (and b!4379405 b!4378702)))

(assert (=> bs!662319 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589406) (= lambda!145326 lambda!145265))))

(declare-fun bs!662320 () Bool)

(assert (= bs!662320 (and b!4379405 d!1303867)))

(assert (=> bs!662320 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 lt!1588594 lt!1588602)) (= lambda!145326 lambda!145314))))

(declare-fun bs!662321 () Bool)

(assert (= bs!662321 (and b!4379405 b!4378062)))

(assert (=> bs!662321 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588594) (= lambda!145326 lambda!145164))))

(declare-fun bs!662322 () Bool)

(assert (= bs!662322 (and b!4379405 b!4377996)))

(assert (=> bs!662322 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588594) (= lambda!145326 lambda!145152))))

(declare-fun bs!662323 () Bool)

(assert (= bs!662323 (and b!4379405 b!4378291)))

(assert (=> bs!662323 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589142) (= lambda!145326 lambda!145194))))

(declare-fun bs!662324 () Bool)

(assert (= bs!662324 (and b!4379405 b!4378090)))

(assert (=> bs!662324 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588594) (= lambda!145326 lambda!145174))))

(declare-fun bs!662325 () Bool)

(assert (= bs!662325 (and b!4379405 d!1303603)))

(assert (=> bs!662325 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589416) (= lambda!145326 lambda!145266))))

(declare-fun bs!662326 () Bool)

(assert (= bs!662326 (and b!4379405 b!4378701)))

(assert (=> bs!662326 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145326 lambda!145263))))

(declare-fun bs!662327 () Bool)

(assert (= bs!662327 (and b!4379405 b!4379334)))

(assert (=> bs!662327 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589962) (= lambda!145326 lambda!145322))))

(declare-fun bs!662328 () Bool)

(assert (= bs!662328 (and b!4379405 d!1303433)))

(assert (=> bs!662328 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589250) (= lambda!145326 lambda!145231))))

(declare-fun bs!662329 () Bool)

(assert (= bs!662329 (and b!4379405 d!1303403)))

(assert (=> bs!662329 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589215) (= lambda!145326 lambda!145218))))

(assert (=> bs!662319 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145326 lambda!145264))))

(declare-fun bs!662330 () Bool)

(assert (= bs!662330 (and b!4379405 b!4378459)))

(assert (=> bs!662330 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145326 lambda!145226))))

(declare-fun bs!662331 () Bool)

(assert (= bs!662331 (and b!4379405 b!4379404)))

(assert (=> bs!662331 (= lambda!145326 lambda!145325)))

(declare-fun bs!662332 () Bool)

(assert (= bs!662332 (and b!4379405 d!1303643)))

(assert (=> bs!662332 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589561) (= lambda!145326 lambda!145274))))

(declare-fun bs!662333 () Bool)

(assert (= bs!662333 (and b!4379405 b!4378868)))

(assert (=> bs!662333 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145326 lambda!145267))))

(declare-fun bs!662334 () Bool)

(assert (= bs!662334 (and b!4379405 d!1303361)))

(assert (=> bs!662334 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589152) (= lambda!145326 lambda!145195))))

(assert (=> bs!662310 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145326 lambda!145215))))

(assert (=> bs!662307 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145326 lambda!145286))))

(assert (=> bs!662308 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145326 lambda!145227))))

(declare-fun bs!662336 () Bool)

(assert (= bs!662336 (and b!4379405 b!4378046)))

(assert (=> bs!662336 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 lt!1588594 lt!1588602)) (= lambda!145326 lambda!145159))))

(declare-fun bs!662337 () Bool)

(assert (= bs!662337 (and b!4379405 d!1303899)))

(assert (=> bs!662337 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589972) (= lambda!145326 lambda!145323))))

(declare-fun bs!662338 () Bool)

(assert (= bs!662338 (and b!4379405 d!1303707)))

(assert (=> bs!662338 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589681) (= lambda!145326 lambda!145289))))

(declare-fun bs!662339 () Bool)

(assert (= bs!662339 (and b!4379405 b!4377997)))

(assert (=> bs!662339 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588594) (= lambda!145326 lambda!145153))))

(declare-fun bs!662340 () Bool)

(assert (= bs!662340 (and b!4379405 b!4379333)))

(assert (=> bs!662340 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145326 lambda!145319))))

(declare-fun bs!662341 () Bool)

(assert (= bs!662341 (and b!4379405 d!1303255)))

(assert (=> bs!662341 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588981) (= lambda!145326 lambda!145162))))

(declare-fun bs!662342 () Bool)

(assert (= bs!662342 (and b!4379405 d!1303519)))

(assert (=> bs!662342 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588594) (= lambda!145326 lambda!145242))))

(declare-fun bs!662343 () Bool)

(assert (= bs!662343 (and b!4379405 d!1303661)))

(assert (=> bs!662343 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588971) (= lambda!145326 lambda!145276))))

(declare-fun bs!662344 () Bool)

(assert (= bs!662344 (and b!4379405 d!1303597)))

(assert (=> bs!662344 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589053) (= lambda!145326 lambda!145262))))

(assert (=> bs!662313 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145326 lambda!145269))))

(declare-fun bs!662346 () Bool)

(assert (= bs!662346 (and b!4379405 d!1303265)))

(assert (=> bs!662346 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589021) (= lambda!145326 lambda!145167))))

(declare-fun bs!662348 () Bool)

(assert (= bs!662348 (and b!4379405 b!4378089)))

(assert (=> bs!662348 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588594) (= lambda!145326 lambda!145173))))

(assert (=> bs!662324 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589053) (= lambda!145326 lambda!145175))))

(assert (=> bs!662317 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588594) (= lambda!145326 lambda!145165))))

(declare-fun bs!662352 () Bool)

(assert (= bs!662352 (and b!4379405 d!1303299)))

(assert (=> bs!662352 (not (= lambda!145326 lambda!145179))))

(assert (=> bs!662339 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588912) (= lambda!145326 lambda!145154))))

(assert (=> bs!662327 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145326 lambda!145320))))

(assert (=> bs!662323 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145326 lambda!145193))))

(assert (=> bs!662311 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1588971) (= lambda!145326 lambda!145161))))

(declare-fun bs!662357 () Bool)

(assert (= bs!662357 (and b!4379405 d!1303283)))

(assert (=> bs!662357 (= (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1589063) (= lambda!145326 lambda!145176))))

(assert (=> b!4379405 true))

(declare-fun lambda!145328 () Int)

(declare-fun lt!1590016 () ListMap!2385)

(assert (=> bs!662307 (= (= lt!1590016 lt!1589671) (= lambda!145328 lambda!145288))))

(assert (=> bs!662308 (= (= lt!1590016 lt!1589239) (= lambda!145328 lambda!145228))))

(assert (=> bs!662309 (= (= lt!1590016 lt!1588922) (= lambda!145328 lambda!145155))))

(assert (=> bs!662310 (= (= lt!1590016 lt!1589205) (= lambda!145328 lambda!145217))))

(assert (=> bs!662311 (= (= lt!1590016 (+!790 lt!1588594 lt!1588602)) (= lambda!145328 lambda!145160))))

(assert (=> bs!662312 (= (= lt!1590016 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145328 lambda!145213))))

(assert (=> bs!662313 (= (= lt!1590016 lt!1589551) (= lambda!145328 lambda!145272))))

(assert (=> bs!662314 (= (= lt!1590016 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145328 lambda!145192))))

(assert (=> bs!662315 (= (= lt!1590016 lt!1589011) (= lambda!145328 lambda!145200))))

(assert (=> bs!662316 (= (= lt!1590016 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145328 lambda!145283))))

(assert (=> bs!662317 (= (= lt!1590016 lt!1589011) (= lambda!145328 lambda!145166))))

(assert (=> bs!662318 (= (= lt!1590016 lt!1588912) (= lambda!145328 lambda!145324))))

(assert (=> bs!662319 (= (= lt!1590016 lt!1589406) (= lambda!145328 lambda!145265))))

(assert (=> bs!662320 (= (= lt!1590016 (+!790 lt!1588594 lt!1588602)) (= lambda!145328 lambda!145314))))

(assert (=> bs!662321 (= (= lt!1590016 lt!1588594) (= lambda!145328 lambda!145164))))

(assert (=> bs!662322 (= (= lt!1590016 lt!1588594) (= lambda!145328 lambda!145152))))

(assert (=> bs!662323 (= (= lt!1590016 lt!1589142) (= lambda!145328 lambda!145194))))

(assert (=> bs!662324 (= (= lt!1590016 lt!1588594) (= lambda!145328 lambda!145174))))

(assert (=> bs!662325 (= (= lt!1590016 lt!1589416) (= lambda!145328 lambda!145266))))

(assert (=> b!4379405 (= (= lt!1590016 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) (= lambda!145328 lambda!145326))))

(assert (=> bs!662326 (= (= lt!1590016 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145328 lambda!145263))))

(assert (=> bs!662327 (= (= lt!1590016 lt!1589962) (= lambda!145328 lambda!145322))))

(assert (=> bs!662328 (= (= lt!1590016 lt!1589250) (= lambda!145328 lambda!145231))))

(assert (=> bs!662329 (= (= lt!1590016 lt!1589215) (= lambda!145328 lambda!145218))))

(assert (=> bs!662319 (= (= lt!1590016 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145328 lambda!145264))))

(assert (=> bs!662330 (= (= lt!1590016 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145328 lambda!145226))))

(assert (=> bs!662331 (= (= lt!1590016 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) (= lambda!145328 lambda!145325))))

(assert (=> bs!662332 (= (= lt!1590016 lt!1589561) (= lambda!145328 lambda!145274))))

(assert (=> bs!662333 (= (= lt!1590016 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145328 lambda!145267))))

(assert (=> bs!662334 (= (= lt!1590016 lt!1589152) (= lambda!145328 lambda!145195))))

(assert (=> bs!662310 (= (= lt!1590016 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145328 lambda!145215))))

(assert (=> bs!662307 (= (= lt!1590016 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145328 lambda!145286))))

(assert (=> bs!662308 (= (= lt!1590016 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145328 lambda!145227))))

(assert (=> bs!662336 (= (= lt!1590016 (+!790 lt!1588594 lt!1588602)) (= lambda!145328 lambda!145159))))

(assert (=> bs!662337 (= (= lt!1590016 lt!1589972) (= lambda!145328 lambda!145323))))

(assert (=> bs!662338 (= (= lt!1590016 lt!1589681) (= lambda!145328 lambda!145289))))

(assert (=> bs!662339 (= (= lt!1590016 lt!1588594) (= lambda!145328 lambda!145153))))

(assert (=> bs!662340 (= (= lt!1590016 (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145328 lambda!145319))))

(assert (=> bs!662341 (= (= lt!1590016 lt!1588981) (= lambda!145328 lambda!145162))))

(assert (=> bs!662342 (= (= lt!1590016 lt!1588594) (= lambda!145328 lambda!145242))))

(assert (=> bs!662343 (= (= lt!1590016 lt!1588971) (= lambda!145328 lambda!145276))))

(assert (=> bs!662344 (= (= lt!1590016 lt!1589053) (= lambda!145328 lambda!145262))))

(assert (=> bs!662313 (= (= lt!1590016 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145328 lambda!145269))))

(assert (=> bs!662346 (= (= lt!1590016 lt!1589021) (= lambda!145328 lambda!145167))))

(assert (=> bs!662348 (= (= lt!1590016 lt!1588594) (= lambda!145328 lambda!145173))))

(assert (=> bs!662324 (= (= lt!1590016 lt!1589053) (= lambda!145328 lambda!145175))))

(assert (=> bs!662317 (= (= lt!1590016 lt!1588594) (= lambda!145328 lambda!145165))))

(assert (=> bs!662352 (not (= lambda!145328 lambda!145179))))

(assert (=> bs!662339 (= (= lt!1590016 lt!1588912) (= lambda!145328 lambda!145154))))

(assert (=> bs!662327 (= (= lt!1590016 (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145328 lambda!145320))))

(assert (=> bs!662323 (= (= lt!1590016 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145328 lambda!145193))))

(assert (=> bs!662311 (= (= lt!1590016 lt!1588971) (= lambda!145328 lambda!145161))))

(assert (=> bs!662357 (= (= lt!1590016 lt!1589063) (= lambda!145328 lambda!145176))))

(assert (=> b!4379405 true))

(declare-fun bs!662359 () Bool)

(declare-fun d!1303951 () Bool)

(assert (= bs!662359 (and d!1303951 b!4378969)))

(declare-fun lt!1590026 () ListMap!2385)

(declare-fun lambda!145329 () Int)

(assert (=> bs!662359 (= (= lt!1590026 lt!1589671) (= lambda!145329 lambda!145288))))

(declare-fun bs!662360 () Bool)

(assert (= bs!662360 (and d!1303951 b!4378460)))

(assert (=> bs!662360 (= (= lt!1590026 lt!1589239) (= lambda!145329 lambda!145228))))

(declare-fun bs!662361 () Bool)

(assert (= bs!662361 (and d!1303951 d!1303179)))

(assert (=> bs!662361 (= (= lt!1590026 lt!1588922) (= lambda!145329 lambda!145155))))

(declare-fun bs!662362 () Bool)

(assert (= bs!662362 (and d!1303951 b!4378412)))

(assert (=> bs!662362 (= (= lt!1590026 lt!1589205) (= lambda!145329 lambda!145217))))

(declare-fun bs!662363 () Bool)

(assert (= bs!662363 (and d!1303951 b!4378047)))

(assert (=> bs!662363 (= (= lt!1590026 (+!790 lt!1588594 lt!1588602)) (= lambda!145329 lambda!145160))))

(declare-fun bs!662364 () Bool)

(assert (= bs!662364 (and d!1303951 b!4378411)))

(assert (=> bs!662364 (= (= lt!1590026 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145329 lambda!145213))))

(declare-fun bs!662366 () Bool)

(assert (= bs!662366 (and d!1303951 b!4378869)))

(assert (=> bs!662366 (= (= lt!1590026 lt!1589551) (= lambda!145329 lambda!145272))))

(declare-fun bs!662367 () Bool)

(assert (= bs!662367 (and d!1303951 b!4378290)))

(assert (=> bs!662367 (= (= lt!1590026 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145329 lambda!145192))))

(declare-fun bs!662368 () Bool)

(assert (= bs!662368 (and d!1303951 d!1303383)))

(assert (=> bs!662368 (= (= lt!1590026 lt!1589011) (= lambda!145329 lambda!145200))))

(declare-fun bs!662369 () Bool)

(assert (= bs!662369 (and d!1303951 b!4378968)))

(assert (=> bs!662369 (= (= lt!1590026 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145329 lambda!145283))))

(declare-fun bs!662370 () Bool)

(assert (= bs!662370 (and d!1303951 b!4378063)))

(assert (=> bs!662370 (= (= lt!1590026 lt!1589011) (= lambda!145329 lambda!145166))))

(declare-fun bs!662371 () Bool)

(assert (= bs!662371 (and d!1303951 d!1303945)))

(assert (=> bs!662371 (= (= lt!1590026 lt!1588912) (= lambda!145329 lambda!145324))))

(declare-fun bs!662372 () Bool)

(assert (= bs!662372 (and d!1303951 b!4378702)))

(assert (=> bs!662372 (= (= lt!1590026 lt!1589406) (= lambda!145329 lambda!145265))))

(declare-fun bs!662373 () Bool)

(assert (= bs!662373 (and d!1303951 d!1303867)))

(assert (=> bs!662373 (= (= lt!1590026 (+!790 lt!1588594 lt!1588602)) (= lambda!145329 lambda!145314))))

(declare-fun bs!662374 () Bool)

(assert (= bs!662374 (and d!1303951 b!4378062)))

(assert (=> bs!662374 (= (= lt!1590026 lt!1588594) (= lambda!145329 lambda!145164))))

(declare-fun bs!662375 () Bool)

(assert (= bs!662375 (and d!1303951 b!4377996)))

(assert (=> bs!662375 (= (= lt!1590026 lt!1588594) (= lambda!145329 lambda!145152))))

(declare-fun bs!662376 () Bool)

(assert (= bs!662376 (and d!1303951 b!4378291)))

(assert (=> bs!662376 (= (= lt!1590026 lt!1589142) (= lambda!145329 lambda!145194))))

(declare-fun bs!662377 () Bool)

(assert (= bs!662377 (and d!1303951 b!4378090)))

(assert (=> bs!662377 (= (= lt!1590026 lt!1588594) (= lambda!145329 lambda!145174))))

(declare-fun bs!662378 () Bool)

(assert (= bs!662378 (and d!1303951 d!1303603)))

(assert (=> bs!662378 (= (= lt!1590026 lt!1589416) (= lambda!145329 lambda!145266))))

(declare-fun bs!662379 () Bool)

(assert (= bs!662379 (and d!1303951 b!4379405)))

(assert (=> bs!662379 (= (= lt!1590026 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) (= lambda!145329 lambda!145326))))

(declare-fun bs!662381 () Bool)

(assert (= bs!662381 (and d!1303951 b!4378701)))

(assert (=> bs!662381 (= (= lt!1590026 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145329 lambda!145263))))

(declare-fun bs!662382 () Bool)

(assert (= bs!662382 (and d!1303951 b!4379334)))

(assert (=> bs!662382 (= (= lt!1590026 lt!1589962) (= lambda!145329 lambda!145322))))

(declare-fun bs!662384 () Bool)

(assert (= bs!662384 (and d!1303951 d!1303433)))

(assert (=> bs!662384 (= (= lt!1590026 lt!1589250) (= lambda!145329 lambda!145231))))

(declare-fun bs!662386 () Bool)

(assert (= bs!662386 (and d!1303951 d!1303403)))

(assert (=> bs!662386 (= (= lt!1590026 lt!1589215) (= lambda!145329 lambda!145218))))

(assert (=> bs!662372 (= (= lt!1590026 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145329 lambda!145264))))

(declare-fun bs!662389 () Bool)

(assert (= bs!662389 (and d!1303951 b!4378459)))

(assert (=> bs!662389 (= (= lt!1590026 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145329 lambda!145226))))

(declare-fun bs!662391 () Bool)

(assert (= bs!662391 (and d!1303951 b!4379404)))

(assert (=> bs!662391 (= (= lt!1590026 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) (= lambda!145329 lambda!145325))))

(declare-fun bs!662394 () Bool)

(assert (= bs!662394 (and d!1303951 d!1303643)))

(assert (=> bs!662394 (= (= lt!1590026 lt!1589561) (= lambda!145329 lambda!145274))))

(declare-fun bs!662396 () Bool)

(assert (= bs!662396 (and d!1303951 b!4378868)))

(assert (=> bs!662396 (= (= lt!1590026 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145329 lambda!145267))))

(declare-fun bs!662398 () Bool)

(assert (= bs!662398 (and d!1303951 d!1303361)))

(assert (=> bs!662398 (= (= lt!1590026 lt!1589152) (= lambda!145329 lambda!145195))))

(assert (=> bs!662362 (= (= lt!1590026 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145329 lambda!145215))))

(assert (=> bs!662359 (= (= lt!1590026 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145329 lambda!145286))))

(assert (=> bs!662360 (= (= lt!1590026 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145329 lambda!145227))))

(declare-fun bs!662399 () Bool)

(assert (= bs!662399 (and d!1303951 b!4378046)))

(assert (=> bs!662399 (= (= lt!1590026 (+!790 lt!1588594 lt!1588602)) (= lambda!145329 lambda!145159))))

(declare-fun bs!662400 () Bool)

(assert (= bs!662400 (and d!1303951 d!1303899)))

(assert (=> bs!662400 (= (= lt!1590026 lt!1589972) (= lambda!145329 lambda!145323))))

(declare-fun bs!662402 () Bool)

(assert (= bs!662402 (and d!1303951 d!1303707)))

(assert (=> bs!662402 (= (= lt!1590026 lt!1589681) (= lambda!145329 lambda!145289))))

(declare-fun bs!662404 () Bool)

(assert (= bs!662404 (and d!1303951 b!4377997)))

(assert (=> bs!662404 (= (= lt!1590026 lt!1588594) (= lambda!145329 lambda!145153))))

(declare-fun bs!662406 () Bool)

(assert (= bs!662406 (and d!1303951 b!4379333)))

(assert (=> bs!662406 (= (= lt!1590026 (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145329 lambda!145319))))

(declare-fun bs!662408 () Bool)

(assert (= bs!662408 (and d!1303951 d!1303255)))

(assert (=> bs!662408 (= (= lt!1590026 lt!1588981) (= lambda!145329 lambda!145162))))

(declare-fun bs!662410 () Bool)

(assert (= bs!662410 (and d!1303951 d!1303519)))

(assert (=> bs!662410 (= (= lt!1590026 lt!1588594) (= lambda!145329 lambda!145242))))

(declare-fun bs!662412 () Bool)

(assert (= bs!662412 (and d!1303951 d!1303661)))

(assert (=> bs!662412 (= (= lt!1590026 lt!1588971) (= lambda!145329 lambda!145276))))

(declare-fun bs!662414 () Bool)

(assert (= bs!662414 (and d!1303951 d!1303597)))

(assert (=> bs!662414 (= (= lt!1590026 lt!1589053) (= lambda!145329 lambda!145262))))

(assert (=> bs!662366 (= (= lt!1590026 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145329 lambda!145269))))

(assert (=> bs!662379 (= (= lt!1590026 lt!1590016) (= lambda!145329 lambda!145328))))

(declare-fun bs!662418 () Bool)

(assert (= bs!662418 (and d!1303951 d!1303265)))

(assert (=> bs!662418 (= (= lt!1590026 lt!1589021) (= lambda!145329 lambda!145167))))

(declare-fun bs!662420 () Bool)

(assert (= bs!662420 (and d!1303951 b!4378089)))

(assert (=> bs!662420 (= (= lt!1590026 lt!1588594) (= lambda!145329 lambda!145173))))

(assert (=> bs!662377 (= (= lt!1590026 lt!1589053) (= lambda!145329 lambda!145175))))

(assert (=> bs!662370 (= (= lt!1590026 lt!1588594) (= lambda!145329 lambda!145165))))

(declare-fun bs!662421 () Bool)

(assert (= bs!662421 (and d!1303951 d!1303299)))

(assert (=> bs!662421 (not (= lambda!145329 lambda!145179))))

(assert (=> bs!662404 (= (= lt!1590026 lt!1588912) (= lambda!145329 lambda!145154))))

(assert (=> bs!662382 (= (= lt!1590026 (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145329 lambda!145320))))

(assert (=> bs!662376 (= (= lt!1590026 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145329 lambda!145193))))

(assert (=> bs!662363 (= (= lt!1590026 lt!1588971) (= lambda!145329 lambda!145161))))

(declare-fun bs!662427 () Bool)

(assert (= bs!662427 (and d!1303951 d!1303283)))

(assert (=> bs!662427 (= (= lt!1590026 lt!1589063) (= lambda!145329 lambda!145176))))

(assert (=> d!1303951 true))

(declare-fun b!4379402 () Bool)

(declare-fun e!2726047 () Bool)

(assert (=> b!4379402 (= e!2726047 (forall!9273 (toList!3142 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) lambda!145328))))

(declare-fun c!744836 () Bool)

(declare-fun bm!304632 () Bool)

(declare-fun call!304638 () Bool)

(assert (=> bm!304632 (= call!304638 (forall!9273 (ite c!744836 (toList!3142 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) (t!356206 lt!1588612)) (ite c!744836 lambda!145325 lambda!145328)))))

(declare-fun b!4379403 () Bool)

(declare-fun e!2726045 () Bool)

(assert (=> b!4379403 (= e!2726045 (invariantList!723 (toList!3142 lt!1590026)))))

(declare-fun call!304639 () Unit!75116)

(declare-fun bm!304633 () Bool)

(assert (=> bm!304633 (= call!304639 (lemmaContainsAllItsOwnKeys!105 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))))))

(declare-fun e!2726046 () ListMap!2385)

(assert (=> b!4379404 (= e!2726046 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)))))

(declare-fun lt!1590025 () Unit!75116)

(assert (=> b!4379404 (= lt!1590025 call!304639)))

(assert (=> b!4379404 call!304638))

(declare-fun lt!1590032 () Unit!75116)

(assert (=> b!4379404 (= lt!1590032 lt!1590025)))

(declare-fun call!304637 () Bool)

(assert (=> b!4379404 call!304637))

(declare-fun lt!1590030 () Unit!75116)

(declare-fun Unit!75465 () Unit!75116)

(assert (=> b!4379404 (= lt!1590030 Unit!75465)))

(assert (=> d!1303951 e!2726045))

(declare-fun res!1803511 () Bool)

(assert (=> d!1303951 (=> (not res!1803511) (not e!2726045))))

(assert (=> d!1303951 (= res!1803511 (forall!9273 lt!1588612 lambda!145329))))

(assert (=> d!1303951 (= lt!1590026 e!2726046)))

(assert (=> d!1303951 (= c!744836 ((_ is Nil!49156) lt!1588612))))

(assert (=> d!1303951 (noDuplicateKeys!579 lt!1588612)))

(assert (=> d!1303951 (= (addToMapMapFromBucket!260 lt!1588612 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) lt!1590026)))

(assert (=> b!4379405 (= e!2726046 lt!1590016)))

(declare-fun lt!1590019 () ListMap!2385)

(assert (=> b!4379405 (= lt!1590019 (+!790 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (h!54753 lt!1588612)))))

(assert (=> b!4379405 (= lt!1590016 (addToMapMapFromBucket!260 (t!356206 lt!1588612) (+!790 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) (h!54753 lt!1588612))))))

(declare-fun lt!1590015 () Unit!75116)

(assert (=> b!4379405 (= lt!1590015 call!304639)))

(assert (=> b!4379405 (forall!9273 (toList!3142 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) lambda!145326)))

(declare-fun lt!1590024 () Unit!75116)

(assert (=> b!4379405 (= lt!1590024 lt!1590015)))

(assert (=> b!4379405 (forall!9273 (toList!3142 lt!1590019) lambda!145328)))

(declare-fun lt!1590013 () Unit!75116)

(declare-fun Unit!75466 () Unit!75116)

(assert (=> b!4379405 (= lt!1590013 Unit!75466)))

(assert (=> b!4379405 call!304638))

(declare-fun lt!1590027 () Unit!75116)

(declare-fun Unit!75467 () Unit!75116)

(assert (=> b!4379405 (= lt!1590027 Unit!75467)))

(declare-fun lt!1590018 () Unit!75116)

(declare-fun Unit!75468 () Unit!75116)

(assert (=> b!4379405 (= lt!1590018 Unit!75468)))

(declare-fun lt!1590031 () Unit!75116)

(assert (=> b!4379405 (= lt!1590031 (forallContained!1911 (toList!3142 lt!1590019) lambda!145328 (h!54753 lt!1588612)))))

(assert (=> b!4379405 (contains!11488 lt!1590019 (_1!27637 (h!54753 lt!1588612)))))

(declare-fun lt!1590028 () Unit!75116)

(declare-fun Unit!75469 () Unit!75116)

(assert (=> b!4379405 (= lt!1590028 Unit!75469)))

(assert (=> b!4379405 (contains!11488 lt!1590016 (_1!27637 (h!54753 lt!1588612)))))

(declare-fun lt!1590014 () Unit!75116)

(declare-fun Unit!75470 () Unit!75116)

(assert (=> b!4379405 (= lt!1590014 Unit!75470)))

(assert (=> b!4379405 (forall!9273 lt!1588612 lambda!145328)))

(declare-fun lt!1590021 () Unit!75116)

(declare-fun Unit!75471 () Unit!75116)

(assert (=> b!4379405 (= lt!1590021 Unit!75471)))

(assert (=> b!4379405 call!304637))

(declare-fun lt!1590020 () Unit!75116)

(declare-fun Unit!75472 () Unit!75116)

(assert (=> b!4379405 (= lt!1590020 Unit!75472)))

(declare-fun lt!1590017 () Unit!75116)

(declare-fun Unit!75473 () Unit!75116)

(assert (=> b!4379405 (= lt!1590017 Unit!75473)))

(declare-fun lt!1590023 () Unit!75116)

(assert (=> b!4379405 (= lt!1590023 (addForallContainsKeyThenBeforeAdding!105 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1590016 (_1!27637 (h!54753 lt!1588612)) (_2!27637 (h!54753 lt!1588612))))))

(assert (=> b!4379405 (forall!9273 (toList!3142 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) lambda!145328)))

(declare-fun lt!1590012 () Unit!75116)

(assert (=> b!4379405 (= lt!1590012 lt!1590023)))

(assert (=> b!4379405 (forall!9273 (toList!3142 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) lambda!145328)))

(declare-fun lt!1590022 () Unit!75116)

(declare-fun Unit!75474 () Unit!75116)

(assert (=> b!4379405 (= lt!1590022 Unit!75474)))

(declare-fun res!1803510 () Bool)

(assert (=> b!4379405 (= res!1803510 (forall!9273 lt!1588612 lambda!145328))))

(assert (=> b!4379405 (=> (not res!1803510) (not e!2726047))))

(assert (=> b!4379405 e!2726047))

(declare-fun lt!1590029 () Unit!75116)

(declare-fun Unit!75475 () Unit!75116)

(assert (=> b!4379405 (= lt!1590029 Unit!75475)))

(declare-fun b!4379406 () Bool)

(declare-fun res!1803509 () Bool)

(assert (=> b!4379406 (=> (not res!1803509) (not e!2726045))))

(assert (=> b!4379406 (= res!1803509 (forall!9273 (toList!3142 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) lambda!145329))))

(declare-fun bm!304634 () Bool)

(assert (=> bm!304634 (= call!304637 (forall!9273 (ite c!744836 (toList!3142 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) (toList!3142 lt!1590019)) (ite c!744836 lambda!145325 lambda!145328)))))

(assert (= (and d!1303951 c!744836) b!4379404))

(assert (= (and d!1303951 (not c!744836)) b!4379405))

(assert (= (and b!4379405 res!1803510) b!4379402))

(assert (= (or b!4379404 b!4379405) bm!304633))

(assert (= (or b!4379404 b!4379405) bm!304632))

(assert (= (or b!4379404 b!4379405) bm!304634))

(assert (= (and d!1303951 res!1803511) b!4379406))

(assert (= (and b!4379406 res!1803509) b!4379403))

(declare-fun m!5016295 () Bool)

(assert (=> b!4379403 m!5016295))

(declare-fun m!5016297 () Bool)

(assert (=> b!4379402 m!5016297))

(declare-fun m!5016299 () Bool)

(assert (=> b!4379406 m!5016299))

(declare-fun m!5016301 () Bool)

(assert (=> bm!304634 m!5016301))

(assert (=> b!4379405 m!5016297))

(assert (=> b!4379405 m!5016297))

(assert (=> b!4379405 m!5013561))

(declare-fun m!5016303 () Bool)

(assert (=> b!4379405 m!5016303))

(declare-fun m!5016305 () Bool)

(assert (=> b!4379405 m!5016305))

(declare-fun m!5016307 () Bool)

(assert (=> b!4379405 m!5016307))

(declare-fun m!5016309 () Bool)

(assert (=> b!4379405 m!5016309))

(declare-fun m!5016313 () Bool)

(assert (=> b!4379405 m!5016313))

(assert (=> b!4379405 m!5016313))

(assert (=> b!4379405 m!5013561))

(assert (=> b!4379405 m!5016305))

(declare-fun m!5016319 () Bool)

(assert (=> b!4379405 m!5016319))

(declare-fun m!5016323 () Bool)

(assert (=> b!4379405 m!5016323))

(declare-fun m!5016325 () Bool)

(assert (=> b!4379405 m!5016325))

(declare-fun m!5016329 () Bool)

(assert (=> b!4379405 m!5016329))

(assert (=> bm!304633 m!5013561))

(declare-fun m!5016333 () Bool)

(assert (=> bm!304633 m!5016333))

(declare-fun m!5016337 () Bool)

(assert (=> d!1303951 m!5016337))

(assert (=> d!1303951 m!5013439))

(declare-fun m!5016341 () Bool)

(assert (=> bm!304632 m!5016341))

(assert (=> d!1303261 d!1303951))

(declare-fun d!1303971 () Bool)

(declare-fun e!2726063 () Bool)

(assert (=> d!1303971 e!2726063))

(declare-fun res!1803525 () Bool)

(assert (=> d!1303971 (=> (not res!1803525) (not e!2726063))))

(declare-fun lt!1590046 () ListMap!2385)

(assert (=> d!1303971 (= res!1803525 (contains!11488 lt!1590046 (_1!27637 (tuple2!48687 key!3918 newValue!99))))))

(declare-fun lt!1590047 () List!49280)

(assert (=> d!1303971 (= lt!1590046 (ListMap!2386 lt!1590047))))

(declare-fun lt!1590048 () Unit!75116)

(declare-fun lt!1590049 () Unit!75116)

(assert (=> d!1303971 (= lt!1590048 lt!1590049)))

(assert (=> d!1303971 (= (getValueByKey!545 lt!1590047 (_1!27637 (tuple2!48687 key!3918 newValue!99))) (Some!10558 (_2!27637 (tuple2!48687 key!3918 newValue!99))))))

(assert (=> d!1303971 (= lt!1590049 (lemmaContainsTupThenGetReturnValue!309 lt!1590047 (_1!27637 (tuple2!48687 key!3918 newValue!99)) (_2!27637 (tuple2!48687 key!3918 newValue!99))))))

(assert (=> d!1303971 (= lt!1590047 (insertNoDuplicatedKeys!141 (toList!3142 lt!1588594) (_1!27637 (tuple2!48687 key!3918 newValue!99)) (_2!27637 (tuple2!48687 key!3918 newValue!99))))))

(assert (=> d!1303971 (= (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99)) lt!1590046)))

(declare-fun b!4379428 () Bool)

(declare-fun res!1803526 () Bool)

(assert (=> b!4379428 (=> (not res!1803526) (not e!2726063))))

(assert (=> b!4379428 (= res!1803526 (= (getValueByKey!545 (toList!3142 lt!1590046) (_1!27637 (tuple2!48687 key!3918 newValue!99))) (Some!10558 (_2!27637 (tuple2!48687 key!3918 newValue!99)))))))

(declare-fun b!4379429 () Bool)

(assert (=> b!4379429 (= e!2726063 (contains!11493 (toList!3142 lt!1590046) (tuple2!48687 key!3918 newValue!99)))))

(assert (= (and d!1303971 res!1803525) b!4379428))

(assert (= (and b!4379428 res!1803526) b!4379429))

(declare-fun m!5016353 () Bool)

(assert (=> d!1303971 m!5016353))

(declare-fun m!5016355 () Bool)

(assert (=> d!1303971 m!5016355))

(declare-fun m!5016357 () Bool)

(assert (=> d!1303971 m!5016357))

(declare-fun m!5016359 () Bool)

(assert (=> d!1303971 m!5016359))

(declare-fun m!5016361 () Bool)

(assert (=> b!4379428 m!5016361))

(declare-fun m!5016363 () Bool)

(assert (=> b!4379429 m!5016363))

(assert (=> d!1303261 d!1303971))

(declare-fun d!1303977 () Bool)

(assert (=> d!1303977 (eq!317 (addToMapMapFromBucket!260 lt!1588612 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) (+!790 (addToMapMapFromBucket!260 lt!1588612 lt!1588594) (tuple2!48687 key!3918 newValue!99)))))

(assert (=> d!1303977 true))

(declare-fun _$15!592 () Unit!75116)

(assert (=> d!1303977 (= (choose!27294 lt!1588594 key!3918 newValue!99 lt!1588612) _$15!592)))

(declare-fun bs!662496 () Bool)

(assert (= bs!662496 d!1303977))

(assert (=> bs!662496 m!5013563))

(assert (=> bs!662496 m!5013565))

(assert (=> bs!662496 m!5013567))

(assert (=> bs!662496 m!5012953))

(assert (=> bs!662496 m!5013561))

(assert (=> bs!662496 m!5012953))

(assert (=> bs!662496 m!5013565))

(assert (=> bs!662496 m!5013561))

(assert (=> bs!662496 m!5013563))

(assert (=> d!1303261 d!1303977))

(declare-fun d!1303987 () Bool)

(declare-fun res!1803535 () Bool)

(declare-fun e!2726077 () Bool)

(assert (=> d!1303987 (=> res!1803535 e!2726077)))

(assert (=> d!1303987 (= res!1803535 (and ((_ is Cons!49156) lt!1588612) (= (_1!27637 (h!54753 lt!1588612)) key!3918)))))

(assert (=> d!1303987 (= (containsKey!849 lt!1588612 key!3918) e!2726077)))

(declare-fun b!4379454 () Bool)

(declare-fun e!2726078 () Bool)

(assert (=> b!4379454 (= e!2726077 e!2726078)))

(declare-fun res!1803536 () Bool)

(assert (=> b!4379454 (=> (not res!1803536) (not e!2726078))))

(assert (=> b!4379454 (= res!1803536 ((_ is Cons!49156) lt!1588612))))

(declare-fun b!4379455 () Bool)

(assert (=> b!4379455 (= e!2726078 (containsKey!849 (t!356206 lt!1588612) key!3918))))

(assert (= (and d!1303987 (not res!1803535)) b!4379454))

(assert (= (and b!4379454 res!1803536) b!4379455))

(declare-fun m!5016391 () Bool)

(assert (=> b!4379455 m!5016391))

(assert (=> d!1303261 d!1303987))

(declare-fun d!1303989 () Bool)

(declare-fun e!2726079 () Bool)

(assert (=> d!1303989 e!2726079))

(declare-fun res!1803537 () Bool)

(assert (=> d!1303989 (=> (not res!1803537) (not e!2726079))))

(declare-fun lt!1590078 () ListMap!2385)

(assert (=> d!1303989 (= res!1803537 (contains!11488 lt!1590078 (_1!27637 (tuple2!48687 key!3918 newValue!99))))))

(declare-fun lt!1590079 () List!49280)

(assert (=> d!1303989 (= lt!1590078 (ListMap!2386 lt!1590079))))

(declare-fun lt!1590080 () Unit!75116)

(declare-fun lt!1590081 () Unit!75116)

(assert (=> d!1303989 (= lt!1590080 lt!1590081)))

(assert (=> d!1303989 (= (getValueByKey!545 lt!1590079 (_1!27637 (tuple2!48687 key!3918 newValue!99))) (Some!10558 (_2!27637 (tuple2!48687 key!3918 newValue!99))))))

(assert (=> d!1303989 (= lt!1590081 (lemmaContainsTupThenGetReturnValue!309 lt!1590079 (_1!27637 (tuple2!48687 key!3918 newValue!99)) (_2!27637 (tuple2!48687 key!3918 newValue!99))))))

(assert (=> d!1303989 (= lt!1590079 (insertNoDuplicatedKeys!141 (toList!3142 (addToMapMapFromBucket!260 lt!1588612 lt!1588594)) (_1!27637 (tuple2!48687 key!3918 newValue!99)) (_2!27637 (tuple2!48687 key!3918 newValue!99))))))

(assert (=> d!1303989 (= (+!790 (addToMapMapFromBucket!260 lt!1588612 lt!1588594) (tuple2!48687 key!3918 newValue!99)) lt!1590078)))

(declare-fun b!4379456 () Bool)

(declare-fun res!1803538 () Bool)

(assert (=> b!4379456 (=> (not res!1803538) (not e!2726079))))

(assert (=> b!4379456 (= res!1803538 (= (getValueByKey!545 (toList!3142 lt!1590078) (_1!27637 (tuple2!48687 key!3918 newValue!99))) (Some!10558 (_2!27637 (tuple2!48687 key!3918 newValue!99)))))))

(declare-fun b!4379457 () Bool)

(assert (=> b!4379457 (= e!2726079 (contains!11493 (toList!3142 lt!1590078) (tuple2!48687 key!3918 newValue!99)))))

(assert (= (and d!1303989 res!1803537) b!4379456))

(assert (= (and b!4379456 res!1803538) b!4379457))

(declare-fun m!5016393 () Bool)

(assert (=> d!1303989 m!5016393))

(declare-fun m!5016395 () Bool)

(assert (=> d!1303989 m!5016395))

(declare-fun m!5016397 () Bool)

(assert (=> d!1303989 m!5016397))

(declare-fun m!5016399 () Bool)

(assert (=> d!1303989 m!5016399))

(declare-fun m!5016401 () Bool)

(assert (=> b!4379456 m!5016401))

(declare-fun m!5016403 () Bool)

(assert (=> b!4379457 m!5016403))

(assert (=> d!1303261 d!1303989))

(declare-fun d!1303991 () Bool)

(assert (=> d!1303991 (= (eq!317 (addToMapMapFromBucket!260 lt!1588612 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) (+!790 (addToMapMapFromBucket!260 lt!1588612 lt!1588594) (tuple2!48687 key!3918 newValue!99))) (= (content!7813 (toList!3142 (addToMapMapFromBucket!260 lt!1588612 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))))) (content!7813 (toList!3142 (+!790 (addToMapMapFromBucket!260 lt!1588612 lt!1588594) (tuple2!48687 key!3918 newValue!99))))))))

(declare-fun bs!662513 () Bool)

(assert (= bs!662513 d!1303991))

(declare-fun m!5016405 () Bool)

(assert (=> bs!662513 m!5016405))

(declare-fun m!5016407 () Bool)

(assert (=> bs!662513 m!5016407))

(assert (=> d!1303261 d!1303991))

(declare-fun lt!1590082 () Bool)

(declare-fun d!1303993 () Bool)

(assert (=> d!1303993 (= lt!1590082 (select (content!7814 (toList!3141 lm!1707)) (tuple2!48689 hash!377 lt!1588595)))))

(declare-fun e!2726080 () Bool)

(assert (=> d!1303993 (= lt!1590082 e!2726080)))

(declare-fun res!1803540 () Bool)

(assert (=> d!1303993 (=> (not res!1803540) (not e!2726080))))

(assert (=> d!1303993 (= res!1803540 ((_ is Cons!49157) (toList!3141 lm!1707)))))

(assert (=> d!1303993 (= (contains!11487 (toList!3141 lm!1707) (tuple2!48689 hash!377 lt!1588595)) lt!1590082)))

(declare-fun b!4379458 () Bool)

(declare-fun e!2726081 () Bool)

(assert (=> b!4379458 (= e!2726080 e!2726081)))

(declare-fun res!1803539 () Bool)

(assert (=> b!4379458 (=> res!1803539 e!2726081)))

(assert (=> b!4379458 (= res!1803539 (= (h!54754 (toList!3141 lm!1707)) (tuple2!48689 hash!377 lt!1588595)))))

(declare-fun b!4379459 () Bool)

(assert (=> b!4379459 (= e!2726081 (contains!11487 (t!356207 (toList!3141 lm!1707)) (tuple2!48689 hash!377 lt!1588595)))))

(assert (= (and d!1303993 res!1803540) b!4379458))

(assert (= (and b!4379458 (not res!1803539)) b!4379459))

(assert (=> d!1303993 m!5013741))

(declare-fun m!5016409 () Bool)

(assert (=> d!1303993 m!5016409))

(declare-fun m!5016411 () Bool)

(assert (=> b!4379459 m!5016411))

(assert (=> d!1303289 d!1303993))

(declare-fun d!1303995 () Bool)

(assert (=> d!1303995 (contains!11487 (toList!3141 lm!1707) (tuple2!48689 hash!377 lt!1588595))))

(assert (=> d!1303995 true))

(declare-fun _$14!822 () Unit!75116)

(assert (=> d!1303995 (= (choose!27300 (toList!3141 lm!1707) hash!377 lt!1588595) _$14!822)))

(declare-fun bs!662525 () Bool)

(assert (= bs!662525 d!1303995))

(assert (=> bs!662525 m!5013733))

(assert (=> d!1303289 d!1303995))

(assert (=> d!1303289 d!1303527))

(declare-fun d!1303997 () Bool)

(declare-fun res!1803541 () Bool)

(declare-fun e!2726082 () Bool)

(assert (=> d!1303997 (=> res!1803541 e!2726082)))

(assert (=> d!1303997 (= res!1803541 ((_ is Nil!49156) newBucket!200))))

(assert (=> d!1303997 (= (forall!9273 newBucket!200 lambda!145167) e!2726082)))

(declare-fun b!4379460 () Bool)

(declare-fun e!2726083 () Bool)

(assert (=> b!4379460 (= e!2726082 e!2726083)))

(declare-fun res!1803542 () Bool)

(assert (=> b!4379460 (=> (not res!1803542) (not e!2726083))))

(assert (=> b!4379460 (= res!1803542 (dynLambda!20710 lambda!145167 (h!54753 newBucket!200)))))

(declare-fun b!4379461 () Bool)

(assert (=> b!4379461 (= e!2726083 (forall!9273 (t!356206 newBucket!200) lambda!145167))))

(assert (= (and d!1303997 (not res!1803541)) b!4379460))

(assert (= (and b!4379460 res!1803542) b!4379461))

(declare-fun b_lambda!135125 () Bool)

(assert (=> (not b_lambda!135125) (not b!4379460)))

(declare-fun m!5016413 () Bool)

(assert (=> b!4379460 m!5016413))

(declare-fun m!5016415 () Bool)

(assert (=> b!4379461 m!5016415))

(assert (=> d!1303265 d!1303997))

(assert (=> d!1303265 d!1303177))

(declare-fun d!1303999 () Bool)

(declare-fun res!1803543 () Bool)

(declare-fun e!2726084 () Bool)

(assert (=> d!1303999 (=> res!1803543 e!2726084)))

(assert (=> d!1303999 (= res!1803543 (not ((_ is Cons!49156) (_2!27638 lt!1588592))))))

(assert (=> d!1303999 (= (noDuplicateKeys!579 (_2!27638 lt!1588592)) e!2726084)))

(declare-fun b!4379462 () Bool)

(declare-fun e!2726085 () Bool)

(assert (=> b!4379462 (= e!2726084 e!2726085)))

(declare-fun res!1803544 () Bool)

(assert (=> b!4379462 (=> (not res!1803544) (not e!2726085))))

(assert (=> b!4379462 (= res!1803544 (not (containsKey!849 (t!356206 (_2!27638 lt!1588592)) (_1!27637 (h!54753 (_2!27638 lt!1588592))))))))

(declare-fun b!4379463 () Bool)

(assert (=> b!4379463 (= e!2726085 (noDuplicateKeys!579 (t!356206 (_2!27638 lt!1588592))))))

(assert (= (and d!1303999 (not res!1803543)) b!4379462))

(assert (= (and b!4379462 res!1803544) b!4379463))

(declare-fun m!5016417 () Bool)

(assert (=> b!4379462 m!5016417))

(declare-fun m!5016419 () Bool)

(assert (=> b!4379463 m!5016419))

(assert (=> bs!660601 d!1303999))

(declare-fun d!1304001 () Bool)

(declare-fun res!1803545 () Bool)

(declare-fun e!2726086 () Bool)

(assert (=> d!1304001 (=> res!1803545 e!2726086)))

(assert (=> d!1304001 (= res!1803545 (not ((_ is Cons!49156) (t!356206 newBucket!200))))))

(assert (=> d!1304001 (= (noDuplicateKeys!579 (t!356206 newBucket!200)) e!2726086)))

(declare-fun b!4379464 () Bool)

(declare-fun e!2726087 () Bool)

(assert (=> b!4379464 (= e!2726086 e!2726087)))

(declare-fun res!1803546 () Bool)

(assert (=> b!4379464 (=> (not res!1803546) (not e!2726087))))

(assert (=> b!4379464 (= res!1803546 (not (containsKey!849 (t!356206 (t!356206 newBucket!200)) (_1!27637 (h!54753 (t!356206 newBucket!200))))))))

(declare-fun b!4379465 () Bool)

(assert (=> b!4379465 (= e!2726087 (noDuplicateKeys!579 (t!356206 (t!356206 newBucket!200))))))

(assert (= (and d!1304001 (not res!1803545)) b!4379464))

(assert (= (and b!4379464 res!1803546) b!4379465))

(declare-fun m!5016421 () Bool)

(assert (=> b!4379464 m!5016421))

(declare-fun m!5016423 () Bool)

(assert (=> b!4379465 m!5016423))

(assert (=> b!4377885 d!1304001))

(declare-fun d!1304003 () Bool)

(declare-fun res!1803547 () Bool)

(declare-fun e!2726088 () Bool)

(assert (=> d!1304003 (=> res!1803547 e!2726088)))

(assert (=> d!1304003 (= res!1803547 ((_ is Nil!49156) (ite c!744505 (toList!3142 lt!1588594) (toList!3142 lt!1589056))))))

(assert (=> d!1304003 (= (forall!9273 (ite c!744505 (toList!3142 lt!1588594) (toList!3142 lt!1589056)) (ite c!744505 lambda!145173 lambda!145175)) e!2726088)))

(declare-fun b!4379466 () Bool)

(declare-fun e!2726089 () Bool)

(assert (=> b!4379466 (= e!2726088 e!2726089)))

(declare-fun res!1803548 () Bool)

(assert (=> b!4379466 (=> (not res!1803548) (not e!2726089))))

(assert (=> b!4379466 (= res!1803548 (dynLambda!20710 (ite c!744505 lambda!145173 lambda!145175) (h!54753 (ite c!744505 (toList!3142 lt!1588594) (toList!3142 lt!1589056)))))))

(declare-fun b!4379467 () Bool)

(assert (=> b!4379467 (= e!2726089 (forall!9273 (t!356206 (ite c!744505 (toList!3142 lt!1588594) (toList!3142 lt!1589056))) (ite c!744505 lambda!145173 lambda!145175)))))

(assert (= (and d!1304003 (not res!1803547)) b!4379466))

(assert (= (and b!4379466 res!1803548) b!4379467))

(declare-fun b_lambda!135127 () Bool)

(assert (=> (not b_lambda!135127) (not b!4379466)))

(declare-fun m!5016425 () Bool)

(assert (=> b!4379466 m!5016425))

(declare-fun m!5016427 () Bool)

(assert (=> b!4379467 m!5016427))

(assert (=> bm!304478 d!1304003))

(declare-fun d!1304005 () Bool)

(declare-fun res!1803549 () Bool)

(declare-fun e!2726090 () Bool)

(assert (=> d!1304005 (=> res!1803549 e!2726090)))

(assert (=> d!1304005 (= res!1803549 ((_ is Nil!49156) newBucket!200))))

(assert (=> d!1304005 (= (forall!9273 newBucket!200 lambda!145179) e!2726090)))

(declare-fun b!4379468 () Bool)

(declare-fun e!2726091 () Bool)

(assert (=> b!4379468 (= e!2726090 e!2726091)))

(declare-fun res!1803550 () Bool)

(assert (=> b!4379468 (=> (not res!1803550) (not e!2726091))))

(assert (=> b!4379468 (= res!1803550 (dynLambda!20710 lambda!145179 (h!54753 newBucket!200)))))

(declare-fun b!4379469 () Bool)

(assert (=> b!4379469 (= e!2726091 (forall!9273 (t!356206 newBucket!200) lambda!145179))))

(assert (= (and d!1304005 (not res!1803549)) b!4379468))

(assert (= (and b!4379468 res!1803550) b!4379469))

(declare-fun b_lambda!135129 () Bool)

(assert (=> (not b_lambda!135129) (not b!4379468)))

(declare-fun m!5016429 () Bool)

(assert (=> b!4379468 m!5016429))

(declare-fun m!5016431 () Bool)

(assert (=> b!4379469 m!5016431))

(assert (=> d!1303299 d!1304005))

(assert (=> b!4377994 d!1303889))

(declare-fun d!1304007 () Bool)

(declare-fun res!1803555 () Bool)

(declare-fun e!2726096 () Bool)

(assert (=> d!1304007 (=> res!1803555 e!2726096)))

(assert (=> d!1304007 (= res!1803555 (and ((_ is Cons!49157) (toList!3141 lm!1707)) (= (_1!27638 (h!54754 (toList!3141 lm!1707))) hash!377)))))

(assert (=> d!1304007 (= (containsKey!851 (toList!3141 lm!1707) hash!377) e!2726096)))

(declare-fun b!4379474 () Bool)

(declare-fun e!2726097 () Bool)

(assert (=> b!4379474 (= e!2726096 e!2726097)))

(declare-fun res!1803556 () Bool)

(assert (=> b!4379474 (=> (not res!1803556) (not e!2726097))))

(assert (=> b!4379474 (= res!1803556 (and (or (not ((_ is Cons!49157) (toList!3141 lm!1707))) (bvsle (_1!27638 (h!54754 (toList!3141 lm!1707))) hash!377)) ((_ is Cons!49157) (toList!3141 lm!1707)) (bvslt (_1!27638 (h!54754 (toList!3141 lm!1707))) hash!377)))))

(declare-fun b!4379475 () Bool)

(assert (=> b!4379475 (= e!2726097 (containsKey!851 (t!356207 (toList!3141 lm!1707)) hash!377))))

(assert (= (and d!1304007 (not res!1803555)) b!4379474))

(assert (= (and b!4379474 res!1803556) b!4379475))

(declare-fun m!5016433 () Bool)

(assert (=> b!4379475 m!5016433))

(assert (=> d!1303285 d!1304007))

(declare-fun bs!662552 () Bool)

(declare-fun b!4379478 () Bool)

(assert (= bs!662552 (and b!4379478 b!4378969)))

(declare-fun lambda!145338 () Int)

(assert (=> bs!662552 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589671) (= lambda!145338 lambda!145288))))

(declare-fun bs!662554 () Bool)

(assert (= bs!662554 (and b!4379478 b!4378460)))

(assert (=> bs!662554 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589239) (= lambda!145338 lambda!145228))))

(declare-fun bs!662556 () Bool)

(assert (= bs!662556 (and b!4379478 d!1303179)))

(assert (=> bs!662556 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588922) (= lambda!145338 lambda!145155))))

(declare-fun bs!662558 () Bool)

(assert (= bs!662558 (and b!4379478 b!4378412)))

(assert (=> bs!662558 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589205) (= lambda!145338 lambda!145217))))

(declare-fun bs!662560 () Bool)

(assert (= bs!662560 (and b!4379478 b!4378047)))

(assert (=> bs!662560 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 lt!1588602)) (= lambda!145338 lambda!145160))))

(declare-fun bs!662562 () Bool)

(assert (= bs!662562 (and b!4379478 b!4378411)))

(assert (=> bs!662562 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145338 lambda!145213))))

(declare-fun bs!662563 () Bool)

(assert (= bs!662563 (and b!4379478 b!4378869)))

(assert (=> bs!662563 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589551) (= lambda!145338 lambda!145272))))

(declare-fun bs!662564 () Bool)

(assert (= bs!662564 (and b!4379478 b!4378290)))

(assert (=> bs!662564 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145338 lambda!145192))))

(declare-fun bs!662566 () Bool)

(assert (= bs!662566 (and b!4379478 d!1303383)))

(assert (=> bs!662566 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589011) (= lambda!145338 lambda!145200))))

(declare-fun bs!662567 () Bool)

(assert (= bs!662567 (and b!4379478 b!4378968)))

(assert (=> bs!662567 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145338 lambda!145283))))

(declare-fun bs!662569 () Bool)

(assert (= bs!662569 (and b!4379478 b!4378063)))

(assert (=> bs!662569 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589011) (= lambda!145338 lambda!145166))))

(declare-fun bs!662571 () Bool)

(assert (= bs!662571 (and b!4379478 d!1303945)))

(assert (=> bs!662571 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588912) (= lambda!145338 lambda!145324))))

(declare-fun bs!662573 () Bool)

(assert (= bs!662573 (and b!4379478 b!4378702)))

(assert (=> bs!662573 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589406) (= lambda!145338 lambda!145265))))

(declare-fun bs!662575 () Bool)

(assert (= bs!662575 (and b!4379478 d!1303867)))

(assert (=> bs!662575 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 lt!1588602)) (= lambda!145338 lambda!145314))))

(declare-fun bs!662576 () Bool)

(assert (= bs!662576 (and b!4379478 b!4378062)))

(assert (=> bs!662576 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588594) (= lambda!145338 lambda!145164))))

(declare-fun bs!662578 () Bool)

(assert (= bs!662578 (and b!4379478 d!1303951)))

(assert (=> bs!662578 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1590026) (= lambda!145338 lambda!145329))))

(declare-fun bs!662580 () Bool)

(assert (= bs!662580 (and b!4379478 b!4377996)))

(assert (=> bs!662580 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588594) (= lambda!145338 lambda!145152))))

(declare-fun bs!662582 () Bool)

(assert (= bs!662582 (and b!4379478 b!4378291)))

(assert (=> bs!662582 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589142) (= lambda!145338 lambda!145194))))

(declare-fun bs!662584 () Bool)

(assert (= bs!662584 (and b!4379478 b!4378090)))

(assert (=> bs!662584 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588594) (= lambda!145338 lambda!145174))))

(declare-fun bs!662585 () Bool)

(assert (= bs!662585 (and b!4379478 d!1303603)))

(assert (=> bs!662585 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589416) (= lambda!145338 lambda!145266))))

(declare-fun bs!662587 () Bool)

(assert (= bs!662587 (and b!4379478 b!4379405)))

(assert (=> bs!662587 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) (= lambda!145338 lambda!145326))))

(declare-fun bs!662588 () Bool)

(assert (= bs!662588 (and b!4379478 b!4378701)))

(assert (=> bs!662588 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145338 lambda!145263))))

(declare-fun bs!662589 () Bool)

(assert (= bs!662589 (and b!4379478 b!4379334)))

(assert (=> bs!662589 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589962) (= lambda!145338 lambda!145322))))

(declare-fun bs!662591 () Bool)

(assert (= bs!662591 (and b!4379478 d!1303433)))

(assert (=> bs!662591 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589250) (= lambda!145338 lambda!145231))))

(declare-fun bs!662592 () Bool)

(assert (= bs!662592 (and b!4379478 d!1303403)))

(assert (=> bs!662592 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589215) (= lambda!145338 lambda!145218))))

(assert (=> bs!662573 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145338 lambda!145264))))

(declare-fun bs!662593 () Bool)

(assert (= bs!662593 (and b!4379478 b!4378459)))

(assert (=> bs!662593 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145338 lambda!145226))))

(declare-fun bs!662594 () Bool)

(assert (= bs!662594 (and b!4379478 b!4379404)))

(assert (=> bs!662594 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) (= lambda!145338 lambda!145325))))

(declare-fun bs!662595 () Bool)

(assert (= bs!662595 (and b!4379478 d!1303643)))

(assert (=> bs!662595 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589561) (= lambda!145338 lambda!145274))))

(declare-fun bs!662596 () Bool)

(assert (= bs!662596 (and b!4379478 b!4378868)))

(assert (=> bs!662596 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145338 lambda!145267))))

(declare-fun bs!662597 () Bool)

(assert (= bs!662597 (and b!4379478 d!1303361)))

(assert (=> bs!662597 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589152) (= lambda!145338 lambda!145195))))

(assert (=> bs!662558 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145338 lambda!145215))))

(assert (=> bs!662552 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145338 lambda!145286))))

(assert (=> bs!662554 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145338 lambda!145227))))

(declare-fun bs!662598 () Bool)

(assert (= bs!662598 (and b!4379478 b!4378046)))

(assert (=> bs!662598 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 lt!1588602)) (= lambda!145338 lambda!145159))))

(declare-fun bs!662599 () Bool)

(assert (= bs!662599 (and b!4379478 d!1303899)))

(assert (=> bs!662599 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589972) (= lambda!145338 lambda!145323))))

(declare-fun bs!662600 () Bool)

(assert (= bs!662600 (and b!4379478 d!1303707)))

(assert (=> bs!662600 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589681) (= lambda!145338 lambda!145289))))

(declare-fun bs!662601 () Bool)

(assert (= bs!662601 (and b!4379478 b!4377997)))

(assert (=> bs!662601 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588594) (= lambda!145338 lambda!145153))))

(declare-fun bs!662602 () Bool)

(assert (= bs!662602 (and b!4379478 b!4379333)))

(assert (=> bs!662602 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145338 lambda!145319))))

(declare-fun bs!662603 () Bool)

(assert (= bs!662603 (and b!4379478 d!1303255)))

(assert (=> bs!662603 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588981) (= lambda!145338 lambda!145162))))

(declare-fun bs!662604 () Bool)

(assert (= bs!662604 (and b!4379478 d!1303519)))

(assert (=> bs!662604 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588594) (= lambda!145338 lambda!145242))))

(declare-fun bs!662605 () Bool)

(assert (= bs!662605 (and b!4379478 d!1303661)))

(assert (=> bs!662605 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588971) (= lambda!145338 lambda!145276))))

(declare-fun bs!662606 () Bool)

(assert (= bs!662606 (and b!4379478 d!1303597)))

(assert (=> bs!662606 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589053) (= lambda!145338 lambda!145262))))

(assert (=> bs!662563 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145338 lambda!145269))))

(assert (=> bs!662587 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1590016) (= lambda!145338 lambda!145328))))

(declare-fun bs!662607 () Bool)

(assert (= bs!662607 (and b!4379478 d!1303265)))

(assert (=> bs!662607 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589021) (= lambda!145338 lambda!145167))))

(declare-fun bs!662608 () Bool)

(assert (= bs!662608 (and b!4379478 b!4378089)))

(assert (=> bs!662608 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588594) (= lambda!145338 lambda!145173))))

(assert (=> bs!662584 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589053) (= lambda!145338 lambda!145175))))

(assert (=> bs!662569 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588594) (= lambda!145338 lambda!145165))))

(declare-fun bs!662609 () Bool)

(assert (= bs!662609 (and b!4379478 d!1303299)))

(assert (=> bs!662609 (not (= lambda!145338 lambda!145179))))

(assert (=> bs!662601 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588912) (= lambda!145338 lambda!145154))))

(assert (=> bs!662589 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145338 lambda!145320))))

(assert (=> bs!662582 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145338 lambda!145193))))

(assert (=> bs!662560 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588971) (= lambda!145338 lambda!145161))))

(declare-fun bs!662610 () Bool)

(assert (= bs!662610 (and b!4379478 d!1303283)))

(assert (=> bs!662610 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589063) (= lambda!145338 lambda!145176))))

(assert (=> b!4379478 true))

(declare-fun bs!662612 () Bool)

(declare-fun b!4379479 () Bool)

(assert (= bs!662612 (and b!4379479 b!4378969)))

(declare-fun lambda!145340 () Int)

(assert (=> bs!662612 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589671) (= lambda!145340 lambda!145288))))

(declare-fun bs!662614 () Bool)

(assert (= bs!662614 (and b!4379479 b!4378460)))

(assert (=> bs!662614 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589239) (= lambda!145340 lambda!145228))))

(declare-fun bs!662616 () Bool)

(assert (= bs!662616 (and b!4379479 d!1303179)))

(assert (=> bs!662616 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588922) (= lambda!145340 lambda!145155))))

(declare-fun bs!662618 () Bool)

(assert (= bs!662618 (and b!4379479 b!4378412)))

(assert (=> bs!662618 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589205) (= lambda!145340 lambda!145217))))

(declare-fun bs!662620 () Bool)

(assert (= bs!662620 (and b!4379479 b!4378047)))

(assert (=> bs!662620 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 lt!1588602)) (= lambda!145340 lambda!145160))))

(declare-fun bs!662622 () Bool)

(assert (= bs!662622 (and b!4379479 b!4378411)))

(assert (=> bs!662622 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145340 lambda!145213))))

(declare-fun bs!662624 () Bool)

(assert (= bs!662624 (and b!4379479 b!4378869)))

(assert (=> bs!662624 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589551) (= lambda!145340 lambda!145272))))

(declare-fun bs!662626 () Bool)

(assert (= bs!662626 (and b!4379479 b!4378290)))

(assert (=> bs!662626 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145340 lambda!145192))))

(declare-fun bs!662628 () Bool)

(assert (= bs!662628 (and b!4379479 d!1303383)))

(assert (=> bs!662628 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589011) (= lambda!145340 lambda!145200))))

(declare-fun bs!662630 () Bool)

(assert (= bs!662630 (and b!4379479 b!4378968)))

(assert (=> bs!662630 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145340 lambda!145283))))

(declare-fun bs!662631 () Bool)

(assert (= bs!662631 (and b!4379479 b!4378063)))

(assert (=> bs!662631 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589011) (= lambda!145340 lambda!145166))))

(declare-fun bs!662632 () Bool)

(assert (= bs!662632 (and b!4379479 d!1303945)))

(assert (=> bs!662632 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588912) (= lambda!145340 lambda!145324))))

(declare-fun bs!662633 () Bool)

(assert (= bs!662633 (and b!4379479 b!4378702)))

(assert (=> bs!662633 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589406) (= lambda!145340 lambda!145265))))

(declare-fun bs!662634 () Bool)

(assert (= bs!662634 (and b!4379479 d!1303867)))

(assert (=> bs!662634 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 lt!1588602)) (= lambda!145340 lambda!145314))))

(declare-fun bs!662635 () Bool)

(assert (= bs!662635 (and b!4379479 b!4378062)))

(assert (=> bs!662635 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588594) (= lambda!145340 lambda!145164))))

(declare-fun bs!662636 () Bool)

(assert (= bs!662636 (and b!4379479 d!1303951)))

(assert (=> bs!662636 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1590026) (= lambda!145340 lambda!145329))))

(declare-fun bs!662637 () Bool)

(assert (= bs!662637 (and b!4379479 b!4377996)))

(assert (=> bs!662637 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588594) (= lambda!145340 lambda!145152))))

(declare-fun bs!662638 () Bool)

(assert (= bs!662638 (and b!4379479 b!4378291)))

(assert (=> bs!662638 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589142) (= lambda!145340 lambda!145194))))

(declare-fun bs!662639 () Bool)

(assert (= bs!662639 (and b!4379479 b!4378090)))

(assert (=> bs!662639 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588594) (= lambda!145340 lambda!145174))))

(declare-fun bs!662640 () Bool)

(assert (= bs!662640 (and b!4379479 d!1303603)))

(assert (=> bs!662640 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589416) (= lambda!145340 lambda!145266))))

(declare-fun bs!662641 () Bool)

(assert (= bs!662641 (and b!4379479 b!4379405)))

(assert (=> bs!662641 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) (= lambda!145340 lambda!145326))))

(declare-fun bs!662642 () Bool)

(assert (= bs!662642 (and b!4379479 b!4378701)))

(assert (=> bs!662642 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145340 lambda!145263))))

(declare-fun bs!662643 () Bool)

(assert (= bs!662643 (and b!4379479 b!4379334)))

(assert (=> bs!662643 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589962) (= lambda!145340 lambda!145322))))

(declare-fun bs!662644 () Bool)

(assert (= bs!662644 (and b!4379479 d!1303433)))

(assert (=> bs!662644 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589250) (= lambda!145340 lambda!145231))))

(declare-fun bs!662646 () Bool)

(assert (= bs!662646 (and b!4379479 d!1303403)))

(assert (=> bs!662646 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589215) (= lambda!145340 lambda!145218))))

(assert (=> bs!662633 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145340 lambda!145264))))

(declare-fun bs!662649 () Bool)

(assert (= bs!662649 (and b!4379479 b!4378459)))

(assert (=> bs!662649 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145340 lambda!145226))))

(declare-fun bs!662651 () Bool)

(assert (= bs!662651 (and b!4379479 b!4379478)))

(assert (=> bs!662651 (= lambda!145340 lambda!145338)))

(declare-fun bs!662653 () Bool)

(assert (= bs!662653 (and b!4379479 b!4379404)))

(assert (=> bs!662653 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) (= lambda!145340 lambda!145325))))

(declare-fun bs!662655 () Bool)

(assert (= bs!662655 (and b!4379479 d!1303643)))

(assert (=> bs!662655 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589561) (= lambda!145340 lambda!145274))))

(declare-fun bs!662657 () Bool)

(assert (= bs!662657 (and b!4379479 b!4378868)))

(assert (=> bs!662657 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145340 lambda!145267))))

(declare-fun bs!662659 () Bool)

(assert (= bs!662659 (and b!4379479 d!1303361)))

(assert (=> bs!662659 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589152) (= lambda!145340 lambda!145195))))

(assert (=> bs!662618 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145340 lambda!145215))))

(assert (=> bs!662612 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145340 lambda!145286))))

(assert (=> bs!662614 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145340 lambda!145227))))

(declare-fun bs!662664 () Bool)

(assert (= bs!662664 (and b!4379479 b!4378046)))

(assert (=> bs!662664 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 lt!1588602)) (= lambda!145340 lambda!145159))))

(declare-fun bs!662666 () Bool)

(assert (= bs!662666 (and b!4379479 d!1303899)))

(assert (=> bs!662666 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589972) (= lambda!145340 lambda!145323))))

(declare-fun bs!662668 () Bool)

(assert (= bs!662668 (and b!4379479 d!1303707)))

(assert (=> bs!662668 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589681) (= lambda!145340 lambda!145289))))

(declare-fun bs!662670 () Bool)

(assert (= bs!662670 (and b!4379479 b!4377997)))

(assert (=> bs!662670 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588594) (= lambda!145340 lambda!145153))))

(declare-fun bs!662671 () Bool)

(assert (= bs!662671 (and b!4379479 b!4379333)))

(assert (=> bs!662671 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145340 lambda!145319))))

(declare-fun bs!662673 () Bool)

(assert (= bs!662673 (and b!4379479 d!1303255)))

(assert (=> bs!662673 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588981) (= lambda!145340 lambda!145162))))

(declare-fun bs!662675 () Bool)

(assert (= bs!662675 (and b!4379479 d!1303519)))

(assert (=> bs!662675 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588594) (= lambda!145340 lambda!145242))))

(declare-fun bs!662676 () Bool)

(assert (= bs!662676 (and b!4379479 d!1303661)))

(assert (=> bs!662676 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588971) (= lambda!145340 lambda!145276))))

(declare-fun bs!662678 () Bool)

(assert (= bs!662678 (and b!4379479 d!1303597)))

(assert (=> bs!662678 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589053) (= lambda!145340 lambda!145262))))

(assert (=> bs!662624 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145340 lambda!145269))))

(assert (=> bs!662641 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1590016) (= lambda!145340 lambda!145328))))

(declare-fun bs!662681 () Bool)

(assert (= bs!662681 (and b!4379479 d!1303265)))

(assert (=> bs!662681 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589021) (= lambda!145340 lambda!145167))))

(declare-fun bs!662683 () Bool)

(assert (= bs!662683 (and b!4379479 b!4378089)))

(assert (=> bs!662683 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588594) (= lambda!145340 lambda!145173))))

(assert (=> bs!662639 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589053) (= lambda!145340 lambda!145175))))

(assert (=> bs!662631 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588594) (= lambda!145340 lambda!145165))))

(declare-fun bs!662687 () Bool)

(assert (= bs!662687 (and b!4379479 d!1303299)))

(assert (=> bs!662687 (not (= lambda!145340 lambda!145179))))

(assert (=> bs!662670 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588912) (= lambda!145340 lambda!145154))))

(assert (=> bs!662643 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145340 lambda!145320))))

(assert (=> bs!662638 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145340 lambda!145193))))

(assert (=> bs!662620 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1588971) (= lambda!145340 lambda!145161))))

(declare-fun bs!662691 () Bool)

(assert (= bs!662691 (and b!4379479 d!1303283)))

(assert (=> bs!662691 (= (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1589063) (= lambda!145340 lambda!145176))))

(assert (=> b!4379479 true))

(declare-fun lt!1590087 () ListMap!2385)

(declare-fun lambda!145342 () Int)

(assert (=> bs!662612 (= (= lt!1590087 lt!1589671) (= lambda!145342 lambda!145288))))

(assert (=> bs!662614 (= (= lt!1590087 lt!1589239) (= lambda!145342 lambda!145228))))

(assert (=> bs!662616 (= (= lt!1590087 lt!1588922) (= lambda!145342 lambda!145155))))

(assert (=> bs!662618 (= (= lt!1590087 lt!1589205) (= lambda!145342 lambda!145217))))

(assert (=> bs!662620 (= (= lt!1590087 (+!790 lt!1588594 lt!1588602)) (= lambda!145342 lambda!145160))))

(assert (=> bs!662622 (= (= lt!1590087 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145342 lambda!145213))))

(assert (=> bs!662624 (= (= lt!1590087 lt!1589551) (= lambda!145342 lambda!145272))))

(assert (=> bs!662626 (= (= lt!1590087 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145342 lambda!145192))))

(assert (=> bs!662628 (= (= lt!1590087 lt!1589011) (= lambda!145342 lambda!145200))))

(assert (=> bs!662631 (= (= lt!1590087 lt!1589011) (= lambda!145342 lambda!145166))))

(assert (=> bs!662632 (= (= lt!1590087 lt!1588912) (= lambda!145342 lambda!145324))))

(assert (=> bs!662633 (= (= lt!1590087 lt!1589406) (= lambda!145342 lambda!145265))))

(assert (=> bs!662634 (= (= lt!1590087 (+!790 lt!1588594 lt!1588602)) (= lambda!145342 lambda!145314))))

(assert (=> bs!662635 (= (= lt!1590087 lt!1588594) (= lambda!145342 lambda!145164))))

(assert (=> bs!662636 (= (= lt!1590087 lt!1590026) (= lambda!145342 lambda!145329))))

(assert (=> bs!662637 (= (= lt!1590087 lt!1588594) (= lambda!145342 lambda!145152))))

(assert (=> bs!662638 (= (= lt!1590087 lt!1589142) (= lambda!145342 lambda!145194))))

(assert (=> bs!662639 (= (= lt!1590087 lt!1588594) (= lambda!145342 lambda!145174))))

(assert (=> bs!662640 (= (= lt!1590087 lt!1589416) (= lambda!145342 lambda!145266))))

(assert (=> bs!662641 (= (= lt!1590087 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) (= lambda!145342 lambda!145326))))

(assert (=> bs!662642 (= (= lt!1590087 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145342 lambda!145263))))

(assert (=> bs!662643 (= (= lt!1590087 lt!1589962) (= lambda!145342 lambda!145322))))

(assert (=> bs!662644 (= (= lt!1590087 lt!1589250) (= lambda!145342 lambda!145231))))

(assert (=> bs!662646 (= (= lt!1590087 lt!1589215) (= lambda!145342 lambda!145218))))

(assert (=> bs!662633 (= (= lt!1590087 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145342 lambda!145264))))

(assert (=> bs!662649 (= (= lt!1590087 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145342 lambda!145226))))

(assert (=> bs!662651 (= (= lt!1590087 (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707))))) (= lambda!145342 lambda!145338))))

(assert (=> bs!662653 (= (= lt!1590087 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) (= lambda!145342 lambda!145325))))

(assert (=> bs!662655 (= (= lt!1590087 lt!1589561) (= lambda!145342 lambda!145274))))

(assert (=> bs!662657 (= (= lt!1590087 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145342 lambda!145267))))

(assert (=> bs!662659 (= (= lt!1590087 lt!1589152) (= lambda!145342 lambda!145195))))

(assert (=> bs!662618 (= (= lt!1590087 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145342 lambda!145215))))

(assert (=> bs!662612 (= (= lt!1590087 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145342 lambda!145286))))

(assert (=> bs!662614 (= (= lt!1590087 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145342 lambda!145227))))

(assert (=> bs!662664 (= (= lt!1590087 (+!790 lt!1588594 lt!1588602)) (= lambda!145342 lambda!145159))))

(assert (=> bs!662666 (= (= lt!1590087 lt!1589972) (= lambda!145342 lambda!145323))))

(assert (=> bs!662668 (= (= lt!1590087 lt!1589681) (= lambda!145342 lambda!145289))))

(assert (=> bs!662670 (= (= lt!1590087 lt!1588594) (= lambda!145342 lambda!145153))))

(assert (=> bs!662671 (= (= lt!1590087 (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145342 lambda!145319))))

(assert (=> bs!662673 (= (= lt!1590087 lt!1588981) (= lambda!145342 lambda!145162))))

(assert (=> bs!662675 (= (= lt!1590087 lt!1588594) (= lambda!145342 lambda!145242))))

(assert (=> bs!662676 (= (= lt!1590087 lt!1588971) (= lambda!145342 lambda!145276))))

(assert (=> bs!662678 (= (= lt!1590087 lt!1589053) (= lambda!145342 lambda!145262))))

(assert (=> bs!662630 (= (= lt!1590087 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145342 lambda!145283))))

(assert (=> b!4379479 (= (= lt!1590087 (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707))))) (= lambda!145342 lambda!145340))))

(assert (=> bs!662624 (= (= lt!1590087 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145342 lambda!145269))))

(assert (=> bs!662641 (= (= lt!1590087 lt!1590016) (= lambda!145342 lambda!145328))))

(assert (=> bs!662681 (= (= lt!1590087 lt!1589021) (= lambda!145342 lambda!145167))))

(assert (=> bs!662683 (= (= lt!1590087 lt!1588594) (= lambda!145342 lambda!145173))))

(assert (=> bs!662639 (= (= lt!1590087 lt!1589053) (= lambda!145342 lambda!145175))))

(assert (=> bs!662631 (= (= lt!1590087 lt!1588594) (= lambda!145342 lambda!145165))))

(assert (=> bs!662687 (not (= lambda!145342 lambda!145179))))

(assert (=> bs!662670 (= (= lt!1590087 lt!1588912) (= lambda!145342 lambda!145154))))

(assert (=> bs!662643 (= (= lt!1590087 (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145342 lambda!145320))))

(assert (=> bs!662638 (= (= lt!1590087 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145342 lambda!145193))))

(assert (=> bs!662620 (= (= lt!1590087 lt!1588971) (= lambda!145342 lambda!145161))))

(assert (=> bs!662691 (= (= lt!1590087 lt!1589063) (= lambda!145342 lambda!145176))))

(assert (=> b!4379479 true))

(declare-fun bs!662744 () Bool)

(declare-fun d!1304009 () Bool)

(assert (= bs!662744 (and d!1304009 b!4378969)))

(declare-fun lt!1590097 () ListMap!2385)

(declare-fun lambda!145344 () Int)

(assert (=> bs!662744 (= (= lt!1590097 lt!1589671) (= lambda!145344 lambda!145288))))

(declare-fun bs!662746 () Bool)

(assert (= bs!662746 (and d!1304009 b!4378460)))

(assert (=> bs!662746 (= (= lt!1590097 lt!1589239) (= lambda!145344 lambda!145228))))

(declare-fun bs!662748 () Bool)

(assert (= bs!662748 (and d!1304009 b!4378412)))

(assert (=> bs!662748 (= (= lt!1590097 lt!1589205) (= lambda!145344 lambda!145217))))

(declare-fun bs!662750 () Bool)

(assert (= bs!662750 (and d!1304009 b!4378047)))

(assert (=> bs!662750 (= (= lt!1590097 (+!790 lt!1588594 lt!1588602)) (= lambda!145344 lambda!145160))))

(declare-fun bs!662752 () Bool)

(assert (= bs!662752 (and d!1304009 b!4378411)))

(assert (=> bs!662752 (= (= lt!1590097 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145344 lambda!145213))))

(declare-fun bs!662754 () Bool)

(assert (= bs!662754 (and d!1304009 b!4378869)))

(assert (=> bs!662754 (= (= lt!1590097 lt!1589551) (= lambda!145344 lambda!145272))))

(declare-fun bs!662756 () Bool)

(assert (= bs!662756 (and d!1304009 b!4378290)))

(assert (=> bs!662756 (= (= lt!1590097 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145344 lambda!145192))))

(declare-fun bs!662757 () Bool)

(assert (= bs!662757 (and d!1304009 d!1303383)))

(assert (=> bs!662757 (= (= lt!1590097 lt!1589011) (= lambda!145344 lambda!145200))))

(declare-fun bs!662759 () Bool)

(assert (= bs!662759 (and d!1304009 b!4378063)))

(assert (=> bs!662759 (= (= lt!1590097 lt!1589011) (= lambda!145344 lambda!145166))))

(declare-fun bs!662760 () Bool)

(assert (= bs!662760 (and d!1304009 d!1303945)))

(assert (=> bs!662760 (= (= lt!1590097 lt!1588912) (= lambda!145344 lambda!145324))))

(declare-fun bs!662761 () Bool)

(assert (= bs!662761 (and d!1304009 b!4378702)))

(assert (=> bs!662761 (= (= lt!1590097 lt!1589406) (= lambda!145344 lambda!145265))))

(declare-fun bs!662763 () Bool)

(assert (= bs!662763 (and d!1304009 d!1303867)))

(assert (=> bs!662763 (= (= lt!1590097 (+!790 lt!1588594 lt!1588602)) (= lambda!145344 lambda!145314))))

(declare-fun bs!662764 () Bool)

(assert (= bs!662764 (and d!1304009 b!4378062)))

(assert (=> bs!662764 (= (= lt!1590097 lt!1588594) (= lambda!145344 lambda!145164))))

(declare-fun bs!662765 () Bool)

(assert (= bs!662765 (and d!1304009 d!1303951)))

(assert (=> bs!662765 (= (= lt!1590097 lt!1590026) (= lambda!145344 lambda!145329))))

(declare-fun bs!662766 () Bool)

(assert (= bs!662766 (and d!1304009 b!4377996)))

(assert (=> bs!662766 (= (= lt!1590097 lt!1588594) (= lambda!145344 lambda!145152))))

(declare-fun bs!662767 () Bool)

(assert (= bs!662767 (and d!1304009 b!4378291)))

(assert (=> bs!662767 (= (= lt!1590097 lt!1589142) (= lambda!145344 lambda!145194))))

(declare-fun bs!662768 () Bool)

(assert (= bs!662768 (and d!1304009 b!4378090)))

(assert (=> bs!662768 (= (= lt!1590097 lt!1588594) (= lambda!145344 lambda!145174))))

(declare-fun bs!662769 () Bool)

(assert (= bs!662769 (and d!1304009 d!1303603)))

(assert (=> bs!662769 (= (= lt!1590097 lt!1589416) (= lambda!145344 lambda!145266))))

(declare-fun bs!662770 () Bool)

(assert (= bs!662770 (and d!1304009 b!4379405)))

(assert (=> bs!662770 (= (= lt!1590097 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) (= lambda!145344 lambda!145326))))

(declare-fun bs!662771 () Bool)

(assert (= bs!662771 (and d!1304009 b!4378701)))

(assert (=> bs!662771 (= (= lt!1590097 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145344 lambda!145263))))

(declare-fun bs!662772 () Bool)

(assert (= bs!662772 (and d!1304009 b!4379334)))

(assert (=> bs!662772 (= (= lt!1590097 lt!1589962) (= lambda!145344 lambda!145322))))

(declare-fun bs!662773 () Bool)

(assert (= bs!662773 (and d!1304009 d!1303433)))

(assert (=> bs!662773 (= (= lt!1590097 lt!1589250) (= lambda!145344 lambda!145231))))

(declare-fun bs!662774 () Bool)

(assert (= bs!662774 (and d!1304009 d!1303403)))

(assert (=> bs!662774 (= (= lt!1590097 lt!1589215) (= lambda!145344 lambda!145218))))

(declare-fun bs!662775 () Bool)

(assert (= bs!662775 (and d!1304009 b!4379479)))

(assert (=> bs!662775 (= (= lt!1590097 lt!1590087) (= lambda!145344 lambda!145342))))

(declare-fun bs!662776 () Bool)

(assert (= bs!662776 (and d!1304009 d!1303179)))

(assert (=> bs!662776 (= (= lt!1590097 lt!1588922) (= lambda!145344 lambda!145155))))

(assert (=> bs!662761 (= (= lt!1590097 (+!790 lt!1588594 (h!54753 lt!1588593))) (= lambda!145344 lambda!145264))))

(declare-fun bs!662777 () Bool)

(assert (= bs!662777 (and d!1304009 b!4378459)))

(assert (=> bs!662777 (= (= lt!1590097 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145344 lambda!145226))))

(declare-fun bs!662778 () Bool)

(assert (= bs!662778 (and d!1304009 b!4379478)))

(assert (=> bs!662778 (= (= lt!1590097 (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707))))) (= lambda!145344 lambda!145338))))

(declare-fun bs!662779 () Bool)

(assert (= bs!662779 (and d!1304009 b!4379404)))

(assert (=> bs!662779 (= (= lt!1590097 (+!790 lt!1588594 (tuple2!48687 key!3918 newValue!99))) (= lambda!145344 lambda!145325))))

(declare-fun bs!662780 () Bool)

(assert (= bs!662780 (and d!1304009 d!1303643)))

(assert (=> bs!662780 (= (= lt!1590097 lt!1589561) (= lambda!145344 lambda!145274))))

(declare-fun bs!662781 () Bool)

(assert (= bs!662781 (and d!1304009 b!4378868)))

(assert (=> bs!662781 (= (= lt!1590097 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145344 lambda!145267))))

(declare-fun bs!662782 () Bool)

(assert (= bs!662782 (and d!1304009 d!1303361)))

(assert (=> bs!662782 (= (= lt!1590097 lt!1589152) (= lambda!145344 lambda!145195))))

(assert (=> bs!662748 (= (= lt!1590097 (extractMap!638 (t!356207 (toList!3141 lt!1588604)))) (= lambda!145344 lambda!145215))))

(assert (=> bs!662744 (= (= lt!1590097 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145344 lambda!145286))))

(assert (=> bs!662746 (= (= lt!1590097 (extractMap!638 (t!356207 (toList!3141 lm!1707)))) (= lambda!145344 lambda!145227))))

(declare-fun bs!662783 () Bool)

(assert (= bs!662783 (and d!1304009 b!4378046)))

(assert (=> bs!662783 (= (= lt!1590097 (+!790 lt!1588594 lt!1588602)) (= lambda!145344 lambda!145159))))

(declare-fun bs!662784 () Bool)

(assert (= bs!662784 (and d!1304009 d!1303899)))

(assert (=> bs!662784 (= (= lt!1590097 lt!1589972) (= lambda!145344 lambda!145323))))

(declare-fun bs!662785 () Bool)

(assert (= bs!662785 (and d!1304009 d!1303707)))

(assert (=> bs!662785 (= (= lt!1590097 lt!1589681) (= lambda!145344 lambda!145289))))

(declare-fun bs!662786 () Bool)

(assert (= bs!662786 (and d!1304009 b!4377997)))

(assert (=> bs!662786 (= (= lt!1590097 lt!1588594) (= lambda!145344 lambda!145153))))

(declare-fun bs!662787 () Bool)

(assert (= bs!662787 (and d!1304009 b!4379333)))

(assert (=> bs!662787 (= (= lt!1590097 (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145344 lambda!145319))))

(declare-fun bs!662788 () Bool)

(assert (= bs!662788 (and d!1304009 d!1303255)))

(assert (=> bs!662788 (= (= lt!1590097 lt!1588981) (= lambda!145344 lambda!145162))))

(declare-fun bs!662789 () Bool)

(assert (= bs!662789 (and d!1304009 d!1303519)))

(assert (=> bs!662789 (= (= lt!1590097 lt!1588594) (= lambda!145344 lambda!145242))))

(declare-fun bs!662790 () Bool)

(assert (= bs!662790 (and d!1304009 d!1303661)))

(assert (=> bs!662790 (= (= lt!1590097 lt!1588971) (= lambda!145344 lambda!145276))))

(declare-fun bs!662791 () Bool)

(assert (= bs!662791 (and d!1304009 d!1303597)))

(assert (=> bs!662791 (= (= lt!1590097 lt!1589053) (= lambda!145344 lambda!145262))))

(declare-fun bs!662792 () Bool)

(assert (= bs!662792 (and d!1304009 b!4378968)))

(assert (=> bs!662792 (= (= lt!1590097 (extractMap!638 (t!356207 (toList!3141 lt!1588596)))) (= lambda!145344 lambda!145283))))

(assert (=> bs!662775 (= (= lt!1590097 (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707))))) (= lambda!145344 lambda!145340))))

(assert (=> bs!662754 (= (= lt!1590097 (+!790 (+!790 lt!1588594 lt!1588602) (h!54753 lt!1588612))) (= lambda!145344 lambda!145269))))

(assert (=> bs!662770 (= (= lt!1590097 lt!1590016) (= lambda!145344 lambda!145328))))

(declare-fun bs!662793 () Bool)

(assert (= bs!662793 (and d!1304009 d!1303265)))

(assert (=> bs!662793 (= (= lt!1590097 lt!1589021) (= lambda!145344 lambda!145167))))

(declare-fun bs!662794 () Bool)

(assert (= bs!662794 (and d!1304009 b!4378089)))

(assert (=> bs!662794 (= (= lt!1590097 lt!1588594) (= lambda!145344 lambda!145173))))

(assert (=> bs!662768 (= (= lt!1590097 lt!1589053) (= lambda!145344 lambda!145175))))

(assert (=> bs!662759 (= (= lt!1590097 lt!1588594) (= lambda!145344 lambda!145165))))

(declare-fun bs!662795 () Bool)

(assert (= bs!662795 (and d!1304009 d!1303299)))

(assert (=> bs!662795 (not (= lambda!145344 lambda!145179))))

(assert (=> bs!662786 (= (= lt!1590097 lt!1588912) (= lambda!145344 lambda!145154))))

(assert (=> bs!662772 (= (= lt!1590097 (+!790 lt!1588594 (h!54753 lt!1588612))) (= lambda!145344 lambda!145320))))

(assert (=> bs!662767 (= (= lt!1590097 (+!790 lt!1588594 (h!54753 newBucket!200))) (= lambda!145344 lambda!145193))))

(assert (=> bs!662750 (= (= lt!1590097 lt!1588971) (= lambda!145344 lambda!145161))))

(declare-fun bs!662796 () Bool)

(assert (= bs!662796 (and d!1304009 d!1303283)))

(assert (=> bs!662796 (= (= lt!1590097 lt!1589063) (= lambda!145344 lambda!145176))))

(assert (=> d!1304009 true))

(declare-fun b!4379476 () Bool)

(declare-fun e!2726100 () Bool)

(assert (=> b!4379476 (= e!2726100 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707))))) lambda!145342))))

(declare-fun c!744849 () Bool)

(declare-fun call!304647 () Bool)

(declare-fun bm!304641 () Bool)

(assert (=> bm!304641 (= call!304647 (forall!9273 (ite c!744849 (toList!3142 (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707))))) (t!356206 (_2!27638 (h!54754 (t!356207 (toList!3141 lm!1707)))))) (ite c!744849 lambda!145338 lambda!145342)))))

(declare-fun b!4379477 () Bool)

(declare-fun e!2726098 () Bool)

(assert (=> b!4379477 (= e!2726098 (invariantList!723 (toList!3142 lt!1590097)))))

(declare-fun bm!304642 () Bool)

(declare-fun call!304648 () Unit!75116)

(assert (=> bm!304642 (= call!304648 (lemmaContainsAllItsOwnKeys!105 (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707))))))))

(declare-fun e!2726099 () ListMap!2385)

(assert (=> b!4379478 (= e!2726099 (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))))))

(declare-fun lt!1590096 () Unit!75116)

(assert (=> b!4379478 (= lt!1590096 call!304648)))

(assert (=> b!4379478 call!304647))

(declare-fun lt!1590103 () Unit!75116)

(assert (=> b!4379478 (= lt!1590103 lt!1590096)))

(declare-fun call!304646 () Bool)

(assert (=> b!4379478 call!304646))

(declare-fun lt!1590101 () Unit!75116)

(declare-fun Unit!75481 () Unit!75116)

(assert (=> b!4379478 (= lt!1590101 Unit!75481)))

(assert (=> d!1304009 e!2726098))

(declare-fun res!1803559 () Bool)

(assert (=> d!1304009 (=> (not res!1803559) (not e!2726098))))

(assert (=> d!1304009 (= res!1803559 (forall!9273 (_2!27638 (h!54754 (t!356207 (toList!3141 lm!1707)))) lambda!145344))))

(assert (=> d!1304009 (= lt!1590097 e!2726099)))

(assert (=> d!1304009 (= c!744849 ((_ is Nil!49156) (_2!27638 (h!54754 (t!356207 (toList!3141 lm!1707))))))))

(assert (=> d!1304009 (noDuplicateKeys!579 (_2!27638 (h!54754 (t!356207 (toList!3141 lm!1707)))))))

(assert (=> d!1304009 (= (addToMapMapFromBucket!260 (_2!27638 (h!54754 (t!356207 (toList!3141 lm!1707)))) (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707))))) lt!1590097)))

(assert (=> b!4379479 (= e!2726099 lt!1590087)))

(declare-fun lt!1590090 () ListMap!2385)

(assert (=> b!4379479 (= lt!1590090 (+!790 (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (h!54753 (_2!27638 (h!54754 (t!356207 (toList!3141 lm!1707)))))))))

(assert (=> b!4379479 (= lt!1590087 (addToMapMapFromBucket!260 (t!356206 (_2!27638 (h!54754 (t!356207 (toList!3141 lm!1707))))) (+!790 (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) (h!54753 (_2!27638 (h!54754 (t!356207 (toList!3141 lm!1707))))))))))

(declare-fun lt!1590086 () Unit!75116)

(assert (=> b!4379479 (= lt!1590086 call!304648)))

(assert (=> b!4379479 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707))))) lambda!145340)))

(declare-fun lt!1590095 () Unit!75116)

(assert (=> b!4379479 (= lt!1590095 lt!1590086)))

(assert (=> b!4379479 (forall!9273 (toList!3142 lt!1590090) lambda!145342)))

(declare-fun lt!1590084 () Unit!75116)

(declare-fun Unit!75482 () Unit!75116)

(assert (=> b!4379479 (= lt!1590084 Unit!75482)))

(assert (=> b!4379479 call!304647))

(declare-fun lt!1590098 () Unit!75116)

(declare-fun Unit!75483 () Unit!75116)

(assert (=> b!4379479 (= lt!1590098 Unit!75483)))

(declare-fun lt!1590089 () Unit!75116)

(declare-fun Unit!75484 () Unit!75116)

(assert (=> b!4379479 (= lt!1590089 Unit!75484)))

(declare-fun lt!1590102 () Unit!75116)

(assert (=> b!4379479 (= lt!1590102 (forallContained!1911 (toList!3142 lt!1590090) lambda!145342 (h!54753 (_2!27638 (h!54754 (t!356207 (toList!3141 lm!1707)))))))))

(assert (=> b!4379479 (contains!11488 lt!1590090 (_1!27637 (h!54753 (_2!27638 (h!54754 (t!356207 (toList!3141 lm!1707)))))))))

(declare-fun lt!1590099 () Unit!75116)

(declare-fun Unit!75485 () Unit!75116)

(assert (=> b!4379479 (= lt!1590099 Unit!75485)))

(assert (=> b!4379479 (contains!11488 lt!1590087 (_1!27637 (h!54753 (_2!27638 (h!54754 (t!356207 (toList!3141 lm!1707)))))))))

(declare-fun lt!1590085 () Unit!75116)

(declare-fun Unit!75486 () Unit!75116)

(assert (=> b!4379479 (= lt!1590085 Unit!75486)))

(assert (=> b!4379479 (forall!9273 (_2!27638 (h!54754 (t!356207 (toList!3141 lm!1707)))) lambda!145342)))

(declare-fun lt!1590092 () Unit!75116)

(declare-fun Unit!75487 () Unit!75116)

(assert (=> b!4379479 (= lt!1590092 Unit!75487)))

(assert (=> b!4379479 call!304646))

(declare-fun lt!1590091 () Unit!75116)

(declare-fun Unit!75488 () Unit!75116)

(assert (=> b!4379479 (= lt!1590091 Unit!75488)))

(declare-fun lt!1590088 () Unit!75116)

(declare-fun Unit!75489 () Unit!75116)

(assert (=> b!4379479 (= lt!1590088 Unit!75489)))

(declare-fun lt!1590094 () Unit!75116)

(assert (=> b!4379479 (= lt!1590094 (addForallContainsKeyThenBeforeAdding!105 (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1590087 (_1!27637 (h!54753 (_2!27638 (h!54754 (t!356207 (toList!3141 lm!1707)))))) (_2!27637 (h!54753 (_2!27638 (h!54754 (t!356207 (toList!3141 lm!1707))))))))))

(assert (=> b!4379479 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707))))) lambda!145342)))

(declare-fun lt!1590083 () Unit!75116)

(assert (=> b!4379479 (= lt!1590083 lt!1590094)))

(assert (=> b!4379479 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707))))) lambda!145342)))

(declare-fun lt!1590093 () Unit!75116)

(declare-fun Unit!75490 () Unit!75116)

(assert (=> b!4379479 (= lt!1590093 Unit!75490)))

(declare-fun res!1803558 () Bool)

(assert (=> b!4379479 (= res!1803558 (forall!9273 (_2!27638 (h!54754 (t!356207 (toList!3141 lm!1707)))) lambda!145342))))

(assert (=> b!4379479 (=> (not res!1803558) (not e!2726100))))

(assert (=> b!4379479 e!2726100))

(declare-fun lt!1590100 () Unit!75116)

(declare-fun Unit!75491 () Unit!75116)

(assert (=> b!4379479 (= lt!1590100 Unit!75491)))

(declare-fun b!4379480 () Bool)

(declare-fun res!1803557 () Bool)

(assert (=> b!4379480 (=> (not res!1803557) (not e!2726098))))

(assert (=> b!4379480 (= res!1803557 (forall!9273 (toList!3142 (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707))))) lambda!145344))))

(declare-fun bm!304643 () Bool)

(assert (=> bm!304643 (= call!304646 (forall!9273 (ite c!744849 (toList!3142 (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707))))) (toList!3142 lt!1590090)) (ite c!744849 lambda!145338 lambda!145342)))))

(assert (= (and d!1304009 c!744849) b!4379478))

(assert (= (and d!1304009 (not c!744849)) b!4379479))

(assert (= (and b!4379479 res!1803558) b!4379476))

(assert (= (or b!4379478 b!4379479) bm!304642))

(assert (= (or b!4379478 b!4379479) bm!304641))

(assert (= (or b!4379478 b!4379479) bm!304643))

(assert (= (and d!1304009 res!1803559) b!4379480))

(assert (= (and b!4379480 res!1803557) b!4379477))

(declare-fun m!5016479 () Bool)

(assert (=> b!4379477 m!5016479))

(declare-fun m!5016481 () Bool)

(assert (=> b!4379476 m!5016481))

(declare-fun m!5016483 () Bool)

(assert (=> b!4379480 m!5016483))

(declare-fun m!5016485 () Bool)

(assert (=> bm!304643 m!5016485))

(assert (=> b!4379479 m!5016481))

(assert (=> b!4379479 m!5016481))

(assert (=> b!4379479 m!5013555))

(declare-fun m!5016487 () Bool)

(assert (=> b!4379479 m!5016487))

(declare-fun m!5016489 () Bool)

(assert (=> b!4379479 m!5016489))

(declare-fun m!5016491 () Bool)

(assert (=> b!4379479 m!5016491))

(declare-fun m!5016493 () Bool)

(assert (=> b!4379479 m!5016493))

(declare-fun m!5016495 () Bool)

(assert (=> b!4379479 m!5016495))

(assert (=> b!4379479 m!5016495))

(assert (=> b!4379479 m!5013555))

(assert (=> b!4379479 m!5016489))

(declare-fun m!5016497 () Bool)

(assert (=> b!4379479 m!5016497))

(declare-fun m!5016499 () Bool)

(assert (=> b!4379479 m!5016499))

(declare-fun m!5016501 () Bool)

(assert (=> b!4379479 m!5016501))

(declare-fun m!5016503 () Bool)

(assert (=> b!4379479 m!5016503))

(assert (=> bm!304642 m!5013555))

(declare-fun m!5016505 () Bool)

(assert (=> bm!304642 m!5016505))

(declare-fun m!5016507 () Bool)

(assert (=> d!1304009 m!5016507))

(declare-fun m!5016509 () Bool)

(assert (=> d!1304009 m!5016509))

(declare-fun m!5016511 () Bool)

(assert (=> bm!304641 m!5016511))

(assert (=> b!4378055 d!1304009))

(declare-fun bs!662807 () Bool)

(declare-fun d!1304015 () Bool)

(assert (= bs!662807 (and d!1304015 d!1303421)))

(declare-fun lambda!145347 () Int)

(assert (=> bs!662807 (= lambda!145347 lambda!145223)))

(declare-fun bs!662810 () Bool)

(assert (= bs!662810 (and d!1304015 d!1303273)))

(assert (=> bs!662810 (= lambda!145347 lambda!145169)))

(declare-fun bs!662812 () Bool)

(assert (= bs!662812 (and d!1304015 d!1303849)))

(assert (=> bs!662812 (= lambda!145347 lambda!145309)))

(declare-fun bs!662814 () Bool)

(assert (= bs!662814 (and d!1304015 d!1303259)))

(assert (=> bs!662814 (= lambda!145347 lambda!145163)))

(declare-fun bs!662816 () Bool)

(assert (= bs!662816 (and d!1304015 d!1303275)))

(assert (=> bs!662816 (= lambda!145347 lambda!145172)))

(declare-fun bs!662818 () Bool)

(assert (= bs!662818 (and d!1304015 d!1303175)))

(assert (=> bs!662818 (= lambda!145347 lambda!145079)))

(declare-fun bs!662820 () Bool)

(assert (= bs!662820 (and d!1304015 start!425120)))

(assert (=> bs!662820 (= lambda!145347 lambda!145061)))

(declare-fun bs!662822 () Bool)

(assert (= bs!662822 (and d!1304015 d!1303267)))

(assert (=> bs!662822 (= lambda!145347 lambda!145168)))

(declare-fun bs!662823 () Bool)

(assert (= bs!662823 (and d!1304015 d!1303719)))

(assert (=> bs!662823 (= lambda!145347 lambda!145290)))

(declare-fun bs!662824 () Bool)

(assert (= bs!662824 (and d!1304015 d!1303157)))

(assert (=> bs!662824 (not (= lambda!145347 lambda!145064))))

(declare-fun lt!1590126 () ListMap!2385)

(assert (=> d!1304015 (invariantList!723 (toList!3142 lt!1590126))))

(declare-fun e!2726105 () ListMap!2385)

(assert (=> d!1304015 (= lt!1590126 e!2726105)))

(declare-fun c!744852 () Bool)

(assert (=> d!1304015 (= c!744852 ((_ is Cons!49157) (t!356207 (t!356207 (toList!3141 lm!1707)))))))

(assert (=> d!1304015 (forall!9271 (t!356207 (t!356207 (toList!3141 lm!1707))) lambda!145347)))

(assert (=> d!1304015 (= (extractMap!638 (t!356207 (t!356207 (toList!3141 lm!1707)))) lt!1590126)))

(declare-fun b!4379488 () Bool)

(assert (=> b!4379488 (= e!2726105 (addToMapMapFromBucket!260 (_2!27638 (h!54754 (t!356207 (t!356207 (toList!3141 lm!1707))))) (extractMap!638 (t!356207 (t!356207 (t!356207 (toList!3141 lm!1707)))))))))

(declare-fun b!4379489 () Bool)

(assert (=> b!4379489 (= e!2726105 (ListMap!2386 Nil!49156))))

(assert (= (and d!1304015 c!744852) b!4379488))

(assert (= (and d!1304015 (not c!744852)) b!4379489))

(declare-fun m!5016513 () Bool)

(assert (=> d!1304015 m!5016513))

(declare-fun m!5016515 () Bool)

(assert (=> d!1304015 m!5016515))

(declare-fun m!5016517 () Bool)

(assert (=> b!4379488 m!5016517))

(assert (=> b!4379488 m!5016517))

(declare-fun m!5016519 () Bool)

(assert (=> b!4379488 m!5016519))

(assert (=> b!4378055 d!1304015))

(declare-fun d!1304017 () Bool)

(assert (=> d!1304017 (isDefined!7854 (getValueByKey!546 (toList!3141 lm!1707) hash!377))))

(declare-fun lt!1590129 () Unit!75116)

(declare-fun choose!27322 (List!49281 (_ BitVec 64)) Unit!75116)

(assert (=> d!1304017 (= lt!1590129 (choose!27322 (toList!3141 lm!1707) hash!377))))

(declare-fun e!2726108 () Bool)

(assert (=> d!1304017 e!2726108))

(declare-fun res!1803565 () Bool)

(assert (=> d!1304017 (=> (not res!1803565) (not e!2726108))))

(assert (=> d!1304017 (= res!1803565 (isStrictlySorted!150 (toList!3141 lm!1707)))))

(assert (=> d!1304017 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!457 (toList!3141 lm!1707) hash!377) lt!1590129)))

(declare-fun b!4379492 () Bool)

(assert (=> b!4379492 (= e!2726108 (containsKey!851 (toList!3141 lm!1707) hash!377))))

(assert (= (and d!1304017 res!1803565) b!4379492))

(assert (=> d!1304017 m!5013727))

(assert (=> d!1304017 m!5013727))

(assert (=> d!1304017 m!5013729))

(declare-fun m!5016521 () Bool)

(assert (=> d!1304017 m!5016521))

(assert (=> d!1304017 m!5013069))

(assert (=> b!4379492 m!5013723))

(assert (=> b!4378098 d!1304017))

(assert (=> b!4378098 d!1303741))

(assert (=> b!4378098 d!1303357))

(assert (=> b!4378069 d!1303449))

(assert (=> b!4378069 d!1303451))

(declare-fun d!1304019 () Bool)

(declare-fun res!1803566 () Bool)

(declare-fun e!2726109 () Bool)

(assert (=> d!1304019 (=> res!1803566 e!2726109)))

(assert (=> d!1304019 (= res!1803566 ((_ is Nil!49156) (ite c!744494 (toList!3142 (+!790 lt!1588594 lt!1588602)) (toList!3142 lt!1588974))))))

(assert (=> d!1304019 (= (forall!9273 (ite c!744494 (toList!3142 (+!790 lt!1588594 lt!1588602)) (toList!3142 lt!1588974)) (ite c!744494 lambda!145159 lambda!145161)) e!2726109)))

(declare-fun b!4379493 () Bool)

(declare-fun e!2726110 () Bool)

(assert (=> b!4379493 (= e!2726109 e!2726110)))

(declare-fun res!1803567 () Bool)

(assert (=> b!4379493 (=> (not res!1803567) (not e!2726110))))

(assert (=> b!4379493 (= res!1803567 (dynLambda!20710 (ite c!744494 lambda!145159 lambda!145161) (h!54753 (ite c!744494 (toList!3142 (+!790 lt!1588594 lt!1588602)) (toList!3142 lt!1588974)))))))

(declare-fun b!4379494 () Bool)

(assert (=> b!4379494 (= e!2726110 (forall!9273 (t!356206 (ite c!744494 (toList!3142 (+!790 lt!1588594 lt!1588602)) (toList!3142 lt!1588974))) (ite c!744494 lambda!145159 lambda!145161)))))

(assert (= (and d!1304019 (not res!1803566)) b!4379493))

(assert (= (and b!4379493 res!1803567) b!4379494))

(declare-fun b_lambda!135131 () Bool)

(assert (=> (not b_lambda!135131) (not b!4379493)))

(declare-fun m!5016561 () Bool)

(assert (=> b!4379493 m!5016561))

(declare-fun m!5016565 () Bool)

(assert (=> b!4379494 m!5016565))

(assert (=> bm!304470 d!1304019))

(declare-fun d!1304023 () Bool)

(assert (=> d!1304023 (= (get!15985 (getValueByKey!546 (toList!3141 lt!1588596) hash!377)) (v!43563 (getValueByKey!546 (toList!3141 lt!1588596) hash!377)))))

(assert (=> d!1303277 d!1304023))

(declare-fun b!4379499 () Bool)

(declare-fun e!2726113 () Option!10560)

(assert (=> b!4379499 (= e!2726113 (getValueByKey!546 (t!356207 (toList!3141 lt!1588596)) hash!377))))

(declare-fun d!1304027 () Bool)

(declare-fun c!744853 () Bool)

(assert (=> d!1304027 (= c!744853 (and ((_ is Cons!49157) (toList!3141 lt!1588596)) (= (_1!27638 (h!54754 (toList!3141 lt!1588596))) hash!377)))))

(declare-fun e!2726112 () Option!10560)

(assert (=> d!1304027 (= (getValueByKey!546 (toList!3141 lt!1588596) hash!377) e!2726112)))

(declare-fun b!4379497 () Bool)

(assert (=> b!4379497 (= e!2726112 (Some!10559 (_2!27638 (h!54754 (toList!3141 lt!1588596)))))))

(declare-fun b!4379500 () Bool)

(assert (=> b!4379500 (= e!2726113 None!10559)))

(declare-fun b!4379498 () Bool)

(assert (=> b!4379498 (= e!2726112 e!2726113)))

(declare-fun c!744854 () Bool)

(assert (=> b!4379498 (= c!744854 (and ((_ is Cons!49157) (toList!3141 lt!1588596)) (not (= (_1!27638 (h!54754 (toList!3141 lt!1588596))) hash!377))))))

(assert (= (and d!1304027 c!744853) b!4379497))

(assert (= (and d!1304027 (not c!744853)) b!4379498))

(assert (= (and b!4379498 c!744854) b!4379499))

(assert (= (and b!4379498 (not c!744854)) b!4379500))

(declare-fun m!5016573 () Bool)

(assert (=> b!4379499 m!5016573))

(assert (=> d!1303277 d!1304027))

(declare-fun d!1304029 () Bool)

(declare-fun lt!1590134 () Bool)

(assert (=> d!1304029 (= lt!1590134 (select (content!7811 (keys!16669 lt!1588597)) key!3918))))

(declare-fun e!2726114 () Bool)

(assert (=> d!1304029 (= lt!1590134 e!2726114)))

(declare-fun res!1803570 () Bool)

(assert (=> d!1304029 (=> (not res!1803570) (not e!2726114))))

(assert (=> d!1304029 (= res!1803570 ((_ is Cons!49159) (keys!16669 lt!1588597)))))

(assert (=> d!1304029 (= (contains!11492 (keys!16669 lt!1588597) key!3918) lt!1590134)))

(declare-fun b!4379501 () Bool)

(declare-fun e!2726115 () Bool)

(assert (=> b!4379501 (= e!2726114 e!2726115)))

(declare-fun res!1803571 () Bool)

(assert (=> b!4379501 (=> res!1803571 e!2726115)))

(assert (=> b!4379501 (= res!1803571 (= (h!54758 (keys!16669 lt!1588597)) key!3918))))

(declare-fun b!4379502 () Bool)

(assert (=> b!4379502 (= e!2726115 (contains!11492 (t!356209 (keys!16669 lt!1588597)) key!3918))))

(assert (= (and d!1304029 res!1803570) b!4379501))

(assert (= (and b!4379501 (not res!1803571)) b!4379502))

(assert (=> d!1304029 m!5013651))

(declare-fun m!5016575 () Bool)

(assert (=> d!1304029 m!5016575))

(declare-fun m!5016577 () Bool)

(assert (=> d!1304029 m!5016577))

(declare-fun m!5016579 () Bool)

(assert (=> b!4379502 m!5016579))

(assert (=> b!4378077 d!1304029))

(assert (=> b!4378077 d!1303845))

(declare-fun d!1304031 () Bool)

(declare-fun res!1803572 () Bool)

(declare-fun e!2726116 () Bool)

(assert (=> d!1304031 (=> res!1803572 e!2726116)))

(assert (=> d!1304031 (= res!1803572 ((_ is Nil!49156) (ite c!744496 (toList!3142 lt!1588594) (t!356206 newBucket!200))))))

(assert (=> d!1304031 (= (forall!9273 (ite c!744496 (toList!3142 lt!1588594) (t!356206 newBucket!200)) (ite c!744496 lambda!145164 lambda!145166)) e!2726116)))

(declare-fun b!4379503 () Bool)

(declare-fun e!2726117 () Bool)

(assert (=> b!4379503 (= e!2726116 e!2726117)))

(declare-fun res!1803573 () Bool)

(assert (=> b!4379503 (=> (not res!1803573) (not e!2726117))))

(assert (=> b!4379503 (= res!1803573 (dynLambda!20710 (ite c!744496 lambda!145164 lambda!145166) (h!54753 (ite c!744496 (toList!3142 lt!1588594) (t!356206 newBucket!200)))))))

(declare-fun b!4379504 () Bool)

(assert (=> b!4379504 (= e!2726117 (forall!9273 (t!356206 (ite c!744496 (toList!3142 lt!1588594) (t!356206 newBucket!200))) (ite c!744496 lambda!145164 lambda!145166)))))

(assert (= (and d!1304031 (not res!1803572)) b!4379503))

(assert (= (and b!4379503 res!1803573) b!4379504))

(declare-fun b_lambda!135133 () Bool)

(assert (=> (not b_lambda!135133) (not b!4379503)))

(declare-fun m!5016581 () Bool)

(assert (=> b!4379503 m!5016581))

(declare-fun m!5016583 () Bool)

(assert (=> b!4379504 m!5016583))

(assert (=> bm!304471 d!1304031))

(declare-fun b!4379507 () Bool)

(declare-fun e!2726119 () Option!10560)

(assert (=> b!4379507 (= e!2726119 (getValueByKey!546 (t!356207 (toList!3141 lt!1589094)) (_1!27638 lt!1588608)))))

(declare-fun d!1304033 () Bool)

(declare-fun c!744855 () Bool)

(assert (=> d!1304033 (= c!744855 (and ((_ is Cons!49157) (toList!3141 lt!1589094)) (= (_1!27638 (h!54754 (toList!3141 lt!1589094))) (_1!27638 lt!1588608))))))

(declare-fun e!2726118 () Option!10560)

(assert (=> d!1304033 (= (getValueByKey!546 (toList!3141 lt!1589094) (_1!27638 lt!1588608)) e!2726118)))

(declare-fun b!4379505 () Bool)

(assert (=> b!4379505 (= e!2726118 (Some!10559 (_2!27638 (h!54754 (toList!3141 lt!1589094)))))))

(declare-fun b!4379508 () Bool)

(assert (=> b!4379508 (= e!2726119 None!10559)))

(declare-fun b!4379506 () Bool)

(assert (=> b!4379506 (= e!2726118 e!2726119)))

(declare-fun c!744856 () Bool)

(assert (=> b!4379506 (= c!744856 (and ((_ is Cons!49157) (toList!3141 lt!1589094)) (not (= (_1!27638 (h!54754 (toList!3141 lt!1589094))) (_1!27638 lt!1588608)))))))

(assert (= (and d!1304033 c!744855) b!4379505))

(assert (= (and d!1304033 (not c!744855)) b!4379506))

(assert (= (and b!4379506 c!744856) b!4379507))

(assert (= (and b!4379506 (not c!744856)) b!4379508))

(declare-fun m!5016585 () Bool)

(assert (=> b!4379507 m!5016585))

(assert (=> b!4378129 d!1304033))

(declare-fun d!1304035 () Bool)

(declare-fun res!1803574 () Bool)

(declare-fun e!2726120 () Bool)

(assert (=> d!1304035 (=> res!1803574 e!2726120)))

(assert (=> d!1304035 (= res!1803574 ((_ is Nil!49156) lt!1588612))))

(assert (=> d!1304035 (= (forall!9273 lt!1588612 lambda!145155) e!2726120)))

(declare-fun b!4379509 () Bool)

(declare-fun e!2726121 () Bool)

(assert (=> b!4379509 (= e!2726120 e!2726121)))

(declare-fun res!1803575 () Bool)

(assert (=> b!4379509 (=> (not res!1803575) (not e!2726121))))

(assert (=> b!4379509 (= res!1803575 (dynLambda!20710 lambda!145155 (h!54753 lt!1588612)))))

(declare-fun b!4379510 () Bool)

(assert (=> b!4379510 (= e!2726121 (forall!9273 (t!356206 lt!1588612) lambda!145155))))

(assert (= (and d!1304035 (not res!1803574)) b!4379509))

(assert (= (and b!4379509 res!1803575) b!4379510))

(declare-fun b_lambda!135135 () Bool)

(assert (=> (not b_lambda!135135) (not b!4379509)))

(declare-fun m!5016587 () Bool)

(assert (=> b!4379509 m!5016587))

(declare-fun m!5016589 () Bool)

(assert (=> b!4379510 m!5016589))

(assert (=> d!1303179 d!1304035))

(assert (=> d!1303179 d!1303577))

(assert (=> b!4378073 d!1304029))

(assert (=> b!4378073 d!1303845))

(declare-fun tp!1331199 () Bool)

(declare-fun e!2726122 () Bool)

(declare-fun b!4379511 () Bool)

(assert (=> b!4379511 (= e!2726122 (and tp_is_empty!25553 tp_is_empty!25555 tp!1331199))))

(assert (=> b!4378144 (= tp!1331197 e!2726122)))

(assert (= (and b!4378144 ((_ is Cons!49156) (_2!27638 (h!54754 (toList!3141 lm!1707))))) b!4379511))

(declare-fun b!4379512 () Bool)

(declare-fun e!2726123 () Bool)

(declare-fun tp!1331200 () Bool)

(declare-fun tp!1331201 () Bool)

(assert (=> b!4379512 (= e!2726123 (and tp!1331200 tp!1331201))))

(assert (=> b!4378144 (= tp!1331198 e!2726123)))

(assert (= (and b!4378144 ((_ is Cons!49157) (t!356207 (toList!3141 lm!1707)))) b!4379512))

(declare-fun b!4379513 () Bool)

(declare-fun tp!1331202 () Bool)

(declare-fun e!2726124 () Bool)

(assert (=> b!4379513 (= e!2726124 (and tp_is_empty!25553 tp_is_empty!25555 tp!1331202))))

(assert (=> b!4378139 (= tp!1331192 e!2726124)))

(assert (= (and b!4378139 ((_ is Cons!49156) (t!356206 (t!356206 newBucket!200)))) b!4379513))

(declare-fun b_lambda!135137 () Bool)

(assert (= b_lambda!135027 (or b!4378047 b_lambda!135137)))

(declare-fun bs!662852 () Bool)

(declare-fun d!1304037 () Bool)

(assert (= bs!662852 (and d!1304037 b!4378047)))

(assert (=> bs!662852 (= (dynLambda!20710 lambda!145161 (h!54753 lt!1588612)) (contains!11488 lt!1588971 (_1!27637 (h!54753 lt!1588612))))))

(assert (=> bs!662852 m!5013529))

(assert (=> b!4378848 d!1304037))

(declare-fun b_lambda!135139 () Bool)

(assert (= b_lambda!135029 (or b!4378047 b_lambda!135139)))

(declare-fun bs!662853 () Bool)

(declare-fun d!1304039 () Bool)

(assert (= bs!662853 (and d!1304039 b!4378047)))

(assert (=> bs!662853 (= (dynLambda!20710 lambda!145161 (h!54753 (toList!3142 lt!1588974))) (contains!11488 lt!1588971 (_1!27637 (h!54753 (toList!3142 lt!1588974)))))))

(declare-fun m!5016591 () Bool)

(assert (=> bs!662853 m!5016591))

(assert (=> b!4378852 d!1304039))

(declare-fun b_lambda!135141 () Bool)

(assert (= b_lambda!135031 (or b!4378047 b_lambda!135141)))

(declare-fun bs!662854 () Bool)

(declare-fun d!1304041 () Bool)

(assert (= bs!662854 (and d!1304041 b!4378047)))

(assert (=> bs!662854 (= (dynLambda!20710 lambda!145160 (h!54753 (toList!3142 (+!790 lt!1588594 lt!1588602)))) (contains!11488 (+!790 lt!1588594 lt!1588602) (_1!27637 (h!54753 (toList!3142 (+!790 lt!1588594 lt!1588602))))))))

(assert (=> bs!662854 m!5012945))

(declare-fun m!5016593 () Bool)

(assert (=> bs!662854 m!5016593))

(assert (=> b!4378863 d!1304041))

(declare-fun b_lambda!135143 () Bool)

(assert (= b_lambda!134983 (or start!425120 b_lambda!135143)))

(declare-fun bs!662855 () Bool)

(declare-fun d!1304043 () Bool)

(assert (= bs!662855 (and d!1304043 start!425120)))

(assert (=> bs!662855 (= (dynLambda!20709 lambda!145061 (h!54754 (toList!3141 (+!789 lm!1707 (tuple2!48689 hash!377 newBucket!200))))) (noDuplicateKeys!579 (_2!27638 (h!54754 (toList!3141 (+!789 lm!1707 (tuple2!48689 hash!377 newBucket!200)))))))))

(declare-fun m!5016595 () Bool)

(assert (=> bs!662855 m!5016595))

(assert (=> b!4378540 d!1304043))

(declare-fun b_lambda!135145 () Bool)

(assert (= b_lambda!135019 (or b!4378090 b_lambda!135145)))

(declare-fun bs!662856 () Bool)

(declare-fun d!1304045 () Bool)

(assert (= bs!662856 (and d!1304045 b!4378090)))

(assert (=> bs!662856 (= (dynLambda!20710 lambda!145175 (h!54753 lt!1588593)) (contains!11488 lt!1589053 (_1!27637 (h!54753 lt!1588593))))))

(assert (=> bs!662856 m!5013713))

(assert (=> d!1303609 d!1304045))

(declare-fun b_lambda!135147 () Bool)

(assert (= b_lambda!135125 (or d!1303265 b_lambda!135147)))

(declare-fun bs!662857 () Bool)

(declare-fun d!1304047 () Bool)

(assert (= bs!662857 (and d!1304047 d!1303265)))

(assert (=> bs!662857 (= (dynLambda!20710 lambda!145167 (h!54753 newBucket!200)) (contains!11488 lt!1589021 (_1!27637 (h!54753 newBucket!200))))))

(declare-fun m!5016597 () Bool)

(assert (=> bs!662857 m!5016597))

(assert (=> b!4379460 d!1304047))

(declare-fun b_lambda!135149 () Bool)

(assert (= b_lambda!134949 (or b!4378063 b_lambda!135149)))

(declare-fun bs!662858 () Bool)

(declare-fun d!1304049 () Bool)

(assert (= bs!662858 (and d!1304049 b!4378063)))

(assert (=> bs!662858 (= (dynLambda!20710 lambda!145166 (h!54753 newBucket!200)) (contains!11488 lt!1589011 (_1!27637 (h!54753 newBucket!200))))))

(assert (=> bs!662858 m!5013605))

(assert (=> b!4378327 d!1304049))

(declare-fun b_lambda!135151 () Bool)

(assert (= b_lambda!135089 (or d!1303157 b_lambda!135151)))

(declare-fun bs!662859 () Bool)

(declare-fun d!1304051 () Bool)

(assert (= bs!662859 (and d!1304051 d!1303157)))

(assert (=> bs!662859 (= (dynLambda!20709 lambda!145064 (h!54754 (toList!3141 lm!1707))) (allKeysSameHash!537 (_2!27638 (h!54754 (toList!3141 lm!1707))) (_1!27638 (h!54754 (toList!3141 lm!1707))) hashF!1247))))

(declare-fun m!5016599 () Bool)

(assert (=> bs!662859 m!5016599))

(assert (=> b!4379272 d!1304051))

(declare-fun b_lambda!135153 () Bool)

(assert (= b_lambda!135093 (or d!1303275 b_lambda!135153)))

(declare-fun bs!662860 () Bool)

(declare-fun d!1304053 () Bool)

(assert (= bs!662860 (and d!1304053 d!1303275)))

(assert (=> bs!662860 (= (dynLambda!20709 lambda!145172 (h!54754 (toList!3141 lm!1707))) (noDuplicateKeys!579 (_2!27638 (h!54754 (toList!3141 lm!1707)))))))

(assert (=> bs!662860 m!5013783))

(assert (=> b!4379296 d!1304053))

(declare-fun b_lambda!135155 () Bool)

(assert (= b_lambda!135015 (or b!4378090 b_lambda!135155)))

(declare-fun bs!662861 () Bool)

(declare-fun d!1304055 () Bool)

(assert (= bs!662861 (and d!1304055 b!4378090)))

(assert (=> bs!662861 (= (dynLambda!20710 lambda!145175 (h!54753 (toList!3142 lt!1588594))) (contains!11488 lt!1589053 (_1!27637 (h!54753 (toList!3142 lt!1588594)))))))

(declare-fun m!5016601 () Bool)

(assert (=> bs!662861 m!5016601))

(assert (=> b!4378695 d!1304055))

(declare-fun b_lambda!135157 () Bool)

(assert (= b_lambda!134957 (or b!4378063 b_lambda!135157)))

(declare-fun bs!662862 () Bool)

(declare-fun d!1304057 () Bool)

(assert (= bs!662862 (and d!1304057 b!4378063)))

(assert (=> bs!662862 (= (dynLambda!20710 lambda!145165 (h!54753 (toList!3142 lt!1588594))) (contains!11488 lt!1588594 (_1!27637 (h!54753 (toList!3142 lt!1588594)))))))

(declare-fun m!5016603 () Bool)

(assert (=> bs!662862 m!5016603))

(assert (=> b!4378335 d!1304057))

(declare-fun b_lambda!135159 () Bool)

(assert (= b_lambda!135011 (or d!1303255 b_lambda!135159)))

(declare-fun bs!662863 () Bool)

(declare-fun d!1304059 () Bool)

(assert (= bs!662863 (and d!1304059 d!1303255)))

(assert (=> bs!662863 (= (dynLambda!20710 lambda!145162 (h!54753 lt!1588612)) (contains!11488 lt!1588981 (_1!27637 (h!54753 lt!1588612))))))

(declare-fun m!5016605 () Bool)

(assert (=> bs!662863 m!5016605))

(assert (=> b!4378658 d!1304059))

(declare-fun b_lambda!135161 () Bool)

(assert (= b_lambda!135013 (or b!4378090 b_lambda!135161)))

(declare-fun bs!662864 () Bool)

(declare-fun d!1304061 () Bool)

(assert (= bs!662864 (and d!1304061 b!4378090)))

(assert (=> bs!662864 (= (dynLambda!20710 lambda!145174 (h!54753 (toList!3142 lt!1588594))) (contains!11488 lt!1588594 (_1!27637 (h!54753 (toList!3142 lt!1588594)))))))

(assert (=> bs!662864 m!5016603))

(assert (=> b!4378693 d!1304061))

(declare-fun b_lambda!135163 () Bool)

(assert (= b_lambda!134963 (or d!1303255 b_lambda!135163)))

(declare-fun bs!662865 () Bool)

(declare-fun d!1304063 () Bool)

(assert (= bs!662865 (and d!1304063 d!1303255)))

(assert (=> bs!662865 (= (dynLambda!20710 lambda!145162 (h!54753 (toList!3142 (+!790 lt!1588594 lt!1588602)))) (contains!11488 lt!1588981 (_1!27637 (h!54753 (toList!3142 (+!790 lt!1588594 lt!1588602))))))))

(declare-fun m!5016607 () Bool)

(assert (=> bs!662865 m!5016607))

(assert (=> b!4378370 d!1304063))

(declare-fun b_lambda!135165 () Bool)

(assert (= b_lambda!135099 (or b!4377997 b_lambda!135165)))

(declare-fun bs!662866 () Bool)

(declare-fun d!1304065 () Bool)

(assert (= bs!662866 (and d!1304065 b!4377997)))

(assert (=> bs!662866 (= (dynLambda!20710 lambda!145154 (h!54753 (toList!3142 lt!1588594))) (contains!11488 lt!1588912 (_1!27637 (h!54753 (toList!3142 lt!1588594)))))))

(declare-fun m!5016609 () Bool)

(assert (=> bs!662866 m!5016609))

(assert (=> b!4379315 d!1304065))

(declare-fun b_lambda!135167 () Bool)

(assert (= b_lambda!135085 (or d!1303179 b_lambda!135167)))

(declare-fun bs!662867 () Bool)

(declare-fun d!1304067 () Bool)

(assert (= bs!662867 (and d!1304067 d!1303179)))

(assert (=> bs!662867 (= (dynLambda!20710 lambda!145155 (h!54753 (toList!3142 lt!1588594))) (contains!11488 lt!1588922 (_1!27637 (h!54753 (toList!3142 lt!1588594)))))))

(declare-fun m!5016611 () Bool)

(assert (=> bs!662867 m!5016611))

(assert (=> b!4379228 d!1304067))

(declare-fun b_lambda!135169 () Bool)

(assert (= b_lambda!135101 (or b!4377997 b_lambda!135169)))

(declare-fun bs!662868 () Bool)

(declare-fun d!1304069 () Bool)

(assert (= bs!662868 (and d!1304069 b!4377997)))

(assert (=> bs!662868 (= (dynLambda!20710 lambda!145153 (h!54753 (toList!3142 lt!1588594))) (contains!11488 lt!1588594 (_1!27637 (h!54753 (toList!3142 lt!1588594)))))))

(assert (=> bs!662868 m!5016603))

(assert (=> b!4379317 d!1304069))

(declare-fun b_lambda!135171 () Bool)

(assert (= b_lambda!135049 (or b!4378047 b_lambda!135171)))

(declare-fun bs!662869 () Bool)

(declare-fun d!1304071 () Bool)

(assert (= bs!662869 (and d!1304071 b!4378047)))

(assert (=> bs!662869 (= (dynLambda!20710 lambda!145161 (h!54753 (toList!3142 (+!790 lt!1588594 lt!1588602)))) (contains!11488 lt!1588971 (_1!27637 (h!54753 (toList!3142 (+!790 lt!1588594 lt!1588602))))))))

(declare-fun m!5016613 () Bool)

(assert (=> bs!662869 m!5016613))

(assert (=> b!4378928 d!1304071))

(declare-fun b_lambda!135173 () Bool)

(assert (= b_lambda!135023 (or d!1303267 b_lambda!135173)))

(declare-fun bs!662870 () Bool)

(declare-fun d!1304073 () Bool)

(assert (= bs!662870 (and d!1304073 d!1303267)))

(assert (=> bs!662870 (= (dynLambda!20709 lambda!145168 (h!54754 (toList!3141 lt!1588596))) (noDuplicateKeys!579 (_2!27638 (h!54754 (toList!3141 lt!1588596)))))))

(assert (=> bs!662870 m!5015369))

(assert (=> b!4378718 d!1304073))

(declare-fun b_lambda!135175 () Bool)

(assert (= b_lambda!135119 (or d!1303259 b_lambda!135175)))

(declare-fun bs!662871 () Bool)

(declare-fun d!1304075 () Bool)

(assert (= bs!662871 (and d!1304075 d!1303259)))

(assert (=> bs!662871 (= (dynLambda!20709 lambda!145163 (h!54754 (t!356207 (toList!3141 lm!1707)))) (noDuplicateKeys!579 (_2!27638 (h!54754 (t!356207 (toList!3141 lm!1707))))))))

(assert (=> bs!662871 m!5016509))

(assert (=> b!4379400 d!1304075))

(declare-fun b_lambda!135177 () Bool)

(assert (= b_lambda!135103 (or b!4377997 b_lambda!135177)))

(declare-fun bs!662872 () Bool)

(declare-fun d!1304077 () Bool)

(assert (= bs!662872 (and d!1304077 b!4377997)))

(assert (=> bs!662872 (= (dynLambda!20710 lambda!145154 (h!54753 lt!1588612)) (contains!11488 lt!1588912 (_1!27637 (h!54753 lt!1588612))))))

(assert (=> bs!662872 m!5013431))

(assert (=> b!4379319 d!1304077))

(declare-fun b_lambda!135179 () Bool)

(assert (= b_lambda!135129 (or d!1303299 b_lambda!135179)))

(declare-fun bs!662873 () Bool)

(declare-fun d!1304079 () Bool)

(assert (= bs!662873 (and d!1304079 d!1303299)))

(assert (=> bs!662873 (= (dynLambda!20710 lambda!145179 (h!54753 newBucket!200)) (= (hash!1746 hashF!1247 (_1!27637 (h!54753 newBucket!200))) hash!377))))

(declare-fun m!5016615 () Bool)

(assert (=> bs!662873 m!5016615))

(assert (=> b!4379468 d!1304079))

(declare-fun b_lambda!135181 () Bool)

(assert (= b_lambda!135021 (or b!4378090 b_lambda!135181)))

(assert (=> b!4378716 d!1304045))

(declare-fun b_lambda!135183 () Bool)

(assert (= b_lambda!134973 (or start!425120 b_lambda!135183)))

(declare-fun bs!662874 () Bool)

(declare-fun d!1304081 () Bool)

(assert (= bs!662874 (and d!1304081 start!425120)))

(assert (=> bs!662874 (= (dynLambda!20709 lambda!145061 (h!54754 (t!356207 (toList!3141 lm!1707)))) (noDuplicateKeys!579 (_2!27638 (h!54754 (t!356207 (toList!3141 lm!1707))))))))

(assert (=> bs!662874 m!5016509))

(assert (=> b!4378452 d!1304081))

(declare-fun b_lambda!135185 () Bool)

(assert (= b_lambda!135017 (or b!4378090 b_lambda!135185)))

(declare-fun bs!662875 () Bool)

(declare-fun d!1304083 () Bool)

(assert (= bs!662875 (and d!1304083 b!4378090)))

(assert (=> bs!662875 (= (dynLambda!20710 lambda!145175 (h!54753 (toList!3142 lt!1589056))) (contains!11488 lt!1589053 (_1!27637 (h!54753 (toList!3142 lt!1589056)))))))

(declare-fun m!5016617 () Bool)

(assert (=> bs!662875 m!5016617))

(assert (=> b!4378697 d!1304083))

(declare-fun b_lambda!135187 () Bool)

(assert (= b_lambda!134947 (or d!1303273 b_lambda!135187)))

(declare-fun bs!662876 () Bool)

(declare-fun d!1304085 () Bool)

(assert (= bs!662876 (and d!1304085 d!1303273)))

(assert (=> bs!662876 (= (dynLambda!20709 lambda!145169 (h!54754 (toList!3141 lt!1588604))) (noDuplicateKeys!579 (_2!27638 (h!54754 (toList!3141 lt!1588604)))))))

(assert (=> bs!662876 m!5013781))

(assert (=> b!4378180 d!1304085))

(declare-fun b_lambda!135189 () Bool)

(assert (= b_lambda!134961 (or b!4378063 b_lambda!135189)))

(assert (=> d!1303379 d!1304049))

(declare-fun b_lambda!135191 () Bool)

(assert (= b_lambda!134945 (or d!1303283 b_lambda!135191)))

(declare-fun bs!662877 () Bool)

(declare-fun d!1304087 () Bool)

(assert (= bs!662877 (and d!1304087 d!1303283)))

(assert (=> bs!662877 (= (dynLambda!20710 lambda!145176 (h!54753 (toList!3142 lt!1588594))) (contains!11488 lt!1589063 (_1!27637 (h!54753 (toList!3142 lt!1588594)))))))

(declare-fun m!5016619 () Bool)

(assert (=> bs!662877 m!5016619))

(assert (=> b!4378166 d!1304087))

(declare-fun b_lambda!135193 () Bool)

(assert (= b_lambda!134951 (or b!4378063 b_lambda!135193)))

(declare-fun bs!662878 () Bool)

(declare-fun d!1304089 () Bool)

(assert (= bs!662878 (and d!1304089 b!4378063)))

(assert (=> bs!662878 (= (dynLambda!20710 lambda!145166 (h!54753 (toList!3142 lt!1589014))) (contains!11488 lt!1589011 (_1!27637 (h!54753 (toList!3142 lt!1589014)))))))

(declare-fun m!5016621 () Bool)

(assert (=> bs!662878 m!5016621))

(assert (=> b!4378329 d!1304089))

(declare-fun b_lambda!135195 () Bool)

(assert (= b_lambda!135033 (or b!4378047 b_lambda!135195)))

(assert (=> d!1303641 d!1304037))

(declare-fun b_lambda!135197 () Bool)

(assert (= b_lambda!135095 (or d!1303265 b_lambda!135197)))

(declare-fun bs!662879 () Bool)

(declare-fun d!1304091 () Bool)

(assert (= bs!662879 (and d!1304091 d!1303265)))

(assert (=> bs!662879 (= (dynLambda!20710 lambda!145167 (h!54753 (toList!3142 lt!1588594))) (contains!11488 lt!1589021 (_1!27637 (h!54753 (toList!3142 lt!1588594)))))))

(declare-fun m!5016623 () Bool)

(assert (=> bs!662879 m!5016623))

(assert (=> b!4379303 d!1304091))

(declare-fun b_lambda!135199 () Bool)

(assert (= b_lambda!134991 (or start!425120 b_lambda!135199)))

(assert (=> d!1303523 d!1303305))

(declare-fun b_lambda!135201 () Bool)

(assert (= b_lambda!135083 (or start!425120 b_lambda!135201)))

(declare-fun bs!662880 () Bool)

(declare-fun d!1304093 () Bool)

(assert (= bs!662880 (and d!1304093 start!425120)))

(assert (=> bs!662880 (= (dynLambda!20709 lambda!145061 (h!54754 (t!356207 (toList!3141 lt!1588604)))) (noDuplicateKeys!579 (_2!27638 (h!54754 (t!356207 (toList!3141 lt!1588604))))))))

(declare-fun m!5016625 () Bool)

(assert (=> bs!662880 m!5016625))

(assert (=> b!4379226 d!1304093))

(declare-fun b_lambda!135203 () Bool)

(assert (= b_lambda!134953 (or b!4378063 b_lambda!135203)))

(declare-fun bs!662881 () Bool)

(declare-fun d!1304095 () Bool)

(assert (= bs!662881 (and d!1304095 b!4378063)))

(assert (=> bs!662881 (= (dynLambda!20710 lambda!145166 (h!54753 (toList!3142 lt!1588594))) (contains!11488 lt!1589011 (_1!27637 (h!54753 (toList!3142 lt!1588594)))))))

(declare-fun m!5016627 () Bool)

(assert (=> bs!662881 m!5016627))

(assert (=> b!4378331 d!1304095))

(declare-fun b_lambda!135205 () Bool)

(assert (= b_lambda!134965 (or d!1303283 b_lambda!135205)))

(declare-fun bs!662883 () Bool)

(declare-fun d!1304097 () Bool)

(assert (= bs!662883 (and d!1304097 d!1303283)))

(assert (=> bs!662883 (= (dynLambda!20710 lambda!145176 (h!54753 lt!1588593)) (contains!11488 lt!1589063 (_1!27637 (h!54753 lt!1588593))))))

(declare-fun m!5016629 () Bool)

(assert (=> bs!662883 m!5016629))

(assert (=> b!4378374 d!1304097))

(declare-fun b_lambda!135207 () Bool)

(assert (= b_lambda!135135 (or d!1303179 b_lambda!135207)))

(declare-fun bs!662884 () Bool)

(declare-fun d!1304099 () Bool)

(assert (= bs!662884 (and d!1304099 d!1303179)))

(assert (=> bs!662884 (= (dynLambda!20710 lambda!145155 (h!54753 lt!1588612)) (contains!11488 lt!1588922 (_1!27637 (h!54753 lt!1588612))))))

(declare-fun m!5016631 () Bool)

(assert (=> bs!662884 m!5016631))

(assert (=> b!4379509 d!1304099))

(declare-fun b_lambda!135209 () Bool)

(assert (= b_lambda!135117 (or b!4377997 b_lambda!135209)))

(declare-fun bs!662885 () Bool)

(declare-fun d!1304101 () Bool)

(assert (= bs!662885 (and d!1304101 b!4377997)))

(assert (=> bs!662885 (= (dynLambda!20710 lambda!145154 (h!54753 (toList!3142 lt!1588915))) (contains!11488 lt!1588912 (_1!27637 (h!54753 (toList!3142 lt!1588915)))))))

(declare-fun m!5016633 () Bool)

(assert (=> bs!662885 m!5016633))

(assert (=> b!4379398 d!1304101))

(declare-fun b_lambda!135211 () Bool)

(assert (= b_lambda!135105 (or b!4377997 b_lambda!135211)))

(assert (=> d!1303897 d!1304077))

(declare-fun b_lambda!135213 () Bool)

(assert (= b_lambda!135097 (or d!1303175 b_lambda!135213)))

(declare-fun bs!662886 () Bool)

(declare-fun d!1304105 () Bool)

(assert (= bs!662886 (and d!1304105 d!1303175)))

(assert (=> bs!662886 (= (dynLambda!20709 lambda!145079 (h!54754 (toList!3141 lm!1707))) (noDuplicateKeys!579 (_2!27638 (h!54754 (toList!3141 lm!1707)))))))

(assert (=> bs!662886 m!5013783))

(assert (=> b!4379307 d!1304105))

(check-sat (not b!4378885) (not b!4378287) (not b!4378520) (not b!4379273) (not b!4378922) (not d!1303747) (not d!1303805) (not bm!304503) (not b!4379462) (not b!4379192) (not b_lambda!135063) (not bs!662866) (not b!4378585) (not b_lambda!135173) (not b!4378543) (not b!4378738) (not b!4378378) (not b!4379186) (not b!4379242) (not b!4378966) (not d!1303579) (not b!4379230) (not bm!304608) (not b!4379246) (not d!1303319) (not bm!304487) (not b_lambda!135183) (not b!4379304) (not bs!662879) (not d!1303569) (not d!1303719) (not bm!304609) (not b!4378362) (not b!4378723) (not b!4378453) (not d!1303385) (not b!4378364) (not bm!304516) (not bm!304618) (not b!4379209) (not b!4378923) (not b!4379316) (not b!4378283) (not b!4378931) (not b!4379020) (not b!4378279) (not b!4378375) (not bm!304555) (not b!4378173) (not bs!662865) (not b!4378893) (not b!4379323) (not b!4379335) (not b!4379007) (not b!4378995) (not b!4379328) (not b!4379202) (not b!4379037) (not b!4379241) (not b!4379463) (not b_lambda!135165) (not b!4379270) (not b!4379227) (not b!4378496) (not b!4378958) (not d!1303809) (not b!4379297) (not b!4378271) (not d!1303995) (not d!1303483) (not b!4378633) (not b!4378664) (not d!1303849) (not b!4379287) (not b!4378680) (not b_lambda!135191) (not b_lambda!135177) (not b!4379200) (not bs!662869) (not b_lambda!135157) tp_is_empty!25555 (not bs!662867) (not bs!662880) (not b!4378710) (not b!4379392) (not bs!662861) (not d!1303661) (not d!1303379) (not bm!304631) (not b!4379250) (not d!1303469) (not b!4379314) (not b!4378887) (not bs!662859) (not bm!304506) (not b!4378713) (not b!4378673) (not b!4378934) (not bm!304489) (not d!1303433) (not bm!304550) (not b!4378948) (not bm!304518) (not b!4379284) (not b!4378477) tp_is_empty!25553 (not b!4378197) (not b!4379188) (not b_lambda!135133) (not b!4378836) (not d!1303605) (not b!4378359) (not b!4379401) (not b!4378722) (not bs!662886) (not b!4378269) (not d!1303735) (not b!4378929) (not bs!662874) (not b_lambda!135193) (not b!4378367) (not b!4379334) (not b!4379205) (not b!4379203) (not b!4379507) (not b!4379271) (not bm!304622) (not b!4378365) (not b!4379397) (not b_lambda!135211) (not b!4378700) (not bs!662870) (not b_lambda!135149) (not bm!304605) (not b_lambda!135197) (not d!1303373) (not b!4379283) (not b!4378286) (not b!4378284) (not b!4379239) (not b!4379264) (not bm!304623) (not d!1303623) (not b!4378703) (not b!4378343) (not b!4378159) (not d!1303895) (not b!4378291) (not b!4378717) (not d!1303899) (not b!4378694) (not d!1303749) (not b!4378921) (not b!4379262) (not b!4378869) (not bs!662871) (not bm!304507) (not b!4378292) (not b!4378150) (not d!1303707) (not b!4378892) (not d!1303945) (not d!1303659) (not b!4378676) (not b!4379234) (not bm!304521) (not bs!662875) (not b!4379187) (not d!1303383) (not b!4378209) (not b!4378454) (not b!4378328) (not b!4379013) (not b!4379253) (not b!4378696) (not b!4378970) (not b!4378182) (not d!1303421) (not b!4379456) (not d!1303731) (not b!4378175) (not b!4379301) (not d!1303867) (not b!4379002) (not d!1303673) (not b!4379235) (not b!4378671) (not d!1304029) (not bs!662854) (not b!4378289) (not d!1303947) (not d!1303863) (not bm!304574) (not bm!304502) (not d!1303879) (not d!1303695) (not d!1303603) (not b!4378668) (not b!4379277) (not b_lambda!135139) (not d!1303977) (not b!4378678) (not b!4378666) (not b!4378870) (not d!1303821) (not bs!662885) (not b_lambda!135209) (not d!1303819) (not b!4378918) (not d!1303521) (not b!4379325) (not b!4378336) (not bs!662864) (not b!4379012) (not b!4378965) (not bm!304634) (not b!4379457) (not b!4379318) (not b!4378357) (not b!4379042) (not b!4378157) (not b!4378181) (not d!1303989) (not b!4379499) (not b!4378720) (not bm!304642) (not b!4378866) (not b!4378853) (not bm!304491) (not b!4378332) (not b!4378935) (not bm!304575) (not b!4378412) (not b!4379238) (not b!4378930) (not b_lambda!135087) (not d!1303609) (not b_lambda!135201) (not b!4378827) (not b_lambda!135151) (not d!1303795) (not b!4378888) (not b!4378715) (not bm!304504) (not d!1303361) (not d!1303751) (not b!4378702) (not b!4378969) (not d!1303607) (not b!4379502) (not b!4378727) (not b!4379039) (not b!4378517) (not b!4378864) (not b_lambda!135059) (not b!4378725) (not d!1303315) (not b!4379244) (not d!1303845) (not b_lambda!135141) (not b!4379258) (not b!4379469) (not d!1303501) (not b!4379282) (not b!4378637) (not b_lambda!134941) (not d!1303397) (not b!4378675) (not d!1303337) (not b!4378672) (not b!4379196) (not b_lambda!135179) (not bs!662857) (not b!4379010) (not d!1303827) (not d!1303517) (not bm!304624) (not b!4378967) (not b!4379184) (not b!4379393) (not d!1303817) (not b!4378826) (not b!4379329) (not b!4378460) (not b!4378731) (not b!4379034) (not d!1303331) (not b!4378501) (not d!1303991) (not b!4378574) (not b_lambda!134943) (not d!1303613) (not bm!304522) (not bs!662878) (not bm!304616) (not d!1304009) (not b!4378337) (not b!4378926) (not bm!304554) (not b!4379229) (not b!4378167) (not bm!304633) (not b!4379256) (not b_lambda!135171) (not b!4378499) (not b!4379513) (not b!4379267) (not b!4379255) (not b!4379018) (not d!1303807) (not bm!304552) (not d!1304015) (not bs!662858) (not d!1303587) (not b!4379504) (not b!4378704) (not b!4378670) (not b_lambda!135127) (not d!1303641) (not b!4378641) (not b!4378711) (not b!4378379) (not b!4378455) (not d!1303797) (not b!4378542) (not d!1303403) (not b!4378706) (not bm!304519) (not b_lambda!135185) (not b!4378961) (not b!4379275) (not b!4379254) (not b!4378281) (not b_lambda!135137) (not d!1303313) (not b!4378492) (not b!4379197) (not b!4378274) (not b!4379394) (not d!1303671) (not b_lambda!135155) (not d!1303705) (not bm!304604) (not b_lambda!135079) (not b_lambda!134937) (not b!4379464) (not b!4378282) (not b!4379231) (not b!4379475) (not b!4379396) (not bs!662853) (not bs!662876) (not b!4378390) (not b!4379399) (not b_lambda!135153) (not bm!304556) (not d!1303843) (not b_lambda!135161) (not bm!304488) (not b!4379389) (not d!1303503) (not b!4379243) (not b!4379220) (not b!4378835) (not bm!304563) (not b!4379511) (not b_lambda!135147) (not b!4379281) (not b!4378413) (not b_lambda!135065) (not b_lambda!135163) (not b!4378456) (not b!4379461) (not d!1303837) (not b!4379476) (not b!4378655) (not d!1303743) (not b!4378708) (not b!4378916) (not b!4379494) (not b!4379036) (not d!1304017) (not b!4378288) (not b!4379465) (not b!4378184) (not b!4379269) (not b!4379477) (not b!4378541) (not b!4378571) (not bm!304567) (not bm!304568) (not b!4379467) (not b!4378867) (not b!4378920) (not bm!304560) (not b!4378728) (not b!4379320) (not b!4378539) (not b_lambda!135169) (not d!1303359) (not d!1303621) (not d!1303737) (not d!1303725) (not d!1303449) (not b!4379331) (not d!1303869) (not b_lambda!135199) (not b!4379279) (not d!1303453) (not b!4378677) (not d!1303617) (not b!4379298) (not bm!304490) (not b!4378719) (not bm!304632) (not d!1303741) (not b!4378828) (not bs!662852) (not bs!662856) (not d!1303447) (not b_lambda!135187) (not b!4379492) (not bs!662868) (not bs!662877) (not b!4379313) (not bm!304505) (not b!4379455) (not b!4378699) (not d!1303643) (not d!1303853) (not bm!304643) (not bs!662855) (not b!4379405) (not b_lambda!134939) (not bm!304520) (not bs!662862) (not bs!662884) (not b!4379391) (not d!1303939) (not b!4378737) (not b_lambda!135189) (not b!4378361) (not b!4378330) (not b!4378963) (not b!4378210) (not b!4378890) (not d!1303431) (not b_lambda!135159) (not b!4379252) (not b_lambda!135145) (not bm!304607) (not b!4379330) (not d!1303855) (not b!4378917) (not bs!662873) (not b!4379263) (not b!4378709) (not d!1303529) (not b!4378681) (not b!4378457) (not b!4379332) (not b!4378458) (not d!1303875) (not b!4378830) (not b!4378938) (not b!4379510) (not b!4379038) (not b!4379428) (not b!4378714) (not d!1303597) (not b!4378409) (not bs!662860) (not b!4379402) (not d!1303387) (not b!4379023) (not b!4378659) (not b!4378839) (not b!4379308) (not d!1303825) (not b!4378500) (not b!4378705) (not b!4378834) (not b!4378448) (not d!1303581) (not d!1303519) (not b!4379479) (not b_lambda!135131) (not b!4379185) (not b!4379326) (not b!4379480) (not b!4378865) (not b!4379459) (not b!4379324) (not b!4378371) (not bs!662883) (not d!1303339) (not b!4379028) (not bm!304569) (not d!1303897) (not b!4379183) (not b!4379406) (not b!4379247) (not b_lambda!135195) (not bm!304641) (not b_lambda!135143) (not b!4378634) (not d!1303729) (not b!4378638) (not b!4379005) (not b!4379429) (not b!4378408) (not b!4378947) (not b_lambda!135213) (not bs!662872) (not b_lambda!135205) (not bs!662881) (not b_lambda!135203) (not b!4378410) (not b!4378889) (not b!4379321) (not b!4378724) (not b_lambda!135207) (not d!1303887) (not b_lambda!135167) (not d!1303971) (not b!4378277) (not b!4379032) (not b!4378663) (not d!1303327) (not b!4379025) (not d!1303951) (not d!1303993) (not b!4378461) (not b!4378925) (not bs!662863) (not b!4378158) (not b!4379041) (not b!4379403) (not bm!304614) (not b!4378360) (not bm!304625) (not b!4378849) (not b_lambda!135181) (not bm!304606) (not bm!304501) (not b!4379488) (not b!4378698) (not d!1303681) (not b_lambda!135175) (not b!4379512) (not b!4378338))
(check-sat)
