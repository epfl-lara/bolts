; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7524 () Bool)

(assert start!7524)

(declare-fun res!27972 () Bool)

(declare-fun e!30918 () Bool)

(assert (=> start!7524 (=> (not res!27972) (not e!30918))))

(declare-datatypes ((B!928 0))(
  ( (B!929 (val!1084 Int)) )
))
(declare-datatypes ((tuple2!1754 0))(
  ( (tuple2!1755 (_1!887 (_ BitVec 64)) (_2!887 B!928)) )
))
(declare-datatypes ((List!1300 0))(
  ( (Nil!1297) (Cons!1296 (h!1876 tuple2!1754) (t!4336 List!1300)) )
))
(declare-datatypes ((ListLongMap!1251 0))(
  ( (ListLongMap!1252 (toList!641 List!1300)) )
))
(declare-fun lm!267 () ListLongMap!1251)

(declare-fun key!657 () (_ BitVec 64))

(declare-fun contains!603 (ListLongMap!1251 (_ BitVec 64)) Bool)

(assert (=> start!7524 (= res!27972 (not (contains!603 lm!267 key!657)))))

(assert (=> start!7524 e!30918))

(declare-fun e!30919 () Bool)

(declare-fun inv!2237 (ListLongMap!1251) Bool)

(assert (=> start!7524 (and (inv!2237 lm!267) e!30919)))

(assert (=> start!7524 true))

(declare-fun tp_is_empty!2079 () Bool)

(assert (=> start!7524 tp_is_empty!2079))

(declare-fun b!48168 () Bool)

(declare-fun res!27970 () Bool)

(assert (=> b!48168 (=> (not res!27970) (not e!30918))))

(declare-fun isStrictlySorted!250 (List!1300) Bool)

(assert (=> b!48168 (= res!27970 (isStrictlySorted!250 (toList!641 lm!267)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!20577 () (InoxSet tuple2!1754))

(declare-fun b!48170 () Bool)

(declare-fun lt!20576 () tuple2!1754)

(declare-fun content!46 (List!1300) (InoxSet tuple2!1754))

(declare-fun +!74 (ListLongMap!1251 tuple2!1754) ListLongMap!1251)

(assert (=> b!48170 (= e!30918 (not (= lt!20577 (content!46 (toList!641 (+!74 lm!267 lt!20576))))))))

(declare-fun value!242 () B!928)

(declare-fun insertStrictlySorted!33 (List!1300 (_ BitVec 64) B!928) List!1300)

(assert (=> b!48170 (= lt!20577 (content!46 (insertStrictlySorted!33 (toList!641 lm!267) key!657 value!242)))))

(assert (=> b!48170 (= lt!20577 ((_ map or) (content!46 (toList!641 lm!267)) (store ((as const (Array tuple2!1754 Bool)) false) lt!20576 true)))))

(assert (=> b!48170 (= lt!20576 (tuple2!1755 key!657 value!242))))

(declare-datatypes ((Unit!1357 0))(
  ( (Unit!1358) )
))
(declare-fun lt!20575 () Unit!1357)

(declare-fun lemmaInsertStrictlySortedNotContainedContent!2 (List!1300 (_ BitVec 64) B!928) Unit!1357)

(assert (=> b!48170 (= lt!20575 (lemmaInsertStrictlySortedNotContainedContent!2 (toList!641 lm!267) key!657 value!242))))

(declare-fun b!48169 () Bool)

(declare-fun res!27971 () Bool)

(assert (=> b!48169 (=> (not res!27971) (not e!30918))))

(declare-fun containsKey!102 (List!1300 (_ BitVec 64)) Bool)

(assert (=> b!48169 (= res!27971 (not (containsKey!102 (toList!641 lm!267) key!657)))))

(declare-fun b!48171 () Bool)

(declare-fun tp!6350 () Bool)

(assert (=> b!48171 (= e!30919 tp!6350)))

(assert (= (and start!7524 res!27972) b!48168))

(assert (= (and b!48168 res!27970) b!48169))

(assert (= (and b!48169 res!27971) b!48170))

(assert (= start!7524 b!48171))

(declare-fun m!42127 () Bool)

(assert (=> start!7524 m!42127))

(declare-fun m!42129 () Bool)

(assert (=> start!7524 m!42129))

(declare-fun m!42131 () Bool)

(assert (=> b!48168 m!42131))

(declare-fun m!42133 () Bool)

(assert (=> b!48170 m!42133))

(declare-fun m!42135 () Bool)

(assert (=> b!48170 m!42135))

(declare-fun m!42137 () Bool)

(assert (=> b!48170 m!42137))

(assert (=> b!48170 m!42135))

(declare-fun m!42139 () Bool)

(assert (=> b!48170 m!42139))

(declare-fun m!42141 () Bool)

(assert (=> b!48170 m!42141))

(declare-fun m!42143 () Bool)

(assert (=> b!48170 m!42143))

(declare-fun m!42145 () Bool)

(assert (=> b!48170 m!42145))

(declare-fun m!42147 () Bool)

(assert (=> b!48169 m!42147))

(check-sat (not b!48171) (not start!7524) (not b!48168) (not b!48170) (not b!48169) tp_is_empty!2079)
(check-sat)
(get-model)

(declare-fun d!9577 () Bool)

(declare-fun e!30937 () Bool)

(assert (=> d!9577 e!30937))

(declare-fun res!27990 () Bool)

(assert (=> d!9577 (=> res!27990 e!30937)))

(declare-fun lt!20599 () Bool)

(assert (=> d!9577 (= res!27990 (not lt!20599))))

(declare-fun lt!20598 () Bool)

(assert (=> d!9577 (= lt!20599 lt!20598)))

(declare-fun lt!20601 () Unit!1357)

(declare-fun e!30936 () Unit!1357)

(assert (=> d!9577 (= lt!20601 e!30936)))

(declare-fun c!6480 () Bool)

(assert (=> d!9577 (= c!6480 lt!20598)))

(assert (=> d!9577 (= lt!20598 (containsKey!102 (toList!641 lm!267) key!657))))

(assert (=> d!9577 (= (contains!603 lm!267 key!657) lt!20599)))

(declare-fun b!48196 () Bool)

(declare-fun lt!20600 () Unit!1357)

(assert (=> b!48196 (= e!30936 lt!20600)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!71 (List!1300 (_ BitVec 64)) Unit!1357)

(assert (=> b!48196 (= lt!20600 (lemmaContainsKeyImpliesGetValueByKeyDefined!71 (toList!641 lm!267) key!657))))

(declare-datatypes ((Option!121 0))(
  ( (Some!120 (v!2137 B!928)) (None!119) )
))
(declare-fun isDefined!72 (Option!121) Bool)

(declare-fun getValueByKey!115 (List!1300 (_ BitVec 64)) Option!121)

(assert (=> b!48196 (isDefined!72 (getValueByKey!115 (toList!641 lm!267) key!657))))

(declare-fun b!48197 () Bool)

(declare-fun Unit!1361 () Unit!1357)

(assert (=> b!48197 (= e!30936 Unit!1361)))

(declare-fun b!48198 () Bool)

(assert (=> b!48198 (= e!30937 (isDefined!72 (getValueByKey!115 (toList!641 lm!267) key!657)))))

(assert (= (and d!9577 c!6480) b!48196))

(assert (= (and d!9577 (not c!6480)) b!48197))

(assert (= (and d!9577 (not res!27990)) b!48198))

(assert (=> d!9577 m!42147))

(declare-fun m!42177 () Bool)

(assert (=> b!48196 m!42177))

(declare-fun m!42179 () Bool)

(assert (=> b!48196 m!42179))

(assert (=> b!48196 m!42179))

(declare-fun m!42181 () Bool)

(assert (=> b!48196 m!42181))

(assert (=> b!48198 m!42179))

(assert (=> b!48198 m!42179))

(assert (=> b!48198 m!42181))

(assert (=> start!7524 d!9577))

(declare-fun d!9587 () Bool)

(assert (=> d!9587 (= (inv!2237 lm!267) (isStrictlySorted!250 (toList!641 lm!267)))))

(declare-fun bs!2247 () Bool)

(assert (= bs!2247 d!9587))

(assert (=> bs!2247 m!42131))

(assert (=> start!7524 d!9587))

(declare-fun d!9589 () Bool)

(assert (=> d!9589 (= ((_ map or) (content!46 (toList!641 lm!267)) (store ((as const (Array tuple2!1754 Bool)) false) (tuple2!1755 key!657 value!242) true)) (content!46 (insertStrictlySorted!33 (toList!641 lm!267) key!657 value!242)))))

(declare-fun lt!20618 () Unit!1357)

(declare-fun choose!289 (List!1300 (_ BitVec 64) B!928) Unit!1357)

(assert (=> d!9589 (= lt!20618 (choose!289 (toList!641 lm!267) key!657 value!242))))

(assert (=> d!9589 (isStrictlySorted!250 (toList!641 lm!267))))

(assert (=> d!9589 (= (lemmaInsertStrictlySortedNotContainedContent!2 (toList!641 lm!267) key!657 value!242) lt!20618)))

(declare-fun bs!2249 () Bool)

(assert (= bs!2249 d!9589))

(assert (=> bs!2249 m!42135))

(assert (=> bs!2249 m!42133))

(declare-fun m!42189 () Bool)

(assert (=> bs!2249 m!42189))

(assert (=> bs!2249 m!42131))

(declare-fun m!42191 () Bool)

(assert (=> bs!2249 m!42191))

(assert (=> bs!2249 m!42135))

(assert (=> bs!2249 m!42137))

(assert (=> b!48170 d!9589))

(declare-fun bm!3766 () Bool)

(declare-fun call!3769 () List!1300)

(declare-fun call!3770 () List!1300)

(assert (=> bm!3766 (= call!3769 call!3770)))

(declare-fun c!6517 () Bool)

(declare-fun bm!3767 () Bool)

(declare-fun e!30986 () List!1300)

(declare-fun $colon$colon!50 (List!1300 tuple2!1754) List!1300)

(assert (=> bm!3767 (= call!3770 ($colon$colon!50 e!30986 (ite c!6517 (h!1876 (toList!641 lm!267)) (tuple2!1755 key!657 value!242))))))

(declare-fun c!6519 () Bool)

(assert (=> bm!3767 (= c!6519 c!6517)))

(declare-fun b!48286 () Bool)

(declare-fun e!30985 () List!1300)

(declare-fun call!3771 () List!1300)

(assert (=> b!48286 (= e!30985 call!3771)))

(declare-fun c!6518 () Bool)

(declare-fun b!48287 () Bool)

(declare-fun c!6516 () Bool)

(assert (=> b!48287 (= e!30986 (ite c!6516 (t!4336 (toList!641 lm!267)) (ite c!6518 (Cons!1296 (h!1876 (toList!641 lm!267)) (t!4336 (toList!641 lm!267))) Nil!1297)))))

(declare-fun b!48288 () Bool)

(get-info :version)

(assert (=> b!48288 (= c!6518 (and ((_ is Cons!1296) (toList!641 lm!267)) (bvsgt (_1!887 (h!1876 (toList!641 lm!267))) key!657)))))

(declare-fun e!30987 () List!1300)

(assert (=> b!48288 (= e!30987 e!30985)))

(declare-fun b!48289 () Bool)

(declare-fun res!28008 () Bool)

(declare-fun e!30983 () Bool)

(assert (=> b!48289 (=> (not res!28008) (not e!30983))))

(declare-fun lt!20627 () List!1300)

(assert (=> b!48289 (= res!28008 (containsKey!102 lt!20627 key!657))))

(declare-fun b!48290 () Bool)

(assert (=> b!48290 (= e!30986 (insertStrictlySorted!33 (t!4336 (toList!641 lm!267)) key!657 value!242))))

(declare-fun b!48291 () Bool)

(assert (=> b!48291 (= e!30987 call!3769)))

(declare-fun b!48292 () Bool)

(declare-fun e!30984 () List!1300)

(assert (=> b!48292 (= e!30984 e!30987)))

(assert (=> b!48292 (= c!6516 (and ((_ is Cons!1296) (toList!641 lm!267)) (= (_1!887 (h!1876 (toList!641 lm!267))) key!657)))))

(declare-fun d!9595 () Bool)

(assert (=> d!9595 e!30983))

(declare-fun res!28009 () Bool)

(assert (=> d!9595 (=> (not res!28009) (not e!30983))))

(assert (=> d!9595 (= res!28009 (isStrictlySorted!250 lt!20627))))

(assert (=> d!9595 (= lt!20627 e!30984)))

(assert (=> d!9595 (= c!6517 (and ((_ is Cons!1296) (toList!641 lm!267)) (bvslt (_1!887 (h!1876 (toList!641 lm!267))) key!657)))))

(assert (=> d!9595 (isStrictlySorted!250 (toList!641 lm!267))))

(assert (=> d!9595 (= (insertStrictlySorted!33 (toList!641 lm!267) key!657 value!242) lt!20627)))

(declare-fun bm!3768 () Bool)

(assert (=> bm!3768 (= call!3771 call!3769)))

(declare-fun b!48293 () Bool)

(assert (=> b!48293 (= e!30985 call!3771)))

(declare-fun b!48294 () Bool)

(declare-fun contains!606 (List!1300 tuple2!1754) Bool)

(assert (=> b!48294 (= e!30983 (contains!606 lt!20627 (tuple2!1755 key!657 value!242)))))

(declare-fun b!48295 () Bool)

(assert (=> b!48295 (= e!30984 call!3770)))

(assert (= (and d!9595 c!6517) b!48295))

(assert (= (and d!9595 (not c!6517)) b!48292))

(assert (= (and b!48292 c!6516) b!48291))

(assert (= (and b!48292 (not c!6516)) b!48288))

(assert (= (and b!48288 c!6518) b!48286))

(assert (= (and b!48288 (not c!6518)) b!48293))

(assert (= (or b!48286 b!48293) bm!3768))

(assert (= (or b!48291 bm!3768) bm!3766))

(assert (= (or b!48295 bm!3766) bm!3767))

(assert (= (and bm!3767 c!6519) b!48290))

(assert (= (and bm!3767 (not c!6519)) b!48287))

(assert (= (and d!9595 res!28009) b!48289))

(assert (= (and b!48289 res!28008) b!48294))

(declare-fun m!42215 () Bool)

(assert (=> b!48289 m!42215))

(declare-fun m!42217 () Bool)

(assert (=> d!9595 m!42217))

(assert (=> d!9595 m!42131))

(declare-fun m!42219 () Bool)

(assert (=> b!48290 m!42219))

(declare-fun m!42221 () Bool)

(assert (=> b!48294 m!42221))

(declare-fun m!42223 () Bool)

(assert (=> bm!3767 m!42223))

(assert (=> b!48170 d!9595))

(declare-fun d!9605 () Bool)

(declare-fun c!6526 () Bool)

(assert (=> d!9605 (= c!6526 ((_ is Nil!1297) (toList!641 (+!74 lm!267 lt!20576))))))

(declare-fun e!30997 () (InoxSet tuple2!1754))

(assert (=> d!9605 (= (content!46 (toList!641 (+!74 lm!267 lt!20576))) e!30997)))

(declare-fun b!48314 () Bool)

(assert (=> b!48314 (= e!30997 ((as const (Array tuple2!1754 Bool)) false))))

(declare-fun b!48315 () Bool)

(assert (=> b!48315 (= e!30997 ((_ map or) (store ((as const (Array tuple2!1754 Bool)) false) (h!1876 (toList!641 (+!74 lm!267 lt!20576))) true) (content!46 (t!4336 (toList!641 (+!74 lm!267 lt!20576))))))))

(assert (= (and d!9605 c!6526) b!48314))

(assert (= (and d!9605 (not c!6526)) b!48315))

(declare-fun m!42227 () Bool)

(assert (=> b!48315 m!42227))

(declare-fun m!42232 () Bool)

(assert (=> b!48315 m!42232))

(assert (=> b!48170 d!9605))

(declare-fun d!9607 () Bool)

(declare-fun e!31015 () Bool)

(assert (=> d!9607 e!31015))

(declare-fun res!28032 () Bool)

(assert (=> d!9607 (=> (not res!28032) (not e!31015))))

(declare-fun lt!20649 () ListLongMap!1251)

(assert (=> d!9607 (= res!28032 (contains!603 lt!20649 (_1!887 lt!20576)))))

(declare-fun lt!20650 () List!1300)

(assert (=> d!9607 (= lt!20649 (ListLongMap!1252 lt!20650))))

(declare-fun lt!20652 () Unit!1357)

(declare-fun lt!20651 () Unit!1357)

(assert (=> d!9607 (= lt!20652 lt!20651)))

(assert (=> d!9607 (= (getValueByKey!115 lt!20650 (_1!887 lt!20576)) (Some!120 (_2!887 lt!20576)))))

(declare-fun lemmaContainsTupThenGetReturnValue!36 (List!1300 (_ BitVec 64) B!928) Unit!1357)

(assert (=> d!9607 (= lt!20651 (lemmaContainsTupThenGetReturnValue!36 lt!20650 (_1!887 lt!20576) (_2!887 lt!20576)))))

(assert (=> d!9607 (= lt!20650 (insertStrictlySorted!33 (toList!641 lm!267) (_1!887 lt!20576) (_2!887 lt!20576)))))

(assert (=> d!9607 (= (+!74 lm!267 lt!20576) lt!20649)))

(declare-fun b!48340 () Bool)

(declare-fun res!28033 () Bool)

(assert (=> b!48340 (=> (not res!28033) (not e!31015))))

(assert (=> b!48340 (= res!28033 (= (getValueByKey!115 (toList!641 lt!20649) (_1!887 lt!20576)) (Some!120 (_2!887 lt!20576))))))

(declare-fun b!48341 () Bool)

(assert (=> b!48341 (= e!31015 (contains!606 (toList!641 lt!20649) lt!20576))))

(assert (= (and d!9607 res!28032) b!48340))

(assert (= (and b!48340 res!28033) b!48341))

(declare-fun m!42261 () Bool)

(assert (=> d!9607 m!42261))

(declare-fun m!42263 () Bool)

(assert (=> d!9607 m!42263))

(declare-fun m!42265 () Bool)

(assert (=> d!9607 m!42265))

(declare-fun m!42267 () Bool)

(assert (=> d!9607 m!42267))

(declare-fun m!42269 () Bool)

(assert (=> b!48340 m!42269))

(declare-fun m!42271 () Bool)

(assert (=> b!48341 m!42271))

(assert (=> b!48170 d!9607))

(declare-fun d!9619 () Bool)

(declare-fun c!6531 () Bool)

(assert (=> d!9619 (= c!6531 ((_ is Nil!1297) (insertStrictlySorted!33 (toList!641 lm!267) key!657 value!242)))))

(declare-fun e!31018 () (InoxSet tuple2!1754))

(assert (=> d!9619 (= (content!46 (insertStrictlySorted!33 (toList!641 lm!267) key!657 value!242)) e!31018)))

(declare-fun b!48344 () Bool)

(assert (=> b!48344 (= e!31018 ((as const (Array tuple2!1754 Bool)) false))))

(declare-fun b!48345 () Bool)

(assert (=> b!48345 (= e!31018 ((_ map or) (store ((as const (Array tuple2!1754 Bool)) false) (h!1876 (insertStrictlySorted!33 (toList!641 lm!267) key!657 value!242)) true) (content!46 (t!4336 (insertStrictlySorted!33 (toList!641 lm!267) key!657 value!242)))))))

(assert (= (and d!9619 c!6531) b!48344))

(assert (= (and d!9619 (not c!6531)) b!48345))

(declare-fun m!42275 () Bool)

(assert (=> b!48345 m!42275))

(declare-fun m!42277 () Bool)

(assert (=> b!48345 m!42277))

(assert (=> b!48170 d!9619))

(declare-fun d!9623 () Bool)

(declare-fun c!6532 () Bool)

(assert (=> d!9623 (= c!6532 ((_ is Nil!1297) (toList!641 lm!267)))))

(declare-fun e!31021 () (InoxSet tuple2!1754))

(assert (=> d!9623 (= (content!46 (toList!641 lm!267)) e!31021)))

(declare-fun b!48350 () Bool)

(assert (=> b!48350 (= e!31021 ((as const (Array tuple2!1754 Bool)) false))))

(declare-fun b!48351 () Bool)

(assert (=> b!48351 (= e!31021 ((_ map or) (store ((as const (Array tuple2!1754 Bool)) false) (h!1876 (toList!641 lm!267)) true) (content!46 (t!4336 (toList!641 lm!267)))))))

(assert (= (and d!9623 c!6532) b!48350))

(assert (= (and d!9623 (not c!6532)) b!48351))

(declare-fun m!42279 () Bool)

(assert (=> b!48351 m!42279))

(declare-fun m!42281 () Bool)

(assert (=> b!48351 m!42281))

(assert (=> b!48170 d!9623))

(declare-fun d!9625 () Bool)

(declare-fun res!28046 () Bool)

(declare-fun e!31029 () Bool)

(assert (=> d!9625 (=> res!28046 e!31029)))

(assert (=> d!9625 (= res!28046 (and ((_ is Cons!1296) (toList!641 lm!267)) (= (_1!887 (h!1876 (toList!641 lm!267))) key!657)))))

(assert (=> d!9625 (= (containsKey!102 (toList!641 lm!267) key!657) e!31029)))

(declare-fun b!48362 () Bool)

(declare-fun e!31030 () Bool)

(assert (=> b!48362 (= e!31029 e!31030)))

(declare-fun res!28047 () Bool)

(assert (=> b!48362 (=> (not res!28047) (not e!31030))))

(assert (=> b!48362 (= res!28047 (and (or (not ((_ is Cons!1296) (toList!641 lm!267))) (bvsle (_1!887 (h!1876 (toList!641 lm!267))) key!657)) ((_ is Cons!1296) (toList!641 lm!267)) (bvslt (_1!887 (h!1876 (toList!641 lm!267))) key!657)))))

(declare-fun b!48363 () Bool)

(assert (=> b!48363 (= e!31030 (containsKey!102 (t!4336 (toList!641 lm!267)) key!657))))

(assert (= (and d!9625 (not res!28046)) b!48362))

(assert (= (and b!48362 res!28047) b!48363))

(declare-fun m!42303 () Bool)

(assert (=> b!48363 m!42303))

(assert (=> b!48169 d!9625))

(declare-fun d!9633 () Bool)

(declare-fun res!28059 () Bool)

(declare-fun e!31045 () Bool)

(assert (=> d!9633 (=> res!28059 e!31045)))

(assert (=> d!9633 (= res!28059 (or ((_ is Nil!1297) (toList!641 lm!267)) ((_ is Nil!1297) (t!4336 (toList!641 lm!267)))))))

(assert (=> d!9633 (= (isStrictlySorted!250 (toList!641 lm!267)) e!31045)))

(declare-fun b!48381 () Bool)

(declare-fun e!31046 () Bool)

(assert (=> b!48381 (= e!31045 e!31046)))

(declare-fun res!28060 () Bool)

(assert (=> b!48381 (=> (not res!28060) (not e!31046))))

(assert (=> b!48381 (= res!28060 (bvslt (_1!887 (h!1876 (toList!641 lm!267))) (_1!887 (h!1876 (t!4336 (toList!641 lm!267))))))))

(declare-fun b!48382 () Bool)

(assert (=> b!48382 (= e!31046 (isStrictlySorted!250 (t!4336 (toList!641 lm!267))))))

(assert (= (and d!9633 (not res!28059)) b!48381))

(assert (= (and b!48381 res!28060) b!48382))

(declare-fun m!42311 () Bool)

(assert (=> b!48382 m!42311))

(assert (=> b!48168 d!9633))

(declare-fun b!48397 () Bool)

(declare-fun e!31055 () Bool)

(declare-fun tp!6360 () Bool)

(assert (=> b!48397 (= e!31055 (and tp_is_empty!2079 tp!6360))))

(assert (=> b!48171 (= tp!6350 e!31055)))

(assert (= (and b!48171 ((_ is Cons!1296) (toList!641 lm!267))) b!48397))

(check-sat (not b!48351) (not d!9595) (not b!48289) (not d!9607) (not b!48363) (not b!48382) (not b!48340) (not d!9589) (not b!48345) (not d!9587) (not b!48198) (not bm!3767) (not b!48315) (not b!48294) (not d!9577) (not b!48290) (not b!48196) tp_is_empty!2079 (not b!48397) (not b!48341))
(check-sat)
