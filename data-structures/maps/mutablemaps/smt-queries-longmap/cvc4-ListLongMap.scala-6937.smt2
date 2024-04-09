; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87362 () Bool)

(assert start!87362)

(declare-fun b!1012103 () Bool)

(assert (=> b!1012103 true))

(assert (=> b!1012103 true))

(declare-datatypes ((Unit!33006 0))(
  ( (Unit!33007) )
))
(declare-fun e!569385 () Unit!33006)

(declare-fun lt!447306 () Unit!33006)

(assert (=> b!1012103 (= e!569385 lt!447306)))

(declare-datatypes ((List!21464 0))(
  ( (Nil!21461) (Cons!21460 (h!22658 (_ BitVec 64)) (t!30473 List!21464)) )
))
(declare-fun lt!447305 () List!21464)

(declare-datatypes ((B!1332 0))(
  ( (B!1333 (val!11750 Int)) )
))
(declare-fun value!115 () B!1332)

(declare-datatypes ((tuple2!15136 0))(
  ( (tuple2!15137 (_1!7578 (_ BitVec 64)) (_2!7578 B!1332)) )
))
(declare-datatypes ((List!21465 0))(
  ( (Nil!21462) (Cons!21461 (h!22659 tuple2!15136) (t!30474 List!21465)) )
))
(declare-fun l!412 () List!21465)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!9 (List!21465 List!21464 B!1332 tuple2!15136) Unit!33006)

(assert (=> b!1012103 (= lt!447306 (lemmaForallGetValueByKeySameWithASmallerHead!9 (t!30474 l!412) lt!447305 value!115 (h!22659 l!412)))))

(declare-fun lambda!293 () Int)

(declare-fun forall!211 (List!21464 Int) Bool)

(assert (=> b!1012103 (forall!211 lt!447305 lambda!293)))

(declare-fun b!1012104 () Bool)

(declare-fun res!679963 () Bool)

(declare-fun e!569386 () Bool)

(assert (=> b!1012104 (=> (not res!679963) (not e!569386))))

(assert (=> b!1012104 (= res!679963 (and (is-Cons!21461 l!412) (= (_2!7578 (h!22659 l!412)) value!115)))))

(declare-fun res!679962 () Bool)

(assert (=> start!87362 (=> (not res!679962) (not e!569386))))

(declare-fun isStrictlySorted!526 (List!21465) Bool)

(assert (=> start!87362 (= res!679962 (isStrictlySorted!526 l!412))))

(assert (=> start!87362 e!569386))

(declare-fun e!569387 () Bool)

(assert (=> start!87362 e!569387))

(declare-fun tp_is_empty!23399 () Bool)

(assert (=> start!87362 tp_is_empty!23399))

(declare-fun b!1012105 () Bool)

(declare-fun Unit!33008 () Unit!33006)

(assert (=> b!1012105 (= e!569385 Unit!33008)))

(declare-fun b!1012106 () Bool)

(assert (=> b!1012106 (= e!569386 (not (isStrictlySorted!526 (t!30474 l!412))))))

(declare-fun lt!447304 () Unit!33006)

(assert (=> b!1012106 (= lt!447304 e!569385)))

(declare-fun c!102183 () Bool)

(declare-fun isEmpty!790 (List!21464) Bool)

(assert (=> b!1012106 (= c!102183 (not (isEmpty!790 lt!447305)))))

(declare-fun getKeysOf!15 (List!21465 B!1332) List!21464)

(assert (=> b!1012106 (= lt!447305 (getKeysOf!15 (t!30474 l!412) value!115))))

(declare-fun b!1012107 () Bool)

(declare-fun tp!70263 () Bool)

(assert (=> b!1012107 (= e!569387 (and tp_is_empty!23399 tp!70263))))

(assert (= (and start!87362 res!679962) b!1012104))

(assert (= (and b!1012104 res!679963) b!1012106))

(assert (= (and b!1012106 c!102183) b!1012103))

(assert (= (and b!1012106 (not c!102183)) b!1012105))

(assert (= (and start!87362 (is-Cons!21461 l!412)) b!1012107))

(declare-fun m!935967 () Bool)

(assert (=> b!1012103 m!935967))

(declare-fun m!935969 () Bool)

(assert (=> b!1012103 m!935969))

(declare-fun m!935971 () Bool)

(assert (=> start!87362 m!935971))

(declare-fun m!935973 () Bool)

(assert (=> b!1012106 m!935973))

(declare-fun m!935975 () Bool)

(assert (=> b!1012106 m!935975))

(declare-fun m!935977 () Bool)

(assert (=> b!1012106 m!935977))

(push 1)

(assert (not b!1012107))

(assert tp_is_empty!23399)

(assert (not b!1012106))

(assert (not start!87362))

(assert (not b!1012103))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120215 () Bool)

(declare-fun res!679980 () Bool)

(declare-fun e!569400 () Bool)

(assert (=> d!120215 (=> res!679980 e!569400)))

(assert (=> d!120215 (= res!679980 (or (is-Nil!21462 (t!30474 l!412)) (is-Nil!21462 (t!30474 (t!30474 l!412)))))))

(assert (=> d!120215 (= (isStrictlySorted!526 (t!30474 l!412)) e!569400)))

(declare-fun b!1012126 () Bool)

(declare-fun e!569401 () Bool)

(assert (=> b!1012126 (= e!569400 e!569401)))

(declare-fun res!679981 () Bool)

(assert (=> b!1012126 (=> (not res!679981) (not e!569401))))

(assert (=> b!1012126 (= res!679981 (bvslt (_1!7578 (h!22659 (t!30474 l!412))) (_1!7578 (h!22659 (t!30474 (t!30474 l!412))))))))

(declare-fun b!1012127 () Bool)

(assert (=> b!1012127 (= e!569401 (isStrictlySorted!526 (t!30474 (t!30474 l!412))))))

(assert (= (and d!120215 (not res!679980)) b!1012126))

(assert (= (and b!1012126 res!679981) b!1012127))

(declare-fun m!935981 () Bool)

(assert (=> b!1012127 m!935981))

(assert (=> b!1012106 d!120215))

(declare-fun d!120221 () Bool)

(assert (=> d!120221 (= (isEmpty!790 lt!447305) (is-Nil!21461 lt!447305))))

(assert (=> b!1012106 d!120221))

(declare-fun bs!28766 () Bool)

(declare-fun b!1012198 () Bool)

(assert (= bs!28766 (and b!1012198 b!1012103)))

(declare-fun lt!447373 () tuple2!15136)

(declare-fun lambda!314 () Int)

(declare-fun lt!447383 () List!21465)

(assert (=> bs!28766 (= (= (Cons!21461 lt!447373 lt!447383) l!412) (= lambda!314 lambda!293))))

(assert (=> b!1012198 true))

(assert (=> b!1012198 true))

(assert (=> b!1012198 true))

(declare-fun bs!28770 () Bool)

(declare-fun b!1012197 () Bool)

(assert (= bs!28770 (and b!1012197 b!1012103)))

(declare-fun lambda!318 () Int)

(declare-fun lt!447372 () List!21465)

(declare-fun lt!447376 () tuple2!15136)

(assert (=> bs!28770 (= (= (Cons!21461 lt!447376 lt!447372) l!412) (= lambda!318 lambda!293))))

(declare-fun bs!28771 () Bool)

(assert (= bs!28771 (and b!1012197 b!1012198)))

(assert (=> bs!28771 (= (= (Cons!21461 lt!447376 lt!447372) (Cons!21461 lt!447373 lt!447383)) (= lambda!318 lambda!314))))

(assert (=> b!1012197 true))

(assert (=> b!1012197 true))

(assert (=> b!1012197 true))

(declare-fun bs!28772 () Bool)

(declare-fun d!120223 () Bool)

(assert (= bs!28772 (and d!120223 b!1012103)))

(declare-fun lambda!319 () Int)

(assert (=> bs!28772 (= (= (t!30474 l!412) l!412) (= lambda!319 lambda!293))))

(declare-fun bs!28773 () Bool)

(assert (= bs!28773 (and d!120223 b!1012198)))

(assert (=> bs!28773 (= (= (t!30474 l!412) (Cons!21461 lt!447373 lt!447383)) (= lambda!319 lambda!314))))

(declare-fun bs!28774 () Bool)

(assert (= bs!28774 (and d!120223 b!1012197)))

(assert (=> bs!28774 (= (= (t!30474 l!412) (Cons!21461 lt!447376 lt!447372)) (= lambda!319 lambda!318))))

(assert (=> d!120223 true))

(assert (=> d!120223 true))

(declare-fun lt!447377 () List!21464)

(declare-fun bm!42499 () Bool)

(declare-fun c!102207 () Bool)

(declare-fun lt!447382 () List!21464)

(declare-fun call!42505 () Unit!33006)

(assert (=> bm!42499 (= call!42505 (lemmaForallGetValueByKeySameWithASmallerHead!9 (ite c!102207 lt!447383 lt!447372) (ite c!102207 lt!447382 lt!447377) value!115 (ite c!102207 lt!447373 lt!447376)))))

(declare-fun bm!42500 () Bool)

(declare-fun call!42503 () Bool)

(declare-fun call!42502 () List!21464)

(assert (=> bm!42500 (= call!42503 (isEmpty!790 call!42502))))

(declare-fun b!1012195 () Bool)

(declare-fun e!569441 () List!21464)

(declare-fun e!569442 () List!21464)

(assert (=> b!1012195 (= e!569441 e!569442)))

(declare-fun c!102208 () Bool)

(assert (=> b!1012195 (= c!102208 (and (is-Cons!21461 (t!30474 l!412)) (not (= (_2!7578 (h!22659 (t!30474 l!412))) value!115))))))

(declare-fun call!42504 () Bool)

(declare-fun bm!42501 () Bool)

(assert (=> bm!42501 (= call!42504 (forall!211 (ite c!102207 lt!447382 lt!447377) (ite c!102207 lambda!314 lambda!318)))))

(declare-fun lt!447379 () List!21464)

(assert (=> d!120223 (forall!211 lt!447379 lambda!319)))

(assert (=> d!120223 (= lt!447379 e!569441)))

(assert (=> d!120223 (= c!102207 (and (is-Cons!21461 (t!30474 l!412)) (= (_2!7578 (h!22659 (t!30474 l!412))) value!115)))))

(assert (=> d!120223 (isStrictlySorted!526 (t!30474 l!412))))

(assert (=> d!120223 (= (getKeysOf!15 (t!30474 l!412) value!115) lt!447379)))

(declare-fun b!1012196 () Bool)

(assert (=> b!1012196 (= e!569441 (Cons!21460 (_1!7578 (h!22659 (t!30474 l!412))) call!42502))))

(declare-fun c!102205 () Bool)

(assert (=> b!1012196 (= c!102205 (not call!42503))))

(declare-fun lt!447380 () Unit!33006)

(declare-fun e!569438 () Unit!33006)

(assert (=> b!1012196 (= lt!447380 e!569438)))

(declare-fun e!569437 () Unit!33006)

(declare-fun lt!447374 () Unit!33006)

(assert (=> b!1012197 (= e!569437 lt!447374)))

(assert (=> b!1012197 (= lt!447372 (t!30474 (t!30474 l!412)))))

(assert (=> b!1012197 (= lt!447377 call!42502)))

(assert (=> b!1012197 (= lt!447376 (h!22659 (t!30474 l!412)))))

(assert (=> b!1012197 (= lt!447374 call!42505)))

(assert (=> b!1012197 call!42504))

(assert (=> b!1012198 call!42504))

(declare-fun lt!447375 () Unit!33006)

(assert (=> b!1012198 (= lt!447375 call!42505)))

(assert (=> b!1012198 (= lt!447373 (h!22659 (t!30474 l!412)))))

(assert (=> b!1012198 (= lt!447382 call!42502)))

(assert (=> b!1012198 (= lt!447383 (t!30474 (t!30474 l!412)))))

(assert (=> b!1012198 (= e!569438 lt!447375)))

(declare-fun b!1012199 () Bool)

(declare-fun Unit!33011 () Unit!33006)

(assert (=> b!1012199 (= e!569437 Unit!33011)))

(declare-fun b!1012200 () Bool)

(declare-fun lt!447378 () Unit!33006)

(assert (=> b!1012200 (= lt!447378 e!569437)))

(declare-fun c!102209 () Bool)

(assert (=> b!1012200 (= c!102209 (not call!42503))))

(declare-fun lt!447381 () List!21464)

(assert (=> b!1012200 (= lt!447381 call!42502)))

(assert (=> b!1012200 (= e!569442 call!42502)))

(declare-fun bm!42502 () Bool)

(assert (=> bm!42502 (= call!42502 (getKeysOf!15 (t!30474 (t!30474 l!412)) value!115))))

(declare-fun b!1012201 () Bool)

(assert (=> b!1012201 (= e!569442 Nil!21461)))

(declare-fun b!1012202 () Bool)

(declare-fun Unit!33012 () Unit!33006)

(assert (=> b!1012202 (= e!569438 Unit!33012)))

(assert (= (and d!120223 c!102207) b!1012196))

(assert (= (and d!120223 (not c!102207)) b!1012195))

(assert (= (and b!1012196 c!102205) b!1012198))

(assert (= (and b!1012196 (not c!102205)) b!1012202))

(assert (= (and b!1012195 c!102208) b!1012200))

(assert (= (and b!1012195 (not c!102208)) b!1012201))

(assert (= (and b!1012200 c!102209) b!1012197))

(assert (= (and b!1012200 (not c!102209)) b!1012199))

(assert (= (or b!1012198 b!1012197) bm!42499))

(assert (= (or b!1012198 b!1012197) bm!42501))

(assert (= (or b!1012196 b!1012198 b!1012200 b!1012197) bm!42502))

(assert (= (or b!1012196 b!1012200) bm!42500))

(declare-fun m!936009 () Bool)

(assert (=> bm!42500 m!936009))

(declare-fun m!936011 () Bool)

(assert (=> bm!42501 m!936011))

(declare-fun m!936013 () Bool)

(assert (=> bm!42499 m!936013))

(declare-fun m!936015 () Bool)

(assert (=> bm!42502 m!936015))

(declare-fun m!936017 () Bool)

(assert (=> d!120223 m!936017))

(assert (=> d!120223 m!935973))

(assert (=> b!1012106 d!120223))

(declare-fun bs!28782 () Bool)

(declare-fun b!1012241 () Bool)

(assert (= bs!28782 (and b!1012241 b!1012103)))

(declare-fun lambda!335 () Int)

(assert (=> bs!28782 (= (= (t!30474 l!412) l!412) (= lambda!335 lambda!293))))

(declare-fun bs!28784 () Bool)

(assert (= bs!28784 (and b!1012241 b!1012198)))

(assert (=> bs!28784 (= (= (t!30474 l!412) (Cons!21461 lt!447373 lt!447383)) (= lambda!335 lambda!314))))

(declare-fun bs!28786 () Bool)

(assert (= bs!28786 (and b!1012241 b!1012197)))

(assert (=> bs!28786 (= (= (t!30474 l!412) (Cons!21461 lt!447376 lt!447372)) (= lambda!335 lambda!318))))

(declare-fun bs!28788 () Bool)

(assert (= bs!28788 (and b!1012241 d!120223)))

(assert (=> bs!28788 (= lambda!335 lambda!319)))

(assert (=> b!1012241 true))

(assert (=> b!1012241 true))

(declare-fun bs!28795 () Bool)

(declare-fun d!120237 () Bool)

(assert (= bs!28795 (and d!120237 b!1012198)))

(declare-fun lambda!337 () Int)

(assert (=> bs!28795 (= (= (Cons!21461 (h!22659 l!412) (t!30474 l!412)) (Cons!21461 lt!447373 lt!447383)) (= lambda!337 lambda!314))))

(declare-fun bs!28796 () Bool)

(assert (= bs!28796 (and d!120237 d!120223)))

(assert (=> bs!28796 (= (= (Cons!21461 (h!22659 l!412) (t!30474 l!412)) (t!30474 l!412)) (= lambda!337 lambda!319))))

(declare-fun bs!28797 () Bool)

(assert (= bs!28797 (and d!120237 b!1012241)))

(assert (=> bs!28797 (= (= (Cons!21461 (h!22659 l!412) (t!30474 l!412)) (t!30474 l!412)) (= lambda!337 lambda!335))))

(declare-fun bs!28798 () Bool)

(assert (= bs!28798 (and d!120237 b!1012103)))

(assert (=> bs!28798 (= (= (Cons!21461 (h!22659 l!412) (t!30474 l!412)) l!412) (= lambda!337 lambda!293))))

(declare-fun bs!28800 () Bool)

(assert (= bs!28800 (and d!120237 b!1012197)))

(assert (=> bs!28800 (= (= (Cons!21461 (h!22659 l!412) (t!30474 l!412)) (Cons!21461 lt!447376 lt!447372)) (= lambda!337 lambda!318))))

(assert (=> d!120237 true))

(assert (=> d!120237 true))

(assert (=> d!120237 true))

(assert (=> d!120237 (forall!211 lt!447305 lambda!337)))

(declare-fun lt!447423 () Unit!33006)

(declare-fun choose!1633 (List!21465 List!21464 B!1332 tuple2!15136) Unit!33006)

(assert (=> d!120237 (= lt!447423 (choose!1633 (t!30474 l!412) lt!447305 value!115 (h!22659 l!412)))))

(declare-fun e!569458 () Bool)

