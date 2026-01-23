; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284036 () Bool)

(assert start!284036)

(declare-fun b!2915184 () Bool)

(assert (=> b!2915184 true))

(assert (=> b!2915184 true))

(declare-fun lambda!108406 () Int)

(declare-fun lambda!108405 () Int)

(assert (=> b!2915184 (not (= lambda!108406 lambda!108405))))

(assert (=> b!2915184 true))

(assert (=> b!2915184 true))

(declare-fun b!2915182 () Bool)

(declare-fun res!1203500 () Bool)

(declare-fun e!1839644 () Bool)

(assert (=> b!2915182 (=> res!1203500 e!1839644)))

(declare-datatypes ((C!18128 0))(
  ( (C!18129 (val!11100 Int)) )
))
(declare-datatypes ((Regex!8971 0))(
  ( (ElementMatch!8971 (c!475387 C!18128)) (Concat!14292 (regOne!18454 Regex!8971) (regTwo!18454 Regex!8971)) (EmptyExpr!8971) (Star!8971 (reg!9300 Regex!8971)) (EmptyLang!8971) (Union!8971 (regOne!18455 Regex!8971) (regTwo!18455 Regex!8971)) )
))
(declare-fun r!17423 () Regex!8971)

(declare-datatypes ((List!34836 0))(
  ( (Nil!34712) (Cons!34712 (h!40132 C!18128) (t!233901 List!34836)) )
))
(declare-datatypes ((tuple2!33680 0))(
  ( (tuple2!33681 (_1!19972 List!34836) (_2!19972 List!34836)) )
))
(declare-fun lt!1024557 () tuple2!33680)

(declare-fun matchR!3853 (Regex!8971 List!34836) Bool)

(assert (=> b!2915182 (= res!1203500 (not (matchR!3853 (regTwo!18454 r!17423) (_2!19972 lt!1024557))))))

(declare-fun res!1203499 () Bool)

(declare-fun e!1839643 () Bool)

(assert (=> start!284036 (=> (not res!1203499) (not e!1839643))))

(declare-fun validRegex!3704 (Regex!8971) Bool)

(assert (=> start!284036 (= res!1203499 (validRegex!3704 r!17423))))

(assert (=> start!284036 e!1839643))

(declare-fun e!1839642 () Bool)

(assert (=> start!284036 e!1839642))

(declare-fun e!1839641 () Bool)

(assert (=> start!284036 e!1839641))

(declare-fun b!2915183 () Bool)

(declare-fun res!1203502 () Bool)

(declare-fun e!1839645 () Bool)

(assert (=> b!2915183 (=> res!1203502 e!1839645)))

(declare-fun s!11993 () List!34836)

(declare-fun isEmpty!18963 (List!34836) Bool)

(assert (=> b!2915183 (= res!1203502 (isEmpty!18963 s!11993))))

(assert (=> b!2915184 (= e!1839645 e!1839644)))

(declare-fun res!1203498 () Bool)

(assert (=> b!2915184 (=> res!1203498 e!1839644)))

(assert (=> b!2915184 (= res!1203498 (not (matchR!3853 (regOne!18454 r!17423) (_1!19972 lt!1024557))))))

(declare-datatypes ((Option!6572 0))(
  ( (None!6571) (Some!6571 (v!34705 tuple2!33680)) )
))
(declare-fun lt!1024560 () Option!6572)

(declare-fun get!10558 (Option!6572) tuple2!33680)

(assert (=> b!2915184 (= lt!1024557 (get!10558 lt!1024560))))

(declare-fun Exists!1351 (Int) Bool)

(assert (=> b!2915184 (= (Exists!1351 lambda!108405) (Exists!1351 lambda!108406))))

(declare-datatypes ((Unit!48281 0))(
  ( (Unit!48282) )
))
(declare-fun lt!1024564 () Unit!48281)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!492 (Regex!8971 Regex!8971 List!34836) Unit!48281)

(assert (=> b!2915184 (= lt!1024564 (lemmaExistCutMatchRandMatchRSpecEquivalent!492 (regOne!18454 r!17423) (regTwo!18454 r!17423) s!11993))))

(declare-fun isDefined!5123 (Option!6572) Bool)

(assert (=> b!2915184 (= (isDefined!5123 lt!1024560) (Exists!1351 lambda!108405))))

(declare-fun findConcatSeparation!966 (Regex!8971 Regex!8971 List!34836 List!34836 List!34836) Option!6572)

(assert (=> b!2915184 (= lt!1024560 (findConcatSeparation!966 (regOne!18454 r!17423) (regTwo!18454 r!17423) Nil!34712 s!11993 s!11993))))

(declare-fun lt!1024558 () Unit!48281)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!748 (Regex!8971 Regex!8971 List!34836) Unit!48281)

(assert (=> b!2915184 (= lt!1024558 (lemmaFindConcatSeparationEquivalentToExists!748 (regOne!18454 r!17423) (regTwo!18454 r!17423) s!11993))))

(declare-fun b!2915185 () Bool)

(declare-fun tp_is_empty!15505 () Bool)

(declare-fun tp!936269 () Bool)

(assert (=> b!2915185 (= e!1839641 (and tp_is_empty!15505 tp!936269))))

(declare-fun b!2915186 () Bool)

(declare-fun tp!936264 () Bool)

(declare-fun tp!936265 () Bool)

(assert (=> b!2915186 (= e!1839642 (and tp!936264 tp!936265))))

(declare-fun b!2915187 () Bool)

(declare-fun lt!1024562 () Regex!8971)

(assert (=> b!2915187 (= e!1839644 (validRegex!3704 lt!1024562))))

(declare-fun simplify!8 (Regex!8971) Regex!8971)

(assert (=> b!2915187 (matchR!3853 (simplify!8 (regTwo!18454 r!17423)) (_2!19972 lt!1024557))))

(declare-fun lt!1024561 () Unit!48281)

(declare-fun lemmaSimplifySound!6 (Regex!8971 List!34836) Unit!48281)

(assert (=> b!2915187 (= lt!1024561 (lemmaSimplifySound!6 (regTwo!18454 r!17423) (_2!19972 lt!1024557)))))

(assert (=> b!2915187 (matchR!3853 lt!1024562 (_1!19972 lt!1024557))))

(assert (=> b!2915187 (= lt!1024562 (simplify!8 (regOne!18454 r!17423)))))

(declare-fun lt!1024559 () Unit!48281)

(assert (=> b!2915187 (= lt!1024559 (lemmaSimplifySound!6 (regOne!18454 r!17423) (_1!19972 lt!1024557)))))

(declare-fun b!2915188 () Bool)

(assert (=> b!2915188 (= e!1839643 (not e!1839645))))

(declare-fun res!1203501 () Bool)

(assert (=> b!2915188 (=> res!1203501 e!1839645)))

(declare-fun lt!1024563 () Bool)

(get-info :version)

(assert (=> b!2915188 (= res!1203501 (or (not lt!1024563) (not ((_ is Concat!14292) r!17423))))))

(declare-fun matchRSpec!1108 (Regex!8971 List!34836) Bool)

(assert (=> b!2915188 (= lt!1024563 (matchRSpec!1108 r!17423 s!11993))))

(assert (=> b!2915188 (= lt!1024563 (matchR!3853 r!17423 s!11993))))

(declare-fun lt!1024565 () Unit!48281)

(declare-fun mainMatchTheorem!1108 (Regex!8971 List!34836) Unit!48281)

(assert (=> b!2915188 (= lt!1024565 (mainMatchTheorem!1108 r!17423 s!11993))))

(declare-fun b!2915189 () Bool)

(assert (=> b!2915189 (= e!1839642 tp_is_empty!15505)))

(declare-fun b!2915190 () Bool)

(declare-fun tp!936267 () Bool)

(declare-fun tp!936266 () Bool)

(assert (=> b!2915190 (= e!1839642 (and tp!936267 tp!936266))))

(declare-fun b!2915191 () Bool)

(declare-fun tp!936268 () Bool)

(assert (=> b!2915191 (= e!1839642 tp!936268)))

(assert (= (and start!284036 res!1203499) b!2915188))

(assert (= (and b!2915188 (not res!1203501)) b!2915183))

(assert (= (and b!2915183 (not res!1203502)) b!2915184))

(assert (= (and b!2915184 (not res!1203498)) b!2915182))

(assert (= (and b!2915182 (not res!1203500)) b!2915187))

(assert (= (and start!284036 ((_ is ElementMatch!8971) r!17423)) b!2915189))

(assert (= (and start!284036 ((_ is Concat!14292) r!17423)) b!2915190))

(assert (= (and start!284036 ((_ is Star!8971) r!17423)) b!2915191))

(assert (= (and start!284036 ((_ is Union!8971) r!17423)) b!2915186))

(assert (= (and start!284036 ((_ is Cons!34712) s!11993)) b!2915185))

(declare-fun m!3314363 () Bool)

(assert (=> start!284036 m!3314363))

(declare-fun m!3314365 () Bool)

(assert (=> b!2915184 m!3314365))

(declare-fun m!3314367 () Bool)

(assert (=> b!2915184 m!3314367))

(declare-fun m!3314369 () Bool)

(assert (=> b!2915184 m!3314369))

(declare-fun m!3314371 () Bool)

(assert (=> b!2915184 m!3314371))

(declare-fun m!3314373 () Bool)

(assert (=> b!2915184 m!3314373))

(declare-fun m!3314375 () Bool)

(assert (=> b!2915184 m!3314375))

(declare-fun m!3314377 () Bool)

(assert (=> b!2915184 m!3314377))

(declare-fun m!3314379 () Bool)

(assert (=> b!2915184 m!3314379))

(assert (=> b!2915184 m!3314379))

(declare-fun m!3314381 () Bool)

(assert (=> b!2915187 m!3314381))

(declare-fun m!3314383 () Bool)

(assert (=> b!2915187 m!3314383))

(declare-fun m!3314385 () Bool)

(assert (=> b!2915187 m!3314385))

(declare-fun m!3314387 () Bool)

(assert (=> b!2915187 m!3314387))

(declare-fun m!3314389 () Bool)

(assert (=> b!2915187 m!3314389))

(assert (=> b!2915187 m!3314387))

(declare-fun m!3314391 () Bool)

(assert (=> b!2915187 m!3314391))

(declare-fun m!3314393 () Bool)

(assert (=> b!2915187 m!3314393))

(declare-fun m!3314395 () Bool)

(assert (=> b!2915183 m!3314395))

(declare-fun m!3314397 () Bool)

(assert (=> b!2915182 m!3314397))

(declare-fun m!3314399 () Bool)

(assert (=> b!2915188 m!3314399))

(declare-fun m!3314401 () Bool)

(assert (=> b!2915188 m!3314401))

(declare-fun m!3314403 () Bool)

(assert (=> b!2915188 m!3314403))

(check-sat (not b!2915190) (not b!2915187) (not b!2915184) (not b!2915182) (not b!2915185) tp_is_empty!15505 (not b!2915183) (not b!2915186) (not b!2915191) (not b!2915188) (not start!284036))
(check-sat)
(get-model)

(declare-fun d!838025 () Bool)

(assert (=> d!838025 (= (isEmpty!18963 s!11993) ((_ is Nil!34712) s!11993))))

(assert (=> b!2915183 d!838025))

(declare-fun bs!524769 () Bool)

(declare-fun b!2915421 () Bool)

(assert (= bs!524769 (and b!2915421 b!2915184)))

(declare-fun lambda!108411 () Int)

(assert (=> bs!524769 (not (= lambda!108411 lambda!108405))))

(assert (=> bs!524769 (not (= lambda!108411 lambda!108406))))

(assert (=> b!2915421 true))

(assert (=> b!2915421 true))

(declare-fun bs!524770 () Bool)

(declare-fun b!2915418 () Bool)

(assert (= bs!524770 (and b!2915418 b!2915184)))

(declare-fun lambda!108412 () Int)

(assert (=> bs!524770 (not (= lambda!108412 lambda!108405))))

(assert (=> bs!524770 (= lambda!108412 lambda!108406)))

(declare-fun bs!524771 () Bool)

(assert (= bs!524771 (and b!2915418 b!2915421)))

(assert (=> bs!524771 (not (= lambda!108412 lambda!108411))))

(assert (=> b!2915418 true))

(assert (=> b!2915418 true))

(declare-fun b!2915411 () Bool)

(declare-fun e!1839770 () Bool)

(declare-fun e!1839771 () Bool)

(assert (=> b!2915411 (= e!1839770 e!1839771)))

(declare-fun c!475458 () Bool)

(assert (=> b!2915411 (= c!475458 ((_ is Star!8971) r!17423))))

(declare-fun b!2915412 () Bool)

(declare-fun c!475461 () Bool)

(assert (=> b!2915412 (= c!475461 ((_ is Union!8971) r!17423))))

(declare-fun e!1839775 () Bool)

(assert (=> b!2915412 (= e!1839775 e!1839770)))

(declare-fun bm!190447 () Bool)

(declare-fun call!190453 () Bool)

(assert (=> bm!190447 (= call!190453 (Exists!1351 (ite c!475458 lambda!108411 lambda!108412)))))

(declare-fun bm!190448 () Bool)

(declare-fun call!190452 () Bool)

(assert (=> bm!190448 (= call!190452 (isEmpty!18963 s!11993))))

(declare-fun b!2915413 () Bool)

(declare-fun c!475459 () Bool)

(assert (=> b!2915413 (= c!475459 ((_ is ElementMatch!8971) r!17423))))

(declare-fun e!1839773 () Bool)

(assert (=> b!2915413 (= e!1839773 e!1839775)))

(declare-fun d!838027 () Bool)

(declare-fun c!475460 () Bool)

(assert (=> d!838027 (= c!475460 ((_ is EmptyExpr!8971) r!17423))))

(declare-fun e!1839769 () Bool)

(assert (=> d!838027 (= (matchRSpec!1108 r!17423 s!11993) e!1839769)))

(declare-fun b!2915414 () Bool)

(assert (=> b!2915414 (= e!1839769 call!190452)))

(declare-fun b!2915415 () Bool)

(declare-fun res!1203578 () Bool)

(declare-fun e!1839772 () Bool)

(assert (=> b!2915415 (=> res!1203578 e!1839772)))

(assert (=> b!2915415 (= res!1203578 call!190452)))

(assert (=> b!2915415 (= e!1839771 e!1839772)))

(declare-fun b!2915416 () Bool)

(assert (=> b!2915416 (= e!1839769 e!1839773)))

(declare-fun res!1203579 () Bool)

(assert (=> b!2915416 (= res!1203579 (not ((_ is EmptyLang!8971) r!17423)))))

(assert (=> b!2915416 (=> (not res!1203579) (not e!1839773))))

(declare-fun b!2915417 () Bool)

(declare-fun e!1839774 () Bool)

(assert (=> b!2915417 (= e!1839774 (matchRSpec!1108 (regTwo!18455 r!17423) s!11993))))

(assert (=> b!2915418 (= e!1839771 call!190453)))

(declare-fun b!2915419 () Bool)

(assert (=> b!2915419 (= e!1839775 (= s!11993 (Cons!34712 (c!475387 r!17423) Nil!34712)))))

(declare-fun b!2915420 () Bool)

(assert (=> b!2915420 (= e!1839770 e!1839774)))

(declare-fun res!1203580 () Bool)

(assert (=> b!2915420 (= res!1203580 (matchRSpec!1108 (regOne!18455 r!17423) s!11993))))

(assert (=> b!2915420 (=> res!1203580 e!1839774)))

(assert (=> b!2915421 (= e!1839772 call!190453)))

(assert (= (and d!838027 c!475460) b!2915414))

(assert (= (and d!838027 (not c!475460)) b!2915416))

(assert (= (and b!2915416 res!1203579) b!2915413))

(assert (= (and b!2915413 c!475459) b!2915419))

(assert (= (and b!2915413 (not c!475459)) b!2915412))

(assert (= (and b!2915412 c!475461) b!2915420))

(assert (= (and b!2915412 (not c!475461)) b!2915411))

(assert (= (and b!2915420 (not res!1203580)) b!2915417))

(assert (= (and b!2915411 c!475458) b!2915415))

(assert (= (and b!2915411 (not c!475458)) b!2915418))

(assert (= (and b!2915415 (not res!1203578)) b!2915421))

(assert (= (or b!2915421 b!2915418) bm!190447))

(assert (= (or b!2915414 b!2915415) bm!190448))

(declare-fun m!3314493 () Bool)

(assert (=> bm!190447 m!3314493))

(assert (=> bm!190448 m!3314395))

(declare-fun m!3314495 () Bool)

(assert (=> b!2915417 m!3314495))

(declare-fun m!3314497 () Bool)

(assert (=> b!2915420 m!3314497))

(assert (=> b!2915188 d!838027))

(declare-fun b!2915516 () Bool)

(declare-fun e!1839835 () Bool)

(declare-fun lt!1024606 () Bool)

(declare-fun call!190466 () Bool)

(assert (=> b!2915516 (= e!1839835 (= lt!1024606 call!190466))))

(declare-fun b!2915517 () Bool)

(declare-fun e!1839834 () Bool)

(declare-fun e!1839833 () Bool)

(assert (=> b!2915517 (= e!1839834 e!1839833)))

(declare-fun res!1203634 () Bool)

(assert (=> b!2915517 (=> res!1203634 e!1839833)))

(assert (=> b!2915517 (= res!1203634 call!190466)))

(declare-fun b!2915518 () Bool)

(declare-fun res!1203629 () Bool)

(declare-fun e!1839832 () Bool)

(assert (=> b!2915518 (=> (not res!1203629) (not e!1839832))))

(assert (=> b!2915518 (= res!1203629 (not call!190466))))

(declare-fun b!2915519 () Bool)

(declare-fun res!1203632 () Bool)

(declare-fun e!1839829 () Bool)

(assert (=> b!2915519 (=> res!1203632 e!1839829)))

(assert (=> b!2915519 (= res!1203632 e!1839832)))

(declare-fun res!1203631 () Bool)

(assert (=> b!2915519 (=> (not res!1203631) (not e!1839832))))

(assert (=> b!2915519 (= res!1203631 lt!1024606)))

(declare-fun b!2915520 () Bool)

(declare-fun head!6478 (List!34836) C!18128)

(assert (=> b!2915520 (= e!1839833 (not (= (head!6478 s!11993) (c!475387 r!17423))))))

(declare-fun b!2915521 () Bool)

(assert (=> b!2915521 (= e!1839832 (= (head!6478 s!11993) (c!475387 r!17423)))))

(declare-fun b!2915522 () Bool)

(declare-fun e!1839830 () Bool)

(declare-fun nullable!2805 (Regex!8971) Bool)

(assert (=> b!2915522 (= e!1839830 (nullable!2805 r!17423))))

(declare-fun b!2915523 () Bool)

(declare-fun res!1203630 () Bool)

(assert (=> b!2915523 (=> res!1203630 e!1839833)))

(declare-fun tail!4704 (List!34836) List!34836)

(assert (=> b!2915523 (= res!1203630 (not (isEmpty!18963 (tail!4704 s!11993))))))

(declare-fun b!2915524 () Bool)

(declare-fun res!1203636 () Bool)

(assert (=> b!2915524 (=> (not res!1203636) (not e!1839832))))

(assert (=> b!2915524 (= res!1203636 (isEmpty!18963 (tail!4704 s!11993)))))

(declare-fun b!2915525 () Bool)

(declare-fun res!1203635 () Bool)

(assert (=> b!2915525 (=> res!1203635 e!1839829)))

(assert (=> b!2915525 (= res!1203635 (not ((_ is ElementMatch!8971) r!17423)))))

(declare-fun e!1839831 () Bool)

(assert (=> b!2915525 (= e!1839831 e!1839829)))

(declare-fun b!2915526 () Bool)

(declare-fun derivativeStep!2419 (Regex!8971 C!18128) Regex!8971)

(assert (=> b!2915526 (= e!1839830 (matchR!3853 (derivativeStep!2419 r!17423 (head!6478 s!11993)) (tail!4704 s!11993)))))

(declare-fun bm!190461 () Bool)

(assert (=> bm!190461 (= call!190466 (isEmpty!18963 s!11993))))

(declare-fun b!2915527 () Bool)

(assert (=> b!2915527 (= e!1839831 (not lt!1024606))))

(declare-fun d!838047 () Bool)

(assert (=> d!838047 e!1839835))

(declare-fun c!475485 () Bool)

(assert (=> d!838047 (= c!475485 ((_ is EmptyExpr!8971) r!17423))))

(assert (=> d!838047 (= lt!1024606 e!1839830)))

(declare-fun c!475487 () Bool)

(assert (=> d!838047 (= c!475487 (isEmpty!18963 s!11993))))

(assert (=> d!838047 (validRegex!3704 r!17423)))

(assert (=> d!838047 (= (matchR!3853 r!17423 s!11993) lt!1024606)))

(declare-fun b!2915528 () Bool)

(assert (=> b!2915528 (= e!1839835 e!1839831)))

(declare-fun c!475486 () Bool)

(assert (=> b!2915528 (= c!475486 ((_ is EmptyLang!8971) r!17423))))

(declare-fun b!2915529 () Bool)

(assert (=> b!2915529 (= e!1839829 e!1839834)))

(declare-fun res!1203633 () Bool)

(assert (=> b!2915529 (=> (not res!1203633) (not e!1839834))))

(assert (=> b!2915529 (= res!1203633 (not lt!1024606))))

(assert (= (and d!838047 c!475487) b!2915522))

(assert (= (and d!838047 (not c!475487)) b!2915526))

(assert (= (and d!838047 c!475485) b!2915516))

(assert (= (and d!838047 (not c!475485)) b!2915528))

(assert (= (and b!2915528 c!475486) b!2915527))

(assert (= (and b!2915528 (not c!475486)) b!2915525))

(assert (= (and b!2915525 (not res!1203635)) b!2915519))

(assert (= (and b!2915519 res!1203631) b!2915518))

(assert (= (and b!2915518 res!1203629) b!2915524))

(assert (= (and b!2915524 res!1203636) b!2915521))

(assert (= (and b!2915519 (not res!1203632)) b!2915529))

(assert (= (and b!2915529 res!1203633) b!2915517))

(assert (= (and b!2915517 (not res!1203634)) b!2915523))

(assert (= (and b!2915523 (not res!1203630)) b!2915520))

(assert (= (or b!2915516 b!2915517 b!2915518) bm!190461))

(declare-fun m!3314521 () Bool)

(assert (=> b!2915522 m!3314521))

(declare-fun m!3314523 () Bool)

(assert (=> b!2915521 m!3314523))

(declare-fun m!3314525 () Bool)

(assert (=> b!2915524 m!3314525))

(assert (=> b!2915524 m!3314525))

(declare-fun m!3314527 () Bool)

(assert (=> b!2915524 m!3314527))

(assert (=> b!2915520 m!3314523))

(assert (=> b!2915526 m!3314523))

(assert (=> b!2915526 m!3314523))

(declare-fun m!3314529 () Bool)

(assert (=> b!2915526 m!3314529))

(assert (=> b!2915526 m!3314525))

(assert (=> b!2915526 m!3314529))

(assert (=> b!2915526 m!3314525))

(declare-fun m!3314531 () Bool)

(assert (=> b!2915526 m!3314531))

(assert (=> bm!190461 m!3314395))

(assert (=> d!838047 m!3314395))

(assert (=> d!838047 m!3314363))

(assert (=> b!2915523 m!3314525))

(assert (=> b!2915523 m!3314525))

(assert (=> b!2915523 m!3314527))

(assert (=> b!2915188 d!838047))

(declare-fun d!838059 () Bool)

(assert (=> d!838059 (= (matchR!3853 r!17423 s!11993) (matchRSpec!1108 r!17423 s!11993))))

(declare-fun lt!1024611 () Unit!48281)

(declare-fun choose!17165 (Regex!8971 List!34836) Unit!48281)

(assert (=> d!838059 (= lt!1024611 (choose!17165 r!17423 s!11993))))

(assert (=> d!838059 (validRegex!3704 r!17423)))

(assert (=> d!838059 (= (mainMatchTheorem!1108 r!17423 s!11993) lt!1024611)))

(declare-fun bs!524783 () Bool)

(assert (= bs!524783 d!838059))

(assert (=> bs!524783 m!3314401))

(assert (=> bs!524783 m!3314399))

(declare-fun m!3314547 () Bool)

(assert (=> bs!524783 m!3314547))

(assert (=> bs!524783 m!3314363))

(assert (=> b!2915188 d!838059))

(declare-fun b!2915597 () Bool)

(declare-fun e!1839880 () Bool)

(declare-fun e!1839881 () Bool)

(assert (=> b!2915597 (= e!1839880 e!1839881)))

(declare-fun res!1203678 () Bool)

(assert (=> b!2915597 (= res!1203678 (not (nullable!2805 (reg!9300 r!17423))))))

(assert (=> b!2915597 (=> (not res!1203678) (not e!1839881))))

(declare-fun b!2915598 () Bool)

(declare-fun e!1839878 () Bool)

(assert (=> b!2915598 (= e!1839880 e!1839878)))

(declare-fun c!475502 () Bool)

(assert (=> b!2915598 (= c!475502 ((_ is Union!8971) r!17423))))

(declare-fun b!2915599 () Bool)

(declare-fun e!1839876 () Bool)

(declare-fun e!1839877 () Bool)

(assert (=> b!2915599 (= e!1839876 e!1839877)))

(declare-fun res!1203679 () Bool)

(assert (=> b!2915599 (=> (not res!1203679) (not e!1839877))))

(declare-fun call!190474 () Bool)

(assert (=> b!2915599 (= res!1203679 call!190474)))

(declare-fun b!2915600 () Bool)

(declare-fun call!190476 () Bool)

(assert (=> b!2915600 (= e!1839877 call!190476)))

(declare-fun bm!190469 () Bool)

(assert (=> bm!190469 (= call!190474 (validRegex!3704 (ite c!475502 (regTwo!18455 r!17423) (regOne!18454 r!17423))))))

(declare-fun b!2915601 () Bool)

(declare-fun call!190475 () Bool)

(assert (=> b!2915601 (= e!1839881 call!190475)))

(declare-fun bm!190470 () Bool)

(declare-fun c!475501 () Bool)

(assert (=> bm!190470 (= call!190475 (validRegex!3704 (ite c!475501 (reg!9300 r!17423) (ite c!475502 (regOne!18455 r!17423) (regTwo!18454 r!17423)))))))

(declare-fun b!2915602 () Bool)

(declare-fun res!1203682 () Bool)

(assert (=> b!2915602 (=> res!1203682 e!1839876)))

(assert (=> b!2915602 (= res!1203682 (not ((_ is Concat!14292) r!17423)))))

(assert (=> b!2915602 (= e!1839878 e!1839876)))

(declare-fun bm!190471 () Bool)

(assert (=> bm!190471 (= call!190476 call!190475)))

(declare-fun d!838069 () Bool)

(declare-fun res!1203681 () Bool)

(declare-fun e!1839882 () Bool)

(assert (=> d!838069 (=> res!1203681 e!1839882)))

(assert (=> d!838069 (= res!1203681 ((_ is ElementMatch!8971) r!17423))))

(assert (=> d!838069 (= (validRegex!3704 r!17423) e!1839882)))

(declare-fun b!2915603 () Bool)

(declare-fun res!1203680 () Bool)

(declare-fun e!1839879 () Bool)

(assert (=> b!2915603 (=> (not res!1203680) (not e!1839879))))

(assert (=> b!2915603 (= res!1203680 call!190476)))

(assert (=> b!2915603 (= e!1839878 e!1839879)))

(declare-fun b!2915604 () Bool)

(assert (=> b!2915604 (= e!1839882 e!1839880)))

(assert (=> b!2915604 (= c!475501 ((_ is Star!8971) r!17423))))

(declare-fun b!2915605 () Bool)

(assert (=> b!2915605 (= e!1839879 call!190474)))

(assert (= (and d!838069 (not res!1203681)) b!2915604))

(assert (= (and b!2915604 c!475501) b!2915597))

(assert (= (and b!2915604 (not c!475501)) b!2915598))

(assert (= (and b!2915597 res!1203678) b!2915601))

(assert (= (and b!2915598 c!475502) b!2915603))

(assert (= (and b!2915598 (not c!475502)) b!2915602))

(assert (= (and b!2915603 res!1203680) b!2915605))

(assert (= (and b!2915602 (not res!1203682)) b!2915599))

(assert (= (and b!2915599 res!1203679) b!2915600))

(assert (= (or b!2915603 b!2915600) bm!190471))

(assert (= (or b!2915605 b!2915599) bm!190469))

(assert (= (or b!2915601 bm!190471) bm!190470))

(declare-fun m!3314571 () Bool)

(assert (=> b!2915597 m!3314571))

(declare-fun m!3314573 () Bool)

(assert (=> bm!190469 m!3314573))

(declare-fun m!3314575 () Bool)

(assert (=> bm!190470 m!3314575))

(assert (=> start!284036 d!838069))

(declare-fun bm!190487 () Bool)

(declare-fun call!190493 () Bool)

(declare-fun call!190498 () Bool)

(assert (=> bm!190487 (= call!190493 call!190498)))

(declare-fun b!2915709 () Bool)

(declare-fun e!1839932 () Regex!8971)

(declare-fun e!1839939 () Regex!8971)

(assert (=> b!2915709 (= e!1839932 e!1839939)))

(declare-fun c!475529 () Bool)

(declare-fun lt!1024640 () Regex!8971)

(declare-fun isEmptyExpr!245 (Regex!8971) Bool)

(assert (=> b!2915709 (= c!475529 (isEmptyExpr!245 lt!1024640))))

(declare-fun b!2915710 () Bool)

(declare-fun e!1839943 () Bool)

(declare-fun call!190497 () Bool)

(assert (=> b!2915710 (= e!1839943 call!190497)))

(declare-fun bm!190488 () Bool)

(declare-fun call!190494 () Regex!8971)

(declare-fun c!475538 () Bool)

(assert (=> bm!190488 (= call!190494 (simplify!8 (ite c!475538 (regOne!18455 (regOne!18454 r!17423)) (regTwo!18454 (regOne!18454 r!17423)))))))

(declare-fun bm!190489 () Bool)

(declare-fun lt!1024637 () Regex!8971)

(declare-fun call!190496 () Bool)

(declare-fun lt!1024639 () Regex!8971)

(declare-fun isEmptyLang!160 (Regex!8971) Bool)

(assert (=> bm!190489 (= call!190496 (isEmptyLang!160 (ite c!475538 lt!1024639 lt!1024637)))))

(declare-fun b!2915711 () Bool)

(declare-fun e!1839938 () Bool)

(declare-fun lt!1024642 () Regex!8971)

(assert (=> b!2915711 (= e!1839938 (= (nullable!2805 lt!1024642) (nullable!2805 (regOne!18454 r!17423))))))

(declare-fun b!2915712 () Bool)

(declare-fun e!1839930 () Regex!8971)

(declare-fun lt!1024638 () Regex!8971)

(assert (=> b!2915712 (= e!1839930 (Union!8971 lt!1024639 lt!1024638))))

(declare-fun c!475530 () Bool)

(declare-fun bm!190490 () Bool)

(declare-fun call!190495 () Regex!8971)

(assert (=> bm!190490 (= call!190495 (simplify!8 (ite c!475530 (reg!9300 (regOne!18454 r!17423)) (ite c!475538 (regTwo!18455 (regOne!18454 r!17423)) (regOne!18454 (regOne!18454 r!17423))))))))

(declare-fun b!2915713 () Bool)

(declare-fun e!1839937 () Regex!8971)

(assert (=> b!2915713 (= e!1839937 EmptyExpr!8971)))

(declare-fun lt!1024641 () Regex!8971)

(declare-fun bm!190491 () Bool)

(assert (=> bm!190491 (= call!190497 (isEmptyExpr!245 (ite c!475530 lt!1024641 lt!1024637)))))

(declare-fun b!2915714 () Bool)

(assert (=> b!2915714 (= e!1839930 lt!1024639)))

(declare-fun b!2915715 () Bool)

(assert (=> b!2915715 (= e!1839939 (Concat!14292 lt!1024637 lt!1024640))))

(declare-fun b!2915716 () Bool)

(declare-fun e!1839933 () Regex!8971)

(assert (=> b!2915716 (= e!1839933 EmptyExpr!8971)))

(declare-fun b!2915717 () Bool)

(declare-fun c!475533 () Bool)

(assert (=> b!2915717 (= c!475533 ((_ is EmptyExpr!8971) (regOne!18454 r!17423)))))

(declare-fun e!1839934 () Regex!8971)

(assert (=> b!2915717 (= e!1839934 e!1839933)))

(declare-fun b!2915718 () Bool)

(declare-fun e!1839936 () Regex!8971)

(assert (=> b!2915718 (= e!1839936 lt!1024638)))

(declare-fun bm!190492 () Bool)

(assert (=> bm!190492 (= call!190498 (isEmptyLang!160 (ite c!475530 lt!1024641 (ite c!475538 lt!1024638 lt!1024640))))))

(declare-fun b!2915719 () Bool)

(assert (=> b!2915719 (= c!475538 ((_ is Union!8971) (regOne!18454 r!17423)))))

(declare-fun e!1839942 () Regex!8971)

(declare-fun e!1839941 () Regex!8971)

(assert (=> b!2915719 (= e!1839942 e!1839941)))

(declare-fun b!2915720 () Bool)

(declare-fun e!1839931 () Regex!8971)

(assert (=> b!2915720 (= e!1839931 EmptyLang!8971)))

(declare-fun d!838073 () Bool)

(assert (=> d!838073 e!1839938))

(declare-fun res!1203701 () Bool)

(assert (=> d!838073 (=> (not res!1203701) (not e!1839938))))

(assert (=> d!838073 (= res!1203701 (validRegex!3704 lt!1024642))))

(declare-fun e!1839935 () Regex!8971)

(assert (=> d!838073 (= lt!1024642 e!1839935)))

(declare-fun c!475537 () Bool)

(assert (=> d!838073 (= c!475537 ((_ is EmptyLang!8971) (regOne!18454 r!17423)))))

(assert (=> d!838073 (validRegex!3704 (regOne!18454 r!17423))))

(assert (=> d!838073 (= (simplify!8 (regOne!18454 r!17423)) lt!1024642)))

(declare-fun b!2915721 () Bool)

(assert (=> b!2915721 (= e!1839941 e!1839931)))

(declare-fun call!190492 () Regex!8971)

(assert (=> b!2915721 (= lt!1024637 call!190492)))

(assert (=> b!2915721 (= lt!1024640 call!190494)))

(declare-fun res!1203703 () Bool)

(assert (=> b!2915721 (= res!1203703 call!190496)))

(declare-fun e!1839940 () Bool)

(assert (=> b!2915721 (=> res!1203703 e!1839940)))

(declare-fun c!475532 () Bool)

(assert (=> b!2915721 (= c!475532 e!1839940)))

(declare-fun b!2915722 () Bool)

(declare-fun c!475534 () Bool)

(assert (=> b!2915722 (= c!475534 call!190493)))

(assert (=> b!2915722 (= e!1839936 e!1839930)))

(declare-fun b!2915723 () Bool)

(assert (=> b!2915723 (= e!1839940 call!190493)))

(declare-fun b!2915724 () Bool)

(assert (=> b!2915724 (= e!1839935 EmptyLang!8971)))

(declare-fun b!2915725 () Bool)

(assert (=> b!2915725 (= e!1839934 (regOne!18454 r!17423))))

(declare-fun b!2915726 () Bool)

(assert (=> b!2915726 (= e!1839941 e!1839936)))

(assert (=> b!2915726 (= lt!1024639 call!190494)))

(assert (=> b!2915726 (= lt!1024638 call!190492)))

(declare-fun c!475536 () Bool)

(assert (=> b!2915726 (= c!475536 call!190496)))

(declare-fun b!2915727 () Bool)

(assert (=> b!2915727 (= e!1839935 e!1839934)))

(declare-fun c!475528 () Bool)

(assert (=> b!2915727 (= c!475528 ((_ is ElementMatch!8971) (regOne!18454 r!17423)))))

(declare-fun b!2915728 () Bool)

(assert (=> b!2915728 (= e!1839937 (Star!8971 lt!1024641))))

(declare-fun b!2915729 () Bool)

(declare-fun c!475535 () Bool)

(assert (=> b!2915729 (= c!475535 e!1839943)))

(declare-fun res!1203702 () Bool)

(assert (=> b!2915729 (=> res!1203702 e!1839943)))

(assert (=> b!2915729 (= res!1203702 call!190498)))

(assert (=> b!2915729 (= lt!1024641 call!190495)))

(assert (=> b!2915729 (= e!1839942 e!1839937)))

(declare-fun bm!190493 () Bool)

(assert (=> bm!190493 (= call!190492 call!190495)))

(declare-fun b!2915730 () Bool)

(declare-fun c!475531 () Bool)

(assert (=> b!2915730 (= c!475531 call!190497)))

(assert (=> b!2915730 (= e!1839931 e!1839932)))

(declare-fun b!2915731 () Bool)

(assert (=> b!2915731 (= e!1839939 lt!1024637)))

(declare-fun b!2915732 () Bool)

(assert (=> b!2915732 (= e!1839932 lt!1024640)))

(declare-fun b!2915733 () Bool)

(assert (=> b!2915733 (= e!1839933 e!1839942)))

(assert (=> b!2915733 (= c!475530 ((_ is Star!8971) (regOne!18454 r!17423)))))

(assert (= (and d!838073 c!475537) b!2915724))

(assert (= (and d!838073 (not c!475537)) b!2915727))

(assert (= (and b!2915727 c!475528) b!2915725))

(assert (= (and b!2915727 (not c!475528)) b!2915717))

(assert (= (and b!2915717 c!475533) b!2915716))

(assert (= (and b!2915717 (not c!475533)) b!2915733))

(assert (= (and b!2915733 c!475530) b!2915729))

(assert (= (and b!2915733 (not c!475530)) b!2915719))

(assert (= (and b!2915729 (not res!1203702)) b!2915710))

(assert (= (and b!2915729 c!475535) b!2915713))

(assert (= (and b!2915729 (not c!475535)) b!2915728))

(assert (= (and b!2915719 c!475538) b!2915726))

(assert (= (and b!2915719 (not c!475538)) b!2915721))

(assert (= (and b!2915726 c!475536) b!2915718))

(assert (= (and b!2915726 (not c!475536)) b!2915722))

(assert (= (and b!2915722 c!475534) b!2915714))

(assert (= (and b!2915722 (not c!475534)) b!2915712))

(assert (= (and b!2915721 (not res!1203703)) b!2915723))

(assert (= (and b!2915721 c!475532) b!2915720))

(assert (= (and b!2915721 (not c!475532)) b!2915730))

(assert (= (and b!2915730 c!475531) b!2915732))

(assert (= (and b!2915730 (not c!475531)) b!2915709))

(assert (= (and b!2915709 c!475529) b!2915731))

(assert (= (and b!2915709 (not c!475529)) b!2915715))

(assert (= (or b!2915726 b!2915721) bm!190488))

(assert (= (or b!2915726 b!2915721) bm!190493))

(assert (= (or b!2915722 b!2915723) bm!190487))

(assert (= (or b!2915726 b!2915721) bm!190489))

(assert (= (or b!2915710 b!2915730) bm!190491))

(assert (= (or b!2915729 bm!190493) bm!190490))

(assert (= (or b!2915729 bm!190487) bm!190492))

(assert (= (and d!838073 res!1203701) b!2915711))

(declare-fun m!3314587 () Bool)

(assert (=> b!2915711 m!3314587))

(declare-fun m!3314589 () Bool)

(assert (=> b!2915711 m!3314589))

(declare-fun m!3314591 () Bool)

(assert (=> bm!190488 m!3314591))

(declare-fun m!3314593 () Bool)

(assert (=> b!2915709 m!3314593))

(declare-fun m!3314595 () Bool)

(assert (=> bm!190490 m!3314595))

(declare-fun m!3314597 () Bool)

(assert (=> bm!190491 m!3314597))

(declare-fun m!3314599 () Bool)

(assert (=> bm!190489 m!3314599))

(declare-fun m!3314601 () Bool)

(assert (=> d!838073 m!3314601))

(declare-fun m!3314603 () Bool)

(assert (=> d!838073 m!3314603))

(declare-fun m!3314605 () Bool)

(assert (=> bm!190492 m!3314605))

(assert (=> b!2915187 d!838073))

(declare-fun b!2915734 () Bool)

(declare-fun e!1839950 () Bool)

(declare-fun lt!1024643 () Bool)

(declare-fun call!190499 () Bool)

(assert (=> b!2915734 (= e!1839950 (= lt!1024643 call!190499))))

(declare-fun b!2915735 () Bool)

(declare-fun e!1839949 () Bool)

(declare-fun e!1839948 () Bool)

(assert (=> b!2915735 (= e!1839949 e!1839948)))

(declare-fun res!1203709 () Bool)

(assert (=> b!2915735 (=> res!1203709 e!1839948)))

(assert (=> b!2915735 (= res!1203709 call!190499)))

(declare-fun b!2915736 () Bool)

(declare-fun res!1203704 () Bool)

(declare-fun e!1839947 () Bool)

(assert (=> b!2915736 (=> (not res!1203704) (not e!1839947))))

(assert (=> b!2915736 (= res!1203704 (not call!190499))))

(declare-fun b!2915737 () Bool)

(declare-fun res!1203707 () Bool)

(declare-fun e!1839944 () Bool)

(assert (=> b!2915737 (=> res!1203707 e!1839944)))

(assert (=> b!2915737 (= res!1203707 e!1839947)))

(declare-fun res!1203706 () Bool)

(assert (=> b!2915737 (=> (not res!1203706) (not e!1839947))))

(assert (=> b!2915737 (= res!1203706 lt!1024643)))

(declare-fun b!2915738 () Bool)

(assert (=> b!2915738 (= e!1839948 (not (= (head!6478 (_1!19972 lt!1024557)) (c!475387 lt!1024562))))))

(declare-fun b!2915739 () Bool)

(assert (=> b!2915739 (= e!1839947 (= (head!6478 (_1!19972 lt!1024557)) (c!475387 lt!1024562)))))

(declare-fun b!2915740 () Bool)

(declare-fun e!1839945 () Bool)

(assert (=> b!2915740 (= e!1839945 (nullable!2805 lt!1024562))))

(declare-fun b!2915741 () Bool)

(declare-fun res!1203705 () Bool)

(assert (=> b!2915741 (=> res!1203705 e!1839948)))

(assert (=> b!2915741 (= res!1203705 (not (isEmpty!18963 (tail!4704 (_1!19972 lt!1024557)))))))

(declare-fun b!2915742 () Bool)

(declare-fun res!1203711 () Bool)

(assert (=> b!2915742 (=> (not res!1203711) (not e!1839947))))

(assert (=> b!2915742 (= res!1203711 (isEmpty!18963 (tail!4704 (_1!19972 lt!1024557))))))

(declare-fun b!2915743 () Bool)

(declare-fun res!1203710 () Bool)

(assert (=> b!2915743 (=> res!1203710 e!1839944)))

(assert (=> b!2915743 (= res!1203710 (not ((_ is ElementMatch!8971) lt!1024562)))))

(declare-fun e!1839946 () Bool)

(assert (=> b!2915743 (= e!1839946 e!1839944)))

(declare-fun b!2915744 () Bool)

(assert (=> b!2915744 (= e!1839945 (matchR!3853 (derivativeStep!2419 lt!1024562 (head!6478 (_1!19972 lt!1024557))) (tail!4704 (_1!19972 lt!1024557))))))

(declare-fun bm!190494 () Bool)

(assert (=> bm!190494 (= call!190499 (isEmpty!18963 (_1!19972 lt!1024557)))))

(declare-fun b!2915745 () Bool)

(assert (=> b!2915745 (= e!1839946 (not lt!1024643))))

(declare-fun d!838077 () Bool)

(assert (=> d!838077 e!1839950))

(declare-fun c!475539 () Bool)

(assert (=> d!838077 (= c!475539 ((_ is EmptyExpr!8971) lt!1024562))))

(assert (=> d!838077 (= lt!1024643 e!1839945)))

(declare-fun c!475541 () Bool)

(assert (=> d!838077 (= c!475541 (isEmpty!18963 (_1!19972 lt!1024557)))))

(assert (=> d!838077 (validRegex!3704 lt!1024562)))

(assert (=> d!838077 (= (matchR!3853 lt!1024562 (_1!19972 lt!1024557)) lt!1024643)))

(declare-fun b!2915746 () Bool)

(assert (=> b!2915746 (= e!1839950 e!1839946)))

(declare-fun c!475540 () Bool)

(assert (=> b!2915746 (= c!475540 ((_ is EmptyLang!8971) lt!1024562))))

(declare-fun b!2915747 () Bool)

(assert (=> b!2915747 (= e!1839944 e!1839949)))

(declare-fun res!1203708 () Bool)

(assert (=> b!2915747 (=> (not res!1203708) (not e!1839949))))

(assert (=> b!2915747 (= res!1203708 (not lt!1024643))))

(assert (= (and d!838077 c!475541) b!2915740))

(assert (= (and d!838077 (not c!475541)) b!2915744))

(assert (= (and d!838077 c!475539) b!2915734))

(assert (= (and d!838077 (not c!475539)) b!2915746))

(assert (= (and b!2915746 c!475540) b!2915745))

(assert (= (and b!2915746 (not c!475540)) b!2915743))

(assert (= (and b!2915743 (not res!1203710)) b!2915737))

(assert (= (and b!2915737 res!1203706) b!2915736))

(assert (= (and b!2915736 res!1203704) b!2915742))

(assert (= (and b!2915742 res!1203711) b!2915739))

(assert (= (and b!2915737 (not res!1203707)) b!2915747))

(assert (= (and b!2915747 res!1203708) b!2915735))

(assert (= (and b!2915735 (not res!1203709)) b!2915741))

(assert (= (and b!2915741 (not res!1203705)) b!2915738))

(assert (= (or b!2915734 b!2915735 b!2915736) bm!190494))

(declare-fun m!3314607 () Bool)

(assert (=> b!2915740 m!3314607))

(declare-fun m!3314609 () Bool)

(assert (=> b!2915739 m!3314609))

(declare-fun m!3314611 () Bool)

(assert (=> b!2915742 m!3314611))

(assert (=> b!2915742 m!3314611))

(declare-fun m!3314613 () Bool)

(assert (=> b!2915742 m!3314613))

(assert (=> b!2915738 m!3314609))

(assert (=> b!2915744 m!3314609))

(assert (=> b!2915744 m!3314609))

(declare-fun m!3314615 () Bool)

(assert (=> b!2915744 m!3314615))

(assert (=> b!2915744 m!3314611))

(assert (=> b!2915744 m!3314615))

(assert (=> b!2915744 m!3314611))

(declare-fun m!3314617 () Bool)

(assert (=> b!2915744 m!3314617))

(declare-fun m!3314619 () Bool)

(assert (=> bm!190494 m!3314619))

(assert (=> d!838077 m!3314619))

(assert (=> d!838077 m!3314383))

(assert (=> b!2915741 m!3314611))

(assert (=> b!2915741 m!3314611))

(assert (=> b!2915741 m!3314613))

(assert (=> b!2915187 d!838077))

(declare-fun b!2915748 () Bool)

(declare-fun e!1839957 () Bool)

(declare-fun lt!1024644 () Bool)

(declare-fun call!190500 () Bool)

(assert (=> b!2915748 (= e!1839957 (= lt!1024644 call!190500))))

(declare-fun b!2915749 () Bool)

(declare-fun e!1839956 () Bool)

(declare-fun e!1839955 () Bool)

(assert (=> b!2915749 (= e!1839956 e!1839955)))

(declare-fun res!1203717 () Bool)

(assert (=> b!2915749 (=> res!1203717 e!1839955)))

(assert (=> b!2915749 (= res!1203717 call!190500)))

(declare-fun b!2915750 () Bool)

(declare-fun res!1203712 () Bool)

(declare-fun e!1839954 () Bool)

(assert (=> b!2915750 (=> (not res!1203712) (not e!1839954))))

(assert (=> b!2915750 (= res!1203712 (not call!190500))))

(declare-fun b!2915751 () Bool)

(declare-fun res!1203715 () Bool)

(declare-fun e!1839951 () Bool)

(assert (=> b!2915751 (=> res!1203715 e!1839951)))

(assert (=> b!2915751 (= res!1203715 e!1839954)))

(declare-fun res!1203714 () Bool)

(assert (=> b!2915751 (=> (not res!1203714) (not e!1839954))))

(assert (=> b!2915751 (= res!1203714 lt!1024644)))

(declare-fun b!2915752 () Bool)

(assert (=> b!2915752 (= e!1839955 (not (= (head!6478 (_2!19972 lt!1024557)) (c!475387 (simplify!8 (regTwo!18454 r!17423))))))))

(declare-fun b!2915753 () Bool)

(assert (=> b!2915753 (= e!1839954 (= (head!6478 (_2!19972 lt!1024557)) (c!475387 (simplify!8 (regTwo!18454 r!17423)))))))

(declare-fun b!2915754 () Bool)

(declare-fun e!1839952 () Bool)

(assert (=> b!2915754 (= e!1839952 (nullable!2805 (simplify!8 (regTwo!18454 r!17423))))))

(declare-fun b!2915755 () Bool)

(declare-fun res!1203713 () Bool)

(assert (=> b!2915755 (=> res!1203713 e!1839955)))

(assert (=> b!2915755 (= res!1203713 (not (isEmpty!18963 (tail!4704 (_2!19972 lt!1024557)))))))

(declare-fun b!2915756 () Bool)

(declare-fun res!1203719 () Bool)

(assert (=> b!2915756 (=> (not res!1203719) (not e!1839954))))

(assert (=> b!2915756 (= res!1203719 (isEmpty!18963 (tail!4704 (_2!19972 lt!1024557))))))

(declare-fun b!2915757 () Bool)

(declare-fun res!1203718 () Bool)

(assert (=> b!2915757 (=> res!1203718 e!1839951)))

(assert (=> b!2915757 (= res!1203718 (not ((_ is ElementMatch!8971) (simplify!8 (regTwo!18454 r!17423)))))))

(declare-fun e!1839953 () Bool)

(assert (=> b!2915757 (= e!1839953 e!1839951)))

(declare-fun b!2915758 () Bool)

(assert (=> b!2915758 (= e!1839952 (matchR!3853 (derivativeStep!2419 (simplify!8 (regTwo!18454 r!17423)) (head!6478 (_2!19972 lt!1024557))) (tail!4704 (_2!19972 lt!1024557))))))

(declare-fun bm!190495 () Bool)

(assert (=> bm!190495 (= call!190500 (isEmpty!18963 (_2!19972 lt!1024557)))))

(declare-fun b!2915759 () Bool)

(assert (=> b!2915759 (= e!1839953 (not lt!1024644))))

(declare-fun d!838079 () Bool)

(assert (=> d!838079 e!1839957))

(declare-fun c!475542 () Bool)

(assert (=> d!838079 (= c!475542 ((_ is EmptyExpr!8971) (simplify!8 (regTwo!18454 r!17423))))))

(assert (=> d!838079 (= lt!1024644 e!1839952)))

(declare-fun c!475544 () Bool)

(assert (=> d!838079 (= c!475544 (isEmpty!18963 (_2!19972 lt!1024557)))))

(assert (=> d!838079 (validRegex!3704 (simplify!8 (regTwo!18454 r!17423)))))

(assert (=> d!838079 (= (matchR!3853 (simplify!8 (regTwo!18454 r!17423)) (_2!19972 lt!1024557)) lt!1024644)))

(declare-fun b!2915760 () Bool)

(assert (=> b!2915760 (= e!1839957 e!1839953)))

(declare-fun c!475543 () Bool)

(assert (=> b!2915760 (= c!475543 ((_ is EmptyLang!8971) (simplify!8 (regTwo!18454 r!17423))))))

(declare-fun b!2915761 () Bool)

(assert (=> b!2915761 (= e!1839951 e!1839956)))

(declare-fun res!1203716 () Bool)

(assert (=> b!2915761 (=> (not res!1203716) (not e!1839956))))

(assert (=> b!2915761 (= res!1203716 (not lt!1024644))))

(assert (= (and d!838079 c!475544) b!2915754))

(assert (= (and d!838079 (not c!475544)) b!2915758))

(assert (= (and d!838079 c!475542) b!2915748))

(assert (= (and d!838079 (not c!475542)) b!2915760))

(assert (= (and b!2915760 c!475543) b!2915759))

(assert (= (and b!2915760 (not c!475543)) b!2915757))

(assert (= (and b!2915757 (not res!1203718)) b!2915751))

(assert (= (and b!2915751 res!1203714) b!2915750))

(assert (= (and b!2915750 res!1203712) b!2915756))

(assert (= (and b!2915756 res!1203719) b!2915753))

(assert (= (and b!2915751 (not res!1203715)) b!2915761))

(assert (= (and b!2915761 res!1203716) b!2915749))

(assert (= (and b!2915749 (not res!1203717)) b!2915755))

(assert (= (and b!2915755 (not res!1203713)) b!2915752))

(assert (= (or b!2915748 b!2915749 b!2915750) bm!190495))

(assert (=> b!2915754 m!3314387))

(declare-fun m!3314621 () Bool)

(assert (=> b!2915754 m!3314621))

(declare-fun m!3314623 () Bool)

(assert (=> b!2915753 m!3314623))

(declare-fun m!3314625 () Bool)

(assert (=> b!2915756 m!3314625))

(assert (=> b!2915756 m!3314625))

(declare-fun m!3314627 () Bool)

(assert (=> b!2915756 m!3314627))

(assert (=> b!2915752 m!3314623))

(assert (=> b!2915758 m!3314623))

(assert (=> b!2915758 m!3314387))

(assert (=> b!2915758 m!3314623))

(declare-fun m!3314629 () Bool)

(assert (=> b!2915758 m!3314629))

(assert (=> b!2915758 m!3314625))

(assert (=> b!2915758 m!3314629))

(assert (=> b!2915758 m!3314625))

(declare-fun m!3314631 () Bool)

(assert (=> b!2915758 m!3314631))

(declare-fun m!3314633 () Bool)

(assert (=> bm!190495 m!3314633))

(assert (=> d!838079 m!3314633))

(assert (=> d!838079 m!3314387))

(declare-fun m!3314635 () Bool)

(assert (=> d!838079 m!3314635))

(assert (=> b!2915755 m!3314625))

(assert (=> b!2915755 m!3314625))

(assert (=> b!2915755 m!3314627))

(assert (=> b!2915187 d!838079))

(declare-fun b!2915762 () Bool)

(declare-fun e!1839962 () Bool)

(declare-fun e!1839963 () Bool)

(assert (=> b!2915762 (= e!1839962 e!1839963)))

(declare-fun res!1203720 () Bool)

(assert (=> b!2915762 (= res!1203720 (not (nullable!2805 (reg!9300 lt!1024562))))))

(assert (=> b!2915762 (=> (not res!1203720) (not e!1839963))))

(declare-fun b!2915763 () Bool)

(declare-fun e!1839960 () Bool)

(assert (=> b!2915763 (= e!1839962 e!1839960)))

(declare-fun c!475546 () Bool)

(assert (=> b!2915763 (= c!475546 ((_ is Union!8971) lt!1024562))))

(declare-fun b!2915764 () Bool)

(declare-fun e!1839958 () Bool)

(declare-fun e!1839959 () Bool)

(assert (=> b!2915764 (= e!1839958 e!1839959)))

(declare-fun res!1203721 () Bool)

(assert (=> b!2915764 (=> (not res!1203721) (not e!1839959))))

(declare-fun call!190501 () Bool)

(assert (=> b!2915764 (= res!1203721 call!190501)))

(declare-fun b!2915765 () Bool)

(declare-fun call!190503 () Bool)

(assert (=> b!2915765 (= e!1839959 call!190503)))

(declare-fun bm!190496 () Bool)

(assert (=> bm!190496 (= call!190501 (validRegex!3704 (ite c!475546 (regTwo!18455 lt!1024562) (regOne!18454 lt!1024562))))))

(declare-fun b!2915766 () Bool)

(declare-fun call!190502 () Bool)

(assert (=> b!2915766 (= e!1839963 call!190502)))

(declare-fun bm!190497 () Bool)

(declare-fun c!475545 () Bool)

(assert (=> bm!190497 (= call!190502 (validRegex!3704 (ite c!475545 (reg!9300 lt!1024562) (ite c!475546 (regOne!18455 lt!1024562) (regTwo!18454 lt!1024562)))))))

(declare-fun b!2915767 () Bool)

(declare-fun res!1203724 () Bool)

(assert (=> b!2915767 (=> res!1203724 e!1839958)))

(assert (=> b!2915767 (= res!1203724 (not ((_ is Concat!14292) lt!1024562)))))

(assert (=> b!2915767 (= e!1839960 e!1839958)))

(declare-fun bm!190498 () Bool)

(assert (=> bm!190498 (= call!190503 call!190502)))

(declare-fun d!838081 () Bool)

(declare-fun res!1203723 () Bool)

(declare-fun e!1839964 () Bool)

(assert (=> d!838081 (=> res!1203723 e!1839964)))

(assert (=> d!838081 (= res!1203723 ((_ is ElementMatch!8971) lt!1024562))))

(assert (=> d!838081 (= (validRegex!3704 lt!1024562) e!1839964)))

(declare-fun b!2915768 () Bool)

(declare-fun res!1203722 () Bool)

(declare-fun e!1839961 () Bool)

(assert (=> b!2915768 (=> (not res!1203722) (not e!1839961))))

(assert (=> b!2915768 (= res!1203722 call!190503)))

(assert (=> b!2915768 (= e!1839960 e!1839961)))

(declare-fun b!2915769 () Bool)

(assert (=> b!2915769 (= e!1839964 e!1839962)))

(assert (=> b!2915769 (= c!475545 ((_ is Star!8971) lt!1024562))))

(declare-fun b!2915770 () Bool)

(assert (=> b!2915770 (= e!1839961 call!190501)))

(assert (= (and d!838081 (not res!1203723)) b!2915769))

(assert (= (and b!2915769 c!475545) b!2915762))

(assert (= (and b!2915769 (not c!475545)) b!2915763))

(assert (= (and b!2915762 res!1203720) b!2915766))

(assert (= (and b!2915763 c!475546) b!2915768))

(assert (= (and b!2915763 (not c!475546)) b!2915767))

(assert (= (and b!2915768 res!1203722) b!2915770))

(assert (= (and b!2915767 (not res!1203724)) b!2915764))

(assert (= (and b!2915764 res!1203721) b!2915765))

(assert (= (or b!2915768 b!2915765) bm!190498))

(assert (= (or b!2915770 b!2915764) bm!190496))

(assert (= (or b!2915766 bm!190498) bm!190497))

(declare-fun m!3314637 () Bool)

(assert (=> b!2915762 m!3314637))

(declare-fun m!3314639 () Bool)

(assert (=> bm!190496 m!3314639))

(declare-fun m!3314641 () Bool)

(assert (=> bm!190497 m!3314641))

(assert (=> b!2915187 d!838081))

(declare-fun d!838083 () Bool)

(assert (=> d!838083 (= (matchR!3853 (regTwo!18454 r!17423) (_2!19972 lt!1024557)) (matchR!3853 (simplify!8 (regTwo!18454 r!17423)) (_2!19972 lt!1024557)))))

(declare-fun lt!1024647 () Unit!48281)

(declare-fun choose!17168 (Regex!8971 List!34836) Unit!48281)

(assert (=> d!838083 (= lt!1024647 (choose!17168 (regTwo!18454 r!17423) (_2!19972 lt!1024557)))))

(assert (=> d!838083 (validRegex!3704 (regTwo!18454 r!17423))))

(assert (=> d!838083 (= (lemmaSimplifySound!6 (regTwo!18454 r!17423) (_2!19972 lt!1024557)) lt!1024647)))

(declare-fun bs!524789 () Bool)

(assert (= bs!524789 d!838083))

(declare-fun m!3314643 () Bool)

(assert (=> bs!524789 m!3314643))

(declare-fun m!3314645 () Bool)

(assert (=> bs!524789 m!3314645))

(assert (=> bs!524789 m!3314387))

(assert (=> bs!524789 m!3314397))

(assert (=> bs!524789 m!3314387))

(assert (=> bs!524789 m!3314391))

(assert (=> b!2915187 d!838083))

(declare-fun bm!190499 () Bool)

(declare-fun call!190505 () Bool)

(declare-fun call!190510 () Bool)

(assert (=> bm!190499 (= call!190505 call!190510)))

(declare-fun b!2915771 () Bool)

(declare-fun e!1839967 () Regex!8971)

(declare-fun e!1839974 () Regex!8971)

(assert (=> b!2915771 (= e!1839967 e!1839974)))

(declare-fun c!475548 () Bool)

(declare-fun lt!1024651 () Regex!8971)

(assert (=> b!2915771 (= c!475548 (isEmptyExpr!245 lt!1024651))))

(declare-fun b!2915772 () Bool)

(declare-fun e!1839978 () Bool)

(declare-fun call!190509 () Bool)

(assert (=> b!2915772 (= e!1839978 call!190509)))

(declare-fun bm!190500 () Bool)

(declare-fun call!190506 () Regex!8971)

(declare-fun c!475557 () Bool)

(assert (=> bm!190500 (= call!190506 (simplify!8 (ite c!475557 (regOne!18455 (regTwo!18454 r!17423)) (regTwo!18454 (regTwo!18454 r!17423)))))))

(declare-fun lt!1024650 () Regex!8971)

(declare-fun lt!1024648 () Regex!8971)

(declare-fun call!190508 () Bool)

(declare-fun bm!190501 () Bool)

(assert (=> bm!190501 (= call!190508 (isEmptyLang!160 (ite c!475557 lt!1024650 lt!1024648)))))

(declare-fun b!2915773 () Bool)

(declare-fun e!1839973 () Bool)

(declare-fun lt!1024653 () Regex!8971)

(assert (=> b!2915773 (= e!1839973 (= (nullable!2805 lt!1024653) (nullable!2805 (regTwo!18454 r!17423))))))

(declare-fun b!2915774 () Bool)

(declare-fun e!1839965 () Regex!8971)

(declare-fun lt!1024649 () Regex!8971)

(assert (=> b!2915774 (= e!1839965 (Union!8971 lt!1024650 lt!1024649))))

(declare-fun c!475549 () Bool)

(declare-fun bm!190502 () Bool)

(declare-fun call!190507 () Regex!8971)

(assert (=> bm!190502 (= call!190507 (simplify!8 (ite c!475549 (reg!9300 (regTwo!18454 r!17423)) (ite c!475557 (regTwo!18455 (regTwo!18454 r!17423)) (regOne!18454 (regTwo!18454 r!17423))))))))

(declare-fun b!2915775 () Bool)

(declare-fun e!1839972 () Regex!8971)

(assert (=> b!2915775 (= e!1839972 EmptyExpr!8971)))

(declare-fun bm!190503 () Bool)

(declare-fun lt!1024652 () Regex!8971)

(assert (=> bm!190503 (= call!190509 (isEmptyExpr!245 (ite c!475549 lt!1024652 lt!1024648)))))

(declare-fun b!2915776 () Bool)

(assert (=> b!2915776 (= e!1839965 lt!1024650)))

(declare-fun b!2915777 () Bool)

(assert (=> b!2915777 (= e!1839974 (Concat!14292 lt!1024648 lt!1024651))))

(declare-fun b!2915778 () Bool)

(declare-fun e!1839968 () Regex!8971)

(assert (=> b!2915778 (= e!1839968 EmptyExpr!8971)))

(declare-fun b!2915779 () Bool)

(declare-fun c!475552 () Bool)

(assert (=> b!2915779 (= c!475552 ((_ is EmptyExpr!8971) (regTwo!18454 r!17423)))))

(declare-fun e!1839969 () Regex!8971)

(assert (=> b!2915779 (= e!1839969 e!1839968)))

(declare-fun b!2915780 () Bool)

(declare-fun e!1839971 () Regex!8971)

(assert (=> b!2915780 (= e!1839971 lt!1024649)))

(declare-fun bm!190504 () Bool)

(assert (=> bm!190504 (= call!190510 (isEmptyLang!160 (ite c!475549 lt!1024652 (ite c!475557 lt!1024649 lt!1024651))))))

(declare-fun b!2915781 () Bool)

(assert (=> b!2915781 (= c!475557 ((_ is Union!8971) (regTwo!18454 r!17423)))))

(declare-fun e!1839977 () Regex!8971)

(declare-fun e!1839976 () Regex!8971)

(assert (=> b!2915781 (= e!1839977 e!1839976)))

(declare-fun b!2915782 () Bool)

(declare-fun e!1839966 () Regex!8971)

(assert (=> b!2915782 (= e!1839966 EmptyLang!8971)))

(declare-fun d!838085 () Bool)

(assert (=> d!838085 e!1839973))

(declare-fun res!1203725 () Bool)

(assert (=> d!838085 (=> (not res!1203725) (not e!1839973))))

(assert (=> d!838085 (= res!1203725 (validRegex!3704 lt!1024653))))

(declare-fun e!1839970 () Regex!8971)

(assert (=> d!838085 (= lt!1024653 e!1839970)))

(declare-fun c!475556 () Bool)

(assert (=> d!838085 (= c!475556 ((_ is EmptyLang!8971) (regTwo!18454 r!17423)))))

(assert (=> d!838085 (validRegex!3704 (regTwo!18454 r!17423))))

(assert (=> d!838085 (= (simplify!8 (regTwo!18454 r!17423)) lt!1024653)))

(declare-fun b!2915783 () Bool)

(assert (=> b!2915783 (= e!1839976 e!1839966)))

(declare-fun call!190504 () Regex!8971)

(assert (=> b!2915783 (= lt!1024648 call!190504)))

(assert (=> b!2915783 (= lt!1024651 call!190506)))

(declare-fun res!1203727 () Bool)

(assert (=> b!2915783 (= res!1203727 call!190508)))

(declare-fun e!1839975 () Bool)

(assert (=> b!2915783 (=> res!1203727 e!1839975)))

(declare-fun c!475551 () Bool)

(assert (=> b!2915783 (= c!475551 e!1839975)))

(declare-fun b!2915784 () Bool)

(declare-fun c!475553 () Bool)

(assert (=> b!2915784 (= c!475553 call!190505)))

(assert (=> b!2915784 (= e!1839971 e!1839965)))

(declare-fun b!2915785 () Bool)

(assert (=> b!2915785 (= e!1839975 call!190505)))

(declare-fun b!2915786 () Bool)

(assert (=> b!2915786 (= e!1839970 EmptyLang!8971)))

(declare-fun b!2915787 () Bool)

(assert (=> b!2915787 (= e!1839969 (regTwo!18454 r!17423))))

(declare-fun b!2915788 () Bool)

(assert (=> b!2915788 (= e!1839976 e!1839971)))

(assert (=> b!2915788 (= lt!1024650 call!190506)))

(assert (=> b!2915788 (= lt!1024649 call!190504)))

(declare-fun c!475555 () Bool)

(assert (=> b!2915788 (= c!475555 call!190508)))

(declare-fun b!2915789 () Bool)

(assert (=> b!2915789 (= e!1839970 e!1839969)))

(declare-fun c!475547 () Bool)

(assert (=> b!2915789 (= c!475547 ((_ is ElementMatch!8971) (regTwo!18454 r!17423)))))

(declare-fun b!2915790 () Bool)

(assert (=> b!2915790 (= e!1839972 (Star!8971 lt!1024652))))

(declare-fun b!2915791 () Bool)

(declare-fun c!475554 () Bool)

(assert (=> b!2915791 (= c!475554 e!1839978)))

(declare-fun res!1203726 () Bool)

(assert (=> b!2915791 (=> res!1203726 e!1839978)))

(assert (=> b!2915791 (= res!1203726 call!190510)))

(assert (=> b!2915791 (= lt!1024652 call!190507)))

(assert (=> b!2915791 (= e!1839977 e!1839972)))

(declare-fun bm!190505 () Bool)

(assert (=> bm!190505 (= call!190504 call!190507)))

(declare-fun b!2915792 () Bool)

(declare-fun c!475550 () Bool)

(assert (=> b!2915792 (= c!475550 call!190509)))

(assert (=> b!2915792 (= e!1839966 e!1839967)))

(declare-fun b!2915793 () Bool)

(assert (=> b!2915793 (= e!1839974 lt!1024648)))

(declare-fun b!2915794 () Bool)

(assert (=> b!2915794 (= e!1839967 lt!1024651)))

(declare-fun b!2915795 () Bool)

(assert (=> b!2915795 (= e!1839968 e!1839977)))

(assert (=> b!2915795 (= c!475549 ((_ is Star!8971) (regTwo!18454 r!17423)))))

(assert (= (and d!838085 c!475556) b!2915786))

(assert (= (and d!838085 (not c!475556)) b!2915789))

(assert (= (and b!2915789 c!475547) b!2915787))

(assert (= (and b!2915789 (not c!475547)) b!2915779))

(assert (= (and b!2915779 c!475552) b!2915778))

(assert (= (and b!2915779 (not c!475552)) b!2915795))

(assert (= (and b!2915795 c!475549) b!2915791))

(assert (= (and b!2915795 (not c!475549)) b!2915781))

(assert (= (and b!2915791 (not res!1203726)) b!2915772))

(assert (= (and b!2915791 c!475554) b!2915775))

(assert (= (and b!2915791 (not c!475554)) b!2915790))

(assert (= (and b!2915781 c!475557) b!2915788))

(assert (= (and b!2915781 (not c!475557)) b!2915783))

(assert (= (and b!2915788 c!475555) b!2915780))

(assert (= (and b!2915788 (not c!475555)) b!2915784))

(assert (= (and b!2915784 c!475553) b!2915776))

(assert (= (and b!2915784 (not c!475553)) b!2915774))

(assert (= (and b!2915783 (not res!1203727)) b!2915785))

(assert (= (and b!2915783 c!475551) b!2915782))

(assert (= (and b!2915783 (not c!475551)) b!2915792))

(assert (= (and b!2915792 c!475550) b!2915794))

(assert (= (and b!2915792 (not c!475550)) b!2915771))

(assert (= (and b!2915771 c!475548) b!2915793))

(assert (= (and b!2915771 (not c!475548)) b!2915777))

(assert (= (or b!2915788 b!2915783) bm!190500))

(assert (= (or b!2915788 b!2915783) bm!190505))

(assert (= (or b!2915784 b!2915785) bm!190499))

(assert (= (or b!2915788 b!2915783) bm!190501))

(assert (= (or b!2915772 b!2915792) bm!190503))

(assert (= (or b!2915791 bm!190505) bm!190502))

(assert (= (or b!2915791 bm!190499) bm!190504))

(assert (= (and d!838085 res!1203725) b!2915773))

(declare-fun m!3314647 () Bool)

(assert (=> b!2915773 m!3314647))

(declare-fun m!3314649 () Bool)

(assert (=> b!2915773 m!3314649))

(declare-fun m!3314651 () Bool)

(assert (=> bm!190500 m!3314651))

(declare-fun m!3314653 () Bool)

(assert (=> b!2915771 m!3314653))

(declare-fun m!3314655 () Bool)

(assert (=> bm!190502 m!3314655))

(declare-fun m!3314657 () Bool)

(assert (=> bm!190503 m!3314657))

(declare-fun m!3314659 () Bool)

(assert (=> bm!190501 m!3314659))

(declare-fun m!3314661 () Bool)

(assert (=> d!838085 m!3314661))

(assert (=> d!838085 m!3314643))

(declare-fun m!3314663 () Bool)

(assert (=> bm!190504 m!3314663))

(assert (=> b!2915187 d!838085))

(declare-fun d!838087 () Bool)

(assert (=> d!838087 (= (matchR!3853 (regOne!18454 r!17423) (_1!19972 lt!1024557)) (matchR!3853 (simplify!8 (regOne!18454 r!17423)) (_1!19972 lt!1024557)))))

(declare-fun lt!1024654 () Unit!48281)

(assert (=> d!838087 (= lt!1024654 (choose!17168 (regOne!18454 r!17423) (_1!19972 lt!1024557)))))

(assert (=> d!838087 (validRegex!3704 (regOne!18454 r!17423))))

(assert (=> d!838087 (= (lemmaSimplifySound!6 (regOne!18454 r!17423) (_1!19972 lt!1024557)) lt!1024654)))

(declare-fun bs!524790 () Bool)

(assert (= bs!524790 d!838087))

(assert (=> bs!524790 m!3314603))

(declare-fun m!3314665 () Bool)

(assert (=> bs!524790 m!3314665))

(assert (=> bs!524790 m!3314389))

(assert (=> bs!524790 m!3314365))

(assert (=> bs!524790 m!3314389))

(declare-fun m!3314667 () Bool)

(assert (=> bs!524790 m!3314667))

(assert (=> b!2915187 d!838087))

(declare-fun b!2915796 () Bool)

(declare-fun e!1839985 () Bool)

(declare-fun lt!1024655 () Bool)

(declare-fun call!190511 () Bool)

(assert (=> b!2915796 (= e!1839985 (= lt!1024655 call!190511))))

(declare-fun b!2915797 () Bool)

(declare-fun e!1839984 () Bool)

(declare-fun e!1839983 () Bool)

(assert (=> b!2915797 (= e!1839984 e!1839983)))

(declare-fun res!1203733 () Bool)

(assert (=> b!2915797 (=> res!1203733 e!1839983)))

(assert (=> b!2915797 (= res!1203733 call!190511)))

(declare-fun b!2915798 () Bool)

(declare-fun res!1203728 () Bool)

(declare-fun e!1839982 () Bool)

(assert (=> b!2915798 (=> (not res!1203728) (not e!1839982))))

(assert (=> b!2915798 (= res!1203728 (not call!190511))))

(declare-fun b!2915799 () Bool)

(declare-fun res!1203731 () Bool)

(declare-fun e!1839979 () Bool)

(assert (=> b!2915799 (=> res!1203731 e!1839979)))

(assert (=> b!2915799 (= res!1203731 e!1839982)))

(declare-fun res!1203730 () Bool)

(assert (=> b!2915799 (=> (not res!1203730) (not e!1839982))))

(assert (=> b!2915799 (= res!1203730 lt!1024655)))

(declare-fun b!2915800 () Bool)

(assert (=> b!2915800 (= e!1839983 (not (= (head!6478 (_2!19972 lt!1024557)) (c!475387 (regTwo!18454 r!17423)))))))

(declare-fun b!2915801 () Bool)

(assert (=> b!2915801 (= e!1839982 (= (head!6478 (_2!19972 lt!1024557)) (c!475387 (regTwo!18454 r!17423))))))

(declare-fun b!2915802 () Bool)

(declare-fun e!1839980 () Bool)

(assert (=> b!2915802 (= e!1839980 (nullable!2805 (regTwo!18454 r!17423)))))

(declare-fun b!2915803 () Bool)

(declare-fun res!1203729 () Bool)

(assert (=> b!2915803 (=> res!1203729 e!1839983)))

(assert (=> b!2915803 (= res!1203729 (not (isEmpty!18963 (tail!4704 (_2!19972 lt!1024557)))))))

(declare-fun b!2915804 () Bool)

(declare-fun res!1203735 () Bool)

(assert (=> b!2915804 (=> (not res!1203735) (not e!1839982))))

(assert (=> b!2915804 (= res!1203735 (isEmpty!18963 (tail!4704 (_2!19972 lt!1024557))))))

(declare-fun b!2915805 () Bool)

(declare-fun res!1203734 () Bool)

(assert (=> b!2915805 (=> res!1203734 e!1839979)))

(assert (=> b!2915805 (= res!1203734 (not ((_ is ElementMatch!8971) (regTwo!18454 r!17423))))))

(declare-fun e!1839981 () Bool)

(assert (=> b!2915805 (= e!1839981 e!1839979)))

(declare-fun b!2915806 () Bool)

(assert (=> b!2915806 (= e!1839980 (matchR!3853 (derivativeStep!2419 (regTwo!18454 r!17423) (head!6478 (_2!19972 lt!1024557))) (tail!4704 (_2!19972 lt!1024557))))))

(declare-fun bm!190506 () Bool)

(assert (=> bm!190506 (= call!190511 (isEmpty!18963 (_2!19972 lt!1024557)))))

(declare-fun b!2915807 () Bool)

(assert (=> b!2915807 (= e!1839981 (not lt!1024655))))

(declare-fun d!838089 () Bool)

(assert (=> d!838089 e!1839985))

(declare-fun c!475558 () Bool)

(assert (=> d!838089 (= c!475558 ((_ is EmptyExpr!8971) (regTwo!18454 r!17423)))))

(assert (=> d!838089 (= lt!1024655 e!1839980)))

(declare-fun c!475560 () Bool)

(assert (=> d!838089 (= c!475560 (isEmpty!18963 (_2!19972 lt!1024557)))))

(assert (=> d!838089 (validRegex!3704 (regTwo!18454 r!17423))))

(assert (=> d!838089 (= (matchR!3853 (regTwo!18454 r!17423) (_2!19972 lt!1024557)) lt!1024655)))

(declare-fun b!2915808 () Bool)

(assert (=> b!2915808 (= e!1839985 e!1839981)))

(declare-fun c!475559 () Bool)

(assert (=> b!2915808 (= c!475559 ((_ is EmptyLang!8971) (regTwo!18454 r!17423)))))

(declare-fun b!2915809 () Bool)

(assert (=> b!2915809 (= e!1839979 e!1839984)))

(declare-fun res!1203732 () Bool)

(assert (=> b!2915809 (=> (not res!1203732) (not e!1839984))))

(assert (=> b!2915809 (= res!1203732 (not lt!1024655))))

(assert (= (and d!838089 c!475560) b!2915802))

(assert (= (and d!838089 (not c!475560)) b!2915806))

(assert (= (and d!838089 c!475558) b!2915796))

(assert (= (and d!838089 (not c!475558)) b!2915808))

(assert (= (and b!2915808 c!475559) b!2915807))

(assert (= (and b!2915808 (not c!475559)) b!2915805))

(assert (= (and b!2915805 (not res!1203734)) b!2915799))

(assert (= (and b!2915799 res!1203730) b!2915798))

(assert (= (and b!2915798 res!1203728) b!2915804))

(assert (= (and b!2915804 res!1203735) b!2915801))

(assert (= (and b!2915799 (not res!1203731)) b!2915809))

(assert (= (and b!2915809 res!1203732) b!2915797))

(assert (= (and b!2915797 (not res!1203733)) b!2915803))

(assert (= (and b!2915803 (not res!1203729)) b!2915800))

(assert (= (or b!2915796 b!2915797 b!2915798) bm!190506))

(assert (=> b!2915802 m!3314649))

(assert (=> b!2915801 m!3314623))

(assert (=> b!2915804 m!3314625))

(assert (=> b!2915804 m!3314625))

(assert (=> b!2915804 m!3314627))

(assert (=> b!2915800 m!3314623))

(assert (=> b!2915806 m!3314623))

(assert (=> b!2915806 m!3314623))

(declare-fun m!3314669 () Bool)

(assert (=> b!2915806 m!3314669))

(assert (=> b!2915806 m!3314625))

(assert (=> b!2915806 m!3314669))

(assert (=> b!2915806 m!3314625))

(declare-fun m!3314671 () Bool)

(assert (=> b!2915806 m!3314671))

(assert (=> bm!190506 m!3314633))

(assert (=> d!838089 m!3314633))

(assert (=> d!838089 m!3314643))

(assert (=> b!2915803 m!3314625))

(assert (=> b!2915803 m!3314625))

(assert (=> b!2915803 m!3314627))

(assert (=> b!2915182 d!838089))

(declare-fun d!838091 () Bool)

(declare-fun isEmpty!18965 (Option!6572) Bool)

(assert (=> d!838091 (= (isDefined!5123 lt!1024560) (not (isEmpty!18965 lt!1024560)))))

(declare-fun bs!524791 () Bool)

(assert (= bs!524791 d!838091))

(declare-fun m!3314673 () Bool)

(assert (=> bs!524791 m!3314673))

(assert (=> b!2915184 d!838091))

(declare-fun d!838093 () Bool)

(declare-fun choose!17169 (Int) Bool)

(assert (=> d!838093 (= (Exists!1351 lambda!108406) (choose!17169 lambda!108406))))

(declare-fun bs!524792 () Bool)

(assert (= bs!524792 d!838093))

(declare-fun m!3314675 () Bool)

(assert (=> bs!524792 m!3314675))

(assert (=> b!2915184 d!838093))

(declare-fun d!838095 () Bool)

(assert (=> d!838095 (= (get!10558 lt!1024560) (v!34705 lt!1024560))))

(assert (=> b!2915184 d!838095))

(declare-fun d!838097 () Bool)

(assert (=> d!838097 (= (Exists!1351 lambda!108405) (choose!17169 lambda!108405))))

(declare-fun bs!524793 () Bool)

(assert (= bs!524793 d!838097))

(declare-fun m!3314677 () Bool)

(assert (=> bs!524793 m!3314677))

(assert (=> b!2915184 d!838097))

(declare-fun b!2915810 () Bool)

(declare-fun e!1839992 () Bool)

(declare-fun lt!1024656 () Bool)

(declare-fun call!190512 () Bool)

(assert (=> b!2915810 (= e!1839992 (= lt!1024656 call!190512))))

(declare-fun b!2915811 () Bool)

(declare-fun e!1839991 () Bool)

(declare-fun e!1839990 () Bool)

(assert (=> b!2915811 (= e!1839991 e!1839990)))

(declare-fun res!1203741 () Bool)

(assert (=> b!2915811 (=> res!1203741 e!1839990)))

(assert (=> b!2915811 (= res!1203741 call!190512)))

(declare-fun b!2915812 () Bool)

(declare-fun res!1203736 () Bool)

(declare-fun e!1839989 () Bool)

(assert (=> b!2915812 (=> (not res!1203736) (not e!1839989))))

(assert (=> b!2915812 (= res!1203736 (not call!190512))))

(declare-fun b!2915813 () Bool)

(declare-fun res!1203739 () Bool)

(declare-fun e!1839986 () Bool)

(assert (=> b!2915813 (=> res!1203739 e!1839986)))

(assert (=> b!2915813 (= res!1203739 e!1839989)))

(declare-fun res!1203738 () Bool)

(assert (=> b!2915813 (=> (not res!1203738) (not e!1839989))))

(assert (=> b!2915813 (= res!1203738 lt!1024656)))

(declare-fun b!2915814 () Bool)

(assert (=> b!2915814 (= e!1839990 (not (= (head!6478 (_1!19972 lt!1024557)) (c!475387 (regOne!18454 r!17423)))))))

(declare-fun b!2915815 () Bool)

(assert (=> b!2915815 (= e!1839989 (= (head!6478 (_1!19972 lt!1024557)) (c!475387 (regOne!18454 r!17423))))))

(declare-fun b!2915816 () Bool)

(declare-fun e!1839987 () Bool)

(assert (=> b!2915816 (= e!1839987 (nullable!2805 (regOne!18454 r!17423)))))

(declare-fun b!2915817 () Bool)

(declare-fun res!1203737 () Bool)

(assert (=> b!2915817 (=> res!1203737 e!1839990)))

(assert (=> b!2915817 (= res!1203737 (not (isEmpty!18963 (tail!4704 (_1!19972 lt!1024557)))))))

(declare-fun b!2915818 () Bool)

(declare-fun res!1203743 () Bool)

(assert (=> b!2915818 (=> (not res!1203743) (not e!1839989))))

(assert (=> b!2915818 (= res!1203743 (isEmpty!18963 (tail!4704 (_1!19972 lt!1024557))))))

(declare-fun b!2915819 () Bool)

(declare-fun res!1203742 () Bool)

(assert (=> b!2915819 (=> res!1203742 e!1839986)))

(assert (=> b!2915819 (= res!1203742 (not ((_ is ElementMatch!8971) (regOne!18454 r!17423))))))

(declare-fun e!1839988 () Bool)

(assert (=> b!2915819 (= e!1839988 e!1839986)))

(declare-fun b!2915820 () Bool)

(assert (=> b!2915820 (= e!1839987 (matchR!3853 (derivativeStep!2419 (regOne!18454 r!17423) (head!6478 (_1!19972 lt!1024557))) (tail!4704 (_1!19972 lt!1024557))))))

(declare-fun bm!190507 () Bool)

(assert (=> bm!190507 (= call!190512 (isEmpty!18963 (_1!19972 lt!1024557)))))

(declare-fun b!2915821 () Bool)

(assert (=> b!2915821 (= e!1839988 (not lt!1024656))))

(declare-fun d!838099 () Bool)

(assert (=> d!838099 e!1839992))

(declare-fun c!475561 () Bool)

(assert (=> d!838099 (= c!475561 ((_ is EmptyExpr!8971) (regOne!18454 r!17423)))))

(assert (=> d!838099 (= lt!1024656 e!1839987)))

(declare-fun c!475563 () Bool)

(assert (=> d!838099 (= c!475563 (isEmpty!18963 (_1!19972 lt!1024557)))))

(assert (=> d!838099 (validRegex!3704 (regOne!18454 r!17423))))

(assert (=> d!838099 (= (matchR!3853 (regOne!18454 r!17423) (_1!19972 lt!1024557)) lt!1024656)))

(declare-fun b!2915822 () Bool)

(assert (=> b!2915822 (= e!1839992 e!1839988)))

(declare-fun c!475562 () Bool)

(assert (=> b!2915822 (= c!475562 ((_ is EmptyLang!8971) (regOne!18454 r!17423)))))

(declare-fun b!2915823 () Bool)

(assert (=> b!2915823 (= e!1839986 e!1839991)))

(declare-fun res!1203740 () Bool)

(assert (=> b!2915823 (=> (not res!1203740) (not e!1839991))))

(assert (=> b!2915823 (= res!1203740 (not lt!1024656))))

(assert (= (and d!838099 c!475563) b!2915816))

(assert (= (and d!838099 (not c!475563)) b!2915820))

(assert (= (and d!838099 c!475561) b!2915810))

(assert (= (and d!838099 (not c!475561)) b!2915822))

(assert (= (and b!2915822 c!475562) b!2915821))

(assert (= (and b!2915822 (not c!475562)) b!2915819))

(assert (= (and b!2915819 (not res!1203742)) b!2915813))

(assert (= (and b!2915813 res!1203738) b!2915812))

(assert (= (and b!2915812 res!1203736) b!2915818))

(assert (= (and b!2915818 res!1203743) b!2915815))

(assert (= (and b!2915813 (not res!1203739)) b!2915823))

(assert (= (and b!2915823 res!1203740) b!2915811))

(assert (= (and b!2915811 (not res!1203741)) b!2915817))

(assert (= (and b!2915817 (not res!1203737)) b!2915814))

(assert (= (or b!2915810 b!2915811 b!2915812) bm!190507))

(assert (=> b!2915816 m!3314589))

(assert (=> b!2915815 m!3314609))

(assert (=> b!2915818 m!3314611))

(assert (=> b!2915818 m!3314611))

(assert (=> b!2915818 m!3314613))

(assert (=> b!2915814 m!3314609))

(assert (=> b!2915820 m!3314609))

(assert (=> b!2915820 m!3314609))

(declare-fun m!3314679 () Bool)

(assert (=> b!2915820 m!3314679))

(assert (=> b!2915820 m!3314611))

(assert (=> b!2915820 m!3314679))

(assert (=> b!2915820 m!3314611))

(declare-fun m!3314681 () Bool)

(assert (=> b!2915820 m!3314681))

(assert (=> bm!190507 m!3314619))

(assert (=> d!838099 m!3314619))

(assert (=> d!838099 m!3314603))

(assert (=> b!2915817 m!3314611))

(assert (=> b!2915817 m!3314611))

(assert (=> b!2915817 m!3314613))

(assert (=> b!2915184 d!838099))

(declare-fun bs!524794 () Bool)

(declare-fun d!838101 () Bool)

(assert (= bs!524794 (and d!838101 b!2915184)))

(declare-fun lambda!108432 () Int)

(assert (=> bs!524794 (= lambda!108432 lambda!108405)))

(assert (=> bs!524794 (not (= lambda!108432 lambda!108406))))

(declare-fun bs!524795 () Bool)

(assert (= bs!524795 (and d!838101 b!2915421)))

(assert (=> bs!524795 (not (= lambda!108432 lambda!108411))))

(declare-fun bs!524796 () Bool)

(assert (= bs!524796 (and d!838101 b!2915418)))

(assert (=> bs!524796 (not (= lambda!108432 lambda!108412))))

(assert (=> d!838101 true))

(assert (=> d!838101 true))

(assert (=> d!838101 true))

(declare-fun lambda!108433 () Int)

(assert (=> bs!524794 (= lambda!108433 lambda!108406)))

(assert (=> bs!524795 (not (= lambda!108433 lambda!108411))))

(assert (=> bs!524796 (= lambda!108433 lambda!108412)))

(assert (=> bs!524794 (not (= lambda!108433 lambda!108405))))

(declare-fun bs!524797 () Bool)

(assert (= bs!524797 d!838101))

(assert (=> bs!524797 (not (= lambda!108433 lambda!108432))))

(assert (=> d!838101 true))

(assert (=> d!838101 true))

(assert (=> d!838101 true))

(assert (=> d!838101 (= (Exists!1351 lambda!108432) (Exists!1351 lambda!108433))))

(declare-fun lt!1024659 () Unit!48281)

(declare-fun choose!17170 (Regex!8971 Regex!8971 List!34836) Unit!48281)

(assert (=> d!838101 (= lt!1024659 (choose!17170 (regOne!18454 r!17423) (regTwo!18454 r!17423) s!11993))))

(assert (=> d!838101 (validRegex!3704 (regOne!18454 r!17423))))

(assert (=> d!838101 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!492 (regOne!18454 r!17423) (regTwo!18454 r!17423) s!11993) lt!1024659)))

(declare-fun m!3314683 () Bool)

(assert (=> bs!524797 m!3314683))

(declare-fun m!3314685 () Bool)

(assert (=> bs!524797 m!3314685))

(declare-fun m!3314687 () Bool)

(assert (=> bs!524797 m!3314687))

(assert (=> bs!524797 m!3314603))

(assert (=> b!2915184 d!838101))

(declare-fun b!2915850 () Bool)

(declare-fun e!1840009 () Option!6572)

(declare-fun e!1840008 () Option!6572)

(assert (=> b!2915850 (= e!1840009 e!1840008)))

(declare-fun c!475568 () Bool)

(assert (=> b!2915850 (= c!475568 ((_ is Nil!34712) s!11993))))

(declare-fun b!2915851 () Bool)

(declare-fun e!1840010 () Bool)

(declare-fun lt!1024667 () Option!6572)

(assert (=> b!2915851 (= e!1840010 (not (isDefined!5123 lt!1024667)))))

(declare-fun b!2915852 () Bool)

(declare-fun lt!1024666 () Unit!48281)

(declare-fun lt!1024668 () Unit!48281)

(assert (=> b!2915852 (= lt!1024666 lt!1024668)))

(declare-fun ++!8279 (List!34836 List!34836) List!34836)

(assert (=> b!2915852 (= (++!8279 (++!8279 Nil!34712 (Cons!34712 (h!40132 s!11993) Nil!34712)) (t!233901 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!915 (List!34836 C!18128 List!34836 List!34836) Unit!48281)

(assert (=> b!2915852 (= lt!1024668 (lemmaMoveElementToOtherListKeepsConcatEq!915 Nil!34712 (h!40132 s!11993) (t!233901 s!11993) s!11993))))

(assert (=> b!2915852 (= e!1840008 (findConcatSeparation!966 (regOne!18454 r!17423) (regTwo!18454 r!17423) (++!8279 Nil!34712 (Cons!34712 (h!40132 s!11993) Nil!34712)) (t!233901 s!11993) s!11993))))

(declare-fun d!838103 () Bool)

(assert (=> d!838103 e!1840010))

(declare-fun res!1203762 () Bool)

(assert (=> d!838103 (=> res!1203762 e!1840010)))

(declare-fun e!1840011 () Bool)

(assert (=> d!838103 (= res!1203762 e!1840011)))

(declare-fun res!1203764 () Bool)

(assert (=> d!838103 (=> (not res!1203764) (not e!1840011))))

(assert (=> d!838103 (= res!1203764 (isDefined!5123 lt!1024667))))

(assert (=> d!838103 (= lt!1024667 e!1840009)))

(declare-fun c!475569 () Bool)

(declare-fun e!1840007 () Bool)

(assert (=> d!838103 (= c!475569 e!1840007)))

(declare-fun res!1203763 () Bool)

(assert (=> d!838103 (=> (not res!1203763) (not e!1840007))))

(assert (=> d!838103 (= res!1203763 (matchR!3853 (regOne!18454 r!17423) Nil!34712))))

(assert (=> d!838103 (validRegex!3704 (regOne!18454 r!17423))))

(assert (=> d!838103 (= (findConcatSeparation!966 (regOne!18454 r!17423) (regTwo!18454 r!17423) Nil!34712 s!11993 s!11993) lt!1024667)))

(declare-fun b!2915853 () Bool)

(declare-fun res!1203765 () Bool)

(assert (=> b!2915853 (=> (not res!1203765) (not e!1840011))))

(assert (=> b!2915853 (= res!1203765 (matchR!3853 (regTwo!18454 r!17423) (_2!19972 (get!10558 lt!1024667))))))

(declare-fun b!2915854 () Bool)

(assert (=> b!2915854 (= e!1840008 None!6571)))

(declare-fun b!2915855 () Bool)

(declare-fun res!1203766 () Bool)

(assert (=> b!2915855 (=> (not res!1203766) (not e!1840011))))

(assert (=> b!2915855 (= res!1203766 (matchR!3853 (regOne!18454 r!17423) (_1!19972 (get!10558 lt!1024667))))))

(declare-fun b!2915856 () Bool)

(assert (=> b!2915856 (= e!1840007 (matchR!3853 (regTwo!18454 r!17423) s!11993))))

(declare-fun b!2915857 () Bool)

(assert (=> b!2915857 (= e!1840011 (= (++!8279 (_1!19972 (get!10558 lt!1024667)) (_2!19972 (get!10558 lt!1024667))) s!11993))))

(declare-fun b!2915858 () Bool)

(assert (=> b!2915858 (= e!1840009 (Some!6571 (tuple2!33681 Nil!34712 s!11993)))))

(assert (= (and d!838103 res!1203763) b!2915856))

(assert (= (and d!838103 c!475569) b!2915858))

(assert (= (and d!838103 (not c!475569)) b!2915850))

(assert (= (and b!2915850 c!475568) b!2915854))

(assert (= (and b!2915850 (not c!475568)) b!2915852))

(assert (= (and d!838103 res!1203764) b!2915855))

(assert (= (and b!2915855 res!1203766) b!2915853))

(assert (= (and b!2915853 res!1203765) b!2915857))

(assert (= (and d!838103 (not res!1203762)) b!2915851))

(declare-fun m!3314689 () Bool)

(assert (=> b!2915853 m!3314689))

(declare-fun m!3314691 () Bool)

(assert (=> b!2915853 m!3314691))

(declare-fun m!3314693 () Bool)

(assert (=> d!838103 m!3314693))

(declare-fun m!3314695 () Bool)

(assert (=> d!838103 m!3314695))

(assert (=> d!838103 m!3314603))

(assert (=> b!2915855 m!3314689))

(declare-fun m!3314697 () Bool)

(assert (=> b!2915855 m!3314697))

(assert (=> b!2915857 m!3314689))

(declare-fun m!3314699 () Bool)

(assert (=> b!2915857 m!3314699))

(declare-fun m!3314701 () Bool)

(assert (=> b!2915856 m!3314701))

(assert (=> b!2915851 m!3314693))

(declare-fun m!3314703 () Bool)

(assert (=> b!2915852 m!3314703))

(assert (=> b!2915852 m!3314703))

(declare-fun m!3314705 () Bool)

(assert (=> b!2915852 m!3314705))

(declare-fun m!3314707 () Bool)

(assert (=> b!2915852 m!3314707))

(assert (=> b!2915852 m!3314703))

(declare-fun m!3314709 () Bool)

(assert (=> b!2915852 m!3314709))

(assert (=> b!2915184 d!838103))

(declare-fun bs!524798 () Bool)

(declare-fun d!838105 () Bool)

(assert (= bs!524798 (and d!838105 b!2915184)))

(declare-fun lambda!108436 () Int)

(assert (=> bs!524798 (not (= lambda!108436 lambda!108406))))

(declare-fun bs!524799 () Bool)

(assert (= bs!524799 (and d!838105 b!2915421)))

(assert (=> bs!524799 (not (= lambda!108436 lambda!108411))))

(declare-fun bs!524800 () Bool)

(assert (= bs!524800 (and d!838105 d!838101)))

(assert (=> bs!524800 (not (= lambda!108436 lambda!108433))))

(declare-fun bs!524801 () Bool)

(assert (= bs!524801 (and d!838105 b!2915418)))

(assert (=> bs!524801 (not (= lambda!108436 lambda!108412))))

(assert (=> bs!524798 (= lambda!108436 lambda!108405)))

(assert (=> bs!524800 (= lambda!108436 lambda!108432)))

(assert (=> d!838105 true))

(assert (=> d!838105 true))

(assert (=> d!838105 true))

(assert (=> d!838105 (= (isDefined!5123 (findConcatSeparation!966 (regOne!18454 r!17423) (regTwo!18454 r!17423) Nil!34712 s!11993 s!11993)) (Exists!1351 lambda!108436))))

(declare-fun lt!1024671 () Unit!48281)

(declare-fun choose!17171 (Regex!8971 Regex!8971 List!34836) Unit!48281)

(assert (=> d!838105 (= lt!1024671 (choose!17171 (regOne!18454 r!17423) (regTwo!18454 r!17423) s!11993))))

(assert (=> d!838105 (validRegex!3704 (regOne!18454 r!17423))))

(assert (=> d!838105 (= (lemmaFindConcatSeparationEquivalentToExists!748 (regOne!18454 r!17423) (regTwo!18454 r!17423) s!11993) lt!1024671)))

(declare-fun bs!524802 () Bool)

(assert (= bs!524802 d!838105))

(assert (=> bs!524802 m!3314369))

(assert (=> bs!524802 m!3314369))

(declare-fun m!3314711 () Bool)

(assert (=> bs!524802 m!3314711))

(assert (=> bs!524802 m!3314603))

(declare-fun m!3314713 () Bool)

(assert (=> bs!524802 m!3314713))

(declare-fun m!3314715 () Bool)

(assert (=> bs!524802 m!3314715))

(assert (=> b!2915184 d!838105))

(declare-fun b!2915873 () Bool)

(declare-fun e!1840016 () Bool)

(assert (=> b!2915873 (= e!1840016 tp_is_empty!15505)))

(declare-fun b!2915874 () Bool)

(declare-fun tp!936322 () Bool)

(declare-fun tp!936321 () Bool)

(assert (=> b!2915874 (= e!1840016 (and tp!936322 tp!936321))))

(assert (=> b!2915191 (= tp!936268 e!1840016)))

(declare-fun b!2915875 () Bool)

(declare-fun tp!936319 () Bool)

(assert (=> b!2915875 (= e!1840016 tp!936319)))

(declare-fun b!2915876 () Bool)

(declare-fun tp!936318 () Bool)

(declare-fun tp!936320 () Bool)

(assert (=> b!2915876 (= e!1840016 (and tp!936318 tp!936320))))

(assert (= (and b!2915191 ((_ is ElementMatch!8971) (reg!9300 r!17423))) b!2915873))

(assert (= (and b!2915191 ((_ is Concat!14292) (reg!9300 r!17423))) b!2915874))

(assert (= (and b!2915191 ((_ is Star!8971) (reg!9300 r!17423))) b!2915875))

(assert (= (and b!2915191 ((_ is Union!8971) (reg!9300 r!17423))) b!2915876))

(declare-fun b!2915877 () Bool)

(declare-fun e!1840017 () Bool)

(assert (=> b!2915877 (= e!1840017 tp_is_empty!15505)))

(declare-fun b!2915878 () Bool)

(declare-fun tp!936327 () Bool)

(declare-fun tp!936326 () Bool)

(assert (=> b!2915878 (= e!1840017 (and tp!936327 tp!936326))))

(assert (=> b!2915186 (= tp!936264 e!1840017)))

(declare-fun b!2915879 () Bool)

(declare-fun tp!936324 () Bool)

(assert (=> b!2915879 (= e!1840017 tp!936324)))

(declare-fun b!2915880 () Bool)

(declare-fun tp!936323 () Bool)

(declare-fun tp!936325 () Bool)

(assert (=> b!2915880 (= e!1840017 (and tp!936323 tp!936325))))

(assert (= (and b!2915186 ((_ is ElementMatch!8971) (regOne!18455 r!17423))) b!2915877))

(assert (= (and b!2915186 ((_ is Concat!14292) (regOne!18455 r!17423))) b!2915878))

(assert (= (and b!2915186 ((_ is Star!8971) (regOne!18455 r!17423))) b!2915879))

(assert (= (and b!2915186 ((_ is Union!8971) (regOne!18455 r!17423))) b!2915880))

(declare-fun b!2915881 () Bool)

(declare-fun e!1840018 () Bool)

(assert (=> b!2915881 (= e!1840018 tp_is_empty!15505)))

(declare-fun b!2915882 () Bool)

(declare-fun tp!936332 () Bool)

(declare-fun tp!936331 () Bool)

(assert (=> b!2915882 (= e!1840018 (and tp!936332 tp!936331))))

(assert (=> b!2915186 (= tp!936265 e!1840018)))

(declare-fun b!2915883 () Bool)

(declare-fun tp!936329 () Bool)

(assert (=> b!2915883 (= e!1840018 tp!936329)))

(declare-fun b!2915884 () Bool)

(declare-fun tp!936328 () Bool)

(declare-fun tp!936330 () Bool)

(assert (=> b!2915884 (= e!1840018 (and tp!936328 tp!936330))))

(assert (= (and b!2915186 ((_ is ElementMatch!8971) (regTwo!18455 r!17423))) b!2915881))

(assert (= (and b!2915186 ((_ is Concat!14292) (regTwo!18455 r!17423))) b!2915882))

(assert (= (and b!2915186 ((_ is Star!8971) (regTwo!18455 r!17423))) b!2915883))

(assert (= (and b!2915186 ((_ is Union!8971) (regTwo!18455 r!17423))) b!2915884))

(declare-fun b!2915889 () Bool)

(declare-fun e!1840021 () Bool)

(declare-fun tp!936335 () Bool)

(assert (=> b!2915889 (= e!1840021 (and tp_is_empty!15505 tp!936335))))

(assert (=> b!2915185 (= tp!936269 e!1840021)))

(assert (= (and b!2915185 ((_ is Cons!34712) (t!233901 s!11993))) b!2915889))

(declare-fun b!2915890 () Bool)

(declare-fun e!1840022 () Bool)

(assert (=> b!2915890 (= e!1840022 tp_is_empty!15505)))

(declare-fun b!2915891 () Bool)

(declare-fun tp!936340 () Bool)

(declare-fun tp!936339 () Bool)

(assert (=> b!2915891 (= e!1840022 (and tp!936340 tp!936339))))

(assert (=> b!2915190 (= tp!936267 e!1840022)))

(declare-fun b!2915892 () Bool)

(declare-fun tp!936337 () Bool)

(assert (=> b!2915892 (= e!1840022 tp!936337)))

(declare-fun b!2915893 () Bool)

(declare-fun tp!936336 () Bool)

(declare-fun tp!936338 () Bool)

(assert (=> b!2915893 (= e!1840022 (and tp!936336 tp!936338))))

(assert (= (and b!2915190 ((_ is ElementMatch!8971) (regOne!18454 r!17423))) b!2915890))

(assert (= (and b!2915190 ((_ is Concat!14292) (regOne!18454 r!17423))) b!2915891))

(assert (= (and b!2915190 ((_ is Star!8971) (regOne!18454 r!17423))) b!2915892))

(assert (= (and b!2915190 ((_ is Union!8971) (regOne!18454 r!17423))) b!2915893))

(declare-fun b!2915894 () Bool)

(declare-fun e!1840023 () Bool)

(assert (=> b!2915894 (= e!1840023 tp_is_empty!15505)))

(declare-fun b!2915895 () Bool)

(declare-fun tp!936345 () Bool)

(declare-fun tp!936344 () Bool)

(assert (=> b!2915895 (= e!1840023 (and tp!936345 tp!936344))))

(assert (=> b!2915190 (= tp!936266 e!1840023)))

(declare-fun b!2915896 () Bool)

(declare-fun tp!936342 () Bool)

(assert (=> b!2915896 (= e!1840023 tp!936342)))

(declare-fun b!2915897 () Bool)

(declare-fun tp!936341 () Bool)

(declare-fun tp!936343 () Bool)

(assert (=> b!2915897 (= e!1840023 (and tp!936341 tp!936343))))

(assert (= (and b!2915190 ((_ is ElementMatch!8971) (regTwo!18454 r!17423))) b!2915894))

(assert (= (and b!2915190 ((_ is Concat!14292) (regTwo!18454 r!17423))) b!2915895))

(assert (= (and b!2915190 ((_ is Star!8971) (regTwo!18454 r!17423))) b!2915896))

(assert (= (and b!2915190 ((_ is Union!8971) (regTwo!18454 r!17423))) b!2915897))

(check-sat (not b!2915758) (not b!2915892) (not b!2915526) (not b!2915897) (not b!2915806) (not b!2915889) (not b!2915814) (not b!2915762) (not b!2915740) (not d!838105) (not b!2915738) (not b!2915893) (not bm!190448) (not b!2915816) (not bm!190461) (not bm!190492) (not b!2915753) (not bm!190489) (not b!2915874) (not b!2915739) (not bm!190447) (not b!2915711) tp_is_empty!15505 (not b!2915773) (not b!2915597) (not b!2915756) (not b!2915524) (not b!2915855) (not b!2915884) (not d!838059) (not b!2915882) (not b!2915818) (not bm!190488) (not b!2915744) (not bm!190497) (not bm!190503) (not d!838103) (not bm!190496) (not b!2915523) (not b!2915851) (not b!2915878) (not b!2915879) (not bm!190502) (not d!838101) (not d!838087) (not bm!190494) (not d!838099) (not b!2915804) (not b!2915742) (not b!2915815) (not b!2915800) (not b!2915521) (not b!2915876) (not d!838077) (not b!2915755) (not b!2915709) (not d!838079) (not b!2915803) (not bm!190495) (not b!2915856) (not b!2915771) (not d!838085) (not b!2915880) (not d!838047) (not b!2915883) (not b!2915752) (not b!2915802) (not bm!190506) (not b!2915891) (not b!2915520) (not d!838091) (not b!2915857) (not b!2915754) (not b!2915895) (not bm!190507) (not bm!190500) (not bm!190469) (not b!2915417) (not d!838093) (not b!2915896) (not bm!190490) (not b!2915522) (not bm!190470) (not d!838083) (not b!2915817) (not b!2915420) (not b!2915852) (not b!2915741) (not d!838089) (not bm!190491) (not b!2915853) (not d!838097) (not b!2915875) (not bm!190501) (not d!838073) (not bm!190504) (not b!2915820) (not b!2915801))
(check-sat)
