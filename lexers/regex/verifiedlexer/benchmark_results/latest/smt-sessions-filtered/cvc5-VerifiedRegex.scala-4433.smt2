; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!235902 () Bool)

(assert start!235902)

(declare-fun b!2406377 () Bool)

(declare-fun res!1022065 () Bool)

(declare-fun e!1532457 () Bool)

(assert (=> b!2406377 (=> res!1022065 e!1532457)))

(declare-datatypes ((C!14274 0))(
  ( (C!14275 (val!8379 Int)) )
))
(declare-datatypes ((Regex!7058 0))(
  ( (ElementMatch!7058 (c!383288 C!14274)) (Concat!11694 (regOne!14628 Regex!7058) (regTwo!14628 Regex!7058)) (EmptyExpr!7058) (Star!7058 (reg!7387 Regex!7058)) (EmptyLang!7058) (Union!7058 (regOne!14629 Regex!7058) (regTwo!14629 Regex!7058)) )
))
(declare-datatypes ((List!28354 0))(
  ( (Nil!28256) (Cons!28256 (h!33657 Regex!7058) (t!208331 List!28354)) )
))
(declare-fun l!9164 () List!28354)

(declare-fun isEmpty!16261 (List!28354) Bool)

(assert (=> b!2406377 (= res!1022065 (isEmpty!16261 l!9164))))

(declare-fun b!2406378 () Bool)

(declare-fun e!1532455 () Bool)

(assert (=> b!2406378 (= e!1532455 (not e!1532457))))

(declare-fun res!1022064 () Bool)

(assert (=> b!2406378 (=> res!1022064 e!1532457)))

(declare-fun r!13927 () Regex!7058)

(assert (=> b!2406378 (= res!1022064 (or (is-Concat!11694 r!13927) (is-EmptyExpr!7058 r!13927)))))

(declare-datatypes ((List!28355 0))(
  ( (Nil!28257) (Cons!28257 (h!33658 C!14274) (t!208332 List!28355)) )
))
(declare-fun s!9460 () List!28355)

(declare-fun matchR!3175 (Regex!7058 List!28355) Bool)

(declare-fun matchRSpec!907 (Regex!7058 List!28355) Bool)

(assert (=> b!2406378 (= (matchR!3175 r!13927 s!9460) (matchRSpec!907 r!13927 s!9460))))

(declare-datatypes ((Unit!41387 0))(
  ( (Unit!41388) )
))
(declare-fun lt!873010 () Unit!41387)

(declare-fun mainMatchTheorem!907 (Regex!7058 List!28355) Unit!41387)

(assert (=> b!2406378 (= lt!873010 (mainMatchTheorem!907 r!13927 s!9460))))

(declare-fun b!2406379 () Bool)

(declare-fun res!1022063 () Bool)

(assert (=> b!2406379 (=> (not res!1022063) (not e!1532455))))

(declare-fun generalisedConcat!159 (List!28354) Regex!7058)

(assert (=> b!2406379 (= res!1022063 (= r!13927 (generalisedConcat!159 l!9164)))))

(declare-fun b!2406380 () Bool)

(declare-fun e!1532454 () Bool)

(assert (=> b!2406380 (= e!1532454 (not (= l!9164 Nil!28256)))))

(declare-fun b!2406381 () Bool)

(declare-fun res!1022067 () Bool)

(assert (=> b!2406381 (=> res!1022067 e!1532454)))

(declare-fun lt!873009 () List!28354)

(assert (=> b!2406381 (= res!1022067 (not (= (generalisedConcat!159 lt!873009) EmptyExpr!7058)))))

(declare-fun b!2406382 () Bool)

(declare-fun e!1532453 () Bool)

(declare-fun tp_is_empty!11529 () Bool)

(declare-fun tp!765716 () Bool)

(assert (=> b!2406382 (= e!1532453 (and tp_is_empty!11529 tp!765716))))

(declare-fun b!2406384 () Bool)

(assert (=> b!2406384 (= e!1532457 e!1532454)))

(declare-fun res!1022066 () Bool)

(assert (=> b!2406384 (=> res!1022066 e!1532454)))

(assert (=> b!2406384 (= res!1022066 (not (isEmpty!16261 lt!873009)))))

(declare-fun tail!3611 (List!28354) List!28354)

(assert (=> b!2406384 (= lt!873009 (tail!3611 l!9164))))

(declare-fun b!2406385 () Bool)

(declare-fun e!1532458 () Bool)

(declare-fun tp!765715 () Bool)

(assert (=> b!2406385 (= e!1532458 tp!765715)))

(declare-fun b!2406386 () Bool)

(declare-fun tp!765720 () Bool)

(declare-fun tp!765719 () Bool)

(assert (=> b!2406386 (= e!1532458 (and tp!765720 tp!765719))))

(declare-fun b!2406387 () Bool)

(assert (=> b!2406387 (= e!1532458 tp_is_empty!11529)))

(declare-fun b!2406388 () Bool)

(declare-fun tp!765721 () Bool)

(declare-fun tp!765717 () Bool)

(assert (=> b!2406388 (= e!1532458 (and tp!765721 tp!765717))))

(declare-fun b!2406383 () Bool)

(declare-fun e!1532456 () Bool)

(declare-fun tp!765718 () Bool)

(declare-fun tp!765714 () Bool)

(assert (=> b!2406383 (= e!1532456 (and tp!765718 tp!765714))))

(declare-fun res!1022068 () Bool)

(assert (=> start!235902 (=> (not res!1022068) (not e!1532455))))

(declare-fun lambda!90526 () Int)

(declare-fun forall!5692 (List!28354 Int) Bool)

(assert (=> start!235902 (= res!1022068 (forall!5692 l!9164 lambda!90526))))

(assert (=> start!235902 e!1532455))

(assert (=> start!235902 e!1532456))

(assert (=> start!235902 e!1532458))

(assert (=> start!235902 e!1532453))

(assert (= (and start!235902 res!1022068) b!2406379))

(assert (= (and b!2406379 res!1022063) b!2406378))

(assert (= (and b!2406378 (not res!1022064)) b!2406377))

(assert (= (and b!2406377 (not res!1022065)) b!2406384))

(assert (= (and b!2406384 (not res!1022066)) b!2406381))

(assert (= (and b!2406381 (not res!1022067)) b!2406380))

(assert (= (and start!235902 (is-Cons!28256 l!9164)) b!2406383))

(assert (= (and start!235902 (is-ElementMatch!7058 r!13927)) b!2406387))

(assert (= (and start!235902 (is-Concat!11694 r!13927)) b!2406388))

(assert (= (and start!235902 (is-Star!7058 r!13927)) b!2406385))

(assert (= (and start!235902 (is-Union!7058 r!13927)) b!2406386))

(assert (= (and start!235902 (is-Cons!28257 s!9460)) b!2406382))

(declare-fun m!2800023 () Bool)

(assert (=> b!2406379 m!2800023))

(declare-fun m!2800025 () Bool)

(assert (=> b!2406381 m!2800025))

(declare-fun m!2800027 () Bool)

(assert (=> b!2406378 m!2800027))

(declare-fun m!2800029 () Bool)

(assert (=> b!2406378 m!2800029))

(declare-fun m!2800031 () Bool)

(assert (=> b!2406378 m!2800031))

(declare-fun m!2800033 () Bool)

(assert (=> start!235902 m!2800033))

(declare-fun m!2800035 () Bool)

(assert (=> b!2406384 m!2800035))

(declare-fun m!2800037 () Bool)

(assert (=> b!2406384 m!2800037))

(declare-fun m!2800039 () Bool)

(assert (=> b!2406377 m!2800039))

(push 1)

(assert (not b!2406379))

(assert (not b!2406382))

(assert (not b!2406386))

(assert tp_is_empty!11529)

(assert (not b!2406385))

(assert (not b!2406378))

(assert (not b!2406377))

(assert (not b!2406381))

(assert (not start!235902))

(assert (not b!2406388))

(assert (not b!2406384))

(assert (not b!2406383))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!700118 () Bool)

(declare-fun res!1022091 () Bool)

(declare-fun e!1532481 () Bool)

(assert (=> d!700118 (=> res!1022091 e!1532481)))

(assert (=> d!700118 (= res!1022091 (is-Nil!28256 l!9164))))

(assert (=> d!700118 (= (forall!5692 l!9164 lambda!90526) e!1532481)))

(declare-fun b!2406429 () Bool)

(declare-fun e!1532482 () Bool)

(assert (=> b!2406429 (= e!1532481 e!1532482)))

(declare-fun res!1022092 () Bool)

(assert (=> b!2406429 (=> (not res!1022092) (not e!1532482))))

(declare-fun dynLambda!12167 (Int Regex!7058) Bool)

(assert (=> b!2406429 (= res!1022092 (dynLambda!12167 lambda!90526 (h!33657 l!9164)))))

(declare-fun b!2406430 () Bool)

(assert (=> b!2406430 (= e!1532482 (forall!5692 (t!208331 l!9164) lambda!90526))))

(assert (= (and d!700118 (not res!1022091)) b!2406429))

(assert (= (and b!2406429 res!1022092) b!2406430))

(declare-fun b_lambda!74427 () Bool)

(assert (=> (not b_lambda!74427) (not b!2406429)))

(declare-fun m!2800059 () Bool)

(assert (=> b!2406429 m!2800059))

(declare-fun m!2800061 () Bool)

(assert (=> b!2406430 m!2800061))

(assert (=> start!235902 d!700118))

(declare-fun d!700122 () Bool)

(assert (=> d!700122 (= (isEmpty!16261 l!9164) (is-Nil!28256 l!9164))))

(assert (=> b!2406377 d!700122))

(declare-fun bm!147006 () Bool)

(declare-fun call!147011 () Bool)

(declare-fun isEmpty!16263 (List!28355) Bool)

(assert (=> bm!147006 (= call!147011 (isEmpty!16263 s!9460))))

(declare-fun b!2406469 () Bool)

(declare-fun e!1532509 () Bool)

(declare-fun derivativeStep!1761 (Regex!7058 C!14274) Regex!7058)

(declare-fun head!5339 (List!28355) C!14274)

(declare-fun tail!3613 (List!28355) List!28355)

(assert (=> b!2406469 (= e!1532509 (matchR!3175 (derivativeStep!1761 r!13927 (head!5339 s!9460)) (tail!3613 s!9460)))))

(declare-fun b!2406470 () Bool)

(declare-fun res!1022116 () Bool)

(declare-fun e!1532506 () Bool)

(assert (=> b!2406470 (=> (not res!1022116) (not e!1532506))))

(assert (=> b!2406470 (= res!1022116 (isEmpty!16263 (tail!3613 s!9460)))))

(declare-fun b!2406471 () Bool)

(declare-fun e!1532507 () Bool)

(declare-fun lt!873021 () Bool)

(assert (=> b!2406471 (= e!1532507 (not lt!873021))))

(declare-fun b!2406472 () Bool)

(declare-fun e!1532503 () Bool)

(assert (=> b!2406472 (= e!1532503 (= lt!873021 call!147011))))

(declare-fun d!700124 () Bool)

(assert (=> d!700124 e!1532503))

(declare-fun c!383301 () Bool)

(assert (=> d!700124 (= c!383301 (is-EmptyExpr!7058 r!13927))))

(assert (=> d!700124 (= lt!873021 e!1532509)))

(declare-fun c!383300 () Bool)

(assert (=> d!700124 (= c!383300 (isEmpty!16263 s!9460))))

(declare-fun validRegex!2782 (Regex!7058) Bool)

(assert (=> d!700124 (validRegex!2782 r!13927)))

(assert (=> d!700124 (= (matchR!3175 r!13927 s!9460) lt!873021)))

(declare-fun b!2406473 () Bool)

(declare-fun nullable!2104 (Regex!7058) Bool)

(assert (=> b!2406473 (= e!1532509 (nullable!2104 r!13927))))

(declare-fun b!2406474 () Bool)

(declare-fun res!1022117 () Bool)

(declare-fun e!1532508 () Bool)

(assert (=> b!2406474 (=> res!1022117 e!1532508)))

(assert (=> b!2406474 (= res!1022117 e!1532506)))

(declare-fun res!1022114 () Bool)

(assert (=> b!2406474 (=> (not res!1022114) (not e!1532506))))

(assert (=> b!2406474 (= res!1022114 lt!873021)))

(declare-fun b!2406475 () Bool)

(assert (=> b!2406475 (= e!1532506 (= (head!5339 s!9460) (c!383288 r!13927)))))

(declare-fun b!2406476 () Bool)

(declare-fun res!1022112 () Bool)

(assert (=> b!2406476 (=> res!1022112 e!1532508)))

(assert (=> b!2406476 (= res!1022112 (not (is-ElementMatch!7058 r!13927)))))

(assert (=> b!2406476 (= e!1532507 e!1532508)))

(declare-fun b!2406477 () Bool)

(declare-fun e!1532504 () Bool)

(declare-fun e!1532505 () Bool)

(assert (=> b!2406477 (= e!1532504 e!1532505)))

(declare-fun res!1022118 () Bool)

(assert (=> b!2406477 (=> res!1022118 e!1532505)))

(assert (=> b!2406477 (= res!1022118 call!147011)))

(declare-fun b!2406478 () Bool)

(declare-fun res!1022115 () Bool)

(assert (=> b!2406478 (=> res!1022115 e!1532505)))

(assert (=> b!2406478 (= res!1022115 (not (isEmpty!16263 (tail!3613 s!9460))))))

(declare-fun b!2406479 () Bool)

(assert (=> b!2406479 (= e!1532505 (not (= (head!5339 s!9460) (c!383288 r!13927))))))

(declare-fun b!2406480 () Bool)

(assert (=> b!2406480 (= e!1532508 e!1532504)))

(declare-fun res!1022113 () Bool)

(assert (=> b!2406480 (=> (not res!1022113) (not e!1532504))))

(assert (=> b!2406480 (= res!1022113 (not lt!873021))))

(declare-fun b!2406481 () Bool)

(assert (=> b!2406481 (= e!1532503 e!1532507)))

(declare-fun c!383302 () Bool)

(assert (=> b!2406481 (= c!383302 (is-EmptyLang!7058 r!13927))))

(declare-fun b!2406482 () Bool)

(declare-fun res!1022111 () Bool)

(assert (=> b!2406482 (=> (not res!1022111) (not e!1532506))))

(assert (=> b!2406482 (= res!1022111 (not call!147011))))

(assert (= (and d!700124 c!383300) b!2406473))

(assert (= (and d!700124 (not c!383300)) b!2406469))

(assert (= (and d!700124 c!383301) b!2406472))

(assert (= (and d!700124 (not c!383301)) b!2406481))

(assert (= (and b!2406481 c!383302) b!2406471))

(assert (= (and b!2406481 (not c!383302)) b!2406476))

(assert (= (and b!2406476 (not res!1022112)) b!2406474))

(assert (= (and b!2406474 res!1022114) b!2406482))

(assert (= (and b!2406482 res!1022111) b!2406470))

(assert (= (and b!2406470 res!1022116) b!2406475))

(assert (= (and b!2406474 (not res!1022117)) b!2406480))

(assert (= (and b!2406480 res!1022113) b!2406477))

(assert (= (and b!2406477 (not res!1022118)) b!2406478))

(assert (= (and b!2406478 (not res!1022115)) b!2406479))

(assert (= (or b!2406472 b!2406477 b!2406482) bm!147006))

(declare-fun m!2800063 () Bool)

(assert (=> b!2406469 m!2800063))

(assert (=> b!2406469 m!2800063))

(declare-fun m!2800065 () Bool)

(assert (=> b!2406469 m!2800065))

(declare-fun m!2800067 () Bool)

(assert (=> b!2406469 m!2800067))

(assert (=> b!2406469 m!2800065))

(assert (=> b!2406469 m!2800067))

(declare-fun m!2800069 () Bool)

(assert (=> b!2406469 m!2800069))

(declare-fun m!2800071 () Bool)

(assert (=> d!700124 m!2800071))

(declare-fun m!2800073 () Bool)

(assert (=> d!700124 m!2800073))

(assert (=> b!2406475 m!2800063))

(assert (=> b!2406479 m!2800063))

(declare-fun m!2800075 () Bool)

(assert (=> b!2406473 m!2800075))

(assert (=> b!2406470 m!2800067))

(assert (=> b!2406470 m!2800067))

(declare-fun m!2800077 () Bool)

(assert (=> b!2406470 m!2800077))

(assert (=> bm!147006 m!2800071))

(assert (=> b!2406478 m!2800067))

(assert (=> b!2406478 m!2800067))

(assert (=> b!2406478 m!2800077))

(assert (=> b!2406378 d!700124))

(declare-fun b!2406535 () Bool)

(assert (=> b!2406535 true))

(assert (=> b!2406535 true))

(declare-fun bs!463304 () Bool)

(declare-fun b!2406541 () Bool)

(assert (= bs!463304 (and b!2406541 b!2406535)))

(declare-fun lambda!90538 () Int)

(declare-fun lambda!90537 () Int)

(assert (=> bs!463304 (not (= lambda!90538 lambda!90537))))

(assert (=> b!2406541 true))

(assert (=> b!2406541 true))

(declare-fun e!1532541 () Bool)

(declare-fun call!147016 () Bool)

(assert (=> b!2406535 (= e!1532541 call!147016)))

(declare-fun bm!147011 () Bool)

(declare-fun c!383322 () Bool)

(declare-fun Exists!1113 (Int) Bool)

(assert (=> bm!147011 (= call!147016 (Exists!1113 (ite c!383322 lambda!90537 lambda!90538)))))

(declare-fun b!2406536 () Bool)

(declare-fun c!383320 () Bool)

(assert (=> b!2406536 (= c!383320 (is-Union!7058 r!13927))))

(declare-fun e!1532544 () Bool)

(declare-fun e!1532545 () Bool)

(assert (=> b!2406536 (= e!1532544 e!1532545)))

(declare-fun d!700126 () Bool)

(declare-fun c!383321 () Bool)

(assert (=> d!700126 (= c!383321 (is-EmptyExpr!7058 r!13927))))

(declare-fun e!1532543 () Bool)

(assert (=> d!700126 (= (matchRSpec!907 r!13927 s!9460) e!1532543)))

(declare-fun b!2406537 () Bool)

(declare-fun c!383319 () Bool)

(assert (=> b!2406537 (= c!383319 (is-ElementMatch!7058 r!13927))))

(declare-fun e!1532540 () Bool)

(assert (=> b!2406537 (= e!1532540 e!1532544)))

(declare-fun b!2406538 () Bool)

(assert (=> b!2406538 (= e!1532544 (= s!9460 (Cons!28257 (c!383288 r!13927) Nil!28257)))))

(declare-fun b!2406539 () Bool)

(declare-fun res!1022141 () Bool)

(assert (=> b!2406539 (=> res!1022141 e!1532541)))

(declare-fun call!147017 () Bool)

(assert (=> b!2406539 (= res!1022141 call!147017)))

(declare-fun e!1532542 () Bool)

(assert (=> b!2406539 (= e!1532542 e!1532541)))

(declare-fun bm!147012 () Bool)

(assert (=> bm!147012 (= call!147017 (isEmpty!16263 s!9460))))

(declare-fun b!2406540 () Bool)

(declare-fun e!1532546 () Bool)

(assert (=> b!2406540 (= e!1532546 (matchRSpec!907 (regTwo!14629 r!13927) s!9460))))

(assert (=> b!2406541 (= e!1532542 call!147016)))

(declare-fun b!2406542 () Bool)

(assert (=> b!2406542 (= e!1532543 call!147017)))

(declare-fun b!2406543 () Bool)

(assert (=> b!2406543 (= e!1532545 e!1532546)))

(declare-fun res!1022140 () Bool)

(assert (=> b!2406543 (= res!1022140 (matchRSpec!907 (regOne!14629 r!13927) s!9460))))

(assert (=> b!2406543 (=> res!1022140 e!1532546)))

(declare-fun b!2406544 () Bool)

(assert (=> b!2406544 (= e!1532543 e!1532540)))

(declare-fun res!1022139 () Bool)

(assert (=> b!2406544 (= res!1022139 (not (is-EmptyLang!7058 r!13927)))))

(assert (=> b!2406544 (=> (not res!1022139) (not e!1532540))))

(declare-fun b!2406545 () Bool)

(assert (=> b!2406545 (= e!1532545 e!1532542)))

(assert (=> b!2406545 (= c!383322 (is-Star!7058 r!13927))))

(assert (= (and d!700126 c!383321) b!2406542))

(assert (= (and d!700126 (not c!383321)) b!2406544))

(assert (= (and b!2406544 res!1022139) b!2406537))

(assert (= (and b!2406537 c!383319) b!2406538))

(assert (= (and b!2406537 (not c!383319)) b!2406536))

(assert (= (and b!2406536 c!383320) b!2406543))

(assert (= (and b!2406536 (not c!383320)) b!2406545))

(assert (= (and b!2406543 (not res!1022140)) b!2406540))

(assert (= (and b!2406545 c!383322) b!2406539))

(assert (= (and b!2406545 (not c!383322)) b!2406541))

(assert (= (and b!2406539 (not res!1022141)) b!2406535))

(assert (= (or b!2406535 b!2406541) bm!147011))

(assert (= (or b!2406542 b!2406539) bm!147012))

(declare-fun m!2800097 () Bool)

(assert (=> bm!147011 m!2800097))

(assert (=> bm!147012 m!2800071))

(declare-fun m!2800099 () Bool)

(assert (=> b!2406540 m!2800099))

(declare-fun m!2800101 () Bool)

(assert (=> b!2406543 m!2800101))

(assert (=> b!2406378 d!700126))

(declare-fun d!700134 () Bool)

(assert (=> d!700134 (= (matchR!3175 r!13927 s!9460) (matchRSpec!907 r!13927 s!9460))))

(declare-fun lt!873025 () Unit!41387)

(declare-fun choose!14229 (Regex!7058 List!28355) Unit!41387)

(assert (=> d!700134 (= lt!873025 (choose!14229 r!13927 s!9460))))

(assert (=> d!700134 (validRegex!2782 r!13927)))

(assert (=> d!700134 (= (mainMatchTheorem!907 r!13927 s!9460) lt!873025)))

(declare-fun bs!463305 () Bool)

(assert (= bs!463305 d!700134))

(assert (=> bs!463305 m!2800027))

(assert (=> bs!463305 m!2800029))

(declare-fun m!2800103 () Bool)

(assert (=> bs!463305 m!2800103))

(assert (=> bs!463305 m!2800073))

(assert (=> b!2406378 d!700134))

(declare-fun bs!463306 () Bool)

(declare-fun d!700136 () Bool)

(assert (= bs!463306 (and d!700136 start!235902)))

(declare-fun lambda!90541 () Int)

(assert (=> bs!463306 (= lambda!90541 lambda!90526)))

(declare-fun b!2406598 () Bool)

(declare-fun e!1532577 () Regex!7058)

(assert (=> b!2406598 (= e!1532577 (h!33657 lt!873009))))

(declare-fun b!2406599 () Bool)

(declare-fun e!1532575 () Regex!7058)

(assert (=> b!2406599 (= e!1532575 EmptyExpr!7058)))

(declare-fun b!2406600 () Bool)

(declare-fun e!1532574 () Bool)

(assert (=> b!2406600 (= e!1532574 (isEmpty!16261 (t!208331 lt!873009)))))

(declare-fun b!2406601 () Bool)

(assert (=> b!2406601 (= e!1532575 (Concat!11694 (h!33657 lt!873009) (generalisedConcat!159 (t!208331 lt!873009))))))

(declare-fun b!2406602 () Bool)

(declare-fun e!1532578 () Bool)

(declare-fun lt!873030 () Regex!7058)

(declare-fun isConcat!123 (Regex!7058) Bool)

(assert (=> b!2406602 (= e!1532578 (isConcat!123 lt!873030))))

(declare-fun b!2406603 () Bool)

(declare-fun e!1532576 () Bool)

(assert (=> b!2406603 (= e!1532576 e!1532578)))

(declare-fun c!383340 () Bool)

(assert (=> b!2406603 (= c!383340 (isEmpty!16261 (tail!3611 lt!873009)))))

(declare-fun b!2406604 () Bool)

(declare-fun e!1532573 () Bool)

(assert (=> b!2406604 (= e!1532573 e!1532576)))

(declare-fun c!383338 () Bool)

(assert (=> b!2406604 (= c!383338 (isEmpty!16261 lt!873009))))

(assert (=> d!700136 e!1532573))

(declare-fun res!1022163 () Bool)

(assert (=> d!700136 (=> (not res!1022163) (not e!1532573))))

(assert (=> d!700136 (= res!1022163 (validRegex!2782 lt!873030))))

(assert (=> d!700136 (= lt!873030 e!1532577)))

(declare-fun c!383337 () Bool)

(assert (=> d!700136 (= c!383337 e!1532574)))

(declare-fun res!1022162 () Bool)

(assert (=> d!700136 (=> (not res!1022162) (not e!1532574))))

(assert (=> d!700136 (= res!1022162 (is-Cons!28256 lt!873009))))

(assert (=> d!700136 (forall!5692 lt!873009 lambda!90541)))

(assert (=> d!700136 (= (generalisedConcat!159 lt!873009) lt!873030)))

(declare-fun b!2406605 () Bool)

(assert (=> b!2406605 (= e!1532577 e!1532575)))

(declare-fun c!383339 () Bool)

(assert (=> b!2406605 (= c!383339 (is-Cons!28256 lt!873009))))

(declare-fun b!2406606 () Bool)

(declare-fun head!5340 (List!28354) Regex!7058)

(assert (=> b!2406606 (= e!1532578 (= lt!873030 (head!5340 lt!873009)))))

(declare-fun b!2406607 () Bool)

(declare-fun isEmptyExpr!123 (Regex!7058) Bool)

(assert (=> b!2406607 (= e!1532576 (isEmptyExpr!123 lt!873030))))

(assert (= (and d!700136 res!1022162) b!2406600))

(assert (= (and d!700136 c!383337) b!2406598))

(assert (= (and d!700136 (not c!383337)) b!2406605))

(assert (= (and b!2406605 c!383339) b!2406601))

(assert (= (and b!2406605 (not c!383339)) b!2406599))

(assert (= (and d!700136 res!1022163) b!2406604))

(assert (= (and b!2406604 c!383338) b!2406607))

(assert (= (and b!2406604 (not c!383338)) b!2406603))

(assert (= (and b!2406603 c!383340) b!2406606))

(assert (= (and b!2406603 (not c!383340)) b!2406602))

(declare-fun m!2800105 () Bool)

(assert (=> b!2406602 m!2800105))

(declare-fun m!2800107 () Bool)

(assert (=> b!2406600 m!2800107))

(declare-fun m!2800109 () Bool)

(assert (=> b!2406603 m!2800109))

(assert (=> b!2406603 m!2800109))

(declare-fun m!2800111 () Bool)

(assert (=> b!2406603 m!2800111))

(declare-fun m!2800113 () Bool)

(assert (=> b!2406601 m!2800113))

(declare-fun m!2800115 () Bool)

(assert (=> d!700136 m!2800115))

(declare-fun m!2800117 () Bool)

(assert (=> d!700136 m!2800117))

(declare-fun m!2800119 () Bool)

(assert (=> b!2406607 m!2800119))

(declare-fun m!2800121 () Bool)

(assert (=> b!2406606 m!2800121))

(assert (=> b!2406604 m!2800035))

(assert (=> b!2406381 d!700136))

(declare-fun d!700138 () Bool)

(assert (=> d!700138 (= (isEmpty!16261 lt!873009) (is-Nil!28256 lt!873009))))

(assert (=> b!2406384 d!700138))

(declare-fun d!700140 () Bool)

(assert (=> d!700140 (= (tail!3611 l!9164) (t!208331 l!9164))))

(assert (=> b!2406384 d!700140))

(declare-fun bs!463307 () Bool)

(declare-fun d!700142 () Bool)

(assert (= bs!463307 (and d!700142 start!235902)))

(declare-fun lambda!90542 () Int)

(assert (=> bs!463307 (= lambda!90542 lambda!90526)))

(declare-fun bs!463308 () Bool)

(assert (= bs!463308 (and d!700142 d!700136)))

(assert (=> bs!463308 (= lambda!90542 lambda!90541)))

(declare-fun b!2406608 () Bool)

(declare-fun e!1532583 () Regex!7058)

(assert (=> b!2406608 (= e!1532583 (h!33657 l!9164))))

(declare-fun b!2406609 () Bool)

(declare-fun e!1532581 () Regex!7058)

(assert (=> b!2406609 (= e!1532581 EmptyExpr!7058)))

(declare-fun b!2406610 () Bool)

(declare-fun e!1532580 () Bool)

(assert (=> b!2406610 (= e!1532580 (isEmpty!16261 (t!208331 l!9164)))))

(declare-fun b!2406611 () Bool)

(assert (=> b!2406611 (= e!1532581 (Concat!11694 (h!33657 l!9164) (generalisedConcat!159 (t!208331 l!9164))))))

(declare-fun b!2406612 () Bool)

(declare-fun e!1532584 () Bool)

(declare-fun lt!873031 () Regex!7058)

(assert (=> b!2406612 (= e!1532584 (isConcat!123 lt!873031))))

(declare-fun b!2406613 () Bool)

(declare-fun e!1532582 () Bool)

(assert (=> b!2406613 (= e!1532582 e!1532584)))

(declare-fun c!383344 () Bool)

(assert (=> b!2406613 (= c!383344 (isEmpty!16261 (tail!3611 l!9164)))))

(declare-fun b!2406614 () Bool)

(declare-fun e!1532579 () Bool)

(assert (=> b!2406614 (= e!1532579 e!1532582)))

(declare-fun c!383342 () Bool)

(assert (=> b!2406614 (= c!383342 (isEmpty!16261 l!9164))))

(assert (=> d!700142 e!1532579))

(declare-fun res!1022165 () Bool)

(assert (=> d!700142 (=> (not res!1022165) (not e!1532579))))

(assert (=> d!700142 (= res!1022165 (validRegex!2782 lt!873031))))

(assert (=> d!700142 (= lt!873031 e!1532583)))

(declare-fun c!383341 () Bool)

(assert (=> d!700142 (= c!383341 e!1532580)))

(declare-fun res!1022164 () Bool)

(assert (=> d!700142 (=> (not res!1022164) (not e!1532580))))

(assert (=> d!700142 (= res!1022164 (is-Cons!28256 l!9164))))

(assert (=> d!700142 (forall!5692 l!9164 lambda!90542)))

(assert (=> d!700142 (= (generalisedConcat!159 l!9164) lt!873031)))

(declare-fun b!2406615 () Bool)

(assert (=> b!2406615 (= e!1532583 e!1532581)))

(declare-fun c!383343 () Bool)

(assert (=> b!2406615 (= c!383343 (is-Cons!28256 l!9164))))

(declare-fun b!2406616 () Bool)

(assert (=> b!2406616 (= e!1532584 (= lt!873031 (head!5340 l!9164)))))

(declare-fun b!2406617 () Bool)

(assert (=> b!2406617 (= e!1532582 (isEmptyExpr!123 lt!873031))))

(assert (= (and d!700142 res!1022164) b!2406610))

(assert (= (and d!700142 c!383341) b!2406608))

(assert (= (and d!700142 (not c!383341)) b!2406615))

(assert (= (and b!2406615 c!383343) b!2406611))

(assert (= (and b!2406615 (not c!383343)) b!2406609))

(assert (= (and d!700142 res!1022165) b!2406614))

(assert (= (and b!2406614 c!383342) b!2406617))

(assert (= (and b!2406614 (not c!383342)) b!2406613))

(assert (= (and b!2406613 c!383344) b!2406616))

(assert (= (and b!2406613 (not c!383344)) b!2406612))

(declare-fun m!2800123 () Bool)

(assert (=> b!2406612 m!2800123))

(declare-fun m!2800125 () Bool)

(assert (=> b!2406610 m!2800125))

(assert (=> b!2406613 m!2800037))

(assert (=> b!2406613 m!2800037))

(declare-fun m!2800127 () Bool)

(assert (=> b!2406613 m!2800127))

(declare-fun m!2800129 () Bool)

(assert (=> b!2406611 m!2800129))

(declare-fun m!2800131 () Bool)

(assert (=> d!700142 m!2800131))

(declare-fun m!2800133 () Bool)

(assert (=> d!700142 m!2800133))

(declare-fun m!2800135 () Bool)

(assert (=> b!2406617 m!2800135))

(declare-fun m!2800137 () Bool)

(assert (=> b!2406616 m!2800137))

(assert (=> b!2406614 m!2800039))

(assert (=> b!2406379 d!700142))

(declare-fun b!2406631 () Bool)

(declare-fun e!1532587 () Bool)

(declare-fun tp!765757 () Bool)

(declare-fun tp!765760 () Bool)

(assert (=> b!2406631 (= e!1532587 (and tp!765757 tp!765760))))

(assert (=> b!2406388 (= tp!765721 e!1532587)))

(declare-fun b!2406628 () Bool)

(assert (=> b!2406628 (= e!1532587 tp_is_empty!11529)))

(declare-fun b!2406629 () Bool)

(declare-fun tp!765758 () Bool)

(declare-fun tp!765756 () Bool)

(assert (=> b!2406629 (= e!1532587 (and tp!765758 tp!765756))))

(declare-fun b!2406630 () Bool)

(declare-fun tp!765759 () Bool)

(assert (=> b!2406630 (= e!1532587 tp!765759)))

(assert (= (and b!2406388 (is-ElementMatch!7058 (regOne!14628 r!13927))) b!2406628))

(assert (= (and b!2406388 (is-Concat!11694 (regOne!14628 r!13927))) b!2406629))

(assert (= (and b!2406388 (is-Star!7058 (regOne!14628 r!13927))) b!2406630))

(assert (= (and b!2406388 (is-Union!7058 (regOne!14628 r!13927))) b!2406631))

(declare-fun b!2406635 () Bool)

(declare-fun e!1532588 () Bool)

(declare-fun tp!765762 () Bool)

(declare-fun tp!765765 () Bool)

(assert (=> b!2406635 (= e!1532588 (and tp!765762 tp!765765))))

(assert (=> b!2406388 (= tp!765717 e!1532588)))

(declare-fun b!2406632 () Bool)

(assert (=> b!2406632 (= e!1532588 tp_is_empty!11529)))

(declare-fun b!2406633 () Bool)

(declare-fun tp!765763 () Bool)

(declare-fun tp!765761 () Bool)

(assert (=> b!2406633 (= e!1532588 (and tp!765763 tp!765761))))

(declare-fun b!2406634 () Bool)

(declare-fun tp!765764 () Bool)

(assert (=> b!2406634 (= e!1532588 tp!765764)))

(assert (= (and b!2406388 (is-ElementMatch!7058 (regTwo!14628 r!13927))) b!2406632))

(assert (= (and b!2406388 (is-Concat!11694 (regTwo!14628 r!13927))) b!2406633))

(assert (= (and b!2406388 (is-Star!7058 (regTwo!14628 r!13927))) b!2406634))

(assert (= (and b!2406388 (is-Union!7058 (regTwo!14628 r!13927))) b!2406635))

(declare-fun b!2406639 () Bool)

(declare-fun e!1532589 () Bool)

(declare-fun tp!765767 () Bool)

(declare-fun tp!765770 () Bool)

(assert (=> b!2406639 (= e!1532589 (and tp!765767 tp!765770))))

(assert (=> b!2406383 (= tp!765718 e!1532589)))

(declare-fun b!2406636 () Bool)

(assert (=> b!2406636 (= e!1532589 tp_is_empty!11529)))

(declare-fun b!2406637 () Bool)

(declare-fun tp!765768 () Bool)

(declare-fun tp!765766 () Bool)

(assert (=> b!2406637 (= e!1532589 (and tp!765768 tp!765766))))

(declare-fun b!2406638 () Bool)

(declare-fun tp!765769 () Bool)

(assert (=> b!2406638 (= e!1532589 tp!765769)))

(assert (= (and b!2406383 (is-ElementMatch!7058 (h!33657 l!9164))) b!2406636))

(assert (= (and b!2406383 (is-Concat!11694 (h!33657 l!9164))) b!2406637))

(assert (= (and b!2406383 (is-Star!7058 (h!33657 l!9164))) b!2406638))

(assert (= (and b!2406383 (is-Union!7058 (h!33657 l!9164))) b!2406639))

(declare-fun b!2406644 () Bool)

(declare-fun e!1532592 () Bool)

(declare-fun tp!765775 () Bool)

(declare-fun tp!765776 () Bool)

(assert (=> b!2406644 (= e!1532592 (and tp!765775 tp!765776))))

(assert (=> b!2406383 (= tp!765714 e!1532592)))

(assert (= (and b!2406383 (is-Cons!28256 (t!208331 l!9164))) b!2406644))

(declare-fun b!2406649 () Bool)

(declare-fun e!1532595 () Bool)

(declare-fun tp!765779 () Bool)

(assert (=> b!2406649 (= e!1532595 (and tp_is_empty!11529 tp!765779))))

(assert (=> b!2406382 (= tp!765716 e!1532595)))

(assert (= (and b!2406382 (is-Cons!28257 (t!208332 s!9460))) b!2406649))

(declare-fun b!2406653 () Bool)

(declare-fun e!1532596 () Bool)

(declare-fun tp!765781 () Bool)

(declare-fun tp!765784 () Bool)

(assert (=> b!2406653 (= e!1532596 (and tp!765781 tp!765784))))

(assert (=> b!2406385 (= tp!765715 e!1532596)))

(declare-fun b!2406650 () Bool)

(assert (=> b!2406650 (= e!1532596 tp_is_empty!11529)))

(declare-fun b!2406651 () Bool)

(declare-fun tp!765782 () Bool)

(declare-fun tp!765780 () Bool)

(assert (=> b!2406651 (= e!1532596 (and tp!765782 tp!765780))))

(declare-fun b!2406652 () Bool)

(declare-fun tp!765783 () Bool)

(assert (=> b!2406652 (= e!1532596 tp!765783)))

(assert (= (and b!2406385 (is-ElementMatch!7058 (reg!7387 r!13927))) b!2406650))

(assert (= (and b!2406385 (is-Concat!11694 (reg!7387 r!13927))) b!2406651))

(assert (= (and b!2406385 (is-Star!7058 (reg!7387 r!13927))) b!2406652))

(assert (= (and b!2406385 (is-Union!7058 (reg!7387 r!13927))) b!2406653))

(declare-fun b!2406657 () Bool)

(declare-fun e!1532597 () Bool)

(declare-fun tp!765786 () Bool)

(declare-fun tp!765789 () Bool)

(assert (=> b!2406657 (= e!1532597 (and tp!765786 tp!765789))))

(assert (=> b!2406386 (= tp!765720 e!1532597)))

(declare-fun b!2406654 () Bool)

(assert (=> b!2406654 (= e!1532597 tp_is_empty!11529)))

(declare-fun b!2406655 () Bool)

(declare-fun tp!765787 () Bool)

(declare-fun tp!765785 () Bool)

(assert (=> b!2406655 (= e!1532597 (and tp!765787 tp!765785))))

(declare-fun b!2406656 () Bool)

(declare-fun tp!765788 () Bool)

(assert (=> b!2406656 (= e!1532597 tp!765788)))

(assert (= (and b!2406386 (is-ElementMatch!7058 (regOne!14629 r!13927))) b!2406654))

(assert (= (and b!2406386 (is-Concat!11694 (regOne!14629 r!13927))) b!2406655))

(assert (= (and b!2406386 (is-Star!7058 (regOne!14629 r!13927))) b!2406656))

(assert (= (and b!2406386 (is-Union!7058 (regOne!14629 r!13927))) b!2406657))

(declare-fun b!2406661 () Bool)

(declare-fun e!1532598 () Bool)

(declare-fun tp!765791 () Bool)

(declare-fun tp!765794 () Bool)

(assert (=> b!2406661 (= e!1532598 (and tp!765791 tp!765794))))

(assert (=> b!2406386 (= tp!765719 e!1532598)))

(declare-fun b!2406658 () Bool)

(assert (=> b!2406658 (= e!1532598 tp_is_empty!11529)))

(declare-fun b!2406659 () Bool)

(declare-fun tp!765792 () Bool)

(declare-fun tp!765790 () Bool)

(assert (=> b!2406659 (= e!1532598 (and tp!765792 tp!765790))))

(declare-fun b!2406660 () Bool)

(declare-fun tp!765793 () Bool)

(assert (=> b!2406660 (= e!1532598 tp!765793)))

(assert (= (and b!2406386 (is-ElementMatch!7058 (regTwo!14629 r!13927))) b!2406658))

(assert (= (and b!2406386 (is-Concat!11694 (regTwo!14629 r!13927))) b!2406659))

(assert (= (and b!2406386 (is-Star!7058 (regTwo!14629 r!13927))) b!2406660))

(assert (= (and b!2406386 (is-Union!7058 (regTwo!14629 r!13927))) b!2406661))

(declare-fun b_lambda!74429 () Bool)

(assert (= b_lambda!74427 (or start!235902 b_lambda!74429)))

(declare-fun bs!463309 () Bool)

(declare-fun d!700144 () Bool)

(assert (= bs!463309 (and d!700144 start!235902)))

(assert (=> bs!463309 (= (dynLambda!12167 lambda!90526 (h!33657 l!9164)) (validRegex!2782 (h!33657 l!9164)))))

(declare-fun m!2800139 () Bool)

(assert (=> bs!463309 m!2800139))

(assert (=> b!2406429 d!700144))

(push 1)

(assert (not b!2406633))

(assert (not b!2406634))

(assert (not b!2406630))

(assert tp_is_empty!11529)

(assert (not d!700134))

(assert (not b!2406543))

(assert (not b!2406475))

(assert (not b!2406479))

(assert (not b!2406611))

(assert (not b!2406638))

(assert (not b!2406637))

(assert (not b!2406604))

(assert (not b!2406651))

(assert (not b!2406601))

(assert (not bm!147012))

(assert (not b_lambda!74429))

(assert (not b!2406635))

(assert (not b!2406652))

(assert (not b!2406644))

(assert (not b!2406612))

(assert (not b!2406473))

(assert (not b!2406470))

(assert (not d!700142))

(assert (not b!2406430))

(assert (not b!2406660))

(assert (not b!2406613))

(assert (not bm!147006))

(assert (not bs!463309))

(assert (not b!2406639))

(assert (not b!2406603))

(assert (not b!2406631))

(assert (not d!700124))

(assert (not d!700136))

(assert (not b!2406659))

(assert (not b!2406540))

(assert (not b!2406602))

(assert (not b!2406478))

(assert (not b!2406600))

(assert (not b!2406616))

(assert (not b!2406657))

(assert (not b!2406661))

(assert (not b!2406617))

(assert (not b!2406607))

(assert (not b!2406653))

(assert (not b!2406469))

(assert (not b!2406614))

(assert (not b!2406656))

(assert (not b!2406655))

(assert (not b!2406606))

(assert (not bm!147011))

(assert (not b!2406629))

(assert (not b!2406649))

(assert (not b!2406610))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

