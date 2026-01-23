; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759662 () Bool)

(assert start!759662)

(declare-fun b!8060133 () Bool)

(assert (=> b!8060133 false))

(declare-datatypes ((Unit!172814 0))(
  ( (Unit!172815) )
))
(declare-fun lt!2733027 () Unit!172814)

(declare-datatypes ((B!4547 0))(
  ( (B!4548 (val!33141 Int)) )
))
(declare-datatypes ((K!23086 0))(
  ( (K!23087 (val!33142 Int)) )
))
(declare-datatypes ((tuple2!71106 0))(
  ( (tuple2!71107 (_1!38856 K!23086) (_2!38856 B!4547)) )
))
(declare-datatypes ((List!75824 0))(
  ( (Nil!75698) (Cons!75698 (h!82146 tuple2!71106) (t!391596 List!75824)) )
))
(declare-datatypes ((ListMap!7469 0))(
  ( (ListMap!7470 (toList!12009 List!75824)) )
))
(declare-fun thiss!41813 () ListMap!7469)

(declare-fun key!1573 () K!23086)

(declare-fun lemmaInGetKeysListThenContainsKey!1279 (List!75824 K!23086) Unit!172814)

(assert (=> b!8060133 (= lt!2733027 (lemmaInGetKeysListThenContainsKey!1279 (toList!12009 thiss!41813) key!1573))))

(declare-fun e!4750025 () Unit!172814)

(declare-fun Unit!172816 () Unit!172814)

(assert (=> b!8060133 (= e!4750025 Unit!172816)))

(declare-fun b!8060134 () Bool)

(declare-fun e!4750024 () Bool)

(declare-datatypes ((List!75825 0))(
  ( (Nil!75699) (Cons!75699 (h!82147 K!23086) (t!391597 List!75825)) )
))
(declare-fun contains!21351 (List!75825 K!23086) Bool)

(declare-fun keys!30986 (ListMap!7469) List!75825)

(assert (=> b!8060134 (= e!4750024 (not (contains!21351 (keys!30986 thiss!41813) key!1573)))))

(declare-fun b!8060135 () Bool)

(declare-fun e!4750026 () List!75825)

(declare-fun getKeysList!1282 (List!75824) List!75825)

(assert (=> b!8060135 (= e!4750026 (getKeysList!1282 (toList!12009 thiss!41813)))))

(declare-fun b!8060136 () Bool)

(declare-fun Unit!172817 () Unit!172814)

(assert (=> b!8060136 (= e!4750025 Unit!172817)))

(declare-fun b!8060137 () Bool)

(declare-fun e!4750023 () Bool)

(assert (=> b!8060137 (= e!4750023 (contains!21351 (keys!30986 thiss!41813) key!1573))))

(declare-fun b!8060138 () Bool)

(declare-fun e!4750027 () Unit!172814)

(declare-fun lt!2733029 () Unit!172814)

(assert (=> b!8060138 (= e!4750027 lt!2733029)))

(declare-fun lt!2733031 () Unit!172814)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2589 (List!75824 K!23086) Unit!172814)

(assert (=> b!8060138 (= lt!2733031 (lemmaContainsKeyImpliesGetValueByKeyDefined!2589 (toList!12009 thiss!41813) key!1573))))

(declare-datatypes ((Option!18040 0))(
  ( (None!18039) (Some!18039 (v!55404 B!4547)) )
))
(declare-fun isDefined!14567 (Option!18040) Bool)

(declare-fun getValueByKey!2824 (List!75824 K!23086) Option!18040)

(assert (=> b!8060138 (isDefined!14567 (getValueByKey!2824 (toList!12009 thiss!41813) key!1573))))

(declare-fun lemmaInListThenGetKeysListContains!1272 (List!75824 K!23086) Unit!172814)

(assert (=> b!8060138 (= lt!2733029 (lemmaInListThenGetKeysListContains!1272 (toList!12009 thiss!41813) key!1573))))

(declare-fun call!747778 () Bool)

(assert (=> b!8060138 call!747778))

(declare-fun b!8060139 () Bool)

(assert (=> b!8060139 (= e!4750027 e!4750025)))

(declare-fun c!1477041 () Bool)

(assert (=> b!8060139 (= c!1477041 call!747778)))

(declare-fun b!8060140 () Bool)

(declare-fun e!4750021 () Bool)

(declare-fun tp!2414505 () Bool)

(assert (=> b!8060140 (= e!4750021 tp!2414505)))

(declare-fun b!8060141 () Bool)

(declare-fun e!4750022 () Bool)

(assert (=> b!8060141 (= e!4750022 e!4750024)))

(declare-fun res!3188783 () Bool)

(assert (=> b!8060141 (=> res!3188783 e!4750024)))

(assert (=> b!8060141 (= res!3188783 (not (isDefined!14567 (getValueByKey!2824 (toList!12009 thiss!41813) key!1573))))))

(declare-fun b!8060142 () Bool)

(assert (=> b!8060142 (= e!4750026 (keys!30986 thiss!41813))))

(declare-fun res!3188782 () Bool)

(assert (=> start!759662 (=> (not res!3188782) (not e!4750022))))

(assert (=> start!759662 (= res!3188782 e!4750023)))

(declare-fun res!3188784 () Bool)

(assert (=> start!759662 (=> res!3188784 e!4750023)))

(declare-fun lt!2733028 () Bool)

(assert (=> start!759662 (= res!3188784 lt!2733028)))

(declare-fun lt!2733030 () Unit!172814)

(assert (=> start!759662 (= lt!2733030 e!4750027)))

(declare-fun c!1477040 () Bool)

(assert (=> start!759662 (= c!1477040 lt!2733028)))

(declare-fun containsKey!4962 (List!75824 K!23086) Bool)

(assert (=> start!759662 (= lt!2733028 (containsKey!4962 (toList!12009 thiss!41813) key!1573))))

(assert (=> start!759662 e!4750022))

(declare-fun inv!97556 (ListMap!7469) Bool)

(assert (=> start!759662 (and (inv!97556 thiss!41813) e!4750021)))

(declare-fun tp_is_empty!55311 () Bool)

(assert (=> start!759662 tp_is_empty!55311))

(declare-fun bm!747773 () Bool)

(assert (=> bm!747773 (= call!747778 (contains!21351 e!4750026 key!1573))))

(declare-fun c!1477039 () Bool)

(assert (=> bm!747773 (= c!1477039 c!1477040)))

(assert (= (and start!759662 c!1477040) b!8060138))

(assert (= (and start!759662 (not c!1477040)) b!8060139))

(assert (= (and b!8060139 c!1477041) b!8060133))

(assert (= (and b!8060139 (not c!1477041)) b!8060136))

(assert (= (or b!8060138 b!8060139) bm!747773))

(assert (= (and bm!747773 c!1477039) b!8060135))

(assert (= (and bm!747773 (not c!1477039)) b!8060142))

(assert (= (and start!759662 (not res!3188784)) b!8060137))

(assert (= (and start!759662 res!3188782) b!8060141))

(assert (= (and b!8060141 (not res!3188783)) b!8060134))

(assert (= start!759662 b!8060140))

(declare-fun m!8413228 () Bool)

(assert (=> b!8060135 m!8413228))

(declare-fun m!8413230 () Bool)

(assert (=> b!8060142 m!8413230))

(declare-fun m!8413232 () Bool)

(assert (=> b!8060133 m!8413232))

(declare-fun m!8413234 () Bool)

(assert (=> b!8060138 m!8413234))

(declare-fun m!8413236 () Bool)

(assert (=> b!8060138 m!8413236))

(assert (=> b!8060138 m!8413236))

(declare-fun m!8413238 () Bool)

(assert (=> b!8060138 m!8413238))

(declare-fun m!8413240 () Bool)

(assert (=> b!8060138 m!8413240))

(declare-fun m!8413242 () Bool)

(assert (=> bm!747773 m!8413242))

(assert (=> b!8060137 m!8413230))

(assert (=> b!8060137 m!8413230))

(declare-fun m!8413244 () Bool)

(assert (=> b!8060137 m!8413244))

(declare-fun m!8413246 () Bool)

(assert (=> start!759662 m!8413246))

(declare-fun m!8413248 () Bool)

(assert (=> start!759662 m!8413248))

(assert (=> b!8060134 m!8413230))

(assert (=> b!8060134 m!8413230))

(assert (=> b!8060134 m!8413244))

(assert (=> b!8060141 m!8413236))

(assert (=> b!8060141 m!8413236))

(assert (=> b!8060141 m!8413238))

(push 1)

(assert (not b!8060138))

(assert (not bm!747773))

(assert (not start!759662))

(assert (not b!8060142))

(assert (not b!8060140))

(assert (not b!8060133))

(assert tp_is_empty!55311)

(assert (not b!8060135))

(assert (not b!8060137))

(assert (not b!8060134))

(assert (not b!8060141))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2399492 () Bool)

(declare-fun res!3188798 () Bool)

(declare-fun e!4750053 () Bool)

(assert (=> d!2399492 (=> res!3188798 e!4750053)))

(assert (=> d!2399492 (= res!3188798 (and (is-Cons!75698 (toList!12009 thiss!41813)) (= (_1!38856 (h!82146 (toList!12009 thiss!41813))) key!1573)))))

(assert (=> d!2399492 (= (containsKey!4962 (toList!12009 thiss!41813) key!1573) e!4750053)))

(declare-fun b!8060177 () Bool)

(declare-fun e!4750054 () Bool)

(assert (=> b!8060177 (= e!4750053 e!4750054)))

(declare-fun res!3188799 () Bool)

(assert (=> b!8060177 (=> (not res!3188799) (not e!4750054))))

(assert (=> b!8060177 (= res!3188799 (is-Cons!75698 (toList!12009 thiss!41813)))))

(declare-fun b!8060178 () Bool)

(assert (=> b!8060178 (= e!4750054 (containsKey!4962 (t!391596 (toList!12009 thiss!41813)) key!1573))))

(assert (= (and d!2399492 (not res!3188798)) b!8060177))

(assert (= (and b!8060177 res!3188799) b!8060178))

(declare-fun m!8413272 () Bool)

(assert (=> b!8060178 m!8413272))

(assert (=> start!759662 d!2399492))

(declare-fun d!2399496 () Bool)

(declare-fun invariantList!1995 (List!75824) Bool)

(assert (=> d!2399496 (= (inv!97556 thiss!41813) (invariantList!1995 (toList!12009 thiss!41813)))))

(declare-fun bs!1973620 () Bool)

(assert (= bs!1973620 d!2399496))

(declare-fun m!8413274 () Bool)

(assert (=> bs!1973620 m!8413274))

(assert (=> start!759662 d!2399496))

(declare-fun d!2399498 () Bool)

(assert (=> d!2399498 (isDefined!14567 (getValueByKey!2824 (toList!12009 thiss!41813) key!1573))))

(declare-fun lt!2733049 () Unit!172814)

(declare-fun choose!60591 (List!75824 K!23086) Unit!172814)

(assert (=> d!2399498 (= lt!2733049 (choose!60591 (toList!12009 thiss!41813) key!1573))))

(assert (=> d!2399498 (invariantList!1995 (toList!12009 thiss!41813))))

(assert (=> d!2399498 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2589 (toList!12009 thiss!41813) key!1573) lt!2733049)))

(declare-fun bs!1973622 () Bool)

(assert (= bs!1973622 d!2399498))

(assert (=> bs!1973622 m!8413236))

(assert (=> bs!1973622 m!8413236))

(assert (=> bs!1973622 m!8413238))

(declare-fun m!8413280 () Bool)

(assert (=> bs!1973622 m!8413280))

(assert (=> bs!1973622 m!8413274))

(assert (=> b!8060138 d!2399498))

(declare-fun d!2399504 () Bool)

(declare-fun isEmpty!43044 (Option!18040) Bool)

(assert (=> d!2399504 (= (isDefined!14567 (getValueByKey!2824 (toList!12009 thiss!41813) key!1573)) (not (isEmpty!43044 (getValueByKey!2824 (toList!12009 thiss!41813) key!1573))))))

(declare-fun bs!1973623 () Bool)

(assert (= bs!1973623 d!2399504))

(assert (=> bs!1973623 m!8413236))

(declare-fun m!8413282 () Bool)

(assert (=> bs!1973623 m!8413282))

(assert (=> b!8060138 d!2399504))

(declare-fun d!2399506 () Bool)

(declare-fun c!1477055 () Bool)

(assert (=> d!2399506 (= c!1477055 (and (is-Cons!75698 (toList!12009 thiss!41813)) (= (_1!38856 (h!82146 (toList!12009 thiss!41813))) key!1573)))))

(declare-fun e!4750071 () Option!18040)

(assert (=> d!2399506 (= (getValueByKey!2824 (toList!12009 thiss!41813) key!1573) e!4750071)))

(declare-fun b!8060199 () Bool)

(assert (=> b!8060199 (= e!4750071 (Some!18039 (_2!38856 (h!82146 (toList!12009 thiss!41813)))))))

(declare-fun b!8060202 () Bool)

(declare-fun e!4750072 () Option!18040)

(assert (=> b!8060202 (= e!4750072 None!18039)))

(declare-fun b!8060201 () Bool)

(assert (=> b!8060201 (= e!4750072 (getValueByKey!2824 (t!391596 (toList!12009 thiss!41813)) key!1573))))

(declare-fun b!8060200 () Bool)

(assert (=> b!8060200 (= e!4750071 e!4750072)))

(declare-fun c!1477056 () Bool)

(assert (=> b!8060200 (= c!1477056 (and (is-Cons!75698 (toList!12009 thiss!41813)) (not (= (_1!38856 (h!82146 (toList!12009 thiss!41813))) key!1573))))))

(assert (= (and d!2399506 c!1477055) b!8060199))

(assert (= (and d!2399506 (not c!1477055)) b!8060200))

(assert (= (and b!8060200 c!1477056) b!8060201))

(assert (= (and b!8060200 (not c!1477056)) b!8060202))

(declare-fun m!8413290 () Bool)

(assert (=> b!8060201 m!8413290))

(assert (=> b!8060138 d!2399506))

(declare-fun d!2399510 () Bool)

(assert (=> d!2399510 (contains!21351 (getKeysList!1282 (toList!12009 thiss!41813)) key!1573)))

(declare-fun lt!2733058 () Unit!172814)

(declare-fun choose!60592 (List!75824 K!23086) Unit!172814)

(assert (=> d!2399510 (= lt!2733058 (choose!60592 (toList!12009 thiss!41813) key!1573))))

(assert (=> d!2399510 (invariantList!1995 (toList!12009 thiss!41813))))

(assert (=> d!2399510 (= (lemmaInListThenGetKeysListContains!1272 (toList!12009 thiss!41813) key!1573) lt!2733058)))

(declare-fun bs!1973626 () Bool)

(assert (= bs!1973626 d!2399510))

(assert (=> bs!1973626 m!8413228))

(assert (=> bs!1973626 m!8413228))

(declare-fun m!8413296 () Bool)

(assert (=> bs!1973626 m!8413296))

(declare-fun m!8413298 () Bool)

(assert (=> bs!1973626 m!8413298))

(assert (=> bs!1973626 m!8413274))

(assert (=> b!8060138 d!2399510))

(declare-fun d!2399516 () Bool)

(declare-fun lt!2733061 () Bool)

(declare-fun content!16147 (List!75825) (Set K!23086))

(assert (=> d!2399516 (= lt!2733061 (set.member key!1573 (content!16147 (keys!30986 thiss!41813))))))

(declare-fun e!4750083 () Bool)

(assert (=> d!2399516 (= lt!2733061 e!4750083)))

(declare-fun res!3188817 () Bool)

(assert (=> d!2399516 (=> (not res!3188817) (not e!4750083))))

(assert (=> d!2399516 (= res!3188817 (is-Cons!75699 (keys!30986 thiss!41813)))))

(assert (=> d!2399516 (= (contains!21351 (keys!30986 thiss!41813) key!1573) lt!2733061)))

(declare-fun b!8060219 () Bool)

(declare-fun e!4750084 () Bool)

(assert (=> b!8060219 (= e!4750083 e!4750084)))

(declare-fun res!3188816 () Bool)

(assert (=> b!8060219 (=> res!3188816 e!4750084)))

(assert (=> b!8060219 (= res!3188816 (= (h!82147 (keys!30986 thiss!41813)) key!1573))))

(declare-fun b!8060220 () Bool)

(assert (=> b!8060220 (= e!4750084 (contains!21351 (t!391597 (keys!30986 thiss!41813)) key!1573))))

(assert (= (and d!2399516 res!3188817) b!8060219))

(assert (= (and b!8060219 (not res!3188816)) b!8060220))

(assert (=> d!2399516 m!8413230))

(declare-fun m!8413302 () Bool)

(assert (=> d!2399516 m!8413302))

(declare-fun m!8413304 () Bool)

(assert (=> d!2399516 m!8413304))

(declare-fun m!8413306 () Bool)

(assert (=> b!8060220 m!8413306))

(assert (=> b!8060134 d!2399516))

(declare-fun b!8060232 () Bool)

(assert (=> b!8060232 true))

(declare-fun d!2399520 () Bool)

(declare-fun e!4750089 () Bool)

(assert (=> d!2399520 e!4750089))

(declare-fun res!3188831 () Bool)

(assert (=> d!2399520 (=> (not res!3188831) (not e!4750089))))

(declare-fun lt!2733072 () List!75825)

(declare-fun noDuplicate!3171 (List!75825) Bool)

(assert (=> d!2399520 (= res!3188831 (noDuplicate!3171 lt!2733072))))

(assert (=> d!2399520 (= lt!2733072 (getKeysList!1282 (toList!12009 thiss!41813)))))

(assert (=> d!2399520 (= (keys!30986 thiss!41813) lt!2733072)))

(declare-fun b!8060231 () Bool)

(declare-fun res!3188832 () Bool)

(assert (=> b!8060231 (=> (not res!3188832) (not e!4750089))))

(declare-fun length!834 (List!75825) Int)

(declare-fun length!835 (List!75824) Int)

(assert (=> b!8060231 (= res!3188832 (= (length!834 lt!2733072) (length!835 (toList!12009 thiss!41813))))))

(declare-fun res!3188830 () Bool)

(assert (=> b!8060232 (=> (not res!3188830) (not e!4750089))))

(declare-fun lambda!475389 () Int)

(declare-fun forall!18559 (List!75825 Int) Bool)

(assert (=> b!8060232 (= res!3188830 (forall!18559 lt!2733072 lambda!475389))))

(declare-fun lambda!475390 () Int)

(declare-fun b!8060233 () Bool)

(declare-fun map!18858 (List!75824 Int) List!75825)

(assert (=> b!8060233 (= e!4750089 (= (content!16147 lt!2733072) (content!16147 (map!18858 (toList!12009 thiss!41813) lambda!475390))))))

(assert (= (and d!2399520 res!3188831) b!8060231))

(assert (= (and b!8060231 res!3188832) b!8060232))

(assert (= (and b!8060232 res!3188830) b!8060233))

(declare-fun m!8413314 () Bool)

(assert (=> d!2399520 m!8413314))

(assert (=> d!2399520 m!8413228))

(declare-fun m!8413316 () Bool)

(assert (=> b!8060231 m!8413316))

(declare-fun m!8413318 () Bool)

(assert (=> b!8060231 m!8413318))

(declare-fun m!8413320 () Bool)

(assert (=> b!8060232 m!8413320))

(declare-fun m!8413322 () Bool)

(assert (=> b!8060233 m!8413322))

(declare-fun m!8413324 () Bool)

(assert (=> b!8060233 m!8413324))

(assert (=> b!8060233 m!8413324))

(declare-fun m!8413326 () Bool)

(assert (=> b!8060233 m!8413326))

(assert (=> b!8060134 d!2399520))

(assert (=> b!8060142 d!2399520))

(declare-fun d!2399526 () Bool)

(declare-fun lt!2733073 () Bool)

(assert (=> d!2399526 (= lt!2733073 (set.member key!1573 (content!16147 e!4750026)))))

(declare-fun e!4750090 () Bool)

(assert (=> d!2399526 (= lt!2733073 e!4750090)))

(declare-fun res!3188834 () Bool)

(assert (=> d!2399526 (=> (not res!3188834) (not e!4750090))))

(assert (=> d!2399526 (= res!3188834 (is-Cons!75699 e!4750026))))

(assert (=> d!2399526 (= (contains!21351 e!4750026 key!1573) lt!2733073)))

(declare-fun b!8060236 () Bool)

(declare-fun e!4750091 () Bool)

(assert (=> b!8060236 (= e!4750090 e!4750091)))

(declare-fun res!3188833 () Bool)

(assert (=> b!8060236 (=> res!3188833 e!4750091)))

(assert (=> b!8060236 (= res!3188833 (= (h!82147 e!4750026) key!1573))))

(declare-fun b!8060237 () Bool)

(assert (=> b!8060237 (= e!4750091 (contains!21351 (t!391597 e!4750026) key!1573))))

(assert (= (and d!2399526 res!3188834) b!8060236))

(assert (= (and b!8060236 (not res!3188833)) b!8060237))

(declare-fun m!8413328 () Bool)

(assert (=> d!2399526 m!8413328))

(declare-fun m!8413330 () Bool)

(assert (=> d!2399526 m!8413330))

(declare-fun m!8413332 () Bool)

(assert (=> b!8060237 m!8413332))

(assert (=> bm!747773 d!2399526))

(declare-fun d!2399528 () Bool)

(assert (=> d!2399528 (containsKey!4962 (toList!12009 thiss!41813) key!1573)))

(declare-fun lt!2733076 () Unit!172814)

(declare-fun choose!60593 (List!75824 K!23086) Unit!172814)

(assert (=> d!2399528 (= lt!2733076 (choose!60593 (toList!12009 thiss!41813) key!1573))))

(assert (=> d!2399528 (invariantList!1995 (toList!12009 thiss!41813))))

(assert (=> d!2399528 (= (lemmaInGetKeysListThenContainsKey!1279 (toList!12009 thiss!41813) key!1573) lt!2733076)))

(declare-fun bs!1973629 () Bool)

(assert (= bs!1973629 d!2399528))

(assert (=> bs!1973629 m!8413246))

(declare-fun m!8413334 () Bool)

(assert (=> bs!1973629 m!8413334))

(assert (=> bs!1973629 m!8413274))

(assert (=> b!8060133 d!2399528))

(assert (=> b!8060141 d!2399504))

(assert (=> b!8060141 d!2399506))

(assert (=> b!8060137 d!2399516))

(assert (=> b!8060137 d!2399520))

(declare-fun bs!1973630 () Bool)

(declare-fun b!8060267 () Bool)

(assert (= bs!1973630 (and b!8060267 b!8060232)))

(declare-fun lambda!475405 () Int)

(assert (=> bs!1973630 (= (= (t!391596 (toList!12009 thiss!41813)) (toList!12009 thiss!41813)) (= lambda!475405 lambda!475389))))

(assert (=> b!8060267 true))

(declare-fun bs!1973631 () Bool)

(declare-fun b!8060264 () Bool)

(assert (= bs!1973631 (and b!8060264 b!8060232)))

(declare-fun lambda!475406 () Int)

(assert (=> bs!1973631 (= (= (Cons!75698 (h!82146 (toList!12009 thiss!41813)) (t!391596 (toList!12009 thiss!41813))) (toList!12009 thiss!41813)) (= lambda!475406 lambda!475389))))

(declare-fun bs!1973632 () Bool)

(assert (= bs!1973632 (and b!8060264 b!8060267)))

(assert (=> bs!1973632 (= (= (Cons!75698 (h!82146 (toList!12009 thiss!41813)) (t!391596 (toList!12009 thiss!41813))) (t!391596 (toList!12009 thiss!41813))) (= lambda!475406 lambda!475405))))

(assert (=> b!8060264 true))

(declare-fun bs!1973633 () Bool)

(declare-fun b!8060268 () Bool)

(assert (= bs!1973633 (and b!8060268 b!8060232)))

(declare-fun lambda!475407 () Int)

(assert (=> bs!1973633 (= lambda!475407 lambda!475389)))

(declare-fun bs!1973634 () Bool)

(assert (= bs!1973634 (and b!8060268 b!8060267)))

(assert (=> bs!1973634 (= (= (toList!12009 thiss!41813) (t!391596 (toList!12009 thiss!41813))) (= lambda!475407 lambda!475405))))

(declare-fun bs!1973635 () Bool)

(assert (= bs!1973635 (and b!8060268 b!8060264)))

(assert (=> bs!1973635 (= (= (toList!12009 thiss!41813) (Cons!75698 (h!82146 (toList!12009 thiss!41813)) (t!391596 (toList!12009 thiss!41813)))) (= lambda!475407 lambda!475406))))

(assert (=> b!8060268 true))

(declare-fun bs!1973636 () Bool)

(declare-fun b!8060266 () Bool)

(assert (= bs!1973636 (and b!8060266 b!8060233)))

(declare-fun lambda!475408 () Int)

(assert (=> bs!1973636 (= lambda!475408 lambda!475390)))

(declare-fun d!2399530 () Bool)

(declare-fun e!4750103 () Bool)

(assert (=> d!2399530 e!4750103))

(declare-fun res!3188844 () Bool)

(assert (=> d!2399530 (=> (not res!3188844) (not e!4750103))))

(declare-fun lt!2733092 () List!75825)

(assert (=> d!2399530 (= res!3188844 (noDuplicate!3171 lt!2733092))))

(declare-fun e!4750101 () List!75825)

(assert (=> d!2399530 (= lt!2733092 e!4750101)))

(declare-fun c!1477070 () Bool)

(assert (=> d!2399530 (= c!1477070 (is-Cons!75698 (toList!12009 thiss!41813)))))

(assert (=> d!2399530 (invariantList!1995 (toList!12009 thiss!41813))))

(assert (=> d!2399530 (= (getKeysList!1282 (toList!12009 thiss!41813)) lt!2733092)))

(declare-fun b!8060263 () Bool)

(assert (=> b!8060263 (= e!4750101 Nil!75699)))

(assert (=> b!8060264 (= e!4750101 (Cons!75699 (_1!38856 (h!82146 (toList!12009 thiss!41813))) (getKeysList!1282 (t!391596 (toList!12009 thiss!41813)))))))

(declare-fun c!1477071 () Bool)

(assert (=> b!8060264 (= c!1477071 (containsKey!4962 (t!391596 (toList!12009 thiss!41813)) (_1!38856 (h!82146 (toList!12009 thiss!41813)))))))

(declare-fun lt!2733097 () Unit!172814)

(declare-fun e!4750104 () Unit!172814)

(assert (=> b!8060264 (= lt!2733097 e!4750104)))

(declare-fun c!1477069 () Bool)

(assert (=> b!8060264 (= c!1477069 (contains!21351 (getKeysList!1282 (t!391596 (toList!12009 thiss!41813))) (_1!38856 (h!82146 (toList!12009 thiss!41813)))))))

(declare-fun lt!2733098 () Unit!172814)

(declare-fun e!4750102 () Unit!172814)

(assert (=> b!8060264 (= lt!2733098 e!4750102)))

(declare-fun lt!2733094 () List!75825)

(assert (=> b!8060264 (= lt!2733094 (getKeysList!1282 (t!391596 (toList!12009 thiss!41813))))))

(declare-fun lt!2733096 () Unit!172814)

(declare-fun lemmaForallContainsAddHeadPreserves!400 (List!75824 List!75825 tuple2!71106) Unit!172814)

(assert (=> b!8060264 (= lt!2733096 (lemmaForallContainsAddHeadPreserves!400 (t!391596 (toList!12009 thiss!41813)) lt!2733094 (h!82146 (toList!12009 thiss!41813))))))

(assert (=> b!8060264 (forall!18559 lt!2733094 lambda!475406)))

(declare-fun lt!2733093 () Unit!172814)

(assert (=> b!8060264 (= lt!2733093 lt!2733096)))

(declare-fun b!8060265 () Bool)

(declare-fun Unit!172822 () Unit!172814)

(assert (=> b!8060265 (= e!4750104 Unit!172822)))

(assert (=> b!8060266 (= e!4750103 (= (content!16147 lt!2733092) (content!16147 (map!18858 (toList!12009 thiss!41813) lambda!475408))))))

(assert (=> b!8060267 false))

(declare-fun lt!2733095 () Unit!172814)

(declare-fun forallContained!4703 (List!75825 Int K!23086) Unit!172814)

(assert (=> b!8060267 (= lt!2733095 (forallContained!4703 (getKeysList!1282 (t!391596 (toList!12009 thiss!41813))) lambda!475405 (_1!38856 (h!82146 (toList!12009 thiss!41813)))))))

(declare-fun Unit!172823 () Unit!172814)

(assert (=> b!8060267 (= e!4750102 Unit!172823)))

(declare-fun res!3188845 () Bool)

(assert (=> b!8060268 (=> (not res!3188845) (not e!4750103))))

(assert (=> b!8060268 (= res!3188845 (forall!18559 lt!2733092 lambda!475407))))

(declare-fun b!8060269 () Bool)

(declare-fun res!3188846 () Bool)

(assert (=> b!8060269 (=> (not res!3188846) (not e!4750103))))

(assert (=> b!8060269 (= res!3188846 (= (length!834 lt!2733092) (length!835 (toList!12009 thiss!41813))))))

(declare-fun b!8060270 () Bool)

(assert (=> b!8060270 false))

(declare-fun Unit!172824 () Unit!172814)

(assert (=> b!8060270 (= e!4750104 Unit!172824)))

(declare-fun b!8060271 () Bool)

(declare-fun Unit!172825 () Unit!172814)

(assert (=> b!8060271 (= e!4750102 Unit!172825)))

(assert (= (and d!2399530 c!1477070) b!8060264))

(assert (= (and d!2399530 (not c!1477070)) b!8060263))

(assert (= (and b!8060264 c!1477071) b!8060270))

(assert (= (and b!8060264 (not c!1477071)) b!8060265))

(assert (= (and b!8060264 c!1477069) b!8060267))

(assert (= (and b!8060264 (not c!1477069)) b!8060271))

(assert (= (and d!2399530 res!3188844) b!8060269))

(assert (= (and b!8060269 res!3188846) b!8060268))

(assert (= (and b!8060268 res!3188845) b!8060266))

(declare-fun m!8413350 () Bool)

(assert (=> d!2399530 m!8413350))

(assert (=> d!2399530 m!8413274))

(declare-fun m!8413352 () Bool)

(assert (=> b!8060269 m!8413352))

(assert (=> b!8060269 m!8413318))

(declare-fun m!8413354 () Bool)

(assert (=> b!8060264 m!8413354))

(declare-fun m!8413356 () Bool)

(assert (=> b!8060264 m!8413356))

(declare-fun m!8413358 () Bool)

(assert (=> b!8060264 m!8413358))

(declare-fun m!8413360 () Bool)

(assert (=> b!8060264 m!8413360))

(declare-fun m!8413362 () Bool)

(assert (=> b!8060264 m!8413362))

(assert (=> b!8060264 m!8413356))

(declare-fun m!8413364 () Bool)

(assert (=> b!8060266 m!8413364))

(declare-fun m!8413366 () Bool)

(assert (=> b!8060266 m!8413366))

(assert (=> b!8060266 m!8413366))

(declare-fun m!8413368 () Bool)

(assert (=> b!8060266 m!8413368))

(declare-fun m!8413370 () Bool)

(assert (=> b!8060268 m!8413370))

(assert (=> b!8060267 m!8413356))

(assert (=> b!8060267 m!8413356))

(declare-fun m!8413372 () Bool)

(assert (=> b!8060267 m!8413372))

(assert (=> b!8060135 d!2399530))

(declare-fun tp_is_empty!55315 () Bool)

(declare-fun b!8060278 () Bool)

(declare-fun e!4750107 () Bool)

(declare-fun tp!2414511 () Bool)

(assert (=> b!8060278 (= e!4750107 (and tp_is_empty!55311 tp_is_empty!55315 tp!2414511))))

(assert (=> b!8060140 (= tp!2414505 e!4750107)))

(assert (= (and b!8060140 (is-Cons!75698 (toList!12009 thiss!41813))) b!8060278))

(push 1)

(assert (not d!2399530))

(assert (not b!8060264))

(assert (not d!2399496))

(assert (not b!8060237))

(assert (not b!8060233))

(assert (not b!8060267))

(assert (not b!8060268))

(assert (not b!8060231))

(assert (not d!2399504))

(assert (not b!8060201))

(assert (not d!2399520))

(assert (not b!8060178))

(assert (not d!2399498))

(assert tp_is_empty!55311)

(assert (not d!2399516))

(assert (not d!2399526))

(assert (not d!2399510))

(assert tp_is_empty!55315)

(assert (not d!2399528))

(assert (not b!8060278))

(assert (not b!8060266))

(assert (not b!8060269))

(assert (not b!8060220))

(assert (not b!8060232))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

