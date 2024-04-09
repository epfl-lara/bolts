; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87412 () Bool)

(assert start!87412)

(declare-fun res!680097 () Bool)

(declare-fun e!569566 () Bool)

(assert (=> start!87412 (=> (not res!680097) (not e!569566))))

(declare-datatypes ((B!1346 0))(
  ( (B!1347 (val!11757 Int)) )
))
(declare-datatypes ((tuple2!15150 0))(
  ( (tuple2!15151 (_1!7585 (_ BitVec 64)) (_2!7585 B!1346)) )
))
(declare-datatypes ((List!21475 0))(
  ( (Nil!21472) (Cons!21471 (h!22669 tuple2!15150) (t!30484 List!21475)) )
))
(declare-fun l!412 () List!21475)

(declare-fun isStrictlySorted!533 (List!21475) Bool)

(assert (=> start!87412 (= res!680097 (isStrictlySorted!533 l!412))))

(assert (=> start!87412 e!569566))

(declare-fun e!569567 () Bool)

(assert (=> start!87412 e!569567))

(declare-fun tp_is_empty!23413 () Bool)

(assert (=> start!87412 tp_is_empty!23413))

(declare-fun b!1012403 () Bool)

(declare-fun res!680098 () Bool)

(assert (=> b!1012403 (=> (not res!680098) (not e!569566))))

(declare-fun value!115 () B!1346)

(assert (=> b!1012403 (= res!680098 (and (not (= (_2!7585 (h!22669 l!412)) value!115)) (is-Cons!21471 l!412)))))

(declare-fun b!1012404 () Bool)

(assert (=> b!1012404 (= e!569566 (not (isStrictlySorted!533 (t!30484 l!412))))))

(declare-datatypes ((List!21476 0))(
  ( (Nil!21473) (Cons!21472 (h!22670 (_ BitVec 64)) (t!30485 List!21476)) )
))
(declare-fun lt!447453 () List!21476)

(declare-fun getKeysOf!19 (List!21475 B!1346) List!21476)

(assert (=> b!1012404 (= lt!447453 (getKeysOf!19 (t!30484 l!412) value!115))))

(declare-fun b!1012405 () Bool)

(declare-fun tp!70302 () Bool)

(assert (=> b!1012405 (= e!569567 (and tp_is_empty!23413 tp!70302))))

(assert (= (and start!87412 res!680097) b!1012403))

(assert (= (and b!1012403 res!680098) b!1012404))

(assert (= (and start!87412 (is-Cons!21471 l!412)) b!1012405))

(declare-fun m!936111 () Bool)

(assert (=> start!87412 m!936111))

(declare-fun m!936113 () Bool)

(assert (=> b!1012404 m!936113))

(declare-fun m!936115 () Bool)

(assert (=> b!1012404 m!936115))

(push 1)

(assert (not start!87412))

(assert (not b!1012404))

(assert (not b!1012405))

(assert tp_is_empty!23413)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120275 () Bool)

(declare-fun res!680127 () Bool)

(declare-fun e!569596 () Bool)

(assert (=> d!120275 (=> res!680127 e!569596)))

(assert (=> d!120275 (= res!680127 (or (is-Nil!21472 l!412) (is-Nil!21472 (t!30484 l!412))))))

(assert (=> d!120275 (= (isStrictlySorted!533 l!412) e!569596)))

(declare-fun b!1012440 () Bool)

(declare-fun e!569597 () Bool)

(assert (=> b!1012440 (= e!569596 e!569597)))

(declare-fun res!680128 () Bool)

(assert (=> b!1012440 (=> (not res!680128) (not e!569597))))

(assert (=> b!1012440 (= res!680128 (bvslt (_1!7585 (h!22669 l!412)) (_1!7585 (h!22669 (t!30484 l!412)))))))

(declare-fun b!1012441 () Bool)

(assert (=> b!1012441 (= e!569597 (isStrictlySorted!533 (t!30484 l!412)))))

(assert (= (and d!120275 (not res!680127)) b!1012440))

(assert (= (and b!1012440 res!680128) b!1012441))

(assert (=> b!1012441 m!936113))

(assert (=> start!87412 d!120275))

(declare-fun d!120281 () Bool)

(declare-fun res!680131 () Bool)

(declare-fun e!569600 () Bool)

(assert (=> d!120281 (=> res!680131 e!569600)))

(assert (=> d!120281 (= res!680131 (or (is-Nil!21472 (t!30484 l!412)) (is-Nil!21472 (t!30484 (t!30484 l!412)))))))

(assert (=> d!120281 (= (isStrictlySorted!533 (t!30484 l!412)) e!569600)))

(declare-fun b!1012444 () Bool)

(declare-fun e!569601 () Bool)

(assert (=> b!1012444 (= e!569600 e!569601)))

(declare-fun res!680132 () Bool)

(assert (=> b!1012444 (=> (not res!680132) (not e!569601))))

(assert (=> b!1012444 (= res!680132 (bvslt (_1!7585 (h!22669 (t!30484 l!412))) (_1!7585 (h!22669 (t!30484 (t!30484 l!412))))))))

(declare-fun b!1012445 () Bool)

(assert (=> b!1012445 (= e!569601 (isStrictlySorted!533 (t!30484 (t!30484 l!412))))))

(assert (= (and d!120281 (not res!680131)) b!1012444))

(assert (= (and b!1012444 res!680132) b!1012445))

(declare-fun m!936133 () Bool)

(assert (=> b!1012445 m!936133))

(assert (=> b!1012404 d!120281))

(declare-fun b!1012515 () Bool)

(assert (=> b!1012515 true))

(assert (=> b!1012515 true))

(assert (=> b!1012515 true))

(declare-fun bs!28817 () Bool)

(declare-fun b!1012510 () Bool)

(assert (= bs!28817 (and b!1012510 b!1012515)))

(declare-fun lambda!369 () Int)

(declare-fun lambda!368 () Int)

(declare-fun lt!447533 () tuple2!15150)

(declare-fun lt!447541 () List!21475)

(declare-fun lt!447559 () List!21475)

(declare-fun lt!447565 () tuple2!15150)

(assert (=> bs!28817 (= (= (Cons!21471 lt!447533 lt!447559) (Cons!21471 lt!447565 lt!447541)) (= lambda!369 lambda!368))))

(assert (=> b!1012510 true))

(assert (=> b!1012510 true))

(assert (=> b!1012510 true))

(declare-fun bs!28820 () Bool)

(declare-fun d!120285 () Bool)

(assert (= bs!28820 (and d!120285 b!1012515)))

(declare-fun lambda!372 () Int)

(assert (=> bs!28820 (= (= (t!30484 l!412) (Cons!21471 lt!447565 lt!447541)) (= lambda!372 lambda!368))))

(declare-fun bs!28823 () Bool)

(assert (= bs!28823 (and d!120285 b!1012510)))

(assert (=> bs!28823 (= (= (t!30484 l!412) (Cons!21471 lt!447533 lt!447559)) (= lambda!372 lambda!369))))

(assert (=> d!120285 true))

(assert (=> d!120285 true))

(declare-datatypes ((Unit!33027 0))(
  ( (Unit!33028) )
))
(declare-fun e!569626 () Unit!33027)

(declare-fun lt!447561 () Unit!33027)

(assert (=> b!1012510 (= e!569626 lt!447561)))

(assert (=> b!1012510 (= lt!447559 (t!30484 (t!30484 l!412)))))

(declare-fun lt!447566 () List!21476)

(declare-fun call!42551 () List!21476)

(assert (=> b!1012510 (= lt!447566 call!42551)))

(assert (=> b!1012510 (= lt!447533 (h!22669 (t!30484 l!412)))))

(declare-fun call!42552 () Unit!33027)

(assert (=> b!1012510 (= lt!447561 call!42552)))

(declare-fun call!42553 () Bool)

(assert (=> b!1012510 call!42553))

(declare-fun lt!447564 () List!21476)

(declare-fun bm!42547 () Bool)

(declare-fun c!102263 () Bool)

(declare-fun forall!216 (List!21476 Int) Bool)

(assert (=> bm!42547 (= call!42553 (forall!216 (ite c!102263 lt!447564 lt!447566) (ite c!102263 lambda!368 lambda!369)))))

(declare-fun b!1012511 () Bool)

(declare-fun e!569637 () List!21476)

(declare-fun e!569635 () List!21476)

(assert (=> b!1012511 (= e!569637 e!569635)))

(declare-fun c!102254 () Bool)

(assert (=> b!1012511 (= c!102254 (and (is-Cons!21471 (t!30484 l!412)) (not (= (_2!7585 (h!22669 (t!30484 l!412))) value!115))))))

(declare-fun bm!42548 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!14 (List!21475 List!21476 B!1346 tuple2!15150) Unit!33027)

(assert (=> bm!42548 (= call!42552 (lemmaForallGetValueByKeySameWithASmallerHead!14 (ite c!102263 lt!447541 lt!447559) (ite c!102263 lt!447564 lt!447566) value!115 (ite c!102263 lt!447565 lt!447533)))))

(declare-fun b!1012512 () Bool)

(declare-fun e!569636 () Unit!33027)

(declare-fun Unit!33032 () Unit!33027)

(assert (=> b!1012512 (= e!569636 Unit!33032)))

(declare-fun lt!447560 () List!21476)

(assert (=> d!120285 (forall!216 lt!447560 lambda!372)))

(assert (=> d!120285 (= lt!447560 e!569637)))

(assert (=> d!120285 (= c!102263 (and (is-Cons!21471 (t!30484 l!412)) (= (_2!7585 (h!22669 (t!30484 l!412))) value!115)))))

(assert (=> d!120285 (isStrictlySorted!533 (t!30484 l!412))))

(assert (=> d!120285 (= (getKeysOf!19 (t!30484 l!412) value!115) lt!447560)))

(declare-fun bm!42549 () Bool)

(assert (=> bm!42549 (= call!42551 (getKeysOf!19 (t!30484 (t!30484 l!412)) value!115))))

(declare-fun b!1012513 () Bool)

(assert (=> b!1012513 (= e!569637 (Cons!21472 (_1!7585 (h!22669 (t!30484 l!412))) call!42551))))

(declare-fun c!102262 () Bool)

(declare-fun call!42550 () Bool)

(assert (=> b!1012513 (= c!102262 (not call!42550))))

(declare-fun lt!447543 () Unit!33027)

(assert (=> b!1012513 (= lt!447543 e!569636)))

(declare-fun b!1012514 () Bool)

(declare-fun lt!447563 () Unit!33027)

(assert (=> b!1012514 (= lt!447563 e!569626)))

(declare-fun c!102264 () Bool)

(assert (=> b!1012514 (= c!102264 (not call!42550))))

(declare-fun lt!447567 () List!21476)

(assert (=> b!1012514 (= lt!447567 call!42551)))

(assert (=> b!1012514 (= e!569635 call!42551)))

(assert (=> b!1012515 call!42553))

(declare-fun lt!447562 () Unit!33027)

(assert (=> b!1012515 (= lt!447562 call!42552)))

(assert (=> b!1012515 (= lt!447565 (h!22669 (t!30484 l!412)))))

(assert (=> b!1012515 (= lt!447564 call!42551)))

(assert (=> b!1012515 (= lt!447541 (t!30484 (t!30484 l!412)))))

(assert (=> b!1012515 (= e!569636 lt!447562)))

(declare-fun b!1012516 () Bool)

(assert (=> b!1012516 (= e!569635 Nil!21473)))

(declare-fun bm!42550 () Bool)

(declare-fun isEmpty!797 (List!21476) Bool)

(assert (=> bm!42550 (= call!42550 (isEmpty!797 call!42551))))

(declare-fun b!1012517 () Bool)

(declare-fun Unit!33035 () Unit!33027)

(assert (=> b!1012517 (= e!569626 Unit!33035)))

(assert (= (and d!120285 c!102263) b!1012513))

(assert (= (and d!120285 (not c!102263)) b!1012511))

(assert (= (and b!1012513 c!102262) b!1012515))

(assert (= (and b!1012513 (not c!102262)) b!1012512))

(assert (= (and b!1012511 c!102254) b!1012514))

(assert (= (and b!1012511 (not c!102254)) b!1012516))

(assert (= (and b!1012514 c!102264) b!1012510))

(assert (= (and b!1012514 (not c!102264)) b!1012517))

(assert (= (or b!1012515 b!1012510) bm!42548))

(assert (= (or b!1012515 b!1012510) bm!42547))

(assert (= (or b!1012513 b!1012515 b!1012510 b!1012514) bm!42549))

(assert (= (or b!1012513 b!1012514) bm!42550))

(declare-fun m!936135 () Bool)

(assert (=> d!120285 m!936135))

(assert (=> d!120285 m!936113))

(declare-fun m!936143 () Bool)

(assert (=> bm!42547 m!936143))

(declare-fun m!936145 () Bool)

(assert (=> bm!42550 m!936145))

(declare-fun m!936149 () Bool)

(assert (=> bm!42549 m!936149))

(declare-fun m!936159 () Bool)

(assert (=> bm!42548 m!936159))

(assert (=> b!1012404 d!120285))

(declare-fun b!1012550 () Bool)

(declare-fun e!569646 () Bool)

(declare-fun tp!70315 () Bool)

(assert (=> b!1012550 (= e!569646 (and tp_is_empty!23413 tp!70315))))

(assert (=> b!1012405 (= tp!70302 e!569646)))

(assert (= (and b!1012405 (is-Cons!21471 (t!30484 l!412))) b!1012550))

(push 1)

