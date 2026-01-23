; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486060 () Bool)

(assert start!486060)

(declare-fun res!2017143 () Bool)

(declare-fun e!2966295 () Bool)

(assert (=> start!486060 (=> (not res!2017143) (not e!2966295))))

(declare-datatypes ((K!14635 0))(
  ( (K!14636 (val!19979 Int)) )
))
(declare-datatypes ((V!14881 0))(
  ( (V!14882 (val!19980 Int)) )
))
(declare-datatypes ((tuple2!54948 0))(
  ( (tuple2!54949 (_1!30768 K!14635) (_2!30768 V!14881)) )
))
(declare-datatypes ((List!53258 0))(
  ( (Nil!53134) (Cons!53134 (h!59531 tuple2!54948) (t!360602 List!53258)) )
))
(declare-fun l!13029 () List!53258)

(declare-fun key!4572 () K!14635)

(declare-fun containsKey!3600 (List!53258 K!14635) Bool)

(assert (=> start!486060 (= res!2017143 (not (containsKey!3600 l!13029 key!4572)))))

(assert (=> start!486060 e!2966295))

(declare-fun e!2966294 () Bool)

(assert (=> start!486060 e!2966294))

(declare-fun tp_is_empty!32069 () Bool)

(assert (=> start!486060 tp_is_empty!32069))

(declare-fun tp_is_empty!32071 () Bool)

(assert (=> start!486060 tp_is_empty!32071))

(declare-datatypes ((ListMap!5633 0))(
  ( (ListMap!5634 (toList!6162 List!53258)) )
))
(declare-fun lhm!63 () ListMap!5633)

(declare-fun e!2966296 () Bool)

(declare-fun inv!68505 (ListMap!5633) Bool)

(assert (=> start!486060 (and (inv!68505 lhm!63) e!2966296)))

(declare-fun b!4754965 () Bool)

(declare-fun res!2017142 () Bool)

(assert (=> b!4754965 (=> (not res!2017142) (not e!2966295))))

(get-info :version)

(assert (=> b!4754965 (= res!2017142 (not ((_ is Cons!53134) l!13029)))))

(declare-fun b!4754966 () Bool)

(declare-fun lt!1921791 () tuple2!54948)

(declare-fun addToMapMapFromBucket!1608 (List!53258 ListMap!5633) ListMap!5633)

(declare-fun +!2428 (ListMap!5633 tuple2!54948) ListMap!5633)

(assert (=> b!4754966 (= e!2966295 (not (= (addToMapMapFromBucket!1608 l!13029 (+!2428 lhm!63 lt!1921791)) (+!2428 (addToMapMapFromBucket!1608 l!13029 lhm!63) lt!1921791))))))

(declare-fun value!2966 () V!14881)

(assert (=> b!4754966 (= lt!1921791 (tuple2!54949 key!4572 value!2966))))

(declare-fun b!4754967 () Bool)

(declare-fun res!2017141 () Bool)

(assert (=> b!4754967 (=> (not res!2017141) (not e!2966295))))

(declare-fun noDuplicateKeys!2194 (List!53258) Bool)

(assert (=> b!4754967 (= res!2017141 (noDuplicateKeys!2194 l!13029))))

(declare-fun b!4754968 () Bool)

(declare-fun tp!1350576 () Bool)

(assert (=> b!4754968 (= e!2966296 tp!1350576)))

(declare-fun tp!1350577 () Bool)

(declare-fun b!4754969 () Bool)

(assert (=> b!4754969 (= e!2966294 (and tp_is_empty!32069 tp_is_empty!32071 tp!1350577))))

(assert (= (and start!486060 res!2017143) b!4754967))

(assert (= (and b!4754967 res!2017141) b!4754965))

(assert (= (and b!4754965 res!2017142) b!4754966))

(assert (= (and start!486060 ((_ is Cons!53134) l!13029)) b!4754969))

(assert (= start!486060 b!4754968))

(declare-fun m!5724599 () Bool)

(assert (=> start!486060 m!5724599))

(declare-fun m!5724601 () Bool)

(assert (=> start!486060 m!5724601))

(declare-fun m!5724603 () Bool)

(assert (=> b!4754966 m!5724603))

(assert (=> b!4754966 m!5724603))

(declare-fun m!5724605 () Bool)

(assert (=> b!4754966 m!5724605))

(declare-fun m!5724607 () Bool)

(assert (=> b!4754966 m!5724607))

(assert (=> b!4754966 m!5724607))

(declare-fun m!5724609 () Bool)

(assert (=> b!4754966 m!5724609))

(declare-fun m!5724611 () Bool)

(assert (=> b!4754967 m!5724611))

(check-sat (not b!4754967) (not b!4754968) (not b!4754966) (not b!4754969) (not start!486060) tp_is_empty!32071 tp_is_empty!32069)
(check-sat)
(get-model)

(declare-fun d!1520513 () Bool)

(declare-fun res!2017158 () Bool)

(declare-fun e!2966311 () Bool)

(assert (=> d!1520513 (=> res!2017158 e!2966311)))

(assert (=> d!1520513 (= res!2017158 (and ((_ is Cons!53134) l!13029) (= (_1!30768 (h!59531 l!13029)) key!4572)))))

(assert (=> d!1520513 (= (containsKey!3600 l!13029 key!4572) e!2966311)))

(declare-fun b!4754984 () Bool)

(declare-fun e!2966312 () Bool)

(assert (=> b!4754984 (= e!2966311 e!2966312)))

(declare-fun res!2017159 () Bool)

(assert (=> b!4754984 (=> (not res!2017159) (not e!2966312))))

(assert (=> b!4754984 (= res!2017159 ((_ is Cons!53134) l!13029))))

(declare-fun b!4754985 () Bool)

(assert (=> b!4754985 (= e!2966312 (containsKey!3600 (t!360602 l!13029) key!4572))))

(assert (= (and d!1520513 (not res!2017158)) b!4754984))

(assert (= (and b!4754984 res!2017159) b!4754985))

(declare-fun m!5724617 () Bool)

(assert (=> b!4754985 m!5724617))

(assert (=> start!486060 d!1520513))

(declare-fun d!1520517 () Bool)

(declare-fun invariantList!1622 (List!53258) Bool)

(assert (=> d!1520517 (= (inv!68505 lhm!63) (invariantList!1622 (toList!6162 lhm!63)))))

(declare-fun bs!1146585 () Bool)

(assert (= bs!1146585 d!1520517))

(declare-fun m!5724623 () Bool)

(assert (=> bs!1146585 m!5724623))

(assert (=> start!486060 d!1520517))

(declare-fun b!4755029 () Bool)

(assert (=> b!4755029 true))

(declare-fun bs!1146596 () Bool)

(declare-fun b!4755032 () Bool)

(assert (= bs!1146596 (and b!4755032 b!4755029)))

(declare-fun lambda!223225 () Int)

(declare-fun lambda!223224 () Int)

(assert (=> bs!1146596 (= lambda!223225 lambda!223224)))

(assert (=> b!4755032 true))

(declare-fun lambda!223226 () Int)

(declare-fun lt!1921947 () ListMap!5633)

(assert (=> bs!1146596 (= (= lt!1921947 (+!2428 lhm!63 lt!1921791)) (= lambda!223226 lambda!223224))))

(assert (=> b!4755032 (= (= lt!1921947 (+!2428 lhm!63 lt!1921791)) (= lambda!223226 lambda!223225))))

(assert (=> b!4755032 true))

(declare-fun bs!1146601 () Bool)

(declare-fun d!1520523 () Bool)

(assert (= bs!1146601 (and d!1520523 b!4755029)))

(declare-fun lt!1921945 () ListMap!5633)

(declare-fun lambda!223228 () Int)

(assert (=> bs!1146601 (= (= lt!1921945 (+!2428 lhm!63 lt!1921791)) (= lambda!223228 lambda!223224))))

(declare-fun bs!1146602 () Bool)

(assert (= bs!1146602 (and d!1520523 b!4755032)))

(assert (=> bs!1146602 (= (= lt!1921945 (+!2428 lhm!63 lt!1921791)) (= lambda!223228 lambda!223225))))

(assert (=> bs!1146602 (= (= lt!1921945 lt!1921947) (= lambda!223228 lambda!223226))))

(assert (=> d!1520523 true))

(declare-fun b!4755028 () Bool)

(declare-fun res!2017189 () Bool)

(declare-fun e!2966338 () Bool)

(assert (=> b!4755028 (=> (not res!2017189) (not e!2966338))))

(declare-fun forall!11784 (List!53258 Int) Bool)

(assert (=> b!4755028 (= res!2017189 (forall!11784 (toList!6162 (+!2428 lhm!63 lt!1921791)) lambda!223228))))

(assert (=> d!1520523 e!2966338))

(declare-fun res!2017188 () Bool)

(assert (=> d!1520523 (=> (not res!2017188) (not e!2966338))))

(assert (=> d!1520523 (= res!2017188 (forall!11784 l!13029 lambda!223228))))

(declare-fun e!2966339 () ListMap!5633)

(assert (=> d!1520523 (= lt!1921945 e!2966339)))

(declare-fun c!811644 () Bool)

(assert (=> d!1520523 (= c!811644 ((_ is Nil!53134) l!13029))))

(assert (=> d!1520523 (noDuplicateKeys!2194 l!13029)))

(assert (=> d!1520523 (= (addToMapMapFromBucket!1608 l!13029 (+!2428 lhm!63 lt!1921791)) lt!1921945)))

(assert (=> b!4755029 (= e!2966339 (+!2428 lhm!63 lt!1921791))))

(declare-datatypes ((Unit!137452 0))(
  ( (Unit!137453) )
))
(declare-fun lt!1921936 () Unit!137452)

(declare-fun call!333460 () Unit!137452)

(assert (=> b!4755029 (= lt!1921936 call!333460)))

(declare-fun call!333462 () Bool)

(assert (=> b!4755029 call!333462))

(declare-fun lt!1921951 () Unit!137452)

(assert (=> b!4755029 (= lt!1921951 lt!1921936)))

(declare-fun call!333461 () Bool)

(assert (=> b!4755029 call!333461))

(declare-fun lt!1921950 () Unit!137452)

(declare-fun Unit!137455 () Unit!137452)

(assert (=> b!4755029 (= lt!1921950 Unit!137455)))

(declare-fun lt!1921954 () ListMap!5633)

(declare-fun bm!333455 () Bool)

(assert (=> bm!333455 (= call!333462 (forall!11784 (ite c!811644 (toList!6162 (+!2428 lhm!63 lt!1921791)) (toList!6162 lt!1921954)) (ite c!811644 lambda!223224 lambda!223226)))))

(declare-fun e!2966337 () Bool)

(declare-fun b!4755030 () Bool)

(assert (=> b!4755030 (= e!2966337 (forall!11784 (toList!6162 (+!2428 lhm!63 lt!1921791)) lambda!223226))))

(declare-fun b!4755031 () Bool)

(assert (=> b!4755031 (= e!2966338 (invariantList!1622 (toList!6162 lt!1921945)))))

(declare-fun bm!333456 () Bool)

(assert (=> bm!333456 (= call!333461 (forall!11784 (ite c!811644 (toList!6162 (+!2428 lhm!63 lt!1921791)) (toList!6162 lt!1921954)) (ite c!811644 lambda!223224 lambda!223226)))))

(assert (=> b!4755032 (= e!2966339 lt!1921947)))

(assert (=> b!4755032 (= lt!1921954 (+!2428 (+!2428 lhm!63 lt!1921791) (h!59531 l!13029)))))

(assert (=> b!4755032 (= lt!1921947 (addToMapMapFromBucket!1608 (t!360602 l!13029) (+!2428 (+!2428 lhm!63 lt!1921791) (h!59531 l!13029))))))

(declare-fun lt!1921934 () Unit!137452)

(assert (=> b!4755032 (= lt!1921934 call!333460)))

(assert (=> b!4755032 (forall!11784 (toList!6162 (+!2428 lhm!63 lt!1921791)) lambda!223225)))

(declare-fun lt!1921948 () Unit!137452)

(assert (=> b!4755032 (= lt!1921948 lt!1921934)))

(assert (=> b!4755032 call!333461))

(declare-fun lt!1921949 () Unit!137452)

(declare-fun Unit!137456 () Unit!137452)

(assert (=> b!4755032 (= lt!1921949 Unit!137456)))

(assert (=> b!4755032 (forall!11784 (t!360602 l!13029) lambda!223226)))

(declare-fun lt!1921952 () Unit!137452)

(declare-fun Unit!137457 () Unit!137452)

(assert (=> b!4755032 (= lt!1921952 Unit!137457)))

(declare-fun lt!1921941 () Unit!137452)

(declare-fun Unit!137458 () Unit!137452)

(assert (=> b!4755032 (= lt!1921941 Unit!137458)))

(declare-fun lt!1921935 () Unit!137452)

(declare-fun forallContained!3810 (List!53258 Int tuple2!54948) Unit!137452)

(assert (=> b!4755032 (= lt!1921935 (forallContained!3810 (toList!6162 lt!1921954) lambda!223226 (h!59531 l!13029)))))

(declare-fun contains!16567 (ListMap!5633 K!14635) Bool)

(assert (=> b!4755032 (contains!16567 lt!1921954 (_1!30768 (h!59531 l!13029)))))

(declare-fun lt!1921937 () Unit!137452)

(declare-fun Unit!137459 () Unit!137452)

(assert (=> b!4755032 (= lt!1921937 Unit!137459)))

(assert (=> b!4755032 (contains!16567 lt!1921947 (_1!30768 (h!59531 l!13029)))))

(declare-fun lt!1921943 () Unit!137452)

(declare-fun Unit!137460 () Unit!137452)

(assert (=> b!4755032 (= lt!1921943 Unit!137460)))

(assert (=> b!4755032 (forall!11784 l!13029 lambda!223226)))

(declare-fun lt!1921939 () Unit!137452)

(declare-fun Unit!137461 () Unit!137452)

(assert (=> b!4755032 (= lt!1921939 Unit!137461)))

(assert (=> b!4755032 call!333462))

(declare-fun lt!1921940 () Unit!137452)

(declare-fun Unit!137462 () Unit!137452)

(assert (=> b!4755032 (= lt!1921940 Unit!137462)))

(declare-fun lt!1921944 () Unit!137452)

(declare-fun Unit!137463 () Unit!137452)

(assert (=> b!4755032 (= lt!1921944 Unit!137463)))

(declare-fun lt!1921953 () Unit!137452)

(declare-fun addForallContainsKeyThenBeforeAdding!898 (ListMap!5633 ListMap!5633 K!14635 V!14881) Unit!137452)

(assert (=> b!4755032 (= lt!1921953 (addForallContainsKeyThenBeforeAdding!898 (+!2428 lhm!63 lt!1921791) lt!1921947 (_1!30768 (h!59531 l!13029)) (_2!30768 (h!59531 l!13029))))))

(assert (=> b!4755032 (forall!11784 (toList!6162 (+!2428 lhm!63 lt!1921791)) lambda!223226)))

(declare-fun lt!1921946 () Unit!137452)

(assert (=> b!4755032 (= lt!1921946 lt!1921953)))

(assert (=> b!4755032 (forall!11784 (toList!6162 (+!2428 lhm!63 lt!1921791)) lambda!223226)))

(declare-fun lt!1921938 () Unit!137452)

(declare-fun Unit!137464 () Unit!137452)

(assert (=> b!4755032 (= lt!1921938 Unit!137464)))

(declare-fun res!2017190 () Bool)

(assert (=> b!4755032 (= res!2017190 (forall!11784 l!13029 lambda!223226))))

(assert (=> b!4755032 (=> (not res!2017190) (not e!2966337))))

(assert (=> b!4755032 e!2966337))

(declare-fun lt!1921942 () Unit!137452)

(declare-fun Unit!137465 () Unit!137452)

(assert (=> b!4755032 (= lt!1921942 Unit!137465)))

(declare-fun bm!333457 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!899 (ListMap!5633) Unit!137452)

(assert (=> bm!333457 (= call!333460 (lemmaContainsAllItsOwnKeys!899 (+!2428 lhm!63 lt!1921791)))))

(assert (= (and d!1520523 c!811644) b!4755029))

(assert (= (and d!1520523 (not c!811644)) b!4755032))

(assert (= (and b!4755032 res!2017190) b!4755030))

(assert (= (or b!4755029 b!4755032) bm!333456))

(assert (= (or b!4755029 b!4755032) bm!333455))

(assert (= (or b!4755029 b!4755032) bm!333457))

(assert (= (and d!1520523 res!2017188) b!4755028))

(assert (= (and b!4755028 res!2017189) b!4755031))

(declare-fun m!5724679 () Bool)

(assert (=> b!4755030 m!5724679))

(declare-fun m!5724681 () Bool)

(assert (=> b!4755031 m!5724681))

(declare-fun m!5724683 () Bool)

(assert (=> b!4755028 m!5724683))

(declare-fun m!5724685 () Bool)

(assert (=> bm!333455 m!5724685))

(assert (=> bm!333456 m!5724685))

(assert (=> b!4755032 m!5724679))

(declare-fun m!5724687 () Bool)

(assert (=> b!4755032 m!5724687))

(declare-fun m!5724689 () Bool)

(assert (=> b!4755032 m!5724689))

(assert (=> b!4755032 m!5724603))

(declare-fun m!5724691 () Bool)

(assert (=> b!4755032 m!5724691))

(declare-fun m!5724693 () Bool)

(assert (=> b!4755032 m!5724693))

(assert (=> b!4755032 m!5724603))

(declare-fun m!5724697 () Bool)

(assert (=> b!4755032 m!5724697))

(assert (=> b!4755032 m!5724693))

(assert (=> b!4755032 m!5724679))

(declare-fun m!5724701 () Bool)

(assert (=> b!4755032 m!5724701))

(assert (=> b!4755032 m!5724691))

(declare-fun m!5724707 () Bool)

(assert (=> b!4755032 m!5724707))

(declare-fun m!5724709 () Bool)

(assert (=> b!4755032 m!5724709))

(declare-fun m!5724713 () Bool)

(assert (=> b!4755032 m!5724713))

(declare-fun m!5724717 () Bool)

(assert (=> d!1520523 m!5724717))

(assert (=> d!1520523 m!5724611))

(assert (=> bm!333457 m!5724603))

(declare-fun m!5724721 () Bool)

(assert (=> bm!333457 m!5724721))

(assert (=> b!4754966 d!1520523))

(declare-fun d!1520531 () Bool)

(declare-fun e!2966346 () Bool)

(assert (=> d!1520531 e!2966346))

(declare-fun res!2017196 () Bool)

(assert (=> d!1520531 (=> (not res!2017196) (not e!2966346))))

(declare-fun lt!1921965 () ListMap!5633)

(assert (=> d!1520531 (= res!2017196 (contains!16567 lt!1921965 (_1!30768 lt!1921791)))))

(declare-fun lt!1921966 () List!53258)

(assert (=> d!1520531 (= lt!1921965 (ListMap!5634 lt!1921966))))

(declare-fun lt!1921964 () Unit!137452)

(declare-fun lt!1921963 () Unit!137452)

(assert (=> d!1520531 (= lt!1921964 lt!1921963)))

(declare-datatypes ((Option!12559 0))(
  ( (None!12558) (Some!12558 (v!47259 V!14881)) )
))
(declare-fun getValueByKey!2109 (List!53258 K!14635) Option!12559)

(assert (=> d!1520531 (= (getValueByKey!2109 lt!1921966 (_1!30768 lt!1921791)) (Some!12558 (_2!30768 lt!1921791)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1186 (List!53258 K!14635 V!14881) Unit!137452)

(assert (=> d!1520531 (= lt!1921963 (lemmaContainsTupThenGetReturnValue!1186 lt!1921966 (_1!30768 lt!1921791) (_2!30768 lt!1921791)))))

(declare-fun insertNoDuplicatedKeys!694 (List!53258 K!14635 V!14881) List!53258)

(assert (=> d!1520531 (= lt!1921966 (insertNoDuplicatedKeys!694 (toList!6162 lhm!63) (_1!30768 lt!1921791) (_2!30768 lt!1921791)))))

(assert (=> d!1520531 (= (+!2428 lhm!63 lt!1921791) lt!1921965)))

(declare-fun b!4755045 () Bool)

(declare-fun res!2017195 () Bool)

(assert (=> b!4755045 (=> (not res!2017195) (not e!2966346))))

(assert (=> b!4755045 (= res!2017195 (= (getValueByKey!2109 (toList!6162 lt!1921965) (_1!30768 lt!1921791)) (Some!12558 (_2!30768 lt!1921791))))))

(declare-fun b!4755046 () Bool)

(declare-fun contains!16569 (List!53258 tuple2!54948) Bool)

(assert (=> b!4755046 (= e!2966346 (contains!16569 (toList!6162 lt!1921965) lt!1921791))))

(assert (= (and d!1520531 res!2017196) b!4755045))

(assert (= (and b!4755045 res!2017195) b!4755046))

(declare-fun m!5724739 () Bool)

(assert (=> d!1520531 m!5724739))

(declare-fun m!5724741 () Bool)

(assert (=> d!1520531 m!5724741))

(declare-fun m!5724743 () Bool)

(assert (=> d!1520531 m!5724743))

(declare-fun m!5724745 () Bool)

(assert (=> d!1520531 m!5724745))

(declare-fun m!5724747 () Bool)

(assert (=> b!4755045 m!5724747))

(declare-fun m!5724749 () Bool)

(assert (=> b!4755046 m!5724749))

(assert (=> b!4754966 d!1520531))

(declare-fun d!1520533 () Bool)

(declare-fun e!2966347 () Bool)

(assert (=> d!1520533 e!2966347))

(declare-fun res!2017198 () Bool)

(assert (=> d!1520533 (=> (not res!2017198) (not e!2966347))))

(declare-fun lt!1921969 () ListMap!5633)

(assert (=> d!1520533 (= res!2017198 (contains!16567 lt!1921969 (_1!30768 lt!1921791)))))

(declare-fun lt!1921970 () List!53258)

(assert (=> d!1520533 (= lt!1921969 (ListMap!5634 lt!1921970))))

(declare-fun lt!1921968 () Unit!137452)

(declare-fun lt!1921967 () Unit!137452)

(assert (=> d!1520533 (= lt!1921968 lt!1921967)))

(assert (=> d!1520533 (= (getValueByKey!2109 lt!1921970 (_1!30768 lt!1921791)) (Some!12558 (_2!30768 lt!1921791)))))

(assert (=> d!1520533 (= lt!1921967 (lemmaContainsTupThenGetReturnValue!1186 lt!1921970 (_1!30768 lt!1921791) (_2!30768 lt!1921791)))))

(assert (=> d!1520533 (= lt!1921970 (insertNoDuplicatedKeys!694 (toList!6162 (addToMapMapFromBucket!1608 l!13029 lhm!63)) (_1!30768 lt!1921791) (_2!30768 lt!1921791)))))

(assert (=> d!1520533 (= (+!2428 (addToMapMapFromBucket!1608 l!13029 lhm!63) lt!1921791) lt!1921969)))

(declare-fun b!4755047 () Bool)

(declare-fun res!2017197 () Bool)

(assert (=> b!4755047 (=> (not res!2017197) (not e!2966347))))

(assert (=> b!4755047 (= res!2017197 (= (getValueByKey!2109 (toList!6162 lt!1921969) (_1!30768 lt!1921791)) (Some!12558 (_2!30768 lt!1921791))))))

(declare-fun b!4755048 () Bool)

(assert (=> b!4755048 (= e!2966347 (contains!16569 (toList!6162 lt!1921969) lt!1921791))))

(assert (= (and d!1520533 res!2017198) b!4755047))

(assert (= (and b!4755047 res!2017197) b!4755048))

(declare-fun m!5724751 () Bool)

(assert (=> d!1520533 m!5724751))

(declare-fun m!5724753 () Bool)

(assert (=> d!1520533 m!5724753))

(declare-fun m!5724755 () Bool)

(assert (=> d!1520533 m!5724755))

(declare-fun m!5724757 () Bool)

(assert (=> d!1520533 m!5724757))

(declare-fun m!5724759 () Bool)

(assert (=> b!4755047 m!5724759))

(declare-fun m!5724761 () Bool)

(assert (=> b!4755048 m!5724761))

(assert (=> b!4754966 d!1520533))

(declare-fun bs!1146604 () Bool)

(declare-fun b!4755050 () Bool)

(assert (= bs!1146604 (and b!4755050 b!4755029)))

(declare-fun lambda!223229 () Int)

(assert (=> bs!1146604 (= (= lhm!63 (+!2428 lhm!63 lt!1921791)) (= lambda!223229 lambda!223224))))

(declare-fun bs!1146605 () Bool)

(assert (= bs!1146605 (and b!4755050 b!4755032)))

(assert (=> bs!1146605 (= (= lhm!63 (+!2428 lhm!63 lt!1921791)) (= lambda!223229 lambda!223225))))

(assert (=> bs!1146605 (= (= lhm!63 lt!1921947) (= lambda!223229 lambda!223226))))

(declare-fun bs!1146606 () Bool)

(assert (= bs!1146606 (and b!4755050 d!1520523)))

(assert (=> bs!1146606 (= (= lhm!63 lt!1921945) (= lambda!223229 lambda!223228))))

(assert (=> b!4755050 true))

(declare-fun bs!1146607 () Bool)

(declare-fun b!4755053 () Bool)

(assert (= bs!1146607 (and b!4755053 b!4755050)))

(declare-fun lambda!223230 () Int)

(assert (=> bs!1146607 (= lambda!223230 lambda!223229)))

(declare-fun bs!1146608 () Bool)

(assert (= bs!1146608 (and b!4755053 b!4755029)))

(assert (=> bs!1146608 (= (= lhm!63 (+!2428 lhm!63 lt!1921791)) (= lambda!223230 lambda!223224))))

(declare-fun bs!1146609 () Bool)

(assert (= bs!1146609 (and b!4755053 b!4755032)))

(assert (=> bs!1146609 (= (= lhm!63 lt!1921947) (= lambda!223230 lambda!223226))))

(declare-fun bs!1146610 () Bool)

(assert (= bs!1146610 (and b!4755053 d!1520523)))

(assert (=> bs!1146610 (= (= lhm!63 lt!1921945) (= lambda!223230 lambda!223228))))

(assert (=> bs!1146609 (= (= lhm!63 (+!2428 lhm!63 lt!1921791)) (= lambda!223230 lambda!223225))))

(assert (=> b!4755053 true))

(declare-fun lambda!223231 () Int)

(declare-fun lt!1921984 () ListMap!5633)

(assert (=> bs!1146607 (= (= lt!1921984 lhm!63) (= lambda!223231 lambda!223229))))

(assert (=> bs!1146608 (= (= lt!1921984 (+!2428 lhm!63 lt!1921791)) (= lambda!223231 lambda!223224))))

(assert (=> bs!1146609 (= (= lt!1921984 lt!1921947) (= lambda!223231 lambda!223226))))

(assert (=> bs!1146610 (= (= lt!1921984 lt!1921945) (= lambda!223231 lambda!223228))))

(assert (=> b!4755053 (= (= lt!1921984 lhm!63) (= lambda!223231 lambda!223230))))

(assert (=> bs!1146609 (= (= lt!1921984 (+!2428 lhm!63 lt!1921791)) (= lambda!223231 lambda!223225))))

(assert (=> b!4755053 true))

(declare-fun bs!1146611 () Bool)

(declare-fun d!1520535 () Bool)

(assert (= bs!1146611 (and d!1520535 b!4755050)))

(declare-fun lt!1921982 () ListMap!5633)

(declare-fun lambda!223232 () Int)

(assert (=> bs!1146611 (= (= lt!1921982 lhm!63) (= lambda!223232 lambda!223229))))

(declare-fun bs!1146612 () Bool)

(assert (= bs!1146612 (and d!1520535 b!4755029)))

(assert (=> bs!1146612 (= (= lt!1921982 (+!2428 lhm!63 lt!1921791)) (= lambda!223232 lambda!223224))))

(declare-fun bs!1146613 () Bool)

(assert (= bs!1146613 (and d!1520535 b!4755032)))

(assert (=> bs!1146613 (= (= lt!1921982 lt!1921947) (= lambda!223232 lambda!223226))))

(declare-fun bs!1146614 () Bool)

(assert (= bs!1146614 (and d!1520535 d!1520523)))

(assert (=> bs!1146614 (= (= lt!1921982 lt!1921945) (= lambda!223232 lambda!223228))))

(declare-fun bs!1146615 () Bool)

(assert (= bs!1146615 (and d!1520535 b!4755053)))

(assert (=> bs!1146615 (= (= lt!1921982 lt!1921984) (= lambda!223232 lambda!223231))))

(assert (=> bs!1146615 (= (= lt!1921982 lhm!63) (= lambda!223232 lambda!223230))))

(assert (=> bs!1146613 (= (= lt!1921982 (+!2428 lhm!63 lt!1921791)) (= lambda!223232 lambda!223225))))

(assert (=> d!1520535 true))

(declare-fun b!4755049 () Bool)

(declare-fun res!2017200 () Bool)

(declare-fun e!2966349 () Bool)

(assert (=> b!4755049 (=> (not res!2017200) (not e!2966349))))

(assert (=> b!4755049 (= res!2017200 (forall!11784 (toList!6162 lhm!63) lambda!223232))))

(assert (=> d!1520535 e!2966349))

(declare-fun res!2017199 () Bool)

(assert (=> d!1520535 (=> (not res!2017199) (not e!2966349))))

(assert (=> d!1520535 (= res!2017199 (forall!11784 l!13029 lambda!223232))))

(declare-fun e!2966350 () ListMap!5633)

(assert (=> d!1520535 (= lt!1921982 e!2966350)))

(declare-fun c!811645 () Bool)

(assert (=> d!1520535 (= c!811645 ((_ is Nil!53134) l!13029))))

(assert (=> d!1520535 (noDuplicateKeys!2194 l!13029)))

(assert (=> d!1520535 (= (addToMapMapFromBucket!1608 l!13029 lhm!63) lt!1921982)))

(assert (=> b!4755050 (= e!2966350 lhm!63)))

(declare-fun lt!1921973 () Unit!137452)

(declare-fun call!333463 () Unit!137452)

(assert (=> b!4755050 (= lt!1921973 call!333463)))

(declare-fun call!333465 () Bool)

(assert (=> b!4755050 call!333465))

(declare-fun lt!1921988 () Unit!137452)

(assert (=> b!4755050 (= lt!1921988 lt!1921973)))

(declare-fun call!333464 () Bool)

(assert (=> b!4755050 call!333464))

(declare-fun lt!1921987 () Unit!137452)

(declare-fun Unit!137470 () Unit!137452)

(assert (=> b!4755050 (= lt!1921987 Unit!137470)))

(declare-fun lt!1921991 () ListMap!5633)

(declare-fun bm!333458 () Bool)

(assert (=> bm!333458 (= call!333465 (forall!11784 (ite c!811645 (toList!6162 lhm!63) (toList!6162 lt!1921991)) (ite c!811645 lambda!223229 lambda!223231)))))

(declare-fun b!4755051 () Bool)

(declare-fun e!2966348 () Bool)

(assert (=> b!4755051 (= e!2966348 (forall!11784 (toList!6162 lhm!63) lambda!223231))))

(declare-fun b!4755052 () Bool)

(assert (=> b!4755052 (= e!2966349 (invariantList!1622 (toList!6162 lt!1921982)))))

(declare-fun bm!333459 () Bool)

(assert (=> bm!333459 (= call!333464 (forall!11784 (ite c!811645 (toList!6162 lhm!63) (toList!6162 lt!1921991)) (ite c!811645 lambda!223229 lambda!223231)))))

(assert (=> b!4755053 (= e!2966350 lt!1921984)))

(assert (=> b!4755053 (= lt!1921991 (+!2428 lhm!63 (h!59531 l!13029)))))

(assert (=> b!4755053 (= lt!1921984 (addToMapMapFromBucket!1608 (t!360602 l!13029) (+!2428 lhm!63 (h!59531 l!13029))))))

(declare-fun lt!1921971 () Unit!137452)

(assert (=> b!4755053 (= lt!1921971 call!333463)))

(assert (=> b!4755053 (forall!11784 (toList!6162 lhm!63) lambda!223230)))

(declare-fun lt!1921985 () Unit!137452)

(assert (=> b!4755053 (= lt!1921985 lt!1921971)))

(assert (=> b!4755053 call!333464))

(declare-fun lt!1921986 () Unit!137452)

(declare-fun Unit!137475 () Unit!137452)

(assert (=> b!4755053 (= lt!1921986 Unit!137475)))

(assert (=> b!4755053 (forall!11784 (t!360602 l!13029) lambda!223231)))

(declare-fun lt!1921989 () Unit!137452)

(declare-fun Unit!137476 () Unit!137452)

(assert (=> b!4755053 (= lt!1921989 Unit!137476)))

(declare-fun lt!1921978 () Unit!137452)

(declare-fun Unit!137478 () Unit!137452)

(assert (=> b!4755053 (= lt!1921978 Unit!137478)))

(declare-fun lt!1921972 () Unit!137452)

(assert (=> b!4755053 (= lt!1921972 (forallContained!3810 (toList!6162 lt!1921991) lambda!223231 (h!59531 l!13029)))))

(assert (=> b!4755053 (contains!16567 lt!1921991 (_1!30768 (h!59531 l!13029)))))

(declare-fun lt!1921974 () Unit!137452)

(declare-fun Unit!137480 () Unit!137452)

(assert (=> b!4755053 (= lt!1921974 Unit!137480)))

(assert (=> b!4755053 (contains!16567 lt!1921984 (_1!30768 (h!59531 l!13029)))))

(declare-fun lt!1921980 () Unit!137452)

(declare-fun Unit!137481 () Unit!137452)

(assert (=> b!4755053 (= lt!1921980 Unit!137481)))

(assert (=> b!4755053 (forall!11784 l!13029 lambda!223231)))

(declare-fun lt!1921976 () Unit!137452)

(declare-fun Unit!137482 () Unit!137452)

(assert (=> b!4755053 (= lt!1921976 Unit!137482)))

(assert (=> b!4755053 call!333465))

(declare-fun lt!1921977 () Unit!137452)

(declare-fun Unit!137484 () Unit!137452)

(assert (=> b!4755053 (= lt!1921977 Unit!137484)))

(declare-fun lt!1921981 () Unit!137452)

(declare-fun Unit!137485 () Unit!137452)

(assert (=> b!4755053 (= lt!1921981 Unit!137485)))

(declare-fun lt!1921990 () Unit!137452)

(assert (=> b!4755053 (= lt!1921990 (addForallContainsKeyThenBeforeAdding!898 lhm!63 lt!1921984 (_1!30768 (h!59531 l!13029)) (_2!30768 (h!59531 l!13029))))))

(assert (=> b!4755053 (forall!11784 (toList!6162 lhm!63) lambda!223231)))

(declare-fun lt!1921983 () Unit!137452)

(assert (=> b!4755053 (= lt!1921983 lt!1921990)))

(assert (=> b!4755053 (forall!11784 (toList!6162 lhm!63) lambda!223231)))

(declare-fun lt!1921975 () Unit!137452)

(declare-fun Unit!137486 () Unit!137452)

(assert (=> b!4755053 (= lt!1921975 Unit!137486)))

(declare-fun res!2017201 () Bool)

(assert (=> b!4755053 (= res!2017201 (forall!11784 l!13029 lambda!223231))))

(assert (=> b!4755053 (=> (not res!2017201) (not e!2966348))))

(assert (=> b!4755053 e!2966348))

(declare-fun lt!1921979 () Unit!137452)

(declare-fun Unit!137487 () Unit!137452)

(assert (=> b!4755053 (= lt!1921979 Unit!137487)))

(declare-fun bm!333460 () Bool)

(assert (=> bm!333460 (= call!333463 (lemmaContainsAllItsOwnKeys!899 lhm!63))))

(assert (= (and d!1520535 c!811645) b!4755050))

(assert (= (and d!1520535 (not c!811645)) b!4755053))

(assert (= (and b!4755053 res!2017201) b!4755051))

(assert (= (or b!4755050 b!4755053) bm!333459))

(assert (= (or b!4755050 b!4755053) bm!333458))

(assert (= (or b!4755050 b!4755053) bm!333460))

(assert (= (and d!1520535 res!2017199) b!4755049))

(assert (= (and b!4755049 res!2017200) b!4755052))

(declare-fun m!5724763 () Bool)

(assert (=> b!4755051 m!5724763))

(declare-fun m!5724765 () Bool)

(assert (=> b!4755052 m!5724765))

(declare-fun m!5724767 () Bool)

(assert (=> b!4755049 m!5724767))

(declare-fun m!5724769 () Bool)

(assert (=> bm!333458 m!5724769))

(assert (=> bm!333459 m!5724769))

(assert (=> b!4755053 m!5724763))

(declare-fun m!5724771 () Bool)

(assert (=> b!4755053 m!5724771))

(declare-fun m!5724773 () Bool)

(assert (=> b!4755053 m!5724773))

(declare-fun m!5724775 () Bool)

(assert (=> b!4755053 m!5724775))

(declare-fun m!5724777 () Bool)

(assert (=> b!4755053 m!5724777))

(declare-fun m!5724779 () Bool)

(assert (=> b!4755053 m!5724779))

(assert (=> b!4755053 m!5724777))

(assert (=> b!4755053 m!5724763))

(declare-fun m!5724781 () Bool)

(assert (=> b!4755053 m!5724781))

(assert (=> b!4755053 m!5724775))

(declare-fun m!5724783 () Bool)

(assert (=> b!4755053 m!5724783))

(declare-fun m!5724785 () Bool)

(assert (=> b!4755053 m!5724785))

(declare-fun m!5724787 () Bool)

(assert (=> b!4755053 m!5724787))

(declare-fun m!5724789 () Bool)

(assert (=> d!1520535 m!5724789))

(assert (=> d!1520535 m!5724611))

(declare-fun m!5724791 () Bool)

(assert (=> bm!333460 m!5724791))

(assert (=> b!4754966 d!1520535))

(declare-fun d!1520537 () Bool)

(declare-fun res!2017206 () Bool)

(declare-fun e!2966355 () Bool)

(assert (=> d!1520537 (=> res!2017206 e!2966355)))

(assert (=> d!1520537 (= res!2017206 (not ((_ is Cons!53134) l!13029)))))

(assert (=> d!1520537 (= (noDuplicateKeys!2194 l!13029) e!2966355)))

(declare-fun b!4755058 () Bool)

(declare-fun e!2966356 () Bool)

(assert (=> b!4755058 (= e!2966355 e!2966356)))

(declare-fun res!2017207 () Bool)

(assert (=> b!4755058 (=> (not res!2017207) (not e!2966356))))

(assert (=> b!4755058 (= res!2017207 (not (containsKey!3600 (t!360602 l!13029) (_1!30768 (h!59531 l!13029)))))))

(declare-fun b!4755059 () Bool)

(assert (=> b!4755059 (= e!2966356 (noDuplicateKeys!2194 (t!360602 l!13029)))))

(assert (= (and d!1520537 (not res!2017206)) b!4755058))

(assert (= (and b!4755058 res!2017207) b!4755059))

(declare-fun m!5724793 () Bool)

(assert (=> b!4755058 m!5724793))

(declare-fun m!5724795 () Bool)

(assert (=> b!4755059 m!5724795))

(assert (=> b!4754967 d!1520537))

(declare-fun tp!1350584 () Bool)

(declare-fun b!4755064 () Bool)

(declare-fun e!2966359 () Bool)

(assert (=> b!4755064 (= e!2966359 (and tp_is_empty!32069 tp_is_empty!32071 tp!1350584))))

(assert (=> b!4754968 (= tp!1350576 e!2966359)))

(assert (= (and b!4754968 ((_ is Cons!53134) (toList!6162 lhm!63))) b!4755064))

(declare-fun tp!1350585 () Bool)

(declare-fun b!4755065 () Bool)

(declare-fun e!2966360 () Bool)

(assert (=> b!4755065 (= e!2966360 (and tp_is_empty!32069 tp_is_empty!32071 tp!1350585))))

(assert (=> b!4754969 (= tp!1350577 e!2966360)))

(assert (= (and b!4754969 ((_ is Cons!53134) (t!360602 l!13029))) b!4755065))

(check-sat (not b!4755047) (not b!4755064) (not b!4755045) (not bm!333460) (not bm!333459) (not b!4755058) (not d!1520517) (not b!4755065) (not b!4755028) (not b!4754985) (not d!1520533) (not b!4755046) tp_is_empty!32071 tp_is_empty!32069 (not d!1520531) (not bm!333455) (not b!4755048) (not b!4755053) (not b!4755030) (not bm!333456) (not bm!333458) (not b!4755059) (not b!4755032) (not b!4755049) (not d!1520535) (not bm!333457) (not d!1520523) (not b!4755051) (not b!4755031) (not b!4755052))
(check-sat)
