; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87580 () Bool)

(assert start!87580)

(declare-fun b!1013451 () Bool)

(assert (=> b!1013451 true))

(assert (=> b!1013451 true))

(declare-fun b!1013446 () Bool)

(declare-fun e!570143 () Bool)

(declare-fun tp_is_empty!23473 () Bool)

(declare-fun tp!70446 () Bool)

(assert (=> b!1013446 (= e!570143 (and tp_is_empty!23473 tp!70446))))

(declare-fun res!680475 () Bool)

(declare-fun e!570146 () Bool)

(assert (=> start!87580 (=> (not res!680475) (not e!570146))))

(declare-datatypes ((B!1406 0))(
  ( (B!1407 (val!11787 Int)) )
))
(declare-datatypes ((tuple2!15210 0))(
  ( (tuple2!15211 (_1!7615 (_ BitVec 64)) (_2!7615 B!1406)) )
))
(declare-datatypes ((List!21523 0))(
  ( (Nil!21520) (Cons!21519 (h!22717 tuple2!15210) (t!30532 List!21523)) )
))
(declare-fun l!412 () List!21523)

(declare-fun isStrictlySorted!557 (List!21523) Bool)

(assert (=> start!87580 (= res!680475 (isStrictlySorted!557 l!412))))

(assert (=> start!87580 e!570146))

(assert (=> start!87580 e!570143))

(assert (=> start!87580 tp_is_empty!23473))

(declare-fun b!1013447 () Bool)

(declare-fun res!680478 () Bool)

(assert (=> b!1013447 (=> (not res!680478) (not e!570146))))

(declare-fun value!115 () B!1406)

(assert (=> b!1013447 (= res!680478 (and (is-Cons!21519 l!412) (= (_2!7615 (h!22717 l!412)) value!115)))))

(declare-fun b!1013448 () Bool)

(declare-fun res!680474 () Bool)

(declare-fun e!570144 () Bool)

(assert (=> b!1013448 (=> res!680474 e!570144)))

(declare-fun isEmpty!819 (List!21523) Bool)

(assert (=> b!1013448 (= res!680474 (isEmpty!819 (t!30532 l!412)))))

(declare-fun b!1013449 () Bool)

(declare-fun head!930 (List!21523) tuple2!15210)

(assert (=> b!1013449 (= e!570144 (bvsge (_1!7615 (h!22717 l!412)) (_1!7615 (head!930 (t!30532 l!412)))))))

(declare-fun b!1013450 () Bool)

(declare-fun e!570145 () Bool)

(assert (=> b!1013450 (= e!570146 e!570145)))

(declare-fun res!680479 () Bool)

(assert (=> b!1013450 (=> (not res!680479) (not e!570145))))

(declare-datatypes ((List!21524 0))(
  ( (Nil!21521) (Cons!21520 (h!22718 (_ BitVec 64)) (t!30533 List!21524)) )
))
(declare-fun lt!447999 () List!21524)

(declare-fun isEmpty!820 (List!21524) Bool)

(assert (=> b!1013450 (= res!680479 (not (isEmpty!820 lt!447999)))))

(declare-fun getKeysOf!37 (List!21523 B!1406) List!21524)

(assert (=> b!1013450 (= lt!447999 (getKeysOf!37 (t!30532 l!412) value!115))))

(declare-fun res!680476 () Bool)

(assert (=> b!1013451 (=> res!680476 e!570144)))

(declare-fun lambda!509 () Int)

(declare-fun forall!233 (List!21524 Int) Bool)

(assert (=> b!1013451 (= res!680476 (not (forall!233 lt!447999 lambda!509)))))

(declare-fun b!1013452 () Bool)

(assert (=> b!1013452 (= e!570145 e!570144)))

(declare-fun res!680477 () Bool)

(assert (=> b!1013452 (=> res!680477 e!570144)))

(assert (=> b!1013452 (= res!680477 (not (isStrictlySorted!557 (t!30532 l!412))))))

(assert (= (and start!87580 res!680475) b!1013447))

(assert (= (and b!1013447 res!680478) b!1013450))

(assert (= (and b!1013450 res!680479) b!1013452))

(assert (= (and b!1013452 (not res!680477)) b!1013448))

(assert (= (and b!1013448 (not res!680474)) b!1013451))

(assert (= (and b!1013451 (not res!680476)) b!1013449))

(assert (= (and start!87580 (is-Cons!21519 l!412)) b!1013446))

(declare-fun m!936543 () Bool)

(assert (=> b!1013449 m!936543))

(declare-fun m!936545 () Bool)

(assert (=> b!1013452 m!936545))

(declare-fun m!936547 () Bool)

(assert (=> b!1013448 m!936547))

(declare-fun m!936549 () Bool)

(assert (=> b!1013451 m!936549))

(declare-fun m!936551 () Bool)

(assert (=> start!87580 m!936551))

(declare-fun m!936553 () Bool)

(assert (=> b!1013450 m!936553))

(declare-fun m!936555 () Bool)

(assert (=> b!1013450 m!936555))

(push 1)

(assert (not b!1013448))

(assert (not b!1013449))

(assert tp_is_empty!23473)

(assert (not b!1013451))

(assert (not b!1013452))

(assert (not b!1013446))

(assert (not start!87580))

(assert (not b!1013450))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120447 () Bool)

(assert (=> d!120447 (= (isEmpty!820 lt!447999) (is-Nil!21521 lt!447999))))

(assert (=> b!1013450 d!120447))

(declare-fun bs!28922 () Bool)

(declare-fun b!1013582 () Bool)

(assert (= bs!28922 (and b!1013582 b!1013451)))

(declare-fun lt!448082 () List!21523)

(declare-fun lt!448083 () tuple2!15210)

(declare-fun lambda!534 () Int)

(assert (=> bs!28922 (= (= (Cons!21519 lt!448083 lt!448082) (t!30532 l!412)) (= lambda!534 lambda!509))))

(assert (=> b!1013582 true))

(assert (=> b!1013582 true))

(assert (=> b!1013582 true))

(declare-fun bs!28923 () Bool)

(declare-fun b!1013585 () Bool)

(assert (= bs!28923 (and b!1013585 b!1013451)))

(declare-fun lt!448078 () tuple2!15210)

(declare-fun lambda!535 () Int)

(declare-fun lt!448079 () List!21523)

(assert (=> bs!28923 (= (= (Cons!21519 lt!448078 lt!448079) (t!30532 l!412)) (= lambda!535 lambda!509))))

(declare-fun bs!28924 () Bool)

(assert (= bs!28924 (and b!1013585 b!1013582)))

(assert (=> bs!28924 (= (= (Cons!21519 lt!448078 lt!448079) (Cons!21519 lt!448083 lt!448082)) (= lambda!535 lambda!534))))

(assert (=> b!1013585 true))

(assert (=> b!1013585 true))

(assert (=> b!1013585 true))

(declare-fun bs!28925 () Bool)

(declare-fun d!120451 () Bool)

(assert (= bs!28925 (and d!120451 b!1013451)))

(declare-fun lambda!537 () Int)

(assert (=> bs!28925 (= lambda!537 lambda!509)))

(declare-fun bs!28926 () Bool)

(assert (= bs!28926 (and d!120451 b!1013582)))

(assert (=> bs!28926 (= (= (t!30532 l!412) (Cons!21519 lt!448083 lt!448082)) (= lambda!537 lambda!534))))

(declare-fun bs!28928 () Bool)

(assert (= bs!28928 (and d!120451 b!1013585)))

(assert (=> bs!28928 (= (= (t!30532 l!412) (Cons!21519 lt!448078 lt!448079)) (= lambda!537 lambda!535))))

(assert (=> d!120451 true))

(assert (=> d!120451 true))

(declare-fun b!1013581 () Bool)

(declare-fun e!570223 () List!21524)

(assert (=> b!1013581 (= e!570223 Nil!21521)))

(declare-fun call!42686 () Bool)

(declare-fun c!102451 () Bool)

(declare-fun bm!42683 () Bool)

(declare-fun lt!448084 () List!21524)

(declare-fun lt!448086 () List!21524)

(assert (=> bm!42683 (= call!42686 (forall!233 (ite c!102451 lt!448084 lt!448086) (ite c!102451 lambda!534 lambda!535)))))

(assert (=> b!1013582 call!42686))

(declare-datatypes ((Unit!33084 0))(
  ( (Unit!33085) )
))
(declare-fun lt!448087 () Unit!33084)

(declare-fun call!42687 () Unit!33084)

(assert (=> b!1013582 (= lt!448087 call!42687)))

(assert (=> b!1013582 (= lt!448083 (h!22717 (t!30532 l!412)))))

(declare-fun call!42689 () List!21524)

(assert (=> b!1013582 (= lt!448084 call!42689)))

(assert (=> b!1013582 (= lt!448082 (t!30532 (t!30532 l!412)))))

(declare-fun e!570224 () Unit!33084)

(assert (=> b!1013582 (= e!570224 lt!448087)))

(declare-fun b!1013583 () Bool)

(declare-fun Unit!33086 () Unit!33084)

(assert (=> b!1013583 (= e!570224 Unit!33086)))

(declare-fun b!1013584 () Bool)

(declare-fun e!570222 () List!21524)

(assert (=> b!1013584 (= e!570222 (Cons!21520 (_1!7615 (h!22717 (t!30532 l!412))) call!42689))))

(declare-fun c!102450 () Bool)

(declare-fun call!42688 () Bool)

(assert (=> b!1013584 (= c!102450 (not call!42688))))

(declare-fun lt!448081 () Unit!33084)

(assert (=> b!1013584 (= lt!448081 e!570224)))

(declare-fun bm!42684 () Bool)

(assert (=> bm!42684 (= call!42689 (getKeysOf!37 (t!30532 (t!30532 l!412)) value!115))))

(declare-fun bm!42685 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!28 (List!21523 List!21524 B!1406 tuple2!15210) Unit!33084)

(assert (=> bm!42685 (= call!42687 (lemmaForallGetValueByKeySameWithASmallerHead!28 (ite c!102451 lt!448082 lt!448079) (ite c!102451 lt!448084 lt!448086) value!115 (ite c!102451 lt!448083 lt!448078)))))

(declare-fun b!1013586 () Bool)

(assert (=> b!1013586 (= e!570222 e!570223)))

(declare-fun c!102448 () Bool)

(assert (=> b!1013586 (= c!102448 (and (is-Cons!21519 (t!30532 l!412)) (not (= (_2!7615 (h!22717 (t!30532 l!412))) value!115))))))

(declare-fun b!1013587 () Bool)

(declare-fun lt!448089 () Unit!33084)

(declare-fun e!570221 () Unit!33084)

(assert (=> b!1013587 (= lt!448089 e!570221)))

(declare-fun c!102449 () Bool)

(assert (=> b!1013587 (= c!102449 (not call!42688))))

(declare-fun lt!448088 () List!21524)

(assert (=> b!1013587 (= lt!448088 call!42689)))

(assert (=> b!1013587 (= e!570223 call!42689)))

(declare-fun bm!42686 () Bool)

(assert (=> bm!42686 (= call!42688 (isEmpty!820 call!42689))))

(declare-fun b!1013588 () Bool)

(declare-fun Unit!33093 () Unit!33084)

(assert (=> b!1013588 (= e!570221 Unit!33093)))

(declare-fun lt!448085 () List!21524)

(assert (=> d!120451 (forall!233 lt!448085 lambda!537)))

(assert (=> d!120451 (= lt!448085 e!570222)))

(assert (=> d!120451 (= c!102451 (and (is-Cons!21519 (t!30532 l!412)) (= (_2!7615 (h!22717 (t!30532 l!412))) value!115)))))

(assert (=> d!120451 (isStrictlySorted!557 (t!30532 l!412))))

(assert (=> d!120451 (= (getKeysOf!37 (t!30532 l!412) value!115) lt!448085)))

(declare-fun lt!448080 () Unit!33084)

(assert (=> b!1013585 (= e!570221 lt!448080)))

(assert (=> b!1013585 (= lt!448079 (t!30532 (t!30532 l!412)))))

(assert (=> b!1013585 (= lt!448086 call!42689)))

(assert (=> b!1013585 (= lt!448078 (h!22717 (t!30532 l!412)))))

(assert (=> b!1013585 (= lt!448080 call!42687)))

(assert (=> b!1013585 call!42686))

(assert (= (and d!120451 c!102451) b!1013584))

(assert (= (and d!120451 (not c!102451)) b!1013586))

(assert (= (and b!1013584 c!102450) b!1013582))

(assert (= (and b!1013584 (not c!102450)) b!1013583))

(assert (= (and b!1013586 c!102448) b!1013587))

(assert (= (and b!1013586 (not c!102448)) b!1013581))

(assert (= (and b!1013587 c!102449) b!1013585))

(assert (= (and b!1013587 (not c!102449)) b!1013588))

(assert (= (or b!1013582 b!1013585) bm!42685))

(assert (= (or b!1013582 b!1013585) bm!42683))

(assert (= (or b!1013584 b!1013582 b!1013585 b!1013587) bm!42684))

(assert (= (or b!1013584 b!1013587) bm!42686))

(declare-fun m!936597 () Bool)

(assert (=> bm!42683 m!936597))

(declare-fun m!936599 () Bool)

(assert (=> bm!42686 m!936599))

(declare-fun m!936601 () Bool)

(assert (=> bm!42684 m!936601))

(declare-fun m!936603 () Bool)

(assert (=> bm!42685 m!936603))

(declare-fun m!936605 () Bool)

(assert (=> d!120451 m!936605))

(assert (=> d!120451 m!936545))

(assert (=> b!1013450 d!120451))

(declare-fun d!120465 () Bool)

(assert (=> d!120465 (= (head!930 (t!30532 l!412)) (h!22717 (t!30532 l!412)))))

(assert (=> b!1013449 d!120465))

(declare-fun d!120467 () Bool)

(declare-fun res!680546 () Bool)

(declare-fun e!570240 () Bool)

(assert (=> d!120467 (=> res!680546 e!570240)))

(assert (=> d!120467 (= res!680546 (or (is-Nil!21520 l!412) (is-Nil!21520 (t!30532 l!412))))))

(assert (=> d!120467 (= (isStrictlySorted!557 l!412) e!570240)))

(declare-fun b!1013620 () Bool)

(declare-fun e!570241 () Bool)

(assert (=> b!1013620 (= e!570240 e!570241)))

(declare-fun res!680547 () Bool)

(assert (=> b!1013620 (=> (not res!680547) (not e!570241))))

(assert (=> b!1013620 (= res!680547 (bvslt (_1!7615 (h!22717 l!412)) (_1!7615 (h!22717 (t!30532 l!412)))))))

(declare-fun b!1013621 () Bool)

(assert (=> b!1013621 (= e!570241 (isStrictlySorted!557 (t!30532 l!412)))))

(assert (= (and d!120467 (not res!680546)) b!1013620))

(assert (= (and b!1013620 res!680547) b!1013621))

(assert (=> b!1013621 m!936545))

(assert (=> start!87580 d!120467))

(declare-fun d!120471 () Bool)

(assert (=> d!120471 (= (isEmpty!819 (t!30532 l!412)) (is-Nil!21520 (t!30532 l!412)))))

(assert (=> b!1013448 d!120471))

(declare-fun d!120475 () Bool)

(declare-fun res!680554 () Bool)

(declare-fun e!570251 () Bool)

(assert (=> d!120475 (=> res!680554 e!570251)))

(assert (=> d!120475 (= res!680554 (is-Nil!21521 lt!447999))))

(assert (=> d!120475 (= (forall!233 lt!447999 lambda!509) e!570251)))

(declare-fun b!1013633 () Bool)

(declare-fun e!570252 () Bool)

(assert (=> b!1013633 (= e!570251 e!570252)))

(declare-fun res!680555 () Bool)

(assert (=> b!1013633 (=> (not res!680555) (not e!570252))))

(declare-fun dynLambda!1888 (Int (_ BitVec 64)) Bool)

(assert (=> b!1013633 (= res!680555 (dynLambda!1888 lambda!509 (h!22718 lt!447999)))))

(declare-fun b!1013634 () Bool)

(assert (=> b!1013634 (= e!570252 (forall!233 (t!30533 lt!447999) lambda!509))))

(assert (= (and d!120475 (not res!680554)) b!1013633))

(assert (= (and b!1013633 res!680555) b!1013634))

(declare-fun b_lambda!15291 () Bool)

(assert (=> (not b_lambda!15291) (not b!1013633)))

(declare-fun m!936631 () Bool)

(assert (=> b!1013633 m!936631))

(declare-fun m!936633 () Bool)

(assert (=> b!1013634 m!936633))

(assert (=> b!1013451 d!120475))

(declare-fun d!120479 () Bool)

(declare-fun res!680556 () Bool)

(declare-fun e!570253 () Bool)

(assert (=> d!120479 (=> res!680556 e!570253)))

(assert (=> d!120479 (= res!680556 (or (is-Nil!21520 (t!30532 l!412)) (is-Nil!21520 (t!30532 (t!30532 l!412)))))))

(assert (=> d!120479 (= (isStrictlySorted!557 (t!30532 l!412)) e!570253)))

(declare-fun b!1013635 () Bool)

(declare-fun e!570254 () Bool)

(assert (=> b!1013635 (= e!570253 e!570254)))

(declare-fun res!680557 () Bool)

(assert (=> b!1013635 (=> (not res!680557) (not e!570254))))

(assert (=> b!1013635 (= res!680557 (bvslt (_1!7615 (h!22717 (t!30532 l!412))) (_1!7615 (h!22717 (t!30532 (t!30532 l!412))))))))

(declare-fun b!1013636 () Bool)

(assert (=> b!1013636 (= e!570254 (isStrictlySorted!557 (t!30532 (t!30532 l!412))))))

(assert (= (and d!120479 (not res!680556)) b!1013635))

(assert (= (and b!1013635 res!680557) b!1013636))

(declare-fun m!936635 () Bool)

(assert (=> b!1013636 m!936635))

(assert (=> b!1013452 d!120479))

(declare-fun b!1013641 () Bool)

(declare-fun e!570257 () Bool)

(declare-fun tp!70461 () Bool)

(assert (=> b!1013641 (= e!570257 (and tp_is_empty!23473 tp!70461))))

(assert (=> b!1013446 (= tp!70446 e!570257)))

(assert (= (and b!1013446 (is-Cons!21519 (t!30532 l!412))) b!1013641))

(declare-fun b_lambda!15293 () Bool)

(assert (= b_lambda!15291 (or b!1013451 b_lambda!15293)))

(declare-fun bs!28942 () Bool)

(declare-fun d!120481 () Bool)

(assert (= bs!28942 (and d!120481 b!1013451)))

(declare-datatypes ((Option!574 0))(
  ( (Some!573 (v!14422 B!1406)) (None!572) )
))
(declare-fun getValueByKey!523 (List!21523 (_ BitVec 64)) Option!574)

(assert (=> bs!28942 (= (dynLambda!1888 lambda!509 (h!22718 lt!447999)) (= (getValueByKey!523 (t!30532 l!412) (h!22718 lt!447999)) (Some!573 value!115)))))

(declare-fun m!936637 () Bool)

(assert (=> bs!28942 m!936637))

(assert (=> b!1013633 d!120481))

(push 1)

(assert (not b!1013641))

(assert (not b_lambda!15293))

(assert tp_is_empty!23473)

(assert (not d!120451))

(assert (not b!1013636))

(assert (not bm!42684))

(assert (not bs!28942))

(assert (not bm!42685))

(assert (not b!1013634))

(assert (not bm!42686))

(assert (not b!1013621))

(assert (not bm!42683))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

