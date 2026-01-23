; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!508026 () Bool)

(assert start!508026)

(declare-fun res!2075176 () Bool)

(declare-fun e!3039270 () Bool)

(assert (=> start!508026 (=> (not res!2075176) (not e!3039270))))

(declare-datatypes ((V!17930 0))(
  ( (V!17931 (val!22485 Int)) )
))
(declare-datatypes ((K!17660 0))(
  ( (K!17661 (val!22486 Int)) )
))
(declare-datatypes ((tuple2!59670 0))(
  ( (tuple2!59671 (_1!33138 K!17660) (_2!33138 V!17930)) )
))
(declare-datatypes ((List!55956 0))(
  ( (Nil!55832) (Cons!55832 (h!62280 tuple2!59670) (t!363576 List!55956)) )
))
(declare-datatypes ((tuple2!59672 0))(
  ( (tuple2!59673 (_1!33139 (_ BitVec 64)) (_2!33139 List!55956)) )
))
(declare-datatypes ((List!55957 0))(
  ( (Nil!55833) (Cons!55833 (h!62281 tuple2!59672) (t!363577 List!55957)) )
))
(declare-fun l!10962 () List!55957)

(declare-fun lambda!243168 () Int)

(declare-fun forall!13031 (List!55957 Int) Bool)

(assert (=> start!508026 (= res!2075176 (forall!13031 l!10962 lambda!243168))))

(assert (=> start!508026 e!3039270))

(declare-fun e!3039271 () Bool)

(assert (=> start!508026 e!3039271))

(declare-fun b!4861140 () Bool)

(declare-fun res!2075177 () Bool)

(assert (=> b!4861140 (=> (not res!2075177) (not e!3039270))))

(assert (=> b!4861140 (= res!2075177 (is-Cons!55833 l!10962))))

(declare-fun b!4861141 () Bool)

(declare-fun invariantList!1901 (List!55956) Bool)

(declare-datatypes ((ListMap!7173 0))(
  ( (ListMap!7174 (toList!7928 List!55956)) )
))
(declare-fun addToMapMapFromBucket!1936 (List!55956 ListMap!7173) ListMap!7173)

(declare-fun extractMap!2798 (List!55957) ListMap!7173)

(assert (=> b!4861141 (= e!3039270 (not (invariantList!1901 (toList!7928 (addToMapMapFromBucket!1936 (_2!33139 (h!62281 l!10962)) (extractMap!2798 (t!363577 l!10962)))))))))

(declare-fun b!4861142 () Bool)

(declare-fun tp!1367687 () Bool)

(declare-fun tp!1367686 () Bool)

(assert (=> b!4861142 (= e!3039271 (and tp!1367687 tp!1367686))))

(assert (= (and start!508026 res!2075176) b!4861140))

(assert (= (and b!4861140 res!2075177) b!4861141))

(assert (= (and start!508026 (is-Cons!55833 l!10962)) b!4861142))

(declare-fun m!5858882 () Bool)

(assert (=> start!508026 m!5858882))

(declare-fun m!5858884 () Bool)

(assert (=> b!4861141 m!5858884))

(assert (=> b!4861141 m!5858884))

(declare-fun m!5858886 () Bool)

(assert (=> b!4861141 m!5858886))

(declare-fun m!5858888 () Bool)

(assert (=> b!4861141 m!5858888))

(push 1)

(assert (not b!4861141))

(assert (not start!508026))

(assert (not b!4861142))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1560264 () Bool)

(declare-fun noDuplicatedKeys!506 (List!55956) Bool)

(assert (=> d!1560264 (= (invariantList!1901 (toList!7928 (addToMapMapFromBucket!1936 (_2!33139 (h!62281 l!10962)) (extractMap!2798 (t!363577 l!10962))))) (noDuplicatedKeys!506 (toList!7928 (addToMapMapFromBucket!1936 (_2!33139 (h!62281 l!10962)) (extractMap!2798 (t!363577 l!10962))))))))

(declare-fun bs!1173913 () Bool)

(assert (= bs!1173913 d!1560264))

(declare-fun m!5858898 () Bool)

(assert (=> bs!1173913 m!5858898))

(assert (=> b!4861141 d!1560264))

(declare-fun b!4861169 () Bool)

(assert (=> b!4861169 true))

(declare-fun bs!1173915 () Bool)

(declare-fun b!4861172 () Bool)

(assert (= bs!1173915 (and b!4861172 b!4861169)))

(declare-fun lambda!243201 () Int)

(declare-fun lambda!243200 () Int)

(assert (=> bs!1173915 (= lambda!243201 lambda!243200)))

(assert (=> b!4861172 true))

(declare-fun lambda!243202 () Int)

(declare-fun lt!1992417 () ListMap!7173)

(assert (=> bs!1173915 (= (= lt!1992417 (extractMap!2798 (t!363577 l!10962))) (= lambda!243202 lambda!243200))))

(assert (=> b!4861172 (= (= lt!1992417 (extractMap!2798 (t!363577 l!10962))) (= lambda!243202 lambda!243201))))

(assert (=> b!4861172 true))

(declare-fun bs!1173916 () Bool)

(declare-fun d!1560266 () Bool)

(assert (= bs!1173916 (and d!1560266 b!4861169)))

(declare-fun lt!1992430 () ListMap!7173)

(declare-fun lambda!243203 () Int)

(assert (=> bs!1173916 (= (= lt!1992430 (extractMap!2798 (t!363577 l!10962))) (= lambda!243203 lambda!243200))))

(declare-fun bs!1173917 () Bool)

(assert (= bs!1173917 (and d!1560266 b!4861172)))

(assert (=> bs!1173917 (= (= lt!1992430 (extractMap!2798 (t!363577 l!10962))) (= lambda!243203 lambda!243201))))

(assert (=> bs!1173917 (= (= lt!1992430 lt!1992417) (= lambda!243203 lambda!243202))))

(assert (=> d!1560266 true))

(declare-fun b!4861168 () Bool)

(declare-fun res!2075196 () Bool)

(declare-fun e!3039290 () Bool)

(assert (=> b!4861168 (=> (not res!2075196) (not e!3039290))))

(declare-fun forall!13033 (List!55956 Int) Bool)

(assert (=> b!4861168 (= res!2075196 (forall!13033 (toList!7928 (extractMap!2798 (t!363577 l!10962))) lambda!243203))))

(declare-fun e!3039291 () ListMap!7173)

(assert (=> b!4861169 (= e!3039291 (extractMap!2798 (t!363577 l!10962)))))

(declare-datatypes ((Unit!145877 0))(
  ( (Unit!145878) )
))
(declare-fun lt!1992422 () Unit!145877)

(declare-fun call!337778 () Unit!145877)

(assert (=> b!4861169 (= lt!1992422 call!337778)))

(declare-fun call!337779 () Bool)

(assert (=> b!4861169 call!337779))

(declare-fun lt!1992427 () Unit!145877)

(assert (=> b!4861169 (= lt!1992427 lt!1992422)))

(declare-fun call!337777 () Bool)

(assert (=> b!4861169 call!337777))

(declare-fun lt!1992411 () Unit!145877)

(declare-fun Unit!145879 () Unit!145877)

(assert (=> b!4861169 (= lt!1992411 Unit!145879)))

(declare-fun b!4861170 () Bool)

(declare-fun e!3039292 () Bool)

(assert (=> b!4861170 (= e!3039292 (forall!13033 (toList!7928 (extractMap!2798 (t!363577 l!10962))) lambda!243202))))

(declare-fun c!826841 () Bool)

(declare-fun bm!337772 () Bool)

(assert (=> bm!337772 (= call!337777 (forall!13033 (ite c!826841 (toList!7928 (extractMap!2798 (t!363577 l!10962))) (_2!33139 (h!62281 l!10962))) (ite c!826841 lambda!243200 lambda!243202)))))

(declare-fun b!4861171 () Bool)

(assert (=> b!4861171 (= e!3039290 (invariantList!1901 (toList!7928 lt!1992430)))))

(declare-fun bm!337773 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1064 (ListMap!7173) Unit!145877)

(assert (=> bm!337773 (= call!337778 (lemmaContainsAllItsOwnKeys!1064 (extractMap!2798 (t!363577 l!10962))))))

(assert (=> b!4861172 (= e!3039291 lt!1992417)))

(declare-fun lt!1992418 () ListMap!7173)

(declare-fun +!2625 (ListMap!7173 tuple2!59670) ListMap!7173)

(assert (=> b!4861172 (= lt!1992418 (+!2625 (extractMap!2798 (t!363577 l!10962)) (h!62280 (_2!33139 (h!62281 l!10962)))))))

(assert (=> b!4861172 (= lt!1992417 (addToMapMapFromBucket!1936 (t!363576 (_2!33139 (h!62281 l!10962))) (+!2625 (extractMap!2798 (t!363577 l!10962)) (h!62280 (_2!33139 (h!62281 l!10962))))))))

(declare-fun lt!1992425 () Unit!145877)

(assert (=> b!4861172 (= lt!1992425 call!337778)))

(assert (=> b!4861172 (forall!13033 (toList!7928 (extractMap!2798 (t!363577 l!10962))) lambda!243201)))

(declare-fun lt!1992424 () Unit!145877)

(assert (=> b!4861172 (= lt!1992424 lt!1992425)))

(assert (=> b!4861172 (forall!13033 (toList!7928 lt!1992418) lambda!243202)))

(declare-fun lt!1992429 () Unit!145877)

(declare-fun Unit!145880 () Unit!145877)

(assert (=> b!4861172 (= lt!1992429 Unit!145880)))

(assert (=> b!4861172 (forall!13033 (t!363576 (_2!33139 (h!62281 l!10962))) lambda!243202)))

(declare-fun lt!1992431 () Unit!145877)

(declare-fun Unit!145881 () Unit!145877)

(assert (=> b!4861172 (= lt!1992431 Unit!145881)))

(declare-fun lt!1992426 () Unit!145877)

(declare-fun Unit!145882 () Unit!145877)

(assert (=> b!4861172 (= lt!1992426 Unit!145882)))

(declare-fun lt!1992419 () Unit!145877)

(declare-fun forallContained!4584 (List!55956 Int tuple2!59670) Unit!145877)

(assert (=> b!4861172 (= lt!1992419 (forallContained!4584 (toList!7928 lt!1992418) lambda!243202 (h!62280 (_2!33139 (h!62281 l!10962)))))))

(declare-fun contains!19375 (ListMap!7173 K!17660) Bool)

(assert (=> b!4861172 (contains!19375 lt!1992418 (_1!33138 (h!62280 (_2!33139 (h!62281 l!10962)))))))

(declare-fun lt!1992428 () Unit!145877)

(declare-fun Unit!145883 () Unit!145877)

(assert (=> b!4861172 (= lt!1992428 Unit!145883)))

(assert (=> b!4861172 (contains!19375 lt!1992417 (_1!33138 (h!62280 (_2!33139 (h!62281 l!10962)))))))

(declare-fun lt!1992416 () Unit!145877)

(declare-fun Unit!145884 () Unit!145877)

(assert (=> b!4861172 (= lt!1992416 Unit!145884)))

(assert (=> b!4861172 call!337777))

(declare-fun lt!1992420 () Unit!145877)

(declare-fun Unit!145885 () Unit!145877)

(assert (=> b!4861172 (= lt!1992420 Unit!145885)))

(assert (=> b!4861172 (forall!13033 (toList!7928 lt!1992418) lambda!243202)))

(declare-fun lt!1992415 () Unit!145877)

(declare-fun Unit!145886 () Unit!145877)

(assert (=> b!4861172 (= lt!1992415 Unit!145886)))

(declare-fun lt!1992421 () Unit!145877)

(declare-fun Unit!145887 () Unit!145877)

(assert (=> b!4861172 (= lt!1992421 Unit!145887)))

(declare-fun lt!1992412 () Unit!145877)

(declare-fun addForallContainsKeyThenBeforeAdding!1062 (ListMap!7173 ListMap!7173 K!17660 V!17930) Unit!145877)

(assert (=> b!4861172 (= lt!1992412 (addForallContainsKeyThenBeforeAdding!1062 (extractMap!2798 (t!363577 l!10962)) lt!1992417 (_1!33138 (h!62280 (_2!33139 (h!62281 l!10962)))) (_2!33138 (h!62280 (_2!33139 (h!62281 l!10962))))))))

(assert (=> b!4861172 (forall!13033 (toList!7928 (extractMap!2798 (t!363577 l!10962))) lambda!243202)))

(declare-fun lt!1992414 () Unit!145877)

(assert (=> b!4861172 (= lt!1992414 lt!1992412)))

(assert (=> b!4861172 call!337779))

(declare-fun lt!1992423 () Unit!145877)

(declare-fun Unit!145888 () Unit!145877)

(assert (=> b!4861172 (= lt!1992423 Unit!145888)))

(declare-fun res!2075197 () Bool)

(assert (=> b!4861172 (= res!2075197 (forall!13033 (_2!33139 (h!62281 l!10962)) lambda!243202))))

(assert (=> b!4861172 (=> (not res!2075197) (not e!3039292))))

(assert (=> b!4861172 e!3039292))

(declare-fun lt!1992413 () Unit!145877)

(declare-fun Unit!145889 () Unit!145877)

(assert (=> b!4861172 (= lt!1992413 Unit!145889)))

(declare-fun bm!337774 () Bool)

(assert (=> bm!337774 (= call!337779 (forall!13033 (toList!7928 (extractMap!2798 (t!363577 l!10962))) (ite c!826841 lambda!243200 lambda!243202)))))

(assert (=> d!1560266 e!3039290))

(declare-fun res!2075198 () Bool)

(assert (=> d!1560266 (=> (not res!2075198) (not e!3039290))))

(assert (=> d!1560266 (= res!2075198 (forall!13033 (_2!33139 (h!62281 l!10962)) lambda!243203))))

(assert (=> d!1560266 (= lt!1992430 e!3039291)))

(assert (=> d!1560266 (= c!826841 (is-Nil!55832 (_2!33139 (h!62281 l!10962))))))

(declare-fun noDuplicateKeys!2653 (List!55956) Bool)

(assert (=> d!1560266 (noDuplicateKeys!2653 (_2!33139 (h!62281 l!10962)))))

(assert (=> d!1560266 (= (addToMapMapFromBucket!1936 (_2!33139 (h!62281 l!10962)) (extractMap!2798 (t!363577 l!10962))) lt!1992430)))

(assert (= (and d!1560266 c!826841) b!4861169))

(assert (= (and d!1560266 (not c!826841)) b!4861172))

(assert (= (and b!4861172 res!2075197) b!4861170))

(assert (= (or b!4861169 b!4861172) bm!337773))

(assert (= (or b!4861169 b!4861172) bm!337774))

(assert (= (or b!4861169 b!4861172) bm!337772))

(assert (= (and d!1560266 res!2075198) b!4861168))

(assert (= (and b!4861168 res!2075196) b!4861171))

(declare-fun m!5858906 () Bool)

(assert (=> b!4861170 m!5858906))

(declare-fun m!5858908 () Bool)

(assert (=> bm!337772 m!5858908))

(declare-fun m!5858910 () Bool)

(assert (=> b!4861171 m!5858910))

(declare-fun m!5858912 () Bool)

(assert (=> b!4861168 m!5858912))

(declare-fun m!5858914 () Bool)

(assert (=> b!4861172 m!5858914))

(declare-fun m!5858916 () Bool)

(assert (=> b!4861172 m!5858916))

(declare-fun m!5858918 () Bool)

(assert (=> b!4861172 m!5858918))

(assert (=> b!4861172 m!5858906))

(declare-fun m!5858920 () Bool)

(assert (=> b!4861172 m!5858920))

(assert (=> b!4861172 m!5858884))

(declare-fun m!5858922 () Bool)

(assert (=> b!4861172 m!5858922))

(declare-fun m!5858924 () Bool)

(assert (=> b!4861172 m!5858924))

(assert (=> b!4861172 m!5858920))

(declare-fun m!5858926 () Bool)

(assert (=> b!4861172 m!5858926))

(declare-fun m!5858928 () Bool)

(assert (=> b!4861172 m!5858928))

(declare-fun m!5858930 () Bool)

(assert (=> b!4861172 m!5858930))

(assert (=> b!4861172 m!5858884))

(assert (=> b!4861172 m!5858914))

(declare-fun m!5858932 () Bool)

(assert (=> b!4861172 m!5858932))

(assert (=> bm!337773 m!5858884))

(declare-fun m!5858934 () Bool)

(assert (=> bm!337773 m!5858934))

(declare-fun m!5858936 () Bool)

(assert (=> bm!337774 m!5858936))

(declare-fun m!5858938 () Bool)

(assert (=> d!1560266 m!5858938))

(declare-fun m!5858940 () Bool)

(assert (=> d!1560266 m!5858940))

(assert (=> b!4861141 d!1560266))

(declare-fun bs!1173918 () Bool)

(declare-fun d!1560274 () Bool)

(assert (= bs!1173918 (and d!1560274 start!508026)))

(declare-fun lambda!243206 () Int)

(assert (=> bs!1173918 (= lambda!243206 lambda!243168)))

(declare-fun lt!1992434 () ListMap!7173)

(assert (=> d!1560274 (invariantList!1901 (toList!7928 lt!1992434))))

(declare-fun e!3039295 () ListMap!7173)

(assert (=> d!1560274 (= lt!1992434 e!3039295)))

(declare-fun c!826844 () Bool)

(assert (=> d!1560274 (= c!826844 (is-Cons!55833 (t!363577 l!10962)))))

(assert (=> d!1560274 (forall!13031 (t!363577 l!10962) lambda!243206)))

(assert (=> d!1560274 (= (extractMap!2798 (t!363577 l!10962)) lt!1992434)))

(declare-fun b!4861179 () Bool)

(assert (=> b!4861179 (= e!3039295 (addToMapMapFromBucket!1936 (_2!33139 (h!62281 (t!363577 l!10962))) (extractMap!2798 (t!363577 (t!363577 l!10962)))))))

(declare-fun b!4861180 () Bool)

(assert (=> b!4861180 (= e!3039295 (ListMap!7174 Nil!55832))))

(assert (= (and d!1560274 c!826844) b!4861179))

(assert (= (and d!1560274 (not c!826844)) b!4861180))

(declare-fun m!5858942 () Bool)

(assert (=> d!1560274 m!5858942))

(declare-fun m!5858944 () Bool)

(assert (=> d!1560274 m!5858944))

(declare-fun m!5858946 () Bool)

(assert (=> b!4861179 m!5858946))

(assert (=> b!4861179 m!5858946))

(declare-fun m!5858948 () Bool)

(assert (=> b!4861179 m!5858948))

(assert (=> b!4861141 d!1560274))

(declare-fun d!1560276 () Bool)

(declare-fun res!2075203 () Bool)

(declare-fun e!3039300 () Bool)

(assert (=> d!1560276 (=> res!2075203 e!3039300)))

(assert (=> d!1560276 (= res!2075203 (is-Nil!55833 l!10962))))

(assert (=> d!1560276 (= (forall!13031 l!10962 lambda!243168) e!3039300)))

(declare-fun b!4861187 () Bool)

(declare-fun e!3039301 () Bool)

(assert (=> b!4861187 (= e!3039300 e!3039301)))

(declare-fun res!2075204 () Bool)

(assert (=> b!4861187 (=> (not res!2075204) (not e!3039301))))

(declare-fun dynLambda!22402 (Int tuple2!59672) Bool)

(assert (=> b!4861187 (= res!2075204 (dynLambda!22402 lambda!243168 (h!62281 l!10962)))))

(declare-fun b!4861188 () Bool)

(assert (=> b!4861188 (= e!3039301 (forall!13031 (t!363577 l!10962) lambda!243168))))

(assert (= (and d!1560276 (not res!2075203)) b!4861187))

(assert (= (and b!4861187 res!2075204) b!4861188))

(declare-fun b_lambda!193355 () Bool)

(assert (=> (not b_lambda!193355) (not b!4861187)))

(declare-fun m!5858950 () Bool)

(assert (=> b!4861187 m!5858950))

(declare-fun m!5858952 () Bool)

(assert (=> b!4861188 m!5858952))

(assert (=> start!508026 d!1560276))

(declare-fun b!4861195 () Bool)

(declare-fun tp!1367696 () Bool)

(declare-fun tp_is_empty!35623 () Bool)

(declare-fun e!3039306 () Bool)

(declare-fun tp_is_empty!35621 () Bool)

(assert (=> b!4861195 (= e!3039306 (and tp_is_empty!35621 tp_is_empty!35623 tp!1367696))))

(assert (=> b!4861142 (= tp!1367687 e!3039306)))

(assert (= (and b!4861142 (is-Cons!55832 (_2!33139 (h!62281 l!10962)))) b!4861195))

(declare-fun b!4861200 () Bool)

(declare-fun e!3039309 () Bool)

(declare-fun tp!1367701 () Bool)

(declare-fun tp!1367702 () Bool)

(assert (=> b!4861200 (= e!3039309 (and tp!1367701 tp!1367702))))

(assert (=> b!4861142 (= tp!1367686 e!3039309)))

(assert (= (and b!4861142 (is-Cons!55833 (t!363577 l!10962))) b!4861200))

(declare-fun b_lambda!193357 () Bool)

(assert (= b_lambda!193355 (or start!508026 b_lambda!193357)))

(declare-fun bs!1173919 () Bool)

(declare-fun d!1560278 () Bool)

(assert (= bs!1173919 (and d!1560278 start!508026)))

(assert (=> bs!1173919 (= (dynLambda!22402 lambda!243168 (h!62281 l!10962)) (noDuplicateKeys!2653 (_2!33139 (h!62281 l!10962))))))

(assert (=> bs!1173919 m!5858940))

(assert (=> b!4861187 d!1560278))

(push 1)

(assert (not bm!337774))

(assert (not b!4861170))

(assert (not b!4861168))

(assert (not b!4861200))

(assert tp_is_empty!35623)

(assert (not d!1560266))

(assert (not b_lambda!193357))

(assert (not bm!337773))

(assert (not b!4861188))

(assert (not bm!337772))

(assert (not b!4861179))

(assert (not b!4861172))

(assert (not b!4861171))

(assert (not d!1560264))

(assert (not bs!1173919))

(assert (not d!1560274))

(assert tp_is_empty!35621)

(assert (not b!4861195))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

