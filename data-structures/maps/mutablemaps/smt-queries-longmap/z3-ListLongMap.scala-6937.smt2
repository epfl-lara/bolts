; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87360 () Bool)

(assert start!87360)

(declare-fun b!1012084 () Bool)

(assert (=> b!1012084 true))

(assert (=> b!1012084 true))

(declare-datatypes ((Unit!33003 0))(
  ( (Unit!33004) )
))
(declare-fun e!569377 () Unit!33003)

(declare-fun lt!447295 () Unit!33003)

(assert (=> b!1012084 (= e!569377 lt!447295)))

(declare-datatypes ((List!21462 0))(
  ( (Nil!21459) (Cons!21458 (h!22656 (_ BitVec 64)) (t!30471 List!21462)) )
))
(declare-fun lt!447296 () List!21462)

(declare-datatypes ((B!1330 0))(
  ( (B!1331 (val!11749 Int)) )
))
(declare-fun value!115 () B!1330)

(declare-datatypes ((tuple2!15134 0))(
  ( (tuple2!15135 (_1!7577 (_ BitVec 64)) (_2!7577 B!1330)) )
))
(declare-datatypes ((List!21463 0))(
  ( (Nil!21460) (Cons!21459 (h!22657 tuple2!15134) (t!30472 List!21463)) )
))
(declare-fun l!412 () List!21463)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!8 (List!21463 List!21462 B!1330 tuple2!15134) Unit!33003)

(assert (=> b!1012084 (= lt!447295 (lemmaForallGetValueByKeySameWithASmallerHead!8 (t!30472 l!412) lt!447296 value!115 (h!22657 l!412)))))

(declare-fun lambda!290 () Int)

(declare-fun forall!210 (List!21462 Int) Bool)

(assert (=> b!1012084 (forall!210 lt!447296 lambda!290)))

(declare-fun res!679956 () Bool)

(declare-fun e!569376 () Bool)

(assert (=> start!87360 (=> (not res!679956) (not e!569376))))

(declare-fun isStrictlySorted!525 (List!21463) Bool)

(assert (=> start!87360 (= res!679956 (isStrictlySorted!525 l!412))))

(assert (=> start!87360 e!569376))

(declare-fun e!569378 () Bool)

(assert (=> start!87360 e!569378))

(declare-fun tp_is_empty!23397 () Bool)

(assert (=> start!87360 tp_is_empty!23397))

(declare-fun b!1012085 () Bool)

(declare-fun Unit!33005 () Unit!33003)

(assert (=> b!1012085 (= e!569377 Unit!33005)))

(declare-fun b!1012086 () Bool)

(declare-fun tp!70260 () Bool)

(assert (=> b!1012086 (= e!569378 (and tp_is_empty!23397 tp!70260))))

(declare-fun b!1012087 () Bool)

(declare-fun res!679957 () Bool)

(assert (=> b!1012087 (=> (not res!679957) (not e!569376))))

(get-info :version)

(assert (=> b!1012087 (= res!679957 (and ((_ is Cons!21459) l!412) (= (_2!7577 (h!22657 l!412)) value!115)))))

(declare-fun b!1012088 () Bool)

(assert (=> b!1012088 (= e!569376 (not (isStrictlySorted!525 (t!30472 l!412))))))

(declare-fun lt!447297 () Unit!33003)

(assert (=> b!1012088 (= lt!447297 e!569377)))

(declare-fun c!102180 () Bool)

(declare-fun isEmpty!789 (List!21462) Bool)

(assert (=> b!1012088 (= c!102180 (not (isEmpty!789 lt!447296)))))

(declare-fun getKeysOf!14 (List!21463 B!1330) List!21462)

(assert (=> b!1012088 (= lt!447296 (getKeysOf!14 (t!30472 l!412) value!115))))

(assert (= (and start!87360 res!679956) b!1012087))

(assert (= (and b!1012087 res!679957) b!1012088))

(assert (= (and b!1012088 c!102180) b!1012084))

(assert (= (and b!1012088 (not c!102180)) b!1012085))

(assert (= (and start!87360 ((_ is Cons!21459) l!412)) b!1012086))

(declare-fun m!935955 () Bool)

(assert (=> b!1012084 m!935955))

(declare-fun m!935957 () Bool)

(assert (=> b!1012084 m!935957))

(declare-fun m!935959 () Bool)

(assert (=> start!87360 m!935959))

(declare-fun m!935961 () Bool)

(assert (=> b!1012088 m!935961))

(declare-fun m!935963 () Bool)

(assert (=> b!1012088 m!935963))

(declare-fun m!935965 () Bool)

(assert (=> b!1012088 m!935965))

(check-sat (not b!1012088) tp_is_empty!23397 (not start!87360) (not b!1012084) (not b!1012086))
(check-sat)
(get-model)

(declare-fun d!120211 () Bool)

(declare-fun res!679968 () Bool)

(declare-fun e!569392 () Bool)

(assert (=> d!120211 (=> res!679968 e!569392)))

(assert (=> d!120211 (= res!679968 (or ((_ is Nil!21460) (t!30472 l!412)) ((_ is Nil!21460) (t!30472 (t!30472 l!412)))))))

(assert (=> d!120211 (= (isStrictlySorted!525 (t!30472 l!412)) e!569392)))

(declare-fun b!1012116 () Bool)

(declare-fun e!569393 () Bool)

(assert (=> b!1012116 (= e!569392 e!569393)))

(declare-fun res!679969 () Bool)

(assert (=> b!1012116 (=> (not res!679969) (not e!569393))))

(assert (=> b!1012116 (= res!679969 (bvslt (_1!7577 (h!22657 (t!30472 l!412))) (_1!7577 (h!22657 (t!30472 (t!30472 l!412))))))))

(declare-fun b!1012117 () Bool)

(assert (=> b!1012117 (= e!569393 (isStrictlySorted!525 (t!30472 (t!30472 l!412))))))

(assert (= (and d!120211 (not res!679968)) b!1012116))

(assert (= (and b!1012116 res!679969) b!1012117))

(declare-fun m!935979 () Bool)

(assert (=> b!1012117 m!935979))

(assert (=> b!1012088 d!120211))

(declare-fun d!120217 () Bool)

(assert (=> d!120217 (= (isEmpty!789 lt!447296) ((_ is Nil!21459) lt!447296))))

(assert (=> b!1012088 d!120217))

(declare-fun bs!28763 () Bool)

(declare-fun b!1012186 () Bool)

(assert (= bs!28763 (and b!1012186 b!1012084)))

(declare-fun lt!447364 () tuple2!15134)

(declare-fun lambda!312 () Int)

(declare-fun lt!447358 () List!21463)

(assert (=> bs!28763 (= (= (Cons!21459 lt!447364 lt!447358) l!412) (= lambda!312 lambda!290))))

(assert (=> b!1012186 true))

(assert (=> b!1012186 true))

(assert (=> b!1012186 true))

(declare-fun bs!28764 () Bool)

(declare-fun b!1012184 () Bool)

(assert (= bs!28764 (and b!1012184 b!1012084)))

(declare-fun lt!447361 () List!21463)

(declare-fun lt!447359 () tuple2!15134)

(declare-fun lambda!313 () Int)

(assert (=> bs!28764 (= (= (Cons!21459 lt!447359 lt!447361) l!412) (= lambda!313 lambda!290))))

(declare-fun bs!28765 () Bool)

(assert (= bs!28765 (and b!1012184 b!1012186)))

(assert (=> bs!28765 (= (= (Cons!21459 lt!447359 lt!447361) (Cons!21459 lt!447364 lt!447358)) (= lambda!313 lambda!312))))

(assert (=> b!1012184 true))

(assert (=> b!1012184 true))

(assert (=> b!1012184 true))

(declare-fun bs!28767 () Bool)

(declare-fun d!120219 () Bool)

(assert (= bs!28767 (and d!120219 b!1012084)))

(declare-fun lambda!315 () Int)

(assert (=> bs!28767 (= (= (t!30472 l!412) l!412) (= lambda!315 lambda!290))))

(declare-fun bs!28768 () Bool)

(assert (= bs!28768 (and d!120219 b!1012186)))

(assert (=> bs!28768 (= (= (t!30472 l!412) (Cons!21459 lt!447364 lt!447358)) (= lambda!315 lambda!312))))

(declare-fun bs!28769 () Bool)

(assert (= bs!28769 (and d!120219 b!1012184)))

(assert (=> bs!28769 (= (= (t!30472 l!412) (Cons!21459 lt!447359 lt!447361)) (= lambda!315 lambda!313))))

(assert (=> d!120219 true))

(assert (=> d!120219 true))

(declare-fun b!1012181 () Bool)

(declare-fun e!569434 () List!21462)

(declare-fun e!569436 () List!21462)

(assert (=> b!1012181 (= e!569434 e!569436)))

(declare-fun c!102201 () Bool)

(assert (=> b!1012181 (= c!102201 (and ((_ is Cons!21459) (t!30472 l!412)) (not (= (_2!7577 (h!22657 (t!30472 l!412))) value!115))))))

(declare-fun b!1012182 () Bool)

(declare-fun e!569433 () Unit!33003)

(declare-fun Unit!33009 () Unit!33003)

(assert (=> b!1012182 (= e!569433 Unit!33009)))

(declare-fun bm!42495 () Bool)

(declare-fun call!42499 () Bool)

(declare-fun call!42500 () List!21462)

(assert (=> bm!42495 (= call!42499 (isEmpty!789 call!42500))))

(declare-fun b!1012183 () Bool)

(declare-fun lt!447368 () Unit!33003)

(assert (=> b!1012183 (= lt!447368 e!569433)))

(declare-fun c!102200 () Bool)

(assert (=> b!1012183 (= c!102200 (not call!42499))))

(declare-fun lt!447363 () List!21462)

(assert (=> b!1012183 (= lt!447363 call!42500)))

(assert (=> b!1012183 (= e!569436 call!42500)))

(declare-fun bm!42496 () Bool)

(assert (=> bm!42496 (= call!42500 (getKeysOf!14 (t!30472 (t!30472 l!412)) value!115))))

(declare-fun lt!447362 () List!21462)

(assert (=> d!120219 (forall!210 lt!447362 lambda!315)))

(assert (=> d!120219 (= lt!447362 e!569434)))

(declare-fun c!102203 () Bool)

(assert (=> d!120219 (= c!102203 (and ((_ is Cons!21459) (t!30472 l!412)) (= (_2!7577 (h!22657 (t!30472 l!412))) value!115)))))

(assert (=> d!120219 (isStrictlySorted!525 (t!30472 l!412))))

(assert (=> d!120219 (= (getKeysOf!14 (t!30472 l!412) value!115) lt!447362)))

(declare-fun lt!447367 () List!21462)

(declare-fun call!42501 () Bool)

(declare-fun lt!447366 () List!21462)

(declare-fun bm!42497 () Bool)

(assert (=> bm!42497 (= call!42501 (forall!210 (ite c!102203 lt!447366 lt!447367) (ite c!102203 lambda!312 lambda!313)))))

(declare-fun lt!447360 () Unit!33003)

(assert (=> b!1012184 (= e!569433 lt!447360)))

(assert (=> b!1012184 (= lt!447361 (t!30472 (t!30472 l!412)))))

(assert (=> b!1012184 (= lt!447367 call!42500)))

(assert (=> b!1012184 (= lt!447359 (h!22657 (t!30472 l!412)))))

(declare-fun call!42498 () Unit!33003)

(assert (=> b!1012184 (= lt!447360 call!42498)))

(assert (=> b!1012184 call!42501))

(declare-fun b!1012185 () Bool)

(declare-fun e!569435 () Unit!33003)

(declare-fun Unit!33010 () Unit!33003)

(assert (=> b!1012185 (= e!569435 Unit!33010)))

(declare-fun bm!42498 () Bool)

(assert (=> bm!42498 (= call!42498 (lemmaForallGetValueByKeySameWithASmallerHead!8 (ite c!102203 lt!447358 lt!447361) (ite c!102203 lt!447366 lt!447367) value!115 (ite c!102203 lt!447364 lt!447359)))))

(assert (=> b!1012186 call!42501))

(declare-fun lt!447369 () Unit!33003)

(assert (=> b!1012186 (= lt!447369 call!42498)))

(assert (=> b!1012186 (= lt!447364 (h!22657 (t!30472 l!412)))))

(assert (=> b!1012186 (= lt!447366 call!42500)))

(assert (=> b!1012186 (= lt!447358 (t!30472 (t!30472 l!412)))))

(assert (=> b!1012186 (= e!569435 lt!447369)))

(declare-fun b!1012187 () Bool)

(assert (=> b!1012187 (= e!569436 Nil!21459)))

(declare-fun b!1012188 () Bool)

(assert (=> b!1012188 (= e!569434 (Cons!21458 (_1!7577 (h!22657 (t!30472 l!412))) call!42500))))

(declare-fun c!102202 () Bool)

(assert (=> b!1012188 (= c!102202 (not call!42499))))

(declare-fun lt!447365 () Unit!33003)

(assert (=> b!1012188 (= lt!447365 e!569435)))

(assert (= (and d!120219 c!102203) b!1012188))

(assert (= (and d!120219 (not c!102203)) b!1012181))

(assert (= (and b!1012188 c!102202) b!1012186))

(assert (= (and b!1012188 (not c!102202)) b!1012185))

(assert (= (and b!1012181 c!102201) b!1012183))

(assert (= (and b!1012181 (not c!102201)) b!1012187))

(assert (= (and b!1012183 c!102200) b!1012184))

(assert (= (and b!1012183 (not c!102200)) b!1012182))

(assert (= (or b!1012186 b!1012184) bm!42498))

(assert (= (or b!1012186 b!1012184) bm!42497))

(assert (= (or b!1012188 b!1012186 b!1012183 b!1012184) bm!42496))

(assert (= (or b!1012188 b!1012183) bm!42495))

(declare-fun m!935999 () Bool)

(assert (=> bm!42495 m!935999))

(declare-fun m!936001 () Bool)

(assert (=> bm!42497 m!936001))

(declare-fun m!936003 () Bool)

(assert (=> bm!42498 m!936003))

(declare-fun m!936005 () Bool)

(assert (=> bm!42496 m!936005))

(declare-fun m!936007 () Bool)

(assert (=> d!120219 m!936007))

(assert (=> d!120219 m!935961))

(assert (=> b!1012088 d!120219))

(declare-fun bs!28775 () Bool)

(declare-fun b!1012230 () Bool)

(assert (= bs!28775 (and b!1012230 b!1012084)))

(declare-fun lambda!332 () Int)

(assert (=> bs!28775 (= (= (t!30472 l!412) l!412) (= lambda!332 lambda!290))))

(declare-fun bs!28776 () Bool)

(assert (= bs!28776 (and b!1012230 b!1012186)))

(assert (=> bs!28776 (= (= (t!30472 l!412) (Cons!21459 lt!447364 lt!447358)) (= lambda!332 lambda!312))))

(declare-fun bs!28777 () Bool)

(assert (= bs!28777 (and b!1012230 b!1012184)))

(assert (=> bs!28777 (= (= (t!30472 l!412) (Cons!21459 lt!447359 lt!447361)) (= lambda!332 lambda!313))))

(declare-fun bs!28778 () Bool)

(assert (= bs!28778 (and b!1012230 d!120219)))

(assert (=> bs!28778 (= lambda!332 lambda!315)))

(assert (=> b!1012230 true))

(assert (=> b!1012230 true))

(declare-fun bs!28783 () Bool)

(declare-fun d!120235 () Bool)

(assert (= bs!28783 (and d!120235 b!1012230)))

(declare-fun lambda!334 () Int)

(assert (=> bs!28783 (= (= (Cons!21459 (h!22657 l!412) (t!30472 l!412)) (t!30472 l!412)) (= lambda!334 lambda!332))))

(declare-fun bs!28785 () Bool)

(assert (= bs!28785 (and d!120235 b!1012084)))

(assert (=> bs!28785 (= (= (Cons!21459 (h!22657 l!412) (t!30472 l!412)) l!412) (= lambda!334 lambda!290))))

(declare-fun bs!28787 () Bool)

(assert (= bs!28787 (and d!120235 b!1012184)))

(assert (=> bs!28787 (= (= (Cons!21459 (h!22657 l!412) (t!30472 l!412)) (Cons!21459 lt!447359 lt!447361)) (= lambda!334 lambda!313))))

(declare-fun bs!28789 () Bool)

(assert (= bs!28789 (and d!120235 b!1012186)))

(assert (=> bs!28789 (= (= (Cons!21459 (h!22657 l!412) (t!30472 l!412)) (Cons!21459 lt!447364 lt!447358)) (= lambda!334 lambda!312))))

(declare-fun bs!28791 () Bool)

(assert (= bs!28791 (and d!120235 d!120219)))

(assert (=> bs!28791 (= (= (Cons!21459 (h!22657 l!412) (t!30472 l!412)) (t!30472 l!412)) (= lambda!334 lambda!315))))

(assert (=> d!120235 true))

(assert (=> d!120235 true))

(assert (=> d!120235 true))

(assert (=> d!120235 (forall!210 lt!447296 lambda!334)))

(declare-fun lt!447410 () Unit!33003)

(declare-fun choose!1632 (List!21463 List!21462 B!1330 tuple2!15134) Unit!33003)

(assert (=> d!120235 (= lt!447410 (choose!1632 (t!30472 l!412) lt!447296 value!115 (h!22657 l!412)))))

(declare-fun e!569453 () Bool)

(assert (=> d!120235 e!569453))

(declare-fun res!680012 () Bool)

(assert (=> d!120235 (=> (not res!680012) (not e!569453))))

(assert (=> d!120235 (= res!680012 (isStrictlySorted!525 (t!30472 l!412)))))

(assert (=> d!120235 (= (lemmaForallGetValueByKeySameWithASmallerHead!8 (t!30472 l!412) lt!447296 value!115 (h!22657 l!412)) lt!447410)))

(declare-fun b!1012229 () Bool)

(declare-fun res!680011 () Bool)

(assert (=> b!1012229 (=> (not res!680011) (not e!569453))))

(declare-fun isEmpty!792 (List!21463) Bool)

(assert (=> b!1012229 (= res!680011 (not (isEmpty!792 (t!30472 l!412))))))

(declare-fun res!680013 () Bool)

(assert (=> b!1012230 (=> (not res!680013) (not e!569453))))

(assert (=> b!1012230 (= res!680013 (forall!210 lt!447296 lambda!332))))

(declare-fun b!1012231 () Bool)

(declare-fun head!924 (List!21463) tuple2!15134)

(assert (=> b!1012231 (= e!569453 (bvslt (_1!7577 (h!22657 l!412)) (_1!7577 (head!924 (t!30472 l!412)))))))

(assert (= (and d!120235 res!680012) b!1012229))

(assert (= (and b!1012229 res!680011) b!1012230))

(assert (= (and b!1012230 res!680013) b!1012231))

(declare-fun m!936019 () Bool)

(assert (=> d!120235 m!936019))

(declare-fun m!936021 () Bool)

(assert (=> d!120235 m!936021))

(assert (=> d!120235 m!935961))

(declare-fun m!936023 () Bool)

(assert (=> b!1012229 m!936023))

(declare-fun m!936025 () Bool)

(assert (=> b!1012230 m!936025))

(declare-fun m!936027 () Bool)

(assert (=> b!1012231 m!936027))

(assert (=> b!1012084 d!120235))

(declare-fun d!120239 () Bool)

(declare-fun res!680021 () Bool)

(declare-fun e!569463 () Bool)

(assert (=> d!120239 (=> res!680021 e!569463)))

(assert (=> d!120239 (= res!680021 ((_ is Nil!21459) lt!447296))))

(assert (=> d!120239 (= (forall!210 lt!447296 lambda!290) e!569463)))

(declare-fun b!1012247 () Bool)

(declare-fun e!569464 () Bool)

(assert (=> b!1012247 (= e!569463 e!569464)))

(declare-fun res!680022 () Bool)

(assert (=> b!1012247 (=> (not res!680022) (not e!569464))))

(declare-fun dynLambda!1884 (Int (_ BitVec 64)) Bool)

(assert (=> b!1012247 (= res!680022 (dynLambda!1884 lambda!290 (h!22656 lt!447296)))))

(declare-fun b!1012248 () Bool)

(assert (=> b!1012248 (= e!569464 (forall!210 (t!30471 lt!447296) lambda!290))))

(assert (= (and d!120239 (not res!680021)) b!1012247))

(assert (= (and b!1012247 res!680022) b!1012248))

(declare-fun b_lambda!15261 () Bool)

(assert (=> (not b_lambda!15261) (not b!1012247)))

(declare-fun m!936049 () Bool)

(assert (=> b!1012247 m!936049))

(declare-fun m!936051 () Bool)

(assert (=> b!1012248 m!936051))

(assert (=> b!1012084 d!120239))

(declare-fun d!120243 () Bool)

(declare-fun res!680027 () Bool)

(declare-fun e!569469 () Bool)

(assert (=> d!120243 (=> res!680027 e!569469)))

(assert (=> d!120243 (= res!680027 (or ((_ is Nil!21460) l!412) ((_ is Nil!21460) (t!30472 l!412))))))

(assert (=> d!120243 (= (isStrictlySorted!525 l!412) e!569469)))

(declare-fun b!1012255 () Bool)

(declare-fun e!569470 () Bool)

(assert (=> b!1012255 (= e!569469 e!569470)))

(declare-fun res!680028 () Bool)

(assert (=> b!1012255 (=> (not res!680028) (not e!569470))))

(assert (=> b!1012255 (= res!680028 (bvslt (_1!7577 (h!22657 l!412)) (_1!7577 (h!22657 (t!30472 l!412)))))))

(declare-fun b!1012256 () Bool)

(assert (=> b!1012256 (= e!569470 (isStrictlySorted!525 (t!30472 l!412)))))

(assert (= (and d!120243 (not res!680027)) b!1012255))

(assert (= (and b!1012255 res!680028) b!1012256))

(assert (=> b!1012256 m!935961))

(assert (=> start!87360 d!120243))

(declare-fun b!1012264 () Bool)

(declare-fun e!569476 () Bool)

(declare-fun tp!70269 () Bool)

(assert (=> b!1012264 (= e!569476 (and tp_is_empty!23397 tp!70269))))

(assert (=> b!1012086 (= tp!70260 e!569476)))

(assert (= (and b!1012086 ((_ is Cons!21459) (t!30472 l!412))) b!1012264))

(declare-fun b_lambda!15265 () Bool)

(assert (= b_lambda!15261 (or b!1012084 b_lambda!15265)))

(declare-fun bs!28806 () Bool)

(declare-fun d!120247 () Bool)

(assert (= bs!28806 (and d!120247 b!1012084)))

(declare-datatypes ((Option!570 0))(
  ( (Some!569 (v!14418 B!1330)) (None!568) )
))
(declare-fun getValueByKey!519 (List!21463 (_ BitVec 64)) Option!570)

(assert (=> bs!28806 (= (dynLambda!1884 lambda!290 (h!22656 lt!447296)) (= (getValueByKey!519 l!412 (h!22656 lt!447296)) (Some!569 value!115)))))

(declare-fun m!936059 () Bool)

(assert (=> bs!28806 m!936059))

(assert (=> b!1012247 d!120247))

(check-sat (not b!1012264) (not b!1012256) (not b!1012248) (not bs!28806) (not bm!42495) (not bm!42498) (not bm!42496) (not b!1012229) tp_is_empty!23397 (not bm!42497) (not b_lambda!15265) (not d!120219) (not b!1012231) (not b!1012117) (not d!120235) (not b!1012230))
(check-sat)
