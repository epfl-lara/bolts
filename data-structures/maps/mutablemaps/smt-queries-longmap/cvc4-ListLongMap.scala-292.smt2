; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4940 () Bool)

(assert start!4940)

(declare-fun b_free!1343 () Bool)

(declare-fun b_next!1343 () Bool)

(assert (=> start!4940 (= b_free!1343 (not b_next!1343))))

(declare-fun tp!5524 () Bool)

(declare-fun b_and!2259 () Bool)

(assert (=> start!4940 (= tp!5524 b_and!2259)))

(declare-fun b!37356 () Bool)

(declare-fun res!22585 () Bool)

(declare-fun e!23627 () Bool)

(assert (=> b!37356 (=> (not res!22585) (not e!23627))))

(declare-datatypes ((B!750 0))(
  ( (B!751 (val!875 Int)) )
))
(declare-datatypes ((tuple2!1414 0))(
  ( (tuple2!1415 (_1!717 (_ BitVec 64)) (_2!717 B!750)) )
))
(declare-datatypes ((List!995 0))(
  ( (Nil!992) (Cons!991 (h!1559 tuple2!1414) (t!3794 List!995)) )
))
(declare-datatypes ((ListLongMap!995 0))(
  ( (ListLongMap!996 (toList!513 List!995)) )
))
(declare-fun lm!252 () ListLongMap!995)

(declare-fun isEmpty!210 (ListLongMap!995) Bool)

(assert (=> b!37356 (= res!22585 (not (isEmpty!210 lm!252)))))

(declare-fun res!22580 () Bool)

(assert (=> start!4940 (=> (not res!22580) (not e!23627))))

(declare-fun p!304 () Int)

(declare-fun forall!175 (List!995 Int) Bool)

(assert (=> start!4940 (= res!22580 (forall!175 (toList!513 lm!252) p!304))))

(assert (=> start!4940 e!23627))

(declare-fun e!23626 () Bool)

(declare-fun inv!1640 (ListLongMap!995) Bool)

(assert (=> start!4940 (and (inv!1640 lm!252) e!23626)))

(assert (=> start!4940 tp!5524))

(assert (=> start!4940 true))

(declare-fun b!37357 () Bool)

(declare-fun res!22581 () Bool)

(declare-fun e!23628 () Bool)

(assert (=> b!37357 (=> (not res!22581) (not e!23628))))

(declare-fun lt!13773 () ListLongMap!995)

(declare-fun k!388 () (_ BitVec 64))

(declare-fun contains!461 (ListLongMap!995 (_ BitVec 64)) Bool)

(assert (=> b!37357 (= res!22581 (contains!461 lt!13773 k!388))))

(declare-fun b!37358 () Bool)

(declare-fun res!22583 () Bool)

(assert (=> b!37358 (=> (not res!22583) (not e!23627))))

(declare-fun head!847 (List!995) tuple2!1414)

(assert (=> b!37358 (= res!22583 (not (= (_1!717 (head!847 (toList!513 lm!252))) k!388)))))

(declare-fun b!37359 () Bool)

(assert (=> b!37359 (= e!23627 e!23628)))

(declare-fun res!22584 () Bool)

(assert (=> b!37359 (=> (not res!22584) (not e!23628))))

(assert (=> b!37359 (= res!22584 (forall!175 (toList!513 lt!13773) p!304))))

(declare-fun tail!106 (ListLongMap!995) ListLongMap!995)

(assert (=> b!37359 (= lt!13773 (tail!106 lm!252))))

(declare-fun b!37360 () Bool)

(declare-fun tp!5525 () Bool)

(assert (=> b!37360 (= e!23626 tp!5525)))

(declare-fun b!37361 () Bool)

(declare-fun res!22582 () Bool)

(assert (=> b!37361 (=> (not res!22582) (not e!23627))))

(assert (=> b!37361 (= res!22582 (contains!461 lm!252 k!388))))

(declare-fun b!37362 () Bool)

(declare-fun dynLambda!177 (Int tuple2!1414) Bool)

(declare-fun apply!48 (ListLongMap!995 (_ BitVec 64)) B!750)

(assert (=> b!37362 (= e!23628 (not (dynLambda!177 p!304 (tuple2!1415 k!388 (apply!48 lm!252 k!388)))))))

(assert (=> b!37362 (dynLambda!177 p!304 (tuple2!1415 k!388 (apply!48 lt!13773 k!388)))))

(declare-datatypes ((Unit!847 0))(
  ( (Unit!848) )
))
(declare-fun lt!13774 () Unit!847)

(declare-fun applyForall!7 (ListLongMap!995 Int (_ BitVec 64)) Unit!847)

(assert (=> b!37362 (= lt!13774 (applyForall!7 lt!13773 p!304 k!388))))

(assert (= (and start!4940 res!22580) b!37361))

(assert (= (and b!37361 res!22582) b!37356))

(assert (= (and b!37356 res!22585) b!37358))

(assert (= (and b!37358 res!22583) b!37359))

(assert (= (and b!37359 res!22584) b!37357))

(assert (= (and b!37357 res!22581) b!37362))

(assert (= start!4940 b!37360))

(declare-fun b_lambda!1893 () Bool)

(assert (=> (not b_lambda!1893) (not b!37362)))

(declare-fun t!3791 () Bool)

(declare-fun tb!783 () Bool)

(assert (=> (and start!4940 (= p!304 p!304) t!3791) tb!783))

(declare-fun result!1319 () Bool)

(assert (=> tb!783 (= result!1319 true)))

(assert (=> b!37362 t!3791))

(declare-fun b_and!2261 () Bool)

(assert (= b_and!2259 (and (=> t!3791 result!1319) b_and!2261)))

(declare-fun b_lambda!1895 () Bool)

(assert (=> (not b_lambda!1895) (not b!37362)))

(declare-fun t!3793 () Bool)

(declare-fun tb!785 () Bool)

(assert (=> (and start!4940 (= p!304 p!304) t!3793) tb!785))

(declare-fun result!1321 () Bool)

(assert (=> tb!785 (= result!1321 true)))

(assert (=> b!37362 t!3793))

(declare-fun b_and!2263 () Bool)

(assert (= b_and!2261 (and (=> t!3793 result!1321) b_and!2263)))

(declare-fun m!30165 () Bool)

(assert (=> b!37357 m!30165))

(declare-fun m!30167 () Bool)

(assert (=> b!37362 m!30167))

(declare-fun m!30169 () Bool)

(assert (=> b!37362 m!30169))

(declare-fun m!30171 () Bool)

(assert (=> b!37362 m!30171))

(declare-fun m!30173 () Bool)

(assert (=> b!37362 m!30173))

(declare-fun m!30175 () Bool)

(assert (=> b!37362 m!30175))

(declare-fun m!30177 () Bool)

(assert (=> b!37358 m!30177))

(declare-fun m!30179 () Bool)

(assert (=> b!37356 m!30179))

(declare-fun m!30181 () Bool)

(assert (=> b!37361 m!30181))

(declare-fun m!30183 () Bool)

(assert (=> b!37359 m!30183))

(declare-fun m!30185 () Bool)

(assert (=> b!37359 m!30185))

(declare-fun m!30187 () Bool)

(assert (=> start!4940 m!30187))

(declare-fun m!30189 () Bool)

(assert (=> start!4940 m!30189))

(push 1)

(assert (not b!37359))

(assert (not b!37356))

(assert (not b_lambda!1893))

(assert (not b!37360))

(assert (not b!37362))

(assert b_and!2263)

(assert (not b_next!1343))

(assert (not b_lambda!1895))

(assert (not start!4940))

(assert (not b!37357))

(assert (not b!37361))

(assert (not b!37358))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2263)

(assert (not b_next!1343))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!1905 () Bool)

(assert (= b_lambda!1893 (or (and start!4940 b_free!1343) b_lambda!1905)))

(declare-fun b_lambda!1907 () Bool)

(assert (= b_lambda!1895 (or (and start!4940 b_free!1343) b_lambda!1907)))

(push 1)

(assert (not b!37359))

(assert (not b!37356))

(assert (not b!37360))

(assert (not b!37362))

(assert b_and!2263)

(assert (not b_next!1343))

(assert (not b_lambda!1905))

(assert (not start!4940))

(assert (not b_lambda!1907))

(assert (not b!37357))

(assert (not b!37361))

(assert (not b!37358))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2263)

(assert (not b_next!1343))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5845 () Bool)

(declare-fun res!22596 () Bool)

(declare-fun e!23639 () Bool)

(assert (=> d!5845 (=> res!22596 e!23639)))

(assert (=> d!5845 (= res!22596 (is-Nil!992 (toList!513 lt!13773)))))

(assert (=> d!5845 (= (forall!175 (toList!513 lt!13773) p!304) e!23639)))

(declare-fun b!37373 () Bool)

(declare-fun e!23640 () Bool)

(assert (=> b!37373 (= e!23639 e!23640)))

(declare-fun res!22597 () Bool)

(assert (=> b!37373 (=> (not res!22597) (not e!23640))))

(assert (=> b!37373 (= res!22597 (dynLambda!177 p!304 (h!1559 (toList!513 lt!13773))))))

(declare-fun b!37374 () Bool)

(assert (=> b!37374 (= e!23640 (forall!175 (t!3794 (toList!513 lt!13773)) p!304))))

(assert (= (and d!5845 (not res!22596)) b!37373))

(assert (= (and b!37373 res!22597) b!37374))

(declare-fun b_lambda!1911 () Bool)

(assert (=> (not b_lambda!1911) (not b!37373)))

(declare-fun t!3798 () Bool)

(declare-fun tb!789 () Bool)

(assert (=> (and start!4940 (= p!304 p!304) t!3798) tb!789))

(declare-fun result!1325 () Bool)

(assert (=> tb!789 (= result!1325 true)))

(assert (=> b!37373 t!3798))

(declare-fun b_and!2267 () Bool)

(assert (= b_and!2263 (and (=> t!3798 result!1325) b_and!2267)))

(declare-fun m!30203 () Bool)

(assert (=> b!37373 m!30203))

(declare-fun m!30205 () Bool)

(assert (=> b!37374 m!30205))

(assert (=> b!37359 d!5845))

(declare-fun d!5855 () Bool)

(declare-fun tail!107 (List!995) List!995)

(assert (=> d!5855 (= (tail!106 lm!252) (ListLongMap!996 (tail!107 (toList!513 lm!252))))))

(declare-fun bs!1447 () Bool)

(assert (= bs!1447 d!5855))

(declare-fun m!30209 () Bool)

(assert (=> bs!1447 m!30209))

(assert (=> b!37359 d!5855))

(declare-fun d!5859 () Bool)

(assert (=> d!5859 (= (head!847 (toList!513 lm!252)) (h!1559 (toList!513 lm!252)))))

(assert (=> b!37358 d!5859))

(declare-fun d!5861 () Bool)

(declare-datatypes ((Option!94 0))(
  ( (Some!93 (v!1962 B!750)) (None!92) )
))
(declare-fun get!637 (Option!94) B!750)

(declare-fun getValueByKey!88 (List!995 (_ BitVec 64)) Option!94)

(assert (=> d!5861 (= (apply!48 lm!252 k!388) (get!637 (getValueByKey!88 (toList!513 lm!252) k!388)))))

(declare-fun bs!1448 () Bool)

(assert (= bs!1448 d!5861))

(declare-fun m!30211 () Bool)

(assert (=> bs!1448 m!30211))

(assert (=> bs!1448 m!30211))

(declare-fun m!30213 () Bool)

(assert (=> bs!1448 m!30213))

(assert (=> b!37362 d!5861))

(declare-fun d!5863 () Bool)

(assert (=> d!5863 (= (apply!48 lt!13773 k!388) (get!637 (getValueByKey!88 (toList!513 lt!13773) k!388)))))

(declare-fun bs!1449 () Bool)

(assert (= bs!1449 d!5863))

(declare-fun m!30217 () Bool)

(assert (=> bs!1449 m!30217))

(assert (=> bs!1449 m!30217))

(declare-fun m!30219 () Bool)

(assert (=> bs!1449 m!30219))

(assert (=> b!37362 d!5863))

(declare-fun d!5867 () Bool)

(assert (=> d!5867 (dynLambda!177 p!304 (tuple2!1415 k!388 (apply!48 lt!13773 k!388)))))

(declare-fun lt!13800 () Unit!847)

(declare-fun choose!236 (ListLongMap!995 Int (_ BitVec 64)) Unit!847)

(assert (=> d!5867 (= lt!13800 (choose!236 lt!13773 p!304 k!388))))

(declare-fun e!23656 () Bool)

(assert (=> d!5867 e!23656))

(declare-fun res!22608 () Bool)

(assert (=> d!5867 (=> (not res!22608) (not e!23656))))

(assert (=> d!5867 (= res!22608 (forall!175 (toList!513 lt!13773) p!304))))

(assert (=> d!5867 (= (applyForall!7 lt!13773 p!304 k!388) lt!13800)))

(declare-fun b!37395 () Bool)

(assert (=> b!37395 (= e!23656 (contains!461 lt!13773 k!388))))

(assert (= (and d!5867 res!22608) b!37395))

(declare-fun b_lambda!1915 () Bool)

(assert (=> (not b_lambda!1915) (not d!5867)))

(assert (=> d!5867 t!3793))

(declare-fun b_and!2271 () Bool)

(assert (= b_and!2267 (and (=> t!3793 result!1321) b_and!2271)))

(assert (=> d!5867 m!30171))

(assert (=> d!5867 m!30173))

(declare-fun m!30235 () Bool)

(assert (=> d!5867 m!30235))

(assert (=> d!5867 m!30183))

(assert (=> b!37395 m!30165))

(assert (=> b!37362 d!5867))

(declare-fun d!5875 () Bool)

(declare-fun e!23683 () Bool)

(assert (=> d!5875 e!23683))

(declare-fun res!22627 () Bool)

(assert (=> d!5875 (=> res!22627 e!23683)))

(declare-fun lt!13827 () Bool)

(assert (=> d!5875 (= res!22627 (not lt!13827))))

(declare-fun lt!13824 () Bool)

(assert (=> d!5875 (= lt!13827 lt!13824)))

(declare-fun lt!13826 () Unit!847)

(declare-fun e!23684 () Unit!847)

(assert (=> d!5875 (= lt!13826 e!23684)))

(declare-fun c!4317 () Bool)

(assert (=> d!5875 (= c!4317 lt!13824)))

(declare-fun containsKey!52 (List!995 (_ BitVec 64)) Bool)

(assert (=> d!5875 (= lt!13824 (containsKey!52 (toList!513 lt!13773) k!388))))

(assert (=> d!5875 (= (contains!461 lt!13773 k!388) lt!13827)))

(declare-fun b!37429 () Bool)

(declare-fun lt!13825 () Unit!847)

(assert (=> b!37429 (= e!23684 lt!13825)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!49 (List!995 (_ BitVec 64)) Unit!847)

(assert (=> b!37429 (= lt!13825 (lemmaContainsKeyImpliesGetValueByKeyDefined!49 (toList!513 lt!13773) k!388))))

(declare-fun isDefined!50 (Option!94) Bool)

(assert (=> b!37429 (isDefined!50 (getValueByKey!88 (toList!513 lt!13773) k!388))))

(declare-fun b!37430 () Bool)

(declare-fun Unit!853 () Unit!847)

(assert (=> b!37430 (= e!23684 Unit!853)))

(declare-fun b!37431 () Bool)

(assert (=> b!37431 (= e!23683 (isDefined!50 (getValueByKey!88 (toList!513 lt!13773) k!388)))))

(assert (= (and d!5875 c!4317) b!37429))

(assert (= (and d!5875 (not c!4317)) b!37430))

(assert (= (and d!5875 (not res!22627)) b!37431))

(declare-fun m!30279 () Bool)

(assert (=> d!5875 m!30279))

(declare-fun m!30281 () Bool)

(assert (=> b!37429 m!30281))

(assert (=> b!37429 m!30217))

(assert (=> b!37429 m!30217))

(declare-fun m!30283 () Bool)

(assert (=> b!37429 m!30283))

(assert (=> b!37431 m!30217))

(assert (=> b!37431 m!30217))

(assert (=> b!37431 m!30283))

(assert (=> b!37357 d!5875))

(declare-fun d!5899 () Bool)

(declare-fun isEmpty!212 (List!995) Bool)

(assert (=> d!5899 (= (isEmpty!210 lm!252) (isEmpty!212 (toList!513 lm!252)))))

(declare-fun bs!1457 () Bool)

(assert (= bs!1457 d!5899))

(declare-fun m!30285 () Bool)

(assert (=> bs!1457 m!30285))

(assert (=> b!37356 d!5899))

(declare-fun d!5901 () Bool)

(declare-fun res!22628 () Bool)

(declare-fun e!23688 () Bool)

(assert (=> d!5901 (=> res!22628 e!23688)))

(assert (=> d!5901 (= res!22628 (is-Nil!992 (toList!513 lm!252)))))

(assert (=> d!5901 (= (forall!175 (toList!513 lm!252) p!304) e!23688)))

(declare-fun b!37437 () Bool)

(declare-fun e!23689 () Bool)

(assert (=> b!37437 (= e!23688 e!23689)))

(declare-fun res!22629 () Bool)

(assert (=> b!37437 (=> (not res!22629) (not e!23689))))

(assert (=> b!37437 (= res!22629 (dynLambda!177 p!304 (h!1559 (toList!513 lm!252))))))

(declare-fun b!37438 () Bool)

(assert (=> b!37438 (= e!23689 (forall!175 (t!3794 (toList!513 lm!252)) p!304))))

(assert (= (and d!5901 (not res!22628)) b!37437))

(assert (= (and b!37437 res!22629) b!37438))

(declare-fun b_lambda!1937 () Bool)

(assert (=> (not b_lambda!1937) (not b!37437)))

(declare-fun t!3806 () Bool)

(declare-fun tb!797 () Bool)

(assert (=> (and start!4940 (= p!304 p!304) t!3806) tb!797))

(declare-fun result!1337 () Bool)

(assert (=> tb!797 (= result!1337 true)))

(assert (=> b!37437 t!3806))

(declare-fun b_and!2281 () Bool)

(assert (= b_and!2271 (and (=> t!3806 result!1337) b_and!2281)))

(declare-fun m!30287 () Bool)

(assert (=> b!37437 m!30287))

(declare-fun m!30289 () Bool)

(assert (=> b!37438 m!30289))

(assert (=> start!4940 d!5901))

(declare-fun d!5903 () Bool)

(declare-fun isStrictlySorted!183 (List!995) Bool)

(assert (=> d!5903 (= (inv!1640 lm!252) (isStrictlySorted!183 (toList!513 lm!252)))))

(declare-fun bs!1458 () Bool)

(assert (= bs!1458 d!5903))

(declare-fun m!30291 () Bool)

(assert (=> bs!1458 m!30291))

(assert (=> start!4940 d!5903))

(declare-fun d!5905 () Bool)

(declare-fun e!23690 () Bool)

(assert (=> d!5905 e!23690))

(declare-fun res!22630 () Bool)

(assert (=> d!5905 (=> res!22630 e!23690)))

(declare-fun lt!13831 () Bool)

(assert (=> d!5905 (= res!22630 (not lt!13831))))

(declare-fun lt!13828 () Bool)

(assert (=> d!5905 (= lt!13831 lt!13828)))

(declare-fun lt!13830 () Unit!847)

(declare-fun e!23691 () Unit!847)

(assert (=> d!5905 (= lt!13830 e!23691)))

(declare-fun c!4318 () Bool)

(assert (=> d!5905 (= c!4318 lt!13828)))

(assert (=> d!5905 (= lt!13828 (containsKey!52 (toList!513 lm!252) k!388))))

(assert (=> d!5905 (= (contains!461 lm!252 k!388) lt!13831)))

(declare-fun b!37439 () Bool)

(declare-fun lt!13829 () Unit!847)

(assert (=> b!37439 (= e!23691 lt!13829)))

(assert (=> b!37439 (= lt!13829 (lemmaContainsKeyImpliesGetValueByKeyDefined!49 (toList!513 lm!252) k!388))))

(assert (=> b!37439 (isDefined!50 (getValueByKey!88 (toList!513 lm!252) k!388))))

(declare-fun b!37440 () Bool)

(declare-fun Unit!854 () Unit!847)

(assert (=> b!37440 (= e!23691 Unit!854)))

(declare-fun b!37441 () Bool)

(assert (=> b!37441 (= e!23690 (isDefined!50 (getValueByKey!88 (toList!513 lm!252) k!388)))))

(assert (= (and d!5905 c!4318) b!37439))

(assert (= (and d!5905 (not c!4318)) b!37440))

(assert (= (and d!5905 (not res!22630)) b!37441))

(declare-fun m!30293 () Bool)

(assert (=> d!5905 m!30293))

(declare-fun m!30295 () Bool)

(assert (=> b!37439 m!30295))

(assert (=> b!37439 m!30211))

(assert (=> b!37439 m!30211))

(declare-fun m!30297 () Bool)

(assert (=> b!37439 m!30297))

(assert (=> b!37441 m!30211))

(assert (=> b!37441 m!30211))

(assert (=> b!37441 m!30297))

(assert (=> b!37361 d!5905))

(declare-fun b!37446 () Bool)

(declare-fun e!23694 () Bool)

(declare-fun tp_is_empty!1673 () Bool)

(declare-fun tp!5534 () Bool)

(assert (=> b!37446 (= e!23694 (and tp_is_empty!1673 tp!5534))))

(assert (=> b!37360 (= tp!5525 e!23694)))

(assert (= (and b!37360 (is-Cons!991 (toList!513 lm!252))) b!37446))

(declare-fun b_lambda!1939 () Bool)

(assert (= b_lambda!1915 (or (and start!4940 b_free!1343) b_lambda!1939)))

(declare-fun b_lambda!1941 () Bool)

(assert (= b_lambda!1937 (or (and start!4940 b_free!1343) b_lambda!1941)))

(declare-fun b_lambda!1943 () Bool)

(assert (= b_lambda!1911 (or (and start!4940 b_free!1343) b_lambda!1943)))

(push 1)

(assert (not d!5905))

(assert (not d!5863))

(assert (not b_lambda!1943))

(assert (not b!37429))

(assert (not b_lambda!1907))

(assert (not d!5867))

(assert (not d!5875))

(assert (not b!37374))

(assert (not b!37439))

(assert (not b!37446))

(assert (not b!37438))

(assert (not d!5899))

(assert (not b_lambda!1939))

(assert (not d!5903))

(assert (not b!37395))

(assert tp_is_empty!1673)

(assert b_and!2281)

(assert (not d!5855))

(assert (not b_lambda!1941))

(assert (not b!37431))

(assert (not d!5861))

(assert (not b_next!1343))

(assert (not b!37441))

(assert (not b_lambda!1905))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2281)

(assert (not b_next!1343))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5945 () Bool)

(declare-fun res!22659 () Bool)

(declare-fun e!23736 () Bool)

(assert (=> d!5945 (=> res!22659 e!23736)))

(assert (=> d!5945 (= res!22659 (is-Nil!992 (t!3794 (toList!513 lt!13773))))))

(assert (=> d!5945 (= (forall!175 (t!3794 (toList!513 lt!13773)) p!304) e!23736)))

(declare-fun b!37500 () Bool)

(declare-fun e!23737 () Bool)

(assert (=> b!37500 (= e!23736 e!23737)))

(declare-fun res!22660 () Bool)

(assert (=> b!37500 (=> (not res!22660) (not e!23737))))

(assert (=> b!37500 (= res!22660 (dynLambda!177 p!304 (h!1559 (t!3794 (toList!513 lt!13773)))))))

(declare-fun b!37501 () Bool)

(assert (=> b!37501 (= e!23737 (forall!175 (t!3794 (t!3794 (toList!513 lt!13773))) p!304))))

(assert (= (and d!5945 (not res!22659)) b!37500))

(assert (= (and b!37500 res!22660) b!37501))

(declare-fun b_lambda!1957 () Bool)

(assert (=> (not b_lambda!1957) (not b!37500)))

(declare-fun t!3812 () Bool)

(declare-fun tb!803 () Bool)

(assert (=> (and start!4940 (= p!304 p!304) t!3812) tb!803))

(declare-fun result!1345 () Bool)

(assert (=> tb!803 (= result!1345 true)))

(assert (=> b!37500 t!3812))

(declare-fun b_and!2289 () Bool)

(assert (= b_and!2281 (and (=> t!3812 result!1345) b_and!2289)))

(declare-fun m!30331 () Bool)

(assert (=> b!37500 m!30331))

(declare-fun m!30333 () Bool)

(assert (=> b!37501 m!30333))

(assert (=> b!37374 d!5945))

(declare-fun d!5947 () Bool)

(declare-fun res!22669 () Bool)

(declare-fun e!23748 () Bool)

(assert (=> d!5947 (=> res!22669 e!23748)))

(assert (=> d!5947 (= res!22669 (or (is-Nil!992 (toList!513 lm!252)) (is-Nil!992 (t!3794 (toList!513 lm!252)))))))

(assert (=> d!5947 (= (isStrictlySorted!183 (toList!513 lm!252)) e!23748)))

(declare-fun b!37514 () Bool)

(declare-fun e!23749 () Bool)

(assert (=> b!37514 (= e!23748 e!23749)))

(declare-fun res!22670 () Bool)

(assert (=> b!37514 (=> (not res!22670) (not e!23749))))

(assert (=> b!37514 (= res!22670 (bvslt (_1!717 (h!1559 (toList!513 lm!252))) (_1!717 (h!1559 (t!3794 (toList!513 lm!252))))))))

(declare-fun b!37515 () Bool)

(assert (=> b!37515 (= e!23749 (isStrictlySorted!183 (t!3794 (toList!513 lm!252))))))

(assert (= (and d!5947 (not res!22669)) b!37514))

(assert (= (and b!37514 res!22670) b!37515))

(declare-fun m!30343 () Bool)

(assert (=> b!37515 m!30343))

(assert (=> d!5903 d!5947))

(declare-fun d!5957 () Bool)

(assert (=> d!5957 (= (isEmpty!212 (toList!513 lm!252)) (is-Nil!992 (toList!513 lm!252)))))

(assert (=> d!5899 d!5957))

(declare-fun d!5961 () Bool)

(declare-fun res!22677 () Bool)

(declare-fun e!23758 () Bool)

(assert (=> d!5961 (=> res!22677 e!23758)))

(assert (=> d!5961 (= res!22677 (and (is-Cons!991 (toList!513 lt!13773)) (= (_1!717 (h!1559 (toList!513 lt!13773))) k!388)))))

(assert (=> d!5961 (= (containsKey!52 (toList!513 lt!13773) k!388) e!23758)))

(declare-fun b!37526 () Bool)

(declare-fun e!23759 () Bool)

(assert (=> b!37526 (= e!23758 e!23759)))

(declare-fun res!22678 () Bool)

(assert (=> b!37526 (=> (not res!22678) (not e!23759))))

(assert (=> b!37526 (= res!22678 (and (or (not (is-Cons!991 (toList!513 lt!13773))) (bvsle (_1!717 (h!1559 (toList!513 lt!13773))) k!388)) (is-Cons!991 (toList!513 lt!13773)) (bvslt (_1!717 (h!1559 (toList!513 lt!13773))) k!388)))))

(declare-fun b!37527 () Bool)

(assert (=> b!37527 (= e!23759 (containsKey!52 (t!3794 (toList!513 lt!13773)) k!388))))

(assert (= (and d!5961 (not res!22677)) b!37526))

(assert (= (and b!37526 res!22678) b!37527))

(declare-fun m!30351 () Bool)

(assert (=> b!37527 m!30351))

(assert (=> d!5875 d!5961))

(declare-fun d!5967 () Bool)

(declare-fun res!22679 () Bool)

(declare-fun e!23760 () Bool)

(assert (=> d!5967 (=> res!22679 e!23760)))

(assert (=> d!5967 (= res!22679 (and (is-Cons!991 (toList!513 lm!252)) (= (_1!717 (h!1559 (toList!513 lm!252))) k!388)))))

(assert (=> d!5967 (= (containsKey!52 (toList!513 lm!252) k!388) e!23760)))

(declare-fun b!37528 () Bool)

(declare-fun e!23761 () Bool)

(assert (=> b!37528 (= e!23760 e!23761)))

(declare-fun res!22680 () Bool)

(assert (=> b!37528 (=> (not res!22680) (not e!23761))))

(assert (=> b!37528 (= res!22680 (and (or (not (is-Cons!991 (toList!513 lm!252))) (bvsle (_1!717 (h!1559 (toList!513 lm!252))) k!388)) (is-Cons!991 (toList!513 lm!252)) (bvslt (_1!717 (h!1559 (toList!513 lm!252))) k!388)))))

(declare-fun b!37529 () Bool)

(assert (=> b!37529 (= e!23761 (containsKey!52 (t!3794 (toList!513 lm!252)) k!388))))

(assert (= (and d!5967 (not res!22679)) b!37528))

(assert (= (and b!37528 res!22680) b!37529))

(declare-fun m!30353 () Bool)

(assert (=> b!37529 m!30353))

(assert (=> d!5905 d!5967))

(declare-fun d!5971 () Bool)

(declare-fun isEmpty!216 (Option!94) Bool)

(assert (=> d!5971 (= (isDefined!50 (getValueByKey!88 (toList!513 lt!13773) k!388)) (not (isEmpty!216 (getValueByKey!88 (toList!513 lt!13773) k!388))))))

(declare-fun bs!1462 () Bool)

(assert (= bs!1462 d!5971))

(assert (=> bs!1462 m!30217))

(declare-fun m!30355 () Bool)

(assert (=> bs!1462 m!30355))

(assert (=> b!37431 d!5971))

(declare-fun b!37543 () Bool)

