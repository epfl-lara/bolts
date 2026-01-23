; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735406 () Bool)

(assert start!735406)

(declare-fun b!7638484 () Bool)

(assert (=> b!7638484 true))

(assert (=> b!7638484 true))

(declare-fun bs!1944611 () Bool)

(declare-fun b!7638483 () Bool)

(assert (= bs!1944611 (and b!7638483 b!7638484)))

(declare-fun lambda!469559 () Int)

(declare-fun lambda!469558 () Int)

(assert (=> bs!1944611 (not (= lambda!469559 lambda!469558))))

(assert (=> b!7638483 true))

(assert (=> b!7638483 true))

(declare-fun b!7638482 () Bool)

(declare-fun e!4540589 () Bool)

(declare-fun tp!2229610 () Bool)

(assert (=> b!7638482 (= e!4540589 tp!2229610)))

(declare-fun e!4540590 () Bool)

(declare-fun e!4540592 () Bool)

(assert (=> b!7638484 (= e!4540590 (not e!4540592))))

(declare-fun res!3059580 () Bool)

(assert (=> b!7638484 (=> res!3059580 e!4540592)))

(declare-datatypes ((C!41178 0))(
  ( (C!41179 (val!31029 Int)) )
))
(declare-datatypes ((Regex!20426 0))(
  ( (ElementMatch!20426 (c!1407027 C!41178)) (Concat!29271 (regOne!41364 Regex!20426) (regTwo!41364 Regex!20426)) (EmptyExpr!20426) (Star!20426 (reg!20755 Regex!20426)) (EmptyLang!20426) (Union!20426 (regOne!41365 Regex!20426) (regTwo!41365 Regex!20426)) )
))
(declare-fun r!14126 () Regex!20426)

(declare-datatypes ((List!73277 0))(
  ( (Nil!73153) (Cons!73153 (h!79601 C!41178) (t!388012 List!73277)) )
))
(declare-fun s!9605 () List!73277)

(declare-fun matchR!9929 (Regex!20426 List!73277) Bool)

(assert (=> b!7638484 (= res!3059580 (not (matchR!9929 r!14126 s!9605)))))

(declare-fun lt!2660346 () Bool)

(declare-fun Exists!4580 (Int) Bool)

(assert (=> b!7638484 (= lt!2660346 (Exists!4580 lambda!469558))))

(declare-datatypes ((tuple2!69410 0))(
  ( (tuple2!69411 (_1!38008 List!73277) (_2!38008 List!73277)) )
))
(declare-datatypes ((Option!17499 0))(
  ( (None!17498) (Some!17498 (v!54633 tuple2!69410)) )
))
(declare-fun isDefined!14115 (Option!17499) Bool)

(declare-fun findConcatSeparation!3529 (Regex!20426 Regex!20426 List!73277 List!73277 List!73277) Option!17499)

(assert (=> b!7638484 (= lt!2660346 (isDefined!14115 (findConcatSeparation!3529 (regOne!41364 r!14126) (regTwo!41364 r!14126) Nil!73153 s!9605 s!9605)))))

(declare-datatypes ((Unit!167848 0))(
  ( (Unit!167849) )
))
(declare-fun lt!2660351 () Unit!167848)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3287 (Regex!20426 Regex!20426 List!73277) Unit!167848)

(assert (=> b!7638484 (= lt!2660351 (lemmaFindConcatSeparationEquivalentToExists!3287 (regOne!41364 r!14126) (regTwo!41364 r!14126) s!9605))))

(declare-fun b!7638485 () Bool)

(declare-fun tp!2229612 () Bool)

(declare-fun tp!2229611 () Bool)

(assert (=> b!7638485 (= e!4540589 (and tp!2229612 tp!2229611))))

(declare-fun b!7638486 () Bool)

(declare-fun e!4540588 () Bool)

(assert (=> b!7638486 (= e!4540592 e!4540588)))

(declare-fun res!3059582 () Bool)

(assert (=> b!7638486 (=> res!3059582 e!4540588)))

(assert (=> b!7638486 (= res!3059582 (not (Exists!4580 lambda!469558)))))

(assert (=> b!7638486 lt!2660346))

(declare-fun lt!2660347 () Unit!167848)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!289 (Regex!20426 Regex!20426 List!73277) Unit!167848)

(assert (=> b!7638486 (= lt!2660347 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!289 (regOne!41364 r!14126) (regTwo!41364 r!14126) s!9605))))

(declare-fun b!7638487 () Bool)

(declare-fun tp!2229615 () Bool)

(declare-fun tp!2229613 () Bool)

(assert (=> b!7638487 (= e!4540589 (and tp!2229615 tp!2229613))))

(declare-fun b!7638488 () Bool)

(declare-fun tp_is_empty!51207 () Bool)

(assert (=> b!7638488 (= e!4540589 tp_is_empty!51207)))

(declare-fun b!7638489 () Bool)

(declare-fun e!4540591 () Bool)

(declare-fun tp!2229614 () Bool)

(assert (=> b!7638489 (= e!4540591 (and tp_is_empty!51207 tp!2229614))))

(declare-fun b!7638490 () Bool)

(declare-fun res!3059579 () Bool)

(assert (=> b!7638490 (=> (not res!3059579) (not e!4540590))))

(assert (=> b!7638490 (= res!3059579 (and (not (is-EmptyExpr!20426 r!14126)) (not (is-EmptyLang!20426 r!14126)) (not (is-ElementMatch!20426 r!14126)) (not (is-Union!20426 r!14126)) (not (is-Star!20426 r!14126))))))

(assert (=> b!7638483 (= e!4540588 (Exists!4580 lambda!469559))))

(declare-fun lt!2660350 () Unit!167848)

(declare-fun lt!2660348 () tuple2!69410)

(declare-fun ExistsThe!55 (tuple2!69410 Int) Unit!167848)

(assert (=> b!7638483 (= lt!2660350 (ExistsThe!55 lt!2660348 lambda!469559))))

(declare-fun matchRSpec!4561 (Regex!20426 List!73277) Bool)

(assert (=> b!7638483 (= (matchR!9929 (regTwo!41364 r!14126) (_2!38008 lt!2660348)) (matchRSpec!4561 (regTwo!41364 r!14126) (_2!38008 lt!2660348)))))

(declare-fun lt!2660345 () Unit!167848)

(declare-fun mainMatchTheorem!4547 (Regex!20426 List!73277) Unit!167848)

(assert (=> b!7638483 (= lt!2660345 (mainMatchTheorem!4547 (regTwo!41364 r!14126) (_2!38008 lt!2660348)))))

(assert (=> b!7638483 (= (matchR!9929 (regOne!41364 r!14126) (_1!38008 lt!2660348)) (matchRSpec!4561 (regOne!41364 r!14126) (_1!38008 lt!2660348)))))

(declare-fun lt!2660349 () Unit!167848)

(assert (=> b!7638483 (= lt!2660349 (mainMatchTheorem!4547 (regOne!41364 r!14126) (_1!38008 lt!2660348)))))

(declare-fun pickWitness!487 (Int) tuple2!69410)

(assert (=> b!7638483 (= lt!2660348 (pickWitness!487 lambda!469558))))

(declare-fun res!3059581 () Bool)

(assert (=> start!735406 (=> (not res!3059581) (not e!4540590))))

(declare-fun validRegex!10844 (Regex!20426) Bool)

(assert (=> start!735406 (= res!3059581 (validRegex!10844 r!14126))))

(assert (=> start!735406 e!4540590))

(assert (=> start!735406 e!4540589))

(assert (=> start!735406 e!4540591))

(assert (= (and start!735406 res!3059581) b!7638490))

(assert (= (and b!7638490 res!3059579) b!7638484))

(assert (= (and b!7638484 (not res!3059580)) b!7638486))

(assert (= (and b!7638486 (not res!3059582)) b!7638483))

(assert (= (and start!735406 (is-ElementMatch!20426 r!14126)) b!7638488))

(assert (= (and start!735406 (is-Concat!29271 r!14126)) b!7638485))

(assert (= (and start!735406 (is-Star!20426 r!14126)) b!7638482))

(assert (= (and start!735406 (is-Union!20426 r!14126)) b!7638487))

(assert (= (and start!735406 (is-Cons!73153 s!9605)) b!7638489))

(declare-fun m!8162206 () Bool)

(assert (=> b!7638484 m!8162206))

(declare-fun m!8162208 () Bool)

(assert (=> b!7638484 m!8162208))

(declare-fun m!8162210 () Bool)

(assert (=> b!7638484 m!8162210))

(declare-fun m!8162212 () Bool)

(assert (=> b!7638484 m!8162212))

(assert (=> b!7638484 m!8162208))

(declare-fun m!8162214 () Bool)

(assert (=> b!7638484 m!8162214))

(assert (=> b!7638486 m!8162210))

(declare-fun m!8162216 () Bool)

(assert (=> b!7638486 m!8162216))

(declare-fun m!8162218 () Bool)

(assert (=> b!7638483 m!8162218))

(declare-fun m!8162220 () Bool)

(assert (=> b!7638483 m!8162220))

(declare-fun m!8162222 () Bool)

(assert (=> b!7638483 m!8162222))

(declare-fun m!8162224 () Bool)

(assert (=> b!7638483 m!8162224))

(declare-fun m!8162226 () Bool)

(assert (=> b!7638483 m!8162226))

(declare-fun m!8162228 () Bool)

(assert (=> b!7638483 m!8162228))

(declare-fun m!8162230 () Bool)

(assert (=> b!7638483 m!8162230))

(declare-fun m!8162232 () Bool)

(assert (=> b!7638483 m!8162232))

(declare-fun m!8162234 () Bool)

(assert (=> b!7638483 m!8162234))

(declare-fun m!8162236 () Bool)

(assert (=> start!735406 m!8162236))

(push 1)

(assert (not b!7638489))

(assert (not start!735406))

(assert (not b!7638483))

(assert (not b!7638482))

(assert (not b!7638486))

(assert (not b!7638487))

(assert tp_is_empty!51207)

(assert (not b!7638484))

(assert (not b!7638485))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2324981 () Bool)

(declare-fun choose!58995 (Int) Bool)

(assert (=> d!2324981 (= (Exists!4580 lambda!469559) (choose!58995 lambda!469559))))

(declare-fun bs!1944613 () Bool)

(assert (= bs!1944613 d!2324981))

(declare-fun m!8162270 () Bool)

(assert (=> bs!1944613 m!8162270))

(assert (=> b!7638483 d!2324981))

(declare-fun d!2324983 () Bool)

(declare-fun lt!2660375 () tuple2!69410)

(declare-fun dynLambda!29933 (Int tuple2!69410) Bool)

(assert (=> d!2324983 (dynLambda!29933 lambda!469558 lt!2660375)))

(declare-fun choose!58996 (Int) tuple2!69410)

(assert (=> d!2324983 (= lt!2660375 (choose!58996 lambda!469558))))

(assert (=> d!2324983 (Exists!4580 lambda!469558)))

(assert (=> d!2324983 (= (pickWitness!487 lambda!469558) lt!2660375)))

(declare-fun b_lambda!289107 () Bool)

(assert (=> (not b_lambda!289107) (not d!2324983)))

(declare-fun bs!1944614 () Bool)

(assert (= bs!1944614 d!2324983))

(declare-fun m!8162272 () Bool)

(assert (=> bs!1944614 m!8162272))

(declare-fun m!8162274 () Bool)

(assert (=> bs!1944614 m!8162274))

(assert (=> bs!1944614 m!8162210))

(assert (=> b!7638483 d!2324983))

(declare-fun b!7638574 () Bool)

(declare-fun e!4540638 () Bool)

(declare-fun e!4540636 () Bool)

(assert (=> b!7638574 (= e!4540638 e!4540636)))

(declare-fun res!3059633 () Bool)

(assert (=> b!7638574 (=> res!3059633 e!4540636)))

(declare-fun call!701049 () Bool)

(assert (=> b!7638574 (= res!3059633 call!701049)))

(declare-fun b!7638575 () Bool)

(declare-fun res!3059638 () Bool)

(declare-fun e!4540633 () Bool)

(assert (=> b!7638575 (=> res!3059638 e!4540633)))

(assert (=> b!7638575 (= res!3059638 (not (is-ElementMatch!20426 (regOne!41364 r!14126))))))

(declare-fun e!4540632 () Bool)

(assert (=> b!7638575 (= e!4540632 e!4540633)))

(declare-fun b!7638577 () Bool)

(assert (=> b!7638577 (= e!4540633 e!4540638)))

(declare-fun res!3059637 () Bool)

(assert (=> b!7638577 (=> (not res!3059637) (not e!4540638))))

(declare-fun lt!2660378 () Bool)

(assert (=> b!7638577 (= res!3059637 (not lt!2660378))))

(declare-fun b!7638578 () Bool)

(declare-fun res!3059634 () Bool)

(assert (=> b!7638578 (=> res!3059634 e!4540636)))

(declare-fun isEmpty!41786 (List!73277) Bool)

(declare-fun tail!15248 (List!73277) List!73277)

(assert (=> b!7638578 (= res!3059634 (not (isEmpty!41786 (tail!15248 (_1!38008 lt!2660348)))))))

(declare-fun b!7638579 () Bool)

(declare-fun head!15708 (List!73277) C!41178)

(assert (=> b!7638579 (= e!4540636 (not (= (head!15708 (_1!38008 lt!2660348)) (c!1407027 (regOne!41364 r!14126)))))))

(declare-fun b!7638580 () Bool)

(assert (=> b!7638580 (= e!4540632 (not lt!2660378))))

(declare-fun b!7638581 () Bool)

(declare-fun e!4540635 () Bool)

(declare-fun nullable!8935 (Regex!20426) Bool)

(assert (=> b!7638581 (= e!4540635 (nullable!8935 (regOne!41364 r!14126)))))

(declare-fun b!7638582 () Bool)

(declare-fun e!4540634 () Bool)

(assert (=> b!7638582 (= e!4540634 e!4540632)))

(declare-fun c!1407035 () Bool)

(assert (=> b!7638582 (= c!1407035 (is-EmptyLang!20426 (regOne!41364 r!14126)))))

(declare-fun b!7638583 () Bool)

(declare-fun derivativeStep!5908 (Regex!20426 C!41178) Regex!20426)

(assert (=> b!7638583 (= e!4540635 (matchR!9929 (derivativeStep!5908 (regOne!41364 r!14126) (head!15708 (_1!38008 lt!2660348))) (tail!15248 (_1!38008 lt!2660348))))))

(declare-fun bm!701044 () Bool)

(assert (=> bm!701044 (= call!701049 (isEmpty!41786 (_1!38008 lt!2660348)))))

(declare-fun b!7638584 () Bool)

(declare-fun res!3059632 () Bool)

(declare-fun e!4540637 () Bool)

(assert (=> b!7638584 (=> (not res!3059632) (not e!4540637))))

(assert (=> b!7638584 (= res!3059632 (isEmpty!41786 (tail!15248 (_1!38008 lt!2660348))))))

(declare-fun b!7638585 () Bool)

(assert (=> b!7638585 (= e!4540637 (= (head!15708 (_1!38008 lt!2660348)) (c!1407027 (regOne!41364 r!14126))))))

(declare-fun b!7638576 () Bool)

(declare-fun res!3059635 () Bool)

(assert (=> b!7638576 (=> res!3059635 e!4540633)))

(assert (=> b!7638576 (= res!3059635 e!4540637)))

(declare-fun res!3059631 () Bool)

(assert (=> b!7638576 (=> (not res!3059631) (not e!4540637))))

(assert (=> b!7638576 (= res!3059631 lt!2660378)))

(declare-fun d!2324985 () Bool)

(assert (=> d!2324985 e!4540634))

(declare-fun c!1407036 () Bool)

(assert (=> d!2324985 (= c!1407036 (is-EmptyExpr!20426 (regOne!41364 r!14126)))))

(assert (=> d!2324985 (= lt!2660378 e!4540635)))

(declare-fun c!1407037 () Bool)

(assert (=> d!2324985 (= c!1407037 (isEmpty!41786 (_1!38008 lt!2660348)))))

(assert (=> d!2324985 (validRegex!10844 (regOne!41364 r!14126))))

(assert (=> d!2324985 (= (matchR!9929 (regOne!41364 r!14126) (_1!38008 lt!2660348)) lt!2660378)))

(declare-fun b!7638586 () Bool)

(declare-fun res!3059636 () Bool)

(assert (=> b!7638586 (=> (not res!3059636) (not e!4540637))))

(assert (=> b!7638586 (= res!3059636 (not call!701049))))

(declare-fun b!7638587 () Bool)

(assert (=> b!7638587 (= e!4540634 (= lt!2660378 call!701049))))

(assert (= (and d!2324985 c!1407037) b!7638581))

(assert (= (and d!2324985 (not c!1407037)) b!7638583))

(assert (= (and d!2324985 c!1407036) b!7638587))

(assert (= (and d!2324985 (not c!1407036)) b!7638582))

(assert (= (and b!7638582 c!1407035) b!7638580))

(assert (= (and b!7638582 (not c!1407035)) b!7638575))

(assert (= (and b!7638575 (not res!3059638)) b!7638576))

(assert (= (and b!7638576 res!3059631) b!7638586))

(assert (= (and b!7638586 res!3059636) b!7638584))

(assert (= (and b!7638584 res!3059632) b!7638585))

(assert (= (and b!7638576 (not res!3059635)) b!7638577))

(assert (= (and b!7638577 res!3059637) b!7638574))

(assert (= (and b!7638574 (not res!3059633)) b!7638578))

(assert (= (and b!7638578 (not res!3059634)) b!7638579))

(assert (= (or b!7638587 b!7638574 b!7638586) bm!701044))

(declare-fun m!8162276 () Bool)

(assert (=> b!7638583 m!8162276))

(assert (=> b!7638583 m!8162276))

(declare-fun m!8162278 () Bool)

(assert (=> b!7638583 m!8162278))

(declare-fun m!8162280 () Bool)

(assert (=> b!7638583 m!8162280))

(assert (=> b!7638583 m!8162278))

(assert (=> b!7638583 m!8162280))

(declare-fun m!8162282 () Bool)

(assert (=> b!7638583 m!8162282))

(declare-fun m!8162284 () Bool)

(assert (=> bm!701044 m!8162284))

(assert (=> b!7638584 m!8162280))

(assert (=> b!7638584 m!8162280))

(declare-fun m!8162286 () Bool)

(assert (=> b!7638584 m!8162286))

(assert (=> b!7638585 m!8162276))

(assert (=> d!2324985 m!8162284))

(declare-fun m!8162288 () Bool)

(assert (=> d!2324985 m!8162288))

(assert (=> b!7638579 m!8162276))

(declare-fun m!8162290 () Bool)

(assert (=> b!7638581 m!8162290))

(assert (=> b!7638578 m!8162280))

(assert (=> b!7638578 m!8162280))

(assert (=> b!7638578 m!8162286))

(assert (=> b!7638483 d!2324985))

(declare-fun bs!1944618 () Bool)

(declare-fun b!7638623 () Bool)

(assert (= bs!1944618 (and b!7638623 b!7638484)))

(declare-fun lambda!469576 () Int)

(assert (=> bs!1944618 (not (= lambda!469576 lambda!469558))))

(declare-fun bs!1944619 () Bool)

(assert (= bs!1944619 (and b!7638623 b!7638483)))

(assert (=> bs!1944619 (not (= lambda!469576 lambda!469559))))

(assert (=> b!7638623 true))

(assert (=> b!7638623 true))

(declare-fun bs!1944620 () Bool)

(declare-fun b!7638630 () Bool)

(assert (= bs!1944620 (and b!7638630 b!7638484)))

(declare-fun lambda!469577 () Int)

(assert (=> bs!1944620 (not (= lambda!469577 lambda!469558))))

(declare-fun bs!1944621 () Bool)

(assert (= bs!1944621 (and b!7638630 b!7638483)))

(assert (=> bs!1944621 (= (and (= (_2!38008 lt!2660348) s!9605) (= (regOne!41364 (regTwo!41364 r!14126)) (regOne!41364 r!14126)) (= (regTwo!41364 (regTwo!41364 r!14126)) (regTwo!41364 r!14126))) (= lambda!469577 lambda!469559))))

(declare-fun bs!1944622 () Bool)

(assert (= bs!1944622 (and b!7638630 b!7638623)))

(assert (=> bs!1944622 (not (= lambda!469577 lambda!469576))))

(assert (=> b!7638630 true))

(assert (=> b!7638630 true))

(declare-fun b!7638620 () Bool)

(declare-fun e!4540660 () Bool)

(declare-fun e!4540661 () Bool)

(assert (=> b!7638620 (= e!4540660 e!4540661)))

(declare-fun res!3059655 () Bool)

(assert (=> b!7638620 (= res!3059655 (matchRSpec!4561 (regOne!41365 (regTwo!41364 r!14126)) (_2!38008 lt!2660348)))))

(assert (=> b!7638620 (=> res!3059655 e!4540661)))

(declare-fun b!7638621 () Bool)

(declare-fun e!4540657 () Bool)

(assert (=> b!7638621 (= e!4540660 e!4540657)))

(declare-fun c!1407047 () Bool)

(assert (=> b!7638621 (= c!1407047 (is-Star!20426 (regTwo!41364 r!14126)))))

(declare-fun b!7638622 () Bool)

(declare-fun c!1407046 () Bool)

(assert (=> b!7638622 (= c!1407046 (is-Union!20426 (regTwo!41364 r!14126)))))

(declare-fun e!4540663 () Bool)

(assert (=> b!7638622 (= e!4540663 e!4540660)))

(declare-fun e!4540662 () Bool)

(declare-fun call!701055 () Bool)

(assert (=> b!7638623 (= e!4540662 call!701055)))

(declare-fun bm!701049 () Bool)

(declare-fun call!701054 () Bool)

(assert (=> bm!701049 (= call!701054 (isEmpty!41786 (_2!38008 lt!2660348)))))

(declare-fun d!2324987 () Bool)

(declare-fun c!1407048 () Bool)

(assert (=> d!2324987 (= c!1407048 (is-EmptyExpr!20426 (regTwo!41364 r!14126)))))

(declare-fun e!4540659 () Bool)

(assert (=> d!2324987 (= (matchRSpec!4561 (regTwo!41364 r!14126) (_2!38008 lt!2660348)) e!4540659)))

(declare-fun bm!701050 () Bool)

(assert (=> bm!701050 (= call!701055 (Exists!4580 (ite c!1407047 lambda!469576 lambda!469577)))))

(declare-fun b!7638624 () Bool)

(assert (=> b!7638624 (= e!4540663 (= (_2!38008 lt!2660348) (Cons!73153 (c!1407027 (regTwo!41364 r!14126)) Nil!73153)))))

(declare-fun b!7638625 () Bool)

(assert (=> b!7638625 (= e!4540661 (matchRSpec!4561 (regTwo!41365 (regTwo!41364 r!14126)) (_2!38008 lt!2660348)))))

(declare-fun b!7638626 () Bool)

(declare-fun res!3059656 () Bool)

(assert (=> b!7638626 (=> res!3059656 e!4540662)))

(assert (=> b!7638626 (= res!3059656 call!701054)))

(assert (=> b!7638626 (= e!4540657 e!4540662)))

(declare-fun b!7638627 () Bool)

(declare-fun e!4540658 () Bool)

(assert (=> b!7638627 (= e!4540659 e!4540658)))

(declare-fun res!3059657 () Bool)

(assert (=> b!7638627 (= res!3059657 (not (is-EmptyLang!20426 (regTwo!41364 r!14126))))))

(assert (=> b!7638627 (=> (not res!3059657) (not e!4540658))))

(declare-fun b!7638628 () Bool)

(declare-fun c!1407049 () Bool)

(assert (=> b!7638628 (= c!1407049 (is-ElementMatch!20426 (regTwo!41364 r!14126)))))

(assert (=> b!7638628 (= e!4540658 e!4540663)))

(declare-fun b!7638629 () Bool)

(assert (=> b!7638629 (= e!4540659 call!701054)))

(assert (=> b!7638630 (= e!4540657 call!701055)))

(assert (= (and d!2324987 c!1407048) b!7638629))

(assert (= (and d!2324987 (not c!1407048)) b!7638627))

(assert (= (and b!7638627 res!3059657) b!7638628))

(assert (= (and b!7638628 c!1407049) b!7638624))

(assert (= (and b!7638628 (not c!1407049)) b!7638622))

(assert (= (and b!7638622 c!1407046) b!7638620))

(assert (= (and b!7638622 (not c!1407046)) b!7638621))

(assert (= (and b!7638620 (not res!3059655)) b!7638625))

(assert (= (and b!7638621 c!1407047) b!7638626))

(assert (= (and b!7638621 (not c!1407047)) b!7638630))

(assert (= (and b!7638626 (not res!3059656)) b!7638623))

(assert (= (or b!7638623 b!7638630) bm!701050))

(assert (= (or b!7638629 b!7638626) bm!701049))

(declare-fun m!8162304 () Bool)

(assert (=> b!7638620 m!8162304))

(declare-fun m!8162306 () Bool)

(assert (=> bm!701049 m!8162306))

(declare-fun m!8162308 () Bool)

(assert (=> bm!701050 m!8162308))

(declare-fun m!8162310 () Bool)

(assert (=> b!7638625 m!8162310))

(assert (=> b!7638483 d!2324987))

(declare-fun bs!1944623 () Bool)

(declare-fun b!7638634 () Bool)

(assert (= bs!1944623 (and b!7638634 b!7638484)))

(declare-fun lambda!469578 () Int)

(assert (=> bs!1944623 (not (= lambda!469578 lambda!469558))))

(declare-fun bs!1944624 () Bool)

(assert (= bs!1944624 (and b!7638634 b!7638483)))

(assert (=> bs!1944624 (not (= lambda!469578 lambda!469559))))

(declare-fun bs!1944625 () Bool)

(assert (= bs!1944625 (and b!7638634 b!7638623)))

(assert (=> bs!1944625 (= (and (= (_1!38008 lt!2660348) (_2!38008 lt!2660348)) (= (reg!20755 (regOne!41364 r!14126)) (reg!20755 (regTwo!41364 r!14126))) (= (regOne!41364 r!14126) (regTwo!41364 r!14126))) (= lambda!469578 lambda!469576))))

(declare-fun bs!1944627 () Bool)

(assert (= bs!1944627 (and b!7638634 b!7638630)))

(assert (=> bs!1944627 (not (= lambda!469578 lambda!469577))))

(assert (=> b!7638634 true))

(assert (=> b!7638634 true))

(declare-fun bs!1944628 () Bool)

(declare-fun b!7638641 () Bool)

(assert (= bs!1944628 (and b!7638641 b!7638483)))

(declare-fun lambda!469579 () Int)

(assert (=> bs!1944628 (= (and (= (_1!38008 lt!2660348) s!9605) (= (regOne!41364 (regOne!41364 r!14126)) (regOne!41364 r!14126)) (= (regTwo!41364 (regOne!41364 r!14126)) (regTwo!41364 r!14126))) (= lambda!469579 lambda!469559))))

(declare-fun bs!1944629 () Bool)

(assert (= bs!1944629 (and b!7638641 b!7638630)))

(assert (=> bs!1944629 (= (and (= (_1!38008 lt!2660348) (_2!38008 lt!2660348)) (= (regOne!41364 (regOne!41364 r!14126)) (regOne!41364 (regTwo!41364 r!14126))) (= (regTwo!41364 (regOne!41364 r!14126)) (regTwo!41364 (regTwo!41364 r!14126)))) (= lambda!469579 lambda!469577))))

(declare-fun bs!1944630 () Bool)

(assert (= bs!1944630 (and b!7638641 b!7638634)))

(assert (=> bs!1944630 (not (= lambda!469579 lambda!469578))))

(declare-fun bs!1944631 () Bool)

(assert (= bs!1944631 (and b!7638641 b!7638623)))

(assert (=> bs!1944631 (not (= lambda!469579 lambda!469576))))

(declare-fun bs!1944632 () Bool)

(assert (= bs!1944632 (and b!7638641 b!7638484)))

(assert (=> bs!1944632 (not (= lambda!469579 lambda!469558))))

(assert (=> b!7638641 true))

(assert (=> b!7638641 true))

(declare-fun b!7638631 () Bool)

(declare-fun e!4540667 () Bool)

(declare-fun e!4540668 () Bool)

(assert (=> b!7638631 (= e!4540667 e!4540668)))

(declare-fun res!3059658 () Bool)

(assert (=> b!7638631 (= res!3059658 (matchRSpec!4561 (regOne!41365 (regOne!41364 r!14126)) (_1!38008 lt!2660348)))))

(assert (=> b!7638631 (=> res!3059658 e!4540668)))

(declare-fun b!7638632 () Bool)

(declare-fun e!4540664 () Bool)

(assert (=> b!7638632 (= e!4540667 e!4540664)))

(declare-fun c!1407051 () Bool)

(assert (=> b!7638632 (= c!1407051 (is-Star!20426 (regOne!41364 r!14126)))))

(declare-fun b!7638633 () Bool)

(declare-fun c!1407050 () Bool)

(assert (=> b!7638633 (= c!1407050 (is-Union!20426 (regOne!41364 r!14126)))))

(declare-fun e!4540670 () Bool)

(assert (=> b!7638633 (= e!4540670 e!4540667)))

(declare-fun e!4540669 () Bool)

(declare-fun call!701057 () Bool)

(assert (=> b!7638634 (= e!4540669 call!701057)))

(declare-fun bm!701051 () Bool)

(declare-fun call!701056 () Bool)

(assert (=> bm!701051 (= call!701056 (isEmpty!41786 (_1!38008 lt!2660348)))))

(declare-fun d!2324997 () Bool)

(declare-fun c!1407052 () Bool)

(assert (=> d!2324997 (= c!1407052 (is-EmptyExpr!20426 (regOne!41364 r!14126)))))

(declare-fun e!4540666 () Bool)

(assert (=> d!2324997 (= (matchRSpec!4561 (regOne!41364 r!14126) (_1!38008 lt!2660348)) e!4540666)))

(declare-fun bm!701052 () Bool)

(assert (=> bm!701052 (= call!701057 (Exists!4580 (ite c!1407051 lambda!469578 lambda!469579)))))

(declare-fun b!7638635 () Bool)

(assert (=> b!7638635 (= e!4540670 (= (_1!38008 lt!2660348) (Cons!73153 (c!1407027 (regOne!41364 r!14126)) Nil!73153)))))

(declare-fun b!7638636 () Bool)

(assert (=> b!7638636 (= e!4540668 (matchRSpec!4561 (regTwo!41365 (regOne!41364 r!14126)) (_1!38008 lt!2660348)))))

(declare-fun b!7638637 () Bool)

(declare-fun res!3059659 () Bool)

(assert (=> b!7638637 (=> res!3059659 e!4540669)))

(assert (=> b!7638637 (= res!3059659 call!701056)))

(assert (=> b!7638637 (= e!4540664 e!4540669)))

(declare-fun b!7638638 () Bool)

(declare-fun e!4540665 () Bool)

(assert (=> b!7638638 (= e!4540666 e!4540665)))

(declare-fun res!3059660 () Bool)

(assert (=> b!7638638 (= res!3059660 (not (is-EmptyLang!20426 (regOne!41364 r!14126))))))

(assert (=> b!7638638 (=> (not res!3059660) (not e!4540665))))

(declare-fun b!7638639 () Bool)

(declare-fun c!1407053 () Bool)

(assert (=> b!7638639 (= c!1407053 (is-ElementMatch!20426 (regOne!41364 r!14126)))))

(assert (=> b!7638639 (= e!4540665 e!4540670)))

(declare-fun b!7638640 () Bool)

(assert (=> b!7638640 (= e!4540666 call!701056)))

(assert (=> b!7638641 (= e!4540664 call!701057)))

(assert (= (and d!2324997 c!1407052) b!7638640))

(assert (= (and d!2324997 (not c!1407052)) b!7638638))

(assert (= (and b!7638638 res!3059660) b!7638639))

(assert (= (and b!7638639 c!1407053) b!7638635))

(assert (= (and b!7638639 (not c!1407053)) b!7638633))

(assert (= (and b!7638633 c!1407050) b!7638631))

(assert (= (and b!7638633 (not c!1407050)) b!7638632))

(assert (= (and b!7638631 (not res!3059658)) b!7638636))

(assert (= (and b!7638632 c!1407051) b!7638637))

(assert (= (and b!7638632 (not c!1407051)) b!7638641))

(assert (= (and b!7638637 (not res!3059659)) b!7638634))

(assert (= (or b!7638634 b!7638641) bm!701052))

(assert (= (or b!7638640 b!7638637) bm!701051))

(declare-fun m!8162316 () Bool)

(assert (=> b!7638631 m!8162316))

(assert (=> bm!701051 m!8162284))

(declare-fun m!8162318 () Bool)

(assert (=> bm!701052 m!8162318))

(declare-fun m!8162320 () Bool)

(assert (=> b!7638636 m!8162320))

(assert (=> b!7638483 d!2324997))

(declare-fun d!2325001 () Bool)

(assert (=> d!2325001 (Exists!4580 lambda!469559)))

(declare-fun lt!2660391 () Unit!167848)

(declare-fun choose!58997 (tuple2!69410 Int) Unit!167848)

(assert (=> d!2325001 (= lt!2660391 (choose!58997 lt!2660348 lambda!469559))))

(assert (=> d!2325001 (dynLambda!29933 lambda!469559 lt!2660348)))

(assert (=> d!2325001 (= (ExistsThe!55 lt!2660348 lambda!469559) lt!2660391)))

(declare-fun b_lambda!289113 () Bool)

(assert (=> (not b_lambda!289113) (not d!2325001)))

(declare-fun bs!1944633 () Bool)

(assert (= bs!1944633 d!2325001))

(assert (=> bs!1944633 m!8162234))

(declare-fun m!8162322 () Bool)

(assert (=> bs!1944633 m!8162322))

(declare-fun m!8162324 () Bool)

(assert (=> bs!1944633 m!8162324))

(assert (=> b!7638483 d!2325001))

(declare-fun b!7638642 () Bool)

(declare-fun e!4540677 () Bool)

(declare-fun e!4540675 () Bool)

(assert (=> b!7638642 (= e!4540677 e!4540675)))

(declare-fun res!3059663 () Bool)

(assert (=> b!7638642 (=> res!3059663 e!4540675)))

(declare-fun call!701058 () Bool)

(assert (=> b!7638642 (= res!3059663 call!701058)))

(declare-fun b!7638643 () Bool)

(declare-fun res!3059668 () Bool)

(declare-fun e!4540672 () Bool)

(assert (=> b!7638643 (=> res!3059668 e!4540672)))

(assert (=> b!7638643 (= res!3059668 (not (is-ElementMatch!20426 (regTwo!41364 r!14126))))))

(declare-fun e!4540671 () Bool)

(assert (=> b!7638643 (= e!4540671 e!4540672)))

(declare-fun b!7638645 () Bool)

(assert (=> b!7638645 (= e!4540672 e!4540677)))

(declare-fun res!3059667 () Bool)

(assert (=> b!7638645 (=> (not res!3059667) (not e!4540677))))

(declare-fun lt!2660392 () Bool)

(assert (=> b!7638645 (= res!3059667 (not lt!2660392))))

(declare-fun b!7638646 () Bool)

(declare-fun res!3059664 () Bool)

(assert (=> b!7638646 (=> res!3059664 e!4540675)))

(assert (=> b!7638646 (= res!3059664 (not (isEmpty!41786 (tail!15248 (_2!38008 lt!2660348)))))))

(declare-fun b!7638647 () Bool)

(assert (=> b!7638647 (= e!4540675 (not (= (head!15708 (_2!38008 lt!2660348)) (c!1407027 (regTwo!41364 r!14126)))))))

(declare-fun b!7638648 () Bool)

(assert (=> b!7638648 (= e!4540671 (not lt!2660392))))

(declare-fun b!7638649 () Bool)

(declare-fun e!4540674 () Bool)

(assert (=> b!7638649 (= e!4540674 (nullable!8935 (regTwo!41364 r!14126)))))

(declare-fun b!7638650 () Bool)

(declare-fun e!4540673 () Bool)

(assert (=> b!7638650 (= e!4540673 e!4540671)))

(declare-fun c!1407054 () Bool)

(assert (=> b!7638650 (= c!1407054 (is-EmptyLang!20426 (regTwo!41364 r!14126)))))

(declare-fun b!7638651 () Bool)

(assert (=> b!7638651 (= e!4540674 (matchR!9929 (derivativeStep!5908 (regTwo!41364 r!14126) (head!15708 (_2!38008 lt!2660348))) (tail!15248 (_2!38008 lt!2660348))))))

(declare-fun bm!701053 () Bool)

(assert (=> bm!701053 (= call!701058 (isEmpty!41786 (_2!38008 lt!2660348)))))

(declare-fun b!7638652 () Bool)

(declare-fun res!3059662 () Bool)

(declare-fun e!4540676 () Bool)

(assert (=> b!7638652 (=> (not res!3059662) (not e!4540676))))

(assert (=> b!7638652 (= res!3059662 (isEmpty!41786 (tail!15248 (_2!38008 lt!2660348))))))

(declare-fun b!7638653 () Bool)

(assert (=> b!7638653 (= e!4540676 (= (head!15708 (_2!38008 lt!2660348)) (c!1407027 (regTwo!41364 r!14126))))))

(declare-fun b!7638644 () Bool)

(declare-fun res!3059665 () Bool)

(assert (=> b!7638644 (=> res!3059665 e!4540672)))

(assert (=> b!7638644 (= res!3059665 e!4540676)))

(declare-fun res!3059661 () Bool)

(assert (=> b!7638644 (=> (not res!3059661) (not e!4540676))))

(assert (=> b!7638644 (= res!3059661 lt!2660392)))

(declare-fun d!2325003 () Bool)

(assert (=> d!2325003 e!4540673))

(declare-fun c!1407055 () Bool)

(assert (=> d!2325003 (= c!1407055 (is-EmptyExpr!20426 (regTwo!41364 r!14126)))))

(assert (=> d!2325003 (= lt!2660392 e!4540674)))

(declare-fun c!1407056 () Bool)

(assert (=> d!2325003 (= c!1407056 (isEmpty!41786 (_2!38008 lt!2660348)))))

(assert (=> d!2325003 (validRegex!10844 (regTwo!41364 r!14126))))

(assert (=> d!2325003 (= (matchR!9929 (regTwo!41364 r!14126) (_2!38008 lt!2660348)) lt!2660392)))

(declare-fun b!7638654 () Bool)

(declare-fun res!3059666 () Bool)

(assert (=> b!7638654 (=> (not res!3059666) (not e!4540676))))

(assert (=> b!7638654 (= res!3059666 (not call!701058))))

(declare-fun b!7638655 () Bool)

(assert (=> b!7638655 (= e!4540673 (= lt!2660392 call!701058))))

(assert (= (and d!2325003 c!1407056) b!7638649))

(assert (= (and d!2325003 (not c!1407056)) b!7638651))

(assert (= (and d!2325003 c!1407055) b!7638655))

(assert (= (and d!2325003 (not c!1407055)) b!7638650))

(assert (= (and b!7638650 c!1407054) b!7638648))

(assert (= (and b!7638650 (not c!1407054)) b!7638643))

(assert (= (and b!7638643 (not res!3059668)) b!7638644))

(assert (= (and b!7638644 res!3059661) b!7638654))

(assert (= (and b!7638654 res!3059666) b!7638652))

(assert (= (and b!7638652 res!3059662) b!7638653))

(assert (= (and b!7638644 (not res!3059665)) b!7638645))

(assert (= (and b!7638645 res!3059667) b!7638642))

(assert (= (and b!7638642 (not res!3059663)) b!7638646))

(assert (= (and b!7638646 (not res!3059664)) b!7638647))

(assert (= (or b!7638655 b!7638642 b!7638654) bm!701053))

(declare-fun m!8162326 () Bool)

(assert (=> b!7638651 m!8162326))

(assert (=> b!7638651 m!8162326))

(declare-fun m!8162328 () Bool)

(assert (=> b!7638651 m!8162328))

(declare-fun m!8162330 () Bool)

(assert (=> b!7638651 m!8162330))

(assert (=> b!7638651 m!8162328))

(assert (=> b!7638651 m!8162330))

(declare-fun m!8162332 () Bool)

(assert (=> b!7638651 m!8162332))

(assert (=> bm!701053 m!8162306))

(assert (=> b!7638652 m!8162330))

(assert (=> b!7638652 m!8162330))

(declare-fun m!8162334 () Bool)

(assert (=> b!7638652 m!8162334))

(assert (=> b!7638653 m!8162326))

(assert (=> d!2325003 m!8162306))

(declare-fun m!8162336 () Bool)

(assert (=> d!2325003 m!8162336))

(assert (=> b!7638647 m!8162326))

(declare-fun m!8162338 () Bool)

(assert (=> b!7638649 m!8162338))

(assert (=> b!7638646 m!8162330))

(assert (=> b!7638646 m!8162330))

(assert (=> b!7638646 m!8162334))

(assert (=> b!7638483 d!2325003))

(declare-fun d!2325005 () Bool)

(assert (=> d!2325005 (= (matchR!9929 (regTwo!41364 r!14126) (_2!38008 lt!2660348)) (matchRSpec!4561 (regTwo!41364 r!14126) (_2!38008 lt!2660348)))))

(declare-fun lt!2660395 () Unit!167848)

(declare-fun choose!58998 (Regex!20426 List!73277) Unit!167848)

(assert (=> d!2325005 (= lt!2660395 (choose!58998 (regTwo!41364 r!14126) (_2!38008 lt!2660348)))))

(assert (=> d!2325005 (validRegex!10844 (regTwo!41364 r!14126))))

(assert (=> d!2325005 (= (mainMatchTheorem!4547 (regTwo!41364 r!14126) (_2!38008 lt!2660348)) lt!2660395)))

(declare-fun bs!1944634 () Bool)

(assert (= bs!1944634 d!2325005))

(assert (=> bs!1944634 m!8162226))

(assert (=> bs!1944634 m!8162228))

(declare-fun m!8162340 () Bool)

(assert (=> bs!1944634 m!8162340))

(assert (=> bs!1944634 m!8162336))

(assert (=> b!7638483 d!2325005))

(declare-fun d!2325007 () Bool)

(assert (=> d!2325007 (= (matchR!9929 (regOne!41364 r!14126) (_1!38008 lt!2660348)) (matchRSpec!4561 (regOne!41364 r!14126) (_1!38008 lt!2660348)))))

(declare-fun lt!2660396 () Unit!167848)

(assert (=> d!2325007 (= lt!2660396 (choose!58998 (regOne!41364 r!14126) (_1!38008 lt!2660348)))))

(assert (=> d!2325007 (validRegex!10844 (regOne!41364 r!14126))))

(assert (=> d!2325007 (= (mainMatchTheorem!4547 (regOne!41364 r!14126) (_1!38008 lt!2660348)) lt!2660396)))

(declare-fun bs!1944635 () Bool)

(assert (= bs!1944635 d!2325007))

(assert (=> bs!1944635 m!8162222))

(assert (=> bs!1944635 m!8162220))

(declare-fun m!8162342 () Bool)

(assert (=> bs!1944635 m!8162342))

(assert (=> bs!1944635 m!8162288))

(assert (=> b!7638483 d!2325007))

(declare-fun b!7638696 () Bool)

(declare-fun e!4540711 () Bool)

(declare-fun e!4540710 () Bool)

(assert (=> b!7638696 (= e!4540711 e!4540710)))

(declare-fun c!1407069 () Bool)

(assert (=> b!7638696 (= c!1407069 (is-Union!20426 r!14126))))

(declare-fun b!7638697 () Bool)

(declare-fun res!3059689 () Bool)

(declare-fun e!4540707 () Bool)

(assert (=> b!7638697 (=> res!3059689 e!4540707)))

(assert (=> b!7638697 (= res!3059689 (not (is-Concat!29271 r!14126)))))

(assert (=> b!7638697 (= e!4540710 e!4540707)))

(declare-fun b!7638698 () Bool)

(declare-fun e!4540712 () Bool)

(declare-fun call!701067 () Bool)

(assert (=> b!7638698 (= e!4540712 call!701067)))

(declare-fun bm!701060 () Bool)

(declare-fun call!701066 () Bool)

(assert (=> bm!701060 (= call!701066 (validRegex!10844 (ite c!1407069 (regOne!41365 r!14126) (regOne!41364 r!14126))))))

(declare-fun b!7638699 () Bool)

(declare-fun e!4540709 () Bool)

(declare-fun call!701065 () Bool)

(assert (=> b!7638699 (= e!4540709 call!701065)))

(declare-fun b!7638700 () Bool)

(declare-fun e!4540708 () Bool)

(assert (=> b!7638700 (= e!4540708 call!701065)))

(declare-fun d!2325009 () Bool)

(declare-fun res!3059685 () Bool)

(declare-fun e!4540706 () Bool)

(assert (=> d!2325009 (=> res!3059685 e!4540706)))

(assert (=> d!2325009 (= res!3059685 (is-ElementMatch!20426 r!14126))))

(assert (=> d!2325009 (= (validRegex!10844 r!14126) e!4540706)))

(declare-fun bm!701061 () Bool)

(assert (=> bm!701061 (= call!701065 call!701067)))

(declare-fun b!7638701 () Bool)

(assert (=> b!7638701 (= e!4540711 e!4540712)))

(declare-fun res!3059688 () Bool)

(assert (=> b!7638701 (= res!3059688 (not (nullable!8935 (reg!20755 r!14126))))))

(assert (=> b!7638701 (=> (not res!3059688) (not e!4540712))))

(declare-fun b!7638702 () Bool)

(declare-fun res!3059686 () Bool)

(assert (=> b!7638702 (=> (not res!3059686) (not e!4540709))))

(assert (=> b!7638702 (= res!3059686 call!701066)))

(assert (=> b!7638702 (= e!4540710 e!4540709)))

(declare-fun b!7638703 () Bool)

(assert (=> b!7638703 (= e!4540706 e!4540711)))

(declare-fun c!1407070 () Bool)

(assert (=> b!7638703 (= c!1407070 (is-Star!20426 r!14126))))

(declare-fun bm!701062 () Bool)

(assert (=> bm!701062 (= call!701067 (validRegex!10844 (ite c!1407070 (reg!20755 r!14126) (ite c!1407069 (regTwo!41365 r!14126) (regTwo!41364 r!14126)))))))

(declare-fun b!7638704 () Bool)

(assert (=> b!7638704 (= e!4540707 e!4540708)))

(declare-fun res!3059687 () Bool)

(assert (=> b!7638704 (=> (not res!3059687) (not e!4540708))))

(assert (=> b!7638704 (= res!3059687 call!701066)))

(assert (= (and d!2325009 (not res!3059685)) b!7638703))

(assert (= (and b!7638703 c!1407070) b!7638701))

(assert (= (and b!7638703 (not c!1407070)) b!7638696))

(assert (= (and b!7638701 res!3059688) b!7638698))

(assert (= (and b!7638696 c!1407069) b!7638702))

(assert (= (and b!7638696 (not c!1407069)) b!7638697))

(assert (= (and b!7638702 res!3059686) b!7638699))

(assert (= (and b!7638697 (not res!3059689)) b!7638704))

(assert (= (and b!7638704 res!3059687) b!7638700))

(assert (= (or b!7638702 b!7638704) bm!701060))

(assert (= (or b!7638699 b!7638700) bm!701061))

(assert (= (or b!7638698 bm!701061) bm!701062))

(declare-fun m!8162344 () Bool)

(assert (=> bm!701060 m!8162344))

(declare-fun m!8162346 () Bool)

(assert (=> b!7638701 m!8162346))

(declare-fun m!8162348 () Bool)

(assert (=> bm!701062 m!8162348))

(assert (=> start!735406 d!2325009))

(declare-fun d!2325011 () Bool)

(assert (=> d!2325011 (= (Exists!4580 lambda!469558) (choose!58995 lambda!469558))))

(declare-fun bs!1944636 () Bool)

(assert (= bs!1944636 d!2325011))

(declare-fun m!8162350 () Bool)

(assert (=> bs!1944636 m!8162350))

(assert (=> b!7638486 d!2325011))

(declare-fun d!2325013 () Bool)

(assert (=> d!2325013 (isDefined!14115 (findConcatSeparation!3529 (regOne!41364 r!14126) (regTwo!41364 r!14126) Nil!73153 s!9605 s!9605))))

(declare-fun lt!2660399 () Unit!167848)

(declare-fun choose!58999 (Regex!20426 Regex!20426 List!73277) Unit!167848)

(assert (=> d!2325013 (= lt!2660399 (choose!58999 (regOne!41364 r!14126) (regTwo!41364 r!14126) s!9605))))

(assert (=> d!2325013 (validRegex!10844 (regOne!41364 r!14126))))

(assert (=> d!2325013 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!289 (regOne!41364 r!14126) (regTwo!41364 r!14126) s!9605) lt!2660399)))

(declare-fun bs!1944637 () Bool)

(assert (= bs!1944637 d!2325013))

(assert (=> bs!1944637 m!8162208))

(assert (=> bs!1944637 m!8162208))

(assert (=> bs!1944637 m!8162214))

(declare-fun m!8162352 () Bool)

(assert (=> bs!1944637 m!8162352))

(assert (=> bs!1944637 m!8162288))

(assert (=> b!7638486 d!2325013))

(declare-fun b!7638711 () Bool)

(declare-fun e!4540721 () Bool)

(declare-fun e!4540719 () Bool)

(assert (=> b!7638711 (= e!4540721 e!4540719)))

(declare-fun res!3059698 () Bool)

(assert (=> b!7638711 (=> res!3059698 e!4540719)))

(declare-fun call!701068 () Bool)

(assert (=> b!7638711 (= res!3059698 call!701068)))

(declare-fun b!7638712 () Bool)

(declare-fun res!3059703 () Bool)

(declare-fun e!4540716 () Bool)

(assert (=> b!7638712 (=> res!3059703 e!4540716)))

(assert (=> b!7638712 (= res!3059703 (not (is-ElementMatch!20426 r!14126)))))

(declare-fun e!4540715 () Bool)

(assert (=> b!7638712 (= e!4540715 e!4540716)))

(declare-fun b!7638714 () Bool)

(assert (=> b!7638714 (= e!4540716 e!4540721)))

(declare-fun res!3059702 () Bool)

(assert (=> b!7638714 (=> (not res!3059702) (not e!4540721))))

(declare-fun lt!2660400 () Bool)

(assert (=> b!7638714 (= res!3059702 (not lt!2660400))))

(declare-fun b!7638715 () Bool)

(declare-fun res!3059699 () Bool)

(assert (=> b!7638715 (=> res!3059699 e!4540719)))

(assert (=> b!7638715 (= res!3059699 (not (isEmpty!41786 (tail!15248 s!9605))))))

(declare-fun b!7638716 () Bool)

(assert (=> b!7638716 (= e!4540719 (not (= (head!15708 s!9605) (c!1407027 r!14126))))))

(declare-fun b!7638717 () Bool)

(assert (=> b!7638717 (= e!4540715 (not lt!2660400))))

(declare-fun b!7638718 () Bool)

(declare-fun e!4540718 () Bool)

(assert (=> b!7638718 (= e!4540718 (nullable!8935 r!14126))))

(declare-fun b!7638719 () Bool)

(declare-fun e!4540717 () Bool)

(assert (=> b!7638719 (= e!4540717 e!4540715)))

(declare-fun c!1407071 () Bool)

(assert (=> b!7638719 (= c!1407071 (is-EmptyLang!20426 r!14126))))

(declare-fun b!7638720 () Bool)

(assert (=> b!7638720 (= e!4540718 (matchR!9929 (derivativeStep!5908 r!14126 (head!15708 s!9605)) (tail!15248 s!9605)))))

(declare-fun bm!701063 () Bool)

(assert (=> bm!701063 (= call!701068 (isEmpty!41786 s!9605))))

(declare-fun b!7638721 () Bool)

(declare-fun res!3059697 () Bool)

(declare-fun e!4540720 () Bool)

(assert (=> b!7638721 (=> (not res!3059697) (not e!4540720))))

(assert (=> b!7638721 (= res!3059697 (isEmpty!41786 (tail!15248 s!9605)))))

(declare-fun b!7638722 () Bool)

(assert (=> b!7638722 (= e!4540720 (= (head!15708 s!9605) (c!1407027 r!14126)))))

(declare-fun b!7638713 () Bool)

(declare-fun res!3059700 () Bool)

(assert (=> b!7638713 (=> res!3059700 e!4540716)))

(assert (=> b!7638713 (= res!3059700 e!4540720)))

(declare-fun res!3059696 () Bool)

(assert (=> b!7638713 (=> (not res!3059696) (not e!4540720))))

(assert (=> b!7638713 (= res!3059696 lt!2660400)))

(declare-fun d!2325015 () Bool)

(assert (=> d!2325015 e!4540717))

(declare-fun c!1407072 () Bool)

(assert (=> d!2325015 (= c!1407072 (is-EmptyExpr!20426 r!14126))))

(assert (=> d!2325015 (= lt!2660400 e!4540718)))

(declare-fun c!1407073 () Bool)

(assert (=> d!2325015 (= c!1407073 (isEmpty!41786 s!9605))))

(assert (=> d!2325015 (validRegex!10844 r!14126)))

(assert (=> d!2325015 (= (matchR!9929 r!14126 s!9605) lt!2660400)))

(declare-fun b!7638723 () Bool)

(declare-fun res!3059701 () Bool)

(assert (=> b!7638723 (=> (not res!3059701) (not e!4540720))))

(assert (=> b!7638723 (= res!3059701 (not call!701068))))

(declare-fun b!7638724 () Bool)

(assert (=> b!7638724 (= e!4540717 (= lt!2660400 call!701068))))

(assert (= (and d!2325015 c!1407073) b!7638718))

(assert (= (and d!2325015 (not c!1407073)) b!7638720))

(assert (= (and d!2325015 c!1407072) b!7638724))

(assert (= (and d!2325015 (not c!1407072)) b!7638719))

(assert (= (and b!7638719 c!1407071) b!7638717))

(assert (= (and b!7638719 (not c!1407071)) b!7638712))

(assert (= (and b!7638712 (not res!3059703)) b!7638713))

(assert (= (and b!7638713 res!3059696) b!7638723))

(assert (= (and b!7638723 res!3059701) b!7638721))

(assert (= (and b!7638721 res!3059697) b!7638722))

(assert (= (and b!7638713 (not res!3059700)) b!7638714))

(assert (= (and b!7638714 res!3059702) b!7638711))

(assert (= (and b!7638711 (not res!3059698)) b!7638715))

(assert (= (and b!7638715 (not res!3059699)) b!7638716))

(assert (= (or b!7638724 b!7638711 b!7638723) bm!701063))

(declare-fun m!8162354 () Bool)

(assert (=> b!7638720 m!8162354))

(assert (=> b!7638720 m!8162354))

(declare-fun m!8162356 () Bool)

(assert (=> b!7638720 m!8162356))

(declare-fun m!8162358 () Bool)

(assert (=> b!7638720 m!8162358))

(assert (=> b!7638720 m!8162356))

(assert (=> b!7638720 m!8162358))

(declare-fun m!8162360 () Bool)

(assert (=> b!7638720 m!8162360))

(declare-fun m!8162362 () Bool)

(assert (=> bm!701063 m!8162362))

(assert (=> b!7638721 m!8162358))

(assert (=> b!7638721 m!8162358))

(declare-fun m!8162364 () Bool)

(assert (=> b!7638721 m!8162364))

(assert (=> b!7638722 m!8162354))

(assert (=> d!2325015 m!8162362))

(assert (=> d!2325015 m!8162236))

(assert (=> b!7638716 m!8162354))

(declare-fun m!8162366 () Bool)

(assert (=> b!7638718 m!8162366))

(assert (=> b!7638715 m!8162358))

(assert (=> b!7638715 m!8162358))

(assert (=> b!7638715 m!8162364))

(assert (=> b!7638484 d!2325015))

(declare-fun bs!1944638 () Bool)

(declare-fun d!2325017 () Bool)

(assert (= bs!1944638 (and d!2325017 b!7638483)))

(declare-fun lambda!469586 () Int)

(assert (=> bs!1944638 (not (= lambda!469586 lambda!469559))))

(declare-fun bs!1944639 () Bool)

(assert (= bs!1944639 (and d!2325017 b!7638630)))

(assert (=> bs!1944639 (not (= lambda!469586 lambda!469577))))

(declare-fun bs!1944640 () Bool)

(assert (= bs!1944640 (and d!2325017 b!7638634)))

(assert (=> bs!1944640 (not (= lambda!469586 lambda!469578))))

(declare-fun bs!1944641 () Bool)

(assert (= bs!1944641 (and d!2325017 b!7638484)))

(assert (=> bs!1944641 (= lambda!469586 lambda!469558)))

(declare-fun bs!1944642 () Bool)

(assert (= bs!1944642 (and d!2325017 b!7638641)))

(assert (=> bs!1944642 (not (= lambda!469586 lambda!469579))))

(declare-fun bs!1944643 () Bool)

(assert (= bs!1944643 (and d!2325017 b!7638623)))

(assert (=> bs!1944643 (not (= lambda!469586 lambda!469576))))

(assert (=> d!2325017 true))

(assert (=> d!2325017 true))

(assert (=> d!2325017 true))

(assert (=> d!2325017 (= (isDefined!14115 (findConcatSeparation!3529 (regOne!41364 r!14126) (regTwo!41364 r!14126) Nil!73153 s!9605 s!9605)) (Exists!4580 lambda!469586))))

(declare-fun lt!2660403 () Unit!167848)

(declare-fun choose!59000 (Regex!20426 Regex!20426 List!73277) Unit!167848)

(assert (=> d!2325017 (= lt!2660403 (choose!59000 (regOne!41364 r!14126) (regTwo!41364 r!14126) s!9605))))

(assert (=> d!2325017 (validRegex!10844 (regOne!41364 r!14126))))

(assert (=> d!2325017 (= (lemmaFindConcatSeparationEquivalentToExists!3287 (regOne!41364 r!14126) (regTwo!41364 r!14126) s!9605) lt!2660403)))

(declare-fun bs!1944644 () Bool)

(assert (= bs!1944644 d!2325017))

(declare-fun m!8162368 () Bool)

(assert (=> bs!1944644 m!8162368))

(declare-fun m!8162370 () Bool)

(assert (=> bs!1944644 m!8162370))

(assert (=> bs!1944644 m!8162288))

(assert (=> bs!1944644 m!8162208))

(assert (=> bs!1944644 m!8162208))

(assert (=> bs!1944644 m!8162214))

(assert (=> b!7638484 d!2325017))

(declare-fun d!2325019 () Bool)

(declare-fun isEmpty!41787 (Option!17499) Bool)

(assert (=> d!2325019 (= (isDefined!14115 (findConcatSeparation!3529 (regOne!41364 r!14126) (regTwo!41364 r!14126) Nil!73153 s!9605 s!9605)) (not (isEmpty!41787 (findConcatSeparation!3529 (regOne!41364 r!14126) (regTwo!41364 r!14126) Nil!73153 s!9605 s!9605))))))

(declare-fun bs!1944645 () Bool)

(assert (= bs!1944645 d!2325019))

(assert (=> bs!1944645 m!8162208))

(declare-fun m!8162372 () Bool)

(assert (=> bs!1944645 m!8162372))

(assert (=> b!7638484 d!2325019))

(declare-fun b!7638773 () Bool)

(declare-fun e!4540751 () Bool)

(declare-fun lt!2660412 () Option!17499)

(declare-fun ++!17702 (List!73277 List!73277) List!73277)

(declare-fun get!25900 (Option!17499) tuple2!69410)

(assert (=> b!7638773 (= e!4540751 (= (++!17702 (_1!38008 (get!25900 lt!2660412)) (_2!38008 (get!25900 lt!2660412))) s!9605))))

(declare-fun b!7638774 () Bool)

(declare-fun e!4540750 () Option!17499)

(declare-fun e!4540754 () Option!17499)

(assert (=> b!7638774 (= e!4540750 e!4540754)))

(declare-fun c!1407087 () Bool)

(assert (=> b!7638774 (= c!1407087 (is-Nil!73153 s!9605))))

(declare-fun b!7638775 () Bool)

(declare-fun res!3059731 () Bool)

(assert (=> b!7638775 (=> (not res!3059731) (not e!4540751))))

(assert (=> b!7638775 (= res!3059731 (matchR!9929 (regOne!41364 r!14126) (_1!38008 (get!25900 lt!2660412))))))

(declare-fun d!2325021 () Bool)

(declare-fun e!4540753 () Bool)

(assert (=> d!2325021 e!4540753))

(declare-fun res!3059729 () Bool)

(assert (=> d!2325021 (=> res!3059729 e!4540753)))

(assert (=> d!2325021 (= res!3059729 e!4540751)))

(declare-fun res!3059728 () Bool)

(assert (=> d!2325021 (=> (not res!3059728) (not e!4540751))))

(assert (=> d!2325021 (= res!3059728 (isDefined!14115 lt!2660412))))

(assert (=> d!2325021 (= lt!2660412 e!4540750)))

(declare-fun c!1407086 () Bool)

(declare-fun e!4540752 () Bool)

(assert (=> d!2325021 (= c!1407086 e!4540752)))

(declare-fun res!3059730 () Bool)

(assert (=> d!2325021 (=> (not res!3059730) (not e!4540752))))

(assert (=> d!2325021 (= res!3059730 (matchR!9929 (regOne!41364 r!14126) Nil!73153))))

(assert (=> d!2325021 (validRegex!10844 (regOne!41364 r!14126))))

(assert (=> d!2325021 (= (findConcatSeparation!3529 (regOne!41364 r!14126) (regTwo!41364 r!14126) Nil!73153 s!9605 s!9605) lt!2660412)))

(declare-fun b!7638776 () Bool)

(declare-fun lt!2660410 () Unit!167848)

(declare-fun lt!2660411 () Unit!167848)

(assert (=> b!7638776 (= lt!2660410 lt!2660411)))

(assert (=> b!7638776 (= (++!17702 (++!17702 Nil!73153 (Cons!73153 (h!79601 s!9605) Nil!73153)) (t!388012 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3262 (List!73277 C!41178 List!73277 List!73277) Unit!167848)

(assert (=> b!7638776 (= lt!2660411 (lemmaMoveElementToOtherListKeepsConcatEq!3262 Nil!73153 (h!79601 s!9605) (t!388012 s!9605) s!9605))))

(assert (=> b!7638776 (= e!4540754 (findConcatSeparation!3529 (regOne!41364 r!14126) (regTwo!41364 r!14126) (++!17702 Nil!73153 (Cons!73153 (h!79601 s!9605) Nil!73153)) (t!388012 s!9605) s!9605))))

(declare-fun b!7638777 () Bool)

(assert (=> b!7638777 (= e!4540753 (not (isDefined!14115 lt!2660412)))))

(declare-fun b!7638778 () Bool)

(assert (=> b!7638778 (= e!4540754 None!17498)))

(declare-fun b!7638779 () Bool)

(declare-fun res!3059732 () Bool)

(assert (=> b!7638779 (=> (not res!3059732) (not e!4540751))))

(assert (=> b!7638779 (= res!3059732 (matchR!9929 (regTwo!41364 r!14126) (_2!38008 (get!25900 lt!2660412))))))

(declare-fun b!7638780 () Bool)

(assert (=> b!7638780 (= e!4540752 (matchR!9929 (regTwo!41364 r!14126) s!9605))))

(declare-fun b!7638781 () Bool)

(assert (=> b!7638781 (= e!4540750 (Some!17498 (tuple2!69411 Nil!73153 s!9605)))))

(assert (= (and d!2325021 res!3059730) b!7638780))

(assert (= (and d!2325021 c!1407086) b!7638781))

(assert (= (and d!2325021 (not c!1407086)) b!7638774))

(assert (= (and b!7638774 c!1407087) b!7638778))

(assert (= (and b!7638774 (not c!1407087)) b!7638776))

(assert (= (and d!2325021 res!3059728) b!7638775))

(assert (= (and b!7638775 res!3059731) b!7638779))

(assert (= (and b!7638779 res!3059732) b!7638773))

(assert (= (and d!2325021 (not res!3059729)) b!7638777))

(declare-fun m!8162384 () Bool)

(assert (=> d!2325021 m!8162384))

(declare-fun m!8162386 () Bool)

(assert (=> d!2325021 m!8162386))

(assert (=> d!2325021 m!8162288))

(declare-fun m!8162388 () Bool)

(assert (=> b!7638775 m!8162388))

(declare-fun m!8162390 () Bool)

(assert (=> b!7638775 m!8162390))

(assert (=> b!7638777 m!8162384))

(assert (=> b!7638779 m!8162388))

(declare-fun m!8162392 () Bool)

(assert (=> b!7638779 m!8162392))

(declare-fun m!8162394 () Bool)

(assert (=> b!7638780 m!8162394))

(assert (=> b!7638773 m!8162388))

(declare-fun m!8162396 () Bool)

(assert (=> b!7638773 m!8162396))

(declare-fun m!8162398 () Bool)

(assert (=> b!7638776 m!8162398))

(assert (=> b!7638776 m!8162398))

(declare-fun m!8162400 () Bool)

(assert (=> b!7638776 m!8162400))

(declare-fun m!8162402 () Bool)

(assert (=> b!7638776 m!8162402))

(assert (=> b!7638776 m!8162398))

(declare-fun m!8162404 () Bool)

(assert (=> b!7638776 m!8162404))

(assert (=> b!7638484 d!2325021))

(assert (=> b!7638484 d!2325011))

(declare-fun b!7638793 () Bool)

(declare-fun e!4540757 () Bool)

(declare-fun tp!2229645 () Bool)

(declare-fun tp!2229648 () Bool)

(assert (=> b!7638793 (= e!4540757 (and tp!2229645 tp!2229648))))

(declare-fun b!7638794 () Bool)

(declare-fun tp!2229644 () Bool)

(assert (=> b!7638794 (= e!4540757 tp!2229644)))

(assert (=> b!7638482 (= tp!2229610 e!4540757)))

(declare-fun b!7638792 () Bool)

(assert (=> b!7638792 (= e!4540757 tp_is_empty!51207)))

(declare-fun b!7638795 () Bool)

(declare-fun tp!2229647 () Bool)

(declare-fun tp!2229646 () Bool)

(assert (=> b!7638795 (= e!4540757 (and tp!2229647 tp!2229646))))

(assert (= (and b!7638482 (is-ElementMatch!20426 (reg!20755 r!14126))) b!7638792))

(assert (= (and b!7638482 (is-Concat!29271 (reg!20755 r!14126))) b!7638793))

(assert (= (and b!7638482 (is-Star!20426 (reg!20755 r!14126))) b!7638794))

(assert (= (and b!7638482 (is-Union!20426 (reg!20755 r!14126))) b!7638795))

(declare-fun b!7638797 () Bool)

(declare-fun e!4540758 () Bool)

(declare-fun tp!2229650 () Bool)

(declare-fun tp!2229653 () Bool)

(assert (=> b!7638797 (= e!4540758 (and tp!2229650 tp!2229653))))

(declare-fun b!7638798 () Bool)

(declare-fun tp!2229649 () Bool)

(assert (=> b!7638798 (= e!4540758 tp!2229649)))

(assert (=> b!7638487 (= tp!2229615 e!4540758)))

(declare-fun b!7638796 () Bool)

(assert (=> b!7638796 (= e!4540758 tp_is_empty!51207)))

(declare-fun b!7638799 () Bool)

(declare-fun tp!2229652 () Bool)

(declare-fun tp!2229651 () Bool)

(assert (=> b!7638799 (= e!4540758 (and tp!2229652 tp!2229651))))

(assert (= (and b!7638487 (is-ElementMatch!20426 (regOne!41365 r!14126))) b!7638796))

(assert (= (and b!7638487 (is-Concat!29271 (regOne!41365 r!14126))) b!7638797))

(assert (= (and b!7638487 (is-Star!20426 (regOne!41365 r!14126))) b!7638798))

(assert (= (and b!7638487 (is-Union!20426 (regOne!41365 r!14126))) b!7638799))

(declare-fun b!7638801 () Bool)

(declare-fun e!4540759 () Bool)

(declare-fun tp!2229655 () Bool)

(declare-fun tp!2229658 () Bool)

(assert (=> b!7638801 (= e!4540759 (and tp!2229655 tp!2229658))))

(declare-fun b!7638802 () Bool)

(declare-fun tp!2229654 () Bool)

(assert (=> b!7638802 (= e!4540759 tp!2229654)))

(assert (=> b!7638487 (= tp!2229613 e!4540759)))

(declare-fun b!7638800 () Bool)

(assert (=> b!7638800 (= e!4540759 tp_is_empty!51207)))

(declare-fun b!7638803 () Bool)

(declare-fun tp!2229657 () Bool)

(declare-fun tp!2229656 () Bool)

(assert (=> b!7638803 (= e!4540759 (and tp!2229657 tp!2229656))))

(assert (= (and b!7638487 (is-ElementMatch!20426 (regTwo!41365 r!14126))) b!7638800))

(assert (= (and b!7638487 (is-Concat!29271 (regTwo!41365 r!14126))) b!7638801))

(assert (= (and b!7638487 (is-Star!20426 (regTwo!41365 r!14126))) b!7638802))

(assert (= (and b!7638487 (is-Union!20426 (regTwo!41365 r!14126))) b!7638803))

(declare-fun b!7638805 () Bool)

(declare-fun e!4540760 () Bool)

(declare-fun tp!2229660 () Bool)

(declare-fun tp!2229663 () Bool)

(assert (=> b!7638805 (= e!4540760 (and tp!2229660 tp!2229663))))

(declare-fun b!7638806 () Bool)

(declare-fun tp!2229659 () Bool)

(assert (=> b!7638806 (= e!4540760 tp!2229659)))

(assert (=> b!7638485 (= tp!2229612 e!4540760)))

(declare-fun b!7638804 () Bool)

(assert (=> b!7638804 (= e!4540760 tp_is_empty!51207)))

(declare-fun b!7638807 () Bool)

(declare-fun tp!2229662 () Bool)

(declare-fun tp!2229661 () Bool)

(assert (=> b!7638807 (= e!4540760 (and tp!2229662 tp!2229661))))

(assert (= (and b!7638485 (is-ElementMatch!20426 (regOne!41364 r!14126))) b!7638804))

(assert (= (and b!7638485 (is-Concat!29271 (regOne!41364 r!14126))) b!7638805))

(assert (= (and b!7638485 (is-Star!20426 (regOne!41364 r!14126))) b!7638806))

(assert (= (and b!7638485 (is-Union!20426 (regOne!41364 r!14126))) b!7638807))

(declare-fun b!7638809 () Bool)

(declare-fun e!4540761 () Bool)

(declare-fun tp!2229665 () Bool)

(declare-fun tp!2229668 () Bool)

(assert (=> b!7638809 (= e!4540761 (and tp!2229665 tp!2229668))))

(declare-fun b!7638810 () Bool)

(declare-fun tp!2229664 () Bool)

(assert (=> b!7638810 (= e!4540761 tp!2229664)))

(assert (=> b!7638485 (= tp!2229611 e!4540761)))

(declare-fun b!7638808 () Bool)

(assert (=> b!7638808 (= e!4540761 tp_is_empty!51207)))

(declare-fun b!7638811 () Bool)

(declare-fun tp!2229667 () Bool)

(declare-fun tp!2229666 () Bool)

(assert (=> b!7638811 (= e!4540761 (and tp!2229667 tp!2229666))))

(assert (= (and b!7638485 (is-ElementMatch!20426 (regTwo!41364 r!14126))) b!7638808))

(assert (= (and b!7638485 (is-Concat!29271 (regTwo!41364 r!14126))) b!7638809))

(assert (= (and b!7638485 (is-Star!20426 (regTwo!41364 r!14126))) b!7638810))

(assert (= (and b!7638485 (is-Union!20426 (regTwo!41364 r!14126))) b!7638811))

(declare-fun b!7638816 () Bool)

(declare-fun e!4540764 () Bool)

(declare-fun tp!2229671 () Bool)

(assert (=> b!7638816 (= e!4540764 (and tp_is_empty!51207 tp!2229671))))

(assert (=> b!7638489 (= tp!2229614 e!4540764)))

(assert (= (and b!7638489 (is-Cons!73153 (t!388012 s!9605))) b!7638816))

(declare-fun b_lambda!289115 () Bool)

(assert (= b_lambda!289113 (or b!7638483 b_lambda!289115)))

(declare-fun bs!1944661 () Bool)

(declare-fun d!2325029 () Bool)

(assert (= bs!1944661 (and d!2325029 b!7638483)))

(declare-fun res!3059733 () Bool)

(declare-fun e!4540765 () Bool)

(assert (=> bs!1944661 (=> (not res!3059733) (not e!4540765))))

(assert (=> bs!1944661 (= res!3059733 (= (++!17702 (_1!38008 lt!2660348) (_2!38008 lt!2660348)) s!9605))))

(assert (=> bs!1944661 (= (dynLambda!29933 lambda!469559 lt!2660348) e!4540765)))

(declare-fun b!7638817 () Bool)

(declare-fun res!3059734 () Bool)

(assert (=> b!7638817 (=> (not res!3059734) (not e!4540765))))

(assert (=> b!7638817 (= res!3059734 (matchRSpec!4561 (regOne!41364 r!14126) (_1!38008 lt!2660348)))))

(declare-fun b!7638818 () Bool)

(assert (=> b!7638818 (= e!4540765 (matchRSpec!4561 (regTwo!41364 r!14126) (_2!38008 lt!2660348)))))

(assert (= (and bs!1944661 res!3059733) b!7638817))

(assert (= (and b!7638817 res!3059734) b!7638818))

(declare-fun m!8162414 () Bool)

(assert (=> bs!1944661 m!8162414))

(assert (=> b!7638817 m!8162220))

(assert (=> b!7638818 m!8162228))

(assert (=> d!2325001 d!2325029))

(declare-fun b_lambda!289117 () Bool)

(assert (= b_lambda!289107 (or b!7638484 b_lambda!289117)))

(declare-fun bs!1944662 () Bool)

(declare-fun d!2325031 () Bool)

(assert (= bs!1944662 (and d!2325031 b!7638484)))

(declare-fun res!3059735 () Bool)

(declare-fun e!4540766 () Bool)

(assert (=> bs!1944662 (=> (not res!3059735) (not e!4540766))))

(assert (=> bs!1944662 (= res!3059735 (= (++!17702 (_1!38008 lt!2660375) (_2!38008 lt!2660375)) s!9605))))

(assert (=> bs!1944662 (= (dynLambda!29933 lambda!469558 lt!2660375) e!4540766)))

(declare-fun b!7638819 () Bool)

(declare-fun res!3059736 () Bool)

(assert (=> b!7638819 (=> (not res!3059736) (not e!4540766))))

(assert (=> b!7638819 (= res!3059736 (matchR!9929 (regOne!41364 r!14126) (_1!38008 lt!2660375)))))

(declare-fun b!7638820 () Bool)

(assert (=> b!7638820 (= e!4540766 (matchR!9929 (regTwo!41364 r!14126) (_2!38008 lt!2660375)))))

(assert (= (and bs!1944662 res!3059735) b!7638819))

(assert (= (and b!7638819 res!3059736) b!7638820))

(declare-fun m!8162416 () Bool)

(assert (=> bs!1944662 m!8162416))

(declare-fun m!8162418 () Bool)

(assert (=> b!7638819 m!8162418))

(declare-fun m!8162420 () Bool)

(assert (=> b!7638820 m!8162420))

(assert (=> d!2324983 d!2325031))

(push 1)

(assert (not d!2325017))

(assert (not b!7638578))

(assert (not b!7638820))

(assert (not b!7638718))

(assert (not b!7638818))

(assert (not b!7638807))

(assert (not b!7638652))

(assert (not b!7638775))

(assert (not d!2324983))

(assert (not b!7638806))

(assert (not b!7638720))

(assert (not b!7638794))

(assert (not b!7638625))

(assert (not b!7638715))

(assert (not b!7638779))

(assert (not b!7638722))

(assert (not bs!1944661))

(assert (not b!7638819))

(assert (not d!2325021))

(assert (not b!7638776))

(assert (not b_lambda!289115))

(assert (not d!2325011))

(assert (not bm!701060))

(assert (not b!7638798))

(assert (not d!2325005))

(assert (not d!2324981))

(assert (not d!2325015))

(assert (not b!7638803))

(assert (not b!7638805))

(assert (not b!7638701))

(assert (not b!7638816))

(assert (not b!7638801))

(assert (not d!2325019))

(assert (not b!7638777))

(assert (not b!7638583))

(assert (not b!7638585))

(assert (not b!7638631))

(assert (not d!2324985))

(assert (not bm!701062))

(assert (not b!7638721))

(assert (not b!7638773))

(assert (not d!2325003))

(assert (not d!2325013))

(assert (not b!7638797))

(assert (not b!7638802))

(assert (not b!7638811))

(assert (not bm!701053))

(assert (not b!7638817))

(assert (not d!2325001))

(assert (not b!7638651))

(assert (not b!7638584))

(assert (not b!7638795))

(assert (not b_lambda!289117))

(assert (not b!7638620))

(assert (not b!7638579))

(assert (not b!7638793))

(assert (not bm!701051))

(assert (not b!7638716))

(assert (not b!7638810))

(assert (not bm!701044))

(assert (not b!7638581))

(assert (not b!7638799))

(assert tp_is_empty!51207)

(assert (not bm!701063))

(assert (not b!7638646))

(assert (not bm!701052))

(assert (not bm!701049))

(assert (not d!2325007))

(assert (not b!7638809))

(assert (not b!7638647))

(assert (not b!7638649))

(assert (not b!7638636))

(assert (not b!7638780))

(assert (not bm!701050))

(assert (not b!7638653))

(assert (not bs!1944662))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

