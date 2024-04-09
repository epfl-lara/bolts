; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87416 () Bool)

(assert start!87416)

(declare-fun res!680109 () Bool)

(declare-fun e!569579 () Bool)

(assert (=> start!87416 (=> (not res!680109) (not e!569579))))

(declare-datatypes ((B!1350 0))(
  ( (B!1351 (val!11759 Int)) )
))
(declare-datatypes ((tuple2!15154 0))(
  ( (tuple2!15155 (_1!7587 (_ BitVec 64)) (_2!7587 B!1350)) )
))
(declare-datatypes ((List!21479 0))(
  ( (Nil!21476) (Cons!21475 (h!22673 tuple2!15154) (t!30488 List!21479)) )
))
(declare-fun l!412 () List!21479)

(declare-fun isStrictlySorted!535 (List!21479) Bool)

(assert (=> start!87416 (= res!680109 (isStrictlySorted!535 l!412))))

(assert (=> start!87416 e!569579))

(declare-fun e!569578 () Bool)

(assert (=> start!87416 e!569578))

(declare-fun tp_is_empty!23417 () Bool)

(assert (=> start!87416 tp_is_empty!23417))

(declare-fun b!1012421 () Bool)

(declare-fun res!680110 () Bool)

(assert (=> b!1012421 (=> (not res!680110) (not e!569579))))

(declare-fun value!115 () B!1350)

(assert (=> b!1012421 (= res!680110 (and (not (= (_2!7587 (h!22673 l!412)) value!115)) (is-Cons!21475 l!412)))))

(declare-fun b!1012422 () Bool)

(assert (=> b!1012422 (= e!569579 (not (isStrictlySorted!535 (t!30488 l!412))))))

(declare-datatypes ((List!21480 0))(
  ( (Nil!21477) (Cons!21476 (h!22674 (_ BitVec 64)) (t!30489 List!21480)) )
))
(declare-fun lt!447459 () List!21480)

(declare-fun getKeysOf!21 (List!21479 B!1350) List!21480)

(assert (=> b!1012422 (= lt!447459 (getKeysOf!21 (t!30488 l!412) value!115))))

(declare-fun b!1012423 () Bool)

(declare-fun tp!70308 () Bool)

(assert (=> b!1012423 (= e!569578 (and tp_is_empty!23417 tp!70308))))

(assert (= (and start!87416 res!680109) b!1012421))

(assert (= (and b!1012421 res!680110) b!1012422))

(assert (= (and start!87416 (is-Cons!21475 l!412)) b!1012423))

(declare-fun m!936123 () Bool)

(assert (=> start!87416 m!936123))

(declare-fun m!936125 () Bool)

(assert (=> b!1012422 m!936125))

(declare-fun m!936127 () Bool)

(assert (=> b!1012422 m!936127))

(push 1)

(assert (not start!87416))

(assert (not b!1012422))

(assert (not b!1012423))

(assert tp_is_empty!23417)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120273 () Bool)

(declare-fun res!680123 () Bool)

(declare-fun e!569592 () Bool)

(assert (=> d!120273 (=> res!680123 e!569592)))

(assert (=> d!120273 (= res!680123 (or (is-Nil!21476 l!412) (is-Nil!21476 (t!30488 l!412))))))

(assert (=> d!120273 (= (isStrictlySorted!535 l!412) e!569592)))

(declare-fun b!1012436 () Bool)

(declare-fun e!569594 () Bool)

(assert (=> b!1012436 (= e!569592 e!569594)))

(declare-fun res!680125 () Bool)

(assert (=> b!1012436 (=> (not res!680125) (not e!569594))))

(assert (=> b!1012436 (= res!680125 (bvslt (_1!7587 (h!22673 l!412)) (_1!7587 (h!22673 (t!30488 l!412)))))))

(declare-fun b!1012438 () Bool)

(assert (=> b!1012438 (= e!569594 (isStrictlySorted!535 (t!30488 l!412)))))

(assert (= (and d!120273 (not res!680123)) b!1012436))

(assert (= (and b!1012436 res!680125) b!1012438))

(assert (=> b!1012438 m!936125))

(assert (=> start!87416 d!120273))

(declare-fun d!120279 () Bool)

(declare-fun res!680129 () Bool)

(declare-fun e!569598 () Bool)

(assert (=> d!120279 (=> res!680129 e!569598)))

(assert (=> d!120279 (= res!680129 (or (is-Nil!21476 (t!30488 l!412)) (is-Nil!21476 (t!30488 (t!30488 l!412)))))))

(assert (=> d!120279 (= (isStrictlySorted!535 (t!30488 l!412)) e!569598)))

(declare-fun b!1012442 () Bool)

(declare-fun e!569599 () Bool)

(assert (=> b!1012442 (= e!569598 e!569599)))

(declare-fun res!680130 () Bool)

(assert (=> b!1012442 (=> (not res!680130) (not e!569599))))

(assert (=> b!1012442 (= res!680130 (bvslt (_1!7587 (h!22673 (t!30488 l!412))) (_1!7587 (h!22673 (t!30488 (t!30488 l!412))))))))

(declare-fun b!1012443 () Bool)

(assert (=> b!1012443 (= e!569599 (isStrictlySorted!535 (t!30488 (t!30488 l!412))))))

(assert (= (and d!120279 (not res!680129)) b!1012442))

(assert (= (and b!1012442 res!680130) b!1012443))

(declare-fun m!936131 () Bool)

(assert (=> b!1012443 m!936131))

(assert (=> b!1012422 d!120279))

(declare-fun b!1012509 () Bool)

(assert (=> b!1012509 true))

(assert (=> b!1012509 true))

(assert (=> b!1012509 true))

(declare-fun bs!28818 () Bool)

(declare-fun b!1012503 () Bool)

(assert (= bs!28818 (and b!1012503 b!1012509)))

(declare-fun lt!447555 () List!21479)

(declare-fun lt!447556 () tuple2!15154)

(declare-fun lambda!370 () Int)

(declare-fun lt!447557 () List!21479)

(declare-fun lt!447547 () tuple2!15154)

(declare-fun lambda!366 () Int)

(assert (=> bs!28818 (= (= (Cons!21475 lt!447547 lt!447557) (Cons!21475 lt!447556 lt!447555)) (= lambda!370 lambda!366))))

(assert (=> b!1012503 true))

(assert (=> b!1012503 true))

(assert (=> b!1012503 true))

(declare-fun bs!28821 () Bool)

(declare-fun d!120283 () Bool)

(assert (= bs!28821 (and d!120283 b!1012509)))

(declare-fun lambda!373 () Int)

(assert (=> bs!28821 (= (= (t!30488 l!412) (Cons!21475 lt!447556 lt!447555)) (= lambda!373 lambda!366))))

(declare-fun bs!28824 () Bool)

(assert (= bs!28824 (and d!120283 b!1012503)))

(assert (=> bs!28824 (= (= (t!30488 l!412) (Cons!21475 lt!447547 lt!447557)) (= lambda!373 lambda!370))))

(assert (=> d!120283 true))

(assert (=> d!120283 true))

(declare-fun b!1012502 () Bool)

(declare-datatypes ((Unit!33029 0))(
  ( (Unit!33030) )
))
(declare-fun lt!447550 () Unit!33029)

(declare-fun e!569634 () Unit!33029)

(assert (=> b!1012502 (= lt!447550 e!569634)))

(declare-fun c!102258 () Bool)

(declare-fun call!42546 () Bool)

(assert (=> b!1012502 (= c!102258 (not call!42546))))

(declare-fun lt!447549 () List!21480)

(declare-fun call!42547 () List!21480)

(assert (=> b!1012502 (= lt!447549 call!42547)))

(declare-fun e!569633 () List!21480)

(assert (=> b!1012502 (= e!569633 call!42547)))

(declare-fun lt!447546 () Unit!33029)

(assert (=> b!1012503 (= e!569634 lt!447546)))

(assert (=> b!1012503 (= lt!447557 (t!30488 (t!30488 l!412)))))

(declare-fun lt!447558 () List!21480)

(assert (=> b!1012503 (= lt!447558 call!42547)))

(assert (=> b!1012503 (= lt!447547 (h!22673 (t!30488 l!412)))))

(declare-fun call!42548 () Unit!33029)

(assert (=> b!1012503 (= lt!447546 call!42548)))

(declare-fun call!42549 () Bool)

(assert (=> b!1012503 call!42549))

(declare-fun c!102260 () Bool)

(declare-fun lt!447554 () List!21480)

(declare-fun bm!42543 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!15 (List!21479 List!21480 B!1350 tuple2!15154) Unit!33029)

(assert (=> bm!42543 (= call!42548 (lemmaForallGetValueByKeySameWithASmallerHead!15 (ite c!102260 lt!447555 lt!447557) (ite c!102260 lt!447554 lt!447558) value!115 (ite c!102260 lt!447556 lt!447547)))))

(declare-fun b!1012504 () Bool)

(declare-fun Unit!33033 () Unit!33029)

(assert (=> b!1012504 (= e!569634 Unit!33033)))

(declare-fun b!1012505 () Bool)

(declare-fun e!569631 () Unit!33029)

(declare-fun Unit!33034 () Unit!33029)

(assert (=> b!1012505 (= e!569631 Unit!33034)))

(declare-fun bm!42544 () Bool)

(declare-fun forall!217 (List!21480 Int) Bool)

(assert (=> bm!42544 (= call!42549 (forall!217 (ite c!102260 lt!447554 lt!447558) (ite c!102260 lambda!366 lambda!370)))))

(declare-fun bm!42545 () Bool)

(assert (=> bm!42545 (= call!42547 (getKeysOf!21 (t!30488 (t!30488 l!412)) value!115))))

(declare-fun b!1012507 () Bool)

(declare-fun e!569629 () List!21480)

(assert (=> b!1012507 (= e!569629 e!569633)))

(declare-fun c!102261 () Bool)

(assert (=> b!1012507 (= c!102261 (and (is-Cons!21475 (t!30488 l!412)) (not (= (_2!7587 (h!22673 (t!30488 l!412))) value!115))))))

(declare-fun b!1012508 () Bool)

(assert (=> b!1012508 (= e!569629 (Cons!21476 (_1!7587 (h!22673 (t!30488 l!412))) call!42547))))

(declare-fun c!102259 () Bool)

(assert (=> b!1012508 (= c!102259 (not call!42546))))

(declare-fun lt!447548 () Unit!33029)

(assert (=> b!1012508 (= lt!447548 e!569631)))

(declare-fun b!1012506 () Bool)

(assert (=> b!1012506 (= e!569633 Nil!21477)))

(declare-fun lt!447552 () List!21480)

(assert (=> d!120283 (forall!217 lt!447552 lambda!373)))

(assert (=> d!120283 (= lt!447552 e!569629)))

(assert (=> d!120283 (= c!102260 (and (is-Cons!21475 (t!30488 l!412)) (= (_2!7587 (h!22673 (t!30488 l!412))) value!115)))))

(assert (=> d!120283 (isStrictlySorted!535 (t!30488 l!412))))

(assert (=> d!120283 (= (getKeysOf!21 (t!30488 l!412) value!115) lt!447552)))

(declare-fun bm!42546 () Bool)

(declare-fun isEmpty!798 (List!21480) Bool)

(assert (=> bm!42546 (= call!42546 (isEmpty!798 call!42547))))

(assert (=> b!1012509 call!42549))

(declare-fun lt!447544 () Unit!33029)

(assert (=> b!1012509 (= lt!447544 call!42548)))

(assert (=> b!1012509 (= lt!447556 (h!22673 (t!30488 l!412)))))

(assert (=> b!1012509 (= lt!447554 call!42547)))

(assert (=> b!1012509 (= lt!447555 (t!30488 (t!30488 l!412)))))

(assert (=> b!1012509 (= e!569631 lt!447544)))

(assert (= (and d!120283 c!102260) b!1012508))

(assert (= (and d!120283 (not c!102260)) b!1012507))

(assert (= (and b!1012508 c!102259) b!1012509))

(assert (= (and b!1012508 (not c!102259)) b!1012505))

(assert (= (and b!1012507 c!102261) b!1012502))

(assert (= (and b!1012507 (not c!102261)) b!1012506))

(assert (= (and b!1012502 c!102258) b!1012503))

(assert (= (and b!1012502 (not c!102258)) b!1012504))

(assert (= (or b!1012509 b!1012503) bm!42543))

(assert (= (or b!1012509 b!1012503) bm!42544))

(assert (= (or b!1012508 b!1012509 b!1012502 b!1012503) bm!42545))

(assert (= (or b!1012508 b!1012502) bm!42546))

(declare-fun m!936137 () Bool)

(assert (=> bm!42543 m!936137))

(declare-fun m!936141 () Bool)

(assert (=> d!120283 m!936141))

(assert (=> d!120283 m!936125))

(declare-fun m!936147 () Bool)

(assert (=> bm!42545 m!936147))

(declare-fun m!936155 () Bool)

(assert (=> bm!42544 m!936155))

(declare-fun m!936157 () Bool)

(assert (=> bm!42546 m!936157))

(assert (=> b!1012422 d!120283))

(declare-fun b!1012551 () Bool)

(declare-fun e!569647 () Bool)

(declare-fun tp!70316 () Bool)

(assert (=> b!1012551 (= e!569647 (and tp_is_empty!23417 tp!70316))))

(assert (=> b!1012423 (= tp!70308 e!569647)))

(assert (= (and b!1012423 (is-Cons!21475 (t!30488 l!412))) b!1012551))

(push 1)

