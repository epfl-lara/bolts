; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4644 () Bool)

(assert start!4644)

(declare-fun b_free!1293 () Bool)

(declare-fun b_next!1293 () Bool)

(assert (=> start!4644 (= b_free!1293 (not b_next!1293))))

(declare-fun tp!5330 () Bool)

(declare-fun b_and!2129 () Bool)

(assert (=> start!4644 (= tp!5330 b_and!2129)))

(declare-fun b!36339 () Bool)

(declare-fun res!21979 () Bool)

(declare-fun e!22943 () Bool)

(assert (=> b!36339 (=> (not res!21979) (not e!22943))))

(declare-datatypes ((B!700 0))(
  ( (B!701 (val!850 Int)) )
))
(declare-datatypes ((tuple2!1364 0))(
  ( (tuple2!1365 (_1!692 (_ BitVec 64)) (_2!692 B!700)) )
))
(declare-datatypes ((List!970 0))(
  ( (Nil!967) (Cons!966 (h!1534 tuple2!1364) (t!3685 List!970)) )
))
(declare-datatypes ((ListLongMap!945 0))(
  ( (ListLongMap!946 (toList!488 List!970)) )
))
(declare-fun lm!252 () ListLongMap!945)

(declare-fun k0!388 () (_ BitVec 64))

(declare-fun contains!436 (ListLongMap!945 (_ BitVec 64)) Bool)

(assert (=> b!36339 (= res!21979 (contains!436 lm!252 k0!388))))

(declare-fun b!36341 () Bool)

(assert (=> b!36341 (= e!22943 (= (toList!488 lm!252) Nil!967))))

(declare-fun b!36342 () Bool)

(declare-fun e!22944 () Bool)

(declare-fun tp!5329 () Bool)

(assert (=> b!36342 (= e!22944 tp!5329)))

(declare-fun b!36340 () Bool)

(declare-fun res!21977 () Bool)

(assert (=> b!36340 (=> (not res!21977) (not e!22943))))

(declare-fun isEmpty!178 (ListLongMap!945) Bool)

(assert (=> b!36340 (= res!21977 (not (isEmpty!178 lm!252)))))

(declare-fun res!21978 () Bool)

(assert (=> start!4644 (=> (not res!21978) (not e!22943))))

(declare-fun p!304 () Int)

(declare-fun forall!150 (List!970 Int) Bool)

(assert (=> start!4644 (= res!21978 (forall!150 (toList!488 lm!252) p!304))))

(assert (=> start!4644 e!22943))

(declare-fun inv!1575 (ListLongMap!945) Bool)

(assert (=> start!4644 (and (inv!1575 lm!252) e!22944)))

(assert (=> start!4644 tp!5330))

(assert (=> start!4644 true))

(assert (= (and start!4644 res!21978) b!36339))

(assert (= (and b!36339 res!21979) b!36340))

(assert (= (and b!36340 res!21977) b!36341))

(assert (= start!4644 b!36342))

(declare-fun m!29305 () Bool)

(assert (=> b!36339 m!29305))

(declare-fun m!29307 () Bool)

(assert (=> b!36340 m!29307))

(declare-fun m!29309 () Bool)

(assert (=> start!4644 m!29309))

(declare-fun m!29311 () Bool)

(assert (=> start!4644 m!29311))

(check-sat (not b!36342) b_and!2129 (not start!4644) (not b!36340) (not b!36339) (not b_next!1293))
(check-sat b_and!2129 (not b_next!1293))
(get-model)

(declare-fun d!5460 () Bool)

(declare-fun res!21998 () Bool)

(declare-fun e!22960 () Bool)

(assert (=> d!5460 (=> res!21998 e!22960)))

(get-info :version)

(assert (=> d!5460 (= res!21998 ((_ is Nil!967) (toList!488 lm!252)))))

(assert (=> d!5460 (= (forall!150 (toList!488 lm!252) p!304) e!22960)))

(declare-fun b!36363 () Bool)

(declare-fun e!22962 () Bool)

(assert (=> b!36363 (= e!22960 e!22962)))

(declare-fun res!22000 () Bool)

(assert (=> b!36363 (=> (not res!22000) (not e!22962))))

(declare-fun dynLambda!160 (Int tuple2!1364) Bool)

(assert (=> b!36363 (= res!22000 (dynLambda!160 p!304 (h!1534 (toList!488 lm!252))))))

(declare-fun b!36365 () Bool)

(assert (=> b!36365 (= e!22962 (forall!150 (t!3685 (toList!488 lm!252)) p!304))))

(assert (= (and d!5460 (not res!21998)) b!36363))

(assert (= (and b!36363 res!22000) b!36365))

(declare-fun b_lambda!1749 () Bool)

(assert (=> (not b_lambda!1749) (not b!36363)))

(declare-fun t!3689 () Bool)

(declare-fun tb!704 () Bool)

(assert (=> (and start!4644 (= p!304 p!304) t!3689) tb!704))

(declare-fun result!1217 () Bool)

(assert (=> tb!704 (= result!1217 true)))

(assert (=> b!36363 t!3689))

(declare-fun b_and!2135 () Bool)

(assert (= b_and!2129 (and (=> t!3689 result!1217) b_and!2135)))

(declare-fun m!29323 () Bool)

(assert (=> b!36363 m!29323))

(declare-fun m!29329 () Bool)

(assert (=> b!36365 m!29329))

(assert (=> start!4644 d!5460))

(declare-fun d!5468 () Bool)

(declare-fun isStrictlySorted!170 (List!970) Bool)

(assert (=> d!5468 (= (inv!1575 lm!252) (isStrictlySorted!170 (toList!488 lm!252)))))

(declare-fun bs!1380 () Bool)

(assert (= bs!1380 d!5468))

(declare-fun m!29333 () Bool)

(assert (=> bs!1380 m!29333))

(assert (=> start!4644 d!5468))

(declare-fun d!5472 () Bool)

(declare-fun isEmpty!181 (List!970) Bool)

(assert (=> d!5472 (= (isEmpty!178 lm!252) (isEmpty!181 (toList!488 lm!252)))))

(declare-fun bs!1382 () Bool)

(assert (= bs!1382 d!5472))

(declare-fun m!29337 () Bool)

(assert (=> bs!1382 m!29337))

(assert (=> b!36340 d!5472))

(declare-fun d!5477 () Bool)

(declare-fun e!22986 () Bool)

(assert (=> d!5477 e!22986))

(declare-fun res!22014 () Bool)

(assert (=> d!5477 (=> res!22014 e!22986)))

(declare-fun lt!13492 () Bool)

(assert (=> d!5477 (= res!22014 (not lt!13492))))

(declare-fun lt!13491 () Bool)

(assert (=> d!5477 (= lt!13492 lt!13491)))

(declare-datatypes ((Unit!801 0))(
  ( (Unit!802) )
))
(declare-fun lt!13486 () Unit!801)

(declare-fun e!22988 () Unit!801)

(assert (=> d!5477 (= lt!13486 e!22988)))

(declare-fun c!4179 () Bool)

(assert (=> d!5477 (= c!4179 lt!13491)))

(declare-fun containsKey!40 (List!970 (_ BitVec 64)) Bool)

(assert (=> d!5477 (= lt!13491 (containsKey!40 (toList!488 lm!252) k0!388))))

(assert (=> d!5477 (= (contains!436 lm!252 k0!388) lt!13492)))

(declare-fun b!36399 () Bool)

(declare-fun lt!13489 () Unit!801)

(assert (=> b!36399 (= e!22988 lt!13489)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!37 (List!970 (_ BitVec 64)) Unit!801)

(assert (=> b!36399 (= lt!13489 (lemmaContainsKeyImpliesGetValueByKeyDefined!37 (toList!488 lm!252) k0!388))))

(declare-datatypes ((Option!82 0))(
  ( (Some!81 (v!1950 B!700)) (None!80) )
))
(declare-fun isDefined!38 (Option!82) Bool)

(declare-fun getValueByKey!76 (List!970 (_ BitVec 64)) Option!82)

(assert (=> b!36399 (isDefined!38 (getValueByKey!76 (toList!488 lm!252) k0!388))))

(declare-fun b!36401 () Bool)

(declare-fun Unit!805 () Unit!801)

(assert (=> b!36401 (= e!22988 Unit!805)))

(declare-fun b!36403 () Bool)

(assert (=> b!36403 (= e!22986 (isDefined!38 (getValueByKey!76 (toList!488 lm!252) k0!388)))))

(assert (= (and d!5477 c!4179) b!36399))

(assert (= (and d!5477 (not c!4179)) b!36401))

(assert (= (and d!5477 (not res!22014)) b!36403))

(declare-fun m!29354 () Bool)

(assert (=> d!5477 m!29354))

(declare-fun m!29357 () Bool)

(assert (=> b!36399 m!29357))

(declare-fun m!29361 () Bool)

(assert (=> b!36399 m!29361))

(assert (=> b!36399 m!29361))

(declare-fun m!29365 () Bool)

(assert (=> b!36399 m!29365))

(assert (=> b!36403 m!29361))

(assert (=> b!36403 m!29361))

(assert (=> b!36403 m!29365))

(assert (=> b!36339 d!5477))

(declare-fun b!36413 () Bool)

(declare-fun e!22994 () Bool)

(declare-fun tp_is_empty!1649 () Bool)

(declare-fun tp!5344 () Bool)

(assert (=> b!36413 (= e!22994 (and tp_is_empty!1649 tp!5344))))

(assert (=> b!36342 (= tp!5329 e!22994)))

(assert (= (and b!36342 ((_ is Cons!966) (toList!488 lm!252))) b!36413))

(declare-fun b_lambda!1757 () Bool)

(assert (= b_lambda!1749 (or (and start!4644 b_free!1293) b_lambda!1757)))

(check-sat (not d!5468) tp_is_empty!1649 b_and!2135 (not b!36403) (not b_lambda!1757) (not b_next!1293) (not b!36399) (not d!5472) (not b!36365) (not d!5477) (not b!36413))
(check-sat b_and!2135 (not b_next!1293))
(get-model)

(declare-fun d!5483 () Bool)

(assert (=> d!5483 (= (isEmpty!181 (toList!488 lm!252)) ((_ is Nil!967) (toList!488 lm!252)))))

(assert (=> d!5472 d!5483))

(declare-fun d!5487 () Bool)

(declare-fun res!22022 () Bool)

(declare-fun e!23004 () Bool)

(assert (=> d!5487 (=> res!22022 e!23004)))

(assert (=> d!5487 (= res!22022 (or ((_ is Nil!967) (toList!488 lm!252)) ((_ is Nil!967) (t!3685 (toList!488 lm!252)))))))

(assert (=> d!5487 (= (isStrictlySorted!170 (toList!488 lm!252)) e!23004)))

(declare-fun b!36425 () Bool)

(declare-fun e!23005 () Bool)

(assert (=> b!36425 (= e!23004 e!23005)))

(declare-fun res!22023 () Bool)

(assert (=> b!36425 (=> (not res!22023) (not e!23005))))

(assert (=> b!36425 (= res!22023 (bvslt (_1!692 (h!1534 (toList!488 lm!252))) (_1!692 (h!1534 (t!3685 (toList!488 lm!252))))))))

(declare-fun b!36426 () Bool)

(assert (=> b!36426 (= e!23005 (isStrictlySorted!170 (t!3685 (toList!488 lm!252))))))

(assert (= (and d!5487 (not res!22022)) b!36425))

(assert (= (and b!36425 res!22023) b!36426))

(declare-fun m!29375 () Bool)

(assert (=> b!36426 m!29375))

(assert (=> d!5468 d!5487))

(declare-fun d!5493 () Bool)

(declare-fun res!22024 () Bool)

(declare-fun e!23008 () Bool)

(assert (=> d!5493 (=> res!22024 e!23008)))

(assert (=> d!5493 (= res!22024 ((_ is Nil!967) (t!3685 (toList!488 lm!252))))))

(assert (=> d!5493 (= (forall!150 (t!3685 (toList!488 lm!252)) p!304) e!23008)))

(declare-fun b!36431 () Bool)

(declare-fun e!23009 () Bool)

(assert (=> b!36431 (= e!23008 e!23009)))

(declare-fun res!22025 () Bool)

(assert (=> b!36431 (=> (not res!22025) (not e!23009))))

(assert (=> b!36431 (= res!22025 (dynLambda!160 p!304 (h!1534 (t!3685 (toList!488 lm!252)))))))

(declare-fun b!36432 () Bool)

(assert (=> b!36432 (= e!23009 (forall!150 (t!3685 (t!3685 (toList!488 lm!252))) p!304))))

(assert (= (and d!5493 (not res!22024)) b!36431))

(assert (= (and b!36431 res!22025) b!36432))

(declare-fun b_lambda!1761 () Bool)

(assert (=> (not b_lambda!1761) (not b!36431)))

(declare-fun t!3696 () Bool)

(declare-fun tb!711 () Bool)

(assert (=> (and start!4644 (= p!304 p!304) t!3696) tb!711))

(declare-fun result!1229 () Bool)

(assert (=> tb!711 (= result!1229 true)))

(assert (=> b!36431 t!3696))

(declare-fun b_and!2141 () Bool)

(assert (= b_and!2135 (and (=> t!3696 result!1229) b_and!2141)))

(declare-fun m!29377 () Bool)

(assert (=> b!36431 m!29377))

(declare-fun m!29379 () Bool)

(assert (=> b!36432 m!29379))

(assert (=> b!36365 d!5493))

(declare-fun d!5495 () Bool)

(assert (=> d!5495 (isDefined!38 (getValueByKey!76 (toList!488 lm!252) k0!388))))

(declare-fun lt!13497 () Unit!801)

(declare-fun choose!227 (List!970 (_ BitVec 64)) Unit!801)

(assert (=> d!5495 (= lt!13497 (choose!227 (toList!488 lm!252) k0!388))))

(declare-fun e!23016 () Bool)

(assert (=> d!5495 e!23016))

(declare-fun res!22030 () Bool)

(assert (=> d!5495 (=> (not res!22030) (not e!23016))))

(assert (=> d!5495 (= res!22030 (isStrictlySorted!170 (toList!488 lm!252)))))

(assert (=> d!5495 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!37 (toList!488 lm!252) k0!388) lt!13497)))

(declare-fun b!36441 () Bool)

(assert (=> b!36441 (= e!23016 (containsKey!40 (toList!488 lm!252) k0!388))))

(assert (= (and d!5495 res!22030) b!36441))

(assert (=> d!5495 m!29361))

(assert (=> d!5495 m!29361))

(assert (=> d!5495 m!29365))

(declare-fun m!29383 () Bool)

(assert (=> d!5495 m!29383))

(assert (=> d!5495 m!29333))

(assert (=> b!36441 m!29354))

(assert (=> b!36399 d!5495))

(declare-fun d!5501 () Bool)

(declare-fun isEmpty!184 (Option!82) Bool)

(assert (=> d!5501 (= (isDefined!38 (getValueByKey!76 (toList!488 lm!252) k0!388)) (not (isEmpty!184 (getValueByKey!76 (toList!488 lm!252) k0!388))))))

(declare-fun bs!1385 () Bool)

(assert (= bs!1385 d!5501))

(assert (=> bs!1385 m!29361))

(declare-fun m!29387 () Bool)

(assert (=> bs!1385 m!29387))

(assert (=> b!36399 d!5501))

(declare-fun b!36465 () Bool)

(declare-fun e!23036 () Option!82)

(assert (=> b!36465 (= e!23036 (Some!81 (_2!692 (h!1534 (toList!488 lm!252)))))))

(declare-fun b!36467 () Bool)

(declare-fun e!23037 () Option!82)

(assert (=> b!36467 (= e!23037 (getValueByKey!76 (t!3685 (toList!488 lm!252)) k0!388))))

(declare-fun d!5507 () Bool)

(declare-fun c!4191 () Bool)

(assert (=> d!5507 (= c!4191 (and ((_ is Cons!966) (toList!488 lm!252)) (= (_1!692 (h!1534 (toList!488 lm!252))) k0!388)))))

(assert (=> d!5507 (= (getValueByKey!76 (toList!488 lm!252) k0!388) e!23036)))

(declare-fun b!36468 () Bool)

(assert (=> b!36468 (= e!23037 None!80)))

(declare-fun b!36466 () Bool)

(assert (=> b!36466 (= e!23036 e!23037)))

(declare-fun c!4192 () Bool)

(assert (=> b!36466 (= c!4192 (and ((_ is Cons!966) (toList!488 lm!252)) (not (= (_1!692 (h!1534 (toList!488 lm!252))) k0!388))))))

(assert (= (and d!5507 c!4191) b!36465))

(assert (= (and d!5507 (not c!4191)) b!36466))

(assert (= (and b!36466 c!4192) b!36467))

(assert (= (and b!36466 (not c!4192)) b!36468))

(declare-fun m!29397 () Bool)

(assert (=> b!36467 m!29397))

(assert (=> b!36399 d!5507))

(assert (=> b!36403 d!5501))

(assert (=> b!36403 d!5507))

(declare-fun d!5517 () Bool)

(declare-fun res!22062 () Bool)

(declare-fun e!23055 () Bool)

(assert (=> d!5517 (=> res!22062 e!23055)))

(assert (=> d!5517 (= res!22062 (and ((_ is Cons!966) (toList!488 lm!252)) (= (_1!692 (h!1534 (toList!488 lm!252))) k0!388)))))

(assert (=> d!5517 (= (containsKey!40 (toList!488 lm!252) k0!388) e!23055)))

(declare-fun b!36486 () Bool)

(declare-fun e!23056 () Bool)

(assert (=> b!36486 (= e!23055 e!23056)))

(declare-fun res!22063 () Bool)

(assert (=> b!36486 (=> (not res!22063) (not e!23056))))

(assert (=> b!36486 (= res!22063 (and (or (not ((_ is Cons!966) (toList!488 lm!252))) (bvsle (_1!692 (h!1534 (toList!488 lm!252))) k0!388)) ((_ is Cons!966) (toList!488 lm!252)) (bvslt (_1!692 (h!1534 (toList!488 lm!252))) k0!388)))))

(declare-fun b!36487 () Bool)

(assert (=> b!36487 (= e!23056 (containsKey!40 (t!3685 (toList!488 lm!252)) k0!388))))

(assert (= (and d!5517 (not res!22062)) b!36486))

(assert (= (and b!36486 res!22063) b!36487))

(declare-fun m!29403 () Bool)

(assert (=> b!36487 m!29403))

(assert (=> d!5477 d!5517))

(declare-fun b!36488 () Bool)

(declare-fun e!23057 () Bool)

(declare-fun tp!5347 () Bool)

(assert (=> b!36488 (= e!23057 (and tp_is_empty!1649 tp!5347))))

(assert (=> b!36413 (= tp!5344 e!23057)))

(assert (= (and b!36413 ((_ is Cons!966) (t!3685 (toList!488 lm!252)))) b!36488))

(declare-fun b_lambda!1767 () Bool)

(assert (= b_lambda!1761 (or (and start!4644 b_free!1293) b_lambda!1767)))

(check-sat (not b!36467) (not b!36488) (not d!5501) (not b!36441) (not b!36432) (not d!5495) (not b_lambda!1767) (not b_next!1293) b_and!2141 tp_is_empty!1649 (not b!36487) (not b!36426) (not b_lambda!1757))
(check-sat b_and!2141 (not b_next!1293))
