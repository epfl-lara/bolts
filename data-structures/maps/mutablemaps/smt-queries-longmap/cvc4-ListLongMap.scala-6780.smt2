; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85348 () Bool)

(assert start!85348)

(declare-fun res!663723 () Bool)

(declare-fun e!560270 () Bool)

(assert (=> start!85348 (=> (not res!663723) (not e!560270))))

(declare-datatypes ((List!21027 0))(
  ( (Nil!21024) (Cons!21023 (h!22185 (_ BitVec 64)) (t!30036 List!21027)) )
))
(declare-fun l!3519 () List!21027)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5784 (List!21027 (_ BitVec 64)) Bool)

(assert (=> start!85348 (= res!663723 (not (contains!5784 l!3519 e!29)))))

(assert (=> start!85348 e!560270))

(assert (=> start!85348 true))

(declare-fun b!992876 () Bool)

(declare-fun e!560269 () Bool)

(assert (=> b!992876 (= e!560270 e!560269)))

(declare-fun res!663724 () Bool)

(assert (=> b!992876 (=> (not res!663724) (not e!560269))))

(declare-datatypes ((tuple2!15094 0))(
  ( (tuple2!15095 (_1!7557 (_ BitVec 64)) (_2!7557 List!21027)) )
))
(declare-datatypes ((Option!560 0))(
  ( (Some!559 (v!14384 tuple2!15094)) (None!558) )
))
(declare-fun lt!440366 () Option!560)

(declare-fun isEmpty!769 (Option!560) Bool)

(assert (=> b!992876 (= res!663724 (not (isEmpty!769 lt!440366)))))

(declare-fun unapply!36 (List!21027) Option!560)

(assert (=> b!992876 (= lt!440366 (unapply!36 l!3519))))

(declare-fun b!992877 () Bool)

(declare-fun e!560268 () Bool)

(assert (=> b!992877 (= e!560269 e!560268)))

(declare-fun res!663722 () Bool)

(assert (=> b!992877 (=> (not res!663722) (not e!560268))))

(declare-fun lt!440365 () tuple2!15094)

(assert (=> b!992877 (= res!663722 (not (contains!5784 (_2!7557 lt!440365) e!29)))))

(declare-fun get!15736 (Option!560) tuple2!15094)

(assert (=> b!992877 (= lt!440365 (get!15736 lt!440366))))

(declare-fun b!992878 () Bool)

(declare-fun -!452 (List!21027 (_ BitVec 64)) List!21027)

(assert (=> b!992878 (= e!560268 (not (= (-!452 l!3519 e!29) l!3519)))))

(assert (=> b!992878 (= (-!452 (_2!7557 lt!440365) e!29) (_2!7557 lt!440365))))

(declare-datatypes ((Unit!32870 0))(
  ( (Unit!32871) )
))
(declare-fun lt!440367 () Unit!32870)

(declare-fun lemmaListMinusENotContainedEqualsList!0 ((_ BitVec 64) List!21027) Unit!32870)

(assert (=> b!992878 (= lt!440367 (lemmaListMinusENotContainedEqualsList!0 e!29 (_2!7557 lt!440365)))))

(assert (= (and start!85348 res!663723) b!992876))

(assert (= (and b!992876 res!663724) b!992877))

(assert (= (and b!992877 res!663722) b!992878))

(declare-fun m!920731 () Bool)

(assert (=> start!85348 m!920731))

(declare-fun m!920733 () Bool)

(assert (=> b!992876 m!920733))

(declare-fun m!920735 () Bool)

(assert (=> b!992876 m!920735))

(declare-fun m!920737 () Bool)

(assert (=> b!992877 m!920737))

(declare-fun m!920739 () Bool)

(assert (=> b!992877 m!920739))

(declare-fun m!920741 () Bool)

(assert (=> b!992878 m!920741))

(declare-fun m!920743 () Bool)

(assert (=> b!992878 m!920743))

(declare-fun m!920745 () Bool)

(assert (=> b!992878 m!920745))

(push 1)

(assert (not b!992876))

(assert (not start!85348))

(assert (not b!992878))

(assert (not b!992877))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118331 () Bool)

(assert (=> d!118331 (= (isEmpty!769 lt!440366) (not (is-Some!559 lt!440366)))))

(assert (=> b!992876 d!118331))

(declare-fun d!118333 () Bool)

(assert (=> d!118333 (= (unapply!36 l!3519) (ite (is-Nil!21024 l!3519) None!558 (Some!559 (tuple2!15095 (h!22185 l!3519) (t!30036 l!3519)))))))

(assert (=> b!992876 d!118333))

(declare-fun d!118335 () Bool)

(declare-fun lt!440376 () Bool)

(declare-fun content!467 (List!21027) (Set (_ BitVec 64)))

(assert (=> d!118335 (= lt!440376 (member e!29 (content!467 l!3519)))))

(declare-fun e!560288 () Bool)

(assert (=> d!118335 (= lt!440376 e!560288)))

(declare-fun res!663741 () Bool)

(assert (=> d!118335 (=> (not res!663741) (not e!560288))))

(assert (=> d!118335 (= res!663741 (is-Cons!21023 l!3519))))

(assert (=> d!118335 (= (contains!5784 l!3519 e!29) lt!440376)))

(declare-fun b!992895 () Bool)

(declare-fun e!560287 () Bool)

(assert (=> b!992895 (= e!560288 e!560287)))

(declare-fun res!663742 () Bool)

(assert (=> b!992895 (=> res!663742 e!560287)))

(assert (=> b!992895 (= res!663742 (= (h!22185 l!3519) e!29))))

(declare-fun b!992896 () Bool)

(assert (=> b!992896 (= e!560287 (contains!5784 (t!30036 l!3519) e!29))))

(assert (= (and d!118335 res!663741) b!992895))

(assert (= (and b!992895 (not res!663742)) b!992896))

(declare-fun m!920759 () Bool)

(assert (=> d!118335 m!920759))

(declare-fun m!920761 () Bool)

(assert (=> d!118335 m!920761))

(declare-fun m!920763 () Bool)

(assert (=> b!992896 m!920763))

(assert (=> start!85348 d!118335))

(declare-fun bm!42129 () Bool)

(declare-fun call!42132 () List!21027)

(assert (=> bm!42129 (= call!42132 (-!452 (t!30036 l!3519) e!29))))

(declare-fun b!992947 () Bool)

(declare-fun e!560323 () List!21027)

(declare-fun e!560325 () List!21027)

(assert (=> b!992947 (= e!560323 e!560325)))

(declare-fun c!100735 () Bool)

(assert (=> b!992947 (= c!100735 (= e!29 (h!22185 l!3519)))))

(declare-fun b!992949 () Bool)

(assert (=> b!992949 (= e!560323 Nil!21024)))

(declare-fun lt!440389 () List!21027)

(declare-fun e!560324 () Bool)

(declare-fun b!992950 () Bool)

(assert (=> b!992950 (= e!560324 (= (content!467 lt!440389) (setminus (content!467 l!3519) (insert e!29 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun b!992951 () Bool)

(assert (=> b!992951 (= e!560325 (Cons!21023 (h!22185 l!3519) call!42132))))

(declare-fun b!992948 () Bool)

(assert (=> b!992948 (= e!560325 call!42132)))

(declare-fun d!118341 () Bool)

(assert (=> d!118341 e!560324))

(declare-fun res!663753 () Bool)

(assert (=> d!118341 (=> (not res!663753) (not e!560324))))

(declare-fun size!30683 (List!21027) Int)

(assert (=> d!118341 (= res!663753 (<= (size!30683 lt!440389) (size!30683 l!3519)))))

(assert (=> d!118341 (= lt!440389 e!560323)))

(declare-fun c!100734 () Bool)

(assert (=> d!118341 (= c!100734 (is-Cons!21023 l!3519))))

(assert (=> d!118341 (= (-!452 l!3519 e!29) lt!440389)))

(assert (= (and d!118341 c!100734) b!992947))

(assert (= (and d!118341 (not c!100734)) b!992949))

(assert (= (and b!992947 c!100735) b!992948))

(assert (= (and b!992947 (not c!100735)) b!992951))

(assert (= (or b!992948 b!992951) bm!42129))

(assert (= (and d!118341 res!663753) b!992950))

(declare-fun m!920805 () Bool)

(assert (=> bm!42129 m!920805))

(declare-fun m!920807 () Bool)

(assert (=> b!992950 m!920807))

(assert (=> b!992950 m!920759))

(declare-fun m!920809 () Bool)

(assert (=> b!992950 m!920809))

(declare-fun m!920811 () Bool)

(assert (=> d!118341 m!920811))

(declare-fun m!920813 () Bool)

(assert (=> d!118341 m!920813))

(assert (=> b!992878 d!118341))

(declare-fun bm!42130 () Bool)

(declare-fun call!42133 () List!21027)

(assert (=> bm!42130 (= call!42133 (-!452 (t!30036 (_2!7557 lt!440365)) e!29))))

(declare-fun b!992952 () Bool)

(declare-fun e!560327 () List!21027)

(declare-fun e!560329 () List!21027)

(assert (=> b!992952 (= e!560327 e!560329)))

(declare-fun c!100737 () Bool)

(assert (=> b!992952 (= c!100737 (= e!29 (h!22185 (_2!7557 lt!440365))))))

(declare-fun b!992954 () Bool)

(assert (=> b!992954 (= e!560327 Nil!21024)))

(declare-fun lt!440393 () List!21027)

(declare-fun e!560328 () Bool)

(declare-fun b!992955 () Bool)

(assert (=> b!992955 (= e!560328 (= (content!467 lt!440393) (setminus (content!467 (_2!7557 lt!440365)) (insert e!29 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun b!992956 () Bool)

(assert (=> b!992956 (= e!560329 (Cons!21023 (h!22185 (_2!7557 lt!440365)) call!42133))))

(declare-fun b!992953 () Bool)

(assert (=> b!992953 (= e!560329 call!42133)))

(declare-fun d!118351 () Bool)

(assert (=> d!118351 e!560328))

(declare-fun res!663754 () Bool)

(assert (=> d!118351 (=> (not res!663754) (not e!560328))))

(assert (=> d!118351 (= res!663754 (<= (size!30683 lt!440393) (size!30683 (_2!7557 lt!440365))))))

(assert (=> d!118351 (= lt!440393 e!560327)))

(declare-fun c!100736 () Bool)

(assert (=> d!118351 (= c!100736 (is-Cons!21023 (_2!7557 lt!440365)))))

(assert (=> d!118351 (= (-!452 (_2!7557 lt!440365) e!29) lt!440393)))

(assert (= (and d!118351 c!100736) b!992952))

(assert (= (and d!118351 (not c!100736)) b!992954))

(assert (= (and b!992952 c!100737) b!992953))

(assert (= (and b!992952 (not c!100737)) b!992956))

(assert (= (or b!992953 b!992956) bm!42130))

(assert (= (and d!118351 res!663754) b!992955))

(declare-fun m!920821 () Bool)

(assert (=> bm!42130 m!920821))

(declare-fun m!920825 () Bool)

(assert (=> b!992955 m!920825))

(declare-fun m!920827 () Bool)

(assert (=> b!992955 m!920827))

(assert (=> b!992955 m!920809))

(declare-fun m!920829 () Bool)

(assert (=> d!118351 m!920829))

(declare-fun m!920831 () Bool)

(assert (=> d!118351 m!920831))

(assert (=> b!992878 d!118351))

(declare-fun d!118359 () Bool)

(assert (=> d!118359 (= (-!452 (_2!7557 lt!440365) e!29) (_2!7557 lt!440365))))

(declare-fun lt!440399 () Unit!32870)

(declare-fun choose!48 ((_ BitVec 64) List!21027) Unit!32870)

(assert (=> d!118359 (= lt!440399 (choose!48 e!29 (_2!7557 lt!440365)))))

(assert (=> d!118359 (not (contains!5784 (_2!7557 lt!440365) e!29))))

(assert (=> d!118359 (= (lemmaListMinusENotContainedEqualsList!0 e!29 (_2!7557 lt!440365)) lt!440399)))

(declare-fun bs!28249 () Bool)

(assert (= bs!28249 d!118359))

(assert (=> bs!28249 m!920743))

(declare-fun m!920837 () Bool)

(assert (=> bs!28249 m!920837))

(assert (=> bs!28249 m!920737))

(assert (=> b!992878 d!118359))

(declare-fun d!118371 () Bool)

(declare-fun lt!440400 () Bool)

(assert (=> d!118371 (= lt!440400 (member e!29 (content!467 (_2!7557 lt!440365))))))

(declare-fun e!560336 () Bool)

(assert (=> d!118371 (= lt!440400 e!560336)))

(declare-fun res!663759 () Bool)

(assert (=> d!118371 (=> (not res!663759) (not e!560336))))

(assert (=> d!118371 (= res!663759 (is-Cons!21023 (_2!7557 lt!440365)))))

(assert (=> 