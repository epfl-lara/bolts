; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87622 () Bool)

(assert start!87622)

(declare-fun b!1013656 () Bool)

(assert (=> b!1013656 true))

(assert (=> b!1013656 true))

(declare-fun b!1013652 () Bool)

(declare-fun e!570264 () Bool)

(declare-fun tp_is_empty!23479 () Bool)

(declare-fun tp!70464 () Bool)

(assert (=> b!1013652 (= e!570264 (and tp_is_empty!23479 tp!70464))))

(declare-fun res!680562 () Bool)

(declare-fun e!570265 () Bool)

(assert (=> start!87622 (=> (not res!680562) (not e!570265))))

(declare-datatypes ((B!1412 0))(
  ( (B!1413 (val!11790 Int)) )
))
(declare-datatypes ((tuple2!15216 0))(
  ( (tuple2!15217 (_1!7618 (_ BitVec 64)) (_2!7618 B!1412)) )
))
(declare-datatypes ((List!21529 0))(
  ( (Nil!21526) (Cons!21525 (h!22723 tuple2!15216) (t!30538 List!21529)) )
))
(declare-fun l!412 () List!21529)

(declare-fun isStrictlySorted!560 (List!21529) Bool)

(assert (=> start!87622 (= res!680562 (isStrictlySorted!560 l!412))))

(assert (=> start!87622 e!570265))

(assert (=> start!87622 e!570264))

(assert (=> start!87622 tp_is_empty!23479))

(declare-fun b!1013653 () Bool)

(declare-datatypes ((Unit!33096 0))(
  ( (Unit!33097) )
))
(declare-fun e!570266 () Unit!33096)

(declare-fun Unit!33098 () Unit!33096)

(assert (=> b!1013653 (= e!570266 Unit!33098)))

(declare-fun b!1013654 () Bool)

(declare-fun ListPrimitiveSize!106 (List!21529) Int)

(assert (=> b!1013654 (= e!570265 (>= (ListPrimitiveSize!106 (t!30538 l!412)) (ListPrimitiveSize!106 l!412)))))

(declare-fun lt!448122 () Unit!33096)

(assert (=> b!1013654 (= lt!448122 e!570266)))

(declare-fun c!102462 () Bool)

(declare-datatypes ((List!21530 0))(
  ( (Nil!21527) (Cons!21526 (h!22724 (_ BitVec 64)) (t!30539 List!21530)) )
))
(declare-fun lt!448121 () List!21530)

(declare-fun isEmpty!825 (List!21530) Bool)

(assert (=> b!1013654 (= c!102462 (not (isEmpty!825 lt!448121)))))

(declare-fun value!115 () B!1412)

(declare-fun getKeysOf!40 (List!21529 B!1412) List!21530)

(assert (=> b!1013654 (= lt!448121 (getKeysOf!40 (t!30538 l!412) value!115))))

(declare-fun b!1013655 () Bool)

(declare-fun res!680563 () Bool)

(assert (=> b!1013655 (=> (not res!680563) (not e!570265))))

(assert (=> b!1013655 (= res!680563 (and (is-Cons!21525 l!412) (= (_2!7618 (h!22723 l!412)) value!115)))))

(declare-fun lt!448120 () Unit!33096)

(assert (=> b!1013656 (= e!570266 lt!448120)))

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!31 (List!21529 List!21530 B!1412 tuple2!15216) Unit!33096)

(assert (=> b!1013656 (= lt!448120 (lemmaForallGetValueByKeySameWithASmallerHead!31 (t!30538 l!412) lt!448121 value!115 (h!22723 l!412)))))

(declare-fun lambda!545 () Int)

(declare-fun forall!236 (List!21530 Int) Bool)

(assert (=> b!1013656 (forall!236 lt!448121 lambda!545)))

(assert (= (and start!87622 res!680562) b!1013655))

(assert (= (and b!1013655 res!680563) b!1013654))

(assert (= (and b!1013654 c!102462) b!1013656))

(assert (= (and b!1013654 (not c!102462)) b!1013653))

(assert (= (and start!87622 (is-Cons!21525 l!412)) b!1013652))

(declare-fun m!936639 () Bool)

(assert (=> start!87622 m!936639))

(declare-fun m!936641 () Bool)

(assert (=> b!1013654 m!936641))

(declare-fun m!936643 () Bool)

(assert (=> b!1013654 m!936643))

(declare-fun m!936645 () Bool)

(assert (=> b!1013654 m!936645))

(declare-fun m!936647 () Bool)

(assert (=> b!1013654 m!936647))

(declare-fun m!936649 () Bool)

(assert (=> b!1013656 m!936649))

(declare-fun m!936651 () Bool)

(assert (=> b!1013656 m!936651))

(push 1)

(assert (not b!1013654))

(assert (not b!1013656))

(assert (not b!1013652))

(assert tp_is_empty!23479)

(assert (not start!87622))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120487 () Bool)

(declare-fun res!680586 () Bool)

(declare-fun e!570301 () Bool)

(assert (=> d!120487 (=> res!680586 e!570301)))

(assert (=> d!120487 (= res!680586 (or (is-Nil!21526 l!412) (is-Nil!21526 (t!30538 l!412))))))

(assert (=> d!120487 (= (isStrictlySorted!560 l!412) e!570301)))

(declare-fun b!1013721 () Bool)

(declare-fun e!570302 () Bool)

(assert (=> b!1013721 (= e!570301 e!570302)))

(declare-fun res!680587 () Bool)

(assert (=> b!1013721 (=> (not res!680587) (not e!570302))))

(assert (=> b!1013721 (= res!680587 (bvslt (_1!7618 (h!22723 l!412)) (_1!7618 (h!22723 (t!30538 l!412)))))))

(declare-fun b!1013722 () Bool)

(assert (=> b!1013722 (= e!570302 (isStrictlySorted!560 (t!30538 l!412)))))

(assert (= (and d!120487 (not res!680586)) b!1013721))

(assert (= (and b!1013721 res!680587) b!1013722))

(declare-fun m!936687 () Bool)

(assert (=> b!1013722 m!936687))

(assert (=> start!87622 d!120487))

(declare-fun d!120497 () Bool)

(declare-fun lt!448151 () Int)

(assert (=> d!120497 (>= lt!448151 0)))

(declare-fun e!570307 () Int)

(assert (=> d!120497 (= lt!448151 e!570307)))

(declare-fun c!102479 () Bool)

(assert (=> d!120497 (= c!102479 (is-Nil!21526 (t!30538 l!412)))))

(assert (=> d!120497 (= (ListPrimitiveSize!106 (t!30538 l!412)) lt!448151)))

(declare-fun b!1013731 () Bool)

(assert (=> b!1013731 (= e!570307 0)))

(declare-fun b!1013732 () Bool)

(assert (=> b!1013732 (= e!570307 (+ 1 (ListPrimitiveSize!106 (t!30538 (t!30538 l!412)))))))

(assert (= (and d!120497 c!102479) b!1013731))

(assert (= (and d!120497 (not c!102479)) b!1013732))

(declare-fun m!936689 () Bool)

(assert (=> b!1013732 m!936689))

(assert (=> b!1013654 d!120497))

(declare-fun d!120507 () Bool)

(declare-fun lt!448152 () Int)

(assert (=> d!120507 (>= lt!448152 0)))

(declare-fun e!570308 () Int)

(assert (=> d!120507 (= lt!448152 e!570308)))

(declare-fun c!102480 () Bool)

(assert (=> d!120507 (= c!102480 (is-Nil!21526 l!412))))

(assert (=> d!120507 (= (ListPrimitiveSize!106 l!412) lt!448152)))

(declare-fun b!1013733 () Bool)

(assert (=> b!1013733 (= e!570308 0)))

(declare-fun b!1013734 () Bool)

(assert (=> b!1013734 (= e!570308 (+ 1 (ListPrimitiveSize!106 (t!30538 l!412))))))

(assert (= (and d!120507 c!102480) b!1013733))

(assert (= (and d!120507 (not c!102480)) b!1013734))

(assert (=> b!1013734 m!936641))

(assert (=> b!1013654 d!120507))

(declare-fun d!120509 () Bool)

(assert (=> d!120509 (= (isEmpty!825 lt!448121) (is-Nil!21527 lt!448121))))

(assert (=> b!1013654 d!120509))

(declare-fun bs!28952 () Bool)

(declare-fun b!1013808 () Bool)

(assert (= bs!28952 (and b!1013808 b!1013656)))

(declare-fun lt!448254 () tuple2!15216)

(declare-fun lambda!574 () Int)

(declare-fun lt!448249 () List!21529)

(assert (=> bs!28952 (= (= (Cons!21525 lt!448254 lt!448249) l!412) (= lambda!574 lambda!545))))

(assert (=> b!1013808 true))

(assert (=> b!1013808 true))

(assert (=> b!1013808 true))

(declare-fun bs!28959 () Bool)

(declare-fun b!1013806 () Bool)

(assert (= bs!28959 (and b!1013806 b!1013656)))

(declare-fun lt!448259 () tuple2!15216)

(declare-fun lt!448251 () List!21529)

(declare-fun lambda!577 () Int)

(assert (=> bs!28959 (= (= (Cons!21525 lt!448259 lt!448251) l!412) (= lambda!577 lambda!545))))

(declare-fun bs!28960 () Bool)

(assert (= bs!28960 (and b!1013806 b!1013808)))

(assert (=> bs!28960 (= (= (Cons!21525 lt!448259 lt!448251) (Cons!21525 lt!448254 lt!448249)) (= lambda!577 lambda!574))))

(assert (=> b!1013806 true))

(assert (=> b!1013806 true))

(assert (=> b!1013806 true))

(declare-fun bs!28961 () Bool)

(declare-fun d!120511 () Bool)

(assert (= bs!28961 (and d!120511 b!1013656)))

(declare-fun lambda!578 () Int)

(assert (=> bs!28961 (= (= (t!30538 l!412) l!412) (= lambda!578 lambda!545))))

(declare-fun bs!28962 () Bool)

(assert (= bs!28962 (and d!120511 b!1013808)))

(assert (=> bs!28962 (= (= (t!30538 l!412) (Cons!21525 lt!448254 lt!448249)) (= lambda!578 lambda!574))))

(declare-fun bs!28963 () Bool)

(assert (= bs!28963 (and d!120511 b!1013806)))

(assert (=> bs!28963 (= (= (t!30538 l!412) (Cons!21525 lt!448259 lt!448251)) (= lambda!578 lambda!577))))

(assert (=> d!120511 true))

(assert (=> d!120511 true))

(declare-fun bm!42727 () Bool)

(declare-fun call!42733 () List!21530)

(assert (=> bm!42727 (= call!42733 (getKeysOf!40 (t!30538 (t!30538 l!412)) value!115))))

(declare-fun b!1013803 () Bool)

(declare-fun e!570341 () Unit!33096)

(declare-fun Unit!33105 () Unit!33096)

(assert (=> b!1013803 (= e!570341 Unit!33105)))

(declare-fun b!1013804 () Bool)

(declare-fun e!570342 () Unit!33096)

(declare-fun Unit!33106 () Unit!33096)

(assert (=> b!1013804 (= e!570342 Unit!33106)))

(declare-fun b!1013805 () Bool)

(declare-fun e!570344 () List!21530)

(assert (=> b!1013805 (= e!570344 (Cons!21526 (_1!7618 (h!22723 (t!30538 l!412))) call!42733))))

(declare-fun c!102515 () Bool)

(declare-fun call!42731 () Bool)

(assert (=> b!1013805 (= c!102515 (not call!42731))))

(declare-fun lt!448255 () Unit!33096)

(assert (=> b!1013805 (= lt!448255 e!570342)))

(declare-fun lt!448253 () Unit!33096)

(assert (=> b!1013806 (= e!570341 lt!448253)))

(assert (=> b!1013806 (= lt!448251 (t!30538 (t!30538 l!412)))))

(declare-fun lt!448260 () List!21530)

(assert (=> b!1013806 (= lt!448260 call!42733)))

(assert (=> b!1013806 (= lt!448259 (h!22723 (t!30538 l!412)))))

(declare-fun call!42732 () Unit!33096)

(assert (=> b!1013806 (= lt!448253 call!42732)))

(declare-fun call!42730 () Bool)

(assert (=> b!1013806 call!42730))

(declare-fun b!1013807 () Bool)

(declare-fun lt!448250 () Unit!33096)

(assert (=> b!1013807 (= lt!448250 e!570341)))

(declare-fun c!102514 () Bool)

(assert (=> b!1013807 (= c!102514 (not call!42731))))

(declare-fun lt!448256 () List!21530)

(assert (=> b!1013807 (= lt!448256 call!42733)))

(declare-fun e!570343 () List!21530)

(assert (=> b!1013807 (= e!570343 call!42733)))

(assert (=> b!1013808 call!42730))

(declare-fun lt!448252 () Unit!33096)

(assert (=> b!1013808 (= lt!448252 call!42732)))

(assert (=> b!1013808 (= lt!448254 (h!22723 (t!30538 l!412)))))

(declare-fun lt!448258 () List!21530)

(assert (=> b!1013808 (= lt!448258 call!42733)))

(assert (=> b!1013808 (= lt!448249 (t!30538 (t!30538 l!412)))))

(assert (=> b!1013808 (= e!570342 lt!448252)))

(declare-fun b!1013809 () Bool)

(assert (=> b!1013809 (= e!570343 Nil!21527)))

(declare-fun b!1013810 () Bool)

(assert (=> b!1013810 (= e!570344 e!570343)))

(declare-fun c!102516 () Bool)

(assert (=> b!1013810 (= c!102516 (and (is-Cons!21525 (t!30538 l!412)) (not (= (_2!7618 (h!22723 (t!30538 l!412))) value!115))))))

(declare-fun bm!42728 () Bool)

(declare-fun c!102513 () Bool)

(assert (=> bm!42728 (= call!42730 (forall!236 (ite c!102513 lt!448258 lt!448260) (ite c!102513 lambda!574 lambda!577)))))

(declare-fun lt!448257 () List!21530)

(assert (=> d!120511 (forall!236 lt!448257 lambda!578)))

(assert (=> d!120511 (= lt!448257 e!570344)))

(assert (=> d!120511 (= c!102513 (and (is-Cons!21525 (t!30538 l!412)) (= (_2!7618 (h!22723 (t!30538 l!412))) value!115)))))

(assert (=> d!120511 (isStrictlySorted!560 (t!30538 l!412))))

(assert (=> d!120511 (= (getKeysOf!40 (t!30538 l!412) value!115) lt!448257)))

(declare-fun bm!42729 () Bool)

(assert (=> bm!42729 (= call!42732 (lemmaForallGetValueByKeySameWithASmallerHead!31 (ite c!102513 lt!448249 lt!448251) (ite c!102513 lt!448258 lt!448260) value!115 (ite c!102513 lt!448254 lt!448259)))))

(declare-fun bm!42730 () Bool)

(assert (=> bm!42730 (= call!42731 (isEmpty!825 call!42733))))

(assert (= (and d!120511 c!102513) b!1013805))

(assert (= (and d!120511 (not c!102513)) b!1013810))

(assert (= (and b!1013805 c!102515) b!1013808))

(assert (= (and b!1013805 (not c!102515)) b!1013804))

(assert (= (and b!1013810 c!102516) b!1013807))

(assert (= (and b!1013810 (not c!102516)) b!1013809))

(assert (= (and b!1013807 c!102514) b!1013806))

(assert (= (and b!1013807 (not c!102514)) b!1013803))

(assert (= (or b!1013808 b!1013806) bm!42729))

(assert (= (or b!1013808 b!1013806) bm!42728))

(assert (= (or b!1013805 b!1013808 b!1013806 b!1013807) bm!42727))

(assert (= (or b!1013805 b!1013807) bm!42730))

(declare-fun m!936713 () Bool)

(assert (=> d!120511 m!936713))

(assert (=> d!120511 m!936687))

(declare-fun m!936715 () Bool)

(assert (=> bm!42727 m!936715))

(declare-fun m!936717 () Bool)

(assert (=> bm!42730 m!936717))

(declare-fun m!936719 () Bool)

(assert (=> bm!42729 m!936719))

(declare-fun m!936721 () Bool)

(assert (=> bm!42728 m!936721))

(assert (=> b!1013654 d!120511))

(declare-fun bs!28973 () Bool)

(declare-fun b!1013838 () Bool)

(assert (= bs!28973 (and b!1013838 b!1013656)))

(declare-fun lambda!595 () Int)

(assert (=> bs!28973 (= (= (t!30538 l!412) l!412) (= lambda!595 lambda!545))))

(declare-fun bs!28976 () Bool)

(assert (= bs!28976 (and b!1013838 b!1013808)))

(assert (=> bs!28976 (= (= (t!30538 l!412) (Cons!21525 lt!448254 lt!448249)) (= lambda!595 lambda!574))))

(declare-fun bs!28979 () Bool)

(assert (= bs!28979 (and b!1013838 b!1013806)))

(assert (=> bs!28979 (= (= (t!30538 l!412) (Cons!21525 lt!448259 lt!448251)) (= lambda!595 lambda!577))))

(declare-fun bs!28982 () Bool)

(assert (= bs!28982 (and b!1013838 d!120511)))

(assert (=> bs!28982 (= lambda!595 lambda!578)))

(assert (=> b!1013838 true))

(assert (=> b!1013838 true))

(declare-fun bs!28986 () Bool)

(declare-fun d!120517 () Bool)

(assert (= bs!28986 (and d!120517 d!120511)))

(declare-fun lambda!596 () Int)

(assert (=> bs!28986 (= (= (Cons!21525 (h!22723 l!412) (t!30538 l!412)) (t!30538 l!412)) (= lambda!596 lambda!578))))

(declare-fun bs!28987 () Bool)

(assert (= bs!28987 (and d!120517 b!1013808)))

(assert (=> bs!28987 (= (= (Cons!21525 (h!22723 l!412) (t!30538 l!412)) (Cons!21525 lt!448254 lt!448249)) (= lambda!596 lambda!574))))

(declare-fun bs!28988 () Bool)

(assert (= bs!28988 (and d!120517 b!1013838)))

(assert (=> bs!28988 (= (= (Cons!21525 (h!22723 l!412) (t!30538 l!412)) (t!30538 l!412)) (= lambda!596 lambda!595))))

(declare-fun bs!28989 () Bool)

(assert (= bs!28989 (and d!120517 b!1013806)))

(assert (=> bs!28989 (= (= (Cons!21525 (h!22723 l!412) (t!30538 l!412)) (Cons!21525 lt!448259 lt!448251)) (= lambda!596 lambda!577))))

(declare-fun bs!28990 () Bool)

(assert (= bs!28990 (and d!120517 b!1013656)))

(assert (=> bs!28990 (= (= (Cons!21525 (h!22723 l!412) (t!30538 l!412)) l!412) (= lambda!596 lambda!545))))

(assert (=> d!120517 true))

(assert (=> d!120517 true))

(assert (=> d!120517 true))

(assert (=> d!120517 (forall!236 lt!448121 lambda!596)))

(declare-fun lt!448269 () Unit!33096)

(declare-fun choose!1637 (List!21529 List!21530 B!1412 tuple2!15216) Unit!33096)

(assert (=> d!120517 (= lt!448269 (choose!1637 (t!30538 l!412) lt!448121 value!115 (h!22723 l!412)))))

(declare-fun e!570353 () Bool)

(assert (=> d!120517 e!570353))

(declare-fun res!680612 () Bool)

(assert (=> d!120517 (=> (not res!680612) (not e!570353))))

(assert (=> d!120517 (= res!680612 (isStrictlySorted!560 (t!30538 l!412)))))

(assert (=> d!120517 (= (lemmaForallGetValueByKeySameWithASmallerHead!31 (t!30538 l!412) lt!448121 value!115 (h!22723 l!412)) lt!448269)))

(declare-fun b!1013837 () Bool)

(declare-fun res!680613 () Bool)

(assert (=> b!1013837 (=> (not res!680613) (not e!570353))))

(declare-fun isEmpty!829 (List!21529) Bool)

(assert (=> b!1013837 (= res!680613 (not (isEmpty!829 (t!30538 l!412))))))

(declare-fun res!680614 () Bool)

(assert (=> b!1013838 (=> (not res!680614) (not e!570353))))

(assert (=> b!1013838 (= res!680614 (forall!236 lt!448121 lambda!595))))

(declare-fun b!1013839 () Bool)

(declare-fun head!934 (List!21529) tuple2!15216)

(assert (=> b!1013839 (= e!570353 (bvslt (_1!7618 (h!22723 l!412)) (_1!7618 (head!934 (t!30538 l!412)))))))

(assert (= (and d!120517 res!680612) b!1013837))

(assert (= (and b!1013837 res!680613) b!1013838))

(assert (= (and b!1013838 res!680614) b!1013839))

(declare-fun m!936743 () Bool)

(assert (=> d!120517 m!936743))

(declare-fun m!936745 () Bool)

(assert (=> d!120517 m!936745))

(assert (=> d!120517 m!936687))

(declare-fun m!936747 () Bool)

(assert (=> b!1013837 m!936747))

(declare-fun m!936749 () Bool)

(assert (=> b!1013838 m!936749))

(declare-fun m!936751 () Bool)

(assert (=> b!1013839 m!936751))

(assert (=> b!1013656 d!120517))

(declare-fun d!120523 () Bool)

(declare-fun res!680631 () Bool)

(declare-fun e!570373 () Bool)

(assert (=> d!120523 (=> res!680631 e!570373)))

(assert (=> d!120523 (= res!680631 (is-Nil!21527 lt!448121))))

(assert (=> d!120523 (= (forall!236 lt!448121 lambda!545) e!570373)))

(declare-fun b!1013861 () Bool)

(declare-fun e!570374 () Bool)

(assert (=> b!1013861 (= e!570373 e!570374)))

(declare-fun res!680632 () Bool)

(assert (=> b!1013861 (=> (not res!680632) (not e!570374))))

(declare-fun dynLambda!1890 (Int (_ BitVec 64)) Bool)

(assert (=> b!1013861 (= res!680632 (dynLambda!1890 lambda!545 (h!22724 lt!448121)))))

(declare-fun b!1013862 () Bool)

(assert (=> b!1013862 (= e!570374 (forall!236 (t!30539 lt!448121) lambda!545))))

(assert (= (and d!120523 (not res!680631)) b!1013861))

(assert (= (and b!1013861 res!680632) b!1013862))

(declare-fun b_lambda!15301 () Bool)

(assert (=> (not b_lambda!15301) (not b!1013861)))

(declare-fun m!936763 () Bool)

(assert (=> b!1013861 m!936763))

(declare-fun m!936765 () Bool)

(assert (=> b!1013862 m!936765))

(assert (=> b!1013656 d!120523))

(declare-fun b!1013871 () Bool)

(declare-fun e!570381 () Bool)

(declare-fun tp!70476 () Bool)

(assert (=> b!1013871 (= e!570381 (and tp_is_empty!23479 tp!70476))))

(assert (=> b!1013652 (= tp!70464 e!570381)))

(assert (= (and b!1013652 (is-Cons!21525 (t!30538 l!412))) b!1013871))

(declare-fun b_lambda!15303 () Bool)

(assert (= b_lambda!15301 (or b!1013656 b_lambda!15303)))

(declare-fun bs!28992 () Bool)

(declare-fun d!120529 () Bool)

(assert (= bs!28992 (and d!120529 b!1013656)))

(declare-datatypes ((Option!577 0))(
  ( (Some!576 (v!14425 B!1412)) (None!575) )
))
(declare-fun getValueByKey!526 (List!21529 (_ BitVec 64)) Option!577)

(assert (=> bs!28992 (= (dynLambda!1890 lambda!545 (h!22724 lt!448121)) (= (getValueByKey!526 l!412 (h!22724 lt!448121)) (Some!576 value!115)))))

(declare-fun m!936767 () Bool)

(assert (=> bs!28992 m!936767))

(assert (=> b!1013861 d!120529))

(push 1)

