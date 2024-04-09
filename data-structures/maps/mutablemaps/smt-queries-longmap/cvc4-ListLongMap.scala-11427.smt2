; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133280 () Bool)

(assert start!133280)

(declare-fun b!1558409 () Bool)

(declare-fun res!1065944 () Bool)

(declare-fun e!868178 () Bool)

(assert (=> b!1558409 (=> (not res!1065944) (not e!868178))))

(declare-datatypes ((B!2442 0))(
  ( (B!2443 (val!19307 Int)) )
))
(declare-datatypes ((tuple2!25130 0))(
  ( (tuple2!25131 (_1!12575 (_ BitVec 64)) (_2!12575 B!2442)) )
))
(declare-datatypes ((List!36487 0))(
  ( (Nil!36484) (Cons!36483 (h!37930 tuple2!25130) (t!51221 List!36487)) )
))
(declare-fun l!1292 () List!36487)

(declare-fun isStrictlySorted!978 (List!36487) Bool)

(assert (=> b!1558409 (= res!1065944 (isStrictlySorted!978 (t!51221 l!1292)))))

(declare-fun b!1558410 () Bool)

(declare-fun e!868179 () Bool)

(declare-fun tp_is_empty!38447 () Bool)

(declare-fun tp!112663 () Bool)

(assert (=> b!1558410 (= e!868179 (and tp_is_empty!38447 tp!112663))))

(declare-fun b!1558411 () Bool)

(declare-fun res!1065943 () Bool)

(assert (=> b!1558411 (=> (not res!1065943) (not e!868178))))

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun newKey!135 () (_ BitVec 64))

(assert (=> b!1558411 (= res!1065943 (and (not (= otherKey!62 newKey!135)) (is-Cons!36483 l!1292) (not (= (_1!12575 (h!37930 l!1292)) otherKey!62))))))

(declare-fun b!1558412 () Bool)

(declare-fun newValue!135 () B!2442)

(declare-fun containsKey!842 (List!36487 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!571 (List!36487 (_ BitVec 64) B!2442) List!36487)

(assert (=> b!1558412 (= e!868178 (not (containsKey!842 (insertStrictlySorted!571 l!1292 newKey!135 newValue!135) otherKey!62)))))

(assert (=> b!1558412 (containsKey!842 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135) otherKey!62)))

(declare-datatypes ((Unit!51828 0))(
  ( (Unit!51829) )
))
(declare-fun lt!670715 () Unit!51828)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!12 (List!36487 (_ BitVec 64) B!2442 (_ BitVec 64)) Unit!51828)

(assert (=> b!1558412 (= lt!670715 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!12 (t!51221 l!1292) newKey!135 newValue!135 otherKey!62))))

(declare-fun res!1065941 () Bool)

(assert (=> start!133280 (=> (not res!1065941) (not e!868178))))

(assert (=> start!133280 (= res!1065941 (isStrictlySorted!978 l!1292))))

(assert (=> start!133280 e!868178))

(assert (=> start!133280 e!868179))

(assert (=> start!133280 true))

(assert (=> start!133280 tp_is_empty!38447))

(declare-fun b!1558413 () Bool)

(declare-fun res!1065942 () Bool)

(assert (=> b!1558413 (=> (not res!1065942) (not e!868178))))

(assert (=> b!1558413 (= res!1065942 (containsKey!842 (t!51221 l!1292) otherKey!62))))

(declare-fun b!1558414 () Bool)

(declare-fun res!1065945 () Bool)

(assert (=> b!1558414 (=> (not res!1065945) (not e!868178))))

(assert (=> b!1558414 (= res!1065945 (containsKey!842 l!1292 otherKey!62))))

(assert (= (and start!133280 res!1065941) b!1558414))

(assert (= (and b!1558414 res!1065945) b!1558411))

(assert (= (and b!1558411 res!1065943) b!1558409))

(assert (= (and b!1558409 res!1065944) b!1558413))

(assert (= (and b!1558413 res!1065942) b!1558412))

(assert (= (and start!133280 (is-Cons!36483 l!1292)) b!1558410))

(declare-fun m!1435053 () Bool)

(assert (=> start!133280 m!1435053))

(declare-fun m!1435055 () Bool)

(assert (=> b!1558409 m!1435055))

(declare-fun m!1435057 () Bool)

(assert (=> b!1558413 m!1435057))

(declare-fun m!1435059 () Bool)

(assert (=> b!1558414 m!1435059))

(declare-fun m!1435061 () Bool)

(assert (=> b!1558412 m!1435061))

(declare-fun m!1435063 () Bool)

(assert (=> b!1558412 m!1435063))

(assert (=> b!1558412 m!1435061))

(declare-fun m!1435065 () Bool)

(assert (=> b!1558412 m!1435065))

(declare-fun m!1435067 () Bool)

(assert (=> b!1558412 m!1435067))

(assert (=> b!1558412 m!1435065))

(declare-fun m!1435069 () Bool)

(assert (=> b!1558412 m!1435069))

(push 1)

(assert (not start!133280))

(assert (not b!1558410))

(assert (not b!1558409))

(assert tp_is_empty!38447)

(assert (not b!1558413))

(assert (not b!1558412))

(assert (not b!1558414))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162599 () Bool)

(declare-fun res!1065956 () Bool)

(declare-fun e!868190 () Bool)

(assert (=> d!162599 (=> res!1065956 e!868190)))

(assert (=> d!162599 (= res!1065956 (and (is-Cons!36483 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135)) (= (_1!12575 (h!37930 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135))) otherKey!62)))))

(assert (=> d!162599 (= (containsKey!842 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135) otherKey!62) e!868190)))

(declare-fun b!1558425 () Bool)

(declare-fun e!868191 () Bool)

(assert (=> b!1558425 (= e!868190 e!868191)))

(declare-fun res!1065957 () Bool)

(assert (=> b!1558425 (=> (not res!1065957) (not e!868191))))

(assert (=> b!1558425 (= res!1065957 (and (or (not (is-Cons!36483 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135))) (bvsle (_1!12575 (h!37930 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135))) otherKey!62)) (is-Cons!36483 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135)) (bvslt (_1!12575 (h!37930 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135))) otherKey!62)))))

(declare-fun b!1558426 () Bool)

(assert (=> b!1558426 (= e!868191 (containsKey!842 (t!51221 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135)) otherKey!62))))

(assert (= (and d!162599 (not res!1065956)) b!1558425))

(assert (= (and b!1558425 res!1065957) b!1558426))

(declare-fun m!1435073 () Bool)

(assert (=> b!1558426 m!1435073))

(assert (=> b!1558412 d!162599))

(declare-fun d!162605 () Bool)

(declare-fun res!1065962 () Bool)

(declare-fun e!868196 () Bool)

(assert (=> d!162605 (=> res!1065962 e!868196)))

(assert (=> d!162605 (= res!1065962 (and (is-Cons!36483 (insertStrictlySorted!571 l!1292 newKey!135 newValue!135)) (= (_1!12575 (h!37930 (insertStrictlySorted!571 l!1292 newKey!135 newValue!135))) otherKey!62)))))

(assert (=> d!162605 (= (containsKey!842 (insertStrictlySorted!571 l!1292 newKey!135 newValue!135) otherKey!62) e!868196)))

(declare-fun b!1558431 () Bool)

(declare-fun e!868197 () Bool)

(assert (=> b!1558431 (= e!868196 e!868197)))

(declare-fun res!1065963 () Bool)

(assert (=> b!1558431 (=> (not res!1065963) (not e!868197))))

(assert (=> b!1558431 (= res!1065963 (and (or (not (is-Cons!36483 (insertStrictlySorted!571 l!1292 newKey!135 newValue!135))) (bvsle (_1!12575 (h!37930 (insertStrictlySorted!571 l!1292 newKey!135 newValue!135))) otherKey!62)) (is-Cons!36483 (insertStrictlySorted!571 l!1292 newKey!135 newValue!135)) (bvslt (_1!12575 (h!37930 (insertStrictlySorted!571 l!1292 newKey!135 newValue!135))) otherKey!62)))))

(declare-fun b!1558432 () Bool)

(assert (=> b!1558432 (= e!868197 (containsKey!842 (t!51221 (insertStrictlySorted!571 l!1292 newKey!135 newValue!135)) otherKey!62))))

(assert (= (and d!162605 (not res!1065962)) b!1558431))

(assert (= (and b!1558431 res!1065963) b!1558432))

(declare-fun m!1435075 () Bool)

(assert (=> b!1558432 m!1435075))

(assert (=> b!1558412 d!162605))

(declare-fun b!1558513 () Bool)

(declare-fun res!1066000 () Bool)

(declare-fun e!868253 () Bool)

(assert (=> b!1558513 (=> (not res!1066000) (not e!868253))))

(declare-fun lt!670722 () List!36487)

(assert (=> b!1558513 (= res!1066000 (containsKey!842 lt!670722 newKey!135))))

(declare-fun b!1558514 () Bool)

(declare-fun c!144064 () Bool)

(assert (=> b!1558514 (= c!144064 (and (is-Cons!36483 l!1292) (bvsgt (_1!12575 (h!37930 l!1292)) newKey!135)))))

(declare-fun e!868254 () List!36487)

(declare-fun e!868252 () List!36487)

(assert (=> b!1558514 (= e!868254 e!868252)))

(declare-fun b!1558515 () Bool)

(declare-fun call!71764 () List!36487)

(assert (=> b!1558515 (= e!868252 call!71764)))

(declare-fun b!1558516 () Bool)

(assert (=> b!1558516 (= e!868252 call!71764)))

(declare-fun b!1558517 () Bool)

(declare-fun e!868256 () List!36487)

(declare-fun call!71763 () List!36487)

(assert (=> b!1558517 (= e!868256 call!71763)))

(declare-fun b!1558518 () Bool)

(assert (=> b!1558518 (= e!868256 e!868254)))

(declare-fun c!144061 () Bool)

(assert (=> b!1558518 (= c!144061 (and (is-Cons!36483 l!1292) (= (_1!12575 (h!37930 l!1292)) newKey!135)))))

(declare-fun bm!71760 () Bool)

(declare-fun call!71765 () List!36487)

(assert (=> bm!71760 (= call!71764 call!71765)))

(declare-fun b!1558519 () Bool)

(assert (=> b!1558519 (= e!868254 call!71765)))

(declare-fun bm!71761 () Bool)

(assert (=> bm!71761 (= call!71765 call!71763)))

(declare-fun d!162607 () Bool)

(assert (=> d!162607 e!868253))

(declare-fun res!1066001 () Bool)

(assert (=> d!162607 (=> (not res!1066001) (not e!868253))))

(assert (=> d!162607 (= res!1066001 (isStrictlySorted!978 lt!670722))))

(assert (=> d!162607 (= lt!670722 e!868256)))

(declare-fun c!144062 () Bool)

(assert (=> d!162607 (= c!144062 (and (is-Cons!36483 l!1292) (bvslt (_1!12575 (h!37930 l!1292)) newKey!135)))))

(assert (=> d!162607 (isStrictlySorted!978 l!1292)))

(assert (=> d!162607 (= (insertStrictlySorted!571 l!1292 newKey!135 newValue!135) lt!670722)))

(declare-fun e!868255 () List!36487)

(declare-fun b!1558520 () Bool)

(assert (=> b!1558520 (= e!868255 (ite c!144061 (t!51221 l!1292) (ite c!144064 (Cons!36483 (h!37930 l!1292) (t!51221 l!1292)) Nil!36484)))))

(declare-fun b!1558521 () Bool)

(declare-fun contains!10219 (List!36487 tuple2!25130) Bool)

(assert (=> b!1558521 (= e!868253 (contains!10219 lt!670722 (tuple2!25131 newKey!135 newValue!135)))))

(declare-fun bm!71762 () Bool)

(declare-fun $colon$colon!984 (List!36487 tuple2!25130) List!36487)

(assert (=> bm!71762 (= call!71763 ($colon$colon!984 e!868255 (ite c!144062 (h!37930 l!1292) (tuple2!25131 newKey!135 newValue!135))))))

(declare-fun c!144063 () Bool)

(assert (=> bm!71762 (= c!144063 c!144062)))

(declare-fun b!1558522 () Bool)

(assert (=> b!1558522 (= e!868255 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135))))

(assert (= (and d!162607 c!144062) b!1558517))

(assert (= (and d!162607 (not c!144062)) b!1558518))

(assert (= (and b!1558518 c!144061) b!1558519))

(assert (= (and b!1558518 (not c!144061)) b!1558514))

(assert (= (and b!1558514 c!144064) b!1558516))

(assert (= (and b!1558514 (not c!144064)) b!1558515))

(assert (= (or b!1558516 b!1558515) bm!71760))

(assert (= (or b!1558519 bm!71760) bm!71761))

(assert (= (or b!1558517 bm!71761) bm!71762))

(assert (= (and bm!71762 c!144063) b!1558522))

(assert (= (and bm!71762 (not c!144063)) b!1558520))

(assert (= (and d!162607 res!1066001) b!1558513))

(assert (= (and b!1558513 res!1066000) b!1558521))

(declare-fun m!1435089 () Bool)

(assert (=> b!1558513 m!1435089))

(declare-fun m!1435091 () Bool)

(assert (=> b!1558521 m!1435091))

(assert (=> b!1558522 m!1435061))

(declare-fun m!1435093 () Bool)

(assert (=> d!162607 m!1435093))

(assert (=> d!162607 m!1435053))

(declare-fun m!1435095 () Bool)

(assert (=> bm!71762 m!1435095))

(assert (=> b!1558412 d!162607))

(declare-fun d!162629 () Bool)

(assert (=> d!162629 (containsKey!842 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135) otherKey!62)))

(declare-fun lt!670727 () Unit!51828)

(declare-fun choose!2077 (List!36487 (_ BitVec 64) B!2442 (_ BitVec 64)) Unit!51828)

(assert (=> d!162629 (= lt!670727 (choose!2077 (t!51221 l!1292) newKey!135 newValue!135 otherKey!62))))

(declare-fun e!868273 () Bool)

(assert (=> d!162629 e!868273))

(declare-fun res!1066014 () Bool)

(assert (=> d!162629 (=> (not res!1066014) (not e!868273))))

(assert (=> d!162629 (= res!1066014 (isStrictlySorted!978 (t!51221 l!1292)))))

(assert (=> d!162629 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!12 (t!51221 l!1292) newKey!135 newValue!135 otherKey!62) lt!670727)))

(declare-fun b!1558555 () Bool)

(declare-fun res!1066015 () Bool)

(assert (=> b!1558555 (=> (not res!1066015) (not e!868273))))

(assert (=> b!1558555 (= res!1066015 (containsKey!842 (t!51221 l!1292) otherKey!62))))

(declare-fun b!1558556 () Bool)

(assert (=> b!1558556 (= e!868273 (not (= otherKey!62 newKey!135)))))

(assert (= (and d!162629 res!1066014) b!1558555))

(assert (= (and b!1558555 res!1066015) b!1558556))

(assert (=> d!162629 m!1435061))

(assert (=> d!162629 m!1435061))

(assert (=> d!162629 m!1435063))

(declare-fun m!1435105 () Bool)

(assert (=> d!162629 m!1435105))

(assert (=> d!162629 m!1435055))

(assert (=> b!1558555 m!1435057))

(assert (=> b!1558412 d!162629))

(declare-fun b!1558557 () Bool)

(declare-fun res!1066016 () Bool)

(declare-fun e!868275 () Bool)

(assert (=> b!1558557 (=> (not res!1066016) (not e!868275))))

(declare-fun lt!670728 () List!36487)

(assert (=> b!1558557 (= res!1066016 (containsKey!842 lt!670728 newKey!135))))

(declare-fun b!1558558 () Bool)

(declare-fun c!144078 () Bool)

(assert (=> b!1558558 (= c!144078 (and (is-Cons!36483 (t!51221 l!1292)) (bvsgt (_1!12575 (h!37930 (t!51221 l!1292))) newKey!135)))))

(declare-fun e!868276 () List!36487)

(declare-fun e!868274 () List!36487)

(assert (=> b!1558558 (= e!868276 e!868274)))

(declare-fun b!1558559 () Bool)

(declare-fun call!71777 () List!36487)

(assert (=> b!1558559 (= e!868274 call!71777)))

(declare-fun b!1558560 () Bool)

(assert (=> b!1558560 (= e!868274 call!71777)))

(declare-fun b!1558561 () Bool)

(declare-fun e!868278 () List!36487)

(declare-fun call!71776 () List!36487)

(assert (=> b!1558561 (= e!868278 call!71776)))

(declare-fun b!1558562 () Bool)

(assert (=> b!1558562 (= e!868278 e!868276)))

(declare-fun c!144075 () Bool)

(assert (=> b!1558562 (= c!144075 (and (is-Cons!36483 (t!51221 l!1292)) (= (_1!12575 (h!37930 (t!51221 l!1292))) newKey!135)))))

(declare-fun bm!71773 () Bool)

(declare-fun call!71778 () List!36487)

(assert (=> bm!71773 (= call!71777 call!71778)))

(declare-fun b!1558563 () Bool)

(assert (=> b!1558563 (= e!868276 call!71778)))

(declare-fun bm!71774 () Bool)

(assert (=> bm!71774 (= call!71778 call!71776)))

(declare-fun d!162633 () Bool)

(assert (=> d!162633 e!868275))

(declare-fun res!1066017 () Bool)

(assert (=> d!162633 (=> (not res!1066017) (not e!868275))))

(assert (=> d!162633 (= res!1066017 (isStrictlySorted!978 lt!670728))))

(assert (=> d!162633 (= lt!670728 e!868278)))

(declare-fun c!144076 () Bool)

(assert (=> d!162633 (= c!144076 (and (is-Cons!36483 (t!51221 l!1292)) (bvslt (_1!12575 (h!37930 (t!51221 l!1292))) newKey!135)))))

(assert (=> d!162633 (isStrictlySorted!978 (t!51221 l!1292))))

(assert (=> d!162633 (= (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135) lt!670728)))

(declare-fun e!868277 () List!36487)

(declare-fun b!1558564 () Bool)

(assert (=> b!1558564 (= e!868277 (ite c!144075 (t!51221 (t!51221 l!1292)) (ite c!144078 (Cons!36483 (h!37930 (t!51221 l!1292)) (t!51221 (t!51221 l!1292))) Nil!36484)))))

(declare-fun b!1558565 () Bool)

(assert (=> b!1558565 (= e!868275 (contains!10219 lt!670728 (tuple2!25131 newKey!135 newValue!135)))))

(declare-fun bm!71775 () Bool)

(assert (=> bm!71775 (= call!71776 ($colon$colon!984 e!868277 (ite c!144076 (h!37930 (t!51221 l!1292)) (tuple2!25131 newKey!135 newValue!135))))))

(declare-fun c!144077 () Bool)

(assert (=> bm!71775 (= c!144077 c!144076)))

(declare-fun b!1558566 () Bool)

(assert (=> b!1558566 (= e!868277 (insertStrictlySorted!571 (t!51221 (t!51221 l!1292)) newKey!135 newValue!135))))

(assert (= (and d!162633 c!144076) b!1558561))

(assert (= (and d!162633 (not c!144076)) b!1558562))

(assert (= (and b!1558562 c!144075) b!1558563))

(assert (= (and b!1558562 (not c!144075)) b!1558558))

(assert (= (and b!1558558 c!144078) b!1558560))

(assert (= (and b!1558558 (not c!144078)) b!1558559))

(assert (= (or b!1558560 b!1558559) bm!71773))

(assert (= (or b!1558563 bm!71773) bm!71774))

(assert (= (or b!1558561 bm!71774) bm!71775))

(assert (= (and bm!71775 c!144077) b!1558566))

(assert (= (and bm!71775 (not c!144077)) b!1558564))

(assert (= (and d!162633 res!1066017) b!1558557))

(assert (= (and b!1558557 res!1066016) b!1558565))

(declare-fun m!1435115 () Bool)

(assert (=> b!1558557 m!1435115))

(declare-fun m!1435117 () Bool)

(assert (=> b!1558565 m!1435117))

(declare-fun m!1435119 () Bool)

(assert (=> b!1558566 m!1435119))

(declare-fun m!1435121 () Bool)

(assert (=> d!162633 m!1435121))

(assert (=> d!162633 m!1435055))

(declare-fun m!1435123 () Bool)

(assert (=> bm!71775 m!1435123))

(assert (=> b!1558412 d!162633))

(declare-fun d!162637 () Bool)

(declare-fun res!1066036 () Bool)

(declare-fun e!868295 () Bool)

(assert (=> d!162637 (=> res!1066036 e!868295)))

(assert (=> d!162637 (= res!1066036 (or (is-Nil!36484 l!1292) (is-Nil!36484 (t!51221 l!1292))))))

(assert (=> d!162637 (= (isStrictlySorted!978 l!1292) e!868295)))

(declare-fun b!1558593 () Bool)

(declare-fun e!868296 () Bool)

(assert (=> b!1558593 (= e!868295 e!868296)))

(declare-fun res!1066037 () Bool)

(assert (=> b!1558593 (=> (not res!1066037) (not e!868296))))

(assert (=> b!1558593 (= res!1066037 (bvslt (_1!12575 (h!37930 l!1292)) (_1!12575 (h!37930 (t!51221 l!1292)))))))

(declare-fun b!1558594 () Bool)

(assert (=> b!1558594 (= e!868296 (isStrictlySorted!978 (t!51221 l!1292)))))

(assert (= (and d!162637 (not res!1066036)) b!1558593))

(assert (= (and b!1558593 res!1066037) b!1558594))

(assert (=> b!1558594 m!1435055))

(assert (=> start!133280 d!162637))

(declare-fun d!162643 () Bool)

(declare-fun res!1066038 () Bool)

(declare-fun e!868299 () Bool)

(assert (=> d!162643 (=> res!1066038 e!868299)))

(assert (=> d!162643 (= res!1066038 (and (is-Cons!36483 l!1292) (= (_1!12575 (h!37930 l!1292)) otherKey!62)))))

(assert (=> d!162643 (= (containsKey!842 l!1292 otherKey!62) e!868299)))

(declare-fun b!1558599 () Bool)

(declare-fun e!868300 () Bool)

(assert (=> b!1558599 (= e!868299 e!868300)))

(declare-fun res!1066039 () Bool)

(assert (=> b!1558599 (=> (not res!1066039) (not e!868300))))

(assert (=> b!1558599 (= res!1066039 (and (or (not (is-Cons!36483 l!1292)) (bvsle (_1!12575 (h!37930 l!1292)) otherKey!62)) (is-Cons!36483 l!1292) (bvslt (_1!12575 (h!37930 l!1292)) otherKey!62)))))

(declare-fun b!1558600 () Bool)

(assert (=> b!1558600 (= e!868300 (containsKey!842 (t!51221 l!1292) otherKey!62))))

(assert (= (and d!162643 (not res!1066038)) b!1558599))

(assert (= (and b!1558599 res!1066039) b!1558600))

(assert (=> b!1558600 m!1435057))

(assert (=> b!1558414 d!162643))

(declare-fun d!162645 () Bool)

(declare-fun res!1066040 () Bool)

(declare-fun e!868302 () Bool)

(assert (=> d!162645 (=> res!1066040 e!868302)))

(assert (=> d!162645 (= res!1066040 (or (is-Nil!36484 (t!51221 l!1292)) (is-Nil!36484 (t!51221 (t!51221 l!1292)))))))

(assert (=> d!162645 (= (isStrictlySorted!978 (t!51221 l!1292)) e!868302)))

(declare-fun b!1558602 () Bool)

(declare-fun e!868303 () Bool)

(assert (=> b!1558602 (= e!868302 e!868303)))

(declare-fun res!1066041 () Bool)

(assert (=> b!1558602 (=> (not res!1066041) (not e!868303))))

(assert (=> b!1558602 (= res!1066041 (bvslt (_1!12575 (h!37930 (t!51221 l!1292))) (_1!12575 (h!37930 (t!51221 (t!51221 l!1292))))))))

(declare-fun b!1558603 () Bool)

(assert (=> b!1558603 (= e!868303 (isStrictlySorted!978 (t!51221 (t!51221 l!1292))))))

(assert (= (and d!162645 (not res!1066040)) b!1558602))

(assert (= (and b!1558602 res!1066041) b!1558603))

(declare-fun m!1435139 () Bool)

(assert (=> b!1558603 m!1435139))

(assert (=> b!1558409 d!162645))

(declare-fun d!162647 () Bool)

(declare-fun res!1066044 () Bool)

(declare-fun e!868305 () Bool)

(assert (=> d!162647 (=> res!1066044 e!868305)))

(assert (=> d!162647 (= res!1066044 (and (is-Cons!36483 (t!51221 l!1292)) (= (_1!12575 (h!37930 (t!51221 l!1292))) otherKey!62)))))

(assert (=> d!162647 (= (containsKey!842 (t!51221 l!1292) otherKey!62) e!868305)))

(declare-fun b!1558606 () Bool)

(declare-fun e!868306 () Bool)

(assert (=> b!1558606 (= e!868305 e!868306)))

(declare-fun res!1066045 () Bool)

(assert (=> b!1558606 (=> (not res!1066045) (not e!868306))))

(assert (=> b!1558606 (= res!1066045 (and (or (not (is-Cons!36483 (t!51221 l!1292))) (bvsle (_1!12575 (h!37930 (t!51221 l!1292))) otherKey!62)) (is-Cons!36483 (t!51221 l!1292)) (bvslt (_1!12575 (h!37930 (t!51221 l!1292))) otherKey!62)))))

(declare-fun b!1558607 () Bool)

(assert (=> b!1558607 (= e!868306 (containsKey!842 (t!51221 (t!51221 l!1292)) otherKey!62))))

(assert (= (and d!162647 (not res!1066044)) b!1558606))

(assert (= (and b!1558606 res!1066045) b!1558607))

(declare-fun m!1435143 () Bool)

(assert (=> b!1558607 m!1435143))

(assert (=> b!1558413 d!162647))

(declare-fun b!1558622 () Bool)

(declare-fun e!868314 () Bool)

(declare-fun tp!112669 () Bool)

(assert (=> b!1558622 (= e!868314 (and tp_is_empty!38447 tp!112669))))

(assert (=> b!1558410 (= tp!112663 e!868314)))

(assert (= (and b!1558410 (is-Cons!36483 (t!51221 l!1292))) b!1558622))

(push 1)

(assert (not d!162629))

(assert (not d!162607))

(assert (not b!1558622))

(assert (not b!1558600))

(assert (not b!1558565))

(assert (not b!1558566))

(assert (not d!162633))

(assert (not b!1558521))

(assert (not b!1558603))

(assert (not bm!71775))

(assert (not b!1558555))

(assert (not b!1558432))

(assert (not b!1558522))

(assert (not b!1558557))

(assert (not bm!71762))

(assert (not b!1558594))

(assert tp_is_empty!38447)

(assert (not b!1558426))

(assert (not b!1558607))

(assert (not b!1558513))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162707 () Bool)

(declare-fun res!1066100 () Bool)

(declare-fun e!868378 () Bool)

(assert (=> d!162707 (=> res!1066100 e!868378)))

(assert (=> d!162707 (= res!1066100 (or (is-Nil!36484 lt!670728) (is-Nil!36484 (t!51221 lt!670728))))))

(assert (=> d!162707 (= (isStrictlySorted!978 lt!670728) e!868378)))

(declare-fun b!1558698 () Bool)

(declare-fun e!868379 () Bool)

(assert (=> b!1558698 (= e!868378 e!868379)))

(declare-fun res!1066101 () Bool)

(assert (=> b!1558698 (=> (not res!1066101) (not e!868379))))

(assert (=> b!1558698 (= res!1066101 (bvslt (_1!12575 (h!37930 lt!670728)) (_1!12575 (h!37930 (t!51221 lt!670728)))))))

(declare-fun b!1558699 () Bool)

(assert (=> b!1558699 (= e!868379 (isStrictlySorted!978 (t!51221 lt!670728)))))

(assert (= (and d!162707 (not res!1066100)) b!1558698))

(assert (= (and b!1558698 res!1066101) b!1558699))

(declare-fun m!1435231 () Bool)

(assert (=> b!1558699 m!1435231))

(assert (=> d!162633 d!162707))

(assert (=> d!162633 d!162645))

(assert (=> b!1558600 d!162647))

(declare-fun d!162709 () Bool)

(declare-fun res!1066102 () Bool)

(declare-fun e!868380 () Bool)

(assert (=> d!162709 (=> res!1066102 e!868380)))

(assert (=> d!162709 (= res!1066102 (or (is-Nil!36484 (t!51221 (t!51221 l!1292))) (is-Nil!36484 (t!51221 (t!51221 (t!51221 l!1292))))))))

(assert (=> d!162709 (= (isStrictlySorted!978 (t!51221 (t!51221 l!1292))) e!868380)))

(declare-fun b!1558700 () Bool)

(declare-fun e!868381 () Bool)

(assert (=> b!1558700 (= e!868380 e!868381)))

(declare-fun res!1066103 () Bool)

(assert (=> b!1558700 (=> (not res!1066103) (not e!868381))))

(assert (=> b!1558700 (= res!1066103 (bvslt (_1!12575 (h!37930 (t!51221 (t!51221 l!1292)))) (_1!12575 (h!37930 (t!51221 (t!51221 (t!51221 l!1292)))))))))

(declare-fun b!1558701 () Bool)

(assert (=> b!1558701 (= e!868381 (isStrictlySorted!978 (t!51221 (t!51221 (t!51221 l!1292)))))))

(assert (= (and d!162709 (not res!1066102)) b!1558700))

(assert (= (and b!1558700 res!1066103) b!1558701))

(declare-fun m!1435233 () Bool)

(assert (=> b!1558701 m!1435233))

(assert (=> b!1558603 d!162709))

(declare-fun d!162711 () Bool)

(declare-fun res!1066104 () Bool)

(declare-fun e!868382 () Bool)

(assert (=> d!162711 (=> res!1066104 e!868382)))

(assert (=> d!162711 (= res!1066104 (or (is-Nil!36484 lt!670722) (is-Nil!36484 (t!51221 lt!670722))))))

(assert (=> d!162711 (= (isStrictlySorted!978 lt!670722) e!868382)))

(declare-fun b!1558702 () Bool)

(declare-fun e!868383 () Bool)

(assert (=> b!1558702 (= e!868382 e!868383)))

(declare-fun res!1066105 () Bool)

(assert (=> b!1558702 (=> (not res!1066105) (not e!868383))))

(assert (=> b!1558702 (= res!1066105 (bvslt (_1!12575 (h!37930 lt!670722)) (_1!12575 (h!37930 (t!51221 lt!670722)))))))

(declare-fun b!1558703 () Bool)

(assert (=> b!1558703 (= e!868383 (isStrictlySorted!978 (t!51221 lt!670722)))))

(assert (= (and d!162711 (not res!1066104)) b!1558702))

(assert (= (and b!1558702 res!1066105) b!1558703))

(declare-fun m!1435235 () Bool)

(assert (=> b!1558703 m!1435235))

(assert (=> d!162607 d!162711))

(assert (=> d!162607 d!162637))

(declare-fun d!162713 () Bool)

(declare-fun res!1066106 () Bool)

(declare-fun e!868384 () Bool)

(assert (=> d!162713 (=> res!1066106 e!868384)))

(assert (=> d!162713 (= res!1066106 (and (is-Cons!36483 (t!51221 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135))) (= (_1!12575 (h!37930 (t!51221 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135)))) otherKey!62)))))

(assert (=> d!162713 (= (containsKey!842 (t!51221 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135)) otherKey!62) e!868384)))

(declare-fun b!1558704 () Bool)

(declare-fun e!868385 () Bool)

(assert (=> b!1558704 (= e!868384 e!868385)))

(declare-fun res!1066107 () Bool)

(assert (=> b!1558704 (=> (not res!1066107) (not e!868385))))

(assert (=> b!1558704 (= res!1066107 (and (or (not (is-Cons!36483 (t!51221 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135)))) (bvsle (_1!12575 (h!37930 (t!51221 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135)))) otherKey!62)) (is-Cons!36483 (t!51221 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135))) (bvslt (_1!12575 (h!37930 (t!51221 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135)))) otherKey!62)))))

(declare-fun b!1558705 () Bool)

(assert (=> b!1558705 (= e!868385 (containsKey!842 (t!51221 (t!51221 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135))) otherKey!62))))

(assert (= (and d!162713 (not res!1066106)) b!1558704))

(assert (= (and b!1558704 res!1066107) b!1558705))

(declare-fun m!1435237 () Bool)

(assert (=> b!1558705 m!1435237))

(assert (=> b!1558426 d!162713))

(declare-fun d!162715 () Bool)

(declare-fun lt!670749 () Bool)

(declare-fun content!807 (List!36487) (Set tuple2!25130))

(assert (=> d!162715 (= lt!670749 (member (tuple2!25131 newKey!135 newValue!135) (content!807 lt!670722)))))

(declare-fun e!868391 () Bool)

(assert (=> d!162715 (= lt!670749 e!868391)))

(declare-fun res!1066112 () Bool)

(assert (=> d!162715 (=> (not res!1066112) (not e!868391))))

(assert (=> d!162715 (= res!1066112 (is-Cons!36483 lt!670722))))

(assert (=> d!162715 (= (contains!10219 lt!670722 (tuple2!25131 newKey!135 newValue!135)) lt!670749)))

(declare-fun b!1558710 () Bool)

(declare-fun e!868390 () Bool)

(assert (=> b!1558710 (= e!868391 e!868390)))

(declare-fun res!1066113 () Bool)

(assert (=> b!1558710 (=> res!1066113 e!868390)))

(assert (=> b!1558710 (= res!1066113 (= (h!37930 lt!670722) (tuple2!25131 newKey!135 newValue!135)))))

(declare-fun b!1558711 () Bool)

(assert (=> b!1558711 (= e!868390 (contains!10219 (t!51221 lt!670722) (tuple2!25131 newKey!135 newValue!135)))))

(assert (= (and d!162715 res!1066112) b!1558710))

(assert (= (and b!1558710 (not res!1066113)) b!1558711))

(declare-fun m!1435239 () Bool)

(assert (=> d!162715 m!1435239))

(declare-fun m!1435241 () Bool)

(assert (=> d!162715 m!1435241))

(declare-fun m!1435243 () Bool)

(assert (=> b!1558711 m!1435243))

(assert (=> b!1558521 d!162715))

(declare-fun b!1558712 () Bool)

(declare-fun res!1066114 () Bool)

(declare-fun e!868393 () Bool)

(assert (=> b!1558712 (=> (not res!1066114) (not e!868393))))

(declare-fun lt!670750 () List!36487)

(assert (=> b!1558712 (= res!1066114 (containsKey!842 lt!670750 newKey!135))))

(declare-fun b!1558713 () Bool)

(declare-fun c!144098 () Bool)

(assert (=> b!1558713 (= c!144098 (and (is-Cons!36483 (t!51221 (t!51221 l!1292))) (bvsgt (_1!12575 (h!37930 (t!51221 (t!51221 l!1292)))) newKey!135)))))

(declare-fun e!868394 () List!36487)

(declare-fun e!868392 () List!36487)

(assert (=> b!1558713 (= e!868394 e!868392)))

(declare-fun b!1558714 () Bool)

(declare-fun call!71792 () List!36487)

(assert (=> b!1558714 (= e!868392 call!71792)))

(declare-fun b!1558715 () Bool)

(assert (=> b!1558715 (= e!868392 call!71792)))

(declare-fun b!1558716 () Bool)

(declare-fun e!868396 () List!36487)

(declare-fun call!71791 () List!36487)

(assert (=> b!1558716 (= e!868396 call!71791)))

(declare-fun b!1558717 () Bool)

(assert (=> b!1558717 (= e!868396 e!868394)))

(declare-fun c!144095 () Bool)

(assert (=> b!1558717 (= c!144095 (and (is-Cons!36483 (t!51221 (t!51221 l!1292))) (= (_1!12575 (h!37930 (t!51221 (t!51221 l!1292)))) newKey!135)))))

(declare-fun bm!71788 () Bool)

(declare-fun call!71793 () List!36487)

(assert (=> bm!71788 (= call!71792 call!71793)))

(declare-fun b!1558718 () Bool)

(assert (=> b!1558718 (= e!868394 call!71793)))

(declare-fun bm!71789 () Bool)

(assert (=> bm!71789 (= call!71793 call!71791)))

(declare-fun d!162717 () Bool)

(assert (=> d!162717 e!868393))

(declare-fun res!1066115 () Bool)

(assert (=> d!162717 (=> (not res!1066115) (not e!868393))))

(assert (=> d!162717 (= res!1066115 (isStrictlySorted!978 lt!670750))))

(assert (=> d!162717 (= lt!670750 e!868396)))

(declare-fun c!144096 () Bool)

(assert (=> d!162717 (= c!144096 (and (is-Cons!36483 (t!51221 (t!51221 l!1292))) (bvslt (_1!12575 (h!37930 (t!51221 (t!51221 l!1292)))) newKey!135)))))

(assert (=> d!162717 (isStrictlySorted!978 (t!51221 (t!51221 l!1292)))))

(assert (=> d!162717 (= (insertStrictlySorted!571 (t!51221 (t!51221 l!1292)) newKey!135 newValue!135) lt!670750)))

(declare-fun b!1558719 () Bool)

(declare-fun e!868395 () List!36487)

(assert (=> b!1558719 (= e!868395 (ite c!144095 (t!51221 (t!51221 (t!51221 l!1292))) (ite c!144098 (Cons!36483 (h!37930 (t!51221 (t!51221 l!1292))) (t!51221 (t!51221 (t!51221 l!1292)))) Nil!36484)))))

(declare-fun b!1558720 () Bool)

(assert (=> b!1558720 (= e!868393 (contains!10219 lt!670750 (tuple2!25131 newKey!135 newValue!135)))))

(declare-fun bm!71790 () Bool)

(assert (=> bm!71790 (= call!71791 ($colon$colon!984 e!868395 (ite c!144096 (h!37930 (t!51221 (t!51221 l!1292))) (tuple2!25131 newKey!135 newValue!135))))))

(declare-fun c!144097 () Bool)

(assert (=> bm!71790 (= c!144097 c!144096)))

(declare-fun b!1558721 () Bool)

(assert (=> b!1558721 (= e!868395 (insertStrictlySorted!571 (t!51221 (t!51221 (t!51221 l!1292))) newKey!135 newValue!135))))

(assert (= (and d!162717 c!144096) b!1558716))

(assert (= (and d!162717 (not c!144096)) b!1558717))

(assert (= (and b!1558717 c!144095) b!1558718))

(assert (= (and b!1558717 (not c!144095)) b!1558713))

(assert (= (and b!1558713 c!144098) b!1558715))

(assert (= (and b!1558713 (not c!144098)) b!1558714))

(assert (= (or b!1558715 b!1558714) bm!71788))

(assert (= (or b!1558718 bm!71788) bm!71789))

(assert (= (or b!1558716 bm!71789) bm!71790))

(assert (= (and bm!71790 c!144097) b!1558721))

(assert (= (and bm!71790 (not c!144097)) b!1558719))

(assert (= (and d!162717 res!1066115) b!1558712))

(assert (= (and b!1558712 res!1066114) b!1558720))

(declare-fun m!1435245 () Bool)

(assert (=> b!1558712 m!1435245))

(declare-fun m!1435247 () Bool)

(assert (=> b!1558720 m!1435247))

(declare-fun m!1435249 () Bool)

(assert (=> b!1558721 m!1435249))

(declare-fun m!1435251 () Bool)

(assert (=> d!162717 m!1435251))

(assert (=> d!162717 m!1435139))

(declare-fun m!1435253 () Bool)

(assert (=> bm!71790 m!1435253))

(assert (=> b!1558566 d!162717))

(assert (=> b!1558555 d!162647))

(declare-fun d!162719 () Bool)

(assert (=> d!162719 (= ($colon$colon!984 e!868277 (ite c!144076 (h!37930 (t!51221 l!1292)) (tuple2!25131 newKey!135 newValue!135))) (Cons!36483 (ite c!144076 (h!37930 (t!51221 l!1292)) (tuple2!25131 newKey!135 newValue!135)) e!868277))))

(assert (=> bm!71775 d!162719))

(assert (=> b!1558594 d!162645))

(assert (=> d!162629 d!162599))

(assert (=> d!162629 d!162633))

(declare-fun d!162721 () Bool)

(assert (=> d!162721 (containsKey!842 (insertStrictlySorted!571 (t!51221 l!1292) newKey!135 newValue!135) otherKey!62)))

(assert (=> d!162721 true))

(declare-fun _$18!47 () Unit!51828)

(assert (=> d!162721 (= (choose!2077 (t!51221 l!1292) newKey!135 newValue!135 otherKey!62) _$18!47)))

(declare-fun bs!44795 () Bool)

(assert (= bs!44795 d!162721))

(assert (=> bs!44795 m!1435061))

(assert (=> bs!44795 m!1435061))

(assert (=> bs!44795 m!1435063))

(assert (=> d!162629 d!162721))

(assert (=> d!162629 d!162645))

(declare-fun d!162723 () Bool)

(declare-fun res!1066116 () Bool)

(declare-fun e!868397 () Bool)

(assert (=> d!162723 (=> res!1066116 e!868397)))

(assert (=> d!162723 (= res!1066116 (and (is-Cons!36483 lt!670728) (= (_1!12575 (h!37930 lt!670728)) newKey!135)))))

(assert (=> d!162723 (= (containsKey!842 lt!670728 newKey!135) e!868397)))

(declare-fun b!1558722 () Bool)

(declare-fun e!868398 () Bool)

(assert (=> b!1558722 (= e!868397 e!868398)))

(declare-fun res!1066117 () Bool)

(assert (=> b!1558722 (=> (not res!1066117) (not e!868398))))

(assert (=> b!1558722 (= res!1066117 (and (or (not (is-Cons!36483 lt!670728)) (bvsle (_1!12575 (h!37930 lt!670728)) newKey!135)) (is-Cons!36483 lt!670728) (bvslt (_1!12575 (h!37930 lt!670728)) newKey!135)))))

(declare-fun b!1558723 () Bool)

(assert (=> b!1558723 (= e!868398 (containsKey!842 (t!51221 lt!670728) newKey!135))))

(assert (= (and d!162723 (not res!1066116)) b!1558722))

(assert (= (and b!1558722 res!1066117) b!1558723))

(declare-fun m!1435255 () Bool)

(assert (=> b!1558723 m!1435255))

(assert (=> b!1558557 d!162723))

(declare-fun d!162725 () Bool)

(declare-fun lt!670751 () Bool)

(assert (=> d!162725 (= lt!670751 (member (tuple2!25131 newKey!135 newValue!135) (content!807 lt!670728)))))

(declare-fun e!868400 () Bool)

(assert (=> d!162725 (= lt!670751 e!868400)))

(declare-fun res!1066118 () Bool)

(assert (=> d!162725 (=> (not res!1066118) (not e!868400))))

(assert (=> d!162725 (= res!1066118 (is-Cons!36483 lt!670728))))

(assert (=> d!162725 (= (contains!10219 lt!670728 (tuple2!25131 newKey!135 newValue!135)) lt!670751)))

(declare-fun b!1558724 () Bool)

(declare-fun e!868399 () Bool)

(assert (=> b!1558724 (= e!868400 e!868399)))

(declare-fun res!1066119 () Bool)

(assert (=> b!1558724 (=> res!1066119 e!868399)))

(assert (=> b!1558724 (= res!1066119 (= (h!37930 lt!670728) (tuple2!25131 newKey!135 newValue!135)))))

(declare-fun b!1558725 () Bool)

(assert (=> b!1558725 (= e!868399 (contains!10219 (t!51221 lt!670728) (tuple2!25131 newKey!135 newValue!135)))))

(assert (= (and d!162725 res!1066118) b!1558724))

(assert (= (and b!1558724 (not res!1066119)) b!1558725))

(declare-fun m!1435257 () Bool)

(assert (=> d!162725 m!1435257))

(declare-fun m!1435259 () Bool)

(assert (=> d!162725 m!1435259))

(declare-fun m!1435261 () Bool)

(assert (=> b!1558725 m!1435261))

(assert (=> b!1558565 d!162725))

(declare-fun d!162727 () Bool)

(declare-fun res!1066120 () Bool)

(declare-fun e!868401 () Bool)

(assert (=> d!162727 (=> res!1066120 e!868401)))

(assert (=> d!162727 (= res!1066120 (and (is-Cons!36483 (t!51221 (t!51221 l!1292))) (= (_1!12575 (h!37930 (t!51221 (t!51221 l!1292)))) otherKey!62)))))

(assert (=> d!162727 (= (containsKey!842 (t!51221 (t!51221 l!1292)) otherKey!62) e!868401)))

(declare-fun b!1558726 () Bool)

(declare-fun e!868402 () Bool)

(assert (=> b!1558726 (= e!868401 e!868402)))

(declare-fun res!1066121 () Bool)

(assert (=> b!1558726 (=> (not res!1066121) (not e!868402))))

(assert (=> b!1558726 (= res!1066121 (and (or (not (is-Cons!36483 (t!51221 (t!51221 l!1292)))) (bvsle (_1!12575 (h!37930 (t!51221 (t!51221 l!1292)))) otherKey!62)) (is-Cons!36483 (t!51221 (t!51221 l!1292))) (bvslt (_1!12575 (h!37930 (t!51221 (t!51221 l!1292)))) otherKey!62)))))

(declare-fun b!1558727 () Bool)

(assert (=> b!1558727 (= e!868402 (containsKey!842 (t!51221 (t!51221 (t!51221 l!1292))) otherKey!62))))

(assert (= (and d!162727 (not res!1066120)) b!1558726))

(assert (= (and b!1558726 res!1066121) b!1558727))

(declare-fun m!1435263 () Bool)

(assert (=> b!1558727 m!1435263))

(assert (=> b!1558607 d!162727))

(assert (=> b!1558522 d!162633))

(declare-fun d!162729 () Bool)

(assert (=> d!162729 (= ($colon$colon!984 e!868255 (ite c!144062 (h!37930 l!1292) (tuple2!25131 newKey!135 newValue!135))) (Cons!36483 (ite c!144062 (h!37930 l!1292) (tuple2!25131 newKey!135 newValue!135)) e!868255))))

(assert (=> bm!71762 d!162729))

(declare-fun d!162731 () Bool)

(declare-fun res!1066122 () Bool)

(declare-fun e!868403 () Bool)

(assert (=> d!162731 (=> res!1066122 e!868403)))

(assert (=> d!162731 (= res!1066122 (and (is-Cons!36483 (t!51221 (insertStrictlySorted!571 l!1292 newKey!135 newValue!135))) (= (_1!12575 (h!37930 (t!51221 (insertStrictlySorted!571 l!1292 newKey!135 newValue!135)))) otherKey!62)))))

(assert (=> d!162731 (= (containsKey!842 (t!51221 (insertStrictlySorted!571 l!1292 newKey!135 newValue!135)) otherKey!62) e!868403)))

(declare-fun b!1558728 () Bool)

(declare-fun e!868404 () Bool)

(assert (=> b!1558728 (= e!868403 e!868404)))

(declare-fun res!1066123 () Bool)

(assert (=> b!1558728 (=> (not res!1066123) (not e!868404))))

(assert (=> b!1558728 (= res!1066123 (and (or (not (is-Cons!36483 (t!51221 (insertStrictlySorted!571 l!1292 newKey!135 newValue!135)))) (bvsle (_1!12575 (h!37930 (t!51221 (insertStrictlySorted!571 l!1292 newKey!135 newValue!135)))) otherKey!62)) (is-Cons!36483 (t!51221 (insertStrictlySorted!571 l!1292 newKey!135 newValue!135))) (bvslt (_1!12575 (h!37930 (t!51221 (insertStrictlySorted!571 l!1292 newKey!135 newValue!135)))) otherKey!62)))))

(declare-fun b!1558729 () Bool)

(assert (=> b!1558729 (= e!868404 (containsKey!842 (t!51221 (t!51221 (insertStrictlySorted!571 l!1292 newKey!135 newValue!135))) otherKey!62))))

(assert (= (and d!162731 (not res!1066122)) b!1558728))

(assert (= (and b!1558728 res!1066123) b!1558729))

(declare-fun m!1435265 () Bool)

(assert (=> b!1558729 m!1435265))

(assert (=> b!1558432 d!162731))

(declare-fun d!162733 () Bool)

(declare-fun res!1066124 () Bool)

(declare-fun e!868405 () Bool)

(assert (=> d!162733 (=> res!1066124 e!868405)))

(assert (=> d!162733 (= res!1066124 (and (is-Cons!36483 lt!670722) (= (_1!12575 (h!37930 lt!670722)) newKey!135)))))

(assert (=> d!162733 (= (containsKey!842 lt!670722 newKey!135) e!868405)))

(declare-fun b!1558730 () Bool)

(declare-fun e!868406 () Bool)

(assert (=> b!1558730 (= e!868405 e!868406)))

(declare-fun res!1066125 () Bool)

(assert (=> b!1558730 (=> (not res!1066125) (not e!868406))))

(assert (=> b!1558730 (= res!1066125 (and (or (not (is-Cons!36483 lt!670722)) (bvsle (_1!12575 (h!37930 lt!670722)) newKey!135)) (is-Cons!36483 lt!670722) (bvslt (_1!12575 (h!37930 lt!670722)) newKey!135)))))

(declare-fun b!1558731 () Bool)

(assert (=> b!1558731 (= e!868406 (containsKey!842 (t!51221 lt!670722) newKey!135))))

(assert (= (and d!162733 (not res!1066124)) b!1558730))

(assert (= (and b!1558730 res!1066125) b!1558731))

(declare-fun m!1435267 () Bool)

(assert (=> b!1558731 m!1435267))

(assert (=> b!1558513 d!162733))

(declare-fun b!1558732 () Bool)

(declare-fun e!868407 () Bool)

(declare-fun tp!112675 () Bool)

(assert (=> b!1558732 (= e!868407 (and tp_is_empty!38447 tp!112675))))

(assert (=> b!1558622 (= tp!112669 e!868407)))

(assert (= (and b!1558622 (is-Cons!36483 (t!51221 (t!51221 l!1292)))) b!1558732))

(push 1)

(assert (not b!1558712))

(assert (not b!1558732))

(assert (not b!1558727))

(assert (not d!162715))

(assert (not b!1558699))

(assert (not b!1558720))

(assert (not b!1558729))

(assert (not b!1558721))

(assert (not b!1558701))

(assert (not d!162717))

(assert (not bm!71790))

(assert (not d!162721))

(assert (not b!1558725))

(assert (not b!1558723))

(assert (not b!1558703))

(assert (not b!1558731))

(assert (not b!1558711))

(assert tp_is_empty!38447)

(assert (not b!1558705))

(assert (not d!162725))

(check-sat)

(pop 1)

(push 1)

(check-sat)

