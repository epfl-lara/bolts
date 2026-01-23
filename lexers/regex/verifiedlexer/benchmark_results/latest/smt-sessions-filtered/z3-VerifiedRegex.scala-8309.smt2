; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!431828 () Bool)

(assert start!431828)

(declare-fun b!4425917 () Bool)

(declare-fun res!1829848 () Bool)

(declare-fun e!2755803 () Bool)

(assert (=> b!4425917 (=> (not res!1829848) (not e!2755803))))

(declare-datatypes ((K!10950 0))(
  ( (K!10951 (val!17031 Int)) )
))
(declare-datatypes ((V!11196 0))(
  ( (V!11197 (val!17032 Int)) )
))
(declare-datatypes ((tuple2!49382 0))(
  ( (tuple2!49383 (_1!27985 K!10950) (_2!27985 V!11196)) )
))
(declare-datatypes ((List!49711 0))(
  ( (Nil!49587) (Cons!49587 (h!55274 tuple2!49382) (t!356649 List!49711)) )
))
(declare-fun newBucket!194 () List!49711)

(declare-datatypes ((Hashable!5145 0))(
  ( (HashableExt!5144 (__x!30848 Int)) )
))
(declare-fun hashF!1220 () Hashable!5145)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun allKeysSameHash!711 (List!49711 (_ BitVec 64) Hashable!5145) Bool)

(assert (=> b!4425917 (= res!1829848 (allKeysSameHash!711 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4425918 () Bool)

(declare-datatypes ((Unit!82037 0))(
  ( (Unit!82038) )
))
(declare-fun e!2755797 () Unit!82037)

(declare-fun Unit!82039 () Unit!82037)

(assert (=> b!4425918 (= e!2755797 Unit!82039)))

(declare-fun lt!1625201 () Unit!82037)

(declare-fun key!3717 () K!10950)

(declare-datatypes ((tuple2!49384 0))(
  ( (tuple2!49385 (_1!27986 (_ BitVec 64)) (_2!27986 List!49711)) )
))
(declare-datatypes ((List!49712 0))(
  ( (Nil!49588) (Cons!49588 (h!55275 tuple2!49384) (t!356650 List!49712)) )
))
(declare-datatypes ((ListLongMap!2139 0))(
  ( (ListLongMap!2140 (toList!3489 List!49712)) )
))
(declare-fun lm!1616 () ListLongMap!2139)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!38 (ListLongMap!2139 K!10950 Hashable!5145) Unit!82037)

(assert (=> b!4425918 (= lt!1625201 (lemmaExtractTailMapContainsThenExtractMapDoes!38 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4425918 false))

(declare-fun b!4425919 () Bool)

(declare-fun e!2755798 () Bool)

(declare-fun e!2755801 () Bool)

(assert (=> b!4425919 (= e!2755798 e!2755801)))

(declare-fun res!1829837 () Bool)

(assert (=> b!4425919 (=> res!1829837 e!2755801)))

(declare-datatypes ((ListMap!2733 0))(
  ( (ListMap!2734 (toList!3490 List!49711)) )
))
(declare-fun lt!1625205 () ListMap!2733)

(declare-fun lt!1625195 () ListMap!2733)

(declare-fun eq!409 (ListMap!2733 ListMap!2733) Bool)

(assert (=> b!4425919 (= res!1829837 (not (eq!409 lt!1625205 lt!1625195)))))

(declare-fun lt!1625190 () ListMap!2733)

(declare-fun addToMapMapFromBucket!388 (List!49711 ListMap!2733) ListMap!2733)

(assert (=> b!4425919 (= lt!1625195 (addToMapMapFromBucket!388 (_2!27986 (h!55275 (toList!3489 lm!1616))) lt!1625190))))

(declare-fun res!1829846 () Bool)

(assert (=> start!431828 (=> (not res!1829846) (not e!2755803))))

(declare-fun lambda!154050 () Int)

(declare-fun forall!9566 (List!49712 Int) Bool)

(assert (=> start!431828 (= res!1829846 (forall!9566 (toList!3489 lm!1616) lambda!154050))))

(assert (=> start!431828 e!2755803))

(declare-fun tp_is_empty!26249 () Bool)

(assert (=> start!431828 tp_is_empty!26249))

(declare-fun tp_is_empty!26251 () Bool)

(assert (=> start!431828 tp_is_empty!26251))

(declare-fun e!2755799 () Bool)

(assert (=> start!431828 e!2755799))

(declare-fun e!2755806 () Bool)

(declare-fun inv!65136 (ListLongMap!2139) Bool)

(assert (=> start!431828 (and (inv!65136 lm!1616) e!2755806)))

(assert (=> start!431828 true))

(declare-fun b!4425920 () Bool)

(declare-fun e!2755800 () Bool)

(assert (=> b!4425920 (= e!2755800 e!2755798)))

(declare-fun res!1829842 () Bool)

(assert (=> b!4425920 (=> res!1829842 e!2755798)))

(declare-fun lt!1625194 () tuple2!49384)

(declare-fun head!9220 (ListLongMap!2139) tuple2!49384)

(assert (=> b!4425920 (= res!1829842 (= (head!9220 lm!1616) lt!1625194))))

(declare-fun lt!1625198 () ListMap!2733)

(declare-fun lt!1625202 () ListMap!2733)

(assert (=> b!4425920 (eq!409 lt!1625198 lt!1625202)))

(declare-fun lt!1625203 () tuple2!49382)

(declare-fun +!1086 (ListMap!2733 tuple2!49382) ListMap!2733)

(assert (=> b!4425920 (= lt!1625202 (+!1086 lt!1625190 lt!1625203))))

(declare-fun newValue!93 () V!11196)

(assert (=> b!4425920 (= lt!1625203 (tuple2!49383 key!3717 newValue!93))))

(declare-fun lt!1625192 () ListLongMap!2139)

(declare-fun extractMap!812 (List!49712) ListMap!2733)

(assert (=> b!4425920 (= lt!1625190 (extractMap!812 (toList!3489 lt!1625192)))))

(declare-fun +!1087 (ListLongMap!2139 tuple2!49384) ListLongMap!2139)

(assert (=> b!4425920 (= lt!1625198 (extractMap!812 (toList!3489 (+!1087 lt!1625192 lt!1625194))))))

(declare-fun lt!1625197 () Unit!82037)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!125 (ListLongMap!2139 (_ BitVec 64) List!49711 K!10950 V!11196 Hashable!5145) Unit!82037)

(assert (=> b!4425920 (= lt!1625197 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!125 lt!1625192 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7274 (ListLongMap!2139) ListLongMap!2139)

(assert (=> b!4425920 (= lt!1625192 (tail!7274 lm!1616))))

(declare-fun lt!1625200 () Unit!82037)

(assert (=> b!4425920 (= lt!1625200 e!2755797)))

(declare-fun c!753419 () Bool)

(declare-fun contains!12092 (ListMap!2733 K!10950) Bool)

(declare-fun tail!7275 (List!49712) List!49712)

(assert (=> b!4425920 (= c!753419 (contains!12092 (extractMap!812 (tail!7275 (toList!3489 lm!1616))) key!3717))))

(declare-fun b!4425921 () Bool)

(declare-fun e!2755804 () Bool)

(declare-fun noDuplicateKeys!751 (List!49711) Bool)

(assert (=> b!4425921 (= e!2755804 (noDuplicateKeys!751 (_2!27986 (h!55275 (toList!3489 lm!1616)))))))

(assert (=> b!4425921 (eq!409 (addToMapMapFromBucket!388 (_2!27986 (h!55275 (toList!3489 lm!1616))) lt!1625202) (+!1086 lt!1625195 lt!1625203))))

(declare-fun lt!1625199 () Unit!82037)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!180 (ListMap!2733 K!10950 V!11196 List!49711) Unit!82037)

(assert (=> b!4425921 (= lt!1625199 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!180 lt!1625190 key!3717 newValue!93 (_2!27986 (h!55275 (toList!3489 lm!1616)))))))

(declare-fun lt!1625193 () Bool)

(declare-fun e!2755805 () Bool)

(declare-fun b!4425922 () Bool)

(assert (=> b!4425922 (= e!2755805 (and (not lt!1625193) (= newBucket!194 (Cons!49587 (tuple2!49383 key!3717 newValue!93) Nil!49587))))))

(declare-fun b!4425923 () Bool)

(declare-fun res!1829838 () Bool)

(assert (=> b!4425923 (=> (not res!1829838) (not e!2755803))))

(declare-fun allKeysSameHashInMap!857 (ListLongMap!2139 Hashable!5145) Bool)

(assert (=> b!4425923 (= res!1829838 (allKeysSameHashInMap!857 lm!1616 hashF!1220))))

(declare-fun b!4425924 () Bool)

(declare-fun tp!1333223 () Bool)

(assert (=> b!4425924 (= e!2755806 tp!1333223)))

(declare-fun b!4425925 () Bool)

(assert (=> b!4425925 (= e!2755801 e!2755804)))

(declare-fun res!1829841 () Bool)

(assert (=> b!4425925 (=> res!1829841 e!2755804)))

(declare-fun containsKey!1118 (List!49711 K!10950) Bool)

(assert (=> b!4425925 (= res!1829841 (containsKey!1118 (_2!27986 (h!55275 (toList!3489 lm!1616))) key!3717))))

(declare-fun apply!11603 (ListLongMap!2139 (_ BitVec 64)) List!49711)

(assert (=> b!4425925 (not (containsKey!1118 (apply!11603 lm!1616 (_1!27986 (h!55275 (toList!3489 lm!1616)))) key!3717))))

(declare-fun lt!1625204 () Unit!82037)

(declare-fun lemmaNotSameHashThenCannotContainKey!130 (ListLongMap!2139 K!10950 (_ BitVec 64) Hashable!5145) Unit!82037)

(assert (=> b!4425925 (= lt!1625204 (lemmaNotSameHashThenCannotContainKey!130 lm!1616 key!3717 (_1!27986 (h!55275 (toList!3489 lm!1616))) hashF!1220))))

(declare-fun b!4425926 () Bool)

(declare-fun e!2755795 () Bool)

(assert (=> b!4425926 (= e!2755795 (= newBucket!194 (Cons!49587 (tuple2!49383 key!3717 newValue!93) (apply!11603 lm!1616 hash!366))))))

(declare-fun b!4425927 () Bool)

(declare-fun res!1829843 () Bool)

(assert (=> b!4425927 (=> (not res!1829843) (not e!2755803))))

(declare-fun hash!2130 (Hashable!5145 K!10950) (_ BitVec 64))

(assert (=> b!4425927 (= res!1829843 (= (hash!2130 hashF!1220 key!3717) hash!366))))

(declare-fun b!4425928 () Bool)

(declare-fun Unit!82040 () Unit!82037)

(assert (=> b!4425928 (= e!2755797 Unit!82040)))

(declare-fun b!4425929 () Bool)

(declare-fun res!1829845 () Bool)

(declare-fun e!2755802 () Bool)

(assert (=> b!4425929 (=> (not res!1829845) (not e!2755802))))

(assert (=> b!4425929 (= res!1829845 (forall!9566 (toList!3489 lm!1616) lambda!154050))))

(declare-fun b!4425930 () Bool)

(declare-fun e!2755796 () Bool)

(assert (=> b!4425930 (= e!2755803 e!2755796)))

(declare-fun res!1829840 () Bool)

(assert (=> b!4425930 (=> (not res!1829840) (not e!2755796))))

(assert (=> b!4425930 (= res!1829840 (not (contains!12092 lt!1625205 key!3717)))))

(assert (=> b!4425930 (= lt!1625205 (extractMap!812 (toList!3489 lm!1616)))))

(declare-fun b!4425931 () Bool)

(assert (=> b!4425931 (= e!2755802 (not e!2755800))))

(declare-fun res!1829851 () Bool)

(assert (=> b!4425931 (=> res!1829851 e!2755800)))

(declare-fun lt!1625196 () ListLongMap!2139)

(assert (=> b!4425931 (= res!1829851 (not (forall!9566 (toList!3489 lt!1625196) lambda!154050)))))

(assert (=> b!4425931 (forall!9566 (toList!3489 lt!1625196) lambda!154050)))

(assert (=> b!4425931 (= lt!1625196 (+!1087 lm!1616 lt!1625194))))

(assert (=> b!4425931 (= lt!1625194 (tuple2!49385 hash!366 newBucket!194))))

(declare-fun lt!1625191 () Unit!82037)

(declare-fun addValidProp!395 (ListLongMap!2139 Int (_ BitVec 64) List!49711) Unit!82037)

(assert (=> b!4425931 (= lt!1625191 (addValidProp!395 lm!1616 lambda!154050 hash!366 newBucket!194))))

(declare-fun b!4425932 () Bool)

(declare-fun res!1829839 () Bool)

(assert (=> b!4425932 (=> res!1829839 e!2755800)))

(get-info :version)

(assert (=> b!4425932 (= res!1829839 (or (and ((_ is Cons!49588) (toList!3489 lm!1616)) (= (_1!27986 (h!55275 (toList!3489 lm!1616))) hash!366)) (not ((_ is Cons!49588) (toList!3489 lm!1616))) (= (_1!27986 (h!55275 (toList!3489 lm!1616))) hash!366)))))

(declare-fun b!4425933 () Bool)

(assert (=> b!4425933 (= e!2755796 e!2755802)))

(declare-fun res!1829844 () Bool)

(assert (=> b!4425933 (=> (not res!1829844) (not e!2755802))))

(assert (=> b!4425933 (= res!1829844 e!2755805)))

(declare-fun res!1829847 () Bool)

(assert (=> b!4425933 (=> res!1829847 e!2755805)))

(assert (=> b!4425933 (= res!1829847 e!2755795)))

(declare-fun res!1829850 () Bool)

(assert (=> b!4425933 (=> (not res!1829850) (not e!2755795))))

(assert (=> b!4425933 (= res!1829850 lt!1625193)))

(declare-fun contains!12093 (ListLongMap!2139 (_ BitVec 64)) Bool)

(assert (=> b!4425933 (= lt!1625193 (contains!12093 lm!1616 hash!366))))

(declare-fun b!4425934 () Bool)

(declare-fun res!1829849 () Bool)

(assert (=> b!4425934 (=> (not res!1829849) (not e!2755802))))

(assert (=> b!4425934 (= res!1829849 (noDuplicateKeys!751 newBucket!194))))

(declare-fun tp!1333224 () Bool)

(declare-fun b!4425935 () Bool)

(assert (=> b!4425935 (= e!2755799 (and tp_is_empty!26251 tp_is_empty!26249 tp!1333224))))

(assert (= (and start!431828 res!1829846) b!4425923))

(assert (= (and b!4425923 res!1829838) b!4425927))

(assert (= (and b!4425927 res!1829843) b!4425917))

(assert (= (and b!4425917 res!1829848) b!4425930))

(assert (= (and b!4425930 res!1829840) b!4425933))

(assert (= (and b!4425933 res!1829850) b!4425926))

(assert (= (and b!4425933 (not res!1829847)) b!4425922))

(assert (= (and b!4425933 res!1829844) b!4425934))

(assert (= (and b!4425934 res!1829849) b!4425929))

(assert (= (and b!4425929 res!1829845) b!4425931))

(assert (= (and b!4425931 (not res!1829851)) b!4425932))

(assert (= (and b!4425932 (not res!1829839)) b!4425920))

(assert (= (and b!4425920 c!753419) b!4425918))

(assert (= (and b!4425920 (not c!753419)) b!4425928))

(assert (= (and b!4425920 (not res!1829842)) b!4425919))

(assert (= (and b!4425919 (not res!1829837)) b!4425925))

(assert (= (and b!4425925 (not res!1829841)) b!4425921))

(assert (= (and start!431828 ((_ is Cons!49587) newBucket!194)) b!4425935))

(assert (= start!431828 b!4425924))

(declare-fun m!5106873 () Bool)

(assert (=> b!4425919 m!5106873))

(declare-fun m!5106875 () Bool)

(assert (=> b!4425919 m!5106875))

(declare-fun m!5106877 () Bool)

(assert (=> b!4425918 m!5106877))

(declare-fun m!5106879 () Bool)

(assert (=> start!431828 m!5106879))

(declare-fun m!5106881 () Bool)

(assert (=> start!431828 m!5106881))

(declare-fun m!5106883 () Bool)

(assert (=> b!4425917 m!5106883))

(declare-fun m!5106885 () Bool)

(assert (=> b!4425934 m!5106885))

(declare-fun m!5106887 () Bool)

(assert (=> b!4425920 m!5106887))

(declare-fun m!5106889 () Bool)

(assert (=> b!4425920 m!5106889))

(declare-fun m!5106891 () Bool)

(assert (=> b!4425920 m!5106891))

(declare-fun m!5106893 () Bool)

(assert (=> b!4425920 m!5106893))

(declare-fun m!5106895 () Bool)

(assert (=> b!4425920 m!5106895))

(declare-fun m!5106897 () Bool)

(assert (=> b!4425920 m!5106897))

(assert (=> b!4425920 m!5106887))

(declare-fun m!5106899 () Bool)

(assert (=> b!4425920 m!5106899))

(declare-fun m!5106901 () Bool)

(assert (=> b!4425920 m!5106901))

(assert (=> b!4425920 m!5106889))

(declare-fun m!5106903 () Bool)

(assert (=> b!4425920 m!5106903))

(declare-fun m!5106905 () Bool)

(assert (=> b!4425920 m!5106905))

(declare-fun m!5106907 () Bool)

(assert (=> b!4425920 m!5106907))

(declare-fun m!5106909 () Bool)

(assert (=> b!4425925 m!5106909))

(declare-fun m!5106911 () Bool)

(assert (=> b!4425925 m!5106911))

(assert (=> b!4425925 m!5106911))

(declare-fun m!5106913 () Bool)

(assert (=> b!4425925 m!5106913))

(declare-fun m!5106915 () Bool)

(assert (=> b!4425925 m!5106915))

(declare-fun m!5106917 () Bool)

(assert (=> b!4425930 m!5106917))

(declare-fun m!5106919 () Bool)

(assert (=> b!4425930 m!5106919))

(declare-fun m!5106921 () Bool)

(assert (=> b!4425931 m!5106921))

(assert (=> b!4425931 m!5106921))

(declare-fun m!5106923 () Bool)

(assert (=> b!4425931 m!5106923))

(declare-fun m!5106925 () Bool)

(assert (=> b!4425931 m!5106925))

(declare-fun m!5106927 () Bool)

(assert (=> b!4425926 m!5106927))

(declare-fun m!5106929 () Bool)

(assert (=> b!4425923 m!5106929))

(declare-fun m!5106931 () Bool)

(assert (=> b!4425933 m!5106931))

(declare-fun m!5106933 () Bool)

(assert (=> b!4425921 m!5106933))

(assert (=> b!4425921 m!5106933))

(declare-fun m!5106935 () Bool)

(assert (=> b!4425921 m!5106935))

(declare-fun m!5106937 () Bool)

(assert (=> b!4425921 m!5106937))

(assert (=> b!4425921 m!5106935))

(declare-fun m!5106939 () Bool)

(assert (=> b!4425921 m!5106939))

(declare-fun m!5106941 () Bool)

(assert (=> b!4425921 m!5106941))

(assert (=> b!4425929 m!5106879))

(declare-fun m!5106943 () Bool)

(assert (=> b!4425927 m!5106943))

(check-sat (not b!4425918) tp_is_empty!26249 (not b!4425931) (not b!4425927) (not b!4425929) (not b!4425926) (not start!431828) (not b!4425923) tp_is_empty!26251 (not b!4425921) (not b!4425917) (not b!4425933) (not b!4425920) (not b!4425924) (not b!4425925) (not b!4425934) (not b!4425935) (not b!4425930) (not b!4425919))
(check-sat)
(get-model)

(declare-fun b!4425970 () Bool)

(declare-fun e!2755832 () Unit!82037)

(declare-fun Unit!82055 () Unit!82037)

(assert (=> b!4425970 (= e!2755832 Unit!82055)))

(declare-fun b!4425972 () Bool)

(declare-fun e!2755836 () Unit!82037)

(assert (=> b!4425972 (= e!2755836 e!2755832)))

(declare-fun c!753427 () Bool)

(declare-fun call!307965 () Bool)

(assert (=> b!4425972 (= c!753427 call!307965)))

(declare-fun b!4425973 () Bool)

(declare-fun e!2755831 () Bool)

(declare-datatypes ((List!49714 0))(
  ( (Nil!49590) (Cons!49590 (h!55279 K!10950) (t!356652 List!49714)) )
))
(declare-fun contains!12096 (List!49714 K!10950) Bool)

(declare-fun keys!16932 (ListMap!2733) List!49714)

(assert (=> b!4425973 (= e!2755831 (not (contains!12096 (keys!16932 lt!1625205) key!3717)))))

(declare-fun b!4425974 () Bool)

(declare-fun e!2755835 () Bool)

(declare-fun e!2755833 () Bool)

(assert (=> b!4425974 (= e!2755835 e!2755833)))

(declare-fun res!1829872 () Bool)

(assert (=> b!4425974 (=> (not res!1829872) (not e!2755833))))

(declare-datatypes ((Option!10729 0))(
  ( (None!10728) (Some!10728 (v!43916 V!11196)) )
))
(declare-fun isDefined!8021 (Option!10729) Bool)

(declare-fun getValueByKey!715 (List!49711 K!10950) Option!10729)

(assert (=> b!4425974 (= res!1829872 (isDefined!8021 (getValueByKey!715 (toList!3490 lt!1625205) key!3717)))))

(declare-fun b!4425975 () Bool)

(declare-fun e!2755834 () List!49714)

(declare-fun getKeysList!254 (List!49711) List!49714)

(assert (=> b!4425975 (= e!2755834 (getKeysList!254 (toList!3490 lt!1625205)))))

(declare-fun b!4425976 () Bool)

(declare-fun lt!1625226 () Unit!82037)

(assert (=> b!4425976 (= e!2755836 lt!1625226)))

(declare-fun lt!1625228 () Unit!82037)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!624 (List!49711 K!10950) Unit!82037)

(assert (=> b!4425976 (= lt!1625228 (lemmaContainsKeyImpliesGetValueByKeyDefined!624 (toList!3490 lt!1625205) key!3717))))

(assert (=> b!4425976 (isDefined!8021 (getValueByKey!715 (toList!3490 lt!1625205) key!3717))))

(declare-fun lt!1625229 () Unit!82037)

(assert (=> b!4425976 (= lt!1625229 lt!1625228)))

(declare-fun lemmaInListThenGetKeysListContains!251 (List!49711 K!10950) Unit!82037)

(assert (=> b!4425976 (= lt!1625226 (lemmaInListThenGetKeysListContains!251 (toList!3490 lt!1625205) key!3717))))

(assert (=> b!4425976 call!307965))

(declare-fun bm!307960 () Bool)

(assert (=> bm!307960 (= call!307965 (contains!12096 e!2755834 key!3717))))

(declare-fun c!753426 () Bool)

(declare-fun c!753428 () Bool)

(assert (=> bm!307960 (= c!753426 c!753428)))

(declare-fun b!4425971 () Bool)

(assert (=> b!4425971 (= e!2755834 (keys!16932 lt!1625205))))

(declare-fun d!1341772 () Bool)

(assert (=> d!1341772 e!2755835))

(declare-fun res!1829870 () Bool)

(assert (=> d!1341772 (=> res!1829870 e!2755835)))

(assert (=> d!1341772 (= res!1829870 e!2755831)))

(declare-fun res!1829871 () Bool)

(assert (=> d!1341772 (=> (not res!1829871) (not e!2755831))))

(declare-fun lt!1625223 () Bool)

(assert (=> d!1341772 (= res!1829871 (not lt!1625223))))

(declare-fun lt!1625225 () Bool)

(assert (=> d!1341772 (= lt!1625223 lt!1625225)))

(declare-fun lt!1625227 () Unit!82037)

(assert (=> d!1341772 (= lt!1625227 e!2755836)))

(assert (=> d!1341772 (= c!753428 lt!1625225)))

(declare-fun containsKey!1121 (List!49711 K!10950) Bool)

(assert (=> d!1341772 (= lt!1625225 (containsKey!1121 (toList!3490 lt!1625205) key!3717))))

(assert (=> d!1341772 (= (contains!12092 lt!1625205 key!3717) lt!1625223)))

(declare-fun b!4425977 () Bool)

(assert (=> b!4425977 (= e!2755833 (contains!12096 (keys!16932 lt!1625205) key!3717))))

(declare-fun b!4425978 () Bool)

(assert (=> b!4425978 false))

(declare-fun lt!1625222 () Unit!82037)

(declare-fun lt!1625224 () Unit!82037)

(assert (=> b!4425978 (= lt!1625222 lt!1625224)))

(assert (=> b!4425978 (containsKey!1121 (toList!3490 lt!1625205) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!252 (List!49711 K!10950) Unit!82037)

(assert (=> b!4425978 (= lt!1625224 (lemmaInGetKeysListThenContainsKey!252 (toList!3490 lt!1625205) key!3717))))

(declare-fun Unit!82056 () Unit!82037)

(assert (=> b!4425978 (= e!2755832 Unit!82056)))

(assert (= (and d!1341772 c!753428) b!4425976))

(assert (= (and d!1341772 (not c!753428)) b!4425972))

(assert (= (and b!4425972 c!753427) b!4425978))

(assert (= (and b!4425972 (not c!753427)) b!4425970))

(assert (= (or b!4425976 b!4425972) bm!307960))

(assert (= (and bm!307960 c!753426) b!4425975))

(assert (= (and bm!307960 (not c!753426)) b!4425971))

(assert (= (and d!1341772 res!1829871) b!4425973))

(assert (= (and d!1341772 (not res!1829870)) b!4425974))

(assert (= (and b!4425974 res!1829872) b!4425977))

(declare-fun m!5106961 () Bool)

(assert (=> b!4425977 m!5106961))

(assert (=> b!4425977 m!5106961))

(declare-fun m!5106963 () Bool)

(assert (=> b!4425977 m!5106963))

(declare-fun m!5106965 () Bool)

(assert (=> d!1341772 m!5106965))

(assert (=> b!4425973 m!5106961))

(assert (=> b!4425973 m!5106961))

(assert (=> b!4425973 m!5106963))

(declare-fun m!5106967 () Bool)

(assert (=> bm!307960 m!5106967))

(declare-fun m!5106969 () Bool)

(assert (=> b!4425975 m!5106969))

(assert (=> b!4425971 m!5106961))

(declare-fun m!5106971 () Bool)

(assert (=> b!4425976 m!5106971))

(declare-fun m!5106973 () Bool)

(assert (=> b!4425976 m!5106973))

(assert (=> b!4425976 m!5106973))

(declare-fun m!5106975 () Bool)

(assert (=> b!4425976 m!5106975))

(declare-fun m!5106977 () Bool)

(assert (=> b!4425976 m!5106977))

(assert (=> b!4425974 m!5106973))

(assert (=> b!4425974 m!5106973))

(assert (=> b!4425974 m!5106975))

(assert (=> b!4425978 m!5106965))

(declare-fun m!5106979 () Bool)

(assert (=> b!4425978 m!5106979))

(assert (=> b!4425930 d!1341772))

(declare-fun bs!757673 () Bool)

(declare-fun d!1341786 () Bool)

(assert (= bs!757673 (and d!1341786 start!431828)))

(declare-fun lambda!154056 () Int)

(assert (=> bs!757673 (= lambda!154056 lambda!154050)))

(declare-fun lt!1625232 () ListMap!2733)

(declare-fun invariantList!807 (List!49711) Bool)

(assert (=> d!1341786 (invariantList!807 (toList!3490 lt!1625232))))

(declare-fun e!2755839 () ListMap!2733)

(assert (=> d!1341786 (= lt!1625232 e!2755839)))

(declare-fun c!753431 () Bool)

(assert (=> d!1341786 (= c!753431 ((_ is Cons!49588) (toList!3489 lm!1616)))))

(assert (=> d!1341786 (forall!9566 (toList!3489 lm!1616) lambda!154056)))

(assert (=> d!1341786 (= (extractMap!812 (toList!3489 lm!1616)) lt!1625232)))

(declare-fun b!4425983 () Bool)

(assert (=> b!4425983 (= e!2755839 (addToMapMapFromBucket!388 (_2!27986 (h!55275 (toList!3489 lm!1616))) (extractMap!812 (t!356650 (toList!3489 lm!1616)))))))

(declare-fun b!4425984 () Bool)

(assert (=> b!4425984 (= e!2755839 (ListMap!2734 Nil!49587))))

(assert (= (and d!1341786 c!753431) b!4425983))

(assert (= (and d!1341786 (not c!753431)) b!4425984))

(declare-fun m!5106981 () Bool)

(assert (=> d!1341786 m!5106981))

(declare-fun m!5106983 () Bool)

(assert (=> d!1341786 m!5106983))

(declare-fun m!5106985 () Bool)

(assert (=> b!4425983 m!5106985))

(assert (=> b!4425983 m!5106985))

(declare-fun m!5106987 () Bool)

(assert (=> b!4425983 m!5106987))

(assert (=> b!4425930 d!1341786))

(declare-fun d!1341788 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7960 (List!49711) (InoxSet tuple2!49382))

(assert (=> d!1341788 (= (eq!409 lt!1625198 lt!1625202) (= (content!7960 (toList!3490 lt!1625198)) (content!7960 (toList!3490 lt!1625202))))))

(declare-fun bs!757674 () Bool)

(assert (= bs!757674 d!1341788))

(declare-fun m!5106989 () Bool)

(assert (=> bs!757674 m!5106989))

(declare-fun m!5106991 () Bool)

(assert (=> bs!757674 m!5106991))

(assert (=> b!4425920 d!1341788))

(declare-fun d!1341790 () Bool)

(declare-fun e!2755842 () Bool)

(assert (=> d!1341790 e!2755842))

(declare-fun res!1829878 () Bool)

(assert (=> d!1341790 (=> (not res!1829878) (not e!2755842))))

(declare-fun lt!1625241 () ListLongMap!2139)

(assert (=> d!1341790 (= res!1829878 (contains!12093 lt!1625241 (_1!27986 lt!1625194)))))

(declare-fun lt!1625242 () List!49712)

(assert (=> d!1341790 (= lt!1625241 (ListLongMap!2140 lt!1625242))))

(declare-fun lt!1625244 () Unit!82037)

(declare-fun lt!1625243 () Unit!82037)

(assert (=> d!1341790 (= lt!1625244 lt!1625243)))

(declare-datatypes ((Option!10730 0))(
  ( (None!10729) (Some!10729 (v!43917 List!49711)) )
))
(declare-fun getValueByKey!716 (List!49712 (_ BitVec 64)) Option!10730)

(assert (=> d!1341790 (= (getValueByKey!716 lt!1625242 (_1!27986 lt!1625194)) (Some!10729 (_2!27986 lt!1625194)))))

(declare-fun lemmaContainsTupThenGetReturnValue!450 (List!49712 (_ BitVec 64) List!49711) Unit!82037)

(assert (=> d!1341790 (= lt!1625243 (lemmaContainsTupThenGetReturnValue!450 lt!1625242 (_1!27986 lt!1625194) (_2!27986 lt!1625194)))))

(declare-fun insertStrictlySorted!262 (List!49712 (_ BitVec 64) List!49711) List!49712)

(assert (=> d!1341790 (= lt!1625242 (insertStrictlySorted!262 (toList!3489 lt!1625192) (_1!27986 lt!1625194) (_2!27986 lt!1625194)))))

(assert (=> d!1341790 (= (+!1087 lt!1625192 lt!1625194) lt!1625241)))

(declare-fun b!4425989 () Bool)

(declare-fun res!1829877 () Bool)

(assert (=> b!4425989 (=> (not res!1829877) (not e!2755842))))

(assert (=> b!4425989 (= res!1829877 (= (getValueByKey!716 (toList!3489 lt!1625241) (_1!27986 lt!1625194)) (Some!10729 (_2!27986 lt!1625194))))))

(declare-fun b!4425990 () Bool)

(declare-fun contains!12098 (List!49712 tuple2!49384) Bool)

(assert (=> b!4425990 (= e!2755842 (contains!12098 (toList!3489 lt!1625241) lt!1625194))))

(assert (= (and d!1341790 res!1829878) b!4425989))

(assert (= (and b!4425989 res!1829877) b!4425990))

(declare-fun m!5106993 () Bool)

(assert (=> d!1341790 m!5106993))

(declare-fun m!5106995 () Bool)

(assert (=> d!1341790 m!5106995))

(declare-fun m!5106997 () Bool)

(assert (=> d!1341790 m!5106997))

(declare-fun m!5106999 () Bool)

(assert (=> d!1341790 m!5106999))

(declare-fun m!5107001 () Bool)

(assert (=> b!4425989 m!5107001))

(declare-fun m!5107003 () Bool)

(assert (=> b!4425990 m!5107003))

(assert (=> b!4425920 d!1341790))

(declare-fun bs!757675 () Bool)

(declare-fun d!1341792 () Bool)

(assert (= bs!757675 (and d!1341792 start!431828)))

(declare-fun lambda!154057 () Int)

(assert (=> bs!757675 (= lambda!154057 lambda!154050)))

(declare-fun bs!757676 () Bool)

(assert (= bs!757676 (and d!1341792 d!1341786)))

(assert (=> bs!757676 (= lambda!154057 lambda!154056)))

(declare-fun lt!1625245 () ListMap!2733)

(assert (=> d!1341792 (invariantList!807 (toList!3490 lt!1625245))))

(declare-fun e!2755843 () ListMap!2733)

(assert (=> d!1341792 (= lt!1625245 e!2755843)))

(declare-fun c!753432 () Bool)

(assert (=> d!1341792 (= c!753432 ((_ is Cons!49588) (toList!3489 (+!1087 lt!1625192 lt!1625194))))))

(assert (=> d!1341792 (forall!9566 (toList!3489 (+!1087 lt!1625192 lt!1625194)) lambda!154057)))

(assert (=> d!1341792 (= (extractMap!812 (toList!3489 (+!1087 lt!1625192 lt!1625194))) lt!1625245)))

(declare-fun b!4425991 () Bool)

(assert (=> b!4425991 (= e!2755843 (addToMapMapFromBucket!388 (_2!27986 (h!55275 (toList!3489 (+!1087 lt!1625192 lt!1625194)))) (extractMap!812 (t!356650 (toList!3489 (+!1087 lt!1625192 lt!1625194))))))))

(declare-fun b!4425992 () Bool)

(assert (=> b!4425992 (= e!2755843 (ListMap!2734 Nil!49587))))

(assert (= (and d!1341792 c!753432) b!4425991))

(assert (= (and d!1341792 (not c!753432)) b!4425992))

(declare-fun m!5107005 () Bool)

(assert (=> d!1341792 m!5107005))

(declare-fun m!5107007 () Bool)

(assert (=> d!1341792 m!5107007))

(declare-fun m!5107009 () Bool)

(assert (=> b!4425991 m!5107009))

(assert (=> b!4425991 m!5107009))

(declare-fun m!5107011 () Bool)

(assert (=> b!4425991 m!5107011))

(assert (=> b!4425920 d!1341792))

(declare-fun bs!757677 () Bool)

(declare-fun d!1341794 () Bool)

(assert (= bs!757677 (and d!1341794 start!431828)))

(declare-fun lambda!154060 () Int)

(assert (=> bs!757677 (= lambda!154060 lambda!154050)))

(declare-fun bs!757678 () Bool)

(assert (= bs!757678 (and d!1341794 d!1341786)))

(assert (=> bs!757678 (= lambda!154060 lambda!154056)))

(declare-fun bs!757679 () Bool)

(assert (= bs!757679 (and d!1341794 d!1341792)))

(assert (=> bs!757679 (= lambda!154060 lambda!154057)))

(declare-fun lt!1625254 () ListMap!2733)

(assert (=> d!1341794 (invariantList!807 (toList!3490 lt!1625254))))

(declare-fun e!2755846 () ListMap!2733)

(assert (=> d!1341794 (= lt!1625254 e!2755846)))

(declare-fun c!753435 () Bool)

(assert (=> d!1341794 (= c!753435 ((_ is Cons!49588) (toList!3489 lt!1625192)))))

(assert (=> d!1341794 (forall!9566 (toList!3489 lt!1625192) lambda!154060)))

(assert (=> d!1341794 (= (extractMap!812 (toList!3489 lt!1625192)) lt!1625254)))

(declare-fun b!4425997 () Bool)

(assert (=> b!4425997 (= e!2755846 (addToMapMapFromBucket!388 (_2!27986 (h!55275 (toList!3489 lt!1625192))) (extractMap!812 (t!356650 (toList!3489 lt!1625192)))))))

(declare-fun b!4425998 () Bool)

(assert (=> b!4425998 (= e!2755846 (ListMap!2734 Nil!49587))))

(assert (= (and d!1341794 c!753435) b!4425997))

(assert (= (and d!1341794 (not c!753435)) b!4425998))

(declare-fun m!5107013 () Bool)

(assert (=> d!1341794 m!5107013))

(declare-fun m!5107015 () Bool)

(assert (=> d!1341794 m!5107015))

(declare-fun m!5107017 () Bool)

(assert (=> b!4425997 m!5107017))

(assert (=> b!4425997 m!5107017))

(declare-fun m!5107019 () Bool)

(assert (=> b!4425997 m!5107019))

(assert (=> b!4425920 d!1341794))

(declare-fun d!1341796 () Bool)

(declare-fun e!2755856 () Bool)

(assert (=> d!1341796 e!2755856))

(declare-fun res!1829893 () Bool)

(assert (=> d!1341796 (=> (not res!1829893) (not e!2755856))))

(declare-fun lt!1625321 () ListMap!2733)

(assert (=> d!1341796 (= res!1829893 (contains!12092 lt!1625321 (_1!27985 lt!1625203)))))

(declare-fun lt!1625320 () List!49711)

(assert (=> d!1341796 (= lt!1625321 (ListMap!2734 lt!1625320))))

(declare-fun lt!1625319 () Unit!82037)

(declare-fun lt!1625318 () Unit!82037)

(assert (=> d!1341796 (= lt!1625319 lt!1625318)))

(assert (=> d!1341796 (= (getValueByKey!715 lt!1625320 (_1!27985 lt!1625203)) (Some!10728 (_2!27985 lt!1625203)))))

(declare-fun lemmaContainsTupThenGetReturnValue!451 (List!49711 K!10950 V!11196) Unit!82037)

(assert (=> d!1341796 (= lt!1625318 (lemmaContainsTupThenGetReturnValue!451 lt!1625320 (_1!27985 lt!1625203) (_2!27985 lt!1625203)))))

(declare-fun insertNoDuplicatedKeys!197 (List!49711 K!10950 V!11196) List!49711)

(assert (=> d!1341796 (= lt!1625320 (insertNoDuplicatedKeys!197 (toList!3490 lt!1625190) (_1!27985 lt!1625203) (_2!27985 lt!1625203)))))

(assert (=> d!1341796 (= (+!1086 lt!1625190 lt!1625203) lt!1625321)))

(declare-fun b!4426016 () Bool)

(declare-fun res!1829892 () Bool)

(assert (=> b!4426016 (=> (not res!1829892) (not e!2755856))))

(assert (=> b!4426016 (= res!1829892 (= (getValueByKey!715 (toList!3490 lt!1625321) (_1!27985 lt!1625203)) (Some!10728 (_2!27985 lt!1625203))))))

(declare-fun b!4426017 () Bool)

(declare-fun contains!12099 (List!49711 tuple2!49382) Bool)

(assert (=> b!4426017 (= e!2755856 (contains!12099 (toList!3490 lt!1625321) lt!1625203))))

(assert (= (and d!1341796 res!1829893) b!4426016))

(assert (= (and b!4426016 res!1829892) b!4426017))

(declare-fun m!5107021 () Bool)

(assert (=> d!1341796 m!5107021))

(declare-fun m!5107023 () Bool)

(assert (=> d!1341796 m!5107023))

(declare-fun m!5107025 () Bool)

(assert (=> d!1341796 m!5107025))

(declare-fun m!5107027 () Bool)

(assert (=> d!1341796 m!5107027))

(declare-fun m!5107029 () Bool)

(assert (=> b!4426016 m!5107029))

(declare-fun m!5107031 () Bool)

(assert (=> b!4426017 m!5107031))

(assert (=> b!4425920 d!1341796))

(declare-fun bs!757687 () Bool)

(declare-fun d!1341798 () Bool)

(assert (= bs!757687 (and d!1341798 start!431828)))

(declare-fun lambda!154093 () Int)

(assert (=> bs!757687 (= lambda!154093 lambda!154050)))

(declare-fun bs!757688 () Bool)

(assert (= bs!757688 (and d!1341798 d!1341786)))

(assert (=> bs!757688 (= lambda!154093 lambda!154056)))

(declare-fun bs!757689 () Bool)

(assert (= bs!757689 (and d!1341798 d!1341792)))

(assert (=> bs!757689 (= lambda!154093 lambda!154057)))

(declare-fun bs!757690 () Bool)

(assert (= bs!757690 (and d!1341798 d!1341794)))

(assert (=> bs!757690 (= lambda!154093 lambda!154060)))

(assert (=> d!1341798 (eq!409 (extractMap!812 (toList!3489 (+!1087 lt!1625192 (tuple2!49385 hash!366 newBucket!194)))) (+!1086 (extractMap!812 (toList!3489 lt!1625192)) (tuple2!49383 key!3717 newValue!93)))))

(declare-fun lt!1625348 () Unit!82037)

(declare-fun choose!27954 (ListLongMap!2139 (_ BitVec 64) List!49711 K!10950 V!11196 Hashable!5145) Unit!82037)

(assert (=> d!1341798 (= lt!1625348 (choose!27954 lt!1625192 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1341798 (forall!9566 (toList!3489 lt!1625192) lambda!154093)))

(assert (=> d!1341798 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!125 lt!1625192 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1625348)))

(declare-fun bs!757691 () Bool)

(assert (= bs!757691 d!1341798))

(declare-fun m!5107091 () Bool)

(assert (=> bs!757691 m!5107091))

(assert (=> bs!757691 m!5106905))

(declare-fun m!5107093 () Bool)

(assert (=> bs!757691 m!5107093))

(declare-fun m!5107095 () Bool)

(assert (=> bs!757691 m!5107095))

(declare-fun m!5107097 () Bool)

(assert (=> bs!757691 m!5107097))

(assert (=> bs!757691 m!5106905))

(assert (=> bs!757691 m!5107095))

(declare-fun m!5107099 () Bool)

(assert (=> bs!757691 m!5107099))

(assert (=> bs!757691 m!5107093))

(declare-fun m!5107101 () Bool)

(assert (=> bs!757691 m!5107101))

(assert (=> b!4425920 d!1341798))

(declare-fun d!1341806 () Bool)

(declare-fun head!9222 (List!49712) tuple2!49384)

(assert (=> d!1341806 (= (head!9220 lm!1616) (head!9222 (toList!3489 lm!1616)))))

(declare-fun bs!757692 () Bool)

(assert (= bs!757692 d!1341806))

(declare-fun m!5107103 () Bool)

(assert (=> bs!757692 m!5107103))

(assert (=> b!4425920 d!1341806))

(declare-fun d!1341808 () Bool)

(assert (=> d!1341808 (= (tail!7274 lm!1616) (ListLongMap!2140 (tail!7275 (toList!3489 lm!1616))))))

(declare-fun bs!757693 () Bool)

(assert (= bs!757693 d!1341808))

(assert (=> bs!757693 m!5106887))

(assert (=> b!4425920 d!1341808))

(declare-fun bs!757694 () Bool)

(declare-fun d!1341810 () Bool)

(assert (= bs!757694 (and d!1341810 d!1341798)))

(declare-fun lambda!154094 () Int)

(assert (=> bs!757694 (= lambda!154094 lambda!154093)))

(declare-fun bs!757695 () Bool)

(assert (= bs!757695 (and d!1341810 start!431828)))

(assert (=> bs!757695 (= lambda!154094 lambda!154050)))

(declare-fun bs!757696 () Bool)

(assert (= bs!757696 (and d!1341810 d!1341794)))

(assert (=> bs!757696 (= lambda!154094 lambda!154060)))

(declare-fun bs!757697 () Bool)

(assert (= bs!757697 (and d!1341810 d!1341786)))

(assert (=> bs!757697 (= lambda!154094 lambda!154056)))

(declare-fun bs!757698 () Bool)

(assert (= bs!757698 (and d!1341810 d!1341792)))

(assert (=> bs!757698 (= lambda!154094 lambda!154057)))

(declare-fun lt!1625349 () ListMap!2733)

(assert (=> d!1341810 (invariantList!807 (toList!3490 lt!1625349))))

(declare-fun e!2755875 () ListMap!2733)

(assert (=> d!1341810 (= lt!1625349 e!2755875)))

(declare-fun c!753446 () Bool)

(assert (=> d!1341810 (= c!753446 ((_ is Cons!49588) (tail!7275 (toList!3489 lm!1616))))))

(assert (=> d!1341810 (forall!9566 (tail!7275 (toList!3489 lm!1616)) lambda!154094)))

(assert (=> d!1341810 (= (extractMap!812 (tail!7275 (toList!3489 lm!1616))) lt!1625349)))

(declare-fun b!4426045 () Bool)

(assert (=> b!4426045 (= e!2755875 (addToMapMapFromBucket!388 (_2!27986 (h!55275 (tail!7275 (toList!3489 lm!1616)))) (extractMap!812 (t!356650 (tail!7275 (toList!3489 lm!1616))))))))

(declare-fun b!4426046 () Bool)

(assert (=> b!4426046 (= e!2755875 (ListMap!2734 Nil!49587))))

(assert (= (and d!1341810 c!753446) b!4426045))

(assert (= (and d!1341810 (not c!753446)) b!4426046))

(declare-fun m!5107105 () Bool)

(assert (=> d!1341810 m!5107105))

(assert (=> d!1341810 m!5106887))

(declare-fun m!5107107 () Bool)

(assert (=> d!1341810 m!5107107))

(declare-fun m!5107109 () Bool)

(assert (=> b!4426045 m!5107109))

(assert (=> b!4426045 m!5107109))

(declare-fun m!5107111 () Bool)

(assert (=> b!4426045 m!5107111))

(assert (=> b!4425920 d!1341810))

(declare-fun d!1341812 () Bool)

(assert (=> d!1341812 (= (tail!7275 (toList!3489 lm!1616)) (t!356650 (toList!3489 lm!1616)))))

(assert (=> b!4425920 d!1341812))

(declare-fun b!4426053 () Bool)

(declare-fun e!2755880 () Unit!82037)

(declare-fun Unit!82059 () Unit!82037)

(assert (=> b!4426053 (= e!2755880 Unit!82059)))

(declare-fun b!4426055 () Bool)

(declare-fun e!2755884 () Unit!82037)

(assert (=> b!4426055 (= e!2755884 e!2755880)))

(declare-fun c!753451 () Bool)

(declare-fun call!307978 () Bool)

(assert (=> b!4426055 (= c!753451 call!307978)))

(declare-fun b!4426056 () Bool)

(declare-fun e!2755879 () Bool)

(assert (=> b!4426056 (= e!2755879 (not (contains!12096 (keys!16932 (extractMap!812 (tail!7275 (toList!3489 lm!1616)))) key!3717)))))

(declare-fun b!4426057 () Bool)

(declare-fun e!2755883 () Bool)

(declare-fun e!2755881 () Bool)

(assert (=> b!4426057 (= e!2755883 e!2755881)))

(declare-fun res!1829905 () Bool)

(assert (=> b!4426057 (=> (not res!1829905) (not e!2755881))))

(assert (=> b!4426057 (= res!1829905 (isDefined!8021 (getValueByKey!715 (toList!3490 (extractMap!812 (tail!7275 (toList!3489 lm!1616)))) key!3717)))))

(declare-fun b!4426058 () Bool)

(declare-fun e!2755882 () List!49714)

(assert (=> b!4426058 (= e!2755882 (getKeysList!254 (toList!3490 (extractMap!812 (tail!7275 (toList!3489 lm!1616))))))))

(declare-fun b!4426059 () Bool)

(declare-fun lt!1625357 () Unit!82037)

(assert (=> b!4426059 (= e!2755884 lt!1625357)))

(declare-fun lt!1625359 () Unit!82037)

(assert (=> b!4426059 (= lt!1625359 (lemmaContainsKeyImpliesGetValueByKeyDefined!624 (toList!3490 (extractMap!812 (tail!7275 (toList!3489 lm!1616)))) key!3717))))

(assert (=> b!4426059 (isDefined!8021 (getValueByKey!715 (toList!3490 (extractMap!812 (tail!7275 (toList!3489 lm!1616)))) key!3717))))

(declare-fun lt!1625360 () Unit!82037)

(assert (=> b!4426059 (= lt!1625360 lt!1625359)))

(assert (=> b!4426059 (= lt!1625357 (lemmaInListThenGetKeysListContains!251 (toList!3490 (extractMap!812 (tail!7275 (toList!3489 lm!1616)))) key!3717))))

(assert (=> b!4426059 call!307978))

(declare-fun bm!307973 () Bool)

(assert (=> bm!307973 (= call!307978 (contains!12096 e!2755882 key!3717))))

(declare-fun c!753450 () Bool)

(declare-fun c!753452 () Bool)

(assert (=> bm!307973 (= c!753450 c!753452)))

(declare-fun b!4426054 () Bool)

(assert (=> b!4426054 (= e!2755882 (keys!16932 (extractMap!812 (tail!7275 (toList!3489 lm!1616)))))))

(declare-fun d!1341814 () Bool)

(assert (=> d!1341814 e!2755883))

(declare-fun res!1829903 () Bool)

(assert (=> d!1341814 (=> res!1829903 e!2755883)))

(assert (=> d!1341814 (= res!1829903 e!2755879)))

(declare-fun res!1829904 () Bool)

(assert (=> d!1341814 (=> (not res!1829904) (not e!2755879))))

(declare-fun lt!1625354 () Bool)

(assert (=> d!1341814 (= res!1829904 (not lt!1625354))))

(declare-fun lt!1625356 () Bool)

(assert (=> d!1341814 (= lt!1625354 lt!1625356)))

(declare-fun lt!1625358 () Unit!82037)

(assert (=> d!1341814 (= lt!1625358 e!2755884)))

(assert (=> d!1341814 (= c!753452 lt!1625356)))

(assert (=> d!1341814 (= lt!1625356 (containsKey!1121 (toList!3490 (extractMap!812 (tail!7275 (toList!3489 lm!1616)))) key!3717))))

(assert (=> d!1341814 (= (contains!12092 (extractMap!812 (tail!7275 (toList!3489 lm!1616))) key!3717) lt!1625354)))

(declare-fun b!4426060 () Bool)

(assert (=> b!4426060 (= e!2755881 (contains!12096 (keys!16932 (extractMap!812 (tail!7275 (toList!3489 lm!1616)))) key!3717))))

(declare-fun b!4426061 () Bool)

(assert (=> b!4426061 false))

(declare-fun lt!1625353 () Unit!82037)

(declare-fun lt!1625355 () Unit!82037)

(assert (=> b!4426061 (= lt!1625353 lt!1625355)))

(assert (=> b!4426061 (containsKey!1121 (toList!3490 (extractMap!812 (tail!7275 (toList!3489 lm!1616)))) key!3717)))

(assert (=> b!4426061 (= lt!1625355 (lemmaInGetKeysListThenContainsKey!252 (toList!3490 (extractMap!812 (tail!7275 (toList!3489 lm!1616)))) key!3717))))

(declare-fun Unit!82060 () Unit!82037)

(assert (=> b!4426061 (= e!2755880 Unit!82060)))

(assert (= (and d!1341814 c!753452) b!4426059))

(assert (= (and d!1341814 (not c!753452)) b!4426055))

(assert (= (and b!4426055 c!753451) b!4426061))

(assert (= (and b!4426055 (not c!753451)) b!4426053))

(assert (= (or b!4426059 b!4426055) bm!307973))

(assert (= (and bm!307973 c!753450) b!4426058))

(assert (= (and bm!307973 (not c!753450)) b!4426054))

(assert (= (and d!1341814 res!1829904) b!4426056))

(assert (= (and d!1341814 (not res!1829903)) b!4426057))

(assert (= (and b!4426057 res!1829905) b!4426060))

(assert (=> b!4426060 m!5106889))

(declare-fun m!5107121 () Bool)

(assert (=> b!4426060 m!5107121))

(assert (=> b!4426060 m!5107121))

(declare-fun m!5107123 () Bool)

(assert (=> b!4426060 m!5107123))

(declare-fun m!5107125 () Bool)

(assert (=> d!1341814 m!5107125))

(assert (=> b!4426056 m!5106889))

(assert (=> b!4426056 m!5107121))

(assert (=> b!4426056 m!5107121))

(assert (=> b!4426056 m!5107123))

(declare-fun m!5107127 () Bool)

(assert (=> bm!307973 m!5107127))

(declare-fun m!5107129 () Bool)

(assert (=> b!4426058 m!5107129))

(assert (=> b!4426054 m!5106889))

(assert (=> b!4426054 m!5107121))

(declare-fun m!5107131 () Bool)

(assert (=> b!4426059 m!5107131))

(declare-fun m!5107133 () Bool)

(assert (=> b!4426059 m!5107133))

(assert (=> b!4426059 m!5107133))

(declare-fun m!5107135 () Bool)

(assert (=> b!4426059 m!5107135))

(declare-fun m!5107137 () Bool)

(assert (=> b!4426059 m!5107137))

(assert (=> b!4426057 m!5107133))

(assert (=> b!4426057 m!5107133))

(assert (=> b!4426057 m!5107135))

(assert (=> b!4426061 m!5107125))

(declare-fun m!5107139 () Bool)

(assert (=> b!4426061 m!5107139))

(assert (=> b!4425920 d!1341814))

(declare-fun d!1341818 () Bool)

(declare-fun res!1829912 () Bool)

(declare-fun e!2755893 () Bool)

(assert (=> d!1341818 (=> res!1829912 e!2755893)))

(assert (=> d!1341818 (= res!1829912 ((_ is Nil!49588) (toList!3489 lt!1625196)))))

(assert (=> d!1341818 (= (forall!9566 (toList!3489 lt!1625196) lambda!154050) e!2755893)))

(declare-fun b!4426072 () Bool)

(declare-fun e!2755894 () Bool)

(assert (=> b!4426072 (= e!2755893 e!2755894)))

(declare-fun res!1829913 () Bool)

(assert (=> b!4426072 (=> (not res!1829913) (not e!2755894))))

(declare-fun dynLambda!20848 (Int tuple2!49384) Bool)

(assert (=> b!4426072 (= res!1829913 (dynLambda!20848 lambda!154050 (h!55275 (toList!3489 lt!1625196))))))

(declare-fun b!4426073 () Bool)

(assert (=> b!4426073 (= e!2755894 (forall!9566 (t!356650 (toList!3489 lt!1625196)) lambda!154050))))

(assert (= (and d!1341818 (not res!1829912)) b!4426072))

(assert (= (and b!4426072 res!1829913) b!4426073))

(declare-fun b_lambda!143189 () Bool)

(assert (=> (not b_lambda!143189) (not b!4426072)))

(declare-fun m!5107143 () Bool)

(assert (=> b!4426072 m!5107143))

(declare-fun m!5107147 () Bool)

(assert (=> b!4426073 m!5107147))

(assert (=> b!4425931 d!1341818))

(declare-fun d!1341820 () Bool)

(declare-fun e!2755897 () Bool)

(assert (=> d!1341820 e!2755897))

(declare-fun res!1829916 () Bool)

(assert (=> d!1341820 (=> (not res!1829916) (not e!2755897))))

(declare-fun lt!1625373 () ListLongMap!2139)

(assert (=> d!1341820 (= res!1829916 (contains!12093 lt!1625373 (_1!27986 lt!1625194)))))

(declare-fun lt!1625374 () List!49712)

(assert (=> d!1341820 (= lt!1625373 (ListLongMap!2140 lt!1625374))))

(declare-fun lt!1625376 () Unit!82037)

(declare-fun lt!1625375 () Unit!82037)

(assert (=> d!1341820 (= lt!1625376 lt!1625375)))

(assert (=> d!1341820 (= (getValueByKey!716 lt!1625374 (_1!27986 lt!1625194)) (Some!10729 (_2!27986 lt!1625194)))))

(assert (=> d!1341820 (= lt!1625375 (lemmaContainsTupThenGetReturnValue!450 lt!1625374 (_1!27986 lt!1625194) (_2!27986 lt!1625194)))))

(assert (=> d!1341820 (= lt!1625374 (insertStrictlySorted!262 (toList!3489 lm!1616) (_1!27986 lt!1625194) (_2!27986 lt!1625194)))))

(assert (=> d!1341820 (= (+!1087 lm!1616 lt!1625194) lt!1625373)))

(declare-fun b!4426077 () Bool)

(declare-fun res!1829915 () Bool)

(assert (=> b!4426077 (=> (not res!1829915) (not e!2755897))))

(assert (=> b!4426077 (= res!1829915 (= (getValueByKey!716 (toList!3489 lt!1625373) (_1!27986 lt!1625194)) (Some!10729 (_2!27986 lt!1625194))))))

(declare-fun b!4426078 () Bool)

(assert (=> b!4426078 (= e!2755897 (contains!12098 (toList!3489 lt!1625373) lt!1625194))))

(assert (= (and d!1341820 res!1829916) b!4426077))

(assert (= (and b!4426077 res!1829915) b!4426078))

(declare-fun m!5107151 () Bool)

(assert (=> d!1341820 m!5107151))

(declare-fun m!5107153 () Bool)

(assert (=> d!1341820 m!5107153))

(declare-fun m!5107155 () Bool)

(assert (=> d!1341820 m!5107155))

(declare-fun m!5107157 () Bool)

(assert (=> d!1341820 m!5107157))

(declare-fun m!5107159 () Bool)

(assert (=> b!4426077 m!5107159))

(declare-fun m!5107161 () Bool)

(assert (=> b!4426078 m!5107161))

(assert (=> b!4425931 d!1341820))

(declare-fun d!1341824 () Bool)

(assert (=> d!1341824 (forall!9566 (toList!3489 (+!1087 lm!1616 (tuple2!49385 hash!366 newBucket!194))) lambda!154050)))

(declare-fun lt!1625379 () Unit!82037)

(declare-fun choose!27956 (ListLongMap!2139 Int (_ BitVec 64) List!49711) Unit!82037)

(assert (=> d!1341824 (= lt!1625379 (choose!27956 lm!1616 lambda!154050 hash!366 newBucket!194))))

(declare-fun e!2755900 () Bool)

(assert (=> d!1341824 e!2755900))

(declare-fun res!1829919 () Bool)

(assert (=> d!1341824 (=> (not res!1829919) (not e!2755900))))

(assert (=> d!1341824 (= res!1829919 (forall!9566 (toList!3489 lm!1616) lambda!154050))))

(assert (=> d!1341824 (= (addValidProp!395 lm!1616 lambda!154050 hash!366 newBucket!194) lt!1625379)))

(declare-fun b!4426082 () Bool)

(assert (=> b!4426082 (= e!2755900 (dynLambda!20848 lambda!154050 (tuple2!49385 hash!366 newBucket!194)))))

(assert (= (and d!1341824 res!1829919) b!4426082))

(declare-fun b_lambda!143191 () Bool)

(assert (=> (not b_lambda!143191) (not b!4426082)))

(declare-fun m!5107163 () Bool)

(assert (=> d!1341824 m!5107163))

(declare-fun m!5107165 () Bool)

(assert (=> d!1341824 m!5107165))

(declare-fun m!5107167 () Bool)

(assert (=> d!1341824 m!5107167))

(assert (=> d!1341824 m!5106879))

(declare-fun m!5107169 () Bool)

(assert (=> b!4426082 m!5107169))

(assert (=> b!4425931 d!1341824))

(declare-fun d!1341826 () Bool)

(assert (=> d!1341826 (= (eq!409 (addToMapMapFromBucket!388 (_2!27986 (h!55275 (toList!3489 lm!1616))) lt!1625202) (+!1086 lt!1625195 lt!1625203)) (= (content!7960 (toList!3490 (addToMapMapFromBucket!388 (_2!27986 (h!55275 (toList!3489 lm!1616))) lt!1625202))) (content!7960 (toList!3490 (+!1086 lt!1625195 lt!1625203)))))))

(declare-fun bs!757700 () Bool)

(assert (= bs!757700 d!1341826))

(declare-fun m!5107171 () Bool)

(assert (=> bs!757700 m!5107171))

(declare-fun m!5107173 () Bool)

(assert (=> bs!757700 m!5107173))

(assert (=> b!4425921 d!1341826))

(declare-fun d!1341828 () Bool)

(declare-fun e!2755901 () Bool)

(assert (=> d!1341828 e!2755901))

(declare-fun res!1829921 () Bool)

(assert (=> d!1341828 (=> (not res!1829921) (not e!2755901))))

(declare-fun lt!1625383 () ListMap!2733)

(assert (=> d!1341828 (= res!1829921 (contains!12092 lt!1625383 (_1!27985 lt!1625203)))))

(declare-fun lt!1625382 () List!49711)

(assert (=> d!1341828 (= lt!1625383 (ListMap!2734 lt!1625382))))

(declare-fun lt!1625381 () Unit!82037)

(declare-fun lt!1625380 () Unit!82037)

(assert (=> d!1341828 (= lt!1625381 lt!1625380)))

(assert (=> d!1341828 (= (getValueByKey!715 lt!1625382 (_1!27985 lt!1625203)) (Some!10728 (_2!27985 lt!1625203)))))

(assert (=> d!1341828 (= lt!1625380 (lemmaContainsTupThenGetReturnValue!451 lt!1625382 (_1!27985 lt!1625203) (_2!27985 lt!1625203)))))

(assert (=> d!1341828 (= lt!1625382 (insertNoDuplicatedKeys!197 (toList!3490 lt!1625195) (_1!27985 lt!1625203) (_2!27985 lt!1625203)))))

(assert (=> d!1341828 (= (+!1086 lt!1625195 lt!1625203) lt!1625383)))

(declare-fun b!4426083 () Bool)

(declare-fun res!1829920 () Bool)

(assert (=> b!4426083 (=> (not res!1829920) (not e!2755901))))

(assert (=> b!4426083 (= res!1829920 (= (getValueByKey!715 (toList!3490 lt!1625383) (_1!27985 lt!1625203)) (Some!10728 (_2!27985 lt!1625203))))))

(declare-fun b!4426084 () Bool)

(assert (=> b!4426084 (= e!2755901 (contains!12099 (toList!3490 lt!1625383) lt!1625203))))

(assert (= (and d!1341828 res!1829921) b!4426083))

(assert (= (and b!4426083 res!1829920) b!4426084))

(declare-fun m!5107175 () Bool)

(assert (=> d!1341828 m!5107175))

(declare-fun m!5107177 () Bool)

(assert (=> d!1341828 m!5107177))

(declare-fun m!5107179 () Bool)

(assert (=> d!1341828 m!5107179))

(declare-fun m!5107181 () Bool)

(assert (=> d!1341828 m!5107181))

(declare-fun m!5107183 () Bool)

(assert (=> b!4426083 m!5107183))

(declare-fun m!5107185 () Bool)

(assert (=> b!4426084 m!5107185))

(assert (=> b!4425921 d!1341828))

(declare-fun d!1341830 () Bool)

(declare-fun res!1829926 () Bool)

(declare-fun e!2755906 () Bool)

(assert (=> d!1341830 (=> res!1829926 e!2755906)))

(assert (=> d!1341830 (= res!1829926 (not ((_ is Cons!49587) (_2!27986 (h!55275 (toList!3489 lm!1616))))))))

(assert (=> d!1341830 (= (noDuplicateKeys!751 (_2!27986 (h!55275 (toList!3489 lm!1616)))) e!2755906)))

(declare-fun b!4426089 () Bool)

(declare-fun e!2755907 () Bool)

(assert (=> b!4426089 (= e!2755906 e!2755907)))

(declare-fun res!1829927 () Bool)

(assert (=> b!4426089 (=> (not res!1829927) (not e!2755907))))

(assert (=> b!4426089 (= res!1829927 (not (containsKey!1118 (t!356649 (_2!27986 (h!55275 (toList!3489 lm!1616)))) (_1!27985 (h!55274 (_2!27986 (h!55275 (toList!3489 lm!1616))))))))))

(declare-fun b!4426090 () Bool)

(assert (=> b!4426090 (= e!2755907 (noDuplicateKeys!751 (t!356649 (_2!27986 (h!55275 (toList!3489 lm!1616))))))))

(assert (= (and d!1341830 (not res!1829926)) b!4426089))

(assert (= (and b!4426089 res!1829927) b!4426090))

(declare-fun m!5107187 () Bool)

(assert (=> b!4426089 m!5107187))

(declare-fun m!5107189 () Bool)

(assert (=> b!4426090 m!5107189))

(assert (=> b!4425921 d!1341830))

(declare-fun d!1341832 () Bool)

(assert (=> d!1341832 (eq!409 (addToMapMapFromBucket!388 (_2!27986 (h!55275 (toList!3489 lm!1616))) (+!1086 lt!1625190 (tuple2!49383 key!3717 newValue!93))) (+!1086 (addToMapMapFromBucket!388 (_2!27986 (h!55275 (toList!3489 lm!1616))) lt!1625190) (tuple2!49383 key!3717 newValue!93)))))

(declare-fun lt!1625402 () Unit!82037)

(declare-fun choose!27957 (ListMap!2733 K!10950 V!11196 List!49711) Unit!82037)

(assert (=> d!1341832 (= lt!1625402 (choose!27957 lt!1625190 key!3717 newValue!93 (_2!27986 (h!55275 (toList!3489 lm!1616)))))))

(assert (=> d!1341832 (not (containsKey!1118 (_2!27986 (h!55275 (toList!3489 lm!1616))) key!3717))))

(assert (=> d!1341832 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!180 lt!1625190 key!3717 newValue!93 (_2!27986 (h!55275 (toList!3489 lm!1616)))) lt!1625402)))

(declare-fun bs!757708 () Bool)

(assert (= bs!757708 d!1341832))

(declare-fun m!5107227 () Bool)

(assert (=> bs!757708 m!5107227))

(assert (=> bs!757708 m!5106909))

(declare-fun m!5107229 () Bool)

(assert (=> bs!757708 m!5107229))

(declare-fun m!5107231 () Bool)

(assert (=> bs!757708 m!5107231))

(assert (=> bs!757708 m!5106875))

(declare-fun m!5107233 () Bool)

(assert (=> bs!757708 m!5107233))

(assert (=> bs!757708 m!5107231))

(assert (=> bs!757708 m!5107233))

(declare-fun m!5107235 () Bool)

(assert (=> bs!757708 m!5107235))

(assert (=> bs!757708 m!5106875))

(assert (=> bs!757708 m!5107229))

(assert (=> b!4425921 d!1341832))

(declare-fun b!4426165 () Bool)

(assert (=> b!4426165 true))

(declare-fun bs!757766 () Bool)

(declare-fun b!4426168 () Bool)

(assert (= bs!757766 (and b!4426168 b!4426165)))

(declare-fun lambda!154146 () Int)

(declare-fun lambda!154145 () Int)

(assert (=> bs!757766 (= lambda!154146 lambda!154145)))

(assert (=> b!4426168 true))

(declare-fun lt!1625521 () ListMap!2733)

(declare-fun lambda!154147 () Int)

(assert (=> bs!757766 (= (= lt!1625521 lt!1625202) (= lambda!154147 lambda!154145))))

(assert (=> b!4426168 (= (= lt!1625521 lt!1625202) (= lambda!154147 lambda!154146))))

(assert (=> b!4426168 true))

(declare-fun bs!757767 () Bool)

(declare-fun d!1341842 () Bool)

(assert (= bs!757767 (and d!1341842 b!4426165)))

(declare-fun lambda!154148 () Int)

(declare-fun lt!1625516 () ListMap!2733)

(assert (=> bs!757767 (= (= lt!1625516 lt!1625202) (= lambda!154148 lambda!154145))))

(declare-fun bs!757768 () Bool)

(assert (= bs!757768 (and d!1341842 b!4426168)))

(assert (=> bs!757768 (= (= lt!1625516 lt!1625202) (= lambda!154148 lambda!154146))))

(assert (=> bs!757768 (= (= lt!1625516 lt!1625521) (= lambda!154148 lambda!154147))))

(assert (=> d!1341842 true))

(declare-fun e!2755955 () ListMap!2733)

(assert (=> b!4426165 (= e!2755955 lt!1625202)))

(declare-fun lt!1625519 () Unit!82037)

(declare-fun call!307989 () Unit!82037)

(assert (=> b!4426165 (= lt!1625519 call!307989)))

(declare-fun call!307991 () Bool)

(assert (=> b!4426165 call!307991))

(declare-fun lt!1625526 () Unit!82037)

(assert (=> b!4426165 (= lt!1625526 lt!1625519)))

(declare-fun call!307990 () Bool)

(assert (=> b!4426165 call!307990))

(declare-fun lt!1625522 () Unit!82037)

(declare-fun Unit!82072 () Unit!82037)

(assert (=> b!4426165 (= lt!1625522 Unit!82072)))

(declare-fun bm!307984 () Bool)

(declare-fun c!753465 () Bool)

(declare-fun forall!9568 (List!49711 Int) Bool)

(assert (=> bm!307984 (= call!307991 (forall!9568 (toList!3490 lt!1625202) (ite c!753465 lambda!154145 lambda!154146)))))

(declare-fun bm!307985 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!175 (ListMap!2733) Unit!82037)

(assert (=> bm!307985 (= call!307989 (lemmaContainsAllItsOwnKeys!175 lt!1625202))))

(declare-fun e!2755956 () Bool)

(assert (=> d!1341842 e!2755956))

(declare-fun res!1829972 () Bool)

(assert (=> d!1341842 (=> (not res!1829972) (not e!2755956))))

(assert (=> d!1341842 (= res!1829972 (forall!9568 (_2!27986 (h!55275 (toList!3489 lm!1616))) lambda!154148))))

(assert (=> d!1341842 (= lt!1625516 e!2755955)))

(assert (=> d!1341842 (= c!753465 ((_ is Nil!49587) (_2!27986 (h!55275 (toList!3489 lm!1616)))))))

(assert (=> d!1341842 (noDuplicateKeys!751 (_2!27986 (h!55275 (toList!3489 lm!1616))))))

(assert (=> d!1341842 (= (addToMapMapFromBucket!388 (_2!27986 (h!55275 (toList!3489 lm!1616))) lt!1625202) lt!1625516)))

(declare-fun b!4426166 () Bool)

(declare-fun e!2755957 () Bool)

(assert (=> b!4426166 (= e!2755957 (forall!9568 (toList!3490 lt!1625202) lambda!154147))))

(declare-fun b!4426167 () Bool)

(declare-fun res!1829971 () Bool)

(assert (=> b!4426167 (=> (not res!1829971) (not e!2755956))))

(assert (=> b!4426167 (= res!1829971 (forall!9568 (toList!3490 lt!1625202) lambda!154148))))

(assert (=> b!4426168 (= e!2755955 lt!1625521)))

(declare-fun lt!1625523 () ListMap!2733)

(assert (=> b!4426168 (= lt!1625523 (+!1086 lt!1625202 (h!55274 (_2!27986 (h!55275 (toList!3489 lm!1616))))))))

(assert (=> b!4426168 (= lt!1625521 (addToMapMapFromBucket!388 (t!356649 (_2!27986 (h!55275 (toList!3489 lm!1616)))) (+!1086 lt!1625202 (h!55274 (_2!27986 (h!55275 (toList!3489 lm!1616)))))))))

(declare-fun lt!1625513 () Unit!82037)

(assert (=> b!4426168 (= lt!1625513 call!307989)))

(assert (=> b!4426168 call!307991))

(declare-fun lt!1625518 () Unit!82037)

(assert (=> b!4426168 (= lt!1625518 lt!1625513)))

(assert (=> b!4426168 (forall!9568 (toList!3490 lt!1625523) lambda!154147)))

(declare-fun lt!1625514 () Unit!82037)

(declare-fun Unit!82073 () Unit!82037)

(assert (=> b!4426168 (= lt!1625514 Unit!82073)))

(assert (=> b!4426168 (forall!9568 (t!356649 (_2!27986 (h!55275 (toList!3489 lm!1616)))) lambda!154147)))

(declare-fun lt!1625515 () Unit!82037)

(declare-fun Unit!82074 () Unit!82037)

(assert (=> b!4426168 (= lt!1625515 Unit!82074)))

(declare-fun lt!1625510 () Unit!82037)

(declare-fun Unit!82075 () Unit!82037)

(assert (=> b!4426168 (= lt!1625510 Unit!82075)))

(declare-fun lt!1625512 () Unit!82037)

(declare-fun forallContained!2095 (List!49711 Int tuple2!49382) Unit!82037)

(assert (=> b!4426168 (= lt!1625512 (forallContained!2095 (toList!3490 lt!1625523) lambda!154147 (h!55274 (_2!27986 (h!55275 (toList!3489 lm!1616))))))))

(assert (=> b!4426168 (contains!12092 lt!1625523 (_1!27985 (h!55274 (_2!27986 (h!55275 (toList!3489 lm!1616))))))))

(declare-fun lt!1625508 () Unit!82037)

(declare-fun Unit!82076 () Unit!82037)

(assert (=> b!4426168 (= lt!1625508 Unit!82076)))

(assert (=> b!4426168 (contains!12092 lt!1625521 (_1!27985 (h!55274 (_2!27986 (h!55275 (toList!3489 lm!1616))))))))

(declare-fun lt!1625527 () Unit!82037)

(declare-fun Unit!82077 () Unit!82037)

(assert (=> b!4426168 (= lt!1625527 Unit!82077)))

(assert (=> b!4426168 call!307990))

(declare-fun lt!1625520 () Unit!82037)

(declare-fun Unit!82078 () Unit!82037)

(assert (=> b!4426168 (= lt!1625520 Unit!82078)))

(assert (=> b!4426168 (forall!9568 (toList!3490 lt!1625523) lambda!154147)))

(declare-fun lt!1625517 () Unit!82037)

(declare-fun Unit!82079 () Unit!82037)

(assert (=> b!4426168 (= lt!1625517 Unit!82079)))

(declare-fun lt!1625528 () Unit!82037)

(declare-fun Unit!82080 () Unit!82037)

(assert (=> b!4426168 (= lt!1625528 Unit!82080)))

(declare-fun lt!1625509 () Unit!82037)

(declare-fun addForallContainsKeyThenBeforeAdding!175 (ListMap!2733 ListMap!2733 K!10950 V!11196) Unit!82037)

(assert (=> b!4426168 (= lt!1625509 (addForallContainsKeyThenBeforeAdding!175 lt!1625202 lt!1625521 (_1!27985 (h!55274 (_2!27986 (h!55275 (toList!3489 lm!1616))))) (_2!27985 (h!55274 (_2!27986 (h!55275 (toList!3489 lm!1616)))))))))

(assert (=> b!4426168 (forall!9568 (toList!3490 lt!1625202) lambda!154147)))

(declare-fun lt!1625525 () Unit!82037)

(assert (=> b!4426168 (= lt!1625525 lt!1625509)))

(assert (=> b!4426168 (forall!9568 (toList!3490 lt!1625202) lambda!154147)))

(declare-fun lt!1625524 () Unit!82037)

(declare-fun Unit!82081 () Unit!82037)

(assert (=> b!4426168 (= lt!1625524 Unit!82081)))

(declare-fun res!1829973 () Bool)

(assert (=> b!4426168 (= res!1829973 (forall!9568 (_2!27986 (h!55275 (toList!3489 lm!1616))) lambda!154147))))

(assert (=> b!4426168 (=> (not res!1829973) (not e!2755957))))

(assert (=> b!4426168 e!2755957))

(declare-fun lt!1625511 () Unit!82037)

(declare-fun Unit!82082 () Unit!82037)

(assert (=> b!4426168 (= lt!1625511 Unit!82082)))

(declare-fun bm!307986 () Bool)

(assert (=> bm!307986 (= call!307990 (forall!9568 (ite c!753465 (toList!3490 lt!1625202) (_2!27986 (h!55275 (toList!3489 lm!1616)))) (ite c!753465 lambda!154145 lambda!154147)))))

(declare-fun b!4426169 () Bool)

(assert (=> b!4426169 (= e!2755956 (invariantList!807 (toList!3490 lt!1625516)))))

(assert (= (and d!1341842 c!753465) b!4426165))

(assert (= (and d!1341842 (not c!753465)) b!4426168))

(assert (= (and b!4426168 res!1829973) b!4426166))

(assert (= (or b!4426165 b!4426168) bm!307985))

(assert (= (or b!4426165 b!4426168) bm!307986))

(assert (= (or b!4426165 b!4426168) bm!307984))

(assert (= (and d!1341842 res!1829972) b!4426167))

(assert (= (and b!4426167 res!1829971) b!4426169))

(declare-fun m!5107401 () Bool)

(assert (=> bm!307986 m!5107401))

(declare-fun m!5107403 () Bool)

(assert (=> b!4426166 m!5107403))

(declare-fun m!5107405 () Bool)

(assert (=> b!4426169 m!5107405))

(declare-fun m!5107407 () Bool)

(assert (=> bm!307985 m!5107407))

(declare-fun m!5107409 () Bool)

(assert (=> bm!307984 m!5107409))

(declare-fun m!5107411 () Bool)

(assert (=> d!1341842 m!5107411))

(assert (=> d!1341842 m!5106941))

(declare-fun m!5107413 () Bool)

(assert (=> b!4426168 m!5107413))

(declare-fun m!5107415 () Bool)

(assert (=> b!4426168 m!5107415))

(declare-fun m!5107417 () Bool)

(assert (=> b!4426168 m!5107417))

(declare-fun m!5107419 () Bool)

(assert (=> b!4426168 m!5107419))

(declare-fun m!5107421 () Bool)

(assert (=> b!4426168 m!5107421))

(declare-fun m!5107423 () Bool)

(assert (=> b!4426168 m!5107423))

(assert (=> b!4426168 m!5107403))

(assert (=> b!4426168 m!5107415))

(assert (=> b!4426168 m!5107403))

(declare-fun m!5107425 () Bool)

(assert (=> b!4426168 m!5107425))

(declare-fun m!5107427 () Bool)

(assert (=> b!4426168 m!5107427))

(assert (=> b!4426168 m!5107425))

(declare-fun m!5107429 () Bool)

(assert (=> b!4426168 m!5107429))

(declare-fun m!5107431 () Bool)

(assert (=> b!4426167 m!5107431))

(assert (=> b!4425921 d!1341842))

(declare-fun d!1341892 () Bool)

(declare-fun e!2755962 () Bool)

(assert (=> d!1341892 e!2755962))

(declare-fun res!1829976 () Bool)

(assert (=> d!1341892 (=> res!1829976 e!2755962)))

(declare-fun lt!1625537 () Bool)

(assert (=> d!1341892 (= res!1829976 (not lt!1625537))))

(declare-fun lt!1625539 () Bool)

(assert (=> d!1341892 (= lt!1625537 lt!1625539)))

(declare-fun lt!1625540 () Unit!82037)

(declare-fun e!2755963 () Unit!82037)

(assert (=> d!1341892 (= lt!1625540 e!2755963)))

(declare-fun c!753468 () Bool)

(assert (=> d!1341892 (= c!753468 lt!1625539)))

(declare-fun containsKey!1122 (List!49712 (_ BitVec 64)) Bool)

(assert (=> d!1341892 (= lt!1625539 (containsKey!1122 (toList!3489 lm!1616) hash!366))))

(assert (=> d!1341892 (= (contains!12093 lm!1616 hash!366) lt!1625537)))

(declare-fun b!4426178 () Bool)

(declare-fun lt!1625538 () Unit!82037)

(assert (=> b!4426178 (= e!2755963 lt!1625538)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!625 (List!49712 (_ BitVec 64)) Unit!82037)

(assert (=> b!4426178 (= lt!1625538 (lemmaContainsKeyImpliesGetValueByKeyDefined!625 (toList!3489 lm!1616) hash!366))))

(declare-fun isDefined!8022 (Option!10730) Bool)

(assert (=> b!4426178 (isDefined!8022 (getValueByKey!716 (toList!3489 lm!1616) hash!366))))

(declare-fun b!4426179 () Bool)

(declare-fun Unit!82083 () Unit!82037)

(assert (=> b!4426179 (= e!2755963 Unit!82083)))

(declare-fun b!4426180 () Bool)

(assert (=> b!4426180 (= e!2755962 (isDefined!8022 (getValueByKey!716 (toList!3489 lm!1616) hash!366)))))

(assert (= (and d!1341892 c!753468) b!4426178))

(assert (= (and d!1341892 (not c!753468)) b!4426179))

(assert (= (and d!1341892 (not res!1829976)) b!4426180))

(declare-fun m!5107433 () Bool)

(assert (=> d!1341892 m!5107433))

(declare-fun m!5107435 () Bool)

(assert (=> b!4426178 m!5107435))

(declare-fun m!5107437 () Bool)

(assert (=> b!4426178 m!5107437))

(assert (=> b!4426178 m!5107437))

(declare-fun m!5107439 () Bool)

(assert (=> b!4426178 m!5107439))

(assert (=> b!4426180 m!5107437))

(assert (=> b!4426180 m!5107437))

(assert (=> b!4426180 m!5107439))

(assert (=> b!4425933 d!1341892))

(declare-fun bs!757769 () Bool)

(declare-fun d!1341894 () Bool)

(assert (= bs!757769 (and d!1341894 d!1341798)))

(declare-fun lambda!154151 () Int)

(assert (=> bs!757769 (not (= lambda!154151 lambda!154093))))

(declare-fun bs!757770 () Bool)

(assert (= bs!757770 (and d!1341894 start!431828)))

(assert (=> bs!757770 (not (= lambda!154151 lambda!154050))))

(declare-fun bs!757771 () Bool)

(assert (= bs!757771 (and d!1341894 d!1341810)))

(assert (=> bs!757771 (not (= lambda!154151 lambda!154094))))

(declare-fun bs!757772 () Bool)

(assert (= bs!757772 (and d!1341894 d!1341794)))

(assert (=> bs!757772 (not (= lambda!154151 lambda!154060))))

(declare-fun bs!757773 () Bool)

(assert (= bs!757773 (and d!1341894 d!1341786)))

(assert (=> bs!757773 (not (= lambda!154151 lambda!154056))))

(declare-fun bs!757774 () Bool)

(assert (= bs!757774 (and d!1341894 d!1341792)))

(assert (=> bs!757774 (not (= lambda!154151 lambda!154057))))

(assert (=> d!1341894 true))

(assert (=> d!1341894 (= (allKeysSameHashInMap!857 lm!1616 hashF!1220) (forall!9566 (toList!3489 lm!1616) lambda!154151))))

(declare-fun bs!757775 () Bool)

(assert (= bs!757775 d!1341894))

(declare-fun m!5107441 () Bool)

(assert (=> bs!757775 m!5107441))

(assert (=> b!4425923 d!1341894))

(declare-fun d!1341896 () Bool)

(declare-fun res!1829977 () Bool)

(declare-fun e!2755964 () Bool)

(assert (=> d!1341896 (=> res!1829977 e!2755964)))

(assert (=> d!1341896 (= res!1829977 (not ((_ is Cons!49587) newBucket!194)))))

(assert (=> d!1341896 (= (noDuplicateKeys!751 newBucket!194) e!2755964)))

(declare-fun b!4426183 () Bool)

(declare-fun e!2755965 () Bool)

(assert (=> b!4426183 (= e!2755964 e!2755965)))

(declare-fun res!1829978 () Bool)

(assert (=> b!4426183 (=> (not res!1829978) (not e!2755965))))

(assert (=> b!4426183 (= res!1829978 (not (containsKey!1118 (t!356649 newBucket!194) (_1!27985 (h!55274 newBucket!194)))))))

(declare-fun b!4426184 () Bool)

(assert (=> b!4426184 (= e!2755965 (noDuplicateKeys!751 (t!356649 newBucket!194)))))

(assert (= (and d!1341896 (not res!1829977)) b!4426183))

(assert (= (and b!4426183 res!1829978) b!4426184))

(declare-fun m!5107443 () Bool)

(assert (=> b!4426183 m!5107443))

(declare-fun m!5107445 () Bool)

(assert (=> b!4426184 m!5107445))

(assert (=> b!4425934 d!1341896))

(declare-fun d!1341898 () Bool)

(declare-fun res!1829983 () Bool)

(declare-fun e!2755970 () Bool)

(assert (=> d!1341898 (=> res!1829983 e!2755970)))

(assert (=> d!1341898 (= res!1829983 (and ((_ is Cons!49587) (_2!27986 (h!55275 (toList!3489 lm!1616)))) (= (_1!27985 (h!55274 (_2!27986 (h!55275 (toList!3489 lm!1616))))) key!3717)))))

(assert (=> d!1341898 (= (containsKey!1118 (_2!27986 (h!55275 (toList!3489 lm!1616))) key!3717) e!2755970)))

(declare-fun b!4426189 () Bool)

(declare-fun e!2755971 () Bool)

(assert (=> b!4426189 (= e!2755970 e!2755971)))

(declare-fun res!1829984 () Bool)

(assert (=> b!4426189 (=> (not res!1829984) (not e!2755971))))

(assert (=> b!4426189 (= res!1829984 ((_ is Cons!49587) (_2!27986 (h!55275 (toList!3489 lm!1616)))))))

(declare-fun b!4426190 () Bool)

(assert (=> b!4426190 (= e!2755971 (containsKey!1118 (t!356649 (_2!27986 (h!55275 (toList!3489 lm!1616)))) key!3717))))

(assert (= (and d!1341898 (not res!1829983)) b!4426189))

(assert (= (and b!4426189 res!1829984) b!4426190))

(declare-fun m!5107447 () Bool)

(assert (=> b!4426190 m!5107447))

(assert (=> b!4425925 d!1341898))

(declare-fun d!1341900 () Bool)

(declare-fun res!1829985 () Bool)

(declare-fun e!2755972 () Bool)

(assert (=> d!1341900 (=> res!1829985 e!2755972)))

(assert (=> d!1341900 (= res!1829985 (and ((_ is Cons!49587) (apply!11603 lm!1616 (_1!27986 (h!55275 (toList!3489 lm!1616))))) (= (_1!27985 (h!55274 (apply!11603 lm!1616 (_1!27986 (h!55275 (toList!3489 lm!1616)))))) key!3717)))))

(assert (=> d!1341900 (= (containsKey!1118 (apply!11603 lm!1616 (_1!27986 (h!55275 (toList!3489 lm!1616)))) key!3717) e!2755972)))

(declare-fun b!4426191 () Bool)

(declare-fun e!2755973 () Bool)

(assert (=> b!4426191 (= e!2755972 e!2755973)))

(declare-fun res!1829986 () Bool)

(assert (=> b!4426191 (=> (not res!1829986) (not e!2755973))))

(assert (=> b!4426191 (= res!1829986 ((_ is Cons!49587) (apply!11603 lm!1616 (_1!27986 (h!55275 (toList!3489 lm!1616))))))))

(declare-fun b!4426192 () Bool)

(assert (=> b!4426192 (= e!2755973 (containsKey!1118 (t!356649 (apply!11603 lm!1616 (_1!27986 (h!55275 (toList!3489 lm!1616))))) key!3717))))

(assert (= (and d!1341900 (not res!1829985)) b!4426191))

(assert (= (and b!4426191 res!1829986) b!4426192))

(declare-fun m!5107449 () Bool)

(assert (=> b!4426192 m!5107449))

(assert (=> b!4425925 d!1341900))

(declare-fun d!1341902 () Bool)

(declare-fun get!16162 (Option!10730) List!49711)

(assert (=> d!1341902 (= (apply!11603 lm!1616 (_1!27986 (h!55275 (toList!3489 lm!1616)))) (get!16162 (getValueByKey!716 (toList!3489 lm!1616) (_1!27986 (h!55275 (toList!3489 lm!1616))))))))

(declare-fun bs!757776 () Bool)

(assert (= bs!757776 d!1341902))

(declare-fun m!5107451 () Bool)

(assert (=> bs!757776 m!5107451))

(assert (=> bs!757776 m!5107451))

(declare-fun m!5107453 () Bool)

(assert (=> bs!757776 m!5107453))

(assert (=> b!4425925 d!1341902))

(declare-fun bs!757777 () Bool)

(declare-fun d!1341904 () Bool)

(assert (= bs!757777 (and d!1341904 d!1341798)))

(declare-fun lambda!154154 () Int)

(assert (=> bs!757777 (= lambda!154154 lambda!154093)))

(declare-fun bs!757778 () Bool)

(assert (= bs!757778 (and d!1341904 d!1341810)))

(assert (=> bs!757778 (= lambda!154154 lambda!154094)))

(declare-fun bs!757779 () Bool)

(assert (= bs!757779 (and d!1341904 d!1341794)))

(assert (=> bs!757779 (= lambda!154154 lambda!154060)))

(declare-fun bs!757780 () Bool)

(assert (= bs!757780 (and d!1341904 d!1341786)))

(assert (=> bs!757780 (= lambda!154154 lambda!154056)))

(declare-fun bs!757781 () Bool)

(assert (= bs!757781 (and d!1341904 d!1341792)))

(assert (=> bs!757781 (= lambda!154154 lambda!154057)))

(declare-fun bs!757782 () Bool)

(assert (= bs!757782 (and d!1341904 d!1341894)))

(assert (=> bs!757782 (not (= lambda!154154 lambda!154151))))

(declare-fun bs!757783 () Bool)

(assert (= bs!757783 (and d!1341904 start!431828)))

(assert (=> bs!757783 (= lambda!154154 lambda!154050)))

(assert (=> d!1341904 (not (containsKey!1118 (apply!11603 lm!1616 (_1!27986 (h!55275 (toList!3489 lm!1616)))) key!3717))))

(declare-fun lt!1625543 () Unit!82037)

(declare-fun choose!27960 (ListLongMap!2139 K!10950 (_ BitVec 64) Hashable!5145) Unit!82037)

(assert (=> d!1341904 (= lt!1625543 (choose!27960 lm!1616 key!3717 (_1!27986 (h!55275 (toList!3489 lm!1616))) hashF!1220))))

(assert (=> d!1341904 (forall!9566 (toList!3489 lm!1616) lambda!154154)))

(assert (=> d!1341904 (= (lemmaNotSameHashThenCannotContainKey!130 lm!1616 key!3717 (_1!27986 (h!55275 (toList!3489 lm!1616))) hashF!1220) lt!1625543)))

(declare-fun bs!757784 () Bool)

(assert (= bs!757784 d!1341904))

(assert (=> bs!757784 m!5106911))

(assert (=> bs!757784 m!5106911))

(assert (=> bs!757784 m!5106913))

(declare-fun m!5107455 () Bool)

(assert (=> bs!757784 m!5107455))

(declare-fun m!5107457 () Bool)

(assert (=> bs!757784 m!5107457))

(assert (=> b!4425925 d!1341904))

(declare-fun d!1341906 () Bool)

(assert (=> d!1341906 (= (apply!11603 lm!1616 hash!366) (get!16162 (getValueByKey!716 (toList!3489 lm!1616) hash!366)))))

(declare-fun bs!757785 () Bool)

(assert (= bs!757785 d!1341906))

(assert (=> bs!757785 m!5107437))

(assert (=> bs!757785 m!5107437))

(declare-fun m!5107459 () Bool)

(assert (=> bs!757785 m!5107459))

(assert (=> b!4425926 d!1341906))

(declare-fun d!1341908 () Bool)

(declare-fun hash!2136 (Hashable!5145 K!10950) (_ BitVec 64))

(assert (=> d!1341908 (= (hash!2130 hashF!1220 key!3717) (hash!2136 hashF!1220 key!3717))))

(declare-fun bs!757786 () Bool)

(assert (= bs!757786 d!1341908))

(declare-fun m!5107461 () Bool)

(assert (=> bs!757786 m!5107461))

(assert (=> b!4425927 d!1341908))

(declare-fun bs!757787 () Bool)

(declare-fun d!1341910 () Bool)

(assert (= bs!757787 (and d!1341910 b!4426165)))

(declare-fun lambda!154157 () Int)

(assert (=> bs!757787 (not (= lambda!154157 lambda!154145))))

(declare-fun bs!757788 () Bool)

(assert (= bs!757788 (and d!1341910 b!4426168)))

(assert (=> bs!757788 (not (= lambda!154157 lambda!154146))))

(assert (=> bs!757788 (not (= lambda!154157 lambda!154147))))

(declare-fun bs!757789 () Bool)

(assert (= bs!757789 (and d!1341910 d!1341842)))

(assert (=> bs!757789 (not (= lambda!154157 lambda!154148))))

(assert (=> d!1341910 true))

(assert (=> d!1341910 true))

(assert (=> d!1341910 (= (allKeysSameHash!711 newBucket!194 hash!366 hashF!1220) (forall!9568 newBucket!194 lambda!154157))))

(declare-fun bs!757790 () Bool)

(assert (= bs!757790 d!1341910))

(declare-fun m!5107463 () Bool)

(assert (=> bs!757790 m!5107463))

(assert (=> b!4425917 d!1341910))

(declare-fun bs!757791 () Bool)

(declare-fun d!1341912 () Bool)

(assert (= bs!757791 (and d!1341912 d!1341904)))

(declare-fun lambda!154160 () Int)

(assert (=> bs!757791 (= lambda!154160 lambda!154154)))

(declare-fun bs!757792 () Bool)

(assert (= bs!757792 (and d!1341912 d!1341798)))

(assert (=> bs!757792 (= lambda!154160 lambda!154093)))

(declare-fun bs!757793 () Bool)

(assert (= bs!757793 (and d!1341912 d!1341810)))

(assert (=> bs!757793 (= lambda!154160 lambda!154094)))

(declare-fun bs!757794 () Bool)

(assert (= bs!757794 (and d!1341912 d!1341794)))

(assert (=> bs!757794 (= lambda!154160 lambda!154060)))

(declare-fun bs!757795 () Bool)

(assert (= bs!757795 (and d!1341912 d!1341786)))

(assert (=> bs!757795 (= lambda!154160 lambda!154056)))

(declare-fun bs!757796 () Bool)

(assert (= bs!757796 (and d!1341912 d!1341792)))

(assert (=> bs!757796 (= lambda!154160 lambda!154057)))

(declare-fun bs!757797 () Bool)

(assert (= bs!757797 (and d!1341912 d!1341894)))

(assert (=> bs!757797 (not (= lambda!154160 lambda!154151))))

(declare-fun bs!757798 () Bool)

(assert (= bs!757798 (and d!1341912 start!431828)))

(assert (=> bs!757798 (= lambda!154160 lambda!154050)))

(assert (=> d!1341912 (contains!12092 (extractMap!812 (toList!3489 lm!1616)) key!3717)))

(declare-fun lt!1625546 () Unit!82037)

(declare-fun choose!27961 (ListLongMap!2139 K!10950 Hashable!5145) Unit!82037)

(assert (=> d!1341912 (= lt!1625546 (choose!27961 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1341912 (forall!9566 (toList!3489 lm!1616) lambda!154160)))

(assert (=> d!1341912 (= (lemmaExtractTailMapContainsThenExtractMapDoes!38 lm!1616 key!3717 hashF!1220) lt!1625546)))

(declare-fun bs!757799 () Bool)

(assert (= bs!757799 d!1341912))

(assert (=> bs!757799 m!5106919))

(assert (=> bs!757799 m!5106919))

(declare-fun m!5107465 () Bool)

(assert (=> bs!757799 m!5107465))

(declare-fun m!5107467 () Bool)

(assert (=> bs!757799 m!5107467))

(declare-fun m!5107469 () Bool)

(assert (=> bs!757799 m!5107469))

(assert (=> b!4425918 d!1341912))

(declare-fun d!1341914 () Bool)

(declare-fun res!1829987 () Bool)

(declare-fun e!2755974 () Bool)

(assert (=> d!1341914 (=> res!1829987 e!2755974)))

(assert (=> d!1341914 (= res!1829987 ((_ is Nil!49588) (toList!3489 lm!1616)))))

(assert (=> d!1341914 (= (forall!9566 (toList!3489 lm!1616) lambda!154050) e!2755974)))

(declare-fun b!4426197 () Bool)

(declare-fun e!2755975 () Bool)

(assert (=> b!4426197 (= e!2755974 e!2755975)))

(declare-fun res!1829988 () Bool)

(assert (=> b!4426197 (=> (not res!1829988) (not e!2755975))))

(assert (=> b!4426197 (= res!1829988 (dynLambda!20848 lambda!154050 (h!55275 (toList!3489 lm!1616))))))

(declare-fun b!4426198 () Bool)

(assert (=> b!4426198 (= e!2755975 (forall!9566 (t!356650 (toList!3489 lm!1616)) lambda!154050))))

(assert (= (and d!1341914 (not res!1829987)) b!4426197))

(assert (= (and b!4426197 res!1829988) b!4426198))

(declare-fun b_lambda!143203 () Bool)

(assert (=> (not b_lambda!143203) (not b!4426197)))

(declare-fun m!5107471 () Bool)

(assert (=> b!4426197 m!5107471))

(declare-fun m!5107473 () Bool)

(assert (=> b!4426198 m!5107473))

(assert (=> b!4425929 d!1341914))

(assert (=> start!431828 d!1341914))

(declare-fun d!1341916 () Bool)

(declare-fun isStrictlySorted!234 (List!49712) Bool)

(assert (=> d!1341916 (= (inv!65136 lm!1616) (isStrictlySorted!234 (toList!3489 lm!1616)))))

(declare-fun bs!757800 () Bool)

(assert (= bs!757800 d!1341916))

(declare-fun m!5107475 () Bool)

(assert (=> bs!757800 m!5107475))

(assert (=> start!431828 d!1341916))

(declare-fun d!1341918 () Bool)

(assert (=> d!1341918 (= (eq!409 lt!1625205 lt!1625195) (= (content!7960 (toList!3490 lt!1625205)) (content!7960 (toList!3490 lt!1625195))))))

(declare-fun bs!757801 () Bool)

(assert (= bs!757801 d!1341918))

(declare-fun m!5107477 () Bool)

(assert (=> bs!757801 m!5107477))

(declare-fun m!5107479 () Bool)

(assert (=> bs!757801 m!5107479))

(assert (=> b!4425919 d!1341918))

(declare-fun bs!757802 () Bool)

(declare-fun b!4426199 () Bool)

(assert (= bs!757802 (and b!4426199 d!1341910)))

(declare-fun lambda!154161 () Int)

(assert (=> bs!757802 (not (= lambda!154161 lambda!154157))))

(declare-fun bs!757803 () Bool)

(assert (= bs!757803 (and b!4426199 b!4426168)))

(assert (=> bs!757803 (= (= lt!1625190 lt!1625521) (= lambda!154161 lambda!154147))))

(declare-fun bs!757804 () Bool)

(assert (= bs!757804 (and b!4426199 b!4426165)))

(assert (=> bs!757804 (= (= lt!1625190 lt!1625202) (= lambda!154161 lambda!154145))))

(assert (=> bs!757803 (= (= lt!1625190 lt!1625202) (= lambda!154161 lambda!154146))))

(declare-fun bs!757805 () Bool)

(assert (= bs!757805 (and b!4426199 d!1341842)))

(assert (=> bs!757805 (= (= lt!1625190 lt!1625516) (= lambda!154161 lambda!154148))))

(assert (=> b!4426199 true))

(declare-fun bs!757806 () Bool)

(declare-fun b!4426202 () Bool)

(assert (= bs!757806 (and b!4426202 d!1341910)))

(declare-fun lambda!154162 () Int)

(assert (=> bs!757806 (not (= lambda!154162 lambda!154157))))

(declare-fun bs!757807 () Bool)

(assert (= bs!757807 (and b!4426202 b!4426168)))

(assert (=> bs!757807 (= (= lt!1625190 lt!1625521) (= lambda!154162 lambda!154147))))

(declare-fun bs!757808 () Bool)

(assert (= bs!757808 (and b!4426202 b!4426165)))

(assert (=> bs!757808 (= (= lt!1625190 lt!1625202) (= lambda!154162 lambda!154145))))

(declare-fun bs!757809 () Bool)

(assert (= bs!757809 (and b!4426202 b!4426199)))

(assert (=> bs!757809 (= lambda!154162 lambda!154161)))

(assert (=> bs!757807 (= (= lt!1625190 lt!1625202) (= lambda!154162 lambda!154146))))

(declare-fun bs!757810 () Bool)

(assert (= bs!757810 (and b!4426202 d!1341842)))

(assert (=> bs!757810 (= (= lt!1625190 lt!1625516) (= lambda!154162 lambda!154148))))

(assert (=> b!4426202 true))

(declare-fun lambda!154163 () Int)

(assert (=> bs!757806 (not (= lambda!154163 lambda!154157))))

(declare-fun lt!1625560 () ListMap!2733)

(assert (=> bs!757807 (= (= lt!1625560 lt!1625521) (= lambda!154163 lambda!154147))))

(assert (=> b!4426202 (= (= lt!1625560 lt!1625190) (= lambda!154163 lambda!154162))))

(assert (=> bs!757808 (= (= lt!1625560 lt!1625202) (= lambda!154163 lambda!154145))))

(assert (=> bs!757809 (= (= lt!1625560 lt!1625190) (= lambda!154163 lambda!154161))))

(assert (=> bs!757807 (= (= lt!1625560 lt!1625202) (= lambda!154163 lambda!154146))))

(assert (=> bs!757810 (= (= lt!1625560 lt!1625516) (= lambda!154163 lambda!154148))))

(assert (=> b!4426202 true))

(declare-fun bs!757811 () Bool)

(declare-fun d!1341920 () Bool)

(assert (= bs!757811 (and d!1341920 d!1341910)))

(declare-fun lambda!154164 () Int)

(assert (=> bs!757811 (not (= lambda!154164 lambda!154157))))

(declare-fun bs!757812 () Bool)

(assert (= bs!757812 (and d!1341920 b!4426168)))

(declare-fun lt!1625555 () ListMap!2733)

(assert (=> bs!757812 (= (= lt!1625555 lt!1625521) (= lambda!154164 lambda!154147))))

(declare-fun bs!757813 () Bool)

(assert (= bs!757813 (and d!1341920 b!4426202)))

(assert (=> bs!757813 (= (= lt!1625555 lt!1625190) (= lambda!154164 lambda!154162))))

(declare-fun bs!757814 () Bool)

(assert (= bs!757814 (and d!1341920 b!4426165)))

(assert (=> bs!757814 (= (= lt!1625555 lt!1625202) (= lambda!154164 lambda!154145))))

(declare-fun bs!757815 () Bool)

(assert (= bs!757815 (and d!1341920 b!4426199)))

(assert (=> bs!757815 (= (= lt!1625555 lt!1625190) (= lambda!154164 lambda!154161))))

(assert (=> bs!757812 (= (= lt!1625555 lt!1625202) (= lambda!154164 lambda!154146))))

(declare-fun bs!757816 () Bool)

(assert (= bs!757816 (and d!1341920 d!1341842)))

(assert (=> bs!757816 (= (= lt!1625555 lt!1625516) (= lambda!154164 lambda!154148))))

(assert (=> bs!757813 (= (= lt!1625555 lt!1625560) (= lambda!154164 lambda!154163))))

(assert (=> d!1341920 true))

(declare-fun e!2755976 () ListMap!2733)

(assert (=> b!4426199 (= e!2755976 lt!1625190)))

(declare-fun lt!1625558 () Unit!82037)

(declare-fun call!307992 () Unit!82037)

(assert (=> b!4426199 (= lt!1625558 call!307992)))

(declare-fun call!307994 () Bool)

(assert (=> b!4426199 call!307994))

(declare-fun lt!1625565 () Unit!82037)

(assert (=> b!4426199 (= lt!1625565 lt!1625558)))

(declare-fun call!307993 () Bool)

(assert (=> b!4426199 call!307993))

(declare-fun lt!1625561 () Unit!82037)

(declare-fun Unit!82084 () Unit!82037)

(assert (=> b!4426199 (= lt!1625561 Unit!82084)))

(declare-fun bm!307987 () Bool)

(declare-fun c!753469 () Bool)

(assert (=> bm!307987 (= call!307994 (forall!9568 (toList!3490 lt!1625190) (ite c!753469 lambda!154161 lambda!154162)))))

(declare-fun bm!307988 () Bool)

(assert (=> bm!307988 (= call!307992 (lemmaContainsAllItsOwnKeys!175 lt!1625190))))

(declare-fun e!2755977 () Bool)

(assert (=> d!1341920 e!2755977))

(declare-fun res!1829990 () Bool)

(assert (=> d!1341920 (=> (not res!1829990) (not e!2755977))))

(assert (=> d!1341920 (= res!1829990 (forall!9568 (_2!27986 (h!55275 (toList!3489 lm!1616))) lambda!154164))))

(assert (=> d!1341920 (= lt!1625555 e!2755976)))

(assert (=> d!1341920 (= c!753469 ((_ is Nil!49587) (_2!27986 (h!55275 (toList!3489 lm!1616)))))))

(assert (=> d!1341920 (noDuplicateKeys!751 (_2!27986 (h!55275 (toList!3489 lm!1616))))))

(assert (=> d!1341920 (= (addToMapMapFromBucket!388 (_2!27986 (h!55275 (toList!3489 lm!1616))) lt!1625190) lt!1625555)))

(declare-fun b!4426200 () Bool)

(declare-fun e!2755978 () Bool)

(assert (=> b!4426200 (= e!2755978 (forall!9568 (toList!3490 lt!1625190) lambda!154163))))

(declare-fun b!4426201 () Bool)

(declare-fun res!1829989 () Bool)

(assert (=> b!4426201 (=> (not res!1829989) (not e!2755977))))

(assert (=> b!4426201 (= res!1829989 (forall!9568 (toList!3490 lt!1625190) lambda!154164))))

(assert (=> b!4426202 (= e!2755976 lt!1625560)))

(declare-fun lt!1625562 () ListMap!2733)

(assert (=> b!4426202 (= lt!1625562 (+!1086 lt!1625190 (h!55274 (_2!27986 (h!55275 (toList!3489 lm!1616))))))))

(assert (=> b!4426202 (= lt!1625560 (addToMapMapFromBucket!388 (t!356649 (_2!27986 (h!55275 (toList!3489 lm!1616)))) (+!1086 lt!1625190 (h!55274 (_2!27986 (h!55275 (toList!3489 lm!1616)))))))))

(declare-fun lt!1625552 () Unit!82037)

(assert (=> b!4426202 (= lt!1625552 call!307992)))

(assert (=> b!4426202 call!307994))

(declare-fun lt!1625557 () Unit!82037)

(assert (=> b!4426202 (= lt!1625557 lt!1625552)))

(assert (=> b!4426202 (forall!9568 (toList!3490 lt!1625562) lambda!154163)))

(declare-fun lt!1625553 () Unit!82037)

(declare-fun Unit!82085 () Unit!82037)

(assert (=> b!4426202 (= lt!1625553 Unit!82085)))

(assert (=> b!4426202 (forall!9568 (t!356649 (_2!27986 (h!55275 (toList!3489 lm!1616)))) lambda!154163)))

(declare-fun lt!1625554 () Unit!82037)

(declare-fun Unit!82086 () Unit!82037)

(assert (=> b!4426202 (= lt!1625554 Unit!82086)))

(declare-fun lt!1625549 () Unit!82037)

(declare-fun Unit!82087 () Unit!82037)

(assert (=> b!4426202 (= lt!1625549 Unit!82087)))

(declare-fun lt!1625551 () Unit!82037)

(assert (=> b!4426202 (= lt!1625551 (forallContained!2095 (toList!3490 lt!1625562) lambda!154163 (h!55274 (_2!27986 (h!55275 (toList!3489 lm!1616))))))))

(assert (=> b!4426202 (contains!12092 lt!1625562 (_1!27985 (h!55274 (_2!27986 (h!55275 (toList!3489 lm!1616))))))))

(declare-fun lt!1625547 () Unit!82037)

(declare-fun Unit!82088 () Unit!82037)

(assert (=> b!4426202 (= lt!1625547 Unit!82088)))

(assert (=> b!4426202 (contains!12092 lt!1625560 (_1!27985 (h!55274 (_2!27986 (h!55275 (toList!3489 lm!1616))))))))

(declare-fun lt!1625566 () Unit!82037)

(declare-fun Unit!82089 () Unit!82037)

(assert (=> b!4426202 (= lt!1625566 Unit!82089)))

(assert (=> b!4426202 call!307993))

(declare-fun lt!1625559 () Unit!82037)

(declare-fun Unit!82090 () Unit!82037)

(assert (=> b!4426202 (= lt!1625559 Unit!82090)))

(assert (=> b!4426202 (forall!9568 (toList!3490 lt!1625562) lambda!154163)))

(declare-fun lt!1625556 () Unit!82037)

(declare-fun Unit!82091 () Unit!82037)

(assert (=> b!4426202 (= lt!1625556 Unit!82091)))

(declare-fun lt!1625567 () Unit!82037)

(declare-fun Unit!82092 () Unit!82037)

(assert (=> b!4426202 (= lt!1625567 Unit!82092)))

(declare-fun lt!1625548 () Unit!82037)

(assert (=> b!4426202 (= lt!1625548 (addForallContainsKeyThenBeforeAdding!175 lt!1625190 lt!1625560 (_1!27985 (h!55274 (_2!27986 (h!55275 (toList!3489 lm!1616))))) (_2!27985 (h!55274 (_2!27986 (h!55275 (toList!3489 lm!1616)))))))))

(assert (=> b!4426202 (forall!9568 (toList!3490 lt!1625190) lambda!154163)))

(declare-fun lt!1625564 () Unit!82037)

(assert (=> b!4426202 (= lt!1625564 lt!1625548)))

(assert (=> b!4426202 (forall!9568 (toList!3490 lt!1625190) lambda!154163)))

(declare-fun lt!1625563 () Unit!82037)

(declare-fun Unit!82093 () Unit!82037)

(assert (=> b!4426202 (= lt!1625563 Unit!82093)))

(declare-fun res!1829991 () Bool)

(assert (=> b!4426202 (= res!1829991 (forall!9568 (_2!27986 (h!55275 (toList!3489 lm!1616))) lambda!154163))))

(assert (=> b!4426202 (=> (not res!1829991) (not e!2755978))))

(assert (=> b!4426202 e!2755978))

(declare-fun lt!1625550 () Unit!82037)

(declare-fun Unit!82094 () Unit!82037)

(assert (=> b!4426202 (= lt!1625550 Unit!82094)))

(declare-fun bm!307989 () Bool)

(assert (=> bm!307989 (= call!307993 (forall!9568 (ite c!753469 (toList!3490 lt!1625190) (_2!27986 (h!55275 (toList!3489 lm!1616)))) (ite c!753469 lambda!154161 lambda!154163)))))

(declare-fun b!4426203 () Bool)

(assert (=> b!4426203 (= e!2755977 (invariantList!807 (toList!3490 lt!1625555)))))

(assert (= (and d!1341920 c!753469) b!4426199))

(assert (= (and d!1341920 (not c!753469)) b!4426202))

(assert (= (and b!4426202 res!1829991) b!4426200))

(assert (= (or b!4426199 b!4426202) bm!307988))

(assert (= (or b!4426199 b!4426202) bm!307989))

(assert (= (or b!4426199 b!4426202) bm!307987))

(assert (= (and d!1341920 res!1829990) b!4426201))

(assert (= (and b!4426201 res!1829989) b!4426203))

(declare-fun m!5107481 () Bool)

(assert (=> bm!307989 m!5107481))

(declare-fun m!5107483 () Bool)

(assert (=> b!4426200 m!5107483))

(declare-fun m!5107485 () Bool)

(assert (=> b!4426203 m!5107485))

(declare-fun m!5107487 () Bool)

(assert (=> bm!307988 m!5107487))

(declare-fun m!5107489 () Bool)

(assert (=> bm!307987 m!5107489))

(declare-fun m!5107491 () Bool)

(assert (=> d!1341920 m!5107491))

(assert (=> d!1341920 m!5106941))

(declare-fun m!5107493 () Bool)

(assert (=> b!4426202 m!5107493))

(declare-fun m!5107495 () Bool)

(assert (=> b!4426202 m!5107495))

(declare-fun m!5107497 () Bool)

(assert (=> b!4426202 m!5107497))

(declare-fun m!5107499 () Bool)

(assert (=> b!4426202 m!5107499))

(declare-fun m!5107501 () Bool)

(assert (=> b!4426202 m!5107501))

(declare-fun m!5107503 () Bool)

(assert (=> b!4426202 m!5107503))

(assert (=> b!4426202 m!5107483))

(assert (=> b!4426202 m!5107495))

(assert (=> b!4426202 m!5107483))

(declare-fun m!5107505 () Bool)

(assert (=> b!4426202 m!5107505))

(declare-fun m!5107507 () Bool)

(assert (=> b!4426202 m!5107507))

(assert (=> b!4426202 m!5107505))

(declare-fun m!5107509 () Bool)

(assert (=> b!4426202 m!5107509))

(declare-fun m!5107511 () Bool)

(assert (=> b!4426201 m!5107511))

(assert (=> b!4425919 d!1341920))

(declare-fun b!4426208 () Bool)

(declare-fun e!2755981 () Bool)

(declare-fun tp!1333238 () Bool)

(declare-fun tp!1333239 () Bool)

(assert (=> b!4426208 (= e!2755981 (and tp!1333238 tp!1333239))))

(assert (=> b!4425924 (= tp!1333223 e!2755981)))

(assert (= (and b!4425924 ((_ is Cons!49588) (toList!3489 lm!1616))) b!4426208))

(declare-fun e!2755984 () Bool)

(declare-fun tp!1333242 () Bool)

(declare-fun b!4426213 () Bool)

(assert (=> b!4426213 (= e!2755984 (and tp_is_empty!26251 tp_is_empty!26249 tp!1333242))))

(assert (=> b!4425935 (= tp!1333224 e!2755984)))

(assert (= (and b!4425935 ((_ is Cons!49587) (t!356649 newBucket!194))) b!4426213))

(declare-fun b_lambda!143205 () Bool)

(assert (= b_lambda!143191 (or start!431828 b_lambda!143205)))

(declare-fun bs!757817 () Bool)

(declare-fun d!1341922 () Bool)

(assert (= bs!757817 (and d!1341922 start!431828)))

(assert (=> bs!757817 (= (dynLambda!20848 lambda!154050 (tuple2!49385 hash!366 newBucket!194)) (noDuplicateKeys!751 (_2!27986 (tuple2!49385 hash!366 newBucket!194))))))

(declare-fun m!5107513 () Bool)

(assert (=> bs!757817 m!5107513))

(assert (=> b!4426082 d!1341922))

(declare-fun b_lambda!143207 () Bool)

(assert (= b_lambda!143203 (or start!431828 b_lambda!143207)))

(declare-fun bs!757818 () Bool)

(declare-fun d!1341924 () Bool)

(assert (= bs!757818 (and d!1341924 start!431828)))

(assert (=> bs!757818 (= (dynLambda!20848 lambda!154050 (h!55275 (toList!3489 lm!1616))) (noDuplicateKeys!751 (_2!27986 (h!55275 (toList!3489 lm!1616)))))))

(assert (=> bs!757818 m!5106941))

(assert (=> b!4426197 d!1341924))

(declare-fun b_lambda!143209 () Bool)

(assert (= b_lambda!143189 (or start!431828 b_lambda!143209)))

(declare-fun bs!757819 () Bool)

(declare-fun d!1341926 () Bool)

(assert (= bs!757819 (and d!1341926 start!431828)))

(assert (=> bs!757819 (= (dynLambda!20848 lambda!154050 (h!55275 (toList!3489 lt!1625196))) (noDuplicateKeys!751 (_2!27986 (h!55275 (toList!3489 lt!1625196)))))))

(declare-fun m!5107515 () Bool)

(assert (=> bs!757819 m!5107515))

(assert (=> b!4426072 d!1341926))

(check-sat (not b!4426073) (not b!4425973) (not bm!307986) (not d!1341824) (not d!1341842) (not b!4425983) (not d!1341820) (not bm!307989) (not b!4425991) (not d!1341908) (not b!4426060) (not bm!307985) (not d!1341790) (not b!4426198) tp_is_empty!26249 (not b!4426166) (not d!1341916) (not b!4426016) (not b_lambda!143205) (not b!4426178) (not b!4425978) (not b!4426190) (not b!4426192) (not bs!757818) (not b!4426058) (not b!4426184) (not d!1341794) (not d!1341912) (not b!4426054) (not bm!307960) (not d!1341772) (not b!4426183) (not b!4426059) (not b!4425997) (not b!4426078) (not d!1341894) (not d!1341808) (not b!4425974) (not d!1341806) (not b!4426056) (not b!4426169) (not bm!307988) (not b!4426201) (not b!4426200) (not b!4425971) (not b!4426057) (not bs!757819) (not b!4426061) (not bs!757817) (not b!4426084) (not b_lambda!143207) (not b!4425975) (not b!4425990) tp_is_empty!26251 (not b!4426089) (not d!1341786) (not d!1341788) (not b_lambda!143209) (not b!4426167) (not d!1341828) (not b!4426203) (not b!4426213) (not b!4426202) (not d!1341918) (not d!1341906) (not b!4426083) (not b!4426208) (not b!4426077) (not d!1341892) (not b!4426017) (not d!1341798) (not bm!307987) (not d!1341902) (not b!4425989) (not d!1341910) (not b!4426168) (not d!1341832) (not d!1341792) (not d!1341920) (not d!1341796) (not b!4426180) (not bm!307973) (not d!1341814) (not b!4425976) (not d!1341826) (not b!4425977) (not d!1341810) (not b!4426045) (not d!1341904) (not b!4426090) (not bm!307984))
(check-sat)
