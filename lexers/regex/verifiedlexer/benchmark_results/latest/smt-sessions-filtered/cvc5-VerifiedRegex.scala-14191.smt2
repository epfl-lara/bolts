; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!743976 () Bool)

(assert start!743976)

(declare-fun b!7869441 () Bool)

(declare-fun res!3127045 () Bool)

(declare-fun e!4649103 () Bool)

(assert (=> b!7869441 (=> (not res!3127045) (not e!4649103))))

(declare-datatypes ((C!42634 0))(
  ( (C!42635 (val!31779 Int)) )
))
(declare-datatypes ((List!74013 0))(
  ( (Nil!73889) (Cons!73889 (h!80337 C!42634) (t!388748 List!74013)) )
))
(declare-fun s!14219 () List!74013)

(assert (=> b!7869441 (= res!3127045 (is-Cons!73889 s!14219))))

(declare-fun b!7869443 () Bool)

(declare-fun e!4649102 () Bool)

(declare-fun tp_is_empty!52707 () Bool)

(assert (=> b!7869443 (= e!4649102 tp_is_empty!52707)))

(declare-fun b!7869444 () Bool)

(declare-fun tp!2334805 () Bool)

(declare-fun tp!2334809 () Bool)

(assert (=> b!7869444 (= e!4649102 (and tp!2334805 tp!2334809))))

(declare-fun b!7869445 () Bool)

(declare-fun e!4649101 () Bool)

(declare-fun tp!2334813 () Bool)

(assert (=> b!7869445 (= e!4649101 tp!2334813)))

(declare-fun b!7869446 () Bool)

(declare-datatypes ((Regex!21154 0))(
  ( (ElementMatch!21154 (c!1445714 C!42634)) (Concat!29999 (regOne!42820 Regex!21154) (regTwo!42820 Regex!21154)) (EmptyExpr!21154) (Star!21154 (reg!21483 Regex!21154)) (EmptyLang!21154) (Union!21154 (regOne!42821 Regex!21154) (regTwo!42821 Regex!21154)) )
))
(declare-fun r1!6200 () Regex!21154)

(declare-fun r2!6138 () Regex!21154)

(declare-fun validRegex!11564 (Regex!21154) Bool)

(assert (=> b!7869446 (= e!4649103 (not (validRegex!11564 (Union!21154 r1!6200 r2!6138))))))

(declare-fun lt!2680788 () Regex!21154)

(declare-fun lt!2680789 () Regex!21154)

(declare-fun matchR!10590 (Regex!21154 List!74013) Bool)

(assert (=> b!7869446 (matchR!10590 (Union!21154 lt!2680788 lt!2680789) (t!388748 s!14219))))

(declare-datatypes ((Unit!168970 0))(
  ( (Unit!168971) )
))
(declare-fun lt!2680790 () Unit!168970)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!141 (Regex!21154 Regex!21154 List!74013) Unit!168970)

(assert (=> b!7869446 (= lt!2680790 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!141 lt!2680788 lt!2680789 (t!388748 s!14219)))))

(declare-fun derivativeStep!6385 (Regex!21154 C!42634) Regex!21154)

(assert (=> b!7869446 (= lt!2680789 (derivativeStep!6385 r2!6138 (h!80337 s!14219)))))

(assert (=> b!7869446 (= lt!2680788 (derivativeStep!6385 r1!6200 (h!80337 s!14219)))))

(declare-fun b!7869447 () Bool)

(declare-fun tp!2334814 () Bool)

(declare-fun tp!2334815 () Bool)

(assert (=> b!7869447 (= e!4649101 (and tp!2334814 tp!2334815))))

(declare-fun b!7869448 () Bool)

(declare-fun tp!2334808 () Bool)

(declare-fun tp!2334810 () Bool)

(assert (=> b!7869448 (= e!4649102 (and tp!2334808 tp!2334810))))

(declare-fun b!7869449 () Bool)

(declare-fun res!3127047 () Bool)

(assert (=> b!7869449 (=> (not res!3127047) (not e!4649103))))

(assert (=> b!7869449 (= res!3127047 (validRegex!11564 r2!6138))))

(declare-fun b!7869442 () Bool)

(assert (=> b!7869442 (= e!4649101 tp_is_empty!52707)))

(declare-fun res!3127048 () Bool)

(assert (=> start!743976 (=> (not res!3127048) (not e!4649103))))

(assert (=> start!743976 (= res!3127048 (validRegex!11564 r1!6200))))

(assert (=> start!743976 e!4649103))

(assert (=> start!743976 e!4649101))

(assert (=> start!743976 e!4649102))

(declare-fun e!4649100 () Bool)

(assert (=> start!743976 e!4649100))

(declare-fun b!7869450 () Bool)

(declare-fun tp!2334806 () Bool)

(assert (=> b!7869450 (= e!4649102 tp!2334806)))

(declare-fun b!7869451 () Bool)

(declare-fun tp!2334807 () Bool)

(assert (=> b!7869451 (= e!4649100 (and tp_is_empty!52707 tp!2334807))))

(declare-fun b!7869452 () Bool)

(declare-fun tp!2334811 () Bool)

(declare-fun tp!2334812 () Bool)

(assert (=> b!7869452 (= e!4649101 (and tp!2334811 tp!2334812))))

(declare-fun b!7869453 () Bool)

(declare-fun res!3127046 () Bool)

(assert (=> b!7869453 (=> (not res!3127046) (not e!4649103))))

(assert (=> b!7869453 (= res!3127046 (matchR!10590 r1!6200 s!14219))))

(assert (= (and start!743976 res!3127048) b!7869449))

(assert (= (and b!7869449 res!3127047) b!7869453))

(assert (= (and b!7869453 res!3127046) b!7869441))

(assert (= (and b!7869441 res!3127045) b!7869446))

(assert (= (and start!743976 (is-ElementMatch!21154 r1!6200)) b!7869442))

(assert (= (and start!743976 (is-Concat!29999 r1!6200)) b!7869447))

(assert (= (and start!743976 (is-Star!21154 r1!6200)) b!7869445))

(assert (= (and start!743976 (is-Union!21154 r1!6200)) b!7869452))

(assert (= (and start!743976 (is-ElementMatch!21154 r2!6138)) b!7869443))

(assert (= (and start!743976 (is-Concat!29999 r2!6138)) b!7869444))

(assert (= (and start!743976 (is-Star!21154 r2!6138)) b!7869450))

(assert (= (and start!743976 (is-Union!21154 r2!6138)) b!7869448))

(assert (= (and start!743976 (is-Cons!73889 s!14219)) b!7869451))

(declare-fun m!8264664 () Bool)

(assert (=> b!7869446 m!8264664))

(declare-fun m!8264666 () Bool)

(assert (=> b!7869446 m!8264666))

(declare-fun m!8264668 () Bool)

(assert (=> b!7869446 m!8264668))

(declare-fun m!8264670 () Bool)

(assert (=> b!7869446 m!8264670))

(declare-fun m!8264672 () Bool)

(assert (=> b!7869446 m!8264672))

(declare-fun m!8264674 () Bool)

(assert (=> b!7869449 m!8264674))

(declare-fun m!8264676 () Bool)

(assert (=> start!743976 m!8264676))

(declare-fun m!8264678 () Bool)

(assert (=> b!7869453 m!8264678))

(push 1)

(assert (not b!7869448))

(assert (not b!7869444))

(assert (not b!7869445))

(assert (not b!7869449))

(assert (not b!7869446))

(assert (not b!7869450))

(assert (not b!7869451))

(assert (not start!743976))

(assert (not b!7869447))

(assert (not b!7869453))

(assert tp_is_empty!52707)

(assert (not b!7869452))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!729716 () Bool)

(declare-fun call!729721 () Bool)

(declare-fun c!1445721 () Bool)

(assert (=> bm!729716 (= call!729721 (validRegex!11564 (ite c!1445721 (regTwo!42821 r1!6200) (regOne!42820 r1!6200))))))

(declare-fun b!7869511 () Bool)

(declare-fun res!3127075 () Bool)

(declare-fun e!4649135 () Bool)

(assert (=> b!7869511 (=> res!3127075 e!4649135)))

(assert (=> b!7869511 (= res!3127075 (not (is-Concat!29999 r1!6200)))))

(declare-fun e!4649132 () Bool)

(assert (=> b!7869511 (= e!4649132 e!4649135)))

(declare-fun b!7869512 () Bool)

(declare-fun e!4649131 () Bool)

(assert (=> b!7869512 (= e!4649135 e!4649131)))

(declare-fun res!3127071 () Bool)

(assert (=> b!7869512 (=> (not res!3127071) (not e!4649131))))

(assert (=> b!7869512 (= res!3127071 call!729721)))

(declare-fun b!7869513 () Bool)

(declare-fun call!729722 () Bool)

(assert (=> b!7869513 (= e!4649131 call!729722)))

(declare-fun b!7869514 () Bool)

(declare-fun res!3127074 () Bool)

(declare-fun e!4649130 () Bool)

(assert (=> b!7869514 (=> (not res!3127074) (not e!4649130))))

(assert (=> b!7869514 (= res!3127074 call!729722)))

(assert (=> b!7869514 (= e!4649132 e!4649130)))

(declare-fun b!7869515 () Bool)

(declare-fun e!4649133 () Bool)

(declare-fun e!4649134 () Bool)

(assert (=> b!7869515 (= e!4649133 e!4649134)))

(declare-fun res!3127073 () Bool)

(declare-fun nullable!9418 (Regex!21154) Bool)

(assert (=> b!7869515 (= res!3127073 (not (nullable!9418 (reg!21483 r1!6200))))))

(assert (=> b!7869515 (=> (not res!3127073) (not e!4649134))))

(declare-fun bm!729717 () Bool)

(declare-fun call!729723 () Bool)

(assert (=> bm!729717 (= call!729722 call!729723)))

(declare-fun b!7869517 () Bool)

(declare-fun e!4649136 () Bool)

(assert (=> b!7869517 (= e!4649136 e!4649133)))

(declare-fun c!1445720 () Bool)

(assert (=> b!7869517 (= c!1445720 (is-Star!21154 r1!6200))))

(declare-fun b!7869518 () Bool)

(assert (=> b!7869518 (= e!4649133 e!4649132)))

(assert (=> b!7869518 (= c!1445721 (is-Union!21154 r1!6200))))

(declare-fun bm!729718 () Bool)

(assert (=> bm!729718 (= call!729723 (validRegex!11564 (ite c!1445720 (reg!21483 r1!6200) (ite c!1445721 (regOne!42821 r1!6200) (regTwo!42820 r1!6200)))))))

(declare-fun b!7869519 () Bool)

(assert (=> b!7869519 (= e!4649130 call!729721)))

(declare-fun d!2355128 () Bool)

(declare-fun res!3127072 () Bool)

(assert (=> d!2355128 (=> res!3127072 e!4649136)))

(assert (=> d!2355128 (= res!3127072 (is-ElementMatch!21154 r1!6200))))

(assert (=> d!2355128 (= (validRegex!11564 r1!6200) e!4649136)))

(declare-fun b!7869516 () Bool)

(assert (=> b!7869516 (= e!4649134 call!729723)))

(assert (= (and d!2355128 (not res!3127072)) b!7869517))

(assert (= (and b!7869517 c!1445720) b!7869515))

(assert (= (and b!7869517 (not c!1445720)) b!7869518))

(assert (= (and b!7869515 res!3127073) b!7869516))

(assert (= (and b!7869518 c!1445721) b!7869514))

(assert (= (and b!7869518 (not c!1445721)) b!7869511))

(assert (= (and b!7869514 res!3127074) b!7869519))

(assert (= (and b!7869511 (not res!3127075)) b!7869512))

(assert (= (and b!7869512 res!3127071) b!7869513))

(assert (= (or b!7869519 b!7869512) bm!729716))

(assert (= (or b!7869514 b!7869513) bm!729717))

(assert (= (or b!7869516 bm!729717) bm!729718))

(declare-fun m!8264696 () Bool)

(assert (=> bm!729716 m!8264696))

(declare-fun m!8264698 () Bool)

(assert (=> b!7869515 m!8264698))

(declare-fun m!8264700 () Bool)

(assert (=> bm!729718 m!8264700))

(assert (=> start!743976 d!2355128))

(declare-fun b!7869568 () Bool)

(declare-fun e!4649165 () Bool)

(declare-fun head!16096 (List!74013) C!42634)

(assert (=> b!7869568 (= e!4649165 (not (= (head!16096 s!14219) (c!1445714 r1!6200))))))

(declare-fun b!7869569 () Bool)

(declare-fun res!3127092 () Bool)

(declare-fun e!4649162 () Bool)

(assert (=> b!7869569 (=> (not res!3127092) (not e!4649162))))

(declare-fun call!729728 () Bool)

(assert (=> b!7869569 (= res!3127092 (not call!729728))))

(declare-fun b!7869570 () Bool)

(declare-fun e!4649164 () Bool)

(declare-fun e!4649163 () Bool)

(assert (=> b!7869570 (= e!4649164 e!4649163)))

(declare-fun res!3127093 () Bool)

(assert (=> b!7869570 (=> (not res!3127093) (not e!4649163))))

(declare-fun lt!2680804 () Bool)

(assert (=> b!7869570 (= res!3127093 (not lt!2680804))))

(declare-fun b!7869571 () Bool)

(declare-fun e!4649161 () Bool)

(assert (=> b!7869571 (= e!4649161 (not lt!2680804))))

(declare-fun b!7869572 () Bool)

(declare-fun res!3127094 () Bool)

(assert (=> b!7869572 (=> res!3127094 e!4649165)))

(declare-fun isEmpty!42385 (List!74013) Bool)

(declare-fun tail!15639 (List!74013) List!74013)

(assert (=> b!7869572 (= res!3127094 (not (isEmpty!42385 (tail!15639 s!14219))))))

(declare-fun b!7869573 () Bool)

(assert (=> b!7869573 (= e!4649163 e!4649165)))

(declare-fun res!3127097 () Bool)

(assert (=> b!7869573 (=> res!3127097 e!4649165)))

(assert (=> b!7869573 (= res!3127097 call!729728)))

(declare-fun b!7869574 () Bool)

(assert (=> b!7869574 (= e!4649162 (= (head!16096 s!14219) (c!1445714 r1!6200)))))

(declare-fun b!7869576 () Bool)

(declare-fun e!4649166 () Bool)

(assert (=> b!7869576 (= e!4649166 (matchR!10590 (derivativeStep!6385 r1!6200 (head!16096 s!14219)) (tail!15639 s!14219)))))

(declare-fun b!7869577 () Bool)

(declare-fun e!4649167 () Bool)

(assert (=> b!7869577 (= e!4649167 (= lt!2680804 call!729728))))

(declare-fun b!7869578 () Bool)

(assert (=> b!7869578 (= e!4649166 (nullable!9418 r1!6200))))

(declare-fun bm!729721 () Bool)

(assert (=> bm!729721 (= call!729728 (isEmpty!42385 s!14219))))

(declare-fun b!7869579 () Bool)

(declare-fun res!3127099 () Bool)

(assert (=> b!7869579 (=> (not res!3127099) (not e!4649162))))

(assert (=> b!7869579 (= res!3127099 (isEmpty!42385 (tail!15639 s!14219)))))

(declare-fun d!2355132 () Bool)

(assert (=> d!2355132 e!4649167))

(declare-fun c!1445738 () Bool)

(assert (=> d!2355132 (= c!1445738 (is-EmptyExpr!21154 r1!6200))))

(assert (=> d!2355132 (= lt!2680804 e!4649166)))

(declare-fun c!1445740 () Bool)

(assert (=> d!2355132 (= c!1445740 (isEmpty!42385 s!14219))))

(assert (=> d!2355132 (validRegex!11564 r1!6200)))

(assert (=> d!2355132 (= (matchR!10590 r1!6200 s!14219) lt!2680804)))

(declare-fun b!7869575 () Bool)

(declare-fun res!3127096 () Bool)

(assert (=> b!7869575 (=> res!3127096 e!4649164)))

(assert (=> b!7869575 (= res!3127096 (not (is-ElementMatch!21154 r1!6200)))))

(assert (=> b!7869575 (= e!4649161 e!4649164)))

(declare-fun b!7869580 () Bool)

(assert (=> b!7869580 (= e!4649167 e!4649161)))

(declare-fun c!1445739 () Bool)

(assert (=> b!7869580 (= c!1445739 (is-EmptyLang!21154 r1!6200))))

(declare-fun b!7869581 () Bool)

(declare-fun res!3127098 () Bool)

(assert (=> b!7869581 (=> res!3127098 e!4649164)))

(assert (=> b!7869581 (= res!3127098 e!4649162)))

(declare-fun res!3127095 () Bool)

(assert (=> b!7869581 (=> (not res!3127095) (not e!4649162))))

(assert (=> b!7869581 (= res!3127095 lt!2680804)))

(assert (= (and d!2355132 c!1445740) b!7869578))

(assert (= (and d!2355132 (not c!1445740)) b!7869576))

(assert (= (and d!2355132 c!1445738) b!7869577))

(assert (= (and d!2355132 (not c!1445738)) b!7869580))

(assert (= (and b!7869580 c!1445739) b!7869571))

(assert (= (and b!7869580 (not c!1445739)) b!7869575))

(assert (= (and b!7869575 (not res!3127096)) b!7869581))

(assert (= (and b!7869581 res!3127095) b!7869569))

(assert (= (and b!7869569 res!3127092) b!7869579))

(assert (= (and b!7869579 res!3127099) b!7869574))

(assert (= (and b!7869581 (not res!3127098)) b!7869570))

(assert (= (and b!7869570 res!3127093) b!7869573))

(assert (= (and b!7869573 (not res!3127097)) b!7869572))

(assert (= (and b!7869572 (not res!3127094)) b!7869568))

(assert (= (or b!7869577 b!7869569 b!7869573) bm!729721))

(declare-fun m!8264702 () Bool)

(assert (=> b!7869576 m!8264702))

(assert (=> b!7869576 m!8264702))

(declare-fun m!8264704 () Bool)

(assert (=> b!7869576 m!8264704))

(declare-fun m!8264706 () Bool)

(assert (=> b!7869576 m!8264706))

(assert (=> b!7869576 m!8264704))

(assert (=> b!7869576 m!8264706))

(declare-fun m!8264708 () Bool)

(assert (=> b!7869576 m!8264708))

(declare-fun m!8264710 () Bool)

(assert (=> b!7869578 m!8264710))

(assert (=> b!7869579 m!8264706))

(assert (=> b!7869579 m!8264706))

(declare-fun m!8264712 () Bool)

(assert (=> b!7869579 m!8264712))

(assert (=> b!7869572 m!8264706))

(assert (=> b!7869572 m!8264706))

(assert (=> b!7869572 m!8264712))

(declare-fun m!8264714 () Bool)

(assert (=> bm!729721 m!8264714))

(assert (=> b!7869574 m!8264702))

(assert (=> d!2355132 m!8264714))

(assert (=> d!2355132 m!8264676))

(assert (=> b!7869568 m!8264702))

(assert (=> b!7869453 d!2355132))

(declare-fun bm!729726 () Bool)

(declare-fun call!729731 () Bool)

(declare-fun c!1445742 () Bool)

(assert (=> bm!729726 (= call!729731 (validRegex!11564 (ite c!1445742 (regTwo!42821 r2!6138) (regOne!42820 r2!6138))))))

(declare-fun b!7869582 () Bool)

(declare-fun res!3127104 () Bool)

(declare-fun e!4649173 () Bool)

(assert (=> b!7869582 (=> res!3127104 e!4649173)))

(assert (=> b!7869582 (= res!3127104 (not (is-Concat!29999 r2!6138)))))

(declare-fun e!4649170 () Bool)

(assert (=> b!7869582 (= e!4649170 e!4649173)))

(declare-fun b!7869583 () Bool)

(declare-fun e!4649169 () Bool)

(assert (=> b!7869583 (= e!4649173 e!4649169)))

(declare-fun res!3127100 () Bool)

(assert (=> b!7869583 (=> (not res!3127100) (not e!4649169))))

(assert (=> b!7869583 (= res!3127100 call!729731)))

(declare-fun b!7869584 () Bool)

(declare-fun call!729732 () Bool)

(assert (=> b!7869584 (= e!4649169 call!729732)))

(declare-fun b!7869585 () Bool)

(declare-fun res!3127103 () Bool)

(declare-fun e!4649168 () Bool)

(assert (=> b!7869585 (=> (not res!3127103) (not e!4649168))))

(assert (=> b!7869585 (= res!3127103 call!729732)))

(assert (=> b!7869585 (= e!4649170 e!4649168)))

(declare-fun b!7869586 () Bool)

(declare-fun e!4649171 () Bool)

(declare-fun e!4649172 () Bool)

(assert (=> b!7869586 (= e!4649171 e!4649172)))

(declare-fun res!3127102 () Bool)

(assert (=> b!7869586 (= res!3127102 (not (nullable!9418 (reg!21483 r2!6138))))))

(assert (=> b!7869586 (=> (not res!3127102) (not e!4649172))))

(declare-fun bm!729727 () Bool)

(declare-fun call!729733 () Bool)

(assert (=> bm!729727 (= call!729732 call!729733)))

(declare-fun b!7869588 () Bool)

(declare-fun e!4649174 () Bool)

(assert (=> b!7869588 (= e!4649174 e!4649171)))

(declare-fun c!1445741 () Bool)

(assert (=> b!7869588 (= c!1445741 (is-Star!21154 r2!6138))))

(declare-fun b!7869589 () Bool)

(assert (=> b!7869589 (= e!4649171 e!4649170)))

(assert (=> b!7869589 (= c!1445742 (is-Union!21154 r2!6138))))

(declare-fun bm!729728 () Bool)

(assert (=> bm!729728 (= call!729733 (validRegex!11564 (ite c!1445741 (reg!21483 r2!6138) (ite c!1445742 (regOne!42821 r2!6138) (regTwo!42820 r2!6138)))))))

(declare-fun b!7869590 () Bool)

(assert (=> b!7869590 (= e!4649168 call!729731)))

(declare-fun d!2355134 () Bool)

(declare-fun res!3127101 () Bool)

(assert (=> d!2355134 (=> res!3127101 e!4649174)))

(assert (=> d!2355134 (= res!3127101 (is-ElementMatch!21154 r2!6138))))

(assert (=> d!2355134 (= (validRegex!11564 r2!6138) e!4649174)))

(declare-fun b!7869587 () Bool)

(assert (=> b!7869587 (= e!4649172 call!729733)))

(assert (= (and d!2355134 (not res!3127101)) b!7869588))

(assert (= (and b!7869588 c!1445741) b!7869586))

(assert (= (and b!7869588 (not c!1445741)) b!7869589))

(assert (= (and b!7869586 res!3127102) b!7869587))

(assert (= (and b!7869589 c!1445742) b!7869585))

(assert (= (and b!7869589 (not c!1445742)) b!7869582))

(assert (= (and b!7869585 res!3127103) b!7869590))

(assert (= (and b!7869582 (not res!3127104)) b!7869583))

(assert (= (and b!7869583 res!3127100) b!7869584))

(assert (= (or b!7869590 b!7869583) bm!729726))

(assert (= (or b!7869585 b!7869584) bm!729727))

(assert (= (or b!7869587 bm!729727) bm!729728))

(declare-fun m!8264716 () Bool)

(assert (=> bm!729726 m!8264716))

(declare-fun m!8264718 () Bool)

(assert (=> b!7869586 m!8264718))

(declare-fun m!8264720 () Bool)

(assert (=> bm!729728 m!8264720))

(assert (=> b!7869449 d!2355134))

(declare-fun d!2355136 () Bool)

(assert (=> d!2355136 (matchR!10590 (Union!21154 lt!2680788 lt!2680789) (t!388748 s!14219))))

(declare-fun lt!2680807 () Unit!168970)

(declare-fun choose!59685 (Regex!21154 Regex!21154 List!74013) Unit!168970)

(assert (=> d!2355136 (= lt!2680807 (choose!59685 lt!2680788 lt!2680789 (t!388748 s!14219)))))

(declare-fun e!4649177 () Bool)

(assert (=> d!2355136 e!4649177))

(declare-fun res!3127107 () Bool)

(assert (=> d!2355136 (=> (not res!3127107) (not e!4649177))))

(assert (=> d!2355136 (= res!3127107 (validRegex!11564 lt!2680788))))

(assert (=> d!2355136 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!141 lt!2680788 lt!2680789 (t!388748 s!14219)) lt!2680807)))

(declare-fun b!7869593 () Bool)

(assert (=> b!7869593 (= e!4649177 (validRegex!11564 lt!2680789))))

(assert (= (and d!2355136 res!3127107) b!7869593))

(assert (=> d!2355136 m!8264668))

(declare-fun m!8264722 () Bool)

(assert (=> d!2355136 m!8264722))

(declare-fun m!8264724 () Bool)

(assert (=> d!2355136 m!8264724))

(declare-fun m!8264726 () Bool)

(assert (=> b!7869593 m!8264726))

(assert (=> b!7869446 d!2355136))

(declare-fun b!7869634 () Bool)

(declare-fun e!4649200 () Regex!21154)

(declare-fun e!4649199 () Regex!21154)

(assert (=> b!7869634 (= e!4649200 e!4649199)))

(declare-fun c!1445765 () Bool)

(assert (=> b!7869634 (= c!1445765 (is-ElementMatch!21154 r1!6200))))

(declare-fun c!1445766 () Bool)

(declare-fun bm!729749 () Bool)

(declare-fun call!729756 () Regex!21154)

(assert (=> bm!729749 (= call!729756 (derivativeStep!6385 (ite c!1445766 (regOne!42821 r1!6200) (regTwo!42820 r1!6200)) (h!80337 s!14219)))))

(declare-fun b!7869635 () Bool)

(declare-fun e!4649201 () Regex!21154)

(declare-fun call!729755 () Regex!21154)

(assert (=> b!7869635 (= e!4649201 (Union!21154 (Concat!29999 call!729755 (regTwo!42820 r1!6200)) EmptyLang!21154))))

(declare-fun bm!729750 () Bool)

(declare-fun call!729754 () Regex!21154)

(assert (=> bm!729750 (= call!729755 call!729754)))

(declare-fun b!7869636 () Bool)

(assert (=> b!7869636 (= c!1445766 (is-Union!21154 r1!6200))))

(declare-fun e!4649198 () Regex!21154)

(assert (=> b!7869636 (= e!4649199 e!4649198)))

(declare-fun b!7869637 () Bool)

(declare-fun c!1445764 () Bool)

(assert (=> b!7869637 (= c!1445764 (nullable!9418 (regOne!42820 r1!6200)))))

(declare-fun e!4649202 () Regex!21154)

(assert (=> b!7869637 (= e!4649202 e!4649201)))

(declare-fun b!7869638 () Bool)

(assert (=> b!7869638 (= e!4649201 (Union!21154 (Concat!29999 call!729755 (regTwo!42820 r1!6200)) call!729756))))

(declare-fun b!7869639 () Bool)

(declare-fun call!729757 () Regex!21154)

(assert (=> b!7869639 (= e!4649198 (Union!21154 call!729756 call!729757))))

(declare-fun b!7869640 () Bool)

(assert (=> b!7869640 (= e!4649198 e!4649202)))

(declare-fun c!1445763 () Bool)

(assert (=> b!7869640 (= c!1445763 (is-Star!21154 r1!6200))))

(declare-fun bm!729751 () Bool)

(assert (=> bm!729751 (= call!729754 call!729757)))

(declare-fun b!7869641 () Bool)

(assert (=> b!7869641 (= e!4649202 (Concat!29999 call!729754 r1!6200))))

(declare-fun d!2355138 () Bool)

(declare-fun lt!2680812 () Regex!21154)

(assert (=> d!2355138 (validRegex!11564 lt!2680812)))

(assert (=> d!2355138 (= lt!2680812 e!4649200)))

(declare-fun c!1445767 () Bool)

(assert (=> d!2355138 (= c!1445767 (or (is-EmptyExpr!21154 r1!6200) (is-EmptyLang!21154 r1!6200)))))

(assert (=> d!2355138 (validRegex!11564 r1!6200)))

(assert (=> d!2355138 (= (derivativeStep!6385 r1!6200 (h!80337 s!14219)) lt!2680812)))

(declare-fun bm!729752 () Bool)

(assert (=> bm!729752 (= call!729757 (derivativeStep!6385 (ite c!1445766 (regTwo!42821 r1!6200) (ite c!1445763 (reg!21483 r1!6200) (regOne!42820 r1!6200))) (h!80337 s!14219)))))

(declare-fun b!7869642 () Bool)

(assert (=> b!7869642 (= e!4649199 (ite (= (h!80337 s!14219) (c!1445714 r1!6200)) EmptyExpr!21154 EmptyLang!21154))))

(declare-fun b!7869643 () Bool)

(assert (=> b!7869643 (= e!4649200 EmptyLang!21154)))

(assert (= (and d!2355138 c!1445767) b!7869643))

(assert (= (and d!2355138 (not c!1445767)) b!7869634))

(assert (= (and b!7869634 c!1445765) b!7869642))

(assert (= (and b!7869634 (not c!1445765)) b!7869636))

(assert (= (and b!7869636 c!1445766) b!7869639))

(assert (= (and b!7869636 (not c!1445766)) b!7869640))

(assert (= (and b!7869640 c!1445763) b!7869641))

(assert (= (and b!7869640 (not c!1445763)) b!7869637))

(assert (= (and b!7869637 c!1445764) b!7869638))

(assert (= (and b!7869637 (not c!1445764)) b!7869635))

(assert (= (or b!7869638 b!7869635) bm!729750))

(assert (= (or b!7869641 bm!729750) bm!729751))

(assert (= (or b!7869639 bm!729751) bm!729752))

(assert (= (or b!7869639 b!7869638) bm!729749))

(declare-fun m!8264744 () Bool)

(assert (=> bm!729749 m!8264744))

(declare-fun m!8264746 () Bool)

(assert (=> b!7869637 m!8264746))

(declare-fun m!8264748 () Bool)

(assert (=> d!2355138 m!8264748))

(assert (=> d!2355138 m!8264676))

(declare-fun m!8264750 () Bool)

(assert (=> bm!729752 m!8264750))

(assert (=> b!7869446 d!2355138))

(declare-fun b!7869644 () Bool)

(declare-fun e!4649205 () Regex!21154)

(declare-fun e!4649204 () Regex!21154)

(assert (=> b!7869644 (= e!4649205 e!4649204)))

(declare-fun c!1445770 () Bool)

(assert (=> b!7869644 (= c!1445770 (is-ElementMatch!21154 r2!6138))))

(declare-fun c!1445771 () Bool)

(declare-fun bm!729753 () Bool)

(declare-fun call!729760 () Regex!21154)

(assert (=> bm!729753 (= call!729760 (derivativeStep!6385 (ite c!1445771 (regOne!42821 r2!6138) (regTwo!42820 r2!6138)) (h!80337 s!14219)))))

(declare-fun b!7869645 () Bool)

(declare-fun e!4649206 () Regex!21154)

(declare-fun call!729759 () Regex!21154)

(assert (=> b!7869645 (= e!4649206 (Union!21154 (Concat!29999 call!729759 (regTwo!42820 r2!6138)) EmptyLang!21154))))

(declare-fun bm!729754 () Bool)

(declare-fun call!729758 () Regex!21154)

(assert (=> bm!729754 (= call!729759 call!729758)))

(declare-fun b!7869646 () Bool)

(assert (=> b!7869646 (= c!1445771 (is-Union!21154 r2!6138))))

(declare-fun e!4649203 () Regex!21154)

(assert (=> b!7869646 (= e!4649204 e!4649203)))

(declare-fun b!7869647 () Bool)

(declare-fun c!1445769 () Bool)

(assert (=> b!7869647 (= c!1445769 (nullable!9418 (regOne!42820 r2!6138)))))

(declare-fun e!4649207 () Regex!21154)

(assert (=> b!7869647 (= e!4649207 e!4649206)))

(declare-fun b!7869648 () Bool)

(assert (=> b!7869648 (= e!4649206 (Union!21154 (Concat!29999 call!729759 (regTwo!42820 r2!6138)) call!729760))))

(declare-fun b!7869649 () Bool)

(declare-fun call!729761 () Regex!21154)

(assert (=> b!7869649 (= e!4649203 (Union!21154 call!729760 call!729761))))

(declare-fun b!7869650 () Bool)

(assert (=> b!7869650 (= e!4649203 e!4649207)))

(declare-fun c!1445768 () Bool)

(assert (=> b!7869650 (= c!1445768 (is-Star!21154 r2!6138))))

(declare-fun bm!729755 () Bool)

(assert (=> bm!729755 (= call!729758 call!729761)))

(declare-fun b!7869651 () Bool)

(assert (=> b!7869651 (= e!4649207 (Concat!29999 call!729758 r2!6138))))

(declare-fun d!2355144 () Bool)

(declare-fun lt!2680813 () Regex!21154)

(assert (=> d!2355144 (validRegex!11564 lt!2680813)))

(assert (=> d!2355144 (= lt!2680813 e!4649205)))

(declare-fun c!1445772 () Bool)

(assert (=> d!2355144 (= c!1445772 (or (is-EmptyExpr!21154 r2!6138) (is-EmptyLang!21154 r2!6138)))))

(assert (=> d!2355144 (validRegex!11564 r2!6138)))

(assert (=> d!2355144 (= (derivativeStep!6385 r2!6138 (h!80337 s!14219)) lt!2680813)))

(declare-fun bm!729756 () Bool)

(assert (=> bm!729756 (= call!729761 (derivativeStep!6385 (ite c!1445771 (regTwo!42821 r2!6138) (ite c!1445768 (reg!21483 r2!6138) (regOne!42820 r2!6138))) (h!80337 s!14219)))))

(declare-fun b!7869652 () Bool)

(assert (=> b!7869652 (= e!4649204 (ite (= (h!80337 s!14219) (c!1445714 r2!6138)) EmptyExpr!21154 EmptyLang!21154))))

(declare-fun b!7869653 () Bool)

(assert (=> b!7869653 (= e!4649205 EmptyLang!21154)))

(assert (= (and d!2355144 c!1445772) b!7869653))

(assert (= (and d!2355144 (not c!1445772)) b!7869644))

(assert (= (and b!7869644 c!1445770) b!7869652))

(assert (= (and b!7869644 (not c!1445770)) b!7869646))

(assert (= (and b!7869646 c!1445771) b!7869649))

(assert (= (and b!7869646 (not c!1445771)) b!7869650))

(assert (= (and b!7869650 c!1445768) b!7869651))

(assert (= (and b!7869650 (not c!1445768)) b!7869647))

(assert (= (and b!7869647 c!1445769) b!7869648))

(assert (= (and b!7869647 (not c!1445769)) b!7869645))

(assert (= (or b!7869648 b!7869645) bm!729754))

(assert (= (or b!7869651 bm!729754) bm!729755))

(assert (= (or b!7869649 bm!729755) bm!729756))

(assert (= (or b!7869649 b!7869648) bm!729753))

(declare-fun m!8264752 () Bool)

(assert (=> bm!729753 m!8264752))

(declare-fun m!8264754 () Bool)

(assert (=> b!7869647 m!8264754))

(declare-fun m!8264756 () Bool)

(assert (=> d!2355144 m!8264756))

(assert (=> d!2355144 m!8264674))

(declare-fun m!8264758 () Bool)

(assert (=> bm!729756 m!8264758))

(assert (=> b!7869446 d!2355144))

(declare-fun call!729762 () Bool)

(declare-fun bm!729757 () Bool)

(declare-fun c!1445774 () Bool)

(assert (=> bm!729757 (= call!729762 (validRegex!11564 (ite c!1445774 (regTwo!42821 (Union!21154 r1!6200 r2!6138)) (regOne!42820 (Union!21154 r1!6200 r2!6138)))))))

(declare-fun b!7869654 () Bool)

(declare-fun res!3127112 () Bool)

(declare-fun e!4649213 () Bool)

(assert (=> b!7869654 (=> res!3127112 e!4649213)))

(assert (=> b!7869654 (= res!3127112 (not (is-Concat!29999 (Union!21154 r1!6200 r2!6138))))))

(declare-fun e!4649210 () Bool)

(assert (=> b!7869654 (= e!4649210 e!4649213)))

(declare-fun b!7869655 () Bool)

(declare-fun e!4649209 () Bool)

(assert (=> b!7869655 (= e!4649213 e!4649209)))

(declare-fun res!3127108 () Bool)

(assert (=> b!7869655 (=> (not res!3127108) (not e!4649209))))

(assert (=> b!7869655 (= res!3127108 call!729762)))

(declare-fun b!7869656 () Bool)

(declare-fun call!729763 () Bool)

(assert (=> b!7869656 (= e!4649209 call!729763)))

(declare-fun b!7869657 () Bool)

(declare-fun res!3127111 () Bool)

(declare-fun e!4649208 () Bool)

(assert (=> b!7869657 (=> (not res!3127111) (not e!4649208))))

(assert (=> b!7869657 (= res!3127111 call!729763)))

(assert (=> b!7869657 (= e!4649210 e!4649208)))

(declare-fun b!7869658 () Bool)

(declare-fun e!4649211 () Bool)

(declare-fun e!4649212 () Bool)

(assert (=> b!7869658 (= e!4649211 e!4649212)))

(declare-fun res!3127110 () Bool)

(assert (=> b!7869658 (= res!3127110 (not (nullable!9418 (reg!21483 (Union!21154 r1!6200 r2!6138)))))))

(assert (=> b!7869658 (=> (not res!3127110) (not e!4649212))))

(declare-fun bm!729758 () Bool)

(declare-fun call!729764 () Bool)

(assert (=> bm!729758 (= call!729763 call!729764)))

(declare-fun b!7869660 () Bool)

(declare-fun e!4649214 () Bool)

(assert (=> b!7869660 (= e!4649214 e!4649211)))

(declare-fun c!1445773 () Bool)

(assert (=> b!7869660 (= c!1445773 (is-Star!21154 (Union!21154 r1!6200 r2!6138)))))

(declare-fun b!7869661 () Bool)

(assert (=> b!7869661 (= e!4649211 e!4649210)))

(assert (=> b!7869661 (= c!1445774 (is-Union!21154 (Union!21154 r1!6200 r2!6138)))))

(declare-fun bm!729759 () Bool)

(assert (=> bm!729759 (= call!729764 (validRegex!11564 (ite c!1445773 (reg!21483 (Union!21154 r1!6200 r2!6138)) (ite c!1445774 (regOne!42821 (Union!21154 r1!6200 r2!6138)) (regTwo!42820 (Union!21154 r1!6200 r2!6138))))))))

(declare-fun b!7869662 () Bool)

(assert (=> b!7869662 (= e!4649208 call!729762)))

(declare-fun d!2355146 () Bool)

(declare-fun res!3127109 () Bool)

(assert (=> d!2355146 (=> res!3127109 e!4649214)))

(assert (=> d!2355146 (= res!3127109 (is-ElementMatch!21154 (Union!21154 r1!6200 r2!6138)))))

(assert (=> d!2355146 (= (validRegex!11564 (Union!21154 r1!6200 r2!6138)) e!4649214)))

(declare-fun b!7869659 () Bool)

(assert (=> b!7869659 (= e!4649212 call!729764)))

(assert (= (and d!2355146 (not res!3127109)) b!7869660))

(assert (= (and b!7869660 c!1445773) b!7869658))

(assert (= (and b!7869660 (not c!1445773)) b!7869661))

(assert (= (and b!7869658 res!3127110) b!7869659))

(assert (= (and b!7869661 c!1445774) b!7869657))

(assert (= (and b!7869661 (not c!1445774)) b!7869654))

(assert (= (and b!7869657 res!3127111) b!7869662))

(assert (= (and b!7869654 (not res!3127112)) b!7869655))

(assert (= (and b!7869655 res!3127108) b!7869656))

(assert (= (or b!7869662 b!7869655) bm!729757))

(assert (= (or b!7869657 b!7869656) bm!729758))

(assert (= (or b!7869659 bm!729758) bm!729759))

(declare-fun m!8264760 () Bool)

(assert (=> bm!729757 m!8264760))

(declare-fun m!8264762 () Bool)

(assert (=> b!7869658 m!8264762))

(declare-fun m!8264764 () Bool)

(assert (=> bm!729759 m!8264764))

(assert (=> b!7869446 d!2355146))

(declare-fun e!4649219 () Bool)

(declare-fun b!7869663 () Bool)

(assert (=> b!7869663 (= e!4649219 (not (= (head!16096 (t!388748 s!14219)) (c!1445714 (Union!21154 lt!2680788 lt!2680789)))))))

(declare-fun b!7869664 () Bool)

(declare-fun res!3127113 () Bool)

(declare-fun e!4649216 () Bool)

(assert (=> b!7869664 (=> (not res!3127113) (not e!4649216))))

(declare-fun call!729765 () Bool)

(assert (=> b!7869664 (= res!3127113 (not call!729765))))

(declare-fun b!7869665 () Bool)

(declare-fun e!4649218 () Bool)

(declare-fun e!4649217 () Bool)

(assert (=> b!7869665 (= e!4649218 e!4649217)))

(declare-fun res!3127114 () Bool)

(assert (=> b!7869665 (=> (not res!3127114) (not e!4649217))))

(declare-fun lt!2680814 () Bool)

(assert (=> b!7869665 (= res!3127114 (not lt!2680814))))

(declare-fun b!7869666 () Bool)

(declare-fun e!4649215 () Bool)

(assert (=> b!7869666 (= e!4649215 (not lt!2680814))))

(declare-fun b!7869667 () Bool)

(declare-fun res!3127115 () Bool)

(assert (=> b!7869667 (=> res!3127115 e!4649219)))

(assert (=> b!7869667 (= res!3127115 (not (isEmpty!42385 (tail!15639 (t!388748 s!14219)))))))

(declare-fun b!7869668 () Bool)

(assert (=> b!7869668 (= e!4649217 e!4649219)))

(declare-fun res!3127118 () Bool)

(assert (=> b!7869668 (=> res!3127118 e!4649219)))

(assert (=> b!7869668 (= res!3127118 call!729765)))

(declare-fun b!7869669 () Bool)

(assert (=> b!7869669 (= e!4649216 (= (head!16096 (t!388748 s!14219)) (c!1445714 (Union!21154 lt!2680788 lt!2680789))))))

(declare-fun e!4649220 () Bool)

(declare-fun b!7869671 () Bool)

(assert (=> b!7869671 (= e!4649220 (matchR!10590 (derivativeStep!6385 (Union!21154 lt!2680788 lt!2680789) (head!16096 (t!388748 s!14219))) (tail!15639 (t!388748 s!14219))))))

(declare-fun b!7869672 () Bool)

(declare-fun e!4649221 () Bool)

(assert (=> b!7869672 (= e!4649221 (= lt!2680814 call!729765))))

(declare-fun b!7869673 () Bool)

(assert (=> b!7869673 (= e!4649220 (nullable!9418 (Union!21154 lt!2680788 lt!2680789)))))

(declare-fun bm!729760 () Bool)

(assert (=> bm!729760 (= call!729765 (isEmpty!42385 (t!388748 s!14219)))))

(declare-fun b!7869674 () Bool)

(declare-fun res!3127120 () Bool)

(assert (=> b!7869674 (=> (not res!3127120) (not e!4649216))))

(assert (=> b!7869674 (= res!3127120 (isEmpty!42385 (tail!15639 (t!388748 s!14219))))))

(declare-fun d!2355148 () Bool)

(assert (=> d!2355148 e!4649221))

(declare-fun c!1445775 () Bool)

(assert (=> d!2355148 (= c!1445775 (is-EmptyExpr!21154 (Union!21154 lt!2680788 lt!2680789)))))

(assert (=> d!2355148 (= lt!2680814 e!4649220)))

(declare-fun c!1445777 () Bool)

(assert (=> d!2355148 (= c!1445777 (isEmpty!42385 (t!388748 s!14219)))))

(assert (=> d!2355148 (validRegex!11564 (Union!21154 lt!2680788 lt!2680789))))

(assert (=> d!2355148 (= (matchR!10590 (Union!21154 lt!2680788 lt!2680789) (t!388748 s!14219)) lt!2680814)))

(declare-fun b!7869670 () Bool)

(declare-fun res!3127117 () Bool)

(assert (=> b!7869670 (=> res!3127117 e!4649218)))

(assert (=> b!7869670 (= res!3127117 (not (is-ElementMatch!21154 (Union!21154 lt!2680788 lt!2680789))))))

(assert (=> b!7869670 (= e!4649215 e!4649218)))

(declare-fun b!7869675 () Bool)

(assert (=> b!7869675 (= e!4649221 e!4649215)))

(declare-fun c!1445776 () Bool)

(assert (=> b!7869675 (= c!1445776 (is-EmptyLang!21154 (Union!21154 lt!2680788 lt!2680789)))))

(declare-fun b!7869676 () Bool)

(declare-fun res!3127119 () Bool)

(assert (=> b!7869676 (=> res!3127119 e!4649218)))

(assert (=> b!7869676 (= res!3127119 e!4649216)))

(declare-fun res!3127116 () Bool)

(assert (=> b!7869676 (=> (not res!3127116) (not e!4649216))))

(assert (=> b!7869676 (= res!3127116 lt!2680814)))

(assert (= (and d!2355148 c!1445777) b!7869673))

(assert (= (and d!2355148 (not c!1445777)) b!7869671))

(assert (= (and d!2355148 c!1445775) b!7869672))

(assert (= (and d!2355148 (not c!1445775)) b!7869675))

(assert (= (and b!7869675 c!1445776) b!7869666))

(assert (= (and b!7869675 (not c!1445776)) b!7869670))

(assert (= (and b!7869670 (not res!3127117)) b!7869676))

(assert (= (and b!7869676 res!3127116) b!7869664))

(assert (= (and b!7869664 res!3127113) b!7869674))

(assert (= (and b!7869674 res!3127120) b!7869669))

(assert (= (and b!7869676 (not res!3127119)) b!7869665))

(assert (= (and b!7869665 res!3127114) b!7869668))

(assert (= (and b!7869668 (not res!3127118)) b!7869667))

(assert (= (and b!7869667 (not res!3127115)) b!7869663))

(assert (= (or b!7869672 b!7869664 b!7869668) bm!729760))

(declare-fun m!8264766 () Bool)

(assert (=> b!7869671 m!8264766))

(assert (=> b!7869671 m!8264766))

(declare-fun m!8264768 () Bool)

(assert (=> b!7869671 m!8264768))

(declare-fun m!8264770 () Bool)

(assert (=> b!7869671 m!8264770))

(assert (=> b!7869671 m!8264768))

(assert (=> b!7869671 m!8264770))

(declare-fun m!8264772 () Bool)

(assert (=> b!7869671 m!8264772))

(declare-fun m!8264774 () Bool)

(assert (=> b!7869673 m!8264774))

(assert (=> b!7869674 m!8264770))

(assert (=> b!7869674 m!8264770))

(declare-fun m!8264776 () Bool)

(assert (=> b!7869674 m!8264776))

(assert (=> b!7869667 m!8264770))

(assert (=> b!7869667 m!8264770))

(assert (=> b!7869667 m!8264776))

(declare-fun m!8264778 () Bool)

(assert (=> bm!729760 m!8264778))

(assert (=> b!7869669 m!8264766))

(assert (=> d!2355148 m!8264778))

(declare-fun m!8264780 () Bool)

(assert (=> d!2355148 m!8264780))

(assert (=> b!7869663 m!8264766))

(assert (=> b!7869446 d!2355148))

(declare-fun b!7869692 () Bool)

(declare-fun e!4649226 () Bool)

(declare-fun tp!2334861 () Bool)

(declare-fun tp!2334859 () Bool)

(assert (=> b!7869692 (= e!4649226 (and tp!2334861 tp!2334859))))

(declare-fun b!7869691 () Bool)

(assert (=> b!7869691 (= e!4649226 tp_is_empty!52707)))

(declare-fun b!7869695 () Bool)

(declare-fun tp!2334860 () Bool)

(declare-fun tp!2334863 () Bool)

(assert (=> b!7869695 (= e!4649226 (and tp!2334860 tp!2334863))))

(assert (=> b!7869452 (= tp!2334811 e!4649226)))

(declare-fun b!7869693 () Bool)

(declare-fun tp!2334862 () Bool)

(assert (=> b!7869693 (= e!4649226 tp!2334862)))

(assert (= (and b!7869452 (is-ElementMatch!21154 (regOne!42821 r1!6200))) b!7869691))

(assert (= (and b!7869452 (is-Concat!29999 (regOne!42821 r1!6200))) b!7869692))

(assert (= (and b!7869452 (is-Star!21154 (regOne!42821 r1!6200))) b!7869693))

(assert (= (and b!7869452 (is-Union!21154 (regOne!42821 r1!6200))) b!7869695))

(declare-fun b!7869700 () Bool)

(declare-fun e!4649231 () Bool)

(declare-fun tp!2334866 () Bool)

(declare-fun tp!2334864 () Bool)

(assert (=> b!7869700 (= e!4649231 (and tp!2334866 tp!2334864))))

(declare-fun b!7869699 () Bool)

(assert (=> b!7869699 (= e!4649231 tp_is_empty!52707)))

(declare-fun b!7869702 () Bool)

(declare-fun tp!2334865 () Bool)

(declare-fun tp!2334868 () Bool)

(assert (=> b!7869702 (= e!4649231 (and tp!2334865 tp!2334868))))

(assert (=> b!7869452 (= tp!2334812 e!4649231)))

(declare-fun b!7869701 () Bool)

(declare-fun tp!2334867 () Bool)

(assert (=> b!7869701 (= e!4649231 tp!2334867)))

(assert (= (and b!7869452 (is-ElementMatch!21154 (regTwo!42821 r1!6200))) b!7869699))

(assert (= (and b!7869452 (is-Concat!29999 (regTwo!42821 r1!6200))) b!7869700))

(assert (= (and b!7869452 (is-Star!21154 (regTwo!42821 r1!6200))) b!7869701))

(assert (= (and b!7869452 (is-Union!21154 (regTwo!42821 r1!6200))) b!7869702))

(declare-fun b!7869708 () Bool)

(declare-fun e!4649234 () Bool)

(declare-fun tp!2334871 () Bool)

(declare-fun tp!2334869 () Bool)

(assert (=> b!7869708 (= e!4649234 (and tp!2334871 tp!2334869))))

(declare-fun b!7869707 () Bool)

(assert (=> b!7869707 (= e!4649234 tp_is_empty!52707)))

(declare-fun b!7869710 () Bool)

(declare-fun tp!2334870 () Bool)

(declare-fun tp!2334873 () Bool)

(assert (=> b!7869710 (= e!4649234 (and tp!2334870 tp!2334873))))

(assert (=> b!7869447 (= tp!2334814 e!4649234)))

(declare-fun b!7869709 () Bool)

(declare-fun tp!2334872 () Bool)

(assert (=> b!7869709 (= e!4649234 tp!2334872)))

(assert (= (and b!7869447 (is-ElementMatch!21154 (regOne!42820 r1!6200))) b!7869707))

(assert (= (and b!7869447 (is-Concat!29999 (regOne!42820 r1!6200))) b!7869708))

(assert (= (and b!7869447 (is-Star!21154 (regOne!42820 r1!6200))) b!7869709))

(assert (= (and b!7869447 (is-Union!21154 (regOne!42820 r1!6200))) b!7869710))

(declare-fun b!7869716 () Bool)

(declare-fun e!4649239 () Bool)

(declare-fun tp!2334876 () Bool)

(declare-fun tp!2334874 () Bool)

(assert (=> b!7869716 (= e!4649239 (and tp!2334876 tp!2334874))))

(declare-fun b!7869715 () Bool)

(assert (=> b!7869715 (= e!4649239 tp_is_empty!52707)))

(declare-fun b!7869718 () Bool)

(declare-fun tp!2334875 () Bool)

(declare-fun tp!2334878 () Bool)

(assert (=> b!7869718 (= e!4649239 (and tp!2334875 tp!2334878))))

(assert (=> b!7869447 (= tp!2334815 e!4649239)))

(declare-fun b!7869717 () Bool)

(declare-fun tp!2334877 () Bool)

(assert (=> b!7869717 (= e!4649239 tp!2334877)))

(assert (= (and b!7869447 (is-ElementMatch!21154 (regTwo!42820 r1!6200))) b!7869715))

(assert (= (and b!7869447 (is-Concat!29999 (regTwo!42820 r1!6200))) b!7869716))

(assert (= (and b!7869447 (is-Star!21154 (regTwo!42820 r1!6200))) b!7869717))

(assert (= (and b!7869447 (is-Union!21154 (regTwo!42820 r1!6200))) b!7869718))

(declare-fun b!7869722 () Bool)

(declare-fun e!4649242 () Bool)

(declare-fun tp!2334881 () Bool)

(declare-fun tp!2334879 () Bool)

(assert (=> b!7869722 (= e!4649242 (and tp!2334881 tp!2334879))))

(declare-fun b!7869721 () Bool)

(assert (=> b!7869721 (= e!4649242 tp_is_empty!52707)))

(declare-fun b!7869724 () Bool)

(declare-fun tp!2334880 () Bool)

(declare-fun tp!2334883 () Bool)

(assert (=> b!7869724 (= e!4649242 (and tp!2334880 tp!2334883))))

(assert (=> b!7869448 (= tp!2334808 e!4649242)))

(declare-fun b!7869723 () Bool)

(declare-fun tp!2334882 () Bool)

(assert (=> b!7869723 (= e!4649242 tp!2334882)))

(assert (= (and b!7869448 (is-ElementMatch!21154 (regOne!42821 r2!6138))) b!7869721))

(assert (= (and b!7869448 (is-Concat!29999 (regOne!42821 r2!6138))) b!7869722))

(assert (= (and b!7869448 (is-Star!21154 (regOne!42821 r2!6138))) b!7869723))

(assert (= (and b!7869448 (is-Union!21154 (regOne!42821 r2!6138))) b!7869724))

(declare-fun b!7869726 () Bool)

(declare-fun e!4649243 () Bool)

(declare-fun tp!2334886 () Bool)

(declare-fun tp!2334884 () Bool)

(assert (=> b!7869726 (= e!4649243 (and tp!2334886 tp!2334884))))

(declare-fun b!7869725 () Bool)

(assert (=> b!7869725 (= e!4649243 tp_is_empty!52707)))

(declare-fun b!7869728 () Bool)

(declare-fun tp!2334885 () Bool)

(declare-fun tp!2334888 () Bool)

(assert (=> b!7869728 (= e!4649243 (and tp!2334885 tp!2334888))))

(assert (=> b!7869448 (= tp!2334810 e!4649243)))

(declare-fun b!7869727 () Bool)

(declare-fun tp!2334887 () Bool)

(assert (=> b!7869727 (= e!4649243 tp!2334887)))

(assert (= (and b!7869448 (is-ElementMatch!21154 (regTwo!42821 r2!6138))) b!7869725))

(assert (= (and b!7869448 (is-Concat!29999 (regTwo!42821 r2!6138))) b!7869726))

(assert (= (and b!7869448 (is-Star!21154 (regTwo!42821 r2!6138))) b!7869727))

(assert (= (and b!7869448 (is-Union!21154 (regTwo!42821 r2!6138))) b!7869728))

(declare-fun b!7869730 () Bool)

(declare-fun e!4649244 () Bool)

(declare-fun tp!2334891 () Bool)

(declare-fun tp!2334889 () Bool)

(assert (=> b!7869730 (= e!4649244 (and tp!2334891 tp!2334889))))

(declare-fun b!7869729 () Bool)

(assert (=> b!7869729 (= e!4649244 tp_is_empty!52707)))

(declare-fun b!7869732 () Bool)

(declare-fun tp!2334890 () Bool)

(declare-fun tp!2334893 () Bool)

(assert (=> b!7869732 (= e!4649244 (and tp!2334890 tp!2334893))))

(assert (=> b!7869450 (= tp!2334806 e!4649244)))

(declare-fun b!7869731 () Bool)

(declare-fun tp!2334892 () Bool)

(assert (=> b!7869731 (= e!4649244 tp!2334892)))

(assert (= (and b!7869450 (is-ElementMatch!21154 (reg!21483 r2!6138))) b!7869729))

(assert (= (and b!7869450 (is-Concat!29999 (reg!21483 r2!6138))) b!7869730))

(assert (= (and b!7869450 (is-Star!21154 (reg!21483 r2!6138))) b!7869731))

(assert (= (and b!7869450 (is-Union!21154 (reg!21483 r2!6138))) b!7869732))

(declare-fun b!7869734 () Bool)

(declare-fun e!4649245 () Bool)

(declare-fun tp!2334896 () Bool)

(declare-fun tp!2334894 () Bool)

(assert (=> b!7869734 (= e!4649245 (and tp!2334896 tp!2334894))))

(declare-fun b!7869733 () Bool)

(assert (=> b!7869733 (= e!4649245 tp_is_empty!52707)))

(declare-fun b!7869736 () Bool)

(declare-fun tp!2334895 () Bool)

(declare-fun tp!2334898 () Bool)

(assert (=> b!7869736 (= e!4649245 (and tp!2334895 tp!2334898))))

(assert (=> b!7869445 (= tp!2334813 e!4649245)))

(declare-fun b!7869735 () Bool)

(declare-fun tp!2334897 () Bool)

(assert (=> b!7869735 (= e!4649245 tp!2334897)))

(assert (= (and b!7869445 (is-ElementMatch!21154 (reg!21483 r1!6200))) b!7869733))

(assert (= (and b!7869445 (is-Concat!29999 (reg!21483 r1!6200))) b!7869734))

(assert (= (and b!7869445 (is-Star!21154 (reg!21483 r1!6200))) b!7869735))

(assert (= (and b!7869445 (is-Union!21154 (reg!21483 r1!6200))) b!7869736))

(declare-fun b!7869738 () Bool)

(declare-fun e!4649246 () Bool)

(declare-fun tp!2334901 () Bool)

(declare-fun tp!2334899 () Bool)

(assert (=> b!7869738 (= e!4649246 (and tp!2334901 tp!2334899))))

(declare-fun b!7869737 () Bool)

(assert (=> b!7869737 (= e!4649246 tp_is_empty!52707)))

(declare-fun b!7869740 () Bool)

(declare-fun tp!2334900 () Bool)

(declare-fun tp!2334903 () Bool)

(assert (=> b!7869740 (= e!4649246 (and tp!2334900 tp!2334903))))

(assert (=> b!7869444 (= tp!2334805 e!4649246)))

(declare-fun b!7869739 () Bool)

(declare-fun tp!2334902 () Bool)

(assert (=> b!7869739 (= e!4649246 tp!2334902)))

(assert (= (and b!7869444 (is-ElementMatch!21154 (regOne!42820 r2!6138))) b!7869737))

(assert (= (and b!7869444 (is-Concat!29999 (regOne!42820 r2!6138))) b!7869738))

(assert (= (and b!7869444 (is-Star!21154 (regOne!42820 r2!6138))) b!7869739))

(assert (= (and b!7869444 (is-Union!21154 (regOne!42820 r2!6138))) b!7869740))

(declare-fun b!7869742 () Bool)

(declare-fun e!4649247 () Bool)

(declare-fun tp!2334906 () Bool)

(declare-fun tp!2334904 () Bool)

(assert (=> b!7869742 (= e!4649247 (and tp!2334906 tp!2334904))))

(declare-fun b!7869741 () Bool)

(assert (=> b!7869741 (= e!4649247 tp_is_empty!52707)))

(declare-fun b!7869744 () Bool)

(declare-fun tp!2334905 () Bool)

(declare-fun tp!2334908 () Bool)

(assert (=> b!7869744 (= e!4649247 (and tp!2334905 tp!2334908))))

(assert (=> b!7869444 (= tp!2334809 e!4649247)))

(declare-fun b!7869743 () Bool)

(declare-fun tp!2334907 () Bool)

(assert (=> b!7869743 (= e!4649247 tp!2334907)))

(assert (= (and b!7869444 (is-ElementMatch!21154 (regTwo!42820 r2!6138))) b!7869741))

(assert (= (and b!7869444 (is-Concat!29999 (regTwo!42820 r2!6138))) b!7869742))

(assert (= (and b!7869444 (is-Star!21154 (regTwo!42820 r2!6138))) b!7869743))

(assert (= (and b!7869444 (is-Union!21154 (regTwo!42820 r2!6138))) b!7869744))

(declare-fun b!7869749 () Bool)

(declare-fun e!4649250 () Bool)

(declare-fun tp!2334911 () Bool)

(assert (=> b!7869749 (= e!4649250 (and tp_is_empty!52707 tp!2334911))))

(assert (=> b!7869451 (= tp!2334807 e!4649250)))

(assert (= (and b!7869451 (is-Cons!73889 (t!388748 s!14219))) b!7869749))

(push 1)

(assert (not b!7869730))

(assert (not d!2355148))

(assert (not bm!729756))

(assert (not b!7869695))

(assert (not b!7869736))

(assert (not b!7869647))

(assert (not b!7869738))

(assert (not b!7869709))

(assert (not bm!729749))

(assert (not b!7869722))

(assert (not bm!729728))

(assert (not b!7869568))

(assert (not b!7869663))

(assert (not b!7869740))

(assert (not d!2355136))

(assert (not b!7869658))

(assert (not bm!729726))

(assert (not d!2355138))

(assert (not d!2355132))

(assert (not b!7869710))

(assert (not b!7869749))

(assert (not b!7869674))

(assert (not b!7869578))

(assert (not b!7869574))

(assert (not bm!729716))

(assert (not b!7869724))

(assert (not b!7869726))

(assert (not b!7869739))

(assert (not b!7869731))

(assert (not b!7869593))

(assert (not b!7869700))

(assert (not b!7869702))

(assert (not bm!729752))

(assert (not b!7869743))

(assert (not b!7869515))

(assert (not b!7869728))

(assert (not b!7869732))

(assert (not b!7869579))

(assert (not b!7869742))

(assert (not b!7869727))

(assert (not b!7869716))

(assert (not b!7869708))

(assert (not d!2355144))

(assert (not bm!729757))

(assert (not b!7869637))

(assert (not b!7869576))

(assert (not b!7869744))

(assert (not b!7869692))

(assert (not b!7869667))

(assert (not b!7869701))

(assert (not b!7869734))

(assert (not b!7869586))

(assert (not bm!729721))

(assert (not b!7869673))

(assert (not b!7869572))

(assert (not bm!729759))

(assert (not b!7869717))

(assert (not bm!729718))

(assert (not bm!729760))

(assert (not b!7869669))

(assert (not b!7869671))

(assert (not b!7869718))

(assert (not b!7869693))

(assert tp_is_empty!52707)

(assert (not bm!729753))

(assert (not b!7869735))

(assert (not b!7869723))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

