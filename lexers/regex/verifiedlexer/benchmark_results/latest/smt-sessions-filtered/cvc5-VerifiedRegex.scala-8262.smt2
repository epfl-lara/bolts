; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!429194 () Bool)

(assert start!429194)

(declare-fun e!2747010 () Bool)

(declare-datatypes ((V!10959 0))(
  ( (V!10960 (val!16841 Int)) )
))
(declare-fun newValue!93 () V!10959)

(declare-datatypes ((K!10713 0))(
  ( (K!10714 (val!16842 Int)) )
))
(declare-fun key!3717 () K!10713)

(declare-datatypes ((tuple2!49002 0))(
  ( (tuple2!49003 (_1!27795 K!10713) (_2!27795 V!10959)) )
))
(declare-datatypes ((List!49479 0))(
  ( (Nil!49355) (Cons!49355 (h!54996 tuple2!49002) (t!356417 List!49479)) )
))
(declare-fun newBucket!194 () List!49479)

(declare-datatypes ((tuple2!49004 0))(
  ( (tuple2!49005 (_1!27796 (_ BitVec 64)) (_2!27796 List!49479)) )
))
(declare-datatypes ((List!49480 0))(
  ( (Nil!49356) (Cons!49356 (h!54997 tuple2!49004) (t!356418 List!49480)) )
))
(declare-datatypes ((ListLongMap!1949 0))(
  ( (ListLongMap!1950 (toList!3299 List!49480)) )
))
(declare-fun lm!1616 () ListLongMap!1949)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun b!4411104 () Bool)

(declare-fun apply!11508 (ListLongMap!1949 (_ BitVec 64)) List!49479)

(assert (=> b!4411104 (= e!2747010 (= newBucket!194 (Cons!49355 (tuple2!49003 key!3717 newValue!93) (apply!11508 lm!1616 hash!366))))))

(declare-fun b!4411105 () Bool)

(declare-fun res!1820818 () Bool)

(declare-fun e!2747012 () Bool)

(assert (=> b!4411105 (=> (not res!1820818) (not e!2747012))))

(declare-datatypes ((Hashable!5050 0))(
  ( (HashableExt!5049 (__x!30753 Int)) )
))
(declare-fun hashF!1220 () Hashable!5050)

(declare-fun allKeysSameHash!616 (List!49479 (_ BitVec 64) Hashable!5050) Bool)

(assert (=> b!4411105 (= res!1820818 (allKeysSameHash!616 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4411106 () Bool)

(declare-fun res!1820820 () Bool)

(assert (=> b!4411106 (=> (not res!1820820) (not e!2747012))))

(declare-datatypes ((ListMap!2543 0))(
  ( (ListMap!2544 (toList!3300 List!49479)) )
))
(declare-fun contains!11784 (ListMap!2543 K!10713) Bool)

(declare-fun extractMap!717 (List!49480) ListMap!2543)

(assert (=> b!4411106 (= res!1820820 (not (contains!11784 (extractMap!717 (toList!3299 lm!1616)) key!3717)))))

(declare-fun e!2747013 () Bool)

(declare-fun lt!1614004 () Bool)

(declare-fun b!4411107 () Bool)

(assert (=> b!4411107 (= e!2747013 (and (not lt!1614004) (= newBucket!194 (Cons!49355 (tuple2!49003 key!3717 newValue!93) Nil!49355))))))

(declare-fun b!4411108 () Bool)

(declare-fun res!1820816 () Bool)

(declare-fun e!2747009 () Bool)

(assert (=> b!4411108 (=> (not res!1820816) (not e!2747009))))

(declare-fun lambda!150692 () Int)

(declare-fun forall!9418 (List!49480 Int) Bool)

(assert (=> b!4411108 (= res!1820816 (forall!9418 (toList!3299 lm!1616) lambda!150692))))

(declare-fun b!4411109 () Bool)

(declare-fun res!1820812 () Bool)

(assert (=> b!4411109 (=> (not res!1820812) (not e!2747012))))

(declare-fun hash!1953 (Hashable!5050 K!10713) (_ BitVec 64))

(assert (=> b!4411109 (= res!1820812 (= (hash!1953 hashF!1220 key!3717) hash!366))))

(declare-fun b!4411110 () Bool)

(declare-fun res!1820817 () Bool)

(assert (=> b!4411110 (=> (not res!1820817) (not e!2747009))))

(declare-fun noDuplicateKeys!656 (List!49479) Bool)

(assert (=> b!4411110 (= res!1820817 (noDuplicateKeys!656 newBucket!194))))

(declare-fun b!4411111 () Bool)

(declare-fun e!2747014 () Bool)

(assert (=> b!4411111 (= e!2747009 (not e!2747014))))

(declare-fun res!1820819 () Bool)

(assert (=> b!4411111 (=> res!1820819 e!2747014)))

(declare-fun lt!1614002 () ListLongMap!1949)

(assert (=> b!4411111 (= res!1820819 (not (forall!9418 (toList!3299 lt!1614002) lambda!150692)))))

(assert (=> b!4411111 (forall!9418 (toList!3299 lt!1614002) lambda!150692)))

(declare-fun +!921 (ListLongMap!1949 tuple2!49004) ListLongMap!1949)

(assert (=> b!4411111 (= lt!1614002 (+!921 lm!1616 (tuple2!49005 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!80421 0))(
  ( (Unit!80422) )
))
(declare-fun lt!1614003 () Unit!80421)

(declare-fun addValidProp!300 (ListLongMap!1949 Int (_ BitVec 64) List!49479) Unit!80421)

(assert (=> b!4411111 (= lt!1614003 (addValidProp!300 lm!1616 lambda!150692 hash!366 newBucket!194))))

(declare-fun b!4411113 () Bool)

(declare-fun e!2747015 () Bool)

(declare-fun tp!1332184 () Bool)

(assert (=> b!4411113 (= e!2747015 tp!1332184)))

(declare-fun b!4411114 () Bool)

(declare-fun lt!1614001 () Bool)

(assert (=> b!4411114 (= e!2747014 (or (not (is-Cons!49356 (toList!3299 lm!1616))) (not (= (_1!27796 (h!54997 (toList!3299 lm!1616))) hash!366)) lt!1614001 (not (= (toList!3299 lt!1614002) Nil!49356))))))

(declare-fun b!4411115 () Bool)

(assert (=> b!4411115 (= e!2747012 e!2747009)))

(declare-fun res!1820811 () Bool)

(assert (=> b!4411115 (=> (not res!1820811) (not e!2747009))))

(assert (=> b!4411115 (= res!1820811 e!2747013)))

(declare-fun res!1820813 () Bool)

(assert (=> b!4411115 (=> res!1820813 e!2747013)))

(assert (=> b!4411115 (= res!1820813 e!2747010)))

(declare-fun res!1820814 () Bool)

(assert (=> b!4411115 (=> (not res!1820814) (not e!2747010))))

(assert (=> b!4411115 (= res!1820814 (not lt!1614001))))

(assert (=> b!4411115 (= lt!1614001 (not lt!1614004))))

(declare-fun contains!11785 (ListLongMap!1949 (_ BitVec 64)) Bool)

(assert (=> b!4411115 (= lt!1614004 (contains!11785 lm!1616 hash!366))))

(declare-fun b!4411116 () Bool)

(declare-fun res!1820821 () Bool)

(assert (=> b!4411116 (=> (not res!1820821) (not e!2747012))))

(declare-fun allKeysSameHashInMap!762 (ListLongMap!1949 Hashable!5050) Bool)

(assert (=> b!4411116 (= res!1820821 (allKeysSameHashInMap!762 lm!1616 hashF!1220))))

(declare-fun e!2747011 () Bool)

(declare-fun b!4411112 () Bool)

(declare-fun tp_is_empty!25871 () Bool)

(declare-fun tp_is_empty!25869 () Bool)

(declare-fun tp!1332183 () Bool)

(assert (=> b!4411112 (= e!2747011 (and tp_is_empty!25871 tp_is_empty!25869 tp!1332183))))

(declare-fun res!1820815 () Bool)

(assert (=> start!429194 (=> (not res!1820815) (not e!2747012))))

(assert (=> start!429194 (= res!1820815 (forall!9418 (toList!3299 lm!1616) lambda!150692))))

(assert (=> start!429194 e!2747012))

(assert (=> start!429194 tp_is_empty!25869))

(assert (=> start!429194 tp_is_empty!25871))

(assert (=> start!429194 e!2747011))

(declare-fun inv!64900 (ListLongMap!1949) Bool)

(assert (=> start!429194 (and (inv!64900 lm!1616) e!2747015)))

(assert (=> start!429194 true))

(assert (= (and start!429194 res!1820815) b!4411116))

(assert (= (and b!4411116 res!1820821) b!4411109))

(assert (= (and b!4411109 res!1820812) b!4411105))

(assert (= (and b!4411105 res!1820818) b!4411106))

(assert (= (and b!4411106 res!1820820) b!4411115))

(assert (= (and b!4411115 res!1820814) b!4411104))

(assert (= (and b!4411115 (not res!1820813)) b!4411107))

(assert (= (and b!4411115 res!1820811) b!4411110))

(assert (= (and b!4411110 res!1820817) b!4411108))

(assert (= (and b!4411108 res!1820816) b!4411111))

(assert (= (and b!4411111 (not res!1820819)) b!4411114))

(assert (= (and start!429194 (is-Cons!49355 newBucket!194)) b!4411112))

(assert (= start!429194 b!4411113))

(declare-fun m!5086815 () Bool)

(assert (=> b!4411104 m!5086815))

(declare-fun m!5086817 () Bool)

(assert (=> b!4411116 m!5086817))

(declare-fun m!5086819 () Bool)

(assert (=> b!4411106 m!5086819))

(assert (=> b!4411106 m!5086819))

(declare-fun m!5086821 () Bool)

(assert (=> b!4411106 m!5086821))

(declare-fun m!5086823 () Bool)

(assert (=> b!4411115 m!5086823))

(declare-fun m!5086825 () Bool)

(assert (=> b!4411110 m!5086825))

(declare-fun m!5086827 () Bool)

(assert (=> b!4411109 m!5086827))

(declare-fun m!5086829 () Bool)

(assert (=> b!4411111 m!5086829))

(assert (=> b!4411111 m!5086829))

(declare-fun m!5086831 () Bool)

(assert (=> b!4411111 m!5086831))

(declare-fun m!5086833 () Bool)

(assert (=> b!4411111 m!5086833))

(declare-fun m!5086835 () Bool)

(assert (=> b!4411108 m!5086835))

(declare-fun m!5086837 () Bool)

(assert (=> b!4411105 m!5086837))

(assert (=> start!429194 m!5086835))

(declare-fun m!5086839 () Bool)

(assert (=> start!429194 m!5086839))

(push 1)

(assert (not b!4411106))

(assert (not b!4411109))

(assert (not b!4411115))

(assert (not b!4411104))

(assert (not b!4411110))

(assert (not b!4411116))

(assert (not start!429194))

(assert tp_is_empty!25869)

(assert (not b!4411111))

(assert (not b!4411112))

(assert (not b!4411105))

(assert (not b!4411113))

(assert tp_is_empty!25871)

(assert (not b!4411108))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!752711 () Bool)

(declare-fun d!1336713 () Bool)

(assert (= bs!752711 (and d!1336713 start!429194)))

(declare-fun lambda!150704 () Int)

(assert (=> bs!752711 (not (= lambda!150704 lambda!150692))))

(assert (=> d!1336713 true))

(assert (=> d!1336713 (= (allKeysSameHashInMap!762 lm!1616 hashF!1220) (forall!9418 (toList!3299 lm!1616) lambda!150704))))

(declare-fun bs!752712 () Bool)

(assert (= bs!752712 d!1336713))

(declare-fun m!5086867 () Bool)

(assert (=> bs!752712 m!5086867))

(assert (=> b!4411116 d!1336713))

(declare-fun d!1336715 () Bool)

(assert (=> d!1336715 true))

(assert (=> d!1336715 true))

(declare-fun lambda!150707 () Int)

(declare-fun forall!9420 (List!49479 Int) Bool)

(assert (=> d!1336715 (= (allKeysSameHash!616 newBucket!194 hash!366 hashF!1220) (forall!9420 newBucket!194 lambda!150707))))

(declare-fun bs!752713 () Bool)

(assert (= bs!752713 d!1336715))

(declare-fun m!5086869 () Bool)

(assert (=> bs!752713 m!5086869))

(assert (=> b!4411105 d!1336715))

(declare-fun d!1336717 () Bool)

(declare-fun e!2747059 () Bool)

(assert (=> d!1336717 e!2747059))

(declare-fun res!1820869 () Bool)

(assert (=> d!1336717 (=> res!1820869 e!2747059)))

(declare-fun e!2747056 () Bool)

(assert (=> d!1336717 (= res!1820869 e!2747056)))

(declare-fun res!1820868 () Bool)

(assert (=> d!1336717 (=> (not res!1820868) (not e!2747056))))

(declare-fun lt!1614033 () Bool)

(assert (=> d!1336717 (= res!1820868 (not lt!1614033))))

(declare-fun lt!1614034 () Bool)

(assert (=> d!1336717 (= lt!1614033 lt!1614034)))

(declare-fun lt!1614040 () Unit!80421)

(declare-fun e!2747057 () Unit!80421)

(assert (=> d!1336717 (= lt!1614040 e!2747057)))

(declare-fun c!751300 () Bool)

(assert (=> d!1336717 (= c!751300 lt!1614034)))

(declare-fun containsKey!986 (List!49479 K!10713) Bool)

(assert (=> d!1336717 (= lt!1614034 (containsKey!986 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) key!3717))))

(assert (=> d!1336717 (= (contains!11784 (extractMap!717 (toList!3299 lm!1616)) key!3717) lt!1614033)))

(declare-fun b!4411186 () Bool)

(declare-fun e!2747055 () Bool)

(assert (=> b!4411186 (= e!2747059 e!2747055)))

(declare-fun res!1820867 () Bool)

(assert (=> b!4411186 (=> (not res!1820867) (not e!2747055))))

(declare-datatypes ((Option!10641 0))(
  ( (None!10640) (Some!10640 (v!43792 V!10959)) )
))
(declare-fun isDefined!7934 (Option!10641) Bool)

(declare-fun getValueByKey!627 (List!49479 K!10713) Option!10641)

(assert (=> b!4411186 (= res!1820867 (isDefined!7934 (getValueByKey!627 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) key!3717)))))

(declare-fun b!4411187 () Bool)

(declare-fun lt!1614037 () Unit!80421)

(assert (=> b!4411187 (= e!2747057 lt!1614037)))

(declare-fun lt!1614036 () Unit!80421)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!537 (List!49479 K!10713) Unit!80421)

(assert (=> b!4411187 (= lt!1614036 (lemmaContainsKeyImpliesGetValueByKeyDefined!537 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) key!3717))))

(assert (=> b!4411187 (isDefined!7934 (getValueByKey!627 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) key!3717))))

(declare-fun lt!1614039 () Unit!80421)

(assert (=> b!4411187 (= lt!1614039 lt!1614036)))

(declare-fun lemmaInListThenGetKeysListContains!208 (List!49479 K!10713) Unit!80421)

(assert (=> b!4411187 (= lt!1614037 (lemmaInListThenGetKeysListContains!208 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) key!3717))))

(declare-fun call!307039 () Bool)

(assert (=> b!4411187 call!307039))

(declare-fun bm!307034 () Bool)

(declare-datatypes ((List!49483 0))(
  ( (Nil!49359) (Cons!49359 (h!55002 K!10713) (t!356421 List!49483)) )
))
(declare-fun e!2747060 () List!49483)

(declare-fun contains!11788 (List!49483 K!10713) Bool)

(assert (=> bm!307034 (= call!307039 (contains!11788 e!2747060 key!3717))))

(declare-fun c!751298 () Bool)

(assert (=> bm!307034 (= c!751298 c!751300)))

(declare-fun b!4411188 () Bool)

(declare-fun keys!16795 (ListMap!2543) List!49483)

(assert (=> b!4411188 (= e!2747055 (contains!11788 (keys!16795 (extractMap!717 (toList!3299 lm!1616))) key!3717))))

(declare-fun b!4411189 () Bool)

(declare-fun e!2747058 () Unit!80421)

(declare-fun Unit!80425 () Unit!80421)

(assert (=> b!4411189 (= e!2747058 Unit!80425)))

(declare-fun b!4411190 () Bool)

(declare-fun getKeysList!211 (List!49479) List!49483)

(assert (=> b!4411190 (= e!2747060 (getKeysList!211 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))))))

(declare-fun b!4411191 () Bool)

(assert (=> b!4411191 (= e!2747056 (not (contains!11788 (keys!16795 (extractMap!717 (toList!3299 lm!1616))) key!3717)))))

(declare-fun b!4411192 () Bool)

(assert (=> b!4411192 (= e!2747060 (keys!16795 (extractMap!717 (toList!3299 lm!1616))))))

(declare-fun b!4411193 () Bool)

(assert (=> b!4411193 (= e!2747057 e!2747058)))

(declare-fun c!751299 () Bool)

(assert (=> b!4411193 (= c!751299 call!307039)))

(declare-fun b!4411194 () Bool)

(assert (=> b!4411194 false))

(declare-fun lt!1614035 () Unit!80421)

(declare-fun lt!1614038 () Unit!80421)

(assert (=> b!4411194 (= lt!1614035 lt!1614038)))

(assert (=> b!4411194 (containsKey!986 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!209 (List!49479 K!10713) Unit!80421)

(assert (=> b!4411194 (= lt!1614038 (lemmaInGetKeysListThenContainsKey!209 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) key!3717))))

(declare-fun Unit!80426 () Unit!80421)

(assert (=> b!4411194 (= e!2747058 Unit!80426)))

(assert (= (and d!1336717 c!751300) b!4411187))

(assert (= (and d!1336717 (not c!751300)) b!4411193))

(assert (= (and b!4411193 c!751299) b!4411194))

(assert (= (and b!4411193 (not c!751299)) b!4411189))

(assert (= (or b!4411187 b!4411193) bm!307034))

(assert (= (and bm!307034 c!751298) b!4411190))

(assert (= (and bm!307034 (not c!751298)) b!4411192))

(assert (= (and d!1336717 res!1820868) b!4411191))

(assert (= (and d!1336717 (not res!1820869)) b!4411186))

(assert (= (and b!4411186 res!1820867) b!4411188))

(declare-fun m!5086877 () Bool)

(assert (=> b!4411186 m!5086877))

(assert (=> b!4411186 m!5086877))

(declare-fun m!5086879 () Bool)

(assert (=> b!4411186 m!5086879))

(declare-fun m!5086881 () Bool)

(assert (=> d!1336717 m!5086881))

(assert (=> b!4411188 m!5086819))

(declare-fun m!5086883 () Bool)

(assert (=> b!4411188 m!5086883))

(assert (=> b!4411188 m!5086883))

(declare-fun m!5086885 () Bool)

(assert (=> b!4411188 m!5086885))

(assert (=> b!4411191 m!5086819))

(assert (=> b!4411191 m!5086883))

(assert (=> b!4411191 m!5086883))

(assert (=> b!4411191 m!5086885))

(assert (=> b!4411192 m!5086819))

(assert (=> b!4411192 m!5086883))

(assert (=> b!4411194 m!5086881))

(declare-fun m!5086887 () Bool)

(assert (=> b!4411194 m!5086887))

(declare-fun m!5086889 () Bool)

(assert (=> b!4411190 m!5086889))

(declare-fun m!5086891 () Bool)

(assert (=> b!4411187 m!5086891))

(assert (=> b!4411187 m!5086877))

(assert (=> b!4411187 m!5086877))

(assert (=> b!4411187 m!5086879))

(declare-fun m!5086893 () Bool)

(assert (=> b!4411187 m!5086893))

(declare-fun m!5086895 () Bool)

(assert (=> bm!307034 m!5086895))

(assert (=> b!4411106 d!1336717))

(declare-fun bs!752716 () Bool)

(declare-fun d!1336725 () Bool)

(assert (= bs!752716 (and d!1336725 start!429194)))

(declare-fun lambda!150713 () Int)

(assert (=> bs!752716 (= lambda!150713 lambda!150692)))

(declare-fun bs!752717 () Bool)

(assert (= bs!752717 (and d!1336725 d!1336713)))

(assert (=> bs!752717 (not (= lambda!150713 lambda!150704))))

(declare-fun lt!1614043 () ListMap!2543)

(declare-fun invariantList!764 (List!49479) Bool)

(assert (=> d!1336725 (invariantList!764 (toList!3300 lt!1614043))))

(declare-fun e!2747063 () ListMap!2543)

(assert (=> d!1336725 (= lt!1614043 e!2747063)))

(declare-fun c!751303 () Bool)

(assert (=> d!1336725 (= c!751303 (is-Cons!49356 (toList!3299 lm!1616)))))

(assert (=> d!1336725 (forall!9418 (toList!3299 lm!1616) lambda!150713)))

(assert (=> d!1336725 (= (extractMap!717 (toList!3299 lm!1616)) lt!1614043)))

(declare-fun b!4411203 () Bool)

(declare-fun addToMapMapFromBucket!315 (List!49479 ListMap!2543) ListMap!2543)

(assert (=> b!4411203 (= e!2747063 (addToMapMapFromBucket!315 (_2!27796 (h!54997 (toList!3299 lm!1616))) (extractMap!717 (t!356418 (toList!3299 lm!1616)))))))

(declare-fun b!4411204 () Bool)

(assert (=> b!4411204 (= e!2747063 (ListMap!2544 Nil!49355))))

(assert (= (and d!1336725 c!751303) b!4411203))

(assert (= (and d!1336725 (not c!751303)) b!4411204))

(declare-fun m!5086899 () Bool)

(assert (=> d!1336725 m!5086899))

(declare-fun m!5086901 () Bool)

(assert (=> d!1336725 m!5086901))

(declare-fun m!5086903 () Bool)

(assert (=> b!4411203 m!5086903))

(assert (=> b!4411203 m!5086903))

(declare-fun m!5086905 () Bool)

(assert (=> b!4411203 m!5086905))

(assert (=> b!4411106 d!1336725))

(declare-fun d!1336729 () Bool)

(declare-fun res!1820874 () Bool)

(declare-fun e!2747068 () Bool)

(assert (=> d!1336729 (=> res!1820874 e!2747068)))

(assert (=> d!1336729 (= res!1820874 (is-Nil!49356 (toList!3299 lt!1614002)))))

(assert (=> d!1336729 (= (forall!9418 (toList!3299 lt!1614002) lambda!150692) e!2747068)))

(declare-fun b!4411209 () Bool)

(declare-fun e!2747069 () Bool)

(assert (=> b!4411209 (= e!2747068 e!2747069)))

(declare-fun res!1820875 () Bool)

(assert (=> b!4411209 (=> (not res!1820875) (not e!2747069))))

(declare-fun dynLambda!20789 (Int tuple2!49004) Bool)

(assert (=> b!4411209 (= res!1820875 (dynLambda!20789 lambda!150692 (h!54997 (toList!3299 lt!1614002))))))

(declare-fun b!4411210 () Bool)

(assert (=> b!4411210 (= e!2747069 (forall!9418 (t!356418 (toList!3299 lt!1614002)) lambda!150692))))

(assert (= (and d!1336729 (not res!1820874)) b!4411209))

(assert (= (and b!4411209 res!1820875) b!4411210))

(declare-fun b_lambda!141833 () Bool)

(assert (=> (not b_lambda!141833) (not b!4411209)))

(declare-fun m!5086907 () Bool)

(assert (=> b!4411209 m!5086907))

(declare-fun m!5086909 () Bool)

(assert (=> b!4411210 m!5086909))

(assert (=> b!4411111 d!1336729))

(declare-fun d!1336731 () Bool)

(declare-fun e!2747072 () Bool)

(assert (=> d!1336731 e!2747072))

(declare-fun res!1820881 () Bool)

(assert (=> d!1336731 (=> (not res!1820881) (not e!2747072))))

(declare-fun lt!1614054 () ListLongMap!1949)

(assert (=> d!1336731 (= res!1820881 (contains!11785 lt!1614054 (_1!27796 (tuple2!49005 hash!366 newBucket!194))))))

(declare-fun lt!1614052 () List!49480)

(assert (=> d!1336731 (= lt!1614054 (ListLongMap!1950 lt!1614052))))

(declare-fun lt!1614053 () Unit!80421)

(declare-fun lt!1614055 () Unit!80421)

(assert (=> d!1336731 (= lt!1614053 lt!1614055)))

(declare-datatypes ((Option!10642 0))(
  ( (None!10641) (Some!10641 (v!43793 List!49479)) )
))
(declare-fun getValueByKey!628 (List!49480 (_ BitVec 64)) Option!10642)

(assert (=> d!1336731 (= (getValueByKey!628 lt!1614052 (_1!27796 (tuple2!49005 hash!366 newBucket!194))) (Some!10641 (_2!27796 (tuple2!49005 hash!366 newBucket!194))))))

(declare-fun lemmaContainsTupThenGetReturnValue!372 (List!49480 (_ BitVec 64) List!49479) Unit!80421)

(assert (=> d!1336731 (= lt!1614055 (lemmaContainsTupThenGetReturnValue!372 lt!1614052 (_1!27796 (tuple2!49005 hash!366 newBucket!194)) (_2!27796 (tuple2!49005 hash!366 newBucket!194))))))

(declare-fun insertStrictlySorted!218 (List!49480 (_ BitVec 64) List!49479) List!49480)

(assert (=> d!1336731 (= lt!1614052 (insertStrictlySorted!218 (toList!3299 lm!1616) (_1!27796 (tuple2!49005 hash!366 newBucket!194)) (_2!27796 (tuple2!49005 hash!366 newBucket!194))))))

(assert (=> d!1336731 (= (+!921 lm!1616 (tuple2!49005 hash!366 newBucket!194)) lt!1614054)))

(declare-fun b!4411215 () Bool)

(declare-fun res!1820880 () Bool)

(assert (=> b!4411215 (=> (not res!1820880) (not e!2747072))))

(assert (=> b!4411215 (= res!1820880 (= (getValueByKey!628 (toList!3299 lt!1614054) (_1!27796 (tuple2!49005 hash!366 newBucket!194))) (Some!10641 (_2!27796 (tuple2!49005 hash!366 newBucket!194)))))))

(declare-fun b!4411216 () Bool)

(declare-fun contains!11789 (List!49480 tuple2!49004) Bool)

(assert (=> b!4411216 (= e!2747072 (contains!11789 (toList!3299 lt!1614054) (tuple2!49005 hash!366 newBucket!194)))))

(assert (= (and d!1336731 res!1820881) b!4411215))

(assert (= (and b!4411215 res!1820880) b!4411216))

(declare-fun m!5086911 () Bool)

(assert (=> d!1336731 m!5086911))

(declare-fun m!5086913 () Bool)

(assert (=> d!1336731 m!5086913))

(declare-fun m!5086915 () Bool)

(assert (=> d!1336731 m!5086915))

(declare-fun m!5086917 () Bool)

(assert (=> d!1336731 m!5086917))

(declare-fun m!5086919 () Bool)

(assert (=> b!4411215 m!5086919))

(declare-fun m!5086921 () Bool)

(assert (=> b!4411216 m!5086921))

(assert (=> b!4411111 d!1336731))

(declare-fun d!1336733 () Bool)

(assert (=> d!1336733 (forall!9418 (toList!3299 (+!921 lm!1616 (tuple2!49005 hash!366 newBucket!194))) lambda!150692)))

(declare-fun lt!1614058 () Unit!80421)

(declare-fun choose!27747 (ListLongMap!1949 Int (_ BitVec 64) List!49479) Unit!80421)

(assert (=> d!1336733 (= lt!1614058 (choose!27747 lm!1616 lambda!150692 hash!366 newBucket!194))))

(declare-fun e!2747075 () Bool)

(assert (=> d!1336733 e!2747075))

(declare-fun res!1820884 () Bool)

(assert (=> d!1336733 (=> (not res!1820884) (not e!2747075))))

(assert (=> d!1336733 (= res!1820884 (forall!9418 (toList!3299 lm!1616) lambda!150692))))

(assert (=> d!1336733 (= (addValidProp!300 lm!1616 lambda!150692 hash!366 newBucket!194) lt!1614058)))

(declare-fun b!4411220 () Bool)

(assert (=> b!4411220 (= e!2747075 (dynLambda!20789 lambda!150692 (tuple2!49005 hash!366 newBucket!194)))))

(assert (= (and d!1336733 res!1820884) b!4411220))

(declare-fun b_lambda!141835 () Bool)

(assert (=> (not b_lambda!141835) (not b!4411220)))

(assert (=> d!1336733 m!5086831))

(declare-fun m!5086923 () Bool)

(assert (=> d!1336733 m!5086923))

(declare-fun m!5086925 () Bool)

(assert (=> d!1336733 m!5086925))

(assert (=> d!1336733 m!5086835))

(declare-fun m!5086927 () Bool)

(assert (=> b!4411220 m!5086927))

(assert (=> b!4411111 d!1336733))

(declare-fun d!1336735 () Bool)

(declare-fun get!16072 (Option!10642) List!49479)

(assert (=> d!1336735 (= (apply!11508 lm!1616 hash!366) (get!16072 (getValueByKey!628 (toList!3299 lm!1616) hash!366)))))

(declare-fun bs!752718 () Bool)

(assert (= bs!752718 d!1336735))

(declare-fun m!5086929 () Bool)

(assert (=> bs!752718 m!5086929))

(assert (=> bs!752718 m!5086929))

(declare-fun m!5086931 () Bool)

(assert (=> bs!752718 m!5086931))

(assert (=> b!4411104 d!1336735))

(declare-fun d!1336737 () Bool)

(declare-fun hash!1955 (Hashable!5050 K!10713) (_ BitVec 64))

(assert (=> d!1336737 (= (hash!1953 hashF!1220 key!3717) (hash!1955 hashF!1220 key!3717))))

(declare-fun bs!752719 () Bool)

(assert (= bs!752719 d!1336737))

(declare-fun m!5086933 () Bool)

(assert (=> bs!752719 m!5086933))

(assert (=> b!4411109 d!1336737))

(declare-fun d!1336739 () Bool)

(declare-fun res!1820885 () Bool)

(declare-fun e!2747076 () Bool)

(assert (=> d!1336739 (=> res!1820885 e!2747076)))

(assert (=> d!1336739 (= res!1820885 (is-Nil!49356 (toList!3299 lm!1616)))))

(assert (=> d!1336739 (= (forall!9418 (toList!3299 lm!1616) lambda!150692) e!2747076)))

(declare-fun b!4411221 () Bool)

(declare-fun e!2747077 () Bool)

(assert (=> b!4411221 (= e!2747076 e!2747077)))

(declare-fun res!1820886 () Bool)

(assert (=> b!4411221 (=> (not res!1820886) (not e!2747077))))

(assert (=> b!4411221 (= res!1820886 (dynLambda!20789 lambda!150692 (h!54997 (toList!3299 lm!1616))))))

(declare-fun b!4411222 () Bool)

(assert (=> b!4411222 (= e!2747077 (forall!9418 (t!356418 (toList!3299 lm!1616)) lambda!150692))))

(assert (= (and d!1336739 (not res!1820885)) b!4411221))

(assert (= (and b!4411221 res!1820886) b!4411222))

(declare-fun b_lambda!141837 () Bool)

(assert (=> (not b_lambda!141837) (not b!4411221)))

(declare-fun m!5086935 () Bool)

(assert (=> b!4411221 m!5086935))

(declare-fun m!5086937 () Bool)

(assert (=> b!4411222 m!5086937))

(assert (=> start!429194 d!1336739))

(declare-fun d!1336741 () Bool)

(declare-fun isStrictlySorted!190 (List!49480) Bool)

(assert (=> d!1336741 (= (inv!64900 lm!1616) (isStrictlySorted!190 (toList!3299 lm!1616)))))

(declare-fun bs!752720 () Bool)

(assert (= bs!752720 d!1336741))

(declare-fun m!5086939 () Bool)

(assert (=> bs!752720 m!5086939))

(assert (=> start!429194 d!1336741))

(declare-fun d!1336743 () Bool)

(declare-fun res!1820891 () Bool)

(declare-fun e!2747084 () Bool)

(assert (=> d!1336743 (=> res!1820891 e!2747084)))

(assert (=> d!1336743 (= res!1820891 (not (is-Cons!49355 newBucket!194)))))

(assert (=> d!1336743 (= (noDuplicateKeys!656 newBucket!194) e!2747084)))

(declare-fun b!4411231 () Bool)

(declare-fun e!2747085 () Bool)

(assert (=> b!4411231 (= e!2747084 e!2747085)))

(declare-fun res!1820892 () Bool)

(assert (=> b!4411231 (=> (not res!1820892) (not e!2747085))))

(declare-fun containsKey!987 (List!49479 K!10713) Bool)

(assert (=> b!4411231 (= res!1820892 (not (containsKey!987 (t!356417 newBucket!194) (_1!27795 (h!54996 newBucket!194)))))))

(declare-fun b!4411232 () Bool)

(assert (=> b!4411232 (= e!2747085 (noDuplicateKeys!656 (t!356417 newBucket!194)))))

(assert (= (and d!1336743 (not res!1820891)) b!4411231))

(assert (= (and b!4411231 res!1820892) b!4411232))

(declare-fun m!5086941 () Bool)

(assert (=> b!4411231 m!5086941))

(declare-fun m!5086943 () Bool)

(assert (=> b!4411232 m!5086943))

(assert (=> b!4411110 d!1336743))

(declare-fun d!1336745 () Bool)

(declare-fun e!2747101 () Bool)

(assert (=> d!1336745 e!2747101))

(declare-fun res!1820901 () Bool)

(assert (=> d!1336745 (=> res!1820901 e!2747101)))

(declare-fun lt!1614084 () Bool)

(assert (=> d!1336745 (= res!1820901 (not lt!1614084))))

(declare-fun lt!1614085 () Bool)

(assert (=> d!1336745 (= lt!1614084 lt!1614085)))

(declare-fun lt!1614086 () Unit!80421)

(declare-fun e!2747100 () Unit!80421)

(assert (=> d!1336745 (= lt!1614086 e!2747100)))

(declare-fun c!751312 () Bool)

(assert (=> d!1336745 (= c!751312 lt!1614085)))

(declare-fun containsKey!988 (List!49480 (_ BitVec 64)) Bool)

(assert (=> d!1336745 (= lt!1614085 (containsKey!988 (toList!3299 lm!1616) hash!366))))

(assert (=> d!1336745 (= (contains!11785 lm!1616 hash!366) lt!1614084)))

(declare-fun b!4411253 () Bool)

(declare-fun lt!1614083 () Unit!80421)

(assert (=> b!4411253 (= e!2747100 lt!1614083)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!538 (List!49480 (_ BitVec 64)) Unit!80421)

(assert (=> b!4411253 (= lt!1614083 (lemmaContainsKeyImpliesGetValueByKeyDefined!538 (toList!3299 lm!1616) hash!366))))

(declare-fun isDefined!7935 (Option!10642) Bool)

(assert (=> b!4411253 (isDefined!7935 (getValueByKey!628 (toList!3299 lm!1616) hash!366))))

(declare-fun b!4411254 () Bool)

(declare-fun Unit!80427 () Unit!80421)

(assert (=> b!4411254 (= e!2747100 Unit!80427)))

(declare-fun b!4411255 () Bool)

(assert (=> b!4411255 (= e!2747101 (isDefined!7935 (getValueByKey!628 (toList!3299 lm!1616) hash!366)))))

(assert (= (and d!1336745 c!751312) b!4411253))

(assert (= (and d!1336745 (not c!751312)) b!4411254))

(assert (= (and d!1336745 (not res!1820901)) b!4411255))

(declare-fun m!5086945 () Bool)

(assert (=> d!1336745 m!5086945))

(declare-fun m!5086947 () Bool)

(assert (=> b!4411253 m!5086947))

(assert (=> b!4411253 m!5086929))

(assert (=> b!4411253 m!5086929))

(declare-fun m!5086949 () Bool)

(assert (=> b!4411253 m!5086949))

(assert (=> b!4411255 m!5086929))

(assert (=> b!4411255 m!5086929))

(assert (=> b!4411255 m!5086949))

(assert (=> b!4411115 d!1336745))

(assert (=> b!4411108 d!1336739))

(declare-fun b!4411260 () Bool)

(declare-fun e!2747104 () Bool)

(declare-fun tp!1332193 () Bool)

(assert (=> b!4411260 (= e!2747104 (and tp_is_empty!25871 tp_is_empty!25869 tp!1332193))))

(assert (=> b!4411112 (= tp!1332183 e!2747104)))

(assert (= (and b!4411112 (is-Cons!49355 (t!356417 newBucket!194))) b!4411260))

(declare-fun b!4411265 () Bool)

(declare-fun e!2747107 () Bool)

(declare-fun tp!1332198 () Bool)

(declare-fun tp!1332199 () Bool)

(assert (=> b!4411265 (= e!2747107 (and tp!1332198 tp!1332199))))

(assert (=> b!4411113 (= tp!1332184 e!2747107)))

(assert (= (and b!4411113 (is-Cons!49356 (toList!3299 lm!1616))) b!4411265))

(declare-fun b_lambda!141839 () Bool)

(assert (= b_lambda!141833 (or start!429194 b_lambda!141839)))

(declare-fun bs!752721 () Bool)

(declare-fun d!1336747 () Bool)

(assert (= bs!752721 (and d!1336747 start!429194)))

(assert (=> bs!752721 (= (dynLambda!20789 lambda!150692 (h!54997 (toList!3299 lt!1614002))) (noDuplicateKeys!656 (_2!27796 (h!54997 (toList!3299 lt!1614002)))))))

(declare-fun m!5086951 () Bool)

(assert (=> bs!752721 m!5086951))

(assert (=> b!4411209 d!1336747))

(declare-fun b_lambda!141841 () Bool)

(assert (= b_lambda!141837 (or start!429194 b_lambda!141841)))

(declare-fun bs!752722 () Bool)

(declare-fun d!1336749 () Bool)

(assert (= bs!752722 (and d!1336749 start!429194)))

(assert (=> bs!752722 (= (dynLambda!20789 lambda!150692 (h!54997 (toList!3299 lm!1616))) (noDuplicateKeys!656 (_2!27796 (h!54997 (toList!3299 lm!1616)))))))

(declare-fun m!5086953 () Bool)

(assert (=> bs!752722 m!5086953))

(assert (=> b!4411221 d!1336749))

(declare-fun b_lambda!141843 () Bool)

(assert (= b_lambda!141835 (or start!429194 b_lambda!141843)))

(declare-fun bs!752723 () Bool)

(declare-fun d!1336751 () Bool)

(assert (= bs!752723 (and d!1336751 start!429194)))

(assert (=> bs!752723 (= (dynLambda!20789 lambda!150692 (tuple2!49005 hash!366 newBucket!194)) (noDuplicateKeys!656 (_2!27796 (tuple2!49005 hash!366 newBucket!194))))))

(declare-fun m!5086955 () Bool)

(assert (=> bs!752723 m!5086955))

(assert (=> b!4411220 d!1336751))

(push 1)

(assert (not b_lambda!141843))

(assert (not b!4411190))

(assert (not b_lambda!141841))

(assert (not b!4411231))

(assert (not d!1336717))

(assert (not b!4411192))

(assert (not b!4411216))

(assert (not b!4411210))

(assert (not b!4411265))

(assert (not b!4411222))

(assert tp_is_empty!25871)

(assert (not d!1336731))

(assert (not d!1336725))

(assert (not b!4411194))

(assert (not d!1336733))

(assert (not b!4411255))

(assert (not d!1336715))

(assert (not d!1336745))

(assert (not d!1336737))

(assert (not bs!752723))

(assert (not b!4411186))

(assert (not b!4411191))

(assert (not bm!307034))

(assert (not bs!752721))

(assert (not d!1336713))

(assert (not b!4411187))

(assert (not b!4411253))

(assert (not b_lambda!141839))

(assert (not b!4411215))

(assert (not b!4411232))

(assert (not b!4411203))

(assert (not b!4411188))

(assert (not bs!752722))

(assert (not d!1336741))

(assert tp_is_empty!25869)

(assert (not b!4411260))

(assert (not d!1336735))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1336777 () Bool)

(declare-fun res!1820925 () Bool)

(declare-fun e!2747143 () Bool)

(assert (=> d!1336777 (=> res!1820925 e!2747143)))

(assert (=> d!1336777 (= res!1820925 (not (is-Cons!49355 (_2!27796 (h!54997 (toList!3299 lt!1614002))))))))

(assert (=> d!1336777 (= (noDuplicateKeys!656 (_2!27796 (h!54997 (toList!3299 lt!1614002)))) e!2747143)))

(declare-fun b!4411320 () Bool)

(declare-fun e!2747144 () Bool)

(assert (=> b!4411320 (= e!2747143 e!2747144)))

(declare-fun res!1820926 () Bool)

(assert (=> b!4411320 (=> (not res!1820926) (not e!2747144))))

(assert (=> b!4411320 (= res!1820926 (not (containsKey!987 (t!356417 (_2!27796 (h!54997 (toList!3299 lt!1614002)))) (_1!27795 (h!54996 (_2!27796 (h!54997 (toList!3299 lt!1614002))))))))))

(declare-fun b!4411321 () Bool)

(assert (=> b!4411321 (= e!2747144 (noDuplicateKeys!656 (t!356417 (_2!27796 (h!54997 (toList!3299 lt!1614002))))))))

(assert (= (and d!1336777 (not res!1820925)) b!4411320))

(assert (= (and b!4411320 res!1820926) b!4411321))

(declare-fun m!5087031 () Bool)

(assert (=> b!4411320 m!5087031))

(declare-fun m!5087033 () Bool)

(assert (=> b!4411321 m!5087033))

(assert (=> bs!752721 d!1336777))

(declare-fun d!1336779 () Bool)

(assert (=> d!1336779 (isDefined!7934 (getValueByKey!627 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) key!3717))))

(declare-fun lt!1614127 () Unit!80421)

(declare-fun choose!27749 (List!49479 K!10713) Unit!80421)

(assert (=> d!1336779 (= lt!1614127 (choose!27749 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) key!3717))))

(assert (=> d!1336779 (invariantList!764 (toList!3300 (extractMap!717 (toList!3299 lm!1616))))))

(assert (=> d!1336779 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!537 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) key!3717) lt!1614127)))

(declare-fun bs!752733 () Bool)

(assert (= bs!752733 d!1336779))

(assert (=> bs!752733 m!5086877))

(assert (=> bs!752733 m!5086877))

(assert (=> bs!752733 m!5086879))

(declare-fun m!5087035 () Bool)

(assert (=> bs!752733 m!5087035))

(declare-fun m!5087037 () Bool)

(assert (=> bs!752733 m!5087037))

(assert (=> b!4411187 d!1336779))

(declare-fun d!1336781 () Bool)

(declare-fun isEmpty!28296 (Option!10641) Bool)

(assert (=> d!1336781 (= (isDefined!7934 (getValueByKey!627 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) key!3717)) (not (isEmpty!28296 (getValueByKey!627 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) key!3717))))))

(declare-fun bs!752734 () Bool)

(assert (= bs!752734 d!1336781))

(assert (=> bs!752734 m!5086877))

(declare-fun m!5087039 () Bool)

(assert (=> bs!752734 m!5087039))

(assert (=> b!4411187 d!1336781))

(declare-fun b!4411333 () Bool)

(declare-fun e!2747150 () Option!10641)

(assert (=> b!4411333 (= e!2747150 None!10640)))

(declare-fun b!4411331 () Bool)

(declare-fun e!2747149 () Option!10641)

(assert (=> b!4411331 (= e!2747149 e!2747150)))

(declare-fun c!751327 () Bool)

(assert (=> b!4411331 (= c!751327 (and (is-Cons!49355 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))) (not (= (_1!27795 (h!54996 (toList!3300 (extractMap!717 (toList!3299 lm!1616))))) key!3717))))))

(declare-fun b!4411332 () Bool)

(assert (=> b!4411332 (= e!2747150 (getValueByKey!627 (t!356417 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))) key!3717))))

(declare-fun b!4411330 () Bool)

(assert (=> b!4411330 (= e!2747149 (Some!10640 (_2!27795 (h!54996 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))))))))

(declare-fun d!1336783 () Bool)

(declare-fun c!751326 () Bool)

(assert (=> d!1336783 (= c!751326 (and (is-Cons!49355 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))) (= (_1!27795 (h!54996 (toList!3300 (extractMap!717 (toList!3299 lm!1616))))) key!3717)))))

(assert (=> d!1336783 (= (getValueByKey!627 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) key!3717) e!2747149)))

(assert (= (and d!1336783 c!751326) b!4411330))

(assert (= (and d!1336783 (not c!751326)) b!4411331))

(assert (= (and b!4411331 c!751327) b!4411332))

(assert (= (and b!4411331 (not c!751327)) b!4411333))

(declare-fun m!5087041 () Bool)

(assert (=> b!4411332 m!5087041))

(assert (=> b!4411187 d!1336783))

(declare-fun d!1336785 () Bool)

(assert (=> d!1336785 (contains!11788 (getKeysList!211 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))) key!3717)))

(declare-fun lt!1614130 () Unit!80421)

(declare-fun choose!27750 (List!49479 K!10713) Unit!80421)

(assert (=> d!1336785 (= lt!1614130 (choose!27750 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) key!3717))))

(assert (=> d!1336785 (invariantList!764 (toList!3300 (extractMap!717 (toList!3299 lm!1616))))))

(assert (=> d!1336785 (= (lemmaInListThenGetKeysListContains!208 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) key!3717) lt!1614130)))

(declare-fun bs!752735 () Bool)

(assert (= bs!752735 d!1336785))

(assert (=> bs!752735 m!5086889))

(assert (=> bs!752735 m!5086889))

(declare-fun m!5087043 () Bool)

(assert (=> bs!752735 m!5087043))

(declare-fun m!5087045 () Bool)

(assert (=> bs!752735 m!5087045))

(assert (=> bs!752735 m!5087037))

(assert (=> b!4411187 d!1336785))

(assert (=> b!4411186 d!1336781))

(assert (=> b!4411186 d!1336783))

(declare-fun d!1336787 () Bool)

(declare-fun lt!1614133 () Bool)

(declare-fun content!7903 (List!49483) (Set K!10713))

(assert (=> d!1336787 (= lt!1614133 (set.member key!3717 (content!7903 (keys!16795 (extractMap!717 (toList!3299 lm!1616))))))))

(declare-fun e!2747155 () Bool)

(assert (=> d!1336787 (= lt!1614133 e!2747155)))

(declare-fun res!1820931 () Bool)

(assert (=> d!1336787 (=> (not res!1820931) (not e!2747155))))

(assert (=> d!1336787 (= res!1820931 (is-Cons!49359 (keys!16795 (extractMap!717 (toList!3299 lm!1616)))))))

(assert (=> d!1336787 (= (contains!11788 (keys!16795 (extractMap!717 (toList!3299 lm!1616))) key!3717) lt!1614133)))

(declare-fun b!4411338 () Bool)

(declare-fun e!2747156 () Bool)

(assert (=> b!4411338 (= e!2747155 e!2747156)))

(declare-fun res!1820932 () Bool)

(assert (=> b!4411338 (=> res!1820932 e!2747156)))

(assert (=> b!4411338 (= res!1820932 (= (h!55002 (keys!16795 (extractMap!717 (toList!3299 lm!1616)))) key!3717))))

(declare-fun b!4411339 () Bool)

(assert (=> b!4411339 (= e!2747156 (contains!11788 (t!356421 (keys!16795 (extractMap!717 (toList!3299 lm!1616)))) key!3717))))

(assert (= (and d!1336787 res!1820931) b!4411338))

(assert (= (and b!4411338 (not res!1820932)) b!4411339))

(assert (=> d!1336787 m!5086883))

(declare-fun m!5087047 () Bool)

(assert (=> d!1336787 m!5087047))

(declare-fun m!5087049 () Bool)

(assert (=> d!1336787 m!5087049))

(declare-fun m!5087051 () Bool)

(assert (=> b!4411339 m!5087051))

(assert (=> b!4411188 d!1336787))

(declare-fun b!4411347 () Bool)

(assert (=> b!4411347 true))

(declare-fun d!1336789 () Bool)

(declare-fun e!2747159 () Bool)

(assert (=> d!1336789 e!2747159))

(declare-fun res!1820939 () Bool)

(assert (=> d!1336789 (=> (not res!1820939) (not e!2747159))))

(declare-fun lt!1614136 () List!49483)

(declare-fun noDuplicate!645 (List!49483) Bool)

(assert (=> d!1336789 (= res!1820939 (noDuplicate!645 lt!1614136))))

(assert (=> d!1336789 (= lt!1614136 (getKeysList!211 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))))))

(assert (=> d!1336789 (= (keys!16795 (extractMap!717 (toList!3299 lm!1616))) lt!1614136)))

(declare-fun b!4411346 () Bool)

(declare-fun res!1820941 () Bool)

(assert (=> b!4411346 (=> (not res!1820941) (not e!2747159))))

(declare-fun length!146 (List!49483) Int)

(declare-fun length!147 (List!49479) Int)

(assert (=> b!4411346 (= res!1820941 (= (length!146 lt!1614136) (length!147 (toList!3300 (extractMap!717 (toList!3299 lm!1616))))))))

(declare-fun res!1820940 () Bool)

(assert (=> b!4411347 (=> (not res!1820940) (not e!2747159))))

(declare-fun lambda!150724 () Int)

(declare-fun forall!9422 (List!49483 Int) Bool)

(assert (=> b!4411347 (= res!1820940 (forall!9422 lt!1614136 lambda!150724))))

(declare-fun b!4411348 () Bool)

(declare-fun lambda!150725 () Int)

(declare-fun map!10771 (List!49479 Int) List!49483)

(assert (=> b!4411348 (= e!2747159 (= (content!7903 lt!1614136) (content!7903 (map!10771 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) lambda!150725))))))

(assert (= (and d!1336789 res!1820939) b!4411346))

(assert (= (and b!4411346 res!1820941) b!4411347))

(assert (= (and b!4411347 res!1820940) b!4411348))

(declare-fun m!5087053 () Bool)

(assert (=> d!1336789 m!5087053))

(assert (=> d!1336789 m!5086889))

(declare-fun m!5087055 () Bool)

(assert (=> b!4411346 m!5087055))

(declare-fun m!5087057 () Bool)

(assert (=> b!4411346 m!5087057))

(declare-fun m!5087059 () Bool)

(assert (=> b!4411347 m!5087059))

(declare-fun m!5087061 () Bool)

(assert (=> b!4411348 m!5087061))

(declare-fun m!5087063 () Bool)

(assert (=> b!4411348 m!5087063))

(assert (=> b!4411348 m!5087063))

(declare-fun m!5087065 () Bool)

(assert (=> b!4411348 m!5087065))

(assert (=> b!4411188 d!1336789))

(declare-fun d!1336791 () Bool)

(declare-fun res!1820946 () Bool)

(declare-fun e!2747164 () Bool)

(assert (=> d!1336791 (=> res!1820946 e!2747164)))

(assert (=> d!1336791 (= res!1820946 (is-Nil!49355 newBucket!194))))

(assert (=> d!1336791 (= (forall!9420 newBucket!194 lambda!150707) e!2747164)))

(declare-fun b!4411355 () Bool)

(declare-fun e!2747165 () Bool)

(assert (=> b!4411355 (= e!2747164 e!2747165)))

(declare-fun res!1820947 () Bool)

(assert (=> b!4411355 (=> (not res!1820947) (not e!2747165))))

(declare-fun dynLambda!20791 (Int tuple2!49002) Bool)

(assert (=> b!4411355 (= res!1820947 (dynLambda!20791 lambda!150707 (h!54996 newBucket!194)))))

(declare-fun b!4411356 () Bool)

(assert (=> b!4411356 (= e!2747165 (forall!9420 (t!356417 newBucket!194) lambda!150707))))

(assert (= (and d!1336791 (not res!1820946)) b!4411355))

(assert (= (and b!4411355 res!1820947) b!4411356))

(declare-fun b_lambda!141855 () Bool)

(assert (=> (not b_lambda!141855) (not b!4411355)))

(declare-fun m!5087067 () Bool)

(assert (=> b!4411355 m!5087067))

(declare-fun m!5087069 () Bool)

(assert (=> b!4411356 m!5087069))

(assert (=> d!1336715 d!1336791))

(declare-fun d!1336793 () Bool)

(declare-fun lt!1614137 () Bool)

(assert (=> d!1336793 (= lt!1614137 (set.member key!3717 (content!7903 e!2747060)))))

(declare-fun e!2747166 () Bool)

(assert (=> d!1336793 (= lt!1614137 e!2747166)))

(declare-fun res!1820948 () Bool)

(assert (=> d!1336793 (=> (not res!1820948) (not e!2747166))))

(assert (=> d!1336793 (= res!1820948 (is-Cons!49359 e!2747060))))

(assert (=> d!1336793 (= (contains!11788 e!2747060 key!3717) lt!1614137)))

(declare-fun b!4411357 () Bool)

(declare-fun e!2747167 () Bool)

(assert (=> b!4411357 (= e!2747166 e!2747167)))

(declare-fun res!1820949 () Bool)

(assert (=> b!4411357 (=> res!1820949 e!2747167)))

(assert (=> b!4411357 (= res!1820949 (= (h!55002 e!2747060) key!3717))))

(declare-fun b!4411358 () Bool)

(assert (=> b!4411358 (= e!2747167 (contains!11788 (t!356421 e!2747060) key!3717))))

(assert (= (and d!1336793 res!1820948) b!4411357))

(assert (= (and b!4411357 (not res!1820949)) b!4411358))

(declare-fun m!5087071 () Bool)

(assert (=> d!1336793 m!5087071))

(declare-fun m!5087073 () Bool)

(assert (=> d!1336793 m!5087073))

(declare-fun m!5087075 () Bool)

(assert (=> b!4411358 m!5087075))

(assert (=> bm!307034 d!1336793))

(assert (=> b!4411191 d!1336787))

(assert (=> b!4411191 d!1336789))

(declare-fun d!1336795 () Bool)

(declare-fun e!2747169 () Bool)

(assert (=> d!1336795 e!2747169))

(declare-fun res!1820950 () Bool)

(assert (=> d!1336795 (=> res!1820950 e!2747169)))

(declare-fun lt!1614139 () Bool)

(assert (=> d!1336795 (= res!1820950 (not lt!1614139))))

(declare-fun lt!1614140 () Bool)

(assert (=> d!1336795 (= lt!1614139 lt!1614140)))

(declare-fun lt!1614141 () Unit!80421)

(declare-fun e!2747168 () Unit!80421)

(assert (=> d!1336795 (= lt!1614141 e!2747168)))

(declare-fun c!751328 () Bool)

(assert (=> d!1336795 (= c!751328 lt!1614140)))

(assert (=> d!1336795 (= lt!1614140 (containsKey!988 (toList!3299 lt!1614054) (_1!27796 (tuple2!49005 hash!366 newBucket!194))))))

(assert (=> d!1336795 (= (contains!11785 lt!1614054 (_1!27796 (tuple2!49005 hash!366 newBucket!194))) lt!1614139)))

(declare-fun b!4411359 () Bool)

(declare-fun lt!1614138 () Unit!80421)

(assert (=> b!4411359 (= e!2747168 lt!1614138)))

(assert (=> b!4411359 (= lt!1614138 (lemmaContainsKeyImpliesGetValueByKeyDefined!538 (toList!3299 lt!1614054) (_1!27796 (tuple2!49005 hash!366 newBucket!194))))))

(assert (=> b!4411359 (isDefined!7935 (getValueByKey!628 (toList!3299 lt!1614054) (_1!27796 (tuple2!49005 hash!366 newBucket!194))))))

(declare-fun b!4411360 () Bool)

(declare-fun Unit!80431 () Unit!80421)

(assert (=> b!4411360 (= e!2747168 Unit!80431)))

(declare-fun b!4411361 () Bool)

(assert (=> b!4411361 (= e!2747169 (isDefined!7935 (getValueByKey!628 (toList!3299 lt!1614054) (_1!27796 (tuple2!49005 hash!366 newBucket!194)))))))

(assert (= (and d!1336795 c!751328) b!4411359))

(assert (= (and d!1336795 (not c!751328)) b!4411360))

(assert (= (and d!1336795 (not res!1820950)) b!4411361))

(declare-fun m!5087077 () Bool)

(assert (=> d!1336795 m!5087077))

(declare-fun m!5087079 () Bool)

(assert (=> b!4411359 m!5087079))

(assert (=> b!4411359 m!5086919))

(assert (=> b!4411359 m!5086919))

(declare-fun m!5087081 () Bool)

(assert (=> b!4411359 m!5087081))

(assert (=> b!4411361 m!5086919))

(assert (=> b!4411361 m!5086919))

(assert (=> b!4411361 m!5087081))

(assert (=> d!1336731 d!1336795))

(declare-fun e!2747175 () Option!10642)

(declare-fun b!4411372 () Bool)

(assert (=> b!4411372 (= e!2747175 (getValueByKey!628 (t!356418 lt!1614052) (_1!27796 (tuple2!49005 hash!366 newBucket!194))))))

(declare-fun b!4411373 () Bool)

(assert (=> b!4411373 (= e!2747175 None!10641)))

(declare-fun b!4411370 () Bool)

(declare-fun e!2747174 () Option!10642)

(assert (=> b!4411370 (= e!2747174 (Some!10641 (_2!27796 (h!54997 lt!1614052))))))

(declare-fun c!751333 () Bool)

(declare-fun d!1336797 () Bool)

(assert (=> d!1336797 (= c!751333 (and (is-Cons!49356 lt!1614052) (= (_1!27796 (h!54997 lt!1614052)) (_1!27796 (tuple2!49005 hash!366 newBucket!194)))))))

(assert (=> d!1336797 (= (getValueByKey!628 lt!1614052 (_1!27796 (tuple2!49005 hash!366 newBucket!194))) e!2747174)))

(declare-fun b!4411371 () Bool)

(assert (=> b!4411371 (= e!2747174 e!2747175)))

(declare-fun c!751334 () Bool)

(assert (=> b!4411371 (= c!751334 (and (is-Cons!49356 lt!1614052) (not (= (_1!27796 (h!54997 lt!1614052)) (_1!27796 (tuple2!49005 hash!366 newBucket!194))))))))

(assert (= (and d!1336797 c!751333) b!4411370))

(assert (= (and d!1336797 (not c!751333)) b!4411371))

(assert (= (and b!4411371 c!751334) b!4411372))

(assert (= (and b!4411371 (not c!751334)) b!4411373))

(declare-fun m!5087083 () Bool)

(assert (=> b!4411372 m!5087083))

(assert (=> d!1336731 d!1336797))

(declare-fun d!1336799 () Bool)

(assert (=> d!1336799 (= (getValueByKey!628 lt!1614052 (_1!27796 (tuple2!49005 hash!366 newBucket!194))) (Some!10641 (_2!27796 (tuple2!49005 hash!366 newBucket!194))))))

(declare-fun lt!1614144 () Unit!80421)

(declare-fun choose!27751 (List!49480 (_ BitVec 64) List!49479) Unit!80421)

(assert (=> d!1336799 (= lt!1614144 (choose!27751 lt!1614052 (_1!27796 (tuple2!49005 hash!366 newBucket!194)) (_2!27796 (tuple2!49005 hash!366 newBucket!194))))))

(declare-fun e!2747178 () Bool)

(assert (=> d!1336799 e!2747178))

(declare-fun res!1820955 () Bool)

(assert (=> d!1336799 (=> (not res!1820955) (not e!2747178))))

(assert (=> d!1336799 (= res!1820955 (isStrictlySorted!190 lt!1614052))))

(assert (=> d!1336799 (= (lemmaContainsTupThenGetReturnValue!372 lt!1614052 (_1!27796 (tuple2!49005 hash!366 newBucket!194)) (_2!27796 (tuple2!49005 hash!366 newBucket!194))) lt!1614144)))

(declare-fun b!4411378 () Bool)

(declare-fun res!1820956 () Bool)

(assert (=> b!4411378 (=> (not res!1820956) (not e!2747178))))

(assert (=> b!4411378 (= res!1820956 (containsKey!988 lt!1614052 (_1!27796 (tuple2!49005 hash!366 newBucket!194))))))

(declare-fun b!4411379 () Bool)

(assert (=> b!4411379 (= e!2747178 (contains!11789 lt!1614052 (tuple2!49005 (_1!27796 (tuple2!49005 hash!366 newBucket!194)) (_2!27796 (tuple2!49005 hash!366 newBucket!194)))))))

(assert (= (and d!1336799 res!1820955) b!4411378))

(assert (= (and b!4411378 res!1820956) b!4411379))

(assert (=> d!1336799 m!5086913))

(declare-fun m!5087085 () Bool)

(assert (=> d!1336799 m!5087085))

(declare-fun m!5087087 () Bool)

(assert (=> d!1336799 m!5087087))

(declare-fun m!5087089 () Bool)

(assert (=> b!4411378 m!5087089))

(declare-fun m!5087091 () Bool)

(assert (=> b!4411379 m!5087091))

(assert (=> d!1336731 d!1336799))

(declare-fun c!751343 () Bool)

(declare-fun e!2747192 () List!49480)

(declare-fun b!4411400 () Bool)

(declare-fun c!751346 () Bool)

(assert (=> b!4411400 (= e!2747192 (ite c!751343 (t!356418 (toList!3299 lm!1616)) (ite c!751346 (Cons!49356 (h!54997 (toList!3299 lm!1616)) (t!356418 (toList!3299 lm!1616))) Nil!49356)))))

(declare-fun b!4411401 () Bool)

(declare-fun e!2747189 () Bool)

(declare-fun lt!1614147 () List!49480)

(assert (=> b!4411401 (= e!2747189 (contains!11789 lt!1614147 (tuple2!49005 (_1!27796 (tuple2!49005 hash!366 newBucket!194)) (_2!27796 (tuple2!49005 hash!366 newBucket!194)))))))

(declare-fun b!4411402 () Bool)

(assert (=> b!4411402 (= e!2747192 (insertStrictlySorted!218 (t!356418 (toList!3299 lm!1616)) (_1!27796 (tuple2!49005 hash!366 newBucket!194)) (_2!27796 (tuple2!49005 hash!366 newBucket!194))))))

(declare-fun b!4411403 () Bool)

(declare-fun e!2747190 () List!49480)

(declare-fun call!307051 () List!49480)

(assert (=> b!4411403 (= e!2747190 call!307051)))

(declare-fun bm!307044 () Bool)

(declare-fun call!307049 () List!49480)

(assert (=> bm!307044 (= call!307049 call!307051)))

(declare-fun bm!307045 () Bool)

(declare-fun call!307050 () List!49480)

(assert (=> bm!307045 (= call!307051 call!307050)))

(declare-fun b!4411404 () Bool)

(assert (=> b!4411404 (= c!751346 (and (is-Cons!49356 (toList!3299 lm!1616)) (bvsgt (_1!27796 (h!54997 (toList!3299 lm!1616))) (_1!27796 (tuple2!49005 hash!366 newBucket!194)))))))

(declare-fun e!2747191 () List!49480)

(assert (=> b!4411404 (= e!2747190 e!2747191)))

(declare-fun b!4411405 () Bool)

(assert (=> b!4411405 (= e!2747191 call!307049)))

(declare-fun d!1336801 () Bool)

(assert (=> d!1336801 e!2747189))

(declare-fun res!1820962 () Bool)

(assert (=> d!1336801 (=> (not res!1820962) (not e!2747189))))

(assert (=> d!1336801 (= res!1820962 (isStrictlySorted!190 lt!1614147))))

(declare-fun e!2747193 () List!49480)

(assert (=> d!1336801 (= lt!1614147 e!2747193)))

(declare-fun c!751345 () Bool)

(assert (=> d!1336801 (= c!751345 (and (is-Cons!49356 (toList!3299 lm!1616)) (bvslt (_1!27796 (h!54997 (toList!3299 lm!1616))) (_1!27796 (tuple2!49005 hash!366 newBucket!194)))))))

(assert (=> d!1336801 (isStrictlySorted!190 (toList!3299 lm!1616))))

(assert (=> d!1336801 (= (insertStrictlySorted!218 (toList!3299 lm!1616) (_1!27796 (tuple2!49005 hash!366 newBucket!194)) (_2!27796 (tuple2!49005 hash!366 newBucket!194))) lt!1614147)))

(declare-fun b!4411406 () Bool)

(assert (=> b!4411406 (= e!2747193 e!2747190)))

(assert (=> b!4411406 (= c!751343 (and (is-Cons!49356 (toList!3299 lm!1616)) (= (_1!27796 (h!54997 (toList!3299 lm!1616))) (_1!27796 (tuple2!49005 hash!366 newBucket!194)))))))

(declare-fun b!4411407 () Bool)

(declare-fun res!1820961 () Bool)

(assert (=> b!4411407 (=> (not res!1820961) (not e!2747189))))

(assert (=> b!4411407 (= res!1820961 (containsKey!988 lt!1614147 (_1!27796 (tuple2!49005 hash!366 newBucket!194))))))

(declare-fun b!4411408 () Bool)

(assert (=> b!4411408 (= e!2747193 call!307050)))

(declare-fun b!4411409 () Bool)

(assert (=> b!4411409 (= e!2747191 call!307049)))

(declare-fun bm!307046 () Bool)

(declare-fun $colon$colon!766 (List!49480 tuple2!49004) List!49480)

(assert (=> bm!307046 (= call!307050 ($colon$colon!766 e!2747192 (ite c!751345 (h!54997 (toList!3299 lm!1616)) (tuple2!49005 (_1!27796 (tuple2!49005 hash!366 newBucket!194)) (_2!27796 (tuple2!49005 hash!366 newBucket!194))))))))

(declare-fun c!751344 () Bool)

(assert (=> bm!307046 (= c!751344 c!751345)))

(assert (= (and d!1336801 c!751345) b!4411408))

(assert (= (and d!1336801 (not c!751345)) b!4411406))

(assert (= (and b!4411406 c!751343) b!4411403))

(assert (= (and b!4411406 (not c!751343)) b!4411404))

(assert (= (and b!4411404 c!751346) b!4411405))

(assert (= (and b!4411404 (not c!751346)) b!4411409))

(assert (= (or b!4411405 b!4411409) bm!307044))

(assert (= (or b!4411403 bm!307044) bm!307045))

(assert (= (or b!4411408 bm!307045) bm!307046))

(assert (= (and bm!307046 c!751344) b!4411402))

(assert (= (and bm!307046 (not c!751344)) b!4411400))

(assert (= (and d!1336801 res!1820962) b!4411407))

(assert (= (and b!4411407 res!1820961) b!4411401))

(declare-fun m!5087093 () Bool)

(assert (=> bm!307046 m!5087093))

(declare-fun m!5087095 () Bool)

(assert (=> b!4411407 m!5087095))

(declare-fun m!5087097 () Bool)

(assert (=> b!4411401 m!5087097))

(declare-fun m!5087099 () Bool)

(assert (=> d!1336801 m!5087099))

(assert (=> d!1336801 m!5086939))

(declare-fun m!5087101 () Bool)

(assert (=> b!4411402 m!5087101))

(assert (=> d!1336731 d!1336801))

(declare-fun d!1336803 () Bool)

(declare-fun res!1820967 () Bool)

(declare-fun e!2747198 () Bool)

(assert (=> d!1336803 (=> res!1820967 e!2747198)))

(assert (=> d!1336803 (= res!1820967 (or (is-Nil!49356 (toList!3299 lm!1616)) (is-Nil!49356 (t!356418 (toList!3299 lm!1616)))))))

(assert (=> d!1336803 (= (isStrictlySorted!190 (toList!3299 lm!1616)) e!2747198)))

(declare-fun b!4411414 () Bool)

(declare-fun e!2747199 () Bool)

(assert (=> b!4411414 (= e!2747198 e!2747199)))

(declare-fun res!1820968 () Bool)

(assert (=> b!4411414 (=> (not res!1820968) (not e!2747199))))

(assert (=> b!4411414 (= res!1820968 (bvslt (_1!27796 (h!54997 (toList!3299 lm!1616))) (_1!27796 (h!54997 (t!356418 (toList!3299 lm!1616))))))))

(declare-fun b!4411415 () Bool)

(assert (=> b!4411415 (= e!2747199 (isStrictlySorted!190 (t!356418 (toList!3299 lm!1616))))))

(assert (= (and d!1336803 (not res!1820967)) b!4411414))

(assert (= (and b!4411414 res!1820968) b!4411415))

(declare-fun m!5087103 () Bool)

(assert (=> b!4411415 m!5087103))

(assert (=> d!1336741 d!1336803))

(declare-fun bs!752738 () Bool)

(declare-fun b!4411460 () Bool)

(assert (= bs!752738 (and b!4411460 d!1336715)))

(declare-fun lambda!150754 () Int)

(assert (=> bs!752738 (not (= lambda!150754 lambda!150707))))

(assert (=> b!4411460 true))

(declare-fun bs!752739 () Bool)

(declare-fun b!4411461 () Bool)

(assert (= bs!752739 (and b!4411461 d!1336715)))

(declare-fun lambda!150755 () Int)

(assert (=> bs!752739 (not (= lambda!150755 lambda!150707))))

(declare-fun bs!752740 () Bool)

(assert (= bs!752740 (and b!4411461 b!4411460)))

(assert (=> bs!752740 (= lambda!150755 lambda!150754)))

(assert (=> b!4411461 true))

(declare-fun lambda!150756 () Int)

(assert (=> bs!752739 (not (= lambda!150756 lambda!150707))))

(declare-fun lt!1614201 () ListMap!2543)

(assert (=> bs!752740 (= (= lt!1614201 (extractMap!717 (t!356418 (toList!3299 lm!1616)))) (= lambda!150756 lambda!150754))))

(assert (=> b!4411461 (= (= lt!1614201 (extractMap!717 (t!356418 (toList!3299 lm!1616)))) (= lambda!150756 lambda!150755))))

(assert (=> b!4411461 true))

(declare-fun bs!752741 () Bool)

(declare-fun d!1336805 () Bool)

(assert (= bs!752741 (and d!1336805 d!1336715)))

(declare-fun lambda!150757 () Int)

(assert (=> bs!752741 (not (= lambda!150757 lambda!150707))))

(declare-fun bs!752742 () Bool)

(assert (= bs!752742 (and d!1336805 b!4411460)))

(declare-fun lt!1614203 () ListMap!2543)

(assert (=> bs!752742 (= (= lt!1614203 (extractMap!717 (t!356418 (toList!3299 lm!1616)))) (= lambda!150757 lambda!150754))))

(declare-fun bs!752743 () Bool)

(assert (= bs!752743 (and d!1336805 b!4411461)))

(assert (=> bs!752743 (= (= lt!1614203 (extractMap!717 (t!356418 (toList!3299 lm!1616)))) (= lambda!150757 lambda!150755))))

(assert (=> bs!752743 (= (= lt!1614203 lt!1614201) (= lambda!150757 lambda!150756))))

(assert (=> d!1336805 true))

(declare-fun b!4411457 () Bool)

(declare-fun res!1820994 () Bool)

(declare-fun e!2747231 () Bool)

(assert (=> b!4411457 (=> (not res!1820994) (not e!2747231))))

(assert (=> b!4411457 (= res!1820994 (forall!9420 (toList!3300 (extractMap!717 (t!356418 (toList!3299 lm!1616)))) lambda!150757))))

(assert (=> d!1336805 e!2747231))

(declare-fun res!1820996 () Bool)

(assert (=> d!1336805 (=> (not res!1820996) (not e!2747231))))

(assert (=> d!1336805 (= res!1820996 (forall!9420 (_2!27796 (h!54997 (toList!3299 lm!1616))) lambda!150757))))

(declare-fun e!2747233 () ListMap!2543)

(assert (=> d!1336805 (= lt!1614203 e!2747233)))

(declare-fun c!751355 () Bool)

(assert (=> d!1336805 (= c!751355 (is-Nil!49355 (_2!27796 (h!54997 (toList!3299 lm!1616)))))))

(assert (=> d!1336805 (noDuplicateKeys!656 (_2!27796 (h!54997 (toList!3299 lm!1616))))))

(assert (=> d!1336805 (= (addToMapMapFromBucket!315 (_2!27796 (h!54997 (toList!3299 lm!1616))) (extractMap!717 (t!356418 (toList!3299 lm!1616)))) lt!1614203)))

(declare-fun b!4411458 () Bool)

(assert (=> b!4411458 (= e!2747231 (invariantList!764 (toList!3300 lt!1614203)))))

(declare-fun bm!307053 () Bool)

(declare-fun call!307058 () Unit!80421)

(declare-fun lemmaContainsAllItsOwnKeys!142 (ListMap!2543) Unit!80421)

(assert (=> bm!307053 (= call!307058 (lemmaContainsAllItsOwnKeys!142 (extractMap!717 (t!356418 (toList!3299 lm!1616)))))))

(declare-fun b!4411459 () Bool)

(declare-fun e!2747232 () Bool)

(assert (=> b!4411459 (= e!2747232 (forall!9420 (toList!3300 (extractMap!717 (t!356418 (toList!3299 lm!1616)))) lambda!150756))))

(assert (=> b!4411460 (= e!2747233 (extractMap!717 (t!356418 (toList!3299 lm!1616))))))

(declare-fun lt!1614218 () Unit!80421)

(assert (=> b!4411460 (= lt!1614218 call!307058)))

(declare-fun call!307060 () Bool)

(assert (=> b!4411460 call!307060))

(declare-fun lt!1614212 () Unit!80421)

(assert (=> b!4411460 (= lt!1614212 lt!1614218)))

(declare-fun call!307059 () Bool)

(assert (=> b!4411460 call!307059))

(declare-fun lt!1614204 () Unit!80421)

(declare-fun Unit!80432 () Unit!80421)

(assert (=> b!4411460 (= lt!1614204 Unit!80432)))

(declare-fun lt!1614216 () ListMap!2543)

(declare-fun bm!307054 () Bool)

(assert (=> bm!307054 (= call!307059 (forall!9420 (ite c!751355 (toList!3300 (extractMap!717 (t!356418 (toList!3299 lm!1616)))) (toList!3300 lt!1614216)) (ite c!751355 lambda!150754 lambda!150756)))))

(declare-fun bm!307055 () Bool)

(assert (=> bm!307055 (= call!307060 (forall!9420 (toList!3300 (extractMap!717 (t!356418 (toList!3299 lm!1616)))) (ite c!751355 lambda!150754 lambda!150756)))))

(assert (=> b!4411461 (= e!2747233 lt!1614201)))

(declare-fun +!923 (ListMap!2543 tuple2!49002) ListMap!2543)

(assert (=> b!4411461 (= lt!1614216 (+!923 (extractMap!717 (t!356418 (toList!3299 lm!1616))) (h!54996 (_2!27796 (h!54997 (toList!3299 lm!1616))))))))

(assert (=> b!4411461 (= lt!1614201 (addToMapMapFromBucket!315 (t!356417 (_2!27796 (h!54997 (toList!3299 lm!1616)))) (+!923 (extractMap!717 (t!356418 (toList!3299 lm!1616))) (h!54996 (_2!27796 (h!54997 (toList!3299 lm!1616)))))))))

(declare-fun lt!1614219 () Unit!80421)

(assert (=> b!4411461 (= lt!1614219 call!307058)))

(assert (=> b!4411461 (forall!9420 (toList!3300 (extractMap!717 (t!356418 (toList!3299 lm!1616)))) lambda!150755)))

(declare-fun lt!1614217 () Unit!80421)

(assert (=> b!4411461 (= lt!1614217 lt!1614219)))

(assert (=> b!4411461 call!307059))

(declare-fun lt!1614207 () Unit!80421)

(declare-fun Unit!80433 () Unit!80421)

(assert (=> b!4411461 (= lt!1614207 Unit!80433)))

(assert (=> b!4411461 (forall!9420 (t!356417 (_2!27796 (h!54997 (toList!3299 lm!1616)))) lambda!150756)))

(declare-fun lt!1614214 () Unit!80421)

(declare-fun Unit!80434 () Unit!80421)

(assert (=> b!4411461 (= lt!1614214 Unit!80434)))

(declare-fun lt!1614210 () Unit!80421)

(declare-fun Unit!80435 () Unit!80421)

(assert (=> b!4411461 (= lt!1614210 Unit!80435)))

(declare-fun lt!1614209 () Unit!80421)

(declare-fun forallContained!2048 (List!49479 Int tuple2!49002) Unit!80421)

(assert (=> b!4411461 (= lt!1614209 (forallContained!2048 (toList!3300 lt!1614216) lambda!150756 (h!54996 (_2!27796 (h!54997 (toList!3299 lm!1616))))))))

(assert (=> b!4411461 (contains!11784 lt!1614216 (_1!27795 (h!54996 (_2!27796 (h!54997 (toList!3299 lm!1616))))))))

(declare-fun lt!1614199 () Unit!80421)

(declare-fun Unit!80436 () Unit!80421)

(assert (=> b!4411461 (= lt!1614199 Unit!80436)))

(assert (=> b!4411461 (contains!11784 lt!1614201 (_1!27795 (h!54996 (_2!27796 (h!54997 (toList!3299 lm!1616))))))))

(declare-fun lt!1614200 () Unit!80421)

(declare-fun Unit!80437 () Unit!80421)

(assert (=> b!4411461 (= lt!1614200 Unit!80437)))

(assert (=> b!4411461 (forall!9420 (_2!27796 (h!54997 (toList!3299 lm!1616))) lambda!150756)))

(declare-fun lt!1614202 () Unit!80421)

(declare-fun Unit!80438 () Unit!80421)

(assert (=> b!4411461 (= lt!1614202 Unit!80438)))

(assert (=> b!4411461 (forall!9420 (toList!3300 lt!1614216) lambda!150756)))

(declare-fun lt!1614206 () Unit!80421)

(declare-fun Unit!80439 () Unit!80421)

(assert (=> b!4411461 (= lt!1614206 Unit!80439)))

(declare-fun lt!1614205 () Unit!80421)

(declare-fun Unit!80440 () Unit!80421)

(assert (=> b!4411461 (= lt!1614205 Unit!80440)))

(declare-fun lt!1614208 () Unit!80421)

(declare-fun addForallContainsKeyThenBeforeAdding!142 (ListMap!2543 ListMap!2543 K!10713 V!10959) Unit!80421)

(assert (=> b!4411461 (= lt!1614208 (addForallContainsKeyThenBeforeAdding!142 (extractMap!717 (t!356418 (toList!3299 lm!1616))) lt!1614201 (_1!27795 (h!54996 (_2!27796 (h!54997 (toList!3299 lm!1616))))) (_2!27795 (h!54996 (_2!27796 (h!54997 (toList!3299 lm!1616)))))))))

(assert (=> b!4411461 (forall!9420 (toList!3300 (extractMap!717 (t!356418 (toList!3299 lm!1616)))) lambda!150756)))

(declare-fun lt!1614211 () Unit!80421)

(assert (=> b!4411461 (= lt!1614211 lt!1614208)))

(assert (=> b!4411461 call!307060))

(declare-fun lt!1614215 () Unit!80421)

(declare-fun Unit!80441 () Unit!80421)

(assert (=> b!4411461 (= lt!1614215 Unit!80441)))

(declare-fun res!1820995 () Bool)

(assert (=> b!4411461 (= res!1820995 (forall!9420 (_2!27796 (h!54997 (toList!3299 lm!1616))) lambda!150756))))

(assert (=> b!4411461 (=> (not res!1820995) (not e!2747232))))

(assert (=> b!4411461 e!2747232))

(declare-fun lt!1614213 () Unit!80421)

(declare-fun Unit!80442 () Unit!80421)

(assert (=> b!4411461 (= lt!1614213 Unit!80442)))

(assert (= (and d!1336805 c!751355) b!4411460))

(assert (= (and d!1336805 (not c!751355)) b!4411461))

(assert (= (and b!4411461 res!1820995) b!4411459))

(assert (= (or b!4411460 b!4411461) bm!307053))

(assert (= (or b!4411460 b!4411461) bm!307054))

(assert (= (or b!4411460 b!4411461) bm!307055))

(assert (= (and d!1336805 res!1820996) b!4411457))

(assert (= (and b!4411457 res!1820994) b!4411458))

(declare-fun m!5087137 () Bool)

(assert (=> bm!307054 m!5087137))

(declare-fun m!5087139 () Bool)

(assert (=> b!4411461 m!5087139))

(declare-fun m!5087141 () Bool)

(assert (=> b!4411461 m!5087141))

(declare-fun m!5087143 () Bool)

(assert (=> b!4411461 m!5087143))

(declare-fun m!5087145 () Bool)

(assert (=> b!4411461 m!5087145))

(declare-fun m!5087147 () Bool)

(assert (=> b!4411461 m!5087147))

(assert (=> b!4411461 m!5086903))

(declare-fun m!5087149 () Bool)

(assert (=> b!4411461 m!5087149))

(assert (=> b!4411461 m!5086903))

(declare-fun m!5087151 () Bool)

(assert (=> b!4411461 m!5087151))

(assert (=> b!4411461 m!5087147))

(assert (=> b!4411461 m!5087149))

(declare-fun m!5087153 () Bool)

(assert (=> b!4411461 m!5087153))

(declare-fun m!5087155 () Bool)

(assert (=> b!4411461 m!5087155))

(declare-fun m!5087157 () Bool)

(assert (=> b!4411461 m!5087157))

(declare-fun m!5087159 () Bool)

(assert (=> b!4411461 m!5087159))

(declare-fun m!5087161 () Bool)

(assert (=> bm!307055 m!5087161))

(assert (=> b!4411459 m!5087139))

(declare-fun m!5087163 () Bool)

(assert (=> b!4411457 m!5087163))

(declare-fun m!5087165 () Bool)

(assert (=> b!4411458 m!5087165))

(declare-fun m!5087167 () Bool)

(assert (=> d!1336805 m!5087167))

(assert (=> d!1336805 m!5086953))

(assert (=> bm!307053 m!5086903))

(declare-fun m!5087169 () Bool)

(assert (=> bm!307053 m!5087169))

(assert (=> b!4411203 d!1336805))

(declare-fun bs!752745 () Bool)

(declare-fun d!1336829 () Bool)

(assert (= bs!752745 (and d!1336829 start!429194)))

(declare-fun lambda!150758 () Int)

(assert (=> bs!752745 (= lambda!150758 lambda!150692)))

(declare-fun bs!752746 () Bool)

(assert (= bs!752746 (and d!1336829 d!1336713)))

(assert (=> bs!752746 (not (= lambda!150758 lambda!150704))))

(declare-fun bs!752747 () Bool)

(assert (= bs!752747 (and d!1336829 d!1336725)))

(assert (=> bs!752747 (= lambda!150758 lambda!150713)))

(declare-fun lt!1614220 () ListMap!2543)

(assert (=> d!1336829 (invariantList!764 (toList!3300 lt!1614220))))

(declare-fun e!2747240 () ListMap!2543)

(assert (=> d!1336829 (= lt!1614220 e!2747240)))

(declare-fun c!751356 () Bool)

(assert (=> d!1336829 (= c!751356 (is-Cons!49356 (t!356418 (toList!3299 lm!1616))))))

(assert (=> d!1336829 (forall!9418 (t!356418 (toList!3299 lm!1616)) lambda!150758)))

(assert (=> d!1336829 (= (extractMap!717 (t!356418 (toList!3299 lm!1616))) lt!1614220)))

(declare-fun b!4411470 () Bool)

(assert (=> b!4411470 (= e!2747240 (addToMapMapFromBucket!315 (_2!27796 (h!54997 (t!356418 (toList!3299 lm!1616)))) (extractMap!717 (t!356418 (t!356418 (toList!3299 lm!1616))))))))

(declare-fun b!4411471 () Bool)

(assert (=> b!4411471 (= e!2747240 (ListMap!2544 Nil!49355))))

(assert (= (and d!1336829 c!751356) b!4411470))

(assert (= (and d!1336829 (not c!751356)) b!4411471))

(declare-fun m!5087171 () Bool)

(assert (=> d!1336829 m!5087171))

(declare-fun m!5087173 () Bool)

(assert (=> d!1336829 m!5087173))

(declare-fun m!5087175 () Bool)

(assert (=> b!4411470 m!5087175))

(assert (=> b!4411470 m!5087175))

(declare-fun m!5087177 () Bool)

(assert (=> b!4411470 m!5087177))

(assert (=> b!4411203 d!1336829))

(declare-fun d!1336831 () Bool)

(declare-fun choose!27752 (Hashable!5050 K!10713) (_ BitVec 64))

(assert (=> d!1336831 (= (hash!1955 hashF!1220 key!3717) (choose!27752 hashF!1220 key!3717))))

(declare-fun bs!752748 () Bool)

(assert (= bs!752748 d!1336831))

(declare-fun m!5087179 () Bool)

(assert (=> bs!752748 m!5087179))

(assert (=> d!1336737 d!1336831))

(declare-fun bs!752752 () Bool)

(declare-fun b!4411515 () Bool)

(assert (= bs!752752 (and b!4411515 b!4411347)))

(declare-fun lambda!150767 () Int)

(assert (=> bs!752752 (= (= (t!356417 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))) (toList!3300 (extractMap!717 (toList!3299 lm!1616)))) (= lambda!150767 lambda!150724))))

(assert (=> b!4411515 true))

(declare-fun bs!752753 () Bool)

(declare-fun b!4411522 () Bool)

(assert (= bs!752753 (and b!4411522 b!4411347)))

(declare-fun lambda!150768 () Int)

(assert (=> bs!752753 (= (= (Cons!49355 (h!54996 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))) (t!356417 (toList!3300 (extractMap!717 (toList!3299 lm!1616))))) (toList!3300 (extractMap!717 (toList!3299 lm!1616)))) (= lambda!150768 lambda!150724))))

(declare-fun bs!752754 () Bool)

(assert (= bs!752754 (and b!4411522 b!4411515)))

(assert (=> bs!752754 (= (= (Cons!49355 (h!54996 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))) (t!356417 (toList!3300 (extractMap!717 (toList!3299 lm!1616))))) (t!356417 (toList!3300 (extractMap!717 (toList!3299 lm!1616))))) (= lambda!150768 lambda!150767))))

(assert (=> b!4411522 true))

(declare-fun bs!752755 () Bool)

(declare-fun b!4411519 () Bool)

(assert (= bs!752755 (and b!4411519 b!4411347)))

(declare-fun lambda!150769 () Int)

(assert (=> bs!752755 (= lambda!150769 lambda!150724)))

(declare-fun bs!752756 () Bool)

(assert (= bs!752756 (and b!4411519 b!4411515)))

(assert (=> bs!752756 (= (= (toList!3300 (extractMap!717 (toList!3299 lm!1616))) (t!356417 (toList!3300 (extractMap!717 (toList!3299 lm!1616))))) (= lambda!150769 lambda!150767))))

(declare-fun bs!752757 () Bool)

(assert (= bs!752757 (and b!4411519 b!4411522)))

(assert (=> bs!752757 (= (= (toList!3300 (extractMap!717 (toList!3299 lm!1616))) (Cons!49355 (h!54996 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))) (t!356417 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))))) (= lambda!150769 lambda!150768))))

(assert (=> b!4411519 true))

(declare-fun bs!752758 () Bool)

(declare-fun b!4411521 () Bool)

(assert (= bs!752758 (and b!4411521 b!4411348)))

(declare-fun lambda!150770 () Int)

(assert (=> bs!752758 (= lambda!150770 lambda!150725)))

(declare-fun b!4411514 () Bool)

(declare-fun e!2747267 () Unit!80421)

(declare-fun Unit!80443 () Unit!80421)

(assert (=> b!4411514 (= e!2747267 Unit!80443)))

(assert (=> b!4411515 false))

(declare-fun lt!1614245 () Unit!80421)

(declare-fun forallContained!2049 (List!49483 Int K!10713) Unit!80421)

(assert (=> b!4411515 (= lt!1614245 (forallContained!2049 (getKeysList!211 (t!356417 (toList!3300 (extractMap!717 (toList!3299 lm!1616))))) lambda!150767 (_1!27795 (h!54996 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))))))))

(declare-fun Unit!80444 () Unit!80421)

(assert (=> b!4411515 (= e!2747267 Unit!80444)))

(declare-fun b!4411516 () Bool)

(declare-fun res!1821017 () Bool)

(declare-fun e!2747265 () Bool)

(assert (=> b!4411516 (=> (not res!1821017) (not e!2747265))))

(declare-fun lt!1614242 () List!49483)

(assert (=> b!4411516 (= res!1821017 (= (length!146 lt!1614242) (length!147 (toList!3300 (extractMap!717 (toList!3299 lm!1616))))))))

(declare-fun b!4411517 () Bool)

(declare-fun e!2747268 () Unit!80421)

(declare-fun Unit!80445 () Unit!80421)

(assert (=> b!4411517 (= e!2747268 Unit!80445)))

(declare-fun d!1336833 () Bool)

(assert (=> d!1336833 e!2747265))

(declare-fun res!1821018 () Bool)

(assert (=> d!1336833 (=> (not res!1821018) (not e!2747265))))

(assert (=> d!1336833 (= res!1821018 (noDuplicate!645 lt!1614242))))

(declare-fun e!2747266 () List!49483)

(assert (=> d!1336833 (= lt!1614242 e!2747266)))

(declare-fun c!751371 () Bool)

(assert (=> d!1336833 (= c!751371 (is-Cons!49355 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))))))

(assert (=> d!1336833 (invariantList!764 (toList!3300 (extractMap!717 (toList!3299 lm!1616))))))

(assert (=> d!1336833 (= (getKeysList!211 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))) lt!1614242)))

(declare-fun b!4411518 () Bool)

(assert (=> b!4411518 (= e!2747266 Nil!49359)))

(declare-fun res!1821019 () Bool)

(assert (=> b!4411519 (=> (not res!1821019) (not e!2747265))))

(assert (=> b!4411519 (= res!1821019 (forall!9422 lt!1614242 lambda!150769))))

(declare-fun b!4411520 () Bool)

(assert (=> b!4411520 false))

(declare-fun Unit!80446 () Unit!80421)

(assert (=> b!4411520 (= e!2747268 Unit!80446)))

(assert (=> b!4411521 (= e!2747265 (= (content!7903 lt!1614242) (content!7903 (map!10771 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) lambda!150770))))))

(assert (=> b!4411522 (= e!2747266 (Cons!49359 (_1!27795 (h!54996 (toList!3300 (extractMap!717 (toList!3299 lm!1616))))) (getKeysList!211 (t!356417 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))))))))

(declare-fun c!751373 () Bool)

(assert (=> b!4411522 (= c!751373 (containsKey!986 (t!356417 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))) (_1!27795 (h!54996 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))))))))

(declare-fun lt!1614246 () Unit!80421)

(assert (=> b!4411522 (= lt!1614246 e!2747268)))

(declare-fun c!751372 () Bool)

(assert (=> b!4411522 (= c!751372 (contains!11788 (getKeysList!211 (t!356417 (toList!3300 (extractMap!717 (toList!3299 lm!1616))))) (_1!27795 (h!54996 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))))))))

(declare-fun lt!1614247 () Unit!80421)

(assert (=> b!4411522 (= lt!1614247 e!2747267)))

(declare-fun lt!1614243 () List!49483)

(assert (=> b!4411522 (= lt!1614243 (getKeysList!211 (t!356417 (toList!3300 (extractMap!717 (toList!3299 lm!1616))))))))

(declare-fun lt!1614244 () Unit!80421)

(declare-fun lemmaForallContainsAddHeadPreserves!67 (List!49479 List!49483 tuple2!49002) Unit!80421)

(assert (=> b!4411522 (= lt!1614244 (lemmaForallContainsAddHeadPreserves!67 (t!356417 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))) lt!1614243 (h!54996 (toList!3300 (extractMap!717 (toList!3299 lm!1616))))))))

(assert (=> b!4411522 (forall!9422 lt!1614243 lambda!150768)))

(declare-fun lt!1614241 () Unit!80421)

(assert (=> b!4411522 (= lt!1614241 lt!1614244)))

(assert (= (and d!1336833 c!751371) b!4411522))

(assert (= (and d!1336833 (not c!751371)) b!4411518))

(assert (= (and b!4411522 c!751373) b!4411520))

(assert (= (and b!4411522 (not c!751373)) b!4411517))

(assert (= (and b!4411522 c!751372) b!4411515))

(assert (= (and b!4411522 (not c!751372)) b!4411514))

(assert (= (and d!1336833 res!1821018) b!4411516))

(assert (= (and b!4411516 res!1821017) b!4411519))

(assert (= (and b!4411519 res!1821019) b!4411521))

(declare-fun m!5087211 () Bool)

(assert (=> b!4411515 m!5087211))

(assert (=> b!4411515 m!5087211))

(declare-fun m!5087213 () Bool)

(assert (=> b!4411515 m!5087213))

(declare-fun m!5087215 () Bool)

(assert (=> b!4411519 m!5087215))

(assert (=> b!4411522 m!5087211))

(assert (=> b!4411522 m!5087211))

(declare-fun m!5087217 () Bool)

(assert (=> b!4411522 m!5087217))

(declare-fun m!5087219 () Bool)

(assert (=> b!4411522 m!5087219))

(declare-fun m!5087221 () Bool)

(assert (=> b!4411522 m!5087221))

(declare-fun m!5087223 () Bool)

(assert (=> b!4411522 m!5087223))

(declare-fun m!5087225 () Bool)

(assert (=> b!4411516 m!5087225))

(assert (=> b!4411516 m!5087057))

(declare-fun m!5087227 () Bool)

(assert (=> b!4411521 m!5087227))

(declare-fun m!5087229 () Bool)

(assert (=> b!4411521 m!5087229))

(assert (=> b!4411521 m!5087229))

(declare-fun m!5087231 () Bool)

(assert (=> b!4411521 m!5087231))

(declare-fun m!5087233 () Bool)

(assert (=> d!1336833 m!5087233))

(assert (=> d!1336833 m!5087037))

(assert (=> b!4411190 d!1336833))

(declare-fun d!1336857 () Bool)

(declare-fun res!1821026 () Bool)

(declare-fun e!2747275 () Bool)

(assert (=> d!1336857 (=> res!1821026 e!2747275)))

(assert (=> d!1336857 (= res!1821026 (not (is-Cons!49355 (_2!27796 (h!54997 (toList!3299 lm!1616))))))))

(assert (=> d!1336857 (= (noDuplicateKeys!656 (_2!27796 (h!54997 (toList!3299 lm!1616)))) e!2747275)))

(declare-fun b!4411531 () Bool)

(declare-fun e!2747276 () Bool)

(assert (=> b!4411531 (= e!2747275 e!2747276)))

(declare-fun res!1821027 () Bool)

(assert (=> b!4411531 (=> (not res!1821027) (not e!2747276))))

(assert (=> b!4411531 (= res!1821027 (not (containsKey!987 (t!356417 (_2!27796 (h!54997 (toList!3299 lm!1616)))) (_1!27795 (h!54996 (_2!27796 (h!54997 (toList!3299 lm!1616))))))))))

(declare-fun b!4411532 () Bool)

(assert (=> b!4411532 (= e!2747276 (noDuplicateKeys!656 (t!356417 (_2!27796 (h!54997 (toList!3299 lm!1616))))))))

(assert (= (and d!1336857 (not res!1821026)) b!4411531))

(assert (= (and b!4411531 res!1821027) b!4411532))

(declare-fun m!5087237 () Bool)

(assert (=> b!4411531 m!5087237))

(declare-fun m!5087239 () Bool)

(assert (=> b!4411532 m!5087239))

(assert (=> bs!752722 d!1336857))

(declare-fun d!1336861 () Bool)

(declare-fun res!1821028 () Bool)

(declare-fun e!2747277 () Bool)

(assert (=> d!1336861 (=> res!1821028 e!2747277)))

(assert (=> d!1336861 (= res!1821028 (is-Nil!49356 (toList!3299 (+!921 lm!1616 (tuple2!49005 hash!366 newBucket!194)))))))

(assert (=> d!1336861 (= (forall!9418 (toList!3299 (+!921 lm!1616 (tuple2!49005 hash!366 newBucket!194))) lambda!150692) e!2747277)))

(declare-fun b!4411533 () Bool)

(declare-fun e!2747278 () Bool)

(assert (=> b!4411533 (= e!2747277 e!2747278)))

(declare-fun res!1821029 () Bool)

(assert (=> b!4411533 (=> (not res!1821029) (not e!2747278))))

(assert (=> b!4411533 (= res!1821029 (dynLambda!20789 lambda!150692 (h!54997 (toList!3299 (+!921 lm!1616 (tuple2!49005 hash!366 newBucket!194))))))))

(declare-fun b!4411534 () Bool)

(assert (=> b!4411534 (= e!2747278 (forall!9418 (t!356418 (toList!3299 (+!921 lm!1616 (tuple2!49005 hash!366 newBucket!194)))) lambda!150692))))

(assert (= (and d!1336861 (not res!1821028)) b!4411533))

(assert (= (and b!4411533 res!1821029) b!4411534))

(declare-fun b_lambda!141865 () Bool)

(assert (=> (not b_lambda!141865) (not b!4411533)))

(declare-fun m!5087241 () Bool)

(assert (=> b!4411533 m!5087241))

(declare-fun m!5087243 () Bool)

(assert (=> b!4411534 m!5087243))

(assert (=> d!1336733 d!1336861))

(assert (=> d!1336733 d!1336731))

(declare-fun d!1336863 () Bool)

(assert (=> d!1336863 (forall!9418 (toList!3299 (+!921 lm!1616 (tuple2!49005 hash!366 newBucket!194))) lambda!150692)))

(assert (=> d!1336863 true))

(declare-fun _$31!349 () Unit!80421)

(assert (=> d!1336863 (= (choose!27747 lm!1616 lambda!150692 hash!366 newBucket!194) _$31!349)))

(declare-fun bs!752760 () Bool)

(assert (= bs!752760 d!1336863))

(assert (=> bs!752760 m!5086831))

(assert (=> bs!752760 m!5086923))

(assert (=> d!1336733 d!1336863))

(assert (=> d!1336733 d!1336739))

(declare-fun d!1336865 () Bool)

(declare-fun res!1821034 () Bool)

(declare-fun e!2747283 () Bool)

(assert (=> d!1336865 (=> res!1821034 e!2747283)))

(assert (=> d!1336865 (= res!1821034 (and (is-Cons!49355 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))) (= (_1!27795 (h!54996 (toList!3300 (extractMap!717 (toList!3299 lm!1616))))) key!3717)))))

(assert (=> d!1336865 (= (containsKey!986 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) key!3717) e!2747283)))

(declare-fun b!4411540 () Bool)

(declare-fun e!2747284 () Bool)

(assert (=> b!4411540 (= e!2747283 e!2747284)))

(declare-fun res!1821035 () Bool)

(assert (=> b!4411540 (=> (not res!1821035) (not e!2747284))))

(assert (=> b!4411540 (= res!1821035 (is-Cons!49355 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))))))

(declare-fun b!4411541 () Bool)

(assert (=> b!4411541 (= e!2747284 (containsKey!986 (t!356417 (toList!3300 (extractMap!717 (toList!3299 lm!1616)))) key!3717))))

(assert (= (and d!1336865 (not res!1821034)) b!4411540))

(assert (= (and b!4411540 res!1821035) b!4411541))

(declare-fun m!5087245 () Bool)

(assert (=> b!4411541 m!5087245))

(assert (=> b!4411194 d!1336865))

(declare-fun d!1336867 () Bool)

(assert (=> d!1336867 (containsKey!986 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) key!3717)))

(declare-fun lt!1614250 () Unit!80421)

(declare-fun choose!27753 (List!49479 K!10713) Unit!80421)

(assert (=> d!1336867 (= lt!1614250 (choose!27753 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) key!3717))))

(assert (=> d!1336867 (invariantList!764 (toList!3300 (extractMap!717 (toList!3299 lm!1616))))))

(assert (=> d!1336867 (= (lemmaInGetKeysListThenContainsKey!209 (toList!3300 (extractMap!717 (toList!3299 lm!1616))) key!3717) lt!1614250)))

(declare-fun bs!752761 () Bool)

(assert (= bs!752761 d!1336867))

(assert (=> bs!752761 m!5086881))

(declare-fun m!5087247 () Bool)

(assert (=> bs!752761 m!5087247))

(assert (=> bs!752761 m!5087037))

(assert (=> b!4411194 d!1336867))

(assert (=> b!4411192 d!1336789))

(declare-fun d!1336869 () Bool)

(declare-fun res!1821036 () Bool)

(declare-fun e!2747285 () Bool)

(assert (=> d!1336869 (=> res!1821036 e!2747285)))

(assert (=> d!1336869 (= res!1821036 (not (is-Cons!49355 (_2!27796 (tuple2!49005 hash!366 newBucket!194)))))))

(assert (=> d!1336869 (= (noDuplicateKeys!656 (_2!27796 (tuple2!49005 hash!366 newBucket!194))) e!2747285)))

(declare-fun b!4411542 () Bool)

(declare-fun e!2747286 () Bool)

(assert (=> b!4411542 (= e!2747285 e!2747286)))

(declare-fun res!1821037 () Bool)

(assert (=> b!4411542 (=> (not res!1821037) (not e!2747286))))

(assert (=> b!4411542 (= res!1821037 (not (containsKey!987 (t!356417 (_2!27796 (tuple2!49005 hash!366 newBucket!194))) (_1!27795 (h!54996 (_2!27796 (tuple2!49005 hash!366 newBucket!194)))))))))

(declare-fun b!4411543 () Bool)

(assert (=> b!4411543 (= e!2747286 (noDuplicateKeys!656 (t!356417 (_2!27796 (tuple2!49005 hash!366 newBucket!194)))))))

(assert (= (and d!1336869 (not res!1821036)) b!4411542))

(assert (= (and b!4411542 res!1821037) b!4411543))

(declare-fun m!5087249 () Bool)

(assert (=> b!4411542 m!5087249))

(declare-fun m!5087251 () Bool)

(assert (=> b!4411543 m!5087251))

(assert (=> bs!752723 d!1336869))

(declare-fun d!1336871 () Bool)

(assert (=> d!1336871 (isDefined!7935 (getValueByKey!628 (toList!3299 lm!1616) hash!366))))

(declare-fun lt!1614253 () Unit!80421)

(declare-fun choose!27754 (List!49480 (_ BitVec 64)) Unit!80421)

(assert (=> d!1336871 (= lt!1614253 (choose!27754 (toList!3299 lm!1616) hash!366))))

(declare-fun e!2747289 () Bool)

(assert (=> d!1336871 e!2747289))

(declare-fun res!1821040 () Bool)

(assert (=> d!1336871 (=> (not res!1821040) (not e!2747289))))

(assert (=> d!1336871 (= res!1821040 (isStrictlySorted!190 (toList!3299 lm!1616)))))

(assert (=> d!1336871 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!538 (toList!3299 lm!1616) hash!366) lt!1614253)))

(declare-fun b!4411546 () Bool)

(assert (=> b!4411546 (= e!2747289 (containsKey!988 (toList!3299 lm!1616) hash!366))))

(assert (= (and d!1336871 res!1821040) b!4411546))

(assert (=> d!1336871 m!5086929))

(assert (=> d!1336871 m!5086929))

(assert (=> d!1336871 m!5086949))

(declare-fun m!5087253 () Bool)

(assert (=> d!1336871 m!5087253))

(assert (=> d!1336871 m!5086939))

(assert (=> b!4411546 m!5086945))

(assert (=> b!4411253 d!1336871))

(declare-fun d!1336873 () Bool)

(declare-fun isEmpty!28297 (Option!10642) Bool)

(assert (=> d!1336873 (= (isDefined!7935 (getValueByKey!628 (toList!3299 lm!1616) hash!366)) (not (isEmpty!28297 (getValueByKey!628 (toList!3299 lm!1616) hash!366))))))

(declare-fun bs!752762 () Bool)

(assert (= bs!752762 d!1336873))

(assert (=> bs!752762 m!5086929))

(declare-fun m!5087255 () Bool)

(assert (=> bs!752762 m!5087255))

(assert (=> b!4411253 d!1336873))

(declare-fun b!4411549 () Bool)

(declare-fun e!2747291 () Option!10642)

(assert (=> b!4411549 (= e!2747291 (getValueByKey!628 (t!356418 (toList!3299 lm!1616)) hash!366))))

(declare-fun b!4411550 () Bool)

(assert (=> b!4411550 (= e!2747291 None!10641)))

(declare-fun b!4411547 () Bool)

(declare-fun e!2747290 () Option!10642)

(assert (=> b!4411547 (= e!2747290 (Some!10641 (_2!27796 (h!54997 (toList!3299 lm!1616)))))))

(declare-fun d!1336875 () Bool)

(declare-fun c!751374 () Bool)

(assert (=> d!1336875 (= c!751374 (and (is-Cons!49356 (toList!3299 lm!1616)) (= (_1!27796 (h!54997 (toList!3299 lm!1616))) hash!366)))))

(assert (=> d!1336875 (= (getValueByKey!628 (toList!3299 lm!1616) hash!366) e!2747290)))

(declare-fun b!4411548 () Bool)

(assert (=> b!4411548 (= e!2747290 e!2747291)))

(declare-fun c!751375 () Bool)

(assert (=> b!4411548 (= c!751375 (and (is-Cons!49356 (toList!3299 lm!1616)) (not (= (_1!27796 (h!54997 (toList!3299 lm!1616))) hash!366))))))

(assert (= (and d!1336875 c!751374) b!4411547))

(assert (= (and d!1336875 (not c!751374)) b!4411548))

(assert (= (and b!4411548 c!751375) b!4411549))

(assert (= (and b!4411548 (not c!751375)) b!4411550))

(declare-fun m!5087257 () Bool)

(assert (=> b!4411549 m!5087257))

(assert (=> b!4411253 d!1336875))

(declare-fun b!4411553 () Bool)

(declare-fun e!2747293 () Option!10642)

(assert (=> b!4411553 (= e!2747293 (getValueByKey!628 (t!356418 (toList!3299 lt!1614054)) (_1!27796 (tuple2!49005 hash!366 newBucket!194))))))

(declare-fun b!4411554 () Bool)

(assert (=> b!4411554 (= e!2747293 None!10641)))

(declare-fun b!4411551 () Bool)

(declare-fun e!2747292 () Option!10642)

(assert (=> b!4411551 (= e!2747292 (Some!10641 (_2!27796 (h!54997 (toList!3299 lt!1614054)))))))

(declare-fun d!1336877 () Bool)

(declare-fun c!751376 () Bool)

(assert (=> d!1336877 (= c!751376 (and (is-Cons!49356 (toList!3299 lt!1614054)) (= (_1!27796 (h!54997 (toList!3299 lt!1614054))) (_1!27796 (tuple2!49005 hash!366 newBucket!194)))))))

(assert (=> d!1336877 (= (getValueByKey!628 (toList!3299 lt!1614054) (_1!27796 (tuple2!49005 hash!366 newBucket!194))) e!2747292)))

(declare-fun b!4411552 () Bool)

(assert (=> b!4411552 (= e!2747292 e!2747293)))

(declare-fun c!751377 () Bool)

(assert (=> b!4411552 (= c!751377 (and (is-Cons!49356 (toList!3299 lt!1614054)) (not (= (_1!27796 (h!54997 (toList!3299 lt!1614054))) (_1!27796 (tuple2!49005 hash!366 newBucket!194))))))))

(assert (= (and d!1336877 c!751376) b!4411551))

(assert (= (and d!1336877 (not c!751376)) b!4411552))

(assert (= (and b!4411552 c!751377) b!4411553))

(assert (= (and b!4411552 (not c!751377)) b!4411554))

(declare-fun m!5087259 () Bool)

(assert (=> b!4411553 m!5087259))

(assert (=> b!4411215 d!1336877))

(declare-fun d!1336879 () Bool)

(declare-fun res!1821045 () Bool)

(declare-fun e!2747298 () Bool)

(assert (=> d!1336879 (=> res!1821045 e!2747298)))

(assert (=> d!1336879 (= res!1821045 (and (is-Cons!49356 (toList!3299 lm!1616)) (= (_1!27796 (h!54997 (toList!3299 lm!1616))) hash!366)))))

(assert (=> d!1336879 (= (containsKey!988 (toList!3299 lm!1616) hash!366) e!2747298)))

(declare-fun b!4411559 () Bool)

(declare-fun e!2747299 () Bool)

(assert (=> b!4411559 (= e!2747298 e!2747299)))

(declare-fun res!1821046 () Bool)

(assert (=> b!4411559 (=> (not res!1821046) (not e!2747299))))

(assert (=> b!4411559 (= res!1821046 (and (or (not (is-Cons!49356 (toList!3299 lm!1616))) (bvsle (_1!27796 (h!54997 (toList!3299 lm!1616))) hash!366)) (is-Cons!49356 (toList!3299 lm!1616)) (bvslt (_1!27796 (h!54997 (toList!3299 lm!1616))) hash!366)))))

(declare-fun b!4411560 () Bool)

(assert (=> b!4411560 (= e!2747299 (containsKey!988 (t!356418 (toList!3299 lm!1616)) hash!366))))

(assert (= (and d!1336879 (not res!1821045)) b!4411559))

(assert (= (and b!4411559 res!1821046) b!4411560))

(declare-fun m!5087261 () Bool)

(assert (=> b!4411560 m!5087261))

(assert (=> d!1336745 d!1336879))

(assert (=> b!4411255 d!1336873))

(assert (=> b!4411255 d!1336875))

(declare-fun d!1336881 () Bool)

(declare-fun noDuplicatedKeys!161 (List!49479) Bool)

(assert (=> d!1336881 (= (invariantList!764 (toList!3300 lt!1614043)) (noDuplicatedKeys!161 (toList!3300 lt!1614043)))))

(declare-fun bs!752763 () Bool)

(assert (= bs!752763 d!1336881))

(declare-fun m!5087263 () Bool)

(assert (=> bs!752763 m!5087263))

(assert (=> d!1336725 d!1336881))

(declare-fun d!1336883 () Bool)

(declare-fun res!1821047 () Bool)

(declare-fun e!2747300 () Bool)

(assert (=> d!1336883 (=> res!1821047 e!2747300)))

(assert (=> d!1336883 (= res!1821047 (is-Nil!49356 (toList!3299 lm!1616)))))

(assert (=> d!1336883 (= (forall!9418 (toList!3299 lm!1616) lambda!150713) e!2747300)))

(declare-fun b!4411561 () Bool)

(declare-fun e!2747301 () Bool)

(assert (=> b!4411561 (= e!2747300 e!2747301)))

(declare-fun res!1821048 () Bool)

(assert (=> b!4411561 (=> (not res!1821048) (not e!2747301))))

(assert (=> b!4411561 (= res!1821048 (dynLambda!20789 lambda!150713 (h!54997 (toList!3299 lm!1616))))))

(declare-fun b!4411562 () Bool)

(assert (=> b!4411562 (= e!2747301 (forall!9418 (t!356418 (toList!3299 lm!1616)) lambda!150713))))

(assert (= (and d!1336883 (not res!1821047)) b!4411561))

(assert (= (and b!4411561 res!1821048) b!4411562))

(declare-fun b_lambda!141867 () Bool)

(assert (=> (not b_lambda!141867) (not b!4411561)))

(declare-fun m!5087265 () Bool)

(assert (=> b!4411561 m!5087265))

(declare-fun m!5087267 () Bool)

(assert (=> b!4411562 m!5087267))

(assert (=> d!1336725 d!1336883))

(declare-fun d!1336885 () Bool)

(declare-fun res!1821049 () Bool)

(declare-fun e!2747302 () Bool)

(assert (=> d!1336885 (=> res!1821049 e!2747302)))

(assert (=> d!1336885 (= res!1821049 (not (is-Cons!49355 (t!356417 newBucket!194))))))

(assert (=> d!1336885 (= (noDuplicateKeys!656 (t!356417 newBucket!194)) e!2747302)))

(declare-fun b!4411563 () Bool)

(declare-fun e!2747303 () Bool)

(assert (=> b!4411563 (= e!2747302 e!2747303)))

(declare-fun res!1821050 () Bool)

(assert (=> b!4411563 (=> (not res!1821050) (not e!2747303))))

(assert (=> b!4411563 (= res!1821050 (not (containsKey!987 (t!356417 (t!356417 newBucket!194)) (_1!27795 (h!54996 (t!356417 newBucket!194))))))))

(declare-fun b!4411564 () Bool)

(assert (=> b!4411564 (= e!2747303 (noDuplicateKeys!656 (t!356417 (t!356417 newBucket!194))))))

(assert (= (and d!1336885 (not res!1821049)) b!4411563))

(assert (= (and b!4411563 res!1821050) b!4411564))

(declare-fun m!5087269 () Bool)

(assert (=> b!4411563 m!5087269))

(declare-fun m!5087271 () Bool)

(assert (=> b!4411564 m!5087271))

(assert (=> b!4411232 d!1336885))

(assert (=> d!1336717 d!1336865))

(declare-fun d!1336887 () Bool)

(assert (=> d!1336887 (= (get!16072 (getValueByKey!628 (toList!3299 lm!1616) hash!366)) (v!43793 (getValueByKey!628 (toList!3299 lm!1616) hash!366)))))

(assert (=> d!1336735 d!1336887))

(assert (=> d!1336735 d!1336875))

(declare-fun d!1336889 () Bool)

(declare-fun lt!1614256 () Bool)

(declare-fun content!7904 (List!49480) (Set tuple2!49004))

(assert (=> d!1336889 (= lt!1614256 (set.member (tuple2!49005 hash!366 newBucket!194) (content!7904 (toList!3299 lt!1614054))))))

(declare-fun e!2747309 () Bool)

(assert (=> d!1336889 (= lt!1614256 e!2747309)))

(declare-fun res!1821056 () Bool)

(assert (=> d!1336889 (=> (not res!1821056) (not e!2747309))))

(assert (=> d!1336889 (= res!1821056 (is-Cons!49356 (toList!3299 lt!1614054)))))

(assert (=> d!1336889 (= (contains!11789 (toList!3299 lt!1614054) (tuple2!49005 hash!366 newBucket!194)) lt!1614256)))

(declare-fun b!4411569 () Bool)

(declare-fun e!2747308 () Bool)

(assert (=> b!4411569 (= e!2747309 e!2747308)))

(declare-fun res!1821055 () Bool)

(assert (=> b!4411569 (=> res!1821055 e!2747308)))

(assert (=> b!4411569 (= res!1821055 (= (h!54997 (toList!3299 lt!1614054)) (tuple2!49005 hash!366 newBucket!194)))))

(declare-fun b!4411570 () Bool)

(assert (=> b!4411570 (= e!2747308 (contains!11789 (t!356418 (toList!3299 lt!1614054)) (tuple2!49005 hash!366 newBucket!194)))))

(assert (= (and d!1336889 res!1821056) b!4411569))

(assert (= (and b!4411569 (not res!1821055)) b!4411570))

(declare-fun m!5087273 () Bool)

(assert (=> d!1336889 m!5087273))

(declare-fun m!5087275 () Bool)

(assert (=> d!1336889 m!5087275))

(declare-fun m!5087277 () Bool)

(assert (=> b!4411570 m!5087277))

(assert (=> b!4411216 d!1336889))

(declare-fun d!1336891 () Bool)

(declare-fun res!1821061 () Bool)

(declare-fun e!2747314 () Bool)

(assert (=> d!1336891 (=> res!1821061 e!2747314)))

(assert (=> d!1336891 (= res!1821061 (and (is-Cons!49355 (t!356417 newBucket!194)) (= (_1!27795 (h!54996 (t!356417 newBucket!194))) (_1!27795 (h!54996 newBucket!194)))))))

(assert (=> d!1336891 (= (containsKey!987 (t!356417 newBucket!194) (_1!27795 (h!54996 newBucket!194))) e!2747314)))

(declare-fun b!4411575 () Bool)

(declare-fun e!2747315 () Bool)

(assert (=> b!4411575 (= e!2747314 e!2747315)))

(declare-fun res!1821062 () Bool)

(assert (=> b!4411575 (=> (not res!1821062) (not e!2747315))))

(assert (=> b!4411575 (= res!1821062 (is-Cons!49355 (t!356417 newBucket!194)))))

(declare-fun b!4411576 () Bool)

(assert (=> b!4411576 (= e!2747315 (containsKey!987 (t!356417 (t!356417 newBucket!194)) (_1!27795 (h!54996 newBucket!194))))))

(assert (= (and d!1336891 (not res!1821061)) b!4411575))

(assert (= (and b!4411575 res!1821062) b!4411576))

(declare-fun m!5087279 () Bool)

(assert (=> b!4411576 m!5087279))

(assert (=> b!4411231 d!1336891))

(declare-fun d!1336893 () Bool)

(declare-fun res!1821063 () Bool)

(declare-fun e!2747316 () Bool)

(assert (=> d!1336893 (=> res!1821063 e!2747316)))

(assert (=> d!1336893 (= res!1821063 (is-Nil!49356 (t!356418 (toList!3299 lt!1614002))))))

(assert (=> d!1336893 (= (forall!9418 (t!356418 (toList!3299 lt!1614002)) lambda!150692) e!2747316)))

(declare-fun b!4411577 () Bool)

(declare-fun e!2747317 () Bool)

(assert (=> b!4411577 (= e!2747316 e!2747317)))

(declare-fun res!1821064 () Bool)

(assert (=> b!4411577 (=> (not res!1821064) (not e!2747317))))

(assert (=> b!4411577 (= res!1821064 (dynLambda!20789 lambda!150692 (h!54997 (t!356418 (toList!3299 lt!1614002)))))))

(declare-fun b!4411578 () Bool)

(assert (=> b!4411578 (= e!2747317 (forall!9418 (t!356418 (t!356418 (toList!3299 lt!1614002))) lambda!150692))))

(assert (= (and d!1336893 (not res!1821063)) b!4411577))

(assert (= (and b!4411577 res!1821064) b!4411578))

(declare-fun b_lambda!141869 () Bool)

(assert (=> (not b_lambda!141869) (not b!4411577)))

(declare-fun m!5087281 () Bool)

(assert (=> b!4411577 m!5087281))

(declare-fun m!5087283 () Bool)

(assert (=> b!4411578 m!5087283))

(assert (=> b!4411210 d!1336893))

(declare-fun d!1336895 () Bool)

(declare-fun res!1821065 () Bool)

(declare-fun e!2747318 () Bool)

(assert (=> d!1336895 (=> res!1821065 e!2747318)))

(assert (=> d!1336895 (= res!1821065 (is-Nil!49356 (t!356418 (toList!3299 lm!1616))))))

(assert (=> d!1336895 (= (forall!9418 (t!356418 (toList!3299 lm!1616)) lambda!150692) e!2747318)))

(declare-fun b!4411579 () Bool)

(declare-fun e!2747319 () Bool)

(assert (=> b!4411579 (= e!2747318 e!2747319)))

(declare-fun res!1821066 () Bool)

(assert (=> b!4411579 (=> (not res!1821066) (not e!2747319))))

(assert (=> b!4411579 (= res!1821066 (dynLambda!20789 lambda!150692 (h!54997 (t!356418 (toList!3299 lm!1616)))))))

(declare-fun b!4411580 () Bool)

(assert (=> b!4411580 (= e!2747319 (forall!9418 (t!356418 (t!356418 (toList!3299 lm!1616))) lambda!150692))))

(assert (= (and d!1336895 (not res!1821065)) b!4411579))

(assert (= (and b!4411579 res!1821066) b!4411580))

(declare-fun b_lambda!141871 () Bool)

(assert (=> (not b_lambda!141871) (not b!4411579)))

(declare-fun m!5087285 () Bool)

(assert (=> b!4411579 m!5087285))

(declare-fun m!5087287 () Bool)

(assert (=> b!4411580 m!5087287))

(assert (=> b!4411222 d!1336895))

(declare-fun d!1336897 () Bool)

(declare-fun res!1821067 () Bool)

(declare-fun e!2747320 () Bool)

(assert (=> d!1336897 (=> res!1821067 e!2747320)))

(assert (=> d!1336897 (= res!1821067 (is-Nil!49356 (toList!3299 lm!1616)))))

(assert (=> d!1336897 (= (forall!9418 (toList!3299 lm!1616) lambda!150704) e!2747320)))

(declare-fun b!4411581 () Bool)

(declare-fun e!2747321 () Bool)

(assert (=> b!4411581 (= e!2747320 e!2747321)))

(declare-fun res!1821068 () Bool)

(assert (=> b!4411581 (=> (not res!1821068) (not e!2747321))))

(assert (=> b!4411581 (= res!1821068 (dynLambda!20789 lambda!150704 (h!54997 (toList!3299 lm!1616))))))

(declare-fun b!4411582 () Bool)

(assert (=> b!4411582 (= e!2747321 (forall!9418 (t!356418 (toList!3299 lm!1616)) lambda!150704))))

(assert (= (and d!1336897 (not res!1821067)) b!4411581))

(assert (= (and b!4411581 res!1821068) b!4411582))

(declare-fun b_lambda!141873 () Bool)

(assert (=> (not b_lambda!141873) (not b!4411581)))

(declare-fun m!5087289 () Bool)

(assert (=> b!4411581 m!5087289))

(declare-fun m!5087291 () Bool)

(assert (=> b!4411582 m!5087291))

(assert (=> d!1336713 d!1336897))

(declare-fun tp!1332209 () Bool)

(declare-fun e!2747322 () Bool)

(declare-fun b!4411583 () Bool)

(assert (=> b!4411583 (= e!2747322 (and tp_is_empty!25871 tp_is_empty!25869 tp!1332209))))

(assert (=> b!4411260 (= tp!1332193 e!2747322)))

(assert (= (and b!4411260 (is-Cons!49355 (t!356417 (t!356417 newBucket!194)))) b!4411583))

(declare-fun e!2747323 () Bool)

(declare-fun tp!1332210 () Bool)

(declare-fun b!4411584 () Bool)

(assert (=> b!4411584 (= e!2747323 (and tp_is_empty!25871 tp_is_empty!25869 tp!1332210))))

(assert (=> b!4411265 (= tp!1332198 e!2747323)))

(assert (= (and b!4411265 (is-Cons!49355 (_2!27796 (h!54997 (toList!3299 lm!1616))))) b!4411584))

(declare-fun b!4411585 () Bool)

(declare-fun e!2747324 () Bool)

(declare-fun tp!1332211 () Bool)

(declare-fun tp!1332212 () Bool)

(assert (=> b!4411585 (= e!2747324 (and tp!1332211 tp!1332212))))

(assert (=> b!4411265 (= tp!1332199 e!2747324)))

(assert (= (and b!4411265 (is-Cons!49356 (t!356418 (toList!3299 lm!1616)))) b!4411585))

(declare-fun b_lambda!141875 () Bool)

(assert (= b_lambda!141871 (or start!429194 b_lambda!141875)))

(declare-fun bs!752764 () Bool)

(declare-fun d!1336899 () Bool)

(assert (= bs!752764 (and d!1336899 start!429194)))

(assert (=> bs!752764 (= (dynLambda!20789 lambda!150692 (h!54997 (t!356418 (toList!3299 lm!1616)))) (noDuplicateKeys!656 (_2!27796 (h!54997 (t!356418 (toList!3299 lm!1616))))))))

(declare-fun m!5087293 () Bool)

(assert (=> bs!752764 m!5087293))

(assert (=> b!4411579 d!1336899))

(declare-fun b_lambda!141877 () Bool)

(assert (= b_lambda!141869 (or start!429194 b_lambda!141877)))

(declare-fun bs!752765 () Bool)

(declare-fun d!1336901 () Bool)

(assert (= bs!752765 (and d!1336901 start!429194)))

(assert (=> bs!752765 (= (dynLambda!20789 lambda!150692 (h!54997 (t!356418 (toList!3299 lt!1614002)))) (noDuplicateKeys!656 (_2!27796 (h!54997 (t!356418 (toList!3299 lt!1614002))))))))

(declare-fun m!5087295 () Bool)

(assert (=> bs!752765 m!5087295))

(assert (=> b!4411577 d!1336901))

(declare-fun b_lambda!141879 () Bool)

(assert (= b_lambda!141865 (or start!429194 b_lambda!141879)))

(declare-fun bs!752766 () Bool)

(declare-fun d!1336903 () Bool)

(assert (= bs!752766 (and d!1336903 start!429194)))

(assert (=> bs!752766 (= (dynLambda!20789 lambda!150692 (h!54997 (toList!3299 (+!921 lm!1616 (tuple2!49005 hash!366 newBucket!194))))) (noDuplicateKeys!656 (_2!27796 (h!54997 (toList!3299 (+!921 lm!1616 (tuple2!49005 hash!366 newBucket!194)))))))))

(declare-fun m!5087297 () Bool)

(assert (=> bs!752766 m!5087297))

(assert (=> b!4411533 d!1336903))

(declare-fun b_lambda!141881 () Bool)

(assert (= b_lambda!141873 (or d!1336713 b_lambda!141881)))

(declare-fun bs!752767 () Bool)

(declare-fun d!1336905 () Bool)

(assert (= bs!752767 (and d!1336905 d!1336713)))

(assert (=> bs!752767 (= (dynLambda!20789 lambda!150704 (h!54997 (toList!3299 lm!1616))) (allKeysSameHash!616 (_2!27796 (h!54997 (toList!3299 lm!1616))) (_1!27796 (h!54997 (toList!3299 lm!1616))) hashF!1220))))

(declare-fun m!5087299 () Bool)

(assert (=> bs!752767 m!5087299))

(assert (=> b!4411581 d!1336905))

(declare-fun b_lambda!141883 () Bool)

(assert (= b_lambda!141855 (or d!1336715 b_lambda!141883)))

(declare-fun bs!752768 () Bool)

(declare-fun d!1336907 () Bool)

(assert (= bs!752768 (and d!1336907 d!1336715)))

(assert (=> bs!752768 (= (dynLambda!20791 lambda!150707 (h!54996 newBucket!194)) (= (hash!1953 hashF!1220 (_1!27795 (h!54996 newBucket!194))) hash!366))))

(declare-fun m!5087301 () Bool)

(assert (=> bs!752768 m!5087301))

(assert (=> b!4411355 d!1336907))

(declare-fun b_lambda!141885 () Bool)

(assert (= b_lambda!141867 (or d!1336725 b_lambda!141885)))

(declare-fun bs!752769 () Bool)

(declare-fun d!1336909 () Bool)

(assert (= bs!752769 (and d!1336909 d!1336725)))

(assert (=> bs!752769 (= (dynLambda!20789 lambda!150713 (h!54997 (toList!3299 lm!1616))) (noDuplicateKeys!656 (_2!27796 (h!54997 (toList!3299 lm!1616)))))))

(assert (=> bs!752769 m!5086953))

(assert (=> b!4411561 d!1336909))

(push 1)

(assert (not b_lambda!141841))

(assert (not b!4411346))

(assert (not b!4411578))

(assert (not bs!752767))

(assert (not d!1336793))

(assert (not b_lambda!141839))

(assert (not d!1336873))

(assert (not b!4411372))

(assert (not b!4411541))

(assert (not b!4411543))

(assert (not b_lambda!141843))

(assert (not d!1336805))

(assert (not bm!307046))

(assert (not d!1336889))

(assert (not d!1336867))

(assert (not b!4411521))

(assert (not b_lambda!141875))

(assert (not bs!752764))

(assert (not b!4411321))

(assert (not d!1336831))

(assert (not b_lambda!141883))

(assert (not b!4411402))

(assert (not b!4411516))

(assert (not d!1336833))

(assert (not bs!752765))

(assert (not b!4411457))

(assert (not d!1336787))

(assert (not b!4411542))

(assert (not d!1336871))

(assert (not bs!752766))

(assert (not d!1336795))

(assert (not b!4411361))

(assert (not b!4411546))

(assert (not bs!752769))

(assert (not d!1336863))

(assert (not b!4411378))

(assert (not d!1336789))

(assert (not d!1336781))

(assert (not bm!307053))

(assert (not b!4411459))

(assert (not d!1336785))

(assert (not b!4411320))

(assert (not b!4411339))

(assert (not b!4411532))

(assert (not b!4411534))

(assert (not b!4411560))

(assert (not b!4411359))

(assert (not b_lambda!141881))

(assert (not bm!307054))

(assert (not b!4411356))

(assert (not b!4411580))

(assert (not bm!307055))

(assert (not b!4411585))

(assert (not b!4411401))

(assert (not b!4411563))

(assert (not b!4411407))

(assert (not b!4411348))

(assert (not d!1336779))

(assert (not b!4411470))

(assert (not b!4411522))

(assert (not b!4411549))

(assert (not b!4411415))

(assert (not b!4411531))

(assert (not b!4411332))

(assert (not b!4411570))

(assert tp_is_empty!25871)

(assert (not b!4411564))

(assert (not b!4411582))

(assert (not b!4411461))

(assert (not b!4411515))

(assert (not b!4411347))

(assert (not b!4411562))

(assert tp_is_empty!25869)

(assert (not bs!752768))

(assert (not d!1336801))

(assert (not d!1336881))

(assert (not d!1336829))

(assert (not b!4411458))

(assert (not d!1336799))

(assert (not b_lambda!141885))

(assert (not b!4411553))

(assert (not b!4411379))

(assert (not b!4411358))

(assert (not b!4411583))

(assert (not b_lambda!141879))

(assert (not b!4411576))

(assert (not b_lambda!141877))

(assert (not b!4411584))

(assert (not b!4411519))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

