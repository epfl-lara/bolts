; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667196 () Bool)

(assert start!667196)

(declare-fun b!6951496 () Bool)

(assert (=> b!6951496 true))

(assert (=> b!6951496 true))

(declare-fun bs!1857722 () Bool)

(declare-fun b!6951499 () Bool)

(assert (= bs!1857722 (and b!6951499 b!6951496)))

(declare-fun lambda!396472 () Int)

(declare-fun lambda!396471 () Int)

(assert (=> bs!1857722 (not (= lambda!396472 lambda!396471))))

(assert (=> b!6951499 true))

(assert (=> b!6951499 true))

(declare-fun b!6951494 () Bool)

(declare-fun res!2836149 () Bool)

(declare-fun e!4180686 () Bool)

(assert (=> b!6951494 (=> (not res!2836149) (not e!4180686))))

(declare-datatypes ((C!34326 0))(
  ( (C!34327 (val!26865 Int)) )
))
(declare-datatypes ((Regex!17028 0))(
  ( (ElementMatch!17028 (c!1289352 C!34326)) (Concat!25873 (regOne!34568 Regex!17028) (regTwo!34568 Regex!17028)) (EmptyExpr!17028) (Star!17028 (reg!17357 Regex!17028)) (EmptyLang!17028) (Union!17028 (regOne!34569 Regex!17028) (regTwo!34569 Regex!17028)) )
))
(declare-fun rInner!765 () Regex!17028)

(declare-fun nullable!6841 (Regex!17028) Bool)

(assert (=> b!6951494 (= res!2836149 (not (nullable!6841 rInner!765)))))

(declare-fun b!6951495 () Bool)

(declare-fun res!2836146 () Bool)

(assert (=> b!6951495 (=> (not res!2836146) (not e!4180686))))

(declare-fun Exists!4024 (Int) Bool)

(assert (=> b!6951495 (= res!2836146 (not (Exists!4024 lambda!396471)))))

(declare-fun res!2836148 () Bool)

(assert (=> b!6951496 (=> (not res!2836148) (not e!4180686))))

(assert (=> b!6951496 (= res!2836148 (not (Exists!4024 lambda!396471)))))

(declare-fun b!6951498 () Bool)

(declare-fun e!4180684 () Bool)

(declare-fun tp!1916350 () Bool)

(declare-fun tp!1916348 () Bool)

(assert (=> b!6951498 (= e!4180684 (and tp!1916350 tp!1916348))))

(declare-fun res!2836150 () Bool)

(assert (=> b!6951499 (=> (not res!2836150) (not e!4180686))))

(assert (=> b!6951499 (= res!2836150 (Exists!4024 lambda!396472))))

(declare-fun b!6951500 () Bool)

(declare-fun e!4180683 () Bool)

(assert (=> b!6951500 (= e!4180686 (not e!4180683))))

(declare-fun res!2836151 () Bool)

(assert (=> b!6951500 (=> res!2836151 e!4180683)))

(declare-datatypes ((List!66781 0))(
  ( (Nil!66657) (Cons!66657 (h!73105 C!34326) (t!380524 List!66781)) )
))
(declare-datatypes ((tuple2!67762 0))(
  ( (tuple2!67763 (_1!37184 List!66781) (_2!37184 List!66781)) )
))
(declare-fun lt!2477969 () tuple2!67762)

(declare-fun s!10388 () List!66781)

(declare-fun ++!15059 (List!66781 List!66781) List!66781)

(assert (=> b!6951500 (= res!2836151 (not (= (++!15059 (_1!37184 lt!2477969) (_2!37184 lt!2477969)) s!10388)))))

(declare-fun lt!2477972 () Regex!17028)

(declare-fun matchR!9145 (Regex!17028 List!66781) Bool)

(declare-fun matchRSpec!4061 (Regex!17028 List!66781) Bool)

(assert (=> b!6951500 (= (matchR!9145 lt!2477972 (_2!37184 lt!2477969)) (matchRSpec!4061 lt!2477972 (_2!37184 lt!2477969)))))

(declare-datatypes ((Unit!160744 0))(
  ( (Unit!160745) )
))
(declare-fun lt!2477971 () Unit!160744)

(declare-fun mainMatchTheorem!4057 (Regex!17028 List!66781) Unit!160744)

(assert (=> b!6951500 (= lt!2477971 (mainMatchTheorem!4057 lt!2477972 (_2!37184 lt!2477969)))))

(assert (=> b!6951500 (= lt!2477972 (Star!17028 rInner!765))))

(declare-fun lt!2477970 () Bool)

(assert (=> b!6951500 (= lt!2477970 (matchRSpec!4061 rInner!765 (_1!37184 lt!2477969)))))

(assert (=> b!6951500 (= lt!2477970 (matchR!9145 rInner!765 (_1!37184 lt!2477969)))))

(declare-fun lt!2477968 () Unit!160744)

(assert (=> b!6951500 (= lt!2477968 (mainMatchTheorem!4057 rInner!765 (_1!37184 lt!2477969)))))

(declare-fun pickWitness!359 (Int) tuple2!67762)

(assert (=> b!6951500 (= lt!2477969 (pickWitness!359 lambda!396472))))

(declare-fun b!6951501 () Bool)

(declare-fun tp_is_empty!43281 () Bool)

(assert (=> b!6951501 (= e!4180684 tp_is_empty!43281)))

(declare-fun b!6951502 () Bool)

(declare-fun validRegex!8734 (Regex!17028) Bool)

(assert (=> b!6951502 (= e!4180683 (validRegex!8734 lt!2477972))))

(declare-fun b!6951503 () Bool)

(declare-fun tp!1916349 () Bool)

(declare-fun tp!1916351 () Bool)

(assert (=> b!6951503 (= e!4180684 (and tp!1916349 tp!1916351))))

(declare-fun res!2836147 () Bool)

(assert (=> start!667196 (=> (not res!2836147) (not e!4180686))))

(assert (=> start!667196 (= res!2836147 (validRegex!8734 rInner!765))))

(assert (=> start!667196 e!4180686))

(assert (=> start!667196 e!4180684))

(declare-fun e!4180685 () Bool)

(assert (=> start!667196 e!4180685))

(declare-fun b!6951497 () Bool)

(declare-fun tp!1916347 () Bool)

(assert (=> b!6951497 (= e!4180684 tp!1916347)))

(declare-fun b!6951504 () Bool)

(declare-fun tp!1916346 () Bool)

(assert (=> b!6951504 (= e!4180685 (and tp_is_empty!43281 tp!1916346))))

(declare-fun b!6951505 () Bool)

(declare-fun res!2836145 () Bool)

(assert (=> b!6951505 (=> res!2836145 e!4180683)))

(assert (=> b!6951505 (= res!2836145 (not lt!2477970))))

(assert (= (and start!667196 res!2836147) b!6951494))

(assert (= (and b!6951494 res!2836149) b!6951496))

(assert (= (and b!6951496 res!2836148) b!6951495))

(assert (= (and b!6951495 res!2836146) b!6951499))

(assert (= (and b!6951499 res!2836150) b!6951500))

(assert (= (and b!6951500 (not res!2836151)) b!6951505))

(assert (= (and b!6951505 (not res!2836145)) b!6951502))

(assert (= (and start!667196 (is-ElementMatch!17028 rInner!765)) b!6951501))

(assert (= (and start!667196 (is-Concat!25873 rInner!765)) b!6951498))

(assert (= (and start!667196 (is-Star!17028 rInner!765)) b!6951497))

(assert (= (and start!667196 (is-Union!17028 rInner!765)) b!6951503))

(assert (= (and start!667196 (is-Cons!66657 s!10388)) b!6951504))

(declare-fun m!7652460 () Bool)

(assert (=> b!6951496 m!7652460))

(declare-fun m!7652462 () Bool)

(assert (=> b!6951499 m!7652462))

(assert (=> b!6951495 m!7652460))

(declare-fun m!7652464 () Bool)

(assert (=> b!6951500 m!7652464))

(declare-fun m!7652466 () Bool)

(assert (=> b!6951500 m!7652466))

(declare-fun m!7652468 () Bool)

(assert (=> b!6951500 m!7652468))

(declare-fun m!7652470 () Bool)

(assert (=> b!6951500 m!7652470))

(declare-fun m!7652472 () Bool)

(assert (=> b!6951500 m!7652472))

(declare-fun m!7652474 () Bool)

(assert (=> b!6951500 m!7652474))

(declare-fun m!7652476 () Bool)

(assert (=> b!6951500 m!7652476))

(declare-fun m!7652478 () Bool)

(assert (=> b!6951500 m!7652478))

(declare-fun m!7652480 () Bool)

(assert (=> b!6951494 m!7652480))

(declare-fun m!7652482 () Bool)

(assert (=> b!6951502 m!7652482))

(declare-fun m!7652484 () Bool)

(assert (=> start!667196 m!7652484))

(push 1)

(assert (not b!6951494))

(assert (not b!6951496))

(assert (not b!6951498))

(assert (not b!6951502))

(assert (not start!667196))

(assert (not b!6951504))

(assert (not b!6951497))

(assert (not b!6951500))

(assert (not b!6951495))

(assert tp_is_empty!43281)

(assert (not b!6951499))

(assert (not b!6951503))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2169126 () Bool)

(declare-fun choose!51798 (Int) Bool)

(assert (=> d!2169126 (= (Exists!4024 lambda!396472) (choose!51798 lambda!396472))))

(declare-fun bs!1857724 () Bool)

(assert (= bs!1857724 d!2169126))

(declare-fun m!7652512 () Bool)

(assert (=> bs!1857724 m!7652512))

(assert (=> b!6951499 d!2169126))

(declare-fun b!6951588 () Bool)

(declare-fun res!2836206 () Bool)

(declare-fun e!4180725 () Bool)

(assert (=> b!6951588 (=> (not res!2836206) (not e!4180725))))

(declare-fun call!631339 () Bool)

(assert (=> b!6951588 (= res!2836206 call!631339)))

(declare-fun e!4180721 () Bool)

(assert (=> b!6951588 (= e!4180721 e!4180725)))

(declare-fun b!6951589 () Bool)

(declare-fun e!4180722 () Bool)

(assert (=> b!6951589 (= e!4180722 call!631339)))

(declare-fun d!2169128 () Bool)

(declare-fun res!2836205 () Bool)

(declare-fun e!4180727 () Bool)

(assert (=> d!2169128 (=> res!2836205 e!4180727)))

(assert (=> d!2169128 (= res!2836205 (is-ElementMatch!17028 rInner!765))))

(assert (=> d!2169128 (= (validRegex!8734 rInner!765) e!4180727)))

(declare-fun b!6951590 () Bool)

(declare-fun res!2836204 () Bool)

(declare-fun e!4180726 () Bool)

(assert (=> b!6951590 (=> res!2836204 e!4180726)))

(assert (=> b!6951590 (= res!2836204 (not (is-Concat!25873 rInner!765)))))

(assert (=> b!6951590 (= e!4180721 e!4180726)))

(declare-fun call!631338 () Bool)

(declare-fun bm!631333 () Bool)

(declare-fun c!1289359 () Bool)

(declare-fun c!1289358 () Bool)

(assert (=> bm!631333 (= call!631338 (validRegex!8734 (ite c!1289359 (reg!17357 rInner!765) (ite c!1289358 (regTwo!34569 rInner!765) (regOne!34568 rInner!765)))))))

(declare-fun b!6951591 () Bool)

(declare-fun call!631340 () Bool)

(assert (=> b!6951591 (= e!4180725 call!631340)))

(declare-fun bm!631334 () Bool)

(assert (=> bm!631334 (= call!631340 call!631338)))

(declare-fun b!6951592 () Bool)

(declare-fun e!4180724 () Bool)

(assert (=> b!6951592 (= e!4180727 e!4180724)))

(assert (=> b!6951592 (= c!1289359 (is-Star!17028 rInner!765))))

(declare-fun bm!631335 () Bool)

(assert (=> bm!631335 (= call!631339 (validRegex!8734 (ite c!1289358 (regOne!34569 rInner!765) (regTwo!34568 rInner!765))))))

(declare-fun b!6951593 () Bool)

(declare-fun e!4180723 () Bool)

(assert (=> b!6951593 (= e!4180723 call!631338)))

(declare-fun b!6951594 () Bool)

(assert (=> b!6951594 (= e!4180724 e!4180723)))

(declare-fun res!2836207 () Bool)

(assert (=> b!6951594 (= res!2836207 (not (nullable!6841 (reg!17357 rInner!765))))))

(assert (=> b!6951594 (=> (not res!2836207) (not e!4180723))))

(declare-fun b!6951595 () Bool)

(assert (=> b!6951595 (= e!4180724 e!4180721)))

(assert (=> b!6951595 (= c!1289358 (is-Union!17028 rInner!765))))

(declare-fun b!6951596 () Bool)

(assert (=> b!6951596 (= e!4180726 e!4180722)))

(declare-fun res!2836203 () Bool)

(assert (=> b!6951596 (=> (not res!2836203) (not e!4180722))))

(assert (=> b!6951596 (= res!2836203 call!631340)))

(assert (= (and d!2169128 (not res!2836205)) b!6951592))

(assert (= (and b!6951592 c!1289359) b!6951594))

(assert (= (and b!6951592 (not c!1289359)) b!6951595))

(assert (= (and b!6951594 res!2836207) b!6951593))

(assert (= (and b!6951595 c!1289358) b!6951588))

(assert (= (and b!6951595 (not c!1289358)) b!6951590))

(assert (= (and b!6951588 res!2836206) b!6951591))

(assert (= (and b!6951590 (not res!2836204)) b!6951596))

(assert (= (and b!6951596 res!2836203) b!6951589))

(assert (= (or b!6951588 b!6951589) bm!631335))

(assert (= (or b!6951591 b!6951596) bm!631334))

(assert (= (or b!6951593 bm!631334) bm!631333))

(declare-fun m!7652514 () Bool)

(assert (=> bm!631333 m!7652514))

(declare-fun m!7652516 () Bool)

(assert (=> bm!631335 m!7652516))

(declare-fun m!7652518 () Bool)

(assert (=> b!6951594 m!7652518))

(assert (=> start!667196 d!2169128))

(declare-fun b!6951597 () Bool)

(declare-fun res!2836211 () Bool)

(declare-fun e!4180732 () Bool)

(assert (=> b!6951597 (=> (not res!2836211) (not e!4180732))))

(declare-fun call!631342 () Bool)

(assert (=> b!6951597 (= res!2836211 call!631342)))

(declare-fun e!4180728 () Bool)

(assert (=> b!6951597 (= e!4180728 e!4180732)))

(declare-fun b!6951598 () Bool)

(declare-fun e!4180729 () Bool)

(assert (=> b!6951598 (= e!4180729 call!631342)))

(declare-fun d!2169130 () Bool)

(declare-fun res!2836210 () Bool)

(declare-fun e!4180734 () Bool)

(assert (=> d!2169130 (=> res!2836210 e!4180734)))

(assert (=> d!2169130 (= res!2836210 (is-ElementMatch!17028 lt!2477972))))

(assert (=> d!2169130 (= (validRegex!8734 lt!2477972) e!4180734)))

(declare-fun b!6951599 () Bool)

(declare-fun res!2836209 () Bool)

(declare-fun e!4180733 () Bool)

(assert (=> b!6951599 (=> res!2836209 e!4180733)))

(assert (=> b!6951599 (= res!2836209 (not (is-Concat!25873 lt!2477972)))))

(assert (=> b!6951599 (= e!4180728 e!4180733)))

(declare-fun bm!631336 () Bool)

(declare-fun c!1289361 () Bool)

(declare-fun c!1289360 () Bool)

(declare-fun call!631341 () Bool)

(assert (=> bm!631336 (= call!631341 (validRegex!8734 (ite c!1289361 (reg!17357 lt!2477972) (ite c!1289360 (regTwo!34569 lt!2477972) (regOne!34568 lt!2477972)))))))

(declare-fun b!6951600 () Bool)

(declare-fun call!631343 () Bool)

(assert (=> b!6951600 (= e!4180732 call!631343)))

(declare-fun bm!631337 () Bool)

(assert (=> bm!631337 (= call!631343 call!631341)))

(declare-fun b!6951601 () Bool)

(declare-fun e!4180731 () Bool)

(assert (=> b!6951601 (= e!4180734 e!4180731)))

(assert (=> b!6951601 (= c!1289361 (is-Star!17028 lt!2477972))))

(declare-fun bm!631338 () Bool)

(assert (=> bm!631338 (= call!631342 (validRegex!8734 (ite c!1289360 (regOne!34569 lt!2477972) (regTwo!34568 lt!2477972))))))

(declare-fun b!6951602 () Bool)

(declare-fun e!4180730 () Bool)

(assert (=> b!6951602 (= e!4180730 call!631341)))

(declare-fun b!6951603 () Bool)

(assert (=> b!6951603 (= e!4180731 e!4180730)))

(declare-fun res!2836212 () Bool)

(assert (=> b!6951603 (= res!2836212 (not (nullable!6841 (reg!17357 lt!2477972))))))

(assert (=> b!6951603 (=> (not res!2836212) (not e!4180730))))

(declare-fun b!6951604 () Bool)

(assert (=> b!6951604 (= e!4180731 e!4180728)))

(assert (=> b!6951604 (= c!1289360 (is-Union!17028 lt!2477972))))

(declare-fun b!6951605 () Bool)

(assert (=> b!6951605 (= e!4180733 e!4180729)))

(declare-fun res!2836208 () Bool)

(assert (=> b!6951605 (=> (not res!2836208) (not e!4180729))))

(assert (=> b!6951605 (= res!2836208 call!631343)))

(assert (= (and d!2169130 (not res!2836210)) b!6951601))

(assert (= (and b!6951601 c!1289361) b!6951603))

(assert (= (and b!6951601 (not c!1289361)) b!6951604))

(assert (= (and b!6951603 res!2836212) b!6951602))

(assert (= (and b!6951604 c!1289360) b!6951597))

(assert (= (and b!6951604 (not c!1289360)) b!6951599))

(assert (= (and b!6951597 res!2836211) b!6951600))

(assert (= (and b!6951599 (not res!2836209)) b!6951605))

(assert (= (and b!6951605 res!2836208) b!6951598))

(assert (= (or b!6951597 b!6951598) bm!631338))

(assert (= (or b!6951600 b!6951605) bm!631337))

(assert (= (or b!6951602 bm!631337) bm!631336))

(declare-fun m!7652520 () Bool)

(assert (=> bm!631336 m!7652520))

(declare-fun m!7652522 () Bool)

(assert (=> bm!631338 m!7652522))

(declare-fun m!7652524 () Bool)

(assert (=> b!6951603 m!7652524))

(assert (=> b!6951502 d!2169130))

(declare-fun d!2169132 () Bool)

(assert (=> d!2169132 (= (Exists!4024 lambda!396471) (choose!51798 lambda!396471))))

(declare-fun bs!1857725 () Bool)

(assert (= bs!1857725 d!2169132))

(declare-fun m!7652526 () Bool)

(assert (=> bs!1857725 m!7652526))

(assert (=> b!6951496 d!2169132))

(declare-fun d!2169134 () Bool)

(declare-fun nullableFct!2560 (Regex!17028) Bool)

(assert (=> d!2169134 (= (nullable!6841 rInner!765) (nullableFct!2560 rInner!765))))

(declare-fun bs!1857726 () Bool)

(assert (= bs!1857726 d!2169134))

(declare-fun m!7652528 () Bool)

(assert (=> bs!1857726 m!7652528))

(assert (=> b!6951494 d!2169134))

(assert (=> b!6951495 d!2169132))

(declare-fun d!2169136 () Bool)

(assert (=> d!2169136 (= (matchR!9145 lt!2477972 (_2!37184 lt!2477969)) (matchRSpec!4061 lt!2477972 (_2!37184 lt!2477969)))))

(declare-fun lt!2477990 () Unit!160744)

(declare-fun choose!51799 (Regex!17028 List!66781) Unit!160744)

(assert (=> d!2169136 (= lt!2477990 (choose!51799 lt!2477972 (_2!37184 lt!2477969)))))

(assert (=> d!2169136 (validRegex!8734 lt!2477972)))

(assert (=> d!2169136 (= (mainMatchTheorem!4057 lt!2477972 (_2!37184 lt!2477969)) lt!2477990)))

(declare-fun bs!1857727 () Bool)

(assert (= bs!1857727 d!2169136))

(assert (=> bs!1857727 m!7652464))

(assert (=> bs!1857727 m!7652478))

(declare-fun m!7652530 () Bool)

(assert (=> bs!1857727 m!7652530))

(assert (=> bs!1857727 m!7652482))

(assert (=> b!6951500 d!2169136))

(declare-fun bs!1857728 () Bool)

(declare-fun b!6951657 () Bool)

(assert (= bs!1857728 (and b!6951657 b!6951496)))

(declare-fun lambda!396487 () Int)

(assert (=> bs!1857728 (not (= lambda!396487 lambda!396471))))

(declare-fun bs!1857729 () Bool)

(assert (= bs!1857729 (and b!6951657 b!6951499)))

(assert (=> bs!1857729 (= (and (= (_2!37184 lt!2477969) s!10388) (= (reg!17357 lt!2477972) rInner!765) (= lt!2477972 (Star!17028 rInner!765))) (= lambda!396487 lambda!396472))))

(assert (=> b!6951657 true))

(assert (=> b!6951657 true))

(declare-fun bs!1857730 () Bool)

(declare-fun b!6951658 () Bool)

(assert (= bs!1857730 (and b!6951658 b!6951496)))

(declare-fun lambda!396488 () Int)

(assert (=> bs!1857730 (not (= lambda!396488 lambda!396471))))

(declare-fun bs!1857731 () Bool)

(assert (= bs!1857731 (and b!6951658 b!6951499)))

(assert (=> bs!1857731 (not (= lambda!396488 lambda!396472))))

(declare-fun bs!1857732 () Bool)

(assert (= bs!1857732 (and b!6951658 b!6951657)))

(assert (=> bs!1857732 (not (= lambda!396488 lambda!396487))))

(assert (=> b!6951658 true))

(assert (=> b!6951658 true))

(declare-fun d!2169138 () Bool)

(declare-fun c!1289377 () Bool)

(assert (=> d!2169138 (= c!1289377 (is-EmptyExpr!17028 lt!2477972))))

(declare-fun e!4180769 () Bool)

(assert (=> d!2169138 (= (matchRSpec!4061 lt!2477972 (_2!37184 lt!2477969)) e!4180769)))

(declare-fun b!6951656 () Bool)

(declare-fun e!4180772 () Bool)

(assert (=> b!6951656 (= e!4180769 e!4180772)))

(declare-fun res!2836239 () Bool)

(assert (=> b!6951656 (= res!2836239 (not (is-EmptyLang!17028 lt!2477972)))))

(assert (=> b!6951656 (=> (not res!2836239) (not e!4180772))))

(declare-fun e!4180773 () Bool)

(declare-fun call!631354 () Bool)

(assert (=> b!6951657 (= e!4180773 call!631354)))

(declare-fun e!4180771 () Bool)

(assert (=> b!6951658 (= e!4180771 call!631354)))

(declare-fun bm!631349 () Bool)

(declare-fun call!631355 () Bool)

(declare-fun isEmpty!38903 (List!66781) Bool)

(assert (=> bm!631349 (= call!631355 (isEmpty!38903 (_2!37184 lt!2477969)))))

(declare-fun c!1289374 () Bool)

(declare-fun bm!631350 () Bool)

(assert (=> bm!631350 (= call!631354 (Exists!4024 (ite c!1289374 lambda!396487 lambda!396488)))))

(declare-fun b!6951659 () Bool)

(declare-fun c!1289376 () Bool)

(assert (=> b!6951659 (= c!1289376 (is-Union!17028 lt!2477972))))

(declare-fun e!4180770 () Bool)

(declare-fun e!4180767 () Bool)

(assert (=> b!6951659 (= e!4180770 e!4180767)))

(declare-fun b!6951660 () Bool)

(declare-fun e!4180768 () Bool)

(assert (=> b!6951660 (= e!4180767 e!4180768)))

(declare-fun res!2836241 () Bool)

(assert (=> b!6951660 (= res!2836241 (matchRSpec!4061 (regOne!34569 lt!2477972) (_2!37184 lt!2477969)))))

(assert (=> b!6951660 (=> res!2836241 e!4180768)))

(declare-fun b!6951661 () Bool)

(assert (=> b!6951661 (= e!4180770 (= (_2!37184 lt!2477969) (Cons!66657 (c!1289352 lt!2477972) Nil!66657)))))

(declare-fun b!6951662 () Bool)

(assert (=> b!6951662 (= e!4180767 e!4180771)))

(assert (=> b!6951662 (= c!1289374 (is-Star!17028 lt!2477972))))

(declare-fun b!6951663 () Bool)

(declare-fun res!2836240 () Bool)

(assert (=> b!6951663 (=> res!2836240 e!4180773)))

(assert (=> b!6951663 (= res!2836240 call!631355)))

(assert (=> b!6951663 (= e!4180771 e!4180773)))

(declare-fun b!6951664 () Bool)

(declare-fun c!1289375 () Bool)

(assert (=> b!6951664 (= c!1289375 (is-ElementMatch!17028 lt!2477972))))

(assert (=> b!6951664 (= e!4180772 e!4180770)))

(declare-fun b!6951665 () Bool)

(assert (=> b!6951665 (= e!4180769 call!631355)))

(declare-fun b!6951666 () Bool)

(assert (=> b!6951666 (= e!4180768 (matchRSpec!4061 (regTwo!34569 lt!2477972) (_2!37184 lt!2477969)))))

(assert (= (and d!2169138 c!1289377) b!6951665))

(assert (= (and d!2169138 (not c!1289377)) b!6951656))

(assert (= (and b!6951656 res!2836239) b!6951664))

(assert (= (and b!6951664 c!1289375) b!6951661))

(assert (= (and b!6951664 (not c!1289375)) b!6951659))

(assert (= (and b!6951659 c!1289376) b!6951660))

(assert (= (and b!6951659 (not c!1289376)) b!6951662))

(assert (= (and b!6951660 (not res!2836241)) b!6951666))

(assert (= (and b!6951662 c!1289374) b!6951663))

(assert (= (and b!6951662 (not c!1289374)) b!6951658))

(assert (= (and b!6951663 (not res!2836240)) b!6951657))

(assert (= (or b!6951657 b!6951658) bm!631350))

(assert (= (or b!6951665 b!6951663) bm!631349))

(declare-fun m!7652532 () Bool)

(assert (=> bm!631349 m!7652532))

(declare-fun m!7652534 () Bool)

(assert (=> bm!631350 m!7652534))

(declare-fun m!7652536 () Bool)

(assert (=> b!6951660 m!7652536))

(declare-fun m!7652538 () Bool)

(assert (=> b!6951666 m!7652538))

(assert (=> b!6951500 d!2169138))

(declare-fun b!6951684 () Bool)

(declare-fun e!4180786 () List!66781)

(assert (=> b!6951684 (= e!4180786 (_2!37184 lt!2477969))))

(declare-fun b!6951686 () Bool)

(declare-fun res!2836251 () Bool)

(declare-fun e!4180785 () Bool)

(assert (=> b!6951686 (=> (not res!2836251) (not e!4180785))))

(declare-fun lt!2477993 () List!66781)

(declare-fun size!40828 (List!66781) Int)

(assert (=> b!6951686 (= res!2836251 (= (size!40828 lt!2477993) (+ (size!40828 (_1!37184 lt!2477969)) (size!40828 (_2!37184 lt!2477969)))))))

(declare-fun b!6951685 () Bool)

(assert (=> b!6951685 (= e!4180786 (Cons!66657 (h!73105 (_1!37184 lt!2477969)) (++!15059 (t!380524 (_1!37184 lt!2477969)) (_2!37184 lt!2477969))))))

(declare-fun d!2169142 () Bool)

(assert (=> d!2169142 e!4180785))

(declare-fun res!2836252 () Bool)

(assert (=> d!2169142 (=> (not res!2836252) (not e!4180785))))

(declare-fun content!13131 (List!66781) (Set C!34326))

(assert (=> d!2169142 (= res!2836252 (= (content!13131 lt!2477993) (set.union (content!13131 (_1!37184 lt!2477969)) (content!13131 (_2!37184 lt!2477969)))))))

(assert (=> d!2169142 (= lt!2477993 e!4180786)))

(declare-fun c!1289382 () Bool)

(assert (=> d!2169142 (= c!1289382 (is-Nil!66657 (_1!37184 lt!2477969)))))

(assert (=> d!2169142 (= (++!15059 (_1!37184 lt!2477969) (_2!37184 lt!2477969)) lt!2477993)))

(declare-fun b!6951687 () Bool)

(assert (=> b!6951687 (= e!4180785 (or (not (= (_2!37184 lt!2477969) Nil!66657)) (= lt!2477993 (_1!37184 lt!2477969))))))

(assert (= (and d!2169142 c!1289382) b!6951684))

(assert (= (and d!2169142 (not c!1289382)) b!6951685))

(assert (= (and d!2169142 res!2836252) b!6951686))

(assert (= (and b!6951686 res!2836251) b!6951687))

(declare-fun m!7652548 () Bool)

(assert (=> b!6951686 m!7652548))

(declare-fun m!7652550 () Bool)

(assert (=> b!6951686 m!7652550))

(declare-fun m!7652552 () Bool)

(assert (=> b!6951686 m!7652552))

(declare-fun m!7652554 () Bool)

(assert (=> b!6951685 m!7652554))

(declare-fun m!7652556 () Bool)

(assert (=> d!2169142 m!7652556))

(declare-fun m!7652558 () Bool)

(assert (=> d!2169142 m!7652558))

(declare-fun m!7652560 () Bool)

(assert (=> d!2169142 m!7652560))

(assert (=> b!6951500 d!2169142))

(declare-fun d!2169148 () Bool)

(declare-fun lt!2477999 () tuple2!67762)

(declare-fun dynLambda!26580 (Int tuple2!67762) Bool)

(assert (=> d!2169148 (dynLambda!26580 lambda!396472 lt!2477999)))

(declare-fun choose!51800 (Int) tuple2!67762)

(assert (=> d!2169148 (= lt!2477999 (choose!51800 lambda!396472))))

(assert (=> d!2169148 (Exists!4024 lambda!396472)))

(assert (=> d!2169148 (= (pickWitness!359 lambda!396472) lt!2477999)))

(declare-fun b_lambda!260403 () Bool)

(assert (=> (not b_lambda!260403) (not d!2169148)))

(declare-fun bs!1857735 () Bool)

(assert (= bs!1857735 d!2169148))

(declare-fun m!7652566 () Bool)

(assert (=> bs!1857735 m!7652566))

(declare-fun m!7652568 () Bool)

(assert (=> bs!1857735 m!7652568))

(assert (=> bs!1857735 m!7652462))

(assert (=> b!6951500 d!2169148))

(declare-fun b!6951716 () Bool)

(declare-fun e!4180807 () Bool)

(declare-fun derivativeStep!5481 (Regex!17028 C!34326) Regex!17028)

(declare-fun head!13934 (List!66781) C!34326)

(declare-fun tail!12986 (List!66781) List!66781)

(assert (=> b!6951716 (= e!4180807 (matchR!9145 (derivativeStep!5481 lt!2477972 (head!13934 (_2!37184 lt!2477969))) (tail!12986 (_2!37184 lt!2477969))))))

(declare-fun b!6951718 () Bool)

(declare-fun e!4180805 () Bool)

(assert (=> b!6951718 (= e!4180805 (= (head!13934 (_2!37184 lt!2477969)) (c!1289352 lt!2477972)))))

(declare-fun b!6951719 () Bool)

(declare-fun res!2836274 () Bool)

(declare-fun e!4180804 () Bool)

(assert (=> b!6951719 (=> res!2836274 e!4180804)))

(assert (=> b!6951719 (= res!2836274 (not (isEmpty!38903 (tail!12986 (_2!37184 lt!2477969)))))))

(declare-fun b!6951720 () Bool)

(declare-fun res!2836269 () Bool)

(declare-fun e!4180803 () Bool)

(assert (=> b!6951720 (=> res!2836269 e!4180803)))

(assert (=> b!6951720 (= res!2836269 e!4180805)))

(declare-fun res!2836272 () Bool)

(assert (=> b!6951720 (=> (not res!2836272) (not e!4180805))))

(declare-fun lt!2478002 () Bool)

(assert (=> b!6951720 (= res!2836272 lt!2478002)))

(declare-fun b!6951721 () Bool)

(assert (=> b!6951721 (= e!4180804 (not (= (head!13934 (_2!37184 lt!2477969)) (c!1289352 lt!2477972))))))

(declare-fun b!6951722 () Bool)

(declare-fun res!2836275 () Bool)

(assert (=> b!6951722 (=> res!2836275 e!4180803)))

(assert (=> b!6951722 (= res!2836275 (not (is-ElementMatch!17028 lt!2477972)))))

(declare-fun e!4180806 () Bool)

(assert (=> b!6951722 (= e!4180806 e!4180803)))

(declare-fun b!6951723 () Bool)

(declare-fun e!4180802 () Bool)

(assert (=> b!6951723 (= e!4180802 e!4180804)))

(declare-fun res!2836271 () Bool)

(assert (=> b!6951723 (=> res!2836271 e!4180804)))

(declare-fun call!631361 () Bool)

(assert (=> b!6951723 (= res!2836271 call!631361)))

(declare-fun b!6951724 () Bool)

(assert (=> b!6951724 (= e!4180806 (not lt!2478002))))

(declare-fun b!6951725 () Bool)

(declare-fun res!2836273 () Bool)

(assert (=> b!6951725 (=> (not res!2836273) (not e!4180805))))

(assert (=> b!6951725 (= res!2836273 (not call!631361))))

(declare-fun b!6951726 () Bool)

(declare-fun e!4180801 () Bool)

(assert (=> b!6951726 (= e!4180801 e!4180806)))

(declare-fun c!1289389 () Bool)

(assert (=> b!6951726 (= c!1289389 (is-EmptyLang!17028 lt!2477972))))

(declare-fun b!6951727 () Bool)

(assert (=> b!6951727 (= e!4180807 (nullable!6841 lt!2477972))))

(declare-fun b!6951728 () Bool)

(assert (=> b!6951728 (= e!4180803 e!4180802)))

(declare-fun res!2836270 () Bool)

(assert (=> b!6951728 (=> (not res!2836270) (not e!4180802))))

(assert (=> b!6951728 (= res!2836270 (not lt!2478002))))

(declare-fun d!2169152 () Bool)

(assert (=> d!2169152 e!4180801))

(declare-fun c!1289391 () Bool)

(assert (=> d!2169152 (= c!1289391 (is-EmptyExpr!17028 lt!2477972))))

(assert (=> d!2169152 (= lt!2478002 e!4180807)))

(declare-fun c!1289390 () Bool)

(assert (=> d!2169152 (= c!1289390 (isEmpty!38903 (_2!37184 lt!2477969)))))

(assert (=> d!2169152 (validRegex!8734 lt!2477972)))

(assert (=> d!2169152 (= (matchR!9145 lt!2477972 (_2!37184 lt!2477969)) lt!2478002)))

(declare-fun b!6951717 () Bool)

(declare-fun res!2836276 () Bool)

(assert (=> b!6951717 (=> (not res!2836276) (not e!4180805))))

(assert (=> b!6951717 (= res!2836276 (isEmpty!38903 (tail!12986 (_2!37184 lt!2477969))))))

(declare-fun b!6951729 () Bool)

(assert (=> b!6951729 (= e!4180801 (= lt!2478002 call!631361))))

(declare-fun bm!631356 () Bool)

(assert (=> bm!631356 (= call!631361 (isEmpty!38903 (_2!37184 lt!2477969)))))

(assert (= (and d!2169152 c!1289390) b!6951727))

(assert (= (and d!2169152 (not c!1289390)) b!6951716))

(assert (= (and d!2169152 c!1289391) b!6951729))

(assert (= (and d!2169152 (not c!1289391)) b!6951726))

(assert (= (and b!6951726 c!1289389) b!6951724))

(assert (= (and b!6951726 (not c!1289389)) b!6951722))

(assert (= (and b!6951722 (not res!2836275)) b!6951720))

(assert (= (and b!6951720 res!2836272) b!6951725))

(assert (= (and b!6951725 res!2836273) b!6951717))

(assert (= (and b!6951717 res!2836276) b!6951718))

(assert (= (and b!6951720 (not res!2836269)) b!6951728))

(assert (= (and b!6951728 res!2836270) b!6951723))

(assert (= (and b!6951723 (not res!2836271)) b!6951719))

(assert (= (and b!6951719 (not res!2836274)) b!6951721))

(assert (= (or b!6951729 b!6951723 b!6951725) bm!631356))

(declare-fun m!7652570 () Bool)

(assert (=> b!6951721 m!7652570))

(declare-fun m!7652572 () Bool)

(assert (=> b!6951719 m!7652572))

(assert (=> b!6951719 m!7652572))

(declare-fun m!7652574 () Bool)

(assert (=> b!6951719 m!7652574))

(assert (=> bm!631356 m!7652532))

(assert (=> b!6951718 m!7652570))

(assert (=> d!2169152 m!7652532))

(assert (=> d!2169152 m!7652482))

(declare-fun m!7652576 () Bool)

(assert (=> b!6951727 m!7652576))

(assert (=> b!6951716 m!7652570))

(assert (=> b!6951716 m!7652570))

(declare-fun m!7652578 () Bool)

(assert (=> b!6951716 m!7652578))

(assert (=> b!6951716 m!7652572))

(assert (=> b!6951716 m!7652578))

(assert (=> b!6951716 m!7652572))

(declare-fun m!7652580 () Bool)

(assert (=> b!6951716 m!7652580))

(assert (=> b!6951717 m!7652572))

(assert (=> b!6951717 m!7652572))

(assert (=> b!6951717 m!7652574))

(assert (=> b!6951500 d!2169152))

(declare-fun bs!1857736 () Bool)

(declare-fun b!6951747 () Bool)

(assert (= bs!1857736 (and b!6951747 b!6951496)))

(declare-fun lambda!396489 () Int)

(assert (=> bs!1857736 (not (= lambda!396489 lambda!396471))))

(declare-fun bs!1857737 () Bool)

(assert (= bs!1857737 (and b!6951747 b!6951499)))

(assert (=> bs!1857737 (= (and (= (_1!37184 lt!2477969) s!10388) (= (reg!17357 rInner!765) rInner!765) (= rInner!765 (Star!17028 rInner!765))) (= lambda!396489 lambda!396472))))

(declare-fun bs!1857738 () Bool)

(assert (= bs!1857738 (and b!6951747 b!6951657)))

(assert (=> bs!1857738 (= (and (= (_1!37184 lt!2477969) (_2!37184 lt!2477969)) (= (reg!17357 rInner!765) (reg!17357 lt!2477972)) (= rInner!765 lt!2477972)) (= lambda!396489 lambda!396487))))

(declare-fun bs!1857739 () Bool)

(assert (= bs!1857739 (and b!6951747 b!6951658)))

(assert (=> bs!1857739 (not (= lambda!396489 lambda!396488))))

(assert (=> b!6951747 true))

(assert (=> b!6951747 true))

(declare-fun bs!1857740 () Bool)

(declare-fun b!6951748 () Bool)

(assert (= bs!1857740 (and b!6951748 b!6951496)))

(declare-fun lambda!396490 () Int)

(assert (=> bs!1857740 (not (= lambda!396490 lambda!396471))))

(declare-fun bs!1857741 () Bool)

(assert (= bs!1857741 (and b!6951748 b!6951747)))

(assert (=> bs!1857741 (not (= lambda!396490 lambda!396489))))

(declare-fun bs!1857742 () Bool)

(assert (= bs!1857742 (and b!6951748 b!6951658)))

(assert (=> bs!1857742 (= (and (= (_1!37184 lt!2477969) (_2!37184 lt!2477969)) (= (regOne!34568 rInner!765) (regOne!34568 lt!2477972)) (= (regTwo!34568 rInner!765) (regTwo!34568 lt!2477972))) (= lambda!396490 lambda!396488))))

(declare-fun bs!1857743 () Bool)

(assert (= bs!1857743 (and b!6951748 b!6951657)))

(assert (=> bs!1857743 (not (= lambda!396490 lambda!396487))))

(declare-fun bs!1857744 () Bool)

(assert (= bs!1857744 (and b!6951748 b!6951499)))

(assert (=> bs!1857744 (not (= lambda!396490 lambda!396472))))

(assert (=> b!6951748 true))

(assert (=> b!6951748 true))

(declare-fun d!2169154 () Bool)

(declare-fun c!1289401 () Bool)

(assert (=> d!2169154 (= c!1289401 (is-EmptyExpr!17028 rInner!765))))

(declare-fun e!4180820 () Bool)

(assert (=> d!2169154 (= (matchRSpec!4061 rInner!765 (_1!37184 lt!2477969)) e!4180820)))

(declare-fun b!6951746 () Bool)

(declare-fun e!4180823 () Bool)

(assert (=> b!6951746 (= e!4180820 e!4180823)))

(declare-fun res!2836281 () Bool)

(assert (=> b!6951746 (= res!2836281 (not (is-EmptyLang!17028 rInner!765)))))

(assert (=> b!6951746 (=> (not res!2836281) (not e!4180823))))

(declare-fun e!4180824 () Bool)

(declare-fun call!631362 () Bool)

(assert (=> b!6951747 (= e!4180824 call!631362)))

(declare-fun e!4180822 () Bool)

(assert (=> b!6951748 (= e!4180822 call!631362)))

(declare-fun bm!631357 () Bool)

(declare-fun call!631363 () Bool)

(assert (=> bm!631357 (= call!631363 (isEmpty!38903 (_1!37184 lt!2477969)))))

(declare-fun c!1289398 () Bool)

(declare-fun bm!631358 () Bool)

(assert (=> bm!631358 (= call!631362 (Exists!4024 (ite c!1289398 lambda!396489 lambda!396490)))))

(declare-fun b!6951749 () Bool)

(declare-fun c!1289400 () Bool)

(assert (=> b!6951749 (= c!1289400 (is-Union!17028 rInner!765))))

(declare-fun e!4180821 () Bool)

(declare-fun e!4180818 () Bool)

(assert (=> b!6951749 (= e!4180821 e!4180818)))

(declare-fun b!6951750 () Bool)

(declare-fun e!4180819 () Bool)

(assert (=> b!6951750 (= e!4180818 e!4180819)))

(declare-fun res!2836283 () Bool)

(assert (=> b!6951750 (= res!2836283 (matchRSpec!4061 (regOne!34569 rInner!765) (_1!37184 lt!2477969)))))

(assert (=> b!6951750 (=> res!2836283 e!4180819)))

(declare-fun b!6951751 () Bool)

(assert (=> b!6951751 (= e!4180821 (= (_1!37184 lt!2477969) (Cons!66657 (c!1289352 rInner!765) Nil!66657)))))

(declare-fun b!6951752 () Bool)

(assert (=> b!6951752 (= e!4180818 e!4180822)))

(assert (=> b!6951752 (= c!1289398 (is-Star!17028 rInner!765))))

(declare-fun b!6951753 () Bool)

(declare-fun res!2836282 () Bool)

(assert (=> b!6951753 (=> res!2836282 e!4180824)))

(assert (=> b!6951753 (= res!2836282 call!631363)))

(assert (=> b!6951753 (= e!4180822 e!4180824)))

(declare-fun b!6951754 () Bool)

(declare-fun c!1289399 () Bool)

(assert (=> b!6951754 (= c!1289399 (is-ElementMatch!17028 rInner!765))))

(assert (=> b!6951754 (= e!4180823 e!4180821)))

(declare-fun b!6951755 () Bool)

(assert (=> b!6951755 (= e!4180820 call!631363)))

(declare-fun b!6951756 () Bool)

(assert (=> b!6951756 (= e!4180819 (matchRSpec!4061 (regTwo!34569 rInner!765) (_1!37184 lt!2477969)))))

(assert (= (and d!2169154 c!1289401) b!6951755))

(assert (= (and d!2169154 (not c!1289401)) b!6951746))

(assert (= (and b!6951746 res!2836281) b!6951754))

(assert (= (and b!6951754 c!1289399) b!6951751))

(assert (= (and b!6951754 (not c!1289399)) b!6951749))

(assert (= (and b!6951749 c!1289400) b!6951750))

(assert (= (and b!6951749 (not c!1289400)) b!6951752))

(assert (= (and b!6951750 (not res!2836283)) b!6951756))

(assert (= (and b!6951752 c!1289398) b!6951753))

(assert (= (and b!6951752 (not c!1289398)) b!6951748))

(assert (= (and b!6951753 (not res!2836282)) b!6951747))

(assert (= (or b!6951747 b!6951748) bm!631358))

(assert (= (or b!6951755 b!6951753) bm!631357))

(declare-fun m!7652582 () Bool)

(assert (=> bm!631357 m!7652582))

(declare-fun m!7652584 () Bool)

(assert (=> bm!631358 m!7652584))

(declare-fun m!7652586 () Bool)

(assert (=> b!6951750 m!7652586))

(declare-fun m!7652588 () Bool)

(assert (=> b!6951756 m!7652588))

(assert (=> b!6951500 d!2169154))

(declare-fun d!2169156 () Bool)

(assert (=> d!2169156 (= (matchR!9145 rInner!765 (_1!37184 lt!2477969)) (matchRSpec!4061 rInner!765 (_1!37184 lt!2477969)))))

(declare-fun lt!2478003 () Unit!160744)

(assert (=> d!2169156 (= lt!2478003 (choose!51799 rInner!765 (_1!37184 lt!2477969)))))

(assert (=> d!2169156 (validRegex!8734 rInner!765)))

(assert (=> d!2169156 (= (mainMatchTheorem!4057 rInner!765 (_1!37184 lt!2477969)) lt!2478003)))

(declare-fun bs!1857745 () Bool)

(assert (= bs!1857745 d!2169156))

(assert (=> bs!1857745 m!7652470))

(assert (=> bs!1857745 m!7652468))

(declare-fun m!7652590 () Bool)

(assert (=> bs!1857745 m!7652590))

(assert (=> bs!1857745 m!7652484))

(assert (=> b!6951500 d!2169156))

(declare-fun b!6951769 () Bool)

(declare-fun e!4180837 () Bool)

(assert (=> b!6951769 (= e!4180837 (matchR!9145 (derivativeStep!5481 rInner!765 (head!13934 (_1!37184 lt!2477969))) (tail!12986 (_1!37184 lt!2477969))))))

(declare-fun b!6951771 () Bool)

(declare-fun e!4180835 () Bool)

(assert (=> b!6951771 (= e!4180835 (= (head!13934 (_1!37184 lt!2477969)) (c!1289352 rInner!765)))))

(declare-fun b!6951772 () Bool)

(declare-fun res!2836297 () Bool)

(declare-fun e!4180834 () Bool)

(assert (=> b!6951772 (=> res!2836297 e!4180834)))

(assert (=> b!6951772 (= res!2836297 (not (isEmpty!38903 (tail!12986 (_1!37184 lt!2477969)))))))

(declare-fun b!6951773 () Bool)

(declare-fun res!2836292 () Bool)

(declare-fun e!4180833 () Bool)

(assert (=> b!6951773 (=> res!2836292 e!4180833)))

(assert (=> b!6951773 (= res!2836292 e!4180835)))

(declare-fun res!2836295 () Bool)

(assert (=> b!6951773 (=> (not res!2836295) (not e!4180835))))

(declare-fun lt!2478004 () Bool)

(assert (=> b!6951773 (= res!2836295 lt!2478004)))

(declare-fun b!6951774 () Bool)

(assert (=> b!6951774 (= e!4180834 (not (= (head!13934 (_1!37184 lt!2477969)) (c!1289352 rInner!765))))))

(declare-fun b!6951775 () Bool)

(declare-fun res!2836298 () Bool)

(assert (=> b!6951775 (=> res!2836298 e!4180833)))

(assert (=> b!6951775 (= res!2836298 (not (is-ElementMatch!17028 rInner!765)))))

(declare-fun e!4180836 () Bool)

(assert (=> b!6951775 (= e!4180836 e!4180833)))

(declare-fun b!6951776 () Bool)

(declare-fun e!4180832 () Bool)

(assert (=> b!6951776 (= e!4180832 e!4180834)))

(declare-fun res!2836294 () Bool)

(assert (=> b!6951776 (=> res!2836294 e!4180834)))

(declare-fun call!631364 () Bool)

(assert (=> b!6951776 (= res!2836294 call!631364)))

(declare-fun b!6951777 () Bool)

(assert (=> b!6951777 (= e!4180836 (not lt!2478004))))

(declare-fun b!6951778 () Bool)

(declare-fun res!2836296 () Bool)

(assert (=> b!6951778 (=> (not res!2836296) (not e!4180835))))

(assert (=> b!6951778 (= res!2836296 (not call!631364))))

(declare-fun b!6951779 () Bool)

(declare-fun e!4180831 () Bool)

(assert (=> b!6951779 (= e!4180831 e!4180836)))

(declare-fun c!1289404 () Bool)

(assert (=> b!6951779 (= c!1289404 (is-EmptyLang!17028 rInner!765))))

(declare-fun b!6951780 () Bool)

(assert (=> b!6951780 (= e!4180837 (nullable!6841 rInner!765))))

(declare-fun b!6951781 () Bool)

(assert (=> b!6951781 (= e!4180833 e!4180832)))

(declare-fun res!2836293 () Bool)

(assert (=> b!6951781 (=> (not res!2836293) (not e!4180832))))

(assert (=> b!6951781 (= res!2836293 (not lt!2478004))))

(declare-fun d!2169158 () Bool)

(assert (=> d!2169158 e!4180831))

(declare-fun c!1289406 () Bool)

(assert (=> d!2169158 (= c!1289406 (is-EmptyExpr!17028 rInner!765))))

(assert (=> d!2169158 (= lt!2478004 e!4180837)))

(declare-fun c!1289405 () Bool)

(assert (=> d!2169158 (= c!1289405 (isEmpty!38903 (_1!37184 lt!2477969)))))

(assert (=> d!2169158 (validRegex!8734 rInner!765)))

(assert (=> d!2169158 (= (matchR!9145 rInner!765 (_1!37184 lt!2477969)) lt!2478004)))

(declare-fun b!6951770 () Bool)

(declare-fun res!2836299 () Bool)

(assert (=> b!6951770 (=> (not res!2836299) (not e!4180835))))

(assert (=> b!6951770 (= res!2836299 (isEmpty!38903 (tail!12986 (_1!37184 lt!2477969))))))

(declare-fun b!6951782 () Bool)

(assert (=> b!6951782 (= e!4180831 (= lt!2478004 call!631364))))

(declare-fun bm!631359 () Bool)

(assert (=> bm!631359 (= call!631364 (isEmpty!38903 (_1!37184 lt!2477969)))))

(assert (= (and d!2169158 c!1289405) b!6951780))

(assert (= (and d!2169158 (not c!1289405)) b!6951769))

(assert (= (and d!2169158 c!1289406) b!6951782))

(assert (= (and d!2169158 (not c!1289406)) b!6951779))

(assert (= (and b!6951779 c!1289404) b!6951777))

(assert (= (and b!6951779 (not c!1289404)) b!6951775))

(assert (= (and b!6951775 (not res!2836298)) b!6951773))

(assert (= (and b!6951773 res!2836295) b!6951778))

(assert (= (and b!6951778 res!2836296) b!6951770))

(assert (= (and b!6951770 res!2836299) b!6951771))

(assert (= (and b!6951773 (not res!2836292)) b!6951781))

(assert (= (and b!6951781 res!2836293) b!6951776))

(assert (= (and b!6951776 (not res!2836294)) b!6951772))

(assert (= (and b!6951772 (not res!2836297)) b!6951774))

(assert (= (or b!6951782 b!6951776 b!6951778) bm!631359))

(declare-fun m!7652592 () Bool)

(assert (=> b!6951774 m!7652592))

(declare-fun m!7652594 () Bool)

(assert (=> b!6951772 m!7652594))

(assert (=> b!6951772 m!7652594))

(declare-fun m!7652596 () Bool)

(assert (=> b!6951772 m!7652596))

(assert (=> bm!631359 m!7652582))

(assert (=> b!6951771 m!7652592))

(assert (=> d!2169158 m!7652582))

(assert (=> d!2169158 m!7652484))

(assert (=> b!6951780 m!7652480))

(assert (=> b!6951769 m!7652592))

(assert (=> b!6951769 m!7652592))

(declare-fun m!7652598 () Bool)

(assert (=> b!6951769 m!7652598))

(assert (=> b!6951769 m!7652594))

(assert (=> b!6951769 m!7652598))

(assert (=> b!6951769 m!7652594))

(declare-fun m!7652600 () Bool)

(assert (=> b!6951769 m!7652600))

(assert (=> b!6951770 m!7652594))

(assert (=> b!6951770 m!7652594))

(assert (=> b!6951770 m!7652596))

(assert (=> b!6951500 d!2169158))

(declare-fun e!4180840 () Bool)

(assert (=> b!6951498 (= tp!1916350 e!4180840)))

(declare-fun b!6951794 () Bool)

(declare-fun tp!1916384 () Bool)

(declare-fun tp!1916382 () Bool)

(assert (=> b!6951794 (= e!4180840 (and tp!1916384 tp!1916382))))

(declare-fun b!6951793 () Bool)

(assert (=> b!6951793 (= e!4180840 tp_is_empty!43281)))

(declare-fun b!6951796 () Bool)

(declare-fun tp!1916383 () Bool)

(declare-fun tp!1916381 () Bool)

(assert (=> b!6951796 (= e!4180840 (and tp!1916383 tp!1916381))))

(declare-fun b!6951795 () Bool)

(declare-fun tp!1916380 () Bool)

(assert (=> b!6951795 (= e!4180840 tp!1916380)))

(assert (= (and b!6951498 (is-ElementMatch!17028 (regOne!34568 rInner!765))) b!6951793))

(assert (= (and b!6951498 (is-Concat!25873 (regOne!34568 rInner!765))) b!6951794))

(assert (= (and b!6951498 (is-Star!17028 (regOne!34568 rInner!765))) b!6951795))

(assert (= (and b!6951498 (is-Union!17028 (regOne!34568 rInner!765))) b!6951796))

(declare-fun e!4180841 () Bool)

(assert (=> b!6951498 (= tp!1916348 e!4180841)))

(declare-fun b!6951798 () Bool)

(declare-fun tp!1916389 () Bool)

(declare-fun tp!1916387 () Bool)

(assert (=> b!6951798 (= e!4180841 (and tp!1916389 tp!1916387))))

(declare-fun b!6951797 () Bool)

(assert (=> b!6951797 (= e!4180841 tp_is_empty!43281)))

(declare-fun b!6951800 () Bool)

(declare-fun tp!1916388 () Bool)

(declare-fun tp!1916386 () Bool)

(assert (=> b!6951800 (= e!4180841 (and tp!1916388 tp!1916386))))

(declare-fun b!6951799 () Bool)

(declare-fun tp!1916385 () Bool)

(assert (=> b!6951799 (= e!4180841 tp!1916385)))

(assert (= (and b!6951498 (is-ElementMatch!17028 (regTwo!34568 rInner!765))) b!6951797))

(assert (= (and b!6951498 (is-Concat!25873 (regTwo!34568 rInner!765))) b!6951798))

(assert (= (and b!6951498 (is-Star!17028 (regTwo!34568 rInner!765))) b!6951799))

(assert (= (and b!6951498 (is-Union!17028 (regTwo!34568 rInner!765))) b!6951800))

(declare-fun b!6951805 () Bool)

(declare-fun e!4180844 () Bool)

(declare-fun tp!1916392 () Bool)

(assert (=> b!6951805 (= e!4180844 (and tp_is_empty!43281 tp!1916392))))

(assert (=> b!6951504 (= tp!1916346 e!4180844)))

(assert (= (and b!6951504 (is-Cons!66657 (t!380524 s!10388))) b!6951805))

(declare-fun e!4180845 () Bool)

(assert (=> b!6951497 (= tp!1916347 e!4180845)))

(declare-fun b!6951807 () Bool)

(declare-fun tp!1916397 () Bool)

(declare-fun tp!1916395 () Bool)

(assert (=> b!6951807 (= e!4180845 (and tp!1916397 tp!1916395))))

(declare-fun b!6951806 () Bool)

(assert (=> b!6951806 (= e!4180845 tp_is_empty!43281)))

(declare-fun b!6951809 () Bool)

(declare-fun tp!1916396 () Bool)

(declare-fun tp!1916394 () Bool)

(assert (=> b!6951809 (= e!4180845 (and tp!1916396 tp!1916394))))

(declare-fun b!6951808 () Bool)

(declare-fun tp!1916393 () Bool)

(assert (=> b!6951808 (= e!4180845 tp!1916393)))

(assert (= (and b!6951497 (is-ElementMatch!17028 (reg!17357 rInner!765))) b!6951806))

(assert (= (and b!6951497 (is-Concat!25873 (reg!17357 rInner!765))) b!6951807))

(assert (= (and b!6951497 (is-Star!17028 (reg!17357 rInner!765))) b!6951808))

(assert (= (and b!6951497 (is-Union!17028 (reg!17357 rInner!765))) b!6951809))

(declare-fun e!4180846 () Bool)

(assert (=> b!6951503 (= tp!1916349 e!4180846)))

(declare-fun b!6951811 () Bool)

(declare-fun tp!1916402 () Bool)

(declare-fun tp!1916400 () Bool)

(assert (=> b!6951811 (= e!4180846 (and tp!1916402 tp!1916400))))

(declare-fun b!6951810 () Bool)

(assert (=> b!6951810 (= e!4180846 tp_is_empty!43281)))

(declare-fun b!6951813 () Bool)

(declare-fun tp!1916401 () Bool)

(declare-fun tp!1916399 () Bool)

(assert (=> b!6951813 (= e!4180846 (and tp!1916401 tp!1916399))))

(declare-fun b!6951812 () Bool)

(declare-fun tp!1916398 () Bool)

(assert (=> b!6951812 (= e!4180846 tp!1916398)))

(assert (= (and b!6951503 (is-ElementMatch!17028 (regOne!34569 rInner!765))) b!6951810))

(assert (= (and b!6951503 (is-Concat!25873 (regOne!34569 rInner!765))) b!6951811))

(assert (= (and b!6951503 (is-Star!17028 (regOne!34569 rInner!765))) b!6951812))

(assert (= (and b!6951503 (is-Union!17028 (regOne!34569 rInner!765))) b!6951813))

(declare-fun e!4180847 () Bool)

(assert (=> b!6951503 (= tp!1916351 e!4180847)))

(declare-fun b!6951815 () Bool)

(declare-fun tp!1916407 () Bool)

(declare-fun tp!1916405 () Bool)

(assert (=> b!6951815 (= e!4180847 (and tp!1916407 tp!1916405))))

(declare-fun b!6951814 () Bool)

(assert (=> b!6951814 (= e!4180847 tp_is_empty!43281)))

(declare-fun b!6951817 () Bool)

(declare-fun tp!1916406 () Bool)

(declare-fun tp!1916404 () Bool)

(assert (=> b!6951817 (= e!4180847 (and tp!1916406 tp!1916404))))

(declare-fun b!6951816 () Bool)

(declare-fun tp!1916403 () Bool)

(assert (=> b!6951816 (= e!4180847 tp!1916403)))

(assert (= (and b!6951503 (is-ElementMatch!17028 (regTwo!34569 rInner!765))) b!6951814))

(assert (= (and b!6951503 (is-Concat!25873 (regTwo!34569 rInner!765))) b!6951815))

(assert (= (and b!6951503 (is-Star!17028 (regTwo!34569 rInner!765))) b!6951816))

(assert (= (and b!6951503 (is-Union!17028 (regTwo!34569 rInner!765))) b!6951817))

(declare-fun b_lambda!260405 () Bool)

(assert (= b_lambda!260403 (or b!6951499 b_lambda!260405)))

(declare-fun bs!1857746 () Bool)

(declare-fun d!2169160 () Bool)

(assert (= bs!1857746 (and d!2169160 b!6951499)))

(declare-fun res!2836300 () Bool)

(declare-fun e!4180848 () Bool)

(assert (=> bs!1857746 (=> (not res!2836300) (not e!4180848))))

(assert (=> bs!1857746 (= res!2836300 (= (++!15059 (_1!37184 lt!2477999) (_2!37184 lt!2477999)) s!10388))))

(assert (=> bs!1857746 (= (dynLambda!26580 lambda!396472 lt!2477999) e!4180848)))

(declare-fun b!6951818 () Bool)

(declare-fun res!2836301 () Bool)

(assert (=> b!6951818 (=> (not res!2836301) (not e!4180848))))

(assert (=> b!6951818 (= res!2836301 (not (isEmpty!38903 (_1!37184 lt!2477999))))))

(declare-fun b!6951819 () Bool)

(declare-fun res!2836302 () Bool)

(assert (=> b!6951819 (=> (not res!2836302) (not e!4180848))))

(assert (=> b!6951819 (= res!2836302 (matchRSpec!4061 rInner!765 (_1!37184 lt!2477999)))))

(declare-fun b!6951820 () Bool)

(assert (=> b!6951820 (= e!4180848 (matchRSpec!4061 (Star!17028 rInner!765) (_2!37184 lt!2477999)))))

(assert (= (and bs!1857746 res!2836300) b!6951818))

(assert (= (and b!6951818 res!2836301) b!6951819))

(assert (= (and b!6951819 res!2836302) b!6951820))

(declare-fun m!7652602 () Bool)

(assert (=> bs!1857746 m!7652602))

(declare-fun m!7652604 () Bool)

(assert (=> b!6951818 m!7652604))

(declare-fun m!7652606 () Bool)

(assert (=> b!6951819 m!7652606))

(declare-fun m!7652608 () Bool)

(assert (=> b!6951820 m!7652608))

(assert (=> d!2169148 d!2169160))

(push 1)

(assert (not b!6951719))

(assert (not b!6951820))

(assert (not b!6951796))

(assert (not b!6951817))

(assert (not b!6951721))

(assert (not bm!631335))

(assert (not b!6951770))

(assert tp_is_empty!43281)

(assert (not b!6951750))

(assert (not b!6951798))

(assert (not b!6951727))

(assert (not bm!631338))

(assert (not b!6951685))

(assert (not b!6951800))

(assert (not b!6951660))

(assert (not b!6951807))

(assert (not b!6951717))

(assert (not b!6951716))

(assert (not b!6951795))

(assert (not d!2169136))

(assert (not b!6951772))

(assert (not b!6951771))

(assert (not b!6951812))

(assert (not b!6951815))

(assert (not bs!1857746))

(assert (not d!2169158))

(assert (not b!6951769))

(assert (not b!6951780))

(assert (not d!2169156))

(assert (not bm!631357))

(assert (not b!6951794))

(assert (not d!2169132))

(assert (not d!2169126))

(assert (not b!6951774))

(assert (not b!6951594))

(assert (not d!2169148))

(assert (not bm!631350))

(assert (not b!6951818))

(assert (not bm!631333))

(assert (not d!2169152))

(assert (not bm!631349))

(assert (not b!6951686))

(assert (not d!2169134))

(assert (not b!6951718))

(assert (not b_lambda!260405))

(assert (not bm!631356))

(assert (not d!2169142))

(assert (not b!6951811))

(assert (not bm!631358))

(assert (not b!6951813))

(assert (not b!6951808))

(assert (not b!6951756))

(assert (not b!6951816))

(assert (not b!6951603))

(assert (not bm!631359))

(assert (not b!6951805))

(assert (not bm!631336))

(assert (not b!6951799))

(assert (not b!6951819))

(assert (not b!6951666))

(assert (not b!6951809))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

