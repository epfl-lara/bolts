; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7522 () Bool)

(assert start!7522)

(declare-fun b!48157 () Bool)

(declare-fun res!27961 () Bool)

(declare-fun e!30913 () Bool)

(assert (=> b!48157 (=> (not res!27961) (not e!30913))))

(declare-datatypes ((B!926 0))(
  ( (B!927 (val!1083 Int)) )
))
(declare-datatypes ((tuple2!1752 0))(
  ( (tuple2!1753 (_1!886 (_ BitVec 64)) (_2!886 B!926)) )
))
(declare-datatypes ((List!1299 0))(
  ( (Nil!1296) (Cons!1295 (h!1875 tuple2!1752) (t!4335 List!1299)) )
))
(declare-datatypes ((ListLongMap!1249 0))(
  ( (ListLongMap!1250 (toList!640 List!1299)) )
))
(declare-fun lm!267 () ListLongMap!1249)

(declare-fun key!657 () (_ BitVec 64))

(declare-fun containsKey!101 (List!1299 (_ BitVec 64)) Bool)

(assert (=> b!48157 (= res!27961 (not (containsKey!101 (toList!640 lm!267) key!657)))))

(declare-fun b!48156 () Bool)

(declare-fun res!27962 () Bool)

(assert (=> b!48156 (=> (not res!27962) (not e!30913))))

(declare-fun isStrictlySorted!249 (List!1299) Bool)

(assert (=> b!48156 (= res!27962 (isStrictlySorted!249 (toList!640 lm!267)))))

(declare-fun res!27963 () Bool)

(assert (=> start!7522 (=> (not res!27963) (not e!30913))))

(declare-fun contains!602 (ListLongMap!1249 (_ BitVec 64)) Bool)

(assert (=> start!7522 (= res!27963 (not (contains!602 lm!267 key!657)))))

(assert (=> start!7522 e!30913))

(declare-fun e!30912 () Bool)

(declare-fun inv!2236 (ListLongMap!1249) Bool)

(assert (=> start!7522 (and (inv!2236 lm!267) e!30912)))

(assert (=> start!7522 true))

(declare-fun tp_is_empty!2077 () Bool)

(assert (=> start!7522 tp_is_empty!2077))

(declare-fun b!48159 () Bool)

(declare-fun tp!6347 () Bool)

(assert (=> b!48159 (= e!30912 tp!6347)))

(declare-fun lt!20568 () tuple2!1752)

(declare-fun lt!20567 () (Set tuple2!1752))

(declare-fun b!48158 () Bool)

(declare-fun content!45 (List!1299) (Set tuple2!1752))

(declare-fun +!73 (ListLongMap!1249 tuple2!1752) ListLongMap!1249)

(assert (=> b!48158 (= e!30913 (not (= lt!20567 (content!45 (toList!640 (+!73 lm!267 lt!20568))))))))

(declare-fun value!242 () B!926)

(declare-fun insertStrictlySorted!32 (List!1299 (_ BitVec 64) B!926) List!1299)

(assert (=> b!48158 (= lt!20567 (content!45 (insertStrictlySorted!32 (toList!640 lm!267) key!657 value!242)))))

(assert (=> b!48158 (= lt!20567 (set.union (content!45 (toList!640 lm!267)) (set.insert lt!20568 (as set.empty (Set tuple2!1752)))))))

(assert (=> b!48158 (= lt!20568 (tuple2!1753 key!657 value!242))))

(declare-datatypes ((Unit!1355 0))(
  ( (Unit!1356) )
))
(declare-fun lt!20566 () Unit!1355)

(declare-fun lemmaInsertStrictlySortedNotContainedContent!1 (List!1299 (_ BitVec 64) B!926) Unit!1355)

(assert (=> b!48158 (= lt!20566 (lemmaInsertStrictlySortedNotContainedContent!1 (toList!640 lm!267) key!657 value!242))))

(assert (= (and start!7522 res!27963) b!48156))

(assert (= (and b!48156 res!27962) b!48157))

(assert (= (and b!48157 res!27961) b!48158))

(assert (= start!7522 b!48159))

(declare-fun m!42105 () Bool)

(assert (=> b!48157 m!42105))

(declare-fun m!42107 () Bool)

(assert (=> b!48156 m!42107))

(declare-fun m!42109 () Bool)

(assert (=> start!7522 m!42109))

(declare-fun m!42111 () Bool)

(assert (=> start!7522 m!42111))

(declare-fun m!42113 () Bool)

(assert (=> b!48158 m!42113))

(declare-fun m!42115 () Bool)

(assert (=> b!48158 m!42115))

(declare-fun m!42117 () Bool)

(assert (=> b!48158 m!42117))

(declare-fun m!42119 () Bool)

(assert (=> b!48158 m!42119))

(assert (=> b!48158 m!42117))

(declare-fun m!42121 () Bool)

(assert (=> b!48158 m!42121))

(declare-fun m!42123 () Bool)

(assert (=> b!48158 m!42123))

(declare-fun m!42125 () Bool)

(assert (=> b!48158 m!42125))

(push 1)

(assert (not b!48156))

(assert (not b!48159))

(assert tp_is_empty!2077)

(assert (not b!48158))

(assert (not b!48157))

(assert (not start!7522))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9581 () Bool)

(assert (=> d!9581 (= (set.union (content!45 (toList!640 lm!267)) (set.insert (tuple2!1753 key!657 value!242) (as set.empty (Set tuple2!1752)))) (content!45 (insertStrictlySorted!32 (toList!640 lm!267) key!657 value!242)))))

(declare-fun lt!20597 () Unit!1355)

(declare-fun choose!288 (List!1299 (_ BitVec 64) B!926) Unit!1355)

(assert (=> d!9581 (= lt!20597 (choose!288 (toList!640 lm!267) key!657 value!242))))

(assert (=> d!9581 (isStrictlySorted!249 (toList!640 lm!267))))

(assert (=> d!9581 (= (lemmaInsertStrictlySortedNotContainedContent!1 (toList!640 lm!267) key!657 value!242) lt!20597)))

(declare-fun bs!2246 () Bool)

(assert (= bs!2246 d!9581))

(declare-fun m!42173 () Bool)

(assert (=> bs!2246 m!42173))

(assert (=> bs!2246 m!42117))

(assert (=> bs!2246 m!42107))

(assert (=> bs!2246 m!42117))

(assert (=> bs!2246 m!42119))

(assert (=> bs!2246 m!42113))

(declare-fun m!42175 () Bool)

(assert (=> bs!2246 m!42175))

(assert (=> b!48158 d!9581))

(declare-fun bm!3751 () Bool)

(declare-fun call!3755 () List!1299)

(declare-fun call!3756 () List!1299)

(assert (=> bm!3751 (= call!3755 call!3756)))

(declare-fun b!48228 () Bool)

(declare-fun e!30957 () List!1299)

(declare-fun call!3754 () List!1299)

(assert (=> b!48228 (= e!30957 call!3754)))

(declare-fun bm!3752 () Bool)

(assert (=> bm!3752 (= call!3754 call!3755)))

(declare-fun b!48229 () Bool)

(declare-fun res!27999 () Bool)

(declare-fun e!30956 () Bool)

(assert (=> b!48229 (=> (not res!27999) (not e!30956))))

(declare-fun lt!20622 () List!1299)

(assert (=> b!48229 (= res!27999 (containsKey!101 lt!20622 key!657))))

(declare-fun b!48230 () Bool)

(declare-fun e!30958 () List!1299)

(assert (=> b!48230 (= e!30958 (insertStrictlySorted!32 (t!4335 (toList!640 lm!267)) key!657 value!242))))

(declare-fun d!9585 () Bool)

(assert (=> d!9585 e!30956))

(declare-fun res!27998 () Bool)

(assert (=> d!9585 (=> (not res!27998) (not e!30956))))

(assert (=> d!9585 (= res!27998 (isStrictlySorted!249 lt!20622))))

(declare-fun e!30954 () List!1299)

(assert (=> d!9585 (= lt!20622 e!30954)))

(declare-fun c!6493 () Bool)

(assert (=> d!9585 (= c!6493 (and (is-Cons!1295 (toList!640 lm!267)) (bvslt (_1!886 (h!1875 (toList!640 lm!267))) key!657)))))

(assert (=> d!9585 (isStrictlySorted!249 (toList!640 lm!267))))

(assert (=> d!9585 (= (insertStrictlySorted!32 (toList!640 lm!267) key!657 value!242) lt!20622)))

(declare-fun b!48231 () Bool)

(declare-fun e!30955 () List!1299)

(assert (=> b!48231 (= e!30955 call!3755)))

(declare-fun b!48232 () Bool)

(assert (=> b!48232 (= e!30957 call!3754)))

(declare-fun c!6495 () Bool)

(declare-fun b!48233 () Bool)

(declare-fun c!6492 () Bool)

(assert (=> b!48233 (= e!30958 (ite c!6492 (t!4335 (toList!640 lm!267)) (ite c!6495 (Cons!1295 (h!1875 (toList!640 lm!267)) (t!4335 (toList!640 lm!267))) Nil!1296)))))

(declare-fun b!48234 () Bool)

(assert (=> b!48234 (= e!30954 call!3756)))

(declare-fun bm!3753 () Bool)

(declare-fun $colon$colon!49 (List!1299 tuple2!1752) List!1299)

(assert (=> bm!3753 (= call!3756 ($colon$colon!49 e!30958 (ite c!6493 (h!1875 (toList!640 lm!267)) (tuple2!1753 key!657 value!242))))))

(declare-fun c!6494 () Bool)

(assert (=> bm!3753 (= c!6494 c!6493)))

(declare-fun b!48235 () Bool)

(declare-fun contains!605 (List!1299 tuple2!1752) Bool)

(assert (=> b!48235 (= e!30956 (contains!605 lt!20622 (tuple2!1753 key!657 value!242)))))

(declare-fun b!48236 () Bool)

(assert (=> b!48236 (= c!6495 (and (is-Cons!1295 (toList!640 lm!267)) (bvsgt (_1!886 (h!1875 (toList!640 lm!267))) key!657)))))

(assert (=> b!48236 (= e!30955 e!30957)))

(declare-fun b!48237 () Bool)

(assert (=> b!48237 (= e!30954 e!30955)))

(assert (=> b!48237 (= c!6492 (and (is-Cons!1295 (toList!640 lm!267)) (= (_1!886 (h!1875 (toList!640 lm!267))) key!657)))))

(assert (= (and d!9585 c!6493) b!48234))

(assert (= (and d!9585 (not c!6493)) b!48237))

(assert (= (and b!48237 c!6492) b!48231))

(assert (= (and b!48237 (not c!6492)) b!48236))

(assert (= (and b!48236 c!6495) b!48232))

(assert (= (and b!48236 (not c!6495)) b!48228))

(assert (= (or b!48232 b!48228) bm!3752))

(assert (= (or b!48231 bm!3752) bm!3751))

(assert (= (or b!48234 bm!3751) bm!3753))

(assert (= (and bm!3753 c!6494) b!48230))

(assert (= (and bm!3753 (not c!6494)) b!48233))

(assert (= (and d!9585 res!27998) b!48229))

(assert (= (and b!48229 res!27999) b!48235))

(declare-fun m!42197 () Bool)

(assert (=> b!48235 m!42197))

(declare-fun m!42199 () Bool)

(assert (=> bm!3753 m!42199))

(declare-fun m!42201 () Bool)

(assert (=> d!9585 m!42201))

(assert (=> d!9585 m!42107))

(declare-fun m!42203 () Bool)

(assert (=> b!48230 m!42203))

(declare-fun m!42205 () Bool)

(assert (=> b!48229 m!42205))

(assert (=> b!48158 d!9585))

(declare-fun d!9599 () Bool)

(declare-fun c!6506 () Bool)

(assert (=> d!9599 (= c!6506 (is-Nil!1296 (insertStrictlySorted!32 (toList!640 lm!267) key!657 value!242)))))

(declare-fun e!30969 () (Set tuple2!1752))

(assert (=> d!9599 (= (content!45 (insertStrictlySorted!32 (toList!640 lm!267) key!657 value!242)) e!30969)))

(declare-fun b!48258 () Bool)

(assert (=> b!48258 (= e!30969 (as set.empty (Set tuple2!1752)))))

(declare-fun b!48259 () Bool)

(assert (=> b!48259 (= e!30969 (set.union (set.insert (h!1875 (insertStrictlySorted!32 (toList!640 lm!267) key!657 value!242)) (as set.empty (Set tuple2!1752))) (content!45 (t!4335 (insertStrictlySorted!32 (toList!640 lm!267) key!657 value!242)))))))

(assert (= (and d!9599 c!6506) b!48258))

(assert (= (and d!9599 (not c!6506)) b!48259))

(declare-fun m!42207 () Bool)

(assert (=> b!48259 m!42207))

(declare-fun m!42209 () Bool)

(assert (=> b!48259 m!42209))

(assert (=> b!48158 d!9599))

(declare-fun d!9601 () Bool)

(declare-fun c!6507 () Bool)

(assert (=> d!9601 (= c!6507 (is-Nil!1296 (toList!640 (+!73 lm!267 lt!20568))))))

(declare-fun e!30970 () (Set tuple2!1752))

(assert (=> d!9601 (= (content!45 (toList!640 (+!73 lm!267 lt!20568))) e!30970)))

(declare-fun b!48260 () Bool)

(assert (=> b!48260 (= e!30970 (as set.empty (Set tuple2!1752)))))

(declare-fun b!48261 () Bool)

(assert (=> b!48261 (= e!30970 (set.union (set.insert (h!1875 (toList!640 (+!73 lm!267 lt!20568))) (as set.empty (Set tuple2!1752))) (content!45 (t!4335 (toList!640 (+!73 lm!267 lt!20568))))))))

(assert (= (and d!9601 c!6507) b!48260))

(assert (= (and d!9601 (not c!6507)) b!48261))

(declare-fun m!42211 () Bool)

(assert (=> b!48261 m!42211))

(declare-fun m!42213 () Bool)

(assert (=> b!48261 m!42213))

(assert (=> b!48158 d!9601))

(declare-fun d!9603 () Bool)

(declare-fun e!30998 () Bool)

(assert (=> d!9603 e!30998))

(declare-fun res!28017 () Bool)

(assert (=> d!9603 (=> (not res!28017) (not e!30998))))

(declare-fun lt!20640 () ListLongMap!1249)

(assert (=> d!9603 (= res!28017 (contains!602 lt!20640 (_1!886 lt!20568)))))

(declare-fun lt!20639 () List!1299)

(assert (=> d!9603 (= lt!20640 (ListLongMap!1250 lt!20639))))

(declare-fun lt!20637 () Unit!1355)

(declare-fun lt!20638 () Unit!1355)

(assert (=> d!9603 (= lt!20637 lt!20638)))

(declare-datatypes ((Option!123 0))(
  ( (Some!122 (v!2139 B!926)) (None!121) )
))
(declare-fun getValueByKey!117 (List!1299 (_ BitVec 64)) Option!123)

(assert (=> d!9603 (= (getValueByKey!117 lt!20639 (_1!886 lt!20568)) (Some!122 (_2!886 lt!20568)))))

(declare-fun lemmaContainsTupThenGetReturnValue!35 (List!1299 (_ BitVec 64) B!926) Unit!1355)

(assert (=> d!9603 (= lt!20638 (lemmaContainsTupThenGetReturnValue!35 lt!20639 (_1!886 lt!20568) (_2!886 lt!20568)))))

(assert (=> d!9603 (= lt!20639 (insertStrictlySorted!32 (toList!640 lm!267) (_1!886 lt!20568) (_2!886 lt!20568)))))

(assert (=> d!9603 (= (+!73 lm!267 lt!20568) lt!20640)))

(declare-fun b!48318 () Bool)

(declare-fun res!28016 () Bool)

(assert (=> b!48318 (=> (not res!28016) (not e!30998))))

(assert (=> b!48318 (= res!28016 (= (getValueByKey!117 (toList!640 lt!20640) (_1!886 lt!20568)) (Some!122 (_2!886 lt!20568))))))

(declare-fun b!48319 () Bool)

(assert (=> b!48319 (= e!30998 (contains!605 (toList!640 lt!20640) lt!20568))))

(assert (= (and d!9603 res!28017) b!48318))

(assert (= (and b!48318 res!28016) b!48319))

(declare-fun m!42239 () Bool)

(assert (=> d!9603 m!42239))

(declare-fun m!42241 () Bool)

(assert (=> d!9603 m!42241))

(declare-fun m!42243 () Bool)

(assert (=> d!9603 m!42243))

(declare-fun m!42245 () Bool)

(assert (=> d!9603 m!42245))

(declare-fun m!42247 () Bool)

(assert (=> b!48318 m!42247))

(declare-fun m!42249 () Bool)

(assert (=> b!48319 m!42249))

(assert (=> b!48158 d!9603))

(declare-fun d!9611 () Bool)

(declare-fun c!6529 () Bool)

(assert (=> d!9611 (= c!6529 (is-Nil!1296 (toList!640 lm!267)))))

(declare-fun e!31001 () (Set tuple2!1752))

(assert (=> d!9611 (= (content!45 (toList!640 lm!267)) e!31001)))

(declare-fun b!48322 () Bool)

(assert (=> b!48322 (= e!31001 (as set.empty (Set tuple2!1752)))))

(declare-fun b!48323 () Bool)

(assert (=> b!48323 (= e!31001 (set.union (set.insert (h!1875 (toList!640 lm!267)) (as set.empty (Set tuple2!1752))) (content!45 (t!4335 (toList!640 lm!267)))))))

(assert (= (and d!9611 c!6529) b!48322))

(assert (= (and d!9611 (not c!6529)) b!48323))

(declare-fun m!42251 () Bool)

(assert (=> b!48323 m!42251))

(declare-fun m!42253 () Bool)

(assert (=> b!48323 m!42253))

(assert (=> b!48158 d!9611))

(declare-fun d!9613 () Bool)

(declare-fun res!28023 () Bool)

(declare-fun e!31009 () Bool)

(assert (=> d!9613 (=> res!28023 e!31009)))

(assert (=> d!9613 (= res!28023 (and (is-Cons!1295 (toList!640 lm!267)) (= (_1!886 (h!1875 (toList!640 lm!267))) key!657)))))

(assert (=> d!9613 (= (containsKey!101 (toList!640 lm!267) key!657) e!31009)))

(declare-fun b!48330 () Bool)

(declare-fun e!31010 () Bool)

(assert (=> b!48330 (= e!31009 e!31010)))

(declare-fun res!28025 () Bool)

(assert (=> b!48330 (=> (not res!28025) (not e!31010))))

(assert (=> b!48330 (= res!28025 (and (or (not (is-Cons!1295 (toList!640 lm!267))) (bvsle (_1!886 (h!1875 (toList!640 lm!267))) key!657)) (is-Cons!1295 (toList!640 lm!267)) (bvslt (_1!886 (h!1875 (toList!640 lm!267))) key!657)))))

(declare-fun b!48331 () Bool)

(assert (=> b!48331 (= e!31010 (containsKey!101 (t!4335 (toList!640 lm!267)) key!657))))

(assert (= (and d!9613 (not res!28023)) b!48330))

(assert (= (and b!48330 res!28025) b!48331))

(declare-fun m!42259 () Bool)

(assert (=> b!48331 m!42259))

(assert (=> b!48157 d!9613))

(declare-fun d!9617 () Bool)

(declare-fun res!28034 () Bool)

(declare-fun e!31016 () Bool)

(assert (=> d!9617 (=> res!28034 e!31016)))

(assert (=> d!9617 (= res!28034 (or (is-Nil!1296 (toList!640 lm!267)) (is-Nil!1296 (t!4335 (toList!640 lm!267)))))))

(assert (=> d!9617 (= (isStrictlySorted!249 (toList!640 lm!267)) e!31016)))

(declare-fun b!48342 () Bool)

(declare-fun e!31017 () Bool)

(assert (=> b!48342 (= e!31016 e!31017)))

(declare-fun res!28035 () Bool)

(assert (=> b!48342 (=> (not res!28035) (not e!31017))))

(assert (=> b!48342 (= res!28035 (bvslt (_1!886 (h!1875 (toList!640 lm!267))) (_1!886 (h!1875 (t!4335 (toList!640 lm!267))))))))

(declare-fun b!48343 () Bool)

(assert (=> b!48343 (= e!31017 (isStrictlySorted!249 (t!4335 (toList!640 lm!267))))))

(assert (= (and d!9617 (not res!28034)) b!48342))

(assert (= (and b!48342 res!28035) b!48343))

(declare-fun m!42273 () Bool)

(assert (=> b!48343 m!42273))

(assert (=> b!48156 d!9617))

(declare-fun d!9621 () Bool)

(declare-fun e!31043 () Bool)

(assert (=> d!9621 e!31043))

(declare-fun res!28058 () Bool)

(assert (=> d!9621 (=> res!28058 e!31043)))

(declare-fun lt!20676 () Bool)

(assert (=> d!9621 (= res!28058 (not lt!20676))))

(declare-fun lt!20674 () Bool)

(assert (=> d!9621 (= lt!20676 lt!20674)))

(declare-fun lt!20673 () Unit!1355)

(declare-fun e!31044 () Unit!1355)

(assert (=> d!9621 (= lt!20673 e!31044)))

(declare-fun c!6537 () Bool)

(assert (=> d!9621 (= c!6537 lt!20674)))

(assert (=> d!9621 (= lt!20674 (containsKey!101 (toList!640 lm!267) key!657))))

(assert (=> d!9621 (= (contains!602 lm!267 key!657) lt!20676)))

(declare-fun b!48378 () Bool)

(declare-fun lt!20675 () Unit!1355)

(assert (=> b!48378 (= e!31044 lt!20675)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!73 (List!1299 (_ BitVec 64)) Unit!1355)

(assert (=> b!48378 (= lt!20675 (lemmaContainsKeyImpliesGetValueByKeyDefined!73 (toList!640 lm!267) key!657))))

(declare-fun isDefined!74 (Option!123) Bool)

(assert (=> b!48378 (isDefined!74 (getValueByKey!117 (toList!640 lm!267) key!657))))

(declare-fun b!48379 () Bool)

(declare-fun Unit!1363 () Unit!1355)

(assert (=> b!48379 (= e!31044 Unit!1363)))

(declare-fun b!48380 () Bool)

(assert (=> b!48380 (= e!31043 (isDefined!74 (getValueByKey!117 (toList!640 lm!267) key!657)))))

(assert (= (and d!9621 c!6537) b!48378))

(assert (= (and d!9621 (not c!6537)) b!48379))

(assert (= (and d!9621 (not res!28058)) b!48380))

(assert (=> d!9621 m!42105))

(declare-fun m!42305 () Bool)

(assert (=> b!48378 m!42305))

(declare-fun m!42307 () Bool)

(assert (=> b!48378 m!42307))

(assert (=> b!48378 m!42307))

(declare-fun m!42309 () Bool)

(assert (=> b!48378 m!42309))

(assert (=> b!48380 m!42307))

(assert (=> b!48380 m!42307))

(assert (=> b!48380 m!42309))

(assert (=> start!7522 d!9621))

(declare-fun d!9635 () Bool)

(assert (=> d!9635 (= (inv!2236 lm!267) (isStrictlySorted!249 (toList!640 lm!267)))))

(declare-fun bs!2251 () Bool)

(assert (= bs!2251 d!9635))

(assert (=> bs!2251 m!42107))

(assert (=> start!7522 d!9635))

(declare-fun b!48399 () Bool)

(declare-fun e!31057 () Bool)

(declare-fun tp!6362 () Bool)

(assert (=> b!48399 (= e!31057 (and tp_is_empty!2077 tp!6362))))

(assert (=> b!48159 (= tp!6347 e!31057)))

(assert (= (and b!48159 (is-Cons!1295 (toList!640 lm!267))) b!48399))

(push 1)

