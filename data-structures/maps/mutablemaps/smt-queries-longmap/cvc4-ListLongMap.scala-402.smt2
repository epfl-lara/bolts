; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7526 () Bool)

(assert start!7526)

(declare-fun res!27980 () Bool)

(declare-fun e!30925 () Bool)

(assert (=> start!7526 (=> (not res!27980) (not e!30925))))

(declare-datatypes ((B!930 0))(
  ( (B!931 (val!1085 Int)) )
))
(declare-datatypes ((tuple2!1756 0))(
  ( (tuple2!1757 (_1!888 (_ BitVec 64)) (_2!888 B!930)) )
))
(declare-datatypes ((List!1301 0))(
  ( (Nil!1298) (Cons!1297 (h!1877 tuple2!1756) (t!4337 List!1301)) )
))
(declare-datatypes ((ListLongMap!1253 0))(
  ( (ListLongMap!1254 (toList!642 List!1301)) )
))
(declare-fun lm!267 () ListLongMap!1253)

(declare-fun key!657 () (_ BitVec 64))

(declare-fun contains!604 (ListLongMap!1253 (_ BitVec 64)) Bool)

(assert (=> start!7526 (= res!27980 (not (contains!604 lm!267 key!657)))))

(assert (=> start!7526 e!30925))

(declare-fun e!30924 () Bool)

(declare-fun inv!2238 (ListLongMap!1253) Bool)

(assert (=> start!7526 (and (inv!2238 lm!267) e!30924)))

(assert (=> start!7526 true))

(declare-fun tp_is_empty!2081 () Bool)

(assert (=> start!7526 tp_is_empty!2081))

(declare-fun b!48182 () Bool)

(declare-fun lt!20586 () (Set tuple2!1756))

(declare-fun lt!20584 () tuple2!1756)

(declare-fun content!47 (List!1301) (Set tuple2!1756))

(declare-fun +!75 (ListLongMap!1253 tuple2!1756) ListLongMap!1253)

(assert (=> b!48182 (= e!30925 (not (= lt!20586 (content!47 (toList!642 (+!75 lm!267 lt!20584))))))))

(declare-fun value!242 () B!930)

(declare-fun insertStrictlySorted!34 (List!1301 (_ BitVec 64) B!930) List!1301)

(assert (=> b!48182 (= lt!20586 (content!47 (insertStrictlySorted!34 (toList!642 lm!267) key!657 value!242)))))

(assert (=> b!48182 (= lt!20586 (union (content!47 (toList!642 lm!267)) (insert lt!20584 (as emptyset (Set tuple2!1756)))))))

(assert (=> b!48182 (= lt!20584 (tuple2!1757 key!657 value!242))))

(declare-datatypes ((Unit!1359 0))(
  ( (Unit!1360) )
))
(declare-fun lt!20585 () Unit!1359)

(declare-fun lemmaInsertStrictlySortedNotContainedContent!3 (List!1301 (_ BitVec 64) B!930) Unit!1359)

(assert (=> b!48182 (= lt!20585 (lemmaInsertStrictlySortedNotContainedContent!3 (toList!642 lm!267) key!657 value!242))))

(declare-fun b!48183 () Bool)

(declare-fun tp!6353 () Bool)

(assert (=> b!48183 (= e!30924 tp!6353)))

(declare-fun b!48180 () Bool)

(declare-fun res!27981 () Bool)

(assert (=> b!48180 (=> (not res!27981) (not e!30925))))

(declare-fun isStrictlySorted!251 (List!1301) Bool)

(assert (=> b!48180 (= res!27981 (isStrictlySorted!251 (toList!642 lm!267)))))

(declare-fun b!48181 () Bool)

(declare-fun res!27979 () Bool)

(assert (=> b!48181 (=> (not res!27979) (not e!30925))))

(declare-fun containsKey!103 (List!1301 (_ BitVec 64)) Bool)

(assert (=> b!48181 (= res!27979 (not (containsKey!103 (toList!642 lm!267) key!657)))))

(assert (= (and start!7526 res!27980) b!48180))

(assert (= (and b!48180 res!27981) b!48181))

(assert (= (and b!48181 res!27979) b!48182))

(assert (= start!7526 b!48183))

(declare-fun m!42149 () Bool)

(assert (=> start!7526 m!42149))

(declare-fun m!42151 () Bool)

(assert (=> start!7526 m!42151))

(declare-fun m!42153 () Bool)

(assert (=> b!48182 m!42153))

(declare-fun m!42155 () Bool)

(assert (=> b!48182 m!42155))

(declare-fun m!42157 () Bool)

(assert (=> b!48182 m!42157))

(assert (=> b!48182 m!42153))

(declare-fun m!42159 () Bool)

(assert (=> b!48182 m!42159))

(declare-fun m!42161 () Bool)

(assert (=> b!48182 m!42161))

(declare-fun m!42163 () Bool)

(assert (=> b!48182 m!42163))

(declare-fun m!42165 () Bool)

(assert (=> b!48182 m!42165))

(declare-fun m!42167 () Bool)

(assert (=> b!48180 m!42167))

(declare-fun m!42169 () Bool)

(assert (=> b!48181 m!42169))

(push 1)

(assert (not start!7526))

(assert tp_is_empty!2081)

(assert (not b!48182))

(assert (not b!48181))

(assert (not b!48180))

(assert (not b!48183))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9579 () Bool)

(declare-fun res!27986 () Bool)

(declare-fun e!30930 () Bool)

(assert (=> d!9579 (=> res!27986 e!30930)))

(assert (=> d!9579 (= res!27986 (or (is-Nil!1298 (toList!642 lm!267)) (is-Nil!1298 (t!4337 (toList!642 lm!267)))))))

(assert (=> d!9579 (= (isStrictlySorted!251 (toList!642 lm!267)) e!30930)))

(declare-fun b!48188 () Bool)

(declare-fun e!30931 () Bool)

(assert (=> b!48188 (= e!30930 e!30931)))

(declare-fun res!27987 () Bool)

(assert (=> b!48188 (=> (not res!27987) (not e!30931))))

(assert (=> b!48188 (= res!27987 (bvslt (_1!888 (h!1877 (toList!642 lm!267))) (_1!888 (h!1877 (t!4337 (toList!642 lm!267))))))))

(declare-fun b!48189 () Bool)

(assert (=> b!48189 (= e!30931 (isStrictlySorted!251 (t!4337 (toList!642 lm!267))))))

(assert (= (and d!9579 (not res!27986)) b!48188))

(assert (= (and b!48188 res!27987) b!48189))

(declare-fun m!42171 () Bool)

(assert (=> b!48189 m!42171))

(assert (=> b!48180 d!9579))

(declare-fun d!9583 () Bool)

(declare-fun e!30942 () Bool)

(assert (=> d!9583 e!30942))

(declare-fun res!27993 () Bool)

(assert (=> d!9583 (=> res!27993 e!30942)))

(declare-fun lt!20612 () Bool)

(assert (=> d!9583 (= res!27993 (not lt!20612))))

(declare-fun lt!20611 () Bool)

(assert (=> d!9583 (= lt!20612 lt!20611)))

(declare-fun lt!20613 () Unit!1359)

(declare-fun e!30943 () Unit!1359)

(assert (=> d!9583 (= lt!20613 e!30943)))

(declare-fun c!6483 () Bool)

(assert (=> d!9583 (= c!6483 lt!20611)))

(assert (=> d!9583 (= lt!20611 (containsKey!103 (toList!642 lm!267) key!657))))

(assert (=> d!9583 (= (contains!604 lm!267 key!657) lt!20612)))

(declare-fun b!48205 () Bool)

(declare-fun lt!20610 () Unit!1359)

(assert (=> b!48205 (= e!30943 lt!20610)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!72 (List!1301 (_ BitVec 64)) Unit!1359)

(assert (=> b!48205 (= lt!20610 (lemmaContainsKeyImpliesGetValueByKeyDefined!72 (toList!642 lm!267) key!657))))

(declare-datatypes ((Option!122 0))(
  ( (Some!121 (v!2138 B!930)) (None!120) )
))
(declare-fun isDefined!73 (Option!122) Bool)

(declare-fun getValueByKey!116 (List!1301 (_ BitVec 64)) Option!122)

(assert (=> b!48205 (isDefined!73 (getValueByKey!116 (toList!642 lm!267) key!657))))

(declare-fun b!48206 () Bool)

(declare-fun Unit!1362 () Unit!1359)

(assert (=> b!48206 (= e!30943 Unit!1362)))

(declare-fun b!48207 () Bool)

(assert (=> b!48207 (= e!30942 (isDefined!73 (getValueByKey!116 (toList!642 lm!267) key!657)))))

(assert (= (and d!9583 c!6483) b!48205))

(assert (= (and d!9583 (not c!6483)) b!48206))

(assert (= (and d!9583 (not res!27993)) b!48207))

(assert (=> d!9583 m!42169))

(declare-fun m!42183 () Bool)

(assert (=> b!48205 m!42183))

(declare-fun m!42185 () Bool)

(assert (=> b!48205 m!42185))

(assert (=> b!48205 m!42185))

(declare-fun m!42187 () Bool)

(assert (=> b!48205 m!42187))

(assert (=> b!48207 m!42185))

(assert (=> b!48207 m!42185))

(assert (=> b!48207 m!42187))

(assert (=> start!7526 d!9583))

(declare-fun d!9591 () Bool)

(assert (=> d!9591 (= (inv!2238 lm!267) (isStrictlySorted!251 (toList!642 lm!267)))))

(declare-fun bs!2248 () Bool)

(assert (= bs!2248 d!9591))

(assert (=> bs!2248 m!42167))

(assert (=> start!7526 d!9591))

(declare-fun d!9593 () Bool)

(assert (=> d!9593 (= (union (content!47 (toList!642 lm!267)) (insert (tuple2!1757 key!657 value!242) (as emptyset (Set tuple2!1756)))) (content!47 (insertStrictlySorted!34 (toList!642 lm!267) key!657 value!242)))))

(declare-fun lt!20621 () Unit!1359)

(declare-fun choose!290 (List!1301 (_ BitVec 64) B!930) Unit!1359)

(assert (=> d!9593 (= lt!20621 (choose!290 (toList!642 lm!267) key!657 value!242))))

(assert (=> d!9593 (isStrictlySorted!251 (toList!642 lm!267))))

(assert (=> d!9593 (= (lemmaInsertStrictlySortedNotContainedContent!3 (toList!642 lm!267) key!657 value!242) lt!20621)))

(declare-fun bs!2250 () Bool)

(assert (= bs!2250 d!9593))

(assert (=> bs!2250 m!42167))

(assert (=> bs!2250 m!42153))

(assert (=> bs!2250 m!42155))

(assert (=> bs!2250 m!42153))

(declare-fun m!42193 () Bool)

(assert (=> bs!2250 m!42193))

(declare-fun m!42195 () Bool)

(assert (=> bs!2250 m!42195))

(assert (=> bs!2250 m!42161))

(assert (=> b!48182 d!9593))

(declare-fun b!48300 () Bool)

(declare-fun res!28012 () Bool)

(declare-fun e!30991 () Bool)

(assert (=> b!48300 (=> (not res!28012) (not e!30991))))

(declare-fun lt!20636 () List!1301)

(assert (=> b!48300 (= res!28012 (containsKey!103 lt!20636 key!657))))

(declare-fun b!48301 () Bool)

(declare-fun e!30993 () List!1301)

(declare-fun call!3774 () List!1301)

(assert (=> b!48301 (= e!30993 call!3774)))

(declare-fun b!48302 () Bool)

(declare-fun e!30995 () List!1301)

(declare-fun call!3772 () List!1301)

(assert (=> b!48302 (= e!30995 call!3772)))

(declare-fun d!9597 () Bool)

(assert (=> d!9597 e!30991))

(declare-fun res!28010 () Bool)

(assert (=> d!9597 (=> (not res!28010) (not e!30991))))

(assert (=> d!9597 (= res!28010 (isStrictlySorted!251 lt!20636))))

(assert (=> d!9597 (= lt!20636 e!30995)))

(declare-fun c!6524 () Bool)

(assert (=> d!9597 (= c!6524 (and (is-Cons!1297 (toList!642 lm!267)) (bvslt (_1!888 (h!1877 (toList!642 lm!267))) key!657)))))

(assert (=> d!9597 (isStrictlySorted!251 (toList!642 lm!267))))

(assert (=> d!9597 (= (insertStrictlySorted!34 (toList!642 lm!267) key!657 value!242) lt!20636)))

(declare-fun e!30994 () List!1301)

(declare-fun b!48303 () Bool)

(assert (=> b!48303 (= e!30994 (insertStrictlySorted!34 (t!4337 (toList!642 lm!267)) key!657 value!242))))

(declare-fun b!48304 () Bool)

(declare-fun c!6522 () Bool)

(declare-fun c!6525 () Bool)

(assert (=> b!48304 (= e!30994 (ite c!6522 (t!4337 (toList!642 lm!267)) (ite c!6525 (Cons!1297 (h!1877 (toList!642 lm!267)) (t!4337 (toList!642 lm!267))) Nil!1298)))))

(declare-fun b!48305 () Bool)

(assert (=> b!48305 (= c!6525 (and (is-Cons!1297 (toList!642 lm!267)) (bvsgt (_1!888 (h!1877 (toList!642 lm!267))) key!657)))))

(declare-fun e!30996 () List!1301)

(assert (=> b!48305 (= e!30996 e!30993)))

(declare-fun bm!3769 () Bool)

(declare-fun call!3773 () List!1301)

(assert (=> bm!3769 (= call!3774 call!3773)))

(declare-fun bm!3770 () Bool)

(declare-fun $colon$colon!51 (List!1301 tuple2!1756) List!1301)

(assert (=> bm!3770 (= call!3772 ($colon$colon!51 e!30994 (ite c!6524 (h!1877 (toList!642 lm!267)) (tuple2!1757 key!657 value!242))))))

(declare-fun c!6523 () Bool)

(assert (=> bm!3770 (= c!6523 c!6524)))

(declare-fun bm!3771 () Bool)

(assert (=> bm!3771 (= call!3773 call!3772)))

(declare-fun b!48306 () Bool)

(assert (=> b!48306 (= e!30993 call!3774)))

(declare-fun b!48307 () Bool)

(declare-fun contains!607 (List!1301 tuple2!1756) Bool)

(assert (=> b!48307 (= e!30991 (contains!607 lt!20636 (tuple2!1757 key!657 value!242)))))

(declare-fun b!48308 () Bool)

(assert (=> b!48308 (= e!30996 call!3773)))

(declare-fun b!48309 () Bool)

(assert (=> b!48309 (= e!30995 e!30996)))

(assert (=> b!48309 (= c!6522 (and (is-Cons!1297 (toList!642 lm!267)) (= (_1!888 (h!1877 (toList!642 lm!267))) key!657)))))

(assert (= (and d!9597 c!6524) b!48302))

(assert (= (and d!9597 (not c!6524)) b!48309))

(assert (= (and b!48309 c!6522) b!48308))

(assert (= (and b!48309 (not c!6522)) b!48305))

(assert (= (and b!48305 c!6525) b!48301))

(assert (= (and b!48305 (not c!6525)) b!48306))

(assert (= (or b!48301 b!48306) bm!3769))

(assert (= (or b!48308 bm!3769) bm!3771))

(assert (= (or b!48302 bm!3771) bm!3770))

(assert (= (and bm!3770 c!6523) b!48303))

(assert (= (and bm!3770 (not c!6523)) b!48304))

(assert (= (and d!9597 res!28010) b!48300))

(assert (= (and b!48300 res!28012) b!48307))

(declare-fun m!42225 () Bool)

(assert (=> d!9597 m!42225))

(assert (=> d!9597 m!42167))

(declare-fun m!42229 () Bool)

(assert (=> b!48307 m!42229))

(declare-fun m!42233 () Bool)

(assert (=> b!48300 m!42233))

(declare-fun m!42235 () Bool)

(assert (=> bm!3770 m!42235))

(declare-fun m!42237 () Bool)

(assert (=> b!48303 m!42237))

(assert (=> b!48182 d!9597))

(declare-fun d!9609 () Bool)

(declare-fun c!6530 () Bool)

(assert (=> d!9609 (= c!6530 (is-Nil!1298 (toList!642 lm!267)))))

(declare-fun e!31002 () (Set tuple2!1756))

(assert (=> d!9609 (= (content!47 (toList!642 lm!267)) e!31002)))

(declare-fun b!48324 () Bool)

(assert (=> b!48324 (= e!31002 (as emptyset (Set tuple2!1756)))))

(declare-fun b!48325 () Bool)

(assert (=> b!48325 (= e!31002 (union (insert (h!1877 (toList!642 lm!267)) (as emptyset (Set tuple2!1756))) (content!47 (t!4337 (toList!642 lm!267)))))))

(assert (= (and d!9609 c!6530) b!48324))

(assert (= (and d!9609 (not c!6530)) b!48325))

(declare-fun m!42255 () Bool)

(assert (=> b!48325 m!42255))

(declare-fun m!42257 () Bool)

(assert (=> b!48325 m!42257))

(assert (=> b!48182 d!9609))

(declare-fun d!9615 () Bool)

(declare-fun e!31022 () Bool)

(assert (=> d!9615 e!31022))

(declare-fun res!28040 () Bool)

(assert (=> d!9615 (=> (not res!28040) (not e!31022))))

(declare-fun lt!20661 () ListLongMap!1253)

(assert (=> d!9615 (= res!28040 (contains!604 lt!20661 (_1!888 lt!20584)))))

(declare-fun lt!20663 () List!1301)

(assert (=> d!9615 (= lt!20661 (ListLongMap!1254 lt!20663))))

(declare-fun lt!20664 () Unit!1359)

(declare-fun lt!20662 () Unit!1359)

(assert (=> d!9615 (= lt!20664 lt!20662)))

(assert (=> d!9615 (= (getValueByKey!116 lt!20663 (_1!888 lt!20584)) (Some!121 (_2!888 lt!20584)))))

(declare-fun lemmaContainsTupThenGetReturnValue!37 (List!1301 (_ BitVec 64) B!930) Unit!1359)

(assert (=> d!9615 (= lt!20662 (lemmaContainsTupThenGetReturnValue!37 lt!20663 (_1!888 lt!20584) (_2!888 lt!20584)))))

(assert (=> d!9615 (= lt!20663 (insertStrictlySorted!34 (toList!642 lm!267) (_1!888 lt!20584) (_2!888 lt!20584)))))

(assert (=> d!9615 (= (+!75 lm!267 lt!20584) lt!20661)))

(declare-fun b!48352 () Bool)

(declare-fun res!28041 () Bool)

(assert (=> b!48352 (=> (not res!28041) (not e!31022))))

