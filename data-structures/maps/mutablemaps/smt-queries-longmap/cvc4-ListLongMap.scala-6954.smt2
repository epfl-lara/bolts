; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87746 () Bool)

(assert start!87746)

(declare-fun res!680830 () Bool)

(declare-fun e!570668 () Bool)

(assert (=> start!87746 (=> (not res!680830) (not e!570668))))

(declare-datatypes ((B!1434 0))(
  ( (B!1435 (val!11801 Int)) )
))
(declare-datatypes ((tuple2!15238 0))(
  ( (tuple2!15239 (_1!7629 (_ BitVec 64)) (_2!7629 B!1434)) )
))
(declare-datatypes ((List!21548 0))(
  ( (Nil!21545) (Cons!21544 (h!22742 tuple2!15238) (t!30557 List!21548)) )
))
(declare-fun l!412 () List!21548)

(declare-fun isStrictlySorted!571 (List!21548) Bool)

(assert (=> start!87746 (= res!680830 (isStrictlySorted!571 l!412))))

(assert (=> start!87746 e!570668))

(declare-fun e!570667 () Bool)

(assert (=> start!87746 e!570667))

(declare-fun tp_is_empty!23501 () Bool)

(assert (=> start!87746 tp_is_empty!23501))

(declare-fun b!1014332 () Bool)

(declare-fun res!680829 () Bool)

(assert (=> b!1014332 (=> (not res!680829) (not e!570668))))

(declare-fun value!115 () B!1434)

(assert (=> b!1014332 (= res!680829 (and (not (= (_2!7629 (h!22742 l!412)) value!115)) (is-Cons!21544 l!412)))))

(declare-fun b!1014333 () Bool)

(declare-fun ListPrimitiveSize!114 (List!21548) Int)

(assert (=> b!1014333 (= e!570668 (>= (ListPrimitiveSize!114 (t!30557 l!412)) (ListPrimitiveSize!114 l!412)))))

(declare-datatypes ((List!21549 0))(
  ( (Nil!21546) (Cons!21545 (h!22743 (_ BitVec 64)) (t!30558 List!21549)) )
))
(declare-fun lt!448473 () List!21549)

(declare-fun getKeysOf!48 (List!21548 B!1434) List!21549)

(assert (=> b!1014333 (= lt!448473 (getKeysOf!48 (t!30557 l!412) value!115))))

(declare-fun b!1014334 () Bool)

(declare-fun tp!70527 () Bool)

(assert (=> b!1014334 (= e!570667 (and tp_is_empty!23501 tp!70527))))

(assert (= (and start!87746 res!680830) b!1014332))

(assert (= (and b!1014332 res!680829) b!1014333))

(assert (= (and start!87746 (is-Cons!21544 l!412)) b!1014334))

(declare-fun m!937141 () Bool)

(assert (=> start!87746 m!937141))

(declare-fun m!937143 () Bool)

(assert (=> b!1014333 m!937143))

(declare-fun m!937145 () Bool)

(assert (=> b!1014333 m!937145))

(declare-fun m!937147 () Bool)

(assert (=> b!1014333 m!937147))

(push 1)

(assert (not start!87746))

(assert (not b!1014333))

(assert (not b!1014334))

(assert tp_is_empty!23501)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120729 () Bool)

(declare-fun res!680841 () Bool)

(declare-fun e!570685 () Bool)

(assert (=> d!120729 (=> res!680841 e!570685)))

(assert (=> d!120729 (= res!680841 (or (is-Nil!21545 l!412) (is-Nil!21545 (t!30557 l!412))))))

(assert (=> d!120729 (= (isStrictlySorted!571 l!412) e!570685)))

(declare-fun b!1014357 () Bool)

(declare-fun e!570686 () Bool)

(assert (=> b!1014357 (= e!570685 e!570686)))

(declare-fun res!680842 () Bool)

(assert (=> b!1014357 (=> (not res!680842) (not e!570686))))

(assert (=> b!1014357 (= res!680842 (bvslt (_1!7629 (h!22742 l!412)) (_1!7629 (h!22742 (t!30557 l!412)))))))

(declare-fun b!1014358 () Bool)

(assert (=> b!1014358 (= e!570686 (isStrictlySorted!571 (t!30557 l!412)))))

(assert (= (and d!120729 (not res!680841)) b!1014357))

(assert (= (and b!1014357 res!680842) b!1014358))

(declare-fun m!937153 () Bool)

(assert (=> b!1014358 m!937153))

(assert (=> start!87746 d!120729))

(declare-fun d!120737 () Bool)

(declare-fun lt!448484 () Int)

(assert (=> d!120737 (>= lt!448484 0)))

(declare-fun e!570691 () Int)

(assert (=> d!120737 (= lt!448484 e!570691)))

(declare-fun c!102620 () Bool)

(assert (=> d!120737 (= c!102620 (is-Nil!21545 (t!30557 l!412)))))

(assert (=> d!120737 (= (ListPrimitiveSize!114 (t!30557 l!412)) lt!448484)))

(declare-fun b!1014367 () Bool)

(assert (=> b!1014367 (= e!570691 0)))

(declare-fun b!1014368 () Bool)

(assert (=> b!1014368 (= e!570691 (+ 1 (ListPrimitiveSize!114 (t!30557 (t!30557 l!412)))))))

(assert (= (and d!120737 c!102620) b!1014367))

(assert (= (and d!120737 (not c!102620)) b!1014368))

(declare-fun m!937157 () Bool)

(assert (=> b!1014368 m!937157))

(assert (=> b!1014333 d!120737))

(declare-fun d!120743 () Bool)

(declare-fun lt!448485 () Int)

(assert (=> d!120743 (>= lt!448485 0)))

(declare-fun e!570692 () Int)

(assert (=> d!120743 (= lt!448485 e!570692)))

(declare-fun c!102621 () Bool)

(assert (=> d!120743 (= c!102621 (is-Nil!21545 l!412))))

(assert (=> d!120743 (= (ListPrimitiveSize!114 l!412) lt!448485)))

(declare-fun b!1014369 () Bool)

(assert (=> b!1014369 (= e!570692 0)))

(declare-fun b!1014370 () Bool)

(assert (=> b!1014370 (= e!570692 (+ 1 (ListPrimitiveSize!114 (t!30557 l!412))))))

(assert (= (and d!120743 c!102621) b!1014369))

(assert (= (and d!120743 (not c!102621)) b!1014370))

(assert (=> b!1014370 m!937143))

(assert (=> b!1014333 d!120743))

(declare-fun b!1014449 () Bool)

(assert (=> b!1014449 true))

(assert (=> b!1014449 true))

(assert (=> b!1014449 true))

(declare-fun bs!29266 () Bool)

(declare-fun b!1014454 () Bool)

(assert (= bs!29266 (and b!1014454 b!1014449)))

(declare-fun lt!448583 () tuple2!15238)

(declare-fun lambda!707 () Int)

(declare-fun lt!448589 () List!21548)

(declare-fun lt!448588 () tuple2!15238)

(declare-fun lt!448585 () List!21548)

(declare-fun lambda!709 () Int)

(assert (=> bs!29266 (= (= (Cons!21544 lt!448588 lt!448589) (Cons!21544 lt!448583 lt!448585)) (= lambda!709 lambda!707))))

(assert (=> b!1014454 true))

(assert (=> b!1014454 true))

(assert (=> b!1014454 true))

(declare-fun bs!29268 () Bool)

(declare-fun d!120745 () Bool)

(assert (= bs!29268 (and d!120745 b!1014449)))

(declare-fun lambda!710 () Int)

(assert (=> bs!29268 (= (= (t!30557 l!412) (Cons!21544 lt!448583 lt!448585)) (= lambda!710 lambda!707))))

(declare-fun bs!29269 () Bool)

(assert (= bs!29269 (and d!120745 b!1014454)))

(assert (=> bs!29269 (= (= (t!30557 l!412) (Cons!21544 lt!448588 lt!448589)) (= lambda!710 lambda!709))))

(assert (=> d!120745 true))

(assert (=> d!120745 true))

(declare-fun b!1014447 () Bool)

(declare-fun e!570728 () List!21549)

(declare-fun call!42815 () List!21549)

(assert (=> b!1014447 (= e!570728 (Cons!21545 (_1!7629 (h!22742 (t!30557 l!412))) call!42815))))

(declare-fun c!102655 () Bool)

(declare-fun call!42814 () Bool)

(assert (=> b!1014447 (= c!102655 (not call!42814))))

(declare-datatypes ((Unit!33136 0))(
  ( (Unit!33137) )
))
(declare-fun lt!448584 () Unit!33136)

(declare-fun e!570725 () Unit!33136)

(assert (=> b!1014447 (= lt!448584 e!570725)))

(declare-fun b!1014448 () Bool)

(declare-fun e!570726 () List!21549)

(assert (=> b!1014448 (= e!570726 Nil!21546)))

(declare-fun call!42817 () Bool)

(assert (=> b!1014449 call!42817))

(declare-fun lt!448582 () Unit!33136)

(declare-fun call!42816 () Unit!33136)

(assert (=> b!1014449 (= lt!448582 call!42816)))

(assert (=> b!1014449 (= lt!448583 (h!22742 (t!30557 l!412)))))

(declare-fun lt!448587 () List!21549)

(assert (=> b!1014449 (= lt!448587 call!42815)))

(assert (=> b!1014449 (= lt!448585 (t!30557 (t!30557 l!412)))))

(assert (=> b!1014449 (= e!570725 lt!448582)))

(declare-fun bm!42811 () Bool)

(declare-fun isEmpty!839 (List!21549) Bool)

(assert (=> bm!42811 (= call!42814 (isEmpty!839 call!42815))))

(declare-fun b!1014450 () Bool)

(declare-fun Unit!33139 () Unit!33136)

(assert (=> b!1014450 (= e!570725 Unit!33139)))

(declare-fun b!1014451 () Bool)

(declare-fun lt!448591 () Unit!33136)

(declare-fun e!570727 () Unit!33136)

(assert (=> b!1014451 (= lt!448591 e!570727)))

(declare-fun c!102654 () Bool)

(assert (=> b!1014451 (= c!102654 (not call!42814))))

(declare-fun lt!448593 () List!21549)

(assert (=> b!1014451 (= lt!448593 call!42815)))

(assert (=> b!1014451 (= e!570726 call!42815)))

(declare-fun b!1014452 () Bool)

(assert (=> b!1014452 (= e!570728 e!570726)))

(declare-fun c!102657 () Bool)

(assert (=> b!1014452 (= c!102657 (and (is-Cons!21544 (t!30557 l!412)) (not (= (_2!7629 (h!22742 (t!30557 l!412))) value!115))))))

(declare-fun c!102656 () Bool)

(declare-fun lt!448590 () List!21549)

(declare-fun bm!42812 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!38 (List!21548 List!21549 B!1434 tuple2!15238) Unit!33136)

(assert (=> bm!42812 (= call!42816 (lemmaForallGetValueByKeySameWithASmallerHead!38 (ite c!102656 lt!448585 lt!448589) (ite c!102656 lt!448587 lt!448590) value!115 (ite c!102656 lt!448583 lt!448588)))))

(declare-fun bm!42813 () Bool)

(declare-fun forall!244 (List!21549 Int) Bool)

(assert (=> bm!42813 (= call!42817 (forall!244 (ite c!102656 lt!448587 lt!448590) (ite c!102656 lambda!707 lambda!709)))))

(declare-fun lt!448592 () List!21549)

(assert (=> d!120745 (forall!244 lt!448592 lambda!710)))

(assert (=> d!120745 (= lt!448592 e!570728)))

(assert (=> d!120745 (= c!102656 (and (is-Cons!21544 (t!30557 l!412)) (= (_2!7629 (h!22742 (t!30557 l!412))) value!115)))))

(assert (=> d!120745 (isStrictlySorted!571 (t!30557 l!412))))

(assert (=> d!120745 (= (getKeysOf!48 (t!30557 l!412) value!115) lt!448592)))

(declare-fun bm!42814 () Bool)

(assert (=> bm!42814 (= call!42815 (getKeysOf!48 (t!30557 (t!30557 l!412)) value!115))))

(declare-fun b!1014453 () Bool)

(declare-fun Unit!33141 () Unit!33136)

(assert (=> b!1014453 (= e!570727 Unit!33141)))

(declare-fun lt!448586 () Unit!33136)

(assert (=> b!1014454 (= e!570727 lt!448586)))

(assert (=> b!1014454 (= lt!448589 (t!30557 (t!30557 l!412)))))

(assert (=> b!1014454 (= lt!448590 call!42815)))

(assert (=> b!1014454 (= lt!448588 (h!22742 (t!30557 l!412)))))

(assert (=> b!1014454 (= lt!448586 call!42816)))

(assert (=> b!1014454 call!42817))

(assert (= (and d!120745 c!102656) b!1014447))

(assert (= (and d!120745 (not c!102656)) b!1014452))

(assert (= (and b!1014447 c!102655) b!1014449))

(assert (= (and b!1014447 (not c!102655)) b!1014450))

(assert (= (and b!1014452 c!102657) b!1014451))

(assert (= (and b!1014452 (not c!102657)) b!1014448))

(assert (= (and b!1014451 c!102654) b!1014454))

(assert (= (and b!1014451 (not c!102654)) b!1014453))

(assert (= (or b!1014449 b!1014454) bm!42812))

(assert (= (or b!1014449 b!1014454) bm!42813))

(assert (= (or b!1014447 b!1014449 b!1014451 b!1014454) bm!42814))

(assert (= (or b!1014447 b!1014451) bm!42811))

(declare-fun m!937175 () Bool)

(assert (=> bm!42813 m!937175))

(declare-fun m!937177 () Bool)

(assert (=> d!120745 m!937177))

(assert (=> d!120745 m!937153))

(declare-fun m!937179 () Bool)

(assert (=> bm!42814 m!937179))

(declare-fun m!937183 () Bool)

(assert (=> bm!42812 m!937183))

(declare-fun m!937187 () Bool)

(assert (=> bm!42811 m!937187))

(assert (=> b!1014333 d!120745))

(declare-fun b!1014480 () Bool)

(declare-fun e!570742 () Bool)

(declare-fun tp!70535 () Bool)

(assert (=> b!1014480 (= e!570742 (and tp_is_empty!23501 tp!70535))))

(assert (=> b!1014334 (= tp!70527 e!570742)))

(assert (= (and b!1014334 (is-Cons!21544 (t!30557 l!412))) b!1014480))

(push 1)

