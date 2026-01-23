; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251894 () Bool)

(assert start!251894)

(declare-fun b!2596264 () Bool)

(assert (=> b!2596264 true))

(declare-fun b!2596262 () Bool)

(declare-fun e!1638452 () Bool)

(declare-fun tp_is_empty!13475 () Bool)

(declare-fun tp!823213 () Bool)

(assert (=> b!2596262 (= e!1638452 (and tp_is_empty!13475 tp!823213))))

(declare-fun b!2596263 () Bool)

(declare-fun e!1638455 () Bool)

(declare-fun e!1638453 () Bool)

(assert (=> b!2596263 (= e!1638455 (not e!1638453))))

(declare-fun res!1092715 () Bool)

(assert (=> b!2596263 (=> res!1092715 e!1638453)))

(declare-datatypes ((B!2195 0))(
  ( (B!2196 (val!9565 Int)) )
))
(declare-datatypes ((List!29998 0))(
  ( (Nil!29898) (Cons!29898 (h!35318 B!2195) (t!213011 List!29998)) )
))
(declare-fun lt!914239 () List!29998)

(declare-fun lambda!96951 () Int)

(declare-fun forall!6135 (List!29998 Int) Bool)

(assert (=> b!2596263 (= res!1092715 (not (forall!6135 lt!914239 lambda!96951)))))

(declare-fun lt!914238 () Int)

(declare-fun size!23203 (List!29998) Int)

(assert (=> b!2596263 (= (size!23203 lt!914239) (- lt!914238 1))))

(declare-datatypes ((Unit!43953 0))(
  ( (Unit!43954) )
))
(declare-fun lt!914241 () Unit!43953)

(declare-fun l2!1515 () List!29998)

(declare-fun l1!1546 () List!29998)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!31 (List!29998 B!2195) Unit!43953)

(assert (=> b!2596263 (= lt!914241 (lemmaRemoveElmtNoDuplicateRemoveOne!31 l2!1515 (h!35318 l1!1546)))))

(assert (=> b!2596263 (forall!6135 lt!914239 lambda!96951)))

(declare-fun lt!914240 () Unit!43953)

(declare-fun lemmaRemoveElmtMaintainsForall!33 (List!29998 B!2195 Int) Unit!43953)

(assert (=> b!2596263 (= lt!914240 (lemmaRemoveElmtMaintainsForall!33 l2!1515 (h!35318 l1!1546) lambda!96951))))

(declare-fun noDuplicate!446 (List!29998) Bool)

(assert (=> b!2596263 (noDuplicate!446 lt!914239)))

(declare-fun -!173 (List!29998 B!2195) List!29998)

(assert (=> b!2596263 (= lt!914239 (-!173 l2!1515 (h!35318 l1!1546)))))

(declare-fun lt!914243 () Unit!43953)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!39 (List!29998 B!2195) Unit!43953)

(assert (=> b!2596263 (= lt!914243 (lemmaRemoveElmtMaintainsNoDuplicate!39 l2!1515 (h!35318 l1!1546)))))

(declare-fun res!1092713 () Bool)

(declare-fun e!1638456 () Bool)

(assert (=> start!251894 (=> (not res!1092713) (not e!1638456))))

(assert (=> start!251894 (= res!1092713 (noDuplicate!446 l1!1546))))

(assert (=> start!251894 e!1638456))

(declare-fun e!1638454 () Bool)

(assert (=> start!251894 e!1638454))

(assert (=> start!251894 e!1638452))

(declare-fun res!1092717 () Bool)

(assert (=> b!2596264 (=> (not res!1092717) (not e!1638455))))

(assert (=> b!2596264 (= res!1092717 (forall!6135 l2!1515 lambda!96951))))

(declare-fun b!2596265 () Bool)

(declare-fun res!1092712 () Bool)

(assert (=> b!2596265 (=> (not res!1092712) (not e!1638456))))

(assert (=> b!2596265 (= res!1092712 (noDuplicate!446 l2!1515))))

(declare-fun b!2596266 () Bool)

(assert (=> b!2596266 (= e!1638456 e!1638455)))

(declare-fun res!1092716 () Bool)

(assert (=> b!2596266 (=> (not res!1092716) (not e!1638455))))

(declare-fun lt!914242 () Int)

(assert (=> b!2596266 (= res!1092716 (> lt!914242 lt!914238))))

(assert (=> b!2596266 (= lt!914238 (size!23203 l2!1515))))

(assert (=> b!2596266 (= lt!914242 (size!23203 l1!1546))))

(declare-fun b!2596267 () Bool)

(declare-fun res!1092714 () Bool)

(assert (=> b!2596267 (=> (not res!1092714) (not e!1638455))))

(assert (=> b!2596267 (= res!1092714 (is-Cons!29898 l1!1546))))

(declare-fun b!2596268 () Bool)

(declare-fun res!1092718 () Bool)

(assert (=> b!2596268 (=> res!1092718 e!1638453)))

(assert (=> b!2596268 (= res!1092718 (not (forall!6135 lt!914239 lambda!96951)))))

(declare-fun b!2596269 () Bool)

(declare-fun res!1092720 () Bool)

(assert (=> b!2596269 (=> res!1092720 e!1638453)))

(declare-fun isEmpty!17136 (List!29998) Bool)

(assert (=> b!2596269 (= res!1092720 (isEmpty!17136 l1!1546))))

(declare-fun b!2596270 () Bool)

(declare-fun head!5891 (List!29998) B!2195)

(assert (=> b!2596270 (= e!1638453 (= (h!35318 l1!1546) (head!5891 l1!1546)))))

(declare-fun b!2596271 () Bool)

(declare-fun res!1092719 () Bool)

(assert (=> b!2596271 (=> (not res!1092719) (not e!1638455))))

(declare-fun contains!5446 (List!29998 B!2195) Bool)

(assert (=> b!2596271 (= res!1092719 (contains!5446 l2!1515 (h!35318 l1!1546)))))

(declare-fun b!2596272 () Bool)

(declare-fun tp!823214 () Bool)

(assert (=> b!2596272 (= e!1638454 (and tp_is_empty!13475 tp!823214))))

(assert (= (and start!251894 res!1092713) b!2596265))

(assert (= (and b!2596265 res!1092712) b!2596266))

(assert (= (and b!2596266 res!1092716) b!2596264))

(assert (= (and b!2596264 res!1092717) b!2596267))

(assert (= (and b!2596267 res!1092714) b!2596271))

(assert (= (and b!2596271 res!1092719) b!2596263))

(assert (= (and b!2596263 (not res!1092715)) b!2596269))

(assert (= (and b!2596269 (not res!1092720)) b!2596268))

(assert (= (and b!2596268 (not res!1092718)) b!2596270))

(assert (= (and start!251894 (is-Cons!29898 l1!1546)) b!2596272))

(assert (= (and start!251894 (is-Cons!29898 l2!1515)) b!2596262))

(declare-fun m!2932549 () Bool)

(assert (=> b!2596264 m!2932549))

(declare-fun m!2932551 () Bool)

(assert (=> b!2596265 m!2932551))

(declare-fun m!2932553 () Bool)

(assert (=> b!2596263 m!2932553))

(declare-fun m!2932555 () Bool)

(assert (=> b!2596263 m!2932555))

(declare-fun m!2932557 () Bool)

(assert (=> b!2596263 m!2932557))

(assert (=> b!2596263 m!2932553))

(declare-fun m!2932559 () Bool)

(assert (=> b!2596263 m!2932559))

(declare-fun m!2932561 () Bool)

(assert (=> b!2596263 m!2932561))

(declare-fun m!2932563 () Bool)

(assert (=> b!2596263 m!2932563))

(declare-fun m!2932565 () Bool)

(assert (=> b!2596263 m!2932565))

(declare-fun m!2932567 () Bool)

(assert (=> b!2596270 m!2932567))

(declare-fun m!2932569 () Bool)

(assert (=> start!251894 m!2932569))

(declare-fun m!2932571 () Bool)

(assert (=> b!2596271 m!2932571))

(assert (=> b!2596268 m!2932553))

(declare-fun m!2932573 () Bool)

(assert (=> b!2596266 m!2932573))

(declare-fun m!2932575 () Bool)

(assert (=> b!2596266 m!2932575))

(declare-fun m!2932577 () Bool)

(assert (=> b!2596269 m!2932577))

(push 1)

(assert (not b!2596266))

(assert (not b!2596272))

(assert (not b!2596269))

(assert (not b!2596268))

(assert (not b!2596270))

(assert (not start!251894))

(assert (not b!2596263))

(assert (not b!2596265))

(assert (not b!2596264))

(assert (not b!2596262))

(assert tp_is_empty!13475)

(assert (not b!2596271))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!735605 () Bool)

(declare-fun res!1092756 () Bool)

(declare-fun e!1638488 () Bool)

(assert (=> d!735605 (=> res!1092756 e!1638488)))

(assert (=> d!735605 (= res!1092756 (is-Nil!29898 lt!914239))))

(assert (=> d!735605 (= (noDuplicate!446 lt!914239) e!1638488)))

(declare-fun b!2596318 () Bool)

(declare-fun e!1638489 () Bool)

(assert (=> b!2596318 (= e!1638488 e!1638489)))

(declare-fun res!1092757 () Bool)

(assert (=> b!2596318 (=> (not res!1092757) (not e!1638489))))

(assert (=> b!2596318 (= res!1092757 (not (contains!5446 (t!213011 lt!914239) (h!35318 lt!914239))))))

(declare-fun b!2596319 () Bool)

(assert (=> b!2596319 (= e!1638489 (noDuplicate!446 (t!213011 lt!914239)))))

(assert (= (and d!735605 (not res!1092756)) b!2596318))

(assert (= (and b!2596318 res!1092757) b!2596319))

(declare-fun m!2932609 () Bool)

(assert (=> b!2596318 m!2932609))

(declare-fun m!2932611 () Bool)

(assert (=> b!2596319 m!2932611))

(assert (=> b!2596263 d!735605))

(declare-fun d!735607 () Bool)

(declare-fun e!1638503 () Bool)

(assert (=> d!735607 e!1638503))

(declare-fun res!1092766 () Bool)

(assert (=> d!735607 (=> (not res!1092766) (not e!1638503))))

(declare-fun lt!914264 () List!29998)

(assert (=> d!735607 (= res!1092766 (<= (size!23203 lt!914264) (size!23203 l2!1515)))))

(declare-fun e!1638505 () List!29998)

(assert (=> d!735607 (= lt!914264 e!1638505)))

(declare-fun c!418311 () Bool)

(assert (=> d!735607 (= c!418311 (is-Cons!29898 l2!1515))))

(assert (=> d!735607 (= (-!173 l2!1515 (h!35318 l1!1546)) lt!914264)))

(declare-fun b!2596336 () Bool)

(declare-fun e!1638504 () List!29998)

(assert (=> b!2596336 (= e!1638505 e!1638504)))

(declare-fun c!418312 () Bool)

(assert (=> b!2596336 (= c!418312 (= (h!35318 l1!1546) (h!35318 l2!1515)))))

(declare-fun b!2596337 () Bool)

(declare-fun call!167331 () List!29998)

(assert (=> b!2596337 (= e!1638504 call!167331)))

(declare-fun b!2596338 () Bool)

(declare-fun content!4199 (List!29998) (Set B!2195))

(assert (=> b!2596338 (= e!1638503 (= (content!4199 lt!914264) (set.minus (content!4199 l2!1515) (set.insert (h!35318 l1!1546) (as set.empty (Set B!2195))))))))

(declare-fun b!2596339 () Bool)

(assert (=> b!2596339 (= e!1638504 (Cons!29898 (h!35318 l2!1515) call!167331))))

(declare-fun bm!167326 () Bool)

(assert (=> bm!167326 (= call!167331 (-!173 (t!213011 l2!1515) (h!35318 l1!1546)))))

(declare-fun b!2596340 () Bool)

(assert (=> b!2596340 (= e!1638505 Nil!29898)))

(assert (= (and d!735607 c!418311) b!2596336))

(assert (= (and d!735607 (not c!418311)) b!2596340))

(assert (= (and b!2596336 c!418312) b!2596337))

(assert (= (and b!2596336 (not c!418312)) b!2596339))

(assert (= (or b!2596337 b!2596339) bm!167326))

(assert (= (and d!735607 res!1092766) b!2596338))

(declare-fun m!2932617 () Bool)

(assert (=> d!735607 m!2932617))

(assert (=> d!735607 m!2932573))

(declare-fun m!2932619 () Bool)

(assert (=> b!2596338 m!2932619))

(declare-fun m!2932621 () Bool)

(assert (=> b!2596338 m!2932621))

(declare-fun m!2932623 () Bool)

(assert (=> b!2596338 m!2932623))

(declare-fun m!2932625 () Bool)

(assert (=> bm!167326 m!2932625))

(assert (=> b!2596263 d!735607))

(declare-fun d!735611 () Bool)

(declare-fun lt!914267 () Int)

(assert (=> d!735611 (>= lt!914267 0)))

(declare-fun e!1638510 () Int)

(assert (=> d!735611 (= lt!914267 e!1638510)))

(declare-fun c!418315 () Bool)

(assert (=> d!735611 (= c!418315 (is-Nil!29898 lt!914239))))

(assert (=> d!735611 (= (size!23203 lt!914239) lt!914267)))

(declare-fun b!2596347 () Bool)

(assert (=> b!2596347 (= e!1638510 0)))

(declare-fun b!2596348 () Bool)

(assert (=> b!2596348 (= e!1638510 (+ 1 (size!23203 (t!213011 lt!914239))))))

(assert (= (and d!735611 c!418315) b!2596347))

(assert (= (and d!735611 (not c!418315)) b!2596348))

(declare-fun m!2932631 () Bool)

(assert (=> b!2596348 m!2932631))

(assert (=> b!2596263 d!735611))

(declare-fun d!735615 () Bool)

(assert (=> d!735615 (forall!6135 (-!173 l2!1515 (h!35318 l1!1546)) lambda!96951)))

(declare-fun lt!914270 () Unit!43953)

(declare-fun choose!15415 (List!29998 B!2195 Int) Unit!43953)

(assert (=> d!735615 (= lt!914270 (choose!15415 l2!1515 (h!35318 l1!1546) lambda!96951))))

(assert (=> d!735615 (noDuplicate!446 l2!1515)))

(assert (=> d!735615 (= (lemmaRemoveElmtMaintainsForall!33 l2!1515 (h!35318 l1!1546) lambda!96951) lt!914270)))

(declare-fun bs!472918 () Bool)

(assert (= bs!472918 d!735615))

(assert (=> bs!472918 m!2932559))

(assert (=> bs!472918 m!2932559))

(declare-fun m!2932633 () Bool)

(assert (=> bs!472918 m!2932633))

(declare-fun m!2932635 () Bool)

(assert (=> bs!472918 m!2932635))

(assert (=> bs!472918 m!2932551))

(assert (=> b!2596263 d!735615))

(declare-fun d!735617 () Bool)

(assert (=> d!735617 (noDuplicate!446 (-!173 l2!1515 (h!35318 l1!1546)))))

(declare-fun lt!914275 () Unit!43953)

(declare-fun choose!15416 (List!29998 B!2195) Unit!43953)

(assert (=> d!735617 (= lt!914275 (choose!15416 l2!1515 (h!35318 l1!1546)))))

(assert (=> d!735617 (noDuplicate!446 l2!1515)))

(assert (=> d!735617 (= (lemmaRemoveElmtMaintainsNoDuplicate!39 l2!1515 (h!35318 l1!1546)) lt!914275)))

(declare-fun bs!472919 () Bool)

(assert (= bs!472919 d!735617))

(assert (=> bs!472919 m!2932559))

(assert (=> bs!472919 m!2932559))

(declare-fun m!2932637 () Bool)

(assert (=> bs!472919 m!2932637))

(declare-fun m!2932639 () Bool)

(assert (=> bs!472919 m!2932639))

(assert (=> bs!472919 m!2932551))

(assert (=> b!2596263 d!735617))

(declare-fun d!735619 () Bool)

(assert (=> d!735619 (= (size!23203 (-!173 l2!1515 (h!35318 l1!1546))) (- (size!23203 l2!1515) 1))))

(declare-fun lt!914278 () Unit!43953)

(declare-fun choose!15417 (List!29998 B!2195) Unit!43953)

(assert (=> d!735619 (= lt!914278 (choose!15417 l2!1515 (h!35318 l1!1546)))))

(assert (=> d!735619 (noDuplicate!446 l2!1515)))

(assert (=> d!735619 (= (lemmaRemoveElmtNoDuplicateRemoveOne!31 l2!1515 (h!35318 l1!1546)) lt!914278)))

(declare-fun bs!472920 () Bool)

(assert (= bs!472920 d!735619))

(assert (=> bs!472920 m!2932559))

(declare-fun m!2932641 () Bool)

(assert (=> bs!472920 m!2932641))

(assert (=> bs!472920 m!2932573))

(assert (=> bs!472920 m!2932551))

(assert (=> bs!472920 m!2932559))

(declare-fun m!2932643 () Bool)

(assert (=> bs!472920 m!2932643))

(assert (=> b!2596263 d!735619))

(declare-fun d!735621 () Bool)

(declare-fun res!1092775 () Bool)

(declare-fun e!1638525 () Bool)

(assert (=> d!735621 (=> res!1092775 e!1638525)))

(assert (=> d!735621 (= res!1092775 (is-Nil!29898 lt!914239))))

(assert (=> d!735621 (= (forall!6135 lt!914239 lambda!96951) e!1638525)))

(declare-fun b!2596363 () Bool)

(declare-fun e!1638526 () Bool)

(assert (=> b!2596363 (= e!1638525 e!1638526)))

(declare-fun res!1092776 () Bool)

(assert (=> b!2596363 (=> (not res!1092776) (not e!1638526))))

(declare-fun dynLambda!12651 (Int B!2195) Bool)

(assert (=> b!2596363 (= res!1092776 (dynLambda!12651 lambda!96951 (h!35318 lt!914239)))))

(declare-fun b!2596364 () Bool)

(assert (=> b!2596364 (= e!1638526 (forall!6135 (t!213011 lt!914239) lambda!96951))))

(assert (= (and d!735621 (not res!1092775)) b!2596363))

(assert (= (and b!2596363 res!1092776) b!2596364))

(declare-fun b_lambda!77567 () Bool)

(assert (=> (not b_lambda!77567) (not b!2596363)))

(declare-fun m!2932645 () Bool)

(assert (=> b!2596363 m!2932645))

(declare-fun m!2932647 () Bool)

(assert (=> b!2596364 m!2932647))

(assert (=> b!2596263 d!735621))

(declare-fun d!735623 () Bool)

(assert (=> d!735623 (= (isEmpty!17136 l1!1546) (is-Nil!29898 l1!1546))))

(assert (=> b!2596269 d!735623))

(declare-fun d!735625 () Bool)

(declare-fun res!1092777 () Bool)

(declare-fun e!1638527 () Bool)

(assert (=> d!735625 (=> res!1092777 e!1638527)))

(assert (=> d!735625 (= res!1092777 (is-Nil!29898 l2!1515))))

(assert (=> d!735625 (= (forall!6135 l2!1515 lambda!96951) e!1638527)))

(declare-fun b!2596365 () Bool)

(declare-fun e!1638528 () Bool)

(assert (=> b!2596365 (= e!1638527 e!1638528)))

(declare-fun res!1092778 () Bool)

(assert (=> b!2596365 (=> (not res!1092778) (not e!1638528))))

(assert (=> b!2596365 (= res!1092778 (dynLambda!12651 lambda!96951 (h!35318 l2!1515)))))

(declare-fun b!2596366 () Bool)

(assert (=> b!2596366 (= e!1638528 (forall!6135 (t!213011 l2!1515) lambda!96951))))

(assert (= (and d!735625 (not res!1092777)) b!2596365))

(assert (= (and b!2596365 res!1092778) b!2596366))

(declare-fun b_lambda!77569 () Bool)

(assert (=> (not b_lambda!77569) (not b!2596365)))

(declare-fun m!2932649 () Bool)

(assert (=> b!2596365 m!2932649))

(declare-fun m!2932651 () Bool)

(assert (=> b!2596366 m!2932651))

(assert (=> b!2596264 d!735625))

(assert (=> b!2596268 d!735621))

(declare-fun d!735627 () Bool)

(declare-fun lt!914282 () Bool)

(assert (=> d!735627 (= lt!914282 (set.member (h!35318 l1!1546) (content!4199 l2!1515)))))

(declare-fun e!1638537 () Bool)

(assert (=> d!735627 (= lt!914282 e!1638537)))

(declare-fun res!1092785 () Bool)

(assert (=> d!735627 (=> (not res!1092785) (not e!1638537))))

(assert (=> d!735627 (= res!1092785 (is-Cons!29898 l2!1515))))

(assert (=> d!735627 (= (contains!5446 l2!1515 (h!35318 l1!1546)) lt!914282)))

(declare-fun b!2596376 () Bool)

(declare-fun e!1638536 () Bool)

(assert (=> b!2596376 (= e!1638537 e!1638536)))

(declare-fun res!1092784 () Bool)

(assert (=> b!2596376 (=> res!1092784 e!1638536)))

(assert (=> b!2596376 (= res!1092784 (= (h!35318 l2!1515) (h!35318 l1!1546)))))

(declare-fun b!2596377 () Bool)

(assert (=> b!2596377 (= e!1638536 (contains!5446 (t!213011 l2!1515) (h!35318 l1!1546)))))

(assert (= (and d!735627 res!1092785) b!2596376))

(assert (= (and b!2596376 (not res!1092784)) b!2596377))

(assert (=> d!735627 m!2932621))

(declare-fun m!2932663 () Bool)

(assert (=> d!735627 m!2932663))

(declare-fun m!2932665 () Bool)

(assert (=> b!2596377 m!2932665))

(assert (=> b!2596271 d!735627))

(declare-fun d!735631 () Bool)

(declare-fun lt!914283 () Int)

(assert (=> d!735631 (>= lt!914283 0)))

(declare-fun e!1638538 () Int)

(assert (=> d!735631 (= lt!914283 e!1638538)))

(declare-fun c!418322 () Bool)

(assert (=> d!735631 (= c!418322 (is-Nil!29898 l2!1515))))

(assert (=> d!735631 (= (size!23203 l2!1515) lt!914283)))

(declare-fun b!2596378 () Bool)

(assert (=> b!2596378 (= e!1638538 0)))

(declare-fun b!2596379 () Bool)

(assert (=> b!2596379 (= e!1638538 (+ 1 (size!23203 (t!213011 l2!1515))))))

(assert (= (and d!735631 c!418322) b!2596378))

(assert (= (and d!735631 (not c!418322)) b!2596379))

(declare-fun m!2932667 () Bool)

(assert (=> b!2596379 m!2932667))

(assert (=> b!2596266 d!735631))

(declare-fun d!735633 () Bool)

(declare-fun lt!914284 () Int)

(assert (=> d!735633 (>= lt!914284 0)))

(declare-fun e!1638539 () Int)

(assert (=> d!735633 (= lt!914284 e!1638539)))

(declare-fun c!418323 () Bool)

(assert (=> d!735633 (= c!418323 (is-Nil!29898 l1!1546))))

(assert (=> d!735633 (= (size!23203 l1!1546) lt!914284)))

(declare-fun b!2596380 () Bool)

(assert (=> b!2596380 (= e!1638539 0)))

(declare-fun b!2596381 () Bool)

(assert (=> b!2596381 (= e!1638539 (+ 1 (size!23203 (t!213011 l1!1546))))))

(assert (= (and d!735633 c!418323) b!2596380))

(assert (= (and d!735633 (not c!418323)) b!2596381))

(declare-fun m!2932669 () Bool)

(assert (=> b!2596381 m!2932669))

(assert (=> b!2596266 d!735633))

(declare-fun d!735635 () Bool)

(declare-fun res!1092786 () Bool)

(declare-fun e!1638540 () Bool)

(assert (=> d!735635 (=> res!1092786 e!1638540)))

(assert (=> d!735635 (= res!1092786 (is-Nil!29898 l1!1546))))

(assert (=> d!735635 (= (noDuplicate!446 l1!1546) e!1638540)))

(declare-fun b!2596382 () Bool)

(declare-fun e!1638541 () Bool)

(assert (=> b!2596382 (= e!1638540 e!1638541)))

(declare-fun res!1092787 () Bool)

(assert (=> b!2596382 (=> (not res!1092787) (not e!1638541))))

(assert (=> b!2596382 (= res!1092787 (not (contains!5446 (t!213011 l1!1546) (h!35318 l1!1546))))))

(declare-fun b!2596383 () Bool)

(assert (=> b!2596383 (= e!1638541 (noDuplicate!446 (t!213011 l1!1546)))))

(assert (= (and d!735635 (not res!1092786)) b!2596382))

(assert (= (and b!2596382 res!1092787) b!2596383))

(declare-fun m!2932671 () Bool)

(assert (=> b!2596382 m!2932671))

(declare-fun m!2932673 () Bool)

(assert (=> b!2596383 m!2932673))

(assert (=> start!251894 d!735635))

(declare-fun d!735637 () Bool)

(assert (=> d!735637 (= (head!5891 l1!1546) (h!35318 l1!1546))))

(assert (=> b!2596270 d!735637))

(declare-fun d!735639 () Bool)

(declare-fun res!1092788 () Bool)

(declare-fun e!1638542 () Bool)

(assert (=> d!735639 (=> res!1092788 e!1638542)))

(assert (=> d!735639 (= res!1092788 (is-Nil!29898 l2!1515))))

(assert (=> d!735639 (= (noDuplicate!446 l2!1515) e!1638542)))

(declare-fun b!2596384 () Bool)

(declare-fun e!1638543 () Bool)

(assert (=> b!2596384 (= e!1638542 e!1638543)))

(declare-fun res!1092789 () Bool)

(assert (=> b!2596384 (=> (not res!1092789) (not e!1638543))))

(assert (=> b!2596384 (= res!1092789 (not (contains!5446 (t!213011 l2!1515) (h!35318 l2!1515))))))

(declare-fun b!2596385 () Bool)

(assert (=> b!2596385 (= e!1638543 (noDuplicate!446 (t!213011 l2!1515)))))

(assert (= (and d!735639 (not res!1092788)) b!2596384))

(assert (= (and b!2596384 res!1092789) b!2596385))

(declare-fun m!2932675 () Bool)

(assert (=> b!2596384 m!2932675))

(declare-fun m!2932677 () Bool)

(assert (=> b!2596385 m!2932677))

(assert (=> b!2596265 d!735639))

(declare-fun b!2596390 () Bool)

(declare-fun e!1638546 () Bool)

(declare-fun tp!823223 () Bool)

(assert (=> b!2596390 (= e!1638546 (and tp_is_empty!13475 tp!823223))))

(assert (=> b!2596262 (= tp!823213 e!1638546)))

(assert (= (and b!2596262 (is-Cons!29898 (t!213011 l2!1515))) b!2596390))

(declare-fun b!2596391 () Bool)

(declare-fun e!1638547 () Bool)

(declare-fun tp!823224 () Bool)

(assert (=> b!2596391 (= e!1638547 (and tp_is_empty!13475 tp!823224))))

(assert (=> b!2596272 (= tp!823214 e!1638547)))

(assert (= (and b!2596272 (is-Cons!29898 (t!213011 l1!1546))) b!2596391))

(declare-fun b_lambda!77571 () Bool)

(assert (= b_lambda!77569 (or b!2596264 b_lambda!77571)))

(declare-fun bs!472921 () Bool)

(declare-fun d!735641 () Bool)

(assert (= bs!472921 (and d!735641 b!2596264)))

(assert (=> bs!472921 (= (dynLambda!12651 lambda!96951 (h!35318 l2!1515)) (contains!5446 l1!1546 (h!35318 l2!1515)))))

(declare-fun m!2932679 () Bool)

(assert (=> bs!472921 m!2932679))

(assert (=> b!2596365 d!735641))

(declare-fun b_lambda!77573 () Bool)

(assert (= b_lambda!77567 (or b!2596264 b_lambda!77573)))

(declare-fun bs!472922 () Bool)

(declare-fun d!735643 () Bool)

(assert (= bs!472922 (and d!735643 b!2596264)))

(assert (=> bs!472922 (= (dynLambda!12651 lambda!96951 (h!35318 lt!914239)) (contains!5446 l1!1546 (h!35318 lt!914239)))))

(declare-fun m!2932681 () Bool)

(assert (=> bs!472922 m!2932681))

(assert (=> b!2596363 d!735643))

(push 1)

(assert (not b!2596385))

(assert (not b!2596366))

(assert (not d!735617))

(assert (not b!2596338))

(assert (not bm!167326))

(assert (not b_lambda!77571))

(assert (not b!2596384))

(assert (not b!2596390))

(assert (not b!2596364))

(assert (not bs!472921))

(assert (not b!2596391))

(assert (not b!2596382))

(assert (not b!2596377))

(assert (not d!735615))

(assert (not b_lambda!77573))

(assert (not b!2596319))

(assert (not b!2596379))

(assert (not d!735607))

(assert (not b!2596348))

(assert (not b!2596383))

(assert (not bs!472922))

(assert (not b!2596381))

(assert (not d!735627))

(assert (not b!2596318))

(assert (not d!735619))

(assert tp_is_empty!13475)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

