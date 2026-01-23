; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251850 () Bool)

(assert start!251850)

(declare-fun b!2596031 () Bool)

(assert (=> b!2596031 true))

(declare-fun b!2596026 () Bool)

(declare-fun res!1092566 () Bool)

(declare-fun e!1638271 () Bool)

(assert (=> b!2596026 (=> (not res!1092566) (not e!1638271))))

(declare-datatypes ((B!2187 0))(
  ( (B!2188 (val!9561 Int)) )
))
(declare-datatypes ((List!29994 0))(
  ( (Nil!29894) (Cons!29894 (h!35314 B!2187) (t!213007 List!29994)) )
))
(declare-fun l2!1515 () List!29994)

(declare-fun noDuplicate!442 (List!29994) Bool)

(assert (=> b!2596026 (= res!1092566 (noDuplicate!442 l2!1515))))

(declare-fun b!2596027 () Bool)

(declare-fun e!1638270 () Bool)

(declare-fun tp_is_empty!13467 () Bool)

(declare-fun tp!823181 () Bool)

(assert (=> b!2596027 (= e!1638270 (and tp_is_empty!13467 tp!823181))))

(declare-fun b!2596028 () Bool)

(declare-fun e!1638272 () Bool)

(declare-fun tp!823182 () Bool)

(assert (=> b!2596028 (= e!1638272 (and tp_is_empty!13467 tp!823182))))

(declare-fun b!2596029 () Bool)

(declare-fun e!1638273 () Bool)

(declare-fun e!1638274 () Bool)

(assert (=> b!2596029 (= e!1638273 (not e!1638274))))

(declare-fun res!1092567 () Bool)

(assert (=> b!2596029 (=> res!1092567 e!1638274)))

(declare-fun lt!914130 () List!29994)

(declare-fun lambda!96917 () Int)

(declare-fun forall!6131 (List!29994 Int) Bool)

(assert (=> b!2596029 (= res!1092567 (not (forall!6131 lt!914130 lambda!96917)))))

(declare-fun lt!914127 () Int)

(declare-fun size!23199 (List!29994) Int)

(assert (=> b!2596029 (= (size!23199 lt!914130) (- lt!914127 1))))

(declare-datatypes ((Unit!43945 0))(
  ( (Unit!43946) )
))
(declare-fun lt!914131 () Unit!43945)

(declare-fun l1!1546 () List!29994)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!27 (List!29994 B!2187) Unit!43945)

(assert (=> b!2596029 (= lt!914131 (lemmaRemoveElmtNoDuplicateRemoveOne!27 l2!1515 (h!35314 l1!1546)))))

(assert (=> b!2596029 (forall!6131 lt!914130 lambda!96917)))

(declare-fun lt!914129 () Unit!43945)

(declare-fun lemmaRemoveElmtMaintainsForall!29 (List!29994 B!2187 Int) Unit!43945)

(assert (=> b!2596029 (= lt!914129 (lemmaRemoveElmtMaintainsForall!29 l2!1515 (h!35314 l1!1546) lambda!96917))))

(assert (=> b!2596029 (noDuplicate!442 lt!914130)))

(declare-fun -!169 (List!29994 B!2187) List!29994)

(assert (=> b!2596029 (= lt!914130 (-!169 l2!1515 (h!35314 l1!1546)))))

(declare-fun lt!914128 () Unit!43945)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!35 (List!29994 B!2187) Unit!43945)

(assert (=> b!2596029 (= lt!914128 (lemmaRemoveElmtMaintainsNoDuplicate!35 l2!1515 (h!35314 l1!1546)))))

(declare-fun b!2596030 () Bool)

(assert (=> b!2596030 (= e!1638271 e!1638273)))

(declare-fun res!1092569 () Bool)

(assert (=> b!2596030 (=> (not res!1092569) (not e!1638273))))

(declare-fun lt!914126 () Int)

(assert (=> b!2596030 (= res!1092569 (> lt!914126 lt!914127))))

(assert (=> b!2596030 (= lt!914127 (size!23199 l2!1515))))

(assert (=> b!2596030 (= lt!914126 (size!23199 l1!1546))))

(declare-fun res!1092565 () Bool)

(assert (=> b!2596031 (=> (not res!1092565) (not e!1638273))))

(assert (=> b!2596031 (= res!1092565 (forall!6131 l2!1515 lambda!96917))))

(declare-fun res!1092570 () Bool)

(assert (=> start!251850 (=> (not res!1092570) (not e!1638271))))

(assert (=> start!251850 (= res!1092570 (noDuplicate!442 l1!1546))))

(assert (=> start!251850 e!1638271))

(assert (=> start!251850 e!1638272))

(assert (=> start!251850 e!1638270))

(declare-fun b!2596032 () Bool)

(declare-fun res!1092564 () Bool)

(assert (=> b!2596032 (=> (not res!1092564) (not e!1638273))))

(declare-fun contains!5442 (List!29994 B!2187) Bool)

(assert (=> b!2596032 (= res!1092564 (contains!5442 l2!1515 (h!35314 l1!1546)))))

(declare-fun b!2596033 () Bool)

(declare-fun res!1092568 () Bool)

(assert (=> b!2596033 (=> (not res!1092568) (not e!1638273))))

(assert (=> b!2596033 (= res!1092568 (is-Cons!29894 l1!1546))))

(declare-fun b!2596034 () Bool)

(declare-fun isEmpty!17132 (List!29994) Bool)

(assert (=> b!2596034 (= e!1638274 (not (isEmpty!17132 l1!1546)))))

(assert (= (and start!251850 res!1092570) b!2596026))

(assert (= (and b!2596026 res!1092566) b!2596030))

(assert (= (and b!2596030 res!1092569) b!2596031))

(assert (= (and b!2596031 res!1092565) b!2596033))

(assert (= (and b!2596033 res!1092568) b!2596032))

(assert (= (and b!2596032 res!1092564) b!2596029))

(assert (= (and b!2596029 (not res!1092567)) b!2596034))

(assert (= (and start!251850 (is-Cons!29894 l1!1546)) b!2596028))

(assert (= (and start!251850 (is-Cons!29894 l2!1515)) b!2596027))

(declare-fun m!2932325 () Bool)

(assert (=> b!2596029 m!2932325))

(declare-fun m!2932327 () Bool)

(assert (=> b!2596029 m!2932327))

(declare-fun m!2932329 () Bool)

(assert (=> b!2596029 m!2932329))

(declare-fun m!2932331 () Bool)

(assert (=> b!2596029 m!2932331))

(assert (=> b!2596029 m!2932329))

(declare-fun m!2932333 () Bool)

(assert (=> b!2596029 m!2932333))

(declare-fun m!2932335 () Bool)

(assert (=> b!2596029 m!2932335))

(declare-fun m!2932337 () Bool)

(assert (=> b!2596029 m!2932337))

(declare-fun m!2932339 () Bool)

(assert (=> b!2596034 m!2932339))

(declare-fun m!2932341 () Bool)

(assert (=> start!251850 m!2932341))

(declare-fun m!2932343 () Bool)

(assert (=> b!2596026 m!2932343))

(declare-fun m!2932345 () Bool)

(assert (=> b!2596030 m!2932345))

(declare-fun m!2932347 () Bool)

(assert (=> b!2596030 m!2932347))

(declare-fun m!2932349 () Bool)

(assert (=> b!2596031 m!2932349))

(declare-fun m!2932351 () Bool)

(assert (=> b!2596032 m!2932351))

(push 1)

(assert (not b!2596034))

(assert (not b!2596032))

(assert (not b!2596029))

(assert (not b!2596028))

(assert (not b!2596031))

(assert (not b!2596027))

(assert (not start!251850))

(assert tp_is_empty!13467)

(assert (not b!2596030))

(assert (not b!2596026))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!735537 () Bool)

(declare-fun res!1092596 () Bool)

(declare-fun e!1638300 () Bool)

(assert (=> d!735537 (=> res!1092596 e!1638300)))

(assert (=> d!735537 (= res!1092596 (is-Nil!29894 l2!1515))))

(assert (=> d!735537 (= (forall!6131 l2!1515 lambda!96917) e!1638300)))

(declare-fun b!2596070 () Bool)

(declare-fun e!1638301 () Bool)

(assert (=> b!2596070 (= e!1638300 e!1638301)))

(declare-fun res!1092597 () Bool)

(assert (=> b!2596070 (=> (not res!1092597) (not e!1638301))))

(declare-fun dynLambda!12649 (Int B!2187) Bool)

(assert (=> b!2596070 (= res!1092597 (dynLambda!12649 lambda!96917 (h!35314 l2!1515)))))

(declare-fun b!2596071 () Bool)

(assert (=> b!2596071 (= e!1638301 (forall!6131 (t!213007 l2!1515) lambda!96917))))

(assert (= (and d!735537 (not res!1092596)) b!2596070))

(assert (= (and b!2596070 res!1092597) b!2596071))

(declare-fun b_lambda!77549 () Bool)

(assert (=> (not b_lambda!77549) (not b!2596070)))

(declare-fun m!2932381 () Bool)

(assert (=> b!2596070 m!2932381))

(declare-fun m!2932383 () Bool)

(assert (=> b!2596071 m!2932383))

(assert (=> b!2596031 d!735537))

(declare-fun d!735541 () Bool)

(declare-fun res!1092602 () Bool)

(declare-fun e!1638308 () Bool)

(assert (=> d!735541 (=> res!1092602 e!1638308)))

(assert (=> d!735541 (= res!1092602 (is-Nil!29894 l2!1515))))

(assert (=> d!735541 (= (noDuplicate!442 l2!1515) e!1638308)))

(declare-fun b!2596080 () Bool)

(declare-fun e!1638309 () Bool)

(assert (=> b!2596080 (= e!1638308 e!1638309)))

(declare-fun res!1092603 () Bool)

(assert (=> b!2596080 (=> (not res!1092603) (not e!1638309))))

(assert (=> b!2596080 (= res!1092603 (not (contains!5442 (t!213007 l2!1515) (h!35314 l2!1515))))))

(declare-fun b!2596081 () Bool)

(assert (=> b!2596081 (= e!1638309 (noDuplicate!442 (t!213007 l2!1515)))))

(assert (= (and d!735541 (not res!1092602)) b!2596080))

(assert (= (and b!2596080 res!1092603) b!2596081))

(declare-fun m!2932385 () Bool)

(assert (=> b!2596080 m!2932385))

(declare-fun m!2932387 () Bool)

(assert (=> b!2596081 m!2932387))

(assert (=> b!2596026 d!735541))

(declare-fun d!735543 () Bool)

(declare-fun lt!914155 () Int)

(assert (=> d!735543 (>= lt!914155 0)))

(declare-fun e!1638313 () Int)

(assert (=> d!735543 (= lt!914155 e!1638313)))

(declare-fun c!418290 () Bool)

(assert (=> d!735543 (= c!418290 (is-Nil!29894 l2!1515))))

(assert (=> d!735543 (= (size!23199 l2!1515) lt!914155)))

(declare-fun b!2596088 () Bool)

(assert (=> b!2596088 (= e!1638313 0)))

(declare-fun b!2596089 () Bool)

(assert (=> b!2596089 (= e!1638313 (+ 1 (size!23199 (t!213007 l2!1515))))))

(assert (= (and d!735543 c!418290) b!2596088))

(assert (= (and d!735543 (not c!418290)) b!2596089))

(declare-fun m!2932389 () Bool)

(assert (=> b!2596089 m!2932389))

(assert (=> b!2596030 d!735543))

(declare-fun d!735545 () Bool)

(declare-fun lt!914156 () Int)

(assert (=> d!735545 (>= lt!914156 0)))

(declare-fun e!1638314 () Int)

(assert (=> d!735545 (= lt!914156 e!1638314)))

(declare-fun c!418291 () Bool)

(assert (=> d!735545 (= c!418291 (is-Nil!29894 l1!1546))))

(assert (=> d!735545 (= (size!23199 l1!1546) lt!914156)))

(declare-fun b!2596090 () Bool)

(assert (=> b!2596090 (= e!1638314 0)))

(declare-fun b!2596091 () Bool)

(assert (=> b!2596091 (= e!1638314 (+ 1 (size!23199 (t!213007 l1!1546))))))

(assert (= (and d!735545 c!418291) b!2596090))

(assert (= (and d!735545 (not c!418291)) b!2596091))

(declare-fun m!2932393 () Bool)

(assert (=> b!2596091 m!2932393))

(assert (=> b!2596030 d!735545))

(declare-fun d!735547 () Bool)

(declare-fun e!1638324 () Bool)

(assert (=> d!735547 e!1638324))

(declare-fun res!1092606 () Bool)

(assert (=> d!735547 (=> (not res!1092606) (not e!1638324))))

(declare-fun lt!914159 () List!29994)

(assert (=> d!735547 (= res!1092606 (<= (size!23199 lt!914159) (size!23199 l2!1515)))))

(declare-fun e!1638323 () List!29994)

(assert (=> d!735547 (= lt!914159 e!1638323)))

(declare-fun c!418297 () Bool)

(assert (=> d!735547 (= c!418297 (is-Cons!29894 l2!1515))))

(assert (=> d!735547 (= (-!169 l2!1515 (h!35314 l1!1546)) lt!914159)))

(declare-fun bm!167320 () Bool)

(declare-fun call!167325 () List!29994)

(assert (=> bm!167320 (= call!167325 (-!169 (t!213007 l2!1515) (h!35314 l1!1546)))))

(declare-fun b!2596102 () Bool)

(assert (=> b!2596102 (= e!1638323 Nil!29894)))

(declare-fun b!2596103 () Bool)

(declare-fun e!1638322 () List!29994)

(assert (=> b!2596103 (= e!1638322 (Cons!29894 (h!35314 l2!1515) call!167325))))

(declare-fun b!2596104 () Bool)

(declare-fun content!4197 (List!29994) (Set B!2187))

(assert (=> b!2596104 (= e!1638324 (= (content!4197 lt!914159) (set.minus (content!4197 l2!1515) (set.insert (h!35314 l1!1546) (as set.empty (Set B!2187))))))))

(declare-fun b!2596105 () Bool)

(assert (=> b!2596105 (= e!1638322 call!167325)))

(declare-fun b!2596106 () Bool)

(assert (=> b!2596106 (= e!1638323 e!1638322)))

(declare-fun c!418296 () Bool)

(assert (=> b!2596106 (= c!418296 (= (h!35314 l1!1546) (h!35314 l2!1515)))))

(assert (= (and d!735547 c!418297) b!2596106))

(assert (= (and d!735547 (not c!418297)) b!2596102))

(assert (= (and b!2596106 c!418296) b!2596105))

(assert (= (and b!2596106 (not c!418296)) b!2596103))

(assert (= (or b!2596105 b!2596103) bm!167320))

(assert (= (and d!735547 res!1092606) b!2596104))

(declare-fun m!2932395 () Bool)

(assert (=> d!735547 m!2932395))

(assert (=> d!735547 m!2932345))

(declare-fun m!2932397 () Bool)

(assert (=> bm!167320 m!2932397))

(declare-fun m!2932399 () Bool)

(assert (=> b!2596104 m!2932399))

(declare-fun m!2932401 () Bool)

(assert (=> b!2596104 m!2932401))

(declare-fun m!2932403 () Bool)

(assert (=> b!2596104 m!2932403))

(assert (=> b!2596029 d!735547))

(declare-fun d!735551 () Bool)

(declare-fun res!1092607 () Bool)

(declare-fun e!1638325 () Bool)

(assert (=> d!735551 (=> res!1092607 e!1638325)))

(assert (=> d!735551 (= res!1092607 (is-Nil!29894 lt!914130))))

(assert (=> d!735551 (= (noDuplicate!442 lt!914130) e!1638325)))

(declare-fun b!2596107 () Bool)

(declare-fun e!1638326 () Bool)

(assert (=> b!2596107 (= e!1638325 e!1638326)))

(declare-fun res!1092608 () Bool)

(assert (=> b!2596107 (=> (not res!1092608) (not e!1638326))))

(assert (=> b!2596107 (= res!1092608 (not (contains!5442 (t!213007 lt!914130) (h!35314 lt!914130))))))

(declare-fun b!2596108 () Bool)

(assert (=> b!2596108 (= e!1638326 (noDuplicate!442 (t!213007 lt!914130)))))

(assert (= (and d!735551 (not res!1092607)) b!2596107))

(assert (= (and b!2596107 res!1092608) b!2596108))

(declare-fun m!2932405 () Bool)

(assert (=> b!2596107 m!2932405))

(declare-fun m!2932407 () Bool)

(assert (=> b!2596108 m!2932407))

(assert (=> b!2596029 d!735551))

(declare-fun d!735553 () Bool)

(assert (=> d!735553 (= (size!23199 (-!169 l2!1515 (h!35314 l1!1546))) (- (size!23199 l2!1515) 1))))

(declare-fun lt!914164 () Unit!43945)

(declare-fun choose!15409 (List!29994 B!2187) Unit!43945)

(assert (=> d!735553 (= lt!914164 (choose!15409 l2!1515 (h!35314 l1!1546)))))

(assert (=> d!735553 (noDuplicate!442 l2!1515)))

(assert (=> d!735553 (= (lemmaRemoveElmtNoDuplicateRemoveOne!27 l2!1515 (h!35314 l1!1546)) lt!914164)))

(declare-fun bs!472904 () Bool)

(assert (= bs!472904 d!735553))

(assert (=> bs!472904 m!2932345))

(assert (=> bs!472904 m!2932331))

(assert (=> bs!472904 m!2932343))

(declare-fun m!2932409 () Bool)

(assert (=> bs!472904 m!2932409))

(assert (=> bs!472904 m!2932331))

(declare-fun m!2932411 () Bool)

(assert (=> bs!472904 m!2932411))

(assert (=> b!2596029 d!735553))

(declare-fun d!735555 () Bool)

(assert (=> d!735555 (noDuplicate!442 (-!169 l2!1515 (h!35314 l1!1546)))))

(declare-fun lt!914167 () Unit!43945)

(declare-fun choose!15410 (List!29994 B!2187) Unit!43945)

(assert (=> d!735555 (= lt!914167 (choose!15410 l2!1515 (h!35314 l1!1546)))))

(assert (=> d!735555 (noDuplicate!442 l2!1515)))

(assert (=> d!735555 (= (lemmaRemoveElmtMaintainsNoDuplicate!35 l2!1515 (h!35314 l1!1546)) lt!914167)))

(declare-fun bs!472905 () Bool)

(assert (= bs!472905 d!735555))

(assert (=> bs!472905 m!2932331))

(assert (=> bs!472905 m!2932331))

(declare-fun m!2932413 () Bool)

(assert (=> bs!472905 m!2932413))

(declare-fun m!2932415 () Bool)

(assert (=> bs!472905 m!2932415))

(assert (=> bs!472905 m!2932343))

(assert (=> b!2596029 d!735555))

(declare-fun d!735557 () Bool)

(declare-fun lt!914168 () Int)

(assert (=> d!735557 (>= lt!914168 0)))

(declare-fun e!1638336 () Int)

(assert (=> d!735557 (= lt!914168 e!1638336)))

(declare-fun c!418302 () Bool)

(assert (=> d!735557 (= c!418302 (is-Nil!29894 lt!914130))))

(assert (=> d!735557 (= (size!23199 lt!914130) lt!914168)))

(declare-fun b!2596119 () Bool)

(assert (=> b!2596119 (= e!1638336 0)))

(declare-fun b!2596120 () Bool)

(assert (=> b!2596120 (= e!1638336 (+ 1 (size!23199 (t!213007 lt!914130))))))

(assert (= (and d!735557 c!418302) b!2596119))

(assert (= (and d!735557 (not c!418302)) b!2596120))

(declare-fun m!2932417 () Bool)

(assert (=> b!2596120 m!2932417))

(assert (=> b!2596029 d!735557))

(declare-fun d!735559 () Bool)

(assert (=> d!735559 (forall!6131 (-!169 l2!1515 (h!35314 l1!1546)) lambda!96917)))

(declare-fun lt!914172 () Unit!43945)

(declare-fun choose!15411 (List!29994 B!2187 Int) Unit!43945)

(assert (=> d!735559 (= lt!914172 (choose!15411 l2!1515 (h!35314 l1!1546) lambda!96917))))

(assert (=> d!735559 (noDuplicate!442 l2!1515)))

(assert (=> d!735559 (= (lemmaRemoveElmtMaintainsForall!29 l2!1515 (h!35314 l1!1546) lambda!96917) lt!914172)))

(declare-fun bs!472906 () Bool)

(assert (= bs!472906 d!735559))

(assert (=> bs!472906 m!2932331))

(assert (=> bs!472906 m!2932331))

(declare-fun m!2932429 () Bool)

(assert (=> bs!472906 m!2932429))

(declare-fun m!2932431 () Bool)

(assert (=> bs!472906 m!2932431))

(assert (=> bs!472906 m!2932343))

(assert (=> b!2596029 d!735559))

(declare-fun d!735563 () Bool)

(declare-fun res!1092612 () Bool)

(declare-fun e!1638341 () Bool)

(assert (=> d!735563 (=> res!1092612 e!1638341)))

(assert (=> d!735563 (= res!1092612 (is-Nil!29894 lt!914130))))

(assert (=> d!735563 (= (forall!6131 lt!914130 lambda!96917) e!1638341)))

(declare-fun b!2596126 () Bool)

(declare-fun e!1638342 () Bool)

(assert (=> b!2596126 (= e!1638341 e!1638342)))

(declare-fun res!1092613 () Bool)

(assert (=> b!2596126 (=> (not res!1092613) (not e!1638342))))

(assert (=> b!2596126 (= res!1092613 (dynLambda!12649 lambda!96917 (h!35314 lt!914130)))))

(declare-fun b!2596127 () Bool)

(assert (=> b!2596127 (= e!1638342 (forall!6131 (t!213007 lt!914130) lambda!96917))))

(assert (= (and d!735563 (not res!1092612)) b!2596126))

(assert (= (and b!2596126 res!1092613) b!2596127))

(declare-fun b_lambda!77551 () Bool)

(assert (=> (not b_lambda!77551) (not b!2596126)))

(declare-fun m!2932433 () Bool)

(assert (=> b!2596126 m!2932433))

(declare-fun m!2932435 () Bool)

(assert (=> b!2596127 m!2932435))

(assert (=> b!2596029 d!735563))

(declare-fun d!735565 () Bool)

(assert (=> d!735565 (= (isEmpty!17132 l1!1546) (is-Nil!29894 l1!1546))))

(assert (=> b!2596034 d!735565))

(declare-fun d!735567 () Bool)

(declare-fun lt!914175 () Bool)

(assert (=> d!735567 (= lt!914175 (set.member (h!35314 l1!1546) (content!4197 l2!1515)))))

(declare-fun e!1638348 () Bool)

(assert (=> d!735567 (= lt!914175 e!1638348)))

(declare-fun res!1092619 () Bool)

(assert (=> d!735567 (=> (not res!1092619) (not e!1638348))))

(assert (=> d!735567 (= res!1092619 (is-Cons!29894 l2!1515))))

(assert (=> d!735567 (= (contains!5442 l2!1515 (h!35314 l1!1546)) lt!914175)))

(declare-fun b!2596132 () Bool)

(declare-fun e!1638347 () Bool)

(assert (=> b!2596132 (= e!1638348 e!1638347)))

(declare-fun res!1092618 () Bool)

(assert (=> b!2596132 (=> res!1092618 e!1638347)))

(assert (=> b!2596132 (= res!1092618 (= (h!35314 l2!1515) (h!35314 l1!1546)))))

(declare-fun b!2596133 () Bool)

(assert (=> b!2596133 (= e!1638347 (contains!5442 (t!213007 l2!1515) (h!35314 l1!1546)))))

(assert (= (and d!735567 res!1092619) b!2596132))

(assert (= (and b!2596132 (not res!1092618)) b!2596133))

(assert (=> d!735567 m!2932401))

(declare-fun m!2932437 () Bool)

(assert (=> d!735567 m!2932437))

(declare-fun m!2932439 () Bool)

(assert (=> b!2596133 m!2932439))

(assert (=> b!2596032 d!735567))

(declare-fun d!735569 () Bool)

(declare-fun res!1092620 () Bool)

(declare-fun e!1638350 () Bool)

(assert (=> d!735569 (=> res!1092620 e!1638350)))

(assert (=> d!735569 (= res!1092620 (is-Nil!29894 l1!1546))))

(assert (=> d!735569 (= (noDuplicate!442 l1!1546) e!1638350)))

(declare-fun b!2596134 () Bool)

(declare-fun e!1638351 () Bool)

(assert (=> b!2596134 (= e!1638350 e!1638351)))

(declare-fun res!1092621 () Bool)

(assert (=> b!2596134 (=> (not res!1092621) (not e!1638351))))

(assert (=> b!2596134 (= res!1092621 (not (contains!5442 (t!213007 l1!1546) (h!35314 l1!1546))))))

(declare-fun b!2596135 () Bool)

(assert (=> b!2596135 (= e!1638351 (noDuplicate!442 (t!213007 l1!1546)))))

(assert (= (and d!735569 (not res!1092620)) b!2596134))

(assert (= (and b!2596134 res!1092621) b!2596135))

(declare-fun m!2932441 () Bool)

(assert (=> b!2596134 m!2932441))

(declare-fun m!2932443 () Bool)

(assert (=> b!2596135 m!2932443))

(assert (=> start!251850 d!735569))

(declare-fun b!2596140 () Bool)

(declare-fun e!1638354 () Bool)

(declare-fun tp!823191 () Bool)

(assert (=> b!2596140 (= e!1638354 (and tp_is_empty!13467 tp!823191))))

(assert (=> b!2596028 (= tp!823182 e!1638354)))

(assert (= (and b!2596028 (is-Cons!29894 (t!213007 l1!1546))) b!2596140))

(declare-fun b!2596141 () Bool)

(declare-fun e!1638355 () Bool)

(declare-fun tp!823192 () Bool)

(assert (=> b!2596141 (= e!1638355 (and tp_is_empty!13467 tp!823192))))

(assert (=> b!2596027 (= tp!823181 e!1638355)))

(assert (= (and b!2596027 (is-Cons!29894 (t!213007 l2!1515))) b!2596141))

(declare-fun b_lambda!77553 () Bool)

(assert (= b_lambda!77549 (or b!2596031 b_lambda!77553)))

(declare-fun bs!472907 () Bool)

(declare-fun d!735571 () Bool)

(assert (= bs!472907 (and d!735571 b!2596031)))

(assert (=> bs!472907 (= (dynLambda!12649 lambda!96917 (h!35314 l2!1515)) (contains!5442 l1!1546 (h!35314 l2!1515)))))

(declare-fun m!2932445 () Bool)

(assert (=> bs!472907 m!2932445))

(assert (=> b!2596070 d!735571))

(declare-fun b_lambda!77555 () Bool)

(assert (= b_lambda!77551 (or b!2596031 b_lambda!77555)))

(declare-fun bs!472908 () Bool)

(declare-fun d!735573 () Bool)

(assert (= bs!472908 (and d!735573 b!2596031)))

(assert (=> bs!472908 (= (dynLambda!12649 lambda!96917 (h!35314 lt!914130)) (contains!5442 l1!1546 (h!35314 lt!914130)))))

(declare-fun m!2932447 () Bool)

(assert (=> bs!472908 m!2932447))

(assert (=> b!2596126 d!735573))

(push 1)

(assert (not b_lambda!77553))

(assert (not b!2596135))

(assert (not d!735559))

(assert (not b!2596108))

(assert (not b!2596089))

(assert (not b!2596071))

(assert (not d!735555))

(assert (not bm!167320))

(assert (not b!2596140))

(assert tp_is_empty!13467)

(assert (not b!2596127))

(assert (not b!2596080))

(assert (not b!2596104))

(assert (not b!2596133))

(assert (not b!2596107))

(assert (not bs!472908))

(assert (not b!2596134))

(assert (not d!735567))

(assert (not d!735547))

(assert (not b!2596091))

(assert (not bs!472907))

(assert (not b!2596141))

(assert (not b!2596120))

(assert (not b!2596081))

(assert (not b_lambda!77555))

(assert (not d!735553))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

