; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81040 () Bool)

(assert start!81040)

(declare-fun b!900411 () Bool)

(assert (=> b!900411 true))

(assert (=> b!900411 true))

(assert (=> b!900411 true))

(declare-fun lambda!28132 () Int)

(declare-fun lambda!28131 () Int)

(assert (=> b!900411 (not (= lambda!28132 lambda!28131))))

(assert (=> b!900411 true))

(assert (=> b!900411 true))

(assert (=> b!900411 true))

(declare-fun b!900402 () Bool)

(declare-fun e!588765 () Bool)

(declare-fun e!588764 () Bool)

(assert (=> b!900402 (= e!588765 (not e!588764))))

(declare-fun res!409431 () Bool)

(assert (=> b!900402 (=> res!409431 e!588764)))

(declare-fun lt!334440 () Bool)

(declare-datatypes ((C!5298 0))(
  ( (C!5299 (val!2897 Int)) )
))
(declare-datatypes ((Regex!2364 0))(
  ( (ElementMatch!2364 (c!145798 C!5298)) (Concat!4197 (regOne!5240 Regex!2364) (regTwo!5240 Regex!2364)) (EmptyExpr!2364) (Star!2364 (reg!2693 Regex!2364)) (EmptyLang!2364) (Union!2364 (regOne!5241 Regex!2364) (regTwo!5241 Regex!2364)) )
))
(declare-fun r!15766 () Regex!2364)

(assert (=> b!900402 (= res!409431 (or (not lt!334440) (and (is-Concat!4197 r!15766) (is-EmptyExpr!2364 (regOne!5240 r!15766))) (and (is-Concat!4197 r!15766) (is-EmptyExpr!2364 (regTwo!5240 r!15766))) (is-Concat!4197 r!15766) (is-Union!2364 r!15766) (not (is-Star!2364 r!15766))))))

(declare-datatypes ((List!9594 0))(
  ( (Nil!9578) (Cons!9578 (h!14979 C!5298) (t!100640 List!9594)) )
))
(declare-fun s!10566 () List!9594)

(declare-fun matchRSpec!165 (Regex!2364 List!9594) Bool)

(assert (=> b!900402 (= lt!334440 (matchRSpec!165 r!15766 s!10566))))

(declare-fun matchR!902 (Regex!2364 List!9594) Bool)

(assert (=> b!900402 (= lt!334440 (matchR!902 r!15766 s!10566))))

(declare-datatypes ((Unit!14323 0))(
  ( (Unit!14324) )
))
(declare-fun lt!334432 () Unit!14323)

(declare-fun mainMatchTheorem!165 (Regex!2364 List!9594) Unit!14323)

(assert (=> b!900402 (= lt!334432 (mainMatchTheorem!165 r!15766 s!10566))))

(declare-fun b!900403 () Bool)

(declare-fun e!588766 () Bool)

(declare-fun e!588763 () Bool)

(assert (=> b!900403 (= e!588766 e!588763)))

(declare-fun res!409425 () Bool)

(assert (=> b!900403 (=> res!409425 e!588763)))

(declare-fun lt!334441 () Regex!2364)

(declare-fun lt!334437 () Regex!2364)

(assert (=> b!900403 (= res!409425 (not (= lt!334441 (Star!2364 lt!334437))))))

(declare-datatypes ((tuple2!10730 0))(
  ( (tuple2!10731 (_1!6191 List!9594) (_2!6191 List!9594)) )
))
(declare-fun lt!334434 () tuple2!10730)

(assert (=> b!900403 (matchR!902 lt!334441 (_2!6191 lt!334434))))

(declare-fun lt!334439 () Regex!2364)

(declare-fun removeUselessConcat!77 (Regex!2364) Regex!2364)

(assert (=> b!900403 (= lt!334441 (removeUselessConcat!77 lt!334439))))

(declare-fun lt!334438 () Unit!14323)

(declare-fun lemmaRemoveUselessConcatSound!69 (Regex!2364 List!9594) Unit!14323)

(assert (=> b!900403 (= lt!334438 (lemmaRemoveUselessConcatSound!69 lt!334439 (_2!6191 lt!334434)))))

(declare-fun lt!334436 () Unit!14323)

(declare-fun e!588760 () Unit!14323)

(assert (=> b!900403 (= lt!334436 e!588760)))

(declare-fun c!145797 () Bool)

(declare-fun size!7869 (List!9594) Int)

(assert (=> b!900403 (= c!145797 (= (size!7869 (_2!6191 lt!334434)) (size!7869 s!10566)))))

(assert (=> b!900403 (matchR!902 lt!334437 (_1!6191 lt!334434))))

(assert (=> b!900403 (= lt!334437 (removeUselessConcat!77 (reg!2693 r!15766)))))

(declare-fun lt!334442 () Unit!14323)

(assert (=> b!900403 (= lt!334442 (lemmaRemoveUselessConcatSound!69 (reg!2693 r!15766) (_1!6191 lt!334434)))))

(declare-fun b!900404 () Bool)

(declare-fun res!409427 () Bool)

(assert (=> b!900404 (=> res!409427 e!588766)))

(assert (=> b!900404 (= res!409427 (not (matchR!902 lt!334439 (_2!6191 lt!334434))))))

(declare-fun b!900405 () Bool)

(declare-fun e!588761 () Bool)

(declare-fun tp!282509 () Bool)

(assert (=> b!900405 (= e!588761 tp!282509)))

(declare-fun b!900406 () Bool)

(declare-fun e!588762 () Bool)

(assert (=> b!900406 (= e!588762 e!588766)))

(declare-fun res!409428 () Bool)

(assert (=> b!900406 (=> res!409428 e!588766)))

(assert (=> b!900406 (= res!409428 (not (matchR!902 (reg!2693 r!15766) (_1!6191 lt!334434))))))

(declare-datatypes ((Option!2007 0))(
  ( (None!2006) (Some!2006 (v!19423 tuple2!10730)) )
))
(declare-fun lt!334430 () Option!2007)

(declare-fun get!3045 (Option!2007) tuple2!10730)

(assert (=> b!900406 (= lt!334434 (get!3045 lt!334430))))

(declare-fun b!900407 () Bool)

(declare-fun e!588767 () Bool)

(declare-fun tp_is_empty!4371 () Bool)

(declare-fun tp!282510 () Bool)

(assert (=> b!900407 (= e!588767 (and tp_is_empty!4371 tp!282510))))

(declare-fun b!900408 () Bool)

(declare-fun Unit!14325 () Unit!14323)

(assert (=> b!900408 (= e!588760 Unit!14325)))

(declare-fun b!900409 () Bool)

(declare-fun tp!282506 () Bool)

(declare-fun tp!282507 () Bool)

(assert (=> b!900409 (= e!588761 (and tp!282506 tp!282507))))

(declare-fun b!900410 () Bool)

(declare-fun tp!282508 () Bool)

(declare-fun tp!282505 () Bool)

(assert (=> b!900410 (= e!588761 (and tp!282508 tp!282505))))

(declare-fun res!409426 () Bool)

(assert (=> start!81040 (=> (not res!409426) (not e!588765))))

(declare-fun validRegex!833 (Regex!2364) Bool)

(assert (=> start!81040 (= res!409426 (validRegex!833 r!15766))))

(assert (=> start!81040 e!588765))

(assert (=> start!81040 e!588761))

(assert (=> start!81040 e!588767))

(assert (=> b!900411 (= e!588764 e!588762)))

(declare-fun res!409430 () Bool)

(assert (=> b!900411 (=> res!409430 e!588762)))

(declare-fun isEmpty!5779 (List!9594) Bool)

(assert (=> b!900411 (= res!409430 (isEmpty!5779 s!10566))))

(declare-fun Exists!141 (Int) Bool)

(assert (=> b!900411 (= (Exists!141 lambda!28131) (Exists!141 lambda!28132))))

(declare-fun lt!334433 () Unit!14323)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!33 (Regex!2364 List!9594) Unit!14323)

(assert (=> b!900411 (= lt!334433 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!33 (reg!2693 r!15766) s!10566))))

(declare-fun lt!334435 () Bool)

(assert (=> b!900411 (= lt!334435 (Exists!141 lambda!28131))))

(declare-fun isDefined!1649 (Option!2007) Bool)

(assert (=> b!900411 (= lt!334435 (isDefined!1649 lt!334430))))

(declare-fun findConcatSeparation!113 (Regex!2364 Regex!2364 List!9594 List!9594 List!9594) Option!2007)

(assert (=> b!900411 (= lt!334430 (findConcatSeparation!113 (reg!2693 r!15766) lt!334439 Nil!9578 s!10566 s!10566))))

(declare-fun lt!334431 () Unit!14323)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!113 (Regex!2364 Regex!2364 List!9594) Unit!14323)

(assert (=> b!900411 (= lt!334431 (lemmaFindConcatSeparationEquivalentToExists!113 (reg!2693 r!15766) lt!334439 s!10566))))

(assert (=> b!900411 (= lt!334439 (Star!2364 (reg!2693 r!15766)))))

(declare-fun b!900412 () Bool)

(declare-fun Unit!14326 () Unit!14323)

(assert (=> b!900412 (= e!588760 Unit!14326)))

(declare-fun lt!334443 () Unit!14323)

(assert (=> b!900412 (= lt!334443 (mainMatchTheorem!165 (reg!2693 r!15766) (_1!6191 lt!334434)))))

(assert (=> b!900412 false))

(declare-fun b!900413 () Bool)

(assert (=> b!900413 (= e!588761 tp_is_empty!4371)))

(declare-fun b!900414 () Bool)

(declare-fun res!409429 () Bool)

(assert (=> b!900414 (=> res!409429 e!588762)))

(assert (=> b!900414 (= res!409429 (not lt!334435))))

(declare-fun b!900415 () Bool)

(assert (=> b!900415 (= e!588763 (validRegex!833 (reg!2693 r!15766)))))

(assert (= (and start!81040 res!409426) b!900402))

(assert (= (and b!900402 (not res!409431)) b!900411))

(assert (= (and b!900411 (not res!409430)) b!900414))

(assert (= (and b!900414 (not res!409429)) b!900406))

(assert (= (and b!900406 (not res!409428)) b!900404))

(assert (= (and b!900404 (not res!409427)) b!900403))

(assert (= (and b!900403 c!145797) b!900412))

(assert (= (and b!900403 (not c!145797)) b!900408))

(assert (= (and b!900403 (not res!409425)) b!900415))

(assert (= (and start!81040 (is-ElementMatch!2364 r!15766)) b!900413))

(assert (= (and start!81040 (is-Concat!4197 r!15766)) b!900409))

(assert (= (and start!81040 (is-Star!2364 r!15766)) b!900405))

(assert (= (and start!81040 (is-Union!2364 r!15766)) b!900410))

(assert (= (and start!81040 (is-Cons!9578 s!10566)) b!900407))

(declare-fun m!1138241 () Bool)

(assert (=> b!900406 m!1138241))

(declare-fun m!1138243 () Bool)

(assert (=> b!900406 m!1138243))

(declare-fun m!1138245 () Bool)

(assert (=> b!900411 m!1138245))

(declare-fun m!1138247 () Bool)

(assert (=> b!900411 m!1138247))

(declare-fun m!1138249 () Bool)

(assert (=> b!900411 m!1138249))

(declare-fun m!1138251 () Bool)

(assert (=> b!900411 m!1138251))

(declare-fun m!1138253 () Bool)

(assert (=> b!900411 m!1138253))

(assert (=> b!900411 m!1138253))

(declare-fun m!1138255 () Bool)

(assert (=> b!900411 m!1138255))

(declare-fun m!1138257 () Bool)

(assert (=> b!900411 m!1138257))

(declare-fun m!1138259 () Bool)

(assert (=> b!900402 m!1138259))

(declare-fun m!1138261 () Bool)

(assert (=> b!900402 m!1138261))

(declare-fun m!1138263 () Bool)

(assert (=> b!900402 m!1138263))

(declare-fun m!1138265 () Bool)

(assert (=> b!900404 m!1138265))

(declare-fun m!1138267 () Bool)

(assert (=> b!900403 m!1138267))

(declare-fun m!1138269 () Bool)

(assert (=> b!900403 m!1138269))

(declare-fun m!1138271 () Bool)

(assert (=> b!900403 m!1138271))

(declare-fun m!1138273 () Bool)

(assert (=> b!900403 m!1138273))

(declare-fun m!1138275 () Bool)

(assert (=> b!900403 m!1138275))

(declare-fun m!1138277 () Bool)

(assert (=> b!900403 m!1138277))

(declare-fun m!1138279 () Bool)

(assert (=> b!900403 m!1138279))

(declare-fun m!1138281 () Bool)

(assert (=> b!900403 m!1138281))

(declare-fun m!1138283 () Bool)

(assert (=> start!81040 m!1138283))

(declare-fun m!1138285 () Bool)

(assert (=> b!900415 m!1138285))

(declare-fun m!1138287 () Bool)

(assert (=> b!900412 m!1138287))

(push 1)

(assert (not b!900405))

(assert (not b!900409))

(assert (not b!900402))

(assert (not b!900410))

(assert (not b!900406))

(assert (not b!900415))

(assert (not b!900411))

(assert (not b!900407))

(assert (not b!900404))

(assert (not b!900412))

(assert (not start!81040))

(assert tp_is_empty!4371)

(assert (not b!900403))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!235194 () Bool)

(declare-fun b!900533 () Bool)

(assert (= bs!235194 (and b!900533 b!900411)))

(declare-fun lambda!28145 () Int)

(assert (=> bs!235194 (not (= lambda!28145 lambda!28131))))

(assert (=> bs!235194 (= (= r!15766 lt!334439) (= lambda!28145 lambda!28132))))

(assert (=> b!900533 true))

(assert (=> b!900533 true))

(declare-fun bs!235195 () Bool)

(declare-fun b!900531 () Bool)

(assert (= bs!235195 (and b!900531 b!900411)))

(declare-fun lambda!28146 () Int)

(assert (=> bs!235195 (not (= lambda!28146 lambda!28131))))

(assert (=> bs!235195 (not (= lambda!28146 lambda!28132))))

(declare-fun bs!235196 () Bool)

(assert (= bs!235196 (and b!900531 b!900533)))

(assert (=> bs!235196 (not (= lambda!28146 lambda!28145))))

(assert (=> b!900531 true))

(assert (=> b!900531 true))

(declare-fun b!900530 () Bool)

(declare-fun e!588830 () Bool)

(declare-fun e!588832 () Bool)

(assert (=> b!900530 (= e!588830 e!588832)))

(declare-fun res!409493 () Bool)

(assert (=> b!900530 (= res!409493 (not (is-EmptyLang!2364 r!15766)))))

(assert (=> b!900530 (=> (not res!409493) (not e!588832))))

(declare-fun c!145815 () Bool)

(declare-fun call!53652 () Bool)

(declare-fun bm!53647 () Bool)

(assert (=> bm!53647 (= call!53652 (Exists!141 (ite c!145815 lambda!28145 lambda!28146)))))

(declare-fun e!588831 () Bool)

(assert (=> b!900531 (= e!588831 call!53652)))

(declare-fun b!900532 () Bool)

(declare-fun e!588834 () Bool)

(assert (=> b!900532 (= e!588834 (matchRSpec!165 (regTwo!5241 r!15766) s!10566))))

(declare-fun e!588833 () Bool)

(assert (=> b!900533 (= e!588833 call!53652)))

(declare-fun d!278254 () Bool)

(declare-fun c!145818 () Bool)

(assert (=> d!278254 (= c!145818 (is-EmptyExpr!2364 r!15766))))

(assert (=> d!278254 (= (matchRSpec!165 r!15766 s!10566) e!588830)))

(declare-fun b!900534 () Bool)

(declare-fun res!409494 () Bool)

(assert (=> b!900534 (=> res!409494 e!588833)))

(declare-fun call!53653 () Bool)

(assert (=> b!900534 (= res!409494 call!53653)))

(assert (=> b!900534 (= e!588831 e!588833)))

(declare-fun b!900535 () Bool)

(declare-fun c!145816 () Bool)

(assert (=> b!900535 (= c!145816 (is-ElementMatch!2364 r!15766))))

(declare-fun e!588836 () Bool)

(assert (=> b!900535 (= e!588832 e!588836)))

(declare-fun b!900536 () Bool)

(declare-fun e!588835 () Bool)

(assert (=> b!900536 (= e!588835 e!588834)))

(declare-fun res!409495 () Bool)

(assert (=> b!900536 (= res!409495 (matchRSpec!165 (regOne!5241 r!15766) s!10566))))

(assert (=> b!900536 (=> res!409495 e!588834)))

(declare-fun b!900537 () Bool)

(assert (=> b!900537 (= e!588835 e!588831)))

(assert (=> b!900537 (= c!145815 (is-Star!2364 r!15766))))

(declare-fun b!900538 () Bool)

(assert (=> b!900538 (= e!588830 call!53653)))

(declare-fun bm!53648 () Bool)

(assert (=> bm!53648 (= call!53653 (isEmpty!5779 s!10566))))

(declare-fun b!900539 () Bool)

(declare-fun c!145817 () Bool)

(assert (=> b!900539 (= c!145817 (is-Union!2364 r!15766))))

(assert (=> b!900539 (= e!588836 e!588835)))

(declare-fun b!900540 () Bool)

(assert (=> b!900540 (= e!588836 (= s!10566 (Cons!9578 (c!145798 r!15766) Nil!9578)))))

(assert (= (and d!278254 c!145818) b!900538))

(assert (= (and d!278254 (not c!145818)) b!900530))

(assert (= (and b!900530 res!409493) b!900535))

(assert (= (and b!900535 c!145816) b!900540))

(assert (= (and b!900535 (not c!145816)) b!900539))

(assert (= (and b!900539 c!145817) b!900536))

(assert (= (and b!900539 (not c!145817)) b!900537))

(assert (= (and b!900536 (not res!409495)) b!900532))

(assert (= (and b!900537 c!145815) b!900534))

(assert (= (and b!900537 (not c!145815)) b!900531))

(assert (= (and b!900534 (not res!409494)) b!900533))

(assert (= (or b!900533 b!900531) bm!53647))

(assert (= (or b!900538 b!900534) bm!53648))

(declare-fun m!1138343 () Bool)

(assert (=> bm!53647 m!1138343))

(declare-fun m!1138345 () Bool)

(assert (=> b!900532 m!1138345))

(declare-fun m!1138347 () Bool)

(assert (=> b!900536 m!1138347))

(assert (=> bm!53648 m!1138255))

(assert (=> b!900402 d!278254))

(declare-fun b!900587 () Bool)

(declare-fun res!409526 () Bool)

(declare-fun e!588866 () Bool)

(assert (=> b!900587 (=> (not res!409526) (not e!588866))))

(declare-fun call!53662 () Bool)

(assert (=> b!900587 (= res!409526 (not call!53662))))

(declare-fun b!900588 () Bool)

(declare-fun e!588871 () Bool)

(declare-fun e!588865 () Bool)

(assert (=> b!900588 (= e!588871 e!588865)))

(declare-fun c!145830 () Bool)

(assert (=> b!900588 (= c!145830 (is-EmptyLang!2364 r!15766))))

(declare-fun b!900589 () Bool)

(declare-fun res!409527 () Bool)

(declare-fun e!588867 () Bool)

(assert (=> b!900589 (=> res!409527 e!588867)))

(assert (=> b!900589 (= res!409527 (not (is-ElementMatch!2364 r!15766)))))

(assert (=> b!900589 (= e!588865 e!588867)))

(declare-fun b!900590 () Bool)

(declare-fun lt!334491 () Bool)

(assert (=> b!900590 (= e!588865 (not lt!334491))))

(declare-fun b!900591 () Bool)

(declare-fun e!588869 () Bool)

(declare-fun e!588868 () Bool)

(assert (=> b!900591 (= e!588869 e!588868)))

(declare-fun res!409525 () Bool)

(assert (=> b!900591 (=> res!409525 e!588868)))

(assert (=> b!900591 (= res!409525 call!53662)))

(declare-fun b!900592 () Bool)

(declare-fun e!588870 () Bool)

(declare-fun nullable!629 (Regex!2364) Bool)

(assert (=> b!900592 (= e!588870 (nullable!629 r!15766))))

(declare-fun d!278260 () Bool)

(assert (=> d!278260 e!588871))

(declare-fun c!145829 () Bool)

(assert (=> d!278260 (= c!145829 (is-EmptyExpr!2364 r!15766))))

(assert (=> d!278260 (= lt!334491 e!588870)))

(declare-fun c!145831 () Bool)

(assert (=> d!278260 (= c!145831 (isEmpty!5779 s!10566))))

(assert (=> d!278260 (validRegex!833 r!15766)))

(assert (=> d!278260 (= (matchR!902 r!15766 s!10566) lt!334491)))

(declare-fun b!900593 () Bool)

(declare-fun head!1594 (List!9594) C!5298)

(assert (=> b!900593 (= e!588868 (not (= (head!1594 s!10566) (c!145798 r!15766))))))

(declare-fun bm!53657 () Bool)

(assert (=> bm!53657 (= call!53662 (isEmpty!5779 s!10566))))

(declare-fun b!900594 () Bool)

(assert (=> b!900594 (= e!588871 (= lt!334491 call!53662))))

(declare-fun b!900595 () Bool)

(declare-fun derivativeStep!441 (Regex!2364 C!5298) Regex!2364)

(declare-fun tail!1156 (List!9594) List!9594)

(assert (=> b!900595 (= e!588870 (matchR!902 (derivativeStep!441 r!15766 (head!1594 s!10566)) (tail!1156 s!10566)))))

(declare-fun b!900596 () Bool)

(declare-fun res!409528 () Bool)

(assert (=> b!900596 (=> res!409528 e!588867)))

(assert (=> b!900596 (= res!409528 e!588866)))

(declare-fun res!409522 () Bool)

(assert (=> b!900596 (=> (not res!409522) (not e!588866))))

(assert (=> b!900596 (= res!409522 lt!334491)))

(declare-fun b!900597 () Bool)

(assert (=> b!900597 (= e!588867 e!588869)))

(declare-fun res!409523 () Bool)

(assert (=> b!900597 (=> (not res!409523) (not e!588869))))

(assert (=> b!900597 (= res!409523 (not lt!334491))))

(declare-fun b!900598 () Bool)

(declare-fun res!409524 () Bool)

(assert (=> b!900598 (=> (not res!409524) (not e!588866))))

(assert (=> b!900598 (= res!409524 (isEmpty!5779 (tail!1156 s!10566)))))

(declare-fun b!900599 () Bool)

(declare-fun res!409529 () Bool)

(assert (=> b!900599 (=> res!409529 e!588868)))

(assert (=> b!900599 (= res!409529 (not (isEmpty!5779 (tail!1156 s!10566))))))

(declare-fun b!900600 () Bool)

(assert (=> b!900600 (= e!588866 (= (head!1594 s!10566) (c!145798 r!15766)))))

(assert (= (and d!278260 c!145831) b!900592))

(assert (= (and d!278260 (not c!145831)) b!900595))

(assert (= (and d!278260 c!145829) b!900594))

(assert (= (and d!278260 (not c!145829)) b!900588))

(assert (= (and b!900588 c!145830) b!900590))

(assert (= (and b!900588 (not c!145830)) b!900589))

(assert (= (and b!900589 (not res!409527)) b!900596))

(assert (= (and b!900596 res!409522) b!900587))

(assert (= (and b!900587 res!409526) b!900598))

(assert (= (and b!900598 res!409524) b!900600))

(assert (= (and b!900596 (not res!409528)) b!900597))

(assert (= (and b!900597 res!409523) b!900591))

(assert (= (and b!900591 (not res!409525)) b!900599))

(assert (= (and b!900599 (not res!409529)) b!900593))

(assert (= (or b!900594 b!900587 b!900591) bm!53657))

(declare-fun m!1138359 () Bool)

(assert (=> b!900595 m!1138359))

(assert (=> b!900595 m!1138359))

(declare-fun m!1138361 () Bool)

(assert (=> b!900595 m!1138361))

(declare-fun m!1138363 () Bool)

(assert (=> b!900595 m!1138363))

(assert (=> b!900595 m!1138361))

(assert (=> b!900595 m!1138363))

(declare-fun m!1138365 () Bool)

(assert (=> b!900595 m!1138365))

(assert (=> b!900599 m!1138363))

(assert (=> b!900599 m!1138363))

(declare-fun m!1138367 () Bool)

(assert (=> b!900599 m!1138367))

(declare-fun m!1138369 () Bool)

(assert (=> b!900592 m!1138369))

(assert (=> b!900598 m!1138363))

(assert (=> b!900598 m!1138363))

(assert (=> b!900598 m!1138367))

(assert (=> b!900600 m!1138359))

(assert (=> b!900593 m!1138359))

(assert (=> bm!53657 m!1138255))

(assert (=> d!278260 m!1138255))

(assert (=> d!278260 m!1138283))

(assert (=> b!900402 d!278260))

(declare-fun d!278266 () Bool)

(assert (=> d!278266 (= (matchR!902 r!15766 s!10566) (matchRSpec!165 r!15766 s!10566))))

(declare-fun lt!334494 () Unit!14323)

(declare-fun choose!5428 (Regex!2364 List!9594) Unit!14323)

(assert (=> d!278266 (= lt!334494 (choose!5428 r!15766 s!10566))))

(assert (=> d!278266 (validRegex!833 r!15766)))

(assert (=> d!278266 (= (mainMatchTheorem!165 r!15766 s!10566) lt!334494)))

(declare-fun bs!235198 () Bool)

(assert (= bs!235198 d!278266))

(assert (=> bs!235198 m!1138261))

(assert (=> bs!235198 m!1138259))

(declare-fun m!1138371 () Bool)

(assert (=> bs!235198 m!1138371))

(assert (=> bs!235198 m!1138283))

(assert (=> b!900402 d!278266))

(declare-fun d!278268 () Bool)

(assert (=> d!278268 (= (matchR!902 lt!334439 (_2!6191 lt!334434)) (matchR!902 (removeUselessConcat!77 lt!334439) (_2!6191 lt!334434)))))

(declare-fun lt!334497 () Unit!14323)

(declare-fun choose!5429 (Regex!2364 List!9594) Unit!14323)

(assert (=> d!278268 (= lt!334497 (choose!5429 lt!334439 (_2!6191 lt!334434)))))

(assert (=> d!278268 (validRegex!833 lt!334439)))

(assert (=> d!278268 (= (lemmaRemoveUselessConcatSound!69 lt!334439 (_2!6191 lt!334434)) lt!334497)))

(declare-fun bs!235199 () Bool)

(assert (= bs!235199 d!278268))

(assert (=> bs!235199 m!1138265))

(assert (=> bs!235199 m!1138271))

(declare-fun m!1138373 () Bool)

(assert (=> bs!235199 m!1138373))

(declare-fun m!1138375 () Bool)

(assert (=> bs!235199 m!1138375))

(declare-fun m!1138377 () Bool)

(assert (=> bs!235199 m!1138377))

(assert (=> bs!235199 m!1138271))

(assert (=> b!900403 d!278268))

(declare-fun d!278270 () Bool)

(declare-fun lt!334500 () Int)

(assert (=> d!278270 (>= lt!334500 0)))

(declare-fun e!588874 () Int)

(assert (=> d!278270 (= lt!334500 e!588874)))

(declare-fun c!145834 () Bool)

(assert (=> d!278270 (= c!145834 (is-Nil!9578 s!10566))))

(assert (=> d!278270 (= (size!7869 s!10566) lt!334500)))

(declare-fun b!900605 () Bool)

(assert (=> b!900605 (= e!588874 0)))

(declare-fun b!900606 () Bool)

(assert (=> b!900606 (= e!588874 (+ 1 (size!7869 (t!100640 s!10566))))))

(assert (= (and d!278270 c!145834) b!900605))

(assert (= (and d!278270 (not c!145834)) b!900606))

(declare-fun m!1138379 () Bool)

(assert (=> b!900606 m!1138379))

(assert (=> b!900403 d!278270))

(declare-fun d!278272 () Bool)

(assert (=> d!278272 (= (matchR!902 (reg!2693 r!15766) (_1!6191 lt!334434)) (matchR!902 (removeUselessConcat!77 (reg!2693 r!15766)) (_1!6191 lt!334434)))))

(declare-fun lt!334501 () Unit!14323)

(assert (=> d!278272 (= lt!334501 (choose!5429 (reg!2693 r!15766) (_1!6191 lt!334434)))))

(assert (=> d!278272 (validRegex!833 (reg!2693 r!15766))))

(assert (=> d!278272 (= (lemmaRemoveUselessConcatSound!69 (reg!2693 r!15766) (_1!6191 lt!334434)) lt!334501)))

(declare-fun bs!235200 () Bool)

(assert (= bs!235200 d!278272))

(assert (=> bs!235200 m!1138241))

(assert (=> bs!235200 m!1138269))

(declare-fun m!1138381 () Bool)

(assert (=> bs!235200 m!1138381))

(declare-fun m!1138383 () Bool)

(assert (=> bs!235200 m!1138383))

(assert (=> bs!235200 m!1138285))

(assert (=> bs!235200 m!1138269))

(assert (=> b!900403 d!278272))

(declare-fun bm!53668 () Bool)

(declare-fun call!53674 () Regex!2364)

(declare-fun call!53677 () Regex!2364)

(assert (=> bm!53668 (= call!53674 call!53677)))

(declare-fun b!900633 () Bool)

(declare-fun e!588893 () Regex!2364)

(declare-fun call!53676 () Regex!2364)

(assert (=> b!900633 (= e!588893 (Concat!4197 call!53674 call!53676))))

(declare-fun b!900634 () Bool)

(declare-fun c!145848 () Bool)

(assert (=> b!900634 (= c!145848 (is-Concat!4197 (reg!2693 r!15766)))))

(declare-fun e!588894 () Regex!2364)

(assert (=> b!900634 (= e!588894 e!588893)))

(declare-fun b!900635 () Bool)

(declare-fun e!588890 () Regex!2364)

(assert (=> b!900635 (= e!588893 e!588890)))

(declare-fun c!145849 () Bool)

(assert (=> b!900635 (= c!145849 (is-Union!2364 (reg!2693 r!15766)))))

(declare-fun d!278274 () Bool)

(declare-fun e!588891 () Bool)

(assert (=> d!278274 e!588891))

(declare-fun res!409536 () Bool)

(assert (=> d!278274 (=> (not res!409536) (not e!588891))))

(declare-fun lt!334506 () Regex!2364)

(assert (=> d!278274 (= res!409536 (validRegex!833 lt!334506))))

(declare-fun e!588892 () Regex!2364)

(assert (=> d!278274 (= lt!334506 e!588892)))

(declare-fun c!145847 () Bool)

(assert (=> d!278274 (= c!145847 (and (is-Concat!4197 (reg!2693 r!15766)) (is-EmptyExpr!2364 (regOne!5240 (reg!2693 r!15766)))))))

(assert (=> d!278274 (validRegex!833 (reg!2693 r!15766))))

(assert (=> d!278274 (= (removeUselessConcat!77 (reg!2693 r!15766)) lt!334506)))

(declare-fun b!900636 () Bool)

(assert (=> b!900636 (= e!588892 e!588894)))

(declare-fun c!145846 () Bool)

(assert (=> b!900636 (= c!145846 (and (is-Concat!4197 (reg!2693 r!15766)) (is-EmptyExpr!2364 (regTwo!5240 (reg!2693 r!15766)))))))

(declare-fun b!900637 () Bool)

(declare-fun e!588889 () Regex!2364)

(assert (=> b!900637 (= e!588889 (reg!2693 r!15766))))

(declare-fun b!900638 () Bool)

(declare-fun c!145845 () Bool)

(assert (=> b!900638 (= c!145845 (is-Star!2364 (reg!2693 r!15766)))))

(assert (=> b!900638 (= e!588890 e!588889)))

(declare-fun bm!53669 () Bool)

(declare-fun call!53675 () Regex!2364)

(assert (=> bm!53669 (= call!53675 (removeUselessConcat!77 (ite (or c!145847 c!145848) (regTwo!5240 (reg!2693 r!15766)) (regOne!5241 (reg!2693 r!15766)))))))

(declare-fun bm!53670 () Bool)

(declare-fun call!53673 () Regex!2364)

(assert (=> bm!53670 (= call!53673 call!53674)))

(declare-fun b!900639 () Bool)

(assert (=> b!900639 (= e!588892 call!53675)))

(declare-fun bm!53671 () Bool)

(assert (=> bm!53671 (= call!53677 (removeUselessConcat!77 (ite (or c!145846 c!145848) (regOne!5240 (reg!2693 r!15766)) (ite c!145849 (regTwo!5241 (reg!2693 r!15766)) (reg!2693 (reg!2693 r!15766))))))))

(declare-fun bm!53672 () Bool)

(assert (=> bm!53672 (= call!53676 call!53675)))

(declare-fun b!900640 () Bool)

(assert (=> b!900640 (= e!588894 call!53677)))

(declare-fun b!900641 () Bool)

(assert (=> b!900641 (= e!588891 (= (nullable!629 lt!334506) (nullable!629 (reg!2693 r!15766))))))

(declare-fun b!900642 () Bool)

(assert (=> b!900642 (= e!588889 (Star!2364 call!53673))))

(declare-fun b!900643 () Bool)

(assert (=> b!900643 (= e!588890 (Union!2364 call!53676 call!53673))))

(assert (= (and d!278274 c!145847) b!900639))

(assert (= (and d!278274 (not c!145847)) b!900636))

(assert (= (and b!900636 c!145846) b!900640))

(assert (= (and b!900636 (not c!145846)) b!900634))

(assert (= (and b!900634 c!145848) b!900633))

(assert (= (and b!900634 (not c!145848)) b!900635))

(assert (= (and b!900635 c!145849) b!900643))

(assert (= (and b!900635 (not c!145849)) b!900638))

(assert (= (and b!900638 c!145845) b!900642))

(assert (= (and b!900638 (not c!145845)) b!900637))

(assert (= (or b!900643 b!900642) bm!53670))

(assert (= (or b!900633 b!900643) bm!53672))

(assert (= (or b!900633 bm!53670) bm!53668))

(assert (= (or b!900640 bm!53668) bm!53671))

(assert (= (or b!900639 bm!53672) bm!53669))

(assert (= (and d!278274 res!409536) b!900641))

(declare-fun m!1138385 () Bool)

(assert (=> d!278274 m!1138385))

(assert (=> d!278274 m!1138285))

(declare-fun m!1138387 () Bool)

(assert (=> bm!53669 m!1138387))

(declare-fun m!1138389 () Bool)

(assert (=> bm!53671 m!1138389))

(declare-fun m!1138391 () Bool)

(assert (=> b!900641 m!1138391))

(declare-fun m!1138393 () Bool)

(assert (=> b!900641 m!1138393))

(assert (=> b!900403 d!278274))

(declare-fun d!278276 () Bool)

(declare-fun lt!334507 () Int)

(assert (=> d!278276 (>= lt!334507 0)))

(declare-fun e!588897 () Int)

(assert (=> d!278276 (= lt!334507 e!588897)))

(declare-fun c!145850 () Bool)

(assert (=> d!278276 (= c!145850 (is-Nil!9578 (_2!6191 lt!334434)))))

(assert (=> d!278276 (= (size!7869 (_2!6191 lt!334434)) lt!334507)))

(declare-fun b!900650 () Bool)

(assert (=> b!900650 (= e!588897 0)))

(declare-fun b!900651 () Bool)

(assert (=> b!900651 (= e!588897 (+ 1 (size!7869 (t!100640 (_2!6191 lt!334434)))))))

(assert (= (and d!278276 c!145850) b!900650))

(assert (= (and d!278276 (not c!145850)) b!900651))

(declare-fun m!1138395 () Bool)

(assert (=> b!900651 m!1138395))

(assert (=> b!900403 d!278276))

(declare-fun b!900652 () Bool)

(declare-fun res!409547 () Bool)

(declare-fun e!588899 () Bool)

(assert (=> b!900652 (=> (not res!409547) (not e!588899))))

(declare-fun call!53678 () Bool)

(assert (=> b!900652 (= res!409547 (not call!53678))))

(declare-fun b!900653 () Bool)

(declare-fun e!588904 () Bool)

(declare-fun e!588898 () Bool)

(assert (=> b!900653 (= e!588904 e!588898)))

(declare-fun c!145852 () Bool)

(assert (=> b!900653 (= c!145852 (is-EmptyLang!2364 lt!334437))))

(declare-fun b!900654 () Bool)

(declare-fun res!409548 () Bool)

(declare-fun e!588900 () Bool)

(assert (=> b!900654 (=> res!409548 e!588900)))

(assert (=> b!900654 (= res!409548 (not (is-ElementMatch!2364 lt!334437)))))

(assert (=> b!900654 (= e!588898 e!588900)))

(declare-fun b!900655 () Bool)

(declare-fun lt!334508 () Bool)

(assert (=> b!900655 (= e!588898 (not lt!334508))))

(declare-fun b!900656 () Bool)

(declare-fun e!588902 () Bool)

(declare-fun e!588901 () Bool)

(assert (=> b!900656 (= e!588902 e!588901)))

(declare-fun res!409546 () Bool)

(assert (=> b!900656 (=> res!409546 e!588901)))

(assert (=> b!900656 (= res!409546 call!53678)))

(declare-fun b!900657 () Bool)

(declare-fun e!588903 () Bool)

(assert (=> b!900657 (= e!588903 (nullable!629 lt!334437))))

(declare-fun d!278278 () Bool)

(assert (=> d!278278 e!588904))

(declare-fun c!145851 () Bool)

(assert (=> d!278278 (= c!145851 (is-EmptyExpr!2364 lt!334437))))

(assert (=> d!278278 (= lt!334508 e!588903)))

(declare-fun c!145853 () Bool)

(assert (=> d!278278 (= c!145853 (isEmpty!5779 (_1!6191 lt!334434)))))

(assert (=> d!278278 (validRegex!833 lt!334437)))

(assert (=> d!278278 (= (matchR!902 lt!334437 (_1!6191 lt!334434)) lt!334508)))

(declare-fun b!900658 () Bool)

(assert (=> b!900658 (= e!588901 (not (= (head!1594 (_1!6191 lt!334434)) (c!145798 lt!334437))))))

(declare-fun bm!53673 () Bool)

(assert (=> bm!53673 (= call!53678 (isEmpty!5779 (_1!6191 lt!334434)))))

(declare-fun b!900659 () Bool)

(assert (=> b!900659 (= e!588904 (= lt!334508 call!53678))))

(declare-fun b!900660 () Bool)

(assert (=> b!900660 (= e!588903 (matchR!902 (derivativeStep!441 lt!334437 (head!1594 (_1!6191 lt!334434))) (tail!1156 (_1!6191 lt!334434))))))

(declare-fun b!900661 () Bool)

(declare-fun res!409549 () Bool)

(assert (=> b!900661 (=> res!409549 e!588900)))

(assert (=> b!900661 (= res!409549 e!588899)))

(declare-fun res!409543 () Bool)

(assert (=> b!900661 (=> (not res!409543) (not e!588899))))

(assert (=> b!900661 (= res!409543 lt!334508)))

(declare-fun b!900662 () Bool)

(assert (=> b!900662 (= e!588900 e!588902)))

(declare-fun res!409544 () Bool)

(assert (=> b!900662 (=> (not res!409544) (not e!588902))))

(assert (=> b!900662 (= res!409544 (not lt!334508))))

(declare-fun b!900663 () Bool)

(declare-fun res!409545 () Bool)

(assert (=> b!900663 (=> (not res!409545) (not e!588899))))

(assert (=> b!900663 (= res!409545 (isEmpty!5779 (tail!1156 (_1!6191 lt!334434))))))

(declare-fun b!900664 () Bool)

(declare-fun res!409550 () Bool)

(assert (=> b!900664 (=> res!409550 e!588901)))

(assert (=> b!900664 (= res!409550 (not (isEmpty!5779 (tail!1156 (_1!6191 lt!334434)))))))

(declare-fun b!900665 () Bool)

(assert (=> b!900665 (= e!588899 (= (head!1594 (_1!6191 lt!334434)) (c!145798 lt!334437)))))

(assert (= (and d!278278 c!145853) b!900657))

(assert (= (and d!278278 (not c!145853)) b!900660))

(assert (= (and d!278278 c!145851) b!900659))

(assert (= (and d!278278 (not c!145851)) b!900653))

(assert (= (and b!900653 c!145852) b!900655))

(assert (= (and b!900653 (not c!145852)) b!900654))

(assert (= (and b!900654 (not res!409548)) b!900661))

(assert (= (and b!900661 res!409543) b!900652))

(assert (= (and b!900652 res!409547) b!900663))

(assert (= (and b!900663 res!409545) b!900665))

(assert (= (and b!900661 (not res!409549)) b!900662))

(assert (= (and b!900662 res!409544) b!900656))

(assert (= (and b!900656 (not res!409546)) b!900664))

(assert (= (and b!900664 (not res!409550)) b!900658))

(assert (= (or b!900659 b!900652 b!900656) bm!53673))

(declare-fun m!1138397 () Bool)

(assert (=> b!900660 m!1138397))

(assert (=> b!900660 m!1138397))

(declare-fun m!1138399 () Bool)

(assert (=> b!900660 m!1138399))

(declare-fun m!1138401 () Bool)

(assert (=> b!900660 m!1138401))

(assert (=> b!900660 m!1138399))

(assert (=> b!900660 m!1138401))

(declare-fun m!1138403 () Bool)

(assert (=> b!900660 m!1138403))

(assert (=> b!900664 m!1138401))

(assert (=> b!900664 m!1138401))

(declare-fun m!1138405 () Bool)

(assert (=> b!900664 m!1138405))

(declare-fun m!1138407 () Bool)

(assert (=> b!900657 m!1138407))

(assert (=> b!900663 m!1138401))

(assert (=> b!900663 m!1138401))

(assert (=> b!900663 m!1138405))

(assert (=> b!900665 m!1138397))

(assert (=> b!900658 m!1138397))

(declare-fun m!1138409 () Bool)

(assert (=> bm!53673 m!1138409))

(assert (=> d!278278 m!1138409))

(declare-fun m!1138411 () Bool)

(assert (=> d!278278 m!1138411))

(assert (=> b!900403 d!278278))

(declare-fun bm!53674 () Bool)

(declare-fun call!53680 () Regex!2364)

(declare-fun call!53683 () Regex!2364)

(assert (=> bm!53674 (= call!53680 call!53683)))

(declare-fun b!900666 () Bool)

(declare-fun e!588909 () Regex!2364)

(declare-fun call!53682 () Regex!2364)

(assert (=> b!900666 (= e!588909 (Concat!4197 call!53680 call!53682))))

(declare-fun b!900667 () Bool)

(declare-fun c!145857 () Bool)

(assert (=> b!900667 (= c!145857 (is-Concat!4197 lt!334439))))

(declare-fun e!588910 () Regex!2364)

(assert (=> b!900667 (= e!588910 e!588909)))

(declare-fun b!900668 () Bool)

(declare-fun e!588906 () Regex!2364)

(assert (=> b!900668 (= e!588909 e!588906)))

(declare-fun c!145858 () Bool)

(assert (=> b!900668 (= c!145858 (is-Union!2364 lt!334439))))

(declare-fun d!278280 () Bool)

(declare-fun e!588907 () Bool)

(assert (=> d!278280 e!588907))

(declare-fun res!409551 () Bool)

(assert (=> d!278280 (=> (not res!409551) (not e!588907))))

(declare-fun lt!334509 () Regex!2364)

(assert (=> d!278280 (= res!409551 (validRegex!833 lt!334509))))

(declare-fun e!588908 () Regex!2364)

(assert (=> d!278280 (= lt!334509 e!588908)))

(declare-fun c!145856 () Bool)

(assert (=> d!278280 (= c!145856 (and (is-Concat!4197 lt!334439) (is-EmptyExpr!2364 (regOne!5240 lt!334439))))))

(assert (=> d!278280 (validRegex!833 lt!334439)))

(assert (=> d!278280 (= (removeUselessConcat!77 lt!334439) lt!334509)))

(declare-fun b!900669 () Bool)

(assert (=> b!900669 (= e!588908 e!588910)))

(declare-fun c!145855 () Bool)

(assert (=> b!900669 (= c!145855 (and (is-Concat!4197 lt!334439) (is-EmptyExpr!2364 (regTwo!5240 lt!334439))))))

(declare-fun b!900670 () Bool)

(declare-fun e!588905 () Regex!2364)

(assert (=> b!900670 (= e!588905 lt!334439)))

(declare-fun b!900671 () Bool)

(declare-fun c!145854 () Bool)

(assert (=> b!900671 (= c!145854 (is-Star!2364 lt!334439))))

(assert (=> b!900671 (= e!588906 e!588905)))

(declare-fun call!53681 () Regex!2364)

(declare-fun bm!53675 () Bool)

(assert (=> bm!53675 (= call!53681 (removeUselessConcat!77 (ite (or c!145856 c!145857) (regTwo!5240 lt!334439) (regOne!5241 lt!334439))))))

(declare-fun bm!53676 () Bool)

(declare-fun call!53679 () Regex!2364)

(assert (=> bm!53676 (= call!53679 call!53680)))

(declare-fun b!900672 () Bool)

(assert (=> b!900672 (= e!588908 call!53681)))

(declare-fun bm!53677 () Bool)

(assert (=> bm!53677 (= call!53683 (removeUselessConcat!77 (ite (or c!145855 c!145857) (regOne!5240 lt!334439) (ite c!145858 (regTwo!5241 lt!334439) (reg!2693 lt!334439)))))))

(declare-fun bm!53678 () Bool)

(assert (=> bm!53678 (= call!53682 call!53681)))

(declare-fun b!900673 () Bool)

(assert (=> b!900673 (= e!588910 call!53683)))

(declare-fun b!900674 () Bool)

(assert (=> b!900674 (= e!588907 (= (nullable!629 lt!334509) (nullable!629 lt!334439)))))

(declare-fun b!900675 () Bool)

(assert (=> b!900675 (= e!588905 (Star!2364 call!53679))))

(declare-fun b!900676 () Bool)

(assert (=> b!900676 (= e!588906 (Union!2364 call!53682 call!53679))))

(assert (= (and d!278280 c!145856) b!900672))

(assert (= (and d!278280 (not c!145856)) b!900669))

(assert (= (and b!900669 c!145855) b!900673))

(assert (= (and b!900669 (not c!145855)) b!900667))

(assert (= (and b!900667 c!145857) b!900666))

(assert (= (and b!900667 (not c!145857)) b!900668))

(assert (= (and b!900668 c!145858) b!900676))

(assert (= (and b!900668 (not c!145858)) b!900671))

(assert (= (and b!900671 c!145854) b!900675))

(assert (= (and b!900671 (not c!145854)) b!900670))

(assert (= (or b!900676 b!900675) bm!53676))

(assert (= (or b!900666 b!900676) bm!53678))

(assert (= (or b!900666 bm!53676) bm!53674))

(assert (= (or b!900673 bm!53674) bm!53677))

(assert (= (or b!900672 bm!53678) bm!53675))

(assert (= (and d!278280 res!409551) b!900674))

(declare-fun m!1138413 () Bool)

(assert (=> d!278280 m!1138413))

(assert (=> d!278280 m!1138377))

(declare-fun m!1138415 () Bool)

(assert (=> bm!53675 m!1138415))

(declare-fun m!1138417 () Bool)

(assert (=> bm!53677 m!1138417))

(declare-fun m!1138419 () Bool)

(assert (=> b!900674 m!1138419))

(declare-fun m!1138421 () Bool)

(assert (=> b!900674 m!1138421))

(assert (=> b!900403 d!278280))

(declare-fun b!900677 () Bool)

(declare-fun res!409556 () Bool)

(declare-fun e!588912 () Bool)

(assert (=> b!900677 (=> (not res!409556) (not e!588912))))

(declare-fun call!53684 () Bool)

(assert (=> b!900677 (= res!409556 (not call!53684))))

(declare-fun b!900678 () Bool)

(declare-fun e!588917 () Bool)

(declare-fun e!588911 () Bool)

(assert (=> b!900678 (= e!588917 e!588911)))

(declare-fun c!145860 () Bool)

(assert (=> b!900678 (= c!145860 (is-EmptyLang!2364 lt!334441))))

(declare-fun b!900679 () Bool)

(declare-fun res!409557 () Bool)

(declare-fun e!588913 () Bool)

(assert (=> b!900679 (=> res!409557 e!588913)))

(assert (=> b!900679 (= res!409557 (not (is-ElementMatch!2364 lt!334441)))))

(assert (=> b!900679 (= e!588911 e!588913)))

(declare-fun b!900680 () Bool)

(declare-fun lt!334510 () Bool)

(assert (=> b!900680 (= e!588911 (not lt!334510))))

(declare-fun b!900681 () Bool)

(declare-fun e!588915 () Bool)

(declare-fun e!588914 () Bool)

(assert (=> b!900681 (= e!588915 e!588914)))

(declare-fun res!409555 () Bool)

(assert (=> b!900681 (=> res!409555 e!588914)))

(assert (=> b!900681 (= res!409555 call!53684)))

(declare-fun b!900682 () Bool)

(declare-fun e!588916 () Bool)

(assert (=> b!900682 (= e!588916 (nullable!629 lt!334441))))

(declare-fun d!278282 () Bool)

(assert (=> d!278282 e!588917))

(declare-fun c!145859 () Bool)

(assert (=> d!278282 (= c!145859 (is-EmptyExpr!2364 lt!334441))))

(assert (=> d!278282 (= lt!334510 e!588916)))

(declare-fun c!145861 () Bool)

(assert (=> d!278282 (= c!145861 (isEmpty!5779 (_2!6191 lt!334434)))))

(assert (=> d!278282 (validRegex!833 lt!334441)))

(assert (=> d!278282 (= (matchR!902 lt!334441 (_2!6191 lt!334434)) lt!334510)))

(declare-fun b!900683 () Bool)

(assert (=> b!900683 (= e!588914 (not (= (head!1594 (_2!6191 lt!334434)) (c!145798 lt!334441))))))

(declare-fun bm!53679 () Bool)

(assert (=> bm!53679 (= call!53684 (isEmpty!5779 (_2!6191 lt!334434)))))

(declare-fun b!900684 () Bool)

(assert (=> b!900684 (= e!588917 (= lt!334510 call!53684))))

(declare-fun b!900685 () Bool)

(assert (=> b!900685 (= e!588916 (matchR!902 (derivativeStep!441 lt!334441 (head!1594 (_2!6191 lt!334434))) (tail!1156 (_2!6191 lt!334434))))))

(declare-fun b!900686 () Bool)

(declare-fun res!409558 () Bool)

(assert (=> b!900686 (=> res!409558 e!588913)))

(assert (=> b!900686 (= res!409558 e!588912)))

(declare-fun res!409552 () Bool)

(assert (=> b!900686 (=> (not res!409552) (not e!588912))))

(assert (=> b!900686 (= res!409552 lt!334510)))

(declare-fun b!900687 () Bool)

(assert (=> b!900687 (= e!588913 e!588915)))

(declare-fun res!409553 () Bool)

(assert (=> b!900687 (=> (not res!409553) (not e!588915))))

(assert (=> b!900687 (= res!409553 (not lt!334510))))

(declare-fun b!900688 () Bool)

(declare-fun res!409554 () Bool)

(assert (=> b!900688 (=> (not res!409554) (not e!588912))))

(assert (=> b!900688 (= res!409554 (isEmpty!5779 (tail!1156 (_2!6191 lt!334434))))))

(declare-fun b!900689 () Bool)

(declare-fun res!409559 () Bool)

(assert (=> b!900689 (=> res!409559 e!588914)))

(assert (=> b!900689 (= res!409559 (not (isEmpty!5779 (tail!1156 (_2!6191 lt!334434)))))))

(declare-fun b!900690 () Bool)

(assert (=> b!900690 (= e!588912 (= (head!1594 (_2!6191 lt!334434)) (c!145798 lt!334441)))))

(assert (= (and d!278282 c!145861) b!900682))

(assert (= (and d!278282 (not c!145861)) b!900685))

(assert (= (and d!278282 c!145859) b!900684))

(assert (= (and d!278282 (not c!145859)) b!900678))

(assert (= (and b!900678 c!145860) b!900680))

(assert (= (and b!900678 (not c!145860)) b!900679))

(assert (= (and b!900679 (not res!409557)) b!900686))

(assert (= (and b!900686 res!409552) b!900677))

(assert (= (and b!900677 res!409556) b!900688))

(assert (= (and b!900688 res!409554) b!900690))

(assert (= (and b!900686 (not res!409558)) b!900687))

(assert (= (and b!900687 res!409553) b!900681))

(assert (= (and b!900681 (not res!409555)) b!900689))

(assert (= (and b!900689 (not res!409559)) b!900683))

(assert (= (or b!900684 b!900677 b!900681) bm!53679))

(declare-fun m!1138423 () Bool)

(assert (=> b!900685 m!1138423))

(assert (=> b!900685 m!1138423))

(declare-fun m!1138425 () Bool)

(assert (=> b!900685 m!1138425))

(declare-fun m!1138427 () Bool)

(assert (=> b!900685 m!1138427))

(assert (=> b!900685 m!1138425))

(assert (=> b!900685 m!1138427))

(declare-fun m!1138429 () Bool)

(assert (=> b!900685 m!1138429))

(assert (=> b!900689 m!1138427))

(assert (=> b!900689 m!1138427))

(declare-fun m!1138431 () Bool)

(assert (=> b!900689 m!1138431))

(declare-fun m!1138433 () Bool)

(assert (=> b!900682 m!1138433))

(assert (=> b!900688 m!1138427))

(assert (=> b!900688 m!1138427))

(assert (=> b!900688 m!1138431))

(assert (=> b!900690 m!1138423))

(assert (=> b!900683 m!1138423))

(declare-fun m!1138435 () Bool)

(assert (=> bm!53679 m!1138435))

(assert (=> d!278282 m!1138435))

(declare-fun m!1138437 () Bool)

(assert (=> d!278282 m!1138437))

(assert (=> b!900403 d!278282))

(declare-fun b!900691 () Bool)

(declare-fun res!409564 () Bool)

(declare-fun e!588919 () Bool)

(assert (=> b!900691 (=> (not res!409564) (not e!588919))))

(declare-fun call!53685 () Bool)

(assert (=> b!900691 (= res!409564 (not call!53685))))

(declare-fun b!900692 () Bool)

(declare-fun e!588924 () Bool)

(declare-fun e!588918 () Bool)

(assert (=> b!900692 (= e!588924 e!588918)))

(declare-fun c!145863 () Bool)

(assert (=> b!900692 (= c!145863 (is-EmptyLang!2364 (reg!2693 r!15766)))))

(declare-fun b!900693 () Bool)

(declare-fun res!409565 () Bool)

(declare-fun e!588920 () Bool)

(assert (=> b!900693 (=> res!409565 e!588920)))

(assert (=> b!900693 (= res!409565 (not (is-ElementMatch!2364 (reg!2693 r!15766))))))

(assert (=> b!900693 (= e!588918 e!588920)))

(declare-fun b!900694 () Bool)

(declare-fun lt!334512 () Bool)

(assert (=> b!900694 (= e!588918 (not lt!334512))))

(declare-fun b!900695 () Bool)

(declare-fun e!588922 () Bool)

(declare-fun e!588921 () Bool)

(assert (=> b!900695 (= e!588922 e!588921)))

(declare-fun res!409563 () Bool)

(assert (=> b!900695 (=> res!409563 e!588921)))

(assert (=> b!900695 (= res!409563 call!53685)))

(declare-fun b!900696 () Bool)

(declare-fun e!588923 () Bool)

(assert (=> b!900696 (= e!588923 (nullable!629 (reg!2693 r!15766)))))

(declare-fun d!278284 () Bool)

(assert (=> d!278284 e!588924))

(declare-fun c!145862 () Bool)

(assert (=> d!278284 (= c!145862 (is-EmptyExpr!2364 (reg!2693 r!15766)))))

(assert (=> d!278284 (= lt!334512 e!588923)))

(declare-fun c!145864 () Bool)

(assert (=> d!278284 (= c!145864 (isEmpty!5779 (_1!6191 lt!334434)))))

(assert (=> d!278284 (validRegex!833 (reg!2693 r!15766))))

(assert (=> d!278284 (= (matchR!902 (reg!2693 r!15766) (_1!6191 lt!334434)) lt!334512)))

(declare-fun b!900697 () Bool)

(assert (=> b!900697 (= e!588921 (not (= (head!1594 (_1!6191 lt!334434)) (c!145798 (reg!2693 r!15766)))))))

(declare-fun bm!53680 () Bool)

(assert (=> bm!53680 (= call!53685 (isEmpty!5779 (_1!6191 lt!334434)))))

(declare-fun b!900698 () Bool)

(assert (=> b!900698 (= e!588924 (= lt!334512 call!53685))))

(declare-fun b!900699 () Bool)

(assert (=> b!900699 (= e!588923 (matchR!902 (derivativeStep!441 (reg!2693 r!15766) (head!1594 (_1!6191 lt!334434))) (tail!1156 (_1!6191 lt!334434))))))

(declare-fun b!900700 () Bool)

(declare-fun res!409566 () Bool)

(assert (=> b!900700 (=> res!409566 e!588920)))

(assert (=> b!900700 (= res!409566 e!588919)))

(declare-fun res!409560 () Bool)

(assert (=> b!900700 (=> (not res!409560) (not e!588919))))

(assert (=> b!900700 (= res!409560 lt!334512)))

(declare-fun b!900701 () Bool)

(assert (=> b!900701 (= e!588920 e!588922)))

(declare-fun res!409561 () Bool)

(assert (=> b!900701 (=> (not res!409561) (not e!588922))))

(assert (=> b!900701 (= res!409561 (not lt!334512))))

(declare-fun b!900702 () Bool)

(declare-fun res!409562 () Bool)

(assert (=> b!900702 (=> (not res!409562) (not e!588919))))

(assert (=> b!900702 (= res!409562 (isEmpty!5779 (tail!1156 (_1!6191 lt!334434))))))

(declare-fun b!900703 () Bool)

(declare-fun res!409567 () Bool)

(assert (=> b!900703 (=> res!409567 e!588921)))

(assert (=> b!900703 (= res!409567 (not (isEmpty!5779 (tail!1156 (_1!6191 lt!334434)))))))

(declare-fun b!900704 () Bool)

(assert (=> b!900704 (= e!588919 (= (head!1594 (_1!6191 lt!334434)) (c!145798 (reg!2693 r!15766))))))

(assert (= (and d!278284 c!145864) b!900696))

(assert (= (and d!278284 (not c!145864)) b!900699))

(assert (= (and d!278284 c!145862) b!900698))

(assert (= (and d!278284 (not c!145862)) b!900692))

(assert (= (and b!900692 c!145863) b!900694))

(assert (= (and b!900692 (not c!145863)) b!900693))

(assert (= (and b!900693 (not res!409565)) b!900700))

(assert (= (and b!900700 res!409560) b!900691))

(assert (= (and b!900691 res!409564) b!900702))

(assert (= (and b!900702 res!409562) b!900704))

(assert (= (and b!900700 (not res!409566)) b!900701))

(assert (= (and b!900701 res!409561) b!900695))

(assert (= (and b!900695 (not res!409563)) b!900703))

(assert (= (and b!900703 (not res!409567)) b!900697))

(assert (= (or b!900698 b!900691 b!900695) bm!53680))

(assert (=> b!900699 m!1138397))

(assert (=> b!900699 m!1138397))

(declare-fun m!1138439 () Bool)

(assert (=> b!900699 m!1138439))

(assert (=> b!900699 m!1138401))

(assert (=> b!900699 m!1138439))

(assert (=> b!900699 m!1138401))

(declare-fun m!1138441 () Bool)

(assert (=> b!900699 m!1138441))

(assert (=> b!900703 m!1138401))

(assert (=> b!900703 m!1138401))

(assert (=> b!900703 m!1138405))

(assert (=> b!900696 m!1138393))

(assert (=> b!900702 m!1138401))

(assert (=> b!900702 m!1138401))

(assert (=> b!900702 m!1138405))

(assert (=> b!900704 m!1138397))

(assert (=> b!900697 m!1138397))

(assert (=> bm!53680 m!1138409))

(assert (=> d!278284 m!1138409))

(assert (=> d!278284 m!1138285))

(assert (=> b!900406 d!278284))

(declare-fun d!278286 () Bool)

(assert (=> d!278286 (= (get!3045 lt!334430) (v!19423 lt!334430))))

(assert (=> b!900406 d!278286))

(declare-fun b!900723 () Bool)

(declare-fun e!588942 () Bool)

(declare-fun call!53694 () Bool)

(assert (=> b!900723 (= e!588942 call!53694)))

(declare-fun b!900724 () Bool)

(declare-fun e!588944 () Bool)

(declare-fun e!588941 () Bool)

(assert (=> b!900724 (= e!588944 e!588941)))

(declare-fun c!145870 () Bool)

(assert (=> b!900724 (= c!145870 (is-Union!2364 r!15766))))

(declare-fun bm!53687 () Bool)

(declare-fun call!53692 () Bool)

(assert (=> bm!53687 (= call!53692 call!53694)))

(declare-fun b!900725 () Bool)

(declare-fun res!409581 () Bool)

(declare-fun e!588940 () Bool)

(assert (=> b!900725 (=> res!409581 e!588940)))

(assert (=> b!900725 (= res!409581 (not (is-Concat!4197 r!15766)))))

(assert (=> b!900725 (= e!588941 e!588940)))

(declare-fun b!900726 () Bool)

(declare-fun e!588939 () Bool)

(assert (=> b!900726 (= e!588939 call!53692)))

(declare-fun d!278288 () Bool)

(declare-fun res!409582 () Bool)

(declare-fun e!588943 () Bool)

(assert (=> d!278288 (=> res!409582 e!588943)))

(assert (=> d!278288 (= res!409582 (is-ElementMatch!2364 r!15766))))

(assert (=> d!278288 (= (validRegex!833 r!15766) e!588943)))

(declare-fun b!900727 () Bool)

(assert (=> b!900727 (= e!588940 e!588939)))

(declare-fun res!409580 () Bool)

(assert (=> b!900727 (=> (not res!409580) (not e!588939))))

(declare-fun call!53693 () Bool)

(assert (=> b!900727 (= res!409580 call!53693)))

(declare-fun c!145869 () Bool)

(declare-fun bm!53688 () Bool)

(assert (=> bm!53688 (= call!53694 (validRegex!833 (ite c!145869 (reg!2693 r!15766) (ite c!145870 (regTwo!5241 r!15766) (regTwo!5240 r!15766)))))))

(declare-fun bm!53689 () Bool)

(assert (=> bm!53689 (= call!53693 (validRegex!833 (ite c!145870 (regOne!5241 r!15766) (regOne!5240 r!15766))))))

(declare-fun b!900728 () Bool)

(declare-fun res!409579 () Bool)

(declare-fun e!588945 () Bool)

(assert (=> b!900728 (=> (not res!409579) (not e!588945))))

(assert (=> b!900728 (= res!409579 call!53693)))

(assert (=> b!900728 (= e!588941 e!588945)))

(declare-fun b!900729 () Bool)

(assert (=> b!900729 (= e!588944 e!588942)))

(declare-fun res!409578 () Bool)

(assert (=> b!900729 (= res!409578 (not (nullable!629 (reg!2693 r!15766))))))

(assert (=> b!900729 (=> (not res!409578) (not e!588942))))

(declare-fun b!900730 () Bool)

(assert (=> b!900730 (= e!588943 e!588944)))

(assert (=> b!900730 (= c!145869 (is-Star!2364 r!15766))))

(declare-fun b!900731 () Bool)

(assert (=> b!900731 (= e!588945 call!53692)))

(assert (= (and d!278288 (not res!409582)) b!900730))

(assert (= (and b!900730 c!145869) b!900729))

(assert (= (and b!900730 (not c!145869)) b!900724))

(assert (= (and b!900729 res!409578) b!900723))

(assert (= (and b!900724 c!145870) b!900728))

(assert (= (and b!900724 (not c!145870)) b!900725))

(assert (= (and b!900728 res!409579) b!900731))

(assert (= (and b!900725 (not res!409581)) b!900727))

(assert (= (and b!900727 res!409580) b!900726))

(assert (= (or b!900731 b!900726) bm!53687))

(assert (= (or b!900728 b!900727) bm!53689))

(assert (= (or b!900723 bm!53687) bm!53688))

(declare-fun m!1138453 () Bool)

(assert (=> bm!53688 m!1138453))

(declare-fun m!1138455 () Bool)

(assert (=> bm!53689 m!1138455))

(assert (=> b!900729 m!1138393))

(assert (=> start!81040 d!278288))

(declare-fun d!278296 () Bool)

(assert (=> d!278296 (= (matchR!902 (reg!2693 r!15766) (_1!6191 lt!334434)) (matchRSpec!165 (reg!2693 r!15766) (_1!6191 lt!334434)))))

(declare-fun lt!334513 () Unit!14323)

(assert (=> d!278296 (= lt!334513 (choose!5428 (reg!2693 r!15766) (_1!6191 lt!334434)))))

(assert (=> d!278296 (validRegex!833 (reg!2693 r!15766))))

(assert (=> d!278296 (= (mainMatchTheorem!165 (reg!2693 r!15766) (_1!6191 lt!334434)) lt!334513)))

(declare-fun bs!235205 () Bool)

(assert (= bs!235205 d!278296))

(assert (=> bs!235205 m!1138241))

(declare-fun m!1138457 () Bool)

(assert (=> bs!235205 m!1138457))

(declare-fun m!1138459 () Bool)

(assert (=> bs!235205 m!1138459))

(assert (=> bs!235205 m!1138285))

(assert (=> b!900412 d!278296))

(declare-fun d!278298 () Bool)

(assert (=> d!278298 (= (isEmpty!5779 s!10566) (is-Nil!9578 s!10566))))

(assert (=> b!900411 d!278298))

(declare-fun bs!235206 () Bool)

(declare-fun d!278302 () Bool)

(assert (= bs!235206 (and d!278302 b!900411)))

(declare-fun lambda!28155 () Int)

(assert (=> bs!235206 (= lambda!28155 lambda!28131)))

(assert (=> bs!235206 (not (= lambda!28155 lambda!28132))))

(declare-fun bs!235207 () Bool)

(assert (= bs!235207 (and d!278302 b!900533)))

(assert (=> bs!235207 (not (= lambda!28155 lambda!28145))))

(declare-fun bs!235208 () Bool)

(assert (= bs!235208 (and d!278302 b!900531)))

(assert (=> bs!235208 (not (= lambda!28155 lambda!28146))))

(assert (=> d!278302 true))

(assert (=> d!278302 true))

(assert (=> d!278302 true))

(assert (=> d!278302 (= (isDefined!1649 (findConcatSeparation!113 (reg!2693 r!15766) lt!334439 Nil!9578 s!10566 s!10566)) (Exists!141 lambda!28155))))

(declare-fun lt!334516 () Unit!14323)

(declare-fun choose!5430 (Regex!2364 Regex!2364 List!9594) Unit!14323)

(assert (=> d!278302 (= lt!334516 (choose!5430 (reg!2693 r!15766) lt!334439 s!10566))))

(assert (=> d!278302 (validRegex!833 (reg!2693 r!15766))))

(assert (=> d!278302 (= (lemmaFindConcatSeparationEquivalentToExists!113 (reg!2693 r!15766) lt!334439 s!10566) lt!334516)))

(declare-fun bs!235209 () Bool)

(assert (= bs!235209 d!278302))

(declare-fun m!1138461 () Bool)

(assert (=> bs!235209 m!1138461))

(declare-fun m!1138463 () Bool)

(assert (=> bs!235209 m!1138463))

(assert (=> bs!235209 m!1138285))

(assert (=> bs!235209 m!1138245))

(declare-fun m!1138465 () Bool)

(assert (=> bs!235209 m!1138465))

(assert (=> bs!235209 m!1138245))

(assert (=> b!900411 d!278302))

(declare-fun bs!235210 () Bool)

(declare-fun d!278304 () Bool)

(assert (= bs!235210 (and d!278304 b!900411)))

(declare-fun lambda!28160 () Int)

(assert (=> bs!235210 (not (= lambda!28160 lambda!28132))))

(declare-fun bs!235211 () Bool)

(assert (= bs!235211 (and d!278304 b!900531)))

(assert (=> bs!235211 (not (= lambda!28160 lambda!28146))))

(declare-fun bs!235212 () Bool)

(assert (= bs!235212 (and d!278304 b!900533)))

(assert (=> bs!235212 (not (= lambda!28160 lambda!28145))))

(assert (=> bs!235210 (= (= (Star!2364 (reg!2693 r!15766)) lt!334439) (= lambda!28160 lambda!28131))))

(declare-fun bs!235213 () Bool)

(assert (= bs!235213 (and d!278304 d!278302)))

(assert (=> bs!235213 (= (= (Star!2364 (reg!2693 r!15766)) lt!334439) (= lambda!28160 lambda!28155))))

(assert (=> d!278304 true))

(assert (=> d!278304 true))

(declare-fun lambda!28161 () Int)

(assert (=> bs!235210 (= (= (Star!2364 (reg!2693 r!15766)) lt!334439) (= lambda!28161 lambda!28132))))

(assert (=> bs!235211 (not (= lambda!28161 lambda!28146))))

(assert (=> bs!235212 (= (= (Star!2364 (reg!2693 r!15766)) r!15766) (= lambda!28161 lambda!28145))))

(assert (=> bs!235210 (not (= lambda!28161 lambda!28131))))

(declare-fun bs!235214 () Bool)

(assert (= bs!235214 d!278304))

(assert (=> bs!235214 (not (= lambda!28161 lambda!28160))))

(assert (=> bs!235213 (not (= lambda!28161 lambda!28155))))

(assert (=> d!278304 true))

(assert (=> d!278304 true))

(assert (=> d!278304 (= (Exists!141 lambda!28160) (Exists!141 lambda!28161))))

(declare-fun lt!334519 () Unit!14323)

(declare-fun choose!5431 (Regex!2364 List!9594) Unit!14323)

(assert (=> d!278304 (= lt!334519 (choose!5431 (reg!2693 r!15766) s!10566))))

(assert (=> d!278304 (validRegex!833 (reg!2693 r!15766))))

(assert (=> d!278304 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!33 (reg!2693 r!15766) s!10566) lt!334519)))

(declare-fun m!1138467 () Bool)

(assert (=> bs!235214 m!1138467))

(declare-fun m!1138469 () Bool)

(assert (=> bs!235214 m!1138469))

(declare-fun m!1138471 () Bool)

(assert (=> bs!235214 m!1138471))

(assert (=> bs!235214 m!1138285))

(assert (=> b!900411 d!278304))

(declare-fun d!278306 () Bool)

(declare-fun isEmpty!5781 (Option!2007) Bool)

(assert (=> d!278306 (= (isDefined!1649 lt!334430) (not (isEmpty!5781 lt!334430)))))

(declare-fun bs!235215 () Bool)

(assert (= bs!235215 d!278306))

(declare-fun m!1138473 () Bool)

(assert (=> bs!235215 m!1138473))

(assert (=> b!900411 d!278306))

(declare-fun d!278308 () Bool)

(declare-fun choose!5432 (Int) Bool)

(assert (=> d!278308 (= (Exists!141 lambda!28132) (choose!5432 lambda!28132))))

(declare-fun bs!235216 () Bool)

(assert (= bs!235216 d!278308))

(declare-fun m!1138475 () Bool)

(assert (=> bs!235216 m!1138475))

(assert (=> b!900411 d!278308))

(declare-fun d!278310 () Bool)

(assert (=> d!278310 (= (Exists!141 lambda!28131) (choose!5432 lambda!28131))))

(declare-fun bs!235217 () Bool)

(assert (= bs!235217 d!278310))

(declare-fun m!1138477 () Bool)

(assert (=> bs!235217 m!1138477))

(assert (=> b!900411 d!278310))

(declare-fun b!900791 () Bool)

(declare-fun e!588979 () Bool)

(declare-fun lt!334536 () Option!2007)

(declare-fun ++!2504 (List!9594 List!9594) List!9594)

(assert (=> b!900791 (= e!588979 (= (++!2504 (_1!6191 (get!3045 lt!334536)) (_2!6191 (get!3045 lt!334536))) s!10566))))

(declare-fun b!900792 () Bool)

(declare-fun e!588980 () Option!2007)

(declare-fun e!588977 () Option!2007)

(assert (=> b!900792 (= e!588980 e!588977)))

(declare-fun c!145882 () Bool)

(assert (=> b!900792 (= c!145882 (is-Nil!9578 s!10566))))

(declare-fun b!900794 () Bool)

(assert (=> b!900794 (= e!588977 None!2006)))

(declare-fun b!900795 () Bool)

(declare-fun e!588978 () Bool)

(assert (=> b!900795 (= e!588978 (not (isDefined!1649 lt!334536)))))

(declare-fun b!900796 () Bool)

(assert (=> b!900796 (= e!588980 (Some!2006 (tuple2!10731 Nil!9578 s!10566)))))

(declare-fun b!900797 () Bool)

(declare-fun res!409622 () Bool)

(assert (=> b!900797 (=> (not res!409622) (not e!588979))))

(assert (=> b!900797 (= res!409622 (matchR!902 lt!334439 (_2!6191 (get!3045 lt!334536))))))

(declare-fun b!900798 () Bool)

(declare-fun res!409624 () Bool)

(assert (=> b!900798 (=> (not res!409624) (not e!588979))))

(assert (=> b!900798 (= res!409624 (matchR!902 (reg!2693 r!15766) (_1!6191 (get!3045 lt!334536))))))

(declare-fun b!900799 () Bool)

(declare-fun e!588981 () Bool)

(assert (=> b!900799 (= e!588981 (matchR!902 lt!334439 s!10566))))

(declare-fun d!278312 () Bool)

(assert (=> d!278312 e!588978))

(declare-fun res!409626 () Bool)

(assert (=> d!278312 (=> res!409626 e!588978)))

(assert (=> d!278312 (= res!409626 e!588979)))

(declare-fun res!409623 () Bool)

(assert (=> d!278312 (=> (not res!409623) (not e!588979))))

(assert (=> d!278312 (= res!409623 (isDefined!1649 lt!334536))))

(assert (=> d!278312 (= lt!334536 e!588980)))

(declare-fun c!145881 () Bool)

(assert (=> d!278312 (= c!145881 e!588981)))

(declare-fun res!409625 () Bool)

(assert (=> d!278312 (=> (not res!409625) (not e!588981))))

(assert (=> d!278312 (= res!409625 (matchR!902 (reg!2693 r!15766) Nil!9578))))

(assert (=> d!278312 (validRegex!833 (reg!2693 r!15766))))

(assert (=> d!278312 (= (findConcatSeparation!113 (reg!2693 r!15766) lt!334439 Nil!9578 s!10566 s!10566) lt!334536)))

(declare-fun b!900793 () Bool)

(declare-fun lt!334537 () Unit!14323)

(declare-fun lt!334535 () Unit!14323)

(assert (=> b!900793 (= lt!334537 lt!334535)))

(assert (=> b!900793 (= (++!2504 (++!2504 Nil!9578 (Cons!9578 (h!14979 s!10566) Nil!9578)) (t!100640 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!128 (List!9594 C!5298 List!9594 List!9594) Unit!14323)

(assert (=> b!900793 (= lt!334535 (lemmaMoveElementToOtherListKeepsConcatEq!128 Nil!9578 (h!14979 s!10566) (t!100640 s!10566) s!10566))))

(assert (=> b!900793 (= e!588977 (findConcatSeparation!113 (reg!2693 r!15766) lt!334439 (++!2504 Nil!9578 (Cons!9578 (h!14979 s!10566) Nil!9578)) (t!100640 s!10566) s!10566))))

(assert (= (and d!278312 res!409625) b!900799))

(assert (= (and d!278312 c!145881) b!900796))

(assert (= (and d!278312 (not c!145881)) b!900792))

(assert (= (and b!900792 c!145882) b!900794))

(assert (= (and b!900792 (not c!145882)) b!900793))

(assert (= (and d!278312 res!409623) b!900798))

(assert (= (and b!900798 res!409624) b!900797))

(assert (= (and b!900797 res!409622) b!900791))

(assert (= (and d!278312 (not res!409626)) b!900795))

(declare-fun m!1138503 () Bool)

(assert (=> b!900793 m!1138503))

(assert (=> b!900793 m!1138503))

(declare-fun m!1138505 () Bool)

(assert (=> b!900793 m!1138505))

(declare-fun m!1138507 () Bool)

(assert (=> b!900793 m!1138507))

(assert (=> b!900793 m!1138503))

(declare-fun m!1138509 () Bool)

(assert (=> b!900793 m!1138509))

(declare-fun m!1138511 () Bool)

(assert (=> b!900797 m!1138511))

(declare-fun m!1138513 () Bool)

(assert (=> b!900797 m!1138513))

(declare-fun m!1138515 () Bool)

(assert (=> b!900795 m!1138515))

(assert (=> b!900791 m!1138511))

(declare-fun m!1138517 () Bool)

(assert (=> b!900791 m!1138517))

(assert (=> d!278312 m!1138515))

(declare-fun m!1138519 () Bool)

(assert (=> d!278312 m!1138519))

(assert (=> d!278312 m!1138285))

(assert (=> b!900798 m!1138511))

(declare-fun m!1138521 () Bool)

(assert (=> b!900798 m!1138521))

(declare-fun m!1138523 () Bool)

(assert (=> b!900799 m!1138523))

(assert (=> b!900411 d!278312))

(declare-fun b!900800 () Bool)

(declare-fun e!588985 () Bool)

(declare-fun call!53697 () Bool)

(assert (=> b!900800 (= e!588985 call!53697)))

(declare-fun b!900801 () Bool)

(declare-fun e!588987 () Bool)

(declare-fun e!588984 () Bool)

(assert (=> b!900801 (= e!588987 e!588984)))

(declare-fun c!145884 () Bool)

(assert (=> b!900801 (= c!145884 (is-Union!2364 (reg!2693 r!15766)))))

(declare-fun bm!53690 () Bool)

(declare-fun call!53695 () Bool)

(assert (=> bm!53690 (= call!53695 call!53697)))

(declare-fun b!900802 () Bool)

(declare-fun res!409630 () Bool)

(declare-fun e!588983 () Bool)

(assert (=> b!900802 (=> res!409630 e!588983)))

(assert (=> b!900802 (= res!409630 (not (is-Concat!4197 (reg!2693 r!15766))))))

(assert (=> b!900802 (= e!588984 e!588983)))

(declare-fun b!900803 () Bool)

(declare-fun e!588982 () Bool)

(assert (=> b!900803 (= e!588982 call!53695)))

(declare-fun d!278318 () Bool)

(declare-fun res!409631 () Bool)

(declare-fun e!588986 () Bool)

(assert (=> d!278318 (=> res!409631 e!588986)))

(assert (=> d!278318 (= res!409631 (is-ElementMatch!2364 (reg!2693 r!15766)))))

(assert (=> d!278318 (= (validRegex!833 (reg!2693 r!15766)) e!588986)))

(declare-fun b!900804 () Bool)

(assert (=> b!900804 (= e!588983 e!588982)))

(declare-fun res!409629 () Bool)

(assert (=> b!900804 (=> (not res!409629) (not e!588982))))

(declare-fun call!53696 () Bool)

(assert (=> b!900804 (= res!409629 call!53696)))

(declare-fun c!145883 () Bool)

(declare-fun bm!53691 () Bool)

(assert (=> bm!53691 (= call!53697 (validRegex!833 (ite c!145883 (reg!2693 (reg!2693 r!15766)) (ite c!145884 (regTwo!5241 (reg!2693 r!15766)) (regTwo!5240 (reg!2693 r!15766))))))))

(declare-fun bm!53692 () Bool)

(assert (=> bm!53692 (= call!53696 (validRegex!833 (ite c!145884 (regOne!5241 (reg!2693 r!15766)) (regOne!5240 (reg!2693 r!15766)))))))

(declare-fun b!900805 () Bool)

(declare-fun res!409628 () Bool)

(declare-fun e!588988 () Bool)

(assert (=> b!900805 (=> (not res!409628) (not e!588988))))

(assert (=> b!900805 (= res!409628 call!53696)))

(assert (=> b!900805 (= e!588984 e!588988)))

(declare-fun b!900806 () Bool)

(assert (=> b!900806 (= e!588987 e!588985)))

(declare-fun res!409627 () Bool)

(assert (=> b!900806 (= res!409627 (not (nullable!629 (reg!2693 (reg!2693 r!15766)))))))

(assert (=> b!900806 (=> (not res!409627) (not e!588985))))

(declare-fun b!900807 () Bool)

(assert (=> b!900807 (= e!588986 e!588987)))

(assert (=> b!900807 (= c!145883 (is-Star!2364 (reg!2693 r!15766)))))

(declare-fun b!900808 () Bool)

(assert (=> b!900808 (= e!588988 call!53695)))

(assert (= (and d!278318 (not res!409631)) b!900807))

(assert (= (and b!900807 c!145883) b!900806))

(assert (= (and b!900807 (not c!145883)) b!900801))

(assert (= (and b!900806 res!409627) b!900800))

(assert (= (and b!900801 c!145884) b!900805))

(assert (= (and b!900801 (not c!145884)) b!900802))

(assert (= (and b!900805 res!409628) b!900808))

(assert (= (and b!900802 (not res!409630)) b!900804))

(assert (= (and b!900804 res!409629) b!900803))

(assert (= (or b!900808 b!900803) bm!53690))

(assert (= (or b!900805 b!900804) bm!53692))

(assert (= (or b!900800 bm!53690) bm!53691))

(declare-fun m!1138525 () Bool)

(assert (=> bm!53691 m!1138525))

(declare-fun m!1138527 () Bool)

(assert (=> bm!53692 m!1138527))

(declare-fun m!1138529 () Bool)

(assert (=> b!900806 m!1138529))

(assert (=> b!900415 d!278318))

(declare-fun b!900809 () Bool)

(declare-fun res!409636 () Bool)

(declare-fun e!588990 () Bool)

(assert (=> b!900809 (=> (not res!409636) (not e!588990))))

(declare-fun call!53698 () Bool)

(assert (=> b!900809 (= res!409636 (not call!53698))))

(declare-fun b!900810 () Bool)

(declare-fun e!588995 () Bool)

(declare-fun e!588989 () Bool)

(assert (=> b!900810 (= e!588995 e!588989)))

(declare-fun c!145886 () Bool)

(assert (=> b!900810 (= c!145886 (is-EmptyLang!2364 lt!334439))))

(declare-fun b!900811 () Bool)

(declare-fun res!409637 () Bool)

(declare-fun e!588991 () Bool)

(assert (=> b!900811 (=> res!409637 e!588991)))

(assert (=> b!900811 (= res!409637 (not (is-ElementMatch!2364 lt!334439)))))

(assert (=> b!900811 (= e!588989 e!588991)))

(declare-fun b!900812 () Bool)

(declare-fun lt!334538 () Bool)

(assert (=> b!900812 (= e!588989 (not lt!334538))))

(declare-fun b!900813 () Bool)

(declare-fun e!588993 () Bool)

(declare-fun e!588992 () Bool)

(assert (=> b!900813 (= e!588993 e!588992)))

(declare-fun res!409635 () Bool)

(assert (=> b!900813 (=> res!409635 e!588992)))

(assert (=> b!900813 (= res!409635 call!53698)))

(declare-fun b!900814 () Bool)

(declare-fun e!588994 () Bool)

(assert (=> b!900814 (= e!588994 (nullable!629 lt!334439))))

(declare-fun d!278320 () Bool)

(assert (=> d!278320 e!588995))

(declare-fun c!145885 () Bool)

(assert (=> d!278320 (= c!145885 (is-EmptyExpr!2364 lt!334439))))

(assert (=> d!278320 (= lt!334538 e!588994)))

(declare-fun c!145887 () Bool)

(assert (=> d!278320 (= c!145887 (isEmpty!5779 (_2!6191 lt!334434)))))

(assert (=> d!278320 (validRegex!833 lt!334439)))

(assert (=> d!278320 (= (matchR!902 lt!334439 (_2!6191 lt!334434)) lt!334538)))

(declare-fun b!900815 () Bool)

(assert (=> b!900815 (= e!588992 (not (= (head!1594 (_2!6191 lt!334434)) (c!145798 lt!334439))))))

(declare-fun bm!53693 () Bool)

(assert (=> bm!53693 (= call!53698 (isEmpty!5779 (_2!6191 lt!334434)))))

(declare-fun b!900816 () Bool)

(assert (=> b!900816 (= e!588995 (= lt!334538 call!53698))))

(declare-fun b!900817 () Bool)

(assert (=> b!900817 (= e!588994 (matchR!902 (derivativeStep!441 lt!334439 (head!1594 (_2!6191 lt!334434))) (tail!1156 (_2!6191 lt!334434))))))

(declare-fun b!900818 () Bool)

(declare-fun res!409638 () Bool)

(assert (=> b!900818 (=> res!409638 e!588991)))

(assert (=> b!900818 (= res!409638 e!588990)))

(declare-fun res!409632 () Bool)

(assert (=> b!900818 (=> (not res!409632) (not e!588990))))

(assert (=> b!900818 (= res!409632 lt!334538)))

(declare-fun b!900819 () Bool)

(assert (=> b!900819 (= e!588991 e!588993)))

(declare-fun res!409633 () Bool)

(assert (=> b!900819 (=> (not res!409633) (not e!588993))))

(assert (=> b!900819 (= res!409633 (not lt!334538))))

(declare-fun b!900820 () Bool)

(declare-fun res!409634 () Bool)

(assert (=> b!900820 (=> (not res!409634) (not e!588990))))

(assert (=> b!900820 (= res!409634 (isEmpty!5779 (tail!1156 (_2!6191 lt!334434))))))

(declare-fun b!900821 () Bool)

(declare-fun res!409639 () Bool)

(assert (=> b!900821 (=> res!409639 e!588992)))

(assert (=> b!900821 (= res!409639 (not (isEmpty!5779 (tail!1156 (_2!6191 lt!334434)))))))

(declare-fun b!900822 () Bool)

(assert (=> b!900822 (= e!588990 (= (head!1594 (_2!6191 lt!334434)) (c!145798 lt!334439)))))

(assert (= (and d!278320 c!145887) b!900814))

(assert (= (and d!278320 (not c!145887)) b!900817))

(assert (= (and d!278320 c!145885) b!900816))

(assert (= (and d!278320 (not c!145885)) b!900810))

(assert (= (and b!900810 c!145886) b!900812))

(assert (= (and b!900810 (not c!145886)) b!900811))

(assert (= (and b!900811 (not res!409637)) b!900818))

(assert (= (and b!900818 res!409632) b!900809))

(assert (= (and b!900809 res!409636) b!900820))

(assert (= (and b!900820 res!409634) b!900822))

(assert (= (and b!900818 (not res!409638)) b!900819))

(assert (= (and b!900819 res!409633) b!900813))

(assert (= (and b!900813 (not res!409635)) b!900821))

(assert (= (and b!900821 (not res!409639)) b!900815))

(assert (= (or b!900816 b!900809 b!900813) bm!53693))

(assert (=> b!900817 m!1138423))

(assert (=> b!900817 m!1138423))

(declare-fun m!1138531 () Bool)

(assert (=> b!900817 m!1138531))

(assert (=> b!900817 m!1138427))

(assert (=> b!900817 m!1138531))

(assert (=> b!900817 m!1138427))

(declare-fun m!1138533 () Bool)

(assert (=> b!900817 m!1138533))

(assert (=> b!900821 m!1138427))

(assert (=> b!900821 m!1138427))

(assert (=> b!900821 m!1138431))

(assert (=> b!900814 m!1138421))

(assert (=> b!900820 m!1138427))

(assert (=> b!900820 m!1138427))

(assert (=> b!900820 m!1138431))

(assert (=> b!900822 m!1138423))

(assert (=> b!900815 m!1138423))

(assert (=> bm!53693 m!1138435))

(assert (=> d!278320 m!1138435))

(assert (=> d!278320 m!1138377))

(assert (=> b!900404 d!278320))

(declare-fun b!900827 () Bool)

(declare-fun e!588998 () Bool)

(declare-fun tp!282531 () Bool)

(assert (=> b!900827 (= e!588998 (and tp_is_empty!4371 tp!282531))))

(assert (=> b!900407 (= tp!282510 e!588998)))

(assert (= (and b!900407 (is-Cons!9578 (t!100640 s!10566))) b!900827))

(declare-fun e!589001 () Bool)

(assert (=> b!900405 (= tp!282509 e!589001)))

(declare-fun b!900840 () Bool)

(declare-fun tp!282546 () Bool)

(assert (=> b!900840 (= e!589001 tp!282546)))

(declare-fun b!900839 () Bool)

(declare-fun tp!282545 () Bool)

(declare-fun tp!282542 () Bool)

(assert (=> b!900839 (= e!589001 (and tp!282545 tp!282542))))

(declare-fun b!900838 () Bool)

(assert (=> b!900838 (= e!589001 tp_is_empty!4371)))

(declare-fun b!900841 () Bool)

(declare-fun tp!282543 () Bool)

(declare-fun tp!282544 () Bool)

(assert (=> b!900841 (= e!589001 (and tp!282543 tp!282544))))

(assert (= (and b!900405 (is-ElementMatch!2364 (reg!2693 r!15766))) b!900838))

(assert (= (and b!900405 (is-Concat!4197 (reg!2693 r!15766))) b!900839))

(assert (= (and b!900405 (is-Star!2364 (reg!2693 r!15766))) b!900840))

(assert (= (and b!900405 (is-Union!2364 (reg!2693 r!15766))) b!900841))

(declare-fun e!589002 () Bool)

(assert (=> b!900410 (= tp!282508 e!589002)))

(declare-fun b!900844 () Bool)

(declare-fun tp!282551 () Bool)

(assert (=> b!900844 (= e!589002 tp!282551)))

(declare-fun b!900843 () Bool)

(declare-fun tp!282550 () Bool)

(declare-fun tp!282547 () Bool)

(assert (=> b!900843 (= e!589002 (and tp!282550 tp!282547))))

(declare-fun b!900842 () Bool)

(assert (=> b!900842 (= e!589002 tp_is_empty!4371)))

(declare-fun b!900845 () Bool)

(declare-fun tp!282548 () Bool)

(declare-fun tp!282549 () Bool)

(assert (=> b!900845 (= e!589002 (and tp!282548 tp!282549))))

(assert (= (and b!900410 (is-ElementMatch!2364 (regOne!5241 r!15766))) b!900842))

(assert (= (and b!900410 (is-Concat!4197 (regOne!5241 r!15766))) b!900843))

(assert (= (and b!900410 (is-Star!2364 (regOne!5241 r!15766))) b!900844))

(assert (= (and b!900410 (is-Union!2364 (regOne!5241 r!15766))) b!900845))

(declare-fun e!589003 () Bool)

(assert (=> b!900410 (= tp!282505 e!589003)))

(declare-fun b!900848 () Bool)

(declare-fun tp!282556 () Bool)

(assert (=> b!900848 (= e!589003 tp!282556)))

(declare-fun b!900847 () Bool)

(declare-fun tp!282555 () Bool)

(declare-fun tp!282552 () Bool)

(assert (=> b!900847 (= e!589003 (and tp!282555 tp!282552))))

(declare-fun b!900846 () Bool)

(assert (=> b!900846 (= e!589003 tp_is_empty!4371)))

(declare-fun b!900849 () Bool)

(declare-fun tp!282553 () Bool)

(declare-fun tp!282554 () Bool)

(assert (=> b!900849 (= e!589003 (and tp!282553 tp!282554))))

(assert (= (and b!900410 (is-ElementMatch!2364 (regTwo!5241 r!15766))) b!900846))

(assert (= (and b!900410 (is-Concat!4197 (regTwo!5241 r!15766))) b!900847))

(assert (= (and b!900410 (is-Star!2364 (regTwo!5241 r!15766))) b!900848))

(assert (= (and b!900410 (is-Union!2364 (regTwo!5241 r!15766))) b!900849))

(declare-fun e!589004 () Bool)

(assert (=> b!900409 (= tp!282506 e!589004)))

(declare-fun b!900852 () Bool)

(declare-fun tp!282561 () Bool)

(assert (=> b!900852 (= e!589004 tp!282561)))

(declare-fun b!900851 () Bool)

(declare-fun tp!282560 () Bool)

(declare-fun tp!282557 () Bool)

(assert (=> b!900851 (= e!589004 (and tp!282560 tp!282557))))

(declare-fun b!900850 () Bool)

(assert (=> b!900850 (= e!589004 tp_is_empty!4371)))

(declare-fun b!900853 () Bool)

(declare-fun tp!282558 () Bool)

(declare-fun tp!282559 () Bool)

(assert (=> b!900853 (= e!589004 (and tp!282558 tp!282559))))

(assert (= (and b!900409 (is-ElementMatch!2364 (regOne!5240 r!15766))) b!900850))

(assert (= (and b!900409 (is-Concat!4197 (regOne!5240 r!15766))) b!900851))

(assert (= (and b!900409 (is-Star!2364 (regOne!5240 r!15766))) b!900852))

(assert (= (and b!900409 (is-Union!2364 (regOne!5240 r!15766))) b!900853))

(declare-fun e!589005 () Bool)

(assert (=> b!900409 (= tp!282507 e!589005)))

(declare-fun b!900856 () Bool)

(declare-fun tp!282566 () Bool)

(assert (=> b!900856 (= e!589005 tp!282566)))

(declare-fun b!900855 () Bool)

(declare-fun tp!282565 () Bool)

(declare-fun tp!282562 () Bool)

(assert (=> b!900855 (= e!589005 (and tp!282565 tp!282562))))

(declare-fun b!900854 () Bool)

(assert (=> b!900854 (= e!589005 tp_is_empty!4371)))

(declare-fun b!900857 () Bool)

(declare-fun tp!282563 () Bool)

(declare-fun tp!282564 () Bool)

(assert (=> b!900857 (= e!589005 (and tp!282563 tp!282564))))

(assert (= (and b!900409 (is-ElementMatch!2364 (regTwo!5240 r!15766))) b!900854))

(assert (= (and b!900409 (is-Concat!4197 (regTwo!5240 r!15766))) b!900855))

(assert (= (and b!900409 (is-Star!2364 (regTwo!5240 r!15766))) b!900856))

(assert (= (and b!900409 (is-Union!2364 (regTwo!5240 r!15766))) b!900857))

(push 1)

(assert (not b!900855))

(assert (not bm!53657))

(assert (not b!900674))

(assert (not bm!53693))

(assert (not b!900814))

(assert (not d!278274))

(assert (not b!900820))

(assert (not d!278260))

(assert (not d!278280))

(assert (not b!900660))

(assert (not b!900599))

(assert (not b!900849))

(assert (not bm!53692))

(assert (not b!900696))

(assert (not b!900806))

(assert (not b!900856))

(assert (not b!900699))

(assert (not d!278308))

(assert (not d!278320))

(assert (not b!900797))

(assert (not d!278278))

(assert (not b!900641))

(assert (not b!900852))

(assert (not b!900821))

(assert (not b!900664))

(assert (not bm!53669))

(assert (not b!900817))

(assert (not b!900822))

(assert (not bm!53671))

(assert (not bm!53675))

(assert (not d!278312))

(assert (not b!900600))

(assert (not d!278268))

(assert (not b!900665))

(assert (not b!900847))

(assert (not b!900793))

(assert (not b!900532))

(assert (not b!900798))

(assert (not b!900844))

(assert (not b!900690))

(assert (not b!900663))

(assert (not b!900704))

(assert (not b!900795))

(assert (not d!278282))

(assert (not b!900702))

(assert (not b!900536))

(assert (not b!900851))

(assert (not d!278296))

(assert (not b!900657))

(assert (not bm!53677))

(assert (not b!900815))

(assert (not b!900853))

(assert (not bm!53679))

(assert (not bm!53647))

(assert (not bm!53673))

(assert (not b!900606))

(assert (not b!900827))

(assert (not b!900703))

(assert (not bm!53688))

(assert (not b!900848))

(assert (not b!900845))

(assert (not b!900683))

(assert (not b!900841))

(assert (not b!900799))

(assert (not bm!53691))

(assert (not d!278310))

(assert (not b!900688))

(assert (not b!900658))

(assert (not bm!53689))

(assert (not d!278284))

(assert tp_is_empty!4371)

(assert (not b!900651))

(assert (not bm!53680))

(assert (not d!278306))

(assert (not d!278272))

(assert (not b!900593))

(assert (not b!900685))

(assert (not d!278266))

(assert (not b!900682))

(assert (not b!900791))

(assert (not d!278304))

(assert (not bm!53648))

(assert (not b!900598))

(assert (not b!900840))

(assert (not b!900689))

(assert (not b!900592))

(assert (not b!900843))

(assert (not b!900839))

(assert (not b!900729))

(assert (not d!278302))

(assert (not b!900595))

(assert (not b!900697))

(assert (not b!900857))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

