; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45760 () Bool)

(assert start!45760)

(declare-fun res!211793 () Bool)

(declare-fun e!292252 () Bool)

(assert (=> start!45760 (=> (not res!211793) (not e!292252))))

(declare-datatypes ((C!3252 0))(
  ( (C!3253 (val!1612 Int)) )
))
(declare-datatypes ((Regex!1165 0))(
  ( (ElementMatch!1165 (c!95898 C!3252)) (Concat!2065 (regOne!2842 Regex!1165) (regTwo!2842 Regex!1165)) (EmptyExpr!1165) (Star!1165 (reg!1494 Regex!1165)) (EmptyLang!1165) (Union!1165 (regOne!2843 Regex!1165) (regTwo!2843 Regex!1165)) )
))
(declare-fun r!20230 () Regex!1165)

(declare-fun validRegex!393 (Regex!1165) Bool)

(assert (=> start!45760 (= res!211793 (validRegex!393 r!20230))))

(assert (=> start!45760 e!292252))

(declare-fun e!292251 () Bool)

(assert (=> start!45760 e!292251))

(declare-fun b!479391 () Bool)

(declare-fun res!211794 () Bool)

(assert (=> b!479391 (=> (not res!211794) (not e!292252))))

(declare-fun lostCause!159 (Regex!1165) Bool)

(assert (=> b!479391 (= res!211794 (lostCause!159 r!20230))))

(declare-fun b!479392 () Bool)

(declare-fun res!211796 () Bool)

(assert (=> b!479392 (=> (not res!211796) (not e!292252))))

(get-info :version)

(assert (=> b!479392 (= res!211796 (and (not ((_ is EmptyLang!1165) r!20230)) (not ((_ is EmptyExpr!1165) r!20230)) (not ((_ is ElementMatch!1165) r!20230)) (not ((_ is Union!1165) r!20230)) (not ((_ is Star!1165) r!20230))))))

(declare-fun b!479393 () Bool)

(declare-fun e!292253 () Bool)

(assert (=> b!479393 (= e!292253 (lostCause!159 (regTwo!2842 r!20230)))))

(declare-fun b!479394 () Bool)

(declare-fun tp!134468 () Bool)

(assert (=> b!479394 (= e!292251 tp!134468)))

(declare-fun b!479395 () Bool)

(declare-fun tp!134467 () Bool)

(declare-fun tp!134471 () Bool)

(assert (=> b!479395 (= e!292251 (and tp!134467 tp!134471))))

(declare-fun b!479396 () Bool)

(declare-fun res!211792 () Bool)

(assert (=> b!479396 (=> (not res!211792) (not e!292252))))

(declare-fun nullable!300 (Regex!1165) Bool)

(assert (=> b!479396 (= res!211792 (nullable!300 (regOne!2842 r!20230)))))

(declare-fun b!479397 () Bool)

(assert (=> b!479397 (= e!292252 (not (validRegex!393 (regOne!2842 r!20230))))))

(declare-fun b!479398 () Bool)

(declare-fun tp!134469 () Bool)

(declare-fun tp!134470 () Bool)

(assert (=> b!479398 (= e!292251 (and tp!134469 tp!134470))))

(declare-fun b!479399 () Bool)

(declare-fun res!211797 () Bool)

(assert (=> b!479399 (=> (not res!211797) (not e!292252))))

(assert (=> b!479399 (= res!211797 e!292253)))

(declare-fun res!211795 () Bool)

(assert (=> b!479399 (=> res!211795 e!292253)))

(assert (=> b!479399 (= res!211795 (lostCause!159 (regOne!2842 r!20230)))))

(declare-fun b!479400 () Bool)

(declare-fun tp_is_empty!2327 () Bool)

(assert (=> b!479400 (= e!292251 tp_is_empty!2327)))

(assert (= (and start!45760 res!211793) b!479391))

(assert (= (and b!479391 res!211794) b!479392))

(assert (= (and b!479392 res!211796) b!479399))

(assert (= (and b!479399 (not res!211795)) b!479393))

(assert (= (and b!479399 res!211797) b!479396))

(assert (= (and b!479396 res!211792) b!479397))

(assert (= (and start!45760 ((_ is ElementMatch!1165) r!20230)) b!479400))

(assert (= (and start!45760 ((_ is Concat!2065) r!20230)) b!479395))

(assert (= (and start!45760 ((_ is Star!1165) r!20230)) b!479394))

(assert (= (and start!45760 ((_ is Union!1165) r!20230)) b!479398))

(declare-fun m!748655 () Bool)

(assert (=> b!479397 m!748655))

(declare-fun m!748657 () Bool)

(assert (=> b!479396 m!748657))

(declare-fun m!748659 () Bool)

(assert (=> start!45760 m!748659))

(declare-fun m!748661 () Bool)

(assert (=> b!479393 m!748661))

(declare-fun m!748663 () Bool)

(assert (=> b!479399 m!748663))

(declare-fun m!748665 () Bool)

(assert (=> b!479391 m!748665))

(check-sat (not b!479391) (not start!45760) (not b!479397) (not b!479396) (not b!479393) tp_is_empty!2327 (not b!479394) (not b!479399) (not b!479395) (not b!479398))
(check-sat)
(get-model)

(declare-fun bm!33887 () Bool)

(declare-fun call!33894 () Bool)

(declare-fun call!33893 () Bool)

(assert (=> bm!33887 (= call!33894 call!33893)))

(declare-fun b!479455 () Bool)

(declare-fun res!211832 () Bool)

(declare-fun e!292301 () Bool)

(assert (=> b!479455 (=> res!211832 e!292301)))

(assert (=> b!479455 (= res!211832 (not ((_ is Concat!2065) r!20230)))))

(declare-fun e!292296 () Bool)

(assert (=> b!479455 (= e!292296 e!292301)))

(declare-fun bm!33888 () Bool)

(declare-fun c!95911 () Bool)

(declare-fun c!95912 () Bool)

(assert (=> bm!33888 (= call!33893 (validRegex!393 (ite c!95911 (reg!1494 r!20230) (ite c!95912 (regTwo!2843 r!20230) (regOne!2842 r!20230)))))))

(declare-fun bm!33889 () Bool)

(declare-fun call!33892 () Bool)

(assert (=> bm!33889 (= call!33892 (validRegex!393 (ite c!95912 (regOne!2843 r!20230) (regTwo!2842 r!20230))))))

(declare-fun b!479456 () Bool)

(declare-fun e!292302 () Bool)

(declare-fun e!292298 () Bool)

(assert (=> b!479456 (= e!292302 e!292298)))

(assert (=> b!479456 (= c!95911 ((_ is Star!1165) r!20230))))

(declare-fun b!479457 () Bool)

(declare-fun e!292300 () Bool)

(assert (=> b!479457 (= e!292300 call!33893)))

(declare-fun d!180361 () Bool)

(declare-fun res!211829 () Bool)

(assert (=> d!180361 (=> res!211829 e!292302)))

(assert (=> d!180361 (= res!211829 ((_ is ElementMatch!1165) r!20230))))

(assert (=> d!180361 (= (validRegex!393 r!20230) e!292302)))

(declare-fun b!479458 () Bool)

(assert (=> b!479458 (= e!292298 e!292296)))

(assert (=> b!479458 (= c!95912 ((_ is Union!1165) r!20230))))

(declare-fun b!479459 () Bool)

(declare-fun e!292299 () Bool)

(assert (=> b!479459 (= e!292299 call!33894)))

(declare-fun b!479460 () Bool)

(assert (=> b!479460 (= e!292298 e!292300)))

(declare-fun res!211830 () Bool)

(assert (=> b!479460 (= res!211830 (not (nullable!300 (reg!1494 r!20230))))))

(assert (=> b!479460 (=> (not res!211830) (not e!292300))))

(declare-fun b!479461 () Bool)

(declare-fun e!292297 () Bool)

(assert (=> b!479461 (= e!292301 e!292297)))

(declare-fun res!211831 () Bool)

(assert (=> b!479461 (=> (not res!211831) (not e!292297))))

(assert (=> b!479461 (= res!211831 call!33894)))

(declare-fun b!479462 () Bool)

(declare-fun res!211828 () Bool)

(assert (=> b!479462 (=> (not res!211828) (not e!292299))))

(assert (=> b!479462 (= res!211828 call!33892)))

(assert (=> b!479462 (= e!292296 e!292299)))

(declare-fun b!479463 () Bool)

(assert (=> b!479463 (= e!292297 call!33892)))

(assert (= (and d!180361 (not res!211829)) b!479456))

(assert (= (and b!479456 c!95911) b!479460))

(assert (= (and b!479456 (not c!95911)) b!479458))

(assert (= (and b!479460 res!211830) b!479457))

(assert (= (and b!479458 c!95912) b!479462))

(assert (= (and b!479458 (not c!95912)) b!479455))

(assert (= (and b!479462 res!211828) b!479459))

(assert (= (and b!479455 (not res!211832)) b!479461))

(assert (= (and b!479461 res!211831) b!479463))

(assert (= (or b!479459 b!479461) bm!33887))

(assert (= (or b!479462 b!479463) bm!33889))

(assert (= (or b!479457 bm!33887) bm!33888))

(declare-fun m!748685 () Bool)

(assert (=> bm!33888 m!748685))

(declare-fun m!748687 () Bool)

(assert (=> bm!33889 m!748687))

(declare-fun m!748689 () Bool)

(assert (=> b!479460 m!748689))

(assert (=> start!45760 d!180361))

(declare-fun d!180373 () Bool)

(declare-fun lostCauseFct!69 (Regex!1165) Bool)

(assert (=> d!180373 (= (lostCause!159 r!20230) (lostCauseFct!69 r!20230))))

(declare-fun bs!58800 () Bool)

(assert (= bs!58800 d!180373))

(declare-fun m!748693 () Bool)

(assert (=> bs!58800 m!748693))

(assert (=> b!479391 d!180373))

(declare-fun d!180375 () Bool)

(declare-fun nullableFct!106 (Regex!1165) Bool)

(assert (=> d!180375 (= (nullable!300 (regOne!2842 r!20230)) (nullableFct!106 (regOne!2842 r!20230)))))

(declare-fun bs!58801 () Bool)

(assert (= bs!58801 d!180375))

(declare-fun m!748695 () Bool)

(assert (=> bs!58801 m!748695))

(assert (=> b!479396 d!180375))

(declare-fun bm!33890 () Bool)

(declare-fun call!33897 () Bool)

(declare-fun call!33896 () Bool)

(assert (=> bm!33890 (= call!33897 call!33896)))

(declare-fun b!479490 () Bool)

(declare-fun res!211837 () Bool)

(declare-fun e!292314 () Bool)

(assert (=> b!479490 (=> res!211837 e!292314)))

(assert (=> b!479490 (= res!211837 (not ((_ is Concat!2065) (regOne!2842 r!20230))))))

(declare-fun e!292309 () Bool)

(assert (=> b!479490 (= e!292309 e!292314)))

(declare-fun c!95913 () Bool)

(declare-fun bm!33891 () Bool)

(declare-fun c!95914 () Bool)

(assert (=> bm!33891 (= call!33896 (validRegex!393 (ite c!95913 (reg!1494 (regOne!2842 r!20230)) (ite c!95914 (regTwo!2843 (regOne!2842 r!20230)) (regOne!2842 (regOne!2842 r!20230))))))))

(declare-fun bm!33892 () Bool)

(declare-fun call!33895 () Bool)

(assert (=> bm!33892 (= call!33895 (validRegex!393 (ite c!95914 (regOne!2843 (regOne!2842 r!20230)) (regTwo!2842 (regOne!2842 r!20230)))))))

(declare-fun b!479491 () Bool)

(declare-fun e!292315 () Bool)

(declare-fun e!292311 () Bool)

(assert (=> b!479491 (= e!292315 e!292311)))

(assert (=> b!479491 (= c!95913 ((_ is Star!1165) (regOne!2842 r!20230)))))

(declare-fun b!479492 () Bool)

(declare-fun e!292313 () Bool)

(assert (=> b!479492 (= e!292313 call!33896)))

(declare-fun d!180377 () Bool)

(declare-fun res!211834 () Bool)

(assert (=> d!180377 (=> res!211834 e!292315)))

(assert (=> d!180377 (= res!211834 ((_ is ElementMatch!1165) (regOne!2842 r!20230)))))

(assert (=> d!180377 (= (validRegex!393 (regOne!2842 r!20230)) e!292315)))

(declare-fun b!479493 () Bool)

(assert (=> b!479493 (= e!292311 e!292309)))

(assert (=> b!479493 (= c!95914 ((_ is Union!1165) (regOne!2842 r!20230)))))

(declare-fun b!479494 () Bool)

(declare-fun e!292312 () Bool)

(assert (=> b!479494 (= e!292312 call!33897)))

(declare-fun b!479495 () Bool)

(assert (=> b!479495 (= e!292311 e!292313)))

(declare-fun res!211835 () Bool)

(assert (=> b!479495 (= res!211835 (not (nullable!300 (reg!1494 (regOne!2842 r!20230)))))))

(assert (=> b!479495 (=> (not res!211835) (not e!292313))))

(declare-fun b!479496 () Bool)

(declare-fun e!292310 () Bool)

(assert (=> b!479496 (= e!292314 e!292310)))

(declare-fun res!211836 () Bool)

(assert (=> b!479496 (=> (not res!211836) (not e!292310))))

(assert (=> b!479496 (= res!211836 call!33897)))

(declare-fun b!479497 () Bool)

(declare-fun res!211833 () Bool)

(assert (=> b!479497 (=> (not res!211833) (not e!292312))))

(assert (=> b!479497 (= res!211833 call!33895)))

(assert (=> b!479497 (= e!292309 e!292312)))

(declare-fun b!479498 () Bool)

(assert (=> b!479498 (= e!292310 call!33895)))

(assert (= (and d!180377 (not res!211834)) b!479491))

(assert (= (and b!479491 c!95913) b!479495))

(assert (= (and b!479491 (not c!95913)) b!479493))

(assert (= (and b!479495 res!211835) b!479492))

(assert (= (and b!479493 c!95914) b!479497))

(assert (= (and b!479493 (not c!95914)) b!479490))

(assert (= (and b!479497 res!211833) b!479494))

(assert (= (and b!479490 (not res!211837)) b!479496))

(assert (= (and b!479496 res!211836) b!479498))

(assert (= (or b!479494 b!479496) bm!33890))

(assert (= (or b!479497 b!479498) bm!33892))

(assert (= (or b!479492 bm!33890) bm!33891))

(declare-fun m!748697 () Bool)

(assert (=> bm!33891 m!748697))

(declare-fun m!748699 () Bool)

(assert (=> bm!33892 m!748699))

(declare-fun m!748701 () Bool)

(assert (=> b!479495 m!748701))

(assert (=> b!479397 d!180377))

(declare-fun d!180379 () Bool)

(assert (=> d!180379 (= (lostCause!159 (regOne!2842 r!20230)) (lostCauseFct!69 (regOne!2842 r!20230)))))

(declare-fun bs!58802 () Bool)

(assert (= bs!58802 d!180379))

(declare-fun m!748703 () Bool)

(assert (=> bs!58802 m!748703))

(assert (=> b!479399 d!180379))

(declare-fun d!180381 () Bool)

(assert (=> d!180381 (= (lostCause!159 (regTwo!2842 r!20230)) (lostCauseFct!69 (regTwo!2842 r!20230)))))

(declare-fun bs!58803 () Bool)

(assert (= bs!58803 d!180381))

(declare-fun m!748705 () Bool)

(assert (=> bs!58803 m!748705))

(assert (=> b!479393 d!180381))

(declare-fun b!479515 () Bool)

(declare-fun e!292319 () Bool)

(declare-fun tp!134521 () Bool)

(assert (=> b!479515 (= e!292319 tp!134521)))

(assert (=> b!479395 (= tp!134467 e!292319)))

(declare-fun b!479513 () Bool)

(assert (=> b!479513 (= e!292319 tp_is_empty!2327)))

(declare-fun b!479516 () Bool)

(declare-fun tp!134517 () Bool)

(declare-fun tp!134518 () Bool)

(assert (=> b!479516 (= e!292319 (and tp!134517 tp!134518))))

(declare-fun b!479514 () Bool)

(declare-fun tp!134520 () Bool)

(declare-fun tp!134519 () Bool)

(assert (=> b!479514 (= e!292319 (and tp!134520 tp!134519))))

(assert (= (and b!479395 ((_ is ElementMatch!1165) (regOne!2842 r!20230))) b!479513))

(assert (= (and b!479395 ((_ is Concat!2065) (regOne!2842 r!20230))) b!479514))

(assert (= (and b!479395 ((_ is Star!1165) (regOne!2842 r!20230))) b!479515))

(assert (= (and b!479395 ((_ is Union!1165) (regOne!2842 r!20230))) b!479516))

(declare-fun b!479519 () Bool)

(declare-fun e!292320 () Bool)

(declare-fun tp!134526 () Bool)

(assert (=> b!479519 (= e!292320 tp!134526)))

(assert (=> b!479395 (= tp!134471 e!292320)))

(declare-fun b!479517 () Bool)

(assert (=> b!479517 (= e!292320 tp_is_empty!2327)))

(declare-fun b!479520 () Bool)

(declare-fun tp!134522 () Bool)

(declare-fun tp!134523 () Bool)

(assert (=> b!479520 (= e!292320 (and tp!134522 tp!134523))))

(declare-fun b!479518 () Bool)

(declare-fun tp!134525 () Bool)

(declare-fun tp!134524 () Bool)

(assert (=> b!479518 (= e!292320 (and tp!134525 tp!134524))))

(assert (= (and b!479395 ((_ is ElementMatch!1165) (regTwo!2842 r!20230))) b!479517))

(assert (= (and b!479395 ((_ is Concat!2065) (regTwo!2842 r!20230))) b!479518))

(assert (= (and b!479395 ((_ is Star!1165) (regTwo!2842 r!20230))) b!479519))

(assert (= (and b!479395 ((_ is Union!1165) (regTwo!2842 r!20230))) b!479520))

(declare-fun b!479523 () Bool)

(declare-fun e!292321 () Bool)

(declare-fun tp!134531 () Bool)

(assert (=> b!479523 (= e!292321 tp!134531)))

(assert (=> b!479398 (= tp!134469 e!292321)))

(declare-fun b!479521 () Bool)

(assert (=> b!479521 (= e!292321 tp_is_empty!2327)))

(declare-fun b!479524 () Bool)

(declare-fun tp!134527 () Bool)

(declare-fun tp!134528 () Bool)

(assert (=> b!479524 (= e!292321 (and tp!134527 tp!134528))))

(declare-fun b!479522 () Bool)

(declare-fun tp!134530 () Bool)

(declare-fun tp!134529 () Bool)

(assert (=> b!479522 (= e!292321 (and tp!134530 tp!134529))))

(assert (= (and b!479398 ((_ is ElementMatch!1165) (regOne!2843 r!20230))) b!479521))

(assert (= (and b!479398 ((_ is Concat!2065) (regOne!2843 r!20230))) b!479522))

(assert (= (and b!479398 ((_ is Star!1165) (regOne!2843 r!20230))) b!479523))

(assert (= (and b!479398 ((_ is Union!1165) (regOne!2843 r!20230))) b!479524))

(declare-fun b!479527 () Bool)

(declare-fun e!292322 () Bool)

(declare-fun tp!134536 () Bool)

(assert (=> b!479527 (= e!292322 tp!134536)))

(assert (=> b!479398 (= tp!134470 e!292322)))

(declare-fun b!479525 () Bool)

(assert (=> b!479525 (= e!292322 tp_is_empty!2327)))

(declare-fun b!479528 () Bool)

(declare-fun tp!134532 () Bool)

(declare-fun tp!134533 () Bool)

(assert (=> b!479528 (= e!292322 (and tp!134532 tp!134533))))

(declare-fun b!479526 () Bool)

(declare-fun tp!134535 () Bool)

(declare-fun tp!134534 () Bool)

(assert (=> b!479526 (= e!292322 (and tp!134535 tp!134534))))

(assert (= (and b!479398 ((_ is ElementMatch!1165) (regTwo!2843 r!20230))) b!479525))

(assert (= (and b!479398 ((_ is Concat!2065) (regTwo!2843 r!20230))) b!479526))

(assert (= (and b!479398 ((_ is Star!1165) (regTwo!2843 r!20230))) b!479527))

(assert (= (and b!479398 ((_ is Union!1165) (regTwo!2843 r!20230))) b!479528))

(declare-fun b!479531 () Bool)

(declare-fun e!292323 () Bool)

(declare-fun tp!134541 () Bool)

(assert (=> b!479531 (= e!292323 tp!134541)))

(assert (=> b!479394 (= tp!134468 e!292323)))

(declare-fun b!479529 () Bool)

(assert (=> b!479529 (= e!292323 tp_is_empty!2327)))

(declare-fun b!479532 () Bool)

(declare-fun tp!134537 () Bool)

(declare-fun tp!134538 () Bool)

(assert (=> b!479532 (= e!292323 (and tp!134537 tp!134538))))

(declare-fun b!479530 () Bool)

(declare-fun tp!134540 () Bool)

(declare-fun tp!134539 () Bool)

(assert (=> b!479530 (= e!292323 (and tp!134540 tp!134539))))

(assert (= (and b!479394 ((_ is ElementMatch!1165) (reg!1494 r!20230))) b!479529))

(assert (= (and b!479394 ((_ is Concat!2065) (reg!1494 r!20230))) b!479530))

(assert (= (and b!479394 ((_ is Star!1165) (reg!1494 r!20230))) b!479531))

(assert (= (and b!479394 ((_ is Union!1165) (reg!1494 r!20230))) b!479532))

(check-sat (not b!479515) (not b!479516) (not bm!33891) (not b!479532) (not d!180375) (not bm!33889) (not b!479519) (not b!479514) (not b!479530) (not b!479528) (not b!479527) (not d!180381) (not b!479520) (not b!479518) (not d!180379) (not b!479495) (not b!479523) (not b!479524) (not b!479460) (not bm!33888) (not bm!33892) tp_is_empty!2327 (not b!479531) (not b!479526) (not b!479522) (not d!180373))
(check-sat)
