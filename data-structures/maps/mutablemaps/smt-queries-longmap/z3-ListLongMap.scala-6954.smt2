; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87744 () Bool)

(assert start!87744)

(declare-fun res!680824 () Bool)

(declare-fun e!570662 () Bool)

(assert (=> start!87744 (=> (not res!680824) (not e!570662))))

(declare-datatypes ((B!1432 0))(
  ( (B!1433 (val!11800 Int)) )
))
(declare-datatypes ((tuple2!15236 0))(
  ( (tuple2!15237 (_1!7628 (_ BitVec 64)) (_2!7628 B!1432)) )
))
(declare-datatypes ((List!21546 0))(
  ( (Nil!21543) (Cons!21542 (h!22740 tuple2!15236) (t!30555 List!21546)) )
))
(declare-fun l!412 () List!21546)

(declare-fun isStrictlySorted!570 (List!21546) Bool)

(assert (=> start!87744 (= res!680824 (isStrictlySorted!570 l!412))))

(assert (=> start!87744 e!570662))

(declare-fun e!570661 () Bool)

(assert (=> start!87744 e!570661))

(declare-fun tp_is_empty!23499 () Bool)

(assert (=> start!87744 tp_is_empty!23499))

(declare-fun b!1014323 () Bool)

(declare-fun res!680823 () Bool)

(assert (=> b!1014323 (=> (not res!680823) (not e!570662))))

(declare-fun value!115 () B!1432)

(get-info :version)

(assert (=> b!1014323 (= res!680823 (and (not (= (_2!7628 (h!22740 l!412)) value!115)) ((_ is Cons!21542) l!412)))))

(declare-fun b!1014324 () Bool)

(declare-fun ListPrimitiveSize!113 (List!21546) Int)

(assert (=> b!1014324 (= e!570662 (>= (ListPrimitiveSize!113 (t!30555 l!412)) (ListPrimitiveSize!113 l!412)))))

(declare-datatypes ((List!21547 0))(
  ( (Nil!21544) (Cons!21543 (h!22741 (_ BitVec 64)) (t!30556 List!21547)) )
))
(declare-fun lt!448470 () List!21547)

(declare-fun getKeysOf!47 (List!21546 B!1432) List!21547)

(assert (=> b!1014324 (= lt!448470 (getKeysOf!47 (t!30555 l!412) value!115))))

(declare-fun b!1014325 () Bool)

(declare-fun tp!70524 () Bool)

(assert (=> b!1014325 (= e!570661 (and tp_is_empty!23499 tp!70524))))

(assert (= (and start!87744 res!680824) b!1014323))

(assert (= (and b!1014323 res!680823) b!1014324))

(assert (= (and start!87744 ((_ is Cons!21542) l!412)) b!1014325))

(declare-fun m!937133 () Bool)

(assert (=> start!87744 m!937133))

(declare-fun m!937135 () Bool)

(assert (=> b!1014324 m!937135))

(declare-fun m!937137 () Bool)

(assert (=> b!1014324 m!937137))

(declare-fun m!937139 () Bool)

(assert (=> b!1014324 m!937139))

(check-sat (not start!87744) (not b!1014324) (not b!1014325) tp_is_empty!23499)
(check-sat)
(get-model)

(declare-fun d!120725 () Bool)

(declare-fun res!680835 () Bool)

(declare-fun e!570676 () Bool)

(assert (=> d!120725 (=> res!680835 e!570676)))

(assert (=> d!120725 (= res!680835 (or ((_ is Nil!21543) l!412) ((_ is Nil!21543) (t!30555 l!412))))))

(assert (=> d!120725 (= (isStrictlySorted!570 l!412) e!570676)))

(declare-fun b!1014345 () Bool)

(declare-fun e!570677 () Bool)

(assert (=> b!1014345 (= e!570676 e!570677)))

(declare-fun res!680836 () Bool)

(assert (=> b!1014345 (=> (not res!680836) (not e!570677))))

(assert (=> b!1014345 (= res!680836 (bvslt (_1!7628 (h!22740 l!412)) (_1!7628 (h!22740 (t!30555 l!412)))))))

(declare-fun b!1014346 () Bool)

(assert (=> b!1014346 (= e!570677 (isStrictlySorted!570 (t!30555 l!412)))))

(assert (= (and d!120725 (not res!680835)) b!1014345))

(assert (= (and b!1014345 res!680836) b!1014346))

(declare-fun m!937151 () Bool)

(assert (=> b!1014346 m!937151))

(assert (=> start!87744 d!120725))

(declare-fun d!120733 () Bool)

(declare-fun lt!448480 () Int)

(assert (=> d!120733 (>= lt!448480 0)))

(declare-fun e!570687 () Int)

(assert (=> d!120733 (= lt!448480 e!570687)))

(declare-fun c!102616 () Bool)

(assert (=> d!120733 (= c!102616 ((_ is Nil!21543) (t!30555 l!412)))))

(assert (=> d!120733 (= (ListPrimitiveSize!113 (t!30555 l!412)) lt!448480)))

(declare-fun b!1014359 () Bool)

(assert (=> b!1014359 (= e!570687 0)))

(declare-fun b!1014360 () Bool)

(assert (=> b!1014360 (= e!570687 (+ 1 (ListPrimitiveSize!113 (t!30555 (t!30555 l!412)))))))

(assert (= (and d!120733 c!102616) b!1014359))

(assert (= (and d!120733 (not c!102616)) b!1014360))

(declare-fun m!937155 () Bool)

(assert (=> b!1014360 m!937155))

(assert (=> b!1014324 d!120733))

(declare-fun d!120739 () Bool)

(declare-fun lt!448481 () Int)

(assert (=> d!120739 (>= lt!448481 0)))

(declare-fun e!570688 () Int)

(assert (=> d!120739 (= lt!448481 e!570688)))

(declare-fun c!102617 () Bool)

(assert (=> d!120739 (= c!102617 ((_ is Nil!21543) l!412))))

(assert (=> d!120739 (= (ListPrimitiveSize!113 l!412) lt!448481)))

(declare-fun b!1014361 () Bool)

(assert (=> b!1014361 (= e!570688 0)))

(declare-fun b!1014362 () Bool)

(assert (=> b!1014362 (= e!570688 (+ 1 (ListPrimitiveSize!113 (t!30555 l!412))))))

(assert (= (and d!120739 c!102617) b!1014361))

(assert (= (and d!120739 (not c!102617)) b!1014362))

(assert (=> b!1014362 m!937135))

(assert (=> b!1014324 d!120739))

(declare-fun b!1014439 () Bool)

(assert (=> b!1014439 true))

(assert (=> b!1014439 true))

(assert (=> b!1014439 true))

(declare-fun bs!29264 () Bool)

(declare-fun b!1014438 () Bool)

(assert (= bs!29264 (and b!1014438 b!1014439)))

(declare-fun lambda!704 () Int)

(declare-fun lt!448579 () List!21546)

(declare-fun lambda!706 () Int)

(declare-fun lt!448571 () tuple2!15236)

(declare-fun lt!448578 () tuple2!15236)

(declare-fun lt!448577 () List!21546)

(assert (=> bs!29264 (= (= (Cons!21542 lt!448578 lt!448577) (Cons!21542 lt!448571 lt!448579)) (= lambda!706 lambda!704))))

(assert (=> b!1014438 true))

(assert (=> b!1014438 true))

(assert (=> b!1014438 true))

(declare-fun bs!29265 () Bool)

(declare-fun d!120741 () Bool)

(assert (= bs!29265 (and d!120741 b!1014439)))

(declare-fun lambda!708 () Int)

(assert (=> bs!29265 (= (= (t!30555 l!412) (Cons!21542 lt!448571 lt!448579)) (= lambda!708 lambda!704))))

(declare-fun bs!29267 () Bool)

(assert (= bs!29267 (and d!120741 b!1014438)))

(assert (=> bs!29267 (= (= (t!30555 l!412) (Cons!21542 lt!448578 lt!448577)) (= lambda!708 lambda!706))))

(assert (=> d!120741 true))

(assert (=> d!120741 true))

(declare-fun b!1014433 () Bool)

(declare-datatypes ((Unit!33132 0))(
  ( (Unit!33133) )
))
(declare-fun e!570721 () Unit!33132)

(declare-fun Unit!33135 () Unit!33132)

(assert (=> b!1014433 (= e!570721 Unit!33135)))

(declare-fun b!1014434 () Bool)

(declare-fun e!570723 () List!21547)

(declare-fun call!42812 () List!21547)

(assert (=> b!1014434 (= e!570723 (Cons!21543 (_1!7628 (h!22740 (t!30555 l!412))) call!42812))))

(declare-fun c!102651 () Bool)

(declare-fun call!42813 () Bool)

(assert (=> b!1014434 (= c!102651 (not call!42813))))

(declare-fun lt!448574 () Unit!33132)

(declare-fun e!570722 () Unit!33132)

(assert (=> b!1014434 (= lt!448574 e!570722)))

(declare-fun b!1014435 () Bool)

(declare-fun e!570724 () List!21547)

(assert (=> b!1014435 (= e!570723 e!570724)))

(declare-fun c!102650 () Bool)

(assert (=> b!1014435 (= c!102650 (and ((_ is Cons!21542) (t!30555 l!412)) (not (= (_2!7628 (h!22740 (t!30555 l!412))) value!115))))))

(declare-fun bm!42807 () Bool)

(declare-fun isEmpty!838 (List!21547) Bool)

(assert (=> bm!42807 (= call!42813 (isEmpty!838 call!42812))))

(declare-fun b!1014436 () Bool)

(assert (=> b!1014436 (= e!570724 Nil!21544)))

(declare-fun lt!448573 () List!21547)

(declare-fun forall!243 (List!21547 Int) Bool)

(assert (=> d!120741 (forall!243 lt!448573 lambda!708)))

(assert (=> d!120741 (= lt!448573 e!570723)))

(declare-fun c!102653 () Bool)

(assert (=> d!120741 (= c!102653 (and ((_ is Cons!21542) (t!30555 l!412)) (= (_2!7628 (h!22740 (t!30555 l!412))) value!115)))))

(assert (=> d!120741 (isStrictlySorted!570 (t!30555 l!412))))

(assert (=> d!120741 (= (getKeysOf!47 (t!30555 l!412) value!115) lt!448573)))

(declare-fun b!1014437 () Bool)

(declare-fun Unit!33140 () Unit!33132)

(assert (=> b!1014437 (= e!570722 Unit!33140)))

(declare-fun lt!448572 () Unit!33132)

(assert (=> b!1014438 (= e!570721 lt!448572)))

(assert (=> b!1014438 (= lt!448577 (t!30555 (t!30555 l!412)))))

(declare-fun lt!448581 () List!21547)

(assert (=> b!1014438 (= lt!448581 call!42812)))

(assert (=> b!1014438 (= lt!448578 (h!22740 (t!30555 l!412)))))

(declare-fun call!42811 () Unit!33132)

(assert (=> b!1014438 (= lt!448572 call!42811)))

(declare-fun call!42810 () Bool)

(assert (=> b!1014438 call!42810))

(assert (=> b!1014439 call!42810))

(declare-fun lt!448570 () Unit!33132)

(assert (=> b!1014439 (= lt!448570 call!42811)))

(assert (=> b!1014439 (= lt!448571 (h!22740 (t!30555 l!412)))))

(declare-fun lt!448580 () List!21547)

(assert (=> b!1014439 (= lt!448580 call!42812)))

(assert (=> b!1014439 (= lt!448579 (t!30555 (t!30555 l!412)))))

(assert (=> b!1014439 (= e!570722 lt!448570)))

(declare-fun bm!42808 () Bool)

(assert (=> bm!42808 (= call!42812 (getKeysOf!47 (t!30555 (t!30555 l!412)) value!115))))

(declare-fun bm!42809 () Bool)

(assert (=> bm!42809 (= call!42810 (forall!243 (ite c!102653 lt!448580 lt!448581) (ite c!102653 lambda!704 lambda!706)))))

(declare-fun bm!42810 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!39 (List!21546 List!21547 B!1432 tuple2!15236) Unit!33132)

(assert (=> bm!42810 (= call!42811 (lemmaForallGetValueByKeySameWithASmallerHead!39 (ite c!102653 lt!448579 lt!448577) (ite c!102653 lt!448580 lt!448581) value!115 (ite c!102653 lt!448571 lt!448578)))))

(declare-fun b!1014440 () Bool)

(declare-fun lt!448575 () Unit!33132)

(assert (=> b!1014440 (= lt!448575 e!570721)))

(declare-fun c!102652 () Bool)

(assert (=> b!1014440 (= c!102652 (not call!42813))))

(declare-fun lt!448576 () List!21547)

(assert (=> b!1014440 (= lt!448576 call!42812)))

(assert (=> b!1014440 (= e!570724 call!42812)))

(assert (= (and d!120741 c!102653) b!1014434))

(assert (= (and d!120741 (not c!102653)) b!1014435))

(assert (= (and b!1014434 c!102651) b!1014439))

(assert (= (and b!1014434 (not c!102651)) b!1014437))

(assert (= (and b!1014435 c!102650) b!1014440))

(assert (= (and b!1014435 (not c!102650)) b!1014436))

(assert (= (and b!1014440 c!102652) b!1014438))

(assert (= (and b!1014440 (not c!102652)) b!1014433))

(assert (= (or b!1014439 b!1014438) bm!42810))

(assert (= (or b!1014439 b!1014438) bm!42809))

(assert (= (or b!1014434 b!1014439 b!1014440 b!1014438) bm!42808))

(assert (= (or b!1014434 b!1014440) bm!42807))

(declare-fun m!937171 () Bool)

(assert (=> bm!42808 m!937171))

(declare-fun m!937173 () Bool)

(assert (=> d!120741 m!937173))

(assert (=> d!120741 m!937151))

(declare-fun m!937181 () Bool)

(assert (=> bm!42810 m!937181))

(declare-fun m!937185 () Bool)

(assert (=> bm!42807 m!937185))

(declare-fun m!937189 () Bool)

(assert (=> bm!42809 m!937189))

(assert (=> b!1014324 d!120741))

(declare-fun b!1014481 () Bool)

(declare-fun e!570743 () Bool)

(declare-fun tp!70536 () Bool)

(assert (=> b!1014481 (= e!570743 (and tp_is_empty!23499 tp!70536))))

(assert (=> b!1014325 (= tp!70524 e!570743)))

(assert (= (and b!1014325 ((_ is Cons!21542) (t!30555 l!412))) b!1014481))

(check-sat (not bm!42809) (not b!1014481) (not d!120741) (not b!1014362) tp_is_empty!23499 (not b!1014346) (not b!1014360) (not bm!42807) (not bm!42808) (not bm!42810))
