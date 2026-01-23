; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437296 () Bool)

(assert start!437296)

(declare-fun res!1849279 () Bool)

(declare-fun e!2777105 () Bool)

(assert (=> start!437296 (=> (not res!1849279) (not e!2777105))))

(declare-datatypes ((K!11545 0))(
  ( (K!11546 (val!17507 Int)) )
))
(declare-datatypes ((V!11791 0))(
  ( (V!11792 (val!17508 Int)) )
))
(declare-datatypes ((tuple2!50316 0))(
  ( (tuple2!50317 (_1!28452 K!11545) (_2!28452 V!11791)) )
))
(declare-datatypes ((List!50271 0))(
  ( (Nil!50147) (Cons!50147 (h!55892 tuple2!50316) (t!357221 List!50271)) )
))
(declare-fun l!12755 () List!50271)

(declare-fun noDuplicateKeys!976 (List!50271) Bool)

(assert (=> start!437296 (= res!1849279 (noDuplicateKeys!976 l!12755))))

(assert (=> start!437296 e!2777105))

(declare-fun e!2777103 () Bool)

(assert (=> start!437296 e!2777103))

(declare-fun tp_is_empty!27125 () Bool)

(assert (=> start!437296 tp_is_empty!27125))

(declare-datatypes ((ListMap!3193 0))(
  ( (ListMap!3194 (toList!3948 List!50271)) )
))
(declare-fun acc!957 () ListMap!3193)

(declare-fun e!2777104 () Bool)

(declare-fun inv!65729 (ListMap!3193) Bool)

(assert (=> start!437296 (and (inv!65729 acc!957) e!2777104)))

(declare-fun b!4459825 () Bool)

(declare-fun size!35904 (List!50271) Int)

(assert (=> b!4459825 (= e!2777105 (< (size!35904 l!12755) 0))))

(declare-fun b!4459826 () Bool)

(declare-fun tp_is_empty!27127 () Bool)

(declare-fun tp!1335603 () Bool)

(assert (=> b!4459826 (= e!2777103 (and tp_is_empty!27125 tp_is_empty!27127 tp!1335603))))

(declare-fun b!4459827 () Bool)

(declare-fun res!1849277 () Bool)

(assert (=> b!4459827 (=> (not res!1849277) (not e!2777105))))

(declare-fun key!4289 () K!11545)

(declare-fun containsKey!1376 (List!50271 K!11545) Bool)

(assert (=> b!4459827 (= res!1849277 (not (containsKey!1376 l!12755 key!4289)))))

(declare-fun b!4459828 () Bool)

(declare-fun tp!1335602 () Bool)

(assert (=> b!4459828 (= e!2777104 tp!1335602)))

(declare-fun b!4459829 () Bool)

(declare-fun res!1849278 () Bool)

(assert (=> b!4459829 (=> (not res!1849278) (not e!2777105))))

(declare-fun contains!12645 (ListMap!3193 K!11545) Bool)

(declare-fun addToMapMapFromBucket!555 (List!50271 ListMap!3193) ListMap!3193)

(assert (=> b!4459829 (= res!1849278 (contains!12645 (addToMapMapFromBucket!555 l!12755 acc!957) key!4289))))

(assert (= (and start!437296 res!1849279) b!4459827))

(assert (= (and b!4459827 res!1849277) b!4459829))

(assert (= (and b!4459829 res!1849278) b!4459825))

(get-info :version)

(assert (= (and start!437296 ((_ is Cons!50147) l!12755)) b!4459826))

(assert (= start!437296 b!4459828))

(declare-fun m!5162753 () Bool)

(assert (=> start!437296 m!5162753))

(declare-fun m!5162755 () Bool)

(assert (=> start!437296 m!5162755))

(declare-fun m!5162757 () Bool)

(assert (=> b!4459825 m!5162757))

(declare-fun m!5162759 () Bool)

(assert (=> b!4459827 m!5162759))

(declare-fun m!5162761 () Bool)

(assert (=> b!4459829 m!5162761))

(assert (=> b!4459829 m!5162761))

(declare-fun m!5162763 () Bool)

(assert (=> b!4459829 m!5162763))

(check-sat (not b!4459829) tp_is_empty!27125 (not b!4459827) (not b!4459826) (not start!437296) (not b!4459825) tp_is_empty!27127 (not b!4459828))
(check-sat)
(get-model)

(declare-fun d!1360027 () Bool)

(declare-fun lt!1650907 () Int)

(assert (=> d!1360027 (>= lt!1650907 0)))

(declare-fun e!2777112 () Int)

(assert (=> d!1360027 (= lt!1650907 e!2777112)))

(declare-fun c!759037 () Bool)

(assert (=> d!1360027 (= c!759037 ((_ is Nil!50147) l!12755))))

(assert (=> d!1360027 (= (size!35904 l!12755) lt!1650907)))

(declare-fun b!4459838 () Bool)

(assert (=> b!4459838 (= e!2777112 0)))

(declare-fun b!4459839 () Bool)

(assert (=> b!4459839 (= e!2777112 (+ 1 (size!35904 (t!357221 l!12755))))))

(assert (= (and d!1360027 c!759037) b!4459838))

(assert (= (and d!1360027 (not c!759037)) b!4459839))

(declare-fun m!5162765 () Bool)

(assert (=> b!4459839 m!5162765))

(assert (=> b!4459825 d!1360027))

(declare-fun b!4459878 () Bool)

(declare-fun e!2777141 () Bool)

(declare-datatypes ((List!50273 0))(
  ( (Nil!50149) (Cons!50149 (h!55894 K!11545) (t!357223 List!50273)) )
))
(declare-fun contains!12647 (List!50273 K!11545) Bool)

(declare-fun keys!17270 (ListMap!3193) List!50273)

(assert (=> b!4459878 (= e!2777141 (not (contains!12647 (keys!17270 (addToMapMapFromBucket!555 l!12755 acc!957)) key!4289)))))

(declare-fun b!4459879 () Bool)

(assert (=> b!4459879 false))

(declare-datatypes ((Unit!86597 0))(
  ( (Unit!86598) )
))
(declare-fun lt!1650940 () Unit!86597)

(declare-fun lt!1650945 () Unit!86597)

(assert (=> b!4459879 (= lt!1650940 lt!1650945)))

(declare-fun containsKey!1378 (List!50271 K!11545) Bool)

(assert (=> b!4459879 (containsKey!1378 (toList!3948 (addToMapMapFromBucket!555 l!12755 acc!957)) key!4289)))

(declare-fun lemmaInGetKeysListThenContainsKey!344 (List!50271 K!11545) Unit!86597)

(assert (=> b!4459879 (= lt!1650945 (lemmaInGetKeysListThenContainsKey!344 (toList!3948 (addToMapMapFromBucket!555 l!12755 acc!957)) key!4289))))

(declare-fun e!2777140 () Unit!86597)

(declare-fun Unit!86600 () Unit!86597)

(assert (=> b!4459879 (= e!2777140 Unit!86600)))

(declare-fun b!4459880 () Bool)

(declare-fun e!2777144 () List!50273)

(declare-fun getKeysList!345 (List!50271) List!50273)

(assert (=> b!4459880 (= e!2777144 (getKeysList!345 (toList!3948 (addToMapMapFromBucket!555 l!12755 acc!957))))))

(declare-fun b!4459881 () Bool)

(declare-fun Unit!86601 () Unit!86597)

(assert (=> b!4459881 (= e!2777140 Unit!86601)))

(declare-fun b!4459882 () Bool)

(declare-fun e!2777139 () Bool)

(assert (=> b!4459882 (= e!2777139 (contains!12647 (keys!17270 (addToMapMapFromBucket!555 l!12755 acc!957)) key!4289))))

(declare-fun d!1360031 () Bool)

(declare-fun e!2777143 () Bool)

(assert (=> d!1360031 e!2777143))

(declare-fun res!1849299 () Bool)

(assert (=> d!1360031 (=> res!1849299 e!2777143)))

(assert (=> d!1360031 (= res!1849299 e!2777141)))

(declare-fun res!1849300 () Bool)

(assert (=> d!1360031 (=> (not res!1849300) (not e!2777141))))

(declare-fun lt!1650946 () Bool)

(assert (=> d!1360031 (= res!1849300 (not lt!1650946))))

(declare-fun lt!1650944 () Bool)

(assert (=> d!1360031 (= lt!1650946 lt!1650944)))

(declare-fun lt!1650943 () Unit!86597)

(declare-fun e!2777142 () Unit!86597)

(assert (=> d!1360031 (= lt!1650943 e!2777142)))

(declare-fun c!759051 () Bool)

(assert (=> d!1360031 (= c!759051 lt!1650944)))

(assert (=> d!1360031 (= lt!1650944 (containsKey!1378 (toList!3948 (addToMapMapFromBucket!555 l!12755 acc!957)) key!4289))))

(assert (=> d!1360031 (= (contains!12645 (addToMapMapFromBucket!555 l!12755 acc!957) key!4289) lt!1650946)))

(declare-fun b!4459883 () Bool)

(declare-fun lt!1650947 () Unit!86597)

(assert (=> b!4459883 (= e!2777142 lt!1650947)))

(declare-fun lt!1650942 () Unit!86597)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!768 (List!50271 K!11545) Unit!86597)

(assert (=> b!4459883 (= lt!1650942 (lemmaContainsKeyImpliesGetValueByKeyDefined!768 (toList!3948 (addToMapMapFromBucket!555 l!12755 acc!957)) key!4289))))

(declare-datatypes ((Option!10877 0))(
  ( (None!10876) (Some!10876 (v!44134 V!11791)) )
))
(declare-fun isDefined!8165 (Option!10877) Bool)

(declare-fun getValueByKey!863 (List!50271 K!11545) Option!10877)

(assert (=> b!4459883 (isDefined!8165 (getValueByKey!863 (toList!3948 (addToMapMapFromBucket!555 l!12755 acc!957)) key!4289))))

(declare-fun lt!1650941 () Unit!86597)

(assert (=> b!4459883 (= lt!1650941 lt!1650942)))

(declare-fun lemmaInListThenGetKeysListContains!341 (List!50271 K!11545) Unit!86597)

(assert (=> b!4459883 (= lt!1650947 (lemmaInListThenGetKeysListContains!341 (toList!3948 (addToMapMapFromBucket!555 l!12755 acc!957)) key!4289))))

(declare-fun call!310443 () Bool)

(assert (=> b!4459883 call!310443))

(declare-fun b!4459884 () Bool)

(assert (=> b!4459884 (= e!2777142 e!2777140)))

(declare-fun c!759050 () Bool)

(assert (=> b!4459884 (= c!759050 call!310443)))

(declare-fun b!4459885 () Bool)

(assert (=> b!4459885 (= e!2777143 e!2777139)))

(declare-fun res!1849298 () Bool)

(assert (=> b!4459885 (=> (not res!1849298) (not e!2777139))))

(assert (=> b!4459885 (= res!1849298 (isDefined!8165 (getValueByKey!863 (toList!3948 (addToMapMapFromBucket!555 l!12755 acc!957)) key!4289)))))

(declare-fun bm!310438 () Bool)

(assert (=> bm!310438 (= call!310443 (contains!12647 e!2777144 key!4289))))

(declare-fun c!759052 () Bool)

(assert (=> bm!310438 (= c!759052 c!759051)))

(declare-fun b!4459886 () Bool)

(assert (=> b!4459886 (= e!2777144 (keys!17270 (addToMapMapFromBucket!555 l!12755 acc!957)))))

(assert (= (and d!1360031 c!759051) b!4459883))

(assert (= (and d!1360031 (not c!759051)) b!4459884))

(assert (= (and b!4459884 c!759050) b!4459879))

(assert (= (and b!4459884 (not c!759050)) b!4459881))

(assert (= (or b!4459883 b!4459884) bm!310438))

(assert (= (and bm!310438 c!759052) b!4459880))

(assert (= (and bm!310438 (not c!759052)) b!4459886))

(assert (= (and d!1360031 res!1849300) b!4459878))

(assert (= (and d!1360031 (not res!1849299)) b!4459885))

(assert (= (and b!4459885 res!1849298) b!4459882))

(declare-fun m!5162769 () Bool)

(assert (=> b!4459879 m!5162769))

(declare-fun m!5162771 () Bool)

(assert (=> b!4459879 m!5162771))

(assert (=> d!1360031 m!5162769))

(declare-fun m!5162773 () Bool)

(assert (=> bm!310438 m!5162773))

(assert (=> b!4459882 m!5162761))

(declare-fun m!5162775 () Bool)

(assert (=> b!4459882 m!5162775))

(assert (=> b!4459882 m!5162775))

(declare-fun m!5162777 () Bool)

(assert (=> b!4459882 m!5162777))

(declare-fun m!5162779 () Bool)

(assert (=> b!4459885 m!5162779))

(assert (=> b!4459885 m!5162779))

(declare-fun m!5162781 () Bool)

(assert (=> b!4459885 m!5162781))

(declare-fun m!5162783 () Bool)

(assert (=> b!4459883 m!5162783))

(assert (=> b!4459883 m!5162779))

(assert (=> b!4459883 m!5162779))

(assert (=> b!4459883 m!5162781))

(declare-fun m!5162785 () Bool)

(assert (=> b!4459883 m!5162785))

(declare-fun m!5162787 () Bool)

(assert (=> b!4459880 m!5162787))

(assert (=> b!4459886 m!5162761))

(assert (=> b!4459886 m!5162775))

(assert (=> b!4459878 m!5162761))

(assert (=> b!4459878 m!5162775))

(assert (=> b!4459878 m!5162775))

(assert (=> b!4459878 m!5162777))

(assert (=> b!4459829 d!1360031))

(declare-fun b!4459943 () Bool)

(assert (=> b!4459943 true))

(declare-fun bs!791385 () Bool)

(declare-fun b!4459941 () Bool)

(assert (= bs!791385 (and b!4459941 b!4459943)))

(declare-fun lambda!161433 () Int)

(declare-fun lambda!161432 () Int)

(assert (=> bs!791385 (= lambda!161433 lambda!161432)))

(assert (=> b!4459941 true))

(declare-fun lambda!161434 () Int)

(declare-fun lt!1651064 () ListMap!3193)

(assert (=> bs!791385 (= (= lt!1651064 acc!957) (= lambda!161434 lambda!161432))))

(assert (=> b!4459941 (= (= lt!1651064 acc!957) (= lambda!161434 lambda!161433))))

(assert (=> b!4459941 true))

(declare-fun bs!791386 () Bool)

(declare-fun d!1360035 () Bool)

(assert (= bs!791386 (and d!1360035 b!4459943)))

(declare-fun lt!1651083 () ListMap!3193)

(declare-fun lambda!161435 () Int)

(assert (=> bs!791386 (= (= lt!1651083 acc!957) (= lambda!161435 lambda!161432))))

(declare-fun bs!791387 () Bool)

(assert (= bs!791387 (and d!1360035 b!4459941)))

(assert (=> bs!791387 (= (= lt!1651083 acc!957) (= lambda!161435 lambda!161433))))

(assert (=> bs!791387 (= (= lt!1651083 lt!1651064) (= lambda!161435 lambda!161434))))

(assert (=> d!1360035 true))

(declare-fun e!2777180 () Bool)

(assert (=> d!1360035 e!2777180))

(declare-fun res!1849326 () Bool)

(assert (=> d!1360035 (=> (not res!1849326) (not e!2777180))))

(declare-fun forall!9907 (List!50271 Int) Bool)

(assert (=> d!1360035 (= res!1849326 (forall!9907 l!12755 lambda!161435))))

(declare-fun e!2777181 () ListMap!3193)

(assert (=> d!1360035 (= lt!1651083 e!2777181)))

(declare-fun c!759064 () Bool)

(assert (=> d!1360035 (= c!759064 ((_ is Nil!50147) l!12755))))

(assert (=> d!1360035 (noDuplicateKeys!976 l!12755)))

(assert (=> d!1360035 (= (addToMapMapFromBucket!555 l!12755 acc!957) lt!1651083)))

(assert (=> b!4459941 (= e!2777181 lt!1651064)))

(declare-fun lt!1651066 () ListMap!3193)

(declare-fun +!1329 (ListMap!3193 tuple2!50316) ListMap!3193)

(assert (=> b!4459941 (= lt!1651066 (+!1329 acc!957 (h!55892 l!12755)))))

(assert (=> b!4459941 (= lt!1651064 (addToMapMapFromBucket!555 (t!357221 l!12755) (+!1329 acc!957 (h!55892 l!12755))))))

(declare-fun lt!1651081 () Unit!86597)

(declare-fun call!310462 () Unit!86597)

(assert (=> b!4459941 (= lt!1651081 call!310462)))

(declare-fun call!310461 () Bool)

(assert (=> b!4459941 call!310461))

(declare-fun lt!1651073 () Unit!86597)

(assert (=> b!4459941 (= lt!1651073 lt!1651081)))

(assert (=> b!4459941 (forall!9907 (toList!3948 lt!1651066) lambda!161434)))

(declare-fun lt!1651075 () Unit!86597)

(declare-fun Unit!86602 () Unit!86597)

(assert (=> b!4459941 (= lt!1651075 Unit!86602)))

(assert (=> b!4459941 (forall!9907 (t!357221 l!12755) lambda!161434)))

(declare-fun lt!1651069 () Unit!86597)

(declare-fun Unit!86603 () Unit!86597)

(assert (=> b!4459941 (= lt!1651069 Unit!86603)))

(declare-fun lt!1651076 () Unit!86597)

(declare-fun Unit!86604 () Unit!86597)

(assert (=> b!4459941 (= lt!1651076 Unit!86604)))

(declare-fun lt!1651078 () Unit!86597)

(declare-fun forallContained!2196 (List!50271 Int tuple2!50316) Unit!86597)

(assert (=> b!4459941 (= lt!1651078 (forallContained!2196 (toList!3948 lt!1651066) lambda!161434 (h!55892 l!12755)))))

(assert (=> b!4459941 (contains!12645 lt!1651066 (_1!28452 (h!55892 l!12755)))))

(declare-fun lt!1651082 () Unit!86597)

(declare-fun Unit!86605 () Unit!86597)

(assert (=> b!4459941 (= lt!1651082 Unit!86605)))

(assert (=> b!4459941 (contains!12645 lt!1651064 (_1!28452 (h!55892 l!12755)))))

(declare-fun lt!1651067 () Unit!86597)

(declare-fun Unit!86606 () Unit!86597)

(assert (=> b!4459941 (= lt!1651067 Unit!86606)))

(assert (=> b!4459941 (forall!9907 l!12755 lambda!161434)))

(declare-fun lt!1651065 () Unit!86597)

(declare-fun Unit!86607 () Unit!86597)

(assert (=> b!4459941 (= lt!1651065 Unit!86607)))

(assert (=> b!4459941 (forall!9907 (toList!3948 lt!1651066) lambda!161434)))

(declare-fun lt!1651080 () Unit!86597)

(declare-fun Unit!86608 () Unit!86597)

(assert (=> b!4459941 (= lt!1651080 Unit!86608)))

(declare-fun lt!1651077 () Unit!86597)

(declare-fun Unit!86609 () Unit!86597)

(assert (=> b!4459941 (= lt!1651077 Unit!86609)))

(declare-fun lt!1651070 () Unit!86597)

(declare-fun addForallContainsKeyThenBeforeAdding!245 (ListMap!3193 ListMap!3193 K!11545 V!11791) Unit!86597)

(assert (=> b!4459941 (= lt!1651070 (addForallContainsKeyThenBeforeAdding!245 acc!957 lt!1651064 (_1!28452 (h!55892 l!12755)) (_2!28452 (h!55892 l!12755))))))

(declare-fun call!310460 () Bool)

(assert (=> b!4459941 call!310460))

(declare-fun lt!1651071 () Unit!86597)

(assert (=> b!4459941 (= lt!1651071 lt!1651070)))

(assert (=> b!4459941 (forall!9907 (toList!3948 acc!957) lambda!161434)))

(declare-fun lt!1651074 () Unit!86597)

(declare-fun Unit!86610 () Unit!86597)

(assert (=> b!4459941 (= lt!1651074 Unit!86610)))

(declare-fun res!1849325 () Bool)

(assert (=> b!4459941 (= res!1849325 (forall!9907 l!12755 lambda!161434))))

(declare-fun e!2777179 () Bool)

(assert (=> b!4459941 (=> (not res!1849325) (not e!2777179))))

(assert (=> b!4459941 e!2777179))

(declare-fun lt!1651072 () Unit!86597)

(declare-fun Unit!86611 () Unit!86597)

(assert (=> b!4459941 (= lt!1651072 Unit!86611)))

(declare-fun bm!310455 () Bool)

(assert (=> bm!310455 (= call!310460 (forall!9907 (toList!3948 acc!957) (ite c!759064 lambda!161432 lambda!161434)))))

(declare-fun b!4459942 () Bool)

(declare-fun res!1849327 () Bool)

(assert (=> b!4459942 (=> (not res!1849327) (not e!2777180))))

(assert (=> b!4459942 (= res!1849327 (forall!9907 (toList!3948 acc!957) lambda!161435))))

(declare-fun bm!310456 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!246 (ListMap!3193) Unit!86597)

(assert (=> bm!310456 (= call!310462 (lemmaContainsAllItsOwnKeys!246 acc!957))))

(declare-fun bm!310457 () Bool)

(assert (=> bm!310457 (= call!310461 (forall!9907 (toList!3948 acc!957) (ite c!759064 lambda!161432 lambda!161433)))))

(assert (=> b!4459943 (= e!2777181 acc!957)))

(declare-fun lt!1651084 () Unit!86597)

(assert (=> b!4459943 (= lt!1651084 call!310462)))

(assert (=> b!4459943 call!310461))

(declare-fun lt!1651068 () Unit!86597)

(assert (=> b!4459943 (= lt!1651068 lt!1651084)))

(assert (=> b!4459943 call!310460))

(declare-fun lt!1651079 () Unit!86597)

(declare-fun Unit!86612 () Unit!86597)

(assert (=> b!4459943 (= lt!1651079 Unit!86612)))

(declare-fun b!4459944 () Bool)

(assert (=> b!4459944 (= e!2777179 (forall!9907 (toList!3948 acc!957) lambda!161434))))

(declare-fun b!4459945 () Bool)

(declare-fun invariantList!898 (List!50271) Bool)

(assert (=> b!4459945 (= e!2777180 (invariantList!898 (toList!3948 lt!1651083)))))

(assert (= (and d!1360035 c!759064) b!4459943))

(assert (= (and d!1360035 (not c!759064)) b!4459941))

(assert (= (and b!4459941 res!1849325) b!4459944))

(assert (= (or b!4459943 b!4459941) bm!310455))

(assert (= (or b!4459943 b!4459941) bm!310457))

(assert (= (or b!4459943 b!4459941) bm!310456))

(assert (= (and d!1360035 res!1849326) b!4459942))

(assert (= (and b!4459942 res!1849327) b!4459945))

(declare-fun m!5162851 () Bool)

(assert (=> d!1360035 m!5162851))

(assert (=> d!1360035 m!5162753))

(declare-fun m!5162853 () Bool)

(assert (=> b!4459941 m!5162853))

(declare-fun m!5162855 () Bool)

(assert (=> b!4459941 m!5162855))

(declare-fun m!5162857 () Bool)

(assert (=> b!4459941 m!5162857))

(declare-fun m!5162859 () Bool)

(assert (=> b!4459941 m!5162859))

(declare-fun m!5162861 () Bool)

(assert (=> b!4459941 m!5162861))

(declare-fun m!5162863 () Bool)

(assert (=> b!4459941 m!5162863))

(assert (=> b!4459941 m!5162863))

(declare-fun m!5162865 () Bool)

(assert (=> b!4459941 m!5162865))

(declare-fun m!5162867 () Bool)

(assert (=> b!4459941 m!5162867))

(assert (=> b!4459941 m!5162855))

(assert (=> b!4459941 m!5162865))

(declare-fun m!5162869 () Bool)

(assert (=> b!4459941 m!5162869))

(declare-fun m!5162871 () Bool)

(assert (=> b!4459941 m!5162871))

(declare-fun m!5162873 () Bool)

(assert (=> bm!310455 m!5162873))

(declare-fun m!5162875 () Bool)

(assert (=> b!4459942 m!5162875))

(declare-fun m!5162877 () Bool)

(assert (=> b!4459945 m!5162877))

(declare-fun m!5162879 () Bool)

(assert (=> bm!310457 m!5162879))

(declare-fun m!5162881 () Bool)

(assert (=> bm!310456 m!5162881))

(assert (=> b!4459944 m!5162861))

(assert (=> b!4459829 d!1360035))

(declare-fun d!1360045 () Bool)

(declare-fun res!1849332 () Bool)

(declare-fun e!2777186 () Bool)

(assert (=> d!1360045 (=> res!1849332 e!2777186)))

(assert (=> d!1360045 (= res!1849332 (not ((_ is Cons!50147) l!12755)))))

(assert (=> d!1360045 (= (noDuplicateKeys!976 l!12755) e!2777186)))

(declare-fun b!4459952 () Bool)

(declare-fun e!2777187 () Bool)

(assert (=> b!4459952 (= e!2777186 e!2777187)))

(declare-fun res!1849333 () Bool)

(assert (=> b!4459952 (=> (not res!1849333) (not e!2777187))))

(assert (=> b!4459952 (= res!1849333 (not (containsKey!1376 (t!357221 l!12755) (_1!28452 (h!55892 l!12755)))))))

(declare-fun b!4459953 () Bool)

(assert (=> b!4459953 (= e!2777187 (noDuplicateKeys!976 (t!357221 l!12755)))))

(assert (= (and d!1360045 (not res!1849332)) b!4459952))

(assert (= (and b!4459952 res!1849333) b!4459953))

(declare-fun m!5162883 () Bool)

(assert (=> b!4459952 m!5162883))

(declare-fun m!5162885 () Bool)

(assert (=> b!4459953 m!5162885))

(assert (=> start!437296 d!1360045))

(declare-fun d!1360047 () Bool)

(assert (=> d!1360047 (= (inv!65729 acc!957) (invariantList!898 (toList!3948 acc!957)))))

(declare-fun bs!791388 () Bool)

(assert (= bs!791388 d!1360047))

(declare-fun m!5162887 () Bool)

(assert (=> bs!791388 m!5162887))

(assert (=> start!437296 d!1360047))

(declare-fun d!1360049 () Bool)

(declare-fun res!1849338 () Bool)

(declare-fun e!2777192 () Bool)

(assert (=> d!1360049 (=> res!1849338 e!2777192)))

(assert (=> d!1360049 (= res!1849338 (and ((_ is Cons!50147) l!12755) (= (_1!28452 (h!55892 l!12755)) key!4289)))))

(assert (=> d!1360049 (= (containsKey!1376 l!12755 key!4289) e!2777192)))

(declare-fun b!4459958 () Bool)

(declare-fun e!2777193 () Bool)

(assert (=> b!4459958 (= e!2777192 e!2777193)))

(declare-fun res!1849339 () Bool)

(assert (=> b!4459958 (=> (not res!1849339) (not e!2777193))))

(assert (=> b!4459958 (= res!1849339 ((_ is Cons!50147) l!12755))))

(declare-fun b!4459959 () Bool)

(assert (=> b!4459959 (= e!2777193 (containsKey!1376 (t!357221 l!12755) key!4289))))

(assert (= (and d!1360049 (not res!1849338)) b!4459958))

(assert (= (and b!4459958 res!1849339) b!4459959))

(declare-fun m!5162889 () Bool)

(assert (=> b!4459959 m!5162889))

(assert (=> b!4459827 d!1360049))

(declare-fun e!2777196 () Bool)

(declare-fun tp!1335610 () Bool)

(declare-fun b!4459964 () Bool)

(assert (=> b!4459964 (= e!2777196 (and tp_is_empty!27125 tp_is_empty!27127 tp!1335610))))

(assert (=> b!4459826 (= tp!1335603 e!2777196)))

(assert (= (and b!4459826 ((_ is Cons!50147) (t!357221 l!12755))) b!4459964))

(declare-fun b!4459965 () Bool)

(declare-fun e!2777197 () Bool)

(declare-fun tp!1335611 () Bool)

(assert (=> b!4459965 (= e!2777197 (and tp_is_empty!27125 tp_is_empty!27127 tp!1335611))))

(assert (=> b!4459828 (= tp!1335602 e!2777197)))

(assert (= (and b!4459828 ((_ is Cons!50147) (toList!3948 acc!957))) b!4459965))

(check-sat (not b!4459878) (not bm!310438) (not b!4459953) (not bm!310456) (not b!4459839) (not bm!310457) (not b!4459886) (not b!4459941) (not d!1360047) (not b!4459942) (not b!4459964) tp_is_empty!27127 (not d!1360035) (not b!4459885) (not b!4459965) (not b!4459945) (not d!1360031) (not bm!310455) tp_is_empty!27125 (not b!4459883) (not b!4459879) (not b!4459880) (not b!4459882) (not b!4459952) (not b!4459959) (not b!4459944))
(check-sat)
