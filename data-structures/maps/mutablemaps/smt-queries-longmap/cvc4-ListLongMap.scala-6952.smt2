; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87668 () Bool)

(assert start!87668)

(declare-fun b!1013929 () Bool)

(assert (=> b!1013929 true))

(assert (=> b!1013929 true))

(declare-fun bs!28999 () Bool)

(declare-fun b!1013931 () Bool)

(assert (= bs!28999 (and b!1013931 b!1013929)))

(declare-fun lambda!614 () Int)

(declare-fun lambda!613 () Int)

(assert (=> bs!28999 (= lambda!614 lambda!613)))

(assert (=> b!1013931 true))

(assert (=> b!1013931 true))

(declare-fun b!1013927 () Bool)

(declare-fun e!570413 () Bool)

(declare-fun tp_is_empty!23489 () Bool)

(declare-fun tp!70488 () Bool)

(assert (=> b!1013927 (= e!570413 (and tp_is_empty!23489 tp!70488))))

(declare-fun b!1013928 () Bool)

(declare-fun res!680656 () Bool)

(declare-fun e!570411 () Bool)

(assert (=> b!1013928 (=> (not res!680656) (not e!570411))))

(declare-datatypes ((B!1422 0))(
  ( (B!1423 (val!11795 Int)) )
))
(declare-datatypes ((tuple2!15226 0))(
  ( (tuple2!15227 (_1!7623 (_ BitVec 64)) (_2!7623 B!1422)) )
))
(declare-datatypes ((List!21539 0))(
  ( (Nil!21536) (Cons!21535 (h!22733 tuple2!15226) (t!30548 List!21539)) )
))
(declare-fun l!412 () List!21539)

(declare-fun value!115 () B!1422)

(assert (=> b!1013928 (= res!680656 (and (is-Cons!21535 l!412) (= (_2!7623 (h!22733 l!412)) value!115)))))

(declare-datatypes ((Unit!33117 0))(
  ( (Unit!33118) )
))
(declare-fun e!570412 () Unit!33117)

(declare-fun lt!448294 () Unit!33117)

(assert (=> b!1013929 (= e!570412 lt!448294)))

(declare-datatypes ((List!21540 0))(
  ( (Nil!21537) (Cons!21536 (h!22734 (_ BitVec 64)) (t!30549 List!21540)) )
))
(declare-fun lt!448295 () List!21540)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!36 (List!21539 List!21540 B!1422 tuple2!15226) Unit!33117)

(assert (=> b!1013929 (= lt!448294 (lemmaForallGetValueByKeySameWithASmallerHead!36 (t!30548 l!412) lt!448295 value!115 (h!22733 l!412)))))

(declare-fun forall!241 (List!21540 Int) Bool)

(assert (=> b!1013929 (forall!241 lt!448295 lambda!613)))

(declare-fun b!1013930 () Bool)

(declare-fun Unit!33119 () Unit!33117)

(assert (=> b!1013930 (= e!570412 Unit!33119)))

(declare-fun res!680655 () Bool)

(assert (=> start!87668 (=> (not res!680655) (not e!570411))))

(declare-fun isStrictlySorted!565 (List!21539) Bool)

(assert (=> start!87668 (= res!680655 (isStrictlySorted!565 l!412))))

(assert (=> start!87668 e!570411))

(assert (=> start!87668 e!570413))

(assert (=> start!87668 tp_is_empty!23489))

(assert (=> b!1013931 (= e!570411 (not (forall!241 (Cons!21536 (_1!7623 (h!22733 l!412)) lt!448295) lambda!614)))))

(declare-fun lt!448296 () Unit!33117)

(assert (=> b!1013931 (= lt!448296 e!570412)))

(declare-fun c!102525 () Bool)

(declare-fun isEmpty!833 (List!21540) Bool)

(assert (=> b!1013931 (= c!102525 (not (isEmpty!833 lt!448295)))))

(declare-fun getKeysOf!45 (List!21539 B!1422) List!21540)

(assert (=> b!1013931 (= lt!448295 (getKeysOf!45 (t!30548 l!412) value!115))))

(assert (= (and start!87668 res!680655) b!1013928))

(assert (= (and b!1013928 res!680656) b!1013931))

(assert (= (and b!1013931 c!102525) b!1013929))

(assert (= (and b!1013931 (not c!102525)) b!1013930))

(assert (= (and start!87668 (is-Cons!21535 l!412)) b!1013927))

(declare-fun m!936795 () Bool)

(assert (=> b!1013929 m!936795))

(declare-fun m!936797 () Bool)

(assert (=> b!1013929 m!936797))

(declare-fun m!936799 () Bool)

(assert (=> start!87668 m!936799))

(declare-fun m!936801 () Bool)

(assert (=> b!1013931 m!936801))

(declare-fun m!936803 () Bool)

(assert (=> b!1013931 m!936803))

(declare-fun m!936805 () Bool)

(assert (=> b!1013931 m!936805))

(push 1)

(assert (not start!87668))

(assert (not b!1013931))

(assert tp_is_empty!23489)

(assert (not b!1013929))

(assert (not b!1013927))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!29000 () Bool)

(declare-fun b!1013967 () Bool)

(assert (= bs!29000 (and b!1013967 b!1013929)))

(declare-fun lambda!623 () Int)

(assert (=> bs!29000 (= (= (t!30548 l!412) l!412) (= lambda!623 lambda!613))))

(declare-fun bs!29001 () Bool)

(assert (= bs!29001 (and b!1013967 b!1013931)))

(assert (=> bs!29001 (= (= (t!30548 l!412) l!412) (= lambda!623 lambda!614))))

(assert (=> b!1013967 true))

(assert (=> b!1013967 true))

(declare-fun bs!29004 () Bool)

(declare-fun d!120539 () Bool)

(assert (= bs!29004 (and d!120539 b!1013929)))

(declare-fun lambda!625 () Int)

(assert (=> bs!29004 (= (= (Cons!21535 (h!22733 l!412) (t!30548 l!412)) l!412) (= lambda!625 lambda!613))))

(declare-fun bs!29005 () Bool)

(assert (= bs!29005 (and d!120539 b!1013931)))

(assert (=> bs!29005 (= (= (Cons!21535 (h!22733 l!412) (t!30548 l!412)) l!412) (= lambda!625 lambda!614))))

(declare-fun bs!29006 () Bool)

(assert (= bs!29006 (and d!120539 b!1013967)))

(assert (=> bs!29006 (= (= (Cons!21535 (h!22733 l!412) (t!30548 l!412)) (t!30548 l!412)) (= lambda!625 lambda!623))))

(assert (=> d!120539 true))

(assert (=> d!120539 true))

(assert (=> d!120539 true))

(assert (=> d!120539 (forall!241 lt!448295 lambda!625)))

(declare-fun lt!448301 () Unit!33117)

(declare-fun choose!1640 (List!21539 List!21540 B!1422 tuple2!15226) Unit!33117)

(assert (=> d!120539 (= lt!448301 (choose!1640 (t!30548 l!412) lt!448295 value!115 (h!22733 l!412)))))

(declare-fun e!570436 () Bool)

(assert (=> d!120539 e!570436))

(declare-fun res!680687 () Bool)

(assert (=> d!120539 (=> (not res!680687) (not e!570436))))

(assert (=> d!120539 (= res!680687 (isStrictlySorted!565 (t!30548 l!412)))))

(assert (=> d!120539 (= (lemmaForallGetValueByKeySameWithASmallerHead!36 (t!30548 l!412) lt!448295 value!115 (h!22733 l!412)) lt!448301)))

(declare-fun b!1013966 () Bool)

(declare-fun res!680689 () Bool)

(assert (=> b!1013966 (=> (not res!680689) (not e!570436))))

(declare-fun isEmpty!835 (List!21539) Bool)

(assert (=> b!1013966 (= res!680689 (not (isEmpty!835 (t!30548 l!412))))))

(declare-fun res!680688 () Bool)

(assert (=> b!1013967 (=> (not res!680688) (not e!570436))))

(assert (=> b!1013967 (= res!680688 (forall!241 lt!448295 lambda!623))))

(declare-fun b!1013968 () Bool)

(declare-fun head!937 (List!21539) tuple2!15226)

(assert (=> b!1013968 (= e!570436 (bvslt (_1!7623 (h!22733 l!412)) (_1!7623 (head!937 (t!30548 l!412)))))))

(assert (= (and d!120539 res!680687) b!1013966))

(assert (= (and b!1013966 res!680689) b!1013967))

(assert (= (and b!1013967 res!680688) b!1013968))

(declare-fun m!936815 () Bool)

(assert (=> d!120539 m!936815))

(declare-fun m!936817 () Bool)

(assert (=> d!120539 m!936817))

(declare-fun m!936819 () Bool)

(assert (=> d!120539 m!936819))

(declare-fun m!936821 () Bool)

(assert (=> b!1013966 m!936821))

(declare-fun m!936823 () Bool)

(assert (=> b!1013967 m!936823))

(declare-fun m!936825 () Bool)

(assert (=> b!1013968 m!936825))

(assert (=> b!1013929 d!120539))

(declare-fun d!120549 () Bool)

(declare-fun res!680701 () Bool)

(declare-fun e!570446 () Bool)

(assert (=> d!120549 (=> res!680701 e!570446)))

(assert (=> d!120549 (= res!680701 (is-Nil!21537 lt!448295))))

(assert (=> d!120549 (= (forall!241 lt!448295 lambda!613) e!570446)))

(declare-fun b!1013984 () Bool)

(declare-fun e!570447 () Bool)

(assert (=> b!1013984 (= e!570446 e!570447)))

(declare-fun res!680702 () Bool)

(assert (=> b!1013984 (=> (not res!680702) (not e!570447))))

(declare-fun dynLambda!1893 (Int (_ BitVec 64)) Bool)

(assert (=> b!1013984 (= res!680702 (dynLambda!1893 lambda!613 (h!22734 lt!448295)))))

(declare-fun b!1013985 () Bool)

(assert (=> b!1013985 (= e!570447 (forall!241 (t!30549 lt!448295) lambda!613))))

(assert (= (and d!120549 (not res!680701)) b!1013984))

(assert (= (and b!1013984 res!680702) b!1013985))

(declare-fun b_lambda!15309 () Bool)

(assert (=> (not b_lambda!15309) (not b!1013984)))

(declare-fun m!936837 () Bool)

(assert (=> b!1013984 m!936837))

(declare-fun m!936839 () Bool)

(assert (=> b!1013985 m!936839))

(assert (=> b!1013929 d!120549))

(declare-fun d!120553 () Bool)

(declare-fun res!680703 () Bool)

(declare-fun e!570448 () Bool)

(assert (=> d!120553 (=> res!680703 e!570448)))

(assert (=> d!120553 (= res!680703 (is-Nil!21537 (Cons!21536 (_1!7623 (h!22733 l!412)) lt!448295)))))

(assert (=> d!120553 (= (forall!241 (Cons!21536 (_1!7623 (h!22733 l!412)) lt!448295) lambda!614) e!570448)))

(declare-fun b!1013986 () Bool)

(declare-fun e!570449 () Bool)

(assert (=> b!1013986 (= e!570448 e!570449)))

(declare-fun res!680704 () Bool)

(assert (=> b!1013986 (=> (not res!680704) (not e!570449))))

(assert (=> b!1013986 (= res!680704 (dynLambda!1893 lambda!614 (h!22734 (Cons!21536 (_1!7623 (h!22733 l!412)) lt!448295))))))

(declare-fun b!1013987 () Bool)

(assert (=> b!1013987 (= e!570449 (forall!241 (t!30549 (Cons!21536 (_1!7623 (h!22733 l!412)) lt!448295)) lambda!614))))

(assert (= (and d!120553 (not res!680703)) b!1013986))

(assert (= (and b!1013986 res!680704) b!1013987))

(declare-fun b_lambda!15311 () Bool)

(assert (=> (not b_lambda!15311) (not b!1013986)))

(declare-fun m!936841 () Bool)

(assert (=> b!1013986 m!936841))

(declare-fun m!936843 () Bool)

(assert (=> b!1013987 m!936843))

(assert (=> b!1013931 d!120553))

(declare-fun d!120555 () Bool)

(assert (=> d!120555 (= (isEmpty!833 lt!448295) (is-Nil!21537 lt!448295))))

(assert (=> b!1013931 d!120555))

(declare-fun bs!29019 () Bool)

(declare-fun b!1014062 () Bool)

(assert (= bs!29019 (and b!1014062 b!1013929)))

(declare-fun lt!448398 () List!21539)

(declare-fun lambda!652 () Int)

(declare-fun lt!448389 () tuple2!15226)

(assert (=> bs!29019 (= (= (Cons!21535 lt!448389 lt!448398) l!412) (= lambda!652 lambda!613))))

(declare-fun bs!29020 () Bool)

(assert (= bs!29020 (and b!1014062 b!1013931)))

(assert (=> bs!29020 (= (= (Cons!21535 lt!448389 lt!448398) l!412) (= lambda!652 lambda!614))))

(declare-fun bs!29021 () Bool)

(assert (= bs!29021 (and b!1014062 b!1013967)))

(assert (=> bs!29021 (= (= (Cons!21535 lt!448389 lt!448398) (t!30548 l!412)) (= lambda!652 lambda!623))))

(declare-fun bs!29022 () Bool)

(assert (= bs!29022 (and b!1014062 d!120539)))

(assert (=> bs!29022 (= (= (Cons!21535 lt!448389 lt!448398) (Cons!21535 (h!22733 l!412) (t!30548 l!412))) (= lambda!652 lambda!625))))

(assert (=> b!1014062 true))

(assert (=> b!1014062 true))

(assert (=> b!1014062 true))

(declare-fun bs!29027 () Bool)

(declare-fun b!1014058 () Bool)

(assert (= bs!29027 (and b!1014058 b!1014062)))

(declare-fun lambda!654 () Int)

(declare-fun lt!448390 () tuple2!15226)

(declare-fun lt!448397 () List!21539)

(assert (=> bs!29027 (= (= (Cons!21535 lt!448390 lt!448397) (Cons!21535 lt!448389 lt!448398)) (= lambda!654 lambda!652))))

(declare-fun bs!29028 () Bool)

(assert (= bs!29028 (and b!1014058 b!1013931)))

(assert (=> bs!29028 (= (= (Cons!21535 lt!448390 lt!448397) l!412) (= lambda!654 lambda!614))))

(declare-fun bs!29029 () Bool)

(assert (= bs!29029 (and b!1014058 b!1013929)))

(assert (=> bs!29029 (= (= (Cons!21535 lt!448390 lt!448397) l!412) (= lambda!654 lambda!613))))

(declare-fun bs!29031 () Bool)

(assert (= bs!29031 (and b!1014058 d!120539)))

(assert (=> bs!29031 (= (= (Cons!21535 lt!448390 lt!448397) (Cons!21535 (h!22733 l!412) (t!30548 l!412))) (= lambda!654 lambda!625))))

(declare-fun bs!29033 () Bool)

(assert (= bs!29033 (and b!1014058 b!1013967)))

(assert (=> bs!29033 (= (= (Cons!21535 lt!448390 lt!448397) (t!30548 l!412)) (= lambda!654 lambda!623))))

(assert (=> b!1014058 true))

(assert (=> b!1014058 true))

(assert (=> b!1014058 true))

(declare-fun bs!29042 () Bool)

(declare-fun d!120559 () Bool)

(assert (= bs!29042 (and d!120559 b!1014062)))

(declare-fun lambda!657 () Int)

(assert (=> bs!29042 (= (= (t!30548 l!412) (Cons!21535 lt!448389 lt!448398)) (= lambda!657 lambda!652))))

(declare-fun bs!29043 () Bool)

(assert (= bs!29043 (and d!120559 b!1013929)))

(assert (=> bs!29043 (= (= (t!30548 l!412) l!412) (= lambda!657 lambda!613))))

(declare-fun bs!29044 () Bool)

(assert (= bs!29044 (and d!120559 d!120539)))

(assert (=> bs!29044 (= (= (t!30548 l!412) (Cons!21535 (h!22733 l!412) (t!30548 l!412))) (= lambda!657 lambda!625))))

(declare-fun bs!29045 () Bool)

(assert (= bs!29045 (and d!120559 b!1013967)))

(assert (=> bs!29045 (= lambda!657 lambda!623)))

(declare-fun bs!29047 () Bool)

(assert (= bs!29047 (and d!120559 b!1013931)))

(assert (=> bs!29047 (= (= (t!30548 l!412) l!412) (= lambda!657 lambda!614))))

(declare-fun bs!29050 () Bool)

(assert (= bs!29050 (and d!120559 b!1014058)))

(assert (=> bs!29050 (= (= (t!30548 l!412) (Cons!21535 lt!448390 lt!448397)) (= lambda!657 lambda!654))))

(assert (=> d!120559 true))

(assert (=> d!120559 true))

(declare-fun lt!448399 () List!21540)

(assert (=> d!120559 (forall!241 lt!448399 lambda!657)))

(declare-fun e!570487 () List!21540)

(assert (=> d!120559 (= lt!448399 e!570487)))

(declare-fun c!102554 () Bool)

(assert (=> d!120559 (= c!102554 (and (is-Cons!21535 (t!30548 l!412)) (= (_2!7623 (h!22733 (t!30548 l!412))) value!115)))))

(assert (=> d!120559 (isStrictlySorted!565 (t!30548 l!412))))

(assert (=> d!120559 (= (getKeysOf!45 (t!30548 l!412) value!115) lt!448399)))

(declare-fun bm!42759 () Bool)

(declare-fun lt!448394 () List!21540)

(declare-fun call!42763 () Bool)

(declare-fun lt!448393 () List!21540)

(assert (=> bm!42759 (= call!42763 (forall!241 (ite c!102554 lt!448393 lt!448394) (ite c!102554 lambda!652 lambda!654)))))

(declare-fun b!1014056 () Bool)

(declare-fun e!570485 () Unit!33117)

(declare-fun Unit!33124 () Unit!33117)

(assert (=> b!1014056 (= e!570485 Unit!33124)))

(declare-fun b!1014057 () Bool)

(declare-fun lt!448396 () Unit!33117)

(assert (=> b!1014057 (= lt!448396 e!570485)))

(declare-fun c!102557 () Bool)

(declare-fun call!42762 () Bool)

(assert (=> b!1014057 (= c!102557 (not call!42762))))

(declare-fun lt!448400 () List!21540)

(declare-fun call!42765 () List!21540)

(assert (=> b!1014057 (= lt!448400 call!42765)))

(declare-fun e!570484 () List!21540)

(assert (=> b!1014057 (= e!570484 call!42765)))

(declare-fun bm!42760 () Bool)

(assert (=> bm!42760 (= call!42765 (getKeysOf!45 (t!30548 (t!30548 l!412)) value!115))))

(declare-fun lt!448391 () Unit!33117)

(assert (=> b!1014058 (= e!570485 lt!448391)))

(assert (=> b!1014058 (= lt!448397 (t!30548 (t!30548 l!412)))))

(assert (=> b!1014058 (= lt!448394 call!42765)))

(assert (=> b!1014058 (= lt!448390 (h!22733 (t!30548 l!412)))))

(declare-fun call!42764 () Unit!33117)

(assert (=> b!1014058 (= lt!448391 call!42764)))

(assert (=> b!1014058 call!42763))

(declare-fun bm!42761 () Bool)

(assert (=> bm!42761 (= call!42764 (lemmaForallGetValueByKeySameWithASmallerHead!36 (ite c!102554 lt!448398 lt!448397) (ite c!102554 lt!448393 lt!448394) value!115 (ite c!102554 lt!448389 lt!448390)))))

(declare-fun b!1014059 () Bool)

(assert (=> b!1014059 (= e!570487 (Cons!21536 (_1!7623 (h!22733 (t!30548 l!412))) call!42765))))

(declare-fun c!102556 () Bool)

(assert (=> b!1014059 (= c!102556 (not call!42762))))

(declare-fun lt!448392 () Unit!33117)

(declare-fun e!570486 () Unit!33117)

(assert (=> b!1014059 (= lt!448392 e!570486)))

(declare-fun b!1014060 () Bool)

(assert (=> b!1014060 (= e!570484 Nil!21537)))

(declare-fun b!1014061 () Bool)

(declare-fun Unit!33125 () Unit!33117)

(assert (=> b!1014061 (= e!570486 Unit!33125)))

(assert (=> b!1014062 call!42763))

(declare-fun lt!448395 () Unit!33117)

(assert (=> b!1014062 (= lt!448395 call!42764)))

(assert (=> b!1014062 (= lt!448389 (h!22733 (t!30548 l!412)))))

(assert (=> b!1014062 (= lt!448393 call!42765)))

(assert (=> b!1014062 (= lt!448398 (t!30548 (t!30548 l!412)))))

(assert (=> b!1014062 (= e!570486 lt!448395)))

(declare-fun bm!42762 () Bool)

(assert (=> bm!42762 (= call!42762 (isEmpty!833 call!42765))))

(declare-fun b!1014063 () Bool)

(assert (=> b!1014063 (= e!570487 e!570484)))

(declare-fun c!102555 () Bool)

(assert (=> b!1014063 (= c!102555 (and (is-Cons!21535 (t!30548 l!412)) (not (= (_2!7623 (h!22733 (t!30548 l!412))) value!115))))))

(assert (= (and d!120559 c!102554) b!1014059))

(assert (= (and d!120559 (not c!102554)) b!1014063))

(assert (= (and b!1014059 c!102556) b!1014062))

(assert (= (and b!1014059 (not c!102556)) b!1014061))

(assert (= (and b!1014063 c!102555) b!1014057))

(assert (= (and b!1014063 (not c!102555)) b!1014060))

(assert (= (and b!1014057 c!102557) b!1014058))

(assert (= (and b!1014057 (not c!102557)) b!1014056))

(assert (= (or b!1014062 b!1014058) bm!42761))

(assert (= (or b!1014062 b!1014058) bm!42759))

(assert (= (or b!1014059 b!1014062 b!1014057 b!1014058) bm!42760))

(assert (= (or b!1014059 b!1014057) bm!42762))

(declare-fun m!936863 () Bool)

(assert (=> d!120559 m!936863))

(assert (=> d!120559 m!936819))

(declare-fun m!936865 () Bool)

(assert (=> bm!42762 m!936865))

(declare-fun m!936869 () Bool)

(assert (=> bm!42760 m!936869))

(declare-fun m!936875 () Bool)

(assert (=> bm!42761 m!936875))

(declare-fun m!936881 () Bool)

(assert (=> bm!42759 m!936881))

(assert (=> b!1013931 d!120559))

(declare-fun d!120569 () Bool)

(declare-fun res!680724 () Bool)

(declare-fun e!570505 () Bool)

(assert (=> d!120569 (=> res!680724 e!570505)))

(assert (=> d!120569 (= res!680724 (or (is-Nil!21536 l!412) (is-Nil!21536 (t!30548 l!412))))))

(assert (=> d!120569 (= (isStrictlySorted!565 l!412) e!570505)))

(declare-fun b!1014091 () Bool)

(declare-fun e!570506 () Bool)

(assert (=> b!1014091 (= e!570505 e!570506)))

(declare-fun res!680725 () Bool)

(assert (=> b!1014091 (=> (not res!680725) (not e!570506))))

(assert (=> b!1014091 (= res!680725 (bvslt (_1!7623 (h!22733 l!412)) (_1!7623 (h!22733 (t!30548 l!412)))))))

(declare-fun b!1014092 () Bool)

(assert (=> b!1014092 (= e!570506 (isStrictlySorted!565 (t!30548 l!412)))))

(assert (= (and d!120569 (not res!680724)) b!1014091))

(assert (= (and b!1014091 res!680725) b!1014092))

(assert (=> b!1014092 m!936819))

(assert (=> start!87668 d!120569))

(declare-fun b!1014097 () Bool)

(declare-fun e!570509 () Bool)

(declare-fun tp!70497 () Bool)

(assert (=> b!1014097 (= e!570509 (and tp_is_empty!23489 tp!70497))))

(assert (=> b!1013927 (= tp!70488 e!570509)))

(assert (= (and b!1013927 (is-Cons!21535 (t!30548 l!412))) b!1014097))

(declare-fun b_lambda!15327 () Bool)

(assert (= b_lambda!15309 (or b!1013929 b_lambda!15327)))

(declare-fun bs!29064 () Bool)

(declare-fun d!120579 () Bool)

(assert (= bs!29064 (and d!120579 b!1013929)))

(declare-datatypes ((Option!580 0))(
  ( (Some!579 (v!14428 B!1422)) (None!578) )
))
(declare-fun getValueByKey!529 (List!21539 (_ BitVec 64)) Option!580)

(assert (=> bs!29064 (= (dynLambda!1893 lambda!613 (h!22734 lt!448295)) (= (getValueByKey!529 l!412 (h!22734 lt!448295)) (Some!579 value!115)))))

(declare-fun m!936905 () Bool)

(assert (=> bs!29064 m!936905))

(assert (=> b!1013984 d!120579))

(declare-fun b_lambda!15329 () Bool)

(assert (= b_lambda!15311 (or b!1013931 b_lambda!15329)))

(declare-fun bs!29065 () Bool)

(declare-fun d!120581 () Bool)

(assert (= bs!29065 (and d!120581 b!1013931)))

(assert (=> bs!29065 (= (dynLambda!1893 lambda!614 (h!22734 (Cons!21536 (_1!7623 (h!22733 l!412)) lt!448295))) (= (getValueByKey!529 l!412 (h!22734 (Cons!21536 (_1!7623 (h!22733 l!412)) lt!448295))) (Some!579 value!115)))))

(declare-fun m!936907 () Bool)

(assert (=> bs!29065 m!936907))

(assert (=> b!1013986 d!120581))

(push 1)

(assert (not b!1014097))

(assert (not b!1013987))

(assert tp_is_empty!23489)

(assert (not bm!42760))

(assert (not b!1013967))

(assert (not bm!42762))

(assert (not b!1013966))

(assert (not bm!42761))

(assert (not b_lambda!15329))

(assert (not bm!42759))

(assert (not b_lambda!15327))

(assert (not bs!29065))

(assert (not d!120559))

(assert (not d!120539))

(assert (not b!1013985))

(assert (not bs!29064))

(assert (not b!1013968))

(assert (not b!1014092))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120651 () Bool)

(declare-fun res!680760 () Bool)

(declare-fun e!570565 () Bool)

(assert (=> d!120651 (=> res!680760 e!570565)))

(assert (=> d!120651 (= res!680760 (is-Nil!21537 (t!30549 lt!448295)))))

(assert (=> d!120651 (= (forall!241 (t!30549 lt!448295) lambda!613) e!570565)))

(declare-fun b!1014181 () Bool)

(declare-fun e!570566 () Bool)

(assert (=> b!1014181 (= e!570565 e!570566)))

(declare-fun res!680761 () Bool)

(assert (=> b!1014181 (=> (not res!680761) (not e!570566))))

(assert (=> b!1014181 (= res!680761 (dynLambda!1893 lambda!613 (h!22734 (t!30549 lt!448295))))))

(declare-fun b!1014182 () Bool)

(assert (=> b!1014182 (= e!570566 (forall!241 (t!30549 (t!30549 lt!448295)) lambda!613))))

(assert (= (and d!120651 (not res!680760)) b!1014181))

(assert (= (and b!1014181 res!680761) b!1014182))

(declare-fun b_lambda!15365 () Bool)

(assert (=> (not b_lambda!15365) (not b!1014181)))

(declare-fun m!937013 () Bool)

(assert (=> b!1014181 m!937013))

(declare-fun m!937015 () Bool)

(assert (=> b!1014182 m!937015))

(assert (=> b!1013985 d!120651))

(declare-fun d!120653 () Bool)

(declare-fun res!680762 () Bool)

(declare-fun e!570567 () Bool)

(assert (=> d!120653 (=> res!680762 e!570567)))

(assert (=> d!120653 (= res!680762 (or (is-Nil!21536 (t!30548 l!412)) (is-Nil!21536 (t!30548 (t!30548 l!412)))))))

(assert (=> d!120653 (= (isStrictlySorted!565 (t!30548 l!412)) e!570567)))

(declare-fun b!1014183 () Bool)

(declare-fun e!570568 () Bool)

(assert (=> b!1014183 (= e!570567 e!570568)))

(declare-fun res!680763 () Bool)

(assert (=> b!1014183 (=> (not res!680763) (not e!570568))))

(assert (=> b!1014183 (= res!680763 (bvslt (_1!7623 (h!22733 (t!30548 l!412))) (_1!7623 (h!22733 (t!30548 (t!30548 l!412))))))))

(declare-fun b!1014184 () Bool)

(assert (=> b!1014184 (= e!570568 (isStrictlySorted!565 (t!30548 (t!30548 l!412))))))

(assert (= (and d!120653 (not res!680762)) b!1014183))

(assert (= (and b!1014183 res!680763) b!1014184))

(declare-fun m!937017 () Bool)

(assert (=> b!1014184 m!937017))

(assert (=> b!1014092 d!120653))

(declare-fun d!120655 () Bool)

(declare-fun res!680764 () Bool)

(declare-fun e!570569 () Bool)

(assert (=> d!120655 (=> res!680764 e!570569)))

(assert (=> d!120655 (= res!680764 (is-Nil!21537 (t!30549 (Cons!21536 (_1!7623 (h!22733 l!412)) lt!448295))))))

(assert (=> d!120655 (= (forall!241 (t!30549 (Cons!21536 (_1!7623 (h!22733 l!412)) lt!448295)) lambda!614) e!570569)))

(declare-fun b!1014185 () Bool)

(declare-fun e!570570 () Bool)

(assert (=> b!1014185 (= e!570569 e!570570)))

(declare-fun res!680765 () Bool)

(assert (=> b!1014185 (=> (not res!680765) (not e!570570))))

(assert (=> b!1014185 (= res!680765 (dynLambda!1893 lambda!614 (h!22734 (t!30549 (Cons!21536 (_1!7623 (h!22733 l!412)) lt!448295)))))))

(declare-fun b!1014186 () Bool)

(assert (=> b!1014186 (= e!570570 (forall!241 (t!30549 (t!30549 (Cons!21536 (_1!7623 (h!22733 l!412)) lt!448295))) lambda!614))))

(assert (= (and d!120655 (not res!680764)) b!1014185))

(assert (= (and b!1014185 res!680765) b!1014186))

(declare-fun b_lambda!15367 () Bool)

(assert (=> (not b_lambda!15367) (not b!1014185)))

(declare-fun m!937019 () Bool)

(assert (=> b!1014185 m!937019))

(declare-fun m!937021 () Bool)

(assert (=> b!1014186 m!937021))

(assert (=> b!1013987 d!120655))

(declare-fun b!1014195 () Bool)

(declare-fun e!570575 () Option!580)

(assert (=> b!1014195 (= e!570575 (Some!579 (_2!7623 (h!22733 l!412))))))

(declare-fun d!120657 () Bool)

(declare-fun c!102590 () Bool)

(assert (=> d!120657 (= c!102590 (and (is-Cons!21535 l!412) (= (_1!7623 (h!22733 l!412)) (h!22734 lt!448295))))))

(assert (=> d!120657 (= (getValueByKey!529 l!412 (h!22734 lt!448295)) e!570575)))

(declare-fun b!1014197 () Bool)

(declare-fun e!570576 () Option!580)

(assert (=> b!1014197 (= e!570576 (getValueByKey!529 (t!30548 l!412) (h!22734 lt!448295)))))

(declare-fun b!1014198 () Bool)

(assert (=> b!1014198 (= e!570576 None!578)))

(declare-fun b!1014196 () Bool)

(assert (=> b!1014196 (= e!570575 e!570576)))

(declare-fun c!102591 () Bool)

(assert (=> b!1014196 (= c!102591 (and (is-Cons!21535 l!412) (not (= (_1!7623 (h!22733 l!412)) (h!22734 lt!448295)))))))

(assert (= (and d!120657 c!102590) b!1014195))

(assert (= (and d!120657 (not c!102590)) b!1014196))

(assert (= (and b!1014196 c!102591) b!1014197))

(assert (= (and b!1014196 (not c!102591)) b!1014198))

(declare-fun m!937023 () Bool)

(assert (=> b!1014197 m!937023))

(assert (=> bs!29064 d!120657))

(declare-fun d!120659 () Bool)

(assert (=> d!120659 (= (isEmpty!833 call!42765) (is-Nil!21537 call!42765))))

(assert (=> bm!42762 d!120659))

(declare-fun d!120661 () Bool)

(declare-fun res!680766 () Bool)

(declare-fun e!570577 () Bool)

(assert (=> d!120661 (=> res!680766 e!570577)))

(assert (=> d!120661 (= res!680766 (is-Nil!21537 (ite c!102554 lt!448393 lt!448394)))))

(assert (=> d!120661 (= (forall!241 (ite c!102554 lt!448393 lt!448394) (ite c!102554 lambda!652 lambda!654)) e!570577)))

(declare-fun b!1014199 () Bool)

(declare-fun e!570578 () Bool)

(assert (=> b!1014199 (= e!570577 e!570578)))

(declare-fun res!680767 () Bool)

(assert (=> b!1014199 (=> (not res!680767) (not e!570578))))

(assert (=> b!1014199 (= res!680767 (dynLambda!1893 (ite c!102554 lambda!652 lambda!654) (h!22734 (ite c!102554 lt!448393 lt!448394))))))

(declare-fun b!1014200 () Bool)

(assert (=> b!1014200 (= e!570578 (forall!241 (t!30549 (ite c!102554 lt!448393 lt!448394)) (ite c!102554 lambda!652 lambda!654)))))

(assert (= (and d!120661 (not res!680766)) b!1014199))

(assert (= (and b!1014199 res!680767) b!1014200))

(declare-fun b_lambda!15369 () Bool)

(assert (=> (not b_lambda!15369) (not b!1014199)))

(declare-fun m!937037 () Bool)

(assert (=> b!1014199 m!937037))

(declare-fun m!937039 () Bool)

(assert (=> b!1014200 m!937039))

(assert (=> bm!42759 d!120661))

(declare-fun d!120665 () Bool)

(declare-fun res!680768 () Bool)

(declare-fun e!570580 () Bool)

(assert (=> d!120665 (=> res!680768 e!570580)))

(assert (=> d!120665 (= res!680768 (is-Nil!21537 lt!448399))))

(assert (=> d!120665 (= (forall!241 lt!448399 lambda!657) e!570580)))

(declare-fun b!1014202 () Bool)

(declare-fun e!570581 () Bool)

(assert (=> b!1014202 (= e!570580 e!570581)))

(declare-fun res!680769 () Bool)

(assert (=> b!1014202 (=> (not res!680769) (not e!570581))))

(assert (=> b!1014202 (= res!680769 (dynLambda!1893 lambda!657 (h!22734 lt!448399)))))

(declare-fun b!1014203 () Bool)

(assert (=> b!1014203 (= e!570581 (forall!241 (t!30549 lt!448399) lambda!657))))

(assert (= (and d!120665 (not res!680768)) b!1014202))

(assert (= (and b!1014202 res!680769) b!1014203))

(declare-fun b_lambda!15381 () Bool)

(assert (=> (not b_lambda!15381) (not b!1014202)))

(declare-fun m!937041 () Bool)

(assert (=> b!1014202 m!937041))

(declare-fun m!937043 () Bool)

(assert (=> b!1014203 m!937043))

(assert (=> d!120559 d!120665))

(assert (=> d!120559 d!120653))

(declare-fun d!120669 () Bool)

(declare-fun res!680770 () Bool)

(declare-fun e!570582 () Bool)

(assert (=> d!120669 (=> res!680770 e!570582)))

(assert (=> d!120669 (= res!680770 (is-Nil!21537 lt!448295))))

(assert (=> d!120669 (= (forall!241 lt!448295 lambda!625) e!570582)))

(declare-fun b!1014204 () Bool)

(declare-fun e!570583 () Bool)

(assert (=> b!1014204 (= e!570582 e!570583)))

(declare-fun res!680771 () Bool)

(assert (=> b!1014204 (=> (not res!680771) (not e!570583))))

(assert (=> b!1014204 (= res!680771 (dynLambda!1893 lambda!625 (h!22734 lt!448295)))))

(declare-fun b!1014205 () Bool)

(assert (=> b!1014205 (= e!570583 (forall!241 (t!30549 lt!448295) lambda!625))))

(assert (= (and d!120669 (not res!680770)) b!1014204))

(assert (= (and b!1014204 res!680771) b!1014205))

(declare-fun b_lambda!15383 () Bool)

(assert (=> (not b_lambda!15383) (not b!1014204)))

(declare-fun m!937049 () Bool)

(assert (=> b!1014204 m!937049))

(declare-fun m!937051 () Bool)

(assert (=> b!1014205 m!937051))

(assert (=> d!120539 d!120669))

(declare-fun bs!29192 () Bool)

(declare-fun d!120675 () Bool)

(assert (= bs!29192 (and d!120675 b!1014062)))

(declare-fun lambda!678 () Int)

(assert (=> bs!29192 (= (= (Cons!21535 (h!22733 l!412) (t!30548 l!412)) (Cons!21535 lt!448389 lt!448398)) (= lambda!678 lambda!652))))

(declare-fun bs!29193 () Bool)

(assert (= bs!29193 (and d!120675 b!1013929)))

(assert (=> bs!29193 (= (= (Cons!21535 (h!22733 l!412) (t!30548 l!412)) l!412) (= lambda!678 lambda!613))))

(declare-fun bs!29194 () Bool)

(assert (= bs!29194 (and d!120675 d!120539)))

(assert (=> bs!29194 (= lambda!678 lambda!625)))

(declare-fun bs!29195 () Bool)

(assert (= bs!29195 (and d!120675 d!120559)))

(assert (=> bs!29195 (= (= (Cons!21535 (h!22733 l!412) (t!30548 l!412)) (t!30548 l!412)) (= lambda!678 lambda!657))))

(declare-fun bs!29196 () Bool)

(assert (= bs!29196 (and d!120675 b!1013967)))

(assert (=> bs!29196 (= (= (Cons!21535 (h!22733 l!412) (t!30548 l!412)) (t!30548 l!412)) (= lambda!678 lambda!623))))

(declare-fun bs!29197 () Bool)

(assert (= bs!29197 (and d!120675 b!1013931)))

(assert (=> bs!29197 (= (= (Cons!21535 (h!22733 l!412) (t!30548 l!412)) l!412) (= lambda!678 lambda!614))))

(declare-fun bs!29198 () Bool)

(assert (= bs!29198 (and d!120675 b!1014058)))

(assert (=> bs!29198 (= (= (Cons!21535 (h!22733 l!412) (t!30548 l!412)) (Cons!21535 lt!448390 lt!448397)) (= lambda!678 lambda!654))))

(assert (=> d!120675 true))

(assert (=> d!120675 true))

(assert (=> d!120675 true))

(assert (=> d!120675 (forall!241 lt!448295 lambda!678)))

(assert (=> d!120675 true))

(declare-fun _$15!116 () Unit!33117)

(assert (=> d!120675 (= (choose!1640 (t!30548 l!412) lt!448295 value!115 (h!22733 l!412)) _$15!116)))

(declare-fun bs!29199 () Bool)

(assert (= bs!29199 d!120675))

(declare-fun m!937057 () Bool)

(assert (=> bs!29199 m!937057))

(assert (=> d!120539 d!120675))

(assert (=> d!120539 d!120653))

(declare-fun d!120681 () Bool)

(assert (=> d!120681 (= (isEmpty!835 (t!30548 l!412)) (is-Nil!21536 (t!30548 l!412)))))

(assert (=> b!1013966 d!120681))

(declare-fun bs!29200 () Bool)

(declare-fun b!1014212 () Bool)

(assert (= bs!29200 (and b!1014212 b!1014062)))

(declare-fun lambda!679 () Int)

(declare-fun lt!448449 () List!21539)

(declare-fun lt!448440 () tuple2!15226)

(assert (=> bs!29200 (= (= (Cons!21535 lt!448440 lt!448449) (Cons!21535 lt!448389 lt!448398)) (= lambda!679 lambda!652))))

(declare-fun bs!29201 () Bool)

(assert (= bs!29201 (and b!1014212 d!120675)))

(assert (=> bs!29201 (= (= (Cons!21535 lt!448440 lt!448449) (Cons!21535 (h!22733 l!412) (t!30548 l!412))) (= lambda!679 lambda!678))))

(declare-fun bs!29202 () Bool)

(assert (= bs!29202 (and b!1014212 b!1013929)))

(assert (=> bs!29202 (= (= (Cons!21535 lt!448440 lt!448449) l!412) (= lambda!679 lambda!613))))

(declare-fun bs!29203 () Bool)

(assert (= bs!29203 (and b!1014212 d!120539)))

(assert (=> bs!29203 (= (= (Cons!21535 lt!448440 lt!448449) (Cons!21535 (h!22733 l!412) (t!30548 l!412))) (= lambda!679 lambda!625))))

(declare-fun bs!29204 () Bool)

(assert (= bs!29204 (and b!1014212 d!120559)))

(assert (=> bs!29204 (= (= (Cons!21535 lt!448440 lt!448449) (t!30548 l!412)) (= lambda!679 lambda!657))))

(declare-fun bs!29205 () Bool)

(assert (= bs!29205 (and b!1014212 b!1013967)))

(assert (=> bs!29205 (= (= (Cons!21535 lt!448440 lt!448449) (t!30548 l!412)) (= lambda!679 lambda!623))))

(declare-fun bs!29206 () Bool)

(assert (= bs!29206 (and b!1014212 b!1013931)))

(assert (=> bs!29206 (= (= (Cons!21535 lt!448440 lt!448449) l!412) (= lambda!679 lambda!614))))

(declare-fun bs!29207 () Bool)

(assert (= bs!29207 (and b!1014212 b!1014058)))

(assert (=> bs!29207 (= (= (Cons!21535 lt!448440 lt!448449) (Cons!21535 lt!448390 lt!448397)) (= lambda!679 lambda!654))))

(assert (=> b!1014212 true))

(assert (=> b!1014212 true))

(assert (=> b!1014212 true))

(declare-fun bs!29208 () Bool)

(declare-fun b!1014208 () Bool)

(assert (= bs!29208 (and b!1014208 b!1014062)))

(declare-fun lt!448441 () tuple2!15226)

(declare-fun lambda!680 () Int)

(declare-fun lt!448448 () List!21539)

(assert (=> bs!29208 (= (= (Cons!21535 lt!448441 lt!448448) (Cons!21535 lt!448389 lt!448398)) (= lambda!680 lambda!652))))

(declare-fun bs!29209 () Bool)

(assert (= bs!29209 (and b!1014208 d!120675)))

(assert (=> bs!29209 (= (= (Cons!21535 lt!448441 lt!448448) (Cons!21535 (h!22733 l!412) (t!30548 l!412))) (= lambda!680 lambda!678))))

(declare-fun bs!29210 () Bool)

(assert (= bs!29210 (and b!1014208 b!1013929)))

(assert (=> bs!29210 (= (= (Cons!21535 lt!448441 lt!448448) l!412) (= lambda!680 lambda!613))))

(declare-fun bs!29211 () Bool)

(assert (= bs!29211 (and b!1014208 b!1014212)))

(assert (=> bs!29211 (= (= (Cons!21535 lt!448441 lt!448448) (Cons!21535 lt!448440 lt!448449)) (= lambda!680 lambda!679))))

(declare-fun bs!29212 () Bool)

(assert (= bs!29212 (and b!1014208 d!120539)))

(assert (=> bs!29212 (= (= (Cons!21535 lt!448441 lt!448448) (Cons!21535 (h!22733 l!412) (t!30548 l!412))) (= lambda!680 lambda!625))))

(declare-fun bs!29213 () Bool)

(assert (= bs!29213 (and b!1014208 d!120559)))

(assert (=> bs!29213 (= (= (Cons!21535 lt!448441 lt!448448) (t!30548 l!412)) (= lambda!680 lambda!657))))

(declare-fun bs!29214 () Bool)

(assert (= bs!29214 (and b!1014208 b!1013967)))

(assert (=> bs!29214 (= (= (Cons!21535 lt!448441 lt!448448) (t!30548 l!412)) (= lambda!680 lambda!623))))

(declare-fun bs!29215 () Bool)

(assert (= bs!29215 (and b!1014208 b!1013931)))

(assert (=> bs!29215 (= (= (Cons!21535 lt!448441 lt!448448) l!412) (= lambda!680 lambda!614))))

(declare-fun bs!29216 () Bool)

(assert (= bs!29216 (and b!1014208 b!1014058)))

(assert (=> bs!29216 (= (= (Cons!21535 lt!448441 lt!448448) (Cons!21535 lt!448390 lt!448397)) (= lambda!680 lambda!654))))

(assert (=> b!1014208 true))

(assert (=> b!1014208 true))

(assert (=> b!1014208 true))

(declare-fun bs!29217 () Bool)

(declare-fun d!120683 () Bool)

(assert (= bs!29217 (and d!120683 b!1014208)))

(declare-fun lambda!681 () Int)

(assert (=> bs!29217 (= (= (t!30548 (t!30548 l!412)) (Cons!21535 lt!448441 lt!448448)) (= lambda!681 lambda!680))))

(declare-fun bs!29218 () Bool)

(assert (= bs!29218 (and d!120683 b!1014062)))

(assert (=> bs!29218 (= (= (t!30548 (t!30548 l!412)) (Cons!21535 lt!448389 lt!448398)) (= lambda!681 lambda!652))))

