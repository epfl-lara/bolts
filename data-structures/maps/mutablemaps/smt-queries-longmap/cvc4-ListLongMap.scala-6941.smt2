; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87434 () Bool)

(assert start!87434)

(declare-fun b!1012585 () Bool)

(declare-fun res!680161 () Bool)

(declare-fun e!569666 () Bool)

(assert (=> b!1012585 (=> (not res!680161) (not e!569666))))

(declare-datatypes ((B!1356 0))(
  ( (B!1357 (val!11762 Int)) )
))
(declare-datatypes ((tuple2!15160 0))(
  ( (tuple2!15161 (_1!7590 (_ BitVec 64)) (_2!7590 B!1356)) )
))
(declare-datatypes ((List!21485 0))(
  ( (Nil!21482) (Cons!21481 (h!22679 tuple2!15160) (t!30494 List!21485)) )
))
(declare-fun l!412 () List!21485)

(declare-fun value!115 () B!1356)

(assert (=> b!1012585 (= res!680161 (and (not (= (_2!7590 (h!22679 l!412)) value!115)) (is-Cons!21481 l!412)))))

(declare-fun res!680159 () Bool)

(assert (=> start!87434 (=> (not res!680159) (not e!569666))))

(declare-fun isStrictlySorted!538 (List!21485) Bool)

(assert (=> start!87434 (= res!680159 (isStrictlySorted!538 l!412))))

(assert (=> start!87434 e!569666))

(declare-fun e!569665 () Bool)

(assert (=> start!87434 e!569665))

(declare-fun tp_is_empty!23423 () Bool)

(assert (=> start!87434 tp_is_empty!23423))

(declare-fun b!1012586 () Bool)

(declare-fun res!680160 () Bool)

(assert (=> b!1012586 (=> (not res!680160) (not e!569666))))

(declare-datatypes ((List!21486 0))(
  ( (Nil!21483) (Cons!21482 (h!22680 (_ BitVec 64)) (t!30495 List!21486)) )
))
(declare-fun isEmpty!801 (List!21486) Bool)

(declare-fun getKeysOf!24 (List!21485 B!1356) List!21486)

(assert (=> b!1012586 (= res!680160 (not (isEmpty!801 (getKeysOf!24 (t!30494 l!412) value!115))))))

(declare-fun b!1012587 () Bool)

(assert (=> b!1012587 (= e!569666 (not (isStrictlySorted!538 (t!30494 l!412))))))

(declare-fun b!1012588 () Bool)

(declare-fun tp!70326 () Bool)

(assert (=> b!1012588 (= e!569665 (and tp_is_empty!23423 tp!70326))))

(assert (= (and start!87434 res!680159) b!1012585))

(assert (= (and b!1012585 res!680161) b!1012586))

(assert (= (and b!1012586 res!680160) b!1012587))

(assert (= (and start!87434 (is-Cons!21481 l!412)) b!1012588))

(declare-fun m!936181 () Bool)

(assert (=> start!87434 m!936181))

(declare-fun m!936183 () Bool)

(assert (=> b!1012586 m!936183))

(assert (=> b!1012586 m!936183))

(declare-fun m!936185 () Bool)

(assert (=> b!1012586 m!936185))

(declare-fun m!936187 () Bool)

(assert (=> b!1012587 m!936187))

(push 1)

(assert (not b!1012586))

(assert tp_is_empty!23423)

(assert (not b!1012587))

(assert (not start!87434))

(assert (not b!1012588))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120297 () Bool)

(assert (=> d!120297 (= (isEmpty!801 (getKeysOf!24 (t!30494 l!412) value!115)) (is-Nil!21483 (getKeysOf!24 (t!30494 l!412) value!115)))))

(assert (=> b!1012586 d!120297))

(declare-fun b!1012653 () Bool)

(assert (=> b!1012653 true))

(assert (=> b!1012653 true))

(assert (=> b!1012653 true))

(declare-fun bs!28830 () Bool)

(declare-fun b!1012657 () Bool)

(assert (= bs!28830 (and b!1012657 b!1012653)))

(declare-fun lambda!397 () Int)

(declare-fun lt!447653 () tuple2!15160)

(declare-fun lt!447661 () List!21485)

(declare-fun lt!447657 () tuple2!15160)

(declare-fun lt!447652 () List!21485)

(declare-fun lambda!394 () Int)

(assert (=> bs!28830 (= (= (Cons!21481 lt!447653 lt!447661) (Cons!21481 lt!447657 lt!447652)) (= lambda!397 lambda!394))))

(assert (=> b!1012657 true))

(assert (=> b!1012657 true))

(assert (=> b!1012657 true))

(declare-fun bs!28834 () Bool)

(declare-fun d!120299 () Bool)

(assert (= bs!28834 (and d!120299 b!1012653)))

(declare-fun lambda!400 () Int)

(assert (=> bs!28834 (= (= (t!30494 l!412) (Cons!21481 lt!447657 lt!447652)) (= lambda!400 lambda!394))))

(declare-fun bs!28835 () Bool)

(assert (= bs!28835 (and d!120299 b!1012657)))

(assert (=> bs!28835 (= (= (t!30494 l!412) (Cons!21481 lt!447653 lt!447661)) (= lambda!400 lambda!397))))

(assert (=> d!120299 true))

(assert (=> d!120299 true))

(declare-fun call!42582 () Bool)

(assert (=> b!1012653 call!42582))

(declare-datatypes ((Unit!33038 0))(
  ( (Unit!33039) )
))
(declare-fun lt!447662 () Unit!33038)

(declare-fun call!42583 () Unit!33038)

(assert (=> b!1012653 (= lt!447662 call!42583)))

(assert (=> b!1012653 (= lt!447657 (h!22679 (t!30494 l!412)))))

(declare-fun lt!447659 () List!21486)

(declare-fun call!42584 () List!21486)

(assert (=> b!1012653 (= lt!447659 call!42584)))

(assert (=> b!1012653 (= lt!447652 (t!30494 (t!30494 l!412)))))

(declare-fun e!569706 () Unit!33038)

(assert (=> b!1012653 (= e!569706 lt!447662)))

(declare-fun bm!42579 () Bool)

(assert (=> bm!42579 (= call!42584 (getKeysOf!24 (t!30494 (t!30494 l!412)) value!115))))

(declare-fun bm!42580 () Bool)

(declare-fun call!42585 () Bool)

(assert (=> bm!42580 (= call!42585 (isEmpty!801 call!42584))))

(declare-fun c!102295 () Bool)

(declare-fun bm!42581 () Bool)

(declare-fun lt!447656 () List!21486)

(declare-fun forall!220 (List!21486 Int) Bool)

(assert (=> bm!42581 (= call!42582 (forall!220 (ite c!102295 lt!447659 lt!447656) (ite c!102295 lambda!394 lambda!397)))))

(declare-fun b!1012655 () Bool)

(declare-fun lt!447663 () Unit!33038)

(declare-fun e!569703 () Unit!33038)

(assert (=> b!1012655 (= lt!447663 e!569703)))

(declare-fun c!102296 () Bool)

(assert (=> b!1012655 (= c!102296 (not call!42585))))

(declare-fun lt!447658 () List!21486)

(assert (=> b!1012655 (= lt!447658 call!42584)))

(declare-fun e!569705 () List!21486)

(assert (=> b!1012655 (= e!569705 call!42584)))

(declare-fun b!1012656 () Bool)

(declare-fun Unit!33043 () Unit!33038)

(assert (=> b!1012656 (= e!569703 Unit!33043)))

(declare-fun lt!447655 () Unit!33038)

(assert (=> b!1012657 (= e!569703 lt!447655)))

(assert (=> b!1012657 (= lt!447661 (t!30494 (t!30494 l!412)))))

(assert (=> b!1012657 (= lt!447656 call!42584)))

(assert (=> b!1012657 (= lt!447653 (h!22679 (t!30494 l!412)))))

(assert (=> b!1012657 (= lt!447655 call!42583)))

(assert (=> b!1012657 call!42582))

(declare-fun b!1012658 () Bool)

(declare-fun e!569704 () List!21486)

(assert (=> b!1012658 (= e!569704 (Cons!21482 (_1!7590 (h!22679 (t!30494 l!412))) call!42584))))

(declare-fun c!102294 () Bool)

(assert (=> b!1012658 (= c!102294 (not call!42585))))

(declare-fun lt!447660 () Unit!33038)

(assert (=> b!1012658 (= lt!447660 e!569706)))

(declare-fun bm!42582 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!18 (List!21485 List!21486 B!1356 tuple2!15160) Unit!33038)

(assert (=> bm!42582 (= call!42583 (lemmaForallGetValueByKeySameWithASmallerHead!18 (ite c!102295 lt!447652 lt!447661) (ite c!102295 lt!447659 lt!447656) value!115 (ite c!102295 lt!447657 lt!447653)))))

(declare-fun b!1012659 () Bool)

(declare-fun Unit!33047 () Unit!33038)

(assert (=> b!1012659 (= e!569706 Unit!33047)))

(declare-fun b!1012660 () Bool)

(assert (=> b!1012660 (= e!569704 e!569705)))

(declare-fun c!102293 () Bool)

(assert (=> b!1012660 (= c!102293 (and (is-Cons!21481 (t!30494 l!412)) (not (= (_2!7590 (h!22679 (t!30494 l!412))) value!115))))))

(declare-fun b!1012654 () Bool)

(assert (=> b!1012654 (= e!569705 Nil!21483)))

(declare-fun lt!447654 () List!21486)

(assert (=> d!120299 (forall!220 lt!447654 lambda!400)))

(assert (=> d!120299 (= lt!447654 e!569704)))

(assert (=> d!120299 (= c!102295 (and (is-Cons!21481 (t!30494 l!412)) (= (_2!7590 (h!22679 (t!30494 l!412))) value!115)))))

(assert (=> d!120299 (isStrictlySorted!538 (t!30494 l!412))))

(assert (=> d!120299 (= (getKeysOf!24 (t!30494 l!412) value!115) lt!447654)))

(assert (= (and d!120299 c!102295) b!1012658))

(assert (= (and d!120299 (not c!102295)) b!1012660))

(assert (= (and b!1012658 c!102294) b!1012653))

(assert (= (and b!1012658 (not c!102294)) b!1012659))

(assert (= (and b!1012660 c!102293) b!1012655))

(assert (= (and b!1012660 (not c!102293)) b!1012654))

(assert (= (and b!1012655 c!102296) b!1012657))

(assert (= (and b!1012655 (not c!102296)) b!1012656))

(assert (= (or b!1012653 b!1012657) bm!42582))

(assert (= (or b!1012653 b!1012657) bm!42581))

(assert (= (or b!1012658 b!1012653 b!1012655 b!1012657) bm!42579))

(assert (= (or b!1012658 b!1012655) bm!42580))

(declare-fun m!936201 () Bool)

(assert (=> bm!42581 m!936201))

(declare-fun m!936203 () Bool)

(assert (=> d!120299 m!936203))

(assert (=> d!120299 m!936187))

(declare-fun m!936205 () Bool)

(assert (=> bm!42580 m!936205))

(declare-fun m!936207 () Bool)

(assert (=> bm!42579 m!936207))

(declare-fun m!936209 () Bool)

(assert (=> bm!42582 m!936209))

(assert (=> b!1012586 d!120299))

(declare-fun d!120309 () Bool)

