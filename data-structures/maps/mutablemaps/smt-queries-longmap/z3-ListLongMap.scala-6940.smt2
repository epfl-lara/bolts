; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87414 () Bool)

(assert start!87414)

(declare-fun res!680104 () Bool)

(declare-fun e!569573 () Bool)

(assert (=> start!87414 (=> (not res!680104) (not e!569573))))

(declare-datatypes ((B!1348 0))(
  ( (B!1349 (val!11758 Int)) )
))
(declare-datatypes ((tuple2!15152 0))(
  ( (tuple2!15153 (_1!7586 (_ BitVec 64)) (_2!7586 B!1348)) )
))
(declare-datatypes ((List!21477 0))(
  ( (Nil!21474) (Cons!21473 (h!22671 tuple2!15152) (t!30486 List!21477)) )
))
(declare-fun l!412 () List!21477)

(declare-fun isStrictlySorted!534 (List!21477) Bool)

(assert (=> start!87414 (= res!680104 (isStrictlySorted!534 l!412))))

(assert (=> start!87414 e!569573))

(declare-fun e!569572 () Bool)

(assert (=> start!87414 e!569572))

(declare-fun tp_is_empty!23415 () Bool)

(assert (=> start!87414 tp_is_empty!23415))

(declare-fun b!1012412 () Bool)

(declare-fun res!680103 () Bool)

(assert (=> b!1012412 (=> (not res!680103) (not e!569573))))

(declare-fun value!115 () B!1348)

(get-info :version)

(assert (=> b!1012412 (= res!680103 (and (not (= (_2!7586 (h!22671 l!412)) value!115)) ((_ is Cons!21473) l!412)))))

(declare-fun b!1012413 () Bool)

(assert (=> b!1012413 (= e!569573 (not (isStrictlySorted!534 (t!30486 l!412))))))

(declare-datatypes ((List!21478 0))(
  ( (Nil!21475) (Cons!21474 (h!22672 (_ BitVec 64)) (t!30487 List!21478)) )
))
(declare-fun lt!447456 () List!21478)

(declare-fun getKeysOf!20 (List!21477 B!1348) List!21478)

(assert (=> b!1012413 (= lt!447456 (getKeysOf!20 (t!30486 l!412) value!115))))

(declare-fun b!1012414 () Bool)

(declare-fun tp!70305 () Bool)

(assert (=> b!1012414 (= e!569572 (and tp_is_empty!23415 tp!70305))))

(assert (= (and start!87414 res!680104) b!1012412))

(assert (= (and b!1012412 res!680103) b!1012413))

(assert (= (and start!87414 ((_ is Cons!21473) l!412)) b!1012414))

(declare-fun m!936117 () Bool)

(assert (=> start!87414 m!936117))

(declare-fun m!936119 () Bool)

(assert (=> b!1012413 m!936119))

(declare-fun m!936121 () Bool)

(assert (=> b!1012413 m!936121))

(check-sat (not b!1012413) (not start!87414) (not b!1012414) tp_is_empty!23415)
(check-sat)
(get-model)

(declare-fun d!120272 () Bool)

(declare-fun res!680124 () Bool)

(declare-fun e!569593 () Bool)

(assert (=> d!120272 (=> res!680124 e!569593)))

(assert (=> d!120272 (= res!680124 (or ((_ is Nil!21474) (t!30486 l!412)) ((_ is Nil!21474) (t!30486 (t!30486 l!412)))))))

(assert (=> d!120272 (= (isStrictlySorted!534 (t!30486 l!412)) e!569593)))

(declare-fun b!1012437 () Bool)

(declare-fun e!569595 () Bool)

(assert (=> b!1012437 (= e!569593 e!569595)))

(declare-fun res!680126 () Bool)

(assert (=> b!1012437 (=> (not res!680126) (not e!569595))))

(assert (=> b!1012437 (= res!680126 (bvslt (_1!7586 (h!22671 (t!30486 l!412))) (_1!7586 (h!22671 (t!30486 (t!30486 l!412))))))))

(declare-fun b!1012439 () Bool)

(assert (=> b!1012439 (= e!569595 (isStrictlySorted!534 (t!30486 (t!30486 l!412))))))

(assert (= (and d!120272 (not res!680124)) b!1012437))

(assert (= (and b!1012437 res!680126) b!1012439))

(declare-fun m!936129 () Bool)

(assert (=> b!1012439 m!936129))

(assert (=> b!1012413 d!120272))

(declare-fun b!1012497 () Bool)

(assert (=> b!1012497 true))

(assert (=> b!1012497 true))

(assert (=> b!1012497 true))

(declare-fun bs!28819 () Bool)

(declare-fun b!1012501 () Bool)

(assert (= bs!28819 (and b!1012501 b!1012497)))

(declare-fun lambda!367 () Int)

(declare-fun lt!447532 () tuple2!15152)

(declare-fun lambda!371 () Int)

(declare-fun lt!447551 () List!21477)

(declare-fun lt!447536 () tuple2!15152)

(declare-fun lt!447535 () List!21477)

(assert (=> bs!28819 (= (= (Cons!21473 lt!447532 lt!447535) (Cons!21473 lt!447536 lt!447551)) (= lambda!371 lambda!367))))

(assert (=> b!1012501 true))

(assert (=> b!1012501 true))

(assert (=> b!1012501 true))

(declare-fun bs!28822 () Bool)

(declare-fun d!120278 () Bool)

(assert (= bs!28822 (and d!120278 b!1012497)))

(declare-fun lambda!374 () Int)

(assert (=> bs!28822 (= (= (t!30486 l!412) (Cons!21473 lt!447536 lt!447551)) (= lambda!374 lambda!367))))

(declare-fun bs!28825 () Bool)

(assert (= bs!28825 (and d!120278 b!1012501)))

(assert (=> bs!28825 (= (= (t!30486 l!412) (Cons!21473 lt!447532 lt!447535)) (= lambda!374 lambda!371))))

(assert (=> d!120278 true))

(assert (=> d!120278 true))

(declare-fun b!1012494 () Bool)

(declare-fun e!569627 () List!21478)

(declare-fun e!569632 () List!21478)

(assert (=> b!1012494 (= e!569627 e!569632)))

(declare-fun c!102253 () Bool)

(assert (=> b!1012494 (= c!102253 (and ((_ is Cons!21473) (t!30486 l!412)) (not (= (_2!7586 (h!22671 (t!30486 l!412))) value!115))))))

(declare-fun call!42545 () Bool)

(declare-fun lt!447545 () List!21478)

(declare-fun bm!42539 () Bool)

(declare-fun lt!447540 () List!21478)

(declare-fun c!102255 () Bool)

(declare-fun forall!215 (List!21478 Int) Bool)

(assert (=> bm!42539 (= call!42545 (forall!215 (ite c!102255 lt!447540 lt!447545) (ite c!102255 lambda!367 lambda!371)))))

(declare-fun b!1012495 () Bool)

(declare-datatypes ((Unit!33024 0))(
  ( (Unit!33025) )
))
(declare-fun e!569630 () Unit!33024)

(declare-fun Unit!33026 () Unit!33024)

(assert (=> b!1012495 (= e!569630 Unit!33026)))

(declare-fun lt!447534 () List!21478)

(assert (=> d!120278 (forall!215 lt!447534 lambda!374)))

(assert (=> d!120278 (= lt!447534 e!569627)))

(assert (=> d!120278 (= c!102255 (and ((_ is Cons!21473) (t!30486 l!412)) (= (_2!7586 (h!22671 (t!30486 l!412))) value!115)))))

(assert (=> d!120278 (isStrictlySorted!534 (t!30486 l!412))))

(assert (=> d!120278 (= (getKeysOf!20 (t!30486 l!412) value!115) lt!447534)))

(declare-fun b!1012496 () Bool)

(assert (=> b!1012496 (= e!569632 Nil!21475)))

(assert (=> b!1012497 call!42545))

(declare-fun lt!447539 () Unit!33024)

(declare-fun call!42544 () Unit!33024)

(assert (=> b!1012497 (= lt!447539 call!42544)))

(assert (=> b!1012497 (= lt!447536 (h!22671 (t!30486 l!412)))))

(declare-fun call!42542 () List!21478)

(assert (=> b!1012497 (= lt!447540 call!42542)))

(assert (=> b!1012497 (= lt!447551 (t!30486 (t!30486 l!412)))))

(assert (=> b!1012497 (= e!569630 lt!447539)))

(declare-fun bm!42540 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!13 (List!21477 List!21478 B!1348 tuple2!15152) Unit!33024)

(assert (=> bm!42540 (= call!42544 (lemmaForallGetValueByKeySameWithASmallerHead!13 (ite c!102255 lt!447551 lt!447535) (ite c!102255 lt!447540 lt!447545) value!115 (ite c!102255 lt!447536 lt!447532)))))

(declare-fun b!1012498 () Bool)

(assert (=> b!1012498 (= e!569627 (Cons!21474 (_1!7586 (h!22671 (t!30486 l!412))) call!42542))))

(declare-fun c!102256 () Bool)

(declare-fun call!42543 () Bool)

(assert (=> b!1012498 (= c!102256 (not call!42543))))

(declare-fun lt!447538 () Unit!33024)

(assert (=> b!1012498 (= lt!447538 e!569630)))

(declare-fun bm!42541 () Bool)

(assert (=> bm!42541 (= call!42542 (getKeysOf!20 (t!30486 (t!30486 l!412)) value!115))))

(declare-fun b!1012499 () Bool)

(declare-fun e!569628 () Unit!33024)

(declare-fun Unit!33031 () Unit!33024)

(assert (=> b!1012499 (= e!569628 Unit!33031)))

(declare-fun b!1012500 () Bool)

(declare-fun lt!447537 () Unit!33024)

(assert (=> b!1012500 (= lt!447537 e!569628)))

(declare-fun c!102257 () Bool)

(assert (=> b!1012500 (= c!102257 (not call!42543))))

(declare-fun lt!447542 () List!21478)

(assert (=> b!1012500 (= lt!447542 call!42542)))

(assert (=> b!1012500 (= e!569632 call!42542)))

(declare-fun bm!42542 () Bool)

(declare-fun isEmpty!796 (List!21478) Bool)

(assert (=> bm!42542 (= call!42543 (isEmpty!796 call!42542))))

(declare-fun lt!447553 () Unit!33024)

(assert (=> b!1012501 (= e!569628 lt!447553)))

(assert (=> b!1012501 (= lt!447535 (t!30486 (t!30486 l!412)))))

(assert (=> b!1012501 (= lt!447545 call!42542)))

(assert (=> b!1012501 (= lt!447532 (h!22671 (t!30486 l!412)))))

(assert (=> b!1012501 (= lt!447553 call!42544)))

(assert (=> b!1012501 call!42545))

(assert (= (and d!120278 c!102255) b!1012498))

(assert (= (and d!120278 (not c!102255)) b!1012494))

(assert (= (and b!1012498 c!102256) b!1012497))

(assert (= (and b!1012498 (not c!102256)) b!1012495))

(assert (= (and b!1012494 c!102253) b!1012500))

(assert (= (and b!1012494 (not c!102253)) b!1012496))

(assert (= (and b!1012500 c!102257) b!1012501))

(assert (= (and b!1012500 (not c!102257)) b!1012499))

(assert (= (or b!1012497 b!1012501) bm!42540))

(assert (= (or b!1012497 b!1012501) bm!42539))

(assert (= (or b!1012498 b!1012497 b!1012501 b!1012500) bm!42541))

(assert (= (or b!1012498 b!1012500) bm!42542))

(declare-fun m!936139 () Bool)

(assert (=> bm!42539 m!936139))

(declare-fun m!936151 () Bool)

(assert (=> bm!42540 m!936151))

(declare-fun m!936153 () Bool)

(assert (=> d!120278 m!936153))

(assert (=> d!120278 m!936119))

(declare-fun m!936161 () Bool)

(assert (=> bm!42541 m!936161))

(declare-fun m!936163 () Bool)

(assert (=> bm!42542 m!936163))

(assert (=> b!1012413 d!120278))

(declare-fun d!120287 () Bool)

(declare-fun res!680133 () Bool)

(declare-fun e!569638 () Bool)

(assert (=> d!120287 (=> res!680133 e!569638)))

(assert (=> d!120287 (= res!680133 (or ((_ is Nil!21474) l!412) ((_ is Nil!21474) (t!30486 l!412))))))

(assert (=> d!120287 (= (isStrictlySorted!534 l!412) e!569638)))

(declare-fun b!1012540 () Bool)

(declare-fun e!569639 () Bool)

(assert (=> b!1012540 (= e!569638 e!569639)))

(declare-fun res!680134 () Bool)

(assert (=> b!1012540 (=> (not res!680134) (not e!569639))))

(assert (=> b!1012540 (= res!680134 (bvslt (_1!7586 (h!22671 l!412)) (_1!7586 (h!22671 (t!30486 l!412)))))))

(declare-fun b!1012541 () Bool)

(assert (=> b!1012541 (= e!569639 (isStrictlySorted!534 (t!30486 l!412)))))

(assert (= (and d!120287 (not res!680133)) b!1012540))

(assert (= (and b!1012540 res!680134) b!1012541))

(assert (=> b!1012541 m!936119))

(assert (=> start!87414 d!120287))

(declare-fun b!1012552 () Bool)

(declare-fun e!569648 () Bool)

(declare-fun tp!70317 () Bool)

(assert (=> b!1012552 (= e!569648 (and tp_is_empty!23415 tp!70317))))

(assert (=> b!1012414 (= tp!70305 e!569648)))

(assert (= (and b!1012414 ((_ is Cons!21473) (t!30486 l!412))) b!1012552))

(check-sat (not b!1012439) (not bm!42541) (not bm!42540) (not bm!42542) (not b!1012552) (not bm!42539) (not d!120278) tp_is_empty!23415 (not b!1012541))
(check-sat)
