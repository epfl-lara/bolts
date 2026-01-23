; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!82296 () Bool)

(assert start!82296)

(declare-fun b!915418 () Bool)

(assert (=> b!915418 true))

(assert (=> b!915418 true))

(declare-fun lambda!29430 () Int)

(declare-fun lambda!29429 () Int)

(assert (=> b!915418 (not (= lambda!29430 lambda!29429))))

(assert (=> b!915418 true))

(assert (=> b!915418 true))

(declare-fun b!915412 () Bool)

(declare-fun e!596629 () Bool)

(declare-fun tp!285876 () Bool)

(assert (=> b!915412 (= e!596629 tp!285876)))

(declare-fun b!915413 () Bool)

(declare-fun tp!285873 () Bool)

(declare-fun tp!285877 () Bool)

(assert (=> b!915413 (= e!596629 (and tp!285873 tp!285877))))

(declare-fun b!915414 () Bool)

(declare-fun tp!285874 () Bool)

(declare-fun tp!285875 () Bool)

(assert (=> b!915414 (= e!596629 (and tp!285874 tp!285875))))

(declare-fun res!416225 () Bool)

(declare-fun e!596628 () Bool)

(assert (=> start!82296 (=> (not res!416225) (not e!596628))))

(declare-datatypes ((C!5478 0))(
  ( (C!5479 (val!2987 Int)) )
))
(declare-datatypes ((Regex!2454 0))(
  ( (ElementMatch!2454 (c!148345 C!5478)) (Concat!4287 (regOne!5420 Regex!2454) (regTwo!5420 Regex!2454)) (EmptyExpr!2454) (Star!2454 (reg!2783 Regex!2454)) (EmptyLang!2454) (Union!2454 (regOne!5421 Regex!2454) (regTwo!5421 Regex!2454)) )
))
(declare-fun r!15766 () Regex!2454)

(declare-fun validRegex!923 (Regex!2454) Bool)

(assert (=> start!82296 (= res!416225 (validRegex!923 r!15766))))

(assert (=> start!82296 e!596628))

(assert (=> start!82296 e!596629))

(declare-fun e!596626 () Bool)

(assert (=> start!82296 e!596626))

(declare-fun b!915415 () Bool)

(declare-fun res!416224 () Bool)

(declare-fun e!596627 () Bool)

(assert (=> b!915415 (=> res!416224 e!596627)))

(declare-datatypes ((List!9684 0))(
  ( (Nil!9668) (Cons!9668 (h!15069 C!5478) (t!100730 List!9684)) )
))
(declare-fun s!10566 () List!9684)

(declare-fun matchR!992 (Regex!2454 List!9684) Bool)

(declare-fun removeUselessConcat!131 (Regex!2454) Regex!2454)

(assert (=> b!915415 (= res!416224 (not (matchR!992 (Concat!4287 (removeUselessConcat!131 (regOne!5420 r!15766)) (removeUselessConcat!131 (regTwo!5420 r!15766))) s!10566)))))

(declare-fun b!915416 () Bool)

(declare-fun e!596630 () Bool)

(assert (=> b!915416 (= e!596628 (not e!596630))))

(declare-fun res!416223 () Bool)

(assert (=> b!915416 (=> res!416223 e!596630)))

(declare-fun lt!337409 () Bool)

(assert (=> b!915416 (= res!416223 (or lt!337409 (and (is-Concat!4287 r!15766) (is-EmptyExpr!2454 (regOne!5420 r!15766))) (and (is-Concat!4287 r!15766) (is-EmptyExpr!2454 (regTwo!5420 r!15766))) (not (is-Concat!4287 r!15766))))))

(declare-fun matchRSpec!255 (Regex!2454 List!9684) Bool)

(assert (=> b!915416 (= lt!337409 (matchRSpec!255 r!15766 s!10566))))

(assert (=> b!915416 (= lt!337409 (matchR!992 r!15766 s!10566))))

(declare-datatypes ((Unit!14527 0))(
  ( (Unit!14528) )
))
(declare-fun lt!337408 () Unit!14527)

(declare-fun mainMatchTheorem!255 (Regex!2454 List!9684) Unit!14527)

(assert (=> b!915416 (= lt!337408 (mainMatchTheorem!255 r!15766 s!10566))))

(declare-fun b!915417 () Bool)

(assert (=> b!915417 (= e!596627 (validRegex!923 (regTwo!5420 r!15766)))))

(assert (=> b!915418 (= e!596630 e!596627)))

(declare-fun res!416226 () Bool)

(assert (=> b!915418 (=> res!416226 e!596627)))

(declare-fun isEmpty!5897 (List!9684) Bool)

(assert (=> b!915418 (= res!416226 (isEmpty!5897 s!10566))))

(declare-fun Exists!225 (Int) Bool)

(assert (=> b!915418 (= (Exists!225 lambda!29429) (Exists!225 lambda!29430))))

(declare-fun lt!337406 () Unit!14527)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!137 (Regex!2454 Regex!2454 List!9684) Unit!14527)

(assert (=> b!915418 (= lt!337406 (lemmaExistCutMatchRandMatchRSpecEquivalent!137 (regOne!5420 r!15766) (regTwo!5420 r!15766) s!10566))))

(declare-datatypes ((tuple2!10894 0))(
  ( (tuple2!10895 (_1!6273 List!9684) (_2!6273 List!9684)) )
))
(declare-datatypes ((Option!2089 0))(
  ( (None!2088) (Some!2088 (v!19505 tuple2!10894)) )
))
(declare-fun isDefined!1731 (Option!2089) Bool)

(declare-fun findConcatSeparation!195 (Regex!2454 Regex!2454 List!9684 List!9684 List!9684) Option!2089)

(assert (=> b!915418 (= (isDefined!1731 (findConcatSeparation!195 (regOne!5420 r!15766) (regTwo!5420 r!15766) Nil!9668 s!10566 s!10566)) (Exists!225 lambda!29429))))

(declare-fun lt!337407 () Unit!14527)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!195 (Regex!2454 Regex!2454 List!9684) Unit!14527)

(assert (=> b!915418 (= lt!337407 (lemmaFindConcatSeparationEquivalentToExists!195 (regOne!5420 r!15766) (regTwo!5420 r!15766) s!10566))))

(declare-fun b!915419 () Bool)

(declare-fun tp_is_empty!4551 () Bool)

(declare-fun tp!285878 () Bool)

(assert (=> b!915419 (= e!596626 (and tp_is_empty!4551 tp!285878))))

(declare-fun b!915420 () Bool)

(assert (=> b!915420 (= e!596629 tp_is_empty!4551)))

(assert (= (and start!82296 res!416225) b!915416))

(assert (= (and b!915416 (not res!416223)) b!915418))

(assert (= (and b!915418 (not res!416226)) b!915415))

(assert (= (and b!915415 (not res!416224)) b!915417))

(assert (= (and start!82296 (is-ElementMatch!2454 r!15766)) b!915420))

(assert (= (and start!82296 (is-Concat!4287 r!15766)) b!915414))

(assert (= (and start!82296 (is-Star!2454 r!15766)) b!915412))

(assert (= (and start!82296 (is-Union!2454 r!15766)) b!915413))

(assert (= (and start!82296 (is-Cons!9668 s!10566)) b!915419))

(declare-fun m!1145221 () Bool)

(assert (=> b!915418 m!1145221))

(declare-fun m!1145223 () Bool)

(assert (=> b!915418 m!1145223))

(declare-fun m!1145225 () Bool)

(assert (=> b!915418 m!1145225))

(declare-fun m!1145227 () Bool)

(assert (=> b!915418 m!1145227))

(declare-fun m!1145229 () Bool)

(assert (=> b!915418 m!1145229))

(assert (=> b!915418 m!1145221))

(declare-fun m!1145231 () Bool)

(assert (=> b!915418 m!1145231))

(declare-fun m!1145233 () Bool)

(assert (=> b!915418 m!1145233))

(assert (=> b!915418 m!1145223))

(declare-fun m!1145235 () Bool)

(assert (=> start!82296 m!1145235))

(declare-fun m!1145237 () Bool)

(assert (=> b!915416 m!1145237))

(declare-fun m!1145239 () Bool)

(assert (=> b!915416 m!1145239))

(declare-fun m!1145241 () Bool)

(assert (=> b!915416 m!1145241))

(declare-fun m!1145243 () Bool)

(assert (=> b!915417 m!1145243))

(declare-fun m!1145245 () Bool)

(assert (=> b!915415 m!1145245))

(declare-fun m!1145247 () Bool)

(assert (=> b!915415 m!1145247))

(declare-fun m!1145249 () Bool)

(assert (=> b!915415 m!1145249))

(push 1)

(assert (not start!82296))

(assert (not b!915417))

(assert tp_is_empty!4551)

(assert (not b!915414))

(assert (not b!915418))

(assert (not b!915415))

(assert (not b!915413))

(assert (not b!915412))

(assert (not b!915416))

(assert (not b!915419))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!236026 () Bool)

(declare-fun b!915506 () Bool)

(assert (= bs!236026 (and b!915506 b!915418)))

(declare-fun lambda!29443 () Int)

(assert (=> bs!236026 (not (= lambda!29443 lambda!29429))))

(assert (=> bs!236026 (not (= lambda!29443 lambda!29430))))

(assert (=> b!915506 true))

(assert (=> b!915506 true))

(declare-fun bs!236027 () Bool)

(declare-fun b!915509 () Bool)

(assert (= bs!236027 (and b!915509 b!915418)))

(declare-fun lambda!29444 () Int)

(assert (=> bs!236027 (not (= lambda!29444 lambda!29429))))

(assert (=> bs!236027 (= lambda!29444 lambda!29430)))

(declare-fun bs!236028 () Bool)

(assert (= bs!236028 (and b!915509 b!915506)))

(assert (=> bs!236028 (not (= lambda!29444 lambda!29443))))

(assert (=> b!915509 true))

(assert (=> b!915509 true))

(declare-fun b!915500 () Bool)

(declare-fun e!596670 () Bool)

(assert (=> b!915500 (= e!596670 (= s!10566 (Cons!9668 (c!148345 r!15766) Nil!9668)))))

(declare-fun b!915502 () Bool)

(declare-fun e!596673 () Bool)

(assert (=> b!915502 (= e!596673 (matchRSpec!255 (regTwo!5421 r!15766) s!10566))))

(declare-fun b!915503 () Bool)

(declare-fun e!596671 () Bool)

(declare-fun call!55282 () Bool)

(assert (=> b!915503 (= e!596671 call!55282)))

(declare-fun b!915504 () Bool)

(declare-fun e!596675 () Bool)

(declare-fun e!596674 () Bool)

(assert (=> b!915504 (= e!596675 e!596674)))

(declare-fun c!148356 () Bool)

(assert (=> b!915504 (= c!148356 (is-Star!2454 r!15766))))

(declare-fun b!915505 () Bool)

(declare-fun c!148355 () Bool)

(assert (=> b!915505 (= c!148355 (is-ElementMatch!2454 r!15766))))

(declare-fun e!596676 () Bool)

(assert (=> b!915505 (= e!596676 e!596670)))

(declare-fun b!915501 () Bool)

(assert (=> b!915501 (= e!596671 e!596676)))

(declare-fun res!416269 () Bool)

(assert (=> b!915501 (= res!416269 (not (is-EmptyLang!2454 r!15766)))))

(assert (=> b!915501 (=> (not res!416269) (not e!596676))))

(declare-fun d!279739 () Bool)

(declare-fun c!148357 () Bool)

(assert (=> d!279739 (= c!148357 (is-EmptyExpr!2454 r!15766))))

(assert (=> d!279739 (= (matchRSpec!255 r!15766 s!10566) e!596671)))

(declare-fun e!596672 () Bool)

(declare-fun call!55283 () Bool)

(assert (=> b!915506 (= e!596672 call!55283)))

(declare-fun b!915507 () Bool)

(assert (=> b!915507 (= e!596675 e!596673)))

(declare-fun res!416267 () Bool)

(assert (=> b!915507 (= res!416267 (matchRSpec!255 (regOne!5421 r!15766) s!10566))))

(assert (=> b!915507 (=> res!416267 e!596673)))

(declare-fun bm!55277 () Bool)

(assert (=> bm!55277 (= call!55283 (Exists!225 (ite c!148356 lambda!29443 lambda!29444)))))

(declare-fun b!915508 () Bool)

(declare-fun res!416268 () Bool)

(assert (=> b!915508 (=> res!416268 e!596672)))

(assert (=> b!915508 (= res!416268 call!55282)))

(assert (=> b!915508 (= e!596674 e!596672)))

(assert (=> b!915509 (= e!596674 call!55283)))

(declare-fun bm!55278 () Bool)

(assert (=> bm!55278 (= call!55282 (isEmpty!5897 s!10566))))

(declare-fun b!915510 () Bool)

(declare-fun c!148358 () Bool)

(assert (=> b!915510 (= c!148358 (is-Union!2454 r!15766))))

(assert (=> b!915510 (= e!596670 e!596675)))

(assert (= (and d!279739 c!148357) b!915503))

(assert (= (and d!279739 (not c!148357)) b!915501))

(assert (= (and b!915501 res!416269) b!915505))

(assert (= (and b!915505 c!148355) b!915500))

(assert (= (and b!915505 (not c!148355)) b!915510))

(assert (= (and b!915510 c!148358) b!915507))

(assert (= (and b!915510 (not c!148358)) b!915504))

(assert (= (and b!915507 (not res!416267)) b!915502))

(assert (= (and b!915504 c!148356) b!915508))

(assert (= (and b!915504 (not c!148356)) b!915509))

(assert (= (and b!915508 (not res!416268)) b!915506))

(assert (= (or b!915506 b!915509) bm!55277))

(assert (= (or b!915503 b!915508) bm!55278))

(declare-fun m!1145281 () Bool)

(assert (=> b!915502 m!1145281))

(declare-fun m!1145283 () Bool)

(assert (=> b!915507 m!1145283))

(declare-fun m!1145285 () Bool)

(assert (=> bm!55277 m!1145285))

(assert (=> bm!55278 m!1145229))

(assert (=> b!915416 d!279739))

(declare-fun b!915557 () Bool)

(declare-fun e!596707 () Bool)

(declare-fun head!1635 (List!9684) C!5478)

(assert (=> b!915557 (= e!596707 (not (= (head!1635 s!10566) (c!148345 r!15766))))))

(declare-fun d!279743 () Bool)

(declare-fun e!596709 () Bool)

(assert (=> d!279743 e!596709))

(declare-fun c!148369 () Bool)

(assert (=> d!279743 (= c!148369 (is-EmptyExpr!2454 r!15766))))

(declare-fun lt!337424 () Bool)

(declare-fun e!596711 () Bool)

(assert (=> d!279743 (= lt!337424 e!596711)))

(declare-fun c!148370 () Bool)

(assert (=> d!279743 (= c!148370 (isEmpty!5897 s!10566))))

(assert (=> d!279743 (validRegex!923 r!15766)))

(assert (=> d!279743 (= (matchR!992 r!15766 s!10566) lt!337424)))

(declare-fun b!915558 () Bool)

(declare-fun e!596710 () Bool)

(assert (=> b!915558 (= e!596710 (not lt!337424))))

(declare-fun b!915559 () Bool)

(declare-fun e!596706 () Bool)

(assert (=> b!915559 (= e!596706 (= (head!1635 s!10566) (c!148345 r!15766)))))

(declare-fun b!915560 () Bool)

(declare-fun res!416301 () Bool)

(declare-fun e!596708 () Bool)

(assert (=> b!915560 (=> res!416301 e!596708)))

(assert (=> b!915560 (= res!416301 (not (is-ElementMatch!2454 r!15766)))))

(assert (=> b!915560 (= e!596710 e!596708)))

(declare-fun b!915561 () Bool)

(declare-fun res!416298 () Bool)

(assert (=> b!915561 (=> res!416298 e!596707)))

(declare-fun tail!1197 (List!9684) List!9684)

(assert (=> b!915561 (= res!416298 (not (isEmpty!5897 (tail!1197 s!10566))))))

(declare-fun b!915562 () Bool)

(declare-fun call!55292 () Bool)

(assert (=> b!915562 (= e!596709 (= lt!337424 call!55292))))

(declare-fun b!915563 () Bool)

(declare-fun derivativeStep!482 (Regex!2454 C!5478) Regex!2454)

(assert (=> b!915563 (= e!596711 (matchR!992 (derivativeStep!482 r!15766 (head!1635 s!10566)) (tail!1197 s!10566)))))

(declare-fun b!915564 () Bool)

(declare-fun res!416296 () Bool)

(assert (=> b!915564 (=> (not res!416296) (not e!596706))))

(assert (=> b!915564 (= res!416296 (isEmpty!5897 (tail!1197 s!10566)))))

(declare-fun b!915565 () Bool)

(declare-fun e!596705 () Bool)

(assert (=> b!915565 (= e!596705 e!596707)))

(declare-fun res!416300 () Bool)

(assert (=> b!915565 (=> res!416300 e!596707)))

(assert (=> b!915565 (= res!416300 call!55292)))

(declare-fun bm!55287 () Bool)

(assert (=> bm!55287 (= call!55292 (isEmpty!5897 s!10566))))

(declare-fun b!915566 () Bool)

(assert (=> b!915566 (= e!596709 e!596710)))

(declare-fun c!148371 () Bool)

(assert (=> b!915566 (= c!148371 (is-EmptyLang!2454 r!15766))))

(declare-fun b!915567 () Bool)

(declare-fun res!416297 () Bool)

(assert (=> b!915567 (=> res!416297 e!596708)))

(assert (=> b!915567 (= res!416297 e!596706)))

(declare-fun res!416303 () Bool)

(assert (=> b!915567 (=> (not res!416303) (not e!596706))))

(assert (=> b!915567 (= res!416303 lt!337424)))

(declare-fun b!915568 () Bool)

(declare-fun nullable!672 (Regex!2454) Bool)

(assert (=> b!915568 (= e!596711 (nullable!672 r!15766))))

(declare-fun b!915569 () Bool)

(declare-fun res!416299 () Bool)

(assert (=> b!915569 (=> (not res!416299) (not e!596706))))

(assert (=> b!915569 (= res!416299 (not call!55292))))

(declare-fun b!915570 () Bool)

(assert (=> b!915570 (= e!596708 e!596705)))

(declare-fun res!416302 () Bool)

(assert (=> b!915570 (=> (not res!416302) (not e!596705))))

(assert (=> b!915570 (= res!416302 (not lt!337424))))

(assert (= (and d!279743 c!148370) b!915568))

(assert (= (and d!279743 (not c!148370)) b!915563))

(assert (= (and d!279743 c!148369) b!915562))

(assert (= (and d!279743 (not c!148369)) b!915566))

(assert (= (and b!915566 c!148371) b!915558))

(assert (= (and b!915566 (not c!148371)) b!915560))

(assert (= (and b!915560 (not res!416301)) b!915567))

(assert (= (and b!915567 res!416303) b!915569))

(assert (= (and b!915569 res!416299) b!915564))

(assert (= (and b!915564 res!416296) b!915559))

(assert (= (and b!915567 (not res!416297)) b!915570))

(assert (= (and b!915570 res!416302) b!915565))

(assert (= (and b!915565 (not res!416300)) b!915561))

(assert (= (and b!915561 (not res!416298)) b!915557))

(assert (= (or b!915562 b!915565 b!915569) bm!55287))

(declare-fun m!1145287 () Bool)

(assert (=> b!915559 m!1145287))

(assert (=> b!915563 m!1145287))

(assert (=> b!915563 m!1145287))

(declare-fun m!1145289 () Bool)

(assert (=> b!915563 m!1145289))

(declare-fun m!1145291 () Bool)

(assert (=> b!915563 m!1145291))

(assert (=> b!915563 m!1145289))

(assert (=> b!915563 m!1145291))

(declare-fun m!1145293 () Bool)

(assert (=> b!915563 m!1145293))

(assert (=> d!279743 m!1145229))

(assert (=> d!279743 m!1145235))

(assert (=> b!915561 m!1145291))

(assert (=> b!915561 m!1145291))

(declare-fun m!1145295 () Bool)

(assert (=> b!915561 m!1145295))

(assert (=> b!915564 m!1145291))

(assert (=> b!915564 m!1145291))

(assert (=> b!915564 m!1145295))

(assert (=> b!915557 m!1145287))

(assert (=> bm!55287 m!1145229))

(declare-fun m!1145297 () Bool)

(assert (=> b!915568 m!1145297))

(assert (=> b!915416 d!279743))

(declare-fun d!279745 () Bool)

(assert (=> d!279745 (= (matchR!992 r!15766 s!10566) (matchRSpec!255 r!15766 s!10566))))

(declare-fun lt!337427 () Unit!14527)

(declare-fun choose!5584 (Regex!2454 List!9684) Unit!14527)

(assert (=> d!279745 (= lt!337427 (choose!5584 r!15766 s!10566))))

(assert (=> d!279745 (validRegex!923 r!15766)))

(assert (=> d!279745 (= (mainMatchTheorem!255 r!15766 s!10566) lt!337427)))

(declare-fun bs!236029 () Bool)

(assert (= bs!236029 d!279745))

(assert (=> bs!236029 m!1145239))

(assert (=> bs!236029 m!1145237))

(declare-fun m!1145305 () Bool)

(assert (=> bs!236029 m!1145305))

(assert (=> bs!236029 m!1145235))

(assert (=> b!915416 d!279745))

(declare-fun b!915580 () Bool)

(declare-fun e!596721 () Bool)

(assert (=> b!915580 (= e!596721 (not (= (head!1635 s!10566) (c!148345 (Concat!4287 (removeUselessConcat!131 (regOne!5420 r!15766)) (removeUselessConcat!131 (regTwo!5420 r!15766)))))))))

(declare-fun d!279749 () Bool)

(declare-fun e!596723 () Bool)

(assert (=> d!279749 e!596723))

(declare-fun c!148374 () Bool)

(assert (=> d!279749 (= c!148374 (is-EmptyExpr!2454 (Concat!4287 (removeUselessConcat!131 (regOne!5420 r!15766)) (removeUselessConcat!131 (regTwo!5420 r!15766)))))))

(declare-fun lt!337428 () Bool)

(declare-fun e!596725 () Bool)

(assert (=> d!279749 (= lt!337428 e!596725)))

(declare-fun c!148375 () Bool)

(assert (=> d!279749 (= c!148375 (isEmpty!5897 s!10566))))

(assert (=> d!279749 (validRegex!923 (Concat!4287 (removeUselessConcat!131 (regOne!5420 r!15766)) (removeUselessConcat!131 (regTwo!5420 r!15766))))))

(assert (=> d!279749 (= (matchR!992 (Concat!4287 (removeUselessConcat!131 (regOne!5420 r!15766)) (removeUselessConcat!131 (regTwo!5420 r!15766))) s!10566) lt!337428)))

(declare-fun b!915581 () Bool)

(declare-fun e!596724 () Bool)

(assert (=> b!915581 (= e!596724 (not lt!337428))))

(declare-fun b!915582 () Bool)

(declare-fun e!596720 () Bool)

(assert (=> b!915582 (= e!596720 (= (head!1635 s!10566) (c!148345 (Concat!4287 (removeUselessConcat!131 (regOne!5420 r!15766)) (removeUselessConcat!131 (regTwo!5420 r!15766))))))))

(declare-fun b!915583 () Bool)

(declare-fun res!416314 () Bool)

(declare-fun e!596722 () Bool)

(assert (=> b!915583 (=> res!416314 e!596722)))

(assert (=> b!915583 (= res!416314 (not (is-ElementMatch!2454 (Concat!4287 (removeUselessConcat!131 (regOne!5420 r!15766)) (removeUselessConcat!131 (regTwo!5420 r!15766))))))))

(assert (=> b!915583 (= e!596724 e!596722)))

(declare-fun b!915584 () Bool)

(declare-fun res!416311 () Bool)

(assert (=> b!915584 (=> res!416311 e!596721)))

(assert (=> b!915584 (= res!416311 (not (isEmpty!5897 (tail!1197 s!10566))))))

(declare-fun b!915585 () Bool)

(declare-fun call!55296 () Bool)

(assert (=> b!915585 (= e!596723 (= lt!337428 call!55296))))

(declare-fun b!915586 () Bool)

(assert (=> b!915586 (= e!596725 (matchR!992 (derivativeStep!482 (Concat!4287 (removeUselessConcat!131 (regOne!5420 r!15766)) (removeUselessConcat!131 (regTwo!5420 r!15766))) (head!1635 s!10566)) (tail!1197 s!10566)))))

(declare-fun b!915587 () Bool)

(declare-fun res!416309 () Bool)

(assert (=> b!915587 (=> (not res!416309) (not e!596720))))

(assert (=> b!915587 (= res!416309 (isEmpty!5897 (tail!1197 s!10566)))))

(declare-fun b!915588 () Bool)

(declare-fun e!596719 () Bool)

(assert (=> b!915588 (= e!596719 e!596721)))

(declare-fun res!416313 () Bool)

(assert (=> b!915588 (=> res!416313 e!596721)))

(assert (=> b!915588 (= res!416313 call!55296)))

(declare-fun bm!55291 () Bool)

(assert (=> bm!55291 (= call!55296 (isEmpty!5897 s!10566))))

(declare-fun b!915589 () Bool)

(assert (=> b!915589 (= e!596723 e!596724)))

(declare-fun c!148376 () Bool)

(assert (=> b!915589 (= c!148376 (is-EmptyLang!2454 (Concat!4287 (removeUselessConcat!131 (regOne!5420 r!15766)) (removeUselessConcat!131 (regTwo!5420 r!15766)))))))

(declare-fun b!915590 () Bool)

(declare-fun res!416310 () Bool)

(assert (=> b!915590 (=> res!416310 e!596722)))

(assert (=> b!915590 (= res!416310 e!596720)))

(declare-fun res!416316 () Bool)

(assert (=> b!915590 (=> (not res!416316) (not e!596720))))

(assert (=> b!915590 (= res!416316 lt!337428)))

(declare-fun b!915591 () Bool)

(assert (=> b!915591 (= e!596725 (nullable!672 (Concat!4287 (removeUselessConcat!131 (regOne!5420 r!15766)) (removeUselessConcat!131 (regTwo!5420 r!15766)))))))

(declare-fun b!915592 () Bool)

(declare-fun res!416312 () Bool)

(assert (=> b!915592 (=> (not res!416312) (not e!596720))))

(assert (=> b!915592 (= res!416312 (not call!55296))))

(declare-fun b!915593 () Bool)

(assert (=> b!915593 (= e!596722 e!596719)))

(declare-fun res!416315 () Bool)

(assert (=> b!915593 (=> (not res!416315) (not e!596719))))

(assert (=> b!915593 (= res!416315 (not lt!337428))))

(assert (= (and d!279749 c!148375) b!915591))

(assert (= (and d!279749 (not c!148375)) b!915586))

(assert (= (and d!279749 c!148374) b!915585))

(assert (= (and d!279749 (not c!148374)) b!915589))

(assert (= (and b!915589 c!148376) b!915581))

(assert (= (and b!915589 (not c!148376)) b!915583))

(assert (= (and b!915583 (not res!416314)) b!915590))

(assert (= (and b!915590 res!416316) b!915592))

(assert (= (and b!915592 res!416312) b!915587))

(assert (= (and b!915587 res!416309) b!915582))

(assert (= (and b!915590 (not res!416310)) b!915593))

(assert (= (and b!915593 res!416315) b!915588))

(assert (= (and b!915588 (not res!416313)) b!915584))

(assert (= (and b!915584 (not res!416311)) b!915580))

(assert (= (or b!915585 b!915588 b!915592) bm!55291))

(assert (=> b!915582 m!1145287))

(assert (=> b!915586 m!1145287))

(assert (=> b!915586 m!1145287))

(declare-fun m!1145307 () Bool)

(assert (=> b!915586 m!1145307))

(assert (=> b!915586 m!1145291))

(assert (=> b!915586 m!1145307))

(assert (=> b!915586 m!1145291))

(declare-fun m!1145309 () Bool)

(assert (=> b!915586 m!1145309))

(assert (=> d!279749 m!1145229))

(declare-fun m!1145311 () Bool)

(assert (=> d!279749 m!1145311))

(assert (=> b!915584 m!1145291))

(assert (=> b!915584 m!1145291))

(assert (=> b!915584 m!1145295))

(assert (=> b!915587 m!1145291))

(assert (=> b!915587 m!1145291))

(assert (=> b!915587 m!1145295))

(assert (=> b!915580 m!1145287))

(assert (=> bm!55291 m!1145229))

(declare-fun m!1145313 () Bool)

(assert (=> b!915591 m!1145313))

(assert (=> b!915415 d!279749))

(declare-fun b!915620 () Bool)

(declare-fun e!596740 () Regex!2454)

(declare-fun e!596744 () Regex!2454)

(assert (=> b!915620 (= e!596740 e!596744)))

(declare-fun c!148390 () Bool)

(assert (=> b!915620 (= c!148390 (and (is-Concat!4287 (regOne!5420 r!15766)) (is-EmptyExpr!2454 (regTwo!5420 (regOne!5420 r!15766)))))))

(declare-fun b!915621 () Bool)

(declare-fun e!596742 () Bool)

(declare-fun lt!337433 () Regex!2454)

(assert (=> b!915621 (= e!596742 (= (nullable!672 lt!337433) (nullable!672 (regOne!5420 r!15766))))))

(declare-fun b!915622 () Bool)

(declare-fun e!596743 () Regex!2454)

(declare-fun call!55309 () Regex!2454)

(assert (=> b!915622 (= e!596743 (Star!2454 call!55309))))

(declare-fun bm!55302 () Bool)

(declare-fun call!55310 () Regex!2454)

(declare-fun c!148393 () Bool)

(assert (=> bm!55302 (= call!55310 (removeUselessConcat!131 (ite c!148393 (regOne!5420 (regOne!5420 r!15766)) (regOne!5421 (regOne!5420 r!15766)))))))

(declare-fun b!915623 () Bool)

(declare-fun e!596741 () Regex!2454)

(assert (=> b!915623 (= e!596741 (Union!2454 call!55310 call!55309))))

(declare-fun b!915624 () Bool)

(assert (=> b!915624 (= e!596743 (regOne!5420 r!15766))))

(declare-fun b!915625 () Bool)

(assert (=> b!915625 (= c!148393 (is-Concat!4287 (regOne!5420 r!15766)))))

(declare-fun e!596745 () Regex!2454)

(assert (=> b!915625 (= e!596744 e!596745)))

(declare-fun b!915626 () Bool)

(declare-fun call!55308 () Regex!2454)

(assert (=> b!915626 (= e!596740 call!55308)))

(declare-fun bm!55303 () Bool)

(declare-fun call!55307 () Regex!2454)

(declare-fun call!55311 () Regex!2454)

(assert (=> bm!55303 (= call!55307 call!55311)))

(declare-fun b!915627 () Bool)

(assert (=> b!915627 (= e!596745 e!596741)))

(declare-fun c!148389 () Bool)

(assert (=> b!915627 (= c!148389 (is-Union!2454 (regOne!5420 r!15766)))))

(declare-fun bm!55304 () Bool)

(assert (=> bm!55304 (= call!55311 call!55308)))

(declare-fun b!915628 () Bool)

(assert (=> b!915628 (= e!596744 call!55311)))

(declare-fun bm!55305 () Bool)

(assert (=> bm!55305 (= call!55309 call!55307)))

(declare-fun d!279751 () Bool)

(assert (=> d!279751 e!596742))

(declare-fun res!416319 () Bool)

(assert (=> d!279751 (=> (not res!416319) (not e!596742))))

(assert (=> d!279751 (= res!416319 (validRegex!923 lt!337433))))

(assert (=> d!279751 (= lt!337433 e!596740)))

(declare-fun c!148392 () Bool)

(assert (=> d!279751 (= c!148392 (and (is-Concat!4287 (regOne!5420 r!15766)) (is-EmptyExpr!2454 (regOne!5420 (regOne!5420 r!15766)))))))

(assert (=> d!279751 (validRegex!923 (regOne!5420 r!15766))))

(assert (=> d!279751 (= (removeUselessConcat!131 (regOne!5420 r!15766)) lt!337433)))

(declare-fun bm!55306 () Bool)

(assert (=> bm!55306 (= call!55308 (removeUselessConcat!131 (ite c!148392 (regTwo!5420 (regOne!5420 r!15766)) (ite c!148390 (regOne!5420 (regOne!5420 r!15766)) (ite c!148393 (regTwo!5420 (regOne!5420 r!15766)) (ite c!148389 (regTwo!5421 (regOne!5420 r!15766)) (reg!2783 (regOne!5420 r!15766))))))))))

(declare-fun b!915629 () Bool)

(declare-fun c!148391 () Bool)

(assert (=> b!915629 (= c!148391 (is-Star!2454 (regOne!5420 r!15766)))))

(assert (=> b!915629 (= e!596741 e!596743)))

(declare-fun b!915630 () Bool)

(assert (=> b!915630 (= e!596745 (Concat!4287 call!55310 call!55307))))

(assert (= (and d!279751 c!148392) b!915626))

(assert (= (and d!279751 (not c!148392)) b!915620))

(assert (= (and b!915620 c!148390) b!915628))

(assert (= (and b!915620 (not c!148390)) b!915625))

(assert (= (and b!915625 c!148393) b!915630))

(assert (= (and b!915625 (not c!148393)) b!915627))

(assert (= (and b!915627 c!148389) b!915623))

(assert (= (and b!915627 (not c!148389)) b!915629))

(assert (= (and b!915629 c!148391) b!915622))

(assert (= (and b!915629 (not c!148391)) b!915624))

(assert (= (or b!915623 b!915622) bm!55305))

(assert (= (or b!915630 bm!55305) bm!55303))

(assert (= (or b!915630 b!915623) bm!55302))

(assert (= (or b!915628 bm!55303) bm!55304))

(assert (= (or b!915626 bm!55304) bm!55306))

(assert (= (and d!279751 res!416319) b!915621))

(declare-fun m!1145315 () Bool)

(assert (=> b!915621 m!1145315))

(declare-fun m!1145317 () Bool)

(assert (=> b!915621 m!1145317))

(declare-fun m!1145319 () Bool)

(assert (=> bm!55302 m!1145319))

(declare-fun m!1145321 () Bool)

(assert (=> d!279751 m!1145321))

(declare-fun m!1145323 () Bool)

(assert (=> d!279751 m!1145323))

(declare-fun m!1145325 () Bool)

(assert (=> bm!55306 m!1145325))

(assert (=> b!915415 d!279751))

(declare-fun b!915639 () Bool)

(declare-fun e!596750 () Regex!2454)

(declare-fun e!596754 () Regex!2454)

(assert (=> b!915639 (= e!596750 e!596754)))

(declare-fun c!148399 () Bool)

(assert (=> b!915639 (= c!148399 (and (is-Concat!4287 (regTwo!5420 r!15766)) (is-EmptyExpr!2454 (regTwo!5420 (regTwo!5420 r!15766)))))))

(declare-fun b!915640 () Bool)

(declare-fun e!596752 () Bool)

(declare-fun lt!337434 () Regex!2454)

(assert (=> b!915640 (= e!596752 (= (nullable!672 lt!337434) (nullable!672 (regTwo!5420 r!15766))))))

(declare-fun b!915641 () Bool)

(declare-fun e!596753 () Regex!2454)

(declare-fun call!55314 () Regex!2454)

(assert (=> b!915641 (= e!596753 (Star!2454 call!55314))))

(declare-fun bm!55307 () Bool)

(declare-fun call!55315 () Regex!2454)

(declare-fun c!148402 () Bool)

(assert (=> bm!55307 (= call!55315 (removeUselessConcat!131 (ite c!148402 (regOne!5420 (regTwo!5420 r!15766)) (regOne!5421 (regTwo!5420 r!15766)))))))

(declare-fun b!915642 () Bool)

(declare-fun e!596751 () Regex!2454)

(assert (=> b!915642 (= e!596751 (Union!2454 call!55315 call!55314))))

(declare-fun b!915643 () Bool)

(assert (=> b!915643 (= e!596753 (regTwo!5420 r!15766))))

(declare-fun b!915644 () Bool)

(assert (=> b!915644 (= c!148402 (is-Concat!4287 (regTwo!5420 r!15766)))))

(declare-fun e!596755 () Regex!2454)

(assert (=> b!915644 (= e!596754 e!596755)))

(declare-fun b!915645 () Bool)

(declare-fun call!55313 () Regex!2454)

(assert (=> b!915645 (= e!596750 call!55313)))

(declare-fun bm!55308 () Bool)

(declare-fun call!55312 () Regex!2454)

(declare-fun call!55316 () Regex!2454)

(assert (=> bm!55308 (= call!55312 call!55316)))

(declare-fun b!915646 () Bool)

(assert (=> b!915646 (= e!596755 e!596751)))

(declare-fun c!148398 () Bool)

(assert (=> b!915646 (= c!148398 (is-Union!2454 (regTwo!5420 r!15766)))))

(declare-fun bm!55309 () Bool)

(assert (=> bm!55309 (= call!55316 call!55313)))

(declare-fun b!915647 () Bool)

(assert (=> b!915647 (= e!596754 call!55316)))

(declare-fun bm!55310 () Bool)

(assert (=> bm!55310 (= call!55314 call!55312)))

(declare-fun d!279753 () Bool)

(assert (=> d!279753 e!596752))

(declare-fun res!416320 () Bool)

(assert (=> d!279753 (=> (not res!416320) (not e!596752))))

(assert (=> d!279753 (= res!416320 (validRegex!923 lt!337434))))

(assert (=> d!279753 (= lt!337434 e!596750)))

(declare-fun c!148401 () Bool)

(assert (=> d!279753 (= c!148401 (and (is-Concat!4287 (regTwo!5420 r!15766)) (is-EmptyExpr!2454 (regOne!5420 (regTwo!5420 r!15766)))))))

(assert (=> d!279753 (validRegex!923 (regTwo!5420 r!15766))))

(assert (=> d!279753 (= (removeUselessConcat!131 (regTwo!5420 r!15766)) lt!337434)))

(declare-fun bm!55311 () Bool)

(assert (=> bm!55311 (= call!55313 (removeUselessConcat!131 (ite c!148401 (regTwo!5420 (regTwo!5420 r!15766)) (ite c!148399 (regOne!5420 (regTwo!5420 r!15766)) (ite c!148402 (regTwo!5420 (regTwo!5420 r!15766)) (ite c!148398 (regTwo!5421 (regTwo!5420 r!15766)) (reg!2783 (regTwo!5420 r!15766))))))))))

(declare-fun b!915648 () Bool)

(declare-fun c!148400 () Bool)

(assert (=> b!915648 (= c!148400 (is-Star!2454 (regTwo!5420 r!15766)))))

(assert (=> b!915648 (= e!596751 e!596753)))

(declare-fun b!915649 () Bool)

(assert (=> b!915649 (= e!596755 (Concat!4287 call!55315 call!55312))))

(assert (= (and d!279753 c!148401) b!915645))

(assert (= (and d!279753 (not c!148401)) b!915639))

(assert (= (and b!915639 c!148399) b!915647))

(assert (= (and b!915639 (not c!148399)) b!915644))

(assert (= (and b!915644 c!148402) b!915649))

(assert (= (and b!915644 (not c!148402)) b!915646))

(assert (= (and b!915646 c!148398) b!915642))

(assert (= (and b!915646 (not c!148398)) b!915648))

(assert (= (and b!915648 c!148400) b!915641))

(assert (= (and b!915648 (not c!148400)) b!915643))

(assert (= (or b!915642 b!915641) bm!55310))

(assert (= (or b!915649 bm!55310) bm!55308))

(assert (= (or b!915649 b!915642) bm!55307))

(assert (= (or b!915647 bm!55308) bm!55309))

(assert (= (or b!915645 bm!55309) bm!55311))

(assert (= (and d!279753 res!416320) b!915640))

(declare-fun m!1145327 () Bool)

(assert (=> b!915640 m!1145327))

(declare-fun m!1145329 () Bool)

(assert (=> b!915640 m!1145329))

(declare-fun m!1145331 () Bool)

(assert (=> bm!55307 m!1145331))

(declare-fun m!1145333 () Bool)

(assert (=> d!279753 m!1145333))

(assert (=> d!279753 m!1145243))

(declare-fun m!1145335 () Bool)

(assert (=> bm!55311 m!1145335))

(assert (=> b!915415 d!279753))

(declare-fun d!279755 () Bool)

(declare-fun choose!5585 (Int) Bool)

(assert (=> d!279755 (= (Exists!225 lambda!29429) (choose!5585 lambda!29429))))

(declare-fun bs!236030 () Bool)

(assert (= bs!236030 d!279755))

(declare-fun m!1145337 () Bool)

(assert (=> bs!236030 m!1145337))

(assert (=> b!915418 d!279755))

(declare-fun d!279757 () Bool)

(declare-fun isEmpty!5899 (Option!2089) Bool)

(assert (=> d!279757 (= (isDefined!1731 (findConcatSeparation!195 (regOne!5420 r!15766) (regTwo!5420 r!15766) Nil!9668 s!10566 s!10566)) (not (isEmpty!5899 (findConcatSeparation!195 (regOne!5420 r!15766) (regTwo!5420 r!15766) Nil!9668 s!10566 s!10566))))))

(declare-fun bs!236031 () Bool)

(assert (= bs!236031 d!279757))

(assert (=> bs!236031 m!1145223))

(declare-fun m!1145339 () Bool)

(assert (=> bs!236031 m!1145339))

(assert (=> b!915418 d!279757))

(declare-fun bs!236032 () Bool)

(declare-fun d!279759 () Bool)

(assert (= bs!236032 (and d!279759 b!915418)))

(declare-fun lambda!29447 () Int)

(assert (=> bs!236032 (= lambda!29447 lambda!29429)))

(assert (=> bs!236032 (not (= lambda!29447 lambda!29430))))

(declare-fun bs!236033 () Bool)

(assert (= bs!236033 (and d!279759 b!915506)))

(assert (=> bs!236033 (not (= lambda!29447 lambda!29443))))

(declare-fun bs!236034 () Bool)

(assert (= bs!236034 (and d!279759 b!915509)))

(assert (=> bs!236034 (not (= lambda!29447 lambda!29444))))

(assert (=> d!279759 true))

(assert (=> d!279759 true))

(assert (=> d!279759 true))

(assert (=> d!279759 (= (isDefined!1731 (findConcatSeparation!195 (regOne!5420 r!15766) (regTwo!5420 r!15766) Nil!9668 s!10566 s!10566)) (Exists!225 lambda!29447))))

(declare-fun lt!337437 () Unit!14527)

(declare-fun choose!5586 (Regex!2454 Regex!2454 List!9684) Unit!14527)

(assert (=> d!279759 (= lt!337437 (choose!5586 (regOne!5420 r!15766) (regTwo!5420 r!15766) s!10566))))

(assert (=> d!279759 (validRegex!923 (regOne!5420 r!15766))))

(assert (=> d!279759 (= (lemmaFindConcatSeparationEquivalentToExists!195 (regOne!5420 r!15766) (regTwo!5420 r!15766) s!10566) lt!337437)))

(declare-fun bs!236035 () Bool)

(assert (= bs!236035 d!279759))

(assert (=> bs!236035 m!1145323))

(assert (=> bs!236035 m!1145223))

(assert (=> bs!236035 m!1145223))

(assert (=> bs!236035 m!1145225))

(declare-fun m!1145341 () Bool)

(assert (=> bs!236035 m!1145341))

(declare-fun m!1145343 () Bool)

(assert (=> bs!236035 m!1145343))

(assert (=> b!915418 d!279759))

(declare-fun b!915722 () Bool)

(declare-fun e!596795 () Bool)

(assert (=> b!915722 (= e!596795 (matchR!992 (regTwo!5420 r!15766) s!10566))))

(declare-fun d!279761 () Bool)

(declare-fun e!596796 () Bool)

(assert (=> d!279761 e!596796))

(declare-fun res!416360 () Bool)

(assert (=> d!279761 (=> res!416360 e!596796)))

(declare-fun e!596793 () Bool)

(assert (=> d!279761 (= res!416360 e!596793)))

(declare-fun res!416359 () Bool)

(assert (=> d!279761 (=> (not res!416359) (not e!596793))))

(declare-fun lt!337447 () Option!2089)

(assert (=> d!279761 (= res!416359 (isDefined!1731 lt!337447))))

(declare-fun e!596797 () Option!2089)

(assert (=> d!279761 (= lt!337447 e!596797)))

(declare-fun c!148421 () Bool)

(assert (=> d!279761 (= c!148421 e!596795)))

(declare-fun res!416361 () Bool)

(assert (=> d!279761 (=> (not res!416361) (not e!596795))))

(assert (=> d!279761 (= res!416361 (matchR!992 (regOne!5420 r!15766) Nil!9668))))

(assert (=> d!279761 (validRegex!923 (regOne!5420 r!15766))))

(assert (=> d!279761 (= (findConcatSeparation!195 (regOne!5420 r!15766) (regTwo!5420 r!15766) Nil!9668 s!10566 s!10566) lt!337447)))

(declare-fun b!915723 () Bool)

(assert (=> b!915723 (= e!596797 (Some!2088 (tuple2!10895 Nil!9668 s!10566)))))

(declare-fun b!915724 () Bool)

(declare-fun e!596794 () Option!2089)

(assert (=> b!915724 (= e!596794 None!2088)))

(declare-fun b!915725 () Bool)

(declare-fun ++!2550 (List!9684 List!9684) List!9684)

(declare-fun get!3133 (Option!2089) tuple2!10894)

(assert (=> b!915725 (= e!596793 (= (++!2550 (_1!6273 (get!3133 lt!337447)) (_2!6273 (get!3133 lt!337447))) s!10566))))

(declare-fun b!915726 () Bool)

(declare-fun lt!337449 () Unit!14527)

(declare-fun lt!337448 () Unit!14527)

(assert (=> b!915726 (= lt!337449 lt!337448)))

(assert (=> b!915726 (= (++!2550 (++!2550 Nil!9668 (Cons!9668 (h!15069 s!10566) Nil!9668)) (t!100730 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!165 (List!9684 C!5478 List!9684 List!9684) Unit!14527)

(assert (=> b!915726 (= lt!337448 (lemmaMoveElementToOtherListKeepsConcatEq!165 Nil!9668 (h!15069 s!10566) (t!100730 s!10566) s!10566))))

(assert (=> b!915726 (= e!596794 (findConcatSeparation!195 (regOne!5420 r!15766) (regTwo!5420 r!15766) (++!2550 Nil!9668 (Cons!9668 (h!15069 s!10566) Nil!9668)) (t!100730 s!10566) s!10566))))

(declare-fun b!915727 () Bool)

(assert (=> b!915727 (= e!596797 e!596794)))

(declare-fun c!148420 () Bool)

(assert (=> b!915727 (= c!148420 (is-Nil!9668 s!10566))))

(declare-fun b!915728 () Bool)

(declare-fun res!416362 () Bool)

(assert (=> b!915728 (=> (not res!416362) (not e!596793))))

(assert (=> b!915728 (= res!416362 (matchR!992 (regOne!5420 r!15766) (_1!6273 (get!3133 lt!337447))))))

(declare-fun b!915729 () Bool)

(declare-fun res!416363 () Bool)

(assert (=> b!915729 (=> (not res!416363) (not e!596793))))

(assert (=> b!915729 (= res!416363 (matchR!992 (regTwo!5420 r!15766) (_2!6273 (get!3133 lt!337447))))))

(declare-fun b!915730 () Bool)

(assert (=> b!915730 (= e!596796 (not (isDefined!1731 lt!337447)))))

(assert (= (and d!279761 res!416361) b!915722))

(assert (= (and d!279761 c!148421) b!915723))

(assert (= (and d!279761 (not c!148421)) b!915727))

(assert (= (and b!915727 c!148420) b!915724))

(assert (= (and b!915727 (not c!148420)) b!915726))

(assert (= (and d!279761 res!416359) b!915728))

(assert (= (and b!915728 res!416362) b!915729))

(assert (= (and b!915729 res!416363) b!915725))

(assert (= (and d!279761 (not res!416360)) b!915730))

(declare-fun m!1145359 () Bool)

(assert (=> b!915726 m!1145359))

(assert (=> b!915726 m!1145359))

(declare-fun m!1145361 () Bool)

(assert (=> b!915726 m!1145361))

(declare-fun m!1145363 () Bool)

(assert (=> b!915726 m!1145363))

(assert (=> b!915726 m!1145359))

(declare-fun m!1145365 () Bool)

(assert (=> b!915726 m!1145365))

(declare-fun m!1145367 () Bool)

(assert (=> b!915730 m!1145367))

(declare-fun m!1145369 () Bool)

(assert (=> b!915729 m!1145369))

(declare-fun m!1145371 () Bool)

(assert (=> b!915729 m!1145371))

(declare-fun m!1145373 () Bool)

(assert (=> b!915722 m!1145373))

(assert (=> b!915725 m!1145369))

(declare-fun m!1145375 () Bool)

(assert (=> b!915725 m!1145375))

(assert (=> d!279761 m!1145367))

(declare-fun m!1145377 () Bool)

(assert (=> d!279761 m!1145377))

(assert (=> d!279761 m!1145323))

(assert (=> b!915728 m!1145369))

(declare-fun m!1145379 () Bool)

(assert (=> b!915728 m!1145379))

(assert (=> b!915418 d!279761))

(declare-fun bs!236036 () Bool)

(declare-fun d!279765 () Bool)

(assert (= bs!236036 (and d!279765 d!279759)))

(declare-fun lambda!29452 () Int)

(assert (=> bs!236036 (= lambda!29452 lambda!29447)))

(declare-fun bs!236037 () Bool)

(assert (= bs!236037 (and d!279765 b!915418)))

(assert (=> bs!236037 (= lambda!29452 lambda!29429)))

(declare-fun bs!236038 () Bool)

(assert (= bs!236038 (and d!279765 b!915506)))

(assert (=> bs!236038 (not (= lambda!29452 lambda!29443))))

(declare-fun bs!236039 () Bool)

(assert (= bs!236039 (and d!279765 b!915509)))

(assert (=> bs!236039 (not (= lambda!29452 lambda!29444))))

(assert (=> bs!236037 (not (= lambda!29452 lambda!29430))))

(assert (=> d!279765 true))

(assert (=> d!279765 true))

(assert (=> d!279765 true))

(declare-fun lambda!29453 () Int)

(assert (=> bs!236036 (not (= lambda!29453 lambda!29447))))

(declare-fun bs!236040 () Bool)

(assert (= bs!236040 d!279765))

(assert (=> bs!236040 (not (= lambda!29453 lambda!29452))))

(assert (=> bs!236037 (not (= lambda!29453 lambda!29429))))

(assert (=> bs!236038 (not (= lambda!29453 lambda!29443))))

(assert (=> bs!236039 (= lambda!29453 lambda!29444)))

(assert (=> bs!236037 (= lambda!29453 lambda!29430)))

(assert (=> d!279765 true))

(assert (=> d!279765 true))

(assert (=> d!279765 true))

(assert (=> d!279765 (= (Exists!225 lambda!29452) (Exists!225 lambda!29453))))

(declare-fun lt!337452 () Unit!14527)

(declare-fun choose!5587 (Regex!2454 Regex!2454 List!9684) Unit!14527)

(assert (=> d!279765 (= lt!337452 (choose!5587 (regOne!5420 r!15766) (regTwo!5420 r!15766) s!10566))))

(assert (=> d!279765 (validRegex!923 (regOne!5420 r!15766))))

(assert (=> d!279765 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!137 (regOne!5420 r!15766) (regTwo!5420 r!15766) s!10566) lt!337452)))

(declare-fun m!1145393 () Bool)

(assert (=> bs!236040 m!1145393))

(declare-fun m!1145395 () Bool)

(assert (=> bs!236040 m!1145395))

(declare-fun m!1145397 () Bool)

(assert (=> bs!236040 m!1145397))

(assert (=> bs!236040 m!1145323))

(assert (=> b!915418 d!279765))

(declare-fun d!279769 () Bool)

(assert (=> d!279769 (= (Exists!225 lambda!29430) (choose!5585 lambda!29430))))

(declare-fun bs!236041 () Bool)

(assert (= bs!236041 d!279769))

(declare-fun m!1145399 () Bool)

(assert (=> bs!236041 m!1145399))

(assert (=> b!915418 d!279769))

(declare-fun d!279771 () Bool)

(assert (=> d!279771 (= (isEmpty!5897 s!10566) (is-Nil!9668 s!10566))))

(assert (=> b!915418 d!279771))

(declare-fun b!915790 () Bool)

(declare-fun e!596840 () Bool)

(declare-fun e!596838 () Bool)

(assert (=> b!915790 (= e!596840 e!596838)))

(declare-fun res!416394 () Bool)

(assert (=> b!915790 (=> (not res!416394) (not e!596838))))

(declare-fun call!55351 () Bool)

(assert (=> b!915790 (= res!416394 call!55351)))

(declare-fun b!915791 () Bool)

(declare-fun e!596841 () Bool)

(declare-fun e!596842 () Bool)

(assert (=> b!915791 (= e!596841 e!596842)))

(declare-fun c!148439 () Bool)

(assert (=> b!915791 (= c!148439 (is-Star!2454 r!15766))))

(declare-fun b!915792 () Bool)

(declare-fun e!596837 () Bool)

(assert (=> b!915792 (= e!596842 e!596837)))

(declare-fun res!416393 () Bool)

(assert (=> b!915792 (= res!416393 (not (nullable!672 (reg!2783 r!15766))))))

(assert (=> b!915792 (=> (not res!416393) (not e!596837))))

(declare-fun bm!55345 () Bool)

(declare-fun call!55349 () Bool)

(declare-fun c!148438 () Bool)

(assert (=> bm!55345 (= call!55349 (validRegex!923 (ite c!148439 (reg!2783 r!15766) (ite c!148438 (regTwo!5421 r!15766) (regTwo!5420 r!15766)))))))

(declare-fun b!915793 () Bool)

(declare-fun call!55350 () Bool)

(assert (=> b!915793 (= e!596838 call!55350)))

(declare-fun b!915794 () Bool)

(assert (=> b!915794 (= e!596837 call!55349)))

(declare-fun b!915795 () Bool)

(declare-fun e!596843 () Bool)

(assert (=> b!915795 (= e!596843 call!55350)))

(declare-fun bm!55344 () Bool)

(assert (=> bm!55344 (= call!55351 (validRegex!923 (ite c!148438 (regOne!5421 r!15766) (regOne!5420 r!15766))))))

(declare-fun d!279773 () Bool)

(declare-fun res!416395 () Bool)

(assert (=> d!279773 (=> res!416395 e!596841)))

(assert (=> d!279773 (= res!416395 (is-ElementMatch!2454 r!15766))))

(assert (=> d!279773 (= (validRegex!923 r!15766) e!596841)))

(declare-fun b!915796 () Bool)

(declare-fun e!596839 () Bool)

(assert (=> b!915796 (= e!596842 e!596839)))

(assert (=> b!915796 (= c!148438 (is-Union!2454 r!15766))))

(declare-fun b!915797 () Bool)

(declare-fun res!416392 () Bool)

(assert (=> b!915797 (=> (not res!416392) (not e!596843))))

(assert (=> b!915797 (= res!416392 call!55351)))

(assert (=> b!915797 (= e!596839 e!596843)))

(declare-fun bm!55346 () Bool)

(assert (=> bm!55346 (= call!55350 call!55349)))

(declare-fun b!915798 () Bool)

(declare-fun res!416391 () Bool)

(assert (=> b!915798 (=> res!416391 e!596840)))

(assert (=> b!915798 (= res!416391 (not (is-Concat!4287 r!15766)))))

(assert (=> b!915798 (= e!596839 e!596840)))

(assert (= (and d!279773 (not res!416395)) b!915791))

(assert (= (and b!915791 c!148439) b!915792))

(assert (= (and b!915791 (not c!148439)) b!915796))

(assert (= (and b!915792 res!416393) b!915794))

(assert (= (and b!915796 c!148438) b!915797))

(assert (= (and b!915796 (not c!148438)) b!915798))

(assert (= (and b!915797 res!416392) b!915795))

(assert (= (and b!915798 (not res!416391)) b!915790))

(assert (= (and b!915790 res!416394) b!915793))

(assert (= (or b!915795 b!915793) bm!55346))

(assert (= (or b!915797 b!915790) bm!55344))

(assert (= (or b!915794 bm!55346) bm!55345))

(declare-fun m!1145417 () Bool)

(assert (=> b!915792 m!1145417))

(declare-fun m!1145419 () Bool)

(assert (=> bm!55345 m!1145419))

(declare-fun m!1145421 () Bool)

(assert (=> bm!55344 m!1145421))

(assert (=> start!82296 d!279773))

(declare-fun b!915799 () Bool)

(declare-fun e!596847 () Bool)

(declare-fun e!596845 () Bool)

(assert (=> b!915799 (= e!596847 e!596845)))

(declare-fun res!416399 () Bool)

(assert (=> b!915799 (=> (not res!416399) (not e!596845))))

(declare-fun call!55354 () Bool)

(assert (=> b!915799 (= res!416399 call!55354)))

(declare-fun b!915800 () Bool)

(declare-fun e!596848 () Bool)

(declare-fun e!596849 () Bool)

(assert (=> b!915800 (= e!596848 e!596849)))

(declare-fun c!148441 () Bool)

(assert (=> b!915800 (= c!148441 (is-Star!2454 (regTwo!5420 r!15766)))))

(declare-fun b!915801 () Bool)

(declare-fun e!596844 () Bool)

(assert (=> b!915801 (= e!596849 e!596844)))

(declare-fun res!416398 () Bool)

(assert (=> b!915801 (= res!416398 (not (nullable!672 (reg!2783 (regTwo!5420 r!15766)))))))

(assert (=> b!915801 (=> (not res!416398) (not e!596844))))

(declare-fun bm!55348 () Bool)

(declare-fun c!148440 () Bool)

(declare-fun call!55352 () Bool)

(assert (=> bm!55348 (= call!55352 (validRegex!923 (ite c!148441 (reg!2783 (regTwo!5420 r!15766)) (ite c!148440 (regTwo!5421 (regTwo!5420 r!15766)) (regTwo!5420 (regTwo!5420 r!15766))))))))

(declare-fun b!915802 () Bool)

(declare-fun call!55353 () Bool)

(assert (=> b!915802 (= e!596845 call!55353)))

(declare-fun b!915803 () Bool)

(assert (=> b!915803 (= e!596844 call!55352)))

(declare-fun b!915804 () Bool)

(declare-fun e!596850 () Bool)

(assert (=> b!915804 (= e!596850 call!55353)))

(declare-fun bm!55347 () Bool)

(assert (=> bm!55347 (= call!55354 (validRegex!923 (ite c!148440 (regOne!5421 (regTwo!5420 r!15766)) (regOne!5420 (regTwo!5420 r!15766)))))))

(declare-fun d!279779 () Bool)

(declare-fun res!416400 () Bool)

(assert (=> d!279779 (=> res!416400 e!596848)))

(assert (=> d!279779 (= res!416400 (is-ElementMatch!2454 (regTwo!5420 r!15766)))))

(assert (=> d!279779 (= (validRegex!923 (regTwo!5420 r!15766)) e!596848)))

(declare-fun b!915805 () Bool)

(declare-fun e!596846 () Bool)

(assert (=> b!915805 (= e!596849 e!596846)))

(assert (=> b!915805 (= c!148440 (is-Union!2454 (regTwo!5420 r!15766)))))

(declare-fun b!915806 () Bool)

(declare-fun res!416397 () Bool)

(assert (=> b!915806 (=> (not res!416397) (not e!596850))))

(assert (=> b!915806 (= res!416397 call!55354)))

(assert (=> b!915806 (= e!596846 e!596850)))

(declare-fun bm!55349 () Bool)

(assert (=> bm!55349 (= call!55353 call!55352)))

(declare-fun b!915807 () Bool)

(declare-fun res!416396 () Bool)

(assert (=> b!915807 (=> res!416396 e!596847)))

(assert (=> b!915807 (= res!416396 (not (is-Concat!4287 (regTwo!5420 r!15766))))))

(assert (=> b!915807 (= e!596846 e!596847)))

(assert (= (and d!279779 (not res!416400)) b!915800))

(assert (= (and b!915800 c!148441) b!915801))

(assert (= (and b!915800 (not c!148441)) b!915805))

(assert (= (and b!915801 res!416398) b!915803))

(assert (= (and b!915805 c!148440) b!915806))

(assert (= (and b!915805 (not c!148440)) b!915807))

(assert (= (and b!915806 res!416397) b!915804))

(assert (= (and b!915807 (not res!416396)) b!915799))

(assert (= (and b!915799 res!416399) b!915802))

(assert (= (or b!915804 b!915802) bm!55349))

(assert (= (or b!915806 b!915799) bm!55347))

(assert (= (or b!915803 bm!55349) bm!55348))

(declare-fun m!1145423 () Bool)

(assert (=> b!915801 m!1145423))

(declare-fun m!1145425 () Bool)

(assert (=> bm!55348 m!1145425))

(declare-fun m!1145427 () Bool)

(assert (=> bm!55347 m!1145427))

(assert (=> b!915417 d!279779))

(declare-fun b!915821 () Bool)

(declare-fun e!596853 () Bool)

(declare-fun tp!285911 () Bool)

(declare-fun tp!285908 () Bool)

(assert (=> b!915821 (= e!596853 (and tp!285911 tp!285908))))

(assert (=> b!915414 (= tp!285874 e!596853)))

(declare-fun b!915820 () Bool)

(declare-fun tp!285910 () Bool)

(assert (=> b!915820 (= e!596853 tp!285910)))

(declare-fun b!915818 () Bool)

(assert (=> b!915818 (= e!596853 tp_is_empty!4551)))

(declare-fun b!915819 () Bool)

(declare-fun tp!285909 () Bool)

(declare-fun tp!285907 () Bool)

(assert (=> b!915819 (= e!596853 (and tp!285909 tp!285907))))

(assert (= (and b!915414 (is-ElementMatch!2454 (regOne!5420 r!15766))) b!915818))

(assert (= (and b!915414 (is-Concat!4287 (regOne!5420 r!15766))) b!915819))

(assert (= (and b!915414 (is-Star!2454 (regOne!5420 r!15766))) b!915820))

(assert (= (and b!915414 (is-Union!2454 (regOne!5420 r!15766))) b!915821))

(declare-fun b!915825 () Bool)

(declare-fun e!596854 () Bool)

(declare-fun tp!285916 () Bool)

(declare-fun tp!285913 () Bool)

(assert (=> b!915825 (= e!596854 (and tp!285916 tp!285913))))

(assert (=> b!915414 (= tp!285875 e!596854)))

(declare-fun b!915824 () Bool)

(declare-fun tp!285915 () Bool)

(assert (=> b!915824 (= e!596854 tp!285915)))

(declare-fun b!915822 () Bool)

(assert (=> b!915822 (= e!596854 tp_is_empty!4551)))

(declare-fun b!915823 () Bool)

(declare-fun tp!285914 () Bool)

(declare-fun tp!285912 () Bool)

(assert (=> b!915823 (= e!596854 (and tp!285914 tp!285912))))

(assert (= (and b!915414 (is-ElementMatch!2454 (regTwo!5420 r!15766))) b!915822))

(assert (= (and b!915414 (is-Concat!4287 (regTwo!5420 r!15766))) b!915823))

(assert (= (and b!915414 (is-Star!2454 (regTwo!5420 r!15766))) b!915824))

(assert (= (and b!915414 (is-Union!2454 (regTwo!5420 r!15766))) b!915825))

(declare-fun b!915830 () Bool)

(declare-fun e!596857 () Bool)

(declare-fun tp!285919 () Bool)

(assert (=> b!915830 (= e!596857 (and tp_is_empty!4551 tp!285919))))

(assert (=> b!915419 (= tp!285878 e!596857)))

(assert (= (and b!915419 (is-Cons!9668 (t!100730 s!10566))) b!915830))

(declare-fun b!915834 () Bool)

(declare-fun e!596858 () Bool)

(declare-fun tp!285924 () Bool)

(declare-fun tp!285921 () Bool)

(assert (=> b!915834 (= e!596858 (and tp!285924 tp!285921))))

(assert (=> b!915413 (= tp!285873 e!596858)))

(declare-fun b!915833 () Bool)

(declare-fun tp!285923 () Bool)

(assert (=> b!915833 (= e!596858 tp!285923)))

(declare-fun b!915831 () Bool)

(assert (=> b!915831 (= e!596858 tp_is_empty!4551)))

(declare-fun b!915832 () Bool)

(declare-fun tp!285922 () Bool)

(declare-fun tp!285920 () Bool)

(assert (=> b!915832 (= e!596858 (and tp!285922 tp!285920))))

(assert (= (and b!915413 (is-ElementMatch!2454 (regOne!5421 r!15766))) b!915831))

(assert (= (and b!915413 (is-Concat!4287 (regOne!5421 r!15766))) b!915832))

(assert (= (and b!915413 (is-Star!2454 (regOne!5421 r!15766))) b!915833))

(assert (= (and b!915413 (is-Union!2454 (regOne!5421 r!15766))) b!915834))

(declare-fun b!915838 () Bool)

(declare-fun e!596859 () Bool)

(declare-fun tp!285929 () Bool)

(declare-fun tp!285926 () Bool)

(assert (=> b!915838 (= e!596859 (and tp!285929 tp!285926))))

(assert (=> b!915413 (= tp!285877 e!596859)))

(declare-fun b!915837 () Bool)

(declare-fun tp!285928 () Bool)

(assert (=> b!915837 (= e!596859 tp!285928)))

(declare-fun b!915835 () Bool)

(assert (=> b!915835 (= e!596859 tp_is_empty!4551)))

(declare-fun b!915836 () Bool)

(declare-fun tp!285927 () Bool)

(declare-fun tp!285925 () Bool)

(assert (=> b!915836 (= e!596859 (and tp!285927 tp!285925))))

(assert (= (and b!915413 (is-ElementMatch!2454 (regTwo!5421 r!15766))) b!915835))

(assert (= (and b!915413 (is-Concat!4287 (regTwo!5421 r!15766))) b!915836))

(assert (= (and b!915413 (is-Star!2454 (regTwo!5421 r!15766))) b!915837))

(assert (= (and b!915413 (is-Union!2454 (regTwo!5421 r!15766))) b!915838))

(declare-fun b!915842 () Bool)

(declare-fun e!596860 () Bool)

(declare-fun tp!285934 () Bool)

(declare-fun tp!285931 () Bool)

(assert (=> b!915842 (= e!596860 (and tp!285934 tp!285931))))

(assert (=> b!915412 (= tp!285876 e!596860)))

(declare-fun b!915841 () Bool)

(declare-fun tp!285933 () Bool)

(assert (=> b!915841 (= e!596860 tp!285933)))

(declare-fun b!915839 () Bool)

(assert (=> b!915839 (= e!596860 tp_is_empty!4551)))

(declare-fun b!915840 () Bool)

(declare-fun tp!285932 () Bool)

(declare-fun tp!285930 () Bool)

(assert (=> b!915840 (= e!596860 (and tp!285932 tp!285930))))

(assert (= (and b!915412 (is-ElementMatch!2454 (reg!2783 r!15766))) b!915839))

(assert (= (and b!915412 (is-Concat!4287 (reg!2783 r!15766))) b!915840))

(assert (= (and b!915412 (is-Star!2454 (reg!2783 r!15766))) b!915841))

(assert (= (and b!915412 (is-Union!2454 (reg!2783 r!15766))) b!915842))

(push 1)

(assert (not b!915821))

(assert (not b!915792))

(assert (not b!915838))

(assert (not d!279759))

(assert (not bm!55307))

(assert (not b!915834))

(assert (not b!915841))

(assert (not b!915559))

(assert (not b!915832))

(assert (not b!915825))

(assert (not b!915584))

(assert (not b!915621))

(assert (not b!915580))

(assert (not b!915726))

(assert (not bm!55291))

(assert (not b!915833))

(assert (not d!279751))

(assert (not b!915840))

(assert (not bm!55311))

(assert (not d!279743))

(assert (not d!279761))

(assert (not d!279769))

(assert (not b!915830))

(assert (not b!915836))

(assert (not bm!55287))

(assert (not b!915582))

(assert tp_is_empty!4551)

(assert (not b!915729))

(assert (not b!915837))

(assert (not d!279749))

(assert (not bm!55302))

(assert (not b!915728))

(assert (not b!915561))

(assert (not b!915586))

(assert (not b!915564))

(assert (not b!915557))

(assert (not b!915801))

(assert (not b!915640))

(assert (not b!915819))

(assert (not b!915842))

(assert (not bm!55306))

(assert (not bm!55278))

(assert (not b!915563))

(assert (not d!279755))

(assert (not b!915507))

(assert (not b!915587))

(assert (not b!915722))

(assert (not d!279765))

(assert (not bm!55348))

(assert (not b!915823))

(assert (not bm!55345))

(assert (not b!915502))

(assert (not bm!55344))

(assert (not b!915568))

(assert (not b!915820))

(assert (not d!279745))

(assert (not bm!55277))

(assert (not b!915725))

(assert (not d!279753))

(assert (not bm!55347))

(assert (not b!915730))

(assert (not d!279757))

(assert (not b!915591))

(assert (not b!915824))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

