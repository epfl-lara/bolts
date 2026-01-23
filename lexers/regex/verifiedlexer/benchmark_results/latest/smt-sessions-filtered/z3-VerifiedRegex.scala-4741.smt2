; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244780 () Bool)

(assert start!244780)

(declare-fun b!2509555 () Bool)

(declare-fun e!1590622 () Bool)

(declare-fun tp!802725 () Bool)

(declare-fun tp!802729 () Bool)

(assert (=> b!2509555 (= e!1590622 (and tp!802725 tp!802729))))

(declare-fun b!2509556 () Bool)

(declare-fun e!1590621 () Bool)

(declare-datatypes ((C!15072 0))(
  ( (C!15073 (val!9188 Int)) )
))
(declare-datatypes ((Regex!7457 0))(
  ( (ElementMatch!7457 (c!399697 C!15072)) (Concat!12153 (regOne!15426 Regex!7457) (regTwo!15426 Regex!7457)) (EmptyExpr!7457) (Star!7457 (reg!7786 Regex!7457)) (EmptyLang!7457) (Union!7457 (regOne!15427 Regex!7457) (regTwo!15427 Regex!7457)) )
))
(declare-fun lt!897436 () Regex!7457)

(declare-fun validRegex!3083 (Regex!7457) Bool)

(assert (=> b!2509556 (= e!1590621 (not (validRegex!3083 lt!897436)))))

(declare-datatypes ((List!29522 0))(
  ( (Nil!29422) (Cons!29422 (h!34842 C!15072) (t!211221 List!29522)) )
))
(declare-fun tl!4068 () List!29522)

(declare-fun derivative!152 (Regex!7457 List!29522) Regex!7457)

(assert (=> b!2509556 (= (derivative!152 EmptyLang!7457 tl!4068) EmptyLang!7457)))

(declare-datatypes ((Unit!43163 0))(
  ( (Unit!43164) )
))
(declare-fun lt!897432 () Unit!43163)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!4 (Regex!7457 List!29522) Unit!43163)

(assert (=> b!2509556 (= lt!897432 (lemmaEmptyLangDerivativeIsAFixPoint!4 EmptyLang!7457 tl!4068))))

(declare-fun e!1590619 () Bool)

(assert (=> b!2509556 e!1590619))

(declare-fun res!1060923 () Bool)

(assert (=> b!2509556 (=> res!1060923 e!1590619)))

(declare-fun matchR!3456 (Regex!7457 List!29522) Bool)

(assert (=> b!2509556 (= res!1060923 (matchR!3456 lt!897436 tl!4068))))

(declare-fun lt!897435 () Unit!43163)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!144 (Regex!7457 Regex!7457 List!29522) Unit!43163)

(assert (=> b!2509556 (= lt!897435 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!144 lt!897436 EmptyLang!7457 tl!4068))))

(declare-fun lt!897433 () Regex!7457)

(assert (=> b!2509556 (= (matchR!3456 lt!897433 tl!4068) (matchR!3456 (derivative!152 lt!897433 tl!4068) Nil!29422))))

(declare-fun lt!897434 () Unit!43163)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!102 (Regex!7457 List!29522) Unit!43163)

(assert (=> b!2509556 (= lt!897434 (lemmaMatchRIsSameAsWholeDerivativeAndNil!102 lt!897433 tl!4068))))

(assert (=> b!2509556 (= lt!897433 (Union!7457 lt!897436 EmptyLang!7457))))

(declare-fun r!27340 () Regex!7457)

(declare-fun c!14016 () C!15072)

(declare-fun derivativeStep!2026 (Regex!7457 C!15072) Regex!7457)

(assert (=> b!2509556 (= lt!897436 (Concat!12153 (derivativeStep!2026 (regOne!15426 r!27340) c!14016) (regTwo!15426 r!27340)))))

(declare-fun b!2509557 () Bool)

(assert (=> b!2509557 (= e!1590619 (matchR!3456 EmptyLang!7457 tl!4068))))

(declare-fun res!1060926 () Bool)

(assert (=> start!244780 (=> (not res!1060926) (not e!1590621))))

(assert (=> start!244780 (= res!1060926 (validRegex!3083 r!27340))))

(assert (=> start!244780 e!1590621))

(assert (=> start!244780 e!1590622))

(declare-fun tp_is_empty!12769 () Bool)

(assert (=> start!244780 tp_is_empty!12769))

(declare-fun e!1590620 () Bool)

(assert (=> start!244780 e!1590620))

(declare-fun b!2509558 () Bool)

(declare-fun tp!802727 () Bool)

(assert (=> b!2509558 (= e!1590622 tp!802727)))

(declare-fun b!2509559 () Bool)

(declare-fun res!1060925 () Bool)

(assert (=> b!2509559 (=> (not res!1060925) (not e!1590621))))

(declare-fun nullable!2374 (Regex!7457) Bool)

(assert (=> b!2509559 (= res!1060925 (nullable!2374 (derivative!152 (derivativeStep!2026 r!27340 c!14016) tl!4068)))))

(declare-fun b!2509560 () Bool)

(declare-fun res!1060922 () Bool)

(assert (=> b!2509560 (=> (not res!1060922) (not e!1590621))))

(get-info :version)

(assert (=> b!2509560 (= res!1060922 (and (not ((_ is EmptyExpr!7457) r!27340)) (not ((_ is EmptyLang!7457) r!27340)) (not ((_ is ElementMatch!7457) r!27340)) (not ((_ is Union!7457) r!27340)) (not ((_ is Star!7457) r!27340))))))

(declare-fun b!2509561 () Bool)

(assert (=> b!2509561 (= e!1590622 tp_is_empty!12769)))

(declare-fun b!2509562 () Bool)

(declare-fun tp!802726 () Bool)

(declare-fun tp!802730 () Bool)

(assert (=> b!2509562 (= e!1590622 (and tp!802726 tp!802730))))

(declare-fun b!2509563 () Bool)

(declare-fun res!1060924 () Bool)

(assert (=> b!2509563 (=> (not res!1060924) (not e!1590621))))

(assert (=> b!2509563 (= res!1060924 (not (nullable!2374 (regOne!15426 r!27340))))))

(declare-fun b!2509564 () Bool)

(declare-fun tp!802728 () Bool)

(assert (=> b!2509564 (= e!1590620 (and tp_is_empty!12769 tp!802728))))

(assert (= (and start!244780 res!1060926) b!2509559))

(assert (= (and b!2509559 res!1060925) b!2509560))

(assert (= (and b!2509560 res!1060922) b!2509563))

(assert (= (and b!2509563 res!1060924) b!2509556))

(assert (= (and b!2509556 (not res!1060923)) b!2509557))

(assert (= (and start!244780 ((_ is ElementMatch!7457) r!27340)) b!2509561))

(assert (= (and start!244780 ((_ is Concat!12153) r!27340)) b!2509555))

(assert (= (and start!244780 ((_ is Star!7457) r!27340)) b!2509558))

(assert (= (and start!244780 ((_ is Union!7457) r!27340)) b!2509562))

(assert (= (and start!244780 ((_ is Cons!29422) tl!4068)) b!2509564))

(declare-fun m!2868837 () Bool)

(assert (=> b!2509556 m!2868837))

(declare-fun m!2868839 () Bool)

(assert (=> b!2509556 m!2868839))

(declare-fun m!2868841 () Bool)

(assert (=> b!2509556 m!2868841))

(declare-fun m!2868843 () Bool)

(assert (=> b!2509556 m!2868843))

(declare-fun m!2868845 () Bool)

(assert (=> b!2509556 m!2868845))

(declare-fun m!2868847 () Bool)

(assert (=> b!2509556 m!2868847))

(declare-fun m!2868849 () Bool)

(assert (=> b!2509556 m!2868849))

(declare-fun m!2868851 () Bool)

(assert (=> b!2509556 m!2868851))

(declare-fun m!2868853 () Bool)

(assert (=> b!2509556 m!2868853))

(declare-fun m!2868855 () Bool)

(assert (=> b!2509556 m!2868855))

(assert (=> b!2509556 m!2868851))

(declare-fun m!2868857 () Bool)

(assert (=> b!2509563 m!2868857))

(declare-fun m!2868859 () Bool)

(assert (=> start!244780 m!2868859))

(declare-fun m!2868861 () Bool)

(assert (=> b!2509557 m!2868861))

(declare-fun m!2868863 () Bool)

(assert (=> b!2509559 m!2868863))

(assert (=> b!2509559 m!2868863))

(declare-fun m!2868865 () Bool)

(assert (=> b!2509559 m!2868865))

(assert (=> b!2509559 m!2868865))

(declare-fun m!2868867 () Bool)

(assert (=> b!2509559 m!2868867))

(check-sat tp_is_empty!12769 (not b!2509556) (not b!2509563) (not b!2509555) (not b!2509559) (not b!2509557) (not b!2509558) (not b!2509562) (not start!244780) (not b!2509564))
(check-sat)
(get-model)

(declare-fun d!716474 () Bool)

(declare-fun nullableFct!624 (Regex!7457) Bool)

(assert (=> d!716474 (= (nullable!2374 (derivative!152 (derivativeStep!2026 r!27340 c!14016) tl!4068)) (nullableFct!624 (derivative!152 (derivativeStep!2026 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468743 () Bool)

(assert (= bs!468743 d!716474))

(assert (=> bs!468743 m!2868865))

(declare-fun m!2868879 () Bool)

(assert (=> bs!468743 m!2868879))

(assert (=> b!2509559 d!716474))

(declare-fun d!716478 () Bool)

(declare-fun lt!897442 () Regex!7457)

(assert (=> d!716478 (validRegex!3083 lt!897442)))

(declare-fun e!1590628 () Regex!7457)

(assert (=> d!716478 (= lt!897442 e!1590628)))

(declare-fun c!399703 () Bool)

(assert (=> d!716478 (= c!399703 ((_ is Cons!29422) tl!4068))))

(assert (=> d!716478 (validRegex!3083 (derivativeStep!2026 r!27340 c!14016))))

(assert (=> d!716478 (= (derivative!152 (derivativeStep!2026 r!27340 c!14016) tl!4068) lt!897442)))

(declare-fun b!2509575 () Bool)

(assert (=> b!2509575 (= e!1590628 (derivative!152 (derivativeStep!2026 (derivativeStep!2026 r!27340 c!14016) (h!34842 tl!4068)) (t!211221 tl!4068)))))

(declare-fun b!2509576 () Bool)

(assert (=> b!2509576 (= e!1590628 (derivativeStep!2026 r!27340 c!14016))))

(assert (= (and d!716478 c!399703) b!2509575))

(assert (= (and d!716478 (not c!399703)) b!2509576))

(declare-fun m!2868881 () Bool)

(assert (=> d!716478 m!2868881))

(assert (=> d!716478 m!2868863))

(declare-fun m!2868883 () Bool)

(assert (=> d!716478 m!2868883))

(assert (=> b!2509575 m!2868863))

(declare-fun m!2868885 () Bool)

(assert (=> b!2509575 m!2868885))

(assert (=> b!2509575 m!2868885))

(declare-fun m!2868887 () Bool)

(assert (=> b!2509575 m!2868887))

(assert (=> b!2509559 d!716478))

(declare-fun b!2509627 () Bool)

(declare-fun e!1590655 () Regex!7457)

(declare-fun e!1590654 () Regex!7457)

(assert (=> b!2509627 (= e!1590655 e!1590654)))

(declare-fun c!399732 () Bool)

(assert (=> b!2509627 (= c!399732 ((_ is Star!7457) r!27340))))

(declare-fun d!716480 () Bool)

(declare-fun lt!897448 () Regex!7457)

(assert (=> d!716480 (validRegex!3083 lt!897448)))

(declare-fun e!1590656 () Regex!7457)

(assert (=> d!716480 (= lt!897448 e!1590656)))

(declare-fun c!399729 () Bool)

(assert (=> d!716480 (= c!399729 (or ((_ is EmptyExpr!7457) r!27340) ((_ is EmptyLang!7457) r!27340)))))

(assert (=> d!716480 (validRegex!3083 r!27340)))

(assert (=> d!716480 (= (derivativeStep!2026 r!27340 c!14016) lt!897448)))

(declare-fun call!155591 () Regex!7457)

(declare-fun bm!155583 () Bool)

(declare-fun c!399730 () Bool)

(assert (=> bm!155583 (= call!155591 (derivativeStep!2026 (ite c!399730 (regOne!15427 r!27340) (ite c!399732 (reg!7786 r!27340) (regOne!15426 r!27340))) c!14016))))

(declare-fun call!155590 () Regex!7457)

(declare-fun bm!155584 () Bool)

(assert (=> bm!155584 (= call!155590 (derivativeStep!2026 (ite c!399730 (regTwo!15427 r!27340) (regTwo!15426 r!27340)) c!14016))))

(declare-fun b!2509628 () Bool)

(declare-fun e!1590658 () Regex!7457)

(assert (=> b!2509628 (= e!1590658 (ite (= c!14016 (c!399697 r!27340)) EmptyExpr!7457 EmptyLang!7457))))

(declare-fun b!2509629 () Bool)

(declare-fun c!399733 () Bool)

(assert (=> b!2509629 (= c!399733 (nullable!2374 (regOne!15426 r!27340)))))

(declare-fun e!1590657 () Regex!7457)

(assert (=> b!2509629 (= e!1590654 e!1590657)))

(declare-fun b!2509630 () Bool)

(assert (=> b!2509630 (= c!399730 ((_ is Union!7457) r!27340))))

(assert (=> b!2509630 (= e!1590658 e!1590655)))

(declare-fun b!2509631 () Bool)

(declare-fun call!155588 () Regex!7457)

(assert (=> b!2509631 (= e!1590654 (Concat!12153 call!155588 r!27340))))

(declare-fun b!2509632 () Bool)

(assert (=> b!2509632 (= e!1590656 EmptyLang!7457)))

(declare-fun b!2509633 () Bool)

(assert (=> b!2509633 (= e!1590655 (Union!7457 call!155591 call!155590))))

(declare-fun b!2509634 () Bool)

(declare-fun call!155589 () Regex!7457)

(assert (=> b!2509634 (= e!1590657 (Union!7457 (Concat!12153 call!155589 (regTwo!15426 r!27340)) call!155590))))

(declare-fun bm!155585 () Bool)

(assert (=> bm!155585 (= call!155589 call!155588)))

(declare-fun b!2509635 () Bool)

(assert (=> b!2509635 (= e!1590656 e!1590658)))

(declare-fun c!399731 () Bool)

(assert (=> b!2509635 (= c!399731 ((_ is ElementMatch!7457) r!27340))))

(declare-fun b!2509636 () Bool)

(assert (=> b!2509636 (= e!1590657 (Union!7457 (Concat!12153 call!155589 (regTwo!15426 r!27340)) EmptyLang!7457))))

(declare-fun bm!155586 () Bool)

(assert (=> bm!155586 (= call!155588 call!155591)))

(assert (= (and d!716480 c!399729) b!2509632))

(assert (= (and d!716480 (not c!399729)) b!2509635))

(assert (= (and b!2509635 c!399731) b!2509628))

(assert (= (and b!2509635 (not c!399731)) b!2509630))

(assert (= (and b!2509630 c!399730) b!2509633))

(assert (= (and b!2509630 (not c!399730)) b!2509627))

(assert (= (and b!2509627 c!399732) b!2509631))

(assert (= (and b!2509627 (not c!399732)) b!2509629))

(assert (= (and b!2509629 c!399733) b!2509634))

(assert (= (and b!2509629 (not c!399733)) b!2509636))

(assert (= (or b!2509634 b!2509636) bm!155585))

(assert (= (or b!2509631 bm!155585) bm!155586))

(assert (= (or b!2509633 b!2509634) bm!155584))

(assert (= (or b!2509633 bm!155586) bm!155583))

(declare-fun m!2868895 () Bool)

(assert (=> d!716480 m!2868895))

(assert (=> d!716480 m!2868859))

(declare-fun m!2868897 () Bool)

(assert (=> bm!155583 m!2868897))

(declare-fun m!2868899 () Bool)

(assert (=> bm!155584 m!2868899))

(assert (=> b!2509629 m!2868857))

(assert (=> b!2509559 d!716480))

(declare-fun b!2509683 () Bool)

(declare-fun e!1590688 () Bool)

(declare-fun e!1590687 () Bool)

(assert (=> b!2509683 (= e!1590688 e!1590687)))

(declare-fun res!1060953 () Bool)

(assert (=> b!2509683 (= res!1060953 (not (nullable!2374 (reg!7786 lt!897436))))))

(assert (=> b!2509683 (=> (not res!1060953) (not e!1590687))))

(declare-fun b!2509684 () Bool)

(declare-fun res!1060957 () Bool)

(declare-fun e!1590693 () Bool)

(assert (=> b!2509684 (=> (not res!1060957) (not e!1590693))))

(declare-fun call!155601 () Bool)

(assert (=> b!2509684 (= res!1060957 call!155601)))

(declare-fun e!1590691 () Bool)

(assert (=> b!2509684 (= e!1590691 e!1590693)))

(declare-fun b!2509685 () Bool)

(declare-fun e!1590690 () Bool)

(declare-fun e!1590692 () Bool)

(assert (=> b!2509685 (= e!1590690 e!1590692)))

(declare-fun res!1060954 () Bool)

(assert (=> b!2509685 (=> (not res!1060954) (not e!1590692))))

(declare-fun call!155602 () Bool)

(assert (=> b!2509685 (= res!1060954 call!155602)))

(declare-fun bm!155595 () Bool)

(declare-fun c!399745 () Bool)

(assert (=> bm!155595 (= call!155602 (validRegex!3083 (ite c!399745 (regTwo!15427 lt!897436) (regOne!15426 lt!897436))))))

(declare-fun d!716484 () Bool)

(declare-fun res!1060955 () Bool)

(declare-fun e!1590689 () Bool)

(assert (=> d!716484 (=> res!1060955 e!1590689)))

(assert (=> d!716484 (= res!1060955 ((_ is ElementMatch!7457) lt!897436))))

(assert (=> d!716484 (= (validRegex!3083 lt!897436) e!1590689)))

(declare-fun b!2509686 () Bool)

(assert (=> b!2509686 (= e!1590688 e!1590691)))

(assert (=> b!2509686 (= c!399745 ((_ is Union!7457) lt!897436))))

(declare-fun b!2509687 () Bool)

(assert (=> b!2509687 (= e!1590693 call!155602)))

(declare-fun bm!155596 () Bool)

(declare-fun c!399744 () Bool)

(declare-fun call!155600 () Bool)

(assert (=> bm!155596 (= call!155600 (validRegex!3083 (ite c!399744 (reg!7786 lt!897436) (ite c!399745 (regOne!15427 lt!897436) (regTwo!15426 lt!897436)))))))

(declare-fun b!2509688 () Bool)

(assert (=> b!2509688 (= e!1590689 e!1590688)))

(assert (=> b!2509688 (= c!399744 ((_ is Star!7457) lt!897436))))

(declare-fun b!2509689 () Bool)

(assert (=> b!2509689 (= e!1590687 call!155600)))

(declare-fun bm!155597 () Bool)

(assert (=> bm!155597 (= call!155601 call!155600)))

(declare-fun b!2509690 () Bool)

(declare-fun res!1060956 () Bool)

(assert (=> b!2509690 (=> res!1060956 e!1590690)))

(assert (=> b!2509690 (= res!1060956 (not ((_ is Concat!12153) lt!897436)))))

(assert (=> b!2509690 (= e!1590691 e!1590690)))

(declare-fun b!2509691 () Bool)

(assert (=> b!2509691 (= e!1590692 call!155601)))

(assert (= (and d!716484 (not res!1060955)) b!2509688))

(assert (= (and b!2509688 c!399744) b!2509683))

(assert (= (and b!2509688 (not c!399744)) b!2509686))

(assert (= (and b!2509683 res!1060953) b!2509689))

(assert (= (and b!2509686 c!399745) b!2509684))

(assert (= (and b!2509686 (not c!399745)) b!2509690))

(assert (= (and b!2509684 res!1060957) b!2509687))

(assert (= (and b!2509690 (not res!1060956)) b!2509685))

(assert (= (and b!2509685 res!1060954) b!2509691))

(assert (= (or b!2509684 b!2509691) bm!155597))

(assert (= (or b!2509687 b!2509685) bm!155595))

(assert (= (or b!2509689 bm!155597) bm!155596))

(declare-fun m!2868901 () Bool)

(assert (=> b!2509683 m!2868901))

(declare-fun m!2868903 () Bool)

(assert (=> bm!155595 m!2868903))

(declare-fun m!2868905 () Bool)

(assert (=> bm!155596 m!2868905))

(assert (=> b!2509556 d!716484))

(declare-fun b!2509692 () Bool)

(declare-fun e!1590695 () Regex!7457)

(declare-fun e!1590694 () Regex!7457)

(assert (=> b!2509692 (= e!1590695 e!1590694)))

(declare-fun c!399749 () Bool)

(assert (=> b!2509692 (= c!399749 ((_ is Star!7457) (regOne!15426 r!27340)))))

(declare-fun d!716486 () Bool)

(declare-fun lt!897451 () Regex!7457)

(assert (=> d!716486 (validRegex!3083 lt!897451)))

(declare-fun e!1590696 () Regex!7457)

(assert (=> d!716486 (= lt!897451 e!1590696)))

(declare-fun c!399746 () Bool)

(assert (=> d!716486 (= c!399746 (or ((_ is EmptyExpr!7457) (regOne!15426 r!27340)) ((_ is EmptyLang!7457) (regOne!15426 r!27340))))))

(assert (=> d!716486 (validRegex!3083 (regOne!15426 r!27340))))

(assert (=> d!716486 (= (derivativeStep!2026 (regOne!15426 r!27340) c!14016) lt!897451)))

(declare-fun bm!155598 () Bool)

(declare-fun call!155606 () Regex!7457)

(declare-fun c!399747 () Bool)

(assert (=> bm!155598 (= call!155606 (derivativeStep!2026 (ite c!399747 (regOne!15427 (regOne!15426 r!27340)) (ite c!399749 (reg!7786 (regOne!15426 r!27340)) (regOne!15426 (regOne!15426 r!27340)))) c!14016))))

(declare-fun bm!155599 () Bool)

(declare-fun call!155605 () Regex!7457)

(assert (=> bm!155599 (= call!155605 (derivativeStep!2026 (ite c!399747 (regTwo!15427 (regOne!15426 r!27340)) (regTwo!15426 (regOne!15426 r!27340))) c!14016))))

(declare-fun b!2509693 () Bool)

(declare-fun e!1590698 () Regex!7457)

(assert (=> b!2509693 (= e!1590698 (ite (= c!14016 (c!399697 (regOne!15426 r!27340))) EmptyExpr!7457 EmptyLang!7457))))

(declare-fun b!2509694 () Bool)

(declare-fun c!399750 () Bool)

(assert (=> b!2509694 (= c!399750 (nullable!2374 (regOne!15426 (regOne!15426 r!27340))))))

(declare-fun e!1590697 () Regex!7457)

(assert (=> b!2509694 (= e!1590694 e!1590697)))

(declare-fun b!2509695 () Bool)

(assert (=> b!2509695 (= c!399747 ((_ is Union!7457) (regOne!15426 r!27340)))))

(assert (=> b!2509695 (= e!1590698 e!1590695)))

(declare-fun b!2509696 () Bool)

(declare-fun call!155603 () Regex!7457)

(assert (=> b!2509696 (= e!1590694 (Concat!12153 call!155603 (regOne!15426 r!27340)))))

(declare-fun b!2509697 () Bool)

(assert (=> b!2509697 (= e!1590696 EmptyLang!7457)))

(declare-fun b!2509698 () Bool)

(assert (=> b!2509698 (= e!1590695 (Union!7457 call!155606 call!155605))))

(declare-fun call!155604 () Regex!7457)

(declare-fun b!2509699 () Bool)

(assert (=> b!2509699 (= e!1590697 (Union!7457 (Concat!12153 call!155604 (regTwo!15426 (regOne!15426 r!27340))) call!155605))))

(declare-fun bm!155600 () Bool)

(assert (=> bm!155600 (= call!155604 call!155603)))

(declare-fun b!2509700 () Bool)

(assert (=> b!2509700 (= e!1590696 e!1590698)))

(declare-fun c!399748 () Bool)

(assert (=> b!2509700 (= c!399748 ((_ is ElementMatch!7457) (regOne!15426 r!27340)))))

(declare-fun b!2509701 () Bool)

(assert (=> b!2509701 (= e!1590697 (Union!7457 (Concat!12153 call!155604 (regTwo!15426 (regOne!15426 r!27340))) EmptyLang!7457))))

(declare-fun bm!155601 () Bool)

(assert (=> bm!155601 (= call!155603 call!155606)))

(assert (= (and d!716486 c!399746) b!2509697))

(assert (= (and d!716486 (not c!399746)) b!2509700))

(assert (= (and b!2509700 c!399748) b!2509693))

(assert (= (and b!2509700 (not c!399748)) b!2509695))

(assert (= (and b!2509695 c!399747) b!2509698))

(assert (= (and b!2509695 (not c!399747)) b!2509692))

(assert (= (and b!2509692 c!399749) b!2509696))

(assert (= (and b!2509692 (not c!399749)) b!2509694))

(assert (= (and b!2509694 c!399750) b!2509699))

(assert (= (and b!2509694 (not c!399750)) b!2509701))

(assert (= (or b!2509699 b!2509701) bm!155600))

(assert (= (or b!2509696 bm!155600) bm!155601))

(assert (= (or b!2509698 b!2509699) bm!155599))

(assert (= (or b!2509698 bm!155601) bm!155598))

(declare-fun m!2868907 () Bool)

(assert (=> d!716486 m!2868907))

(declare-fun m!2868909 () Bool)

(assert (=> d!716486 m!2868909))

(declare-fun m!2868911 () Bool)

(assert (=> bm!155598 m!2868911))

(declare-fun m!2868913 () Bool)

(assert (=> bm!155599 m!2868913))

(declare-fun m!2868915 () Bool)

(assert (=> b!2509694 m!2868915))

(assert (=> b!2509556 d!716486))

(declare-fun d!716488 () Bool)

(declare-fun lt!897453 () Regex!7457)

(assert (=> d!716488 (validRegex!3083 lt!897453)))

(declare-fun e!1590706 () Regex!7457)

(assert (=> d!716488 (= lt!897453 e!1590706)))

(declare-fun c!399754 () Bool)

(assert (=> d!716488 (= c!399754 ((_ is Cons!29422) tl!4068))))

(assert (=> d!716488 (validRegex!3083 EmptyLang!7457)))

(assert (=> d!716488 (= (derivative!152 EmptyLang!7457 tl!4068) lt!897453)))

(declare-fun b!2509716 () Bool)

(assert (=> b!2509716 (= e!1590706 (derivative!152 (derivativeStep!2026 EmptyLang!7457 (h!34842 tl!4068)) (t!211221 tl!4068)))))

(declare-fun b!2509717 () Bool)

(assert (=> b!2509717 (= e!1590706 EmptyLang!7457)))

(assert (= (and d!716488 c!399754) b!2509716))

(assert (= (and d!716488 (not c!399754)) b!2509717))

(declare-fun m!2868933 () Bool)

(assert (=> d!716488 m!2868933))

(declare-fun m!2868935 () Bool)

(assert (=> d!716488 m!2868935))

(declare-fun m!2868937 () Bool)

(assert (=> b!2509716 m!2868937))

(assert (=> b!2509716 m!2868937))

(declare-fun m!2868939 () Bool)

(assert (=> b!2509716 m!2868939))

(assert (=> b!2509556 d!716488))

(declare-fun d!716492 () Bool)

(declare-fun lt!897454 () Regex!7457)

(assert (=> d!716492 (validRegex!3083 lt!897454)))

(declare-fun e!1590707 () Regex!7457)

(assert (=> d!716492 (= lt!897454 e!1590707)))

(declare-fun c!399755 () Bool)

(assert (=> d!716492 (= c!399755 ((_ is Cons!29422) tl!4068))))

(assert (=> d!716492 (validRegex!3083 lt!897433)))

(assert (=> d!716492 (= (derivative!152 lt!897433 tl!4068) lt!897454)))

(declare-fun b!2509718 () Bool)

(assert (=> b!2509718 (= e!1590707 (derivative!152 (derivativeStep!2026 lt!897433 (h!34842 tl!4068)) (t!211221 tl!4068)))))

(declare-fun b!2509719 () Bool)

(assert (=> b!2509719 (= e!1590707 lt!897433)))

(assert (= (and d!716492 c!399755) b!2509718))

(assert (= (and d!716492 (not c!399755)) b!2509719))

(declare-fun m!2868941 () Bool)

(assert (=> d!716492 m!2868941))

(declare-fun m!2868943 () Bool)

(assert (=> d!716492 m!2868943))

(declare-fun m!2868945 () Bool)

(assert (=> b!2509718 m!2868945))

(assert (=> b!2509718 m!2868945))

(declare-fun m!2868947 () Bool)

(assert (=> b!2509718 m!2868947))

(assert (=> b!2509556 d!716492))

(declare-fun d!716494 () Bool)

(declare-fun e!1590726 () Bool)

(assert (=> d!716494 e!1590726))

(declare-fun res!1060981 () Bool)

(assert (=> d!716494 (=> res!1060981 e!1590726)))

(assert (=> d!716494 (= res!1060981 (matchR!3456 lt!897436 tl!4068))))

(declare-fun lt!897457 () Unit!43163)

(declare-fun choose!14839 (Regex!7457 Regex!7457 List!29522) Unit!43163)

(assert (=> d!716494 (= lt!897457 (choose!14839 lt!897436 EmptyLang!7457 tl!4068))))

(declare-fun e!1590727 () Bool)

(assert (=> d!716494 e!1590727))

(declare-fun res!1060980 () Bool)

(assert (=> d!716494 (=> (not res!1060980) (not e!1590727))))

(assert (=> d!716494 (= res!1060980 (validRegex!3083 lt!897436))))

(assert (=> d!716494 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!144 lt!897436 EmptyLang!7457 tl!4068) lt!897457)))

(declare-fun b!2509742 () Bool)

(assert (=> b!2509742 (= e!1590727 (validRegex!3083 EmptyLang!7457))))

(declare-fun b!2509743 () Bool)

(assert (=> b!2509743 (= e!1590726 (matchR!3456 EmptyLang!7457 tl!4068))))

(assert (= (and d!716494 res!1060980) b!2509742))

(assert (= (and d!716494 (not res!1060981)) b!2509743))

(assert (=> d!716494 m!2868839))

(declare-fun m!2868949 () Bool)

(assert (=> d!716494 m!2868949))

(assert (=> d!716494 m!2868849))

(assert (=> b!2509742 m!2868935))

(assert (=> b!2509743 m!2868861))

(assert (=> b!2509556 d!716494))

(declare-fun d!716496 () Bool)

(assert (=> d!716496 (= (derivative!152 EmptyLang!7457 tl!4068) EmptyLang!7457)))

(declare-fun lt!897463 () Unit!43163)

(declare-fun choose!14840 (Regex!7457 List!29522) Unit!43163)

(assert (=> d!716496 (= lt!897463 (choose!14840 EmptyLang!7457 tl!4068))))

(assert (=> d!716496 (= EmptyLang!7457 EmptyLang!7457)))

(assert (=> d!716496 (= (lemmaEmptyLangDerivativeIsAFixPoint!4 EmptyLang!7457 tl!4068) lt!897463)))

(declare-fun bs!468744 () Bool)

(assert (= bs!468744 d!716496))

(assert (=> bs!468744 m!2868843))

(declare-fun m!2868973 () Bool)

(assert (=> bs!468744 m!2868973))

(assert (=> b!2509556 d!716496))

(declare-fun b!2509850 () Bool)

(declare-fun e!1590793 () Bool)

(declare-fun head!5726 (List!29522) C!15072)

(declare-fun tail!4003 (List!29522) List!29522)

(assert (=> b!2509850 (= e!1590793 (matchR!3456 (derivativeStep!2026 lt!897433 (head!5726 tl!4068)) (tail!4003 tl!4068)))))

(declare-fun b!2509851 () Bool)

(declare-fun e!1590794 () Bool)

(declare-fun e!1590788 () Bool)

(assert (=> b!2509851 (= e!1590794 e!1590788)))

(declare-fun res!1061036 () Bool)

(assert (=> b!2509851 (=> (not res!1061036) (not e!1590788))))

(declare-fun lt!897477 () Bool)

(assert (=> b!2509851 (= res!1061036 (not lt!897477))))

(declare-fun b!2509852 () Bool)

(declare-fun e!1590789 () Bool)

(declare-fun call!155629 () Bool)

(assert (=> b!2509852 (= e!1590789 (= lt!897477 call!155629))))

(declare-fun b!2509853 () Bool)

(declare-fun res!1061042 () Bool)

(declare-fun e!1590791 () Bool)

(assert (=> b!2509853 (=> res!1061042 e!1590791)))

(declare-fun isEmpty!16880 (List!29522) Bool)

(assert (=> b!2509853 (= res!1061042 (not (isEmpty!16880 (tail!4003 tl!4068))))))

(declare-fun bm!155624 () Bool)

(assert (=> bm!155624 (= call!155629 (isEmpty!16880 tl!4068))))

(declare-fun b!2509854 () Bool)

(declare-fun e!1590790 () Bool)

(assert (=> b!2509854 (= e!1590790 (not lt!897477))))

(declare-fun b!2509855 () Bool)

(assert (=> b!2509855 (= e!1590791 (not (= (head!5726 tl!4068) (c!399697 lt!897433))))))

(declare-fun b!2509856 () Bool)

(declare-fun e!1590792 () Bool)

(assert (=> b!2509856 (= e!1590792 (= (head!5726 tl!4068) (c!399697 lt!897433)))))

(declare-fun b!2509857 () Bool)

(assert (=> b!2509857 (= e!1590789 e!1590790)))

(declare-fun c!399786 () Bool)

(assert (=> b!2509857 (= c!399786 ((_ is EmptyLang!7457) lt!897433))))

(declare-fun b!2509858 () Bool)

(declare-fun res!1061039 () Bool)

(assert (=> b!2509858 (=> (not res!1061039) (not e!1590792))))

(assert (=> b!2509858 (= res!1061039 (not call!155629))))

(declare-fun b!2509859 () Bool)

(assert (=> b!2509859 (= e!1590793 (nullable!2374 lt!897433))))

(declare-fun d!716504 () Bool)

(assert (=> d!716504 e!1590789))

(declare-fun c!399787 () Bool)

(assert (=> d!716504 (= c!399787 ((_ is EmptyExpr!7457) lt!897433))))

(assert (=> d!716504 (= lt!897477 e!1590793)))

(declare-fun c!399788 () Bool)

(assert (=> d!716504 (= c!399788 (isEmpty!16880 tl!4068))))

(assert (=> d!716504 (validRegex!3083 lt!897433)))

(assert (=> d!716504 (= (matchR!3456 lt!897433 tl!4068) lt!897477)))

(declare-fun b!2509860 () Bool)

(declare-fun res!1061041 () Bool)

(assert (=> b!2509860 (=> (not res!1061041) (not e!1590792))))

(assert (=> b!2509860 (= res!1061041 (isEmpty!16880 (tail!4003 tl!4068)))))

(declare-fun b!2509861 () Bool)

(declare-fun res!1061043 () Bool)

(assert (=> b!2509861 (=> res!1061043 e!1590794)))

(assert (=> b!2509861 (= res!1061043 e!1590792)))

(declare-fun res!1061040 () Bool)

(assert (=> b!2509861 (=> (not res!1061040) (not e!1590792))))

(assert (=> b!2509861 (= res!1061040 lt!897477)))

(declare-fun b!2509862 () Bool)

(assert (=> b!2509862 (= e!1590788 e!1590791)))

(declare-fun res!1061037 () Bool)

(assert (=> b!2509862 (=> res!1061037 e!1590791)))

(assert (=> b!2509862 (= res!1061037 call!155629)))

(declare-fun b!2509863 () Bool)

(declare-fun res!1061038 () Bool)

(assert (=> b!2509863 (=> res!1061038 e!1590794)))

(assert (=> b!2509863 (= res!1061038 (not ((_ is ElementMatch!7457) lt!897433)))))

(assert (=> b!2509863 (= e!1590790 e!1590794)))

(assert (= (and d!716504 c!399788) b!2509859))

(assert (= (and d!716504 (not c!399788)) b!2509850))

(assert (= (and d!716504 c!399787) b!2509852))

(assert (= (and d!716504 (not c!399787)) b!2509857))

(assert (= (and b!2509857 c!399786) b!2509854))

(assert (= (and b!2509857 (not c!399786)) b!2509863))

(assert (= (and b!2509863 (not res!1061038)) b!2509861))

(assert (= (and b!2509861 res!1061040) b!2509858))

(assert (= (and b!2509858 res!1061039) b!2509860))

(assert (= (and b!2509860 res!1061041) b!2509856))

(assert (= (and b!2509861 (not res!1061043)) b!2509851))

(assert (= (and b!2509851 res!1061036) b!2509862))

(assert (= (and b!2509862 (not res!1061037)) b!2509853))

(assert (= (and b!2509853 (not res!1061042)) b!2509855))

(assert (= (or b!2509852 b!2509858 b!2509862) bm!155624))

(declare-fun m!2869025 () Bool)

(assert (=> b!2509860 m!2869025))

(assert (=> b!2509860 m!2869025))

(declare-fun m!2869027 () Bool)

(assert (=> b!2509860 m!2869027))

(declare-fun m!2869029 () Bool)

(assert (=> bm!155624 m!2869029))

(declare-fun m!2869031 () Bool)

(assert (=> b!2509855 m!2869031))

(assert (=> b!2509853 m!2869025))

(assert (=> b!2509853 m!2869025))

(assert (=> b!2509853 m!2869027))

(assert (=> b!2509856 m!2869031))

(assert (=> d!716504 m!2869029))

(assert (=> d!716504 m!2868943))

(declare-fun m!2869033 () Bool)

(assert (=> b!2509859 m!2869033))

(assert (=> b!2509850 m!2869031))

(assert (=> b!2509850 m!2869031))

(declare-fun m!2869035 () Bool)

(assert (=> b!2509850 m!2869035))

(assert (=> b!2509850 m!2869025))

(assert (=> b!2509850 m!2869035))

(assert (=> b!2509850 m!2869025))

(declare-fun m!2869037 () Bool)

(assert (=> b!2509850 m!2869037))

(assert (=> b!2509556 d!716504))

(declare-fun b!2509881 () Bool)

(declare-fun e!1590807 () Bool)

(assert (=> b!2509881 (= e!1590807 (matchR!3456 (derivativeStep!2026 lt!897436 (head!5726 tl!4068)) (tail!4003 tl!4068)))))

(declare-fun b!2509882 () Bool)

(declare-fun e!1590808 () Bool)

(declare-fun e!1590802 () Bool)

(assert (=> b!2509882 (= e!1590808 e!1590802)))

(declare-fun res!1061046 () Bool)

(assert (=> b!2509882 (=> (not res!1061046) (not e!1590802))))

(declare-fun lt!897479 () Bool)

(assert (=> b!2509882 (= res!1061046 (not lt!897479))))

(declare-fun b!2509883 () Bool)

(declare-fun e!1590803 () Bool)

(declare-fun call!155630 () Bool)

(assert (=> b!2509883 (= e!1590803 (= lt!897479 call!155630))))

(declare-fun b!2509884 () Bool)

(declare-fun res!1061052 () Bool)

(declare-fun e!1590805 () Bool)

(assert (=> b!2509884 (=> res!1061052 e!1590805)))

(assert (=> b!2509884 (= res!1061052 (not (isEmpty!16880 (tail!4003 tl!4068))))))

(declare-fun bm!155625 () Bool)

(assert (=> bm!155625 (= call!155630 (isEmpty!16880 tl!4068))))

(declare-fun b!2509885 () Bool)

(declare-fun e!1590804 () Bool)

(assert (=> b!2509885 (= e!1590804 (not lt!897479))))

(declare-fun b!2509886 () Bool)

(assert (=> b!2509886 (= e!1590805 (not (= (head!5726 tl!4068) (c!399697 lt!897436))))))

(declare-fun b!2509887 () Bool)

(declare-fun e!1590806 () Bool)

(assert (=> b!2509887 (= e!1590806 (= (head!5726 tl!4068) (c!399697 lt!897436)))))

(declare-fun b!2509888 () Bool)

(assert (=> b!2509888 (= e!1590803 e!1590804)))

(declare-fun c!399789 () Bool)

(assert (=> b!2509888 (= c!399789 ((_ is EmptyLang!7457) lt!897436))))

(declare-fun b!2509889 () Bool)

(declare-fun res!1061049 () Bool)

(assert (=> b!2509889 (=> (not res!1061049) (not e!1590806))))

(assert (=> b!2509889 (= res!1061049 (not call!155630))))

(declare-fun b!2509890 () Bool)

(assert (=> b!2509890 (= e!1590807 (nullable!2374 lt!897436))))

(declare-fun d!716522 () Bool)

(assert (=> d!716522 e!1590803))

(declare-fun c!399790 () Bool)

(assert (=> d!716522 (= c!399790 ((_ is EmptyExpr!7457) lt!897436))))

(assert (=> d!716522 (= lt!897479 e!1590807)))

(declare-fun c!399791 () Bool)

(assert (=> d!716522 (= c!399791 (isEmpty!16880 tl!4068))))

(assert (=> d!716522 (validRegex!3083 lt!897436)))

(assert (=> d!716522 (= (matchR!3456 lt!897436 tl!4068) lt!897479)))

(declare-fun b!2509891 () Bool)

(declare-fun res!1061051 () Bool)

(assert (=> b!2509891 (=> (not res!1061051) (not e!1590806))))

(assert (=> b!2509891 (= res!1061051 (isEmpty!16880 (tail!4003 tl!4068)))))

(declare-fun b!2509892 () Bool)

(declare-fun res!1061053 () Bool)

(assert (=> b!2509892 (=> res!1061053 e!1590808)))

(assert (=> b!2509892 (= res!1061053 e!1590806)))

(declare-fun res!1061050 () Bool)

(assert (=> b!2509892 (=> (not res!1061050) (not e!1590806))))

(assert (=> b!2509892 (= res!1061050 lt!897479)))

(declare-fun b!2509893 () Bool)

(assert (=> b!2509893 (= e!1590802 e!1590805)))

(declare-fun res!1061047 () Bool)

(assert (=> b!2509893 (=> res!1061047 e!1590805)))

(assert (=> b!2509893 (= res!1061047 call!155630)))

(declare-fun b!2509894 () Bool)

(declare-fun res!1061048 () Bool)

(assert (=> b!2509894 (=> res!1061048 e!1590808)))

(assert (=> b!2509894 (= res!1061048 (not ((_ is ElementMatch!7457) lt!897436)))))

(assert (=> b!2509894 (= e!1590804 e!1590808)))

(assert (= (and d!716522 c!399791) b!2509890))

(assert (= (and d!716522 (not c!399791)) b!2509881))

(assert (= (and d!716522 c!399790) b!2509883))

(assert (= (and d!716522 (not c!399790)) b!2509888))

(assert (= (and b!2509888 c!399789) b!2509885))

(assert (= (and b!2509888 (not c!399789)) b!2509894))

(assert (= (and b!2509894 (not res!1061048)) b!2509892))

(assert (= (and b!2509892 res!1061050) b!2509889))

(assert (= (and b!2509889 res!1061049) b!2509891))

(assert (= (and b!2509891 res!1061051) b!2509887))

(assert (= (and b!2509892 (not res!1061053)) b!2509882))

(assert (= (and b!2509882 res!1061046) b!2509893))

(assert (= (and b!2509893 (not res!1061047)) b!2509884))

(assert (= (and b!2509884 (not res!1061052)) b!2509886))

(assert (= (or b!2509883 b!2509889 b!2509893) bm!155625))

(assert (=> b!2509891 m!2869025))

(assert (=> b!2509891 m!2869025))

(assert (=> b!2509891 m!2869027))

(assert (=> bm!155625 m!2869029))

(assert (=> b!2509886 m!2869031))

(assert (=> b!2509884 m!2869025))

(assert (=> b!2509884 m!2869025))

(assert (=> b!2509884 m!2869027))

(assert (=> b!2509887 m!2869031))

(assert (=> d!716522 m!2869029))

(assert (=> d!716522 m!2868849))

(declare-fun m!2869039 () Bool)

(assert (=> b!2509890 m!2869039))

(assert (=> b!2509881 m!2869031))

(assert (=> b!2509881 m!2869031))

(declare-fun m!2869041 () Bool)

(assert (=> b!2509881 m!2869041))

(assert (=> b!2509881 m!2869025))

(assert (=> b!2509881 m!2869041))

(assert (=> b!2509881 m!2869025))

(declare-fun m!2869043 () Bool)

(assert (=> b!2509881 m!2869043))

(assert (=> b!2509556 d!716522))

(declare-fun b!2509911 () Bool)

(declare-fun e!1590818 () Bool)

(assert (=> b!2509911 (= e!1590818 (matchR!3456 (derivativeStep!2026 (derivative!152 lt!897433 tl!4068) (head!5726 Nil!29422)) (tail!4003 Nil!29422)))))

(declare-fun b!2509912 () Bool)

(declare-fun e!1590819 () Bool)

(declare-fun e!1590813 () Bool)

(assert (=> b!2509912 (= e!1590819 e!1590813)))

(declare-fun res!1061054 () Bool)

(assert (=> b!2509912 (=> (not res!1061054) (not e!1590813))))

(declare-fun lt!897480 () Bool)

(assert (=> b!2509912 (= res!1061054 (not lt!897480))))

(declare-fun b!2509913 () Bool)

(declare-fun e!1590814 () Bool)

(declare-fun call!155631 () Bool)

(assert (=> b!2509913 (= e!1590814 (= lt!897480 call!155631))))

(declare-fun b!2509914 () Bool)

(declare-fun res!1061060 () Bool)

(declare-fun e!1590816 () Bool)

(assert (=> b!2509914 (=> res!1061060 e!1590816)))

(assert (=> b!2509914 (= res!1061060 (not (isEmpty!16880 (tail!4003 Nil!29422))))))

(declare-fun bm!155626 () Bool)

(assert (=> bm!155626 (= call!155631 (isEmpty!16880 Nil!29422))))

(declare-fun b!2509915 () Bool)

(declare-fun e!1590815 () Bool)

(assert (=> b!2509915 (= e!1590815 (not lt!897480))))

(declare-fun b!2509916 () Bool)

(assert (=> b!2509916 (= e!1590816 (not (= (head!5726 Nil!29422) (c!399697 (derivative!152 lt!897433 tl!4068)))))))

(declare-fun b!2509917 () Bool)

(declare-fun e!1590817 () Bool)

(assert (=> b!2509917 (= e!1590817 (= (head!5726 Nil!29422) (c!399697 (derivative!152 lt!897433 tl!4068))))))

(declare-fun b!2509918 () Bool)

(assert (=> b!2509918 (= e!1590814 e!1590815)))

(declare-fun c!399792 () Bool)

(assert (=> b!2509918 (= c!399792 ((_ is EmptyLang!7457) (derivative!152 lt!897433 tl!4068)))))

(declare-fun b!2509919 () Bool)

(declare-fun res!1061057 () Bool)

(assert (=> b!2509919 (=> (not res!1061057) (not e!1590817))))

(assert (=> b!2509919 (= res!1061057 (not call!155631))))

(declare-fun b!2509920 () Bool)

(assert (=> b!2509920 (= e!1590818 (nullable!2374 (derivative!152 lt!897433 tl!4068)))))

(declare-fun d!716524 () Bool)

(assert (=> d!716524 e!1590814))

(declare-fun c!399793 () Bool)

(assert (=> d!716524 (= c!399793 ((_ is EmptyExpr!7457) (derivative!152 lt!897433 tl!4068)))))

(assert (=> d!716524 (= lt!897480 e!1590818)))

(declare-fun c!399794 () Bool)

(assert (=> d!716524 (= c!399794 (isEmpty!16880 Nil!29422))))

(assert (=> d!716524 (validRegex!3083 (derivative!152 lt!897433 tl!4068))))

(assert (=> d!716524 (= (matchR!3456 (derivative!152 lt!897433 tl!4068) Nil!29422) lt!897480)))

(declare-fun b!2509921 () Bool)

(declare-fun res!1061059 () Bool)

(assert (=> b!2509921 (=> (not res!1061059) (not e!1590817))))

(assert (=> b!2509921 (= res!1061059 (isEmpty!16880 (tail!4003 Nil!29422)))))

(declare-fun b!2509922 () Bool)

(declare-fun res!1061061 () Bool)

(assert (=> b!2509922 (=> res!1061061 e!1590819)))

(assert (=> b!2509922 (= res!1061061 e!1590817)))

(declare-fun res!1061058 () Bool)

(assert (=> b!2509922 (=> (not res!1061058) (not e!1590817))))

(assert (=> b!2509922 (= res!1061058 lt!897480)))

(declare-fun b!2509923 () Bool)

(assert (=> b!2509923 (= e!1590813 e!1590816)))

(declare-fun res!1061055 () Bool)

(assert (=> b!2509923 (=> res!1061055 e!1590816)))

(assert (=> b!2509923 (= res!1061055 call!155631)))

(declare-fun b!2509924 () Bool)

(declare-fun res!1061056 () Bool)

(assert (=> b!2509924 (=> res!1061056 e!1590819)))

(assert (=> b!2509924 (= res!1061056 (not ((_ is ElementMatch!7457) (derivative!152 lt!897433 tl!4068))))))

(assert (=> b!2509924 (= e!1590815 e!1590819)))

(assert (= (and d!716524 c!399794) b!2509920))

(assert (= (and d!716524 (not c!399794)) b!2509911))

(assert (= (and d!716524 c!399793) b!2509913))

(assert (= (and d!716524 (not c!399793)) b!2509918))

(assert (= (and b!2509918 c!399792) b!2509915))

(assert (= (and b!2509918 (not c!399792)) b!2509924))

(assert (= (and b!2509924 (not res!1061056)) b!2509922))

(assert (= (and b!2509922 res!1061058) b!2509919))

(assert (= (and b!2509919 res!1061057) b!2509921))

(assert (= (and b!2509921 res!1061059) b!2509917))

(assert (= (and b!2509922 (not res!1061061)) b!2509912))

(assert (= (and b!2509912 res!1061054) b!2509923))

(assert (= (and b!2509923 (not res!1061055)) b!2509914))

(assert (= (and b!2509914 (not res!1061060)) b!2509916))

(assert (= (or b!2509913 b!2509919 b!2509923) bm!155626))

(declare-fun m!2869045 () Bool)

(assert (=> b!2509921 m!2869045))

(assert (=> b!2509921 m!2869045))

(declare-fun m!2869047 () Bool)

(assert (=> b!2509921 m!2869047))

(declare-fun m!2869049 () Bool)

(assert (=> bm!155626 m!2869049))

(declare-fun m!2869051 () Bool)

(assert (=> b!2509916 m!2869051))

(assert (=> b!2509914 m!2869045))

(assert (=> b!2509914 m!2869045))

(assert (=> b!2509914 m!2869047))

(assert (=> b!2509917 m!2869051))

(assert (=> d!716524 m!2869049))

(assert (=> d!716524 m!2868851))

(declare-fun m!2869053 () Bool)

(assert (=> d!716524 m!2869053))

(assert (=> b!2509920 m!2868851))

(declare-fun m!2869055 () Bool)

(assert (=> b!2509920 m!2869055))

(assert (=> b!2509911 m!2869051))

(assert (=> b!2509911 m!2868851))

(assert (=> b!2509911 m!2869051))

(declare-fun m!2869057 () Bool)

(assert (=> b!2509911 m!2869057))

(assert (=> b!2509911 m!2869045))

(assert (=> b!2509911 m!2869057))

(assert (=> b!2509911 m!2869045))

(declare-fun m!2869059 () Bool)

(assert (=> b!2509911 m!2869059))

(assert (=> b!2509556 d!716524))

(declare-fun d!716526 () Bool)

(assert (=> d!716526 (= (matchR!3456 lt!897433 tl!4068) (matchR!3456 (derivative!152 lt!897433 tl!4068) Nil!29422))))

(declare-fun lt!897483 () Unit!43163)

(declare-fun choose!14843 (Regex!7457 List!29522) Unit!43163)

(assert (=> d!716526 (= lt!897483 (choose!14843 lt!897433 tl!4068))))

(assert (=> d!716526 (validRegex!3083 lt!897433)))

(assert (=> d!716526 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!102 lt!897433 tl!4068) lt!897483)))

(declare-fun bs!468748 () Bool)

(assert (= bs!468748 d!716526))

(assert (=> bs!468748 m!2868943))

(declare-fun m!2869061 () Bool)

(assert (=> bs!468748 m!2869061))

(assert (=> bs!468748 m!2868845))

(assert (=> bs!468748 m!2868851))

(assert (=> bs!468748 m!2868851))

(assert (=> bs!468748 m!2868853))

(assert (=> b!2509556 d!716526))

(declare-fun b!2509929 () Bool)

(declare-fun e!1590822 () Bool)

(declare-fun e!1590821 () Bool)

(assert (=> b!2509929 (= e!1590822 e!1590821)))

(declare-fun res!1061062 () Bool)

(assert (=> b!2509929 (= res!1061062 (not (nullable!2374 (reg!7786 r!27340))))))

(assert (=> b!2509929 (=> (not res!1061062) (not e!1590821))))

(declare-fun b!2509930 () Bool)

(declare-fun res!1061066 () Bool)

(declare-fun e!1590827 () Bool)

(assert (=> b!2509930 (=> (not res!1061066) (not e!1590827))))

(declare-fun call!155633 () Bool)

(assert (=> b!2509930 (= res!1061066 call!155633)))

(declare-fun e!1590825 () Bool)

(assert (=> b!2509930 (= e!1590825 e!1590827)))

(declare-fun b!2509931 () Bool)

(declare-fun e!1590824 () Bool)

(declare-fun e!1590826 () Bool)

(assert (=> b!2509931 (= e!1590824 e!1590826)))

(declare-fun res!1061063 () Bool)

(assert (=> b!2509931 (=> (not res!1061063) (not e!1590826))))

(declare-fun call!155634 () Bool)

(assert (=> b!2509931 (= res!1061063 call!155634)))

(declare-fun bm!155627 () Bool)

(declare-fun c!399796 () Bool)

(assert (=> bm!155627 (= call!155634 (validRegex!3083 (ite c!399796 (regTwo!15427 r!27340) (regOne!15426 r!27340))))))

(declare-fun d!716528 () Bool)

(declare-fun res!1061064 () Bool)

(declare-fun e!1590823 () Bool)

(assert (=> d!716528 (=> res!1061064 e!1590823)))

(assert (=> d!716528 (= res!1061064 ((_ is ElementMatch!7457) r!27340))))

(assert (=> d!716528 (= (validRegex!3083 r!27340) e!1590823)))

(declare-fun b!2509932 () Bool)

(assert (=> b!2509932 (= e!1590822 e!1590825)))

(assert (=> b!2509932 (= c!399796 ((_ is Union!7457) r!27340))))

(declare-fun b!2509933 () Bool)

(assert (=> b!2509933 (= e!1590827 call!155634)))

(declare-fun call!155632 () Bool)

(declare-fun c!399795 () Bool)

(declare-fun bm!155628 () Bool)

(assert (=> bm!155628 (= call!155632 (validRegex!3083 (ite c!399795 (reg!7786 r!27340) (ite c!399796 (regOne!15427 r!27340) (regTwo!15426 r!27340)))))))

(declare-fun b!2509934 () Bool)

(assert (=> b!2509934 (= e!1590823 e!1590822)))

(assert (=> b!2509934 (= c!399795 ((_ is Star!7457) r!27340))))

(declare-fun b!2509935 () Bool)

(assert (=> b!2509935 (= e!1590821 call!155632)))

(declare-fun bm!155629 () Bool)

(assert (=> bm!155629 (= call!155633 call!155632)))

(declare-fun b!2509936 () Bool)

(declare-fun res!1061065 () Bool)

(assert (=> b!2509936 (=> res!1061065 e!1590824)))

(assert (=> b!2509936 (= res!1061065 (not ((_ is Concat!12153) r!27340)))))

(assert (=> b!2509936 (= e!1590825 e!1590824)))

(declare-fun b!2509937 () Bool)

(assert (=> b!2509937 (= e!1590826 call!155633)))

(assert (= (and d!716528 (not res!1061064)) b!2509934))

(assert (= (and b!2509934 c!399795) b!2509929))

(assert (= (and b!2509934 (not c!399795)) b!2509932))

(assert (= (and b!2509929 res!1061062) b!2509935))

(assert (= (and b!2509932 c!399796) b!2509930))

(assert (= (and b!2509932 (not c!399796)) b!2509936))

(assert (= (and b!2509930 res!1061066) b!2509933))

(assert (= (and b!2509936 (not res!1061065)) b!2509931))

(assert (= (and b!2509931 res!1061063) b!2509937))

(assert (= (or b!2509930 b!2509937) bm!155629))

(assert (= (or b!2509933 b!2509931) bm!155627))

(assert (= (or b!2509935 bm!155629) bm!155628))

(declare-fun m!2869063 () Bool)

(assert (=> b!2509929 m!2869063))

(declare-fun m!2869065 () Bool)

(assert (=> bm!155627 m!2869065))

(declare-fun m!2869067 () Bool)

(assert (=> bm!155628 m!2869067))

(assert (=> start!244780 d!716528))

(declare-fun b!2509938 () Bool)

(declare-fun e!1590833 () Bool)

(assert (=> b!2509938 (= e!1590833 (matchR!3456 (derivativeStep!2026 EmptyLang!7457 (head!5726 tl!4068)) (tail!4003 tl!4068)))))

(declare-fun b!2509939 () Bool)

(declare-fun e!1590834 () Bool)

(declare-fun e!1590828 () Bool)

(assert (=> b!2509939 (= e!1590834 e!1590828)))

(declare-fun res!1061067 () Bool)

(assert (=> b!2509939 (=> (not res!1061067) (not e!1590828))))

(declare-fun lt!897484 () Bool)

(assert (=> b!2509939 (= res!1061067 (not lt!897484))))

(declare-fun b!2509940 () Bool)

(declare-fun e!1590829 () Bool)

(declare-fun call!155635 () Bool)

(assert (=> b!2509940 (= e!1590829 (= lt!897484 call!155635))))

(declare-fun b!2509941 () Bool)

(declare-fun res!1061073 () Bool)

(declare-fun e!1590831 () Bool)

(assert (=> b!2509941 (=> res!1061073 e!1590831)))

(assert (=> b!2509941 (= res!1061073 (not (isEmpty!16880 (tail!4003 tl!4068))))))

(declare-fun bm!155630 () Bool)

(assert (=> bm!155630 (= call!155635 (isEmpty!16880 tl!4068))))

(declare-fun b!2509942 () Bool)

(declare-fun e!1590830 () Bool)

(assert (=> b!2509942 (= e!1590830 (not lt!897484))))

(declare-fun b!2509943 () Bool)

(assert (=> b!2509943 (= e!1590831 (not (= (head!5726 tl!4068) (c!399697 EmptyLang!7457))))))

(declare-fun b!2509944 () Bool)

(declare-fun e!1590832 () Bool)

(assert (=> b!2509944 (= e!1590832 (= (head!5726 tl!4068) (c!399697 EmptyLang!7457)))))

(declare-fun b!2509945 () Bool)

(assert (=> b!2509945 (= e!1590829 e!1590830)))

(declare-fun c!399797 () Bool)

(assert (=> b!2509945 (= c!399797 ((_ is EmptyLang!7457) EmptyLang!7457))))

(declare-fun b!2509946 () Bool)

(declare-fun res!1061070 () Bool)

(assert (=> b!2509946 (=> (not res!1061070) (not e!1590832))))

(assert (=> b!2509946 (= res!1061070 (not call!155635))))

(declare-fun b!2509947 () Bool)

(assert (=> b!2509947 (= e!1590833 (nullable!2374 EmptyLang!7457))))

(declare-fun d!716530 () Bool)

(assert (=> d!716530 e!1590829))

(declare-fun c!399798 () Bool)

(assert (=> d!716530 (= c!399798 ((_ is EmptyExpr!7457) EmptyLang!7457))))

(assert (=> d!716530 (= lt!897484 e!1590833)))

(declare-fun c!399799 () Bool)

(assert (=> d!716530 (= c!399799 (isEmpty!16880 tl!4068))))

(assert (=> d!716530 (validRegex!3083 EmptyLang!7457)))

(assert (=> d!716530 (= (matchR!3456 EmptyLang!7457 tl!4068) lt!897484)))

(declare-fun b!2509948 () Bool)

(declare-fun res!1061072 () Bool)

(assert (=> b!2509948 (=> (not res!1061072) (not e!1590832))))

(assert (=> b!2509948 (= res!1061072 (isEmpty!16880 (tail!4003 tl!4068)))))

(declare-fun b!2509949 () Bool)

(declare-fun res!1061074 () Bool)

(assert (=> b!2509949 (=> res!1061074 e!1590834)))

(assert (=> b!2509949 (= res!1061074 e!1590832)))

(declare-fun res!1061071 () Bool)

(assert (=> b!2509949 (=> (not res!1061071) (not e!1590832))))

(assert (=> b!2509949 (= res!1061071 lt!897484)))

(declare-fun b!2509950 () Bool)

(assert (=> b!2509950 (= e!1590828 e!1590831)))

(declare-fun res!1061068 () Bool)

(assert (=> b!2509950 (=> res!1061068 e!1590831)))

(assert (=> b!2509950 (= res!1061068 call!155635)))

(declare-fun b!2509951 () Bool)

(declare-fun res!1061069 () Bool)

(assert (=> b!2509951 (=> res!1061069 e!1590834)))

(assert (=> b!2509951 (= res!1061069 (not ((_ is ElementMatch!7457) EmptyLang!7457)))))

(assert (=> b!2509951 (= e!1590830 e!1590834)))

(assert (= (and d!716530 c!399799) b!2509947))

(assert (= (and d!716530 (not c!399799)) b!2509938))

(assert (= (and d!716530 c!399798) b!2509940))

(assert (= (and d!716530 (not c!399798)) b!2509945))

(assert (= (and b!2509945 c!399797) b!2509942))

(assert (= (and b!2509945 (not c!399797)) b!2509951))

(assert (= (and b!2509951 (not res!1061069)) b!2509949))

(assert (= (and b!2509949 res!1061071) b!2509946))

(assert (= (and b!2509946 res!1061070) b!2509948))

(assert (= (and b!2509948 res!1061072) b!2509944))

(assert (= (and b!2509949 (not res!1061074)) b!2509939))

(assert (= (and b!2509939 res!1061067) b!2509950))

(assert (= (and b!2509950 (not res!1061068)) b!2509941))

(assert (= (and b!2509941 (not res!1061073)) b!2509943))

(assert (= (or b!2509940 b!2509946 b!2509950) bm!155630))

(assert (=> b!2509948 m!2869025))

(assert (=> b!2509948 m!2869025))

(assert (=> b!2509948 m!2869027))

(assert (=> bm!155630 m!2869029))

(assert (=> b!2509943 m!2869031))

(assert (=> b!2509941 m!2869025))

(assert (=> b!2509941 m!2869025))

(assert (=> b!2509941 m!2869027))

(assert (=> b!2509944 m!2869031))

(assert (=> d!716530 m!2869029))

(assert (=> d!716530 m!2868935))

(declare-fun m!2869069 () Bool)

(assert (=> b!2509947 m!2869069))

(assert (=> b!2509938 m!2869031))

(assert (=> b!2509938 m!2869031))

(declare-fun m!2869071 () Bool)

(assert (=> b!2509938 m!2869071))

(assert (=> b!2509938 m!2869025))

(assert (=> b!2509938 m!2869071))

(assert (=> b!2509938 m!2869025))

(declare-fun m!2869073 () Bool)

(assert (=> b!2509938 m!2869073))

(assert (=> b!2509557 d!716530))

(declare-fun d!716532 () Bool)

(assert (=> d!716532 (= (nullable!2374 (regOne!15426 r!27340)) (nullableFct!624 (regOne!15426 r!27340)))))

(declare-fun bs!468749 () Bool)

(assert (= bs!468749 d!716532))

(declare-fun m!2869075 () Bool)

(assert (=> bs!468749 m!2869075))

(assert (=> b!2509563 d!716532))

(declare-fun b!2509964 () Bool)

(declare-fun e!1590837 () Bool)

(declare-fun tp!802779 () Bool)

(assert (=> b!2509964 (= e!1590837 tp!802779)))

(declare-fun b!2509963 () Bool)

(declare-fun tp!802780 () Bool)

(declare-fun tp!802782 () Bool)

(assert (=> b!2509963 (= e!1590837 (and tp!802780 tp!802782))))

(assert (=> b!2509555 (= tp!802725 e!1590837)))

(declare-fun b!2509962 () Bool)

(assert (=> b!2509962 (= e!1590837 tp_is_empty!12769)))

(declare-fun b!2509965 () Bool)

(declare-fun tp!802783 () Bool)

(declare-fun tp!802781 () Bool)

(assert (=> b!2509965 (= e!1590837 (and tp!802783 tp!802781))))

(assert (= (and b!2509555 ((_ is ElementMatch!7457) (regOne!15426 r!27340))) b!2509962))

(assert (= (and b!2509555 ((_ is Concat!12153) (regOne!15426 r!27340))) b!2509963))

(assert (= (and b!2509555 ((_ is Star!7457) (regOne!15426 r!27340))) b!2509964))

(assert (= (and b!2509555 ((_ is Union!7457) (regOne!15426 r!27340))) b!2509965))

(declare-fun b!2509968 () Bool)

(declare-fun e!1590838 () Bool)

(declare-fun tp!802784 () Bool)

(assert (=> b!2509968 (= e!1590838 tp!802784)))

(declare-fun b!2509967 () Bool)

(declare-fun tp!802785 () Bool)

(declare-fun tp!802787 () Bool)

(assert (=> b!2509967 (= e!1590838 (and tp!802785 tp!802787))))

(assert (=> b!2509555 (= tp!802729 e!1590838)))

(declare-fun b!2509966 () Bool)

(assert (=> b!2509966 (= e!1590838 tp_is_empty!12769)))

(declare-fun b!2509969 () Bool)

(declare-fun tp!802788 () Bool)

(declare-fun tp!802786 () Bool)

(assert (=> b!2509969 (= e!1590838 (and tp!802788 tp!802786))))

(assert (= (and b!2509555 ((_ is ElementMatch!7457) (regTwo!15426 r!27340))) b!2509966))

(assert (= (and b!2509555 ((_ is Concat!12153) (regTwo!15426 r!27340))) b!2509967))

(assert (= (and b!2509555 ((_ is Star!7457) (regTwo!15426 r!27340))) b!2509968))

(assert (= (and b!2509555 ((_ is Union!7457) (regTwo!15426 r!27340))) b!2509969))

(declare-fun b!2509972 () Bool)

(declare-fun e!1590839 () Bool)

(declare-fun tp!802789 () Bool)

(assert (=> b!2509972 (= e!1590839 tp!802789)))

(declare-fun b!2509971 () Bool)

(declare-fun tp!802790 () Bool)

(declare-fun tp!802792 () Bool)

(assert (=> b!2509971 (= e!1590839 (and tp!802790 tp!802792))))

(assert (=> b!2509562 (= tp!802726 e!1590839)))

(declare-fun b!2509970 () Bool)

(assert (=> b!2509970 (= e!1590839 tp_is_empty!12769)))

(declare-fun b!2509973 () Bool)

(declare-fun tp!802793 () Bool)

(declare-fun tp!802791 () Bool)

(assert (=> b!2509973 (= e!1590839 (and tp!802793 tp!802791))))

(assert (= (and b!2509562 ((_ is ElementMatch!7457) (regOne!15427 r!27340))) b!2509970))

(assert (= (and b!2509562 ((_ is Concat!12153) (regOne!15427 r!27340))) b!2509971))

(assert (= (and b!2509562 ((_ is Star!7457) (regOne!15427 r!27340))) b!2509972))

(assert (= (and b!2509562 ((_ is Union!7457) (regOne!15427 r!27340))) b!2509973))

(declare-fun b!2509976 () Bool)

(declare-fun e!1590840 () Bool)

(declare-fun tp!802794 () Bool)

(assert (=> b!2509976 (= e!1590840 tp!802794)))

(declare-fun b!2509975 () Bool)

(declare-fun tp!802795 () Bool)

(declare-fun tp!802797 () Bool)

(assert (=> b!2509975 (= e!1590840 (and tp!802795 tp!802797))))

(assert (=> b!2509562 (= tp!802730 e!1590840)))

(declare-fun b!2509974 () Bool)

(assert (=> b!2509974 (= e!1590840 tp_is_empty!12769)))

(declare-fun b!2509977 () Bool)

(declare-fun tp!802798 () Bool)

(declare-fun tp!802796 () Bool)

(assert (=> b!2509977 (= e!1590840 (and tp!802798 tp!802796))))

(assert (= (and b!2509562 ((_ is ElementMatch!7457) (regTwo!15427 r!27340))) b!2509974))

(assert (= (and b!2509562 ((_ is Concat!12153) (regTwo!15427 r!27340))) b!2509975))

(assert (= (and b!2509562 ((_ is Star!7457) (regTwo!15427 r!27340))) b!2509976))

(assert (= (and b!2509562 ((_ is Union!7457) (regTwo!15427 r!27340))) b!2509977))

(declare-fun b!2509982 () Bool)

(declare-fun e!1590843 () Bool)

(declare-fun tp!802801 () Bool)

(assert (=> b!2509982 (= e!1590843 (and tp_is_empty!12769 tp!802801))))

(assert (=> b!2509564 (= tp!802728 e!1590843)))

(assert (= (and b!2509564 ((_ is Cons!29422) (t!211221 tl!4068))) b!2509982))

(declare-fun b!2509985 () Bool)

(declare-fun e!1590844 () Bool)

(declare-fun tp!802802 () Bool)

(assert (=> b!2509985 (= e!1590844 tp!802802)))

(declare-fun b!2509984 () Bool)

(declare-fun tp!802803 () Bool)

(declare-fun tp!802805 () Bool)

(assert (=> b!2509984 (= e!1590844 (and tp!802803 tp!802805))))

(assert (=> b!2509558 (= tp!802727 e!1590844)))

(declare-fun b!2509983 () Bool)

(assert (=> b!2509983 (= e!1590844 tp_is_empty!12769)))

(declare-fun b!2509986 () Bool)

(declare-fun tp!802806 () Bool)

(declare-fun tp!802804 () Bool)

(assert (=> b!2509986 (= e!1590844 (and tp!802806 tp!802804))))

(assert (= (and b!2509558 ((_ is ElementMatch!7457) (reg!7786 r!27340))) b!2509983))

(assert (= (and b!2509558 ((_ is Concat!12153) (reg!7786 r!27340))) b!2509984))

(assert (= (and b!2509558 ((_ is Star!7457) (reg!7786 r!27340))) b!2509985))

(assert (= (and b!2509558 ((_ is Union!7457) (reg!7786 r!27340))) b!2509986))

(check-sat (not b!2509881) (not b!2509938) (not bm!155584) (not bm!155628) (not bm!155598) (not b!2509853) (not bm!155583) (not b!2509973) (not b!2509694) (not b!2509929) (not b!2509855) (not b!2509884) (not b!2509971) (not d!716480) tp_is_empty!12769 (not d!716488) (not d!716504) (not bm!155630) (not b!2509856) (not d!716478) (not b!2509742) (not b!2509718) (not d!716532) (not b!2509887) (not d!716474) (not b!2509911) (not b!2509716) (not b!2509850) (not b!2509977) (not b!2509859) (not b!2509916) (not d!716526) (not bm!155627) (not b!2509886) (not bm!155596) (not b!2509963) (not d!716530) (not b!2509944) (not b!2509860) (not b!2509969) (not bm!155599) (not bm!155625) (not b!2509920) (not bm!155595) (not b!2509743) (not b!2509921) (not b!2509985) (not d!716496) (not b!2509914) (not d!716524) (not b!2509984) (not b!2509972) (not b!2509967) (not b!2509975) (not bm!155626) (not b!2509575) (not b!2509982) (not b!2509947) (not b!2509943) (not b!2509941) (not b!2509968) (not d!716486) (not b!2509890) (not b!2509986) (not bm!155624) (not b!2509976) (not b!2509948) (not d!716522) (not b!2509629) (not d!716492) (not d!716494) (not b!2509964) (not b!2509965) (not b!2509917) (not b!2509683) (not b!2509891))
(check-sat)
